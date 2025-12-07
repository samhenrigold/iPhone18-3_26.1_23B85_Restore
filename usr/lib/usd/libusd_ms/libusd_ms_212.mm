void sub_29B26A8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v56 - 153) < 0)
  {
    operator delete(*(v56 - 176));
  }

  if (*(v56 - 121) < 0)
  {
    operator delete(*(v56 - 144));
  }

  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B26ADD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, const void ***a5)
{
  if (*(a3 + 35))
  {
    v10 = *a3;
    sub_29A008E78(v52, off_2A14FE4E8[0]);
    v11 = sub_29B240AA4(a4, v52);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    (*(*v10 + 264))(v52, v10, v11);
    sub_29A008E78(&v50, "bsdf");
    v12 = sub_29B23EC38(a2, &v50);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    v13 = sub_29B23C5B0(v12);
    sub_29A008E78(&v50, "Light loop");
    (*(*v10 + 88))(v10, &v50, a4);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    sub_29A008E78(&v50, "int numLights = numActiveLightSources()");
    (*(*v10 + 80))(v10, &v50, a4, 1);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    sub_29A008E78(&v50, "lightshader lightShader");
    (*(*v10 + 80))(v10, &v50, a4, 1);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    sub_29A008E78(&v50, "for (int activeLightIndex = 0; activeLightIndex < numLights; ++activeLightIndex)");
    (*(*v10 + 80))(v10, &v50, a4, 0);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    (*(*v10 + 32))(v10, a4, 1);
    sub_29A008E78(&v45, off_2A14FE318[0]);
    v14 = std::string::insert(&v45, 0, "sampleLightSource(");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v46, "[activeLightIndex], ");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if ((v53 & 0x80u) == 0)
    {
      v18 = v52;
    }

    else
    {
      v18 = v52[0];
    }

    if ((v53 & 0x80u) == 0)
    {
      v19 = v53;
    }

    else
    {
      v19 = v52[1];
    }

    v20 = std::string::append(&v47, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(__p, off_2A14FE1C0[0]);
    if ((v44 & 0x80u) == 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if ((v44 & 0x80u) == 0)
    {
      v23 = v44;
    }

    else
    {
      v23 = __p[1];
    }

    v24 = std::string::append(&v48, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v49, ", lightShader)");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v51 = v26->__r_.__value_.__r.__words[2];
    v50 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    (*(*v10 + 80))(v10, &v50, a4, 1);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v50, "float3 L = lightShader.direction");
    (*(*v10 + 80))(v10, &v50, a4, 1);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    (*(*v10 + 64))(v10, a4);
    sub_29A008E78(&v50, "Calculate the BSDF response for this light source");
    (*(*v10 + 88))(v10, &v50, a4);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    *&v50 = a1 + 40;
    sub_29A0A71C8((a3 + 45), &v50);
    (*(*v10 + 128))(v10, v13, a3, a4);
    v28 = a3[46];
    if (v28 != a3[45])
    {
      a3[46] = v28 - 8;
    }

    (*(*v10 + 64))(v10, a4);
    sub_29A008E78(&v50, "Accumulate the light's contribution");
    (*(*v10 + 88))(v10, &v50, a4);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (*(a5 + 23) >= 0)
    {
      v29 = *(a5 + 23);
    }

    else
    {
      v29 = a5[1];
    }

    v30 = &v48;
    sub_29A022DE0(&v48, v29 + 28);
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v48.__r_.__value_.__r.__words[0];
    }

    if (v29)
    {
      if (*(a5 + 23) >= 0)
      {
        v31 = a5;
      }

      else
      {
        v31 = *a5;
      }

      memmove(v30, v31, v29);
    }

    strcpy(v30 + v29, " += lightShader.intensity * ");
    v32 = **(v13 + 152);
    v35 = *(v32 + 104);
    v33 = v32 + 104;
    v34 = v35;
    v36 = *(v33 + 23);
    if (v36 >= 0)
    {
      v37 = v33;
    }

    else
    {
      v37 = v34;
    }

    if (v36 >= 0)
    {
      v38 = *(v33 + 23);
    }

    else
    {
      v38 = *(v33 + 8);
    }

    v39 = std::string::append(&v48, v37, v38);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v49, ".response");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v51 = v41->__r_.__value_.__r.__words[2];
    v50 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    (*(*v10 + 80))(v10, &v50, a4, 1);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    (*(*v10 + 40))(v10, a4, 0, 1);
    (*(*v10 + 64))(v10, a4);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }
  }
}

void sub_29B26B574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v47 - 65) < 0)
  {
    operator delete(*(v47 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B26B6DC(uint64_t a1)
{
  v1 = sub_29AE1D68C(a1);

  operator delete(v1);
}

void *sub_29B26B704@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x240uLL);
  result = sub_29B26B750(v2, v3);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B26B750(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CC488;
  sub_29B267F7C(a1 + 3, a2);
  return a1;
}

void sub_29B26B7CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CC488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B26B838@<D0>(_OWORD *a1@<X8>)
{
  sub_29B26C55C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B26B874(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v7 = *a3;
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = **(a2 + 152);
    (*(*v7 + 48))(v7, a4);
    (*(*v7 + 192))(v7, v12, 1, 1, a3, a4);
    (*(*v7 + 56))(v7, a4, 1);
    if (*(v12 + 127) >= 0)
    {
      v13 = *(v12 + 127);
    }

    else
    {
      v13 = *(v12 + 112);
    }

    v14 = &v82;
    sub_29A022DE0(&v82, v13 + 6);
    if ((v84 & 0x80u) != 0)
    {
      v14 = v82;
    }

    if (v13)
    {
      if (*(v12 + 127) >= 0)
      {
        v15 = (v12 + 104);
      }

      else
      {
        v15 = *(v12 + 104);
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, ".color");
    if (*(v12 + 127) >= 0)
    {
      v16 = *(v12 + 127);
    }

    else
    {
      v16 = *(v12 + 112);
    }

    v17 = &v79;
    sub_29A022DE0(&v79, v16 + 13);
    if ((v81 & 0x80u) != 0)
    {
      v17 = v79;
    }

    if (v16)
    {
      if (*(v12 + 127) >= 0)
      {
        v18 = (v12 + 104);
      }

      else
      {
        v18 = *(v12 + 104);
      }

      memmove(v17, v18, v16);
    }

    strcpy(v17 + v16, ".transparency");
    sub_29A008E78(&__p, "emission");
    v19 = sub_29B23EC38(a2, &__p);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "emission_color");
    v20 = sub_29B23EC38(a2, &__p);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    if ((v84 & 0x80u) == 0)
    {
      v21 = v84;
    }

    else
    {
      v21 = v83;
    }

    v22 = &v74;
    sub_29A022DE0(&v74, v21 + 3);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v74.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if ((v84 & 0x80u) == 0)
      {
        v23 = &v82;
      }

      else
      {
        v23 = v82;
      }

      memmove(v22, v23, v21);
    }

    *(&v22->__r_.__value_.__l.__data_ + v21) = 2112800;
    (*(*v7 + 224))(&v73, v7, v19, a3);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v73;
    }

    else
    {
      v24 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v73.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v74, v24, size);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v75, " * ");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 224))(&v72, v7, v20, a3);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v72;
    }

    else
    {
      v30 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v72.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v76, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v78 = v32->__r_.__value_.__r.__words[2];
    __p = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &__p, a4, 1);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__p, "transmission");
    v34 = sub_29B23EC38(a2, &__p);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    sub_29A008E78(&__p, "transmission_color");
    v35 = sub_29B23EC38(a2, &__p);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    if ((v81 & 0x80u) == 0)
    {
      v36 = v81;
    }

    else
    {
      v36 = v80;
    }

    v37 = &v74;
    sub_29A022DE0(&v74, v36 + 3);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v74.__r_.__value_.__r.__words[0];
    }

    if (v36)
    {
      if ((v81 & 0x80u) == 0)
      {
        v38 = &v79;
      }

      else
      {
        v38 = v79;
      }

      memmove(v37, v38, v36);
    }

    *(&v37->__r_.__value_.__l.__data_ + v36) = 2112800;
    (*(*v7 + 224))(&v73, v7, v34, a3);
    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v73;
    }

    else
    {
      v39 = v73.__r_.__value_.__r.__words[0];
    }

    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v73.__r_.__value_.__l.__size_;
    }

    v41 = std::string::append(&v74, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    v43 = std::string::append(&v75, " * ");
    v44 = *&v43->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 224))(&v72, v7, v35, a3);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v72;
    }

    else
    {
      v45 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v72.__r_.__value_.__l.__size_;
    }

    v47 = std::string::append(&v76, v45, v46);
    v48 = *&v47->__r_.__value_.__l.__data_;
    v78 = v47->__r_.__value_.__r.__words[2];
    __p = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &__p, a4, 1);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__p, "opacity");
    v49 = sub_29B23EC38(a2, &__p);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    (*(*v7 + 224))(&__p, v7, v49, a3);
    if ((v84 & 0x80u) == 0)
    {
      v50 = v84;
    }

    else
    {
      v50 = v83;
    }

    v51 = &v75;
    sub_29A022DE0(&v75, v50 + 4);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v75.__r_.__value_.__r.__words[0];
    }

    if (v50)
    {
      if ((v84 & 0x80u) == 0)
      {
        v52 = &v82;
      }

      else
      {
        v52 = v82;
      }

      memmove(v51, v52, v50);
    }

    strcpy(v51 + v50, " *= ");
    if (v78 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v78 >= 0)
    {
      v54 = HIBYTE(v78);
    }

    else
    {
      v54 = *(&__p + 1);
    }

    v55 = std::string::append(&v75, p_p, v54);
    v56 = *&v55->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v76, a4, 1);
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if ((v81 & 0x80u) == 0)
    {
      v57 = v81;
    }

    else
    {
      v57 = v80;
    }

    v58 = &v72;
    sub_29A022DE0(&v72, v57 + 20);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v58 = v72.__r_.__value_.__r.__words[0];
    }

    if (v57)
    {
      if ((v81 & 0x80u) == 0)
      {
        v59 = &v79;
      }

      else
      {
        v59 = v79;
      }

      memmove(v58, v59, v57);
    }

    strcpy(v58 + v57, " = mix(float3(1.0), ");
    if ((v81 & 0x80u) == 0)
    {
      v60 = &v79;
    }

    else
    {
      v60 = v79;
    }

    if ((v81 & 0x80u) == 0)
    {
      v61 = v81;
    }

    else
    {
      v61 = v80;
    }

    v62 = std::string::append(&v72, v60, v61);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v73.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v73.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(&v73, ", ");
    v65 = *&v64->__r_.__value_.__l.__data_;
    v74.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v74.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    if (v78 >= 0)
    {
      v66 = &__p;
    }

    else
    {
      v66 = __p;
    }

    if (v78 >= 0)
    {
      v67 = HIBYTE(v78);
    }

    else
    {
      v67 = *(&__p + 1);
    }

    v68 = std::string::append(&v74, v66, v67);
    v69 = *&v68->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    v70 = std::string::append(&v75, ")");
    v71 = *&v70->__r_.__value_.__l.__data_;
    v76.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v76.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v76, a4, 1);
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    if (v81 < 0)
    {
      operator delete(v79);
    }

    if (v84 < 0)
    {
      operator delete(v82);
    }
  }
}

void sub_29B26C2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v49 - 113) < 0)
  {
    operator delete(*(v49 - 136));
  }

  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B26C4AC(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B26C4FC(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B26C55C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B26C5A8(v2, v3);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B26C5A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CC570;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24), a2);
  *(a1 + 24) = &unk_2A20CC4D8;
  return a1;
}

void sub_29B26C650(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CC570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B26C6BC(uint64_t result)
{
  if (atomic_fetch_add((result + 736), 0xFFFFFFFF) == 1)
  {
    return sub_29B26C6E0(*(result + 728), result);
  }

  return result;
}

uint64_t sub_29B26C6E0(uint64_t result, uint64_t a2)
{
  v3 = *(result + 1144);
  add = atomic_fetch_add(v3, 1u);
  if (add + 1 >= 51)
  {
    v5 = result;
    do
    {
      do
      {
        result = sub_29B26CE30(v5);
      }

      while (**(v5 + 1144) >= 50);
      v3 = *(v5 + 1144);
      add = atomic_fetch_add(v3, 1u);
    }

    while (add + 1 > 50);
  }

  *&v3[2 * add + 2] = a2;
  return result;
}

BOOL sub_29B26C758(uint64_t a1, std::string **a2, std::string *this, uint64_t a4)
{
  if ((*a2)->__r_.__value_.__s.__data_[0] == 47 || *(a1 + 64) == *(a1 + 72))
  {
    return 1;
  }

  else
  {
    std::string::reserve(this, 0x100uLL);
    v8 = *(a1 + 72) - *(a1 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = v8 >> 3;
      v11 = 0xAAAAAAAAAAAAAAABLL * v10;
      if (0xAAAAAAAAAAAAAAABLL * v10 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * v10;
      }

      v13 = 1;
      v14 = 1;
      while (1)
      {
        std::string::operator=(this, (*(a1 + 64) + v9));
        std::string::append(this, "/");
        std::string::append(this, *a2);
        v15 = (this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? this : this->__r_.__value_.__r.__words[0];
        if (!stat(v15, &v20))
        {
          break;
        }

        v14 = v13++ < v11;
        v9 += 24;
        if (!--v12)
        {
          goto LABEL_17;
        }
      }

      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = this;
      }

      else
      {
        v18 = this->__r_.__value_.__r.__words[0];
      }

      *a2 = v18;
    }

    else
    {
      v14 = 0;
LABEL_17:
      sub_29A008E78(&__p, "Can't find ptex file: ");
      std::string::append(&__p, *a2);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      MEMORY[0x29C2C1A60](a4, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  return v14;
}

void sub_29B26C8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B26C8F8(uint64_t a1, std::string *a2, std::string *a3)
{
  v4 = a2;
  sub_29B26D700(v21, a2);
  v6 = sub_29B26CB9C((a1 + 88), v21);
  v7 = v6;
  if (v6)
  {
    if ((*(v6 + 105) & 1) == 0)
    {
LABEL_30:
      v12 = 0;
      goto LABEL_31;
    }

    if (*(v6 + 107) == 1)
    {
      sub_29B26CC2C(a1, v6);
    }

    do
    {
      do
      {
        v8 = v7[184];
      }

      while (v8 < 0);
      v9 = v7[184];
      atomic_compare_exchange_strong(v7 + 184, &v9, v8 + 1);
    }

    while (v9 != v8);
    v10 = v7;
  }

  else
  {
    v10 = operator new(0x320uLL);
    sub_29B26E37C(v10, *(a1 + 128), *(a1 + 24), *(a1 + 32));
    *v10 = &unk_2A20CC5C0;
    *(v10 + 91) = a1;
    *(v10 + 184) = 1;
    *(v10 + 93) = 0;
    *(v10 + 95) = 0;
    *(v10 + 94) = 0;
    *(v10 + 96) = v10 + 768;
    *(v10 + 97) = v10 + 768;
    *(v10 + 98) = v10 + 784;
    *(v10 + 99) = v10 + 784;
  }

  v11 = v10[106];
  if (v11 != 1)
  {
    goto LABEL_15;
  }

  memset(&__p, 0, sizeof(__p));
  v19 = v4;
  if (*(a1 + 24))
  {
    goto LABEL_13;
  }

  if (sub_29B26C758(a1, &v19, &__p, a3))
  {
    v4 = v19;
LABEL_13:
    sub_29B26DF2C(v10, v4, a3);
    goto LABEL_14;
  }

  *(v10 + 105) = 0;
LABEL_14:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (v7)
  {
LABEL_16:
    v12 = v10;
    goto LABEL_26;
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = 0;
  v13 = sub_29B26CCB4(a1 + 88, v21, v10, &__p);
  v12 = v13;
  v14 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v15 = atomic_fetch_add((a1 + 136), __p.__r_.__value_.__r.__words[0]) + v14;
    if (*(a1 + 1192) > v15)
    {
      v15 = *(a1 + 1192);
    }

    *(a1 + 1192) = v15;
  }

  if (v13 != v10)
  {
    do
    {
      do
      {
        v16 = *(v13 + 736);
      }

      while (v16 < 0);
      v17 = *(v13 + 736);
      atomic_compare_exchange_strong((v13 + 736), &v17, v16 + 1);
    }

    while (v17 != v16);
    (*(*v10 + 8))(v10);
  }

LABEL_26:
  if ((v12[105] & 1) == 0)
  {
    atomic_fetch_add(v12 + 184, 0xFFFFFFFF);
    goto LABEL_30;
  }

  if (v11)
  {
    atomic_fetch_add(v12 + 89, 1uLL);
  }

LABEL_31:
  if (v22 == 1 && v21[0])
  {
    operator delete[](v21[0]);
  }

  return v12;
}

void sub_29B26CB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, char a19)
{
  operator delete(v19);
  if (a19 == 1)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B26CB9C(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  do
  {
    v4 = *a1;
  }

  while (!*a1);
  v5 = v3 - 1;
  v6 = *(a2 + 12);
  v7 = v6 & (v3 - 1);
  if (sub_29B26DCD8((v4 + 32 * v7), a2))
  {
    return *(v4 + 32 * v7 + 24);
  }

  v8 = v6 + 1;
  while (*(v4 + 32 * v7 + 24))
  {
    v7 = v8++ & v5;
    if (sub_29B26DCD8((v4 + 32 * v7), a2))
    {
      return *(v4 + 32 * v7 + 24);
    }
  }

  return 0;
}

uint64_t sub_29B26CC2C(uint64_t result, uint64_t a2)
{
  v3 = 0;
  atomic_compare_exchange_strong((a2 + 736), &v3, 0xFFFFFFFF);
  if (v3)
  {
    *(a2 + 107) = 1;
  }

  else
  {
    v4 = result;
    result = sub_29B26E8AC(a2);
    v5 = *(a2 + 704);
    v6 = *(a2 + 744);
    *(a2 + 744) = v5;
    __dmb(0xBu);
    *(a2 + 736) = 0;
    v7 = v5 - v6;
    if (v7)
    {
      v8 = atomic_fetch_add((v4 + 136), v7) + v7;
      if (*(v4 + 1192) > v8)
      {
        v8 = *(v4 + 1192);
      }

      *(v4 + 1192) = v8;
    }
  }

  return result;
}

uint64_t sub_29B26CCB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_29B26DD80(a1, a4);
  v8 = *(a1 + 8) - 1;
  v9 = *(a2 + 12);
  for (i = &v7[4 * (v9 & v8)]; ; i = &v7[4 * (v9 & v8)])
  {
    if (!i[3])
    {
      i[3] = a3;
      v11 = i + 3;
      ++*(a1 + 12);
      __dmb(0xBu);
      v12 = operator new[]((*(a2 + 8) + 1));
      memcpy(v12, *a2, (*(a2 + 8) + 1));
      *i = v12;
      *(i + 2) = *(a2 + 8);
      *(i + 3) = *(a2 + 12);
      *(i + 16) = 1;
      goto LABEL_8;
    }

      ;
    }

    if (sub_29B26DCD8(i, a2))
    {
      break;
    }

    ++v9;
  }

  v11 = i + 3;
LABEL_8:
  result = *v11;
  __dmb(0xBu);
  *a1 = v7;
  return result;
}

void *sub_29B26CDAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (a1 >= 1)
  {
    v9 = a1;
  }

  else
  {
    v9 = 100;
  }

  v10 = operator new(0x4C8uLL);
  sub_29B26D854(v10, v9, a2, v7, a4, a5);
  return v10;
}

uint64_t sub_29B26CE30(uint64_t a1)
{
  result = pthread_mutex_trylock((a1 + 264));
  if (!result)
  {
    if (**(a1 + 1144) >= 50)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 1144);
      v7 = *(a1 + 1152);
      __dmb(0xBu);
      *(a1 + 1144) = v7;
      *(a1 + 1152) = v6;
      v8 = v6 + 2;
      v9 = (a1 + 1176);
      do
      {
        do
        {
          v10 = *&v8[2 * v3];
        }

        while (!v10);
        *&v8[2 * v3] = 0;
        v11 = v10[88];
        v12 = v10[93];
        v10[93] = v11;
        v13 = v10[89];
        v14 = v13 - v10[94];
        v10[94] = v13;
        v15 = v10[90];
        v16 = v10[95];
        v10[95] = v15;
        if (v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v15 == v16;
        }

        if (!v17)
        {
          *(a1 + 1208) += v14;
          *(a1 + 1216) += v15 - v16;
          v18 = v10[96];
          v19 = v10[97];
          *v19 = v18;
          *(v18 + 8) = v19;
          v10[96] = v10 + 96;
          v20 = *(a1 + 1160);
          *(v20 + 8) = v10 + 96;
          v10[97] = a1 + 1160;
          v10[96] = v20;
          *(a1 + 1160) = v10 + 96;
        }

        if (*(a1 + 16))
        {
          v21 = v10[98];
          v22 = v10[99];
          *v22 = v21;
          *(v21 + 8) = v22;
          v10[98] = v10 + 98;
          v23 = *v9;
          *(v23 + 8) = v10 + 98;
          v10[99] = v9;
          v10[98] = v23;
          *v9 = (v10 + 98);
        }

        v4 = v11 + v4 - v12;
        v5 += v14;
        ++v3;
      }

      while (v3 != 50);
      __dmb(0xBu);
      *v6 = 0;
      if (v4)
      {
        v24 = atomic_fetch_add((a1 + 136), v4) + v4;
        if (*(a1 + 1192) > v24)
        {
          v24 = *(a1 + 1192);
        }

        *(a1 + 1192) = v24;
      }

      if (v5)
      {
        v25 = atomic_fetch_add((a1 + 200), v5) + v5;
        if (*(a1 + 1200) > v25)
        {
          v25 = *(a1 + 1200);
        }

        *(a1 + 1200) = v25;
      }

      v26 = *(a1 + 16);
      if (v26)
      {
        v27 = *(a1 + 136) > v26;
      }

      else
      {
        v27 = 0;
      }

      if (*(a1 + 200) > *(a1 + 8))
      {
        sub_29B26D00C(a1);
      }

      if (v27)
      {
        sub_29B26D06C(a1);
      }
    }

    return pthread_mutex_unlock((a1 + 264));
  }

  return result;
}

