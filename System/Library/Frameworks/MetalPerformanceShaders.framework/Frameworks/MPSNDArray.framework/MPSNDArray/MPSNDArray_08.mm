void sub_239A8E464(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

void CallNDArrayNewGradientEncode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  if (a4 < a5)
  {
    for (i = 0; i < [v7 count]; ++i)
    {
      [*(a6 + 224) objectAtIndexedSubscript:i];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }
    }

    v9 = *(*(a6 + 216) + 80 * i + 72);
    if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
    {
      v66 = *(*(a6 + 216) + 80 * i + 72);
      v67 = *(a1 + *MEMORY[0x277CD7360]);
      if (!v67)
      {
        v68 = objc_opt_class();
        v67 = NSStringFromClass(v68);
      }

      v10 = a2;
      [a2 pushDebugGroup:v67];
      v9 = v66;
    }

    else
    {
      v10 = 0;
    }

    (*(a1 + 104))(*(a1 + 96), a2, a3, a6, v9);
    if (v10)
    {
      [v10 popDebugGroup];
    }

    return;
  }

  v12 = *(a6 + 224);
  v13 = *(a6 + 112);
  v72 = *(a6 + 208);
  v14 = v13 + *MEMORY[0x277CD7410];
  v116[0] = *(v13 + *MEMORY[0x277CD73D8]);
  v74 = *(v14 + 4 * (*(v116 | a4 & 0xF) & 0xF));
  v75 = *(a6 + 192);
  v15 = malloc_type_calloc([v7 count], 8uLL, 0x100004000313F17uLL);
  if ([v7 count])
  {
    v16 = 0;
    v17 = 64;
    do
    {
      v15[v16++] = *(*(a6 + 8) + v17);
      v17 += 80;
    }

    while (v16 < [v7 count]);
  }

  v18 = malloc_type_calloc([v12 count], 8uLL, 0x100004000313F17uLL);
  if ([v12 count])
  {
    v19 = 0;
    v20 = 64;
    do
    {
      v18[v19++] = *(*(a6 + 216) + v20);
      v20 += 80;
    }

    while (v19 < [v12 count]);
  }

  v115 = *(v13 + *MEMORY[0x277CD73D8]);
  v21 = *(&v115 | a4 & 0xF);
  v73 = *(a6 + 96);
  v22 = *(a6 + 4 * (v21 & 0xF) + 32);
  v83 = v18;
  v87 = v15;
  if (*(&v115 | a4 & 0xF))
  {
    makeStrideBytes();
    if (v21 >= 0x10)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21;
    }

    v24 = *(&v116[1] + (v23 & 0xF));
    if (!v74)
    {
      goto LABEL_53;
    }

    goto LABEL_22;
  }

  v24 = *(v13 + *MEMORY[0x277CD73C8]) >> 3;
  if (v74)
  {
LABEL_22:
    v25 = 0;
    v70 = a4 - 1;
    v71 = v24 * v22;
    v69 = (&v104 | a4 & 0xF);
    v82 = (&v107 | a4 & 0xF);
    v81 = (&v106 | a4 & 0xF);
    v80 = (&v105 | a4 & 0xF);
    v86 = (&v112 | a4 & 0xF);
    v85 = (&v111 | a4 & 0xF);
    v84 = (&v110 | a4 & 0xF);
    while (1)
    {
      if ([v7 count])
      {
        v33 = 0;
        v34 = 0;
        do
        {
          v37 = [v7 objectAtIndexedSubscript:v34];
          v38 = (v37 + *MEMORY[0x277CD7410]);
          v96 = v38[1];
          v100 = *v38;
          v88 = v38[3];
          v92 = v38[2];
          v39 = [v7 objectAtIndexedSubscript:v34];
          v40 = MEMORY[0x277CD73D8];
          v110 = *(v39 + *MEMORY[0x277CD73D8]);
          v114[2] = v92;
          v114[3] = v88;
          v114[0] = v100;
          v114[1] = v96;
          v41 = *(v114 + (*v84 & 0xF));
          v42 = (*(a6 + 8) + v33);
          v97 = v42[1];
          v101 = *v42;
          v89 = v42[3];
          v93 = v42[2];
          v111 = *([v7 objectAtIndexedSubscript:v34] + *v40);
          v113[2] = v93;
          v113[3] = v89;
          v113[0] = v101;
          v113[1] = v97;
          v43 = *(v113 + (*v85 & 0xF));
          v44 = [v7 objectAtIndexedSubscript:v34];
          v112 = *([v7 objectAtIndexedSubscript:v34] + *v40);
          v45 = *v86;
          if (*v86)
          {
            makeStrideBytes();
            if (v45 >= 0x10)
            {
              v35 = 0;
            }

            else
            {
              v35 = v45;
            }

            v36 = *(&v116[1] + (v35 & 0xF));
          }

          else
          {
            v36 = *(v44 + *MEMORY[0x277CD73C8]) >> 3;
          }

          *(*(a6 + 8) + v33 + 64) = v87[v34++] + v36 * v43 * (v25 % v41);
          v33 += 80;
        }

        while (v34 < [v7 count]);
      }

      v46 = v83;
      if ([v12 count])
      {
        break;
      }

LABEL_23:
      v26 = v72 + *MEMORY[0x277CD7410];
      v104 = *(v72 + *MEMORY[0x277CD73D8]);
      v27 = *v69;
      v28 = 4 * (v27 & 0xF);
      v29 = *(v26 + v28);
      v30 = *(a6 + v28 + 128);
      if (*v69)
      {
        makeStrideBytes();
        if (v27 >= 0x10)
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

        v32 = *(&v116[1] + (v31 & 0xF));
      }

      else
      {
        v32 = *(v72 + *MEMORY[0x277CD73C8]) >> 3;
      }

      *(a6 + 192) = v75 + v32 * v30 * (v25 % v29);
      *(a6 + 96) = v73 + v71 * v25;
      CallNDArrayNewGradientEncode(a1, a2, a3, v70, a5, a6);
      if (++v25 == v74)
      {
        goto LABEL_53;
      }
    }

    v47 = 0;
    v48 = 0;
    while (1)
    {
      [v12 objectAtIndexedSubscript:v48];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v49 = 0;
      v50 = 0;
      v51 = *(a6 + 216);
LABEL_41:
      *(v51 + v47 + 64) = v46[v48++] + v50 * v49;
      v47 += 80;
      if (v48 >= [v12 count])
      {
        goto LABEL_23;
      }
    }

    v52 = [v12 objectAtIndexedSubscript:v48];
    v53 = (v52 + *MEMORY[0x277CD7410]);
    v98 = v53[1];
    v102 = *v53;
    v90 = v53[3];
    v94 = v53[2];
    v54 = [v12 objectAtIndexedSubscript:v48];
    v55 = MEMORY[0x277CD73D8];
    v105 = *(v54 + *MEMORY[0x277CD73D8]);
    v109[2] = v94;
    v109[3] = v90;
    v109[0] = v102;
    v109[1] = v98;
    v56 = *(v109 + (*v80 & 0xF));
    v57 = (*(a6 + 216) + v47);
    v99 = v57[1];
    v103 = *v57;
    v91 = v57[3];
    v95 = v57[2];
    v106 = *([v12 objectAtIndexedSubscript:v48] + *v55);
    v108[2] = v95;
    v108[3] = v91;
    v108[0] = v103;
    v108[1] = v99;
    v58 = *(v108 + (*v81 & 0xF));
    v59 = [v12 objectAtIndexedSubscript:v48];
    v107 = *([v12 objectAtIndexedSubscript:v48] + *v55);
    v60 = *v82;
    if (*v82)
    {
      makeStrideBytes();
      if (v60 >= 0x10)
      {
        v61 = 0;
      }

      else
      {
        v61 = v60;
      }

      v50 = *(&v116[1] + (v61 & 0xF)) * v58;
      v49 = v25 % v56;
      v51 = *(a6 + 216);
      if (v25 % v56 >= v25)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v50 = (*(v59 + *MEMORY[0x277CD73C8]) >> 3) * v58;
      v49 = v25 % v56;
      v51 = *(a6 + 216);
      if (v25 % v56 >= v25)
      {
        goto LABEL_49;
      }
    }

    *(v51 + v47 + 72) = 1;
LABEL_49:
    v46 = v83;
    goto LABEL_41;
  }

LABEL_53:
  *(a6 + 192) = v75;
  *(a6 + 96) = v73;
  if ([v7 count])
  {
    v62 = 0;
    v63 = 64;
    do
    {
      *(*(a6 + 8) + v63) = v87[v62++];
      v63 += 80;
    }

    while (v62 < [v7 count]);
  }

  if ([v12 count])
  {
    v64 = 0;
    v65 = 64;
    do
    {
      *(*(a6 + 216) + v65) = v83[v64++];
      v65 += 80;
    }

    while (v64 < [v12 count]);
  }

  free(v87);
  free(v83);
}

void sub_239A8ECA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

void sub_239A90138(_Unwind_Exception *a1)
{
  MPSAutoEncoder::~MPSAutoEncoder((v1 + 64));
  ScopedMPSSignpost::~ScopedMPSSignpost((v1 + 152));
  _Unwind_Resume(a1);
}

void sub_239A902C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MPSAutoEncoder::~MPSAutoEncoder(va);
  _Unwind_Resume(a1);
}

void sub_239A91274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MPSAutoEncoder::~MPSAutoEncoder(va);
  _Unwind_Resume(a1);
}

void MPSKernelLogPerfTestCommandline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + *MEMORY[0x277CD7380]) < 4uLL)
  {
    return;
  }

  std::operator+<char>();
  v6 = std::string::append(&v238, " ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = *(a4 + 8);
  }

  v11 = std::string::append(&__dst, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v241.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v241.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v241, " ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v240.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v240.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v241.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_152:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_153;
  }

  operator delete(v241.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_152;
  }

LABEL_10:
  if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_153:
  operator delete(v238.__r_.__value_.__l.__data_);
LABEL_11:
  v15 = [*(a2 + 16) count];
  v16 = MEMORY[0x277CD73D0];
  v223 = a2;
  if (!v15 && !*(a2 + 112))
  {
    goto LABEL_556;
  }

  std::string::append(&v240, "-srcShapes ");
  v17 = 0;
  while (1)
  {
    v18 = v17;
    if ([*(a2 + 16) count] <= v17)
    {
      break;
    }

    v19 = [*(a2 + 16) objectAtIndexedSubscript:v17];
    v20 = v19;
    v21 = *(v19 + *MEMORY[0x277CD73F0]);
    v22 = *(v19 + *MEMORY[0x277CD73D8]);
    if (v22)
    {
      if (v21 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v22) == 1)
      {
        goto LABEL_59;
      }

      v23 = 2;
      if (v21 > 2)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v22) == 2)
      {
        goto LABEL_59;
      }

      v23 = 3;
      if (v21 > 3)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v22) == 3)
      {
        goto LABEL_59;
      }

      v23 = 4;
      if (v21 > 4)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v22) == 4)
      {
        goto LABEL_59;
      }

      v23 = 5;
      if (v21 > 5)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v22) == 5)
      {
        goto LABEL_59;
      }

      v23 = 6;
      if (v21 > 6)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v22) == 6)
      {
        goto LABEL_59;
      }

      v23 = 7;
      if (v21 > 7)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v22) == 7)
      {
        goto LABEL_59;
      }

      v23 = 8;
      if (v21 > 8)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v22) == 8)
      {
        goto LABEL_59;
      }

      v23 = 9;
      if (v21 > 9)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v22) == 9)
      {
        goto LABEL_59;
      }

      v23 = 10;
      if (v21 > 0xA)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v22) == 10)
      {
        goto LABEL_59;
      }

      v23 = 11;
      if (v21 > 0xB)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v22) == 11)
      {
        goto LABEL_59;
      }

      v23 = 12;
      if (v21 > 0xC)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v22) == 12)
      {
        goto LABEL_59;
      }

      v23 = 13;
      if (v21 > 0xD)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v22) == 13)
      {
        goto LABEL_59;
      }

      v23 = 14;
      if (v21 > 0xE)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v22) == 14)
      {
LABEL_59:
        v21 = v23;
      }

      else
      {
        v31 = 15;
        if (HIBYTE(v22) != 15)
        {
          v31 = 16;
        }

        if (v31 > v21)
        {
          v21 = v31;
        }
      }
    }

    std::string::append(&v240, "\\[");
    if (v21)
    {
      v24 = 0;
      v25 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v20 + *v16 + 4 * ((v21 + ~v24) & 0xF)));
        if (v21 - 1 == v24)
        {
          v26 = "";
        }

        else
        {
          v26 = ",";
        }

        v27 = std::string::append(&__dst, v26);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v241;
        }

        else
        {
          v29 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v29, size);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_75:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v24 = v25++;
          if (v21 <= v24)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_75;
          }

LABEL_63:
          v24 = v25++;
          if (v21 <= v24)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
    v17 = v18 + 1;
    a2 = v223;
  }

  v32 = *(a2 + 112);
  if (v32)
  {
    v33 = *(v32 + *MEMORY[0x277CD73F0]);
    v34 = *(v32 + *MEMORY[0x277CD73D8]);
    if (v34)
    {
      if (v33 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v34) == 1)
      {
        goto LABEL_127;
      }

      v35 = 2;
      if (v33 > 2)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v34) == 2)
      {
        goto LABEL_127;
      }

      v35 = 3;
      if (v33 > 3)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v34) == 3)
      {
        goto LABEL_127;
      }

      v35 = 4;
      if (v33 > 4)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v34) == 4)
      {
        goto LABEL_127;
      }

      v35 = 5;
      if (v33 > 5)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v34) == 5)
      {
        goto LABEL_127;
      }

      v35 = 6;
      if (v33 > 6)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v34) == 6)
      {
        goto LABEL_127;
      }

      v35 = 7;
      if (v33 > 7)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v34) == 7)
      {
        goto LABEL_127;
      }

      v35 = 8;
      if (v33 > 8)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v34) == 8)
      {
        goto LABEL_127;
      }

      v35 = 9;
      if (v33 > 9)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v34) == 9)
      {
        goto LABEL_127;
      }

      v35 = 10;
      if (v33 > 0xA)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v34) == 10)
      {
        goto LABEL_127;
      }

      v35 = 11;
      if (v33 > 0xB)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v34) == 11)
      {
        goto LABEL_127;
      }

      v35 = 12;
      if (v33 > 0xC)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v34) == 12)
      {
        goto LABEL_127;
      }

      v35 = 13;
      if (v33 > 0xD)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v34) == 13)
      {
        goto LABEL_127;
      }

      v35 = 14;
      if (v33 > 0xE)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v34) == 14)
      {
LABEL_127:
        v33 = v35;
      }

      else
      {
        v219 = 15;
        if (HIBYTE(v34) != 15)
        {
          v219 = 16;
        }

        if (v219 > v33)
        {
          v33 = v219;
        }
      }
    }

    std::string::append(&v240, "\\[");
    if (v33)
    {
      v36 = 0;
      v37 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v32 + *v16 + 4 * ((v33 + ~v36) & 0xF)));
        if (v33 - 1 == v36)
        {
          v38 = "";
        }

        else
        {
          v38 = ",";
        }

        v39 = std::string::append(&__dst, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v241;
        }

        else
        {
          v41 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v41, v42);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_131;
          }

LABEL_143:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v36 = v37++;
          if (v33 <= v36)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_143;
          }

LABEL_131:
          v36 = v37++;
          if (v33 <= v36)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
    a2 = v223;
  }

  v43 = 0;
  v44 = 0;
  while ([*(a2 + 16) count] > v43)
  {
    v45 = [*(a2 + 16) objectAtIndexedSubscript:v43];
    v46 = (v45 + *v16);
    v44 |= (vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqq_s32(*v46, *(v45 + *MEMORY[0x277CD7410]))), vceqq_s32(v46[2], *(v45 + *MEMORY[0x277CD7410] + 32))), vornq_s8(vmvnq_s8(vceqq_s32(v46[1], *(v45 + *MEMORY[0x277CD7410] + 16))), vceqq_s32(v46[3], *(v45 + *MEMORY[0x277CD7410] + 48))))) & 0x80000000) != 0;
    ++v43;
  }

  v47 = *(a2 + 112);
  if (v47)
  {
    v48 = (v47 + *v16);
    v49 = (v47 + *MEMORY[0x277CD7410]);
    if (!(v44 & 1 | ((vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqq_s32(*v48, *v49)), vceqq_s32(v48[2], v49[2])), vornq_s8(vmvnq_s8(vceqq_s32(v48[1], v49[1])), vceqq_s32(v48[3], v49[3])))) & 0x80000000) != 0)))
    {
      goto LABEL_287;
    }
  }

  else if ((v44 & 1) == 0)
  {
    goto LABEL_287;
  }

  std::string::append(&v240, "-srcSliceLengths ");
  v50 = 0;
  while (1)
  {
    v51 = v50;
    if ([*(a2 + 16) count] <= v50)
    {
      break;
    }

    v52 = [*(a2 + 16) objectAtIndexedSubscript:v50];
    v53 = v52;
    v54 = *(v52 + *MEMORY[0x277CD73F0]);
    v55 = *(v52 + *MEMORY[0x277CD73D8]);
    if (v55)
    {
      if (v54 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v55) == 1)
      {
        goto LABEL_201;
      }

      v56 = 2;
      if (v54 > 2)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v55) == 2)
      {
        goto LABEL_201;
      }

      v56 = 3;
      if (v54 > 3)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v55) == 3)
      {
        goto LABEL_201;
      }

      v56 = 4;
      if (v54 > 4)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v55) == 4)
      {
        goto LABEL_201;
      }

      v56 = 5;
      if (v54 > 5)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v55) == 5)
      {
        goto LABEL_201;
      }

      v56 = 6;
      if (v54 > 6)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v55) == 6)
      {
        goto LABEL_201;
      }

      v56 = 7;
      if (v54 > 7)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v55) == 7)
      {
        goto LABEL_201;
      }

      v56 = 8;
      if (v54 > 8)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v55) == 8)
      {
        goto LABEL_201;
      }

      v56 = 9;
      if (v54 > 9)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v55) == 9)
      {
        goto LABEL_201;
      }

      v56 = 10;
      if (v54 > 0xA)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v55) == 10)
      {
        goto LABEL_201;
      }

      v56 = 11;
      if (v54 > 0xB)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v55) == 11)
      {
        goto LABEL_201;
      }

      v56 = 12;
      if (v54 > 0xC)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v55) == 12)
      {
        goto LABEL_201;
      }

      v56 = 13;
      if (v54 > 0xD)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v55) == 13)
      {
        goto LABEL_201;
      }

      v56 = 14;
      if (v54 > 0xE)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v55) == 14)
      {
LABEL_201:
        v54 = v56;
      }

      else
      {
        v64 = 15;
        if (HIBYTE(v55) != 15)
        {
          v64 = 16;
        }

        if (v64 > v54)
        {
          v54 = v64;
        }
      }
    }

    std::string::append(&v240, "\\[");
    if (v54)
    {
      v57 = 0;
      v58 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v53 + *MEMORY[0x277CD7410] + 4 * ((v54 + ~v57) & 0xF)));
        if (v54 - 1 == v57)
        {
          v59 = "";
        }

        else
        {
          v59 = ",";
        }

        v60 = std::string::append(&__dst, v59);
        v61 = *&v60->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v241;
        }

        else
        {
          v62 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v62, v63);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_205;
          }

LABEL_217:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v57 = v58++;
          if (v54 <= v57)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_217;
          }

LABEL_205:
          v57 = v58++;
          if (v54 <= v57)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
    v50 = v51 + 1;
    a2 = v223;
  }

  v65 = *(a2 + 112);
  if (v65)
  {
    v66 = *(v65 + *MEMORY[0x277CD73F0]);
    v67 = *(v65 + *MEMORY[0x277CD73D8]);
    if (v67)
    {
      if (v66 <= 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v67) == 1)
      {
        goto LABEL_269;
      }

      v68 = 2;
      if (v66 > 2)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v67) == 2)
      {
        goto LABEL_269;
      }

      v68 = 3;
      if (v66 > 3)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v67) == 3)
      {
        goto LABEL_269;
      }

      v68 = 4;
      if (v66 > 4)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v67) == 4)
      {
        goto LABEL_269;
      }

      v68 = 5;
      if (v66 > 5)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v67) == 5)
      {
        goto LABEL_269;
      }

      v68 = 6;
      if (v66 > 6)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v67) == 6)
      {
        goto LABEL_269;
      }

      v68 = 7;
      if (v66 > 7)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v67) == 7)
      {
        goto LABEL_269;
      }

      v68 = 8;
      if (v66 > 8)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v67) == 8)
      {
        goto LABEL_269;
      }

      v68 = 9;
      if (v66 > 9)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v67) == 9)
      {
        goto LABEL_269;
      }

      v68 = 10;
      if (v66 > 0xA)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v67) == 10)
      {
        goto LABEL_269;
      }

      v68 = 11;
      if (v66 > 0xB)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v67) == 11)
      {
        goto LABEL_269;
      }

      v68 = 12;
      if (v66 > 0xC)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v67) == 12)
      {
        goto LABEL_269;
      }

      v68 = 13;
      if (v66 > 0xD)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v67) == 13)
      {
        goto LABEL_269;
      }

      v68 = 14;
      if (v66 > 0xE)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v67) == 14)
      {
LABEL_269:
        v66 = v68;
      }

      else
      {
        v220 = 15;
        if (HIBYTE(v67) != 15)
        {
          v220 = 16;
        }

        if (v220 > v66)
        {
          v66 = v220;
        }
      }
    }

    std::string::append(&v240, "\\[");
    if (v66)
    {
      v69 = 0;
      v70 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v65 + *MEMORY[0x277CD7410] + 4 * ((v66 + ~v69) & 0xF)));
        if (v66 - 1 == v69)
        {
          v71 = "";
        }

        else
        {
          v71 = ",";
        }

        v72 = std::string::append(&__dst, v71);
        v73 = *&v72->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v241;
        }

        else
        {
          v74 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v75 = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v74, v75);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_273;
          }

LABEL_285:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v69 = v70++;
          if (v66 <= v69)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_285;
          }

LABEL_273:
          v69 = v70++;
          if (v66 <= v69)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
    a2 = v223;
  }

LABEL_287:
  v76 = 0;
  v77 = 0;
  while ([*(a2 + 16) count] > v76)
  {
    v78 = [*(a2 + 16) objectAtIndexedSubscript:v76];
    v79 = vorrq_s8(vorrq_s8(*(v78 + *MEMORY[0x277CD7418]), *(v78 + *MEMORY[0x277CD7418] + 32)), vorrq_s8(*(v78 + *MEMORY[0x277CD7418] + 16), *(v78 + *MEMORY[0x277CD7418] + 48)));
    v77 |= (vmaxvq_u32(vtstq_s32(v79, v79)) & 0x80000000) != 0;
    ++v76;
  }

  v80 = *(a2 + 112);
  if (v80)
  {
    v81 = vorrq_s8(vorrq_s8(*(v80 + *MEMORY[0x277CD7418]), *(v80 + *MEMORY[0x277CD7418] + 32)), vorrq_s8(*(v80 + *MEMORY[0x277CD7418] + 16), *(v80 + *MEMORY[0x277CD7418] + 48)));
    if (!(v77 & 1 | ((vmaxvq_u32(vtstq_s32(v81, v81)) & 0x80000000) != 0)))
    {
      goto LABEL_426;
    }
  }

  else if ((v77 & 1) == 0)
  {
    goto LABEL_426;
  }

  std::string::append(&v240, "-srcSliceOffsets ");
  v82 = 0;
  while (1)
  {
    v83 = v82;
    if ([*(a2 + 16) count] <= v82)
    {
      break;
    }

    v84 = [*(a2 + 16) objectAtIndexedSubscript:v82];
    v85 = v84;
    v86 = *(v84 + *MEMORY[0x277CD73F0]);
    v87 = *(v84 + *MEMORY[0x277CD73D8]);
    if (v87)
    {
      if (v86 <= 1)
      {
        v88 = 1;
      }

      else
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v87) == 1)
      {
        goto LABEL_340;
      }

      v88 = 2;
      if (v86 > 2)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v87) == 2)
      {
        goto LABEL_340;
      }

      v88 = 3;
      if (v86 > 3)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v87) == 3)
      {
        goto LABEL_340;
      }

      v88 = 4;
      if (v86 > 4)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v87) == 4)
      {
        goto LABEL_340;
      }

      v88 = 5;
      if (v86 > 5)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v87) == 5)
      {
        goto LABEL_340;
      }

      v88 = 6;
      if (v86 > 6)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v87) == 6)
      {
        goto LABEL_340;
      }

      v88 = 7;
      if (v86 > 7)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v87) == 7)
      {
        goto LABEL_340;
      }

      v88 = 8;
      if (v86 > 8)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v87) == 8)
      {
        goto LABEL_340;
      }

      v88 = 9;
      if (v86 > 9)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v87) == 9)
      {
        goto LABEL_340;
      }

      v88 = 10;
      if (v86 > 0xA)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v87) == 10)
      {
        goto LABEL_340;
      }

      v88 = 11;
      if (v86 > 0xB)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v87) == 11)
      {
        goto LABEL_340;
      }

      v88 = 12;
      if (v86 > 0xC)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v87) == 12)
      {
        goto LABEL_340;
      }

      v88 = 13;
      if (v86 > 0xD)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v87) == 13)
      {
        goto LABEL_340;
      }

      v88 = 14;
      if (v86 > 0xE)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v87) == 14)
      {
LABEL_340:
        v86 = v88;
      }

      else
      {
        v96 = 15;
        if (HIBYTE(v87) != 15)
        {
          v96 = 16;
        }

        if (v96 > v86)
        {
          v86 = v96;
        }
      }
    }

    std::string::append(&v240, "\\[");
    if (v86)
    {
      v89 = 0;
      v90 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v85 + *MEMORY[0x277CD7418] + 4 * ((v86 + ~v89) & 0xF)));
        if (v86 - 1 == v89)
        {
          v91 = "";
        }

        else
        {
          v91 = ",";
        }

        v92 = std::string::append(&__dst, v91);
        v93 = *&v92->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v94 = &v241;
        }

        else
        {
          v94 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v95 = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v94, v95);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_344;
          }

