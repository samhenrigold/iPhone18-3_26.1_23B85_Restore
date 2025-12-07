void sub_239E911EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  sub_239E91E2C(&a65);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_239E88DF8(&STACK[0x330]);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_239E987D0(&a40);

  _Unwind_Resume(a1);
}

std::string *sub_239E91570(std::string *this)
{
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = v2;
  v4 = this + v2;
  if (v3 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_;
  }

  if (v3 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  v7 = MEMORY[0x277D85DE0];
  while (v5 != v6)
  {
    v9 = *--v5;
    v8 = v9;
    if ((v9 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x4000uLL))
      {
LABEL_13:
        v6 = (v5 + 1);
        break;
      }
    }

    else if ((*(v7 + 4 * v8 + 60) & 0x4000) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this + v10;
  if (v11 >= 0)
  {
    v13 = this;
  }

  else
  {
    v12 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v13 = this->__r_.__value_.__r.__words[0];
  }

  std::string::erase(this, v6 - v13, v12 - v6);
  v14 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v15 = this->__r_.__value_.__r.__words[0];
  if (v14 >= 0)
  {
    v16 = this;
  }

  else
  {
    v16 = this->__r_.__value_.__r.__words[0];
  }

  if (v14 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v18 = (v16 + size);
    v19 = v16;
    do
    {
      v20 = v19->__r_.__value_.__s.__data_[0];
      if ((v20 & 0x80000000) != 0)
      {
        if (!__maskrune(v20, 0x4000uLL))
        {
          goto LABEL_31;
        }
      }

      else if ((*(v7 + 4 * v20 + 60) & 0x4000) == 0)
      {
        goto LABEL_31;
      }

      v19 = (v19 + 1);
      --size;
    }

    while (size);
    v19 = v18;
LABEL_31:
    LOBYTE(v14) = *(&this->__r_.__value_.__s + 23);
    v15 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v19 = v16;
  }

  if ((v14 & 0x80u) == 0)
  {
    v21 = this;
  }

  else
  {
    v21 = v15;
  }

  std::string::erase(this, v16 - v21, v19 - v16);
  return this;
}

void sub_239E916B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E9170C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E9170C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

std::string *sub_239E9175C@<X0>(std::string *__return_ptr a1@<X8>, std::string *__s@<X1>, std::string *result@<X0>)
{
  size = SHIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (size < 0)
  {
    v6 = __s->__r_.__value_.__r.__words[0];
    size = __s->__r_.__value_.__l.__size_;
  }

  else
  {
    v6 = __s;
  }

  v7 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = result->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    v9 = HIBYTE(result->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = result->__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    return std::string::basic_string(a1, __s, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
  }

  if (size >= v9)
  {
    v10 = (v6 + size);
    v11 = v8->__r_.__value_.__s.__data_[0];
    result = v6;
    do
    {
      v12 = size - v9;
      if (v12 == -1)
      {
        break;
      }

      result = memchr(result, v11, v12 + 1);
      if (!result)
      {
        break;
      }

      v13 = result;
      result = memcmp(result, v8, v9);
      if (!result)
      {
        if (v13 == v10 || v13 != v6)
        {
          break;
        }

        return std::string::basic_string(a1, __s, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
      }

      result = (&v13->__r_.__value_.__l.__data_ + 1);
      size = v10 - (&v13->__r_.__value_.__l.__data_ + 1);
    }

    while (size >= v9);
  }

  *&a1->__r_.__value_.__l.__data_ = *&__s->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = __s->__r_.__value_.__r.__words[2];
  __s->__r_.__value_.__l.__size_ = 0;
  __s->__r_.__value_.__r.__words[2] = 0;
  __s->__r_.__value_.__r.__words[0] = 0;
  return result;
}

float32x4_t *sub_239E91870(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC2FA4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_239E91AC8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_239E79870();
}

void *sub_239E91B10(void *result, double a2)
{
  v2 = HIDWORD(a2);
  v3 = *(result + 2);
  if (v3 > 3)
  {
    v3 -= 4;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v7 = MEMORY[0x23EE80140](*result, LODWORD(a2));
      v8 = "//";
      v9 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      v5 = MEMORY[0x23EE80140](*result, LODWORD(a2));
      v6 = sub_239E98B94(v5, "/", 1);
      v7 = MEMORY[0x23EE80140](v6, v2);
      v8 = "/";
      v9 = 1;
    }

    sub_239E98B94(v7, v8, v9);
LABEL_14:

    JUMPOUT(0x23EE80140);
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v4 = MEMORY[0x23EE80140](*result, LODWORD(a2));
    sub_239E98B94(v4, "/", 1);
    goto LABEL_14;
  }

  return result;
}

void *sub_239E91C08(void *a1)
{
  *a1 = &unk_284D17508;
  sub_239E91CE0((a1 + 1), a1[2]);
  return a1;
}

void sub_239E91C54(void *a1)
{
  *a1 = &unk_284D17508;
  sub_239E91CE0((a1 + 1), a1[2]);

  JUMPOUT(0x23EE802C0);
}

void sub_239E91CE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_239E91CE0(a1, *a2);
    sub_239E91CE0(a1, a2[1]);
    sub_239E91D3C((a2 + 4));

    operator delete(a2);
  }
}

void sub_239E91D3C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_239E91D94(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239E954E4(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v5;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 48) = a2[3];
    *(v3 + 64) = *(a2 + 8);
    a2[3] = 0uLL;
    *(a2 + 8) = 0;
    *(v3 + 72) = *(a2 + 18);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239E91E2C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_239E95924(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_239E91E88@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_239E959D0(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

_OWORD *sub_239E91F5C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_239E797B4();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_239E91AC8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return (v6 - 16);
}

void *sub_239E92038(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239E95BB4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return (v6 - 8);
}

void *sub_239E92110(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_239E797B4();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v17[4] = a1;
    if (v10)
    {
      sub_239E95BFC(a1, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy((v11 - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_239E95C54(v17);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  *(a1 + 8) = v6;
  return (v6 - 24);
}

void sub_239E92254(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v1810[2] = *MEMORY[0x277D85DE8];
  v1735 = a2;
  v1744 = a3;
  v9 = a1[13] - a1[12];
  if (v9)
  {
    LODWORD(v9) = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) == v9 >> 4;
  }

  v1732 = v9;
  v1740 = a1[9];
  v1741 = a1[10];
  v1738 = a1[3];
  v1739 = a1[4];
  v1736 = a1[6];
  v1737 = a1[7];
  v1780 = 0u;
  v1781 = 0u;
  v1782 = 1065353216;
  v1778 = 0;
  __p = 0;
  v1779 = 0;
  v10 = a1[18];
  v1752 = a1;
  v1753 = a1[19];
  if (v10 == v1753)
  {
    v1742 = 0;
    v11 = 0;
  }

  else
  {
    v1748 = a5;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      while (v13 != v14)
      {
        v16 = *v13;
        v15 = *(v13 + 8);
        v17 = (v15 - *v13) >> 4;
        v18 = a4;
        if (v17 < 4)
        {
          v18 = 1;
        }

        if (v18)
        {
          v19 = (v15 - *v13) >> 4;
        }

        else
        {
          v19 = 3 * v17 - 6;
        }

        for (; v16 != v15; ++v16)
        {
          v1793[1] = 0;
          v1793[0] = 0;
          *v1793 = *v16;
          if (!sub_239E95DE8(&v1780, v1793))
          {
            v1803 = v1793;
            sub_239E95ED0(&v1780, v1793, &unk_239F9BFF0, &v1803)[2].i32[0] = v12;
            sub_239E8E4FC(&__p, v1793);
            ++v12;
          }
        }

        v11 += v19;
        v13 += 24;
      }

      v10 += 80;
    }

    while (v10 != v1753);
    v1742 = *(&v1781 + 1);
    a5 = v1748;
  }

  v1746 = objc_alloc_init(MDLVertexDescriptor);
  v31 = objc_msgSend_attributes(v1746, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v42 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, 0, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  objc_msgSend_setName_(v42, v43, @"position", v44, v49, v50, v51, v52, v45, v46, v47, v48);

  v64 = objc_msgSend_attributes(v1746, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  v75 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, 0, v66, v71, v72, v73, v74, v67, v68, v69, v70);
  objc_msgSend_setFormat_(v75, v76, 786435, v77, v82, v83, v84, v85, v78, v79, v80, v81);

  v97 = objc_msgSend_attributes(v1746, v86, v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
  v108 = objc_msgSend_objectAtIndexedSubscript_(v97, v98, 0, v99, v104, v105, v106, v107, v100, v101, v102, v103);
  objc_msgSend_setBufferIndex_(v108, v109, 0, v110, v115, v116, v117, v118, v111, v112, v113, v114);

  v130 = objc_msgSend_attributes(v1746, v119, v120, v121, v126, v127, v128, v129, v122, v123, v124, v125);
  v141 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, 0, v132, v137, v138, v139, v140, v133, v134, v135, v136);
  objc_msgSend_setOffset_(v141, v142, 0, v143, v148, v149, v150, v151, v144, v145, v146, v147);

  if (v1741 == v1740)
  {
    v284 = 1;
    v285 = 12;
  }

  else
  {
    v163 = objc_msgSend_attributes(v1746, v152, v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);
    v174 = objc_msgSend_objectAtIndexedSubscript_(v163, v164, 1, v165, v170, v171, v172, v173, v166, v167, v168, v169);
    objc_msgSend_setName_(v174, v175, @"normal", v176, v181, v182, v183, v184, v177, v178, v179, v180);

    v196 = objc_msgSend_attributes(v1746, v185, v186, v187, v192, v193, v194, v195, v188, v189, v190, v191);
    v207 = objc_msgSend_objectAtIndexedSubscript_(v196, v197, 1, v198, v203, v204, v205, v206, v199, v200, v201, v202);
    objc_msgSend_setFormat_(v207, v208, 786435, v209, v214, v215, v216, v217, v210, v211, v212, v213);

    v229 = objc_msgSend_attributes(v1746, v218, v219, v220, v225, v226, v227, v228, v221, v222, v223, v224);
    v240 = objc_msgSend_objectAtIndexedSubscript_(v229, v230, 1, v231, v236, v237, v238, v239, v232, v233, v234, v235);
    objc_msgSend_setBufferIndex_(v240, v241, 0, v242, v247, v248, v249, v250, v243, v244, v245, v246);

    v262 = objc_msgSend_attributes(v1746, v251, v252, v253, v258, v259, v260, v261, v254, v255, v256, v257);
    v273 = objc_msgSend_objectAtIndexedSubscript_(v262, v263, 1, v264, v269, v270, v271, v272, v265, v266, v267, v268);
    objc_msgSend_setOffset_(v273, v274, 12, v275, v280, v281, v282, v283, v276, v277, v278, v279);

    v284 = 2;
    v285 = 24;
  }

  if (v1732)
  {
    v286 = objc_msgSend_attributes(v1746, v152, v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);
    v297 = objc_msgSend_objectAtIndexedSubscript_(v286, v287, v284, v288, v293, v294, v295, v296, v289, v290, v291, v292);
    objc_msgSend_setName_(v297, v298, @"color", v299, v304, v305, v306, v307, v300, v301, v302, v303);

    v319 = objc_msgSend_attributes(v1746, v308, v309, v310, v315, v316, v317, v318, v311, v312, v313, v314);
    v330 = objc_msgSend_objectAtIndexedSubscript_(v319, v320, v284, v321, v326, v327, v328, v329, v322, v323, v324, v325);
    objc_msgSend_setFormat_(v330, v331, 786436, v332, v337, v338, v339, v340, v333, v334, v335, v336);

    v352 = objc_msgSend_attributes(v1746, v341, v342, v343, v348, v349, v350, v351, v344, v345, v346, v347);
    v363 = objc_msgSend_objectAtIndexedSubscript_(v352, v353, v284, v354, v359, v360, v361, v362, v355, v356, v357, v358);
    objc_msgSend_setBufferIndex_(v363, v364, 0, v365, v370, v371, v372, v373, v366, v367, v368, v369);

    v385 = objc_msgSend_attributes(v1746, v374, v375, v376, v381, v382, v383, v384, v377, v378, v379, v380);
    v396 = objc_msgSend_objectAtIndexedSubscript_(v385, v386, v284, v387, v392, v393, v394, v395, v388, v389, v390, v391);
    objc_msgSend_setOffset_(v396, v397, v285, v398, v403, v404, v405, v406, v399, v400, v401, v402);

    ++v284;
    v285 += 16;
  }

  if (v1739 != v1738)
  {
    v407 = objc_msgSend_attributes(v1746, v152, v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);
    v418 = objc_msgSend_objectAtIndexedSubscript_(v407, v408, v284, v409, v414, v415, v416, v417, v410, v411, v412, v413);
    objc_msgSend_setName_(v418, v419, @"textureCoordinate", v420, v425, v426, v427, v428, v421, v422, v423, v424);

    v440 = objc_msgSend_attributes(v1746, v429, v430, v431, v436, v437, v438, v439, v432, v433, v434, v435);
    v451 = objc_msgSend_objectAtIndexedSubscript_(v440, v441, v284, v442, v447, v448, v449, v450, v443, v444, v445, v446);
    objc_msgSend_setFormat_(v451, v452, 786434, v453, v458, v459, v460, v461, v454, v455, v456, v457);

    v473 = objc_msgSend_attributes(v1746, v462, v463, v464, v469, v470, v471, v472, v465, v466, v467, v468);
    v484 = objc_msgSend_objectAtIndexedSubscript_(v473, v474, v284, v475, v480, v481, v482, v483, v476, v477, v478, v479);
    objc_msgSend_setBufferIndex_(v484, v485, 0, v486, v491, v492, v493, v494, v487, v488, v489, v490);

    v506 = objc_msgSend_attributes(v1746, v495, v496, v497, v502, v503, v504, v505, v498, v499, v500, v501);
    v517 = objc_msgSend_objectAtIndexedSubscript_(v506, v507, v284, v508, v513, v514, v515, v516, v509, v510, v511, v512);
    objc_msgSend_setOffset_(v517, v518, v285, v519, v524, v525, v526, v527, v520, v521, v522, v523);

    ++v284;
    v285 += 8;
  }

  if (v1737 != v1736)
  {
    v528 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v152, @"%@2", v154, v159, v160, v161, v162, v155, v156, v157, v158, @"textureCoordinate");
    v540 = objc_msgSend_attributes(v1746, v529, v530, v531, v536, v537, v538, v539, v532, v533, v534, v535);
    v541 = v284;
    v552 = objc_msgSend_objectAtIndexedSubscript_(v540, v542, v284, v543, v548, v549, v550, v551, v544, v545, v546, v547);
    objc_msgSend_setName_(v552, v553, v528, v554, v559, v560, v561, v562, v555, v556, v557, v558);

    v574 = objc_msgSend_attributes(v1746, v563, v564, v565, v570, v571, v572, v573, v566, v567, v568, v569);
    v585 = objc_msgSend_objectAtIndexedSubscript_(v574, v575, v541, v576, v581, v582, v583, v584, v577, v578, v579, v580);
    objc_msgSend_setFormat_(v585, v586, 786434, v587, v592, v593, v594, v595, v588, v589, v590, v591);

    v607 = objc_msgSend_attributes(v1746, v596, v597, v598, v603, v604, v605, v606, v599, v600, v601, v602);
    v618 = objc_msgSend_objectAtIndexedSubscript_(v607, v608, v541, v609, v614, v615, v616, v617, v610, v611, v612, v613);
    objc_msgSend_setBufferIndex_(v618, v619, 0, v620, v625, v626, v627, v628, v621, v622, v623, v624);

    v640 = objc_msgSend_attributes(v1746, v629, v630, v631, v636, v637, v638, v639, v632, v633, v634, v635);
    v651 = objc_msgSend_objectAtIndexedSubscript_(v640, v641, v541, v642, v647, v648, v649, v650, v643, v644, v645, v646);
    objc_msgSend_setOffset_(v651, v652, v285, v653, v658, v659, v660, v661, v654, v655, v656, v657);

    v285 += 8;
  }

  v662 = objc_msgSend_layouts(v1746, v152, v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);
  v673 = objc_msgSend_objectAtIndexedSubscript_(v662, v663, 0, v664, v669, v670, v671, v672, v665, v666, v667, v668);
  objc_msgSend_setStride_(v673, v674, v285, v675, v680, v681, v682, v683, v676, v677, v678, v679);

  objc_msgSend_setPackedOffsets(v1746, v684, v685, v686, v691, v692, v693, v694, v687, v688, v689, v690);
  objc_msgSend_setPackedStrides(v1746, v695, v696, v697, v702, v703, v704, v705, v698, v699, v700, v701);
  objc_msgSend__conformVertexBuffers_error_(v1744, v706, v1746, 0, v711, v712, v713, v714, v707, v708, v709, v710);
  if (!v11)
  {
    v763 = "OBJ file has no faces";
LABEL_37:
    sub_239E552A0(a6, v763);
    v761 = v1746;
    goto LABEL_38;
  }

  if (!v1742)
  {
    v763 = "No vertices in OBJ file";
    goto LABEL_37;
  }

  v726 = objc_msgSend_layouts(v1746, v715, v716, v717, v722, v723, v724, v725, v718, v719, v720, v721);
  v737 = objc_msgSend_objectAtIndexedSubscript_(v726, v727, 0, v728, v733, v734, v735, v736, v729, v730, v731, v732);
  v749 = objc_msgSend_stride(v737, v738, v739, v740, v745, v746, v747, v748, v741, v742, v743, v744);

  v761 = v1746;
  if (a5)
  {
    NSLog(&cfstr_CreatingVertex.isa, v1742);
  }

  v762 = v1752;
  if (!is_mul_ok(v749, v1742))
  {
    sub_239E552A0(a6, "Too many vertices in OBJ file");
    goto LABEL_38;
  }

  v1729 = v749 * v1742;
  if ((a4 & 1) == 0)
  {
    v764 = objc_msgSend_vertexDescriptor(v1744, v750, v751, v752, v757, v758, v759, v760, v753, v754, v755, v756);
    v765 = v764 == 0;

    v776 = 4 * v11;
    if (v765)
    {
      v978 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v766, v1729, v767, v772, v773, v774, v775, v768, v769, v770, v771);
      v1810[0] = v978;
      v989 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v979, v776, v980, v985, v986, v987, v988, v981, v982, v983, v984);
      v1810[1] = v989;
      v977 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v990, v1810, 2, v995, v996, v997, v998, v991, v992, v993, v994);

      v974 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v999, 1, v1000, v1005, v1006, v1007, v1008, v1001, v1002, v1003, v1004);
      v1809[0] = v974;
      v975 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v1009, 2, v1010, v1015, v1016, v1017, v1018, v1011, v1012, v1013, v1014);
      v1809[1] = v975;
      v976 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1019, v1809, 2, v1024, v1025, v1026, v1027, v1020, v1021, v1022, v1023);
    }

    else
    {
      v777 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v785 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = 0; ; i = v815 + 1)
      {
        v791 = objc_msgSend_vertexDescriptor(v1744, v778, v779, v780, v786, v787, v788, v789, v781, v782, v783, v784);
        v803 = objc_msgSend_layouts(v791, v792, v793, v794, v799, v800, v801, v802, v795, v796, v797, v798);
        v815 = i;
        v816 = objc_msgSend_count(v803, v804, v805, v806, v811, v812, v813, v814, v807, v808, v809, v810) > i;

        if (!v816)
        {
          break;
        }

        v828 = objc_msgSend_vertexDescriptor(v1744, v817, v818, v819, v824, v825, v826, v827, v820, v821, v822, v823);
        v840 = objc_msgSend_layouts(v828, v829, v830, v831, v836, v837, v838, v839, v832, v833, v834, v835);
        v851 = objc_msgSend_objectAtIndexedSubscript_(v840, v841, v815, v842, v847, v848, v849, v850, v843, v844, v845, v846);
        v863 = objc_msgSend_stride(v851, v852, v853, v854, v859, v860, v861, v862, v855, v856, v857, v858) == 0;

        if (!v863)
        {
          v864 = objc_msgSend_vertexDescriptor(v1744, v778, v779, v780, v786, v787, v788, v789, v781, v782, v783, v784);
          v876 = objc_msgSend_layouts(v864, v865, v866, v867, v872, v873, v874, v875, v868, v869, v870, v871);
          v887 = objc_msgSend_objectAtIndexedSubscript_(v876, v877, v815, v878, v883, v884, v885, v886, v879, v880, v881, v882);
          v899 = objc_msgSend_stride(v887, v888, v889, v890, v895, v896, v897, v898, v891, v892, v893, v894);

          v910 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v900, v899 * v1742, v901, v906, v907, v908, v909, v902, v903, v904, v905);
          objc_msgSend_addObject_(v777, v911, v910, v912, v917, v918, v919, v920, v913, v914, v915, v916);

          v931 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v921, 1, v922, v927, v928, v929, v930, v923, v924, v925, v926);
          objc_msgSend_addObject_(v785, v932, v931, v933, v938, v939, v940, v941, v934, v935, v936, v937);
        }
      }

      v942 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v817, v776, v819, v824, v825, v826, v827, v820, v821, v822, v823);
      objc_msgSend_addObject_(v777, v943, v942, v944, v949, v950, v951, v952, v945, v946, v947, v948);

      v963 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v953, 2, v954, v959, v960, v961, v962, v955, v956, v957, v958);
      objc_msgSend_addObject_(v785, v964, v963, v965, v970, v971, v972, v973, v966, v967, v968, v969);

      v974 = v777;
      v975 = v785;
      v976 = v975;
      v977 = v974;
    }

    v762 = v1752;
  }

  v1775 = 0;
  v1774 = 0;
  v1776 = 0;
  sub_239E95D48(&v1774, 2 * v1742);
  v1772 = 0;
  v1771 = 0;
  v1773 = 0;
  if (a5)
  {
    NSLog(&cfstr_AddingDSubmesh.isa, 0xCCCCCCCCCCCCCCCDLL * ((v762[19] - v762[18]) >> 4));
  }

  v1730 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1743 = v762[18];
  v1733 = v762[19];
  if (v1743 != v1733)
  {
    v1035 = xmmword_239F9BF00;
    while (1)
    {
      v1775 = v1774;
      if (a4)
      {
        v1039 = *(v1743 + 72);
        v1040 = v1039 - 3;
        v1041 = 2;
        if (v1039 == 4)
        {
          v1041 = 4;
        }

        v1042 = 5;
        if (v1039 == 1)
        {
          v1042 = 0;
        }

        if (v1039 == 2)
        {
          v1043 = 1;
        }

        else
        {
          v1043 = v1042;
        }

        if (v1040 < 2)
        {
          v1043 = v1041;
        }

        v1747 = v1043;
        v1044 = *(v1743 + 48);
        v1045 = *(v1743 + 56);
        while (v1044 != v1045)
        {
          v1046 = v1044[1] - *v1044;
          LODWORD(v1793[0]) = v1046 >> 4;
          sub_239E73254(&v1771, v1793);
          if ((v1046 >> 4))
          {
            v1047 = 0;
            v1048 = v1046 & 0xFFFFFFFF0;
            do
            {
              v1793[0] = (*v1044 + v1047);
              v1049 = sub_239E95ED0(&v1780, v1793[0], &unk_239F9BFF0, v1793);
              sub_239E73254(&v1774, v1049[2].i32);
              v1047 += 16;
            }

            while (v1048 != v1047);
          }

          v1044 += 3;
        }

        goto LABEL_176;
      }

      v1051 = *(v1743 + 48);
      v1050 = *(v1743 + 56);
      if (v1051 != v1050)
      {
        break;
      }

LABEL_175:
      v1747 = 2;
LABEL_176:
      v1161 = v1775 - v1774;
      if (v1775 != v1774)
      {
        v1162 = objc_alloc(MEMORY[0x277CBEA90]);
        v1750 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v1162, v1163, v1774, v1161, v1167, v1168, v1169, v1170, 0, v1164, v1165, v1166);
        v1182 = objc_msgSend_bufferAllocator(v1744, v1171, v1172, v1173, v1178, v1179, v1180, v1181, v1174, v1175, v1176, v1177);
        v1191 = objc_msgSend_newBufferFromZone_data_type_(v1182, v1183, 0, v1750, v1187, v1188, v1189, v1190, 2, v1184, v1185, v1186);

        if (objc_msgSend_conformsToProtocol_(v1191, v1192, &unk_284D24D98, v1193, v1198, v1199, v1200, v1201, v1194, v1195, v1196, v1197))
        {
          v1202 = v1191;
          v1213 = objc_msgSend_stringByAppendingString_(@"MDL_OBJ", v1203, @"-Indices", v1204, v1209, v1210, v1211, v1212, v1205, v1206, v1207, v1208);
          objc_msgSend_setName_(v1202, v1214, v1213, v1215, v1220, v1221, v1222, v1223, v1216, v1217, v1218, v1219);
        }

        if (!v1191)
        {
          sub_239E552A0(a6, "Could not allocate index buffer");
          v1305 = v1750;
          goto LABEL_286;
        }

        v1224 = objc_alloc(MEMORY[0x277CCACA8]);
        v1234 = (v1743 + 24);
        if (*(v1743 + 47) < 0)
        {
          v1234 = *v1234;
        }

        v1235 = objc_msgSend_initWithCString_encoding_(v1224, v1225, v1234, 4, v1230, v1231, v1232, v1233, v1226, v1227, v1228, v1229);
        v1761 = 0u;
        v1762 = 0u;
        v1759 = 0u;
        v1760 = 0u;
        v1236 = v1735;
        v1252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1236, v1237, &v1759, v1808, v1241, v1242, v1243, v1244, 16, v1238, v1239, v1240);
        if (v1252)
        {
          v1257 = *v1760;
LABEL_184:
          v1258 = 0;
          while (1)
          {
            if (*v1760 != v1257)
            {
              objc_enumerationMutation(v1236);
            }

            v1259 = *(*(&v1759 + 1) + 8 * v1258);
            v1260 = objc_msgSend_name(v1259, v1245, v1246, v1247, v1253, v1254, v1255, v1256, v1248, v1249, v1250, v1251);
            isEqualToString = objc_msgSend_isEqualToString_(v1260, v1261, v1235, v1262, v1267, v1268, v1269, v1270, v1263, v1264, v1265, v1266);

            if (isEqualToString)
            {
              break;
            }

            if (v1252 == ++v1258)
            {
              v1252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1236, v1245, &v1759, v1808, v1253, v1254, v1255, v1256, 16, v1249, v1250, v1251);
              if (v1252)
              {
                goto LABEL_184;
              }

              goto LABEL_190;
            }
          }

          v1283 = v1259;

          if (v1283)
          {
            goto LABEL_195;
          }
        }

        else
        {
LABEL_190:
        }

        if (objc_msgSend_count(v1236, v1272, v1273, v1274, v1279, v1280, v1281, v1282, v1275, v1276, v1277, v1278))
        {
          v1283 = objc_msgSend_objectAtIndex_(v1236, v1284, 0, v1285, v1290, v1291, v1292, v1293, v1286, v1287, v1288, v1289);
        }

        else
        {
          v1294 = [MDLMaterial alloc];
          v1295 = objc_opt_new();
          v1283 = objc_msgSend_initWithName_scatteringFunction_(v1294, v1296, v1235, v1295, v1301, v1302, v1303, v1304, v1297, v1298, v1299, v1300);
        }