uint64_t sub_29B26D00C(uint64_t result)
{
  v1 = *(result + 200);
  v2 = *(result + 8);
  v3 = v1 - v2;
  if (v1 != v2)
  {
    v4 = result;
    while (1)
    {
      result = sub_29B26D134((v4 + 1160));
      if (!result)
      {
        break;
      }

      result = sub_29B26EE28(result);
      if (result)
      {
        --v3;
        --*(v4 + 200);
      }

      if (!v3)
      {
        return result;
      }
    }

    *(v4 + 200) = 0;
  }

  return result;
}

void *sub_29B26D06C(void *result)
{
  v1 = result[17];
  if (v1 > result[2])
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = sub_29B26D1AC(v2 + 147);
      if (!result)
      {
        break;
      }

      v4 = result;
      v5 = 0;
      atomic_compare_exchange_strong(result + 184, &v5, 0xFFFFFFFF);
      if (v5)
      {
        v7 = 0;
      }

      else
      {
        result = sub_29B26E7F4(result);
        v6 = v4[88];
        v7 = v6 - v4[93];
        v4[93] = v6;
        __dmb(0xBu);
        *(v4 + 184) = 0;
      }

      v3 += v7;
    }

    while (v3 + v1 > v2[2]);
    if (v3)
    {
      v8 = atomic_fetch_add(v2 + 17, v3) + v3;
      if (v2[149] > v8)
      {
        v8 = v2[149];
      }

      v2[149] = v8;
    }
  }

  return result;
}

char *sub_29B26D134(void *a1)
{
  v1 = a1[1];
  if (v1 == a1)
  {
    v1 = 0;
  }

  else
  {
    v2 = *v1;
    v3 = v1[1];
    *v3 = *v1;
    *(v2 + 8) = v3;
    *v1 = v1;
    v1[1] = v1;
  }

  if ((atomic_load_explicit(byte_2A14FE708, memory_order_acquire) & 1) == 0)
  {
    v5 = v1;
    sub_29B2D1CD8();
    v1 = v5;
  }

  if (v1)
  {
    return v1 - qword_2A14FE700;
  }

  else
  {
    return 0;
  }
}

char *sub_29B26D1AC(void *a1)
{
  v1 = a1[1];
  if (v1 == a1)
  {
    v1 = 0;
  }

  else
  {
    v2 = *v1;
    v3 = v1[1];
    *v3 = *v1;
    *(v2 + 8) = v3;
    *v1 = v1;
    v1[1] = v1;
  }

  if ((atomic_load_explicit(byte_2A14FE718, memory_order_acquire) & 1) == 0)
  {
    v5 = v1;
    sub_29B2D1D28();
    v1 = v5;
  }

  if (v1)
  {
    return v1 - qword_2A14FE710;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29B26D224(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((a2 + 736), 0xFFFFFFFF);
  result = sub_29B26CC2C(a1, a2);
  do
  {
    do
    {
      v4 = *(a2 + 736);
    }

    while (v4 < 0);
    v5 = *(a2 + 736);
    atomic_compare_exchange_strong((a2 + 736), &v5, v4 + 1);
  }

  while (v5 != v4);
  return result;
}

void sub_29B26D274(uint64_t a1, char *a2)
{
  sub_29B26D700(__p, a2);
  v3 = sub_29B26CB9C((a1 + 88), __p);
  if (v3)
  {
    sub_29B26CC2C(a1, v3);
  }

  if (v5 == 1)
  {
    if (__p[0])
    {
      operator delete[](__p[0]);
    }
  }
}

void sub_29B26D2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B26D2FC(void *result, uint64_t a2)
{
  v3 = 0;
  atomic_compare_exchange_strong((a2 + 736), &v3, 0xFFFFFFFF);
  if (v3)
  {
    *(a2 + 107) = 1;
  }

  else
  {
    v4 = result;
    result = sub_29B26E8AC(a2);
    v5 = *(a2 + 704);
    v6 = v5 - *(a2 + 744);
    *(a2 + 744) = v5;
    __dmb(0xBu);
    *(a2 + 736) = 0;
    *v4 += v6;
  }

  return result;
}

void *sub_29B26D370(void *a1)
{
  v5 = 0;
  result = sub_29B26D3CC(a1 + 11, &v5);
  v3 = v5;
  if (v5)
  {
    v4 = atomic_fetch_add(a1 + 17, v5) + v3;
    if (a1[149] > v4)
    {
      v4 = a1[149];
    }

    a1[149] = v4;
  }

  return result;
}

void *sub_29B26D3CC(void *result, void *a2)
{
  v3 = result;
    ;
  }

  if (*(result + 2))
  {
    v4 = 0;
    v5 = (*result + 24);
    do
    {
      if (*v5)
      {
        result = sub_29B26D2FC(a2, *v5);
      }

      ++v4;
      v5 += 4;
    }

    while (v4 < *(v3 + 2));
  }

  return result;
}

uint64_t sub_29B26D434(uint64_t result, void *a2)
{
  v2 = *(result + 1192);
  *a2 = *(result + 136);
  a2[1] = v2;
  v3 = *(result + 1200);
  a2[2] = *(result + 200);
  a2[3] = v3;
  v4 = *(result + 100);
  v5 = *(result + 1208);
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (!v6)
  {
    v7 = 0;
  }

  a2[4] = v4;
  a2[5] = v7;
  a2[6] = *(result + 1216);
  return result;
}

void sub_29B26D470(void *a1)
{
  sub_29B26E51C(a1);

  operator delete(a1);
}

uint64_t sub_29B26D4BC(uint64_t a1)
{
  result = a1 + 128;
  if (*(a1 + 151) < 0)
  {
    return *result;
  }

  return result;
}

double sub_29B26D4D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 160);
  *a2 = result;
  v3 = *(a1 + 220);
  *(a2 + 8) = *(a1 + 216);
  *(a2 + 12) = v3;
  v4 = *(a1 + 168);
  *(a2 + 16) = *(a1 + 222);
  *(a2 + 20) = v4;
  v5 = *(a1 + 176);
  *(a2 + 24) = *(a1 + 172);
  *(a2 + 28) = v5;
  return result;
}

void sub_29B26D564(void *a1)
{
  sub_29B26DC20(a1);

  operator delete(a1);
}