LABEL_356:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v89 = v90++;
          if (v86 <= v89)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_356;
          }

LABEL_344:
          v89 = v90++;
          if (v86 <= v89)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
    v82 = v83 + 1;
    a2 = v223;
  }

  v97 = *(a2 + 112);
  if (v97)
  {
    v98 = *(v97 + *MEMORY[0x277CD73F0]);
    v99 = *(v97 + *MEMORY[0x277CD73D8]);
    if (v99)
    {
      if (v98 <= 1)
      {
        v100 = 1;
      }

      else
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v99) == 1)
      {
        goto LABEL_408;
      }

      v100 = 2;
      if (v98 > 2)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v99) == 2)
      {
        goto LABEL_408;
      }

      v100 = 3;
      if (v98 > 3)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v99) == 3)
      {
        goto LABEL_408;
      }

      v100 = 4;
      if (v98 > 4)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v99) == 4)
      {
        goto LABEL_408;
      }

      v100 = 5;
      if (v98 > 5)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v99) == 5)
      {
        goto LABEL_408;
      }

      v100 = 6;
      if (v98 > 6)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v99) == 6)
      {
        goto LABEL_408;
      }

      v100 = 7;
      if (v98 > 7)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v99) == 7)
      {
        goto LABEL_408;
      }

      v100 = 8;
      if (v98 > 8)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v99) == 8)
      {
        goto LABEL_408;
      }

      v100 = 9;
      if (v98 > 9)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v99) == 9)
      {
        goto LABEL_408;
      }

      v100 = 10;
      if (v98 > 0xA)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v99) == 10)
      {
        goto LABEL_408;
      }

      v100 = 11;
      if (v98 > 0xB)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v99) == 11)
      {
        goto LABEL_408;
      }

      v100 = 12;
      if (v98 > 0xC)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v99) == 12)
      {
        goto LABEL_408;
      }

      v100 = 13;
      if (v98 > 0xD)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v99) == 13)
      {
        goto LABEL_408;
      }

      v100 = 14;
      if (v98 > 0xE)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v99) == 14)
      {
LABEL_408:
        v98 = v100;
      }

      else
      {
        v221 = 15;
        if (HIBYTE(v99) != 15)
        {
          v221 = 16;
        }

        if (v221 > v98)
        {
          v98 = v221;
        }
      }
    }

    std::string::append(&v240, "\\[");
    if (v98)
    {
      v101 = 0;
      v102 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v97 + *MEMORY[0x277CD7418] + 4 * ((v98 + ~v101) & 0xF)));
        if (v98 - 1 == v101)
        {
          v103 = "";
        }

        else
        {
          v103 = ",";
        }

        v104 = std::string::append(&__dst, v103);
        v105 = *&v104->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v105;
        v104->__r_.__value_.__l.__size_ = 0;
        v104->__r_.__value_.__r.__words[2] = 0;
        v104->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = &v241;
        }

        else
        {
          v106 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v107 = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v106, v107);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_412;
          }

LABEL_424:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v101 = v102++;
          if (v98 <= v101)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_424;
          }

LABEL_412:
          v101 = v102++;
          if (v98 <= v101)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
    a2 = v223;
  }

LABEL_426:
  v108 = 0;
  while (1)
  {
    v111 = [*(a2 + 16) count];
    v112 = v108;
    if (v111 <= v108)
    {
      break;
    }

    v113 = [*(v223 + 16) objectAtIndexedSubscript:v108];
    v226 = *(v113 + *MEMORY[0x277CD73D8]);
    if ((vmaxvq_u8(vmvnq_s8(vceqq_s8(v226, xmmword_239B14650))) & 0x80) == 0)
    {
      goto LABEL_430;
    }

    std::string::append(&v240, "-srcTranspose ");
    std::to_string(&__dst, v108);
    v114 = std::string::append(&__dst, " ");
    v115 = *&v114->__r_.__value_.__l.__data_;
    v241.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&v241.__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = &v241;
    }

    else
    {
      v116 = v241.__r_.__value_.__r.__words[0];
    }

    if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v117 = v241.__r_.__value_.__l.__size_;
    }

    std::string::append(&v240, v116, v117);
    if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v241.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_472:
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_472;
    }

    std::string::append(&v240, "\\[");
    v118 = 0;
    v119 = xmmword_239B14650;
    do
    {
      v120 = v118;
      v231 = v226;
      ++v118;
      if (v120 > 0xE)
      {
        continue;
      }

      v121 = *(&v231 | v120 & 0xF);
      v122 = v118;
      while (1)
      {
        v230 = v119;
        if (*(&v230 | v122 & 0xF) == v121)
        {
          break;
        }

        if (++v122 == 16)
        {
          goto LABEL_443;
        }
      }

      v228 = v119;
      *(&v228 | v122 & 0xF) = *(&v228 | v120 & 0xF);
      v229 = v228;
      *(&v229 | v120 & 0xF) = v121;
      v224 = v229;
      std::to_string(&v237, v120);
      v123 = std::string::append(&v237, ",");
      v124 = *&v123->__r_.__value_.__l.__data_;
      v238.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
      *&v238.__r_.__value_.__l.__data_ = v124;
      v123->__r_.__value_.__l.__size_ = 0;
      v123->__r_.__value_.__r.__words[2] = 0;
      v123->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v236, v122);
      if ((v236.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v125 = &v236;
      }

      else
      {
        v125 = v236.__r_.__value_.__r.__words[0];
      }

      if ((v236.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v126 = HIBYTE(v236.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v126 = v236.__r_.__value_.__l.__size_;
      }

      v127 = std::string::append(&v238, v125, v126);
      v128 = *&v127->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v127->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v128;
      v127->__r_.__value_.__l.__size_ = 0;
      v127->__r_.__value_.__r.__words[2] = 0;
      v127->__r_.__value_.__r.__words[0] = 0;
      v129 = std::string::append(&__dst, ",");
      v130 = *&v129->__r_.__value_.__l.__data_;
      v241.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
      *&v241.__r_.__value_.__l.__data_ = v130;
      v129->__r_.__value_.__l.__size_ = 0;
      v129->__r_.__value_.__r.__words[2] = 0;
      v129->__r_.__value_.__r.__words[0] = 0;
      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v131 = &v241;
      }

      else
      {
        v131 = v241.__r_.__value_.__r.__words[0];
      }

      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v132 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v132 = v241.__r_.__value_.__l.__size_;
      }

      std::string::append(&v240, v131, v132);
      v119 = v224;
      if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v241.__r_.__value_.__l.__data_);
        v119 = v224;
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_463:
          if ((SHIBYTE(v236.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_464;
          }

          goto LABEL_468;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_463;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      v119 = v224;
      if ((SHIBYTE(v236.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_464:
        if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_469;
        }

        goto LABEL_442;
      }

LABEL_468:
      operator delete(v236.__r_.__value_.__l.__data_);
      v119 = v224;
      if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_469:
        if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          continue;
        }

        goto LABEL_470;
      }

LABEL_442:
      operator delete(v238.__r_.__value_.__l.__data_);
      v119 = v224;
      if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

LABEL_470:
      operator delete(v237.__r_.__value_.__l.__data_);
      v119 = v224;
LABEL_443:
      ;
    }

    while (v118 != 16);
    if ((SHIBYTE(v240.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v110 = v240.__r_.__value_.__r.__words[0];
      v109 = --v240.__r_.__value_.__l.__size_;
    }

    else
    {
      v109 = SHIBYTE(v240.__r_.__value_.__r.__words[2]) - 1;
      *(&v240.__r_.__value_.__s + 23) = v109 & 0x7F;
      v110 = &v240;
    }

    v110->__r_.__value_.__s.__data_[v109] = 0;
    std::string::append(&v240, "\\] ");
LABEL_430:
    v108 = v112 + 1;
    a2 = v223;
  }

  a2 = v223;
  v133 = *(v223 + 112);
  if (!v133)
  {
    goto LABEL_522;
  }

  v225 = *(v133 + *MEMORY[0x277CD73D8]);
  v227 = xmmword_239B14650;
  if ((vmaxvq_u8(vmvnq_s8(vceqq_s8(v225, xmmword_239B14650))) & 0x80) == 0)
  {
    goto LABEL_522;
  }

  std::string::append(&v240, "-srcTranspose ");
  std::to_string(&__dst, [*(v223 + 16) count]);
  v134 = std::string::append(&__dst, " ");
  v135 = *&v134->__r_.__value_.__l.__data_;
  v241.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
  *&v241.__r_.__value_.__l.__data_ = v135;
  v134->__r_.__value_.__l.__size_ = 0;
  v134->__r_.__value_.__r.__words[2] = 0;
  v134->__r_.__value_.__r.__words[0] = 0;
  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = &v241;
  }

  else
  {
    v136 = v241.__r_.__value_.__r.__words[0];
  }

  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v137 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v137 = v241.__r_.__value_.__l.__size_;
  }

  std::string::append(&v240, v136, v137);
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::string::append(&v240, "\\[");
  v138 = 0;
  while (2)
  {
    v140 = v138;
    v235 = v225;
    ++v138;
    if (v140 > 0xE)
    {
LABEL_488:
      v139 = v227;
      goto LABEL_489;
    }

    v141 = *(&v235 | v140 & 0xF);
    v142 = v138;
    v139 = v227;
    while (1)
    {
      v234 = v227;
      if (*(&v234 | v142 & 0xF) == v141)
      {
        break;
      }

      if (++v142 == 16)
      {
        goto LABEL_489;
      }
    }

    v232 = v227;
    *(&v232 | v142 & 0xF) = *(&v232 | v140 & 0xF);
    v233 = v232;
    *(&v233 | v140 & 0xF) = v141;
    v227 = v233;
    std::to_string(&v237, v140);
    v143 = std::string::append(&v237, ",");
    v144 = *&v143->__r_.__value_.__l.__data_;
    v238.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
    *&v238.__r_.__value_.__l.__data_ = v144;
    v143->__r_.__value_.__l.__size_ = 0;
    v143->__r_.__value_.__r.__words[2] = 0;
    v143->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v236, v142);
    if ((v236.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v145 = &v236;
    }

    else
    {
      v145 = v236.__r_.__value_.__r.__words[0];
    }

    if ((v236.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = HIBYTE(v236.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v146 = v236.__r_.__value_.__l.__size_;
    }

    v147 = std::string::append(&v238, v145, v146);
    v148 = *&v147->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v148;
    v147->__r_.__value_.__l.__size_ = 0;
    v147->__r_.__value_.__r.__words[2] = 0;
    v147->__r_.__value_.__r.__words[0] = 0;
    v149 = std::string::append(&__dst, ",");
    v150 = *&v149->__r_.__value_.__l.__data_;
    v241.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
    *&v241.__r_.__value_.__l.__data_ = v150;
    v149->__r_.__value_.__l.__size_ = 0;
    v149->__r_.__value_.__r.__words[2] = 0;
    v149->__r_.__value_.__r.__words[0] = 0;
    if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v151 = &v241;
    }

    else
    {
      v151 = v241.__r_.__value_.__r.__words[0];
    }

    if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v152 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v152 = v241.__r_.__value_.__l.__size_;
    }

    std::string::append(&v240, v151, v152);
    v139 = v227;
    if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v241.__r_.__value_.__l.__data_);
      v139 = v227;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_514;
      }

LABEL_509:
      if ((SHIBYTE(v236.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_510;
      }

LABEL_515:
      operator delete(v236.__r_.__value_.__l.__data_);
      v139 = v227;
      if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_516;
      }

LABEL_511:
      if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_489;
      }

LABEL_487:
      operator delete(v237.__r_.__value_.__l.__data_);
      goto LABEL_488;
    }

    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_509;
    }

LABEL_514:
    operator delete(__dst.__r_.__value_.__l.__data_);
    v139 = v227;
    if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_515;
    }

LABEL_510:
    if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_511;
    }

LABEL_516:
    operator delete(v238.__r_.__value_.__l.__data_);
    v139 = v227;
    if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_487;
    }

LABEL_489:
    v227 = v139;
    if (v138 != 16)
    {
      continue;
    }

    break;
  }

  if ((SHIBYTE(v240.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v154 = v240.__r_.__value_.__r.__words[0];
    v153 = --v240.__r_.__value_.__l.__size_;
  }

  else
  {
    v153 = SHIBYTE(v240.__r_.__value_.__r.__words[2]) - 1;
    *(&v240.__r_.__value_.__s + 23) = v153 & 0x7F;
    v154 = &v240;
  }

  v154->__r_.__value_.__s.__data_[v153] = 0;
  std::string::append(&v240, "\\] ");
LABEL_522:
  std::string::append(&v240, "-srcDataTypes ");
  v155 = 0;
  while (2)
  {
    if ([*(a2 + 16) count] > v155)
    {
      [*(a2 + 16) objectAtIndexedSubscript:v155];
      v156 = MPSGetDataTypeName();
      v157 = strlen(v156);
      if (v157 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v158 = v157;
      if (v157 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v157;
      if (v157)
      {
        memmove(&__dst, v156, v157);
      }

      __dst.__r_.__value_.__s.__data_[v158] = 0;
      v159 = std::string::append(&__dst, " ");
      v160 = *&v159->__r_.__value_.__l.__data_;
      v241.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
      *&v241.__r_.__value_.__l.__data_ = v160;
      v159->__r_.__value_.__l.__size_ = 0;
      v159->__r_.__value_.__r.__words[2] = 0;
      v159->__r_.__value_.__r.__words[0] = 0;
      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v161 = &v241;
      }

      else
      {
        v161 = v241.__r_.__value_.__r.__words[0];
      }

      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v162 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v162 = v241.__r_.__value_.__l.__size_;
      }

      std::string::append(&v240, v161, v162);
      a2 = v223;
      if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v241.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_540;
        }
      }

      else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_540:
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      ++v155;
      continue;
    }

    break;
  }

  if (!*(a2 + 112))
  {
    goto LABEL_556;
  }

  v163 = MPSGetDataTypeName();
  v164 = strlen(v163);
  if (v164 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v165 = v164;
  if (v164 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v164;
  if (v164)
  {
    memmove(&__dst, v163, v164);
  }

  __dst.__r_.__value_.__s.__data_[v165] = 0;
  v166 = std::string::append(&__dst, " ");
  v167 = *&v166->__r_.__value_.__l.__data_;
  v241.__r_.__value_.__r.__words[2] = v166->__r_.__value_.__r.__words[2];
  *&v241.__r_.__value_.__l.__data_ = v167;
  v166->__r_.__value_.__l.__size_ = 0;
  v166->__r_.__value_.__r.__words[2] = 0;
  v166->__r_.__value_.__r.__words[0] = 0;
  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v168 = &v241;
  }

  else
  {
    v168 = v241.__r_.__value_.__r.__words[0];
  }

  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v169 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v169 = v241.__r_.__value_.__l.__size_;
  }

  std::string::append(&v240, v168, v169);
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_698;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_556;
    }

LABEL_698:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_556:
  std::string::append(&v240, "-dstShapes ");
  std::string::append(&v240, "\\[");
  v170 = *(a2 + 208);
  v171 = *(v170 + *MEMORY[0x277CD73F0]);
  v172 = *(v170 + *MEMORY[0x277CD73D8]);
  if (v172)
  {
    if (v171 <= 1)
    {
      v173 = 1;
    }

    else
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE1(v172) == 1)
    {
      goto LABEL_600;
    }

    v173 = 2;
    if (v171 > 2)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE2(v172) == 2)
    {
      goto LABEL_600;
    }

    v173 = 3;
    if (v171 > 3)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE3(v172) == 3)
    {
      goto LABEL_600;
    }

    v173 = 4;
    if (v171 > 4)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE4(v172) == 4)
    {
      goto LABEL_600;
    }

    v173 = 5;
    if (v171 > 5)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE5(v172) == 5)
    {
      goto LABEL_600;
    }

    v173 = 6;
    if (v171 > 6)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE6(v172) == 6)
    {
      goto LABEL_600;
    }

    v173 = 7;
    if (v171 > 7)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE7(v172) == 7)
    {
      goto LABEL_600;
    }

    v173 = 8;
    if (v171 > 8)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE8(v172) == 8)
    {
      goto LABEL_600;
    }

    v173 = 9;
    if (v171 > 9)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE9(v172) == 9)
    {
      goto LABEL_600;
    }

    v173 = 10;
    if (v171 > 0xA)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE10(v172) == 10)
    {
      goto LABEL_600;
    }

    v173 = 11;
    if (v171 > 0xB)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE11(v172) == 11)
    {
      goto LABEL_600;
    }

    v173 = 12;
    if (v171 > 0xC)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE12(v172) == 12)
    {
      goto LABEL_600;
    }

    v173 = 13;
    if (v171 > 0xD)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE13(v172) == 13)
    {
      goto LABEL_600;
    }

    v173 = 14;
    if (v171 > 0xE)
    {
      v173 = *(v170 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE14(v172) == 14)
    {
LABEL_600:
      v171 = v173;
    }

    else
    {
      v218 = 15;
      if (HIBYTE(v172) != 15)
      {
        v218 = 16;
      }

      if (v218 > v171)
      {
        v171 = v218;
      }
    }

LABEL_602:
    v174 = 0;
    v175 = 1;
    while (1)
    {
      std::to_string(&__dst, *(v170 + *v16 + 4 * ((v171 + ~v174) & 0xF)));
      if (v171 - 1 == v174)
      {
        v176 = "";
      }

      else
      {
        v176 = ",";
      }

      v177 = std::string::append(&__dst, v176);
      v178 = *&v177->__r_.__value_.__l.__data_;
      v241.__r_.__value_.__r.__words[2] = v177->__r_.__value_.__r.__words[2];
      *&v241.__r_.__value_.__l.__data_ = v178;
      v177->__r_.__value_.__l.__size_ = 0;
      v177->__r_.__value_.__r.__words[2] = 0;
      v177->__r_.__value_.__r.__words[0] = 0;
      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v179 = &v241;
      }

      else
      {
        v179 = v241.__r_.__value_.__r.__words[0];
      }

      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v180 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v180 = v241.__r_.__value_.__l.__size_;
      }

      std::string::append(&v240, v179, v180);
      if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v241.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_604;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_604:
        v174 = v175++;
        if (v171 <= v174)
        {
          goto LABEL_617;
        }

        continue;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      v174 = v175++;
      if (v171 <= v174)
      {
LABEL_617:
        v181 = 0;
        a2 = v223;
        goto LABEL_618;
      }
    }
  }

  if (v171)
  {
    goto LABEL_602;
  }

  v181 = 1;
LABEL_618:
  std::string::append(&v240, "\\] ");
  v182 = (v170 + *MEMORY[0x277CD7410]);
  if ((vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqq_s32(*v182, *(v170 + *v16))), vceqq_s32(v182[2], *(v170 + *v16 + 32))), vornq_s8(vmvnq_s8(vceqq_s32(v182[1], *(v170 + *v16 + 16))), vceqq_s32(v182[3], *(v170 + *v16 + 48))))) & 0x80000000) != 0)
  {
    std::string::append(&v240, "-dstSliceLengths ");
    std::string::append(&v240, "\\[");
    if ((v181 & 1) == 0)
    {
      v183 = 0;
      v184 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v170 + *MEMORY[0x277CD7410] + 4 * ((v171 + ~v183) & 0xF)));
        if (v171 - 1 == v183)
        {
          v185 = "";
        }

        else
        {
          v185 = ",";
        }

        v186 = std::string::append(&__dst, v185);
        v187 = *&v186->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v186->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v187;
        v186->__r_.__value_.__l.__size_ = 0;
        v186->__r_.__value_.__r.__words[2] = 0;
        v186->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v188 = &v241;
        }

        else
        {
          v188 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v189 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v189 = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v188, v189);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_622;
          }

LABEL_634:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v183 = v184++;
          if (v171 <= v183)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_634;
          }

LABEL_622:
          v183 = v184++;
          if (v171 <= v183)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
    a2 = v223;
  }

  v190 = vorrq_s8(vorrq_s8(*(v170 + *MEMORY[0x277CD7418]), *(v170 + *MEMORY[0x277CD7418] + 32)), vorrq_s8(*(v170 + *MEMORY[0x277CD7418] + 16), *(v170 + *MEMORY[0x277CD7418] + 48)));
  if ((vmaxvq_u32(vtstq_s32(v190, v190)) & 0x80000000) != 0)
  {
    std::string::append(&v240, "-dstSliceOffsets ");
    std::string::append(&v240, "\\[");
    if ((v181 & 1) == 0)
    {
      v191 = 0;
      v192 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v170 + *MEMORY[0x277CD7418] + 4 * ((v171 + ~v191) & 0xF)));
        if (v171 - 1 == v191)
        {
          v193 = "";
        }

        else
        {
          v193 = ",";
        }

        v194 = std::string::append(&__dst, v193);
        v195 = *&v194->__r_.__value_.__l.__data_;
        v241.__r_.__value_.__r.__words[2] = v194->__r_.__value_.__r.__words[2];
        *&v241.__r_.__value_.__l.__data_ = v195;
        v194->__r_.__value_.__l.__size_ = 0;
        v194->__r_.__value_.__r.__words[2] = 0;
        v194->__r_.__value_.__r.__words[0] = 0;
        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v196 = &v241;
        }

        else
        {
          v196 = v241.__r_.__value_.__r.__words[0];
        }

        if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v197 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v197 = v241.__r_.__value_.__l.__size_;
        }

        std::string::append(&v240, v196, v197);
        if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v241.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_640;
          }

LABEL_652:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v191 = v192++;
          if (v171 <= v191)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_652;
          }

