void sub_2599982A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, void *a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v54 - 128);
  if (a30 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16>(__int16 *a1@<X0>, __int16 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, const void **a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v19 = a9;
  v73 = a4;
  v72 = a5;
  v71 = a10;
  v70 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 20);
  MIL::Fp16::GetFloat(&v71);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 20 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v69 = v25;
  MIL::Fp16::GetFloat(&v70);
  v27 = v26;
  v28 = exp2(-(a6 + 20 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = v28 * v27;
    while (1)
    {
      v31 = v19;
      v32 = *a1++;
      MIL::Fp16::GetFloat(&v73);
      v34 = v33;
      LOWORD(__e) = v32;
      MIL::Fp16::GetFloat(&__e);
      v36 = v35;
      v37 = ilogbf(v35);
      if (v37 <= -14)
      {
        v38 = -14;
      }

      else
      {
        v38 = v37;
      }

      v39 = ilogbf(v34);
      if (v39 <= -14)
      {
        v40 = -14;
      }

      else
      {
        v40 = v39;
      }

      v41 = v38 + a6 + v40;
      v42 = v69 + llroundf((v34 * v36) * v29);
      if (v42 >= 0xFFFFFFFF80000000)
      {
        v43 = v42;
      }

      else
      {
        v43 = -8388608;
      }

      v44 = 2 * (v42 < 0xFFFFFFFF80000000);
      v45 = v42 <= 0x7FFFFFFF;
      if (v42 <= 0x7FFFFFFF)
      {
        v46 = v43;
      }

      else
      {
        v46 = 2139095040;
      }

      if (!v45)
      {
        v44 = 1;
      }

      LODWORD(v47) = v41 >= -20 ? v46 : v69;
      v48 = v41 >= -20 ? v44 : 0;
      v49 = *a2;
      MIL::Fp16::GetFloat(&v72);
      if (v48 == 2)
      {
        break;
      }

      if (v48)
      {
        goto LABEL_37;
      }

      v51 = v50;
      LOWORD(__e) = v49;
      MIL::Fp16::GetFloat(&__e);
      v53 = v52;
      v54 = ilogbf(v52);
      if (v54 <= -14)
      {
        v55 = -14;
      }

      else
      {
        v55 = v54;
      }

      v56 = ilogbf(v51);
      if (v56 <= -14)
      {
        v57 = -14;
      }

      else
      {
        v57 = v56;
      }

      if (v55 + a6 + v57 >= -20)
      {
        v47 = llroundf((v51 * v53) * v29) + v47;
        if (v47 > 0x7FFFFFFF)
        {
LABEL_37:
          *&v59 = INFINITY;
LABEL_40:
          v58 = *&v59;
          v19 = v31;
          goto LABEL_41;
        }

        if (v47 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      v19 = v31;
      if (!v47)
      {
        v62 = 0.0;
        goto LABEL_42;
      }

      v58 = v47;
LABEL_41:
      __e = 0;
      v60 = frexp(v58, &__e);
      v61 = ldexp(v60, 11);
      v62 = ldexp(round(v61), __e - 11);
LABEL_42:
      v63 = v62 * v30;
      v64 = 0.0;
      if (v63 != 0.0)
      {
        __e = 0;
        v65 = frexp(v63, &__e);
        v66 = ldexp(v65, 11);
        v64 = ldexp(round(v66), __e - 11);
      }

      v67 = std::function<float ()(float)>::operator()(a13, v64);
      LOWORD(__e) = MIL::Fp16::FromFloat(v67, v68);
      std::vector<MIL::Fp16>::push_back[abi:ne200100](v19, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v59 = -INFINITY;
    goto LABEL_40;
  }
}

void sub_2599988A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,MIL::Fp16>(__int16 *a1@<X0>, __int16 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v74 = a4;
  v73 = a5;
  v72 = a10;
  v71 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v19 = ldexp(1.0, a6 + 20);
  MIL::Fp16::GetFloat(&v72);
  v21 = v20;
  v22 = ldexp(1.0, a6 + 20 + a7);
  v23 = v21 * v22;
  v24 = llroundf(v23);
  if (fabsf(v23) < 1.0)
  {
    v24 = 0;
  }

  v70 = v24;
  MIL::Fp16::GetFloat(&v71);
  v26 = v25;
  v27 = exp2(-(a6 + 20 + a8));
  if (v16)
  {
    v28 = v19;
    v29 = v27 * v26;
    while (1)
    {
      v30 = *a1++;
      MIL::Fp16::GetFloat(&v74);
      v32 = v31;
      LOWORD(__e) = v30;
      MIL::Fp16::GetFloat(&__e);
      v34 = v33;
      v35 = ilogbf(v33);
      if (v35 <= -14)
      {
        v36 = -14;
      }

      else
      {
        v36 = v35;
      }

      v37 = ilogbf(v32);
      if (v37 <= -14)
      {
        v38 = -14;
      }

      else
      {
        v38 = v37;
      }

      v39 = v36 + a6 + v38;
      v40 = v70 + llroundf((v32 * v34) * v28);
      if (v40 >= 0xFFFFFFFF80000000)
      {
        v41 = v40;
      }

      else
      {
        v41 = -8388608;
      }

      v42 = 2 * (v40 < 0xFFFFFFFF80000000);
      v43 = v40 <= 0x7FFFFFFF;
      if (v40 <= 0x7FFFFFFF)
      {
        v44 = v41;
      }

      else
      {
        v44 = 2139095040;
      }

      if (!v43)
      {
        v42 = 1;
      }

      LODWORD(v45) = v39 >= -20 ? v44 : v70;
      v46 = v39 >= -20 ? v42 : 0;
      v47 = *a2;
      MIL::Fp16::GetFloat(&v73);
      if (v46 == 2)
      {
        break;
      }

      if (v46)
      {
        goto LABEL_37;
      }

      v49 = v48;
      LOWORD(__e) = v47;
      MIL::Fp16::GetFloat(&__e);
      v51 = v50;
      v52 = ilogbf(v50);
      if (v52 <= -14)
      {
        v53 = -14;
      }

      else
      {
        v53 = v52;
      }

      v54 = ilogbf(v49);
      if (v54 <= -14)
      {
        v55 = -14;
      }

      else
      {
        v55 = v54;
      }

      if (v53 + a6 + v55 >= -20)
      {
        v45 = llroundf((v49 * v51) * v28) + v45;
        if (v45 > 0x7FFFFFFF)
        {
LABEL_37:
          *&v58 = INFINITY;
LABEL_40:
          v57 = *&v58;
          v56 = a9;
          goto LABEL_41;
        }

        if (v45 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      v56 = a9;
      if (!v45)
      {
        v61 = 0.0;
        goto LABEL_42;
      }

      v57 = v45;
LABEL_41:
      __e = 0;
      v59 = frexp(v57, &__e);
      v60 = ldexp(v59, 11);
      v61 = ldexp(round(v60), __e - 11);
LABEL_42:
      v62 = v61 * v29;
      v63 = 0.0;
      if (v62 != 0.0)
      {
        __e = 0;
        v64 = frexp(v62, &__e);
        v65 = ldexp(v64, 11);
        v63 = ldexp(round(v65), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v63);
      if (v66 == INFINITY)
      {
        LOBYTE(v67) = -1;
      }

      else if (v66 == -INFINITY)
      {
        LOBYTE(v67) = 0;
      }

      else
      {
        v68 = llroundf(v66);
        if (v68 >= 255)
        {
          v68 = 255;
        }

        v67 = v68 & ~(v68 >> 31);
      }

      LOBYTE(__e) = v67;
      std::vector<signed char>::push_back[abi:ne200100](v56, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v58 = -INFINITY;
    goto LABEL_40;
  }
}

void sub_259998C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v10 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16>(__int16 *a1@<X0>, __int16 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v73 = a4;
  v72 = a5;
  v71 = a10;
  v70 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v19 = ldexp(1.0, a6 + 20);
  MIL::Fp16::GetFloat(&v71);
  v21 = v20;
  v22 = ldexp(1.0, a6 + 20 + a7);
  v23 = v21 * v22;
  v24 = llroundf(v23);
  if (fabsf(v23) < 1.0)
  {
    v24 = 0;
  }

  v69 = v24;
  MIL::Fp16::GetFloat(&v70);
  v26 = v25;
  v27 = exp2(-(a6 + 20 + a8));
  if (v16)
  {
    v28 = v19;
    v29 = v27 * v26;
    while (1)
    {
      v30 = *a1++;
      MIL::Fp16::GetFloat(&v73);
      v32 = v31;
      LOWORD(__e) = v30;
      MIL::Fp16::GetFloat(&__e);
      v34 = v33;
      v35 = ilogbf(v33);
      if (v35 <= -14)
      {
        v36 = -14;
      }

      else
      {
        v36 = v35;
      }

      v37 = ilogbf(v32);
      if (v37 <= -14)
      {
        v38 = -14;
      }

      else
      {
        v38 = v37;
      }

      v39 = v36 + a6 + v38;
      v40 = v69 + llroundf((v32 * v34) * v28);
      if (v40 >= 0xFFFFFFFF80000000)
      {
        v41 = v40;
      }

      else
      {
        v41 = -8388608;
      }

      v42 = 2 * (v40 < 0xFFFFFFFF80000000);
      v43 = v40 <= 0x7FFFFFFF;
      if (v40 <= 0x7FFFFFFF)
      {
        v44 = v41;
      }

      else
      {
        v44 = 2139095040;
      }

      if (!v43)
      {
        v42 = 1;
      }

      LODWORD(v45) = v39 >= -20 ? v44 : v69;
      v46 = v39 >= -20 ? v42 : 0;
      v47 = *a2;
      MIL::Fp16::GetFloat(&v72);
      if (v46 == 2)
      {
        break;
      }

      if (v46)
      {
        goto LABEL_37;
      }

      v49 = v48;
      LOWORD(__e) = v47;
      MIL::Fp16::GetFloat(&__e);
      v51 = v50;
      v52 = ilogbf(v50);
      if (v52 <= -14)
      {
        v53 = -14;
      }

      else
      {
        v53 = v52;
      }

      v54 = ilogbf(v49);
      if (v54 <= -14)
      {
        v55 = -14;
      }

      else
      {
        v55 = v54;
      }

      if (v53 + a6 + v55 >= -20)
      {
        v45 = llroundf((v49 * v51) * v28) + v45;
        if (v45 > 0x7FFFFFFF)
        {
LABEL_37:
          *&v58 = INFINITY;
LABEL_40:
          v57 = *&v58;
          v56 = a9;
          goto LABEL_41;
        }

        if (v45 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      v56 = a9;
      if (!v45)
      {
        v61 = 0.0;
        goto LABEL_42;
      }

      v57 = v45;
LABEL_41:
      __e = 0;
      v59 = frexp(v57, &__e);
      v60 = ldexp(v59, 11);
      v61 = ldexp(round(v60), __e - 11);
LABEL_42:
      v62 = v61 * v29;
      v63 = 0.0;
      if (v62 != 0.0)
      {
        __e = 0;
        v64 = frexp(v62, &__e);
        v65 = ldexp(v64, 11);
        v63 = ldexp(round(v65), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v63);
      if (v66 == INFINITY)
      {
        LOBYTE(v67) = 127;
      }

      else if (v66 == -INFINITY)
      {
        LOBYTE(v67) = 0x80;
      }

      else
      {
        v67 = llroundf(v66);
        if (v67 >= 127)
        {
          v67 = 127;
        }

        if (v67 <= -128)
        {
          LOBYTE(v67) = 0x80;
        }
      }

      LOBYTE(__e) = v67;
      std::vector<signed char>::push_back[abi:ne200100](v56, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v58 = -INFINITY;
    goto LABEL_40;
  }
}

void sub_259998F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v10 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,unsigned char>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, const void **a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      v55 = std::function<float ()(float)>::operator()(a13, v52);
      LOWORD(__e) = MIL::Fp16::FromFloat(v55, v56);
      std::vector<MIL::Fp16>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_259999288(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,unsigned char>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v62 = a4;
  v61 = a5;
  v60 = a10;
  v59 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v60);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v58 = v25;
  MIL::Fp16::GetFloat(&v59);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v62);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v58 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v58;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v61);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = -1;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0;
      }

      else
      {
        v57 = llroundf(v55);
        if (v57 >= 255)
        {
          v57 = 255;
        }

        v56 = v57 & ~(v57 >> 31);
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_2599995B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = 127;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0x80;
      }

      else
      {
        v56 = llroundf(v55);
        if (v56 >= 127)
        {
          v56 = 127;
        }

        if (v56 <= -128)
        {
          LOBYTE(v56) = 0x80;
        }
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_2599998E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,signed char>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, const void **a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<MIL::Fp16>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      v55 = std::function<float ()(float)>::operator()(a13, v52);
      LOWORD(__e) = MIL::Fp16::FromFloat(v55, v56);
      std::vector<MIL::Fp16>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_259999BDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v62 = a4;
  v61 = a5;
  v60 = a10;
  v59 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v60);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v58 = v25;
  MIL::Fp16::GetFloat(&v59);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v62);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v58 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v58;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v61);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = -1;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0;
      }

      else
      {
        v57 = llroundf(v55);
        if (v57 >= 255)
        {
          v57 = 255;
        }

        v56 = v57 & ~(v57 >> 31);
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_259999F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char>(char *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, __int16 a10, int a11, __int16 a12, uint64_t a13)
{
  v16 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a10;
  v58 = a12;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::vector<unsigned char>::reserve(a9, a3);
  v20 = ldexp(1.0, a6 + 10);
  MIL::Fp16::GetFloat(&v59);
  v22 = v21;
  v23 = ldexp(1.0, a6 + 10 + a7);
  v24 = v22 * v23;
  v25 = llroundf(v24);
  if (fabsf(v24) < 1.0)
  {
    v25 = 0;
  }

  v57 = v25;
  MIL::Fp16::GetFloat(&v58);
  v27 = v26;
  v28 = exp2(-(a6 + 10 + a8));
  if (v16)
  {
    v29 = v20;
    v30 = -20 - a6;
    v31 = v28 * v27;
    while (1)
    {
      v33 = *a1++;
      v32 = v33;
      MIL::Fp16::GetFloat(&v61);
      v35 = v34;
      v36 = ilogbf(v34);
      v37 = v36 <= -14 ? -14 : v36;
      if (v37 >= v30)
      {
        v40 = v57 + llroundf((v35 * v32) * v29);
        if (v40 <= 0x7FFFFFFF)
        {
          LODWORD(v39) = v40 >= 0xFFFFFFFF80000000 ? v40 : -8388608;
          v38 = 2 * (v40 < 0xFFFFFFFF80000000);
        }

        else
        {
          v38 = 1;
          LODWORD(v39) = 2139095040;
        }
      }

      else
      {
        v38 = 0;
        LODWORD(v39) = v57;
      }

      v41 = *a2;
      MIL::Fp16::GetFloat(&v60);
      if (v38 == 2)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_25;
      }

      v43 = v42;
      v44 = ilogbf(v42);
      if (v44 <= -14)
      {
        v45 = -14;
      }

      else
      {
        v45 = v44;
      }

      if (v45 >= v30)
      {
        v39 = llroundf((v43 * v41) * v29) + v39;
        if (v39 > 0x7FFFFFFF)
        {
LABEL_25:
          *&v47 = INFINITY;
LABEL_28:
          v46 = *&v47;
          goto LABEL_29;
        }

        if (v39 < 0xFFFFFFFF80000000)
        {
          break;
        }
      }

      if (!v39)
      {
        v50 = 0.0;
        goto LABEL_30;
      }

      v46 = v39;
LABEL_29:
      __e = 0;
      v48 = frexp(v46, &__e);
      v49 = ldexp(v48, 11);
      v50 = ldexp(round(v49), __e - 11);
LABEL_30:
      v51 = v50 * v31;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        __e = 0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v52);
      if (v55 == INFINITY)
      {
        LOBYTE(v56) = 127;
      }

      else if (v55 == -INFINITY)
      {
        LOBYTE(v56) = 0x80;
      }

      else
      {
        v56 = llroundf(v55);
        if (v56 >= 127)
        {
          v56 = 127;
        }

        if (v56 <= -128)
        {
          LOBYTE(v56) = 0x80;
        }
      }

      LOBYTE(__e) = v56;
      std::vector<signed char>::push_back[abi:ne200100](a9, &__e);
      ++a2;
      if (!--v16)
      {
        return;
      }
    }

    *&v47 = -INFINITY;
    goto LABEL_28;
  }
}

void sub_25999A24C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::NeConvCpu::Run(MIL::IRObject *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 7)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 7)
  {
    goto LABEL_10;
  }

  if (*v6 != 1667196270 || *(v6 + 3) != 1986948963)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v86, "ne_conv");
    v10 = std::string::insert(&v86, 0, "Expected ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v92.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v92.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v92, " op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v99.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v99.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = (*(*a1 + 56))(a1);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = std::string::append(&v99, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v99.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v86.__r_.__value_.__r.__words[0];
LABEL_155:
      operator delete(v20);
      return;
    }

    return;
  }

  v104 = 0;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  ANEMachineIR::Validators::ParseConvParameterValues(a1, &v96, &v93, &v99, &v92);
  if ((MIL::ValidationResult::IsGood(&v92) & 1) == 0)
  {
    *a3 = 3;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Failed to parse conv parameters.");
    goto LABEL_145;
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, "acc_bias_shift");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v22 = MEMORY[0x259CA93E0]()) != 0)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, "acc_left_shift");
  v24 = MIL::IROperation::TryGetParameterValue();
  if (v24 && (*(*v24 + 40))(v24) && (v25 = MEMORY[0x259CA93E0]()) != 0)
  {
    v26 = *v25;
  }

  else
  {
    v26 = 0;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, "post_right_shift");
  v27 = MIL::IROperation::TryGetParameterValue();
  if (v27 && (*(*v27 + 40))(v27) && (v28 = MEMORY[0x259CA93E0]()) != 0)
  {
    v29 = *v28;
  }

  else
  {
    v29 = 0;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, "pre_relu");
  v30 = MIL::IROperation::TryGetParameterValue();
  v81 = v29;
  if (v30 && (*(*v30 + 40))(v30) && (v31 = MEMORY[0x259CA93F0]()) != 0)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 0;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v33 = std::string::basic_string[abi:ne200100]<0>(&v86, "bias");
  LOWORD(v90[0]) = MIL::Fp16::FromFloat(v33, 0.0);
  v115 = 0;
  v116 = 0;
  v114 = 0;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v114, v90, v90 + 1, 1);
  MIL::ANEMachineIR::GetScalarOrVectorOrDefault<MIL::Fp16>(a1, &v114, v91);
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v34 = std::string::basic_string[abi:ne200100]<0>(&v86, "post_scale");
  LOWORD(Data) = MIL::Fp16::FromFloat(v34, 1.0);
  v115 = 0;
  v116 = 0;
  v114 = 0;
  std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16 const*,MIL::Fp16 const*>(&v114, &Data, &Data + 1, 1);
  MIL::ANEMachineIR::GetScalarOrVectorOrDefault<MIL::Fp16>(a1, &v114, v90);
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v86);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, "dense_kernel");
  v36 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v86);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (InterpretedTensorValue)
  {
    if (v36)
    {
      v78 = v26;
      v79 = v23;
      v37 = (*(*v36 + 32))(v36);
      v38 = (*(*v37 + 88))(v37);
      if (v38 == 4)
      {
        v39 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
        v80 = 0;
      }

      else
      {
        v41 = (*(*v36 + 32))(v36);
        ANEMachineIR::Utils::GetStaticTensorShape(&v86.__r_.__value_.__l.__data_, v41, v42);
        v43 = v86.__r_.__value_.__r.__words[0];
        v44 = 1;
        while (v43 != v86.__r_.__value_.__l.__size_)
        {
          v45 = *v43++;
          v44 *= v45;
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        std::vector<MIL::Fp16>::reserve(&v114, v44);
        if (v38 == 9)
        {
          Data = MIL::IRTensorValue::GetDataView<signed char>();
          v89 = v50;
          if (v44)
          {
            for (i = 0; i != v44; ++i)
            {
              v52 = MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](&Data, i);
              LOWORD(v85.__r_.__value_.__l.__data_) = MIL::Fp16::FromFloat(v52, *v52);
              std::vector<MIL::Fp16>::push_back[abi:ne200100](&v114, &v85);
            }
          }
        }

        else
        {
          if (v38 != 14)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Unexpected dtype copying to fp16.");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          Data = MIL::IRTensorValue::GetDataView<unsigned char>();
          v89 = v46;
          if (v44)
          {
            for (j = 0; j != v44; ++j)
            {
              v48 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](&Data, j);
              LOBYTE(v49) = *v48;
              LOWORD(v85.__r_.__value_.__l.__data_) = MIL::Fp16::FromFloat(v48, v49);
              std::vector<MIL::Fp16>::push_back[abi:ne200100](&v114, &v85);
            }
          }
        }

        if (v86.__r_.__value_.__r.__words[0])
        {
          v86.__r_.__value_.__l.__size_ = v86.__r_.__value_.__r.__words[0];
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        v39 = v114;
        v80 = v114;
      }

      v53 = (*(*v36 + 32))(v36);
      ANEMachineIR::Utils::GetStaticTensorShape(&Data, v53, v54);
      *&v86.__r_.__value_.__r.__words[1] = 0uLL;
      v87 = 0;
      MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v86, &v114);
      if (LODWORD(v86.__r_.__value_.__l.__data_))
      {
        *a3 = v86.__r_.__value_.__l.__data_;
        *(a3 + 8) = *&v86.__r_.__value_.__r.__words[1];
        *(a3 + 24) = v87;
        *&v86.__r_.__value_.__r.__words[1] = 0uLL;
        v87 = 0;
LABEL_135:
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v114);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__size_);
        }

        if (Data)
        {
          v89 = Data;
          operator delete(Data);
        }

        if (v80)
        {
          operator delete(v80);
        }

        goto LABEL_141;
      }

      v55 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
      v56 = (*(*v55 + 88))(v55);
      OutputType = MIL::IROperation::GetOutputType(a1);
      v58 = MIL::IRValueType::AsTensorType(OutputType);
      v59 = (*(*v58 + 88))(v58);
      std::string::basic_string[abi:ne200100]<0>(&v83, "pad_mode");
      std::string::basic_string[abi:ne200100]<0>(&__p, "zero");
      v60 = MIL::IROperation::TryGetParameterValue();
      if (v60 && (v60 = (*(*v60 + 40))(v60)) != 0 && (v60 = MEMORY[0x259CA93D0]()) != 0)
      {
        if (*(v60 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v85, *v60, *(v60 + 8));
        }

        else
        {
          v61 = *v60;
          v85.__r_.__value_.__r.__words[2] = *(v60 + 16);
          *&v85.__r_.__value_.__l.__data_ = v61;
        }
      }

      else
      {
        v85 = __p;
        memset(&__p, 0, sizeof(__p));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v84 < 0)
      {
        operator delete(v83);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v85.__r_.__value_.__l.__size_ != 4)
        {
          goto LABEL_104;
        }

        v62 = v85.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_104;
        }

        v62 = &v85;
      }

      if (LODWORD(v62->__r_.__value_.__l.__data_) == 1869768058)
      {
        v77 = 0;
        goto LABEL_108;
      }