uint64_t sub_29B26D5B0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_29B26D5DC(uint64_t a1, char *a2)
{
  v2 = a2;
  if (!a2)
  {
    a2 = "";
  }

  MEMORY[0x29C2C1A60](a1 + 40, a2);
  sub_29A012CE4((a1 + 64));
  if (v2)
  {
    v4 = strchr(v2, 58);
    if (v4)
    {
      v5 = v4;
      do
      {
        if (v5 != v2)
        {
          sub_29A02887C(__p, v2, v5 - v2);
          sub_29A091654((a1 + 64), __p);
          if (v7 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v2 = v5 + 1;
        v5 = strchr(v5 + 1, 58);
      }

      while (v5);
    }

    if (*v2)
    {
      sub_29A008E78(__p, v2);
      sub_29A091654((a1 + 64), __p);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29B26D6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B26D6E4(uint64_t a1)
{
  result = a1 + 40;
  if (*(a1 + 63) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t *sub_29B26D700(uint64_t *a1, char *__s)
{
  __dst[4] = *MEMORY[0x29EDCA608];
  *a1 = __s;
  *(a1 + 2) = strlen(__s);
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  __dst[0] = 0;
  memcpy(__dst, (v3 + v5), v4 & 7);
  v15 = 0;
  v16 = 0;
  v6 = 16777619 * LODWORD(__dst[0]);
  v13 = 16777619 * __dst[0];
  v14 = 0;
  if (v5 >= 32)
  {
    v9 = 0;
    do
    {
      for (i = 0; i != 32; i += 16)
      {
        v11.i64[0] = 16777619 * *(&v13 + i);
        v11.i64[1] = 16777619 * *(&v13 + i + 8);
        *(&v13 + i) = veorq_s8(v11, *(v3 + i));
      }

      ++v9;
      v3 += 32;
    }

    while (v9 != ((v4 - 32) >> 5) + 1);
    v6 = v13;
    v7 = v14;
    v8 = (16777619 * v15) ^ v16;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *(a1 + 3) = (16777619 * ((16777619 * v6) ^ v7)) ^ v8;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_29B26D854(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_2A20CC6A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  sub_29B26D980((a1 + 88));
  *(a1 + 128) = a4;
  *(a1 + 136) = 1224;
  *(a1 + 200) = 0;
  pthread_mutex_init((a1 + 264), 0);
  *(a1 + 1144) = a1 + 328;
  *(a1 + 1152) = a1 + 736;
  *(a1 + 1160) = a1 + 1160;
  *(a1 + 1168) = a1 + 1160;
  *(a1 + 1176) = a1 + 1176;
  *(a1 + 1184) = a1 + 1176;
  bzero((a1 + 328), 0x330uLL);
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  return a1;
}

void sub_29B26D940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_29B26DA48((v10 + 88));
  a10 = (v10 + 64);
  sub_29A012C90(&a10);
  if (*(v10 + 63) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

void *sub_29B26D980(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_29B26D9D4(a1);
  return a1;
}

void sub_29B26D9B4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B26D9D4(void *a1)
{
  a1[1] = 16;
  v2 = *(a1 + 2);
  result = operator new[]((32 * v2) | 0x10);
  *result = 32;
  result[1] = v2;
  if (v2)
  {
    v4 = result + 3;
    v5 = 32 * v2;
    do
    {
      *(v4 - 1) = 0;
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 8) = 0;
      v4[2] = 0;
      v4 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  *a1 = result + 2;
  return result;
}

uint64_t *sub_29B26DA48(uint64_t *a1)
{
  sub_29B26DA9C(a1);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29B26DA80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B26DA9C(uint64_t *a1)
{
  if (*(a1 + 2))
  {
    v2 = 0;
    v3 = 24;
    do
    {
      if (*(*a1 + v3))
      {
        v4 = *(*a1 + v3);
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }
      }

      ++v2;
      v3 += 32;
    }

    while (v2 < *(a1 + 2));
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = (v5 - 16);
    v7 = *(v5 - 8);
    if (v7)
    {
      v8 = v5 + 32 * v7 - 16;
      v9 = -32 * v7;
      v10 = v8;
      do
      {
        v11 = *v10;
        v10 -= 32;
        if (v11 == 1)
        {
          v12 = *(v8 - 16);
          if (v12)
          {
            operator delete[](v12);
          }
        }

        v8 = v10;
        v9 += 32;
      }

      while (v9);
    }

    operator delete[](v6);
  }

  v13 = a1[2];
  v14 = a1[3];
  if (v14 != v13)
  {
    v15 = 0;
    do
    {
      v16 = v13[v15];
      if (v16)
      {
        v17 = *(v16 - 8);
        if (v17)
        {
          v18 = v16 + 32 * v17 - 16;
          v19 = -32 * v17;
          v20 = v18;
          do
          {
            v21 = *v20;
            v20 -= 32;
            if (v21 == 1)
            {
              v22 = *(v18 - 16);
              if (v22)
              {
                operator delete[](v22);
              }
            }

            v18 = v20;
            v19 += 32;
          }

          while (v19);
        }

        operator delete[]((v16 - 16));
        v13 = a1[2];
        v14 = a1[3];
      }

      ++v15;
    }

    while (v15 < (v14 - v13) >> 3);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  if (v13)
  {

    operator delete(v13);
  }
}

uint64_t sub_29B26DC20(uint64_t a1)
{
  *a1 = &unk_2A20CC6A0;
  pthread_mutex_destroy((a1 + 264));
  sub_29B26DA48((a1 + 88));
  v3 = (a1 + 64);
  sub_29A012C90(&v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_29B26DC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 64);
  sub_29A012C90(&a10);
  if (*(v10 + 63) < 0)
  {
    operator delete(*(v10 + 40));
  }

  _Unwind_Resume(a1);
}

BOOL sub_29B26DCD8(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 3) != *(a1 + 3) || *(a2 + 2) != *(a1 + 2) || !*a1)
  {
    return 0;
  }

  v2 = *a2;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (v4 < 0 || (v4 & 0xFFFFFFF8) == 0)
  {
    return memcmp((v2 + v5), (v3 + v5), v4 & 7) == 0;
  }

  v6 = 0;
  v5 = v5;
  while (*(v2 + v6) == *(v3 + v6))
  {
    v6 += 8;
    if (v6 >= v5)
    {
      return memcmp((v2 + v5), (v3 + v5), v4 & 7) == 0;
    }
  }

  return 0;
}

void *sub_29B26DD80(uint64_t a1, void *a2)
{
  do
  {
    do
    {
      v3 = *a1;
    }

    while (!*a1);
    v4 = *a1;
    atomic_compare_exchange_strong(a1, &v4, 0);
  }

  while (v4 != v3);
  if (*(a1 + 8) <= (2 * *(a1 + 12)))
  {
    return sub_29B26DDB8(a1, v3, a2);
  }

  else
  {
    return v3;
  }
}

void *sub_29B26DDB8(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a2;
  sub_29A0A71C8(a1 + 16, &v15);
  v5 = (2 * *(a1 + 8));
  v6 = operator new[](((v5 >> 1) << 6) | 0x10);
  *v6 = 32;
  v6[1] = v5;
  result = v6 + 2;
  if (v5)
  {
    v8 = v6 + 3;
    v9 = 32 * v5;
    do
    {
      *(v8 - 1) = 0;
      *v8 = 0;
      *(v8 + 1) = 0;
      *(v8 + 8) = 0;
      v8[2] = 0;
      v8 += 4;
      v9 -= 32;
    }

    while (v9);
  }

  *a3 = 32 * v5;
  if (*(a1 + 8))
  {
    v10 = 0;
    v11 = v15;
    do
    {
      v12 = v11 + 32 * v10;
      if (*(v12 + 24))
      {
        v13 = *(v12 + 12);
        do
        {
          v14 = &result[4 * (v13++ & (v5 - 1))];
        }

        while (v14[3]);
        *v14 = *v12;
        *(v14 + 2) = *(v12 + 8);
        *(v14 + 3) = *(v12 + 12);
        *(v14 + 16) = *(v12 + 16);
        *(v12 + 16) = 0;
        v14[3] = *(v12 + 24);
      }

      ++v10;
    }

    while (v10 < *(a1 + 8));
  }

  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_29B26DECC(unsigned int a1)
{
  v1 = HIWORD(a1) & 0x8000;
  v2 = (a1 >> 13) & 0x3FC00;
  LOWORD(v3) = v1 | 0x7C00;
  if (v2 == 261120)
  {
    v3 = v1 | (a1 >> 13) & 0x3FF | 0x7C00;
  }

  v4 = v1 | (COERCE_FLOAT(a1 & 0x7FFFFFFF) * 16777216.0 + 0.5);
  if (v2 > 0x1C000)
  {
    LOWORD(v4) = v3;
  }

  return v4;
}

uint64_t sub_29B26DF2C(uint64_t a1, const std::string::value_type *a2, std::string *a3)
{
  pthread_mutex_lock((a1 + 8));
  if ((*(a1 + 106) & 1) == 0)
  {
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  MEMORY[0x29C2C1A60](a1 + 128, a2);
  v6 = (*(**(a1 + 88) + 16))(*(a1 + 88), a2);
  *(a1 + 112) = v6;
  if (!v6)
  {
    sub_29A008E78(&v30, "Can't open ptex file: ");
    std::string::append(&v30, a2);
    std::string::append(&v30, "\n");
    v10 = (*(**(a1 + 88) + 48))(*(a1 + 88));
    std::string::append(&v30, v10);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v30;
    }

    else
    {
      v11 = v30.__r_.__value_.__r.__words[0];
    }

    MEMORY[0x29C2C1A60](a3, v11);
    *(a1 + 105) = 0;
LABEL_15:
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    goto LABEL_20;
  }

  *(a1 + 152) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  sub_29B26E98C(a1, a1 + 152, 0x40u, 1);
  if (*(a1 + 152) != 2019914832)
  {
    sub_29A008E78(&v30, "Not a ptex file: ");
    std::string::append(&v30, a2);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v30;
    }

    else
    {
      v12 = v30.__r_.__value_.__r.__words[0];
    }

    MEMORY[0x29C2C1A60](a3, v12);
    *(a1 + 105) = 0;
    sub_29B26E73C(a1);
    goto LABEL_15;
  }

  if (*(a1 + 156) != 1)
  {
    sub_29A008864(&v30);
    v13 = sub_29A00911C(&v30.__r_.__value_.__r.__words[2], "Unsupported ptex file version (", 31);
    v14 = MEMORY[0x29C2C1EE0](v13, *(a1 + 156));
    v15 = sub_29A00911C(v14, "): ", 3);
    v16 = strlen(a2);
    sub_29A00911C(v15, a2, v16);
    std::stringbuf::str();
    std::string::operator=(a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *(a1 + 105) = 0;
    sub_29B26E73C(a1);
    sub_29A008B0C(&v30);
    goto LABEL_20;
  }

  v7 = dword_29B712F08[*(a1 + 164)] * *(a1 + 172);
  *(a1 + 320) = v7;
  v8 = *(a1 + 560);
  v9 = *(a1 + 568) - v8;
  if (v7 <= v9)
  {
    if (v7 < v9)
    {
      *(a1 + 568) = v8 + v7;
    }
  }

  else
  {
    sub_29A1B2C78(a1 + 560, v7 - v9);
  }

  v30.__r_.__value_.__r.__words[0] = &unk_2A20CCAB0;
  *&v30.__r_.__value_.__r.__words[1] = 0uLL;
  v31 = 0;
  v19 = *(a1 + 96);
  *(a1 + 96) = &v30;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 216) = 0u;
  if (*(a1 + 180) >= 0x28u)
  {
    v20 = 40;
  }

  else
  {
    v20 = *(a1 + 180);
  }

  sub_29B26E98C(a1, a1 + 216, v20, 1);
  v21 = (*(a1 + 180) + 64);
  v22 = *(a1 + 184) + v21;
  *(a1 + 256) = v21;
  *(a1 + 264) = v22;
  v23 = v22 + *(a1 + 188);
  v24 = v23 + *(a1 + 192);
  *(a1 + 272) = v23;
  *(a1 + 280) = v24;
  v25 = v24 + *(a1 + 200);
  v26 = v25 + *(a1 + 208) + 8;
  *(a1 + 288) = v25;
  *(a1 + 296) = v26;
  v27 = v26 + *(a1 + 224);
  v28 = v27 + *(a1 + 232);
  if (*(a1 + 248) > v28)
  {
    v28 = *(a1 + 248);
  }

  *(a1 + 304) = v27;
  *(a1 + 312) = v28;
  sub_29B26EA30(a1);
  sub_29B26EB0C(a1);
  sub_29B26EBBC(a1);
  sub_29B26EC70(a1);
  *(a1 + 696) = *(a1 + 704);
  *(a1 + 96) = v19;
  v17 = *(a1 + 105);
  if (v17)
  {
    __dmb(0xBu);
    *(a1 + 106) = 0;
  }

  else
  {
    std::string::operator=(a3, &v30.__r_.__value_.__r.__words[1]);
    sub_29B26E73C(a1);
  }

  v30.__r_.__value_.__r.__words[0] = &unk_2A20CCAB0;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__size_);
  }

LABEL_21:
  pthread_mutex_unlock((a1 + 8));
  return v17;
}

void sub_29B26E2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a15);
  pthread_mutex_unlock((v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29B26E37C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A20CC728;
  pthread_mutex_init((a1 + 8), 0);
  v8 = a1 + 72;
  *(a1 + 72) = &unk_2A20CCA40;
  *(a1 + 80) = 0;
  if (a3)
  {
    v8 = a3;
  }

  *(a1 + 88) = v8;
  *(a1 + 96) = a4;
  *(a1 + 104) = a2;
  *(a1 + 105) = 257;
  *(a1 + 107) = 0;
  *(a1 + 320) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  sub_29B273A1C((a1 + 520));
  *(a1 + 576) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 696) = 728;
  *(a1 + 704) = 728;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  return a1;
}

void sub_29B26E480(_Unwind_Exception *a1)
{
  v3 = *(v1 + 496);
  if (v3)
  {
    *(v1 + 504) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 472);
  if (v4)
  {
    *(v1 + 480) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 448);
  if (v5)
  {
    *(v1 + 456) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 424);
  if (v6)
  {
    *(v1 + 432) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 400);
  if (v7)
  {
    *(v1 + 408) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 376);
  if (v8)
  {
    *(v1 + 384) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 352);
  if (v9)
  {
    *(v1 + 360) = v9;
    operator delete(v9);
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  pthread_mutex_destroy((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29B26E51C(uint64_t a1)
{
  *a1 = &unk_2A20CC728;
  sub_29B26E73C(a1);
  v2 = *(a1 + 328);
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = *(a1 + 336);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = *(a1 + 448);
  v4 = *(a1 + 456);
  while (v5 != v4)
  {
    v6 = *v5;
    if (*v5)
    {
      sub_29B2724B8(*v5);
      operator delete(v6);
      v4 = *(a1 + 456);
    }

    ++v5;
  }

  v7 = *(a1 + 560);
  if (v7)
  {
    *(a1 + 568) = v7;
    operator delete(v7);
  }

  sub_29B273AD0(a1 + 520);
  v8 = *(a1 + 496);
  if (v8)
  {
    *(a1 + 504) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 472);
  if (v9)
  {
    *(a1 + 480) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 448);
  if (v10)
  {
    *(a1 + 456) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 424);
  if (v11)
  {
    *(a1 + 432) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 400);
  if (v12)
  {
    *(a1 + 408) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 376);
  if (v13)
  {
    *(a1 + 384) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 352);
  if (v14)
  {
    *(a1 + 360) = v14;
    operator delete(v14);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  pthread_mutex_destroy((a1 + 8));
  return a1;
}

void sub_29B26E670(_Unwind_Exception *a1)
{
  v3 = *(v1 + 496);
  if (v3)
  {
    *(v1 + 504) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 472);
  if (v4)
  {
    *(v1 + 480) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 448);
  if (v5)
  {
    *(v1 + 456) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 424);
  if (v6)
  {
    *(v1 + 432) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 400);
  if (v7)
  {
    *(v1 + 408) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 376);
  if (v8)
  {
    *(v1 + 384) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 352);
  if (v9)
  {
    *(v1 + 360) = v9;
    operator delete(v9);
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  pthread_mutex_destroy((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29B26E73C(uint64_t a1)
{
  if (*(a1 + 112))
  {
    (*(**(a1 + 88) + 40))(*(a1 + 88));
    *(a1 + 112) = 0;
  }

  return inflateEnd((a1 + 584));
}

void sub_29B26E7A8(void *a1)
{
  sub_29B26E51C(a1);

  operator delete(a1);
}

void *sub_29B26E7F4(void *a1)
{
  v2 = a1[42];
  if (v2)
  {
    (*(*v2 + 8))(v2);
    a1[42] = 0;
  }

  v4 = a1[56];
  v3 = a1[57];
  while (v4 != v3)
  {
    v5 = *v4;
    if (*v4)
    {
      sub_29B2724B8(*v4);
      operator delete(v5);
      *v4 = 0;
      v3 = a1[57];
    }

    ++v4;
  }

  sub_29B273B24((a1 + 65));
  result = sub_29B273A70(a1 + 65);
  a1[88] = a1[87];
  return result;
}

uint64_t sub_29B26E8AC(uint64_t a1)
{
  sub_29B26E7F4(a1);
  v2 = *(a1 + 328);
  if (v2)
  {
    operator delete[](v2);
    *(a1 + 328) = 0;
  }

  v3 = *(a1 + 352);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 376);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 400);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 424);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 448);
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 472);
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(a1 + 496);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  result = sub_29B26E73C(a1);
  *(a1 + 105) = 257;
  *(a1 + 107) = 0;
  *(a1 + 696) = 728;
  *(a1 + 704) = 728;
  return result;
}

uint64_t sub_29B26E98C(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  result = 0;
  if ((a3 & 0x80000000) == 0 && *(a1 + 112))
  {
    v7 = a3;
    if ((*(**(a1 + 88) + 32))(*(a1 + 88), a2, a3) == a3)
    {
      *(a1 + 120) += v7;
      return 1;
    }

    else
    {
      if (a4)
      {
        sub_29B26EF9C(a1, "PtexReader error: read failed (EOF)");
      }

      return 0;
    }
  }

  return result;
}

void sub_29B26EA30(uint64_t a1)
{
  if (*(a1 + 352) == *(a1 + 360))
  {
    sub_29B26F164(a1, *(a1 + 256));
    v2 = *(a1 + 176);
    sub_29B26F1E8((a1 + 352), v2);
    sub_29B26F224(a1, *(a1 + 352), *(a1 + 184), 20 * v2);
    sub_29A0A171C((a1 + 376), v2);
    sub_29A01112C(__p, v2);
    sub_29B27504C(*(a1 + 352), v2, *(a1 + 376), __p[0]);
    if (v2)
    {
      atomic_fetch_add((a1 + 704), 24 * v2);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_29B26EAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B26EB0C(uint64_t result)
{
  if (!*(result + 328))
  {
    v1 = result;
    sub_29B26F164(result, *(result + 264));
    v2 = *(v1 + 176) * *(v1 + 320);
    if (v2 < 0)
    {
      v3 = -1;
    }

    else
    {
      v3 = v2;
    }

    v4 = operator new[](v3);
    *(v1 + 328) = v4;
    result = sub_29B26F224(v1, v4, *(v1 + 188), v2);
    if (*(v1 + 104) == 1)
    {
      v7 = *(v1 + 168);
      if ((v7 & 0x80000000) == 0)
      {
        v8 = *(v1 + 172);
        if (v7 < v8)
        {
          result = sub_29B274E0C(*(v1 + 328), *(v1 + 176), *(v1 + 164), v8, v7, v5, v6);
        }
      }
    }

    if (v2)
    {
      atomic_fetch_add((v1 + 704), v2);
    }
  }

  return result;
}

void sub_29B26EBBC(void *result)
{
  if (result[50] == result[51])
  {
    sub_29B26F164(result, result[34]);
    sub_29A0CFC90(result + 50, *(result + 87));
    sub_29B26E98C(result, result[50], 16 * *(result + 87), 1);
    sub_29A0BD724(result + 56, *(result + 87));
    sub_29A00BF50(result + 53, *(result + 87));
    v2 = *(result + 87);
    if (*(result + 87))
    {
      v3 = result[35];
      v4 = result[53];
      v5 = *(result + 87);
      v6 = result[50];
      do
      {
        *v4++ = v3;
        v7 = *v6;
        v6 += 2;
        v3 += v7;
        --v5;
      }

      while (v5);
    }

    atomic_fetch_add(result + 88, 16 * v2 + 16);
  }
}

void sub_29B26EC70(void *result)
{
  v2 = result[39];
  if (result[31])
  {
    v3 = result[30] + v2;
  }

  else
  {
    v3 = -1;
  }

  if (v2 < v3)
  {
    do
    {
      sub_29B26F164(result, v2);
      v9 = 1;
      v8 = 0;
      if (!result[14])
      {
        break;
      }

      if ((*(*result[11] + 32))(result[11], &v9, 1) != 1)
      {
        break;
      }

      v4 = result[14];
      ++result[15];
      if (!v4)
      {
        break;
      }

      if ((*(*result[11] + 32))(result[11], &v8, 4) != 4)
      {
        break;
      }

      v5 = result[15] + 4;
      result[15] = v5;
      v6 = v8;
      if (!v8)
      {
        break;
      }

      *(result + 344) = 1;
      if (v9 == 1)
      {
        sub_29B26FA1C(result);
      }

      else if (!v9)
      {
        sub_29B26F900(result);
      }

      v2 = v5 + v6;
    }

    while (v5 + v6 < v3);
  }

  v7 = (result[64] + result[61] - (result[62] + result[59])) & 0xFFFFFFFFFFFFFFF0;
  if (v7)
  {
    atomic_fetch_add(result + 88, v7);
  }
}

uint64_t sub_29B26EDD8(uint64_t a1)
{
  *a1 = &unk_2A20CCAB0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29B26EE28(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 1;
  }

  if (pthread_mutex_trylock((a1 + 8)))
  {
    return 0;
  }

  sub_29B26E73C(a1);
  pthread_mutex_unlock((a1 + 8));
  return 1;
}

uint64_t sub_29B26EE84(uint64_t a1)
{
  if (*(a1 + 112))
  {
    return 1;
  }

  v14 = v1;
  v15 = v2;
  v5 = *(a1 + 88);
  v6 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v6 = *v6;
  }

  v7 = (*(*v5 + 16))(v5, v6);
  *(a1 + 112) = v7;
  if (v7)
  {
    *(a1 + 120) = 0;
    sub_29B26E98C(a1, __s1, 0x40u, 1);
    memset(v10, 0, sizeof(v10));
    v11 = 0;
    if (v13 >= 0x28)
    {
      v8 = 40;
    }

    else
    {
      v8 = v13;
    }

    sub_29B26E98C(a1, v10, v8, 1);
    if (!memcmp(__s1, (a1 + 152), 0x40uLL) && !memcmp(v10, (a1 + 216), 0x28uLL))
    {
      result = 1;
      atomic_fetch_add((a1 + 712), 1uLL);
      return result;
    }

    v9 = "Header mismatch on reopen of";
  }

  else
  {
    v9 = "Can't reopen";
  }

  sub_29B26EF9C(a1, v9);
  return 0;
}

void sub_29B26EF9C(uint64_t a1, char *a2)
{
  sub_29A008E78(&v10, a2);
  std::string::append(&v10, " PtexFile: ");
  v3 = *(a1 + 151);
  if (v3 >= 0)
  {
    v4 = (a1 + 128);
  }

  else
  {
    v4 = *(a1 + 128);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 151);
  }

  else
  {
    v5 = *(a1 + 136);
  }

  std::string::append(&v10, v4, v5);
  std::string::append(&v10, "\n");
  v6 = *(a1 + 96);
  if (v6)
  {
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v10;
    }

    else
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    (*(*v6 + 16))(v6, v7);
  }

  else
  {
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    sub_29A00911C(MEMORY[0x29EDC93C0], v8, size);
  }

  *(a1 + 105) = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_29B26F094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_29B26F0B0(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = *(a1 + 352);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 360) - v2) >> 2) > a2)
    {
      return (v2 + 20 * a2);
    }
  }

  if (atomic_load_explicit(&qword_2A1787800, memory_order_acquire))
  {
    return &dword_2A17877E8;
  }

  if (__cxa_guard_acquire(&qword_2A1787800))
  {
    dword_2A17877E8 = 0;
    *algn_2A17877EC = -1;
    *&algn_2A17877EC[8] = -1;
    __cxa_guard_release(&qword_2A1787800);
  }

  return &dword_2A17877E8;
}

uint64_t sub_29B26F164(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 112) || (result = sub_29B26EE84(result), result))
  {
    atomic_fetch_add((v3 + 720), 1uLL);
    if (*(v3 + 120) != a2)
    {
      result = (*(**(v3 + 88) + 24))(*(v3 + 88), *(v3 + 112), a2);
      *(v3 + 120) = a2;
    }
  }

  return result;
}

void sub_29B26F1E8(void *result, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29B273C1C(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 20 * a2;
  }
}

BOOL sub_29B26F224(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v12[2049] = *MEMORY[0x29EDCA608];
  if (((a4 | a3) & 0x80000000) == 0)
  {
    v5 = a3;
    v7 = a1;
    if (!*(a1 + 640))
    {
      a1 = inflateInit_((a1 + 584), "1.2.12", 112);
    }

    MEMORY[0x2A1C7C4A8](a1);
    bzero(v12, 0x4000uLL);
    *(v7 + 608) = a2;
    *(v7 + 616) = a4;
    do
    {
      if (v5 >= 0x4000)
      {
        v8 = 0x4000;
      }

      else
      {
        v8 = v5;
      }

      if (!sub_29B26E98C(v7, v12, v8, 1))
      {
        goto LABEL_11;
      }

      v5 -= v8;
      *(v7 + 584) = v12;
      *(v7 + 592) = v8;
      v9 = inflate((v7 + 584), 4 * (v5 == 0));
    }

    while (!v9);
    if (v9 == 1)
    {
LABEL_11:
      v10 = *(v7 + 624);
      inflateReset((v7 + 584));
      return v10 == a4;
    }

    sub_29B26EF9C(v7, "PtexReader error: unzip failed, file corrupt");
    inflateReset((v7 + 584));
  }

  return 0;
}

uint64_t sub_29B26F368(uint64_t a1)
{
  result = *(a1 + 336);
  if (!result)
  {
    sub_29B26F39C(a1);
    return *(a1 + 336);
  }

  return result;
}

uint64_t sub_29B26F39C(uint64_t a1)
{
  pthread_mutex_lock((a1 + 8));
  if (!*(a1 + 336))
  {
    v2 = operator new(0x40uLL);
    *v2 = &unk_2A20CCB30;
    v2[1] = a1;
    v2[4] = 0;
    v2[5] = 0;
    v2[3] = 0;
    v2[2] = v2 + 3;
    v2[6] = 0;
    v2[7] = 0;
    v10 = 64;
    v3 = *(a1 + 212);
    if (v3)
    {
      sub_29B26F624(a1, v2, *(a1 + 288), *(a1 + 208), v3, &v10);
    }

    v4 = *(a1 + 228);
    if (v4)
    {
      sub_29B26F79C(a1, v2, *(a1 + 296), *(a1 + 224), v4, &v10);
    }

    v5 = *(a1 + 480) - *(a1 + 472);
    if (v5)
    {
      v6 = 0;
      v7 = v5 >> 4;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      do
      {
        sub_29B26F624(a1, v2, *(*(a1 + 472) + v6), *(*(a1 + 472) + v6 + 8), *(*(a1 + 472) + v6 + 12), &v10);
        v6 += 16;
        --v8;
      }

      while (v8);
    }

    __dmb(0xBu);
    *(a1 + 336) = v2;
    if (v2[7] - v2[5] + v10 != -64)
    {
      atomic_fetch_add((a1 + 704), v2[7] - v2[5] + v10 + 64);
    }
  }

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t sub_29B26F4FC(uint64_t *a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = a1[5];
  if (((a1[6] - v3) >> 3) <= a2)
  {
    return 0;
  }

  v4 = *(v3 + 8 * a2);
  if (*(v4 + 24) == 1 && !*(v4 + 32))
  {
    v5 = a1[1];
    pthread_mutex_lock((v5 + 8));
    if (!*(v4 + 32))
    {
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 12);
      *v6 = &unk_2A20CCB00;
      if (v7 < 0)
      {
        v8 = -1;
      }

      else
      {
        v8 = v7;
      }

      v9 = operator new[](v8);
      v6[1] = v9;
      *(v4 + 16) = v9;
      atomic_fetch_add((a1[1] + 704), v7 + 16);
      sub_29B26F164(a1[1], *(v4 + 40));
      sub_29B26F224(a1[1], *(v4 + 16), *(v4 + 48), *(v4 + 12));
      *(v4 + 32) = v6;
    }

    pthread_mutex_unlock((v5 + 8));
  }

  return v4;
}

void sub_29B26F5FC(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock((v2 + 8));
  _Unwind_Resume(a1);
}

void sub_29B26F624(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v11 = sub_29B26F164(a1, a3);
  if (a5 <= 0x4000)
  {
    MEMORY[0x2A1C7C4A8](v11);
    v12 = v24 - v13;
    bzero(v24 - v13, v14);
  }

  else
  {
    v12 = operator new[](a5);
  }

  if (sub_29B26F224(a1, v12, a4, a5))
  {
    if (a5 < 1)
    {
      return;
    }

    v15 = v12;
    do
    {
      v17 = *v15;
      v16 = v15 + 1;
      v18 = &v16[v17];
      v16[v17 - 1] = 0;
      v19 = *(v18 + 1);
      v20 = v18 + 5;
      v21 = &v18[v19 + 5];
      v22 = sub_29B272F5C(a2, (v17 - 1), v16, *v18, *(v18 + 1), a6);
      v23 = operator new[](v19);
      *(v22 + 2) = v23;
      memcpy(v23, v20, v19);
      *a6 += v19;
      v15 = v21;
    }

    while (v21 < &v12[a5]);
  }

  if (a5 > 0x4000)
  {
    operator delete[](v12);
  }
}

void sub_29B26F79C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v12 = sub_29B26F164(a1, a3);
  if (a5 <= 0x4000)
  {
    MEMORY[0x2A1C7C4A8](v12);
    v13 = v24 - v14;
    bzero(v24 - v14, v15);
  }

  else
  {
    v13 = operator new[](a5);
  }

  if (sub_29B26F224(a1, v13, a4, a5))
  {
    if (a5 < 1)
    {
      return;
    }

    v16 = v13;
    v17 = a3 + a4;
    do
    {
      v19 = *v16;
      v18 = (v16 + 1);
      v20 = &v18[v19];
      v21 = *(v20 + 5);
      v22 = (v20 + 9);
      v23 = sub_29B272F5C(a2, (v19 - 1), v18, *v20, *(v20 + 1), a6);
      *(v23 + 24) = 1;
      *(v23 + 4) = 0;
      *(v23 + 5) = v17;
      v23[12] = v21;
      v17 += v21;
      v16 = v22;
    }

    while (v22 < &v13[a5]);
  }

  if (a5 > 0x4000)
  {
    operator delete[](v13);
  }
}

void sub_29B26F900(uint64_t a1)
{
  *v14 = 0;
  *&v14[4] = -1;
  *&v14[12] = -1;
  v15 = 0;
  if (sub_29B26E98C(a1, &v13, 0x1Cu, 1))
  {
    v2 = v13;
    if ((v13 & 0x80000000) == 0 && v13 < *(a1 + 176))
    {
      v3 = *(a1 + 352) + 20 * v13;
      v4 = *&v14[16];
      *v3 = *v14;
      *(v3 + 16) = v4;
      *(v3 + 3) |= 2u;
      v5 = *(a1 + 320);
      v6 = *(a1 + 328) + (v5 * v2);
      if (sub_29B26E98C(a1, v6, v5, 1))
      {
        if (*(a1 + 104) == 1)
        {
          v9 = *(a1 + 168);
          if ((v9 & 0x80000000) == 0)
          {
            v10 = *(a1 + 172);
            if (v9 < v10)
            {
              sub_29B274E0C(v6, 1, *(a1 + 164), v10, v9, v7, v8);
            }
          }
        }

        if ((*(v3 + 3) & 1) == 0)
        {
          v12 = 0uLL;
          sub_29A03A998(a1 + 496, &v12);
          v11 = *(a1 + 504);
          *(v11 - 16) = *(a1 + 120);
          *(v11 - 8) = v2;
          *(v11 - 4) = v15;
        }
      }
    }
  }
}

double sub_29B26FA1C(uint64_t a1)
{
  if (sub_29B26E98C(a1, &v5, 8u, 1))
  {
    v4 = 0uLL;
    sub_29A03A998(a1 + 472, &v4);
    v3 = *(a1 + 480);
    *(v3 - 16) = *(a1 + 120);
    result = v5;
    *(v3 - 8) = v5;
  }

  return result;
}

uint64_t sub_29B26FA7C(uint64_t a1, int a2, uint64_t **a3)
{
  pthread_mutex_lock((a1 + 8));
  if (!*a3)
  {
    v6 = *(a1 + 400);
    v7 = operator new(0x48uLL);
    v8 = v6 + 16 * a2;
    sub_29B2733A8(v7, *(v8 + 12));
    sub_29B26F164(a1, *(*(a1 + 424) + 8 * a2));
    sub_29B26F224(a1, *v7, *(v8 + 8), 4 * *(v8 + 12));
    v9 = *(v8 + 12);
    v10 = *v7;
    v11 = v7[3];
    if (v9)
    {
      v12 = *(a1 + 120);
      v13 = 8 * v9;
      v14 = v7[3];
      v15 = *v7;
      do
      {
        *v14++ = v12;
        v16 = *v15++;
        v12 += v16 & 0x3FFFFFFF;
        v13 -= 8;
      }

      while (v13);
    }

    if (!a2)
    {
      v17 = *(a1 + 496);
      v18 = *(a1 + 504) - v17;
      if (v18)
      {
        v19 = v18 >> 4;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = (v17 + 8);
        do
        {
          *(v10 + 4 * *v20) = v20[1];
          *(v11 + 8 * *v20) = *(v20 - 1);
          v20 += 4;
          --v19;
        }

        while (v19);
      }
    }

    __dmb(0xBu);
    *a3 = v7;
    if (20 * ((v7[1] - *v7) >> 2) != -72)
    {
      atomic_fetch_add((a1 + 704), 20 * ((v7[1] - *v7) >> 2) + 72);
    }
  }

  return pthread_mutex_unlock((a1 + 8));
}

void sub_29B26FBC0(_Unwind_Exception *a1)
{
  operator delete(v2);
  pthread_mutex_unlock((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29B26FBE8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, void *a6)
{
  v7 = a5;
  v48 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((a1 + 8));
  if (!*a6)
  {
    sub_29B26F164(a1, a2);
    v12 = a3 >> 30;
    if ((a3 >> 30) - 1 >= 2)
    {
      if (v12)
      {
        v47 = 0;
        sub_29B26E98C(a1, &v47, 2u, 1);
        v46 = 0;
        sub_29B26E98C(a1, &v46, 4u, 1);
        v14 = operator new(0x88uLL);
        sub_29B273514(v14, a1, a4, v47, v7);
        v28 = v14[7];
        v27 = v14[8];
        v29 = v14[11];
        v30 = v14[12];
        sub_29B26F224(a1, v29, v46, 4 * *(v14 + 11));
        v24 = v27 - v28 + 12 * ((v30 - v29) >> 2) + 136;
        v31 = *(v14 + 11);
        if (v31)
        {
          v32 = v14[14];
          v33 = v14[11];
          v34 = 8 * v31;
          v35 = *(a1 + 120);
          do
          {
            *v32++ = v35;
            v36 = *v33++;
            v35 += v36 & 0x3FFFFFFF;
            v34 -= 8;
          }

          while (v34);
        }
      }

      else
      {
        v14 = operator new(0x18uLL);
        v19 = *(a1 + 320);
        *(v14 + 4) = 0;
        *v14 = &unk_2A20CC7F0;
        *(v14 + 3) = v19;
        if (v19 < 0)
        {
          v20 = -1;
        }

        else
        {
          v20 = v19;
        }

        v21 = operator new[](v20);
        v14[2] = v21;
        *v14 = &unk_2A20CC898;
        sub_29B26E98C(a1, v21, v19, 1);
        v24 = v19 + 24;
        if (!v7 && *(a1 + 104) == 1)
        {
          v25 = *(a1 + 168);
          if ((v25 & 0x80000000) == 0)
          {
            v26 = *(a1 + 172);
            if (v25 < v26)
            {
              sub_29B274E0C(v14[2], 1, *(a1 + 164), v26, v25, v22, v23);
            }
          }
        }
      }
    }

    else
    {
      v13 = *(a1 + 320);
      v14 = operator new(0x18uLL);
      v45 = 1 << a4;
      v44 = a4 >> 8;
      v43 = 1 << a4 << SBYTE1(a4);
      v15 = v13 * v43;
      *(v14 + 4) = a4;
      *v14 = &unk_2A20CC7F0;
      *(v14 + 3) = v13;
      if (v15 < 0)
      {
        v16 = -1;
      }

      else
      {
        v16 = v15;
      }

      v17 = operator new[](v16);
      v14[2] = v17;
      if (v15 <= 0x4000)
      {
        MEMORY[0x2A1C7C4A8](v17);
        v18 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v18, v15);
      }

      else
      {
        v18 = operator new[](v15);
      }

      sub_29B26F224(a1, v18, a3 & 0x3FFFFFFF, v15);
      if (v12 == 2)
      {
        sub_29B274244(v18, v15, *(a1 + 164));
      }

      sub_29B27408C(v18, dword_29B712F08[*(a1 + 164)] << a4, v45, 1 << v44, v14[2], *(a1 + 320) << a4, *(a1 + 164), *(a1 + 172));
      if (!v7 && *(a1 + 104) == 1)
      {
        v39 = *(a1 + 168);
        if ((v39 & 0x80000000) == 0)
        {
          v40 = *(a1 + 172);
          if (v39 < v40)
          {
            sub_29B274E0C(v14[2], v43, *(a1 + 164), v40, v39, v37, v38);
          }
        }
      }

      v24 = v15 + 24;
      if (v15 > 0x4000)
      {
        operator delete[](v18);
      }
    }

    __dmb(0xBu);
    *a6 = v14;
    if (v24)
    {
      atomic_fetch_add((a1 + 704), v24);
    }
  }

  return pthread_mutex_unlock((a1 + 8));
}

void sub_29B26FF98(_Unwind_Exception *a1)
{
  operator delete(v2);
  pthread_mutex_unlock((v1 + 8));
  _Unwind_Resume(a1);
}

_WORD *sub_29B26FFF8(uint64_t a1, char a2)
{
  v4 = operator new(0x20uLL);
  v5 = *(a1 + 560);
  v6 = *(a1 + 320);
  v4[4] = 0;
  *v4 = &unk_2A20CC7F0;
  *(v4 + 3) = v6;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = operator new[](v7);
  *(v4 + 2) = v8;
  *v4 = &unk_2A20CCC78;
  *(v4 + 24) = a2;
  memcpy(v8, v5, v6);
  return v4;
}

uint64_t sub_29B2700B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*a1 + 128))(a1);
  v9 = *(*a1 + 144);

  return v9(a1, a2, a3, a4, v8);
}

void *sub_29B270150(uint64_t a1, unsigned int a2, char *a3, int a4, unint64_t a5)
{
  v5 = a5;
  v6 = a3;
  v8 = a5 >> 8;
  if ((a2 & 0x80000000) != 0 || (*(a1 + 105) & 1) == 0 || *(a1 + 176) <= a2)
  {
    v15 = *(a1 + 560);
    v16 = *(a1 + 320);

    return sub_29B274CA4(v15, a3, a4, 1 << a5, 1 << SBYTE1(a5), v16);
  }

  else
  {
    v9 = *(a1 + 320) << a5;
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = *(a1 + 320) << a5;
    }

    v11 = (*(*a1 + 160))();
    v12 = (*(*v11 + 24))(v11);
    v13 = *v11;
    if (v12)
    {
      v14 = (*(v13 + 48))(v11);
      sub_29B274CA4(v14, v6, v10, 1 << v5, 1 << v8, *(a1 + 320));
    }

    else
    {
      v18 = (*(v13 + 56))(v11);
      v19 = *v11;
      if (v18)
      {
        v20 = (*(v19 + 64))(v11);
        v21 = v8 - (v20 >> 8);
        if (v21 != 31)
        {
          v22 = 0;
          v23 = 0;
          v24 = 1 << v20;
          v25 = *(a1 + 320) << v20;
          v26 = 1 << SHIBYTE(v20);
          v27 = 1 << v21;
          v28 = v5 - v20;
          v29 = 1 << (v5 - v20);
          v30 = v10 << SHIBYTE(v20);
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v42 = v5 - v20;
          v43 = v29;
          if (v27 <= 1)
          {
            v27 = 1;
          }

          v41 = v10 << SHIBYTE(v20);
          v40 = v27;
          do
          {
            if (v28 != 31)
            {
              v31 = v43;
              v44 = v43 + v23;
              v45 = v22;
              v46 = v6;
              v32 = v6;
              do
              {
                v33 = (*(*v11 + 72))(v11, v23);
                v34 = (*(*v33 + 24))(v33);
                v35 = *(*v33 + 48);
                if (v34)
                {
                  v36 = v35(v33);
                  sub_29B274CA4(v36, v32, v10, v24, v26, *(a1 + 320));
                }

                else
                {
                  v37 = v35(v33);
                  sub_29B274D4C(v37, v25, v32, v10, v26, v25);
                }

                (*(*v33 + 16))(v33);
                v32 += v25;
                v23 = (v23 + 1);
                --v31;
              }

              while (v31);
              v23 = v44;
              v22 = v45;
              v6 = v46;
              v28 = v42;
              v30 = v41;
              v27 = v40;
            }

            v6 += v30;
            ++v22;
          }

          while (v22 != v27);
        }
      }

      else
      {
        v38 = (*(v19 + 48))(v11);
        sub_29B274D4C(v38, v9, v6, v10, 1 << v8, v9);
      }
    }

    v39 = *(*v11 + 16);

    return v39(v11);
  }
}

_WORD *sub_29B2705B8(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || (*(a1 + 105) & 1) == 0 || *(a1 + 176) <= a2)
  {

    return sub_29B26FFF8(a1, 1);
  }

  else
  {
    v4 = *(a1 + 352) + 20 * a2;
    if ((*(v4 + 3) & 1) == 0 && (*v4 || *(v4 + 1)))
    {
      v5 = *(a1 + 448);
      v6 = *v5;
      if (!*v5)
      {
        sub_29B26FA7C(a1, 0, *(a1 + 448));
        v6 = *v5;
      }

      v7 = *v4;

      return sub_29B2706D0(a1, 0, v6, a2, v7);
    }

    else
    {
      result = operator new(0x18uLL);
      v9 = *(a1 + 320);
      v10 = *(a1 + 328) + (v9 * a2);
      *result = &unk_2A20CCCF8;
      *(result + 1) = v10;
      *(result + 4) = v9;
    }
  }

  return result;
}