LABEL_640:
          v191 = v192++;
          if (v171 <= v191)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v240, "\\] ");
  }

  std::string::append(&v240, "-dstDataTypes ");
  v198 = MPSGetDataTypeName();
  v199 = strlen(v198);
  if (v199 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v200 = v199;
  if (v199 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v199;
  if (v199)
  {
    memmove(&__dst, v198, v199);
  }

  __dst.__r_.__value_.__s.__data_[v200] = 0;
  v201 = std::string::append(&__dst, " ");
  v202 = *&v201->__r_.__value_.__l.__data_;
  v241.__r_.__value_.__r.__words[2] = v201->__r_.__value_.__r.__words[2];
  *&v241.__r_.__value_.__l.__data_ = v202;
  v201->__r_.__value_.__l.__size_ = 0;
  v201->__r_.__value_.__r.__words[2] = 0;
  v201->__r_.__value_.__r.__words[0] = 0;
  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v203 = &v241;
  }

  else
  {
    v203 = v241.__r_.__value_.__r.__words[0];
  }

  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v204 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v204 = v241.__r_.__value_.__l.__size_;
  }

  std::string::append(&v240, v203, v204);
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_668;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_668;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_668:
  memset(&__dst, 0, sizeof(__dst));
  v205 = [*(a2 + 232) finalOp];
  *&v241.__r_.__value_.__r.__words[1] = 0uLL;
  v241.__r_.__value_.__r.__words[0] = &v241.__r_.__value_.__l.__size_;
  LODWORD(v238.__r_.__value_.__l.__data_) = 0;
  BaseOperation::DebugDescriptionPrivate(v205, &__dst, &v241, &v238);
  _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(v241.__r_.__value_.__l.__size_);
  *(&v236.__r_.__value_.__s + 23) = 5;
  strcpy(&v236, "-dag ");
  v206 = std::string::append(&v236, "");
  v207 = *&v206->__r_.__value_.__l.__data_;
  v237.__r_.__value_.__r.__words[2] = v206->__r_.__value_.__r.__words[2];
  *&v237.__r_.__value_.__l.__data_ = v207;
  v206->__r_.__value_.__l.__size_ = 0;
  v206->__r_.__value_.__r.__words[2] = 0;
  v206->__r_.__value_.__r.__words[0] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v209 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v209 = __dst.__r_.__value_.__l.__size_;
  }

  v210 = std::string::append(&v237, p_dst, v209);
  v211 = *&v210->__r_.__value_.__l.__data_;
  v238.__r_.__value_.__r.__words[2] = v210->__r_.__value_.__r.__words[2];
  *&v238.__r_.__value_.__l.__data_ = v211;
  v210->__r_.__value_.__l.__size_ = 0;
  v210->__r_.__value_.__r.__words[2] = 0;
  v210->__r_.__value_.__r.__words[0] = 0;
  v212 = std::string::append(&v238, "");
  v213 = *&v212->__r_.__value_.__l.__data_;
  v241.__r_.__value_.__r.__words[2] = v212->__r_.__value_.__r.__words[2];
  *&v241.__r_.__value_.__l.__data_ = v213;
  v212->__r_.__value_.__l.__size_ = 0;
  v212->__r_.__value_.__r.__words[2] = 0;
  v212->__r_.__value_.__r.__words[0] = 0;
  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v214 = &v241;
  }

  else
  {
    v214 = v241.__r_.__value_.__r.__words[0];
  }

  if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v215 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v215 = v241.__r_.__value_.__l.__size_;
  }

  std::string::append(&v240, v214, v215);
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_682:
      if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_683;
      }

LABEL_693:
      operator delete(v237.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v236.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_684;
      }

LABEL_694:
      operator delete(v236.__r_.__value_.__l.__data_);
      goto LABEL_684;
    }
  }

  else if ((SHIBYTE(v238.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_682;
  }

  operator delete(v238.__r_.__value_.__l.__data_);
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_693;
  }

LABEL_683:
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_694;
  }

LABEL_684:
  v217 = &v240;
  if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v217 = v240.__r_.__value_.__r.__words[0];
  }

  MPSKernel_LogInfo(a1, v216, "%s\n", v217);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v240.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_696:
    operator delete(v240.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_696;
  }
}

void sub_239A9368C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (*(v47 - 153) < 0)
  {
    operator delete(*(v47 - 176));
  }

  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  _Unwind_Resume(exception_object);
}

char *___ZN9MPSDevice17IsShaderProfilingEv_block_invoke()
{
  result = getenv("MPS_SHADER_PROFILING");
  if (result)
  {
    __endptr = 0;
    v1 = result;
    result = strtol(result, &__endptr, 10);
    if (v1 != __endptr)
    {
      _MergedGlobals_3 = result > 0;
    }
  }

  return result;
}

void BaseOperation::DebugDescriptionPrivate(void *a1, std::string *a2, uint64_t **a3, _DWORD *a4)
{
  v8 = a1[3];
  if (!v8 || (v9 = *v8, *(a1[3] + 8) == v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9;
  }

  NodeIdForBaseTensor = BaseOperation::GetNodeIdForBaseTensor(a3, a4, v10, 1u);
  if (NodeIdForBaseTensor == -1)
  {
    return;
  }

  std::to_string(&v58, NodeIdForBaseTensor);
  v12 = std::string::insert(&v58, 0, "%");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v59, ":");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v60;
  }

  else
  {
    v16 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v60.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, size);
  if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_88:
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_89;
  }

  operator delete(v60.__r_.__value_.__l.__data_);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_88;
  }

LABEL_14:
  if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_89:
  operator delete(v58.__r_.__value_.__l.__data_);
LABEL_15:
  memset(&v60, 0, sizeof(v60));
  BaseTensor::GetDebugDescription(v10, &v60);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v60;
  }

  else
  {
    v18 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v60.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v18, v19);
  std::string::append(a2, " = ");
  if ((*(*a1 + 16))(a1))
  {
    v20 = "COREOP:";
  }

  else
  {
    v20 = "";
  }

  std::string::append(a2, v20);
  v21 = MPSGetDataTypeName();
  v22 = strlen(v21);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memmove(&__dst, v21, v22);
  }

  __dst.__r_.__value_.__s.__data_[v23] = 0;
  v24 = std::string::insert(&__dst, 0, "[");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v58, "]");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_32:
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v59;
  }

  else
  {
    v28 = v59.__r_.__value_.__r.__words[0];
  }

  (*(*a1 + 48))(&v58, a1, v28);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v58;
  }

  else
  {
    v29 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v58.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v29, v30);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "(");
  v31 = a1[1];
  v33 = *v31;
  v32 = v31[1];
  v34 = (*(*a1 + 24))(a1);
  v35 = v32 - v33;
  v36 = (v32 - v33) >> 3;
  v55 = v35;
  if (v34)
  {
    v37 = (*(*a1 + 32))(a1);
    std::to_string(&v58, v37);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v58;
    }

    else
    {
      v38 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v58.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v38, v39);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    goto LABEL_81;
  }

  if (v36)
  {
    v40 = 0;
    v41 = (v35 >> 3);
    while (1)
    {
      v42 = a1[1];
      if (v42 && (v43 = *v42, v40 < (*(a1[1] + 8) - v43) >> 3))
      {
        v44 = *(v43 + 8 * v40);
      }

      else
      {
        v44 = 0;
      }

      v45 = BaseOperation::GetNodeIdForBaseTensor(a3, a4, v44, 0);
      std::to_string(&v56, v45);
      v46 = std::string::insert(&v56, 0, "%");
      v47 = *&v46->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&__dst, ":");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v58;
      }

      else
      {
        v50 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v58.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v50, v51);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_68:
          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_79;
          }

          goto LABEL_69;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_79:
        operator delete(v56.__r_.__value_.__l.__data_);
      }

LABEL_69:
      memset(&v58, 0, sizeof(v58));
      BaseTensor::GetDebugDescription(v44, &v58);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v58;
      }

      else
      {
        v52 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v58.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v52, v53);
      if (v36 - 1 != v40)
      {
        std::string::append(a2, ", ");
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
        if (v41 == ++v40)
        {
          break;
        }
      }

      else if (v41 == ++v40)
      {
        break;
      }
    }
  }

LABEL_81:
  std::string::append(a2, ")");
  std::string::append(a2, "  ");
  if (v36)
  {
    v54 = 0;
    do
    {
      BaseOperation::DebugDescriptionPrivate(*(*(*a1[1] + 8 * v54++) + 32), a2, a3, a4);
    }

    while ((v55 >> 3) != v54);
  }

  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_93:
    operator delete(v60.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v59.__r_.__value_.__l.__data_);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_93;
  }
}

void sub_239A94088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t BaseOperation::GetNodeIdForBaseTensor(uint64_t **a1, _DWORD *a2, unint64_t a3, unsigned int a4)
{
  v4 = a1[1];
  if (!v4)
  {
    ++*a2;
LABEL_21:
    operator new();
  }

  v5 = a1 + 1;
  v6 = a1[1];
  do
  {
    v7 = v6[4];
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v5 = v6;
    }

    v6 = v6[v9];
  }

  while (v6);
  if (v5 == a1 + 1 || v5[4] > a3)
  {
    v10 = *a2;
    *a2 = v10 + 1;
    while (1)
    {
      while (1)
      {
        v11 = v4;
        v12 = v4[4];
        if (v12 <= a3)
        {
          break;
        }

        v4 = *v11;
        if (!*v11)
        {
          goto LABEL_21;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v4 = v11[1];
      if (!v4)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v13 = v5[5];
    if (a4)
    {
      if (HIDWORD(v13))
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v13;
      }

      *(v5 + 11) = 1;
    }

    else
    {
      return v13;
    }
  }

  return v10;
}

void BaseTensor::GetDebugDescription(uint64_t *a1, std::string *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v6 = *v4;
  v5 = v4[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v7 = MPSGetDataTypeName();
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v10 = std::string::insert(&__dst, 0, "[");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v21, "][");
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if (!v3)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v3)
  {
LABEL_24:
    v16 = 0;
    v17 = v3 - 1;
    do
    {
      std::to_string(&__p, 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v18, v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v17 != v16)
        {
LABEL_36:
          std::string::append(a2, ",");
        }
      }

      else if (v17 != v16)
      {
        goto LABEL_36;
      }

      ++v16;
    }

    while (v3 != v16);
  }

LABEL_37:
  std::string::append(a2, "]");
}

void sub_239A947AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(void *a1)
{
  if (a1)
  {
    _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(*a1);
    _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(a1[1]);

    operator delete(a1);
  }
}

void std::vector<long>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
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
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t EncodeDecompositionLU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 120);
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = [*(a4 + 40) objectAtIndexedSubscript:0];
  v9 = [*(a4 + 40) objectAtIndexedSubscript:1];
  v26 = [*(a4 + 40) objectAtIndexedSubscript:2];
  v10 = mpsMatrixFromNDArray(v7, *(*(a4 + 8) + 64));
  v28 = mpsMatrixFromNDArray(v8, *(*(a4 + 32) + 64));
  v27 = mpsMatrixFromNDArray(v9, *(*(a4 + 32) + 144));
  v11 = (v7 + *MEMORY[0x277CD7410]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v15 = *(&v7->super.isa + *MEMORY[0x277CD73D8]);
  v31 = v11[2];
  v32 = v14;
  v30[0] = v12;
  v30[1] = v13;
  v16 = *(v30 + (v15 & 0xF));
  v33[2] = v31;
  v33[3] = v14;
  v33[0] = v12;
  v33[1] = v13;
  [v6 setRows:*(v33 + (BYTE1(v15) & 0xF))];
  [v6 setColumns:v16];
  v17 = [v6 trsmKernel];
  v18 = [v17 workspace];
  v19 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v16 + *&v18[*MEMORY[0x277CD73B8]] - 1 columns:*&v18[*MEMORY[0x277CD7390]] rowBytes:*&v18[*MEMORY[0x277CD7390]] * (*(&v7->super.isa + *MEMORY[0x277CD73C8]) >> 3) dataType:?];
  v20 = [v19 rows];
  v21 = [v19 rowBytes] * v20;
  v22 = MEMORY[0x23EE7C450](v35, a3, 0);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:MPSAutoCache::GetTempBuffer(v22 descriptor:{v21, 0), v19}];

  [v17 setWorkspace:v23];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = ___ZL21EncodeDecompositionLUPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK39NDArrayMultiaryMultiDestinationCallInfo_block_invoke;
  v34[3] = &unk_278B09608;
  v34[4] = v9;
  v34[5] = a1;
  v34[6] = a4;
  [v6 setCopyBlock:v34];
  [v6 encodeToCommandEncoder:a2 commandBuffer:a3 sourceMatrix:v10 resultMatrix:v28 pivotIndices:v27 status:{objc_msgSend(v26, "buffer")}];

  MPSAutoCache::~MPSAutoCache(v35);
  return 0;
}

uint64_t ___ZL21EncodeDecompositionLUPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK39NDArrayMultiaryMultiDestinationCallInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = [*(a1 + 32) descriptor];
  [v8 sliceDimension:2 withSubrange:{*(*(*(a1 + 48) + 32) + 144) / *(*(a1 + 32) + *MEMORY[0x277CD7400]), 1}];
  v9 = [*(a1 + 32) safeArrayViewWithCommandBuffer:a3 computeEncoder:a2 descriptor:v8 aliasing:1];
  v10 = [*(a1 + 32) descriptor];
  v11 = MEMORY[0x277CD7430];
  *(v10 + *MEMORY[0x277CD7458] + 8) = 1;
  *(v10 + *v11 + 8) = 1;
  v12 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:a4 descriptor:v10];
  v13 = *(*(a1 + 40) + 128);
  v15[0] = v12;
  return [v13 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", v15, 1), v9}];
}