LABEL_104:
      v60 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v85, "replicate");
      if ((v60 & 1) == 0)
      {
        *a3 = 3;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unexpected value for pad_mode.");
        goto LABEL_133;
      }

      v77 = 1;
LABEL_108:
      v63 = MIL::Fp16::FromFloat(v60, 1.0);
      switch(v56)
      {
        case 4:
          switch(v59)
          {
            case 14:
              v72 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v112, &v114);
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,MIL::Fp16>(v72, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, 0, v32 & 1, v112);
            case 9:
              v70 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, &v114);
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,MIL::Fp16>(v70, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, 0, v32 & 1, v111);
            case 4:
              v66 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v113, &v114);
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,MIL::Fp16>(v66, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, 0, v32 & 1, v113);
          }

          break;
        case 9:
          switch(v59)
          {
            case 14:
              v69 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v106, &v114);
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(v69, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, 0, v32 & 1, v106);
            case 9:
              v68 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v105, &v114);
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(v68, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, 0, v32 & 1, v105);
            case 4:
              v65 = MIL::IRTensorValue::GetDataView<signed char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v107, &v114);
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(v65, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, 0, v32 & 1, v107);
          }

          break;
        case 14:
          switch(v59)
          {
            case 14:
              v73 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v109, &v114);
              LOBYTE(v76) = v32 & 1;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,unsigned char>(v73, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, v76, v109);
            case 9:
              v71 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v108, &v114);
              LOBYTE(v76) = v32 & 1;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(v71, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, v76, v108);
            case 4:
              v64 = MIL::IRTensorValue::GetDataView<unsigned char>();
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v110, &v114);
              LOBYTE(v76) = v32 & 1;
              MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,unsigned char>(v64, &v96, v39, v38, &Data, &v93, &v99, v77, v78, v79, v81, v91, v90, 0, v75, v63, v76, v110);
          }

          break;
        default:
          v67 = "Unimplemented input dtype";
LABEL_125:
          *a3 = 3;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), v67);
LABEL_133:
          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          goto LABEL_135;
      }

      v67 = "Unimplemented output dtype";
      goto LABEL_125;
    }

    v40 = "No value for dense_kernel";
  }

  else
  {
    v40 = "No value for x";
  }

  *a3 = 2;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), v40);
LABEL_141:
  if (v90[0])
  {
    v90[1] = v90[0];
    operator delete(v90[0]);
  }

  if (v91[0])
  {
    v91[1] = v91[0];
    operator delete(v91[0]);
  }

LABEL_145:
  MEMORY[0x259CA8F00](&v92);
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v103)
  {
    *(&v103 + 1) = v103;
    operator delete(v103);
  }

  if (*(&v101 + 1))
  {
    *&v102 = *(&v101 + 1);
    operator delete(*(&v101 + 1));
  }

  v20 = v100;
  if (v100)
  {
    *(&v100 + 1) = v100;
    goto LABEL_155;
  }
}

void sub_25999B910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v65 - 136);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  MEMORY[0x259CA8F00](&a51);
  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(&a65);
  _Unwind_Resume(a1);
}

void MilTranslator::OpTranslator::TranslateLinear(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v6 = (*(*a2 + 120))(a2, &__p, 0);
  v7 = v6;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a3 = 4;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Immediate value inputs not handled.");
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v83.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v83.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(&v81, v11, v10);
  v12 = v82 - v81;
  if (v82 - v81 == 16)
  {
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v83, v11, &v80);
    memset(&v79, 0, sizeof(v79));
    std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
    MilTranslator::WeightTranslator::TargetProgramConstOpName(this + 144, a2, &__p, 1, 1uLL, &v79, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!*a3)
    {
      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
      v13 = MIL::IROperation::GetParameterType();
      v15 = MIL::IRValueType::AsTensorType(v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ANEMachineIR::Utils::GetStaticTensorShape(v78, v15, v14);
      v16 = (*(*a2 + 176))(a2);
      v18 = **v16;
      v17 = (*v16)[1];
      if (v17)
      {
        atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
      }

      v52 = v17;
      Type = MIL::IRNamedValueType::GetType(v18);
      MIL::IRValueType::AsTensorType(Type);
      memset(&v77, 0, sizeof(v77));
      __p.__r_.__value_.__s.__data_[6] = 0;
      __p.__r_.__value_.__s.__data_[8] = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      LOBYTE(v74) = 0;
      v76 = 0;
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      __p.__r_.__value_.__s.__data_[4] = 0;
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      v21 = (*(*a2 + 56))(a2);
      (*(*a2 + 200))(&v66, a2);
      v22 = v66.__r_.__value_.__r.__words[0];
      if (v66.__r_.__value_.__l.__size_ == v66.__r_.__value_.__r.__words[0])
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = (*(*a2 + 176))(a2);
      if (*(v23 + 8) == *v23)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v24 = MIL::IRNamedValueType::GetType(**v23);
      v25 = MIL::IRValueType::AsTensorType(v24);
      ANEMachineIR::Validators::ValidateNeMatmul(LocationPtr, v21, v11, v15, v22, v25, &__p, &v67);
      v53.__r_.__value_.__r.__words[0] = &v66;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
      if (MIL::ValidationResult::IsGood(&v67))
      {
        std::string::basic_string[abi:ne200100]<0>(&v64, "ne_matmul");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v65 < 0)
        {
          operator delete(v64);
        }

        std::string::basic_string[abi:ne200100]<0>(&v61, "x");
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v60, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
        }

        else
        {
          v60 = v80;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (v62 < 0)
        {
          operator delete(v61);
        }

        std::string::basic_string[abi:ne200100]<0>(&v57, "y");
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v56, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
        }

        else
        {
          v56 = v79;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        if (v58 < 0)
        {
          operator delete(v57);
        }

        Name = MIL::IRNamedValueType::GetName(v18);
        if (*(Name + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v54, *Name, *(Name + 8));
        }

        else
        {
          v51 = *Name;
          v54.__r_.__value_.__r.__words[2] = *(Name + 16);
          *&v54.__r_.__value_.__l.__data_ = v51;
        }

        MIL::Builder::OperationBuilder::AddOutput();
        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v66.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66.__r_.__value_.__l.__size_);
        }

        v49 = v52;
      }

      else
      {
        MIL::MILResult::GetMessage(&v67);
        std::operator+<char>();
        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v66;
        }

        else
        {
          v40 = v66.__r_.__value_.__r.__words[0];
        }

        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v66.__r_.__value_.__l.__size_;
        }

        std::string::append(&v77, v40, size);
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v42 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v43 = std::string::append(&v53, "', violations: ");
        v44 = *&v43->__r_.__value_.__l.__data_;
        v66.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v66.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v77;
        }

        else
        {
          v45 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v46 = v77.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v66, v45, v46);
        v48 = *&v47->__r_.__value_.__l.__data_;
        *(v42 + 16) = *(&v47->__r_.__value_.__l + 2);
        *v42 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        v49 = v52;
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&v67);
      if (v76 == 1 && v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      if (v69 == 1 && __p.__r_.__value_.__l.__size_)
      {
        __p.__r_.__value_.__r.__words[2] = __p.__r_.__value_.__l.__size_;
        operator delete(__p.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      if (v78[0])
      {
        v78[1] = v78[0];
        operator delete(v78[0]);
      }
    }

    if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    v39 = v80.__r_.__value_.__r.__words[0];
  }

  else
  {
    *a3 = 6;
    v26 = a3 + 8;
    std::to_string(&v79, v12 >> 3);
    v27 = std::string::insert(&v79, 0, "Unsupported input rank ");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v80.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v80.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v80, " for op '");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = (*(*a2 + 56))(a2);
    v32 = *(v31 + 23);
    if (v32 >= 0)
    {
      v33 = v31;
    }

    else
    {
      v33 = *v31;
    }

    if (v32 >= 0)
    {
      v34 = *(v31 + 23);
    }

    else
    {
      v34 = *(v31 + 8);
    }

    v35 = std::string::append(&v67, v33, v34);
    v36 = *&v35->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = std::string::append(&__p, "'");
    v38 = *&v37->__r_.__value_.__l.__data_;
    *(v26 + 16) = *(&v37->__r_.__value_.__l + 2);
    *v26 = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    v39 = v79.__r_.__value_.__r.__words[0];
  }

  operator delete(v39);