uint64_t sub_29B2706D0(uint64_t a1, uint64_t a2, void *a3, int a4, unsigned __int16 a5)
{
  v5 = (a3[6] + 8 * a4);
  v6 = *v5;
  if (!*v5)
  {
    sub_29B26FBE8(a1, *(a3[3] + 8 * a4), *(*a3 + 4 * a4), a5, a2, v5);
    return *v5;
  }

  return v6;
}

_WORD *sub_29B27072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x80000000) == 0 && (*(a1 + 105) & 1) != 0 && *(a1 + 176) > a2)
  {
    v5 = (*(a1 + 352) + 20 * a2);
    v6 = v5[3];
    if ((v6 & 1) != 0 || (v7 = a3, v8 = a3, !a3))
    {
      v9 = operator new(0x18uLL);
      v10 = *(a1 + 320);
      v11 = *(a1 + 328) + v10 * a2;
      *v9 = &unk_2A20CCCF8;
      *(v9 + 8) = v11;
      *(v9 + 16) = v10;
      return v9;
    }

    v13 = *v5;
    v14 = v5[1];
    if (__PAIR64__(v14, v13) == __PAIR64__(BYTE1(a3), a3))
    {
      v15 = *(a1 + 448);
      v16 = *v15;
      if (!*v15)
      {
        sub_29B26FA7C(a1, 0, *(a1 + 448));
        v16 = *v15;
      }

      return sub_29B2706D0(a1, 0, v16, a2, v7);
    }

    v17 = (v13 - a3);
    v18 = v14 - SBYTE1(a3);
    if ((v6 & 2) == 0 && v17 == v18)
    {
      v19 = *(a1 + 448);
      if (v17 < ((*(a1 + 456) - v19) >> 3))
      {
        v20 = (v19 + 8 * v17);
        v21 = *v20;
        if (!*v20)
        {
          sub_29B26FA7C(a1, v13 - v8, (v19 + 8 * v17));
          v21 = *v20;
        }

        v22 = *(*(a1 + 376) + 4 * a2);
        if (v22 < (v21[7] - v21[6]) >> 3)
        {
          v9 = sub_29B2706D0(a1, v17, v21, v22, v7);
          if (v9)
          {
            return v9;
          }
        }
      }
    }

    v23 = v7;
    v34 = (16777619 * (a2 ^ ((v7 | v7 & 0xFF00) << 16))) | (a2 << 32);
    v9 = sub_29B270CC8((a1 + 520), &v34);
    if (v9)
    {
      return v9;
    }

    v33 = 0;
    if (v8 < 0 || v7 >> 8 < 0)
    {
      v27 = MEMORY[0x29EDC93C0];
      v28 = "PtexReader::getData - reductions below 1 pixel not supported";
      v29 = 60;
    }

    else if ((v17 & 0x80000000) != 0 || (v18 & 0x80000000) != 0)
    {
      v27 = MEMORY[0x29EDC93C0];
      v28 = "PtexReader::getData - enlargements not supported";
      v29 = 48;
    }

    else
    {
      if (*(a1 + 160))
      {
        v24 = v17 > v18;
        if (v17 == v18)
        {
          v24 = v7;
        }

        if (v24)
        {
          v25 = (*(*a1 + 160))(a1, a2, v7 & 0xFF00u | (v8 + 1));
          v26 = (*(*v25 + 80))(v25, a1, v23, sub_29B2742A8, &v33);
        }

        else
        {
          v25 = (*(*a1 + 160))(a1, a2, (v7 + 256));
          v26 = (*(*v25 + 80))(v25, a1, v23, sub_29B2745C0, &v33);
        }

        goto LABEL_41;
      }

      if (v17 == v18)
      {
        v25 = (*(*a1 + 160))(a1, a2, (v7 + 256) & 0xFF00 | (v7 + 1));
        v26 = (*(*v25 + 80))(v25, a1, v23, sub_29B274854, &v33);
LABEL_41:
        v31 = v26;
        (*(*v25 + 16))(v25);
LABEL_42:
        v32 = 0;
        v9 = sub_29B270D2C(a1 + 520, &v34, v31, &v32);
        if (v9 == v31)
        {
          if (v32 + v33)
          {
            atomic_fetch_add((a1 + 704), v32 + v33);
          }
        }

        else if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        return v9;
      }

      v27 = MEMORY[0x29EDC93C0];
      v28 = "PtexReader::getData - anisotropic reductions not supported for triangle mesh";
      v29 = 76;
    }

    v30 = sub_29A00911C(v27, v28, v29);
    sub_29A02C5EC(v30);
    v31 = sub_29B26FFF8(a1, 0);
    goto LABEL_42;
  }

  return sub_29B26FFF8(a1, 1);
}

uint64_t sub_29B270CC8(uint64_t *a1, uint64_t *a2)
{
  do
  {
    v2 = *a1;
  }

  while (!*a1);
  v3 = *(a1 + 2) - 1;
  v4 = *a2;
  v5 = v3 & *a2;
  if (*(v2 + 16 * v5) == *a2)
  {
    return *(v2 + 16 * v5 + 8);
  }

  v6 = v4 + 1;
  while (*(v2 + 16 * v5 + 8))
  {
    v5 = v6++ & v3;
    if (*(v2 + 16 * v5) == v4)
    {
      return *(v2 + 16 * v5 + 8);
    }
  }

  return 0;
}

uint64_t sub_29B270D2C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = sub_29B273D78(a1, a4);
  v8 = *(a1 + 8) - 1;
  v9 = &v7[2 * (v8 & *a2)];
  if (v9[1])
  {
    v10 = *a2;
    while (1)
    {
        ;
      }

      if (*v9 == *a2)
      {
        break;
      }

      LODWORD(v10) = v10 + 1;
      v9 = &v7[2 * (v10 & v8)];
      if (!v9[1])
      {
        goto LABEL_6;
      }
    }

    v11 = v9 + 1;
  }

  else
  {
LABEL_6:
    v9[1] = a3;
    v11 = v9 + 1;
    ++*(a1 + 12);
    __dmb(0xBu);
    *v9 = *a2;
  }

  v12 = *v11;
  __dmb(0xBu);
  *a1 = v7;
  return v12;
}

void sub_29B270DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7)
{
  v7 = a7;
  v20[1] = *MEMORY[0x29EDCA608];
  bzero(a5, 4 * a7);
  if (v7 >= *(a1 + 172) - a6)
  {
    v7 = *(a1 + 172) - a6;
  }

  if (v7 >= 1)
  {
    v14 = (*(*a1 + 152))(a1, a2);
    MEMORY[0x2A1C7C4A8](v14);
    v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v16, v15);
    (*(*v14 + 40))(v14, a3, a4, v16);
    v17 = *(a1 + 164);
    v18 = dword_29B712F08[v17];
    v19 = &v16[v18 * a6];
    if (v17 == 3)
    {
      memcpy(a5, v19, v18 * v7);
    }

    else
    {
      sub_29B273E8C(a5, v19, v17, v7);
    }

    (*(*v14 + 16))(v14);
  }
}

void sub_29B270FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, unsigned __int16 a8)
{
  v9 = a7;
  v22[1] = *MEMORY[0x29EDCA608];
  bzero(a5, a7);
  if (v9 >= *(a1 + 172) - a6)
  {
    v9 = *(a1 + 172) - a6;
  }

  if (v9 >= 1)
  {
    v16 = (*(*a1 + 160))(a1, a2, a8);
    MEMORY[0x2A1C7C4A8](v16);
    v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v18, v17);
    (*(*v16 + 40))(v16, a3, a4, v18);
    v19 = *(a1 + 164);
    v20 = dword_29B712F08[v19];
    v21 = &v18[v20 * a6];
    if (v19 == 3)
    {
      memcpy(a5, v21, v20 * v9);
    }

    else
    {
      sub_29B273E8C(a5, v21, v19, v9);
    }

    (*(*v16 + 16))(v16);
  }
}

_WORD *sub_29B2711E8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void, void, void, void, void *, void, uint64_t, uint64_t), void *a5)
{
  v6 = a3;
  v8 = a3 >> 8;
  v9 = *(a2 + 164);
  v10 = *(a2 + 172);
  v11 = *(a1 + 12);
  v12 = v11 * (1 << a3 << SBYTE1(a3));
  v13 = operator new(0x18uLL);
  v13[4] = v6 | (v8 << 8);
  *v13 = &unk_2A20CC7F0;
  *(v13 + 3) = v11;
  if (v12 < 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = v12;
  }

  v15 = operator new[](v14);
  *(v13 + 2) = v15;
  *a5 = v12 + 24;
  a4(*(a1 + 16), (v11 << *(a1 + 8)), (1 << *(a1 + 8)), (1 << *(a1 + 9)), v15, (v11 << v6), v9, v10);
  return v13;
}

_WORD *sub_29B271300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = operator new(0x18uLL);
  v8 = *(a1 + 12);
  v7[4] = 0;
  *v7 = &unk_2A20CC7F0;
  *(v7 + 3) = v8;
  if ((v8 & 0x80000000) != 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = operator new[](v9);
  *(v7 + 2) = v10;
  *v7 = &unk_2A20CC898;
  *a5 = v8 + 24;
  memcpy(v10, *(a1 + 16), v8);
  return v7;
}

void *sub_29B2713BC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *, void, void, void, char *, uint64_t, void, void), void *a5)
{
  v7 = a3;
  v77 = *MEMORY[0x29EDCA608];
  v9 = *(a2 + 160);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = v10;
    LODWORD(v12) = v10 >> 8;
    if (v11 >= a3)
    {
      LOBYTE(v11) = a3;
    }

    if (v12 >= SBYTE1(a3))
    {
      LOBYTE(v12) = BYTE1(a3);
    }
  }

  else
  {
    v12 = a3 >> 8;
    LOBYTE(v11) = a3;
  }

  v13 = v11 | (v12 << 8);
  if (1 << (a3 - v11) << (BYTE1(a3) - BYTE1(v13)) != 1)
  {
    v24 = operator new(0x60uLL);
    sub_29B2735D4(v24, *(a1 + 16), v7, v13);
    *v24 = &unk_2A20CC998;
    v24[10] = a1;
    v24[11] = a4;
    *a5 = v24[8] - v24[7] + 96;
    return v24;
  }

  v74 = a3 >> 8;
  v14 = *(a1 + 44);
  MEMORY[0x2A1C7C4A8](a1);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, v15);
  if (v14 < 1)
  {
    goto LABEL_21;
  }

  v17 = 0;
  v18 = 1;
  do
  {
    while (1)
    {
      v19 = (*(*a1 + 72))(a1, v17);
      *&v16[8 * v17] = v19;
      if (!v18)
      {
        break;
      }

      v20 = v19;
      if (!(*(*v19 + 24))(v19))
      {
        break;
      }

      if (v17)
      {
        v21 = (*(**v16 + 48))();
        v22 = (*(*v20 + 48))(v20);
        v18 = memcmp(v21, v22, *(a1 + 48)) == 0;
        goto LABEL_15;
      }

      v17 = 1;
      v18 = 1;
      if (*(a1 + 44) <= 1)
      {
        goto LABEL_21;
      }
    }

    v18 = 0;
LABEL_15:
    ++v17;
    v23 = *(a1 + 44);
  }

  while (v17 < v23);
  if (v18)
  {
LABEL_21:
    v24 = operator new(0x18uLL);
    v25 = *(a1 + 48);
    *(v24 + 4) = 0;
    *v24 = &unk_2A20CC7F0;
    *(v24 + 3) = v25;
    if (v25 < 0)
    {
      v25 = -1;
    }

    v26 = operator new[](v25);
    v24[2] = v26;
    *v24 = &unk_2A20CC898;
    v27 = (*(**v16 + 48))();
    v28 = *(a1 + 48);
    memcpy(v26, v27, v28);
    *a5 = v28 + 24;
    goto LABEL_24;
  }

  if (v9)
  {
    v32 = a5;
    v33 = *(a1 + 48);
    v34 = v74;
    v76 = 1 << v7;
    v35 = v33 * (1 << v7 << v74);
    v24 = operator new(0x18uLL);
    *(v24 + 4) = v7 | (v34 << 8);
    *v24 = &unk_2A20CC7F0;
    *(v24 + 3) = v33;
    if (v35 < 0)
    {
      v36 = -1;
    }

    else
    {
      v36 = v35;
    }

    v37 = operator new[](v36);
    v24[2] = v37;
    *v32 = v35 + 24;
    if (v23 >= 1)
    {
      v75 = a4;
      v38 = 0;
      v39 = *(a1 + 24);
      LODWORD(v74) = 1 << v39;
      v73 = 1 << *(a1 + 25);
      v40 = (v33 << v7);
      v71 = 1 << SHIBYTE(v7);
      LODWORD(v72) = v33 << v39;
      v41 = *(a1 + 36);
      v42 = v40 / v41;
      v43 = (v40 << SHIBYTE(v7)) / *(a1 + 40) - v40 / v41 * (v41 - 1);
      do
      {
        v44 = *&v16[8 * v38];
        v45 = (*(*v44 + 24))(v44);
        v46 = (*(*v44 + 48))(v44);
        if (v45)
        {
          sub_29B274CA4(v46, v37, v40, v76 / *(a1 + 36), v71 / *(a1 + 40), *(a1 + 48));
        }

        else
        {
          v75(v46, v72, v74, v73, v37, v40, *(a1 + 28), *(a1 + 32));
        }

        if (++v38 % *(a1 + 36))
        {
          v47 = v42;
        }

        else
        {
          v47 = v43;
        }

        v37 += v47;
        v29 = *(a1 + 44);
      }

      while (v38 < v29);
      goto LABEL_25;
    }
  }

  else
  {
    v48 = *(a1 + 24);
    v49 = *(a1 + 25);
    v50 = *(a1 + 48);
    v71 = *(a1 + 36);
    v73 = 1 << v48;
    v51 = v50 * v23 * (1 << v48 << v49);
    if (v51 < 0)
    {
      v51 = -1;
    }

    v52 = operator new[](v51);
    v72 = v52;
    if (v23 >= 1)
    {
      v70 = a5;
      v75 = a4;
      v53 = 0;
      v76 = 1 << v49;
      v54 = v50 << v48;
      v55 = (v50 << v48) * v71;
      v56 = (v55 << v49) - (v71 - 1) * (v50 << v48);
      v57 = v52;
      do
      {
        v58 = *&v16[8 * v53];
        v59 = (*(*v58 + 24))(v58);
        v60 = (*(*v58 + 48))(v58);
        if (v59)
        {
          sub_29B274CA4(v60, v57, v55, v73, v76, *(a1 + 48));
        }

        else
        {
          sub_29B274D4C(v60, v54, v57, v55, v76, v54);
        }

        if (++v53 % *(a1 + 36))
        {
          v61 = v54;
        }

        else
        {
          v61 = v56;
        }

        v57 += v61;
      }

      while (v53 < *(a1 + 44));
      v50 = *(a1 + 48);
      a4 = v75;
      a5 = v70;
    }

    v62 = v74;
    v63 = v50 * (1 << v7 << v74);
    v24 = operator new(0x18uLL);
    *(v24 + 4) = v7 | (v62 << 8);
    *v24 = &unk_2A20CC7F0;
    *(v24 + 3) = v50;
    if (v63 < 0)
    {
      v64 = -1;
    }

    else
    {
      v64 = v63;
    }

    v65 = operator new[](v64);
    v24[2] = v65;
    *a5 = v63 + 24;
    v66 = *(a1 + 8);
    v67 = (v50 << v66);
    v68 = (v50 << v7);
    v69 = v72;
    a4(v72, v67, (1 << v66), (1 << *(a1 + 9)), v65, v68, *(a1 + 28), *(a1 + 32));
    operator delete[](v69);
LABEL_24:
    LODWORD(v29) = *(a1 + 44);
LABEL_25:
    if (v29 >= 1)
    {
      v30 = 0;
      do
      {
        (*(**&v16[8 * v30] + 16))(*&v16[8 * v30]);
        ++v30;
      }

      while (v30 < *(a1 + 44));
    }
  }

  return v24;
}