uint64_t EncodeArrayBandPart(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
LABEL_99:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *(*v8 + 8);
  v9 = *v10;
  if (v10[1] == *v10)
  {
    goto LABEL_100;
  }

  v11 = *(*v9 + 8);
  if (v11 > 285212703)
  {
    if (v11 <= 536870915)
    {
      if (v11 > 301989895)
      {
        if (v11 == 301989896)
        {
          v12 = 512;
          goto LABEL_47;
        }

        if (v11 == 335544328)
        {
          v12 = 544;
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 == 285212704)
        {
          v12 = 416;
          goto LABEL_47;
        }

        if (v11 == 285212736)
        {
          v12 = 448;
          goto LABEL_47;
        }
      }
    }

    else if (v11 <= 536870927)
    {
      if (v11 == 536870916)
      {
        v12 = 0;
        goto LABEL_47;
      }

      if (v11 == 536870920)
      {
        v12 = 32;
        goto LABEL_47;
      }
    }

    else
    {
      switch(v11)
      {
        case 536870928:
          v12 = 64;
          goto LABEL_47;
        case 536870944:
          v12 = 96;
          goto LABEL_47;
        case 536870976:
          v12 = 128;
          goto LABEL_47;
      }
    }
  }

  else if (v11 <= 31)
  {
    if (v11 > 7)
    {
      if (v11 == 8)
      {
        v12 = 192;
        goto LABEL_47;
      }

      if (v11 == 16)
      {
        v12 = 224;
        goto LABEL_47;
      }
    }

    else
    {
      if (v11 == -1879048176)
      {
        v12 = 384;
        goto LABEL_47;
      }

      if (v11 == 4)
      {
        v12 = 160;
        goto LABEL_47;
      }
    }
  }

  else if (v11 <= 268435463)
  {
    if (v11 == 32)
    {
      v12 = 256;
      goto LABEL_47;
    }

    if (v11 == 64)
    {
      v12 = 288;
      goto LABEL_47;
    }
  }

  else
  {
    switch(v11)
    {
      case 268435464:
        v12 = 480;
        goto LABEL_47;
      case 268435472:
        v12 = 320;
        goto LABEL_47;
      case 268435488:
        v12 = 352;
        goto LABEL_47;
    }
  }

  v12 = 576;
LABEL_47:
  v13 = [*(a4 + 232) graph];
  v14 = **(v13 + 56);
  if (*(*(v13 + 56) + 8) == v14)
  {
    goto LABEL_99;
  }

  v16 = *(*v14 + 24);
  v15 = *v16;
  if (v16[1] == *v16)
  {
    goto LABEL_100;
  }

  v17 = *(*v15 + 8);
  if (v17 > 285212703)
  {
    if (v17 <= 536870915)
    {
      if (v17 > 301989895)
      {
        if (v17 == 301989896)
        {
          v18 = 16;
          goto LABEL_93;
        }

        if (v17 == 335544328)
        {
          v18 = 17;
          goto LABEL_93;
        }
      }

      else
      {
        if (v17 == 285212704)
        {
          v18 = 13;
          goto LABEL_93;
        }

        if (v17 == 285212736)
        {
          v18 = 14;
          goto LABEL_93;
        }
      }
    }

    else if (v17 <= 536870927)
    {
      if (v17 == 536870916)
      {
        v18 = 0;
        goto LABEL_93;
      }

      if (v17 == 536870920)
      {
        v18 = 1;
        goto LABEL_93;
      }
    }

    else
    {
      switch(v17)
      {
        case 536870928:
          v18 = 2;
          goto LABEL_93;
        case 536870944:
          v18 = 3;
          goto LABEL_93;
        case 536870976:
          v18 = 4;
          goto LABEL_93;
      }
    }
  }

  else if (v17 <= 31)
  {
    if (v17 > 7)
    {
      if (v17 == 8)
      {
        v18 = 6;
        goto LABEL_93;
      }

      if (v17 == 16)
      {
        v18 = 7;
        goto LABEL_93;
      }
    }

    else
    {
      if (v17 == -1879048176)
      {
        v18 = 12;
        goto LABEL_93;
      }

      if (v17 == 4)
      {
        v18 = 5;
        goto LABEL_93;
      }
    }
  }

  else if (v17 <= 268435463)
  {
    if (v17 == 32)
    {
      v18 = 8;
      goto LABEL_93;
    }

    if (v17 == 64)
    {
      v18 = 9;
      goto LABEL_93;
    }
  }

  else
  {
    switch(v17)
    {
      case 268435464:
        v18 = 15;
        goto LABEL_93;
      case 268435472:
        v18 = 10;
        goto LABEL_93;
      case 268435488:
        v18 = 11;
        goto LABEL_93;
    }
  }

  v18 = 18;
LABEL_93:
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v42 = v19;
  v43 = v19;
  v39 = -1;
  v41 = v19;
  v38 = v19;
  v40 = v18 | v12;
  *&v43 = [*(a4 + 16) count] | 0x10000;
  v33 = *&a1[*MEMORY[0x277CD7360]];
  v34 = *&a1[*MEMORY[0x277CD7368]];
  v32 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v21 = [PipelineStateForMPSKey threadExecutionWidth];
  v22 = [*(a4 + 232) graph];
  v23 = **(v22 + 56);
  if (*(*(v22 + 56) + 8) == v23)
  {
    goto LABEL_99;
  }

  v25 = *(*v23 + 24);
  v24 = *v25;
  if (v25[1] == *v25)
  {
LABEL_100:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = *(*v24 + 16);
  v26 = *v27;
  if (*(v27 + 8) - *v27 <= 8uLL)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if (v21 <= 1)
  {
    v21 = 1;
  }

  v28 = (v26[1] + 1) >> 1;
  v29 = (v21 + *v26 - 1) / v21;
  [a2 setComputePipelineState:PipelineStateForMPSKey];
  MPSLibrary::ReleaseComputeState();
  v30 = [a1 numLower];
  v37[3] = __PAIR64__([a1 numUpper], v30);
  objc_msgSend_setBytes_length_atIndex_(a2);
  MPSSetNDArraysOnComputeEncoder(a2, a4, 2, 0, 0);
  v37[0] = v29;
  v37[1] = v28;
  v37[2] = 1;
  v35 = v21;
  v36 = xmmword_239B06620;
  [a2 dispatchThreadgroups:v37 threadsPerThreadgroup:&v35];
  return 0;
}

uint64_t EncodeQuantizedGatherND(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v13 = v7[11];
  v556 = [v7 batchDimensions];
  v539 = [v12 allowNegativeIndices];
  [*(v9 + 16) count];
  if ([*(v9 + 16) count] != v13 && MTLReportFailureTypeEnabled())
  {
    v450 = v13;
    v454 = [*(v9 + 16) count];
    MTLReportFailure();
  }

  v554 = [*(v9 + 232) inputTensorAtIndex:{0, v450, v454}];
  v14 = [*(v9 + 232) inputTensorAtIndex:1];
  v15 = [*(v9 + 232) inputTensorAtIndex:2];
  v521 = [*(v9 + 232) outputTensorAtIndex:0];
  v16 = [*(v9 + 16) objectAtIndexedSubscript:0];
  v17 = [*(v9 + 16) objectAtIndexedSubscript:1];
  v487 = [*(v9 + 16) objectAtIndexedSubscript:2];
  v488 = *(v9 + 208);
  if (![v12[20] hasZeroPoint])
  {
    v486 = 0;
    v543 = 0;
    v18 = 3;
    if (![v12[20] hasMinValue])
    {
      goto LABEL_4;
    }

LABEL_6:
    v530 = [*(v9 + 232) inputTensorAtIndex:v18];
    v484 = [*(v9 + 16) objectAtIndexedSubscript:v18];
    goto LABEL_7;
  }

  v543 = [*(v9 + 232) inputTensorAtIndex:3];
  v486 = [*(v9 + 16) objectAtIndexedSubscript:3];
  v18 = 4;
  if ([v12[20] hasMinValue])
  {
    goto LABEL_6;
  }

LABEL_4:
  v484 = 0;
  v530 = 0;
LABEL_7:
  v19 = **(v14 + 16);
  if (*(*(v14 + 16) + 8) == v19)
  {
    goto LABEL_529;
  }

  v20 = *v521;
  v551 = v14;
  v21 = *v14;
  v546 = *v19;
  v542 = v15;
  v22 = *v15;
  v552 = *v554;
  if (*v554 != *v15 && MTLReportFailureTypeEnabled())
  {
    v451 = v552;
    v455 = v22;
    MTLReportFailure();
  }

  if ((v20 < v556 || v21 <= v556 || v552 <= v556) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v548 = v21;
  v23 = v554[2];
  v25 = *v23;
  v24 = v23[1];
  v485 = v16;
  if (v24 != v25)
  {
    if (((v24 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_530;
  }

  v26 = v521[2];
  v28 = *v26;
  v27 = v26[1];
  v483 = v11;
  v490 = v9;
  v557 = v12;
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v29 = v551[2];
  v31 = *v29;
  v30 = v29[1];
  v489 = v17;
  if (v30 != v31)
  {
    if (((v30 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v32 = v542[2];
  v34 = *v32;
  v33 = v32[1];
  if (v33 != v34)
  {
    if (((v33 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v556)
  {
    v35 = v556 - 1;
    v36 = (8 * v548 - 8);
    v37 = (8 * v552 - 8);
    v38 = (8 * v20 - 8);
    do
    {
      v41 = *v38--;
      v40 = v41;
      v43 = *v37--;
      v42 = v43;
      v44 = v43 == v40 || v42 == 1;
      if (!v44 || (*v36 != v40 ? (v39 = *v36 == 1) : (v39 = 1), !v39))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v451 = v35;
          MTLReportFailure();
        }
      }

      --v35;
      --v36;
    }

    while (v35 != -1);
  }

  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*(8 * i) % *(8 * i) && MTLReportFailureTypeEnabled())
      {
        v458 = i;
        v460 = *(8 * i);
        v451 = i;
        v455 = v460;
        MTLReportFailure();
      }
    }
  }

  if (v543)
  {
    v46 = *v543;
    if (v552 != *v543 && MTLReportFailureTypeEnabled())
    {
      v451 = v552;
      v455 = v46;
      MTLReportFailure();
    }

    v47 = v543[2];
    v49 = *v47;
    v48 = v47[1];
    if (v48 != v49)
    {
      if (((v48 - v49) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*(8 * j) % *(8 * j) && MTLReportFailureTypeEnabled())
        {
          v458 = j;
          v460 = *(8 * j);
          v451 = j;
          v455 = v460;
          MTLReportFailure();
        }
      }

      operator delete(0);
    }
  }

  if (v530)
  {
    v50 = *v530;
    if (v552 != *v530 && MTLReportFailureTypeEnabled())
    {
      v451 = v552;
      v455 = v50;
      MTLReportFailure();
    }

    v51 = v530[2];
    v53 = *v51;
    v52 = v51[1];
    if (v52 != v53)
    {
      if (((v52 - v53) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v22)
    {
      for (k = 0; k != v22; ++k)
      {
        if (*(8 * k) % *(8 * k) && MTLReportFailureTypeEnabled())
        {
          v458 = k;
          v460 = *(8 * k);
          v451 = k;
          v455 = v460;
          MTLReportFailure();
        }
      }

      operator delete(0);
    }
  }

  v54 = v552 - v556;
  if (v552 - v556 < v546 && MTLReportFailureTypeEnabled())
  {
    v451 = v552 - v556;
    v455 = v546;
    MTLReportFailure();
  }

  v55 = v548 + ~v556;
  if (v20 - v556 != v54 + v55 - v546 && MTLReportFailureTypeEnabled())
  {
    v455 = v548 + ~v556;
    v458 = v552 - v556 - v546;
    v451 = v20 - v556;
    MTLReportFailure();
  }

  v56 = v54 - v546;
  if (v56)
  {
    v70 = 0;
    if (v56 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v56;
    }

    do
    {
      ++v70;
    }

    while (v71 != v70);
  }

  if (v55)
  {
    v57 = 0;
    do
    {
      v58 = v57 + 1;
      v59 = *(8 * v57 + 8);
      if (*(8 * v56 + 8 * v57) != v59 && v59 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v458 = v57 + 1;
          v460 = *(8 * v57 + 8);
          v451 = v56 + v57;
          v455 = *(8 * v56 + 8 * v57);
          MTLReportFailure();
        }
      }

      ++v57;
    }

    while (v55 != v58);
  }

  v62 = *(v16 + *MEMORY[0x277CD73C8]);
  if (v62 != 4 && v62 != 8)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v64 = *v554[2];
  if (*(v554[2] + 8) == v64)
  {
    goto LABEL_529;
  }

  v65 = 8 / v62;
  if (*v64 % v65 && MTLReportFailureTypeEnabled())
  {
    v448 = *v554[2];
    if (*(v554[2] + 8) == v448)
    {
      goto LABEL_529;
    }

    v451 = *v448;
    v455 = v65;
    MTLReportFailure();
  }

  v66 = MEMORY[0x277CD73F0];
  v67 = *(v16 + *MEMORY[0x277CD73F0]);
  v68 = MEMORY[0x277CD73D8];
  if (v67)
  {
    v69 = *(v16 + *MEMORY[0x277CD73D8]);
    if (v69)
    {
      goto LABEL_544;
    }

    v75 = 1;
    do
    {
      v723 = v69;
      v76 = v75 + 1;
      if (v67 == v75)
      {
        break;
      }

      v39 = v75 == *(&v723 | v75 & 0xF);
      ++v75;
    }

    while (v39);
    if (v67 > v76 - 1)
    {
LABEL_544:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if ([v557[20] hasZeroPoint])
  {
    v77 = *&v486[*MEMORY[0x277CD73C8]];
    if (v77 != 4 && v77 != 8)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v79 = *v543[2];
    if (*(v543[2] + 8) != v79)
    {
      v80 = *v79;
      if (v80 == 1 || (v81 = 8 / v77, !(v80 % v81)) || !MTLReportFailureTypeEnabled())
      {
LABEL_114:
        v82 = *&v486[*v66];
        if (v82)
        {
          v83 = *&v486[*v68];
          if (v83)
          {
            goto LABEL_545;
          }

          v85 = 1;
          do
          {
            v722 = v83;
            v86 = v85 + 1;
            if (v82 == v85)
            {
              break;
            }

            v39 = v85 == *(&v722 | v85 & 0xF);
            ++v85;
          }

          while (v39);
          if (v82 > v86 - 1)
          {
LABEL_545:
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }
        }

        goto LABEL_124;
      }

      v449 = *v543[2];
      if (*(v543[2] + 8) != v449)
      {
        v452 = *v449;
        v456 = v81;
        MTLReportFailure();
        goto LABEL_114;
      }
    }

LABEL_529:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_124:
  v87 = *v551[2];
  if (*(v551[2] + 8) == v87)
  {
    goto LABEL_529;
  }

  v88 = *v551;
  v89 = *v87;
  v90 = *MEMORY[0x277CD73C8];
  v91 = *(v16 + v90);
  v536 = *v521;
  if (v91 > 285212703)
  {
    if (v91 <= 536870915)
    {
      if (v91 > 301989895)
      {
        if (v91 == 301989896)
        {
          v92 = 512;
          v93 = *&v489[v90];
          if (v93 <= 285212703)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (v91 != 335544328)
          {
            goto LABEL_215;
          }

          v92 = 544;
          v93 = *&v489[v90];
          if (v93 <= 285212703)
          {
            goto LABEL_185;
          }
        }
      }

      else if (v91 == 285212704)
      {
        v92 = 416;
        v93 = *&v489[v90];
        if (v93 <= 285212703)
        {
          goto LABEL_185;
        }
      }

      else
      {
        if (v91 != 285212736)
        {
          goto LABEL_215;
        }

        v92 = 448;
        v93 = *&v489[v90];
        if (v93 <= 285212703)
        {
          goto LABEL_185;
        }
      }
    }

    else if (v91 <= 536870927)
    {
      if (v91 == 536870916)
      {
        v92 = 0;
        v93 = *&v489[v90];
        if (v93 > 285212703)
        {
          goto LABEL_216;
        }

        goto LABEL_185;
      }

      if (v91 != 536870920)
      {
        goto LABEL_215;
      }

      v92 = 32;
      v93 = *&v489[v90];
      if (v93 <= 285212703)
      {
        goto LABEL_185;
      }
    }

    else
    {
      switch(v91)
      {
        case 536870928:
          v92 = 64;
          v93 = *&v489[v90];
          if (v93 <= 285212703)
          {
            goto LABEL_185;
          }

          break;
        case 536870944:
          v92 = 96;
          v93 = *&v489[v90];
          if (v93 <= 285212703)
          {
            goto LABEL_185;
          }

          break;
        case 536870976:
          v92 = 128;
          v93 = *&v489[v90];
          if (v93 <= 285212703)
          {
            goto LABEL_185;
          }

          break;
        default:
          goto LABEL_215;
      }
    }
  }

  else if (v91 <= 31)
  {
    if (v91 > 7)
    {
      if (v91 == 8)
      {
        v92 = 192;
        v93 = *&v489[v90];
        if (v93 <= 285212703)
        {
          goto LABEL_185;
        }
      }

      else
      {
        if (v91 != 16)
        {
          goto LABEL_215;
        }

        v92 = 224;
        v93 = *&v489[v90];
        if (v93 <= 285212703)
        {
          goto LABEL_185;
        }
      }
    }

    else if (v91 == -1879048176)
    {
      v92 = 384;
      v93 = *&v489[v90];
      if (v93 <= 285212703)
      {
        goto LABEL_185;
      }
    }

    else
    {
      if (v91 != 4)
      {
        goto LABEL_215;
      }

      v92 = 160;
      v93 = *&v489[v90];
      if (v93 <= 285212703)
      {
        goto LABEL_185;
      }
    }
  }

  else if (v91 <= 268435463)
  {
    if (v91 == 32)
    {
      v92 = 256;
      v93 = *&v489[v90];
      if (v93 <= 285212703)
      {
        goto LABEL_185;
      }
    }

    else
    {
      if (v91 != 64)
      {
        goto LABEL_215;
      }

      v92 = 288;
      v93 = *&v489[v90];
      if (v93 <= 285212703)
      {
        goto LABEL_185;
      }
    }
  }

  else
  {
    switch(v91)
    {
      case 268435464:
        v92 = 480;
        v93 = *&v489[v90];
        if (v93 <= 285212703)
        {
          goto LABEL_185;
        }

        break;
      case 268435472:
        v92 = 320;
        v93 = *&v489[v90];
        if (v93 <= 285212703)
        {
          goto LABEL_185;
        }

        break;
      case 268435488:
        v92 = 352;
        v93 = *&v489[v90];
        if (v93 > 285212703)
        {
          break;
        }

LABEL_185:
        if (v93 <= 31)
        {
          if (v93 > 7)
          {
            if (v93 == 8)
            {
              v92 |= 0x1800u;
              v94 = *&v487[v90];
              if (v94 > 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_245;
            }

            if (v93 == 16)
            {
              v92 |= 0x1C00u;
              v94 = *&v487[v90];
              if (v94 > 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_245;
            }
          }

          else
          {
            if (v93 == -1879048176)
            {
              v92 |= 0x3000u;
              v94 = *&v487[v90];
              if (v94 > 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_245;
            }

            if (v93 == 4)
            {
              v92 |= 0x1400u;
              v94 = *&v487[v90];
              if (v94 > 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_245;
            }
          }
        }

        else if (v93 <= 268435463)
        {
          if (v93 == 32)
          {
            v92 |= 0x2000u;
            v94 = *&v487[v90];
            if (v94 > 285212703)
            {
              goto LABEL_267;
            }

            goto LABEL_245;
          }

          if (v93 == 64)
          {
            v92 |= 0x2400u;
            v94 = *&v487[v90];
            if (v94 > 285212703)
            {
              goto LABEL_267;
            }

            goto LABEL_245;
          }
        }

        else
        {
          switch(v93)
          {
            case 268435464:
              v92 |= 0x3C00u;
              v94 = *&v487[v90];
              if (v94 > 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_245;
            case 268435472:
              v92 |= 0x2800u;
              v94 = *&v487[v90];
              if (v94 > 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_245;
            case 268435488:
              v92 |= 0x2C00u;
              v94 = *&v487[v90];
              if (v94 > 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_245;
          }
        }

LABEL_266:
        v92 |= 0x4800u;
        v94 = *&v487[v90];
        if (v94 > 285212703)
        {
          goto LABEL_267;
        }

        goto LABEL_245;
      default:
LABEL_215:
        v92 = 576;
        v93 = *&v489[v90];
        if (v93 > 285212703)
        {
          break;
        }

        goto LABEL_185;
    }
  }

LABEL_216:
  if (v93 <= 536870915)
  {
    if (v93 > 301989895)
    {
      if (v93 == 301989896)
      {
        v92 |= 0x4000u;
        v94 = *&v487[v90];
        if (v94 <= 285212703)
        {
          goto LABEL_245;
        }
      }

      else
      {
        if (v93 != 335544328)
        {
          goto LABEL_266;
        }

        v92 |= 0x4400u;
        v94 = *&v487[v90];
        if (v94 <= 285212703)
        {
          goto LABEL_245;
        }
      }
    }

    else if (v93 == 285212704)
    {
      v92 |= 0x3400u;
      v94 = *&v487[v90];
      if (v94 <= 285212703)
      {
        goto LABEL_245;
      }
    }

    else
    {
      if (v93 != 285212736)
      {
        goto LABEL_266;
      }

      v92 |= 0x3800u;
      v94 = *&v487[v90];
      if (v94 <= 285212703)
      {
        goto LABEL_245;
      }
    }
  }

  else if (v93 <= 536870927)
  {
    if (v93 == 536870916)
    {
      v94 = *&v487[v90];
      if (v94 > 285212703)
      {
        goto LABEL_267;
      }

      goto LABEL_245;
    }

    if (v93 != 536870920)
    {
      goto LABEL_266;
    }

    v92 |= 0x400u;
    v94 = *&v487[v90];
    if (v94 <= 285212703)
    {
      goto LABEL_245;
    }
  }

  else
  {
    switch(v93)
    {
      case 536870928:
        v92 |= 0x800u;
        v94 = *&v487[v90];
        if (v94 <= 285212703)
        {
          goto LABEL_245;
        }

        break;
      case 536870944:
        v92 |= 0xC00u;
        v94 = *&v487[v90];
        if (v94 <= 285212703)
        {
          goto LABEL_245;
        }

        break;
      case 536870976:
        v92 |= 0x1000u;
        v94 = *&v487[v90];
        if (v94 > 285212703)
        {
          break;
        }

LABEL_245:
        v95 = v488;
        if (v94 <= 31)
        {
          if (v94 > 7)
          {
            if (v94 == 8)
            {
              v96 = 196608;
              goto LABEL_289;
            }

            if (v94 == 16)
            {
              v96 = 229376;
              goto LABEL_289;
            }
          }

          else
          {
            if (v94 == -1879048176)
            {
              v96 = 393216;
              goto LABEL_289;
            }

            if (v94 == 4)
            {
              v96 = 163840;
              goto LABEL_289;
            }
          }
        }

        else if (v94 <= 268435463)
        {
          if (v94 == 32)
          {
            v96 = 0x40000;
            goto LABEL_289;
          }

          if (v94 == 64)
          {
            v96 = 294912;
            goto LABEL_289;
          }
        }

        else
        {
          switch(v94)
          {
            case 268435464:
              v96 = 491520;
              goto LABEL_289;
            case 268435472:
              v96 = 327680;
              goto LABEL_289;
            case 268435488:
              v96 = 360448;
              goto LABEL_289;
          }
        }

        goto LABEL_288;
      default:
        goto LABEL_266;
    }
  }

LABEL_267:
  v95 = v488;
  if (v94 <= 536870915)
  {
    if (v94 > 301989895)
    {
      if (v94 == 301989896)
      {
        v96 = 0x80000;
        goto LABEL_289;
      }

      if (v94 == 335544328)
      {
        v96 = 557056;
        goto LABEL_289;
      }
    }

    else
    {
      if (v94 == 285212704)
      {
        v96 = 425984;
        goto LABEL_289;
      }

      if (v94 == 285212736)
      {
        v96 = 458752;
        goto LABEL_289;
      }
    }
  }

  else if (v94 <= 536870927)
  {
    if (v94 == 536870916)
    {
      v96 = 0;
      goto LABEL_289;
    }

    if (v94 == 536870920)
    {
      v96 = 0x8000;
      goto LABEL_289;
    }
  }

  else
  {
    switch(v94)
    {
      case 536870928:
        v96 = 0x10000;
        goto LABEL_289;
      case 536870944:
        v96 = 98304;
        goto LABEL_289;
      case 536870976:
        v96 = 0x20000;
        goto LABEL_289;
    }
  }

LABEL_288:
  v96 = 589824;
LABEL_289:
  v553 = *v554;
  v97 = *v554 - v556;
  v98 = v92 | v96;
  if (![v557[20] hasZeroPoint])
  {
    goto LABEL_335;
  }

  v99 = *&v486[*MEMORY[0x277CD73C8]];
  if (v99 > 285212703)
  {
    if (v99 <= 536870915)
    {
      if (v99 > 301989895)
      {
        if (v99 == 301989896)
        {
          v100 = 0x1000000;
          goto LABEL_334;
        }

        if (v99 == 335544328)
        {
          v100 = 17825792;
          goto LABEL_334;
        }
      }

      else
      {
        if (v99 == 285212704)
        {
          v100 = 13631488;
          goto LABEL_334;
        }

        if (v99 == 285212736)
        {
          v100 = 14680064;
          goto LABEL_334;
        }
      }
    }

    else if (v99 <= 536870927)
    {
      if (v99 == 536870916)
      {
        v100 = 0;
        goto LABEL_334;
      }

      if (v99 == 536870920)
      {
        v100 = 0x100000;
        goto LABEL_334;
      }
    }

    else
    {
      switch(v99)
      {
        case 536870928:
          v100 = 0x200000;
          goto LABEL_334;
        case 536870944:
          v100 = 3145728;
          goto LABEL_334;
        case 536870976:
          v100 = 0x400000;
          goto LABEL_334;
      }
    }

LABEL_333:
    v100 = 18874368;
    goto LABEL_334;
  }

  if (v99 <= 31)
  {
    if (v99 > 7)
    {
      if (v99 == 8)
      {
        v100 = 6291456;
        goto LABEL_334;
      }

      if (v99 == 16)
      {
        v100 = 7340032;
        goto LABEL_334;
      }
    }

    else
    {
      if (v99 == -1879048176)
      {
        v100 = 12582912;
        goto LABEL_334;
      }

      if (v99 == 4)
      {
        v100 = 5242880;
        goto LABEL_334;
      }
    }

    goto LABEL_333;
  }

  if (v99 <= 268435463)
  {
    if (v99 == 32)
    {
      v100 = 0x800000;
      goto LABEL_334;
    }

    if (v99 == 64)
    {
      v100 = 9437184;
      goto LABEL_334;
    }

    goto LABEL_333;
  }

  if (v99 == 268435464)
  {
    v100 = 15728640;
    goto LABEL_334;
  }

  if (v99 == 268435472)
  {
    v100 = 10485760;
    goto LABEL_334;
  }

  if (v99 != 268435488)
  {
    goto LABEL_333;
  }

  v100 = 11534336;
LABEL_334:
  v98 |= v100;
LABEL_335:
  v101 = v89;
  v102 = v97 - v89;
  v103 = [v557[20] hasMinValue];
  v104 = *MEMORY[0x277CD73C8];
  if (!v103)
  {
    goto LABEL_381;
  }

  v105 = *&v484[v104];
  if (v105 > 285212703)
  {
    if (v105 <= 536870915)
    {
      if (v105 > 301989895)
      {
        if (v105 == 301989896)
        {
          v106 = 0x20000000;
          goto LABEL_380;
        }

        if (v105 == 335544328)
        {
          v106 = 570425344;
          goto LABEL_380;
        }
      }

      else
      {
        if (v105 == 285212704)
        {
          v106 = 436207616;
          goto LABEL_380;
        }

        if (v105 == 285212736)
        {
          v106 = 469762048;
          goto LABEL_380;
        }
      }
    }

    else if (v105 <= 536870927)
    {
      if (v105 == 536870916)
      {
        v106 = 0;
        goto LABEL_380;
      }

      if (v105 == 536870920)
      {
        v106 = 0x2000000;
        goto LABEL_380;
      }
    }

    else
    {
      switch(v105)
      {
        case 536870928:
          v106 = 0x4000000;
          goto LABEL_380;
        case 536870944:
          v106 = 100663296;
          goto LABEL_380;
        case 536870976:
          v106 = 0x8000000;
          goto LABEL_380;
      }
    }

LABEL_379:
    v106 = 603979776;
    goto LABEL_380;
  }

  if (v105 <= 31)
  {
    if (v105 > 7)
    {
      if (v105 == 8)
      {
        v106 = 201326592;
        goto LABEL_380;
      }

      if (v105 == 16)
      {
        v106 = 234881024;
        goto LABEL_380;
      }
    }

    else
    {
      if (v105 == -1879048176)
      {
        v106 = 402653184;
        goto LABEL_380;
      }

      if (v105 == 4)
      {
        v106 = 167772160;
        goto LABEL_380;
      }
    }

    goto LABEL_379;
  }

  if (v105 <= 268435463)
  {
    if (v105 == 32)
    {
      v106 = 0x10000000;
      goto LABEL_380;
    }

    if (v105 == 64)
    {
      v106 = 301989888;
      goto LABEL_380;
    }

    goto LABEL_379;
  }

  if (v105 == 268435464)
  {
    v106 = 503316480;
    goto LABEL_380;
  }

  if (v105 == 268435472)
  {
    v106 = 335544320;
    goto LABEL_380;
  }

  if (v105 != 268435488)
  {
    goto LABEL_379;
  }

  v106 = 369098752;
LABEL_380:
  v98 |= v106;
LABEL_381:
  v107 = *&v95[v104];
  if (v107 > 285212703)
  {
    if (v107 <= 536870915)
    {
      if (v107 > 301989895)
      {
        if (v107 == 301989896)
        {
          v108 = 16;
          goto LABEL_425;
        }

        if (v107 == 335544328)
        {
          v108 = 17;
          goto LABEL_425;
        }
      }

      else
      {
        if (v107 == 285212704)
        {
          v108 = 13;
          goto LABEL_425;
        }

        if (v107 == 285212736)
        {
          v108 = 14;
          goto LABEL_425;
        }
      }
    }

    else if (v107 <= 536870927)
    {
      if (v107 == 536870916)
      {
        v108 = 0;
        goto LABEL_425;
      }

      if (v107 == 536870920)
      {
        v108 = 1;
        goto LABEL_425;
      }
    }

    else
    {
      switch(v107)
      {
        case 536870928:
          v108 = 2;
          goto LABEL_425;
        case 536870944:
          v108 = 3;
          goto LABEL_425;
        case 536870976:
          v108 = 4;
          goto LABEL_425;
      }
    }
  }

  else if (v107 <= 31)
  {
    if (v107 > 7)
    {
      if (v107 == 8)
      {
        v108 = 6;
        goto LABEL_425;
      }

      if (v107 == 16)
      {
        v108 = 7;
        goto LABEL_425;
      }
    }

    else
    {
      if (v107 == -1879048176)
      {
        v108 = 12;
        goto LABEL_425;
      }

      if (v107 == 4)
      {
        v108 = 5;
        goto LABEL_425;
      }
    }
  }

  else if (v107 <= 268435463)
  {
    if (v107 == 32)
    {
      v108 = 8;
      goto LABEL_425;
    }

    if (v107 == 64)
    {
      v108 = 9;
      goto LABEL_425;
    }
  }

  else
  {
    switch(v107)
    {
      case 268435464:
        v108 = 15;
        goto LABEL_425;
      case 268435472:
        v108 = 10;
        goto LABEL_425;
      case 268435488:
        v108 = 11;
        goto LABEL_425;
    }
  }

  v108 = 18;
LABEL_425:
  *&v109 = -1;
  *(&v109 + 1) = -1;
  v735 = v109;
  v734 = v109;
  v733 = v109;
  v731 = -1;
  v730 = v109;
  v732 = v108 | v98;
  *&v735 = [*(v490 + 16) count] | 0x10000;
  if ([v557[20] hasMinValue])
  {
    v110 = 64;
  }

  else
  {
    v110 = 0;
  }

  v111 = [v557[20] hasZeroPoint];
  v112 = 32;
  if (!v111)
  {
    v112 = 0;
  }

  v113 = 16;
  if (!v539)
  {
    v113 = 0;
  }

  v731 = v102 | v113 | v110 | v112;
  v457 = *(v557 + *MEMORY[0x277CD7360]);
  v459 = *(v557 + *MEMORY[0x277CD7368]);
  v453 = *(v490 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v115 = PipelineStateForMPSKey;
  v116 = [PipelineStateForMPSKey threadExecutionWidth];
  [v483 setComputePipelineState:v115];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v483, v490, 4, 0, 0);
  v117 = v521[2];
  v118 = v117[1];
  v461 = v116;
  if (v118 != *v117)
  {
    if (((v118 - *v117) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_530:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v120 = v551[2];
  v122 = *v120;
  v121 = v120[1];
  if (v121 != v122)
  {
    if (((v121 - v122) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v123 = xmmword_239B0A0D0;
  v124 = 0uLL;
  v125 = 0uLL;
  v126 = 0uLL;
  v127 = v556;
  if (v88 >= v556)
  {
    v128 = (8 * (v88 + v553) - 8 * v101 - 16 * v556 - 8);
    v129 = v88 - v556;
    do
    {
      v721[0] = v123;
      v721[1] = v124;
      v721[2] = v125;
      v721[3] = v126;
      if (*(v721 + (v129 & 0xF)) == 1)
      {
        v130 = *v128;
        v717 = v123;
        v718 = v124;
        v719 = v125;
        v720 = v126;
        *(&v717 + (v129 & 0xF)) = v130;
        v126 = v720;
        v125 = v719;
        v124 = v718;
        v123 = v717;
      }

      ++v129;
      v128 += 2;
      --v127;
    }

    while (v127);
  }

  v545 = v125;
  v547 = v126;
  v549 = v123;
  *__p = v124;
  bzero(v726, 0x310uLL);
  v725[0] = v536;
  v725[1] = v88;
  v725[2] = v101;
  v725[3] = v553;
  v725[4] = v556;
  v725[5] = v102;
  v726[0] = v88 - v556 - 1;
  v727 = 1;
  v728 = 1;
  v131 = MEMORY[0x277CD7428];
  v132 = &v485[*MEMORY[0x277CD7428]];
  v541 = *(v132 + 7);
  v540 = *(v132 + 6);
  v538 = *(v132 + 5);
  v537 = *(v132 + 4);
  v535 = *(v132 + 3);
  v534 = *(v132 + 2);
  v533 = *(v132 + 1);
  v532 = *v132;
  makeStrideBytes();
  v133 = MEMORY[0x277CD73D0];
  v134 = *MEMORY[0x277CD73D0];
  v135.i64[0] = 0x100000001;
  v135.i64[1] = 0x100000001;
  v136 = vceqq_s32(*&v489[v134], v135);
  v137.i64[0] = v136.i32[0];
  v137.i64[1] = v136.i32[1];
  v138 = v137;
  v139 = vceqq_s32(*&v489[v134 + 16], v135);
  v137.i64[0] = v139.i32[0];
  v137.i64[1] = v139.i32[1];
  v140 = v137;
  v141 = vceqq_s32(*&v489[v134 + 32], v135);
  v137.i64[0] = v141.i32[0];
  v137.i64[1] = v141.i32[1];
  v142 = v137;
  v143 = vceqq_s32(*&v489[v134 + 48], v135);
  v137.i64[0] = v143.i32[0];
  v137.i64[1] = v143.i32[1];
  v144 = v137;
  v137.i64[0] = v136.i32[2];
  v137.i64[1] = v136.i32[3];
  v145 = v137;
  v137.i64[0] = v139.i32[2];
  v137.i64[1] = v139.i32[3];
  v146 = v137;
  v137.i64[0] = v141.i32[2];
  v137.i64[1] = v141.i32[3];
  v147 = v137;
  v137.i64[0] = v143.i32[2];
  v137.i64[1] = v143.i32[3];
  v148 = vbicq_s8(v743, v137);
  v149 = vbicq_s8(v741, v147);
  v150 = vbicq_s8(v739, v146);
  v151 = vbicq_s8(v737, v145);
  v152 = vbicq_s8(v742, v144);
  v153 = vbicq_s8(v740, v142);
  v154 = vbicq_s8(v738, v140);
  v155 = MEMORY[0x277CD73D8];
  v156 = *MEMORY[0x277CD73D8];
  v157 = *&v489[*MEMORY[0x277CD73C8]];
  v158 = *&v489[v156];
  v159 = BYTE1(*&v489[v156]);
  v160 = BYTE2(*&v489[v156]);
  v161 = BYTE3(*&v489[v156]);
  v162 = BYTE4(*&v489[v156]);
  v163 = WORD2(*&v489[v156]) >> 8;
  v164 = BYTE6(*&v489[v156]);
  v165 = HIBYTE(*&v489[v156]);
  v166 = *&v489[v156 + 8];
  v167 = BYTE1(*&v489[v156 + 8]);
  v168 = BYTE2(*&v489[v156 + 8]);
  v169 = BYTE3(*&v489[v156 + 8]);
  v170 = BYTE12(*&v489[v156]);
  v171 = WORD6(*&v489[v156]) >> 8;
  v172 = vbicq_s8(v736, v138);
  v173 = BYTE14(*&v489[v156]);
  v174 = HIBYTE(*&v489[v156]);
  if ((v157 & 0xFFF8) != 0)
  {
    v175 = v157 >> 3;
    v716[0] = v172;
    v716[1] = v151;
    v716[2] = v154;
    v716[3] = v150;
    v716[4] = v153;
    v716[5] = v149;
    v716[6] = v152;
    v716[7] = v148;
    v176 = *(v716 + (v158 & 0xF)) / v175;
    v715[0] = v172;
    v715[1] = v151;
    v715[2] = v154;
    v715[3] = v150;
    v715[4] = v153;
    v715[5] = v149;
    v715[6] = v152;
    v715[7] = v148;
    v177 = *(v715 + (v159 & 0xF));
    v714[0] = v172;
    v714[1] = v151;
    v714[2] = v154;
    v714[3] = v150;
    v714[4] = v153;
    v714[5] = v149;
    v714[6] = v152;
    v714[7] = v148;
    v178 = *(v714 + (v160 & 0xF)) / v175;
    v713[0] = v172;
    v713[1] = v151;
    v713[2] = v154;
    v713[3] = v150;
    v713[4] = v153;
    v713[5] = v149;
    v713[6] = v152;
    v713[7] = v148;
    v179 = *(v713 + (v161 & 0xF)) / v175;
    v712[0] = v172;
    v712[1] = v151;
    v712[2] = v154;
    v712[3] = v150;
    v712[4] = v153;
    v712[5] = v149;
    v712[6] = v152;
    v712[7] = v148;
    v180 = *(v712 + (v162 & 0xF)) / v175;
    v711[0] = v172;
    v711[1] = v151;
    v711[2] = v154;
    v711[3] = v150;
    v711[4] = v153;
    v711[5] = v149;
    v711[6] = v152;
    v711[7] = v148;
    v181 = *(v711 + (v163 & 0xF));
    v710[0] = v172;
    v710[1] = v151;
    v710[2] = v154;
    v710[3] = v150;
    v710[4] = v153;
    v710[5] = v149;
    v710[6] = v152;
    v710[7] = v148;
    v182 = *(v710 + (v164 & 0xF));
    v709[0] = v172;
    v709[1] = v151;
    v709[2] = v154;
    v709[3] = v150;
    v709[4] = v153;
    v709[5] = v149;
    v709[6] = v152;
    v709[7] = v148;
    v183 = *(v709 + (v165 & 0xF)) / v175;
    v708[0] = v172;
    v708[1] = v151;
    v708[2] = v154;
    v708[3] = v150;
    v708[4] = v153;
    v708[5] = v149;
    v708[6] = v152;
    v708[7] = v148;
    v184 = *(v708 + (v166 & 0xF)) / v175;
    v707[0] = v172;
    v707[1] = v151;
    v707[2] = v154;
    v707[3] = v150;
    v707[4] = v153;
    v707[5] = v149;
    v707[6] = v152;
    v707[7] = v148;
    v185 = *(v707 + (v167 & 0xF)) / v175;
    v706[0] = v172;
    v706[1] = v151;
    v706[2] = v154;
    v706[3] = v150;
    v706[4] = v153;
    v706[5] = v149;
    v706[6] = v152;
    v706[7] = v148;
    v186 = *(v706 + (v168 & 0xF)) / v175;
    v705[0] = v172;
    v705[1] = v151;
    v705[2] = v154;
    v705[3] = v150;
    v705[4] = v153;
    v705[5] = v149;
    v705[6] = v152;
    v705[7] = v148;
    v187 = *(v705 + (v169 & 0xF));
    v704[0] = v172;
    v704[1] = v151;
    v704[2] = v154;
    v704[3] = v150;
    v704[4] = v153;
    v704[5] = v149;
    v704[6] = v152;
    v704[7] = v148;
    v188 = *(v704 + (v170 & 0xF)) / v175;
    v703[0] = v172;
    v703[1] = v151;
    v703[2] = v154;
    v703[3] = v150;
    v703[4] = v153;
    v703[5] = v149;
    v703[6] = v152;
    v703[7] = v148;
    v189 = *(v703 + (v171 & 0xF)) / v175;
    v702[0] = v172;
    v702[1] = v151;
    v702[2] = v154;
    v702[3] = v150;
    v702[4] = v153;
    v702[5] = v149;
    v702[6] = v152;
    v702[7] = v148;
    v190 = *(v702 + (v173 & 0xF)) / v175;
    v701[0] = v172;
    v701[1] = v151;
    v701[2] = v154;
    v701[3] = v150;
    v701[4] = v153;
    v701[5] = v149;
    v701[6] = v152;
    v701[7] = v148;
    v191.i64[0] = v190;
    v191.i64[1] = *(v701 + (v174 & 0xF)) / v175;
    v519 = v191;
    v191.i64[0] = v188;
    v191.i64[1] = v189;
    v517 = v191;
    v191.i64[0] = v186;
    v191.i64[1] = v187 / v175;
    v515 = v191;
    v191.i64[0] = v184;
    v191.i64[1] = v185;
    v482 = v191;
    v191.i64[0] = v182 / v175;
    v191.i64[1] = v183;
    v481 = v191;
    v191.i64[0] = v180;
    v191.i64[1] = v181 / v175;
    v480 = v191;
    v191.i64[0] = v178;
    v191.i64[1] = v179;
    v479 = v191;
    v192.i64[0] = v176;
    v192.i64[1] = v177 / v175;
  }

  else
  {
    v700[0] = v172;
    v700[1] = v151;
    v700[2] = v154;
    v700[3] = v150;
    v700[4] = v153;
    v700[5] = v149;
    v700[6] = v152;
    v700[7] = v148;
    v699[0] = v172;
    v699[1] = v151;
    v699[2] = v154;
    v699[3] = v150;
    v699[4] = v153;
    v699[5] = v149;
    v699[6] = v152;
    v699[7] = v148;
    v698[0] = v172;
    v698[1] = v151;
    v698[2] = v154;
    v698[3] = v150;
    v698[4] = v153;
    v698[5] = v149;
    v698[6] = v152;
    v698[7] = v148;
    v697[0] = v172;
    v697[1] = v151;
    v697[2] = v154;
    v697[3] = v150;
    v697[4] = v153;
    v697[5] = v149;
    v697[6] = v152;
    v697[7] = v148;
    v696[0] = v172;
    v696[1] = v151;
    v696[2] = v154;
    v696[3] = v150;
    v696[4] = v153;
    v696[5] = v149;
    v696[6] = v152;
    v696[7] = v148;
    v695[0] = v172;
    v695[1] = v151;
    v695[2] = v154;
    v695[3] = v150;
    v695[4] = v153;
    v695[5] = v149;
    v695[6] = v152;
    v695[7] = v148;
    v694[0] = v172;
    v694[1] = v151;
    v694[2] = v154;
    v694[3] = v150;
    v694[4] = v153;
    v694[5] = v149;
    v694[6] = v152;
    v694[7] = v148;
    v693[0] = v172;
    v693[1] = v151;
    v693[2] = v154;
    v693[3] = v150;
    v693[4] = v153;
    v693[5] = v149;
    v693[6] = v152;
    v693[7] = v148;
    v692[0] = v172;
    v692[1] = v151;
    v692[2] = v154;
    v692[3] = v150;
    v692[4] = v153;
    v692[5] = v149;
    v692[6] = v152;
    v692[7] = v148;
    v691[0] = v172;
    v691[1] = v151;
    v691[2] = v154;
    v691[3] = v150;
    v691[4] = v153;
    v691[5] = v149;
    v691[6] = v152;
    v691[7] = v148;
    v690[0] = v172;
    v690[1] = v151;
    v690[2] = v154;
    v690[3] = v150;
    v690[4] = v153;
    v690[5] = v149;
    v690[6] = v152;
    v690[7] = v148;
    v689[0] = v172;
    v689[1] = v151;
    v689[2] = v154;
    v689[3] = v150;
    v689[4] = v153;
    v689[5] = v149;
    v689[6] = v152;
    v689[7] = v148;
    v688[0] = v172;
    v688[1] = v151;
    v688[2] = v154;
    v688[3] = v150;
    v688[4] = v153;
    v688[5] = v149;
    v688[6] = v152;
    v688[7] = v148;
    v687[0] = v172;
    v687[1] = v151;
    v687[2] = v154;
    v687[3] = v150;
    v687[4] = v153;
    v687[5] = v149;
    v687[6] = v152;
    v687[7] = v148;
    v686[0] = v172;
    v686[1] = v151;
    v686[2] = v154;
    v686[3] = v150;
    v686[4] = v153;
    v686[5] = v149;
    v686[6] = v152;
    v686[7] = v148;
    v685[0] = v172;
    v685[1] = v151;
    v685[2] = v154;
    v685[3] = v150;
    v685[4] = v153;
    v685[5] = v149;
    v685[6] = v152;
    v685[7] = v148;
    v193.i64[0] = *(v686 + (v173 & 0xF));
    v194.i64[0] = *(v688 + (v170 & 0xF));
    v193.i64[1] = *(v685 + (v174 & 0xF));
    v519 = v193;
    v194.i64[1] = *(v687 + (v171 & 0xF));
    v517 = v194;
    v193.i64[0] = *(v690 + (v168 & 0xF));
    v193.i64[1] = *(v689 + (v169 & 0xF));
    v515 = v193;
    v193.i64[0] = *(v692 + (v166 & 0xF));
    v193.i64[1] = *(v691 + (v167 & 0xF));
    v482 = v193;
    v193.i64[0] = *(v694 + (v164 & 0xF));
    v193.i64[1] = *(v693 + (v165 & 0xF));
    v481 = v193;
    v193.i64[0] = *(v696 + (v162 & 0xF));
    v193.i64[1] = *(v695 + (v163 & 0xF));
    v480 = v193;
    v193.i64[0] = *(v698 + (v160 & 0xF));
    v193.i64[1] = *(v697 + (v161 & 0xF));
    v479 = v193;
    v192.i64[0] = *(v700 + (v158 & 0xF));
    v192.i64[1] = *(v699 + (v159 & 0xF));
  }

  v477 = v192;
  v195 = v530;
  v196 = *&v489[v156];
  v197 = &v489[v134];
  v198 = *v197;
  v199 = v197[1];
  v200 = v197[2];
  v684 = v197[3];
  v683[2] = v200;
  v683[1] = v199;
  v683[0] = v198;
  v151.i32[0] = *(v683 + (v196 & 0xF));
  v473 = v151;
  v682[3] = v684;
  v682[2] = v200;
  v682[1] = v199;
  v682[0] = v198;
  v151.i32[0] = *(v682 + (BYTE1(v196) & 0xF));
  v474 = v151;
  v681[3] = v684;
  v681[2] = v200;
  v681[1] = v199;
  v681[0] = v198;
  v151.i32[0] = *(v681 + (BYTE2(v196) & 0xF));
  v476 = v151;
  v680[3] = v684;
  v680[2] = v200;
  v680[1] = v199;
  v680[0] = v198;
  v151.i32[0] = *(v680 + (BYTE3(v196) & 0xF));
  v478 = v151;
  v679[3] = v684;
  v679[2] = v200;
  v679[1] = v199;
  v679[0] = v198;
  v151.i32[0] = *(v679 + (BYTE4(v196) & 0xF));
  v468 = v151;
  v678[3] = v684;
  v678[2] = v200;
  v678[1] = v199;
  v678[0] = v198;
  v151.i32[0] = *(v678 + (BYTE5(v196) & 0xF));
  v470 = v151;
  v677[3] = v684;
  v677[2] = v200;
  v677[1] = v199;
  v677[0] = v198;
  v151.i32[0] = *(v677 + (BYTE6(v196) & 0xF));
  v472 = v151;
  v676[3] = v684;
  v676[2] = v200;
  v676[1] = v199;
  v676[0] = v198;
  v151.i32[0] = *(v676 + (BYTE7(v196) & 0xF));
  v475 = v151;
  v675[3] = v684;
  v675[2] = v200;
  v675[1] = v199;
  v675[0] = v198;
  v151.i32[0] = *(v675 + (BYTE8(v196) & 0xF));
  v464 = v151;
  v674[3] = v684;
  v674[2] = v200;
  v674[1] = v199;
  v674[0] = v198;
  v151.i32[0] = *(v674 + (BYTE9(v196) & 0xF));
  v466 = v151;
  v673[3] = v684;
  v673[2] = v200;
  v673[1] = v199;
  v673[0] = v198;
  v151.i32[0] = *(v673 + (BYTE10(v196) & 0xF));
  v469 = v151;
  v672[3] = v684;
  v672[2] = v200;
  v672[1] = v199;
  v672[0] = v198;
  v151.i32[0] = *(v672 + (BYTE11(v196) & 0xF));
  v471 = v151;
  v671[3] = v684;
  v671[2] = v200;
  v671[1] = v199;
  v671[0] = v198;
  v151.i32[0] = *(v671 + (BYTE12(v196) & 0xF));
  v462 = v151;
  v670[3] = v684;
  v670[2] = v200;
  v670[1] = v199;
  v670[0] = v198;
  v151.i32[0] = *(v670 + (BYTE13(v196) & 0xF));
  v463 = v151;
  v669[3] = v684;
  v669[2] = v200;
  v669[1] = v199;
  v669[0] = v198;
  v151.i32[0] = *(v669 + (BYTE14(v196) & 0xF));
  v465 = v151;
  v668[3] = v684;
  v668[2] = v200;
  v668[1] = v199;
  v668[0] = v198;
  v198.i32[0] = *(v668 + (HIBYTE(v196) & 0xF));
  v467 = v198;
  makeStrideBytes();
  v201 = &v488[*v133];
  v202.i64[0] = 0x100000001;
  v202.i64[1] = 0x100000001;
  v203 = vceqq_s32(*v201, v202);
  v204.i64[0] = v203.i32[0];
  v204.i64[1] = v203.i32[1];
  v205 = v204;
  v206 = vceqq_s32(v201[1], v202);
  v204.i64[0] = v206.i32[0];
  v204.i64[1] = v206.i32[1];
  v207 = v204;
  v208 = vceqq_s32(v201[2], v202);
  v204.i64[0] = v208.i32[0];
  v204.i64[1] = v208.i32[1];
  v209 = v204;
  v210 = vceqq_s32(v201[3], v202);
  v204.i64[0] = v210.i32[0];
  v204.i64[1] = v210.i32[1];
  v211 = v204;
  v204.i64[0] = v203.i32[2];
  v204.i64[1] = v203.i32[3];
  v212 = v204;
  v204.i64[0] = v206.i32[2];
  v204.i64[1] = v206.i32[3];
  v213 = v204;
  v204.i64[0] = v208.i32[2];
  v204.i64[1] = v208.i32[3];
  v214 = v204;
  v204.i64[0] = v210.i32[2];
  v204.i64[1] = v210.i32[3];
  v215 = vbicq_s8(v743, v204);
  v216 = vbicq_s8(v741, v214);
  v217 = vbicq_s8(v739, v213);
  v218 = vbicq_s8(v737, v212);
  v219 = vbicq_s8(v742, v211);
  v220 = vbicq_s8(v740, v209);
  v221 = vbicq_s8(v738, v207);
  v222 = *&v488[*MEMORY[0x277CD73C8]];
  v223 = *&v488[*v155];
  v224 = BYTE1(*&v488[*v155]);
  v225 = BYTE2(*&v488[*v155]);
  v226 = BYTE3(*&v488[*v155]);
  v227 = BYTE4(*&v488[*v155]);
  v228 = WORD2(*&v488[*v155]) >> 8;
  v229 = BYTE6(*&v488[*v155]);
  v230 = HIBYTE(*&v488[*v155]);
  v231 = *&v488[*v155 + 8];
  v232 = BYTE1(*&v488[*v155 + 8]);
  v233 = BYTE2(*&v488[*v155 + 8]);
  v234 = BYTE3(*&v488[*v155 + 8]);
  v235 = BYTE12(*&v488[*v155]);
  v236 = WORD6(*&v488[*v155]) >> 8;
  v237 = vbicq_s8(v736, v205);
  v238 = BYTE14(*&v488[*v155]);
  v239 = HIBYTE(*&v488[*v155]);
  if ((v222 & 0xFFF8) != 0)
  {
    v240 = v222 >> 3;
    v667[0] = v237;
    v667[1] = v218;
    v667[2] = v221;
    v667[3] = v217;
    v667[4] = v220;
    v667[5] = v216;
    v667[6] = v219;
    v667[7] = v215;
    v241 = *(v667 + (v223 & 0xF)) / v240;
    v666[0] = v237;
    v666[1] = v218;
    v666[2] = v221;
    v666[3] = v217;
    v666[4] = v220;
    v666[5] = v216;
    v666[6] = v219;
    v666[7] = v215;
    v242 = *(v666 + (v224 & 0xF));
    v665[0] = v237;
    v665[1] = v218;
    v665[2] = v221;
    v665[3] = v217;
    v665[4] = v220;
    v665[5] = v216;
    v665[6] = v219;
    v665[7] = v215;
    v243 = *(v665 + (v225 & 0xF)) / v240;
    v664[0] = v237;
    v664[1] = v218;
    v664[2] = v221;
    v664[3] = v217;
    v664[4] = v220;
    v664[5] = v216;
    v664[6] = v219;
    v664[7] = v215;
    v244 = *(v664 + (v226 & 0xF)) / v240;
    v663[0] = v237;
    v663[1] = v218;
    v663[2] = v221;
    v663[3] = v217;
    v663[4] = v220;
    v663[5] = v216;
    v663[6] = v219;
    v663[7] = v215;
    v245 = *(v663 + (v227 & 0xF)) / v240;
    v662[0] = v237;
    v662[1] = v218;
    v662[2] = v221;
    v662[3] = v217;
    v662[4] = v220;
    v662[5] = v216;
    v662[6] = v219;
    v662[7] = v215;
    v246 = *(v662 + (v228 & 0xF));
    v661[0] = v237;
    v661[1] = v218;
    v661[2] = v221;
    v661[3] = v217;
    v661[4] = v220;
    v661[5] = v216;
    v661[6] = v219;
    v661[7] = v215;
    v247 = *(v661 + (v229 & 0xF));
    v660[0] = v237;
    v660[1] = v218;
    v660[2] = v221;
    v660[3] = v217;
    v660[4] = v220;
    v660[5] = v216;
    v660[6] = v219;
    v660[7] = v215;
    v248 = *(v660 + (v230 & 0xF)) / v240;
    v659[0] = v237;
    v659[1] = v218;
    v659[2] = v221;
    v659[3] = v217;
    v659[4] = v220;
    v659[5] = v216;
    v659[6] = v219;
    v659[7] = v215;
    v249 = *(v659 + (v231 & 0xF)) / v240;
    v658[0] = v237;
    v658[1] = v218;
    v658[2] = v221;
    v658[3] = v217;
    v658[4] = v220;
    v658[5] = v216;
    v658[6] = v219;
    v658[7] = v215;
    v250 = *(v658 + (v232 & 0xF)) / v240;
    v657[0] = v237;
    v657[1] = v218;
    v657[2] = v221;
    v657[3] = v217;
    v657[4] = v220;
    v657[5] = v216;
    v657[6] = v219;
    v657[7] = v215;
    v251 = *(v657 + (v233 & 0xF)) / v240;
    v656[0] = v237;
    v656[1] = v218;
    v656[2] = v221;
    v656[3] = v217;
    v656[4] = v220;
    v656[5] = v216;
    v656[6] = v219;
    v656[7] = v215;
    v252 = *(v656 + (v234 & 0xF));
    v655[0] = v237;
    v655[1] = v218;
    v655[2] = v221;
    v655[3] = v217;
    v655[4] = v220;
    v655[5] = v216;
    v655[6] = v219;
    v655[7] = v215;
    v253 = *(v655 + (v235 & 0xF)) / v240;
    v654[0] = v237;
    v654[1] = v218;
    v654[2] = v221;
    v654[3] = v217;
    v654[4] = v220;
    v654[5] = v216;
    v654[6] = v219;
    v654[7] = v215;
    v254 = *(v654 + (v236 & 0xF)) / v240;
    v653[0] = v237;
    v653[1] = v218;
    v653[2] = v221;
    v653[3] = v217;
    v653[4] = v220;
    v653[5] = v216;
    v653[6] = v219;
    v653[7] = v215;
    v255 = *(v653 + (v238 & 0xF)) / v240;
    v652[0] = v237;
    v652[1] = v218;
    v652[2] = v221;
    v652[3] = v217;
    v652[4] = v220;
    v652[5] = v216;
    v652[6] = v219;
    v652[7] = v215;
    *&v256 = v255;
    *(&v256 + 1) = *(v652 + (v239 & 0xF)) / v240;
    v514 = v256;
    *&v256 = v253;
    *(&v256 + 1) = v254;
    v513 = v256;
    *&v256 = v251;
    *(&v256 + 1) = v252 / v240;
    v512 = v256;
    *&v256 = v249;
    *(&v256 + 1) = v250;
    v511 = v256;
    *&v256 = v247 / v240;
    *(&v256 + 1) = v248;
    v510 = v256;
    *&v256 = v245;
    *(&v256 + 1) = v246 / v240;
    v509 = v256;
    *&v256 = v243;
    *(&v256 + 1) = v244;
    v508 = v256;
    *&v257 = v241;
    *(&v257 + 1) = v242 / v240;
  }

  else
  {
    v651[0] = v237;
    v651[1] = v218;
    v651[2] = v221;
    v651[3] = v217;
    v651[4] = v220;
    v651[5] = v216;
    v651[6] = v219;
    v651[7] = v215;
    v650[0] = v237;
    v650[1] = v218;
    v650[2] = v221;
    v650[3] = v217;
    v650[4] = v220;
    v650[5] = v216;
    v650[6] = v219;
    v650[7] = v215;
    v649[0] = v237;
    v649[1] = v218;
    v649[2] = v221;
    v649[3] = v217;
    v649[4] = v220;
    v649[5] = v216;
    v649[6] = v219;
    v649[7] = v215;
    v648[0] = v237;
    v648[1] = v218;
    v648[2] = v221;
    v648[3] = v217;
    v648[4] = v220;
    v648[5] = v216;
    v648[6] = v219;
    v648[7] = v215;
    v647[0] = v237;
    v647[1] = v218;
    v647[2] = v221;
    v647[3] = v217;
    v647[4] = v220;
    v647[5] = v216;
    v647[6] = v219;
    v647[7] = v215;
    v646[0] = v237;
    v646[1] = v218;
    v646[2] = v221;
    v646[3] = v217;
    v646[4] = v220;
    v646[5] = v216;
    v646[6] = v219;
    v646[7] = v215;
    v645[0] = v237;
    v645[1] = v218;
    v645[2] = v221;
    v645[3] = v217;
    v645[4] = v220;
    v645[5] = v216;
    v645[6] = v219;
    v645[7] = v215;
    v644[0] = v237;
    v644[1] = v218;
    v644[2] = v221;
    v644[3] = v217;
    v644[4] = v220;
    v644[5] = v216;
    v644[6] = v219;
    v644[7] = v215;
    v643[0] = v237;
    v643[1] = v218;
    v643[2] = v221;
    v643[3] = v217;
    v643[4] = v220;
    v643[5] = v216;
    v643[6] = v219;
    v643[7] = v215;
    v642[0] = v237;
    v642[1] = v218;
    v642[2] = v221;
    v642[3] = v217;
    v642[4] = v220;
    v642[5] = v216;
    v642[6] = v219;
    v642[7] = v215;
    v641[0] = v237;
    v641[1] = v218;
    v641[2] = v221;
    v641[3] = v217;
    v641[4] = v220;
    v641[5] = v216;
    v641[6] = v219;
    v641[7] = v215;
    v640[0] = v237;
    v640[1] = v218;
    v640[2] = v221;
    v640[3] = v217;
    v640[4] = v220;
    v640[5] = v216;
    v640[6] = v219;
    v640[7] = v215;
    v639[0] = v237;
    v639[1] = v218;
    v639[2] = v221;
    v639[3] = v217;
    v639[4] = v220;
    v639[5] = v216;
    v639[6] = v219;
    v639[7] = v215;
    v638[0] = v237;
    v638[1] = v218;
    v638[2] = v221;
    v638[3] = v217;
    v638[4] = v220;
    v638[5] = v216;
    v638[6] = v219;
    v638[7] = v215;
    v637[0] = v237;
    v637[1] = v218;
    v637[2] = v221;
    v637[3] = v217;
    v637[4] = v220;
    v637[5] = v216;
    v637[6] = v219;
    v637[7] = v215;
    v636[0] = v237;
    v636[1] = v218;
    v636[2] = v221;
    v636[3] = v217;
    v636[4] = v220;
    v636[5] = v216;
    v636[6] = v219;
    v636[7] = v215;
    *&v258 = *(v637 + (v238 & 0xF));
    *&v259 = *(v639 + (v235 & 0xF));
    *(&v258 + 1) = *(v636 + (v239 & 0xF));
    v514 = v258;
    *(&v259 + 1) = *(v638 + (v236 & 0xF));
    v513 = v259;
    *&v258 = *(v641 + (v233 & 0xF));
    *(&v258 + 1) = *(v640 + (v234 & 0xF));
    v512 = v258;
    *&v258 = *(v643 + (v231 & 0xF));
    *(&v258 + 1) = *(v642 + (v232 & 0xF));
    v511 = v258;
    *&v258 = *(v645 + (v229 & 0xF));
    *(&v258 + 1) = *(v644 + (v230 & 0xF));
    v510 = v258;
    *&v258 = *(v647 + (v227 & 0xF));
    *(&v258 + 1) = *(v646 + (v228 & 0xF));
    v509 = v258;
    *&v258 = *(v649 + (v225 & 0xF));
    *(&v258 + 1) = *(v648 + (v226 & 0xF));
    v508 = v258;
    *&v257 = *(v651 + (v223 & 0xF));
    *(&v257 + 1) = *(v650 + (v224 & 0xF));
  }

  v507 = v257;
  makeStrideBytes();
  v260 = &v487[*v133];
  v261.i64[0] = 0x100000001;
  v261.i64[1] = 0x100000001;
  v262 = vceqq_s32(*v260, v261);
  v263.i64[0] = v262.i32[0];
  v263.i64[1] = v262.i32[1];
  v264 = v263;
  v265 = vceqq_s32(v260[1], v261);
  v263.i64[0] = v265.i32[0];
  v263.i64[1] = v265.i32[1];
  v266 = v263;
  v267 = vceqq_s32(v260[2], v261);
  v263.i64[0] = v267.i32[0];
  v263.i64[1] = v267.i32[1];
  v268 = v263;
  v269 = vceqq_s32(v260[3], v261);
  v263.i64[0] = v269.i32[0];
  v263.i64[1] = v269.i32[1];
  v270 = v263;
  v263.i64[0] = v262.i32[2];
  v263.i64[1] = v262.i32[3];
  v271 = v263;
  v263.i64[0] = v265.i32[2];
  v263.i64[1] = v265.i32[3];
  v272 = v263;
  v263.i64[0] = v267.i32[2];
  v263.i64[1] = v267.i32[3];
  v273 = v263;
  v263.i64[0] = v269.i32[2];
  v263.i64[1] = v269.i32[3];
  v274 = vbicq_s8(v743, v263);
  v275 = vbicq_s8(v741, v273);
  v276 = vbicq_s8(v739, v272);
  v277 = vbicq_s8(v737, v271);
  v278 = vbicq_s8(v742, v270);
  v279 = vbicq_s8(v740, v268);
  v280 = vbicq_s8(v738, v266);
  v281 = *&v487[*MEMORY[0x277CD73C8]];
  v282 = *&v487[*v155];
  v283 = BYTE1(*&v487[*v155]);
  v284 = BYTE2(*&v487[*v155]);
  v285 = BYTE3(*&v487[*v155]);
  v286 = BYTE4(*&v487[*v155]);
  v287 = WORD2(*&v487[*v155]) >> 8;
  v288 = BYTE6(*&v487[*v155]);
  v289 = HIBYTE(*&v487[*v155]);
  v290 = *&v487[*v155 + 8];
  v291 = BYTE1(*&v487[*v155 + 8]);
  v292 = BYTE2(*&v487[*v155 + 8]);
  v293 = BYTE3(*&v487[*v155 + 8]);
  v294 = BYTE12(*&v487[*v155]);
  v295 = WORD6(*&v487[*v155]) >> 8;
  v296 = vbicq_s8(v736, v264);
  v297 = BYTE14(*&v487[*v155]);
  v298 = HIBYTE(*&v487[*v155]);
  if ((v281 & 0xFFF8) != 0)
  {
    v299 = v281 >> 3;
    v635[0] = v296;
    v635[1] = v277;
    v635[2] = v280;
    v635[3] = v276;
    v635[4] = v279;
    v635[5] = v275;
    v635[6] = v278;
    v635[7] = v274;
    v300 = *(v635 + (v282 & 0xF)) / v299;
    v634[0] = v296;
    v634[1] = v277;
    v634[2] = v280;
    v634[3] = v276;
    v634[4] = v279;
    v634[5] = v275;
    v634[6] = v278;
    v634[7] = v274;
    v301 = *(v634 + (v283 & 0xF));
    v633[0] = v296;
    v633[1] = v277;
    v633[2] = v280;
    v633[3] = v276;
    v633[4] = v279;
    v633[5] = v275;
    v633[6] = v278;
    v633[7] = v274;
    v302 = *(v633 + (v284 & 0xF)) / v299;
    v632[0] = v296;
    v632[1] = v277;
    v632[2] = v280;
    v632[3] = v276;
    v632[4] = v279;
    v632[5] = v275;
    v632[6] = v278;
    v632[7] = v274;
    v303 = *(v632 + (v285 & 0xF)) / v299;
    v631[0] = v296;
    v631[1] = v277;
    v631[2] = v280;
    v631[3] = v276;
    v631[4] = v279;
    v631[5] = v275;
    v631[6] = v278;
    v631[7] = v274;
    v304 = *(v631 + (v286 & 0xF)) / v299;
    v630[0] = v296;
    v630[1] = v277;
    v630[2] = v280;
    v630[3] = v276;
    v630[4] = v279;
    v630[5] = v275;
    v630[6] = v278;
    v630[7] = v274;
    v305 = *(v630 + (v287 & 0xF));
    v629[0] = v296;
    v629[1] = v277;
    v629[2] = v280;
    v629[3] = v276;
    v629[4] = v279;
    v629[5] = v275;
    v629[6] = v278;
    v629[7] = v274;
    v306 = *(v629 + (v288 & 0xF));
    v628[0] = v296;
    v628[1] = v277;
    v628[2] = v280;
    v628[3] = v276;
    v628[4] = v279;
    v628[5] = v275;
    v628[6] = v278;
    v628[7] = v274;
    v307 = *(v628 + (v289 & 0xF)) / v299;
    v627[0] = v296;
    v627[1] = v277;
    v627[2] = v280;
    v627[3] = v276;
    v627[4] = v279;
    v627[5] = v275;
    v627[6] = v278;
    v627[7] = v274;
    v308 = *(v627 + (v290 & 0xF)) / v299;
    v626[0] = v296;
    v626[1] = v277;
    v626[2] = v280;
    v626[3] = v276;
    v626[4] = v279;
    v626[5] = v275;
    v626[6] = v278;
    v626[7] = v274;
    v309 = *(v626 + (v291 & 0xF)) / v299;
    v625[0] = v296;
    v625[1] = v277;
    v625[2] = v280;
    v625[3] = v276;
    v625[4] = v279;
    v625[5] = v275;
    v625[6] = v278;
    v625[7] = v274;
    v310 = *(v625 + (v292 & 0xF)) / v299;
    v624[0] = v296;
    v624[1] = v277;
    v624[2] = v280;
    v624[3] = v276;
    v624[4] = v279;
    v624[5] = v275;
    v624[6] = v278;
    v624[7] = v274;
    v311 = *(v624 + (v293 & 0xF));
    v623[0] = v296;
    v623[1] = v277;
    v623[2] = v280;
    v623[3] = v276;
    v623[4] = v279;
    v623[5] = v275;
    v623[6] = v278;
    v623[7] = v274;
    v312 = *(v623 + (v294 & 0xF)) / v299;
    v622[0] = v296;
    v622[1] = v277;
    v622[2] = v280;
    v622[3] = v276;
    v622[4] = v279;
    v622[5] = v275;
    v622[6] = v278;
    v622[7] = v274;
    v313 = *(v622 + (v295 & 0xF)) / v299;
    v621[0] = v296;
    v621[1] = v277;
    v621[2] = v280;
    v621[3] = v276;
    v621[4] = v279;
    v621[5] = v275;
    v621[6] = v278;
    v621[7] = v274;
    v314 = *(v621 + (v297 & 0xF)) / v299;
    v620[0] = v296;
    v620[1] = v277;
    v620[2] = v280;
    v620[3] = v276;
    v620[4] = v279;
    v620[5] = v275;
    v620[6] = v278;
    v620[7] = v274;
    *&v315 = v314;
    *(&v315 + 1) = *(v620 + (v298 & 0xF)) / v299;
    v531 = v315;
    *&v315 = v312;
    *(&v315 + 1) = v313;
    v529 = v315;
    *&v315 = v310;
    *(&v315 + 1) = v311 / v299;
    v528 = v315;
    *&v315 = v308;
    *(&v315 + 1) = v309;
    v527 = v315;
    *&v315 = v306 / v299;
    *(&v315 + 1) = v307;
    v526 = v315;
    *&v315 = v304;
    *(&v315 + 1) = v305 / v299;
    v525 = v315;
    *&v315 = v302;
    *(&v315 + 1) = v303;
    v524 = v315;
    *&v316 = v300;
    *(&v316 + 1) = v301 / v299;
  }

  else
  {
    v619[0] = v296;
    v619[1] = v277;
    v619[2] = v280;
    v619[3] = v276;
    v619[4] = v279;
    v619[5] = v275;
    v619[6] = v278;
    v619[7] = v274;
    v618[0] = v296;
    v618[1] = v277;
    v618[2] = v280;
    v618[3] = v276;
    v618[4] = v279;
    v618[5] = v275;
    v618[6] = v278;
    v618[7] = v274;
    v617[0] = v296;
    v617[1] = v277;
    v617[2] = v280;
    v617[3] = v276;
    v617[4] = v279;
    v617[5] = v275;
    v617[6] = v278;
    v617[7] = v274;
    v616[0] = v296;
    v616[1] = v277;
    v616[2] = v280;
    v616[3] = v276;
    v616[4] = v279;
    v616[5] = v275;
    v616[6] = v278;
    v616[7] = v274;
    v615[0] = v296;
    v615[1] = v277;
    v615[2] = v280;
    v615[3] = v276;
    v615[4] = v279;
    v615[5] = v275;
    v615[6] = v278;
    v615[7] = v274;
    v614[0] = v296;
    v614[1] = v277;
    v614[2] = v280;
    v614[3] = v276;
    v614[4] = v279;
    v614[5] = v275;
    v614[6] = v278;
    v614[7] = v274;
    v613[0] = v296;
    v613[1] = v277;
    v613[2] = v280;
    v613[3] = v276;
    v613[4] = v279;
    v613[5] = v275;
    v613[6] = v278;
    v613[7] = v274;
    v612[0] = v296;
    v612[1] = v277;
    v612[2] = v280;
    v612[3] = v276;
    v612[4] = v279;
    v612[5] = v275;
    v612[6] = v278;
    v612[7] = v274;
    v611[0] = v296;
    v611[1] = v277;
    v611[2] = v280;
    v611[3] = v276;
    v611[4] = v279;
    v611[5] = v275;
    v611[6] = v278;
    v611[7] = v274;
    v610[0] = v296;
    v610[1] = v277;
    v610[2] = v280;
    v610[3] = v276;
    v610[4] = v279;
    v610[5] = v275;
    v610[6] = v278;
    v610[7] = v274;
    v609[0] = v296;
    v609[1] = v277;
    v609[2] = v280;
    v609[3] = v276;
    v609[4] = v279;
    v609[5] = v275;
    v609[6] = v278;
    v609[7] = v274;
    v608[0] = v296;
    v608[1] = v277;
    v608[2] = v280;
    v608[3] = v276;
    v608[4] = v279;
    v608[5] = v275;
    v608[6] = v278;
    v608[7] = v274;
    v607[0] = v296;
    v607[1] = v277;
    v607[2] = v280;
    v607[3] = v276;
    v607[4] = v279;
    v607[5] = v275;
    v607[6] = v278;
    v607[7] = v274;
    v606[0] = v296;
    v606[1] = v277;
    v606[2] = v280;
    v606[3] = v276;
    v606[4] = v279;
    v606[5] = v275;
    v606[6] = v278;
    v606[7] = v274;
    v605[0] = v296;
    v605[1] = v277;
    v605[2] = v280;
    v605[3] = v276;
    v605[4] = v279;
    v605[5] = v275;
    v605[6] = v278;
    v605[7] = v274;
    v604[0] = v296;
    v604[1] = v277;
    v604[2] = v280;
    v604[3] = v276;
    v604[4] = v279;
    v604[5] = v275;
    v604[6] = v278;
    v604[7] = v274;
    *&v317 = *(v605 + (v297 & 0xF));
    *&v318 = *(v607 + (v294 & 0xF));
    *(&v317 + 1) = *(v604 + (v298 & 0xF));
    v531 = v317;
    *(&v318 + 1) = *(v606 + (v295 & 0xF));
    v529 = v318;
    *&v317 = *(v609 + (v292 & 0xF));
    *(&v317 + 1) = *(v608 + (v293 & 0xF));
    v528 = v317;
    *&v317 = *(v611 + (v290 & 0xF));
    *(&v317 + 1) = *(v610 + (v291 & 0xF));
    v527 = v317;
    *&v317 = *(v613 + (v288 & 0xF));
    *(&v317 + 1) = *(v612 + (v289 & 0xF));
    v526 = v317;
    *&v317 = *(v615 + (v286 & 0xF));
    *(&v317 + 1) = *(v614 + (v287 & 0xF));
    v525 = v317;
    *&v317 = *(v617 + (v284 & 0xF));
    *(&v317 + 1) = *(v616 + (v285 & 0xF));
    v524 = v317;
    *&v316 = *(v619 + (v282 & 0xF));
    *(&v316 + 1) = *(v618 + (v283 & 0xF));
  }

  v523 = v316;
  if ([v557[20] hasZeroPoint])
  {
    v319 = &v486[*v131];
    v503 = vuzp1q_s32(v319[6], v319[7]);
    v504 = vuzp1q_s32(v319[4], v319[5]);
    v505 = vuzp1q_s32(v319[2], v319[3]);
    v506 = vuzp1q_s32(*v319, v319[1]);
    v320 = v543[2];
    v322 = *v320;
    v321 = v320[1];
    if (v321 != v322)
    {
      if (((v321 - v322) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v323 = &unk_239B0A000;
    v501 = 0u;
    v502 = xmmword_239B0A0D0;
    v499 = 0u;
    v500 = 0u;
  }

  else
  {
    v505 = 0u;
    v506 = 0u;
    v503 = 0u;
    v504 = 0u;
    v501 = 0u;
    v502 = 0u;
    v499 = 0u;
    v500 = 0u;
    v323 = &unk_239B0A000;
  }

  v324 = [v557[20] hasMinValue];
  v325 = 0uLL;
  if (v324)
  {
    makeStrideBytes();
    v326 = &v484[*v133];
    v327.i64[0] = 0x100000001;
    v327.i64[1] = 0x100000001;
    v328 = vceqq_s32(*v326, v327);
    v329.i64[0] = v328.i32[0];
    v329.i64[1] = v328.i32[1];
    v330 = v329;
    v331 = vceqq_s32(v326[1], v327);
    v329.i64[0] = v331.i32[0];
    v329.i64[1] = v331.i32[1];
    v332 = v329;
    v333 = vceqq_s32(v326[2], v327);
    v329.i64[0] = v333.i32[0];
    v329.i64[1] = v333.i32[1];
    v334 = v329;
    v335 = vceqq_s32(v326[3], v327);
    v329.i64[0] = v335.i32[0];
    v329.i64[1] = v335.i32[1];
    v336 = v329;
    v329.i64[0] = v328.i32[2];
    v329.i64[1] = v328.i32[3];
    v337 = v329;
    v329.i64[0] = v331.i32[2];
    v329.i64[1] = v331.i32[3];
    v338 = v329;
    v329.i64[0] = v333.i32[2];
    v329.i64[1] = v333.i32[3];
    v339 = v329;
    v329.i64[0] = v335.i32[2];
    v329.i64[1] = v335.i32[3];
    v340 = vbicq_s8(v743, v329);
    v341 = vbicq_s8(v741, v339);
    v342 = vbicq_s8(v739, v338);
    v343 = vbicq_s8(v737, v337);
    v344 = vbicq_s8(v742, v336);
    v345 = vbicq_s8(v740, v334);
    v346 = vbicq_s8(v738, v332);
    v347 = vbicq_s8(v736, v330);
    v348 = *&v484[*v155];
    v349 = *&v484[*MEMORY[0x277CD73C8]];
    if ((v349 & 0xFFF8) != 0)
    {
      v350 = v349 >> 3;
      v603[0] = v347;
      v603[1] = v343;
      v603[2] = v346;
      v603[3] = v342;
      v603[4] = v345;
      v603[5] = v341;
      v603[6] = v344;
      v603[7] = v340;
      v351 = *(v603 + (v348.i8[0] & 0xF));
      v602[0] = v347;
      v602[1] = v343;
      v602[2] = v346;
      v602[3] = v342;
      v602[4] = v345;
      v602[5] = v341;
      v602[6] = v344;
      v602[7] = v340;
      v352 = *(v602 + (v348.i8[1] & 0xF));
      v601[0] = v347;
      v601[1] = v343;
      v601[2] = v346;
      v601[3] = v342;
      v601[4] = v345;
      v601[5] = v341;
      v601[6] = v344;
      v601[7] = v340;
      v353 = *(v601 + (v348.i8[2] & 0xF)) / v350;
      v600[0] = v347;
      v600[1] = v343;
      v600[2] = v346;
      v600[3] = v342;
      v600[4] = v345;
      v600[5] = v341;
      v600[6] = v344;
      v600[7] = v340;
      v354 = *(v600 + (v348.i8[3] & 0xF));
      v599[0] = v347;
      v599[1] = v343;
      v599[2] = v346;
      v599[3] = v342;
      v599[4] = v345;
      v599[5] = v341;
      v599[6] = v344;
      v599[7] = v340;
      v355 = *(v599 + (v348.i8[4] & 0xF)) / v350;
      v598[0] = v347;
      v598[1] = v343;
      v598[2] = v346;
      v598[3] = v342;
      v598[4] = v345;
      v598[5] = v341;
      v598[6] = v344;
      v598[7] = v340;
      v356 = *(v598 + (v348.i8[5] & 0xF));
      v597[0] = v347;
      v597[1] = v343;
      v597[2] = v346;
      v597[3] = v342;
      v597[4] = v345;
      v597[5] = v341;
      v597[6] = v344;
      v597[7] = v340;
      v357 = *(v597 + (v348.i8[6] & 0xF)) / v350;
      v596[0] = v347;
      v596[1] = v343;
      v596[2] = v346;
      v596[3] = v342;
      v596[4] = v345;
      v596[5] = v341;
      v596[6] = v344;
      v596[7] = v340;
      v358 = *(v596 + (v348.i8[7] & 0xF));
      v595[0] = v347;
      v595[1] = v343;
      v595[2] = v346;
      v595[3] = v342;
      v595[4] = v345;
      v595[5] = v341;
      v595[6] = v344;
      v595[7] = v340;
      v359 = *(v595 + (v348.i8[8] & 0xF)) / v350;
      v594[0] = v347;
      v594[1] = v343;
      v594[2] = v346;
      v594[3] = v342;
      v594[4] = v345;
      v594[5] = v341;
      v594[6] = v344;
      v594[7] = v340;
      v360 = *(v594 + (v348.i8[9] & 0xF));
      v593[0] = v347;
      v593[1] = v343;
      v593[2] = v346;
      v593[3] = v342;
      v593[4] = v345;
      v593[5] = v341;
      v593[6] = v344;
      v593[7] = v340;
      v361 = *(v593 + (v348.i8[10] & 0xF)) / v350;
      v592[0] = v347;
      v592[1] = v343;
      v592[2] = v346;
      v592[3] = v342;
      v592[4] = v345;
      v592[5] = v341;
      v592[6] = v344;
      v592[7] = v340;
      v362 = *(v592 + (v348.i8[11] & 0xF));
      v591[0] = v347;
      v591[1] = v343;
      v591[2] = v346;
      v591[3] = v342;
      v591[4] = v345;
      v591[5] = v341;
      v591[6] = v344;
      v591[7] = v340;
      v363 = *(v591 + (v348.i8[12] & 0xF)) / v350;
      v590[0] = v347;
      v590[1] = v343;
      v590[2] = v346;
      v590[3] = v342;
      v590[4] = v345;
      v590[5] = v341;
      v590[6] = v344;
      v590[7] = v340;
      v364 = *(v590 + (v348.i8[13] & 0xF));
      v589[0] = v347;
      v589[1] = v343;
      v589[2] = v346;
      v589[3] = v342;
      v589[4] = v345;
      v589[5] = v341;
      v589[6] = v344;
      v589[7] = v340;
      v365 = *(v589 + (v348.i8[14] & 0xF)) / v350;
      v588[0] = v347;
      v588[1] = v343;
      v588[2] = v346;
      v588[3] = v342;
      v588[4] = v345;
      v588[5] = v341;
      v588[6] = v344;
      v588[7] = v340;
      v366.i64[0] = v365;
      v366.i64[1] = *(v588 + (v348.i8[15] & 0xF)) / v350;
      v367.i64[0] = v363;
      v367.i64[1] = v364 / v350;
      v348.i64[0] = v361;
      v348.i64[1] = v362 / v350;
      v369.i64[0] = v359;
      v369.i64[1] = v360 / v350;
      v370.i64[0] = v357;
      v370.i64[1] = v358 / v350;
      v371.i64[0] = v355;
      v371.i64[1] = v356 / v350;
      v372.i64[0] = v353;
      v372.i64[1] = v354 / v350;
      v373.i64[0] = v351 / v350;
      v373.i64[1] = v352 / v350;
    }

    else
    {
      v374 = v348.i8[0] & 0xF;
      v587[0] = v347;
      v587[1] = v343;
      v587[2] = v346;
      v587[3] = v342;
      v587[4] = v345;
      v587[5] = v341;
      v587[6] = v344;
      v587[7] = v340;
      v375 = v348.i8[1] & 0xF;
      v586[0] = v347;
      v586[1] = v343;
      v586[2] = v346;
      v586[3] = v342;
      v586[4] = v345;
      v586[5] = v341;
      v586[6] = v344;
      v586[7] = v340;
      v376 = v348.i8[2] & 0xF;
      v585[0] = v347;
      v585[1] = v343;
      v585[2] = v346;
      v585[3] = v342;
      v585[4] = v345;
      v585[5] = v341;
      v585[6] = v344;
      v585[7] = v340;
      v377 = v584 + (v348.i8[3] & 0xF);
      v584[0] = v347;
      v584[1] = v343;
      v584[2] = v346;
      v584[3] = v342;
      v584[4] = v345;
      v584[5] = v341;
      v584[6] = v344;
      v584[7] = v340;
      v378 = v348.i8[4] & 0xF;
      v583[0] = v347;
      v583[1] = v343;
      v583[2] = v346;
      v583[3] = v342;
      v583[4] = v345;
      v583[5] = v341;
      v583[6] = v344;
      v583[7] = v340;
      v379 = v582 + (v348.i8[5] & 0xF);
      v582[0] = v347;
      v582[1] = v343;
      v582[2] = v346;
      v582[3] = v342;
      v582[4] = v345;
      v582[5] = v341;
      v582[6] = v344;
      v582[7] = v340;
      v380 = v348.i8[6] & 0xF;
      v581[0] = v347;
      v581[1] = v343;
      v581[2] = v346;
      v581[3] = v342;
      v581[4] = v345;
      v581[5] = v341;
      v581[6] = v344;
      v581[7] = v340;
      v381 = v580 + (v348.i8[7] & 0xF);
      v580[0] = v347;
      v580[1] = v343;
      v580[2] = v346;
      v580[3] = v342;
      v580[4] = v345;
      v580[5] = v341;
      v580[6] = v344;
      v580[7] = v340;
      v382 = v348.i8[8] & 0xF;
      v579[0] = v347;
      v579[1] = v343;
      v579[2] = v346;
      v579[3] = v342;
      v579[4] = v345;
      v579[5] = v341;
      v579[6] = v344;
      v579[7] = v340;
      v383 = v348.i8[9] & 0xF;
      v578[0] = v347;
      v578[1] = v343;
      v578[2] = v346;
      v578[3] = v342;
      v578[4] = v345;
      v578[5] = v341;
      v578[6] = v344;
      v578[7] = v340;
      v577[0] = v347;
      v577[1] = v343;
      v577[2] = v346;
      v577[3] = v342;
      v577[4] = v345;
      v577[5] = v341;
      v577[6] = v344;
      v577[7] = v340;
      v576[0] = v347;
      v576[1] = v343;
      v576[2] = v346;
      v576[3] = v342;
      v576[4] = v345;
      v576[5] = v341;
      v576[6] = v344;
      v576[7] = v340;
      v575[0] = v347;
      v575[1] = v343;
      v575[2] = v346;
      v575[3] = v342;
      v575[4] = v345;
      v575[5] = v341;
      v575[6] = v344;
      v575[7] = v340;
      v574[0] = v347;
      v574[1] = v343;
      v574[2] = v346;
      v574[3] = v342;
      v574[4] = v345;
      v574[5] = v341;
      v574[6] = v344;
      v574[7] = v340;
      v573[0] = v347;
      v573[1] = v343;
      v573[2] = v346;
      v573[3] = v342;
      v573[4] = v345;
      v573[5] = v341;
      v573[6] = v344;
      v573[7] = v340;
      v572[0] = v347;
      v572[1] = v343;
      v572[2] = v346;
      v572[3] = v342;
      v572[4] = v345;
      v572[5] = v341;
      v572[6] = v344;
      v572[7] = v340;
      v366.i64[0] = *(v573 + (v348.i8[14] & 0xF));
      v367.i64[0] = *(v575 + (v348.i8[12] & 0xF));
      v366.i64[1] = *(v572 + (v348.i8[15] & 0xF));
      v367.i64[1] = *(v574 + (v348.i8[13] & 0xF));
      v348.i64[0] = *(v577 + (v348.i8[10] & 0xF));
      v348.i64[1] = *(v576 + (v348.i8[11] & 0xF));
      v369.i64[0] = *(v579 + v382);
      v369.i64[1] = *(v578 + v383);
      v370.i64[0] = *(v581 + v380);
      v370.i64[1] = *v381;
      v371.i64[0] = *(v583 + v378);
      v371.i64[1] = *v379;
      v372.i64[0] = *(v585 + v376);
      v372.i64[1] = *v377;
      v373.i64[0] = *(v587 + v374);
      v373.i64[1] = *(v586 + v375);
    }

    v497 = vuzp1q_s32(v371, v370);
    v498 = vuzp1q_s32(v373, v372);
    v495 = vuzp1q_s32(v367, v366);
    v496 = vuzp1q_s32(v369, v348);
    v384 = v195[2];
    v386 = *v384;
    v385 = v384[1];
    if (v385 != v386)
    {
      if (((v385 - v386) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v494 = v323[13];
    v325 = 0uLL;
  }

  else
  {
    v497 = 0uLL;
    v498 = 0uLL;
    v495 = 0uLL;
    v496 = 0uLL;
    v494 = 0uLL;
  }

  v492 = v325;
  v493 = v325;
  v491 = v325;
  v387 = v554[2];
  v389 = *v387;
  v388 = v387[1];
  v544 = v323[13];
  if (v388 != v389)
  {
    if (((v388 - v389) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v555 = v323[13];
  v390 = v542[2];
  v392 = *v390;
  v391 = v390[1];
  if (v391 != v392)
  {
    if (((v391 - v392) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v393 = v521[2];
  v395 = *v393;
  v394 = v393[1];
  if (v394 != v395)
  {
    if (((v394 - v395) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v396 = vuzp1q_s32(v482, v515);
  v397 = vuzp1q_s32(v480, v481);
  v398 = vuzp1q_s32(v477, v479);
  v399 = v398;
  v399.i32[0] = 0;
  v400 = v397;
  v400.i32[0] = 0;
  v401 = v396;
  v401.i32[0] = 0;
  v402 = vuzp1q_s32(v517, v519);
  v403 = v402;
  v403.i32[0] = 0;
  v404 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v473, 1uLL), 0), v399, v398);
  v405 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v468, 1uLL), 0), v400, v397);
  v406 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v464, 1uLL), 0), v401, v396);
  v407 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v462, 1uLL), 0), v403, v402);
  v408 = v404;
  v408.i32[1] = 0;
  v409 = v405;
  v409.i32[1] = 0;
  v410 = v406;
  v410.i32[1] = 0;
  v411 = v407;
  v411.i32[1] = 0;
  v412 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v474, 1uLL), 0), v408, v404);
  v413 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v470, 1uLL), 0), v409, v405);
  v414 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v466, 1uLL), 0), v410, v406);
  v415 = v412;
  v415.i32[2] = 0;
  v416 = v413;
  v416.i32[2] = 0;
  v417 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v463, 1uLL), 0), v411, v407);
  v418 = v414;
  v418.i32[2] = 0;
  v419 = v417;
  v419.i32[2] = 0;
  v420 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v476, 1uLL), 0), v415, v412);
  v421 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v472, 1uLL), 0), v416, v413);
  v422 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v469, 1uLL), 0), v418, v414);
  v423 = v420;
  v423.i32[3] = 0;
  v424 = v421;
  v424.i32[3] = 0;
  v425 = v422;
  v425.i32[3] = 0;
  v426 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v465, 1uLL), 0), v419, v417);
  v427 = v426;
  v428 = -16;
  v429 = v725;
  v427.i32[3] = 0;
  v520 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v475, 1uLL), 0), v424, v421);
  v522 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v478, 1uLL), 0), v423, v420);
  v516 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v467, 1uLL), 0), v427, v426);
  v518 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v471, 1uLL), 0), v425, v422);
  do
  {
    v433 = v428 + 16;
    v434 = (v428 + 16) & 0xF;
    v571[0] = v532;
    v571[1] = v533;
    v571[2] = v534;
    v571[3] = v535;
    v571[4] = v537;
    v571[5] = v538;
    v571[6] = v540;
    v571[7] = v541;
    v429[7] = *(v571 + v434);
    v570[0] = v522;
    v570[1] = v520;
    v570[2] = v518;
    v570[3] = v516;
    v429[71] = *(v570 + v434);
    v569[0] = v523;
    v569[1] = v524;
    v569[2] = v525;
    v569[3] = v526;
    v569[4] = v527;
    v569[5] = v528;
    v569[6] = v529;
    v569[7] = v531;
    v429[23] = *(v569 + v434);
    if ([v557[20] hasZeroPoint])
    {
      v568[0] = v506;
      v568[1] = v505;
      v568[2] = v504;
      v568[3] = v503;
      v435 = 4 * (v433 & 0xF);
      v429[39] = *(v568 + v435);
      v567[0] = v555;
      memset(&v567[1], 0, 48);
      v436 = *(v567 + v435);
      v566[0] = v502;
      v566[1] = v501;
      v566[2] = v500;
      v566[3] = v499;
      v429[135] = v436 / *(v566 + v435);
    }

    if ([v557[20] hasMinValue])
    {
      v564[0] = v498;
      v564[1] = v497;
      v564[2] = v496;
      v564[3] = v495;
      v430 = 4 * (v433 & 0xF);
      v429[55] = *(v564 + v430);
      v563[0] = v555;
      memset(&v563[1], 0, 48);
      v431 = *(v563 + v430);
      v562[0] = v494;
      v562[1] = v493;
      v562[2] = v492;
      v562[3] = v491;
      v429[151] = v431 / *(v562 + v430);
    }

    else
    {
      v565[0] = v555;
      memset(&v565[1], 0, 48);
      v431 = *(v565 + (v433 & 0xF));
    }

    v561[0] = v507;
    v561[1] = v508;
    v561[2] = v509;
    v561[3] = v510;
    v561[4] = v511;
    v561[5] = v512;
    v561[6] = v513;
    v561[7] = v514;
    v429[87] = *(v561 + (v433 & 0xF));
    v560[0] = v549;
    v560[1] = *__p;
    v560[2] = v545;
    v560[3] = v547;
    v429[167] = *(v560 + (v433 & 0xF));
    v429[103] = v431;
    v559[0] = v544;
    memset(&v559[1], 0, 48);
    v429[119] = v431 / *(v559 + (v433 & 0xF));
    v558[0] = v544;
    memset(&v558[1], 0, 48);
    v429[183] = *(v558 + (v433 & 0xF));
    ++v429;
  }

  while (!__CFADD__(v428++, 1));
  v437 = v461 >> 3;
  LODWORD(v438) = (v728 + 7) >> 3;
  v729 = v438;
  v439 = (v728 + 7) & 0xFFFFFFF8;
  if (v728 <= v439 >> 1)
  {
    LODWORD(v438) = (v728 + 3) >> 2;
    if (v728 <= 2 * v438)
    {
      LODWORD(v438) = (v728 + 1) >> 1;
      if (v438 >= v728)
      {
        v437 = v461 & 0xFFFFFFFFFFFFFFF8;
        v440 = 1;
        LODWORD(v438) = v728;
        v439 = v728;
      }

      else
      {
        v437 *= 4;
        v439 = (v728 + 1) & 0xFFFFFFFE;
        v440 = 2;
      }
    }

    else
    {
      v437 *= 2;
      v439 = 4 * ((v728 + 3) >> 2);
      v440 = 4;
    }

    v441 = v483;
    v442 = v485;
    v729 = v438;
    v443 = v727;
    if (v437 < 2)
    {
      goto LABEL_498;
    }

LABEL_494:
    v444 = v437 >> 1;
    if (v437 >> 1 >= v443)
    {
      do
      {
        v437 = v444;
        v440 *= 2;
        if (v444 < 2)
        {
          break;
        }

        v444 >>= 1;
      }

      while (v437 >> 1 >= v443);
      v438 = (v728 + v440 - 1) / v440;
      v729 = v438;
      v439 = v438 * v440;
    }

    goto LABEL_498;
  }

  v440 = 8;
  v441 = v483;
  v442 = v485;
  v443 = v727;
  if (v437 >= 2)
  {
    goto LABEL_494;
  }