LABEL_102:
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }
}

void sub_25999C5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  MEMORY[0x259CA8F00](&a48, a2, a3, a4, a5, a6, a7, a8);
  ANEMachineIR::Validators::NeMatmulParamValues::~NeMatmulParamValues(&a56);
  if (*(v56 - 225) < 0)
  {
    operator delete(*(v56 - 248));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v58 = *(v56 - 224);
  if (v58)
  {
    *(v56 - 216) = v58;
    operator delete(v58);
  }

  if (*(v56 - 177) < 0)
  {
    operator delete(*(v56 - 200));
  }

  if (*(v56 - 153) < 0)
  {
    operator delete(*(v56 - 176));
  }

  v59 = *(v56 - 152);
  if (v59)
  {
    *(v56 - 144) = v59;
    operator delete(v59);
  }

  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25999C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    JUMPOUT(0x25999C810);
  }

  JUMPOUT(0x25999C814);
}

void sub_25999C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    JUMPOUT(0x25999C800);
  }

  JUMPOUT(0x25999C804);
}

void MIL::ANEMachineIR::Interpreter::PeReduceCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 9)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 9)
  {
    goto LABEL_10;
  }

  if (*v6 != 0x63756465725F6570 || *(v6 + 8) != 101)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    std::string::basic_string[abi:ne200100]<0>(&v99, "pe_reduce");
    v10 = std::string::insert(&v99, 0, "Expected ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v100.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v100.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v100, " op. Got ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v101.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v101.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = (*(*a1 + 56))(a1);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = std::string::append(&v101, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v18->__r_.__value_.__l + 2);
    *v9 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v99.__r_.__value_.__r.__words[0];
LABEL_22:
      operator delete(v20);
      return;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v101, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v101);
  v22 = InterpretedTensorValue;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
    if (v22)
    {
      goto LABEL_26;
    }

LABEL_60:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    return;
  }

  if (!InterpretedTensorValue)
  {
    goto LABEL_60;
  }

LABEL_26:
  v23 = (*(*v22 + 32))(v22);
  v24 = (*(*v23 + 88))(v23);
  OutputType = MIL::IROperation::GetOutputType(a1);
  v26 = MIL::IRValueType::AsTensorType(OutputType);
  v27 = (*(*v26 + 88))(v26);
  v28 = (*(*v22 + 32))(v22);
  ANEMachineIR::Utils::GetStaticTensorShape(&v101.__r_.__value_.__l.__data_, v28, v29);
  v30 = MIL::IROperation::GetOutputType(a1);
  v31 = MIL::IRValueType::AsTensorType(v30);
  ANEMachineIR::Utils::GetStaticTensorShape(&v100.__r_.__value_.__l.__data_, v31, v32);
  v33 = MIL::IROperation::GetOutputType(a1);
  v34 = MIL::IRValueType::AsTensorType(v33);
  v35 = (*(*v34 + 16))(v34);
  std::string::basic_string[abi:ne200100]<0>(&v99, "reduction_scale");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v37 = 1.0;
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue))
    {
      v38 = MEMORY[0x259CA9400]();
      if (v38)
      {
        v37 = *v38;
      }
    }
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v99, "reduction_epsilon");
  v39 = MIL::IROperation::TryGetParameterValue();
  v40 = 0.0;
  if (v39)
  {
    if ((*(*v39 + 40))(v39))
    {
      v41 = MEMORY[0x259CA9400]();
      if (v41)
      {
        v40 = *v41;
      }
    }
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v97, "reduction");
  std::string::basic_string[abi:ne200100]<0>(&__p, "mean");
  v42 = MIL::IROperation::TryGetParameterValue();
  if (v42 && (*(*v42 + 40))(v42) && (v43 = MEMORY[0x259CA93D0]()) != 0)
  {
    if (*(v43 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v99, *v43, *(v43 + 8));
    }

    else
    {
      v44 = *v43;
      v99.__r_.__value_.__r.__words[2] = *(v43 + 16);
      *&v99.__r_.__value_.__l.__data_ = v44;
    }
  }

  else
  {
    v99 = __p;
    memset(&__p, 0, sizeof(__p));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v99.__r_.__value_.__l.__size_ == 3)
    {
      v47 = v99.__r_.__value_.__r.__words[0];
      if (*v99.__r_.__value_.__l.__data_ != 26989 || *(v99.__r_.__value_.__r.__words[0] + 2) != 110)
      {
        if (*v99.__r_.__value_.__l.__data_ != 24941 || *(v99.__r_.__value_.__r.__words[0] + 2) != 120)
        {
          goto LABEL_70;
        }

LABEL_78:
        v54 = 2;
        goto LABEL_79;
      }

LABEL_77:
      v54 = 1;
      goto LABEL_79;
    }

LABEL_76:
    v54 = 0;
    goto LABEL_79;
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) != 3)
  {
    goto LABEL_76;
  }

  if (LOWORD(v99.__r_.__value_.__l.__data_) == 26989 && v99.__r_.__value_.__s.__data_[2] == 110)
  {
    goto LABEL_77;
  }

  if (LOWORD(v99.__r_.__value_.__l.__data_) == 24941 && v99.__r_.__value_.__s.__data_[2] == 120)
  {
    goto LABEL_78;
  }

  v47 = &v99;
LABEL_70:
  v50 = bswap32(LOWORD(v47->__r_.__value_.__l.__data_) | (v47->__r_.__value_.__s.__data_[2] << 16));
  v51 = v50 >= 0x73756D00;
  v52 = v50 > 0x73756D00;
  v53 = !v51;
  if (v52 == v53)
  {
    v54 = 3;
  }

  else
  {
    v54 = 0;
  }

LABEL_79:
  std::string::basic_string[abi:ne200100]<0>(v97, "reduction_post_processing");
  v55 = MIL::IROperation::TryGetParameterValue();
  if (v98 < 0)
  {
    operator delete(v97[0]);
  }

  if (v55)
  {
    v56 = "post_processing not implemented.";
    v57 = 5;
LABEL_111:
    *a3 = v57;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), v56);
    goto LABEL_112;
  }

  if (v24 == 14)
  {
    switch(v27)
    {
      case 14:
        Data = MIL::IRTensorValue::GetDataView<unsigned char>();
        (*(*a1 + 200))(&v94, a1);
        v87 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v88 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v88);
        MIL::IRTensorValueType::MakeUInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v87, &v102);
        v89 = v102;
        v102 = 0;
        if (v89)
        {
          (*(*v89 + 1))(v89);
        }

        goto LABEL_141;
      case 9:
        v78 = MIL::IRTensorValue::GetDataView<unsigned char>();
        (*(*a1 + 200))(&v94, a1);
        v79 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v80 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v80);
        MIL::IRTensorValueType::MakeInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v79, &v102);
        v81 = v102;
        v102 = 0;
        if (v81)
        {
          (*(*v81 + 1))(v81);
        }

        goto LABEL_141;
      case 4:
        v66 = MIL::IRTensorValue::GetDataView<unsigned char>();
        (*(*a1 + 200))(&v94, a1);
        v67 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v68 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v68);
        MIL::IRTensorValueType::MakeFloat16Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v67, &v102);
        v69 = v102;
        v102 = 0;
        if (v69)
        {
          (*(*v69 + 1))(v69);
        }

        goto LABEL_141;
    }

    goto LABEL_109;
  }

  if (v24 == 9)
  {
    switch(v27)
    {
      case 14:
        v74 = MIL::IRTensorValue::GetDataView<signed char>();
        (*(*a1 + 200))(&v94, a1);
        v75 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v76 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v76);
        MIL::IRTensorValueType::MakeUInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v75, &v102);
        v77 = v102;
        v102 = 0;
        if (v77)
        {
          (*(*v77 + 1))(v77);
        }

        goto LABEL_141;
      case 9:
        v70 = MIL::IRTensorValue::GetDataView<signed char>();
        (*(*a1 + 200))(&v94, a1);
        v71 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v72 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v72);
        MIL::IRTensorValueType::MakeInt8Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v71, &v102);
        v73 = v102;
        v102 = 0;
        if (v73)
        {
          (*(*v73 + 1))(v73);
        }

        goto LABEL_141;
      case 4:
        v62 = MIL::IRTensorValue::GetDataView<signed char>();
        (*(*a1 + 200))(&v94, a1);
        v63 = v94;
        if (v95 == v94)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v64 = MIL::IROperation::GetOutputType(a1);
        MIL::IRValueType::AsTensorType(v64);
        MIL::IRTensorValueType::MakeFloat16Value();
        MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v63, &v102);
        v65 = v102;
        v102 = 0;
        if (v65)
        {
          (*(*v65 + 1))(v65);
        }

        goto LABEL_141;
    }

    goto LABEL_109;
  }

  if (v24 != 4)
  {
    v56 = "Unimplemented input dtype";
LABEL_110:
    v57 = 3;
    goto LABEL_111;
  }

  if (v27 == 14)
  {
    v90 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
    (*(*a1 + 200))(&v94, a1);
    v91 = v94;
    if (v95 == v94)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v92 = MIL::IROperation::GetOutputType(a1);
    MIL::IRValueType::AsTensorType(v92);
    MIL::IRTensorValueType::MakeUInt8Value();
    MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v91, &v102);
    v93 = v102;
    v102 = 0;
    if (v93)
    {
      (*(*v93 + 1))(v93);
    }

    goto LABEL_141;
  }

  if (v27 == 9)
  {
    v82 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
    (*(*a1 + 200))(&v94, a1);
    v83 = v94;
    if (v95 == v94)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v84 = MIL::IROperation::GetOutputType(a1);
    MIL::IRValueType::AsTensorType(v84);
    MIL::IRTensorValueType::MakeInt8Value();
    MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v83, &v102);
    v85 = v102;
    v102 = 0;
    if (v85)
    {
      (*(*v85 + 1))(v85);
    }

    goto LABEL_141;
  }

  if (v27 != 4)
  {
LABEL_109:
    v56 = "Unimplemented output dtype";
    goto LABEL_110;
  }

  v58 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
  (*(*a1 + 200))(&v94, a1);
  v59 = v94;
  if (v95 == v94)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v60 = MIL::IROperation::GetOutputType(a1);
  MIL::IRValueType::AsTensorType(v60);
  MIL::IRTensorValueType::MakeFloat16Value();
  MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v59, &v102);
  v61 = v102;
  v102 = 0;
  if (v61)
  {
    (*(*v61 + 1))(v61);
  }

LABEL_141:
  v102 = &v94;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v102);
  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
  if (v97[0])
  {
    v97[1] = v97[0];
    operator delete(v97[0]);
  }

LABEL_112:
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (v100.__r_.__value_.__r.__words[0])
  {
    v100.__r_.__value_.__l.__size_ = v100.__r_.__value_.__r.__words[0];
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  v20 = v101.__r_.__value_.__r.__words[0];
  if (v101.__r_.__value_.__r.__words[0])
  {
    v101.__r_.__value_.__l.__size_ = v101.__r_.__value_.__r.__words[0];
    goto LABEL_22;
  }
}