uint64_t sub_29B271AF0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = a2 >> *(a1 + 24);
  v9 = a3 >> *(a1 + 25);
  v10 = (*(*a1 + 72))(a1, (v8 + v9 * *(a1 + 36)));
  (*(*v10 + 40))(v10, (a2 - (v8 << *(a1 + 24))), (a3 - (v9 << *(a1 + 25))), a4);
  v11 = *(*v10 + 16);

  return v11(v10);
}

uint64_t sub_29B271C20(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 56);
  result = *(v3 + 8 * a2);
  if (result)
  {
    return result;
  }

  v51 = a2;
  v5 = *(a1 + 80);
  v6 = v5[9];
  v7 = *(a1 + 36);
  v8 = v6 / v7;
  v55 = v5[10] / *(a1 + 40);
  v9 = (v55 * (v6 / v7));
  MEMORY[0x2A1C7C4A8](0);
  v11 = (&v48 - v10);
  bzero(&v48 - v10, v12);
  if (v9 < 1)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = (v55 * v6 * (v51 / v7) + v51 % v7 * v8);
  v15 = v6 - v8 + 1;
  v16 = 1;
  while (1)
  {
    v17 = (*(*v5 + 72))(v5, v14);
    v11[v13] = v17;
    if (!v16)
    {
      break;
    }

    v18 = v17;
    if (!(*(*v17 + 24))(v17))
    {
      break;
    }

    if (v13)
    {
      v19 = (*(**v11 + 48))();
      v20 = (*(*v18 + 48))(v18);
      v16 = memcmp(v19, v20, *(a1 + 48)) == 0;
      goto LABEL_9;
    }

    v13 = 1;
    if (1 % v8)
    {
      v21 = 1;
    }

    else
    {
      v21 = v15;
    }

    if (v9 == 1)
    {
      goto LABEL_20;
    }

    v16 = 1;
LABEL_13:
    v14 = (v21 + v14);
    v5 = *(a1 + 80);
  }

  v16 = 0;
LABEL_9:
  if (++v13 % v8)
  {
    v21 = 1;
  }

  else
  {
    v21 = v15;
  }

  if (v13 != v9)
  {
    goto LABEL_13;
  }

  if (v16)
  {
LABEL_20:
    v22 = operator new(0x18uLL);
    v23 = *(a1 + 48);
    v22[4] = 0;
    *v22 = &unk_2A20CC7F0;
    *(v22 + 3) = v23;
    if (v23 < 0)
    {
      v24 = -1;
    }

    else
    {
      v24 = v23;
    }

    v25 = operator new[](v24);
    *(v22 + 2) = v25;
    *v22 = &unk_2A20CC898;
    v26 = (*(**v11 + 48))();
    memcpy(v25, v26, *(a1 + 48));
    v27 = v51;
  }

  else
  {
    v50 = v3;
    v28 = *(a1 + 48);
    v29 = *(a1 + 25);
    v30 = ((1 << *(a1 + 24) << v29) * v28);
    v31 = operator new(0x18uLL);
    v32 = *(a1 + 24);
    v31[4] = v32;
    *v31 = &unk_2A20CC7F0;
    *(v31 + 3) = v28;
    v49 = v30;
    if (v30 < 0)
    {
      v33 = -1;
    }

    else
    {
      v33 = v30;
    }

    v34 = operator new[](v33);
    v48 = v31;
    *(v31 + 2) = v34;
    v35 = *(*(a1 + 80) + 24);
    v53 = 1 << SHIBYTE(v35);
    v54 = 1 << v35;
    v52 = v28 << v35;
    v36 = v28 << v32;
    v37 = ((v28 << v32) / v8);
    v56 = v36;
    v38 = (v36 << v29) / v55 - v37 * (v8 - 1);
    v39 = 1;
    do
    {
      v40 = *v11;
      if ((*(**v11 + 24))(*v11))
      {
        v41 = (*(*v40 + 48))(v40);
        sub_29B274CA4(v41, v34, v56, (1 << *(a1 + 24)) / v8, (1 << *(a1 + 25)) / v55, *(a1 + 48));
      }

      else
      {
        v42 = v37;
        v43 = *(a1 + 88);
        v44 = (*(*v40 + 48))(v40);
        v43(v44, v52, v54, v53, v34, v56, *(a1 + 28), *(a1 + 32));
        v37 = v42;
      }

      if (v39 % v8)
      {
        v45 = v37;
      }

      else
      {
        v45 = v38;
      }

      v34 += v45;
      ++v11;
      ++v39;
      --v9;
    }

    while (v9);
    v3 = v50;
    v27 = v51;
    v22 = v48;
    v23 = v49;
  }

  v46 = 0;
  v47 = v27;
  atomic_compare_exchange_strong((v3 + 8 * v27), &v46, v22);
  if (v46)
  {
    (*(*v22 + 8))(v22);
  }

  else if (v23 != -24)
  {
    atomic_fetch_add((*(a1 + 16) + 704), v23 + 24);
  }

  return *(v3 + 8 * v47);
}