LABEL_498:
  v445 = 1;
  if (v439 >= 0x400)
  {
    if (v438 >= 2)
    {
      do
      {
        v446 = v438 + 1;
        v438 = (v438 + 1) >> 1;
        v445 *= 2;
      }

      while (v446 >= 4 && v440 * v438 > 0x3FF);
    }

    v729 = v438;
  }

  [v441 setBuffer:objc_msgSend(v442 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v442, 0, 16, 0, 0) + *(*(v490 + 8) + 64), 0}];
  [v441 setBuffer:objc_msgSend(v489 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v489, 0, 16, 0, 0) + *(*(v490 + 8) + 144), 1}];
  [v441 setBuffer:objc_msgSend(v488 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v488, 0, 16, 0, 0) + *(v490 + 192), 2}];
  [v441 setBuffer:objc_msgSend(v487 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v487, 0, 16, 0, 0) + *(*(v490 + 8) + 224), 3}];
  if ([v557[20] hasZeroPoint])
  {
    v447 = 4;
    [v441 setBuffer:objc_msgSend(v486 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v486, 0, 16, 0, 0) + *(*(v490 + 8) + 304), 4}];
  }

  else
  {
    v447 = 3;
  }

  if ([v557[20] hasMinValue])
  {
    [v441 setBuffer:objc_msgSend(v484 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v484, 0, 16, 0, 0) + *(*(v490 + 8) + 80 * v447 + 64), 5}];
  }

  objc_msgSend_setBytes_length_atIndex_(v441);
  v736.i64[0] = v445;
  v736.i64[1] = (v443 + v437 - 1) / v437;
  v737.i64[0] = 1;
  v724[0] = v440;
  v724[1] = v437;
  v724[2] = 1;
  [v441 dispatchThreadgroups:&v736 threadsPerThreadgroup:v724];
  return 0;
}