void sub_25999D744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v41 = __cxa_begin_catch(exception_object);
    *v37 = 4;
    v42 = (*(*v41 + 16))(v41);
    std::string::basic_string[abi:ne200100]<0>((v37 + 8), v42);
    __cxa_end_catch();
    JUMPOUT(0x25999D164);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a32)
  {
    operator delete(a32);
  }

  v43 = *(v38 - 128);
  if (v43)
  {
    *(v38 - 120) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v78 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<MIL::Fp16>::resize(a6, a2);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v13, v14, v15 >> 3);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __e, v78, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v78, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v74;
  v18 = *(v74 + 1);
  v19 = *(v74 + 2);
  Float = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v74)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v74 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v74 + 3);
  }

  if (v24 == *(v74 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v74 + 4);
  }

  v54 = *__p;
  if (!*__p)
  {
    goto LABEL_50;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v62 = v17;
  v51 = *(__p + 1);
  v52 = v18;
  v53 = *(__p + 2);
  v55 = v19;
  v56 = *(__p + 3);
  v48 = v17;
  v49 = *(__p + 4);
  v50 = v26;
  do
  {
    if (v24)
    {
      v63 = 0;
      v58 = v27 + v17;
      v59 = v27;
      v65 = v26;
      do
      {
        if (v21)
        {
          v66 = 0;
          v61 = v63 + v26;
          v68 = v18;
          do
          {
            if (v22)
            {
              v69 = 0;
              v70 = v19;
              v64 = v66 + v18;
              do
              {
                if (v23)
                {
                  v29 = 0;
                  v67 = v69 + v19;
                  do
                  {
                    v30 = 0.0;
                    if (v27 < v58)
                    {
                      v31 = v29 + v25;
                      v32 = v59;
                      do
                      {
                        v33 = v63;
                        if (v63 < v61)
                        {
                          do
                          {
                            v34 = v66;
                            if (v66 < v64)
                            {
                              do
                              {
                                v35 = v69;
                                if (v69 < v67)
                                {
                                  do
                                  {
                                    v36 = v25;
                                    v37 = v29;
                                    if (v29 < v31)
                                    {
                                      do
                                      {
                                        Float = MIL::Fp16::GetFloat(__e);
                                        v30 = v30 + v38;
                                        ++v37;
                                        --v25;
                                      }

                                      while (v25);
                                    }

                                    ++v35;
                                    v25 = v36;
                                  }

                                  while (v35 != v70);
                                }

                                ++v34;
                              }

                              while (v34 != v68);
                            }

                            ++v33;
                          }

                          while (v33 != v65);
                        }

                        ++v32;
                      }

                      while (v32 != v62);
                    }

                    if (a5)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(exception, "Function not implemented.");
                      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                    }

                    v39 = (v30 / v28) * a7;
                    v40 = 0.0;
                    v41 = 0.0;
                    v27 = v59;
                    if (v39 != 0.0)
                    {
                      __e[0] = 0;
                      v42 = frexp(v39, __e);
                      v43 = ldexp(v42, 11);
                      v41 = ldexp(round(v43), __e[0] - 11);
                    }

                    if ((v41 + a8) != 0.0)
                    {
                      __e[0] = 0;
                      v44 = frexp((v41 + a8), __e);
                      v45 = ldexp(v44, 11);
                      v40 = ldexp(round(v45), __e[0] - 11);
                    }

                    v46 = MIL::Fp16::FromFloat(Float, v40);
                    *(*a6 + 2 * Float) = v46;
                    ++v29;
                    v19 = v55;
                    v23 = v56;
                  }

                  while (v29 != v56);
                }

                ++v69;
                ++v70;
                v18 = v52;
                v22 = v53;
              }

              while (v69 != v53);
            }

            ++v68;
            v26 = v50;
            v21 = v51;
            ++v66;
          }

          while (v66 != v51);
        }

        ++v65;
        v17 = v48;
        v24 = v49;
        ++v63;
      }

      while (v63 != v49);
    }

    ++v27;
    ++v62;
  }

  while (v27 != v54);
  Float = __p;
  if (__p)
  {
LABEL_50:
    v72 = Float;
    operator delete(Float);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_25999E448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<unsigned char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v79 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v75, v13, v14, v15 >> 3);
  __p = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v75, v75 + 8, __e, v79, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v79, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v75, v75 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v75;
  v18 = *(v75 + 1);
  v19 = *(v75 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v75)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v75 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v75 + 3);
  }

  if (v24 == *(v75 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v75 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
LABEL_58:
    v73 = v20;
    operator delete(v20);
    goto LABEL_59;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      while (!v21)
      {
LABEL_55:
        ++v66;
        v17 = v49;
        v24 = v50;
        if (++v64 == v50)
        {
          goto LABEL_56;
        }
      }

      v67 = 0;
      v62 = v64 + v26;
      v69 = v18;
      while (!v22)
      {
LABEL_54:
        ++v69;
        v26 = v51;
        v21 = v52;
        if (++v67 == v52)
        {
          goto LABEL_55;
        }
      }

      v70 = 0;
      v71 = v19;
      v65 = v67 + v18;
      while (!v23)
      {
LABEL_53:
        ++v70;
        ++v71;
        v18 = v53;
        v22 = v54;
        if (v70 == v54)
        {
          goto LABEL_54;
        }
      }

      v29 = 0;
      v68 = v70 + v19;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v59)
        {
          v31 = v29 + v25;
          v32 = v60;
          do
          {
            v33 = v64;
            if (v64 < v62)
            {
              do
              {
                v34 = v67;
                if (v67 < v65)
                {
                  do
                  {
                    v35 = v70;
                    if (v70 < v68)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            MIL::Fp16::GetFloat(__e);
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v71);
                    }

                    ++v34;
                  }

                  while (v34 != v69);
                }

                ++v33;
              }

              while (v33 != v66);
            }

            ++v32;
          }

          while (v32 != v63);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v60;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          LOBYTE(v45) = -1;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          LOBYTE(v45) = 0;
        }

LABEL_52:
        v19 = v56;
        v23 = v57;
        if (v29 == v57)
        {
          goto LABEL_53;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 255)
      {
        v44 = 255;
      }

      v45 = v44 & ~(v44 >> 31);
      goto LABEL_52;
    }

LABEL_56:
    ++v27;
    ++v63;
  }

  while (v27 != v55);
  v20 = __p;
  if (__p)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }
}

void sub_25999EA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<signed char,MIL::Fp16>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v79 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v75, v13, v14, v15 >> 3);
  __p = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v75, v75 + 8, __e, v79, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v79, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v75, v75 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v75;
  v18 = *(v75 + 1);
  v19 = *(v75 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v75)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v75 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v75 + 3);
  }

  if (v24 == *(v75 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v75 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
LABEL_60:
    v73 = v20;
    operator delete(v20);
    goto LABEL_61;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      while (!v21)
      {
LABEL_57:
        ++v66;
        v17 = v49;
        v24 = v50;
        if (++v64 == v50)
        {
          goto LABEL_58;
        }
      }

      v67 = 0;
      v62 = v64 + v26;
      v69 = v18;
      while (!v22)
      {
LABEL_56:
        ++v69;
        v26 = v51;
        v21 = v52;
        if (++v67 == v52)
        {
          goto LABEL_57;
        }
      }

      v70 = 0;
      v71 = v19;
      v65 = v67 + v18;
      while (!v23)
      {
LABEL_55:
        ++v70;
        ++v71;
        v18 = v53;
        v22 = v54;
        if (v70 == v54)
        {
          goto LABEL_56;
        }
      }

      v29 = 0;
      v68 = v70 + v19;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v59)
        {
          v31 = v29 + v25;
          v32 = v60;
          do
          {
            v33 = v64;
            if (v64 < v62)
            {
              do
              {
                v34 = v67;
                if (v67 < v65)
                {
                  do
                  {
                    v35 = v70;
                    if (v70 < v68)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            MIL::Fp16::GetFloat(__e);
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v71);
                    }

                    ++v34;
                  }

                  while (v34 != v69);
                }

                ++v33;
              }

              while (v33 != v66);
            }

            ++v32;
          }

          while (v32 != v63);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v60;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          v45 = 127;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          v45 = 0x80;
        }

LABEL_54:
        v19 = v56;
        v23 = v57;
        if (v29 == v57)
        {
          goto LABEL_55;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 127)
      {
        v44 = 127;
      }

      if (v44 <= -128)
      {
        v45 = 0x80;
      }

      else
      {
        v45 = v44;
      }

      goto LABEL_54;
    }

LABEL_58:
    ++v27;
    ++v63;
  }

  while (v27 != v55);
  v20 = __p;
  if (__p)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }
}

void sub_25999F008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<MIL::Fp16,unsigned char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v77 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<MIL::Fp16>::resize(a6, a2);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v73, v13, v14, v15 >> 3);
  __p = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v73, v73 + 8, __e, v77, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v77, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v73, v73 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v73;
  v18 = *(v73 + 1);
  v19 = *(v73 + 2);
  Index = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v73)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v73 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v73 + 3);
  }

  if (v24 == *(v73 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v73 + 4);
  }

  v54 = *__p;
  if (!*__p)
  {
    goto LABEL_50;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v62 = v17;
  v51 = *(__p + 1);
  v52 = v18;
  v53 = *(__p + 2);
  v55 = v19;
  v56 = *(__p + 3);
  v48 = v17;
  v49 = *(__p + 4);
  v50 = v26;
  do
  {
    if (v24)
    {
      v63 = 0;
      v58 = v27 + v17;
      v59 = v27;
      v65 = v26;
      do
      {
        if (v21)
        {
          v66 = 0;
          v61 = v63 + v26;
          v67 = v18;
          do
          {
            if (v22)
            {
              v68 = 0;
              v69 = v19;
              v64 = v66 + v18;
              do
              {
                if (v23)
                {
                  v29 = 0;
                  do
                  {
                    v30 = 0.0;
                    if (v27 < v58)
                    {
                      v31 = v29 + v25;
                      v32 = v59;
                      do
                      {
                        v33 = v63;
                        if (v63 < v61)
                        {
                          do
                          {
                            v34 = v66;
                            if (v66 < v64)
                            {
                              do
                              {
                                v35 = v68;
                                if (v68 < v68 + v55)
                                {
                                  do
                                  {
                                    v36 = v25;
                                    v37 = v29;
                                    if (v29 < v31)
                                    {
                                      do
                                      {
                                        LOBYTE(v38) = *(a1 + Index);
                                        v30 = v30 + v38;
                                        ++v37;
                                        --v25;
                                      }

                                      while (v25);
                                    }

                                    ++v35;
                                    v25 = v36;
                                  }

                                  while (v35 != v69);
                                }

                                ++v34;
                              }

                              while (v34 != v67);
                            }

                            ++v33;
                          }

                          while (v33 != v65);
                        }

                        ++v32;
                      }

                      while (v32 != v62);
                    }

                    if (a5)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(exception, "Function not implemented.");
                      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                    }

                    v39 = (v30 / v28) * a7;
                    v40 = 0.0;
                    v41 = 0.0;
                    v27 = v59;
                    if (v39 != 0.0)
                    {
                      __e[0] = 0;
                      v42 = frexp(v39, __e);
                      v43 = ldexp(v42, 11);
                      v41 = ldexp(round(v43), __e[0] - 11);
                    }

                    if ((v41 + a8) != 0.0)
                    {
                      __e[0] = 0;
                      v44 = frexp((v41 + a8), __e);
                      v45 = ldexp(v44, 11);
                      v40 = ldexp(round(v45), __e[0] - 11);
                    }

                    v46 = MIL::Fp16::FromFloat(Index, v40);
                    *(*a6 + 2 * Index) = v46;
                    ++v29;
                    v23 = v56;
                  }

                  while (v29 != v56);
                }

                ++v68;
                ++v69;
                v18 = v52;
                v22 = v53;
                v19 = v55;
              }

              while (v68 != v53);
            }

            ++v67;
            v26 = v50;
            v21 = v51;
            ++v66;
          }

          while (v66 != v51);
        }

        ++v65;
        v17 = v48;
        v24 = v49;
        ++v63;
      }

      while (v63 != v49);
    }

    ++v27;
    ++v62;
  }

  while (v27 != v54);
  Index = __p;
  if (__p)
  {
LABEL_50:
    v71 = Index;
    operator delete(Index);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_25999F5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<unsigned char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v78 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v13, v14, v15 >> 3);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __e, v78, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v78, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v74;
  v18 = *(v74 + 1);
  v19 = *(v74 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v74)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v74 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v74 + 3);
  }

  if (v24 == *(v74 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v74 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
LABEL_58:
    v72 = v20;
    operator delete(v20);
    goto LABEL_59;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      while (!v21)
      {
LABEL_55:
        ++v66;
        v17 = v49;
        v24 = v50;
        if (++v64 == v50)
        {
          goto LABEL_56;
        }
      }

      v67 = 0;
      v62 = v64 + v26;
      v68 = v18;
      while (!v22)
      {
LABEL_54:
        ++v68;
        v26 = v51;
        v21 = v52;
        if (++v67 == v52)
        {
          goto LABEL_55;
        }
      }

      v69 = 0;
      v70 = v19;
      v65 = v67 + v18;
      while (!v23)
      {
LABEL_53:
        ++v69;
        ++v70;
        v18 = v53;
        v22 = v54;
        v19 = v56;
        if (v69 == v54)
        {
          goto LABEL_54;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v59)
        {
          v31 = v29 + v25;
          v32 = v60;
          do
          {
            v33 = v64;
            if (v64 < v62)
            {
              do
              {
                v34 = v67;
                if (v67 < v65)
                {
                  do
                  {
                    v35 = v69;
                    if (v69 < v69 + v56)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v70);
                    }

                    ++v34;
                  }

                  while (v34 != v68);
                }

                ++v33;
              }

              while (v33 != v66);
            }

            ++v32;
          }

          while (v32 != v63);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v60;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          LOBYTE(v45) = -1;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          LOBYTE(v45) = 0;
        }

LABEL_52:
        v23 = v57;
        if (v29 == v57)
        {
          goto LABEL_53;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 255)
      {
        v44 = 255;
      }

      v45 = v44 & ~(v44 >> 31);
      goto LABEL_52;
    }