void *sub_29B27212C(void *a1)
{
  *a1 = &unk_2A20CC7F0;
  v2 = a1[2];
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

void sub_29B272178(void *__p)
{
  *__p = &unk_2A20CC7F0;
  v2 = __p[2];
  if (v2)
  {
    operator delete[](v2);
  }

  operator delete(__p);
}

void *sub_29B272228(void *a1)
{
  *a1 = &unk_2A20CC7F0;
  v2 = a1[2];
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

void sub_29B272274(void *__p)
{
  *__p = &unk_2A20CC7F0;
  v2 = __p[2];
  if (v2)
  {
    operator delete[](v2);
  }

  operator delete(__p);
}

void sub_29B272310(void *a1)
{
  sub_29B2736B8(a1);

  operator delete(a1);
}

uint64_t sub_29B27235C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

FILE *sub_29B27238C(uint64_t a1, char *__filename)
{
  v3 = fopen(__filename, "rb");
  if (v3)
  {
    v4 = operator new[](0x2000uLL);
    *(a1 + 8) = v4;
    setvbuf(v3, v4, 0, 0x2000uLL);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return v3;
}

size_t sub_29B272404(int a1, void *__ptr, size_t __size, FILE *a4)
{
  if (fread(__ptr, __size, 1uLL, a4) == 1)
  {
    return __size;
  }

  else
  {
    return 0;
  }
}

BOOL sub_29B27243C(uint64_t a1, FILE *a2)
{
  if (a2)
  {
    v3 = fclose(a2) == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    operator delete[](v4);
    *(a1 + 8) = 0;
  }

  return v3;
}

char *sub_29B27248C()
{
  v0 = *__error();

  return strerror(v0);
}

uint64_t sub_29B2724B8(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = *(a1 + 56);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 48);
  }

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

void sub_29B272558(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  sub_29B2D1D80(v1);
  _Unwind_Resume(a1);
}

void sub_29B27257C(void **__p)
{
  *__p = &unk_2A20CCAB0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void *sub_29B2725E4(void *a1)
{
  *a1 = &unk_2A20CCB00;
  v2 = a1[1];
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

void sub_29B272630(void *__p)
{
  *__p = &unk_2A20CCB00;
  v2 = __p[1];
  if (v2)
  {
    operator delete[](v2);
  }

  operator delete(__p);
}

void sub_29B272690(void *a1)
{
  sub_29B272AF4(a1);

  operator delete(a1);
}

uint64_t sub_29B2726F0(uint64_t result, int a2, void *a3, _DWORD *a4)
{
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(result + 40);
    if (((*(result + 48) - v4) >> 3) > a2)
    {
      v5 = *(v4 + 8 * a2);
      *a3 = *v5;
      *a4 = *(v5 + 8);
    }
  }

  return result;
}

BOOL sub_29B272720(uint64_t a1, char *a2, int *a3, _DWORD *a4)
{
  sub_29A008E78(__p, a2);
  v7 = sub_29A01BCCC(a1 + 16, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 24 == v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = *(v7 + 108);
    *a4 = *(v7 + 64);
  }

  result = a1 + 24 != v7;
  *a3 = v8;
  return result;
}

void sub_29B2727AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2727C8(uint64_t *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v8 = -1;
  result = (*(*a1 + 40))(a1, a2, &v8, &v7);
  if (result && (result = sub_29B26F4FC(a1, v8)) != 0 && !*(result + 8))
  {
    v6 = *(result + 16);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_29B272854(uint64_t result, int a2, void *a3)
{
  if (a2 < 0 || ((*(result + 48) - *(result + 40)) >> 3) <= a2 || (result = sub_29B26F4FC(result, a2)) == 0 || *(result + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 16);
  }

  *a3 = v4;
  return result;
}

void sub_29B27294C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29B27294C(a1, *a2);
    sub_29B27294C(a1, a2[1]);
    sub_29B2729B4((a2 + 4));

    operator delete(a2);
  }
}

void sub_29B2729B4(uint64_t a1)
{
  sub_29B272A78(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_29B272A04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B272A20(uint64_t a1)
{
  sub_29B272A78(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B272A5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B272A78(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    v2 = *(a1 + 32);
    if (v2)
    {
      (*(*v2 + 8))(v2);
      *(a1 + 32) = 0;
    }

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      operator delete[](v3);
    }
  }

  *(a1 + 16) = 0;
}

uint64_t sub_29B272AF4(uint64_t a1)
{
  *a1 = &unk_2A20CCB30;
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  sub_29B27294C(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_29B272B50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v7 = a3;
  v10 = 0;
  v11 = -1;
  (*(*a1 + 40))(a1, a2, &v11, &v10);
  return sub_29B272BD8(a1, v11, v7, a4, a5);
}

uint64_t sub_29B272BD8(uint64_t result, int a2, int a3, void *a4, _DWORD *a5)
{
  if ((a2 & 0x80000000) == 0 && ((*(result + 48) - *(result + 40)) >> 3) > a2 && (result = sub_29B26F4FC(result, a2)) != 0 && *(result + 8) == a3)
  {
    *a4 = *(result + 16);
    v8 = *(result + 12);
  }

  else
  {
    v8 = 0;
    *a4 = 0;
  }

  *a5 = v8;
  return result;
}

uint64_t sub_29B272C50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v7 = a3;
  v10 = 0;
  v11 = -1;
  (*(*a1 + 40))(a1, a2, &v11, &v10);
  return sub_29B272CD8(a1, v11, v7, a4, a5);
}

uint64_t sub_29B272CD8(uint64_t result, int a2, int a3, void *a4, _DWORD *a5)
{
  if ((a2 & 0x80000000) == 0 && ((*(result + 48) - *(result + 40)) >> 3) > a2 && (result = sub_29B26F4FC(result, a2)) != 0 && *(result + 8) == a3)
  {
    *a4 = *(result + 16);
    v8 = *(result + 12) >> 1;
  }

  else
  {
    v8 = 0;
    *a4 = 0;
  }

  *a5 = v8;
  return result;
}

uint64_t sub_29B272D54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v7 = a3;
  v10 = 0;
  v11 = -1;
  (*(*a1 + 40))(a1, a2, &v11, &v10);
  return sub_29B272DDC(a1, v11, v7, a4, a5);
}

uint64_t sub_29B272DDC(uint64_t result, int a2, int a3, void *a4, _DWORD *a5)
{
  if ((a2 & 0x80000000) == 0 && ((*(result + 48) - *(result + 40)) >> 3) > a2 && (result = sub_29B26F4FC(result, a2)) != 0 && *(result + 8) == a3)
  {
    *a4 = *(result + 16);
    v8 = *(result + 12) >> 2;
  }

  else
  {
    v8 = 0;
    *a4 = 0;
  }

  *a5 = v8;
  return result;
}

uint64_t sub_29B272E58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v7 = a3;
  v10 = 0;
  v11 = -1;
  (*(*a1 + 40))(a1, a2, &v11, &v10);
  return sub_29B272EE0(a1, v11, v7, a4, a5);
}

uint64_t sub_29B272EE0(uint64_t result, int a2, int a3, void *a4, _DWORD *a5)
{
  if ((a2 & 0x80000000) == 0 && ((*(result + 48) - *(result + 40)) >> 3) > a2 && (result = sub_29B26F4FC(result, a2)) != 0 && *(result + 8) == a3)
  {
    *a4 = *(result + 16);
    v8 = *(result + 12) >> 3;
  }

  else
  {
    v8 = 0;
    *a4 = 0;
  }

  *a5 = v8;
  return result;
}

_DWORD *sub_29B272F5C(uint64_t a1, size_t __len, void *__src, int a4, int a5, void *a6)
{
  v10 = __len;
  sub_29A02887C(__dst, __src, __len);
  v17 = 0uLL;
  BYTE8(v18) = 0;
  *&v18 = 0;
  v19 = 0uLL;
  LODWORD(v20) = 0;
  if (SHIBYTE(v22) < 0)
  {
    sub_29A008D14(v23, __dst[0], __dst[1]);
  }

  else
  {
    *v23 = *__dst;
    v24 = v22;
  }

  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = v20;
  if (SHIBYTE(v24) < 0)
  {
    sub_29A008D14(__p, v23[0], v23[1]);
  }

  else
  {
    *__p = *v23;
    v30 = v24;
  }

  v31[0] = v25;
  v31[1] = v26;
  v31[2] = v27;
  v32 = v28;
  v11 = sub_29B27320C((a1 + 16), __p, __p);
  v13 = v12;
  sub_29B272A78(v31);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29B272A78(&v25);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  sub_29B272A78(&v17);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  __p[0] = v11 + 7;
  if (v13)
  {
    v14 = (*(a1 + 48) - *(a1 + 40)) >> 3;
    sub_29A0A71C8(a1 + 40, __p);
  }

  else
  {
    LODWORD(v14) = *(v11 + 27);
    sub_29B272A78((v11 + 7));
  }

  v15 = v11 + 4;
  if (*(v11 + 55) < 0)
  {
    v15 = *v15;
  }

  *__p[0] = v15;
  result = __p[0];
  *(__p[0] + 2) = a4;
  result[3] = a5;
  result[13] = v14;
  *a6 += v10 + 81;
  return result;
}

void sub_29B273134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_29B2731B4(&a22);
  sub_29B272A78(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B2731B4(uint64_t a1)
{
  sub_29B272A78(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B2731F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B27320C(uint64_t ***a1, const void **a2, uint64_t a3)
{
  v5 = sub_29A00B0D0(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29B27328C(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

__n128 sub_29B27328C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x70uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v6 + 32, *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(v7 + 56) = *(a2 + 24);
  *(v7 + 72) = *(a2 + 40);
  result = *(a2 + 56);
  *(v7 + 88) = result;
  *(v7 + 13) = *(a2 + 72);
  *(a3 + 16) = 1;
  return result;
}

void sub_29B273330(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29B27334C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29B27334C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_29B2729B4(__p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_29B2733A8(void *a1, int a2)
{
  v3 = a2;
  v4 = sub_29B273424(a1, a2);
  sub_29A0119F0(v4 + 3, v3);
  sub_29B27349C(a1 + 6, v3);
  return a1;
}

void sub_29B2733F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B273424(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0111A4(a1, a2);
    v4 = a1[1];
    bzero(v4, 4 * a2);
    a1[1] = &v4[4 * a2];
  }

  return a1;
}

void sub_29B273480(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B27349C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = v4 + 8 * a2;
  }

  return a1;
}

void sub_29B2734F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B273514(uint64_t a1, uint64_t a2, unsigned __int16 a3, unsigned __int16 a4, int a5)
{
  v7 = sub_29B2735D4(a1, a2, a3, a4);
  *v7 = &unk_2A20CCBF8;
  *(v7 + 80) = a5;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  sub_29A0A171C((v7 + 88), *(v7 + 44));
  sub_29A00BF50((a1 + 112), *(a1 + 44));
  return a1;
}

void sub_29B27359C(_Unwind_Exception *a1)
{
  v4 = v1[14];
  if (v4)
  {
    v1[15] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[12] = v5;
    operator delete(v5);
  }

  sub_29B2736B8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2735D4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  *(a1 + 8) = a3;
  *a1 = &unk_2A20CC918;
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = *(a2 + 164);
  v6 = *(a2 + 172);
  *(a1 + 28) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = dword_29B712F08[v5] * v6;
  v7 = vsub_s32(vshr_n_s32(vshl_u32(vdup_n_s32(a3), 0x1000000018), 0x18uLL), vshr_n_s32(vshl_u32(vdup_n_s32(a4), 0x1000000018), 0x18uLL));
  v8 = vshl_u32(0x100000001, v7);
  *(a1 + 36) = v8;
  v7.i32[0] = vshl_u32(v8, vdup_lane_s32(v7, 1)).u32[0];
  *(a1 + 44) = v7.i32[0];
  sub_29A0BD724((a1 + 56), v7.i32[0]);
  return a1;
}

void sub_29B27369C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B2736B8(void *a1)
{
  *a1 = &unk_2A20CC918;
  v3 = a1[7];
  v2 = a1[8];
  if (v3 != v2)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
        v2 = a1[8];
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = a1[7];
  }

  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_29B273754(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B273770(void *a1)
{
  *a1 = &unk_2A20CCBF8;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  return sub_29B2736B8(a1);
}

void sub_29B2737E0(void *a1)
{
  *a1 = &unk_2A20CCBF8;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  sub_29B2736B8(a1);

  operator delete(a1);
}

uint64_t sub_29B27386C(uint64_t a1, int a2)
{
  v2 = (*(a1 + 56) + 8 * a2);
  v3 = *v2;
  if (!*v2)
  {
    sub_29B26FBE8(*(a1 + 16), *(*(a1 + 112) + 8 * a2), *(*(a1 + 88) + 4 * a2), *(a1 + 24), *(a1 + 80), v2);
    return *v2;
  }

  return v3;
}

void *sub_29B2738CC(void *a1)
{
  *a1 = &unk_2A20CC7F0;
  v2 = a1[2];
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

void sub_29B273918(void *__p)
{
  *__p = &unk_2A20CC7F0;
  v2 = __p[2];
  if (v2)
  {
    operator delete[](v2);
  }

  operator delete(__p);
}

_BYTE *sub_29B273974(_BYTE *result)
{
  if (result)
  {
    if (result[24])
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t sub_29B2739B0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_29B273A1C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_29B273A70(a1);
  return a1;
}

void sub_29B273A50(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B273A70(void *a1)
{
  a1[1] = 16;
  v2 = *(a1 + 2);
  result = operator new[](16 * v2);
  if (v2)
  {
    v4 = result;
    do
    {
      *v4 = -1;
      v4[1] = 0;
      v4 += 2;
    }

    while (v4 != &result[2 * v2]);
  }

  *a1 = result;
  return result;
}

uint64_t sub_29B273AD0(uint64_t a1)
{
  sub_29B273B24(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29B273B08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B273B24(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      if (*(*a1 + v3))
      {
        v4 = *(*a1 + v3);
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }
      }

      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 8));
  }

  if (*a1)
  {
    operator delete[](*a1);
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      if (v5[v7])
      {
        operator delete[](v5[v7]);
        v5 = *(a1 + 16);
        v6 = *(a1 + 24);
      }

      ++v7;
    }

    while (v7 < v6 - v5);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_29B273C1C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = v4 + 20 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 4) = -1;
        *(v4 + 12) = -1;
        v4 += 20;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_29A0BE284(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[20 * v6];
    v13 = &v12[20 * a2];
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 4) = -1;
      *(v14 + 12) = -1;
      v14 += 20;
    }

    while (v14 != v13);
    v15 = &v10[20 * v9];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void *sub_29B273D78(uint64_t a1, void *a2)
{
  do
  {
    do
    {
      v3 = *a1;
    }

    while (!*a1);
    v4 = *a1;
    atomic_compare_exchange_strong(a1, &v4, 0);
  }

  while (v4 != v3);
  if (*(a1 + 8) <= (2 * *(a1 + 12)))
  {
    return sub_29B273DB0(a1, v3, a2);
  }

  else
  {
    return v3;
  }
}

void *sub_29B273DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a2;
  sub_29A0A71C8(a1 + 16, &v13);
  v5 = (2 * *(a1 + 8));
  result = operator new[](16 * v5);
  if (v5)
  {
    v7 = result;
    do
    {
      *v7 = -1;
      v7[1] = 0;
      v7 += 2;
    }

    while (v7 != &result[2 * v5]);
  }

  *a3 = 16 * v5;
  if (*(a1 + 8))
  {
    v8 = 0;
    v9 = v13;
    do
    {
      v10 = (v9 + 16 * v8);
      if (v10[1])
      {
        v11 = *v10;
        do
        {
          v12 = &result[2 * (v11 & (v5 - 1))];
          LODWORD(v11) = v11 + 1;
        }

        while (v12[1]);
        *v12 = *v10;
        v12[1] = v10[1];
      }

      ++v8;
    }

    while (v8 < *(a1 + 8));
  }

  *(a1 + 8) = v5;
  return result;
}

float *sub_29B273E8C(float *result, unsigned __int16 *a2, int a3, unsigned int a4)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 >= 1)
      {
        v8 = a4;
        do
        {
          v9 = *a2++;
          *result++ = flt_2A14FE720[v9] + 0.0;
          --v8;
        }

        while (v8);
      }
    }

    else if (a3 == 3)
    {
      return memcpy(result, a2, 4 * a4);
    }
  }

  else if (a3)
  {
    if (a3 == 1 && a4 >= 1)
    {
      v4 = a4;
      do
      {
        v5 = *a2++;
        *result++ = (v5 * 0.000015259) + 0.0;
        --v4;
      }

      while (v4);
    }
  }

  else if (a4 >= 1)
  {
    v6 = a4;
    do
    {
      v7 = *a2;
      a2 = (a2 + 1);
      *result++ = (v7 * 0.0039216) + 0.0;
      --v6;
    }

    while (v6);
  }

  return result;
}

_WORD *sub_29B273F54(_WORD *__dst, float *__src, int a3, unsigned int a4)
{
  v4 = __src;
  v5 = __dst;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 >= 1)
      {
        v10 = a4;
        do
        {
          v11 = *v4++;
          __dst = sub_29B275210(v11 + 0.0);
          *v5++ = __dst;
          --v10;
        }

        while (v10);
      }
    }

    else if (a3 == 3)
    {

      return memcpy(__dst, __src, 4 * a4);
    }
  }

  else if (a3)
  {
    if (a3 == 1 && a4 >= 1)
    {
      v6 = a4;
      do
      {
        v7 = *v4++;
        *v5++ = ((fminf(fmaxf(v7, 0.0), 1.0) * 65535.0) + 0.5);
        --v6;
      }

      while (v6);
    }
  }

  else if (a4 >= 1)
  {
    v8 = a4;
    do
    {
      v9 = *v4++;
      *v5 = ((fminf(fmaxf(v9, 0.0), 1.0) * 255.0) + 0.5);
      v5 = (v5 + 1);
      --v8;
    }

    while (v8);
  }

  return __dst;
}

uint64_t sub_29B27408C(uint64_t result, int a2, int a3, int a4, _WORD *a5, int a6, int a7, int a8)
{
  if ((a7 - 1) < 2)
  {
    if (a8)
    {
      v14 = &a5[a8];
      v15 = a2 / 2 * a4;
      do
      {
        v16 = result + 2 * v15;
        v17 = a5;
        if (v15)
        {
          do
          {
            if (a3)
            {
              v18 = 0;
              v19 = v17;
              do
              {
                *v19 = *(result + v18);
                v18 += 2;
                v19 += a8;
              }

              while (2 * a3 != v18);
            }

            result += 2 * (a2 / 2);
            v17 += a6 / 2;
          }

          while (result != v16);
          result = v16;
        }

        ++a5;
      }

      while (a5 != v14);
    }
  }

  else if (a7 == 3)
  {
    if (a8)
    {
      v20 = &a5[2 * a8];
      v21 = a2 / 4 * a4;
      do
      {
        v22 = result + 4 * v21;
        v23 = a5;
        if (v21)
        {
          do
          {
            if (a3)
            {
              v24 = 0;
              v25 = v23;
              do
              {
                *v25 = *(result + v24);
                v24 += 4;
                v25 += a8;
              }

              while (4 * a3 != v24);
            }

            result += 4 * (a2 / 4);
            v23 += 2 * (a6 / 4);
          }

          while (result != v22);
          result = v22;
        }

        a5 += 2;
      }

      while (a5 != v20);
    }
  }

  else if (!a7 && a8)
  {
    v8 = a4 * a2;
    v9 = (a5 + a8);
    do
    {
      v10 = result + v8;
      v11 = a5;
      if (v8)
      {
        do
        {
          if (a3)
          {
            v12 = 0;
            v13 = v11;
            do
            {
              *v13 = *(result + v12);
              v13 += a8;
              ++v12;
            }

            while (a3 != v12);
          }

          result += a2;
          v11 = (v11 + a6);
        }

        while (result != v10);
        result = v10;
      }

      a5 = (a5 + 1);
    }

    while (a5 != v9);
  }

  return result;
}

_WORD *sub_29B274244(_WORD *result, int a2, int a3)
{
  if (a3 == 1)
  {
    if ((a2 + 1) >= 3)
    {
      v5 = 0;
      v6 = 2 * ((a2 + (a2 >> 31)) >> 1);
      do
      {
        v5 += *result;
        *result++ = v5;
        v6 -= 2;
      }

      while (v6);
    }
  }

  else if (!a3 && a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v3 += *result;
      *result = v3;
      result = (result + 1);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_29B2742A8(uint64_t result, int a2, int a3, int a4, _WORD *a5, int a6, int a7, int a8)
{
  v10 = result;
  if (a7 > 1)
  {
    if (a7 == 2)
    {
      v27 = a2 / 2 * a4;
      if (v27)
      {
        v34 = (result + 2 * v27);
        v28 = a8 * a3;
        v32 = a6 / 2 - a8 * a3 / 2;
        v33 = a2 / 2 - a8 * a3;
        do
        {
          v29 = (v10 + 2 * v28);
          if (v28)
          {
            do
            {
              if (a8)
              {
                v30 = (v10 + 2 * a8);
                v31 = 2 * a8;
                do
                {
                  result = sub_29B275210((flt_2A14FE720[*v10] + flt_2A14FE720[*(v10 + a8)]) * 0.5);
                  *a5++ = result;
                  v10 = (v10 + 2);
                  v31 -= 2;
                }

                while (v31);
                v10 = v30;
              }

              v10 = (v10 + 2 * a8);
            }

            while (v10 != v29);
            v10 = v29;
          }

          v10 = (v10 + 2 * v33);
          a5 += v32;
        }

        while (v10 != v34);
      }
    }

    else if (a7 == 3)
    {
      v17 = a2 / 4 * a4;
      if (v17)
      {
        v18 = (result + 4 * v17);
        v19 = a8 * a3;
        do
        {
          v20 = &v10[v19];
          if (v19)
          {
            do
            {
              if (a8)
              {
                v21 = &v10[a8];
                v22 = 4 * a8;
                do
                {
                  *a5 = (*v10 + v10[a8]) * 0.5;
                  a5 += 2;
                  ++v10;
                  v22 -= 4;
                }

                while (v22);
                v10 = v21;
              }

              v10 += a8;
            }

            while (v10 != v20);
            v10 = v20;
          }

          v10 += a2 / 4 - v19;
          a5 += 2 * (a6 / 4 - v19 / 2);
        }

        while (v10 != v18);
      }
    }
  }

  else if (a7)
  {
    if (a7 == 1)
    {
      v11 = a2 / 2 * a4;
      if (v11)
      {
        v12 = (result + 2 * v11);
        v13 = a8 * a3;
        do
        {
          v14 = (v10 + 2 * v13);
          if (v13)
          {
            do
            {
              if (a8)
              {
                v15 = (v10 + 2 * a8);
                v16 = 2 * a8;
                do
                {
                  result = *(v10 + a8);
                  *a5++ = (result + *v10) >> 1;
                  v10 = (v10 + 2);
                  v16 -= 2;
                }

                while (v16);
                v10 = v15;
              }

              v10 = (v10 + 2 * a8);
            }

            while (v10 != v14);
            v10 = v14;
          }

          v10 = (v10 + 2 * (a2 / 2 - a8 * a3));
          a5 += a6 / 2 - a8 * a3 / 2;
        }

        while (v10 != v12);
      }
    }
  }

  else if (a4 * a2)
  {
    v23 = a8 * a3;
    do
    {
      v24 = (v10 + v23);
      if (v23)
      {
        do
        {
          if (a8)
          {
            v25 = (v10 + a8);
            v26 = a8;
            do
            {
              *a5 = (*(v10 + a8) + *v10) >> 1;
              a5 = (a5 + 1);
              v10 = (v10 + 1);
              --v26;
            }

            while (v26);
            v10 = v25;
          }

          v10 = (v10 + a8);
        }

        while (v10 != v24);
        v10 = v24;
      }

      v10 = (v10 + a2 - v23);
      a5 = (a5 + a6 - v23 / 2);
    }

    while (v10 != (result + a4 * a2));
  }

  return result;
}

float *sub_29B2745C0(float *result, int a2, int a3, int a4, _WORD *a5, int a6, int a7, int a8)
{
  v9 = result;
  if (a7 > 1)
  {
    if (a7 == 2)
    {
      v25 = a2 / 2;
      v26 = a2 / 2 * a4;
      if (v26)
      {
        v27 = (result + 2 * v26);
        v28 = a8 * a3;
        v29 = 2 * v25 - a8 * a3;
        v30 = a6 / 2 - a8 * a3;
        do
        {
          if (v28)
          {
            v31 = (v9 + 2 * v28);
            v32 = 2 * v28;
            do
            {
              result = sub_29B275210((flt_2A14FE720[*v9] + flt_2A14FE720[*(v9 + v25)]) * 0.5);
              *a5++ = result;
              v9 = (v9 + 2);
              v32 -= 2;
            }

            while (v32);
            v9 = v31;
          }

          v9 = (v9 + 2 * v29);
          a5 += v30;
        }

        while (v9 != v27);
      }
    }

    else if (a7 == 3)
    {
      v16 = a2 / 4;
      v17 = a2 / 4 * a4;
      if (v17)
      {
        v18 = &result[v17];
        v19 = a8 * a3;
        do
        {
          if (v19)
          {
            v20 = &v9[v19];
            v21 = 4 * a8 * a3;
            do
            {
              *a5 = (*v9 + v9[v16]) * 0.5;
              a5 += 2;
              ++v9;
              v21 -= 4;
            }

            while (v21);
            v9 = v20;
          }

          v9 += 2 * v16 - a8 * a3;
          a5 += 2 * (a6 / 4 - a8 * a3);
        }

        while (v9 != v18);
      }
    }
  }

  else if (a7)
  {
    if (a7 == 1)
    {
      v10 = a2 / 2;
      v11 = a2 / 2 * a4;
      if (v11)
      {
        v12 = (result + 2 * v11);
        v13 = a8 * a3;
        do
        {
          if (v13)
          {
            v14 = (v9 + 2 * v13);
            v15 = 2 * a8 * a3;
            do
            {
              *a5++ = (*(v9 + v10) + *v9) >> 1;
              v9 = (v9 + 2);
              v15 -= 2;
            }

            while (v15);
            v9 = v14;
          }

          v9 = (v9 + 2 * (2 * v10 - a8 * a3));
          a5 += a6 / 2 - a8 * a3;
        }

        while (v9 != v12);
      }
    }
  }

  else if (a4 * a2)
  {
    v22 = a8 * a3;
    do
    {
      if (v22)
      {
        v23 = (v9 + v22);
        v24 = a8 * a3;
        do
        {
          *a5 = (*(v9 + a2) + *v9) >> 1;
          a5 = (a5 + 1);
          v9 = (v9 + 1);
          --v24;
        }

        while (v24);
        v9 = v23;
      }

      v9 = (v9 + 2 * a2 - a8 * a3);
      a5 = (a5 + a6 - (a8 * a3));
    }

    while (v9 != (result + a4 * a2));
  }

  return result;
}

float *sub_29B274854(float *result, int a2, int a3, uint64_t a4, _WORD *a5, int a6, int a7, int a8)
{
  v10 = result;
  if (a7 > 1)
  {
    if (a7 == 2)
    {
      v37 = a2 / 2;
      v38 = a2 / 2 * a3;
      if (v38)
      {
        v39 = a8;
        v47 = (result + 2 * v38);
        v48 = a8 * a3;
        v49 = -(a8 + 2 * v37);
        v46 = v38 - 2 * a8;
        v45 = a6 / 2 - v48 / 2;
        v40 = result + (a3 - 1) * v37 + v48 - a8;
        do
        {
          v50 = (v10 + 2 * v48);
          if (v48)
          {
            do
            {
              if (a8)
              {
                v41 = v39;
                v42 = (v10 + 2 * v39);
                v43 = 2 * a8;
                do
                {
                  v44 = *v40++;
                  result = sub_29B275210((((flt_2A14FE720[*v10] + flt_2A14FE720[*(v10 + a8)]) + flt_2A14FE720[*(v10 + v37)]) + flt_2A14FE720[v44]) * 0.25);
                  *a5++ = result;
                  v10 = (v10 + 2);
                  v43 -= 2;
                }

                while (v43);
                v10 = v42;
                v39 = v41;
              }

              v10 = (v10 + 2 * v39);
              v40 += v49;
            }

            while (v10 != v50);
            v10 = v50;
          }

          v10 = (v10 + 2 * (2 * v37 - v48));
          v40 += v46;
          a5 += v45;
        }

        while (v10 != v47);
      }
    }

    else if (a7 == 3)
    {
      v19 = a2 / 4;
      v20 = a2 / 4 * a3;
      if (v20)
      {
        v21 = a8 * a3;
        v22 = &result[v20];
        v23 = &result[(a3 - 1) * v19 + v21 - a8];
        do
        {
          result = &v10[v21];
          if (v21)
          {
            do
            {
              if (a8)
              {
                v24 = &v10[a8];
                v25 = 4 * a8;
                do
                {
                  v26 = *v23++;
                  *a5 = (((*v10 + v10[a8]) + v10[v19]) + v26) * 0.25;
                  a5 += 2;
                  ++v10;
                  v25 -= 4;
                }

                while (v25);
                v10 = v24;
              }

              v10 += a8;
              v23 += -a8 + -2 * v19;
            }

            while (v10 != result);
            v10 = result;
          }

          v10 += 2 * v19 - v21;
          v23 += v20 - 2 * a8;
          a5 += 2 * (a6 / 4 - v21 / 2);
        }

        while (v10 != v22);
      }
    }
  }

  else if (a7)
  {
    if (a7 == 1)
    {
      v11 = a2 / 2;
      v12 = a2 / 2 * a3;
      if (v12)
      {
        v13 = a8 * a3;
        v14 = (result + 2 * v12);
        v15 = result + (a3 - 1) * v11 + v13 - a8;
        do
        {
          result = (v10 + 2 * v13);
          if (v13)
          {
            do
            {
              if (a8)
              {
                v16 = (v10 + 2 * a8);
                v17 = 2 * a8;
                do
                {
                  v18 = *v15++;
                  *a5++ = (*(v10 + a8) + *v10 + *(v10 + v11) + v18) >> 2;
                  v10 = (v10 + 2);
                  v17 -= 2;
                }

                while (v17);
                v10 = v16;
              }

              v10 = (v10 + 2 * a8);
              v15 += -a8 + -2 * v11;
            }

            while (v10 != result);
            v10 = result;
          }

          v10 = (v10 + 2 * (2 * v11 - v13));
          v15 += v12 - 2 * a8;
          a5 += a6 / 2 - v13 / 2;
        }

        while (v10 != v14);
      }
    }
  }

  else if (a3 * a2)
  {
    v27 = a8 * a3;
    v28 = a2;
    v29 = (result + a3 * a2);
    v30 = a3 * a2 - 2 * a8;
    v31 = 2 * a2 - v27;
    v32 = -(a8 + 2 * a2);
    v33 = result + (a3 - 1) * a2 + v27 - a8;
    do
    {
      v34 = (v10 + v27);
      if (v27)
      {
        do
        {
          if (a8)
          {
            result = (v10 + a8);
            v35 = a8;
            do
            {
              v36 = *v33++;
              *a5 = (*(v10 + a8) + *v10 + *(v10 + v28) + v36) >> 2;
              a5 = (a5 + 1);
              v10 = (v10 + 1);
              --v35;
            }

            while (v35);
            v10 = result;
          }

          v10 = (v10 + a8);
          v33 += v32;
        }

        while (v10 != v34);
        v10 = v34;
      }

      v10 = (v10 + v31);
      v33 += v30;
      a5 = (a5 + a6 - v27 / 2);
    }

    while (v10 != v29);
  }

  return result;
}

void *sub_29B274CA4(void *__src, char *a2, int a3, int a4, int a5, int a6)
{
  v9 = a6 * a4;
  if (a6 * a4)
  {
    v10 = __src;
    v11 = 0;
    v12 = a6;
    do
    {
      __src = memcpy(&a2[v11], v10, v12);
      v11 += v12;
    }

    while (v9 != v11);
  }

  if (a5 * a3 != a3)
  {
    v13 = a5 * a3;
    v14 = a3;
    do
    {
      __src = memcpy(&a2[v14], a2, v9);
      v14 += a3;
    }

    while (v13 != v14);
  }

  return __src;
}

char *sub_29B274D4C(char *__src, int a2, char *__dst, int a4, int a5, int a6)
{
  v6 = __dst;
  v7 = __src;
  if (a2 == a6 && a4 == a6)
  {

    return memcpy(__dst, __src, a2 * a5);
  }

  else if (a5 * a2)
  {
    v8 = 0;
    v9 = a5 * a2;
    v10 = a6;
    v11 = a4;
    v12 = a2;
    do
    {
      __src = memcpy(v6, &v7[v8], v10);
      v6 += v11;
      v8 += v12;
    }

    while (v9 != v8);
  }

  return __src;
}

uint64_t sub_29B274E0C(uint64_t result, int a2, int a3, int a4, signed int a5, float a6, float a7)
{
  v7 = flt_29B76A600[a3];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a5)
      {
        v24 = a5;
      }

      else
      {
        v24 = -1;
      }

      if (a4 * a2)
      {
        v25 = result + 2 * (a5 == 0);
        v26 = v25 + 2 * a4 * a2;
        if (a5)
        {
          v27 = a5;
        }

        else
        {
          v27 = a4 - 1;
        }

        v28 = 2 * a4;
        do
        {
          if (v27 >= 1)
          {
            v29 = 0;
            v30 = v7 * flt_2A14FE720[*(v25 + 2 * v24)];
            do
            {
              result = sub_29B275210(v30 * flt_2A14FE720[*(v25 + v29)]);
              *(v25 + v29) = result;
              v29 += 2;
            }

            while (2 * v27 != v29);
          }

          v25 += v28;
        }

        while (v25 != v26);
      }
    }

    else if (a3 == 3)
    {
      v13 = a5 ? a5 : -1;
      if (a4 * a2)
      {
        v14 = result + 4 * (a5 == 0);
        v15 = a4 - 1;
        if (a5)
        {
          v15 = a5;
        }

        v16 = v14 + 4 * a4 * a2;
        do
        {
          if (v15 >= 1)
          {
            v17 = 0;
            v18 = v7 * *(v14 + 4 * v13);
            do
            {
              *(v14 + v17) = v18 * *(v14 + v17);
              v17 += 4;
            }

            while (4 * v15 != v17);
          }

          v14 += 4 * a4;
        }

        while (v14 != v16);
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v8 = a5 ? a5 : -1;
      if (a4 * a2)
      {
        v9 = result + 2 * (a5 == 0);
        v10 = v9 + 2 * a4 * a2;
        v11 = a4 - 1;
        if (a5)
        {
          v11 = a5;
        }

        do
        {
          if (v11 >= 1)
          {
            v12 = 0;
            LOWORD(a6) = *(v9 + 2 * v8);
            a6 = v7 * LODWORD(a6);
            do
            {
              LOWORD(a7) = *(v9 + v12);
              a7 = a6 * LODWORD(a7);
              *(v9 + v12) = a7;
              v12 += 2;
            }

            while (2 * v11 != v12);
          }

          v9 += 2 * a4;
        }

        while (v9 != v10);
      }
    }
  }

  else
  {
    if (a5)
    {
      v19 = a5;
    }

    else
    {
      v19 = -1;
    }

    if (a5)
    {
      v20 = result;
    }

    else
    {
      v20 = result + 1;
    }

    if (a4 * a2)
    {
      v21 = v20 + a4 * a2;
      LODWORD(v22) = a4 - 1;
      if (a5)
      {
        v22 = a5;
      }

      else
      {
        v22 = v22;
      }

      do
      {
        if (v22 >= 1)
        {
          v23 = 0;
          LOBYTE(a6) = *(v20 + v19);
          a6 = v7 * LODWORD(a6);
          do
          {
            LOBYTE(a7) = *(v20 + v23);
            a7 = a6 * LODWORD(a7);
            *(v20 + v23++) = a7;
          }

          while (v22 != v23);
        }

        v20 += a4;
      }

      while (v20 != v21);
    }
  }

  return result;
}

void sub_29B27504C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (a2 <= 0)
  {
    v20 = 0;
    v16 = 0;
    v21 = a2;
    v23 = a1;
  }

  else
  {
    v8 = 0;
    v9 = vdupq_n_s64(a2 - 1);
    v10 = xmmword_29B433E10;
    v11 = xmmword_29B430070;
    v12 = (a4 + 8);
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFC) != v8);
    v23 = a1;
    if (a2 < 129)
    {
      v20 = 0;
      v16 = 0;
    }

    else
    {
      v15 = MEMORY[0x29EDC9418];
      v16 = a2;
      while (1)
      {
        v17 = operator new(4 * v16, v15);
        if (v17)
        {
          break;
        }

        v18 = v16 >> 1;
        v19 = v16 > 1;
        v16 >>= 1;
        if (!v19)
        {
          v20 = 0;
          v21 = v7;
          v16 = v18;
          goto LABEL_19;
        }
      }

      v20 = v17;
    }

    v21 = v7;
  }