LABEL_195:
        if (a4)
        {
          v1305 = objc_alloc_init(MDLSubmeshTopology);
          v1306 = v1772;
          v1307 = v1771;
          v1319 = objc_msgSend_bufferAllocator(v1744, v1308, v1309, v1310, v1315, v1316, v1317, v1318, v1311, v1312, v1313, v1314);
          v1328 = objc_msgSend_newBufferFromZone_length_type_(v1319, v1320, 0, (v1306 - v1307) >> 2, v1324, v1325, v1326, v1327, 1, v1321, v1322, v1323);
          objc_msgSend_setFaceTopology_(v1305, v1329, v1328, v1330, v1335, v1336, v1337, v1338, v1331, v1332, v1333, v1334);

          v1350 = objc_msgSend_faceTopology(v1305, v1339, v1340, v1341, v1346, v1347, v1348, v1349, v1342, v1343, v1344, v1345);
          LODWORD(v1328) = objc_msgSend_conformsToProtocol_(v1350, v1351, &unk_284D24D98, v1352, v1357, v1358, v1359, v1360, v1353, v1354, v1355, v1356);

          if (v1328)
          {
            v1372 = objc_msgSend_faceTopology(v1305, v1361, v1362, v1363, v1368, v1369, v1370, v1371, v1364, v1365, v1366, v1367);
            v1383 = objc_msgSend_stringByAppendingString_(@"MDL_OBJ", v1373, @"-Topology", v1374, v1379, v1380, v1381, v1382, v1375, v1376, v1377, v1378);
            objc_msgSend_setName_(v1372, v1384, v1383, v1385, v1390, v1391, v1392, v1393, v1386, v1387, v1388, v1389);
          }

          v1394 = objc_msgSend_faceTopology(v1305, v1361, v1362, v1363, v1368, v1369, v1370, v1371, v1364, v1365, v1366, v1367);
          v1395 = v1394 == 0;

          if (v1395)
          {
            sub_239E552A0(a6, "Could not allocate topology buffer");

            goto LABEL_284;
          }

          v1407 = objc_msgSend_faceTopology(v1305, v1396, v1397, v1398, v1403, v1404, v1405, v1406, v1399, v1400, v1401, v1402);
          v1419 = objc_msgSend_map(v1407, v1408, v1409, v1410, v1415, v1416, v1417, v1418, v1411, v1412, v1413, v1414);

          v1431 = objc_msgSend_bytes(v1419, v1420, v1421, v1422, v1427, v1428, v1429, v1430, v1423, v1424, v1425, v1426);
          v1442 = v1771;
          if (v1772 == v1771)
          {
            v1444 = (v1772 - v1771) >> 2;
          }

          else
          {
            v1443 = 0;
            do
            {
              *(v1431 + v1443) = v1442[v1443];
              ++v1443;
              v1442 = v1771;
              v1444 = (v1772 - v1771) >> 2;
            }

            while (v1444 > v1443);
          }

          objc_msgSend_setFaceCount_(v1305, v1432, v1444, v1433, v1438, v1439, v1440, v1441, v1434, v1435, v1436, v1437);
        }

        else
        {
          v1305 = 0;
        }

        v1445 = v1743;
        if (*(v1743 + 23) < 0)
        {
          v1445 = *v1743;
        }

        v1446 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v1272, v1445, 4, v1279, v1280, v1281, v1282, v1275, v1276, v1277, v1278);
        v1447 = [MDLSubmesh alloc];
        v1453 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v1447, v1448, v1446, v1191, v1449, v1450, v1451, v1452, (v1775 - v1774) >> 2, 32, v1747, v1283, v1305);
        objc_msgSend_addObject_(v1730, v1454, v1453, v1455, v1460, v1461, v1462, v1463, v1456, v1457, v1458, v1459);
        v1772 = v1771;
      }

      v1743 += 80;
      if (v1743 == v1733)
      {
        goto LABEL_210;
      }
    }

    v1734 = *(v1743 + 56);
    while (1)
    {
      v1052 = *v1051;
      v1053 = v1051[1] - *v1051;
      v1054 = v1053 >> 4;
      v1770 = 0;
      v1769 = 0;
      if ((v1053 >> 4) == 3)
      {
        v1793[0] = v1052;
        HIDWORD(v1770) = sub_239E95ED0(&v1780, v1052, &unk_239F9BFF0, v1793)[2].i32[0];
        v1793[0] = &(*v1051)[1];
        LODWORD(v1770) = sub_239E95ED0(&v1780, v1793[0], &unk_239F9BFF0, v1793)[2].i32[0];
        v1793[0] = &(*v1051)[2];
        v1769 = sub_239E95ED0(&v1780, v1793[0], &unk_239F9BFF0, v1793)[2].i32[0];
        sub_239E73254(&v1774, &v1770 + 1);
        sub_239E73254(&v1774, &v1770);
        v1055 = &v1769;
      }

      else if (v1054 == 2)
      {
        v1793[0] = v1052;
        HIDWORD(v1770) = sub_239E95ED0(&v1780, v1052, &unk_239F9BFF0, v1793)[2].i32[0];
        v1793[0] = &(*v1051)[1];
        LODWORD(v1770) = sub_239E95ED0(&v1780, v1793[0], &unk_239F9BFF0, v1793)[2].i32[0];
        sub_239E73254(&v1774, &v1770 + 1);
        v1055 = &v1770;
        sub_239E73254(&v1774, &v1770);
      }

      else
      {
        if (v1054 != 1)
        {
          v1767 = 0;
          v1766 = 0;
          v1768 = 0;
          if (v1054 < 1)
          {
            v1059 = 0;
            v1058 = 0;
          }

          else
          {
            v1056 = 0;
            v1057 = (v1053 >> 4) & 0x7FFFFFFF;
            do
            {
              LODWORD(v1793[0]) = (*v1051)[v1056].i32[0];
              sub_239E73254(&v1766, v1793);
              ++v1056;
            }

            while (v1057 != v1056);
            v1058 = v1767;
            v1059 = v1766;
          }

          v1763 = 0;
          v1764 = 0;
          v1765 = 0;
          v1060 = v1058 - v1059;
          if (v1060 == 16)
          {
            v1061 = *v1752 + 12 * *v1059;
            v1035.n128_u64[0] = *v1061;
            v1035.n128_u32[2] = *(v1061 + 8);
            v1062 = *v1752 + 12 * v1059[1];
            v1037.n128_u64[0] = *v1062;
            v1037.n128_u32[2] = *(v1062 + 8);
            v1063 = *v1752 + 12 * v1059[2];
            v1038.n128_u64[0] = *v1063;
            v1038.n128_u32[2] = *(v1063 + 8);
            v1064 = *v1752 + 12 * v1059[3];
            v1036.n128_u64[0] = *v1064;
            v1036.n128_u32[2] = *(v1064 + 8);
            v1065 = vsubq_f32(v1037, v1035);
            v1066 = vsubq_f32(v1036, v1038);
            v1067 = vextq_s8(vuzp1q_s32(v1065, v1065), v1065, 0xCuLL);
            v1068 = vextq_s8(vuzp1q_s32(v1066, v1066), v1066, 0xCuLL);
            v1069 = vsubq_f32(v1036, v1037);
            v1070 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v1069, v1069), v1069, 0xCuLL), v1065)), v1067, v1069);
            v1071 = vsubq_f32(v1038, v1037);
            v1072 = vextq_s8(vuzp1q_s32(v1071, v1071), v1071, 0xCuLL);
            v1073 = vmlaq_f32(vnegq_f32(vmulq_f32(v1068, v1071)), v1072, v1066);
            v1074 = vmulq_f32(v1070, v1073);
            if (((v1074.f32[2] + v1074.f32[0]) + v1074.f32[1]) >= 0.0)
            {
              v1090 = vsubq_f32(v1038, v1035);
              v1091 = vmlaq_f32(vnegq_f32(vmulq_f32(v1068, v1090)), vextq_s8(vuzp1q_s32(v1090, v1090), v1090, 0xCuLL), v1066);
              v1092 = vmlaq_f32(vnegq_f32(vmulq_f32(v1072, v1065)), v1067, v1071);
              v1093 = vmulq_f32(v1091, v1092);
              if (((v1093.f32[2] + v1093.f32[0]) + v1093.f32[1]) >= 0.0)
              {
                v1139 = vmulq_f32(v1070, v1070);
                v1140 = vmulq_f32(v1073, v1073);
                v1139.f32[0] = vabds_f32(fabsf((v1139.f32[2] + v1139.f32[0]) + v1139.f32[1]), fabsf((v1140.f32[2] + v1140.f32[0]) + v1140.f32[1]));
                v1141 = vmulq_f32(v1092, v1092);
                v1142 = vmulq_f32(v1091, v1091);
                if (v1139.f32[0] >= vabds_f32(fabsf((v1141.f32[2] + v1141.f32[0]) + v1141.f32[1]), fabsf((v1142.f32[2] + v1142.f32[0]) + v1142.f32[1])))
                {
                  *v1793 = xmmword_239F9BED0;
                  sub_239E8E4FC(&v1763, v1793);
                  *v1793 = xmmword_239F9BEE0;
                }

                else
                {
                  *v1793 = xmmword_239F9BEF0;
                  sub_239E8E4FC(&v1763, v1793);
                  *v1793 = xmmword_239F9BF00;
                }

                sub_239E8E4FC(&v1763, v1793);
              }

              else
              {
                *v1793 = xmmword_239F9BEF0;
                sub_239E8E4FC(&v1763, v1793);
                *v1793 = xmmword_239F9BF00;
                sub_239E8E4FC(&v1763, v1793);
              }
            }

            else
            {
              *v1793 = xmmword_239F9BED0;
              sub_239E8E4FC(&v1763, v1793);
              *v1793 = xmmword_239F9BEE0;
              sub_239E8E4FC(&v1763, v1793);
            }
          }

          else
          {
            v1785 = 0;
            v1784 = 0;
            v1786 = 0;
            sub_239E96128(&v1784, v1060 >> 2);
            v1783[0] = v1783;
            v1783[1] = v1783;
            v1783[2] = 0;
            if (v1767 != v1766)
            {
              v1076 = *v1752 + 12 * *v1766;
              *&v1075 = *v1076;
              DWORD2(v1075) = *(v1076 + 8);
              *v1793 = v1075;
              sub_239E8E4FC(&v1784, v1793);
              operator new();
            }

            v1077 = v1784;
            if (v1785 == v1784)
            {
              v1080 = 0uLL;
            }

            else
            {
              v1078 = (v1785 - v1784) >> 4;
              if (v1078 <= 1)
              {
                v1079 = 1;
              }

              else
              {
                v1079 = (v1785 - v1784) >> 4;
              }

              v1080 = 0uLL;
              v1081 = 1;
              v1082 = v1784;
              do
              {
                v1083 = *(v1784 + (v1081 % v1078));
                v1084 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v1083, v1083), v1083, 0xCuLL), *v1082)), vextq_s8(vuzp1q_s32(*v1082, *v1082), *v1082, 0xCuLL), v1083);
                v1085 = vmulq_f32(v1084, v1084);
                v1086 = (v1085.f32[2] + v1085.f32[0]) + v1085.f32[1];
                if (v1086 >= 0.000001)
                {
                  v1087 = v1086;
                  v1088 = vrsqrte_f32(LODWORD(v1086));
                  v1089 = vmul_f32(vrsqrts_f32(LODWORD(v1087), vmul_f32(v1088, v1088)), v1088);
                  v1080 = vmlaq_n_f32(v1080, vextq_s8(vuzp1q_s32(v1084, v1084), v1084, 0xCuLL), vmul_f32(v1089, vrsqrts_f32(LODWORD(v1087), vmul_f32(v1089, v1089))).f32[0]);
                }

                ++v1081;
                ++v1082;
                --v1079;
              }

              while (v1079);
            }

            v1094 = vmulq_f32(v1080, v1080);
            v1095 = vaddv_f32(*v1094.f32) + v1094.f32[2];
            if (v1095 >= 0.000001)
            {
              v1096 = v1095;
              v1097 = vrsqrte_f32(LODWORD(v1095));
              v1098 = vmul_f32(vrsqrts_f32(LODWORD(v1096), vmul_f32(v1097, v1097)), v1097);
              v1099 = vmulq_n_f32(v1080, vmul_f32(v1098, vrsqrts_f32(LODWORD(v1096), vmul_f32(v1098, v1098))).f32[0]);
              v1100 = *v1784;
              v1797 = 0;
              __src = 0;
              v1798 = 0;
              v1101 = vextq_s8(vuzp1q_s32(v1099, v1099), v1099, 0xCuLL);
              *v1793 = 0u;
              v1794 = 0u;
              v1795 = 1065353216;
              if (v1785 == v1784)
              {
                v1127 = 0;
                v1138 = 0;
                v1791 = 0;
                v1790 = 0;
                v1792 = 0;
                goto LABEL_147;
              }

              v1102 = 0;
              v1103 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v1100, v1100), v1100, 0xCuLL), v1099)), v1100, v1101);
              v1104 = vextq_s8(vuzp1q_s32(v1103, v1103), v1103, 0xCuLL);
              v1105 = vmulq_f32(v1103, v1103);
              *&v1106 = (v1105.f32[2] + v1105.f32[0]) + v1105.f32[1];
              *v1105.f32 = vrsqrte_f32(v1106);
              *v1105.f32 = vmul_f32(vrsqrts_f32(v1106, vmul_f32(*v1105.f32, *v1105.f32)), *v1105.f32);
              v1749 = vmulq_n_f32(v1104, vmul_f32(*v1105.f32, vrsqrts_f32(v1106, vmul_f32(*v1105.f32, *v1105.f32))).f32[0]);
              v1107 = vmlaq_f32(vnegq_f32(vmulq_f32(v1749, v1101)), v1099, vextq_s8(vuzp1q_s32(v1749, v1749), v1749, 0xCuLL));
              v1108 = vextq_s8(vuzp1q_s32(v1107, v1107), v1107, 0xCuLL);
              v1109 = vmulq_f32(v1107, v1107);
              *&v1110 = (v1109.f32[2] + v1109.f32[0]) + v1109.f32[1];
              *v1109.f32 = vrsqrte_f32(v1110);
              *v1109.f32 = vmul_f32(vrsqrts_f32(v1110, vmul_f32(*v1109.f32, *v1109.f32)), *v1109.f32);
              v1745 = vmulq_n_f32(v1108, vmul_f32(*v1109.f32, vrsqrts_f32(v1110, vmul_f32(*v1109.f32, *v1109.f32))).f32[0]);
              while (1)
              {
                v1111 = v1077[v1102];
                v1112 = vmulq_f32(v1111, v1749);
                v1113 = vmulq_f32(v1111, v1745);
                v1114 = vadd_f32(vzip1_s32(*v1112.i8, *v1113.i8), vzip2_s32(*v1112.i8, *v1113.i8));
                v1115 = vextq_s8(v1113, v1113, 8uLL);
                *v1115.f32 = vadd_f32(v1114, vzip1_s32(*&vextq_s8(v1112, v1112, 8uLL), *v1115.f32));
                *&v1801 = v1115.i64[0];
                v1116 = v1797;
                if (v1797 >= v1798)
                {
                  v1118 = (v1797 - __src) >> 3;
                  if ((v1118 + 1) >> 61)
                  {
                    sub_239E797B4();
                  }

                  v1119 = (v1798 - __src) >> 2;
                  if (v1119 <= v1118 + 1)
                  {
                    v1119 = v1118 + 1;
                  }

                  if (v1798 - __src >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v1120 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v1120 = v1119;
                  }

                  if (v1120)
                  {
                    sub_239E95BB4(&__src, v1120);
                  }

                  *(8 * v1118) = v1115.i64[0];
                  v1117 = 8 * v1118 + 8;
                  v1121 = (8 * v1118 - (v1797 - __src));
                  memcpy(v1121, __src, v1797 - __src);
                  v1122 = __src;
                  __src = v1121;
                  v1797 = v1117;
                  v1798 = 0;
                  if (v1122)
                  {
                    operator delete(v1122);
                  }
                }

                else
                {
                  *v1797 = v1115.i64[0];
                  v1117 = (v1116 + 8);
                }

                v1797 = v1117;
                if (sub_239E9627C(v1793, &v1801, v1115))
                {
                  v1803 = &v1801;
                  v1124 = sub_239E96378(v1793, &v1801, &unk_239F9BFF0, &v1803, v1123);
                  ++v1124[3].i32[0];
                }

                else
                {
                  v1803 = &v1801;
                  sub_239E96378(v1793, &v1801, &unk_239F9BFF0, &v1803, v1123)[3].i32[0] = 0;
                }

                v1803 = &v1801;
                if (sub_239E96378(v1793, &v1801, &unk_239F9BFF0, &v1803, v1125)[3].i32[0] >= 3)
                {
                  break;
                }

                ++v1102;
                v1077 = v1784;
                if (v1102 >= (v1785 - v1784) >> 4)
                {
                  v1126 = __src;
                  v1791 = 0;
                  v1790 = 0;
                  v1792 = 0;
                  v1127 = 0;
                  if (v1797 == __src)
                  {
                    v1138 = 0;
                  }

                  else
                  {
                    v1128 = 0;
                    v1129 = (v1797 - __src) >> 3;
                    do
                    {
                      v1130 = v1126[v1128++];
                      v1131 = v1126[v1128 % v1129];
                      if (v1127 >= v1792)
                      {
                        v1132 = (v1127 - v1790) >> 4;
                        if ((v1132 + 1) >> 60)
                        {
                          sub_239E797B4();
                        }

                        v1133 = (v1792 - v1790) >> 3;
                        if (v1133 <= v1132 + 1)
                        {
                          v1133 = v1132 + 1;
                        }

                        if (v1792 - v1790 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v1134 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v1134 = v1133;
                        }

                        if (v1134)
                        {
                          sub_239E91AC8(&v1790, v1134);
                        }

                        v1135 = (16 * v1132);
                        *v1135 = v1130;
                        v1135[1] = v1131;
                        v1127 = (16 * v1132 + 16);
                        v1136 = v1135 - (v1791 - v1790);
                        memcpy(v1136, v1790, v1791 - v1790);
                        v1137 = v1790;
                        v1790 = v1136;
                        v1791 = v1127;
                        v1792 = 0;
                        if (v1137)
                        {
                          operator delete(v1137);
                        }
                      }

                      else
                      {
                        *v1127 = v1130;
                        *(v1127 + 1) = v1131;
                        v1127 += 16;
                      }

                      v1791 = v1127;
                      v1126 = __src;
                      v1129 = (v1797 - __src) >> 3;
                    }

                    while (v1129 > v1128);
                    v1138 = v1790;
                  }

LABEL_147:
                  v1788 = 0;
                  v1787 = 0;
                  v1789 = 0;
                  sub_239E98290(&v1787, v1138, v1127, (v1127 - v1138) >> 4);
                  v1804 = 0;
                  v1803 = 0;
                  v1805 = 0;
                  v1144 = v1787;
                  if (v1788 == v1787)
                  {
                    v1152 = 0;
                    v1151 = 0;
                  }

                  else
                  {
                    v1145 = 0;
                    v1146 = 0;
                    do
                    {
                      v1147 = *&v1144[v1145];
                      v1148 = *&v1144[v1145 + 8];
                      v1149 = vcgt_f32(v1147, v1148);
                      if (v1149.i8[0] & 1) != 0 || (vceq_f32(v1147, v1148).u8[0] & 1) != 0 && (v1149.i8[4])
                      {
                        *&v1144[v1145] = v1148;
                        *(v1787 + v1145 + 8) = v1147;
                        v1144 = v1787;
                      }

                      v1801 = 0uLL;
                      v1802 = 0;
                      v1150 = &v1144[v1145];
                      *&v1801 = *v1150;
                      *(&v1801 + 1) = v1150;
                      LOBYTE(v1802) = 1;
                      v1799 = 0uLL;
                      v1800 = 0;
                      *&v1799 = *(v1150 + 1);
                      *(&v1799 + 1) = v1150;
                      sub_239E965D0(&v1803, &v1801);
                      sub_239E965D0(&v1803, &v1799);
                      ++v1146;
                      v1144 = v1787;
                      v1145 += 16;
                    }

                    while (v1146 < (v1788 - v1787) >> 4);
                    v1151 = v1803;
                    v1152 = v1804;
                  }

                  v1153 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v1152 - v1151) >> 3));
                  *&v1801 = sub_239E96704;
                  if (v1152 == v1151)
                  {
                    v1154 = 0;
                  }

                  else
                  {
                    v1154 = v1153;
                  }

                  sub_239E96984(v1151, v1152, &v1801, v1154, 1, v1143);
                  operator new();
                }
              }

              sub_239E7B644(v1793);
              if (__src)
              {
                v1797 = __src;
                operator delete(__src);
              }

              v1764 = v1763;
              if ((((v1785 - v1784) >> 4) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v1155 = 0;
                do
                {
                  LODWORD(v1156) = 0;
                  DWORD1(v1156) = v1155 + 1;
                  *(&v1156 + 1) = (v1155 + 2);
                  *v1793 = v1156;
                  sub_239E8E4FC(&v1763, v1793);
                  v1157 = v1155 + 2;
                  ++v1155;
                }

                while (((v1785 - v1784) >> 4) - 1 > v1157);
              }
            }

            sub_239E9876C(v1783);
            if (v1784)
            {
              v1785 = v1784;
              operator delete(v1784);
            }

            v1050 = v1734;
          }

          v1767 = v1766;
          v1158 = v1763;
          if (v1764 != v1763)
          {
            v1159 = 0;
            v1160 = 0;
            do
            {
              v1793[0] = &(*v1051)[*&v1158[v1159]];
              LODWORD(v1803) = sub_239E95ED0(&v1780, v1793[0], &unk_239F9BFF0, v1793)[2].i32[0];
              sub_239E73254(&v1774, &v1803);
              v1793[0] = &(*v1051)[*&v1763[v1159 + 4]];
              LODWORD(v1803) = sub_239E95ED0(&v1780, v1793[0], &unk_239F9BFF0, v1793)[2].i32[0];
              sub_239E73254(&v1774, &v1803);
              v1793[0] = &(*v1051)[*&v1763[v1159 + 8]];
              LODWORD(v1803) = sub_239E95ED0(&v1780, v1793[0], &unk_239F9BFF0, v1793)[2].i32[0];
              sub_239E73254(&v1774, &v1803);
              ++v1160;
              v1158 = v1763;
              v1159 += 16;
            }

            while (v1160 < (v1764 - v1763) >> 4);
          }

          if (v1158)
          {
            v1764 = v1158;
            operator delete(v1158);
          }

          if (v1766)
          {
            v1767 = v1766;
            operator delete(v1766);
          }

          goto LABEL_80;
        }

        v1793[0] = v1052;
        HIDWORD(v1770) = sub_239E95ED0(&v1780, v1052, &unk_239F9BFF0, v1793)[2].i32[0];
        sub_239E73254(&v1774, &v1770 + 1);
        v1055 = &v1770 + 1;
        sub_239E73254(&v1774, &v1770 + 1);
      }

      sub_239E73254(&v1774, v1055);