LABEL_56:
    ++v27;
    ++v63;
  }

  while (v27 != v55);
  v20 = __p;
  if (__p)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_25999FB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<signed char,unsigned char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v78 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v74, v13, v14, v15 >> 3);
  __p = 0;
  v72 = 0;
  v73 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v74, v74 + 8, __e, v78, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v78, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v74, v74 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v74;
  v18 = *(v74 + 1);
  v19 = *(v74 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v74)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v74 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v74 + 3);
  }

  if (v24 == *(v74 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v74 + 4);
  }

  v55 = *__p;
  if (!*__p)
  {
LABEL_60:
    v72 = v20;
    operator delete(v20);
    goto LABEL_61;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v63 = v17;
  v52 = *(__p + 1);
  v53 = v18;
  v54 = *(__p + 2);
  v56 = v19;
  v57 = *(__p + 3);
  v49 = v17;
  v50 = *(__p + 4);
  v51 = v26;
  do
  {
    if (v24)
    {
      v64 = 0;
      v59 = v27 + v17;
      v60 = v27;
      v66 = v26;
      while (!v21)
      {
LABEL_57:
        ++v66;
        v17 = v49;
        v24 = v50;
        if (++v64 == v50)
        {
          goto LABEL_58;
        }
      }

      v67 = 0;
      v62 = v64 + v26;
      v68 = v18;
      while (!v22)
      {
LABEL_56:
        ++v68;
        v26 = v51;
        v21 = v52;
        if (++v67 == v52)
        {
          goto LABEL_57;
        }
      }

      v69 = 0;
      v70 = v19;
      v65 = v67 + v18;
      while (!v23)
      {
LABEL_55:
        ++v69;
        ++v70;
        v18 = v53;
        v22 = v54;
        v19 = v56;
        if (v69 == v54)
        {
          goto LABEL_56;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v59)
        {
          v31 = v29 + v25;
          v32 = v60;
          do
          {
            v33 = v64;
            if (v64 < v62)
            {
              do
              {
                v34 = v67;
                if (v67 < v65)
                {
                  do
                  {
                    v35 = v69;
                    if (v69 < v69 + v56)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            v30 = v30 + v38;
                            ++v37;
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v70);
                    }

                    ++v34;
                  }

                  while (v34 != v68);
                }

                ++v33;
              }

              while (v33 != v66);
            }

            ++v32;
          }

          while (v32 != v63);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v39 = (v30 / v28) * a7;
        v40 = 0.0;
        v41 = 0.0;
        v27 = v60;
        if (v39 != 0.0)
        {
          __e[0] = 0;
          v42 = frexp(v39, __e);
          v43 = ldexp(v42, 11);
          v41 = ldexp(round(v43), __e[0] - 11);
        }

        if ((v41 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v46 = frexp((v41 + a8), __e);
        v47 = ldexp(v46, 11);
        v40 = ldexp(round(v47), __e[0] - 11);
        if (v40 == INFINITY)
        {
          v45 = 127;
        }

        else
        {
          if (v40 != -INFINITY)
          {
            break;
          }

          v45 = 0x80;
        }

LABEL_54:
        v23 = v57;
        if (v29 == v57)
        {
          goto LABEL_55;
        }
      }

      v44 = llroundf(v40);
      if (v44 >= 127)
      {
        v44 = 127;
      }

      if (v44 <= -128)
      {
        v45 = 0x80;
      }

      else
      {
        v45 = v44;
      }

      goto LABEL_54;
    }

LABEL_58:
    ++v27;
    ++v63;
  }

  while (v27 != v55);
  v20 = __p;
  if (__p)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_2599A0164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<MIL::Fp16,signed char>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v76 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<MIL::Fp16>::resize(a6, a2);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v72, v13, v14, v15 >> 3);
  __p = 0;
  v70 = 0;
  v71 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v72, v72 + 8, __e, v76, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v76, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v72, v72 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v72;
  v18 = *(v72 + 1);
  v19 = *(v72 + 2);
  Index = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v72)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v72 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v72 + 3);
  }

  if (v24 == *(v72 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v72 + 4);
  }

  v53 = *__p;
  if (!*__p)
  {
    goto LABEL_50;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v61 = v17;
  v50 = *(__p + 1);
  v51 = v18;
  v52 = *(__p + 2);
  v54 = v19;
  v55 = *(__p + 3);
  v47 = v17;
  v48 = *(__p + 4);
  v49 = v26;
  do
  {
    if (v24)
    {
      v62 = 0;
      v57 = v27 + v17;
      v58 = v27;
      v64 = v26;
      do
      {
        if (v21)
        {
          v65 = 0;
          v60 = v62 + v26;
          v66 = v18;
          do
          {
            if (v22)
            {
              v67 = 0;
              v68 = v19;
              v63 = v65 + v18;
              do
              {
                if (v23)
                {
                  v29 = 0;
                  do
                  {
                    v30 = 0.0;
                    if (v27 < v57)
                    {
                      v31 = v29 + v25;
                      v32 = v58;
                      do
                      {
                        v33 = v62;
                        if (v62 < v60)
                        {
                          do
                          {
                            v34 = v65;
                            if (v65 < v63)
                            {
                              do
                              {
                                v35 = v67;
                                if (v67 < v67 + v54)
                                {
                                  do
                                  {
                                    v36 = v25;
                                    v37 = v29;
                                    if (v29 < v31)
                                    {
                                      do
                                      {
                                        v30 = v30 + *(a1 + Index);
                                        ++v37;
                                        --v25;
                                      }

                                      while (v25);
                                    }

                                    ++v35;
                                    v25 = v36;
                                  }

                                  while (v35 != v68);
                                }

                                ++v34;
                              }

                              while (v34 != v66);
                            }

                            ++v33;
                          }

                          while (v33 != v64);
                        }

                        ++v32;
                      }

                      while (v32 != v61);
                    }

                    if (a5)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(exception, "Function not implemented.");
                      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                    }

                    v38 = (v30 / v28) * a7;
                    v39 = 0.0;
                    v40 = 0.0;
                    v27 = v58;
                    if (v38 != 0.0)
                    {
                      __e[0] = 0;
                      v41 = frexp(v38, __e);
                      v42 = ldexp(v41, 11);
                      v40 = ldexp(round(v42), __e[0] - 11);
                    }

                    if ((v40 + a8) != 0.0)
                    {
                      __e[0] = 0;
                      v43 = frexp((v40 + a8), __e);
                      v44 = ldexp(v43, 11);
                      v39 = ldexp(round(v44), __e[0] - 11);
                    }

                    v45 = MIL::Fp16::FromFloat(Index, v39);
                    *(*a6 + 2 * Index) = v45;
                    ++v29;
                    v23 = v55;
                  }

                  while (v29 != v55);
                }

                ++v67;
                ++v68;
                v18 = v51;
                v22 = v52;
                v19 = v54;
              }

              while (v67 != v52);
            }

            ++v66;
            v26 = v49;
            v21 = v50;
            ++v65;
          }

          while (v65 != v50);
        }

        ++v64;
        v17 = v47;
        v24 = v48;
        ++v62;
      }

      while (v62 != v48);
    }

    ++v27;
    ++v61;
  }

  while (v27 != v53);
  Index = __p;
  if (__p)
  {
LABEL_50:
    v70 = Index;
    operator delete(Index);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void sub_2599A0700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<unsigned char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v77 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v73, v13, v14, v15 >> 3);
  __p = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v73, v73 + 8, __e, v77, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v77, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v73, v73 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v73;
  v18 = *(v73 + 1);
  v19 = *(v73 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v73)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v73 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v73 + 3);
  }

  if (v24 == *(v73 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v73 + 4);
  }

  v54 = *__p;
  if (!*__p)
  {
LABEL_58:
    v71 = v20;
    operator delete(v20);
    goto LABEL_59;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v62 = v17;
  v51 = *(__p + 1);
  v52 = v18;
  v53 = *(__p + 2);
  v55 = v19;
  v56 = *(__p + 3);
  v48 = v17;
  v49 = *(__p + 4);
  v50 = v26;
  do
  {
    if (v24)
    {
      v63 = 0;
      v58 = v27 + v17;
      v59 = v27;
      v65 = v26;
      while (!v21)
      {
LABEL_55:
        ++v65;
        v17 = v48;
        v24 = v49;
        if (++v63 == v49)
        {
          goto LABEL_56;
        }
      }

      v66 = 0;
      v61 = v63 + v26;
      v67 = v18;
      while (!v22)
      {
LABEL_54:
        ++v67;
        v26 = v50;
        v21 = v51;
        if (++v66 == v51)
        {
          goto LABEL_55;
        }
      }

      v68 = 0;
      v69 = v19;
      v64 = v66 + v18;
      while (!v23)
      {
LABEL_53:
        ++v68;
        ++v69;
        v18 = v52;
        v22 = v53;
        v19 = v55;
        if (v68 == v53)
        {
          goto LABEL_54;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v58)
        {
          v31 = v29 + v25;
          v32 = v59;
          do
          {
            v33 = v63;
            if (v63 < v61)
            {
              do
              {
                v34 = v66;
                if (v66 < v64)
                {
                  do
                  {
                    v35 = v68;
                    if (v68 < v68 + v55)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v69);
                    }

                    ++v34;
                  }

                  while (v34 != v67);
                }

                ++v33;
              }

              while (v33 != v65);
            }

            ++v32;
          }

          while (v32 != v62);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v38 = (v30 / v28) * a7;
        v39 = 0.0;
        v40 = 0.0;
        v27 = v59;
        if (v38 != 0.0)
        {
          __e[0] = 0;
          v41 = frexp(v38, __e);
          v42 = ldexp(v41, 11);
          v40 = ldexp(round(v42), __e[0] - 11);
        }

        if ((v40 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v45 = frexp((v40 + a8), __e);
        v46 = ldexp(v45, 11);
        v39 = ldexp(round(v46), __e[0] - 11);
        if (v39 == INFINITY)
        {
          LOBYTE(v44) = -1;
        }

        else
        {
          if (v39 != -INFINITY)
          {
            break;
          }

          LOBYTE(v44) = 0;
        }

LABEL_52:
        v23 = v56;
        if (v29 == v56)
        {
          goto LABEL_53;
        }
      }

      v43 = llroundf(v39);
      if (v43 >= 255)
      {
        v43 = 255;
      }

      v44 = v43 & ~(v43 >> 31);
      goto LABEL_52;
    }

LABEL_56:
    ++v27;
    ++v62;
  }

  while (v27 != v54);
  v20 = __p;
  if (__p)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_2599A0CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValuePeReduce<signed char,signed char>(uint64_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>)
{
  *v77 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (a2)
  {
    std::vector<unsigned char>::__append(a6, a2);
  }

  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = v14 - *a3;
  if (v15 != *(a4 + 8) - *a4)
  {
    __assert_rtn("ComputeValuePeReduce", "PeReduceCpu.cpp", 77, "x_rank == o_shape.size()");
  }

  v16 = v15 >> 3;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v73, v13, v14, v15 >> 3);
  __p = 0;
  v71 = 0;
  v72 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  if (v16 == 3)
  {
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v73, v73 + 8, __e, v77, 2);
    *__e = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&__p, __p + 8, __e, v77, 2);
  }

  else if (v16 == 4)
  {
    *__e = 1;
    std::vector<unsigned long long>::insert(&v73, v73 + 8, __e);
    *__e = 1;
    std::vector<unsigned long long>::insert(&__p, __p + 8, __e);
  }

  v17 = *v73;
  v18 = *(v73 + 1);
  v19 = *(v73 + 2);
  v20 = __p;
  v21 = *(__p + 1);
  v22 = *(__p + 2);
  v23 = *(__p + 3);
  v24 = *(__p + 4);
  if (*__p == *v73)
  {
    v17 = 1;
  }

  if (v21 == v18)
  {
    v18 = 1;
  }

  if (v22 == v19)
  {
    v19 = 1;
  }

  if (v23 == *(v73 + 3))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(v73 + 3);
  }

  if (v24 == *(v73 + 4))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(v73 + 4);
  }

  v54 = *__p;
  if (!*__p)
  {
LABEL_60:
    v71 = v20;
    operator delete(v20);
    goto LABEL_61;
  }

  v27 = 0;
  v28 = (v18 * v17 * v19 * v25 * v26);
  v62 = v17;
  v51 = *(__p + 1);
  v52 = v18;
  v53 = *(__p + 2);
  v55 = v19;
  v56 = *(__p + 3);
  v48 = v17;
  v49 = *(__p + 4);
  v50 = v26;
  do
  {
    if (v24)
    {
      v63 = 0;
      v58 = v27 + v17;
      v59 = v27;
      v65 = v26;
      while (!v21)
      {
LABEL_57:
        ++v65;
        v17 = v48;
        v24 = v49;
        if (++v63 == v49)
        {
          goto LABEL_58;
        }
      }

      v66 = 0;
      v61 = v63 + v26;
      v67 = v18;
      while (!v22)
      {
LABEL_56:
        ++v67;
        v26 = v50;
        v21 = v51;
        if (++v66 == v51)
        {
          goto LABEL_57;
        }
      }

      v68 = 0;
      v69 = v19;
      v64 = v66 + v18;
      while (!v23)
      {
LABEL_55:
        ++v68;
        ++v69;
        v18 = v52;
        v22 = v53;
        v19 = v55;
        if (v68 == v53)
        {
          goto LABEL_56;
        }
      }

      v29 = 0;
      while (1)
      {
        v30 = 0.0;
        if (v27 < v58)
        {
          v31 = v29 + v25;
          v32 = v59;
          do
          {
            v33 = v63;
            if (v63 < v61)
            {
              do
              {
                v34 = v66;
                if (v66 < v64)
                {
                  do
                  {
                    v35 = v68;
                    if (v68 < v68 + v55)
                    {
                      do
                      {
                        v36 = v25;
                        v37 = v29;
                        if (v29 < v31)
                        {
                          do
                          {
                            --v25;
                          }

                          while (v25);
                        }

                        ++v35;
                        v25 = v36;
                      }

                      while (v35 != v69);
                    }

                    ++v34;
                  }

                  while (v34 != v67);
                }

                ++v33;
              }

              while (v33 != v65);
            }

            ++v32;
          }

          while (v32 != v62);
        }

        if (a5)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Function not implemented.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v38 = (v30 / v28) * a7;
        v39 = 0.0;
        v40 = 0.0;
        v27 = v59;
        if (v38 != 0.0)
        {
          __e[0] = 0;
          v41 = frexp(v38, __e);
          v42 = ldexp(v41, 11);
          v40 = ldexp(round(v42), __e[0] - 11);
        }

        if ((v40 + a8) == 0.0)
        {
          break;
        }

        __e[0] = 0;
        v45 = frexp((v40 + a8), __e);
        v46 = ldexp(v45, 11);
        v39 = ldexp(round(v46), __e[0] - 11);
        if (v39 == INFINITY)
        {
          v44 = 127;
        }

        else
        {
          if (v39 != -INFINITY)
          {
            break;
          }

          v44 = 0x80;
        }

LABEL_54:
        v23 = v56;
        if (v29 == v56)
        {
          goto LABEL_55;
        }
      }

      v43 = llroundf(v39);
      if (v43 >= 127)
      {
        v43 = 127;
      }

      if (v43 <= -128)
      {
        v44 = 0x80;
      }

      else
      {
        v44 = v43;
      }

      goto LABEL_54;
    }

LABEL_58:
    ++v27;
    ++v62;
  }

  while (v27 != v54);
  v20 = __p;
  if (__p)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_2599A12C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 168);
  if (v36)
  {
    *(v34 - 160) = v36;
    operator delete(v36);
  }

  v37 = *a22;
  if (*a22)
  {
    *(a22 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::DelegateByNameOp::MakeWithDefaultTable()
{
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  operator new();
}

void sub_2599A1C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    MIL::ANEMachineIR::Interpreter::DelegateByNameOp::MakeWithDefaultTable();
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *MIL::ANEMachineIR::Interpreter::DelegateByNameOp::Run@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v8 = (*(*a2 + 56))(a2);
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>((a1 + 8), v8);
  if (v9)
  {
    return (**v9[5])(v9[5], a2, a3);
  }

  *a4 = 1;
  (*(*a2 + 56))(a2);
  return std::operator+<char>();
}

void MIL::ANEMachineIR::Interpreter::DelegateByNameOp::~DelegateByNameOp(MIL::ANEMachineIR::Interpreter::DelegateByNameOp *this)
{
  *this = &unk_286AB1928;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(this + 8);
}

{
  *this = &unk_286AB1928;
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(this + 8);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_2599A2234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2599A2388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A26A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A27A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A28B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A29B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A2FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A30F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A31F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2599A3300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::ANEMachineIR::Interpreter::InterpretedOp>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **MIL::ANEMachineIR::Interpreter::ComputedValueStore::TryGetValue(void *a1, uint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(a1, a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

const void **std::unordered_map<std::string,std::unique_ptr<MIL::IRTensorValue const>>::insert_or_assign[abi:ne200100]<std::unique_ptr<MIL::IRTensorValue const>>(void *a1, uint64_t *a2, const void **a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IRTensorValue const>>(a1, a2, a2, a3);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    v7 = *a3;
    *a3 = 0;
    v8 = v4[5];
    v5[5] = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  return v5;
}

const void *MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 120))(a2, a3, 0);
  if (!v4 || (v5 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(a1, v4)) == 0 || (result = v5[5]) == 0)
  {
    v7 = *(*MIL::IROperation::TryGetParameterValue() + 40);

    return v7();
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__emplace_unique_key_args<std::string,std::string const&,std::unique_ptr<MIL::IRTensorValue const>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>>>::__construct_node_hash<std::string const&,std::unique_ptr<MIL::IRTensorValue const>>();
  }

  while (1)
  {
    v14 = v13[1];
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
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_2599A3800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<MIL::IRTensorValue const>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRTensorValue const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<MIL::IRTensorValue const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void MilTranslator::WeightTranslator::~WeightTranslator(MilTranslator::WeightTranslator *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<MIL::Blob::StorageWriter>::~unique_ptr[abi:ne200100](this + 14);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::~__hash_table(this);
}

uint64_t *std::unique_ptr<MIL::Blob::StorageWriter>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x259CA8F80]();
    MEMORY[0x259CA9760](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t MilTranslator::WeightTranslator::WeightTranslator(uint64_t a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v10;
  }

  *(a1 + 104) = 0;
  if (a3)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = fopen(v11, "a");
  fclose(v12);
  return a1;
}

void sub_2599A3B50(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void MilTranslator::WeightTranslator::TargetProgramConstOpName(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, std::string::size_type a5@<X4>, uint64_t a6@<X5>, _DWORD *a7@<X8>)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v14 = (*(*a2 + 120))(a2, a3, 0);
  v15 = v14;
  __p = 0;
  v40 = 0uLL;
  if (v14)
  {
    v16 = 0;
    p_p = v14;
  }

  else
  {
    v36 = a1;
    v18 = a4;
    v19 = a5;
    (*(*a2 + 200))(v37, a2);
    v20 = v37[0];
    if (v37[1] == v37[0])
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v37[0] + 23) >= 0)
    {
      v21 = *(v37[0] + 23);
    }

    else
    {
      v21 = *(v37[0] + 8);
    }

    v22 = &v38;
    std::string::basic_string[abi:ne200100](&v38, v21 + 11);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v38.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      if (v20[23] >= 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = *v20;
      }

      memmove(v22, v23, v21);
    }

    strcpy(v22 + v21, "__ival_for_");
    v24 = *(a3 + 23);
    if (v24 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v24 >= 0)
    {
      v26 = *(a3 + 23);
    }

    else
    {
      v26 = *(a3 + 8);
    }

    v27 = std::string::append(&v38, v25, v26);
    v28 = v27->__r_.__value_.__r.__words[0];
    v42[0] = v27->__r_.__value_.__l.__size_;
    *(v42 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    *(&v40 + 7) = *(v42 + 7);
    __p = v28;
    *&v40 = v42[0];
    HIBYTE(v40) = v16;
    a5 = v19;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v41 = v37;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
    p_p = &__p;
    a4 = v18;
    a1 = v36;
  }

  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (v30 = (*(*ParameterValue + 40))(ParameterValue), (v31 = v30) != 0))
  {
    v32 = (*(*v30 + 32))(v30);
    v33 = (*(*v32 + 88))(v32);
    v34 = (*(*v31 + 32))(v31);
    ANEMachineIR::Utils::GetStaticTensorShape(&v38.__r_.__value_.__l.__data_, v34, v35);
    MilTranslator::WeightTranslator::TargetProgramConstOpName(a4, a1, p_p, v15 == 0, &v38, v33, a5, a7, a6);
    if (v38.__r_.__value_.__r.__words[0])
    {
      v38.__r_.__value_.__l.__size_ = v38.__r_.__value_.__r.__words[0];
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v16 = HIBYTE(v40);
  }

  else
  {
    *a7 = 11;
    std::operator+<char>();
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_2599A3F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char *a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  a27 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void MilTranslator::WeightTranslator::TargetProgramConstOpName(int __val@<W6>, uint64_t a2@<X0>, uint64_t a3@<X1>, char a4@<W2>, std::string::size_type **a5@<X3>, uint64_t a6@<X4>, std::string::size_type a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  BYTE8(v44) = 0;
  BYTE8(v45) = 0;
  memset(&v43, 0, sizeof(v43));
  MilTranslator::WeightTranslator::WeightRewriteDescriptionForEnum(&v40, __val, a5, a8, &v44, &v43);
  if (v40)
  {
    *a9 = v40;
    *(a9 + 8) = v41;
    *(a9 + 24) = v42;
    goto LABEL_55;
  }

  memset(&v38, 0, sizeof(v38));
  if ((a4 & 1) == 0)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, *a3, *(a3 + 8));
    }

    else
    {
      v33 = *a3;
    }

    *__p = v44;
    v35 = v45;
    v19 = std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::find<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>(a2, &v33);
    v20 = v19;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      if (v20)
      {
        goto LABEL_16;
      }
    }

    else if (v19)
    {
LABEL_16:
      std::string::operator=(&v38, v20 + 3);
      data = v20[4].__r_.__value_.__l.__data_;
      goto LABEL_17;
    }

    if (*(a2 + 112))
    {
      MilTranslator::WeightTranslator::WriteWeight(a2, a5, a6, &v44, &v38, a9);
      if (*a9)
      {
        goto LABEL_51;
      }

      if (*(a9 + 31) < 0)
      {
        operator delete(*(a9 + 8));
      }
    }

    else
    {
      if (*(a2 + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(a2 + 80), *(a2 + 88));
      }

      else
      {
        v33 = *(a2 + 80);
      }

      v26 = *(a2 + 104);
      __p[0] = v26;
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
        v26 = __p[0];
      }

      v38 = v33;
      data = v26;
      v27 = 1;
      if (a6 == 4)
      {
        v27 = 2;
      }

      for (i = *a5; i != a5[1]; ++i)
      {
        v29 = *i;
        v27 *= v29;
      }

      *(a2 + 104) += v27;
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *a3, *(a3 + 8));
    }

    else
    {
      v30 = *a3;
    }

    v31 = v44;
    v32 = v45;
    std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::pair[abi:ne200100]<true,0>(&v33, &v30, &v38);
    std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__emplace_unique_key_args<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>>(a2, &v33, &v33);
    if (v37 < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

LABEL_17:
    std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100]<MilTranslator::WeightTranslator::WeightFileInfo&,std::vector<unsigned long long>&,0>(&v33, &v38, &v43);
    v21 = std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::find<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>((a2 + 40), &v33.__r_.__value_.__l.__data_);
    if (__p[1])
    {
      *&v35 = __p[1];
      operator delete(__p[1]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      if (!v21)
      {
LABEL_36:
        v25 = *(*(a2 + 120) + 24);
        if (!v25)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v25 + 48))(&v33);
        if (*(a10 + 23) < 0)
        {
          operator delete(*a10);
        }

        *a10 = v33;
        MilTranslator::WeightTranslator::WriteConstOp(a2, &v43, a6, a10, &v38);
        if ((a4 & 1) == 0)
        {
          std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100]<MilTranslator::WeightTranslator::WeightFileInfo&,std::vector<unsigned long long>&,0>(&v30, &v38, &v43);
          std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::pair[abi:ne200100]<true,0>(&v33, &v30, a10);
          std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__emplace_unique_key_args<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>>((a2 + 40), &v33, &v33);
          if (v37 < 0)
          {
            operator delete(v36);
          }

          if (__p[1])
          {
            *&v35 = __p[1];
            operator delete(__p[1]);
          }

          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }

          if (*(&v31 + 1))
          {
            *&v32 = *(&v31 + 1);
            operator delete(*(&v31 + 1));
          }

          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }
        }

        *a9 = 0;
        std::string::basic_string[abi:ne200100]<0>((a9 + 8), &unk_259A4D977);
        goto LABEL_51;
      }
    }

    else if (!v21)
    {
      goto LABEL_36;
    }

    std::string::operator=(a10, v21 + 3);
    *a9 = 0;
    std::string::basic_string[abi:ne200100]<0>((a9 + 8), &unk_259A4D977);
    goto LABEL_51;
  }

  if (!*(a2 + 112))
  {
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, *(a2 + 80), *(a2 + 88));
      v17 = (a2 + 104);
      v18 = *(a2 + 104);
      __p[0] = v18;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v16 = __p;
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    else
    {
      v33 = *(a2 + 80);
      v16 = (a2 + 104);
      v17 = (a2 + 104);
    }

    v18 = *v16;