LABEL_19:
  sub_29B275250(a4, (a4 + 4 * v21), &v23, v21, v20, v16);
  if (v20)
  {
    operator delete(v20);
  }

  if (a2 >= 1)
  {
    v22 = 0;
    do
    {
      *(a3 + 4 * *(a4 + 4 * v22)) = v22;
      ++v22;
    }

    while (v7 != v22);
  }
}

void sub_29B2751F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B275210(float a1)
{
  if (a1 == 0.0)
  {
    LOWORD(v1) = 0;
    return v1;
  }

  if (word_2A153E720[LODWORD(a1) >> 23])
  {
    return (word_2A153E720[LODWORD(a1) >> 23] + (((LODWORD(a1) & 0x7FF000u) + 4096) >> 13));
  }

  return sub_29B26DECC(LODWORD(a1));
}

uint64_t sub_29B275250(uint64_t result, unsigned int *a2, uint64_t *a3, unint64_t a4, unsigned int *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      result = sub_29B27549C(a3, v9, *result);
      if (result)
      {
        *v8 = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v20 = a5;
      v21 = a4 >> 1;
      v22 = (result + 4 * (a4 >> 1));
      v23 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_29B2754F8(result, v22, a3, v23, a5);
        v24 = &v20[v21];
        result = sub_29B2754F8(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v24);
        v25 = &v20[a4];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *v26;
          v28 = *v20;
          result = sub_29B27549C(a3, *v26, *v20);
          if (result)
          {
            v29 = v27;
          }

          else
          {
            v29 = v28;
          }

          if (result)
          {
            v30 = 0;
          }

          else
          {
            v30 = 4;
          }

          v20 = (v20 + v30);
          if (result)
          {
            v31 = 4;
          }

          else
          {
            v31 = 0;
          }

          v26 = (v26 + v31);
          *v8++ = v29;
          if (v20 == v24)
          {
            while (v26 != v25)
            {
              v33 = *v26++;
              *v8++ = v33;
            }

            return result;
          }
        }

        while (v20 != v24)
        {
          v32 = *v20++;
          *v8++ = v32;
        }
      }

      else
      {
        sub_29B275250(result, v22, a3, v23, a5, a6);
        sub_29B275250(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v20, a6);

        return sub_29B2756F8(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v20, a6);
      }
    }

    else if (result != a2)
    {
      v12 = (result + 4);
      if ((result + 4) != a2)
      {
        v13 = 0;
        v14 = result;
        do
        {
          v16 = *v14;
          v15 = v14[1];
          v14 = v12;
          result = sub_29B27549C(a3, v15, v16);
          if (result)
          {
            v17 = v13;
            while (1)
            {
              *(v8 + v17 + 4) = v16;
              if (!v17)
              {
                break;
              }

              v16 = *(v8 + v17 - 4);
              result = sub_29B27549C(a3, v15, v16);
              v17 -= 4;
              if ((result & 1) == 0)
              {
                v18 = (v8 + v17 + 4);
                goto LABEL_16;
              }
            }

            v18 = v8;
LABEL_16:
            *v18 = v15;
          }

          v12 = v14 + 1;
          v13 += 4;
        }

        while (v14 + 1 != a2);
      }
    }
  }

  return result;
}

BOOL sub_29B27549C(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = (*a1 + 20 * a2);
  v4 = (*a1 + 20 * a3);
  if (v3[3])
  {
    v6 = 1;
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
    if (v5 < v6)
    {
      v6 = v5;
    }
  }

  if (v4[3])
  {
    v8 = 1;
  }

  else
  {
    v7 = *v4;
    v8 = v4[1];
    if (v7 < v8)
    {
      v8 = v7;
    }
  }

  return v6 > v8;
}