LABEL_80:
      v1051 += 3;
      if (v1051 == v1050)
      {
        goto LABEL_175;
      }
    }
  }

LABEL_210:
  v1464 = objc_msgSend_vertexDescriptor(v1744, v1028, v1029, v1030, v1035, v1036, v1037, v1038, v1031, v1032, v1033, v1034);
  v1465 = v1464 == 0;

  if (v1465)
  {
    v1477 = objc_msgSend_bufferAllocator(v1744, v1466, v1467, v1468, v1473, v1474, v1475, v1476, v1469, v1470, v1471, v1472);
    v1487 = objc_msgSend_newBufferFromZone_length_type_(v1477, v1488, 0, v1729, v1492, v1493, v1494, v1495, 1, v1489, v1490, v1491);
  }

  else
  {
    v1477 = objc_alloc_init(MDLMeshBufferDataAllocator);
    v1487 = objc_msgSend_newBuffer_type_(v1477, v1478, v1729, 1, v1483, v1484, v1485, v1486, v1479, v1480, v1481, v1482);
  }

  v1305 = v1487;

  if (!v1305)
  {
    sub_239E552A0(a6, "Could not allocate vertex buffer");
    goto LABEL_286;
  }

  if (objc_msgSend_conformsToProtocol_(v1305, v1496, &unk_284D24D98, v1497, v1502, v1503, v1504, v1505, v1498, v1499, v1500, v1501))
  {
    v1517 = v1305;
    v1528 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v1518, @"%@-%@", v1519, v1524, v1525, v1526, v1527, v1520, v1521, v1522, v1523, @"MDL_OBJ", @"position");
    objc_msgSend_setName_(v1517, v1529, v1528, v1530, v1535, v1536, v1537, v1538, v1531, v1532, v1533, v1534);
  }

  v1539 = objc_msgSend_map(v1305, v1506, v1507, v1508, v1513, v1514, v1515, v1516, v1509, v1510, v1511, v1512);
  v1551 = objc_msgSend_bytes(v1539, v1540, v1541, v1542, v1547, v1548, v1549, v1550, v1543, v1544, v1545, v1546);

  v1555 = 0;
  v1556 = 6;
  if (v1741 == v1740)
  {
    v1556 = 3;
  }

  v1557 = 4;
  if (!v1732)
  {
    v1557 = 0;
  }

  v1558 = 2;
  if (v1739 == v1738)
  {
    v1559 = 0;
  }

  else
  {
    v1559 = 2;
  }

  if (v1737 == v1736)
  {
    v1558 = 0;
  }

  v1560 = v1559 + v1556 + v1558 + v1557;
  v1561 = *v1752;
  v1562 = 0xAAAAAAAAAAAAAAABLL * ((v1752[1] - *v1752) >> 2);
  v1563 = __p;
  v1564 = v1752[9];
  v1565 = 0xAAAAAAAAAAAAAAABLL * ((v1752[10] - v1564) >> 2);
  v1566 = v1752[12];
  v1567 = (v1752[13] - v1566) >> 4;
  v1568 = v1752[3];
  v1569 = (v1752[4] - v1568) >> 3;
  v1570 = v1752[6];
  v1571 = (v1752[7] - v1570) >> 3;
  v1572 = (v1551 + 20);
  v1573 = 4 * v1560;
  __asm { FMOV            V0.2S, #1.0 }

  v1553.n128_u64[0] = 0x3F80000000000000;
  do
  {
    v1578 = v1563[v1555];
    if ((v1578.n128_u32[0] & 0x80000000) != 0 || v1562 <= v1578.n128_u32[0])
    {
      *(v1572 - 5) = 0;
      v1554.n128_u64[0] = 0;
    }

    else
    {
      v1579 = (v1561 + 12 * v1578.n128_u32[0]);
      *(v1572 - 5) = *v1579;
      *(v1572 - 4) = v1579[1];
      v1554.n128_u32[0] = v1579[2];
    }

    *(v1572 - 3) = v1554.n128_u32[0];
    if (v1741 == v1740)
    {
      v1581 = 3;
      if (!v1732)
      {
        goto LABEL_247;
      }

LABEL_238:
      if ((v1578.n128_u32[3] & 0x80000000) != 0 || v1567 <= v1578.n128_u32[3])
      {
        v1584 = (v1551 + 4 * v1555 * v1560 + 4 * v1581);
        v1585 = &v1572[v1581];
        if ((v1578.n128_u32[0] & 0x80000000) != 0 || v1567 <= v1578.n128_u32[0])
        {
          *(v1585 - 5) = 1065353216;
          *(v1585 - 2) = _Q0.n128_u64[0];
          v1554.n128_u32[0] = 1.0;
          goto LABEL_246;
        }

        v1582 = (v1566 + 16 * v1578.n128_u32[0]);
        *(v1585 - 5) = *v1582;
        *(v1585 - 4) = v1582[1];
        *(v1585 - 3) = v1582[2];
      }

      else
      {
        v1582 = (v1566 + 16 * v1578.n128_u32[3]);
        v1583 = &v1572[v1581];
        *(v1583 - 5) = *v1582;
        v1584 = v1583 - 5;
        v1584[1] = v1582[1];
        v1584[2] = v1582[2];
      }

      v1554.n128_u32[0] = v1582[3];
LABEL_246:
      v1581 += 4;
      v1584[3] = v1554.n128_u32[0];
      goto LABEL_247;
    }

    if ((v1578.n128_u32[2] & 0x80000000) != 0 || v1565 <= v1578.n128_u32[2])
    {
      *(v1572 - 1) = 0x3F80000000000000;
      v1554.n128_u64[0] = 0;
    }

    else
    {
      v1580 = (v1564 + 12 * v1578.n128_u32[2]);
      *(v1572 - 2) = *v1580;
      *(v1572 - 1) = v1580[1];
      v1554.n128_u32[0] = v1580[2];
    }

    *v1572 = v1554.n128_u32[0];
    v1581 = 6;
    if (v1732)
    {
      goto LABEL_238;
    }

LABEL_247:
    v1586 = v1578.n128_u32[1];
    if (v1739 != v1738)
    {
      v1587 = &v1572[v1581];
      if ((v1578.n128_u32[1] & 0x80000000) != 0 || v1569 <= v1578.n128_u32[1])
      {
        *(v1587 - 5) = 0;
        v1578.n128_u64[0] = 0;
      }

      else
      {
        v1588 = (v1568 + 8 * v1578.n128_u32[1]);
        *(v1587 - 5) = *v1588;
        v1578.n128_u32[0] = v1588[1];
      }

      v1581 += 2;
      *(v1587 - 4) = v1578.n128_u32[0];
    }

    if (v1737 != v1736)
    {
      v1589 = &v1572[v1581];
      if ((v1586 & 0x80000000) != 0 || v1571 <= v1586)
      {
        *(v1589 - 5) = 0;
        v1578.n128_u64[0] = 0;
      }

      else
      {
        v1590 = &v1570[8 * v1586];
        *(v1589 - 5) = *v1590;
        v1578.n128_u32[0] = *(v1590 + 1);
      }

      *(v1589 - 4) = v1578.n128_u32[0];
    }

    ++v1555;
    v1572 = (v1572 + v1573);
  }

  while (v1742 != v1555);
  v1807 = v1305;
  v1751 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1570, &v1807, 1, _Q0, v1553, v1578, v1554, v1573, 12, 1065353216, v1742);
  v1602 = objc_msgSend_vertexDescriptor(v1744, v1591, v1592, v1593, v1598, v1599, v1600, v1601, v1594, v1595, v1596, v1597);
  v1603 = v1602 == 0;

  if (v1603)
  {
    v1686 = v1746;
    v1687 = v1751;
  }

  else
  {
    v1757 = 0u;
    v1758 = 0u;
    v1755 = 0u;
    v1756 = 0u;
    v1614 = objc_msgSend_vertexDescriptor(v1744, v1604, v1605, v1606, 0, v1611, v1612, v1613, v1607, v1608, v1609, v1610);
    v1626 = objc_msgSend_layouts(v1614, v1615, v1616, v1617, v1622, v1623, v1624, v1625, v1618, v1619, v1620, v1621);

    v1642 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1626, v1627, &v1755, v1806, v1631, v1632, v1633, v1634, 16, v1628, v1629, v1630);
    if (!v1642)
    {

      v1687 = v1751;
      goto LABEL_282;
    }

    v1647 = 0;
    v1648 = *v1756;
    do
    {
      for (j = 0; j != v1642; ++j)
      {
        if (*v1756 != v1648)
        {
          objc_enumerationMutation(v1626);
        }

        if (objc_msgSend_stride(*(*(&v1755 + 1) + 8 * j), v1635, v1636, v1637, v1643, v1644, v1645, v1646, v1638, v1639, v1640, v1641))
        {
          ++v1647;
        }
      }

      v1642 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1626, v1635, &v1755, v1806, v1643, v1644, v1645, v1646, 16, v1639, v1640, v1641);
    }

    while (v1642);

    if (v1647 >= 1)
    {
      v1661 = objc_msgSend_vertexDescriptor(v1744, v1650, v1651, v1652, v1657, v1658, v1659, v1660, v1653, v1654, v1655, v1656);
      v1673 = objc_msgSend_bufferAllocator(v1744, v1662, v1663, v1664, v1669, v1670, v1671, v1672, v1665, v1666, v1667, v1668);
      v1674 = sub_239F52A80(v1751, v1742, v1746, v1661, 0, v1673, 1);

      v1686 = objc_msgSend_vertexDescriptor(v1744, v1675, v1676, v1677, v1682, v1683, v1684, v1685, v1678, v1679, v1680, v1681);

      v1687 = v1674;
      goto LABEL_275;
    }

    v1686 = v1746;
    v1687 = v1751;
    if (!v1647)
    {
LABEL_282:
      sub_239E552A0(a6, "No valid vertex descriptor layouts found");
      goto LABEL_285;
    }
  }