LABEL_30:
    v38 = v33;
    data = v18;
    v22 = 1;
    if (a6 == 4)
    {
      v22 = 2;
    }

    for (j = *a5; j != a5[1]; ++j)
    {
      v24 = *j;
      v22 *= v24;
    }

    *v17 += v22;
    goto LABEL_36;
  }

  MilTranslator::WeightTranslator::WriteWeight(a2, a5, a6, &v44, &v38, a9);
  if (!*a9)
  {
    if (*(a9 + 31) < 0)
    {
      operator delete(*(a9 + 8));
    }

    goto LABEL_36;
  }

LABEL_51:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

LABEL_55:
  if (v43.__r_.__value_.__r.__words[0])
  {
    v43.__r_.__value_.__l.__size_ = v43.__r_.__value_.__r.__words[0];
    operator delete(v43.__r_.__value_.__l.__data_);
  }
}

void sub_2599A44C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 137) < 0)
  {
    operator delete(*(v40 - 160));
  }

  v42 = *(v40 - 136);
  if (v42)
  {
    *(v40 - 128) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::WeightTranslator::WeightRewriteDescriptionForEnum(uint64_t *__return_ptr a1@<X8>, int __val@<W2>, void *a3@<X1>, std::string::size_type a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (__val != 1)
  {
    if (__val)
    {
      *a1 = 4;
      std::to_string(&__src, __val);
      v18 = std::string::insert(&__src, 0, "Weight rewrite not implemented for ");
    }

    else
    {
      v8 = *a3;
      v9 = a3[1];
      if (a4 != 1)
      {
        if (v9 == v8)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        if (*v8 % a4)
        {
          *a1 = 4;

          std::string::basic_string[abi:ne200100]<0>(a1 + 1, "num_groups in groupwise conv must divide kernel dimension.");
          return;
        }
      }

      v19 = v9 - v8;
      switch(v19)
      {
        case 3uLL:
          if (*v8 == a4)
          {
            *(a5 + 4) = 516;
            *a5 = 84082944;
          }

          else
          {
            *(a5 + 4) = 772;
            *a5 = 84017408;
            if (a4 != 1)
            {
              v23 = *(a5 + 24);
              *(a5 + 8) = 3;
              *(a5 + 16) = a4;
              if ((v23 & 1) == 0)
              {
                *(a5 + 24) = 1;
              }
            }
          }

          v24 = *a3;
          v25 = *(*a3 + 16);
          __src.__r_.__value_.__r.__words[0] = a4;
          __src.__r_.__value_.__l.__size_ = v25;
          __src.__r_.__value_.__r.__words[2] = v24[1];
          v29 = *v24 / a4;
          std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&a6->__r_.__value_.__l.__data_, &__src, &v30, 4uLL);
          goto LABEL_46;
        case 5uLL:
          if (*v8 == a4)
          {
            *(a5 + 4) = 2;
            *a5 = 84148993;
          }

          else
          {
            *(a5 + 4) = 258;
            *a5 = 84148992;
            if (a4 != 1)
            {
              v21 = *(a5 + 24);
              *(a5 + 8) = 1;
              *(a5 + 16) = a4;
              if ((v21 & 1) == 0)
              {
                *(a5 + 24) = 1;
              }
            }
          }

          __src.__r_.__value_.__r.__words[0] = a4;
          v22 = *a3;
          *&__src.__r_.__value_.__r.__words[1] = *(*a3 + 16);
          v29 = v22[4];
          v30 = v22[1];
          v31 = *v22 / a4;
          std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&a6->__r_.__value_.__l.__data_, &__src, &v32, 6uLL);
          goto LABEL_46;
        case 4uLL:
          if (*v8 == a4)
          {
            *(a5 + 4) = 259;
            *a5 = 84148736;
          }

          else
          {
            *(a5 + 4) = 515;
            *a5 = 84148480;
            if (a4 != 1)
            {
              v26 = *(a5 + 24);
              *(a5 + 8) = 2;
              *(a5 + 16) = a4;
              if ((v26 & 1) == 0)
              {
                *(a5 + 24) = 1;
              }
            }
          }

          __src.__r_.__value_.__r.__words[0] = a4;
          v27 = *a3;
          *&__src.__r_.__value_.__r.__words[1] = *(*a3 + 16);
          v29 = v27[1];
          v30 = *v27 / a4;
          std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&a6->__r_.__value_.__l.__data_, &__src, &v31, 5uLL);
LABEL_46:
          *a1 = 0;
          a1[2] = 0;
          a1[3] = 0;
          a1[1] = 0;
          return;
      }

      *a1 = 11;
      std::to_string(&__src, v19);
      v18 = std::string::insert(&__src, 0, "Illegal rank for conv weight translation: ");
    }

    goto LABEL_31;
  }

  v10 = a3[1] - *a3;
  if (v10 != 16)
  {
    *a1 = 4;
    std::to_string(&__src, v10 >> 3);
    v18 = std::string::insert(&__src, 0, "Not implemented rank for weight translation: ");
LABEL_31:
    v20 = *&v18->__r_.__value_.__l.__data_;
    a1[3] = v18->__r_.__value_.__r.__words[2];
    *(a1 + 1) = v20;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v17 = __src.__r_.__value_.__r.__words[0];
LABEL_33:
    operator delete(v17);
    return;
  }

  *(a5 + 4) = 1029;
  *a5 = 50462976;
  memset(&__src, 0, sizeof(__src));
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__src, *a3, a3[1], (a3[1] - *a3) >> 3);
  size = __src.__r_.__value_.__l.__size_;
  v11 = __src.__r_.__value_.__r.__words[0];
  if (__src.__r_.__value_.__r.__words[0] != __src.__r_.__value_.__l.__size_)
  {
    v13 = (__src.__r_.__value_.__l.__size_ - 8);
    if (__src.__r_.__value_.__l.__size_ - 8 > __src.__r_.__value_.__r.__words[0])
    {
      v14 = __src.__r_.__value_.__r.__words[0] + 8;
      do
      {
        v15 = *(v14 - 8);
        *(v14 - 8) = *v13;
        *v13-- = v15;
        v16 = v14 >= v13;
        v14 += 8;
      }

      while (!v16);
    }
  }

  if (&__src != a6)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a6, v11, size, (size - v11) >> 3);
    v11 = __src.__r_.__value_.__r.__words[0];
  }

  *a1 = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  if (v11)
  {
    __src.__r_.__value_.__l.__size_ = v11;
    v17 = v11;
    goto LABEL_33;
  }
}