void sub_239A9A9C4(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
    if (!STACK[0x540])
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!STACK[0x540])
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x540]);
  if (!v3)
  {
LABEL_4:
    if (!v1)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(v1);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(v3);
  if (!v1)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::EncodeNDArrayConvolutionGradientWithWeights(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(*a1 + 72))(a1, a2, a5))
  {
    v214 = a4;
    v194 = [*(a5 + 16) count];
    v11 = *(a2 + 224);
    v12 = *(a2 + 228);
    v244 = *(a2 + 144);
    v242 = *(a2 + 152);
    v217 = *(a2 + 200);
    v213 = *(a2 + 208);
    v13 = *(a2 + 160);
    v241 = *(a2 + 168);
    v238 = *(a2 + 192);
    v215 = *(a2 + 232);
    v211 = *(a2 + 240);
    v216 = *(a2 + 176);
    v236 = a2;
    v212 = *(a2 + 184);
    v14 = [*(a5 + 232) inputTensorAtIndex:0];
    v223 = [*(a5 + 232) inputTensorAtIndex:1];
    v15 = [*(a5 + 232) inputTensorAtIndex:2];
    v227 = v14;
    v229 = [*(a5 + 232) outputTensorAtIndex:0];
    if (*v14 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v15 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v229 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = v14[2];
    v20 = *v18;
    v19 = v18[1];
    v225 = v15;
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v22 = *(v229 + 16);
    v24 = *v22;
    v23 = v22[1];
    if (v23 != v24)
    {
      if (((v23 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v25 = *(v15 + 16);
    v27 = *v25;
    v26 = v25[1];
    v235 = a5;
    if (v26 != v27)
    {
      if (((v26 - v27) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v16.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v11];
    v28 = vmovl_u8(v16).u64[0];
    v17.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v12];
    v29 = vmovl_u8(v17).u64[0];
    v30 = (8 * v28);
    v31 = *v30;
    v32 = *(8 * WORD1(v28));
    v220 = *(8 * WORD2(v28));
    v237 = *v30;
    v221 = *(8 * HIWORD(v28));
    v33 = *(8 * v29);
    v231 = *(8 * WORD1(v29));
    v239 = *(8 * WORD2(v29));
    v233 = *(8 * HIWORD(v29));
    if (v32 != v13 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v32 != v241 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v31 != v237 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v32 != v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v32 / v238 != v231 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v239 != v242 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v233 != v244 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v33 != v241 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v245 = v13 / v238;
    if (v231 != v13 / v238 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v227 + 2) != *(v15 + 8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v193 = a3;
    v34 = [*(a5 + 232) graph];
    v35 = *(v34 + 8);
    v36 = *v35;
    v37 = v35[1];
    if (*v35 == v37)
    {
      goto LABEL_504;
    }

    v38 = -1;
    do
    {
      v39 = *v36;
      if (v39 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v34) + 32))
      {
        v38 = *(*v36 + 76);
      }

      MPSKernelDAG::GetCoreOpInputAtIndex(v34);
      ++v36;
    }

    while (v36 != v37);
    if (v38 == -1)
    {
LABEL_504:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v38 = 0;
    }

    v40 = [*(a5 + 16) objectAtIndexedSubscript:v38];
    v41 = *(*(a5 + 8) + 80 * v38 + 64);
    v243 = *(a5 + 112);
    v183 = *(a5 + 96);
    v42 = *(a5 + 208);
    v182 = *(a5 + 192);
    v43 = MEMORY[0x277CD7410];
    v44 = v40;
    if (*(v40 + *MEMORY[0x277CD7410]) != v32)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    if (*&v44[*v43 + 4] != v221 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v44[*v43 + 8] != v220 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v44[*v43 + 12] != v31 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v243[*v43] != v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v243[*v43 + 4] != v221 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v243[*v43 + 8] != v220 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v243[*v43 + 12] != v237 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v42[*v43] != v33 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v42[*v43 + 4] != v231 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v42[*v43 + 8] != v233 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v42[*v43 + 12] != v239 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v45 = *(v227 + 2);
    if (v45 > 285212703)
    {
      if (v45 <= 536870915)
      {
        if (v45 > 301989895)
        {
          if (v45 == 301989896)
          {
            v46 = 512;
            v47 = *(v223 + 8);
            if (v47 > 285212703)
            {
              goto LABEL_93;
            }

            goto LABEL_116;
          }

          if (v45 == 335544328)
          {
            v46 = 544;
            v47 = *(v223 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          }
        }

        else
        {
          if (v45 == 285212704)
          {
            v46 = 416;
            v47 = *(v223 + 8);
            if (v47 > 285212703)
            {
              goto LABEL_93;
            }

            goto LABEL_116;
          }

          if (v45 == 285212736)
          {
            v46 = 448;
            v47 = *(v223 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          }
        }
      }

      else if (v45 <= 536870927)
      {
        if (v45 == 536870916)
        {
          v46 = 0;
          v47 = *(v223 + 8);
          if (v47 > 285212703)
          {
            goto LABEL_93;
          }

          goto LABEL_116;
        }

        if (v45 == 536870920)
        {
          v46 = 32;
          v47 = *(v223 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }
      }

      else
      {
        switch(v45)
        {
          case 536870928:
            v46 = 64;
            v47 = *(v223 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          case 536870944:
            v46 = 96;
            v47 = *(v223 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          case 536870976:
            v46 = 128;
            v47 = *(v223 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
        }
      }
    }

    else if (v45 <= 31)
    {
      if (v45 > 7)
      {
        if (v45 == 8)
        {
          v46 = 192;
          v47 = *(v223 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }

        if (v45 == 16)
        {
          v46 = 224;
          v47 = *(v223 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }
      }

      else
      {
        if (v45 == -1879048176)
        {
          v46 = 384;
          v47 = *(v223 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }

        if (v45 == 4)
        {
          v46 = 160;
          v47 = *(v223 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }
      }
    }

    else if (v45 <= 268435463)
    {
      if (v45 == 32)
      {
        v46 = 256;
        v47 = *(v223 + 8);
        if (v47 <= 285212703)
        {
          goto LABEL_116;
        }

        goto LABEL_93;
      }

      if (v45 == 64)
      {
        v46 = 288;
        v47 = *(v223 + 8);
        if (v47 <= 285212703)
        {
          goto LABEL_116;
        }

        goto LABEL_93;
      }
    }

    else
    {
      switch(v45)
      {
        case 268435464:
          v46 = 480;
          v47 = *(v223 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        case 268435472:
          v46 = 320;
          v47 = *(v223 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        case 268435488:
          v46 = 352;
          v47 = *(v223 + 8);
          if (v47 > 285212703)
          {
            goto LABEL_93;
          }

LABEL_116:
          if (v47 <= 31)
          {
            if (v47 > 7)
            {
              if (v47 == 8)
              {
                v48 = 6144;
                v49 = *(v225 + 8);
                if (v49 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }

              if (v47 == 16)
              {
                v48 = 7168;
                v49 = *(v225 + 8);
                if (v49 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }
            }

            else
            {
              if (v47 == -1879048176)
              {
                v48 = 12288;
                v49 = *(v225 + 8);
                if (v49 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }

              if (v47 == 4)
              {
                v48 = 5120;
                v49 = *(v225 + 8);
                if (v49 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }
            }
          }

          else if (v47 <= 268435463)
          {
            if (v47 == 32)
            {
              v48 = 0x2000;
              v49 = *(v225 + 8);
              if (v49 <= 285212703)
              {
                goto LABEL_154;
              }

              goto LABEL_137;
            }

            if (v47 == 64)
            {
              v48 = 9216;
              v49 = *(v225 + 8);
              if (v49 <= 285212703)
              {
                goto LABEL_154;
              }

              goto LABEL_137;
            }
          }

          else
          {
            switch(v47)
            {
              case 268435464:
                v48 = 15360;
                v49 = *(v225 + 8);
                if (v49 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              case 268435472:
                v48 = 10240;
                v49 = *(v225 + 8);
                if (v49 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              case 268435488:
                v48 = 11264;
                v49 = *(v225 + 8);
                if (v49 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
            }
          }

LABEL_210:
          v48 = 18432;
          v49 = *(v225 + 8);
          if (v49 <= 285212703)
          {
            goto LABEL_154;
          }

LABEL_137:
          if (v49 <= 536870915)
          {
            if (v49 > 301989895)
            {
              if (v49 == 301989896)
              {
                v50 = 0x80000;
                goto LABEL_213;
              }

              if (v49 == 335544328)
              {
                v50 = 557056;
                goto LABEL_213;
              }
            }

            else
            {
              if (v49 == 285212704)
              {
                v50 = 425984;
                goto LABEL_213;
              }

              if (v49 == 285212736)
              {
                v50 = 458752;
                goto LABEL_213;
              }
            }
          }

          else if (v49 <= 536870927)
          {
            if (v49 == 536870916)
            {
              v191 = 0;
              goto LABEL_214;
            }

            if (v49 == 536870920)
            {
              v50 = 0x8000;
              goto LABEL_213;
            }
          }

          else
          {
            switch(v49)
            {
              case 536870928:
                v50 = 0x10000;
                goto LABEL_213;
              case 536870944:
                v50 = 98304;
                goto LABEL_213;
              case 536870976:
                v50 = 0x20000;
LABEL_213:
                v191 = v50;
LABEL_214:
                v51 = *(v229 + 8);
                if (v51 > 285212703)
                {
                  if (v51 <= 536870915)
                  {
                    if (v51 > 301989895)
                    {
                      if (v51 == 301989896)
                      {
                        v52 = 16;
                        goto LABEL_258;
                      }

                      if (v51 == 335544328)
                      {
                        v52 = 17;
                        goto LABEL_258;
                      }
                    }

                    else
                    {
                      if (v51 == 285212704)
                      {
                        v52 = 13;
                        goto LABEL_258;
                      }

                      if (v51 == 285212736)
                      {
                        v52 = 14;
                        goto LABEL_258;
                      }
                    }
                  }

                  else if (v51 <= 536870927)
                  {
                    if (v51 == 536870916)
                    {
                      v189 = 0;
                      goto LABEL_259;
                    }

                    if (v51 == 536870920)
                    {
                      v52 = 1;
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    switch(v51)
                    {
                      case 536870928:
                        v52 = 2;
                        goto LABEL_258;
                      case 536870944:
                        v52 = 3;
                        goto LABEL_258;
                      case 536870976:
                        v52 = 4;
                        goto LABEL_258;
                    }
                  }
                }

                else if (v51 <= 31)
                {
                  if (v51 > 7)
                  {
                    if (v51 == 8)
                    {
                      v52 = 6;
                      goto LABEL_258;
                    }

                    if (v51 == 16)
                    {
                      v52 = 7;
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    if (v51 == -1879048176)
                    {
                      v52 = 12;
                      goto LABEL_258;
                    }

                    if (v51 == 4)
                    {
                      v52 = 5;
                      goto LABEL_258;
                    }
                  }
                }

                else if (v51 <= 268435463)
                {
                  if (v51 == 32)
                  {
                    v52 = 8;
                    goto LABEL_258;
                  }

                  if (v51 == 64)
                  {
                    v52 = 9;
                    goto LABEL_258;
                  }
                }

                else
                {
                  switch(v51)
                  {
                    case 268435464:
                      v52 = 15;
                      goto LABEL_258;
                    case 268435472:
                      v52 = 10;
                      goto LABEL_258;
                    case 268435488:
                      v52 = 11;
LABEL_258:
                      v189 = v52;
LABEL_259:
                      v299 = __PAIR64__(v221, v237);
                      v300 = __PAIR64__(v221, v220);
                      v301 = __PAIR64__(v245, v220);
                      v302 = __PAIR64__(v244, v241);
                      v303 = v242;
                      v222 = v44;
                      v218 = v42;
                      v187 = v46;
                      if (LOBYTE(v236[3]._options) == 1 && (isa = v236[3].super.isa) != 0 || (isa = a1[3]) != 0)
                      {
                        v54 = *isa;
                        LOWORD(v55) = isa[1];
                        v219 = isa[2];
                        v56 = isa[3];
                        v57 = isa[4];
                        v209 = isa[5];
                        v204 = isa[6];
                        v58 = isa[7];
                        v59 = isa[8];
                        v208 = isa[9];
                        v207 = isa[10];
                        LOWORD(v240) = isa[11];
                        v203 = isa[13];
                        v202 = isa[14];
                        v60 = isa[15];
LABEL_263:
                        v185 = v60;
                        goto LABEL_264;
                      }

                      v71 = a1[5];
                      if (v71)
                      {
                        v72 = a1[4];
                        v73 = 66;
                        v74 = a1[5];
                        do
                        {
                          if (v299 == *(v72 + v73 - 66) && v300 == *(v72 + v73 - 58) && v301 == *(v72 + v73 - 50) && v302 == *(v72 + v73 - 42) && v303 == *(v72 + v73 - 34))
                          {
                            MPSKernel_LogInfo(v236, 4uLL, "Found exact match in table\n", v245);
                            v164 = (a1[4] + v73);
                            v54 = *(v164 - 15);
                            LOWORD(v55) = *(v164 - 14);
                            v219 = *(v164 - 13);
                            v56 = *(v164 - 12);
                            v57 = *(v164 - 11);
                            v209 = *(v164 - 10);
                            v204 = *(v164 - 9);
                            v58 = *(v164 - 8);
                            v59 = *(v164 - 7);
                            v208 = *(v164 - 6);
                            v207 = *(v164 - 5);
                            LOWORD(v240) = *(v164 - 4);
                            v203 = *(v164 - 2);
                            v202 = *(v164 - 1);
                            v60 = *v164;
                            goto LABEL_263;
                          }

                          v73 += 68;
                          --v74;
                        }

                        while (v74);
                        v79 = v72 + 20;
                        v80 = 64;
                        while (*(v79 + v80 - 64) != v245 || *(v79 + v80 - 60) != v241 || *(v79 + v80 - 56) != v244 || *(v79 + v80 - 52) != v242)
                        {
                          v80 += 68;
                          if (!--v71)
                          {
                            goto LABEL_349;
                          }
                        }

                        MPSKernel_LogInfo(v236, 4uLL, "Found match in table with tile parameters\n");
                        v81 = (a1[4] + v80);
                        v54 = *(v81 - 14);
                        LOWORD(v55) = *(v81 - 13);
                        v82 = *(v81 - 12);
                        v57 = *(v81 - 10);
                        v209 = *(v81 - 9);
                        v204 = *(v81 - 8);
                        v58 = *(v81 - 7);
                        v59 = *(v81 - 6);
                        v208 = *(v81 - 5);
                        v207 = *(v81 - 4);
                        v203 = *(v81 - 1);
                        v202 = *v81;
                        v83 = v237 >= (1 << v82);
                        if (v237 < (1 << v82))
                        {
                          v82 = 3;
                        }

                        v219 = v82;
                        if (v83)
                        {
                          v56 = *(v81 - 11);
                        }

                        else
                        {
                          v56 = 0;
                        }

                        v84 = v242 * v244 * v241 * v245;
                        v85 = v221 * v220;
                        v86 = ((v84 >> 22) & 0xFFFFFFFFFFLL) == 0 && v85 >= 2;
                        LOWORD(v240) = 1;
                        if (v86)
                        {
                          v87 = 4 * v84;
                          v88 = v85 - 1;
                          v89 = 1;
                          do
                          {
                            v240 = v89;
                            if (v89 > 0x80)
                            {
                              break;
                            }

                            if (v87 >> 23)
                            {
                              break;
                            }

                            v89 *= 2;
                            v87 *= 2;
                          }

                          while ((v88 + 2 * v240) / (2 * v240) > 1);
                        }

                        v60 = v245 % (1 << v54) != 0;
                        goto LABEL_263;
                      }

LABEL_349:
                      MPSKernel_LogInfo(v236, 4uLL, "No match found. Falling to default\n");
                      v132 = (*(*a1 + 80))(a1);
                      if (v245 >= 0x20)
                      {
                        v133 = 1;
                      }

                      else
                      {
                        v133 = v242 * v244;
                      }

                      v134 = v133 * v245;
                      v135 = 63 - __clz(v134);
                      if (v135 >= 6)
                      {
                        v135 = 6;
                      }

                      if (v135 <= 2)
                      {
                        LODWORD(v135) = 2;
                      }

                      if (v134)
                      {
                        v54 = v135;
                      }

                      else
                      {
                        v54 = 2;
                      }

                      v55 = 63 - __clz(v241);
                      if (v55 >= 6)
                      {
                        v55 = 6;
                      }

                      if (v55 <= 2)
                      {
                        LOWORD(v55) = 2;
                      }

                      if (!v241)
                      {
                        LOWORD(v55) = 2;
                      }

                      LOBYTE(v59) = v132;
                      v136 = 1 << (v55 + v54 - 4);
                      for (i = (1 << (v132 - 2)); v136 < i; v136 = 2 * (v136 & 0x7FFF))
                      {
                        LOWORD(v55) = v55 + 1;
                      }

                      if (v54 >= 3)
                      {
                        v138 = 3;
                      }

                      else
                      {
                        v138 = v54;
                      }

                      v139 = v138 - 2;
                      v140 = i >> (v138 - 2);
                      v141 = 63 - __clz(v140);
                      if (v140)
                      {
                        v142 = v141;
                      }

                      else
                      {
                        v142 = 0;
                      }

                      v143 = v142;
                      if (v142 + 2 <= v55)
                      {
                        v148 = v139;
                        LOBYTE(v204) = v142;
                        LOBYTE(v58) = v139;
                      }

                      else
                      {
                        if (v55 >= 3u)
                        {
                          v144 = 3;
                        }

                        else
                        {
                          v144 = v55;
                        }

                        v145 = v144 - 2;
                        v143 = (v144 - 2);
                        v146 = i >> v145;
                        v147 = 63 - __clz(v146);
                        if (v146)
                        {
                          LOWORD(v148) = v147;
                        }

                        else
                        {
                          LOWORD(v148) = 0;
                        }

                        LOBYTE(v58) = v148;
                        v148 = v148;
                        v149 = v148 + 2;
                        if (v54 > v148 + 2)
                        {
                          v149 = v54;
                        }

                        v54 = v149;
                        LOBYTE(v204) = v145;
                      }

                      LOBYTE(v208) = v143 + 3 <= v55;
                      v150 = v148 + 3;
                      v151 = v132 == 6 || v150 > v54;
                      v152 = !v151;
                      LOBYTE(v209) = v152;
                      v153 = v148 + 4;
                      if (!v151)
                      {
                        v150 = v153;
                      }

                      LOBYTE(v207) = v150 <= v54;
                      LOWORD(v240) = 1;
                      v154 = (1 << v54);
                      v155 = v154 - 1;
                      v156 = (v241 + (1 << v55) - 1) / (1 << v55) * ((v154 - 1 + v245) / v154);
                      v157 = v221 * v220;
                      v158 = 4 * v242 * v244 * v241 * v245;
                      if (v156 <= 0x3F && v157 >= 2 && v158 >> 24 == 0)
                      {
                        if (v156 <= 0x1F && v157 - 3 <= 0xFFFFFFFFFFFFFFFBLL && v158 >> 23 == 0)
                        {
                          if (v156 <= 0xF && v157 - 5 <= 0xFFFFFFFFFFFFFFF7 && v158 >> 22 == 0)
                          {
                            LOWORD(v240) = 4;
                            if (v156 > 7)
                            {
                              goto LABEL_418;
                            }

                            if (v157 - 9 > 0xFFFFFFFFFFFFFFEFLL)
                            {
                              goto LABEL_418;
                            }

                            if (v158 >> 21)
                            {
                              goto LABEL_418;
                            }

                            LOWORD(v240) = 8;
                            if (v156 > 3)
                            {
                              goto LABEL_418;
                            }

                            if (v157 - 17 > 0xFFFFFFFFFFFFFFDFLL)
                            {
                              goto LABEL_418;
                            }

                            if (v158 >> 20)
                            {
                              goto LABEL_418;
                            }

                            LOWORD(v240) = 16;
                            if (v156 > 1)
                            {
                              goto LABEL_418;
                            }

                            if (v157 - 33 > 0xFFFFFFFFFFFFFFBFLL)
                            {
                              goto LABEL_418;
                            }

                            if (v158 >> 19)
                            {
                              goto LABEL_418;
                            }

                            LOWORD(v240) = 32;
                            if (v156 || v157 - 65 > 0xFFFFFFFFFFFFFF7FLL || v158 >> 18)
                            {
                              goto LABEL_418;
                            }

                            v167 = v157 - 129;
                            if (v158 >= 0x20000 || v167 >= 0xFFFFFFFFFFFFFF00)
                            {
                              v163 = 64;
                            }

                            else
                            {
                              v163 = 128;
                            }
                          }

                          else
                          {
                            v163 = 2;
                          }
                        }

                        else
                        {
                          v163 = 1;
                        }

                        LOWORD(v240) = v163;
                      }

LABEL_418:
                      v56 = 0;
                      LOBYTE(v57) = 0;
                      v185 = (v155 & v245) != 0;
                      v203 = 1;
                      v219 = 3;
                      v202 = 1;
LABEL_264:
                      v234 = (1 << v55);
                      if (v55 < 2u || (v61 = vcnt_s8(v234), v61.i16[0] = vaddlv_u8(v61), v61.u32[0] >= 2uLL))
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          MTLReportFailure();
                        }
                      }

                      v232 = (1 << v54);
                      if (v54 < 2 || (v62 = vcnt_s8(v232), v62.i16[0] = vaddlv_u8(v62), v62.u32[0] >= 2uLL))
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          MTLReportFailure();
                        }
                      }

                      v224 = (1 << v219);
                      if (v219 < 2 || (v63 = vcnt_s8(v224), v63.i16[0] = vaddlv_u8(v63), v63.u32[0] >= 2uLL))
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          MTLReportFailure();
                        }
                      }

                      v201 = 1 << v57;
                      if (*&v234 % (4 * v201 * (1 << v204) * (1 << v208)) && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v200 = 1 << v209;
                      if (*&v232 % (4 * v200 * (1 << v58) * (1 << v207)) && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v64 = 1 << v56;
                      v65 = *&v224 / v64;
                      v199 = v64;
                      if (*&v224 % v64 && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      if ((v65 & (v65 - 1)) != 0 && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v198 = 1 << v59;
                      if (v198 != 4 * (1 << v204) * (1 << v58) && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v66 = [*(v235 + 232) finalOp];
                      v67 = (*(*v66 + 16))(v66);
                      v68 = 0;
                      if (*(v229 + 8) == 268435488)
                      {
                        v69 = v67 ^ 1u;
                      }

                      else
                      {
                        v69 = 1;
                      }

                      v230 = v241 / v238;
                      v226 = v56;
                      v291 = -1;
                      v292 = -1;
                      v293 = 0;
                      v294 = v48 | v187 | v191 | v189;
                      v295 = 0u;
                      v296 = 0u;
                      v298 = 0;
                      v297 = v194 | 0x10100;
                      if (v240 > 1u)
                      {
                        v70 = v222;
                      }

                      else
                      {
                        v70 = v222;
                        if (v69)
                        {
                          v68 = *(v235 + 232);
                        }
                      }

                      v172 = *(&v236->super.isa + *MEMORY[0x277CD7360]);
                      v174 = *(&v236->super.isa + *MEMORY[0x277CD7368]);
                      v170 = v68;
                      MPSLibrary::CreateUberShaderKey();
                      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                      [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
                      if (v198 * v200 * v199 * v201 > [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v180 = v194 | 0x10100;
                      v181 = v69;
                      if (v185)
                      {
                        v179 = v242 * v244;
                        v91 = v245 * v242 * v244;
                        v184 = (v91 + *&v232 - 1) / *&v232;
                        v186 = (v230 + *&v234 - 1) / *&v234 * v238;
                      }

                      else
                      {
                        v184 = v242 * v244;
                        v186 = (v230 + *&v234 - 1) / *&v234 * v238 * ((v245 + *&v232 - 1) / *&v232);
                        v91 = v245 * v242 * v244;
                        v179 = v242 * v244;
                      }

                      v92 = *MEMORY[0x277CD7400];
                      v210 = *&v70[v92];
                      v93 = *MEMORY[0x277CD73C8];
                      v94 = *&v70[v93];
                      v95 = *&v243[v92];
                      v96 = *&v243[v93];
                      v97 = *&v218[v92];
                      v98 = *&v218[v93];
                      MEMORY[0x23EE7C450](v290, v214, 0);
                      TempBuffer = [v218 buffer];
                      if (v240 >= 2u)
                      {
                        TempBuffer = MPSAutoCache::GetTempBuffer(v290, 4 * v240 * ((v91 * v241 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0);
                      }

                      MPSGetUShortDivisorMagicNumber();
                      v205 = v99;
                      MPSGetUShortDivisorMagicNumber();
                      v196 = v100;
                      MPSGetUShortDivisorMagicNumber();
                      v195 = v101;
                      MPSGetUShortDivisorMagicNumber();
                      v192 = v102;
                      MPSGetUIntDivisorMagicNumber();
                      v190 = v103;
                      MPSGetUShortDivisorMagicNumber();
                      v188 = v104;
                      MPSGetUIntDivisorMagicNumber();
                      v178 = v105;
                      MPSGetUIntDivisorMagicNumber();
                      v177 = v106;
                      MPSGetUIntDivisorMagicNumber();
                      v176 = v107;
                      v108 = (v221 * v220);
                      v109 = v95 / (v96 >> 3);
                      v110 = v205;
                      HIWORD(v110) = 0;
                      v111 = v196;
                      HIWORD(v111) = 0;
                      v112 = v195;
                      HIWORD(v112) = 0;
                      v114 = v190;
                      v113 = v192;
                      HIWORD(v113) = 0;
                      HIDWORD(v114) = 0;
                      v115 = v188;
                      HIWORD(v115) = 0;
                      v286 = 0u;
                      v287 = 0u;
                      v288 = 0u;
                      v289 = 0u;
                      LODWORD(v116) = v241;
                      v197 = v97 / (v98 >> 3);
                      if ((v240 & 0xFFFE) == 0)
                      {
                        v116 = v97 / (v98 >> 3);
                      }

                      v206 = (v91 * v241 + 3) & 0xFFFFFFFC;
                      v270 = v206;
                      v271 = v116;
                      v272 = v108 * v109;
                      v273 = v221 * v220 * (v210 / (v94 >> 3));
                      v274 = (v108 * v109) << v219;
                      v275 = v273 << v219;
                      v276 = (v108 + v240 - 1) / v240;
                      v277 = v221 * v220;
                      v278 = v110;
                      v279 = v111;
                      v280 = v112;
                      v281 = v113;
                      v282 = v114;
                      v283 = v115;
                      v284 = v91;
                      v285 = v245;
                      LODWORD(v286) = v241 / v238;
                      WORD2(v286) = v244;
                      WORD3(v286) = v242;
                      WORD4(v286) = v238;
                      HIDWORD(v286) = v237;
                      *&v287 = __PAIR64__(v220, v221);
                      *(&v287 + 1) = __PAIR64__(v220, v221);
                      *&v288 = __PAIR64__(v211, v215);
                      WORD5(v288) = v212;
                      WORD4(v288) = v216;
                      HIWORD(v288) = v213;
                      WORD6(v288) = v217;
                      LODWORD(v289) = v210 / (v94 >> 3);
                      DWORD1(v289) = v95 / (v96 >> 3);
                      if (v203)
                      {
                        v117 = MEMORY[0x277CD73C8];
                        v118 = v224.i32[0] * v232.i32[0] * (*&v222[*MEMORY[0x277CD73C8]] >> 3);
                        v119 = v193;
                        v120 = v235;
                        v121 = v236;
                        v122 = v226;
                        if (!v202)
                        {
                          goto LABEL_336;
                        }
                      }

                      else
                      {
                        v118 = 0;
                        v119 = v193;
                        v120 = v235;
                        v121 = v236;
                        v122 = v226;
                        v117 = MEMORY[0x277CD73C8];
                        if (!v202)
                        {
LABEL_336:
                          if (v122 && v118 <= 16 * v201 * (v199 >> 1) * v200 * v198)
                          {
                            v118 = 16 * v201 * (v199 >> 1) * v200 * v198;
                          }

                          [v119 setComputePipelineState:PipelineStateForMPSKey];
                          MPSLibrary::ReleaseComputeState();
                          MPSLibrary::ReleaseMPSKey();
                          MPSSetNDArraysOnComputeEncoder(v119, v120, 4, 0, 0);
                          [v119 setBuffer:objc_msgSend(v243 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v243, 0, 4, 0, 0) + v183, 29}];
                          [v119 setBuffer:objc_msgSend(v222 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v222, 0, 4, 0, 0) + v41, 28}];
                          if (v240 > 1u)
                          {
                            v125 = 0;
                            v124 = TempBuffer;
                          }

                          else
                          {
                            v123 = MPSGetLinearOffsetBytes(v218, 0, 4, 0, 0);
                            v124 = [v218 buffer];
                            v125 = v123 + v182;
                          }

                          [v119 setBuffer:v124 offset:v125 atIndex:27];
                          objc_msgSend_setBytes_length_atIndex_(v119);
                          [v119 setThreadgroupMemoryLength:v118 atIndex:0];
                          [v119 setBuffer:0 offset:0 atIndex:25];
                          v250 = v184;
                          v251 = v186;
                          v252 = v240;
                          v263 = v198 * v200 * v199 * v201;
                          v264 = vdupq_n_s64(1uLL);
                          [v119 dispatchThreadgroups:&v250 threadsPerThreadgroup:&v263];
                          if (v240 >= 2u)
                          {
                            v126 = 0;
                            v264.i64[0] = -1;
                            v263 = -1;
                            v264.i64[1] = -1;
                            v265 = v181;
                            v266 = 0u;
                            v267 = 0u;
                            v268 = v180;
                            v269 = 0;
                            if (v181)
                            {
                              v126 = *(v120 + 232);
                            }

                            v173 = *(&v121->super.isa + *MEMORY[0x277CD7360]);
                            v175 = *(&v121->super.isa + *MEMORY[0x277CD7368]);
                            v171 = v126;
                            MPSLibrary::CreateUberShaderKey();
                            [v119 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v171, v173, v175, 0, 0}];
                            MPSLibrary::ReleaseComputeState();
                            MPSLibrary::ReleaseMPSKey();
                            MPSSetNDArraysOnComputeEncoder(v119, v120, 4, 0, 0);
                            [v119 setBuffer:TempBuffer offset:0 atIndex:28];
                            [v119 setBuffer:objc_msgSend(v218 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v218, 0, 4, 0, 0) + v182, 27}];
                            v127 = (v241 + 3) >> 2;
                            MPSGetUIntDivisorMagicNumber();
                            v129 = v177;
                            v128 = v178;
                            HIDWORD(v128) = 0;
                            HIDWORD(v129) = 0;
                            v130 = v176;
                            HIDWORD(v130) = 0;
                            HIDWORD(v131) = 0;
                            v257 = 0;
                            v258 = v129;
                            LODWORD(v250) = v245 * v127 * v179;
                            HIDWORD(v250) = v127;
                            LODWORD(v251) = v240;
                            HIDWORD(v251) = v241 & 3;
                            v252 = __PAIR64__(v197, v241);
                            v253 = v206;
                            v254 = v245;
                            v255 = v244;
                            v256 = v242;
                            v259 = v130;
                            v260 = v128;
                            v261 = v131;
                            v262 = 0u;
                            objc_msgSend_setBytes_length_atIndex_(v119);
                            [v119 setBuffer:0 offset:0 atIndex:25];
                            v248 = (v245 * v127 * v179 + 255) >> 8;
                            v249 = vdupq_n_s64(1uLL);
                            v246 = xmmword_239B0A7B0;
                            v247 = 1;
                            [v119 dispatchThreadgroups:&v248 threadsPerThreadgroup:&v246];
                          }

                          MPSAutoCache::~MPSAutoCache(v290);
                          operator delete(0);
                          operator delete(0);
                          operator delete(0);
                          return 0;
                        }
                      }

                      v118 += v224.i32[0] * v234.i32[0] * (*&v243[*v117] >> 3);
                      goto LABEL_336;
                  }
                }

                v52 = 18;
                goto LABEL_258;
            }
          }

LABEL_212:
          v50 = 589824;
          goto LABEL_213;
      }
    }

    v46 = 576;
    v47 = *(v223 + 8);
    if (v47 <= 285212703)
    {
      goto LABEL_116;
    }

LABEL_93:
    if (v47 <= 536870915)
    {
      if (v47 > 301989895)
      {
        if (v47 == 301989896)
        {
          v48 = 0x4000;
          v49 = *(v225 + 8);
          if (v49 > 285212703)
          {
            goto LABEL_137;
          }

          goto LABEL_154;
        }

        if (v47 == 335544328)
        {
          v48 = 17408;
          v49 = *(v225 + 8);
          if (v49 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        }
      }

      else
      {
        if (v47 == 285212704)
        {
          v48 = 13312;
          v49 = *(v225 + 8);
          if (v49 > 285212703)
          {
            goto LABEL_137;
          }

          goto LABEL_154;
        }

        if (v47 == 285212736)
        {
          v48 = 14336;
          v49 = *(v225 + 8);
          if (v49 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        }
      }
    }

    else if (v47 <= 536870927)
    {
      if (v47 == 536870916)
      {
        v48 = 0;
        v49 = *(v225 + 8);
        if (v49 > 285212703)
        {
          goto LABEL_137;
        }

        goto LABEL_154;
      }

      if (v47 == 536870920)
      {
        v48 = 1024;
        v49 = *(v225 + 8);
        if (v49 <= 285212703)
        {
          goto LABEL_154;
        }

        goto LABEL_137;
      }
    }

    else
    {
      switch(v47)
      {
        case 536870928:
          v48 = 2048;
          v49 = *(v225 + 8);
          if (v49 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        case 536870944:
          v48 = 3072;
          v49 = *(v225 + 8);
          if (v49 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        case 536870976:
          v48 = 4096;
          v49 = *(v225 + 8);
          if (v49 > 285212703)
          {
            goto LABEL_137;
          }

LABEL_154:
          if (v49 <= 31)
          {
            if (v49 > 7)
            {
              if (v49 == 8)
              {
                v50 = 196608;
                goto LABEL_213;
              }

              if (v49 == 16)
              {
                v50 = 229376;
                goto LABEL_213;
              }
            }

            else
            {
              if (v49 == -1879048176)
              {
                v50 = 393216;
                goto LABEL_213;
              }

              if (v49 == 4)
              {
                v50 = 163840;
                goto LABEL_213;
              }
            }
          }

          else if (v49 <= 268435463)
          {
            if (v49 == 32)
            {
              v50 = 0x40000;
              goto LABEL_213;
            }

            if (v49 == 64)
            {
              v50 = 294912;
              goto LABEL_213;
            }
          }

          else
          {
            switch(v49)
            {
              case 268435464:
                v50 = 491520;
                goto LABEL_213;
              case 268435472:
                v50 = 327680;
                goto LABEL_213;
              case 268435488:
                v50 = 360448;
                goto LABEL_213;
            }
          }

          goto LABEL_212;
      }
    }

    goto LABEL_210;
  }

  return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(a1, a2, a3, a4, a5);
}