LABEL_275:
  v1746 = v1686;
  v1750 = v1687;
  v1688 = [MDLMesh alloc];
  v1696 = objc_msgSend_initWithVertexBuffers_vertexCount_descriptor_submeshes_(v1688, v1689, v1687, v1742, v1692, v1693, v1694, v1695, v1686, v1730, v1690, v1691);
  v1191 = v1696;
  v1707 = v1752[18];
  if (v1752[19] == v1707)
  {
    objc_msgSend_setName_(v1696, v1697, @"OBJ model", v1698, v1703, v1704, v1705, v1706, v1699, v1700, v1701, v1702);
  }

  else
  {
    if (*(v1707 + 23) < 0)
    {
      v1707 = *v1707;
    }

    v1708 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v1697, v1707, 4, v1703, v1704, v1705, v1706, v1699, v1700, v1701, v1702);
    objc_msgSend_setName_(v1191, v1709, v1708, v1710, v1715, v1716, v1717, v1718, v1711, v1712, v1713, v1714);
  }

  objc_msgSend_addObject_(v1744, v1719, v1191, v1720, v1725, v1726, v1727, v1728, v1721, v1722, v1723, v1724);
  sub_239E552A0(a6, "");
LABEL_284:

  v1687 = v1750;
LABEL_285:

LABEL_286:
  if (v1771)
  {
    v1772 = v1771;
    operator delete(v1771);
  }

  v761 = v1746;
  if (v1774)
  {
    v1775 = v1774;
    operator delete(v1774);
  }

LABEL_38:

  if (__p)
  {
    v1778 = __p;
    operator delete(__p);
  }

  sub_239E7B644(&v1780);
}

void sub_239E94BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47)
{
  v52 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v52;
    operator delete(v52);
  }

  v53 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v53;
    operator delete(v53);
  }

  v54 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v54;
    operator delete(v54);
  }

  sub_239E7B644(&STACK[0x270]);

  _Unwind_Resume(a1);
}

void *sub_239E95344(uint64_t **a1, const void **a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_239E5B718(a1, &v4, a2);
  if (!result)
  {
    sub_239E953D0();
  }

  return result;
}

void sub_239E95464(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E95480(v3, v2);
  _Unwind_Resume(a1);
}

void sub_239E95480(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_239E954E4(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_239E797B4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_239E9565C(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(v7 + 72) = *(a2 + 18);
  *&v18 = 80 * v2 + 80;
  v10 = a1[1];
  v11 = 80 * v2 + *a1 - v10;
  sub_239E956B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239E958A4(&v16);
  return v15;
}

void sub_239E95648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E958A4(va);
  _Unwind_Resume(a1);
}

void sub_239E9565C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E956B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 24) = v9;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 3) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = v7[3];
      *(a4 + 64) = *(v7 + 8);
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      *(a4 + 72) = *(v7 + 18);
      v7 += 5;
      a4 += 80;
    }

    while (v7 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      sub_239E957C0(a1, v5);
      v5 += 5;
    }
  }

  return sub_239E95818(v11);
}

void sub_239E957C0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  sub_239E95924(&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_239E95818(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239E95850(a1);
  }

  return a1;
}

void sub_239E95850(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      sub_239E957C0(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_239E958A4(uint64_t a1)
{
  sub_239E958DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239E958DC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_239E957C0(v5, v4 - 80);
  }
}

void sub_239E95924(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E95978(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E95978(uint64_t *a1)
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

uint64_t sub_239E959D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_239E95A5C();
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

uint64_t sub_239E95A74(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    sub_239E95B5C(a1, v6);
  }

  v7 = 4 * ((*(a1 + 8) - *a1) >> 2);
  v8 = *a2;
  *(v7 + 8) = *(a2 + 2);
  *v7 = v8;
  v9 = 12 * v2 + 12;
  v10 = *(a1 + 8) - *a1;
  v11 = 12 * v2 - v10;
  memcpy((v7 - v10), *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_239E95B5C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_239E79870();
}

void sub_239E95BB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

void sub_239E95BFC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E95C54(uint64_t a1)
{
  sub_239E95C8C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239E95C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_239E95CEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = *(a1 + 8);
    do
    {
      v7 = *(v5 - 24);
      v5 -= 24;
      v6 = v7;
      if (v7)
      {
        *(v4 - 16) = v6;
        operator delete(v6);
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_239E95D48(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_239E79984(a1, a2);
    }

    sub_239E797B4();
  }
}

int32x4_t *sub_239E95DE8(void *a1, int32x4_t *a2)
{
  v4 = sub_239EC3228(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = i->i64[0]; i; i = i->i64[0])
    {
      v9 = i->u64[1];
      if (v9 == v4)
      {
        if (vminv_u16(vmovn_s32(vceqq_s32(i[1], *a2))))
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

int32x4_t *sub_239E95ED0(void *a1, int32x4_t *a2, uint64_t a3, int32x4_t **a4)
{
  v6 = sub_239EC3228(a1, a2);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((vminv_u16(vmovn_s32(vceqq_s32(v11[1], *a2))) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239E96128(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_239E91AC8(a1, a2);
    }

    sub_239E797B4();
  }
}

BOOL sub_239E961C8(uint64_t a1, uint64_t *a2, void *a3, float32x4_t a4)
{
  v4 = a2[1];
  if (v4 == a1)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = *v5;
  if (*(a1 + 8) != a2)
  {
    v4 = *(a1 + 8);
  }

  v7 = *(*a3 + 16 * *(a1 + 16));
  v8 = vsubq_f32(v7, *(*a3 + 16 * *(v6 + 16)));
  v9 = vsubq_f32(*(*a3 + 16 * *(v4 + 16)), v7);
  v10 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v8)), vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v9);
  v11 = vmulq_f32(v10, v10);
  if (((v11.f32[2] + v11.f32[0]) + v11.f32[1]) < 1.0e-12)
  {
    return 1;
  }

  v13 = vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), a4);
  return (vaddv_f32(*v13.f32) + v13.f32[2]) < 1.0e-12;
}

float32x2_t *sub_239E9627C(void *a1, unint64_t *a2, float32x4_t a3)
{
  v5 = sub_239EC2F68(a3, a1, a2);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v6)
    {
      v10 = v5 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (*&v13 == v7)
    {
      if (sub_239EC2F7C(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (*&v13 >= *&v6)
        {
          *&v13 %= *&v6;
        }
      }

      else
      {
        *&v13 &= *&v6 - 1;
      }

      if (*&v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x2_t *sub_239E96378(void *a1, unint64_t *a2, uint64_t a3, void **a4, float32x4_t a5)
{
  v7 = sub_239EC2F68(a5, a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (*&v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (*&v15 >= *&v9)
      {
        *&v15 %= *&v9;
      }
    }

    else
    {
      *&v15 &= *&v9 - 1;
    }

    if (*&v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2F7C(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_239E965D0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_239E797B4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_239E79870();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
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
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_239E96704(float32x2_t *a1, float32x2_t *a2)
{
  v2 = vcgt_f32(*a2, *a1);
  if (v2.i8[0])
  {
    v3 = 1;
  }

  else
  {
    if ((vcgt_f32(*a1, *a2).u8[0] & 1) == 0)
    {
      v4 = a1[1];
      v5 = a2[1];
      if (v4 != v5)
      {
        v6 = v4[1];
        v7 = *v5;
        v8 = v5[1];
        if (COERCE_FLOAT(*v4) == *&v6 && *&v7 != *&v8)
        {
          v3 = a1[2].i8[0];
          return v3 & 1;
        }

        if (COERCE_FLOAT(*v4) != *&v6 && *&v7 == *&v8)
        {
          v3 = a2[2].i8[0] ^ 1;
          return v3 & 1;
        }
      }

      v3 = v2.i8[4];
      return v3 & 1;
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_239E96784(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v7 = vsub_f32(*a1, v4);
    v8 = vsub_f32(*a2, v5);
    v9 = vmul_f32(vrev64_s32(v8), v7);
    v10 = vsub_f32(v9, vdup_lane_s32(v9, 1));
    if (v10.f32[0] == 0.0 || vmul_f32(v10, v10).f32[0] < 0.000001)
    {
      v24 = vmul_f32(vsub_f32(v6, v4), vsub_f32(v6, v3));
      v25 = vmul_f32(vsub_f32(v5, v4), vsub_f32(v5, v3));
      v26 = vcltz_f32(vadd_f32(vzip1_s32(v25, v24), vzip2_s32(v25, v24)));
      v27 = v26.i8[4];
    }

    else
    {
      v11 = vsub_f32(v6, v3);
      v12 = vsub_f32(v4, v3);
      v13 = vsub_f32(v5, v3);
      v14 = vsub_f32(v3, v6);
      v15 = vsub_f32(v5, v6);
      v16 = vsub_f32(v4, v6);
      v17 = vext_s8(v13, v15, 4uLL);
      v13.i32[1] = v15.i32[1];
      v18 = vmla_f32(vneg_f32(vmul_f32(v17, __PAIR64__(v14.u32[1], v12.u32[0]))), vext_s8(v12, v14, 4uLL), v13);
      v19 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
      v20 = vext_s8(v11, v15, 4uLL);
      v11.i32[1] = v15.i32[1];
      v21 = vext_s8(v12, v16, 4uLL);
      v12.i32[1] = v16.i32[1];
      v22 = vmla_f32(vneg_f32(vmul_f32(v20, v12)), v21, v11);
      v23 = vmul_f32(vbic_s8(v18, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v18, v18))))), vbic_s8(v22, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v22, v22))))));
      if (*v23.i32 < 0.0 && *&v23.i32[1] < 0.0)
      {
        v2 = 1;
        return v2 & 1;
      }

      v28 = vsub_f32(v6, v4);
      v29 = vsub_f32(v5, v4);
      v30 = vsub_f32(v3, v5);
      v31 = vsub_f32(v4, v5);
      v32 = vext_s8(v30, v7, 4uLL);
      v30.i32[1] = v7.i32[1];
      v33 = vmla_f32(vneg_f32(vmul_f32(__PAIR64__(v29.u32[1], v8.u32[0]), v32)), v30, vext_s8(v8, v29, 4uLL));
      v34 = vbic_s8(v33, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v33, v33)))));
      v35 = vext_s8(v8, v28, 4uLL);
      v36 = vext_s8(v31, v7, 4uLL);
      v31.i32[1] = v7.i32[1];
      v8.i32[1] = v28.i32[1];
      v37 = vmla_f32(vneg_f32(vmul_f32(v8, v36)), v31, v35);
      v38 = vmul_f32(v34, vbic_s8(v37, vmovn_s64(vcgtq_f64(v19, vcvtq_f64_f32(vmul_f32(v37, v37))))));
      v39.i64[0] = __PAIR64__(v38.u32[1], v23.u32[0]);
      *&v39.u32[2] = vext_s8(v23, v38, 4uLL);
      if ((vmaxv_u16(vmovn_s32(vceqzq_f32(v39))) & 1) == 0)
      {
        v2 = 0;
        return v2 & 1;
      }

      v26 = vcltz_f32(v38);
      v27 = (*v23.i32 < 0.0 || *&v23.i32[1] < 0.0) | v26.i8[4];
    }

    v2 = v27 | v26.i8[0];
  }

  return v2 & 1;
}

double sub_239E96984(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = (a2 - 24);
    v191 = a2 - 3;
    v192 = a2;
    v11 = (a2 - 72);
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
          if (v14 > 2)
          {
            if (v14 == 3)
            {
              v121 = (*a3)(&v12[1].n128_i8[8], v12, a6);
              v122 = (*a3)(v10, (v12 + 24));
              if (v121)
              {
                if (v122)
                {
                  goto LABEL_106;
                }

                v181 = *v12;
                v198 = v12[1].n128_u64[0];
                v197 = v181;
                *v12 = *(v12 + 24);
                v12[1].n128_u64[0] = v12[2].n128_u64[1];
                *(v12 + 24) = v197;
                v12[2].n128_u64[1] = v198;
                if (!(*a3)(v10, (v12 + 24)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(v12 + 24);
                v197 = a6;
                v125 = v12[2].n128_u64[1];
                v198 = v125;
                v182 = v10[1].n128_u64[0];
                *(v12 + 24) = *v10;
                v12[2].n128_u64[1] = v182;
LABEL_107:
                v10[1].n128_u64[0] = v125;
                *v10 = a6;
                return a6.n128_f64[0];
              }

              if (!v122)
              {
                return a6.n128_f64[0];
              }

              v197 = *(v12 + 24);
              v170 = v197;
              v198 = v12[2].n128_u64[1];
              v171 = v198;
              v172 = v10[1].n128_u64[0];
              *(v12 + 24) = *v10;
              v12[2].n128_u64[1] = v172;
              v10[1].n128_u64[0] = v171;
              *v10 = v170;
LABEL_182:
              if ((*a3)((v12 + 24), v12))
              {
                a6 = *v12;
                v198 = v12[1].n128_u64[0];
                v197 = a6;
                *v12 = *(v12 + 24);
                v12[1].n128_u64[0] = v12[2].n128_u64[1];
                a6.n128_u64[0] = v197.n128_u64[0];
                *(v12 + 24) = v197;
                v12[2].n128_u64[1] = v198;
              }

              return a6.n128_f64[0];
            }

            if (v14 != 4)
            {
              if (v14 == 5)
              {
                a6.n128_u64[0] = sub_239E97AC8(v12, (v12 + 24), v12 + 3, (v12 + 72), v10, a3).n128_u64[0];
                return a6.n128_f64[0];
              }

              goto LABEL_9;
            }

            v126 = (*a3)(&v12[1].n128_i8[8], v12, a6);
            v127 = (*a3)(v12 + 3, (v12 + 24));
            if ((v126 & 1) == 0)
            {
              if (v127)
              {
                v173 = v12[2].n128_u64[1];
                v174 = *(v12 + 24);
                *(v12 + 24) = v12[3];
                v12[2].n128_u64[1] = v12[4].n128_u64[0];
                v12[3] = v174;
                v12[4].n128_u64[0] = v173;
                if ((*a3)((v12 + 24), v12))
                {
                  v175 = *v12;
                  v198 = v12[1].n128_u64[0];
                  v197 = v175;
                  *v12 = *(v12 + 24);
                  v12[1].n128_u64[0] = v12[2].n128_u64[1];
                  *(v12 + 24) = v197;
                  v12[2].n128_u64[1] = v198;
                }
              }

              goto LABEL_179;
            }

            if (v127)
            {
              v128 = *v12;
              v198 = v12[1].n128_u64[0];
              v197 = v128;
              *v12 = v12[3];
              v12[1].n128_u64[0] = v12[4].n128_u64[0];
              v12[3] = v197;
              v129 = v198;
            }

            else
            {
              v183 = *v12;
              v198 = v12[1].n128_u64[0];
              v197 = v183;
              *v12 = *(v12 + 24);
              v12[1].n128_u64[0] = v12[2].n128_u64[1];
              *(v12 + 24) = v197;
              v12[2].n128_u64[1] = v198;
              if (!(*a3)(v12 + 3, (v12 + 24)))
              {
                goto LABEL_179;
              }

              v129 = v12[2].n128_u64[1];
              v184 = *(v12 + 24);
              *(v12 + 24) = v12[3];
              v12[2].n128_u64[1] = v12[4].n128_u64[0];
              v12[3] = v184;
            }

            v12[4].n128_u64[0] = v129;
LABEL_179:
            if (!(*a3)(v10, v12 + 3))
            {
              return a6.n128_f64[0];
            }

            v197 = v12[3];
            v185 = v197;
            v198 = v12[4].n128_u64[0];
            v186 = v198;
            v187 = v10[1].n128_u64[0];
            v12[3] = *v10;
            v12[4].n128_u64[0] = v187;
            v10[1].n128_u64[0] = v186;
            *v10 = v185;
            if (!(*a3)(v12 + 3, (v12 + 24)))
            {
              return a6.n128_f64[0];
            }

            v188 = v12[2].n128_u64[1];
            v189 = *(v12 + 24);
            *(v12 + 24) = v12[3];
            v12[2].n128_u64[1] = v12[4].n128_u64[0];
            v12[3] = v189;
            v12[4].n128_u64[0] = v188;
            goto LABEL_182;
          }

          if (v14 < 2)
          {
            return a6.n128_f64[0];
          }

          if (v14 == 2)
          {
            if (!(*a3)(v10, v12, a6))
            {
              return a6.n128_f64[0];
            }

LABEL_106:
            v123 = *v12;
            v198 = v12[1].n128_u64[0];
            v197 = v123;
            v124 = *v10;
            v12[1].n128_u64[0] = v10[1].n128_u64[0];
            *v12 = v124;
            a6 = v197;
            v125 = v198;
            goto LABEL_107;
          }

LABEL_9:
          if (v13 <= 575)
          {
            v130 = (v12 + 24);
            v131 = v12 == a2 || v130 == a2;
            v132 = v131;
            if (a5)
            {
              if ((v132 & 1) == 0)
              {
                v133 = 0;
                v134 = v12;
                do
                {
                  v135 = v134;
                  v134 = v130;
                  if ((*a3)(v130, v135, a6))
                  {
                    v136 = *v134;
                    v198 = v134[1].n128_u64[0];
                    v197 = v136;
                    v137 = v133;
                    while (1)
                    {
                      v138 = v12 + v137;
                      *(v138 + 24) = *(v12 + v137);
                      *(v138 + 5) = *(v12[1].n128_u64 + v137);
                      if (!v137)
                      {
                        break;
                      }

                      v137 -= 24;
                      if (((*a3)(&v197, (v12 + v137)) & 1) == 0)
                      {
                        v139 = (v12 + v137 + 24);
                        goto LABEL_126;
                      }
                    }

                    v139 = v12;
LABEL_126:
                    a6 = v197;
                    v139[1].n128_u64[0] = v198;
                    *v139 = a6;
                  }

                  v130 = (v134 + 24);
                  v133 += 24;
                }

                while (&v134[1].n128_i8[8] != a2);
              }
            }

            else if ((v132 & 1) == 0)
            {
              v176 = &v12[-2].n128_i8[8];
              do
              {
                v177 = a1;
                a1 = v130;
                if ((*a3)(v130, v177, a6))
                {
                  v178 = *a1;
                  v198 = a1[1].n128_u64[0];
                  v197 = v178;
                  v179 = v176;
                  do
                  {
                    *(v179 + 48) = *(v179 + 24);
                    *(v179 + 64) = *(v179 + 40);
                    v180 = (*a3)(&v197, v179);
                    v179 -= 24;
                  }

                  while ((v180 & 1) != 0);
                  a6 = v197;
                  *(v179 + 64) = v198;
                  *(v179 + 48) = a6;
                }

                v130 = (a1 + 24);
                v176 += 24;
              }

              while (&a1[1].n128_i8[8] != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (v12 != a2)
            {
              v140 = (v14 - 2) >> 1;
              v194 = v140;
              do
              {
                v141 = v140;
                if (v194 >= v140)
                {
                  v142 = (2 * v140) | 1;
                  v143 = a1 + 24 * v142;
                  if (2 * v140 + 2 < v14 && (*a3)(a1 + 24 * v142, v143 + 24, a6))
                  {
                    v143 += 24;
                    v142 = 2 * v141 + 2;
                  }

                  v144 = (a1 + 24 * v141);
                  if (((*a3)(v143, v144) & 1) == 0)
                  {
                    v145 = *v144;
                    v198 = v144[1].n128_u64[0];
                    v197 = v145;
                    do
                    {
                      v146 = v143;
                      v147 = *v143;
                      v144[1].n128_u64[0] = *(v143 + 2);
                      *v144 = v147;
                      if (v194 < v142)
                      {
                        break;
                      }

                      v148 = (2 * v142) | 1;
                      v143 = a1 + 24 * v148;
                      v149 = 2 * v142 + 2;
                      if (v149 < v14 && (*a3)((a1 + 24 * v148), (v143 + 24)))
                      {
                        v143 += 24;
                        v148 = v149;
                      }

                      v144 = v146;
                      v142 = v148;
                    }

                    while (!(*a3)(v143, &v197));
                    a6 = v197;
                    v146[1].n128_u64[0] = v198;
                    *v146 = a6;
                    a2 = v192;
                  }
                }

                v140 = v141 - 1;
              }

              while (v141);
              v150 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
              do
              {
                v151 = 0;
                v152 = *a1;
                v196 = a1[1].n128_u64[0];
                v195 = v152;
                v153 = a1;
                do
                {
                  v154 = v153 + 24 * v151;
                  v155 = (v154 + 24);
                  v156 = (2 * v151) | 1;
                  v157 = 2 * v151 + 2;
                  if (v157 < v150)
                  {
                    v158 = (v154 + 48);
                    if ((*a3)((v154 + 24), v154 + 3))
                    {
                      v155 = v158;
                      v156 = v157;
                    }
                  }

                  v159 = *v155;
                  v153[1].n128_u64[0] = v155[1].n128_u64[0];
                  *v153 = v159;
                  v153 = v155;
                  v151 = v156;
                }

                while (v156 <= ((v150 - 2) >> 1));
                v160 = (a2 - 24);
                if (v155 == &a2[-2].n128_i8[8])
                {
                  v162 = (a2 - 24);
                  a6 = v195;
                  v155[1].n128_u64[0] = v196;
                  *v155 = a6;
                }

                else
                {
                  v161 = *v160;
                  v155[1].n128_u64[0] = a2[-1].n128_u64[1];
                  *v155 = v161;
                  a6 = v195;
                  a2[-1].n128_u64[1] = v196;
                  v162 = (a2 - 24);
                  *v160 = a6;
                  v163 = v155 - a1 + 24;
                  if (v163 >= 25)
                  {
                    v164 = (-2 - 0x5555555555555555 * (v163 >> 3)) >> 1;
                    v165 = (a1 + 24 * v164);
                    if ((*a3)(v165, v155))
                    {
                      v166 = *v155;
                      v198 = v155[1].n128_u64[0];
                      v197 = v166;
                      do
                      {
                        v167 = v165;
                        v168 = *v165;
                        v155[1].n128_u64[0] = v165[1].n128_u64[0];
                        *v155 = v168;
                        if (!v164)
                        {
                          break;
                        }

                        v164 = (v164 - 1) >> 1;
                        v165 = (a1 + 24 * v164);
                        v155 = v167;
                      }

                      while (((*a3)(v165, &v197) & 1) != 0);
                      a6 = v197;
                      v167[1].n128_u64[0] = v198;
                      *v167 = a6;
                    }
                  }
                }

                v169 = v150-- <= 2;
                a2 = v162;
              }

              while (!v169);
            }

            return a6.n128_f64[0];
          }

          v15 = v14 >> 1;
          v16 = &v12->n128_u64[3 * v15];
          v17 = *a3;
          if (v13 >= 0xC01)
          {
            v18 = (v17)(a1 + 24 * v15, a1, a6);
            v19 = (*a3)(v10, (a1 + 24 * v15));
            if (v18)
            {
              if (v19)
              {
                v20 = *a1;
                v198 = a1[1].n128_u64[0];
                v197 = v20;
                v21 = *v10;
                a1[1].n128_u64[0] = v10[1].n128_u64[0];
                *a1 = v21;
                goto LABEL_26;
              }

              v38 = *a1;
              v198 = a1[1].n128_u64[0];
              v197 = v38;
              v39 = *v16;
              a1[1].n128_u64[0] = *(v16 + 16);
              *a1 = v39;
              v40 = v197;
              *(v16 + 16) = v198;
              *v16 = v40;
              if ((*a3)(v10, (a1 + 24 * v15)))
              {
                v41 = *v16;
                v198 = *(v16 + 16);
                v197 = v41;
                v42 = *v10;
                *(v16 + 16) = v10[1].n128_u64[0];
                *v16 = v42;
LABEL_26:
                v43 = v197;
                v10[1].n128_u64[0] = v198;
                *v10 = v43;
              }
            }

            else if (v19)
            {
              v26 = *v16;
              v198 = *(v16 + 16);
              v197 = v26;
              v27 = *v10;
              *(v16 + 16) = v10[1].n128_u64[0];
              *v16 = v27;
              v28 = v197;
              v10[1].n128_u64[0] = v198;
              *v10 = v28;
              if ((*a3)((a1 + 24 * v15), a1))
              {
                v29 = *a1;
                v198 = a1[1].n128_u64[0];
                v197 = v29;
                v30 = *v16;
                a1[1].n128_u64[0] = *(v16 + 16);
                *a1 = v30;
                v31 = v197;
                *(v16 + 16) = v198;
                *v16 = v31;
              }
            }

            v44 = (a1 + 24 * v15 - 24);
            v45 = (*a3)(v44, (a1 + 24));
            v46 = (*a3)(v191, v44);
            if (v45)
            {
              if (v46)
              {
                v197 = *(a1 + 24);
                v47 = v197;
                v198 = a1[2].n128_u64[1];
                v48 = v198;
                v49 = v191[1].n128_u64[0];
                *(a1 + 24) = *v191;
                a1[2].n128_u64[1] = v49;
                v191[1].n128_u64[0] = v48;
                *v191 = v47;
              }

              else
              {
                v197 = *(a1 + 24);
                v62 = v197;
                v198 = a1[2].n128_u64[1];
                v63 = v198;
                v64 = a1->n128_u64[3 * v15 - 1];
                *(a1 + 24) = *v44;
                a1[2].n128_u64[1] = v64;
                a1->n128_u64[3 * v15 - 1] = v63;
                *v44 = v62;
                if ((*a3)(v191, (a1 + 24 * v15 - 24)))
                {
                  v65 = *v44;
                  v198 = a1->n128_u64[3 * v15 - 1];
                  v197 = v65;
                  v66 = *v191;
                  a1->n128_u64[3 * v15 - 1] = v191[1].n128_u64[0];
                  *v44 = v66;
                  v67 = v197;
                  v191[1].n128_u64[0] = v198;
                  *v191 = v67;
                }
              }
            }

            else if (v46)
            {
              v50 = *v44;
              v198 = a1->n128_u64[3 * v15 - 1];
              v197 = v50;
              v51 = *v191;
              a1->n128_u64[3 * v15 - 1] = v191[1].n128_u64[0];
              *v44 = v51;
              v52 = v197;
              v191[1].n128_u64[0] = v198;
              *v191 = v52;
              if ((*a3)((a1 + 24 * v15 - 24), (a1 + 24)))
              {
                v197 = *(a1 + 24);
                v53 = v197;
                v198 = a1[2].n128_u64[1];
                v54 = v198;
                v55 = a1->n128_u64[3 * v15 - 1];
                *(a1 + 24) = *v44;
                a1[2].n128_u64[1] = v55;
                a1->n128_u64[3 * v15 - 1] = v54;
                *v44 = v53;
              }
            }

            v68 = a1 + 24 * v15;
            v69 = (*a3)((v68 + 24), a1 + 3);
            v70 = (*a3)(v11, (v68 + 24));
            if (v69)
            {
              if (v70)
              {
                v71 = a1[3];
                v197 = v71;
                v72 = a1[4].n128_u64[0];
                v198 = v72;
                v73 = v11[1].n128_u64[0];
                a1[3] = *v11;
                a1[4].n128_u64[0] = v73;
                goto LABEL_46;
              }

              v197 = a1[3];
              v80 = v197;
              v198 = a1[4].n128_u64[0];
              v81 = v198;
              v82 = *(v68 + 5);
              a1[3] = *(v68 + 24);
              a1[4].n128_u64[0] = v82;
              *(v68 + 5) = v81;
              *(v68 + 24) = v80;
              if ((*a3)(v11, (v68 + 24)))
              {
                v83 = *(v68 + 24);
                v198 = *(v68 + 5);
                v197 = v83;
                v84 = *v11;
                *(v68 + 5) = v11[1].n128_u64[0];
                *(v68 + 24) = v84;
                v71 = v197;
                v72 = v198;
LABEL_46:
                v11[1].n128_u64[0] = v72;
                *v11 = v71;
              }
            }

            else if (v70)
            {
              v74 = *(v68 + 24);
              v198 = *(v68 + 5);
              v197 = v74;
              v75 = *v11;
              *(v68 + 5) = v11[1].n128_u64[0];
              *(v68 + 24) = v75;
              v76 = v197;
              v11[1].n128_u64[0] = v198;
              *v11 = v76;
              if ((*a3)((v68 + 24), a1 + 3))
              {
                v197 = a1[3];
                v77 = v197;
                v198 = a1[4].n128_u64[0];
                v78 = v198;
                v79 = *(v68 + 5);
                a1[3] = *(v68 + 24);
                a1[4].n128_u64[0] = v79;
                *(v68 + 5) = v78;
                *(v68 + 24) = v77;
              }
            }

            v85 = (*a3)(v16, v44);
            v86 = (*a3)((v68 + 24), v16);
            if (v85)
            {
              if (v86)
              {
                v87 = *v44;
                v198 = v44[1].n128_u64[0];
                v197 = v87;
                *v44 = *(v68 + 24);
                v44[1].n128_u64[0] = *(v68 + 5);
                goto LABEL_55;
              }

              v92 = *v44;
              v198 = v44[1].n128_u64[0];
              v197 = v92;
              *v44 = *v16;
              v44[1].n128_u64[0] = *(v16 + 16);
              v93 = v197;
              *(v16 + 16) = v198;
              *v16 = v93;
              if ((*a3)((v68 + 24), v16))
              {
                v94 = *v16;
                v198 = *(v16 + 16);
                v197 = v94;
                *v16 = *(v68 + 24);
                *(v16 + 16) = *(v68 + 5);
LABEL_55:
                v95 = v197;
                *(v68 + 5) = v198;
                *(v68 + 24) = v95;
              }
            }

            else if (v86)
            {
              v88 = *v16;
              v198 = *(v16 + 16);
              v197 = v88;
              *v16 = *(v68 + 24);
              *(v16 + 16) = *(v68 + 5);
              v89 = v197;
              *(v68 + 5) = v198;
              *(v68 + 24) = v89;
              if ((*a3)(v16, v44))
              {
                v90 = *v44;
                v198 = v44[1].n128_u64[0];
                v197 = v90;
                *v44 = *v16;
                v44[1].n128_u64[0] = *(v16 + 16);
                v91 = v197;
                *(v16 + 16) = v198;
                *v16 = v91;
              }
            }

            v96 = *a1;
            v198 = a1[1].n128_u64[0];
            v197 = v96;
            v97 = *v16;
            a1[1].n128_u64[0] = *(v16 + 16);
            *a1 = v97;
            v98 = v197;
            *(v16 + 16) = v198;
            *v16 = v98;
            goto LABEL_57;
          }

          v22 = (v17)(a1, a1 + 24 * v15, a6);
          v23 = (*a3)(v10, a1);
          if (v22)
          {
            if (v23)
            {
              v24 = *v16;
              v198 = *(v16 + 16);
              v197 = v24;
              v25 = *v10;
              *(v16 + 16) = v10[1].n128_u64[0];
              *v16 = v25;
LABEL_35:
              v61 = v197;
              v10[1].n128_u64[0] = v198;
              *v10 = v61;
              goto LABEL_57;
            }

            v56 = *v16;
            v198 = *(v16 + 16);
            v197 = v56;
            v57 = *a1;
            *(v16 + 16) = a1[1].n128_u64[0];
            *v16 = v57;
            v58 = v197;
            a1[1].n128_u64[0] = v198;
            *a1 = v58;
            if ((*a3)(v10, a1))
            {
              v59 = *a1;
              v198 = a1[1].n128_u64[0];
              v197 = v59;
              v60 = *v10;
              a1[1].n128_u64[0] = v10[1].n128_u64[0];
              *a1 = v60;
              goto LABEL_35;
            }
          }

          else if (v23)
          {
            v32 = *a1;
            v198 = a1[1].n128_u64[0];
            v197 = v32;
            v33 = *v10;
            a1[1].n128_u64[0] = v10[1].n128_u64[0];
            *a1 = v33;
            v34 = v197;
            v10[1].n128_u64[0] = v198;
            *v10 = v34;
            if ((*a3)(a1, (a1 + 24 * v15)))
            {
              v35 = *v16;
              v198 = *(v16 + 16);
              v197 = v35;
              v36 = *a1;
              *(v16 + 16) = a1[1].n128_u64[0];
              *v16 = v36;
              v37 = v197;
              a1[1].n128_u64[0] = v198;
              *a1 = v37;
            }
          }

LABEL_57:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 24), a1))
          {
            break;
          }

          v111 = *a1;
          v196 = a1[1].n128_u64[0];
          v195 = v111;
          if ((*a3)(&v195, v10))
          {
            v12 = a1;
            a2 = v192;
            do
            {
              v12 = (v12 + 24);
            }

            while (((*a3)(&v195, v12) & 1) == 0);
          }

          else
          {
            v112 = (a1 + 24);
            a2 = v192;
            do
            {
              v12 = v112;
              if (v112 >= v192)
              {
                break;
              }

              v113 = (*a3)(&v195, v112);
              v112 = (v12 + 24);
            }

            while (!v113);
          }

          v114 = a2;
          if (v12 < a2)
          {
            v114 = a2;
            do
            {
              v114 = (v114 - 24);
            }

            while (((*a3)(&v195, v114) & 1) != 0);
          }

          while (v12 < v114)
          {
            v115 = *v12;
            v198 = v12[1].n128_u64[0];
            v197 = v115;
            v116 = *v114;
            v12[1].n128_u64[0] = v114[1].n128_u64[0];
            *v12 = v116;
            v117 = v197;
            v114[1].n128_u64[0] = v198;
            *v114 = v117;
            do
            {
              v12 = (v12 + 24);
            }

            while (!(*a3)(&v195, v12));
            do
            {
              v114 = (v114 - 24);
            }

            while (((*a3)(&v195, v114) & 1) != 0);
          }

          v118 = (v12 - 24);
          if (&v12[-2].n128_i8[8] != a1)
          {
            v119 = *v118;
            a1[1].n128_u64[0] = v12[-1].n128_u64[1];
            *a1 = v119;
          }

          a5 = 0;
          a6 = v195;
          v12[-1].n128_u64[1] = v196;
          *v118 = a6;
        }

        v99 = 0;
        v100 = *a1;
        v196 = a1[1].n128_u64[0];
        v195 = v100;
        do
        {
          v99 += 24;
        }

        while (((*a3)((a1 + v99), &v195) & 1) != 0);
        v101 = a1 + v99;
        v102 = v192;
        v131 = v99 == 24;
        a2 = v192;
        if (v131)
        {
          v102 = v192;
          do
          {
            if (v101 >= v102)
            {
              break;
            }

            v102 -= 24;
          }

          while (((*a3)(v102, &v195) & 1) == 0);
        }

        else
        {
          do
          {
            v102 -= 24;
          }

          while (!(*a3)(v102, &v195));
        }

        if (v101 >= v102)
        {
          v108 = (v101 - 24);
        }

        else
        {
          v103 = v101;
          v104 = v102;
          do
          {
            v105 = *v103;
            v198 = *(v103 + 16);
            v197 = v105;
            v106 = *v104;
            *(v103 + 16) = *(v104 + 16);
            *v103 = v106;
            v107 = v197;
            *(v104 + 16) = v198;
            *v104 = v107;
            do
            {
              v103 += 24;
            }

            while (((*a3)(v103, &v195) & 1) != 0);
            do
            {
              v104 -= 24;
            }

            while (!(*a3)(v104, &v195));
          }

          while (v103 < v104);
          v108 = (v103 - 24);
        }

        if (v108 != a1)
        {
          v109 = *v108;
          a1[1].n128_u64[0] = v108[1].n128_u64[0];
          *a1 = v109;
        }

        a6 = v195;
        v108[1].n128_u64[0] = v196;
        *v108 = a6;
        if (v101 >= v102)
        {
          break;
        }

LABEL_80:
        a6.n128_f64[0] = sub_239E96984(a1, v108, a3, a4, a5 & 1, a6);
        a5 = 0;
        v12 = (v108 + 24);
      }

      v110 = sub_239E97D80(a1, v108, a3);
      v12 = (v108 + 24);
      if (sub_239E97D80(&v108[1].n128_i64[1], v192, a3))
      {
        break;
      }

      if (!v110)
      {
        goto LABEL_80;
      }
    }

    a2 = v108;
    if (!v110)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 sub_239E97AC8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_u64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_u64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_u64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