void sub_2599A49D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::WeightTranslator::WriteWeight(uint64_t a1@<X0>, std::string::size_type **a2@<X1>, int a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a2[1] - *a2;
  v10 = v9 >> 3;
  if (v9)
  {
    v11 = v10 >= 6;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    *a7 = 13;
    std::to_string(&v134, v10);
    v12 = std::string::insert(&v134, 0, "Unexpected rank ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    *(a7 + 24) = *(&v12->__r_.__value_.__l + 2);
    *(a7 + 8) = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v14 = v134.__r_.__value_.__r.__words[0];
    goto LABEL_195;
  }

  __src = 0;
  v140 = 0;
  v141 = 0;
  std::vector<unsigned long long>::reserve(&__src, 6uLL);
  v19 = *a2;
  v20 = a2[1];
  if (v20 - *a2 != 48)
  {
    v132 = a1;
    v133 = a7;
    v21 = 0;
    v22 = v140;
    do
    {
      if (v22 >= v141)
      {
        v23 = __src;
        v24 = v22 - __src;
        v25 = (v22 - __src) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        v27 = v141 - __src;
        if ((v141 - __src) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&__src, v28);
        }

        v29 = v25;
        v30 = (8 * v25);
        v31 = &v30[-v29];
        *v30 = 1;
        v22 = (v30 + 1);
        memcpy(v31, v23, v24);
        v32 = __src;
        __src = v31;
        v140 = v22;
        v141 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v22 = 1;
        v22 += 8;
      }

      v140 = v22;
      ++v21;
      v19 = *a2;
      v20 = a2[1];
    }

    while (6 - (v20 - *a2) > v21);
    a7 = v133;
    a1 = v132;
  }

  v33 = 1;
  while (v19 != v20)
  {
    v134.__r_.__value_.__r.__words[0] = *v19;
    v34 = v134.__r_.__value_.__r.__words[0];
    std::vector<unsigned long long>::push_back[abi:ne200100](&__src, &v134);
    v33 *= v34;
    v19 += 8;
  }

  if (a3 == 4)
  {
    v136 = 0;
    v137 = 0;
    v138 = 0;
    std::vector<MIL::Fp16>::reserve(&v136, v33);
    LOWORD(v134.__r_.__value_.__l.__data_) = 0;
    std::vector<MIL::Fp16>::resize(&v136, v33, &v134);
    Data = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
    v150 = v35;
    v36 = *(a5 + 24);
    memset(&v134, 0, sizeof(v134));
    if (v36 == 1)
    {
      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v134, __src, v140, (v140 - __src) >> 3);
      v37 = *(a5 + 8);
      if (!*(a5 + 8))
      {
        goto LABEL_175;
      }

      v38 = v37 - 1;
      v39 = v134.__r_.__value_.__r.__words[0];
      if (v37 - 1 >= (v134.__r_.__value_.__l.__size_ - v134.__r_.__value_.__r.__words[0]) >> 3)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(v134.__r_.__value_.__r.__words[0] + 8 * v38) != 1)
      {
LABEL_175:
        *a7 = 13;
        std::to_string(&v148, v37);
        v130 = std::string::insert(&v148, 0, "Illegal weight dimension to split at index: ");
        v131 = *&v130->__r_.__value_.__l.__data_;
        *(a7 + 24) = *(&v130->__r_.__value_.__l + 2);
        *(a7 + 8) = v131;
        v130->__r_.__value_.__l.__size_ = 0;
        v130->__r_.__value_.__r.__words[2] = 0;
        v130->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_178;
        }

        v124 = v148.__r_.__value_.__r.__words[0];
        goto LABEL_177;
      }

      v40 = *(a5 + 16);
      *(v134.__r_.__value_.__r.__words[0] + 8 * v38) = v40;
      *(v39 + 8 * v37) /= v40;
      p_src = &v134;
    }

    else
    {
      p_src = &__src;
    }

    memset(&v148, 0, sizeof(v148));
    v145 = 1;
    std::vector<unsigned long long>::assign(&v148, 6uLL, &v145);
    v104 = p_src->__r_.__value_.__r.__words[0];
    v105 = *(p_src->__r_.__value_.__r.__words[0] + 40);
    v106 = v148.__r_.__value_.__r.__words[0];
    *(v148.__r_.__value_.__r.__words[0] + 32) = v105;
    v107 = v104[4] * v105;
    v106[3] = v107;
    v108 = v104[3] * v107;
    v106[2] = v108;
    v109 = v104[2] * v108;
    v106[1] = v109;
    *v106 = v104[1] * v109;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    std::vector<unsigned long long>::reserve(&v145, 6uLL);
    __p = 0;
    v143 = 0;
    v144 = 0;
    std::vector<unsigned long long>::reserve(&__p, 6uLL);
    for (i = 0; i != 6; ++i)
    {
      v111 = *(a5 + i);
      std::vector<unsigned long long>::push_back[abi:ne200100](&v145, (p_src->__r_.__value_.__r.__words[0] + 8 * v111));
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, (v148.__r_.__value_.__r.__words[0] + 8 * v111));
    }

    v112 = v145;
    v113 = *v145;
    if (*v145)
    {
      v114 = 0;
      v115 = 0;
      do
      {
        if (v112[1])
        {
          v116 = a1;
          v117 = 0;
          do
          {
            if (v112[2])
            {
              v118 = 0;
              v119 = v114;
              do
              {
                if (v112[3])
                {
                  v120 = 0;
                  do
                  {
                    if (v112[4])
                    {
                      v121 = 0;
                      do
                      {
                        if (v112[5])
                        {
                          v122 = 0;
                          do
                          {
                            v123 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::operator[](&Data, *__p * v115 + *(__p + 1) * v117 + *(__p + 2) * v118 + *(__p + 3) * v120 + *(__p + 4) * v121 + *(__p + 5) * v122);
                            *(v136 + v119) = *v123;
                            v114 = v119 + 1;
                            ++v122;
                            v112 = v145;
                            ++v119;
                          }

                          while (v122 < *(v145 + 5));
                          v119 = v114;
                        }

                        else
                        {
                          v114 = v119;
                        }

                        ++v121;
                      }

                      while (v121 < v112[4]);
                    }

                    else
                    {
                      v114 = v119;
                    }

                    ++v120;
                    v119 = v114;
                  }

                  while (v120 < v112[3]);
                }

                else
                {
                  v114 = v119;
                }

                ++v118;
                v119 = v114;
              }

              while (v118 < v112[2]);
            }

            ++v117;
          }

          while (v117 < v112[1]);
          v113 = *v112;
          a1 = v116;
        }

        ++v115;
      }

      while (v115 < v113);
    }

    *a7 = 0;
    std::string::basic_string[abi:ne200100]<0>((a7 + 8), &unk_259A4D977);
    if (__p)
    {
      v143 = __p;
      operator delete(__p);
    }

    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }

    v124 = v148.__r_.__value_.__r.__words[0];
    if (!v148.__r_.__value_.__r.__words[0])
    {
LABEL_178:
      if (v134.__r_.__value_.__r.__words[0])
      {
        v134.__r_.__value_.__l.__size_ = v134.__r_.__value_.__r.__words[0];
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      v47 = v136;
      if (!*a7)
      {
        v127 = MIL::Blob::StorageWriter::WriteData<MIL::Fp16>();
        if (*(a1 + 103) < 0)
        {
          goto LABEL_166;
        }

        goto LABEL_185;
      }

      goto LABEL_181;
    }

    v148.__r_.__value_.__l.__size_ = v148.__r_.__value_.__r.__words[0];
LABEL_177:
    operator delete(v124);
    goto LABEL_178;
  }

  if (a3 != 9)
  {
    if (a3 != 14)
    {
      *a7 = 13;
      v42 = a7 + 8;
      std::to_string(&v148, a3);
      v43 = std::string::insert(&v148, 0, "Dtype ");
      v44 = *&v43->__r_.__value_.__l.__data_;
      v134.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&v134.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v134, "not implemented for weight rewrite");
      v46 = *&v45->__r_.__value_.__l.__data_;
      *(v42 + 16) = *(&v45->__r_.__value_.__l + 2);
      *v42 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_193;
      }

      v47 = v148.__r_.__value_.__r.__words[0];
      goto LABEL_183;
    }

    v136 = 0;
    v137 = 0;
    v138 = 0;
    std::vector<unsigned char>::reserve(&v136, v33);
    v134.__r_.__value_.__s.__data_[0] = 0;
    if (v33 <= v137 - v136)
    {
      if (v33 < v137 - v136)
      {
        v137 = v136 + v33;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&v136, v33 - (v137 - v136), &v134);
    }

    Data = MIL::IRTensorValue::GetDataView<unsigned char>();
    v150 = v55;
    v56 = *(a5 + 24);
    memset(&v134, 0, sizeof(v134));
    if (v56 == 1)
    {
      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v134, __src, v140, (v140 - __src) >> 3);
      v57 = *(a5 + 8);
      if (!*(a5 + 8))
      {
        goto LABEL_167;
      }

      v58 = v57 - 1;
      v59 = v134.__r_.__value_.__r.__words[0];
      if (v57 - 1 >= (v134.__r_.__value_.__l.__size_ - v134.__r_.__value_.__r.__words[0]) >> 3)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      if (*(v134.__r_.__value_.__r.__words[0] + 8 * v58) != 1)
      {
LABEL_167:
        *a7 = 13;
        std::to_string(&v148, v57);
        v128 = std::string::insert(&v148, 0, "Illegal weight dimension to split at index: ");
        v129 = *&v128->__r_.__value_.__l.__data_;
        *(a7 + 24) = *(&v128->__r_.__value_.__l + 2);
        *(a7 + 8) = v129;
        v128->__r_.__value_.__l.__size_ = 0;
        v128->__r_.__value_.__r.__words[2] = 0;
        v128->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        v103 = v148.__r_.__value_.__r.__words[0];
        goto LABEL_169;
      }

      v60 = *(a5 + 16);
      *(v134.__r_.__value_.__r.__words[0] + 8 * v58) = v60;
      *(v59 + 8 * v57) /= v60;
      v61 = &v134;
    }

    else
    {
      v61 = &__src;
    }

    memset(&v148, 0, sizeof(v148));
    v145 = 1;
    std::vector<unsigned long long>::assign(&v148, 6uLL, &v145);
    v83 = v61->__r_.__value_.__r.__words[0];
    v84 = *(v61->__r_.__value_.__r.__words[0] + 40);
    v85 = v148.__r_.__value_.__r.__words[0];
    *(v148.__r_.__value_.__r.__words[0] + 32) = v84;
    v86 = v83[4] * v84;
    v85[3] = v86;
    v87 = v83[3] * v86;
    v85[2] = v87;
    v88 = v83[2] * v87;
    v85[1] = v88;
    *v85 = v83[1] * v88;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    std::vector<unsigned long long>::reserve(&v145, 6uLL);
    __p = 0;
    v143 = 0;
    v144 = 0;
    std::vector<unsigned long long>::reserve(&__p, 6uLL);
    for (j = 0; j != 6; ++j)
    {
      v90 = *(a5 + j);
      std::vector<unsigned long long>::push_back[abi:ne200100](&v145, (v61->__r_.__value_.__r.__words[0] + 8 * v90));
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, (v148.__r_.__value_.__r.__words[0] + 8 * v90));
    }

    v91 = v145;
    v92 = *v145;
    if (*v145)
    {
      v93 = 0;
      v94 = 0;
      do
      {
        if (v91[1])
        {
          v95 = a1;
          v96 = 0;
          do
          {
            if (v91[2])
            {
              v97 = 0;
              v98 = v93;
              do
              {
                if (v91[3])
                {
                  v99 = 0;
                  do
                  {
                    if (v91[4])
                    {
                      v100 = 0;
                      do
                      {
                        if (v91[5])
                        {
                          v101 = 0;
                          do
                          {
                            v102 = MIL::Util::Span<unsigned char const,18446744073709551615ul>::operator[](&Data, *__p * v94 + *(__p + 1) * v96 + *(__p + 2) * v97 + *(__p + 3) * v99 + *(__p + 4) * v100 + *(__p + 5) * v101);
                            *(v136 + v98) = *v102;
                            v93 = v98 + 1;
                            ++v101;
                            v91 = v145;
                            ++v98;
                          }

                          while (v101 < *(v145 + 5));
                          v98 = v93;
                        }

                        else
                        {
                          v93 = v98;
                        }

                        ++v100;
                      }

                      while (v100 < v91[4]);
                    }

                    else
                    {
                      v93 = v98;
                    }

                    ++v99;
                    v98 = v93;
                  }

                  while (v99 < v91[3]);
                }

                else
                {
                  v93 = v98;
                }

                ++v97;
                v98 = v93;
              }

              while (v97 < v91[2]);
            }

            ++v96;
          }

          while (v96 < v91[1]);
          v92 = *v91;
          a1 = v95;
        }

        ++v94;
      }

      while (v94 < v92);
    }

    *a7 = 0;
    std::string::basic_string[abi:ne200100]<0>((a7 + 8), &unk_259A4D977);
    if (__p)
    {
      v143 = __p;
      operator delete(__p);
    }

    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }

    v103 = v148.__r_.__value_.__r.__words[0];
    if (!v148.__r_.__value_.__r.__words[0])
    {
LABEL_170:
      if (v134.__r_.__value_.__r.__words[0])
      {
        v134.__r_.__value_.__l.__size_ = v134.__r_.__value_.__r.__words[0];
        operator delete(v134.__r_.__value_.__l.__data_);
      }

      v47 = v136;
      if (!*a7)
      {
        v127 = MIL::Blob::StorageWriter::WriteData<unsigned char>();
        if (*(a1 + 103) < 0)
        {
          goto LABEL_166;
        }

        goto LABEL_185;
      }

      goto LABEL_181;
    }

    v148.__r_.__value_.__l.__size_ = v148.__r_.__value_.__r.__words[0];