uint64_t sub_29B2754F8(uint64_t result, unsigned int *a2, void *a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_9:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = a2 - 1;
      v11 = *(a2 - 1);
      v12 = *result;
      result = sub_29B27549C(a3, v11, *result);
      if (result)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      *v5++ = v13;
      if (!result)
      {
        v7 = v10;
      }

      goto LABEL_9;
    }

    if (a4 > 8)
    {
      v24 = (result + 4 * (a4 >> 1));
      sub_29B275250(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_29B275250(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = &v7[a4 >> 1];
      while (v25 != a2)
      {
        v26 = *v25;
        v27 = *v7;
        result = sub_29B27549C(a3, *v25, *v7);
        if (result)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (result)
        {
          v29 = 4;
        }

        else
        {
          v29 = 0;
        }

        v25 = (v25 + v29);
        if (result)
        {
          v30 = 0;
        }

        else
        {
          v30 = 4;
        }

        v7 = (v7 + v30);
        *v5++ = v28;
        if (v7 == v24)
        {
          while (v25 != a2)
          {
            v32 = *v25++;
            *v5++ = v32;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v31 = *v7++;
        *v5++ = v31;
      }
    }

    else if (result != a2)
    {
      v14 = (result + 4);
      *a5 = *result;
      if ((result + 4) != a2)
      {
        v15 = 0;
        v16 = a5;
        v17 = a5;
        do
        {
          v19 = *v17++;
          v18 = v19;
          v20 = *v14;
          result = sub_29B27549C(a3, *v14, v19);
          if (result)
          {
            v16[1] = v18;
            v21 = v5;
            if (v16 != v5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (v5 + v22);
                v23 = *(v5 + v22 - 4);
                result = sub_29B27549C(a3, *v14, v23);
                if (!result)
                {
                  break;
                }

                *v21 = v23;
                v22 -= 4;
                if (!v22)
                {
                  v21 = v5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          else
          {
            *v17 = v20;
          }

          ++v14;
          v15 += 4;
          v16 = v17;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_29B2756F8(uint64_t result, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    v15 = result;
    while (v10 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v16 = *a2;
      while (1)
      {
        v17 = *v15;
        result = sub_29B27549C(a4, v16, *v15);
        if (result)
        {
          break;
        }

        v15 += 4;
        if (!--a5)
        {
          return result;
        }
      }

      __src = a7;
      v57 = a3;
      if (a5 >= v10)
      {
        if (a5 == 1)
        {
          *v15 = v16;
          *a2 = v17;
          return result;
        }

        v26 = a5 / 2;
        v22 = (v15 + 4 * (a5 / 2));
        v58 = *a4;
        if (a3 == a2)
        {
          v19 = a2;
        }

        else
        {
          v55 = v10;
          v27 = (a3 - a2) >> 2;
          v28 = *v22;
          v19 = a2;
          do
          {
            v29 = &v19[4 * (v27 >> 1)];
            v31 = *v29;
            v30 = (v29 + 1);
            v32 = sub_29B27549C(&v58, v31, v28);
            if (v32)
            {
              v27 += ~(v27 >> 1);
            }

            else
            {
              v27 >>= 1;
            }

            if (v32)
            {
              v19 = v30;
            }
          }

          while (v27);
          v10 = v55;
          v26 = a5 / 2;
        }

        v18 = (v19 - a2) >> 2;
      }

      else
      {
        v18 = v10 / 2;
        v19 = &a2[4 * (v10 / 2)];
        if (v15 == a2)
        {
          v22 = v15;
        }

        else
        {
          v53 = v10 / 2;
          v54 = v10;
          v20 = &a2[-v15] >> 2;
          v21 = *v19;
          v22 = v15;
          do
          {
            v23 = &v22[4 * (v20 >> 1)];
            v25 = *v23;
            v24 = (v23 + 1);
            if (sub_29B27549C(a4, v21, v25))
            {
              v20 >>= 1;
            }

            else
            {
              v22 = v24;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
          v10 = v54;
          v18 = v53;
        }

        v26 = &v22[-v15] >> 2;
      }

      a5 -= v26;
      v10 -= v18;
      v33 = sub_29A0BD4E8(v22, a2, v19);
      v34 = v33;
      if (v26 + v18 >= a5 + v10)
      {
        v36 = v10;
        v10 = v18;
        result = sub_29B2756F8(v33, v19, v57, a4, a5, v36, __src, a8);
        v19 = v22;
        a7 = __src;
        a5 = v26;
        v57 = v34;
      }

      else
      {
        v35 = v22;
        a7 = __src;
        result = sub_29B2756F8(v15, v35, v33, a4, v26, v18, __src, a8);
        v15 = v34;
      }

      a2 = v19;
      a3 = v57;
      if (!v10)
      {
        return result;
      }
    }

    if (a5 <= v10)
    {
      if (v15 != a2)
      {
        v42 = -a7;
        v43 = a7;
        v44 = v15;
        do
        {
          v45 = *v44;
          v44 += 4;
          *v43++ = v45;
          v42 -= 4;
        }

        while (v44 != a2);
        while (a2 != a3)
        {
          v46 = *a2;
          v47 = *a7;
          result = sub_29B27549C(a4, *a2, *a7);
          if (result)
          {
            v48 = v46;
          }

          else
          {
            v48 = v47;
          }

          if (result)
          {
            v49 = 0;
          }

          else
          {
            v49 = 4;
          }

          a7 = (a7 + v49);
          if (result)
          {
            v50 = 4;
          }

          else
          {
            v50 = 0;
          }

          a2 += v50;
          *v15 = v48;
          v15 += 4;
          if (v43 == a7)
          {
            return result;
          }
        }

        return memmove(v15, a7, -(a7 + v42));
      }
    }

    else if (a2 != a3)
    {
      v37 = 0;
      do
      {
        a7[v37] = *&a2[v37 * 4];
        ++v37;
      }

      while (&a2[v37 * 4] != a3);
      v38 = &a7[v37];
      while (a2 != v15)
      {
        v39 = *(v38 - 1);
        v40 = *(a2 - 1);
        result = sub_29B27549C(a4, v39, v40);
        if (result)
        {
          v41 = v40;
        }

        else
        {
          v41 = v39;
        }

        if (result)
        {
          a2 -= 4;
        }

        else
        {
          --v38;
        }

        *(a3 - 1) = v41;
        a3 -= 4;
        if (v38 == a7)
        {
          return result;
        }
      }

      if (v38 != a7)
      {
        v51 = -4;
        do
        {
          v52 = *--v38;
          *&a3[v51] = v52;
          v51 -= 4;
        }

        while (v38 != a7);
      }
    }
  }

  return result;
}

uint64_t sub_29B275AB0(int a1, int a2, int a3, int a4)
{
  if (qword_2A1787820 == -1)
  {
    if (qword_2A1787828)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_29B2D1DD8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2A1787828)
    {
      return _availability_version_check();
    }
  }

  if (qword_2A1787818 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_29B2D1DF0();
    a3 = v10;
    a4 = v9;
    v8 = dword_2A1787808 < v11;
    if (dword_2A1787808 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2A178780C > a3)
      {
        return 1;
      }

      if (dword_2A178780C >= a3)
      {
        return dword_2A1787810 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_2A1787808 < a2;
  if (dword_2A1787808 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_29B275C44(uint64_t result)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = qword_2A1787828;
  if (qword_2A1787828)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x2A1C7C4E8])
    {
      v1 = MEMORY[0x2A1C7C4E8];
      qword_2A1787828 = MEMORY[0x2A1C7C4E8];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x29C2C4BE0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_2A1787808, &dword_2A178780C, &dword_2A1787810);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CxxConvertibleToCollection.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v22 = &v21 - ((*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v32 = &v21 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v32;
  v10 = v32;
  (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v36 = v9;
  v31 = v12;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v13 = *(v8 + 8);
    v13(v36, v7);
    return (v13)(v10, v7);
  }

  else
  {
    v14 = *(AssociatedConformanceWitness + 24);
    v26 = (v30 + 16);
    v27 = v14;
    v28 = AssociatedConformanceWitness + 24;
    v29 = (v30 + 8);
    v30 = v8 + 8;
    v24 = (v8 + 32);
    v25 = AssociatedConformanceWitness + 32;
    v16 = v22;
    v15 = AssociatedTypeWitness;
    while (1)
    {
      v17 = v27(v35, v7, AssociatedConformanceWitness);
      (*v26)(v16);
      v17(v35, 0);
      v33(v16);
      if (v4)
      {
        break;
      }

      (*v29)(v16, v15);
      v18 = v32;
      (*(AssociatedConformanceWitness + 32))(v7, AssociatedConformanceWitness);
      v13 = *v30;
      (*v30)(v10, v7);
      (*v24)(v10, v18, v7);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v13(v36, v7);
        return (v13)(v10, v7);
      }
    }

    (*v29)(v16, v15);
    v20 = *v30;
    (*v30)(v36, v7);
    return (v20)(v10, v7);
  }
}

uint64_t CxxConvertibleToCollection<>.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v8 = &v19 - ((*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v19 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = &v19 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v21 = *(v12 - 8);
  v13 = &v19 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v11, v27, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v13;
  v15 = v20;
  v27 = v12;
  v23 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v22 = *(v15 + 48);
  if (v22(v9, 1, AssociatedTypeWitness) != 1)
  {
    v16 = *(v15 + 32);
    v17 = (v15 + 8);
    while (1)
    {
      v16(v8, v9, AssociatedTypeWitness);
      v24(v8);
      if (v5)
      {
        break;
      }

      (*v17)(v8, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v22(v9, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v21 + 8))(v26, v27);
      }
    }

    (*v17)(v8, AssociatedTypeWitness);
  }

  return (*(v21 + 8))(v26, v27);
}

uint64_t sub_29B2766CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0), a1, AssociatedTypeWitness);
  return dispatch thunk of RangeReplaceableCollection.append(_:)();
}

uint64_t sub_29B276810@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, void (*a6)(char *)@<X6>, uint64_t a7@<X8>)
{
  a5(a1, a3);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a7;
  return CxxConvertibleToCollection.forEach(_:)(a6, v14, a2, a4);
}

uint64_t sub_29B2768A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v10 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  dispatch thunk of SetAlgebra.insert(_:)();
  return (*(v7 + 8))(v8, AssociatedTypeWitness);
}

uint64_t CxxDictionary.init<>(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = &v45 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(AssociatedTypeWitness - 8);
  v52 = &v45 - ((*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v49 = *(v9 - 8);
  v66 = &v45 - ((*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v9;
  v51 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = type metadata accessor for Optional();
  v69 = *(v64 - 8);
  v11 = &v45 - ((*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v11;
  v12 = *(a3 + 88);
  v56 = a4;
  v57 = a2;
  v58 = a3;
  result = v12(a2, a3);
  v14 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v46 = 0;
    v15 = 0;
    v16 = 0;
    v14 = result | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v18 = *(a1 + 64);
    v46 = a1 + 64;
    v15 = ~v17;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & v18;
  }

  v21 = 0;
  v68 = (v49 + 32);
  v22 = (v50 + 32);
  v61 = TupleTypeMetadata2 - 8;
  v45 = v15;
  v23 = (v15 + 64) >> 6;
  v48 = v49 + 16;
  v47 = v50 + 16;
  v60 = (v69 + 32);
  v53 = v11;
  v54 = (v50 + 56);
  v65 = v14;
  v24 = v51;
  v25 = v66;
  v26 = v67;
  while (1)
  {
    v62 = v16;
    v59 = v21;
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v36 = v21;
      v35 = v52;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v28 = v36;
      v69 = v16;
      goto LABEL_20;
    }

    v38 = 1;
    v44 = v16;
    v30 = v21;
    v69 = v44;
    v11 = v53;
LABEL_21:
    v39 = *(TupleTypeMetadata2 - 8);
    (*(v39 + 56))(v11, v38, 1, TupleTypeMetadata2);
    v40 = v63;
    (*v60)(v63, v11, v64);
    if ((*(v39 + 48))(v40, 1, TupleTypeMetadata2) == 1)
    {
      return sub_29B277038(v65);
    }

    v41 = *(TupleTypeMetadata2 + 48);
    v26 = v67;
    v25 = v66;
    (*v68)(v66, v40, v67);
    v42 = &v40[v41];
    v43 = v55;
    (*v22)(v55, v42, v24);
    (*v54)(v43, 0, 1, v24);
    result = CxxDictionary.subscript.setter(v43, v25, v57, v58);
    v21 = v30;
    v16 = v69;
    v14 = v65;
  }

  v27 = v16;
  v28 = v21;
  if (v16)
  {
LABEL_17:
    v69 = (v27 - 1) & v27;
    v32 = __clz(__rbit64(v27)) | (v28 << 6);
    v33 = v14;
    (*(v49 + 16))(v25, *(v14 + 48) + *(v49 + 72) * v32, v26);
    v34 = *(v33 + 56);
    v24 = v51;
    v35 = v52;
    (*(v50 + 16))(v52, v34 + *(v50 + 72) * v32, v51);
LABEL_20:
    v37 = *(TupleTypeMetadata2 + 48);
    v11 = v53;
    (*v68)(v53);
    (*v22)(&v11[v37], v35, v24);
    v38 = 0;
    v30 = v28;
    goto LABEL_21;
  }

  if (v23 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29 - 1;
  v31 = v21;
  while (1)
  {
    v28 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v69 = 0;
      v38 = 1;
      goto LABEL_21;
    }

    v27 = *(v46 + 8 * v28);
    ++v31;
    if (v27)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 1);
  v38 = &v31 - ((*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v35 = *(v7 - 8);
  v36 = v7;
  v34 = &v31 - ((*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_getAssociatedTypeWitness();
  v33 = *(v41 - 8);
  v32 = &v31 - ((*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v40 = *(v8 - 8);
  v9 = &v31 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v42 = &v31 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v42;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v14 = type metadata accessor for Optional();
    (*(*(v14 - 8) + 8))(a1, v14);
    v15 = v38;
    v16 = v43;
    (*(a4 + 120))(v43, a3, a4);
    v17 = swift_getAssociatedTypeWitness();
    (*(*(v17 - 8) + 8))(v16, v17);
    return (*(v37 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(v12 + 32);
    v38 = v10;
    AssociatedTypeWitness = v19;
    v19(v13, a1, v11);
    (*(a4 + 104))(v43, a3, a4);
    (*(a4 + 152))(a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = *(v40 + 8);
    (v40)(v9, v8);
    if (v21)
    {
      (v40)(v9, v8);
      v22 = v42;
      AssociatedTypeWitness(v42, v13, v11);
      v23 = v41;
      v24 = swift_getAssociatedConformanceWitness();
      v25 = v32;
      (*(v24 + 24))(v43, v22, v23, v24);
      v26 = v34;
      (*(a4 + 112))(v25, a3, a4);
      (*(v35 + 8))(v26, v36);
      return (*(v33 + 8))(v25, v23);
    }

    else
    {
      v27 = swift_getAssociatedTypeWitness();
      (*(*(v27 - 8) + 8))(v43, v27);
      AssociatedTypeWitness(v42, v13, v11);
      v28 = (*(AssociatedConformanceWitness + 24))(v44, v8, AssociatedConformanceWitness);
      v29 = v41;
      v30 = swift_getAssociatedConformanceWitness();
      (*(v30 + 64))(v42, v29, v30);
      v28(v44, 0);
      return (v40)(v9, v8);
    }
  }
}

uint64_t CxxDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = &v24 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v32 = &v24 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v25 = *(v12 + 64);
  v13 = &v24 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 88);
  v34 = a4;
  v35 = a2;
  v36 = a3;
  v14(a2, a3);
  if (MEMORY[0x29C2B98C0](a1, TupleTypeMetadata2))
  {
    v15 = 0;
    v16 = *(TupleTypeMetadata2 + 48);
    v29 = AssociatedTypeWitness;
    v30 = (v12 + 16);
    v27 = (v10 + 32);
    v28 = v16;
    v26 = AssociatedTypeWitness - 8;
    v17 = v31;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v12 + 16))(v13, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, TupleTypeMetadata2);
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v37 = result;
        (*v30)(v13, &v37, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v20 = v32;
      (*v27)(v32, v13, v33);
      v21 = v29;
      v22 = *(v29 - 8);
      (*(v22 + 32))(v17, &v13[v28], v29);
      (*(v22 + 56))(v17, 0, 1, v21);
      CxxDictionary.subscript.setter(v17, v20, v35, v36);
      ++v15;
      if (v19 == MEMORY[0x29C2B98C0](a1, TupleTypeMetadata2))
      {
      }
    }
  }
}

uint64_t CxxDictionary.init<A>(grouping:by:)@<X0>(void (**a1)(char *, void *)@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v83 = a9;
  v76 = a2;
  v77 = a8;
  v75 = a3;
  v82 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = &v50 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = AssociatedTypeWitness;
  v66 = *(AssociatedTypeWitness - 8);
  v59 = &v50 - ((*(v66 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_getAssociatedTypeWitness();
  v67 = *(v61 - 1);
  v73 = &v50 - ((*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v73;
  v86 = a4;
  v13 = a6;
  v72 = swift_getAssociatedTypeWitness();
  v55 = *(v72 - 8);
  v58 = &v50 - ((*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v58;
  v15 = swift_getAssociatedTypeWitness();
  v81 = *(v15 - 8);
  v85 = &v50 - ((*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = &v50 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v51 = *(v16 - 8);
  v17 = &v50 - ((*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 88))(v86, v13);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = v17;
  v79 = v16;
  v19 = v80;
  v71 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v20 = v81;
  v21 = *(v81 + 48);
  v70 = v81 + 48;
  v69 = v21;
  if (v21(v19, 1, v15) == 1)
  {
    return (*(v51 + 8))(v78, v79);
  }

  v68 = *(v20 + 32);
  v64 = v13 + 104;
  v63 = v13 + 152;
  v82 = (v67 + 8);
  v57 = (v55 + 8);
  v62 = v77 + 64;
  v81 = v20 + 32;
  v67 = v20 + 8;
  v56 = v77 + 56;
  v55 += 32;
  v54 = (v66 + 32);
  v53 = (v66 + 56);
  v23 = v61;
  v66 = v14;
  v65 = v15;
  v52 = v12;
  while (1)
  {
    v33 = v85;
    v68(v85, v19, v15);
    v34 = v89;
    v76(v33);
    v89 = v34;
    if (v34)
    {
      break;
    }

    v35 = v86;
    (*(v13 + 104))(v14, v86, v13);
    v36 = v12;
    v37 = v73;
    (*(v13 + 152))(v35, v13);
    v38 = v14;
    v39 = swift_getAssociatedConformanceWitness();
    v40 = v36;
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v84 = *v82;
    v84(v37, v23);
    if (v41)
    {
      v84(v36, v23);
      v24 = v77;
      v25 = v59;
      v26 = v74;
      (*(v77 + 56))(v74, v77);
      v27 = v85;
      (*(v24 + 64))(v85, v26, v24);
      v28 = v65;
      (*v67)(v27, v65);
      v29 = v58;
      v30 = v38;
      v15 = v28;
      (*v55)(v58, v30, v72);
      v31 = v60;
      (*v54)(v60, v25, v26);
      (*v53)(v31, 0, 1, v26);
      CxxDictionary.subscript.setter(v31, v29, v86, v13);
      v12 = v40;
    }

    else
    {
      (*v57)(v38, v72);
      v61 = (*(v39 + 24))(v88, v23, v39);
      swift_getAssociatedTypeWitness();
      v42 = swift_getAssociatedConformanceWitness();
      v43 = v13;
      v44 = *(v42 + 72);
      v45 = swift_checkMetadataState();
      v46 = v77;
      v47 = v44(v87, v45, v42);
      v13 = v43;
      v48 = v47;
      v49 = v85;
      (*(v46 + 64))(v85, v74, v46);
      v15 = v65;
      (*v67)(v49, v65);
      v48(v87, 0);
      (v61)(v88, 0);
      v12 = v52;
      v84(v52, v23);
    }

    v19 = v80;
    dispatch thunk of IteratorProtocol.next()();
    v32 = v69(v19, 1, v15);
    v14 = v66;
    if (v32 == 1)
    {
      return (*(v51 + 8))(v78, v79);
    }
  }

  (*v67)(v85, v15);
  (*(v51 + 8))(v78, v79);
  return (*(*(v86 - 8) + 8))(v83, v86);
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v23 = &v22 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 96))(a1, a2, a3);
  (*(a3 + 144))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v9 + 8);
  v13(v10, v8);
  if (v12)
  {
    v13(v10, v8);
    v14 = 1;
    v15 = v25;
  }

  else
  {
    v16 = (*(AssociatedConformanceWitness + 24))(v26, v8, AssociatedConformanceWitness);
    v17 = v23;
    v18 = AssociatedTypeWitness;
    (*(v7 + 16))(v23);
    v16(v26, 0);
    v13(v10, v8);
    v19 = swift_getAssociatedConformanceWitness();
    v15 = v25;
    (*(v19 + 56))(v18, v19);
    (*(v7 + 8))(v17, v18);
    v14 = 0;
  }

  v20 = swift_getAssociatedTypeWitness();
  return (*(*(v20 - 8) + 56))(v15, v14, 1, v20);
}

uint64_t sub_29B2787C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = &v14 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = &v14 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(AssociatedTypeWitness - 8) + 16))(v12, a3, AssociatedTypeWitness);
  (*(v9 + 16))(v10, a1, v8);
  return CxxDictionary.subscript.setter(v10, v12, v6, v7);
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  v15 = v9;
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v16 = malloc(v14);
  }

  v17 = v16;
  v11[6] = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[7] = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = v19;
  v11[8] = v19;
  v21 = *(v19 + 64);
  if (v15)
  {
    v11[9] = swift_coroFrameAlloc();
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v11[9] = malloc(*(v19 + 64));
    v22 = malloc(v21);
  }

  v11[10] = v22;
  (*(v20 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, v17);
  return sub_29B278B94;
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[1] = a3;
  v23 = a2;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v24 = v22 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v22 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 96))(a1, a4, a5);
  (*(a5 + 144))(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v11 + 8);
  v15(v12, v10);
  if (v14)
  {
    v16 = (v15)(v12, v10);
    return v23(v16);
  }

  else
  {
    v18 = (*(AssociatedConformanceWitness + 24))(v27, v10, AssociatedConformanceWitness);
    v19 = v24;
    v20 = AssociatedTypeWitness;
    (*(v9 + 16))(v24);
    v18(v27, 0);
    v15(v12, v10);
    v21 = swift_getAssociatedConformanceWitness();
    (*(v21 + 56))(v20, v21);
    return (*(v9 + 8))(v19, v20);
  }
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, uint64_t a2)
{
  v11 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x58uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[1] = a6;
  v12[2] = v6;
  *v12 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[4] = v15;
  v16 = *(v15 + 64);
  v17 = v11;
  if (v11)
  {
    v13[5] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[5] = malloc(*(v15 + 64));
    v18 = malloc(v16);
  }

  v19 = v18;
  v13[6] = v18;
  v20 = swift_getAssociatedTypeWitness();
  v13[7] = v20;
  v21 = *(v20 - 8);
  v22 = v21;
  v13[8] = v21;
  v23 = *(v21 + 64);
  if (v17)
  {
    v13[9] = swift_coroFrameAlloc();
    v24 = swift_coroFrameAlloc();
  }

  else
  {
    v13[9] = malloc(*(v21 + 64));
    v24 = malloc(v23);
  }

  v13[10] = v24;
  (*(v22 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, a5, a6, v19);
  return sub_29B2790C4;
}

void sub_29B2790DC(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[9];
  v6 = (*a1)[10];
  if (a2)
  {
    v7 = v4[8];
    v9 = v4[5];
    v8 = v4[6];
    v10 = v4[3];
    v11 = v4[4];
    v14 = v4[7];
    v13 = v4[1];
    v12 = *v4;
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v5, v6, v14);
    a3(v9, v5, v12, v13);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];
    a3(v8, v6, *v4, v4[1]);
  }

  free(v6);
  free(v5);
  free(v8);
  free(v9);

  free(v4);
}

uint64_t CxxDictionary.filter(_:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v54 = a1;
  v55 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v36 = &v33 - ((*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_getAssociatedTypeWitness();
  v57 = *(v53 - 8);
  v52 = &v33 - ((v57[8] + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_getAssociatedTypeWitness();
  v46 = *(v51 - 8);
  v50 = &v33 - ((*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v43 = *(v8 - 8);
  v9 = &v33 - ((*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v39 = *(v10 - 8);
  v49 = &v33 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v49;
  v12 = v49;
  v13 = a4[11];
  v38 = a5;
  v14 = a4;
  v13(a3, a4);
  a4[17](a3, a4);
  a4[18](a3, a4);
  v59 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 8);
  v56 = v11;
  v48 = v16;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v17 = *(v39 + 8);
    v17(v56, v10);
  }

  else
  {
    v18 = v14;
    v19 = v33;
    v42 = *(AssociatedConformanceWitness + 24);
    v41 = (v43 + 16);
    v44 = (v57 + 1);
    v45 = (v46 + 8);
    v46 = v43 + 8;
    v57 = v18;
    v35 = v18 + 14;
    v34 = (v47 + 8);
    v43 = AssociatedConformanceWitness + 24;
    v40 = AssociatedConformanceWitness + 32;
    v47 = v39 + 8;
    v39 += 32;
    for (i = v42(v58, v10, AssociatedConformanceWitness); ; i = v42(v58, v10, AssociatedConformanceWitness))
    {
      v22 = i;
      (*v41)(v9);
      v22(v58, 0);
      v23 = swift_getAssociatedConformanceWitness();
      v24 = v50;
      (*(v23 + 32))(v8, v23);
      v25 = *(v23 + 56);
      v26 = v23;
      v27 = v52;
      v25(v8, v26);
      v28 = v54(v24, v27);
      if (v19)
      {
        (*v44)(v27, v53);
        (*v45)(v24, v51);
        (*v46)(v9, v8);
        v31 = *v47;
        (*v47)(v56, v10);
        v31(v12, v10);
        return (*(*(v59 - 8) + 8))(v38);
      }

      v29 = v28;
      (*v44)(v27, v53);
      (*v45)(v24, v51);
      if (v29)
      {
        v30 = v36;
        v57[14](v9, v59);
        (*v34)(v30, AssociatedTypeWitness);
      }

      (*v46)(v9, v8);
      v21 = v49;
      (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
      v17 = *v47;
      (*v47)(v12, v10);
      (*v39)(v12, v21, v10);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }
    }

    v17(v56, v10);
  }

  return (v17)(v12, v10);
}

uint64_t CxxDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v9 = &v27 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v27 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12;
  (*(a3 + 104))(a1, a2, a3);
  v14 = *(a3 + 152);
  v31 = v4;
  v14(a2, a3);
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v11 + 8);
  v17(v12, v10);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v28 = (*(v15 + 24))(v33, v10, v15);
    v19 = v29;
    v20 = v9;
    v21 = v9;
    v22 = v30;
    (*(v29 + 16))(v21);
    v28(v33, 0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v22, AssociatedConformanceWitness);
    (*(v19 + 8))(v20, v22);
    (*(a3 + 128))(v12, a2, a3);
    v17(v12, v10);
    v18 = 0;
  }

  v24 = v32;
  v17(v13, v10);
  v25 = swift_getAssociatedTypeWitness();
  return (*(*(v25 - 8) + 56))(v24, v18, 1, v25);
}

uint64_t CxxDictionary.merge<A>(_:uniquingKeysWith:)(void (**a1)(char *, uint64_t), void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a3;
  v67 = a2;
  v88 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v65 = &v55 - ((*(v87 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = swift_getAssociatedTypeWitness();
  v86 = *(v81 - 8);
  v64 = &v55 - ((*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = swift_getAssociatedTypeWitness();
  v70 = *(v79 - 8);
  v80 = &v55 - ((*(v70 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v80;
  v94 = a6;
  v10 = swift_getAssociatedTypeWitness();
  v69 = *(v10 - 8);
  v63 = &v55 - ((*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v63;
  v78 = v63;
  v93 = v63;
  v91 = a4;
  v11 = swift_getAssociatedTypeWitness();
  v89 = *(v11 - 8);
  v61 = &v55 - ((*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v61;
  v92 = v11;
  v90 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = &v55 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v55 = *(v14 - 8);
  v15 = &v55 - ((*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = v15;
  v85 = v14;
  v17 = v13;
  v77 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = TupleTypeMetadata2;
  v19 = *(TupleTypeMetadata2 - 8);
  v76 = *(v19 + 48);
  v75 = v19 + 48;
  if (v76(v13, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v55 + 8))(v84, v85);
  }

  v21 = *(v89 + 32);
  v22 = (v69 + 32);
  v74 = v94 + 104;
  v73 = v94 + 152;
  v88 = (v70 + 8);
  v89 += 32;
  v59 = (v89 - 24);
  v60 = (v69 + 8);
  v58 = v94 + 112;
  v57 = (v87 + 8);
  v56 = (v86 + 8);
  v96 = v9;
  v23 = v92;
  v24 = v93;
  v25 = v82;
  v70 = v21;
  v69 += 32;
  v72 = TupleTypeMetadata2;
  v71 = v17;
  while (1)
  {
    v35 = *(v18 + 48);
    (v21)(v25, v17, v23);
    v87 = *v22;
    (v87)(v24, &v17[v35], v90);
    v36 = v94;
    v37 = v91;
    (*(v94 + 104))(v25, v91, v94);
    v38 = v80;
    (*(v36 + 152))(v37, v36);
    v39 = v79;
    v40 = v25;
    v86 = swift_getAssociatedConformanceWitness();
    v41 = *(v86 + 8);
    LOBYTE(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
    v42 = v39;
    v43 = *v88;
    (*v88)(v38, v42);
    if ((v35 & 1) == 0)
    {
      break;
    }

    v43(v96, v42);
    v26 = v61;
    (v21)(v61, v40, v92);
    v27 = v63;
    (v87)(v63, v93, v90);
    v28 = v94;
    v29 = v91;
    v30 = v81;
    v31 = swift_getAssociatedConformanceWitness();
    v32 = v64;
    (*(v31 + 24))(v26, v27, v30, v31);
    v33 = v65;
    (*(v28 + 112))(v32, v29, v28);
    (*v57)(v33, AssociatedTypeWitness);
    (*v56)(v32, v30);
LABEL_5:
    v17 = v71;
    dispatch thunk of IteratorProtocol.next()();
    v18 = v72;
    v34 = v76(v17, 1, v72);
    v23 = v92;
    v24 = v93;
    v25 = v82;
    v21 = v70;
    v22 = v69;
    if (v34 == 1)
    {
      return (*(v55 + 8))(v84, v85);
    }
  }

  v87 = v43;
  v44 = v90;
  (*v59)(v40, v92);
  v45 = (*(v41 + 24))(v95, v42, v41);
  v46 = v81;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = v62;
  (*(v47 + 56))(v46, v47);
  v45(v95, 0);
  v49 = v93;
  v50 = v83;
  v67(v48, v93);
  if (!v50)
  {
    v83 = 0;
    v51 = *v60;
    (*v60)(v48, v44);
    v51(v49, v44);
    v52 = v96;
    v53 = (*(v86 + 24))(v95, v42);
    (*(v47 + 64))(v78, v46, v47);
    v53(v95, 0);
    v87(v52, v42);
    goto LABEL_5;
  }

  v54 = *v60;
  (*v60)(v48, v44);
  v87(v96, v42);
  v54(v49, v44);
  return (*(v55 + 8))(v84, v85);
}

uint64_t CxxDictionary.merge<>(_:uniquingKeysWith:)(unint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a3;
  v88 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v86 = &v76 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = swift_getAssociatedTypeWitness();
  v9 = *(v103 - 8);
  v85 = &v76 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v120 = *(v10 - 8);
  v102 = &v76 - ((*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v102;
  v11 = swift_getAssociatedTypeWitness();
  v93 = *(v11 - 8);
  v84 = &v76 - ((*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v84;
  v121 = v84;
  v117 = v84;
  v100 = a4;
  v127 = swift_getAssociatedTypeWitness();
  v92 = *(v127 - 8);
  v101 = &v76 - ((*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v101;
  v123 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  v108 = result;
  v15 = *(result - 8);
  v107 = &v76 - ((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v107;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v77 = 0;
    v16 = 0;
    v17 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v19 = *(a1 + 64);
    v77 = a1 + 64;
    v16 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & v19;
  }

  v22 = 0;
  v124 = (v92 + 32);
  v116 = (v93 + 32);
  v109 = TupleTypeMetadata2;
  v105 = TupleTypeMetadata2 - 8;
  v76 = v16;
  v23 = (v16 + 64) >> 6;
  v91 = v92 + 16;
  v90 = v93 + 16;
  v104 = (v15 + 32);
  v97 = a5 + 104;
  v96 = a5 + 152;
  v98 = (v120 + 8);
  v81 = (v92 + 8);
  v82 = (v93 + 8);
  v80 = a5 + 112;
  v79 = (v8 + 8);
  v78 = (v9 + 8);
  v94 = v23;
  v118 = a1;
  v122 = a5;
  v95 = v12;
  v99 = v10;
  while (1)
  {
    v111 = v22;
    v112 = v17;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v34 = __CocoaDictionary.Iterator.next()();
    v30 = v123;
    v31 = v117;
    if (v34)
    {
      v35 = v12;
      v36 = v127;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v33 = v111;
      v120 = v112;
LABEL_23:
      v42 = v109;
      v43 = *(v109 + 48);
      v44 = v107;
      (*v124)(v107, v35, v36);
      v45 = v31;
      v46 = v116;
      (*v116)(&v44[v43], v45, v30);
      v47 = 0;
      v119 = v33;
      a1 = v118;
      goto LABEL_27;
    }

    v47 = 1;
    v119 = v111;
    v120 = v112;
LABEL_26:
    v42 = v109;
    v44 = v107;
    v46 = v116;
LABEL_27:
    v48 = *(v42 - 8);
    (*(v48 + 56))(v44, v47, 1, v42);
    v49 = v106;
    (*v104)(v106, v44, v108);
    if ((*(v48 + 48))(v49, 1, v42) == 1)
    {
      return sub_29B277038(a1);
    }

    v50 = *(v42 + 48);
    v51 = v101;
    v115 = *v124;
    v115(v101, v49, v127);
    v114 = *v46;
    v114(v121, &v49[v50], v30);
    v52 = v122;
    v53 = v100;
    (*(v122 + 104))(v51, v100, v122);
    v54 = v102;
    (*(v52 + 152))(v53, v52);
    v55 = v99;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v56 = *(AssociatedConformanceWitness + 8);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = v55;
    v59 = v55;
    v60 = *v98;
    (*v98)(v54, v59);
    if (v57)
    {
      v60(v125, v58);
      v12 = v95;
      v115(v95, v51, v127);
      v24 = v117;
      v114(v117, v121, v123);
      v25 = v122;
      v26 = v103;
      v27 = swift_getAssociatedConformanceWitness();
      v28 = v85;
      (*(v27 + 24))(v12, v24, v26, v27);
      v29 = v86;
      (*(v25 + 112))(v28, v53, v25);
      (*v79)(v29, AssociatedTypeWitness);
      result = (*v78)(v28, v26);
      v22 = v119;
      v17 = v120;
      a1 = v118;
    }

    else
    {
      v115 = v60;
      (*v81)(v51, v127);
      v61 = (*(v56 + 24))(v126, v58, v56);
      v62 = v103;
      v63 = swift_getAssociatedConformanceWitness();
      v64 = v84;
      (*(v63 + 56))(v62, v63);
      v61(v126, 0);
      v65 = v83;
      v66 = v121;
      v67 = v110;
      v88(v64, v121);
      v110 = v67;
      if (v67)
      {
        sub_29B277038(v118);
        v74 = *v82;
        v75 = v123;
        (*v82)(v64, v123);
        (v115)(v125, v58);
        return (v74)(v66, v75);
      }

      v68 = *v82;
      v69 = v64;
      v70 = v66;
      v71 = v123;
      (*v82)(v69, v123);
      v68(v70, v71);
      v72 = v125;
      v73 = (*(AssociatedConformanceWitness + 24))(v126, v58);
      (*(v63 + 64))(v65, v62, v63);
      v73(v126, 0);
      result = (v115)(v72, v58);
      v22 = v119;
      v17 = v120;
      a1 = v118;
      v12 = v95;
    }

    v23 = v94;
  }

  v30 = v123;
  v31 = v117;
  if (v17)
  {
    v32 = v17;
    v33 = v22;
LABEL_22:
    v120 = (v32 - 1) & v32;
    v40 = __clz(__rbit64(v32)) | (v33 << 6);
    v41 = a1;
    v36 = v127;
    (*(v92 + 16))(v12, *(a1 + 48) + *(v92 + 72) * v40, v127);
    v35 = v12;
    (*(v93 + 16))(v31, *(v41 + 56) + *(v93 + 72) * v40, v30);
    goto LABEL_23;
  }

  if (v23 <= v22 + 1)
  {
    v37 = v22 + 1;
  }

  else
  {
    v37 = v23;
  }

  v38 = v37 - 1;
  v39 = v22;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v23)
    {
      v119 = v38;
      v120 = 0;
      v47 = 1;
      goto LABEL_26;
    }

    v32 = *(v77 + 8 * v33);
    ++v39;
    if (v32)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}