BOOL sub_239E97D80(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_239E97AC8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_u64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_239E98290(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E9830C(result, a4);
  }

  return result;
}

void sub_239E982F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9830C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_239E91AC8(a1, a2);
  }

  sub_239E797B4();
}

uint64_t sub_239E98348(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_239E983E4(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_239E983E4(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_239E9858C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E9830C(result, a4);
  }

  return result;
}

void sub_239E985EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239E98608(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_239E98660(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_239E98660(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_239E98348(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_239E986E8(uint64_t **a1, int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    if (*(v2 + 7) >= v3)
    {
      v4 = v2;
    }

    v2 = v2[*(v2 + 7) < v3];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 7))
  {
    return 0;
  }

  sub_239E7D38C(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_239E9876C(void *result)
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

uint64_t sub_239E987D0(uint64_t a1)
{
  v8 = (a1 + 144);
  sub_239E98868(&v8);
  sub_239E6A66C(a1 + 120, *(a1 + 128));
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_239E98868(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E988BC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E988BC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_239E957C0(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void sub_239E98928(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_239E98984(exception, a1);
  __cxa_throw(exception, off_278B40280, MEMORY[0x277D825F8]);
}

std::logic_error *sub_239E98984(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_239E989B8(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE80200](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_239E98A8C(a1);
  return a1;
}

void sub_239E98A64(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_239E98A8C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_239E98B94(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x23EE800F0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_239E98D40(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EE80100](v13);
  return a1;
}

void sub_239E98CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EE80100](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x239E98CB8);
}

uint64_t sub_239E98D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_239E95A5C();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_239E98F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float32x4_t **sub_239E98F30(void *a1, __int128 **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_239EC30C8(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_239E991B4();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC31C4(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_239E99190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_239E99264(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E99248(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E99264(v3, v2);
  _Unwind_Resume(a1);
}

void sub_239E99264(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[2];
    if (v3)
    {
      __p[3] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

float32x4_t *sub_239E992C8(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC2FA4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

float32x4_t *sub_239E99520(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC2FE4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3098(a1, v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t sub_239E99778(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_239E997E4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v4 = v3 + 32;
  }

  a1[1] = v4;
  return v4 - 32;
}

uint64_t sub_239E997E4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_239E9990C(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  sub_239E99954(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_239E99A98(&v15);
  return v14;
}

void sub_239E998F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239E99A98(va);
  _Unwind_Resume(a1);
}

void sub_239E9990C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E99954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return sub_239E99A18(v9);
}

uint64_t sub_239E99A18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239E99A50(a1);
  }

  return a1;
}

void sub_239E99A50(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 32;
  }
}

uint64_t sub_239E99A98(uint64_t a1)
{
  sub_239E99AD0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239E99AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void sub_239E99B30(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239E99B84(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239E99B84(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 80)
  {
  }

  *(a1 + 8) = a2;
}

void **sub_239E99BE0(void **a1)
{
  sub_239E99C1C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239E99C1C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

float32x4_t *sub_239E99C68(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v12 == v6)
    {
      if (sub_239EC2FB4(a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t **sub_239E99D64(void *a1, __int128 **a2)
{
  v4 = sub_239EC30C8(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_239EC31C4(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t *sub_239E99E60(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FE4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v12 == v6)
    {
      if (sub_239EC3098(a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *sub_239E99F5C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E99FD8(result, a4);
  }

  return result;
}

void sub_239E99FBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E99FD8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_239E79984(a1, a2);
  }

  sub_239E797B4();
}

uint64_t sub_239E9A014(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = i->i64[0])
  {
    sub_239E9A08C(a1, i + 1, i[1].f32);
  }

  return a1;
}

float32x4_t *sub_239E9A08C(void *a1, float32x4_t *a2, _OWORD *a3)
{
  v5 = sub_239EC2FA4(a1, a2);
  v6 = v5;
  v7 = a1[1];
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
    v13 = v12->u64[1];
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
    v12 = v12->i64[0];
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v12 + 1, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t sub_239E9A2DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = i->i64[0])
  {
    sub_239E9A354(a1, i + 1, i[1].f32);
  }

  return a1;
}

float32x4_t *sub_239E9A354(void *a1, float32x4_t *a2, _OWORD *a3)
{
  v5 = sub_239EC2FE4(a1, a2);
  v6 = v5;
  v7 = a1[1];
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
    v13 = v12->u64[1];
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
    v12 = v12->i64[0];
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3098(a1, v12 + 1, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t sub_239E9A5A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_239E9A61C(a1, i + 2, (i + 2));
  }

  return a1;
}

float32x4_t **sub_239E9A61C(void *a1, __int128 **a2, uint64_t a3)
{
  v5 = sub_239EC30C8(a1, a2);
  v6 = v5;
  v7 = a1[1];
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
    sub_239E9A888();
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

  if (!sub_239EC31C4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_239E9A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_239E99264(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9A91C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E99264(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_239E9A938(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E9830C(result, a4);
  }

  return result;
}

void sub_239E9A998(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9A9B4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_239E9AD1C(_Unwind_Exception *a1)
{
  if (*(v2 - 73) < 0)
  {
    operator delete(*(v2 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_239E9AFEC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_239E9B514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_239E9B974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_239E9BAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_239E9BB0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_239E9BC28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, __n128 a6)
{
  v6 = dword_27DF912CC;
  if (dword_27DF912CC >= 1)
  {
    v11 = 0;
    *&a5 = *&dword_27DF912D0 * 0.5;
    v12 = vdup_lane_s32(*&a5, 0);
    v13 = 1.0 / dword_27DF912CC;
    v14 = 16 * dword_27DF912CC;
    v20 = 8 * dword_27DF912CC;
    do
    {
      v15 = 0;
      do
      {
        *&v16 = v15 * v13;
        *(&v16 + 1) = v11 * v13;
        v21 = v16;
        v17 = sub_239F3805C(a4, v16);
        if (v17 && (v18 = v17, sub_239F3761C(v17, v21)))
        {
          v25 = 0uLL;
          v26 = 0;
          sub_239F37800(v18, &v25, vadd_f32(*&v21, v12));
          v19 = v26;
          if (!v26)
          {
            sub_239F37800(v18, &v23, *&v21);
            v19 = v24;
            v26 = v24;
            v25 = v23;
          }

          v22 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v19 + 64), *&v25), *(v19 + 80), *(&v25 + 1)), *(v19 + 96), *(&v25 + 2));
          *(a1 + 16 * v15) = sub_239EC3D28(v19);
          *(a2 + 16 * v15) = v22;
          *(a3 + 8 * v15) = v19;
        }

        else
        {
          *(a1 + 16 * v15) = 0u;
        }

        ++v15;
      }

      while (v6 != v15);
      ++v11;
      a1 += v14;
      a3 += v20;
      a2 += v14;
    }

    while (v11 != v6);
  }
}

void sub_239E9BDC8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a1;
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  sub_239E9CEF0(a3, &v24, &v24);
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_239E9BFD8(&__p, &v24);
  v5 = 0;
  for (i = 0; i != 4; ++i)
  {
    v17 = (v22 - __p) >> 3;
    if (v5 < v17)
    {
      v7 = v5;
      v8 = ((v22 - __p) >> 3);
      do
      {
        v9 = 0;
        v10 = *(__p + v7);
        v11 = *(v10 + 80);
        v25[0] = *(v10 + 64);
        v25[1] = v11;
        v25[2] = *(v10 + 96);
        do
        {
          v20 = v25[v9];
          v12 = sub_239E9D158(a2, &v20);
          if (!v12)
          {
            sub_239E98928("unordered_map::at: key not found");
          }

          v14 = v12[2].i64[0];
          v13 = v12[2].i64[1];
          while (v14 != v13)
          {
            v19 = *v14;
            v18 = sub_239EC3D28(v19);
            v15 = vmulq_f32(sub_239EC3D28(v10), v18);
            if ((vaddv_f32(*v15.f32) + v15.f32[2]) > 0.7)
            {
              sub_239E9CEF0(a3, &v19, &v19);
              if (v16)
              {
                sub_239E9BFD8(&__p, &v19);
              }
            }

            ++v14;
          }

          ++v9;
        }

        while (v9 != 3);
        ++v7;
      }

      while (v7 != v8);
    }

    v5 = v17;
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_239E9BF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_239E7B644(v18);
  _Unwind_Resume(a1);
}

void sub_239E9BFD8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_239E7C684(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_239E9C0AC(void *a1, void *a2, float a3, uint64_t a4, uint64_t a5, uint64_t **a6, uint64_t a7, int a8)
{
  v65 = a1;
  v11 = dword_27DF912CC;
  v12 = objc_alloc(MEMORY[0x277CBEB28]);
  v13 = (v11 * v11);
  v64 = objc_msgSend_initWithLength_(v12, v14, (4 * v13), v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v24 = v65;
  objc_msgSend_bytes(v24, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v36 = v64;
  objc_msgSend_mutableBytes(v36, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  v48 = malloc_type_malloc(16 * v13, 0x1000040451B5BE8uLL);
  v49 = malloc_type_malloc(16 * v13, 0x1000040451B5BE8uLL);
  v50 = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
  sub_239E9BC28(v48, v49, v50, a2, v51, v52);
  dispatch_group_create();
  dispatch_get_global_queue(0, 0);
  objc_claimAutoreleasedReturnValue();
  v71 = 1065353216;
  memset(v70, 0, sizeof(v70));
  v53 = *a6;
  v54 = a6[1];
  if (*a6 != v54)
  {
    do
    {
      v67.i64[0] = *v53;
      *&v68[0] = v67.i64[0] + 64;
      v55 = sub_239E9D534(v70, (v67.i64[0] + 64), &unk_239F9BFF0, v68);
      sub_239E9BFD8(&v55[2], &v67);
      *&v68[0] = v67.i64[0] + 80;
      v56 = sub_239E9D534(v70, (v67.i64[0] + 80), &unk_239F9BFF0, v68);
      sub_239E9BFD8(&v56[2], &v67);
      *&v68[0] = v67.i64[0] + 96;
      v57 = sub_239E9D534(v70, (v67.i64[0] + 96), &unk_239F9BFF0, v68);
      sub_239E9BFD8(&v57[2], &v67);
      ++v53;
    }

    while (v53 != v54);
  }

  *&dword_27DF912DC = a3 * 8.0;
  v69 = 1065353216;
  memset(v68, 0, sizeof(v68));
  if (v11 >= 1)
  {
    v58 = 0;
    for (i = 0; i != v11; ++i)
    {
      v60 = v11;
      v61 = v58;
      do
      {
        v72[0] = v61;
        v62 = vmulq_f32(v48[v61], v48[v61]);
        if (sqrtf(vaddv_f32(*v62.f32) + v62.f32[2]) > 0.000001)
        {
          *(v67.i64 + 4) = 0;
          v67.i32[0] = 0;
          v67 = v49[v61];
          __p = &v67;
          v63 = sub_239E9D810(v68, &v67, &unk_239F9BFF0, &__p);
          sub_239E73254(&v63[2], v72);
        }

        ++v61;
        --v60;
      }

      while (v60);
      v58 += v11;
    }
  }

  operator new();
}

void sub_239E9C8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  _Block_object_dispose((v42 - 240), 8);

  sub_239E9D4AC((v42 - 208));
  sub_239E9D4AC((v42 - 160));

  _Unwind_Resume(a1);
}

uint64_t sub_239E9C9D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  objc_msgSend_lock(*(a1 + 32), a2, a3, a4, a9, a10, a11, a12, a5, a6, a7, a8);
  v24 = *(a1 + 56);
  v25 = v24[5];
  if (v25)
  {
    v26 = &dword_27DF912D0;
    __asm { FMOV            V0.4S, #1.0 }

    v130 = _Q0;
    do
    {
      v32 = *(*(v24[1] + ((v24[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v24[4] & 0x1FFLL));
      ++v24[4];
      v24[5] = v25 - 1;
      sub_239E9F3E8(v24, 1);
      objc_msgSend_unlock(*(a1 + 32), v33, v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);
      v55 = *(a1 + 64);
      v56 = *v55;
      v57 = *(v55 + 8);
      if (v56 != v57)
      {
        while (*v56 != *&v32[32])
        {
          if (++v56 == v57)
          {
            goto LABEL_44;
          }
        }
      }

      if (v56 != v57)
      {
        v145 = 0;
        memset(v144, 0, sizeof(v144));
        sub_239E9BDC8(v32, *(a1 + 72), v144);
        v65.n128_f64[0] = sub_239EC3CE0(v32);
        v66.n128_u32[0] = *v26;
        v67.n128_u64[0] = vadd_f32(vdup_lane_s32(v66.n128_u64[0], 0), v68.n128_u64[0]);
        v68.n128_u64[0] = vmvn_s8(vcge_f32(v67.n128_u64[0], v65.n128_u64[0]));
        if (v68.n128_u8[0])
        {
          v131 = 0;
        }

        else
        {
          v131 = 0;
          v69 = v65.n128_f32[1];
          v70 = v67.n128_f32[1];
          v129 = v67;
          do
          {
            if (v69 <= v70)
            {
              v68.n128_f32[0] = v69;
              v132 = v65;
              do
              {
                v133 = v68;
                v65.n128_u32[1] = v68.n128_u32[0];
                v71 = sub_239EC2F44(v65.n128_u64[0]);
                v72 = llroundf(dword_27DF912CC * v71.f32[0]) + *(a1 + 168) * llroundf(vmuls_lane_f32(dword_27DF912CC, v71, 1));
                v73 = *(a1 + 80);
                v74 = vmulq_f32(*(v73 + 16 * v72), *(v73 + 16 * v72));
                if (sqrtf(vaddv_f32(*v74.f32) + v74.f32[2]) > 0.000001)
                {
                  v75 = v26;
                  v76 = 0;
                  v77 = v72;
                  v143[0] = 0;
                  v143[1] = 0;
                  v142 = v143;
                  v134 = *(v73 + 16 * v72);
                  *(&v78 + 1) = *(v73 + 16 * v72 + 8);
                  v135 = *(*(a1 + 88) + 16 * v72);
                  ++v131;
                  *&v78 = 0;
                  v138 = v78;
                  v137 = 0u;
                  do
                  {
                    v141 = vmlaq_n_f32(v135, xmmword_239F9BF70[v76], *(a1 + 172));
                    v79 = sub_239E9F448((a1 + 96), &v141);
                    v80 = v79;
                    if (v79)
                    {
                      v81 = v79[2].i64[0];
                      if (v81 != v79[2].i64[1])
                      {
                        v82 = v143[0];
                        if (!v143[0])
                        {
                          goto LABEL_24;
                        }

                        v83 = *v81;
                        v84 = v143;
                        do
                        {
                          if (*(v82 + 7) >= v83)
                          {
                            v84 = v82;
                          }

                          v82 = v82[*(v82 + 7) < v83];
                        }

                        while (v82);
                        if (v84 == v143 || v83 < *(v84 + 7))
                        {
LABEL_24:
                          sub_239E9F544(&v142, v81, v79[2].i64[0]);
                          v86 = v80[2].i64[0];
                          v85 = v80[2].i64[1];
                          while (v86 != v85)
                          {
                            v87 = *v86;
                            v88 = *(*(a1 + 80) + 16 * v87);
                            v89 = vmulq_f32(v88, v88);
                            if (sqrtf(vaddv_f32(*v89.f32) + v89.f32[2]) >= 0.000001)
                            {
                              v139 = *(*(a1 + 88) + 16 * v87);
                              v140 = *(*(a1 + 80) + 16 * v87);
                              if (sub_239E9F610(v144, (*(a1 + 136) + 8 * v87)) || *(*(*(a1 + 136) + 8 * v87) + 256) == *(*(*(a1 + 136) + 8 * v77) + 256))
                              {
                                v90.i32[0] = *(*(a1 + 144) + 4 * v87);
                                v136 = vmovl_u8(v90).u64[0];
                                v91 = vsubq_f32(v135, v139);
                                v92 = vmulq_f32(v91, v91);
                                v93 = sqrtf(vaddv_f32(*v92.f32) + v92.f32[2]);
                                v94 = vmulq_f32(v140, v134);
                                v95 = vaddv_f32(*v94.f32);
                                if ((v95 + v94.f32[2]) >= 0.0)
                                {
                                  v96 = v95 + v94.f32[2];
                                }

                                else
                                {
                                  v96 = 0.0;
                                }

                                v97 = v96 * 0.39894228 * expf((v93 * -4.0) / *(a1 + 172));
                                v98 = v138;
                                *&v98 = *&v138 + v97;
                                v138 = v98;
                                v137 = vmlaq_n_f32(v137, vcvtq_f32_u32(vmovl_u16(v136)), v97);
                              }
                            }

                            ++v86;
                          }
                        }
                      }
                    }

                    ++v76;
                  }

                  while (v76 != 8);
                  v99 = vmulq_f32(v137, vdivq_f32(v130, vdupq_lane_s32(*&v138, 0)));
                  if (v99.f32[3] < 5.0)
                  {
                    v100 = 0;
                  }

                  else
                  {
                    v100 = -1;
                  }

                  v101 = (*(a1 + 152) + 4 * v77);
                  *v101 = v99.f32[0];
                  v101[1] = v99.f32[1];
                  v101[2] = v99.f32[2];
                  v101[3] = v100;
                  sub_239E79AAC(&v142, v143[0]);
                  v26 = v75;
                }

                v66.n128_u32[0] = *v26;
                v65 = v132;
                v68 = v133;
                v68.n128_f32[0] = *v26 + v133.n128_f32[0];
              }

              while (v68.n128_f32[0] <= v70);
            }

            v65.n128_f32[0] = v66.n128_f32[0] + v65.n128_f32[0];
            v67 = v129;
          }

          while (v65.n128_f32[0] <= v129.n128_f32[0]);
        }

        objc_msgSend_lock(*(a1 + 32), v58, v59, v60, v65, v68, v67, v66, v61, v62, v63, v64, *&v129);
        *(*(*(a1 + 48) + 8) + 24) += v131;
        v102 = *(*(*(a1 + 48) + 8) + 24);
        v103 = *(a1 + 176);
        v115 = objc_msgSend_completedUnitCount(*(a1 + 40), v104, v105, v106, v111, v112, v113, v114, v107, v108, v109, v110);
        v125.n128_f32[0] = v103;
        v126.n128_f32[0] = (v102 * 5.0) / v103;
        v127 = *(a1 + 160);
        if (v115 - v127 < v126.n128_f32[0])
        {
          objc_msgSend_setCompletedUnitCount_(*(a1 + 40), v116, v127 + v126.n128_f32[0], v118, v126, v125, v123, v124, v119, v120, v121, v122);
        }

        objc_msgSend_unlock(*(a1 + 32), v116, v117, v118, v126, v125, v123, v124, v119, v120, v121, v122);
        sub_239E7B644(v144);
      }

LABEL_44:
      objc_msgSend_lock(*(a1 + 32), v44, v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);
      v24 = *(a1 + 56);
      v25 = v24[5];
    }

    while (v25);
  }

  return objc_msgSend_unlock(*(a1 + 32), v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
}

void *sub_239E9CEF0(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

float32x4_t *sub_239E9D158(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v6 == v12)
    {
      if (sub_239EC2FB4(a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t *sub_239E9D254(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC2FA4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void **sub_239E9D4AC(void **a1)
{
  sub_239E9D4E8(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239E9D4E8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

float32x4_t *sub_239E9D534(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC2FA4(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_239E9D7AC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

float32x4_t *sub_239E9D810(void *a1, float32x4_t *a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_239EC32B0(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13->u64[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = v13->i64[0];
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC32C0(v9, a1, v13 + 1, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_239E9DA88(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_239E9DB10(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_239E9DB10(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_239E9E10C(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_239E9DCE4(a1, &v9);
}

void sub_239E9DC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239E9DCE4(unint64_t *a1, void *a2)
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

      sub_239E9E10C(a1, v11);
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

void sub_239E9DDEC(const void **a1, void *a2)
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

      sub_239E9E10C(a1, v9);
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

void sub_239E9DEF8(unint64_t *a1, void *a2)
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

      sub_239E9E10C(a1[4], v11);
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

void sub_239E9E000(const void **a1, void *a2)
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

      sub_239E9E10C(a1[4], v9);
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

void sub_239E9E10C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239E9E154(uint64_t result, int8x16_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
LABEL_98:
        a2[-1].i64[1] = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_239E9E998(v9, a2->i64, a3);
      }

      else
      {

        return sub_239E9EA60(v9, a2->i64, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_239E9F024(v9->i64, a2->i64, a2->i64, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(a2[-1].i64[1], v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(a2[-1].i64[1]))
          {
            v25 = v8[v13];
            v8[v13] = a2[-1].i64[1];
            a2[-1].i64[1] = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(a2[-1].i64[0], v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(a2[-1].i64[0]))
          {
            v33 = v8[v26];
            v8[v26] = a2[-1].i64[0];
            a2[-1].i64[0] = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = a2[-1].i64[0];
        a2[-1].i64[0] = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(a2[-2].i64[1], v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = a2[-2].i64[1];
          a2[-2].i64[1] = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(a2[-2].i64[1]))
          {
            v40 = v8[v34];
            v8[v34] = a2[-2].i64[1];
            a2[-2].i64[1] = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = a2[-2].i64[1];
        a2[-2].i64[1] = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(a2[-1].i64[1], *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(a2[-1].i64[1]))
        {
          v32 = *v8;
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = a2[-1].i64[1];
      a2[-1].i64[1] = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = sub_239E9EAFC(v8, a2->i64, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = sub_239E9EC0C(v8, a2->i64, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = sub_239E9ED28(v8, v49, a3);
    v9 = &v49->u64[1];
    result = sub_239E9ED28(&v49->i64[1], a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = sub_239E9E154(v8, v49, a3, -v11, a5 & 1);
      v9 = &v49->u64[1];
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return sub_239E9E844(v9, &v9->i64[1], v9[1].i64, &a2[-1].i64[1], a3);
    }

    if (v12 == 5)
    {
      sub_239E9E844(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(a2[-1].i64[1], v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(a2[-1].i64[1]);
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_239E9E844(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_239E9E998(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_239E9EA60(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *sub_239E9EAFC(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_239E9EC0C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_239E9ED28(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_239E9E844(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_239E9E844(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_239E9F024(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_239E9F170(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_239E9F170(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = sub_239E9F298(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          sub_239E9F344(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_239E9F170(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *sub_239E9F298(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_239E9F344(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t sub_239E9F3E8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
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
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

float32x4_t *sub_239E9F448(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC32B0(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v6 == v12)
    {
      if (sub_239EC32C0(v7, a1, i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *sub_239E9F544(uint64_t a1, int *a2, _DWORD *a3)
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

void *sub_239E9F610(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_239E9F6FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_239E7BBE0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = i->i64[0])
  {
    sub_239E9F774(a1, i + 1, &i[1]);
  }

  return a1;
}

float32x4_t *sub_239E9F774(void *a1, float32x4_t *a2, uint64_t a3)
{
  v5 = sub_239EC32B0(a1, a2);
  v6 = v5;
  v7 = a1[1];
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
    sub_239E9F9E0();
  }

  while (1)
  {
    v13 = v12->u64[1];
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
    v12 = v12->i64[0];
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC32C0(v8, a1, v12 + 1, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_239E9F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_239E9D7AC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E9FA74(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239E9D7AC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_239EA0538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v39 = *(v37 - 176);
  if (v39)
  {
    *(v37 - 168) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

MDLSubmesh *sub_239EA06E8(void *a1, void *a2, unint64_t a3, unint64_t a4, __int16 a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = (8 * a4) | 6;
  if (a6 == 2)
  {
    v13 = 6 * a4 + 3;
  }

  __p = 0;
  v125 = 0;
  v126 = 0;
  sub_239EA0FEC(&__p, v13 * a3);
  if (a6 == 1)
  {
    if (a3)
    {
      v16 = 1;
      do
      {
        v123 = v16 - 1;
        sub_239EA1088(&__p, &v123);
        v17 = v16;
        v123 = v16 % a3;
        sub_239EA1088(&__p, &v123);
        v123 = v16 - 1;
        sub_239EA1088(&__p, &v123);
        v123 = a5;
        sub_239EA1088(&__p, &v123);
        ++v16;
      }

      while (v17 < a3);
    }
  }

  else if (a6 == 2 && a3)
  {
    v14 = 1;
    do
    {
      v123 = a5;
      sub_239EA1088(&__p, &v123);
      v123 = v14 - 1;
      sub_239EA1088(&__p, &v123);
      v123 = v14;
      sub_239EA1088(&__p, &v123);
      v15 = v14++;
    }

    while (v15 < a3);
  }

  if (a4)
  {
    v18 = 0;
    v19 = a3 + 1;
    do
    {
      v20 = (v18 + 1);
      if (a3)
      {
        LOWORD(v21) = 0;
        v22 = v19 * (v18 + 1);
        v23 = v19 * (v18 + 2);
        v24 = 1;
        do
        {
          v123 = v21 + v22;
          v122 = v22 + v24;
          v121 = v21 + v23;
          v120 = v23 + v24;
          sub_239EA1088(&__p, &v123);
          if (a6 == 2)
          {
            sub_239EA1088(&__p, &v121);
            sub_239EA1088(&__p, &v120);
            sub_239EA1088(&__p, &v123);
            sub_239EA1088(&__p, &v120);
            v25 = &v122;
          }

          else
          {
            sub_239EA1088(&__p, &v122);
            sub_239EA1088(&__p, &v122);
            v25 = &v120;
          }

          sub_239EA1088(&__p, v25);
          v21 = v24++;
        }

        while (v21 < a3);
      }

      v18 = v20;
    }

    while (v20 < a4);
  }

  v26 = objc_alloc(MEMORY[0x277CBEA90]);
  v35 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v26, v27, __p, v125 - __p, v31, v32, v33, v34, 0, v28, v29, v30);
  v45 = objc_msgSend_newBufferWithData_type_(v12, v36, v35, 2, v41, v42, v43, v44, v37, v38, v39, v40);
  if (objc_msgSend_conformsToProtocol_(v45, v46, &unk_284D24D98, v47, v52, v53, v54, v55, v48, v49, v50, v51))
  {
    v56 = v45;
    v67 = objc_msgSend_stringByAppendingString_(v11, v57, @"-Indices", v58, v63, v64, v65, v66, v59, v60, v61, v62);
    objc_msgSend_setName_(v56, v68, v67, v69, v74, v75, v76, v77, v70, v71, v72, v73);
  }

  v78 = [MDLMaterial alloc];
  v89 = objc_msgSend_stringByAppendingString_(v11, v79, @"-Material", v80, v85, v86, v87, v88, v81, v82, v83, v84);
  v90 = objc_opt_new();
  v100 = objc_msgSend_initWithName_scatteringFunction_(v78, v91, v89, v90, v96, v97, v98, v99, v92, v93, v94, v95);

  v101 = [MDLSubmesh alloc];
  v112 = objc_msgSend_stringByAppendingString_(v11, v102, @"-Submesh", v103, v108, v109, v110, v111, v104, v105, v106, v107);
  v118 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v101, v113, v112, v45, v114, v115, v116, v117, (v125 - __p) >> 1, 16, a6, v100, 0);

  if (__p)
  {
    v125 = __p;
    operator delete(__p);
  }

  return v118;
}

void sub_239EA0A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

MDLSubmesh *sub_239EA0B1C(void *a1, void *a2, unint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = (8 * a4) | 6;
  if (a6 == 2)
  {
    v13 = 6 * a4 + 3;
  }

  __p = 0;
  v123 = 0;
  v124 = 0;
  sub_239E95D48(&__p, v13 * a3);
  if (a6 == 1)
  {
    v121 = 0;
    if (a3)
    {
      v16 = 0;
      do
      {
        sub_239E73254(&__p, &v121);
        v120 = (v16 + 1) % a3;
        sub_239E73254(&__p, &v120);
        sub_239E73254(&__p, &v121);
        v120 = a5;
        sub_239E73254(&__p, &v120);
        v16 = ++v121;
      }

      while (v121 < a3);
    }
  }

  else if (a6 == 2 && a3)
  {
    v14 = 1;
    do
    {
      v121 = a5;
      sub_239E73254(&__p, &v121);
      v121 = v14 - 1;
      sub_239E73254(&__p, &v121);
      v121 = v14;
      sub_239E73254(&__p, &v121);
      v15 = v14++;
    }

    while (v15 < a3);
  }

  if (a4)
  {
    LODWORD(v17) = 0;
    v18 = a3 + 1;
    v19 = 2 * a3;
    v20 = a3;
    do
    {
      if (a3)
      {
        v21 = 1;
        do
        {
          v121 = v20 + v21;
          v119 = v19 + v21 + 1;
          v120 = v20 + v21 + 1;
          v118 = v19 + v21 + 2;
          sub_239E73254(&__p, &v121);
          if (a6 == 2)
          {
            sub_239E73254(&__p, &v119);
            sub_239E73254(&__p, &v118);
            sub_239E73254(&__p, &v121);
            sub_239E73254(&__p, &v118);
            v22 = &v120;
          }

          else
          {
            sub_239E73254(&__p, &v120);
            sub_239E73254(&__p, &v120);
            v22 = &v118;
          }

          sub_239E73254(&__p, v22);
          v23 = v21++;
        }

        while (v23 < a3);
      }

      v17 = (v17 + 1);
      v19 += v18;
      v20 += v18;
    }

    while (v17 < a4);
  }

  v24 = objc_alloc(MEMORY[0x277CBEA90]);
  v33 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v24, v25, __p, v123 - __p, v29, v30, v31, v32, 0, v26, v27, v28);
  v43 = objc_msgSend_newBufferWithData_type_(v12, v34, v33, 2, v39, v40, v41, v42, v35, v36, v37, v38);
  if (objc_msgSend_conformsToProtocol_(v43, v44, &unk_284D24D98, v45, v50, v51, v52, v53, v46, v47, v48, v49))
  {
    v54 = v43;
    v65 = objc_msgSend_stringByAppendingString_(v11, v55, @"-Indices", v56, v61, v62, v63, v64, v57, v58, v59, v60);
    objc_msgSend_setName_(v54, v66, v65, v67, v72, v73, v74, v75, v68, v69, v70, v71);
  }

  v76 = [MDLMaterial alloc];
  v87 = objc_msgSend_stringByAppendingString_(v11, v77, @"-Material", v78, v83, v84, v85, v86, v79, v80, v81, v82);
  v88 = objc_opt_new();
  v98 = objc_msgSend_initWithName_scatteringFunction_(v76, v89, v87, v88, v94, v95, v96, v97, v90, v91, v92, v93);

  v99 = [MDLSubmesh alloc];
  v110 = objc_msgSend_stringByAppendingString_(v11, v100, @"-Submesh", v101, v106, v107, v108, v109, v102, v103, v104, v105);
  v116 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v99, v111, v110, v43, v112, v113, v114, v115, (v123 - __p) >> 2, 32, a6, v98, 0);

  if (__p)
  {
    v123 = __p;
    operator delete(__p);
  }

  return v116;
}

void sub_239EA0EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EA0FEC(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_239EA1164(a1, a2);
    }

    sub_239E797B4();
  }
}

void sub_239EA1088(const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_239E797B4();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_239EA1164(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_239EA1164(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EA11A8(uint64_t *a1, float a2)
{
  v342 = *MEMORY[0x277D85DE8];
  v4 = (**a1)(a1);
  v5 = cos((a2 * 0.017453));
  v6 = *a1;
  if (!**a1 || !v6[1] || !v6[2] || !v6[3] || !v6[4] || v4 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5;
  do
  {
    v10 = (*(*a1 + 8))(a1, v8);
    if (v10 == 4)
    {
      v7 += 2;
    }

    else if (v10 == 3)
    {
      ++v7;
    }

    v8 = (v8 + 1);
  }

  while (v4 != v8);
  if (v7 < 1)
  {
    return 0;
  }

  v11 = malloc_type_malloc(12 * v7, 0x100004052888210uLL);
  v12 = malloc_type_malloc(88 * v7, 0x1020040F04E29DEuLL);
  v13 = v12;
  if (!v11 || !v12)
  {
    if (v11)
    {
      free(v11);
    }

    if (!v13)
    {
      return 0;
    }

    goto LABEL_33;
  }

  size = 12 * v7;
  v321 = v11;
  v304 = v4;
  v307 = v7;
  v315 = v7;
  v308 = v12;
  if ((**a1)(a1) < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = (v321 + 2);
    do
    {
      v19 = (*(*a1 + 8))(a1, v16);
      if ((v19 - 5) >= 0xFFFFFFFE)
      {
        v20 = v19;
        v21 = v13 + 88 * v17;
        *(v21 + 72) = v16;
        *(v21 + 80) = v15;
        if (v19 == 3)
        {
          *(v21 + 84) = 256;
          *(v21 + 86) = 2;
          v22 = 3 * v17;
          v23 = &v321[3 * v17];
          *v23 = v14;
          v23[1] = v14 + 1;
          v24 = v14 + 2;
          v25 = 1;
        }

        else
        {
          v26 = v13 + 88 * (v17 + 1);
          *(v26 + 72) = v16;
          v27 = v26;
          *(v26 + 80) = v15;
          v28 = 2;
          *&v336 = 0;
          (*(*a1 + 32))(a1, &v336, (v14 >> 2), 0);
          v29 = v336;
          *&v336 = 0;
          (*(*a1 + 32))(a1, &v336, (v14 >> 2), 1);
          v30 = v336;
          *&v336 = 0;
          (*(*a1 + 32))(a1, &v336, (v14 >> 2), 2);
          v31 = v336;
          *&v336 = 0;
          (*(*a1 + 32))(a1, &v336, (v14 >> 2), 3);
          v32 = vsub_f32(v31, v29);
          v33 = vmul_f32(v32, v32);
          v34 = vsub_f32(*&v336, v30);
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vzip2_s32(v33, v35), vzip1_s32(v33, v35));
          if (v36.f32[0] >= v36.f32[1] && (v36.f32[1] < v36.f32[0] || (DWORD2(v336) = 0, *&v336 = 0, (*(*a1 + 16))(a1, &v336, (v14 >> 2), 0), v324 = v336, v41 = *(&v336 + 4), DWORD2(v336) = 0, *&v336 = 0, (*(*a1 + 16))(a1, &v336, (v14 >> 2), 1), v322 = v336, v42 = *(&v336 + 4), DWORD2(v336) = 0, *&v336 = 0, (*(*a1 + 16))(a1, &v336, (v14 >> 2), 2), v317 = v336, v43 = *(&v336 + 4), DWORD2(v336) = 0, *&v336 = 0, (*(*a1 + 16))(a1, &v336, (v14 >> 2), 3), v44 = vsub_f32(v43, v41), v45 = vmul_f32(v44, v44), v46 = vsub_f32(*(&v336 + 4), v42), v47 = vmul_f32(v46, v46), v48 = vsub_f32(__PAIR64__(v317, v336), __PAIR64__(v324, v322)), v49 = vadd_f32(vmla_f32(vzip1_s32(v47, v45), v48, v48), vzip2_s32(v47, v45)), (vcgt_f32(vdup_lane_s32(v49, 1), v49).u32[0] & 1) != 0)))
          {
            v38 = (4 * v16) | 1;
            v40 = v14 + 3;
            v37 = 1;
            v28 = 3;
            v39 = v17;
          }

          else
          {
            v37 = 0;
            v38 = v14;
            v39 = v17;
            v40 = (4 * v16) | 2;
          }

          v24 = (4 * v16) | 3;
          *(v21 + 84) = 256;
          *(v21 + 86) = v28;
          v50 = &v321[3 * v39];
          *v50 = v14;
          v50[1] = v14 + 1;
          v50[2] = v40;
          *(v27 + 84) = v37;
          *(v27 + 85) = 770;
          v22 = 3 * (v17 + 1);
          v51 = &v321[v22];
          *v51 = v38;
          v51[1] = v14 + 2;
          v25 = 2;
          v13 = v308;
          v18 = (v321 + 2);
        }

        *&v18[4 * v22] = v24;
        v17 += v25;
        v15 += v20;
      }

      v16 = (v16 + 1);
      v14 += 4;
    }

    while (v16 < (**a1)(a1));
  }

  v305 = v15;
  v53 = (v315 + 3) & 0xFFFFFFFC;
  v54 = vdupq_n_s64(v315 - 1);
  v55 = xmmword_239F9AD30;
  v56 = xmmword_239F9AD40;
  v57 = (v13 + 252);
  v58 = vdupq_n_s64(4uLL);
  do
  {
    v59 = vmovn_s64(vcgeq_u64(v54, v56));
    if (vuzp1_s16(v59, *v54.i8).u8[0])
    {
      *(v57 - 44) = 0;
    }

    if (vuzp1_s16(v59, *&v54).i8[2])
    {
      *(v57 - 22) = 0;
    }

    if (vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, *&v55))).i32[1])
    {
      *v57 = 0;
      v57[22] = 0;
    }

    v55 = vaddq_s64(v55, v58);
    v56 = vaddq_s64(v56, v58);
    v57 += 88;
    v53 -= 4;
  }

  while (v53);
  DWORD2(v336) = 0;
  *&v336 = 0;
  (*(*a1 + 16))(a1, &v336, 0, 0);
  v60 = *(&v336 + 1);
  v61 = *&v336;
  v62 = 3 * v307;
  if (3 * v307 <= 2)
  {
    v63 = 2;
  }

  else
  {
    v63 = 3 * v307;
  }

  v64 = *(&v336 + 2);
  v65 = 4 * v63;
  v66 = 4;
  v67 = *&v336;
  v68 = *(&v336 + 2);
  v69 = *(&v336 + 1);
  do
  {
    v70 = v321[v66 / 4];
    DWORD2(v336) = 0;
    *&v336 = 0;
    (*(*a1 + 16))(a1, &v336, (v70 >> 2), v70 & 3);
    if (v67 < *&v336)
    {
      v71 = *&v336;
    }

    else
    {
      v71 = v67;
    }

    if (v61 > *&v336)
    {
      v61 = *&v336;
    }

    else
    {
      v67 = v71;
    }

    if (v69 < *(&v336 + 1))
    {
      v72 = *(&v336 + 1);
    }

    else
    {
      v72 = v69;
    }

    if (v60 > *(&v336 + 1))
    {
      v60 = *(&v336 + 1);
    }

    else
    {
      v69 = v72;
    }

    if (v64 <= *(&v336 + 2))
    {
      if (v68 < *(&v336 + 2))
      {
        v68 = *(&v336 + 2);
      }
    }

    else
    {
      v64 = *(&v336 + 2);
    }

    v66 += 4;
  }

  while (v65 != v66);
  v73 = v67 - v61;
  v74 = v68 - v64;
  v75 = (v69 - v60) > (v68 - v64) && (v69 - v60) > (v67 - v61);
  v76 = v74 <= v73;
  if (v74 > v73)
  {
    v77 = v64;
  }

  else
  {
    v77 = v61;
  }

  if (v76)
  {
    v78 = v67;
  }

  else
  {
    v78 = v68;
  }

  v79 = v76;
  if (v75)
  {
    v80 = v60;
  }

  else
  {
    v80 = v77;
  }

  if (v75)
  {
    v81 = v69;
  }

  else
  {
    v81 = v78;
  }

  if (v75)
  {
    v82 = 0;
  }

  else
  {
    v82 = v79;
  }

  v83 = malloc_type_malloc(size, 0x100004052888210uLL);
  v84 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  v85 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  v86 = malloc_type_malloc(0x2000uLL, 0x100004052888210uLL);
  v87 = v86;
  v306 = v9;
  if (v83 && v84 && v85 && v86)
  {
    v318 = v83;
    v310 = v85;
    bzero(v84, 0x2000uLL);
    bzero(v87, 0x2000uLL);
    v88 = 0;
    if (v62 <= 1)
    {
      v89 = 1;
    }

    else
    {
      v89 = v62;
    }

    v331 = v89;
    v90 = 4 * v89;
    do
    {
      v91 = v321[v88 / 4];
      DWORD2(v336) = 0;
      *&v336 = 0;
      (*(*a1 + 16))(a1, &v336, (v91 >> 2), v91 & 3);
      v92 = &v336 + 1;
      if (!v75)
      {
        v92 = &v336 + 2;
      }

      if (v82)
      {
        v92 = &v336;
      }

      v93 = sub_239EA3CD4(v80, v81, *v92);
      ++*(v84 + v93);
      v88 += 4;
    }

    while (v90 != v88);
    v94 = 0;
    v95 = 0;
    *v310 = 0;
    do
    {
      v95 += *(v84 + v94);
      v310[++v94] = v95;
    }

    while (v94 != 2047);
    sizea = v84;
    v96 = 0;
    v97 = v321;
    do
    {
      v98 = v321[v96];
      DWORD2(v336) = 0;
      *&v336 = 0;
      (*(*a1 + 16))(a1, &v336, (v98 >> 2), v98 & 3);
      v99 = &v336 + 1;
      if (!v75)
      {
        v99 = &v336 + 2;
      }

      if (v82)
      {
        v99 = &v336;
      }

      v100 = sub_239EA3CD4(v80, v81, *v99);
      *&v83[4 * v310[v100] + 4 * (*(v87 + v100))++] = v96++;
    }

    while (v331 != v96);
    free(v87);
    v101 = *sizea;
    for (i = 1; i != 2048; ++i)
    {
      if (v101 <= sizea[i])
      {
        v101 = sizea[i];
      }
    }

    v103 = 0;
    v309 = malloc_type_malloc(16 * v101, 0x1000040451B5BE8uLL);
    do
    {
      v104 = sizea[v103];
      if (v104 >= 2)
      {
        v105 = &v318[4 * v310[v103]];
        if (v309)
        {
          v106 = v309 + 3;
          v107 = sizea[v103];
          do
          {
            v108 = *v105;
            v105 += 4;
            v109 = *(v97 + 4 * v108);
            DWORD2(v336) = 0;
            *&v336 = 0;
            (*(*a1 + 16))(a1, &v336, (v109 >> 2), v109 & 3);
            v110 = DWORD2(v336);
            *(v106 - 3) = v336;
            *(v106 - 1) = v110;
            *v106 = v108;
            v106 += 4;
            --v107;
          }

          while (v107);
          sub_239EA3D00(v97, v309, a1, 0, (v104 - 1));
        }

        else
        {
          for (j = 0; j != v104; ++j)
          {
            v112 = *&v105[4 * j];
            v113 = *(v97 + 4 * v112);
            DWORD2(v336) = 0;
            *&v336 = 0;
            (*(*a1 + 16))(a1, &v336, (v113 >> 2), v113 & 3);
            v114 = v336;
            v332 = *(&v336 + 2);
            DWORD2(v336) = 0;
            *&v336 = 0;
            (*(*a1 + 24))(a1, &v336, (v113 >> 2), v113 & 3);
            v115 = v336;
            v326 = *(&v336 + 2);
            *&v336 = 0;
            (*(*a1 + 32))(a1, &v336, (v113 >> 2), v113 & 3);
            if (j)
            {
              v116 = 0;
              v117 = v336;
              while (1)
              {
                v118 = *&v105[4 * v116];
                v119 = v321[v118];
                DWORD2(v336) = 0;
                *&v336 = 0;
                (*(*a1 + 16))(a1, &v336, (v119 >> 2), v119 & 3);
                v120 = v336;
                v121 = *(&v336 + 2);
                DWORD2(v336) = 0;
                *&v336 = 0;
                (*(*a1 + 24))(a1, &v336, (v119 >> 2), v119 & 3);
                v122 = v336;
                v123 = *(&v336 + 2);
                *&v336 = 0;
                (*(*a1 + 32))(a1, &v336, (v119 >> 2), v119 & 3);
                if (*&v114 == *&v120 && *(&v114 + 1) == *(&v120 + 1) && v332 == v121 && *&v115 == *&v122 && *(&v115 + 1) == *(&v122 + 1) && v326 == v123 && *&v117 == *&v336 && *(&v117 + 1) == *(&v336 + 1))
                {
                  break;
                }

                if (j == ++v116)
                {
                  goto LABEL_130;
                }
              }

              v321[v112] = v321[v118];
            }

LABEL_130:
            v97 = v321;
          }
        }
      }

      ++v103;
    }

    while (v103 != 2048);
    if (v309)
    {
      free(v309);
    }

    free(v318);
    free(sizea);
    free(v310);
    v124 = v315;
  }

  else
  {
    if (v83)
    {
      free(v83);
    }

    if (v84)
    {
      free(v84);
    }

    if (v85)
    {
      free(v85);
    }

    if (v87)
    {
      free(v87);
    }

    v125 = 0;
    v126 = 1;
    do
    {
      v127 = 0;
      v319 = v125;
      v128 = &v321[3 * v125];
      do
      {
        v129 = *&v128[4 * v127];
        DWORD2(v336) = 0;
        *&v336 = 0;
        (*(*a1 + 16))(a1, &v336, (v129 >> 2), v129 & 3);
        v130 = v336;
        v333 = *(&v336 + 2);
        DWORD2(v336) = 0;
        *&v336 = 0;
        (*(*a1 + 24))(a1, &v336, (v129 >> 2), v129 & 3);
        v131 = v336;
        v327 = *(&v336 + 2);
        *&v336 = 0;
        (*(*a1 + 32))(a1, &v336, (v129 >> 2), v129 & 3);
        v132 = 0;
        v133 = v336;
        v134 = v321;
LABEL_146:
        v135 = 0;
        while (1)
        {
          v136 = v134[v135];
          DWORD2(v336) = 0;
          *&v336 = 0;
          (*(*a1 + 16))(a1, &v336, (v136 >> 2), v136 & 3);
          v137 = v336;
          v138 = *(&v336 + 2);
          DWORD2(v336) = 0;
          *&v336 = 0;
          (*(*a1 + 24))(a1, &v336, (v136 >> 2), v136 & 3);
          v139 = v336;
          v140 = *(&v336 + 2);
          *&v336 = 0;
          (*(*a1 + 32))(a1, &v336, (v136 >> 2), v136 & 3);
          if (*&v130 == *&v137 && *(&v130 + 1) == *(&v137 + 1) && v333 == v138 && *&v131 == *&v139 && *(&v131 + 1) == *(&v139 + 1) && v327 == v140 && *&v133 == *&v336 && *(&v133 + 1) == *(&v336 + 1))
          {
            break;
          }

          if (++v135 == 3)
          {
            ++v132;
            v134 += 3;
            if (v132 != v126)
            {
              goto LABEL_146;
            }

            break;
          }
        }

        *&v128[4 * v127++] = -1;
      }

      while (v127 != 3);
      v125 = v319 + 1;
      ++v126;
      v124 = v315;
    }

    while (v319 + 1 != v315);
  }

  v141 = 0;
  v142 = v321 + 2;
  v143 = 19;
  v144 = v308;
  do
  {
    v145 = *(v142 - 2);
    v146 = *(v142 - 1);
    v147 = *v142;
    DWORD2(v336) = 0;
    *&v336 = 0;
    (*(*a1 + 16))(a1, &v336, (v145 >> 2), v145 & 3);
    v148 = v336;
    v149 = *(&v336 + 2);
    DWORD2(v336) = 0;
    *&v336 = 0;
    (*(*a1 + 16))(a1, &v336, (v146 >> 2), v146 & 3);
    v150 = v336;
    v151 = *(&v336 + 2);
    DWORD2(v336) = 0;
    *&v336 = 0;
    (*(*a1 + 16))(a1, &v336, (v147 >> 2), v147 & 3);
    if (*&v148 == *&v150 && *(&v148 + 1) == *(&v150 + 1) && v149 == v151 || *&v148 == *&v336 && *(&v148 + 1) == *(&v336 + 1) && v149 == *(&v336 + 2) || *&v150 == *&v336 && *(&v150 + 1) == *(&v336 + 1) && v151 == *(&v336 + 2))
    {
      v308[v143] |= 1u;
      ++v141;
    }

    v142 += 3;
    v143 += 22;
    --v124;
  }

  while (v124);
  v152 = (v307 - v141);
  if (v307 != 1)
  {
    v153 = 0;
    do
    {
      v154 = &v308[22 * v153];
      if (v154[18] == v154[40])
      {
        v155 = v154[19];
        v156 = v154[41];
        if ((v156 ^ v155))
        {
          v154[19] = v155 | 2;
          v154[41] = v156 | 2;
        }

        v153 += 2;
      }

      else
      {
        ++v153;
      }
    }

    while (v153 < v307 - 1);
  }

  if (v152 >= 1)
  {
    v157 = 0;
    LODWORD(v158) = 1;
    v159 = v321;
    while (1)
    {
      v160 = &v308[22 * v157];
      if (v160[76])
      {
        if (v158 >= v307)
        {
          goto LABEL_195;
        }

        do
        {
          v162 = v308[22 * v158 + 19] & 1;
          v158 = v162 + v158;
          if (v162)
          {
            v163 = v158 < v307;
          }

          else
          {
            v163 = 0;
          }
        }

        while (v163);
        if (v162)
        {
LABEL_195:
          v172 = v308 + 19;
          v173 = (v307 - v141);
          do
          {
            *(v172 - 19) = -1;
            *(v172 - 17) = -1;
            *(v172 - 15) = 0;
            *(v172 - 11) = 0;
            *(v172 - 13) = 0;
            *v172 |= 4u;
            *(v172 - 9) = 0uLL;
            *(v172 - 5) = 0uLL;
            v172 += 22;
            --v173;
          }

          while (v173);
          v174 = v321 + 2;
          v175 = (v308 + 19);
          v176 = v152;
          do
          {
            v177 = *(v174 - 2);
            DWORD2(v336) = 0;
            *&v336 = 0;
            (*(*a1 + 16))(a1, &v336, (v177 >> 2), v177 & 3);
            v328 = v336;
            v329 = *(&v336 + 4);
            v178 = &v336 + 2;
            v179 = vld1_dup_f32(v178);
            v180 = *(v174 - 1);
            DWORD2(v336) = 0;
            *&v336 = 0;
            (*(*a1 + 16))(a1, &v336, (v180 >> 2), v180 & 3);
            v323 = DWORD1(v336);
            v320 = v336;
            v325 = DWORD2(v336);
            v181 = *v174;
            DWORD2(v336) = 0;
            *&v336 = 0;
            (*(*a1 + 16))(a1, &v336, (v181 >> 2), v181 & 3);
            sizeb = DWORD1(v336);
            v311 = v336;
            v316 = DWORD2(v336);
            v182 = *(v174 - 2);
            *&v336 = 0;
            (*(*a1 + 32))(a1, &v336, (v182 >> 2), v182 & 3);
            v183 = v336;
            v184 = *(v174 - 1);
            *&v336 = 0;
            (*(*a1 + 32))(a1, &v336, (v184 >> 2), v184 & 3);
            v334 = DWORD1(v336);
            v330 = v336;
            v185 = *v174;
            *&v336 = 0;
            (*(*a1 + 32))(a1, &v336, (v185 >> 2), v185 & 3);
            v186 = vsub_f32(__PAIR64__(v334, v336), v183);
            v187 = vsub_f32(__PAIR64__(DWORD1(v336), v330), v183);
            v188 = vmul_f32(vext_s8(v187, v186, 4uLL), __PAIR64__(v186.u32[1], v187.u32[0]));
            v190 = vsub_f32(v188, vdup_lane_s32(v188, 1));
            v189 = v175->i32[0] | (8 * (*v190.i32 > 0.0));
            v175->i32[0] = v189;
            *v190.i32 = fabsf(*v190.i32);
            if (*v190.i32 > 1.1755e-38)
            {
              v191 = vsub_f32(__PAIR64__(v320, v311), vdup_lane_s32(v328, 0));
              v192 = vsub_f32(__PAIR64__(v323, sizeb), vdup_lane_s32(v329, 0));
              v193 = vsub_f32(__PAIR64__(v325, v316), v179);
              v194 = vmul_f32(v186, vrev64_s32(v192));
              v195 = vmul_f32(v186, vrev64_s32(v193));
              v196 = vmla_f32(vneg_f32(vmul_f32(v186, vrev64_s32(v191))), v191, v187);
              v197 = vmla_f32(vneg_f32(v194), v192, v187);
              v198 = vmla_f32(vneg_f32(v195), v193, v187);
              v199 = vsqrt_f32(vmla_f32(vmla_f32(vmul_f32(v197, v197), v196, v196), v198, v198));
              if ((v189 & 8) != 0)
              {
                v200 = 1.0;
              }

              else
              {
                v200 = -1.0;
              }

              if (fabsf(v199.f32[1]) > 1.1755e-38)
              {
                *(v175 - 36) = vmul_n_f32(vzip2_s32(v196, v197), v200 / v199.f32[1]);
                v175[-4].f32[1] = vmuls_lane_f32(v200 / v199.f32[1], v198, 1);
              }

              if (fabsf(v199.f32[0]) > 1.1755e-38)
              {
                v201 = v200 / v199.f32[0];
                v175[-3] = vmul_n_f32(vzip1_s32(v196, v197), v201);
                v175[-2].f32[0] = v201 * v198.f32[0];
              }

              v202 = vdiv_f32(v199, vdup_lane_s32(v190, 0));
              *(&v175[-2] + 4) = vrev64_s32(v202);
              v203 = vmvn_s8(vcgt_f32(vabs_f32(v202), 0x80000000800000));
              if (((v203.i32[1] | v203.i32[0]) & 1) == 0)
              {
                v175->i32[0] = v189 & 0xFFFFFFFB;
              }
            }

            v174 += 3;
            v175 += 11;
            --v176;
          }

          while (v176);
          if (v152 != 1)
          {
            v204 = 0;
            do
            {
              v205 = v204;
              v206 = &v308[22 * v204];
              v207 = v205 + 1;
              if (v206[18] == v206[40])
              {
                v208 = v206[19];
                v209 = v206[41];
                if (((v208 | v209) & 1) == 0 && ((v209 ^ v208) & 8) != 0)
                {
                  if ((v209 & 4) != 0 || (sub_239EA41E8(a1, &v321[3 * v205]), v211 = v210, sub_239EA41E8(a1, &v321[3 * v207]), v211 >= v212))
                  {
                    v213 = v205;
                  }

                  else
                  {
                    v213 = v205 + 1;
                    v207 = v205;
                  }

                  v214 = &v308[22 * v207];
                  v215 = *(v214 + 19) & 0xFFFFFFF7;
                  *(v214 + 19) = v215;
                  *(v214 + 19) = v308[22 * v213 + 19] & 8 | v215;
                }

                LODWORD(v207) = v205 + 2;
              }

              v204 = v207;
            }

            while (v207 < v152 - 1);
          }

          break;
        }

        v164 = 0;
        v161 = v158 + 1;
        v165 = &v321[3 * v158];
        do
        {
          v166 = v159[v164];
          v159[v164] = *&v165[v164 * 4];
          *&v165[v164 * 4] = v166;
          ++v164;
        }

        while (v164 != 3);
        v338 = *(v160 + 2);
        v339 = *(v160 + 3);
        v340 = *(v160 + 4);
        v341 = *(v160 + 10);
        v336 = *v160;
        v337 = *(v160 + 1);
        v167 = &v308[22 * v158];
        v168 = *(v167 + 1);
        *v160 = *v167;
        *(v160 + 1) = v168;
        v170 = *(v167 + 3);
        v169 = *(v167 + 4);
        v171 = *(v167 + 2);
        *(v160 + 10) = *(v167 + 10);
        *(v160 + 3) = v170;
        *(v160 + 4) = v169;
        *(v160 + 2) = v171;
        *v167 = v336;
        *(v167 + 10) = v341;
        *(v167 + 4) = v340;
        *(v167 + 3) = v339;
        *(v167 + 2) = v338;
        *(v167 + 1) = v337;
      }

      else if (v158 <= v157 + 2)
      {
        v161 = v157 + 2;
      }

      else
      {
        v161 = v158;
      }

      ++v157;
      v159 += 3;
      LODWORD(v158) = v161;
      if (v157 == v152)
      {
        goto LABEL_195;
      }
    }
  }

  v216 = malloc_type_malloc(36 * v152, 0x10000403E1C8BA9uLL);
  v217 = (3 * v152);
  if (v216)
  {
    v218 = v216;
    if (v152 <= 0)
    {
      sub_239EA42E0(v216, 0, (v217 - 1), 0, 0x26065CAu);
    }

    else
    {
      v219 = 0;
      v220 = v216 + 8;
      v221 = v321;
      do
      {
        v222 = 0;
        v224 = v220;
        do
        {
          v225 = v221[v222];
          if (v222 == 2)
          {
            v226 = 0;
          }

          else
          {
            v226 = v222 + 1;
          }

          v227 = v222 + 1;
          v223 = &v321[3 * v219];
          v228 = *&v223[4 * v226];
          if (v225 >= v228)
          {
            v229 = *&v223[4 * v226];
          }

          else
          {
            v229 = v225;
          }

          if (v225 > v228)
          {
            v228 = v225;
          }

          *(v224 - 2) = v229;
          *(v224 - 1) = v228;
          *v224 = v219;
          v224 += 3;
          v222 = v227;
        }

        while (v227 != 3);
        ++v219;
        v221 += 3;
        v220 += 9;
      }

      while (v219 != v152);
      sub_239EA42E0(v216, 0, (v217 - 1), 0, 0x26065CAu);
      v230 = 0;
      v231 = 0;
      v232 = v217 - 1;
      v233 = 3;
      do
      {
        if (v218[3 * v231] != v218[v233])
        {
          sub_239EA42E0(v218, v231, v230, 1, 0x26065CAu);
          v231 = (v230 + 1);
        }

        ++v230;
        v233 += 3;
      }

      while (v232 != v230);
      v234 = 0;
      v235 = 0;
      v236 = v218 + 4;
      do
      {
        v237 = &v218[3 * v235];
        if (*v237 != *(v236 - 1) || v237[1] != *v236)
        {
          sub_239EA42E0(v218, v235, v234, 2, 0x26065CAu);
          v235 = (v234 + 1);
        }

        ++v234;
        v236 += 3;
      }

      while (v232 != v234);
      v238 = 0;
      v144 = v308;
      do
      {
        v239 = &v218[3 * v238];
        v240 = *v239;
        v241 = v239[1];
        v242 = v239[2];
        v243 = &v321[3 * v242];
        v244 = *v243;
        v246 = v243 + 1;
        v245 = v243[1];
        if (*v243 == v240 || v244 == v241)
        {
          if (v245 == v240 || v245 == v241)
          {
            v249 = 0;
          }

          else
          {
            v244 = v243[2];
            v249 = 2;
            v246 = &v321[3 * v242];
          }
        }

        else
        {
          v246 = v243 + 2;
          v244 = v243[1];
          v249 = 1;
        }

        v250 = &v308[22 * v242];
        ++v238;
        if (*&v250[4 * v249] == -1 && v238 < v217)
        {
          v252 = &v218[3 * v238];
          if (v240 == *v252 && v241 == v252[1])
          {
            v253 = *v246;
            v254 = v238;
            v255 = v238;
            do
            {
              v256 = v218[3 * v254 + 2];
              v257 = &v321[3 * v256];
              v258 = *v257;
              v259 = v257 + 1;
              v260 = v257[1];
              if (*v257 == v240 || v258 == v241)
              {
                if (v260 == v240 || v260 == v241)
                {
                  v263 = 0;
                }

                else
                {
                  v258 = v257[2];
                  v263 = 2;
                  v259 = &v321[3 * v256];
                }
              }

              else
              {
                v259 = v257 + 2;
                v263 = 1;
                v258 = v257[1];
              }

              if (v244 == *v259 && ((v264 = v308[22 * v256 + v263], v253 == v258) ? (v265 = v264 == -1) : (v265 = 0), v265))
              {
                v267 = 0;
                v266 = 1;
              }

              else
              {
                v266 = 0;
                ++v255;
                v267 = 1;
              }

              v268 = &v218[3 * v255];
              if (v255 >= v217 || v240 != *v268)
              {
                break;
              }

              v254 = v255;
              v269 = v267 ^ 1;
              if (v241 != v268[1])
              {
                v269 = 1;
              }
            }

            while ((v269 & 1) == 0);
            if (v266)
            {
              v270 = v268[2];
              *&v250[4 * v249] = v270;
              v308[22 * v270 + v263] = v242;
            }
          }
        }
      }

      while (v238 != v217);
    }

    free(v218);
  }

  else if (v152 >= 1)
  {
    for (k = 0; k != v152; ++k)
    {
      v272 = 0;
      v273 = &v308[22 * k];
      v274 = &v321[3 * k];
      do
      {
        if (*&v273[4 * v272] == -1)
        {
          v276 = 0;
          v275 = v272 + 1;
          v277 = (v272 + 1);
          if (v272 == 2)
          {
            v277 = 0;
          }

          v278 = *&v274[4 * v277];
          v279 = v321;
          v280 = v308;
          while (k == v276)
          {
LABEL_306:
            ++v276;
            v280 += 22;
            v279 += 3;
            if (v276 == v152)
            {
              goto LABEL_309;
            }
          }

          v281 = 0;
          while (1)
          {
            v282 = v281 < 2 ? v281 + 1 : 0;
            if (*&v274[4 * v272] == v321[3 * v276 + v282] && v278 == v279[v281])
            {
              break;
            }

            if (++v281 == 3)
            {
              goto LABEL_306;
            }
          }

          *&v273[4 * v272] = v276;
          v280[v281] = k;
        }

        else
        {
          v275 = v272 + 1;
        }

LABEL_309:
        v272 = v275;
      }

      while (v275 != 3);
    }
  }

  v283 = malloc_type_malloc(24 * v217, 0x101004035137979uLL);
  v284 = malloc_type_malloc(12 * v152, 0x100004052888210uLL);
  v285 = v284;
  if (!v283 || !v284)
  {
    if (v283)
    {
      free(v283);
    }

    if (v285)
    {
      free(v285);
    }

    free(v321);
    v52 = v144;
    goto LABEL_341;
  }

  v286 = v144;
  v287 = sub_239EA2C40(v144, v283, v284, v321, v152);
  v288 = malloc_type_malloc(40 * v305, 0x10000400A747E1EuLL);
  if (!v288)
  {
    free(v321);
    free(v286);
    free(v283);
    v52 = v285;
    goto LABEL_341;
  }

  v13 = v288;
  bzero(v288, 40 * v305);
  if (v305 >= 1)
  {
    v289 = v305;
    v290 = (v13 + 16);
    do
    {
      *(v290 - 1) = xmmword_239F9C020;
      *v290 = xmmword_239F9C030;
      v290 = (v290 + 40);
      --v289;
    }

    while (v289);
  }

  v291 = sub_239EA2D9C(v13, v308, v283, v287, v321, a1, v306);
  free(v283);
  free(v285);
  if (!v291)
  {
    free(v308);
    free(v321);
LABEL_33:
    v52 = v13;
LABEL_341:
    free(v52);
    return 0;
  }

  v292 = v13;
  sub_239EA3A44(v13, v308, v321, a1, v152, v307);
  free(v308);
  free(v321);
  v293 = 0;
  v294 = 0;
  do
  {
    v295 = (*(*a1 + 8))(a1, v293);
    if ((v295 - 3) <= 1)
    {
      v297 = v295;
      v298 = 0;
      v299 = v292 + 40 * v294 + 20;
      do
      {
        *&v336 = *(v299 - 20);
        DWORD2(v336) = *(v299 - 12);
        v335[0] = *(v299 - 4);
        v335[1] = *v299;
        v335[2] = *(v299 + 4);
        v300 = *a1;
        v301 = *(*a1 + 48);
        if (v301)
        {
          v301(a1, &v336, v335, *(v299 + 16), v293, v298, *(v299 - 8), *(v299 + 8));
          v300 = *a1;
        }

        v302 = v300[5];
        if (v302)
        {
          if (*(v299 + 16) == 1)
          {
            v296.n128_f32[0] = 1.0;
          }

          else
          {
            v296.n128_f32[0] = -1.0;
          }

          (v302)(a1, &v336, v293, v298, v296);
        }

        v298 = (v298 + 1);
        v299 += 40;
      }

      while (v297 != v298);
      v294 += v298;
    }

    v293 = (v293 + 1);
  }

  while (v293 != v304);
  free(v292);
  return 1;
}