LABEL_169:
    operator delete(v103);
    goto LABEL_170;
  }

  v136 = 0;
  v137 = 0;
  v138 = 0;
  std::vector<unsigned char>::reserve(&v136, v33);
  v134.__r_.__value_.__s.__data_[0] = 0;
  if (v33 <= v137 - v136)
  {
    if (v33 < v137 - v136)
    {
      v137 = v136 + v33;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&v136, v33 - (v137 - v136), &v134);
  }

  Data = MIL::IRTensorValue::GetDataView<signed char>();
  v150 = v48;
  v49 = *(a5 + 24);
  memset(&v134, 0, sizeof(v134));
  if (v49 == 1)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v134, __src, v140, (v140 - __src) >> 3);
    v50 = *(a5 + 8);
    if (!*(a5 + 8))
    {
      goto LABEL_159;
    }

    v51 = v50 - 1;
    v52 = v134.__r_.__value_.__r.__words[0];
    if (v50 - 1 >= (v134.__r_.__value_.__l.__size_ - v134.__r_.__value_.__r.__words[0]) >> 3)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v134.__r_.__value_.__r.__words[0] + 8 * v51) != 1)
    {
LABEL_159:
      *a7 = 13;
      std::to_string(&v148, v50);
      v125 = std::string::insert(&v148, 0, "Illegal weight dimension to split at index: ");
      v126 = *&v125->__r_.__value_.__l.__data_;
      *(a7 + 24) = *(&v125->__r_.__value_.__l + 2);
      *(a7 + 8) = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      v82 = v148.__r_.__value_.__r.__words[0];
      goto LABEL_161;
    }

    v53 = *(a5 + 16);
    *(v134.__r_.__value_.__r.__words[0] + 8 * v51) = v53;
    *(v52 + 8 * v50) /= v53;
    v54 = &v134;
  }

  else
  {
    v54 = &__src;
  }

  memset(&v148, 0, sizeof(v148));
  v145 = 1;
  std::vector<unsigned long long>::assign(&v148, 6uLL, &v145);
  v62 = v54->__r_.__value_.__r.__words[0];
  v63 = *(v54->__r_.__value_.__r.__words[0] + 40);
  v64 = v148.__r_.__value_.__r.__words[0];
  *(v148.__r_.__value_.__r.__words[0] + 32) = v63;
  v65 = v62[4] * v63;
  v64[3] = v65;
  v66 = v62[3] * v65;
  v64[2] = v66;
  v67 = v62[2] * v66;
  v64[1] = v67;
  *v64 = v62[1] * v67;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  std::vector<unsigned long long>::reserve(&v145, 6uLL);
  __p = 0;
  v143 = 0;
  v144 = 0;
  std::vector<unsigned long long>::reserve(&__p, 6uLL);
  for (k = 0; k != 6; ++k)
  {
    v69 = *(a5 + k);
    std::vector<unsigned long long>::push_back[abi:ne200100](&v145, (v54->__r_.__value_.__r.__words[0] + 8 * v69));
    std::vector<unsigned long long>::push_back[abi:ne200100](&__p, (v148.__r_.__value_.__r.__words[0] + 8 * v69));
  }

  v70 = v145;
  v71 = *v145;
  if (*v145)
  {
    v72 = 0;
    v73 = 0;
    do
    {
      if (v70[1])
      {
        v74 = a1;
        v75 = 0;
        do
        {
          if (v70[2])
          {
            v76 = 0;
            v77 = v72;
            do
            {
              if (v70[3])
              {
                v78 = 0;
                do
                {
                  if (v70[4])
                  {
                    v79 = 0;
                    do
                    {
                      if (v70[5])
                      {
                        v80 = 0;
                        do
                        {
                          v81 = MIL::Util::Span<signed char const,18446744073709551615ul>::operator[](&Data, *__p * v73 + *(__p + 1) * v75 + *(__p + 2) * v76 + *(__p + 3) * v78 + *(__p + 4) * v79 + *(__p + 5) * v80);
                          *(v136 + v77) = *v81;
                          v72 = v77 + 1;
                          ++v80;
                          v70 = v145;
                          ++v77;
                        }

                        while (v80 < *(v145 + 5));
                        v77 = v72;
                      }

                      else
                      {
                        v72 = v77;
                      }

                      ++v79;
                    }

                    while (v79 < v70[4]);
                  }

                  else
                  {
                    v72 = v77;
                  }

                  ++v78;
                  v77 = v72;
                }

                while (v78 < v70[3]);
              }

              else
              {
                v72 = v77;
              }

              ++v76;
              v77 = v72;
            }

            while (v76 < v70[2]);
          }

          ++v75;
        }

        while (v75 < v70[1]);
        v71 = *v70;
        a1 = v74;
      }

      ++v73;
    }

    while (v73 < v71);
  }

  *a7 = 0;
  std::string::basic_string[abi:ne200100]<0>((a7 + 8), &unk_259A4D977);
  if (__p)
  {
    v143 = __p;
    operator delete(__p);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  v82 = v148.__r_.__value_.__r.__words[0];
  if (v148.__r_.__value_.__r.__words[0])
  {
    v148.__r_.__value_.__l.__size_ = v148.__r_.__value_.__r.__words[0];
LABEL_161:
    operator delete(v82);
  }

LABEL_162:
  if (v134.__r_.__value_.__r.__words[0])
  {
    v134.__r_.__value_.__l.__size_ = v134.__r_.__value_.__r.__words[0];
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  v47 = v136;
  if (!*a7)
  {
    v127 = MIL::Blob::StorageWriter::WriteData<unsigned char>();
    if (*(a1 + 103) < 0)
    {
LABEL_166:
      std::string::__init_copy_ctor_external(&v134, *(a1 + 80), *(a1 + 88));
LABEL_186:
      v135 = v127;
      if (*(a6 + 23) < 0)
      {
        operator delete(*a6);
        v127 = v135;
      }

      *a6 = v134;
      *(a6 + 24) = v127;
      if (*(a7 + 31) < 0)
      {
        operator delete(*(a7 + 8));
      }

      if (v136)
      {
        v137 = v136;
        operator delete(v136);
      }

      *a7 = 0;
      std::string::basic_string[abi:ne200100]<0>((a7 + 8), &unk_259A4D977);
      goto LABEL_193;
    }

LABEL_185:
    v134 = *(a1 + 80);
    goto LABEL_186;
  }

LABEL_181:
  if (v47)
  {
    v137 = v47;
LABEL_183:
    operator delete(v47);
  }

LABEL_193:
  v14 = __src;
  if (!__src)
  {
    return;
  }

  v140 = __src;
LABEL_195:
  operator delete(v14);
}

void sub_2599A57BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (*(v32 + 31) < 0)
  {
    operator delete(*(v32 + 8));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void MilTranslator::WeightTranslator::WriteConstOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MIL::Builder::BlockBuilder::GetContext(&v19, *(a1 + 136));
  std::string::basic_string[abi:ne200100]<0>(&v15, "const");
  v13 = 0;
  v14 = 0;
  MIL::Builder::BlockBuilder::AddOperation();
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v15, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  MIL::IRTensorValueType::Make();
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a4, *(a4 + 8));
  }

  else
  {
    v11 = *a4;
  }

  MIL::Builder::OperationBuilder::AddOutput();
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  MIL::IRTensorValueType::MakeValueFromBlobFile();
  std::string::basic_string[abi:ne200100]<0>(&__p, "val");
  if (v15)
  {
    operator new();
  }

  v15 = 0;
  MIL::Builder::OperationBuilder::SetAttribute();
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  v7 = v15;
  v15 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_2599A5BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(v29 - 56);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::resize(void *result, unint64_t a2, __int16 *a3)
{
  v3 = (result[1] - *result) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<MIL::Fp16>::__append(result, a2 - v3, a3);
  }
}

std::string *std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 24);
  *&this[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  *&this[1].__r_.__value_.__l.__data_ = v7;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[3].__r_.__value_.__r.__words[0] = *(a3 + 2);
    *&this[2].__r_.__value_.__r.__words[1] = v8;
  }

  this[3].__r_.__value_.__l.__size_ = *(a3 + 3);
  return this;
}

void sub_2599A5DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::~pair(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100]<MilTranslator::WeightTranslator::WeightFileInfo&,std::vector<unsigned long long>&,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = v7;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&this[1].__r_.__value_.__l.__size_, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  return this;
}

void sub_2599A5E80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::pair[abi:ne200100]<true,0>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100](a1, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v5;
  }

  return a1;
}

std::string *std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[0] = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  return this;
}

void sub_2599A5F78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>,0>(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>::~pair((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::find<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>(void *a1, uint64_t a2)
{
  v4 = MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(a1, a2);
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
      v13 = *(i + 39);
      if (v13 >= 0)
      {
        v14 = *(i + 39);
      }

      else
      {
        v14 = i[3];
      }

      v15 = *(a2 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v14 == v15)
      {
        v17 = v13 >= 0 ? (i + 2) : i[2];
        v18 = v16 >= 0 ? a2 : *a2;
        if (!memcmp(v17, v18, v14) && MilTranslator::WeightTranslator::WeightRewriteDescription::operator==((i + 5), a2 + 24))
        {
          return i;
        }
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

unint64_t MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(uint64_t a1, uint64_t a2)
{
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&v7, a2);
  for (i = 0; i != 6; ++i)
  {
    v3 ^= MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const&)const::filter[i] * *(a2 + 24 + i);
  }

  v5 = *(a2 + 48);
  result = v3 ^ v5;
  if (v5)
  {
    result ^= (29 * *(a2 + 40)) ^ (23 * *(a2 + 32));
  }

  return result;
}

BOOL MilTranslator::WeightTranslator::WeightRewriteDescription::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v3 = v4 == *(a2 + 24);
  if (v4 == *(a2 + 24) && v4 != 0)
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      return *(a1 + 16) == *(a2 + 16);
    }

    return 0;
  }

  return v3;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__emplace_unique_key_args<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher::operator()(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
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
LABEL_31:
    std::__hash_table<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::__unordered_map_hasher<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,true>,std::__unordered_map_equal<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,std::equal_to<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>>,MilTranslator::WeightTranslator::WeightRewriteDescriptionPairHasher,true>,std::allocator<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>>>::__construct_node_hash<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>>();
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
      goto LABEL_31;
    }

LABEL_30:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  v14 = *(v12 + 39);
  if (v14 >= 0)
  {
    v15 = *(v12 + 39);
  }

  else
  {
    v15 = v12[3];
  }

  v16 = *(a2 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 8);
  }

  if (v15 != v16)
  {
    goto LABEL_30;
  }

  v18 = v14 >= 0 ? (v12 + 2) : v12[2];
  v19 = v17 >= 0 ? a2 : *a2;
  if (memcmp(v18, v19, v15) || !MilTranslator::WeightTranslator::WeightRewriteDescription::operator==((v12 + 5), a2 + 24))
  {
    goto LABEL_30;
  }

  return v12;
}

void sub_2599A6610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription>,MilTranslator::WeightTranslator::WeightFileInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::pair<std::string,MilTranslator::WeightTranslator::WeightRewriteDescription> const,MilTranslator::WeightTranslator::WeightFileInfo>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  *&this[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  v6 = *(a2 + 56);
  this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
  *&this[2].__r_.__value_.__r.__words[1] = v6;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  this[3].__r_.__value_.__l.__size_ = *(a2 + 10);
  return this;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::find<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>(void *a1, const void **a2)
{
  v4 = MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(a1, a2);
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

  v11 = *v10;
  if (*v10)
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = a2[3];
    __s2 = a2[4];
    v16 = (a2[5] - __s2);
    do
    {
      v17 = v11[1];
      if (v17 == v6)
      {
        v18 = *(v11 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v11[3];
        }

        if (v18 == v13)
        {
          v20 = v19 >= 0 ? (v11 + 2) : v11[2];
          if (!memcmp(v20, v14, v13) && v11[5] == v15)
          {
            v21 = v11[6];
            if ((v11[7] - v21) == v16 && !memcmp(v21, __s2, v16))
            {
              return v11;
            }
          }
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v17 >= *&v5)
          {
            v17 %= *&v5;
          }
        }

        else
        {
          v17 &= *&v5 - 1;
        }

        if (v17 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = std::__string_hash<char>::operator()[abi:ne200100](&v11, a2);
  v4 = a2[4];
  result = a2[3] ^ v3;
  v6 = a2[5];
  if (v4 != v6)
  {
    v7 = 0;
    v8 = &MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const&)const::filter;
    do
    {
      v9 = -24 * (v7 / 6);
      v10 = *v4++;
      ++v7;
      result ^= v10 * *&v8[v9];
      v8 += 4;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__emplace_unique_key_args<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MilTranslator::WeightTranslator::WeightInfoShapePairHasher::operator()(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_34;
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
LABEL_34:
    std::__hash_table<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::__unordered_map_hasher<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,true>,std::__unordered_map_equal<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,std::equal_to<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>>,MilTranslator::WeightTranslator::WeightInfoShapePairHasher,true>,std::allocator<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>>>::__construct_node_hash<std::pair<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>> const,std::string>>();
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  v24 = *(a2 + 24);
  __s2 = *(a2 + 32);
  v16 = *(a2 + 40) - __s2;
  while (1)
  {
    v17 = v12[1];
    if (v17 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v17 >= *&v7)
      {
        v17 %= *&v7;
      }
    }

    else
    {
      v17 &= *&v7 - 1;
    }

    if (v17 != v10)
    {
      goto LABEL_34;
    }

LABEL_33:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_34;
    }
  }

  v18 = *(v12 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v12[3];
  }

  if (v18 != v14)
  {
    goto LABEL_33;
  }

  v20 = v19 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v20, v15, v14))
  {
    goto LABEL_33;
  }

  if (v12[5] != v24)
  {
    goto LABEL_33;
  }

  v21 = v12[6];
  if (v12[7] - v21 != v16 || memcmp(v21, __s2, v16))
  {
    goto LABEL_33;
  }

  return v12;
}

void sub_2599A6C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2599A6CFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<MilTranslator::WeightTranslator::WeightFileInfo,std::vector<unsigned long long>>,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_pointer<MIL::IRTensorValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<MIL::Fp16>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BEB0)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BEA0)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BF60)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_259A3BF50))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BEB0)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BEA0)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BF60)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_259A3BF50))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void *std::vector<unsigned long long>::assign(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_259A3BEB0)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_259A3BEB0)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void **std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}