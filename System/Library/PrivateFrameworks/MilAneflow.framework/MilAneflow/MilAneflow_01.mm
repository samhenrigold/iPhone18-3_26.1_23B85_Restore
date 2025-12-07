void sub_25990E2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_86;
  }

  v78 = a9;
  v32 = 0;
  v64 = *(__p + 1);
  v66 = *(__p + 2);
  v68 = *(__p + 3);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v33 = *(v89 + 4);
  v67 = *(v89 + 3);
  v76 = *(v87 + 1);
  v77 = *v87;
  v74 = *(v87 + 3);
  v75 = *(v87 + 2);
  v72 = *v85;
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v34 = *(v85 + 4);
  do
  {
    if (v64)
    {
      for (i = 0; i != v64; ++i)
      {
        if (v66)
        {
          for (j = 0; j != v66; ++j)
          {
            if (v68)
            {
              for (k = 0; k != v68; ++k)
              {
                if (v81)
                {
                  for (m = 0; m != v81; ++m)
                  {
                    if (a2)
                    {
                      v41 = v40;
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = 1.0;
                    }

                    v44 = v39;
                    if (v39 > 65536.0)
                    {
                      v44 = 65536.0;
                    }

                    if (v44 < -65536.0)
                    {
                      v44 = -65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = 65536.0;
                    }

                    if (v43 <= 65536.0)
                    {
                      v46 = v43;
                    }

                    else
                    {
                      v46 = 65536.0;
                    }

                    v47 = v31 * v44;
                    v48 = 0.0;
                    v49 = 0.0;
                    if (v47 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v47, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v45 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v46 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v46 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      v59 = 127;
                    }

                    else if (v58 == -INFINITY)
                    {
                      v59 = 0x80;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 127)
                      {
                        v60 = 127;
                      }

                      if (v60 <= -128)
                      {
                        v59 = 0x80;
                      }

                      else
                      {
                        v59 = v60;
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

    ++v32;
  }

  while (v32 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_86:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_25990EA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v19 = a5[1];
    if (*a5 != v19)
    {
      v20 = a4[1];
      if (*a4 != v20 && v20 - *a4 != v19 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v21 = a6[1];
    if (*a6 != v21)
    {
      v22 = a4[1];
      if (*a4 != v22 && v22 - *a4 != v21 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<MIL::Fp16>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v24 = __p;
  v25 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v25 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = 65536.0;
  if (a10 <= 65536.0)
  {
    v29 = a10;
  }

  if (v29 >= -65536.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_82;
  }

  v31 = a2;
  v32 = 0;
  v33 = *(__p + 1);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v66 = *(__p + 2);
  v67 = *(v89 + 3);
  v68 = *(__p + 3);
  v34 = *(v89 + 4);
  v77 = *v87;
  v76 = *(v87 + 1);
  v75 = *(v87 + 2);
  v74 = *(v87 + 3);
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v72 = *v85;
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v35 = *(v85 + 4);
  v64 = v33;
  do
  {
    if (v33)
    {
      v36 = 0;
      do
      {
        if (v66)
        {
          for (i = 0; i != v66; ++i)
          {
            if (v68)
            {
              for (j = 0; j != v68; ++j)
              {
                if (v81)
                {
                  for (k = 0; k != v81; ++k)
                  {
                    if (v31)
                    {
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v42 = 1.0;
                    }

                    v43 = v40;
                    if (v40 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 < -65536.0)
                    {
                      v43 = -65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v44 = v41;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = -65536.0;
                    }

                    if (v42 > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v42 >= -65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    v47 = v30 * v43;
                    v48 = 0.0;
                    v49 = 0.0;
                    if (v47 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v47, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v45 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v46 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v46 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    v58 = std::function<float ()(float)>::operator()(a8, v55);
                    v60 = MIL::Fp16::FromFloat(v58, v59);
                  }
                }
              }
            }
          }
        }

        ++v36;
        v33 = v64;
      }

      while (v36 != v64);
    }

    ++v32;
  }

  while (v32 != v62);
  v24 = __p;
  if (__p)
  {
LABEL_82:
    v84 = v24;
    operator delete(v24);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_25990F184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a30;
  if (*a30)
  {
    *(a30 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char,unsigned char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<unsigned char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v84 - __p;
  if (v84 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v90 - v89;
  if (v90 == v89)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v88 - v87;
  if (v88 == v87)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v86 - v85;
  if (v86 == v85)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v62 = *__p;
  if (!*__p)
  {
    goto LABEL_89;
  }

  v32 = a2;
  v78 = a9;
  v33 = 0;
  v64 = *(__p + 1);
  v66 = *(__p + 2);
  v68 = *(__p + 3);
  v81 = *(__p + 4);
  v61 = *v89;
  v63 = *(v89 + 1);
  v65 = *(v89 + 2);
  v34 = *(v89 + 4);
  v67 = *(v89 + 3);
  v76 = *(v87 + 1);
  v77 = *v87;
  v74 = *(v87 + 3);
  v75 = *(v87 + 2);
  v72 = *v85;
  v73 = *(v87 + 4);
  v71 = *(v85 + 1);
  v69 = *(v85 + 3);
  v70 = *(v85 + 2);
  v35 = *(v85 + 4);
  do
  {
    if (v64)
    {
      for (i = 0; i != v64; ++i)
      {
        if (v66)
        {
          for (j = 0; j != v66; ++j)
          {
            if (v68)
            {
              for (k = 0; k != v68; ++k)
              {
                if (v81)
                {
                  for (m = 0; m != v81; ++m)
                  {
                    if (v32)
                    {
                    }

                    else
                    {
                      v41 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v42 = 1.0;
                    }

                    v43 = v40;
                    if (v40 > 65536.0)
                    {
                      v43 = 65536.0;
                    }

                    if (v43 < -65536.0)
                    {
                      v43 = -65536.0;
                    }

                    if (v41 <= 65536.0)
                    {
                      v44 = v41;
                    }

                    else
                    {
                      v44 = 65536.0;
                    }

                    if (v44 >= -65536.0)
                    {
                      v45 = v44;
                    }

                    else
                    {
                      v45 = -65536.0;
                    }

                    if (v42 > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v42 >= -65536.0)
                    {
                      v46 = v42;
                    }

                    else
                    {
                      v46 = -65536.0;
                    }

                    v47 = v31 * v43;
                    v48 = 0.0;
                    v49 = 0.0;
                    if (v47 != 0.0)
                    {
                      __e[0] = 0;
                      v50 = frexp(v47, __e);
                      v51 = ldexp(v50, 11);
                      v49 = ldexp(round(v51), __e[0] - 11);
                    }

                    v52 = (v45 * a11) + v49;
                    if (v52 != 0.0)
                    {
                      __e[0] = 0;
                      v53 = frexp(v52, __e);
                      v54 = ldexp(v53, 11);
                      v48 = ldexp(round(v54), __e[0] - 11);
                    }

                    v55 = 0.0;
                    if ((v46 * v48) != 0.0)
                    {
                      __e[0] = 0;
                      v56 = frexp((v46 * v48), __e);
                      v57 = ldexp(v56, 11);
                      v55 = ldexp(round(v57), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v55);
                    if (v58 == INFINITY)
                    {
                      LOBYTE(v59) = -1;
                    }

                    else if (v58 == -INFINITY)
                    {
                      LOBYTE(v59) = 0;
                    }

                    else
                    {
                      v60 = llroundf(v58);
                      if (v60 >= 255)
                      {
                        v60 = 255;
                      }

                      v59 = v60 & ~(v60 >> 31);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    ++v33;
  }

  while (v33 != v62);
  v25 = __p;
  if (__p)
  {
LABEL_89:
    v84 = v25;
    operator delete(v25);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

void sub_25990F930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char,signed char,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X3>, const void **a5@<X4>, const void **a6@<X5>, uint64_t **a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  if (a11 != 1.0 && a11 != -1.0)
  {
  }

  if (a2)
  {
    v20 = a5[1];
    if (*a5 != v20)
    {
      v21 = a4[1];
      if (*a4 != v21 && v21 - *a4 != v20 - *a5)
      {
      }
    }
  }

  if (a3)
  {
    v22 = a6[1];
    if (*a6 != v22)
    {
      v23 = a4[1];
      if (*a4 != v23 && v23 - *a4 != v22 - *a6)
      {
      }
    }
  }

  NumberOfElementsFromStaticTensorShape = ANEMachineIR::Utils::GetNumberOfElementsFromStaticTensorShape(a7);
  std::vector<signed char>::vector[abi:ne200100](a9, NumberOfElementsFromStaticTensorShape);
  v25 = __p;
  v26 = v83 - __p;
  if (v83 == __p)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v26 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v89 - v88;
  if (v89 == v88)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v27 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v27 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = v87 - v86;
  if (v87 == v86)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v28 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v28 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v85 - v84;
  if (v85 == v84)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 16)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v29 >> 3) <= 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v29 == 32)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v30 = 65536.0;
  if (a10 <= 65536.0)
  {
    v30 = a10;
  }

  if (v30 >= -65536.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = -65536.0;
  }

  v61 = *__p;
  if (!*__p)
  {
    goto LABEL_91;
  }

  v77 = a9;
  v32 = 0;
  v63 = *(__p + 1);
  v65 = *(__p + 2);
  v67 = *(__p + 3);
  v80 = *(__p + 4);
  v60 = *v88;
  v62 = *(v88 + 1);
  v64 = *(v88 + 2);
  v33 = *(v88 + 4);
  v66 = *(v88 + 3);
  v75 = *(v86 + 1);
  v76 = *v86;
  v73 = *(v86 + 3);
  v74 = *(v86 + 2);
  v71 = *v84;
  v72 = *(v86 + 4);
  v70 = *(v84 + 1);
  v68 = *(v84 + 3);
  v69 = *(v84 + 2);
  v34 = *(v84 + 4);
  do
  {
    if (v63)
    {
      for (i = 0; i != v63; ++i)
      {
        if (v65)
        {
          for (j = 0; j != v65; ++j)
          {
            if (v67)
            {
              for (k = 0; k != v67; ++k)
              {
                if (v80)
                {
                  for (m = 0; m != v80; ++m)
                  {
                    if (a2)
                    {
                    }

                    else
                    {
                      v40 = 0.0;
                    }

                    if (a3)
                    {
                    }

                    else
                    {
                      v41 = 1.0;
                    }

                    v42 = v39;
                    if (v39 > 65536.0)
                    {
                      v42 = 65536.0;
                    }

                    if (v42 < -65536.0)
                    {
                      v42 = -65536.0;
                    }

                    if (v40 <= 65536.0)
                    {
                      v43 = v40;
                    }

                    else
                    {
                      v43 = 65536.0;
                    }

                    if (v43 >= -65536.0)
                    {
                      v44 = v43;
                    }

                    else
                    {
                      v44 = -65536.0;
                    }

                    if (v41 > 65536.0)
                    {
                      v41 = 65536.0;
                    }

                    if (v41 >= -65536.0)
                    {
                      v45 = v41;
                    }

                    else
                    {
                      v45 = -65536.0;
                    }

                    v46 = v31 * v42;
                    v47 = 0.0;
                    v48 = 0.0;
                    if (v46 != 0.0)
                    {
                      __e[0] = 0;
                      v49 = frexp(v46, __e);
                      v50 = ldexp(v49, 11);
                      v48 = ldexp(round(v50), __e[0] - 11);
                    }

                    v51 = (v44 * a11) + v48;
                    if (v51 != 0.0)
                    {
                      __e[0] = 0;
                      v52 = frexp(v51, __e);
                      v53 = ldexp(v52, 11);
                      v47 = ldexp(round(v53), __e[0] - 11);
                    }

                    v54 = 0.0;
                    if ((v45 * v47) != 0.0)
                    {
                      __e[0] = 0;
                      v55 = frexp((v45 * v47), __e);
                      v56 = ldexp(v55, 11);
                      v54 = ldexp(round(v56), __e[0] - 11);
                    }

                    std::function<float ()(float)>::operator()(a8, v54);
                    if (v57 == INFINITY)
                    {
                      v58 = 127;
                    }

                    else if (v57 == -INFINITY)
                    {
                      v58 = 0x80;
                    }

                    else
                    {
                      v59 = llroundf(v57);
                      if (v59 >= 127)
                      {
                        v59 = 127;
                      }

                      if (v59 <= -128)
                      {
                        v58 = 0x80;
                      }

                      else
                      {
                        v58 = v59;
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

    ++v32;
  }

  while (v32 != v61);
  v25 = __p;
  if (__p)
  {
LABEL_91:
    v83 = v25;
    operator delete(v25);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_2599100DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  v38 = *(v36 - 216);
  if (v38)
  {
    *(v36 - 208) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 192);
  if (v39)
  {
    *(v36 - 184) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 168);
  if (v40)
  {
    *(v36 - 160) = v40;
    operator delete(v40);
  }

  v41 = *a27;
  if (*a27)
  {
    *(a27 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::PeElementWiseBinaryParamValues::~PeElementWiseBinaryParamValues(void **this)
{
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 80) == 1)
  {
    v2 = this[7];
    if (v2)
    {
      this[8] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void MIL::ANEMachineIR::Interpreter::PeAddCpu::Run(ANEMachineIR::Validators *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v281 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 56))(a1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (*(v6 + 8) != 6)
    {
      goto LABEL_10;
    }

    v6 = *v6;
  }

  else if (v7 != 6)
  {
    goto LABEL_10;
  }

  if (*v6 != 1633641840 || *(v6 + 4) != 25700)
  {
LABEL_10:
    *a3 = 1;
    v9 = a3 + 8;
    v10 = std::string::basic_string[abi:ne200100]<0>(v279, "pe_add");
    v11 = std::string::insert(v10, 0, "Expected ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v235.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v235.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v235, " op. Got ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v237.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v237.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = (*(*a1 + 56))(a1);
    v16 = *(v15 + 23);
    if (v16 >= 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = *v15;
    }

    if (v16 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = *(v15 + 8);
    }

    v19 = std::string::append(&v237, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    *(v9 + 16) = *(&v19->__r_.__value_.__l + 2);
    *v9 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v237.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    if (v280 < 0)
    {
      v21 = v279[0];
LABEL_22:
      operator delete(v21);
      return;
    }

    return;
  }

  std::string::basic_string[abi:ne200100]<0>(&v237, "x");
  InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v237);
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v237, "y");
  v23 = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, &v237);
  if ((SHIBYTE(v237.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (InterpretedTensorValue)
    {
      goto LABEL_28;
    }

LABEL_33:
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for x");
    return;
  }

  operator delete(v237.__r_.__value_.__l.__data_);
  if (!InterpretedTensorValue)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (!v23)
  {
    *a3 = 2;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "No value for y");
    return;
  }

  v237.__r_.__value_.__s.__data_[0] = 0;
  v237.__r_.__value_.__s.__data_[4] = 0;
  v237.__r_.__value_.__s.__data_[8] = 0;
  v237.__r_.__value_.__s.__data_[12] = 0;
  v237.__r_.__value_.__s.__data_[16] = 0;
  v237.__r_.__value_.__s.__data_[18] = 0;
  LOBYTE(v238) = 0;
  v240 = 0;
  LOBYTE(v241) = 0;
  v243 = 0;
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v247 = 0;
  LOBYTE(v248) = 0;
  v250 = 0;
  ANEMachineIR::Validators::ParsePeElementWiseBinaryParamValues(&v235, a1, &v237);
  if ((MIL::ValidationResult::IsGood(&v235) & 1) == 0)
  {
    *a3 = 3;
    MIL::MILResult::GetMessageWithLocation((a3 + 8), &v235);
    MEMORY[0x259CA8F00](&v235);
    goto LABEL_198;
  }

  MEMORY[0x259CA8F00](&v235);
  if (v240 == 1)
  {
    *a3 = 5;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented 'reduction': rdar://86732114");
    goto LABEL_198;
  }

  *&v235.__r_.__value_.__r.__words[1] = 0uLL;
  v236 = 0;
  MIL::ANEMachineIR::Interpreter::GetCpuNeActivationFunction(a1, &v235, v279);
  if (!LODWORD(v235.__r_.__value_.__l.__data_))
  {
    v24 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
    v25 = (*(*v24 + 88))(v24);
    v26 = (*(*v23 + 32))(v23);
    v27 = (*(*v26 + 88))(v26);
    OutputType = MIL::IROperation::GetOutputType(a1);
    v29 = MIL::IRValueType::AsTensorType(OutputType);
    v30 = (*(*v29 + 88))(v29);
    v31 = (*(*InterpretedTensorValue + 32))(InterpretedTensorValue);
    ANEMachineIR::Utils::GetStaticTensorShape(v234, v31, v32);
    v33 = (*(*v23 + 32))(v23);
    ANEMachineIR::Utils::GetStaticTensorShape(v233, v33, v34);
    v35 = MIL::IROperation::GetOutputType(a1);
    v36 = MIL::IRValueType::AsTensorType(v35);
    ANEMachineIR::Utils::GetStaticTensorShape(v232, v36, v37);
    switch(v25)
    {
      case 4:
        switch(v27)
        {
          case 14:
            switch(v30)
            {
              case 14:
                v200 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                Data = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v202 = *&v237.__r_.__value_.__l.__data_;
                v203 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v274, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v274);
                (*(*a1 + 200))(&v228, a1);
                v204 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v205 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v205);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v204, &v251);
                v206 = v251;
                v251 = 0;
                if (v206)
                {
                  (*(*v206 + 1))(v206);
                }

                goto LABEL_188;
              case 9:
                v158 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v159 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v160 = *&v237.__r_.__value_.__l.__data_;
                v161 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v273, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v273);
                (*(*a1 + 200))(&v228, a1);
                v162 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v163 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v163);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v162, &v251);
                v164 = v251;
                v251 = 0;
                if (v164)
                {
                  (*(*v164 + 1))(v164);
                }

                goto LABEL_188;
              case 4:
                v88 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v89 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v90 = *&v237.__r_.__value_.__l.__data_;
                v91 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v275, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v275);
                (*(*a1 + 200))(&v228, a1);
                v92 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v93 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v93);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v92, &v251);
                v94 = v251;
                v251 = 0;
                if (v94)
                {
                  (*(*v94 + 1))(v94);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 9:
            switch(v30)
            {
              case 14:
                v151 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v152 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v153 = *&v237.__r_.__value_.__l.__data_;
                v154 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v271, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v271);
                (*(*a1 + 200))(&v228, a1);
                v155 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v156 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v156);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v155, &v251);
                v157 = v251;
                v251 = 0;
                if (v157)
                {
                  (*(*v157 + 1))(v157);
                }

                goto LABEL_188;
              case 9:
                v123 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v124 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v125 = *&v237.__r_.__value_.__l.__data_;
                v126 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v270, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v270);
                (*(*a1 + 200))(&v228, a1);
                v127 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v128 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v128);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v127, &v251);
                v129 = v251;
                v251 = 0;
                if (v129)
                {
                  (*(*v129 + 1))(v129);
                }

                goto LABEL_188;
              case 4:
                v74 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v75 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v76 = *&v237.__r_.__value_.__l.__data_;
                v77 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v272, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v272);
                (*(*a1 + 200))(&v228, a1);
                v78 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v79 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v79);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v78, &v251);
                v80 = v251;
                v251 = 0;
                if (v80)
                {
                  (*(*v80 + 1))(v80);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 4:
            switch(v30)
            {
              case 14:
                v207 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v208 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v209 = *&v237.__r_.__value_.__l.__data_;
                v210 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v277, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v277);
                (*(*a1 + 200))(&v228, a1);
                v211 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v212 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v212);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v211, &v251);
                v213 = v251;
                v251 = 0;
                if (v213)
                {
                  (*(*v213 + 1))(v213);
                }

                goto LABEL_188;
              case 9:
                v172 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v173 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v174 = *&v237.__r_.__value_.__l.__data_;
                v175 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v276, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v276);
                (*(*a1 + 200))(&v228, a1);
                v176 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v177 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v177);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v176, &v251);
                v178 = v251;
                v251 = 0;
                if (v178)
                {
                  (*(*v178 + 1))(v178);
                }

                goto LABEL_188;
              case 4:
                v52 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v53 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v54 = *&v237.__r_.__value_.__l.__data_;
                v55 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v278, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v278);
                (*(*a1 + 200))(&v228, a1);
                v56 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v57 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v57);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v56, &v251);
                v58 = v251;
                v251 = 0;
                if (v58)
                {
                  (*(*v58 + 1))(v58);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
        }

        break;
      case 9:
        switch(v27)
        {
          case 14:
            switch(v30)
            {
              case 14:
                v144 = MIL::IRTensorValue::GetDataView<signed char>();
                v145 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v146 = *&v237.__r_.__value_.__l.__data_;
                v147 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v256, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v256);
                (*(*a1 + 200))(&v228, a1);
                v148 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v149 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v149);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v148, &v251);
                v150 = v251;
                v251 = 0;
                if (v150)
                {
                  (*(*v150 + 1))(v150);
                }

                goto LABEL_188;
              case 9:
                v116 = MIL::IRTensorValue::GetDataView<signed char>();
                v117 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v118 = *&v237.__r_.__value_.__l.__data_;
                v119 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v255, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v255);
                (*(*a1 + 200))(&v228, a1);
                v120 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v121 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v121);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v120, &v251);
                v122 = v251;
                v251 = 0;
                if (v122)
                {
                  (*(*v122 + 1))(v122);
                }

                goto LABEL_188;
              case 4:
                v67 = MIL::IRTensorValue::GetDataView<signed char>();
                v68 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v69 = *&v237.__r_.__value_.__l.__data_;
                v70 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v257, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v257);
                (*(*a1 + 200))(&v228, a1);
                v71 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v72 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v72);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v71, &v251);
                v73 = v251;
                v251 = 0;
                if (v73)
                {
                  (*(*v73 + 1))(v73);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 9:
            switch(v30)
            {
              case 14:
                v109 = MIL::IRTensorValue::GetDataView<signed char>();
                v110 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v111 = *&v237.__r_.__value_.__l.__data_;
                v112 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v253, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v253);
                (*(*a1 + 200))(&v228, a1);
                v113 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v114 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v114);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v113, &v251);
                v115 = v251;
                v251 = 0;
                if (v115)
                {
                  (*(*v115 + 1))(v115);
                }

                goto LABEL_188;
              case 9:
                v102 = MIL::IRTensorValue::GetDataView<signed char>();
                v103 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v104 = *&v237.__r_.__value_.__l.__data_;
                v105 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v252, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v252);
                (*(*a1 + 200))(&v228, a1);
                v106 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v107 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v107);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v106, &v251);
                v108 = v251;
                v251 = 0;
                if (v108)
                {
                  (*(*v108 + 1))(v108);
                }

                goto LABEL_188;
              case 4:
                v60 = MIL::IRTensorValue::GetDataView<signed char>();
                v61 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v62 = *&v237.__r_.__value_.__l.__data_;
                v63 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v254, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v254);
                (*(*a1 + 200))(&v228, a1);
                v64 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v65 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v65);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v64, &v251);
                v66 = v251;
                v251 = 0;
                if (v66)
                {
                  (*(*v66 + 1))(v66);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
          case 4:
            switch(v30)
            {
              case 14:
                v165 = MIL::IRTensorValue::GetDataView<signed char>();
                v166 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v167 = *&v237.__r_.__value_.__l.__data_;
                v168 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v259, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v259);
                (*(*a1 + 200))(&v228, a1);
                v169 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v170 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v170);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v169, &v251);
                v171 = v251;
                v251 = 0;
                if (v171)
                {
                  (*(*v171 + 1))(v171);
                }

                goto LABEL_188;
              case 9:
                v130 = MIL::IRTensorValue::GetDataView<signed char>();
                v131 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v132 = *&v237.__r_.__value_.__l.__data_;
                v133 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v258, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v258);
                (*(*a1 + 200))(&v228, a1);
                v134 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v135 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v135);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v134, &v251);
                v136 = v251;
                v251 = 0;
                if (v136)
                {
                  (*(*v136 + 1))(v136);
                }

                goto LABEL_188;
              case 4:
                v45 = MIL::IRTensorValue::GetDataView<signed char>();
                v46 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v47 = *&v237.__r_.__value_.__l.__data_;
                v48 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v260, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v260);
                (*(*a1 + 200))(&v228, a1);
                v49 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v50 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v50);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v49, &v251);
                v51 = v251;
                v251 = 0;
                if (v51)
                {
                  (*(*v51 + 1))(v51);
                }

                goto LABEL_188;
            }

            goto LABEL_115;
        }

        break;
      case 14:
        switch(v27)
        {
          case 14:
            switch(v30)
            {
              case 14:
                v214 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v215 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v216 = *&v237.__r_.__value_.__l.__data_;
                v217 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v265, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v265);
                (*(*a1 + 200))(&v228, a1);
                v218 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v219 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v219);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v218, &v251);
                v220 = v251;
                v251 = 0;
                if (v220)
                {
                  (*(*v220 + 1))(v220);
                }

                goto LABEL_188;
              case 9:
                v186 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v187 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v188 = *&v237.__r_.__value_.__l.__data_;
                v189 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v264, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v264);
                (*(*a1 + 200))(&v228, a1);
                v190 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v191 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v191);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v190, &v251);
                v192 = v251;
                v251 = 0;
                if (v192)
                {
                  (*(*v192 + 1))(v192);
                }

                goto LABEL_188;
              case 4:
                v95 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v96 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v97 = *&v237.__r_.__value_.__l.__data_;
                v98 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v266, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v266);
                (*(*a1 + 200))(&v228, a1);
                v99 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v100 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v100);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v99, &v251);
                v101 = v251;
                v251 = 0;
                if (v101)
                {
                  (*(*v101 + 1))(v101);
                }

                goto LABEL_188;
            }

            break;
          case 9:
            switch(v30)
            {
              case 14:
                v179 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v180 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v181 = *&v237.__r_.__value_.__l.__data_;
                v182 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v262, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v262);
                (*(*a1 + 200))(&v228, a1);
                v183 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v184 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v184);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v183, &v251);
                v185 = v251;
                v251 = 0;
                if (v185)
                {
                  (*(*v185 + 1))(v185);
                }

                goto LABEL_188;
              case 9:
                v137 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v138 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v139 = *&v237.__r_.__value_.__l.__data_;
                v140 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v261, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v261);
                (*(*a1 + 200))(&v228, a1);
                v141 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v142 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v142);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v141, &v251);
                v143 = v251;
                v251 = 0;
                if (v143)
                {
                  (*(*v143 + 1))(v143);
                }

                goto LABEL_188;
              case 4:
                v81 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v82 = MIL::IRTensorValue::GetDataView<signed char>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v83 = *&v237.__r_.__value_.__l.__data_;
                v84 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v263, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v263);
                (*(*a1 + 200))(&v228, a1);
                v85 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v86 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v86);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v85, &v251);
                v87 = v251;
                v251 = 0;
                if (v87)
                {
                  (*(*v87 + 1))(v87);
                }

                goto LABEL_188;
            }

            break;
          case 4:
            switch(v30)
            {
              case 14:
                v221 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v222 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v223 = *&v237.__r_.__value_.__l.__data_;
                v224 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v268, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v268);
                (*(*a1 + 200))(&v228, a1);
                v225 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v226 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v226);
                MIL::IRTensorValueType::MakeUInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v225, &v251);
                v227 = v251;
                v251 = 0;
                if (v227)
                {
                  (*(*v227 + 1))(v227);
                }

                goto LABEL_188;
              case 9:
                v193 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v194 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v195 = *&v237.__r_.__value_.__l.__data_;
                v196 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v267, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v267);
                (*(*a1 + 200))(&v228, a1);
                v197 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v198 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v198);
                MIL::IRTensorValueType::MakeInt8Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v197, &v251);
                v199 = v251;
                v251 = 0;
                if (v199)
                {
                  (*(*v199 + 1))(v199);
                }

                goto LABEL_188;
              case 4:
                v38 = MIL::IRTensorValue::GetDataView<unsigned char>();
                v39 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
                v228 = 0;
                v229 = 0;
                v230 = 0;
                v40 = *&v237.__r_.__value_.__l.__data_;
                v41 = *&v237.__r_.__value_.__r.__words[1];
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v269, v279);
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v269);
                (*(*a1 + 200))(&v228, a1);
                v42 = v228;
                if (v229 == v228)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                v43 = MIL::IROperation::GetOutputType(a1);
                MIL::IRValueType::AsTensorType(v43);
                MIL::IRTensorValueType::MakeFloat16Value();
                MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v42, &v251);
                v44 = v251;
                v251 = 0;
                if (v44)
                {
                  (*(*v44 + 1))(v44);
                }

LABEL_188:
                v251 = &v228;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v251);
                *a3 = 0;
                std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                goto LABEL_190;
            }

            break;
          default:
            goto LABEL_72;
        }

LABEL_115:
        v59 = "Unimplemented output dtype";
        goto LABEL_116;
      default:
        v59 = "Unimplemented x dtype";
LABEL_116:
        *a3 = 3;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), v59);
LABEL_190:
        if (v232[0])
        {
          v232[1] = v232[0];
          operator delete(v232[0]);
        }

        if (v233[0])
        {
          v233[1] = v233[0];
          operator delete(v233[0]);
        }

        if (v234[0])
        {
          v234[1] = v234[0];
          operator delete(v234[0]);
        }

        goto LABEL_196;
    }

LABEL_72:
    v59 = "Unimplemented y dtype";
    goto LABEL_116;
  }

  *a3 = v235.__r_.__value_.__l.__data_;
  *(a3 + 8) = *&v235.__r_.__value_.__r.__words[1];
  *(a3 + 24) = v236;
  *&v235.__r_.__value_.__r.__words[1] = 0uLL;
  v236 = 0;
LABEL_196:
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v279);
  if (SHIBYTE(v236) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__size_);
  }

LABEL_198:
  if (v250 == 1 && v249 < 0)
  {
    operator delete(v248);
  }

  if (v243 == 1 && v241)
  {
    v242 = v241;
    operator delete(v241);
  }

  if (v240 == 1 && v239 < 0)
  {
    v21 = v238;
    goto LABEL_22;
  }
}

void sub_259912928(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v40 = __cxa_begin_catch(a1);
    *v36 = 4;
    v41 = (*(*v40 + 16))(v40);
    std::string::basic_string[abi:ne200100]<0>((v36 + 8), v41);
    __cxa_end_catch();
    JUMPOUT(0x2599127B0);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v37 - 136);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  ANEMachineIR::Validators::PeElementWiseBinaryParamValues::~PeElementWiseBinaryParamValues(&a36);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798E3510, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798E3518, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
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

char *MIL::ANEMachineIR::Interpreter::anonymous namespace::promote_shape_to_5d@<X0>(const void **a1@<X0>, void **a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (v5 >= 6)
  {
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a2, v3, v4, v5);
  v8 = (a1[1] - *a1) >> 3;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v10 = *a2;
        __src = xmmword_259A393B8;
        v15 = unk_259A393C8;
        return std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v10, __src.i8, &v16, 4);
      }
    }

    else
    {
      v13 = *a2;
      __src = xmmword_259A393D8;
      v15 = unk_259A393E8;
      v16 = 1;
      return std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v13, __src.i8, &v17, 5);
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v11 = *a2;
        __src = xmmword_259A393A0;
        *&v15 = 1;
        return std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v11, __src.i8, &v15 + 8, 3);
      case 3:
        v12 = *a2;
        __src = vdupq_n_s64(1uLL);
        return std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v12, __src.i8, &v15, 2);
      case 4:
        v9 = *a2;
        __src.i64[0] = 1;
        return std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a2, v9, __src.i8, &__src.i8[8], 1);
    }
  }

  return result;
}

void sub_2599145A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  v11 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t MIL::ANEMachineIR::Interpreter::anonymous namespace::get_index(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1[1] - *a1 != 40)
  {
  }

  return a6 + (a5 + (a4 + *(*a1 + 16) * a3 + *(*a1 + 8) * a2 * *(*a1 + 16)) * *(*a1 + 24)) * *(*a1 + 32);
}

uint64_t std::function<float ()(float)>::operator()(uint64_t a1, float a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *std::vector<MIL::Fp16>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MIL::Fp16>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2599146C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::Fp16>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599147D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_259914C6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<signed char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_259914D30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16,MIL::Fp16,(MIL::ANEMachineIR::Interpreter::anonymous namespace::Condition)0,(MIL::ANEMachineIR::Interpreter::anonymous namespace::PeElementWiseFunc)0>()
{
  __assert_rtn("ComputeValue", "PeElementWiseCpu.cpp", 113, "src_shape.size() == add_shape.size()");
}

{
  __assert_rtn("ComputeValue", "PeElementWiseCpu.cpp", 116, "src_shape.size() == mul_shape.size()");
}

{
  __assert_rtn("ComputeValue", "PeElementWiseCpu.cpp", 109, "y_scale == 1.0 || y_scale == -1.0");
}

void ANEMachineIR::Validators::ValidateConvParameters(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, const void **a5@<X5>, uint64_t a6@<X6>, uint64_t a8@<X8>)
{
  if (*(a6 + 16) == 1 && (*(a6 + 96) <= 1uLL ? (v15 = *(a6 + 104) >= 2uLL) : (v15 = 1), v15))
  {
    v16 = *(a1 + 8);
    v145 = *a1;
    v146 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v143, "PyANE does not reuse bias or post-scale in group data, so channel vector configurations are not supported at the moment.");
    MEMORY[0x259CA8EE0](a8, &v145, 319, v143);
    if (v144 < 0)
    {
      operator delete(v143[0]);
    }

    v17 = v146;
    if (v146)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((a3[1] - *a3) >> 3) - 3 == *a6)
    {
      v18 = a2[1];
      if (v18 == *a2)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v19 = *(a6 + 8);
      if (v19)
      {
        if (!(*(v18 - 8) % v19))
        {
          MIL::ValidationResult::ValidationResult(v134);
          goto LABEL_34;
        }

        v20 = *(a1 + 8);
        v116 = *a1;
        *&v117 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "num_groups must divide input_channel.");
        MEMORY[0x259CA8EE0](v134, &v116, 315, &__p);
      }

      else
      {
        v22 = *(a1 + 8);
        v116 = *a1;
        *&v117 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "num_groups must be greater than 0.");
        MEMORY[0x259CA8EE0](v134, &v116, 315, &__p);
      }

      if (SHIBYTE(v122) < 0)
      {
        operator delete(__p);
      }

      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

LABEL_34:
      if (MIL::ValidationResult::IsGood(v134))
      {
        v23 = *a3;
        v24 = a3[1] - *a3;
        if (v24 < 9 || (v25 = a2[1] - *a2) == 0)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v26 = v23 + v24;
        v27 = a2[1];
        v28 = *(a6 + 8);
        if (*(v23 + v24 - 16) != *(v27 - 8) / v28)
        {
          v31 = *(a1 + 8);
          v132 = *a1;
          v133 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v130, "Kernel must have input channels equivalent to x's input channels over num_groups");
          MEMORY[0x259CA8EE0](a8, &v132, 315, v130);
          if (v131 < 0)
          {
            operator delete(v130[0]);
          }

          v32 = v133;
          if (!v133)
          {
            goto LABEL_221;
          }

          goto LABEL_57;
        }

        v29 = *v23;
        if (*(a6 + 16))
        {
          v28 = 1;
        }

        if (v29 == v28)
        {
          if (*(a6 + 18) == 1)
          {
            v30 = *(a1 + 8);
            v111 = *a1;
            *&v112 = v30;
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(&v116, "Padding validation for conv transpose not implemented.");
            MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
            goto LABEL_140;
          }

          for (i = *(a6 + 48); i != *(a6 + 56); ++i)
          {
            if (*i != 1)
            {
              v47 = *(a1 + 8);
              v111 = *a1;
              *&v112 = v47;
              if (v47)
              {
                atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(&v116, "Padding validation for dilated convs not yet implemented.");
              MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
              goto LABEL_140;
            }
          }

          v35 = *a6;
          if (*a6 == 3)
          {
            if (v24 <= 0x20)
            {
              goto LABEL_226;
            }

            v37 = *(a6 + 72);
            v36 = *(a6 + 80);
            v38 = v36 - v37;
            if (v36 == v37 || v38 < 5)
            {
              goto LABEL_225;
            }

            v40 = *(v26 - 5);
            v39 = *(v26 - 4);
            v41 = *(v26 - 3);
            v42 = *v37;
            v43 = v37[1];
          }

          else
          {
            if (v35 < 2)
            {
              if (v24 <= 0x10)
              {
                goto LABEL_226;
              }

              v37 = *(a6 + 72);
              v38 = *(a6 + 80) - v37;
              if (v38 < 5)
              {
                goto LABEL_225;
              }

              v44 = 0;
              v45 = 0;
              v46 = 0;
              v42 = 0;
              v43 = 0;
              v41 = *(v26 - 3);
              v40 = 1;
              v39 = 1;
LABEL_78:
              if (v42 >= v40 || v43 >= v40)
              {
                v51 = *(a1 + 8);
                v111 = *a1;
                *&v112 = v51;
                if (v51)
                {
                  atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v116, "Conv padding must be supported by kernel in depth dimension.");
                MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
                goto LABEL_140;
              }

              if (v45 >= v39 || v44 >= v39)
              {
                v52 = *(a1 + 8);
                v111 = *a1;
                *&v112 = v52;
                if (v52)
                {
                  atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v116, "Conv padding must be supported by kernel in height dimension.");
                MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
                goto LABEL_140;
              }

              v48 = v37 + v38;
              v49 = *(v48 - 2);
              if (v41 <= v49 || v41 <= *(v48 - 1))
              {
                v53 = *(a1 + 8);
                v111 = *a1;
                *&v112 = v53;
                if (v53)
                {
                  atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(&v116, "Conv padding must be supported by kernel in width dimension.");
                MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
                goto LABEL_140;
              }

              if (v35 == 3)
              {
                if (v25 < 0x19)
                {
                  goto LABEL_226;
                }

                v50 = *(v27 - 32);
              }

              else
              {
                v50 = 1;
              }

              if (v46)
              {
                if (v25 < 0x11)
                {
                  goto LABEL_226;
                }

                v54 = *(v27 - 24);
              }

              else
              {
                if (v25 < 9)
                {
                  goto LABEL_226;
                }

                v54 = 1;
              }

              v55 = *(v27 - 16);
              v56 = *a5;
              v57 = a5[1] - *a5;
              if (v35 == 3)
              {
                if (v57 < 0x19)
                {
                  goto LABEL_226;
                }

                v58 = *&v56[v57 - 32] - 1;
              }

              else
              {
                v58 = 0;
              }

              if (v46)
              {
                if (v57 >= 0x11)
                {
                  v59 = *&v56[v57 - 24] - 1;
LABEL_111:
                  v60 = *&v56[v57 - 16];
                  if (v35 == 3)
                  {
                    v61 = *(a6 + 24);
                    if (*(a6 + 32) == v61)
                    {
                      goto LABEL_225;
                    }

                    LODWORD(v61) = *v61;
                    if (v61 >= 0)
                    {
                      v61 = v61;
                    }

                    else
                    {
                      v61 = -v61;
                    }
                  }

                  else
                  {
                    v61 = 1;
                  }

                  if (v46)
                  {
                    v62 = *(a6 + 24);
                    v63 = *(a6 + 32);
                    if ((v63 - v62) < 5)
                    {
                      goto LABEL_225;
                    }

                    LODWORD(v64) = *(v63 - 8);
                    if (v64 >= 0)
                    {
                      v64 = v64;
                    }

                    else
                    {
                      v64 = -v64;
                    }
                  }

                  else
                  {
                    v62 = *(a6 + 24);
                    v63 = *(a6 + 32);
                    v64 = 1;
                  }

                  if (v63 != v62)
                  {
                    LODWORD(v63) = *(v63 - 4);
                    if (v63 >= 0)
                    {
                      v63 = v63;
                    }

                    else
                    {
                      v63 = -v63;
                    }

                    if ((v60 - 1) * v63 >= v55 + v49)
                    {
                      v65 = *(a1 + 8);
                      v111 = *a1;
                      *&v112 = v65;
                      if (v65)
                      {
                        atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(&v116, "Conv padding support constraints violated for Px.");
                      MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
                    }

                    else if (v64 * v59 >= v54 + v45)
                    {
                      v66 = *(a1 + 8);
                      v111 = *a1;
                      *&v112 = v66;
                      if (v66)
                      {
                        atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(&v116, "Conv padding support constraints violated for Py.");
                      MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
                    }

                    else
                    {
                      if (v61 * v58 < v50 + v42)
                      {
                        MIL::ValidationResult::ValidationResult(&__p);
LABEL_144:
                        if (MIL::ValidationResult::IsGood(&__p))
                        {
                          for (j = *(a6 + 48); ; ++j)
                          {
                            if (j == *(a6 + 56))
                            {
                              MIL::ValidationResult::ValidationResult(&v116);
                              goto LABEL_162;
                            }

                            if (*j <= 0)
                            {
                              break;
                            }

                            if (*j != 1)
                            {
                              v70 = *(a1 + 8);
                              v93.__r_.__value_.__r.__words[0] = *a1;
                              v93.__r_.__value_.__l.__size_ = v70;
                              if (v70)
                              {
                                atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
                              }

                              std::string::basic_string[abi:ne200100]<0>(&v111, "MIL<aneflow> frontend has not yet implemented dilated conv.");
                              MEMORY[0x259CA8EE0](&v116, &v93, 315, &v111);
                              goto LABEL_158;
                            }
                          }

                          v69 = *(a1 + 8);
                          v93.__r_.__value_.__r.__words[0] = *a1;
                          v93.__r_.__value_.__l.__size_ = v69;
                          if (v69)
                          {
                            atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
                          }

                          std::string::basic_string[abi:ne200100]<0>(&v111, "Dilation must be greater than zero.");
                          MEMORY[0x259CA8EE0](&v116, &v93, 315, &v111);
LABEL_158:
                          if (SHIBYTE(v112) < 0)
                          {
                            operator delete(v111);
                          }

                          if (v93.__r_.__value_.__l.__size_)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v93.__r_.__value_.__l.__size_);
                          }

LABEL_162:
                          if (MIL::ValidationResult::IsGood(&v116))
                          {
                            if (MIL::ValidationResult::IsGood(&v111))
                            {
                              ANEMachineIR::Validators::InferOutputShape(a2, a3, a6, &v109);
                              v71 = a5[1] - *a5;
                              if (v110 - v109 == v71)
                              {
                                if (!memcmp(v109, *a5, v110 - v109))
                                {
                                  if (MIL::ValidationResult::IsGood(&v93))
                                  {
                                    MIL::ValidationResult::ValidationResult(a8);
                                  }

                                  else
                                  {
                                    *(a8 + 8) = *&v93.__r_.__value_.__r.__words[1];
                                    *&v93.__r_.__value_.__r.__words[1] = 0uLL;
                                    *(a8 + 24) = v94;
                                    *(a8 + 40) = v95;
                                    v94 = 0uLL;
                                    v95 = 0;
                                    *a8 = MEMORY[0x277D24E58] + 16;
                                    *(a8 + 48) = v96;
                                  }

                                  MEMORY[0x259CA8F00](&v93);
                                }

                                else
                                {
                                  ANEMachineIR::Utils::ShapeString(a5);
                                  ANEMachineIR::Utils::ShapeString(&v109);
                                  v72 = *(a1 + 8);
                                  v99 = *a1;
                                  v100 = v72;
                                  if (v72)
                                  {
                                    atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                                  }

                                  std::operator+<char>();
                                  v73 = std::string::append(&v101, " does not match inferred shape ");
                                  v74 = *&v73->__r_.__value_.__l.__data_;
                                  v102.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
                                  *&v102.__r_.__value_.__l.__data_ = v74;
                                  v73->__r_.__value_.__l.__size_ = 0;
                                  v73->__r_.__value_.__r.__words[2] = 0;
                                  v73->__r_.__value_.__r.__words[0] = 0;
                                  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v75 = &v104;
                                  }

                                  else
                                  {
                                    v75 = v104.__r_.__value_.__r.__words[0];
                                  }

                                  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    size = HIBYTE(v104.__r_.__value_.__r.__words[2]);
                                  }

                                  else
                                  {
                                    size = v104.__r_.__value_.__l.__size_;
                                  }

                                  v77 = std::string::append(&v102, v75, size);
                                  v78 = *&v77->__r_.__value_.__l.__data_;
                                  v103.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
                                  *&v103.__r_.__value_.__l.__data_ = v78;
                                  v77->__r_.__value_.__l.__size_ = 0;
                                  v77->__r_.__value_.__r.__words[2] = 0;
                                  v77->__r_.__value_.__r.__words[0] = 0;
                                  v79 = std::string::append(&v103, ".");
                                  v80 = *&v79->__r_.__value_.__l.__data_;
                                  v98 = v79->__r_.__value_.__r.__words[2];
                                  *v97 = v80;
                                  v79->__r_.__value_.__l.__size_ = 0;
                                  v79->__r_.__value_.__r.__words[2] = 0;
                                  v79->__r_.__value_.__r.__words[0] = 0;
                                  MEMORY[0x259CA8EE0](a8, &v99, 313, v97);
                                  if (SHIBYTE(v98) < 0)
                                  {
                                    operator delete(v97[0]);
                                  }

                                  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v103.__r_.__value_.__l.__data_);
                                  }

                                  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v102.__r_.__value_.__l.__data_);
                                  }

                                  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v101.__r_.__value_.__l.__data_);
                                  }

                                  if (v100)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:ne200100](v100);
                                  }

                                  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v104.__r_.__value_.__l.__data_);
                                  }

                                  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v93.__r_.__value_.__l.__data_);
                                  }
                                }
                              }

                              else
                              {
                                v82 = *(a1 + 8);
                                v107 = *a1;
                                v108 = v82;
                                if (v82)
                                {
                                  atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
                                  v71 = a5[1] - *a5;
                                }

                                std::to_string(&v102, v71 >> 3);
                                v83 = std::string::insert(&v102, 0, "Output rank ");
                                v84 = *&v83->__r_.__value_.__l.__data_;
                                v103.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
                                *&v103.__r_.__value_.__l.__data_ = v84;
                                v83->__r_.__value_.__l.__size_ = 0;
                                v83->__r_.__value_.__r.__words[2] = 0;
                                v83->__r_.__value_.__r.__words[0] = 0;
                                v85 = std::string::append(&v103, " does not match rank of inferred shape ");
                                v86 = *&v85->__r_.__value_.__l.__data_;
                                v104.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
                                *&v104.__r_.__value_.__l.__data_ = v86;
                                v85->__r_.__value_.__l.__size_ = 0;
                                v85->__r_.__value_.__r.__words[2] = 0;
                                v85->__r_.__value_.__r.__words[0] = 0;
                                std::to_string(&v101, (v110 - v109) >> 3);
                                if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v87 = &v101;
                                }

                                else
                                {
                                  v87 = v101.__r_.__value_.__r.__words[0];
                                }

                                if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                {
                                  v88 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
                                }

                                else
                                {
                                  v88 = v101.__r_.__value_.__l.__size_;
                                }

                                v89 = std::string::append(&v104, v87, v88);
                                v90 = *&v89->__r_.__value_.__l.__data_;
                                v93.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
                                *&v93.__r_.__value_.__l.__data_ = v90;
                                v89->__r_.__value_.__l.__size_ = 0;
                                v89->__r_.__value_.__r.__words[2] = 0;
                                v89->__r_.__value_.__r.__words[0] = 0;
                                v91 = std::string::append(&v93, ".");
                                v92 = *&v91->__r_.__value_.__l.__data_;
                                v106 = v91->__r_.__value_.__r.__words[2];
                                *v105 = v92;
                                v91->__r_.__value_.__l.__size_ = 0;
                                v91->__r_.__value_.__r.__words[2] = 0;
                                v91->__r_.__value_.__r.__words[0] = 0;
                                MEMORY[0x259CA8EE0](a8, &v107, 313, v105);
                                if (SHIBYTE(v106) < 0)
                                {
                                  operator delete(v105[0]);
                                }

                                if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v93.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v101.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v104.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v103.__r_.__value_.__l.__data_);
                                }

                                if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v102.__r_.__value_.__l.__data_);
                                }

                                if (v108)
                                {
                                  std::__shared_weak_count::__release_shared[abi:ne200100](v108);
                                }
                              }

                              if (v109)
                              {
                                v110 = v109;
                                operator delete(v109);
                              }
                            }

                            else
                            {
                              *(a8 + 8) = v112;
                              v112 = 0uLL;
                              *(a8 + 24) = v113;
                              *(a8 + 40) = v114;
                              v113 = 0uLL;
                              v114 = 0;
                              *a8 = MEMORY[0x277D24E58] + 16;
                              *(a8 + 48) = v115;
                            }

                            MEMORY[0x259CA8F00](&v111);
                          }

                          else
                          {
                            v81 = v118;
                            *(a8 + 8) = v117;
                            v117 = 0uLL;
                            *(a8 + 24) = v81;
                            *(a8 + 40) = v119;
                            v118 = 0uLL;
                            v119 = 0;
                            *a8 = MEMORY[0x277D24E58] + 16;
                            *(a8 + 48) = v120;
                          }

                          MEMORY[0x259CA8F00](&v116);
                        }

                        else
                        {
                          *(a8 + 8) = v122;
                          v122 = 0uLL;
                          *(a8 + 24) = v123;
                          *(a8 + 40) = v124;
                          v123 = 0uLL;
                          v124 = 0;
                          *a8 = MEMORY[0x277D24E58] + 16;
                          *(a8 + 48) = v125;
                        }

                        MEMORY[0x259CA8F00](&__p);
                        goto LABEL_221;
                      }

                      v67 = *(a1 + 8);
                      v111 = *a1;
                      *&v112 = v67;
                      if (v67)
                      {
                        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
                      }

                      std::string::basic_string[abi:ne200100]<0>(&v116, "Conv padding support constraints violated for Pz.");
                      MEMORY[0x259CA8EE0](&__p, &v111, 315, &v116);
                    }

LABEL_140:
                    if (SHIBYTE(v117) < 0)
                    {
                      operator delete(v116);
                    }

                    if (v112)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v112);
                    }

                    goto LABEL_144;
                  }

LABEL_225:
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }
              }

              else if (v57 > 8)
              {
                v59 = 0;
                goto LABEL_111;
              }

LABEL_226:
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            if (v24 <= 0x18)
            {
              goto LABEL_226;
            }

            v42 = 0;
            v43 = 0;
            v39 = *(v26 - 4);
            v41 = *(v26 - 3);
            v37 = *(a6 + 72);
            v38 = *(a6 + 80) - v37;
            v40 = 1;
          }

          if (v38 < 0xD)
          {
            goto LABEL_225;
          }

          v45 = *(v37 + v38 - 16);
          v44 = *(v37 + v38 - 12);
          v46 = 1;
          goto LABEL_78;
        }

        v33 = *(a1 + 8);
        v128 = *a1;
        v129 = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v126, "Kernel must have group dimension equal to 'num_groups' or 1 if 'group_kernel_reuse' is set.");
        MEMORY[0x259CA8EE0](a8, &v128, 315, v126);
        if (v127 < 0)
        {
          operator delete(v126[0]);
        }

        v32 = v129;
        if (v129)
        {
LABEL_57:
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }
      }

      else
      {
        *(a8 + 8) = v135;
        v135 = 0uLL;
        *(a8 + 24) = v136;
        *(a8 + 40) = v137;
        v136 = 0uLL;
        v137 = 0;
        *a8 = MEMORY[0x277D24E58] + 16;
        *(a8 + 48) = v138;
      }

LABEL_221:
      MEMORY[0x259CA8F00](v134);
      return;
    }

    v21 = *(a1 + 8);
    v141 = *a1;
    v142 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v139, "kernel dimension must have spatial dims equal to number of spatial dimensions of input.");
    MEMORY[0x259CA8EE0](a8, &v141, 319, v139);
    if (v140 < 0)
    {
      operator delete(v139[0]);
    }

    v17 = v142;
    if (v142)
    {
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }
}

void sub_259915C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, std::__shared_weak_count *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  MEMORY[0x259CA8F00](v57 - 216);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::anonymous namespace::ValidateStrides(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v7 = *a5;
  v8 = a5[4];
  if (*a5 == 3)
  {
    v9 = a5[3];
    if (v8 == v9)
    {
      goto LABEL_84;
    }

    v10 = *v9;
  }

  else
  {
    v9 = a5[3];
    v10 = 1;
    if (v7 < 2)
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_8;
    }
  }

  if (v8 - v9 <= 4)
  {
    goto LABEL_84;
  }

  v11 = *(v8 - 8);
  v12 = 1;
LABEL_8:
  if (v8 == v9)
  {
    goto LABEL_84;
  }

  if (v10 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = -v10;
  }

  if ((v13 - 1) > 1 || (v11 >= 0 ? (v14 = v11) : (v14 = -v11), (v14 - 1) > 1 || ((v15 = *(v8 - 4), v15 >= 0) ? (v16 = v15) : (v16 = -v15), (v16 - 1) >= 2)))
  {
    v18 = a1[1];
    v53 = *a1;
    v54 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v51, "Strides on an individual conv must be positive 1 or 2. For larger strides, a decomposition must be used.");
    MEMORY[0x259CA8EE0](a6, &v53, 315, v51);
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    v19 = v54;
    if (v54)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v10 < 0 || v11 < 0 || v15 < 0)
  {
    v20 = a1[1];
    v49 = *a1;
    v50 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Negative strides are not implemented.");
    MEMORY[0x259CA8EE0](a6, &v49, 315, __p);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = v50;
    if (v50)
    {
      goto LABEL_32;
    }

    return;
  }

  if (v7 == 3)
  {
    if ((a3[1] - *a3) <= 0x20)
    {
      goto LABEL_85;
    }

    v17 = *(a3[1] - 40);
  }

  else
  {
    v17 = 1;
  }

  v21 = *a3;
  v22 = a3[1] - *a3;
  if (v12)
  {
    if (v22 <= 0x18)
    {
      goto LABEL_85;
    }

    v23 = *(v21 + v22 - 32);
  }

  else
  {
    if (v22 <= 0x10)
    {
      goto LABEL_85;
    }

    v23 = 1;
  }

  v24 = *(v21 + v22 - 24);
  if (v7 == 3)
  {
    if ((a2[1] - *a2) <= 0x18)
    {
      goto LABEL_85;
    }

    v25 = *(a2[1] - 32);
  }

  else
  {
    v25 = 1;
  }

  v26 = *a2;
  v27 = a2[1];
  v29 = v27 - v26;
  if (v12)
  {
    if (v29 <= 0x10)
    {
      goto LABEL_85;
    }

    v30 = *(v27 - 24);
  }

  else
  {
    if (v29 <= 8)
    {
      goto LABEL_85;
    }

    v30 = 1;
  }

  v31 = *(v26 + v29 - 16);
  if (v7 == 3)
  {
    if ((a4[1] - *a4) <= 0x18)
    {
      goto LABEL_85;
    }

    v32 = *(a4[1] - 32) - 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = *a4;
  v34 = a4[1] - *a4;
  if (v12)
  {
    if (v34 > 0x10)
    {
      v35 = *(v33 + v34 - 24) - 1;
      goto LABEL_64;
    }

LABEL_85:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v34 <= 8)
  {
    goto LABEL_85;
  }

  v35 = 0;
LABEL_64:
  v36 = *(v33 + v34 - 16);
  if (v7 == 3)
  {
    v37 = a5[9];
    if (a5[10] == v37)
    {
      goto LABEL_84;
    }

    v38 = *v37;
    if (!v12)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v38 = 0;
    if (!v12)
    {
LABEL_67:
      v39 = a5[9];
      v40 = a5[10] - v39;
      if (v40 > 4)
      {
        v41 = 0;
        goto LABEL_72;
      }

LABEL_84:
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }
  }

  v39 = a5[9];
  v40 = a5[10] - v39;
  if (v40 <= 0xC)
  {
    goto LABEL_84;
  }

  v41 = *(a5[10] - 16);
LABEL_72:
  if (v31 > ((v24 + v16 - 1) & -v16) + (v36 - 1) * v16 - *(v39 + v40 - 8) || v30 > ((v23 + v14 - 1) & -v14) + v35 * v14 - v41 || v25 > ((v17 + v13 - 1) & -v13) + v32 * v13 - v38)
  {
    v42 = a1[1];
    v45 = *a1;
    v46 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v43, "Stride programming constraint 6.1.6.1.1 violated.");
    MEMORY[0x259CA8EE0](a6, &v45, 315, v43);
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    v19 = v46;
    if (!v46)
    {
      return;
    }

LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    return;
  }

  MIL::ValidationResult::ValidationResult(a6);
}

void sub_259916344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::InferOutputShape(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = v5 - *a1;
  if (v5 == *a1)
  {
    goto LABEL_42;
  }

  v9 = v7 >> 3;
  v10 = *v6;
  v11 = *a3;
  if (*a3 == 3)
  {
    if (v9 > 3 && a2[1] - *a2 > 0x20uLL)
    {
      if ((*(a3 + 18) & 1) == 0)
      {
        v12 = *(a3 + 24);
        if (*(a3 + 32) == v12)
        {
          goto LABEL_41;
        }

        v13 = v6 + v7;
        v15 = *(v13 - 4);
        v14 = *(v13 - 3);
        v16 = *(v13 - 2);
        v17 = a2[1];
        v18 = *(v17 - 40);
        v19 = *(v17 - 32);
        v20 = *(v17 - 24);
        v21 = *(v17 - 8);
        LODWORD(v22) = *v12;
        if (*v12 >= 0)
        {
          v22 = v22;
        }

        else
        {
          v22 = -v22;
        }

LABEL_15:
        v25 = *(a3 + 24);
        v26 = *(a3 + 32);
        if ((v26 - v25) > 4)
        {
          LODWORD(v27) = *(v26 - 8);
          v27 = (v27 & 0x80000000) == 0 ? v27 : -v27;
          if (v26 != v25)
          {
            v28 = *(v26 - 4);
            if (v28 < 0)
            {
              v28 = -v28;
            }

            if (v11 == 3)
            {
              v29 = *(a3 + 72);
              if (*(a3 + 80) - v29 <= 4uLL)
              {
                goto LABEL_41;
              }

              v30 = v29[1] + *v29;
            }

            else
            {
              v30 = 0;
            }

            v31 = *(a3 + 72);
            v32 = *(a3 + 80) - v31;
            if (v32 > 0xC)
            {
              v33 = *(*(a3 + 80) - 12) + *(*(a3 + 80) - 16);
              v34 = v15 - v18;
              v35 = v14 - v19;
              goto LABEL_36;
            }
          }
        }

LABEL_41:
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11 >= 2)
  {
    if (v9 > 2 && a2[1] - *a2 > 0x18uLL)
    {
      if ((*(a3 + 18) & 1) == 0)
      {
        v23 = v6 + v7;
        v14 = *(v23 - 3);
        v16 = *(v23 - 2);
        v24 = a2[1];
        v19 = *(v24 - 32);
        v20 = *(v24 - 24);
        v15 = 1;
        v18 = 1;
        v22 = 1;
        v21 = *(v24 - 8);
        goto LABEL_15;
      }

LABEL_43:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Not implemented. Shape inference for conv transpose.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_42:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  if (v9 <= 1 || a2[1] - *a2 <= 0x10uLL)
  {
    goto LABEL_42;
  }

  if (*(a3 + 18) == 1)
  {
    goto LABEL_43;
  }

  v36 = *(a3 + 32);
  if (v36 == *(a3 + 24))
  {
    goto LABEL_41;
  }

  v28 = *(v36 - 4);
  if (v28 < 0)
  {
    v28 = -v28;
  }

  v31 = *(a3 + 72);
  v32 = *(a3 + 80) - v31;
  if (v32 <= 4)
  {
    goto LABEL_41;
  }

  v33 = 0;
  v30 = 0;
  v34 = 0;
  v35 = 0;
  v16 = *(v6 + v7 - 16);
  v37 = a2[1];
  v20 = *(v37 - 24);
  v21 = *(v37 - 8);
  v22 = 1;
  v27 = 1;
LABEL_36:
  v38 = *(v31 + v32 - 4) + *(v31 + v32 - 8);
  v45 = v10;
  v44 = (v34 + v30 + v22) / v22;
  v43 = (v35 + v33 + v27) / v27;
  v41 = *(a3 + 8) * v21;
  v42 = (v16 - v20 + v28 + v38) / v28;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v45);
  v39 = *a3;
  if (*a3 == 3)
  {
    std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v44);
    v39 = *a3;
  }

  if (v39 >= 2)
  {
    std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v43);
  }

  std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v42);
  std::vector<unsigned long long>::push_back[abi:ne200100](a4, &v41);
}

void ANEMachineIR::Validators::anonymous namespace::CheckKernelSizeLimits(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  if (*a4 == 3)
  {
    v7 = *a2;
    v8 = a2[1] - *a2;
    if (v8 > 0x20)
    {
      v9 = *(v7 + v8 - 40) > 0x10uLL;
      goto LABEL_7;
    }

LABEL_57:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *a2;
  v8 = a2[1] - *a2;
  if (*a4 < 2uLL)
  {
    if (v8 > 0x10)
    {
      v14 = *(v7 + v8 - 24);
      v15 = 29;
      if (a3 == 4)
      {
        v15 = 13;
      }

      if (v14 <= v15)
      {
LABEL_35:
        v18 = *(a4 + 96);
        v19 = *(a4 + 104);
        if (v18 == 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v18)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        if (v19 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v19)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (ANEMachineIR::Validators::KernelDataBytesPerNE(a2, a3, 0, 0, 1, v21, v23, *(a4 + 17)) <= 0x10000)
        {

          MIL::ValidationResult::ValidationResult(a5);
        }

        else
        {
          v24 = a1[1];
          v27 = *a1;
          v28 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v25, "KMEM limits exceeded by kernel data.");
          MEMORY[0x259CA8EE0](a5, &v27, 318, v25);
          if (v26 < 0)
          {
            operator delete(v25[0]);
          }

          v13 = v28;
          if (v28)
          {
            goto LABEL_26;
          }
        }

        return;
      }

LABEL_21:
      v16 = a1[1];
      v39 = *a1;
      v40 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v37, "Maximum kernel width exceeded.");
      MEMORY[0x259CA8EE0](a5, &v39, 315, v37);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      v13 = v40;
      if (v40)
      {
        goto LABEL_26;
      }

      return;
    }

    goto LABEL_57;
  }

  if (v8 <= 0x18)
  {
    goto LABEL_57;
  }

  v9 = 0;
LABEL_7:
  v10 = v7 + v8;
  v11 = 29;
  if (a3 == 4)
  {
    v11 = 13;
  }

  if (*(v10 - 24) > v11)
  {
    goto LABEL_21;
  }

  if (*(v10 - 32) >= 0x1EuLL)
  {
    v12 = a1[1];
    v35 = *a1;
    v36 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Maximum kernel height exceeded.");
    MEMORY[0x259CA8EE0](a5, &v35, 315, __p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v36;
    if (!v36)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    return;
  }

  if (!v9)
  {
    goto LABEL_35;
  }

  v17 = a1[1];
  v31 = *a1;
  v32 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v29, "Maximum kernel depth exceeded.");
  MEMORY[0x259CA8EE0](a5, &v31, 315, v29);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v13 = v32;
  if (v32)
  {
    goto LABEL_26;
  }
}

void sub_25991696C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateChannelVectorShape(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, MIL::ValidationResult *a6@<X8>)
{
  v11 = (*(*a2 + 96))(a2);
  if (v11[1] - *v11 != 8)
  {
    v14 = a1[1];
    v28 = *a1;
    v29 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Expected a channel vector for parameter shape.");
    MEMORY[0x259CA8EE0](a6, &v28, 315, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = v29;
    if (!v29)
    {
      return;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    return;
  }

  v12 = (*(***v11 + 16))();
  if (!v12)
  {
    v16 = a1[1];
    v24 = *a1;
    v25 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "Channel vector shape must be static.");
    MEMORY[0x259CA8EE0](a6, &v24, 315, v22);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    v15 = v25;
    if (!v25)
    {
      return;
    }

    goto LABEL_15;
  }

  if (a5)
  {
    v13 = a3 / a4;
  }

  else
  {
    v13 = a3;
  }

  if ((*(*v12 + 48))(v12) == v13)
  {

    MIL::ValidationResult::ValidationResult(a6);
    return;
  }

  v17 = a1[1];
  v20 = *a1;
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "Channel does not match number of output filters.");
  MEMORY[0x259CA8EE0](a6, &v20, 315, v18);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v15 = v21;
  if (v21)
  {
    goto LABEL_15;
  }
}

void sub_259916C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ANEMachineIR::Validators::KernelDataBytesPerNE(uint64_t *a1, int a2, unsigned int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = *a1;
  v9 = a1[1] - *a1;
  v10 = (v9 >> 3) - 3;
  if (v9 >> 3 == 6)
  {
    v11 = *(v8 + v9 - 40);
LABEL_6:
    v12 = *(v8 + v9 - 32);
    goto LABEL_8;
  }

  if (v10 >= 2)
  {
    if ((v9 >> 3) <= 3)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = 1;
    goto LABEL_6;
  }

  v12 = 1;
  v11 = 1;
LABEL_8:
  v13 = *(v8 + 8 * v10);
  v14 = *(v8 + v9 - 16);
  v15 = 128;
  if (!a8)
  {
    v15 = 0;
  }

  v16 = v15 + vcvtd_n_u64_f64(ceil(vcvtd_n_f64_u64((2 << (a3 - 1)) << (a2 == 4), 6uLL)), 6uLL);
  if (a3)
  {
    v15 = v16;
  }

  if (a6 == 1)
  {
    if (a4)
    {
      v17 = v15 + 2;
      if (a7 != 2)
      {
        v18 = a7 == 1;
        v15 += 4;
LABEL_23:
        if (!v18)
        {
          v15 = v17;
        }

        v19 = 0;
        goto LABEL_42;
      }

      v19 = 0;
      v15 += 2;
LABEL_39:
      v19 += 2 * a5;
      goto LABEL_42;
    }

    v17 = v15 + 64;
    if (a7 != 2)
    {
      v18 = a7 == 1;
      v15 += 128;
      goto LABEL_23;
    }

    v19 = 0;
    v15 += 64;
LABEL_41:
    v19 += vcvtd_n_u64_f64(ceil(vcvtd_n_f64_u64(2 * a5, 6uLL)), 6uLL);
    goto LABEL_42;
  }

  if (a7 != 1)
  {
    if (a6 == 2)
    {
      if (a4)
      {
        v19 = 2 * a5;
        if (a7 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (a7 == 2)
    {
      v19 = 0;
      if (a4)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

LABEL_37:
    v19 = 0;
    goto LABEL_42;
  }

  if ((a4 & 1) == 0)
  {
    v15 += 64;
    if (a6 == 2)
    {
LABEL_32:
      v19 = vcvtd_n_u64_f64(ceil(vcvtd_n_f64_u64(2 * a5, 6uLL)), 6uLL);
      if (a7 != 2)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v15 += 2;
  v19 = 2 * a5;
  if (a6 != 2)
  {
    v19 = 0;
  }

LABEL_42:
  v20 = 8;
  if (a2 == 4)
  {
    v20 = 16;
  }

  if (a3)
  {
    v20 = a3;
  }

  return v15 + v19 + vcvtpd_u64_f64(vcvtd_n_f64_u64(v20 * a5 * v11 * v12 * v13 * v14, 3uLL));
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

uint64_t ANEMachineIR::Validators::ParseConvParameterValues@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v137, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v138) < 0)
  {
    operator delete(v137);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v13 = LocationPtr[1];
  v135 = *LocationPtr;
  v136 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v126, "x");
  std::string::basic_string[abi:ne200100]<0>(&__p, "ne_conv");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v135, v11, &v126, &__p, &v137);
  if (SHIBYTE(v122) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  if (v136)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
  }

  if ((MIL::ValidationResult::IsGood(&v137) & 1) == 0)
  {
    *(a5 + 8) = v138;
    v138 = 0uLL;
    *(a5 + 24) = v139;
    *(a5 + 40) = v140;
    v139 = 0uLL;
    v140 = 0;
    *a5 = MEMORY[0x277D24E58] + 16;
    *(a5 + 48) = v141;
    return MEMORY[0x259CA8F00](&v137);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(&v126, v11, v14);
  v15 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v15;
    operator delete(v15);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v16 = v126;
  *a2 = v126;
  v115 = v127;
  *(a2 + 8) = v127;
  v17 = (*(*a1 + 176))(a1);
  if (*(v17 + 8) == *v17)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v17);
  v19 = MIL::IRValueType::AsTensorType(Type);
  ANEMachineIR::Utils::GetStaticTensorShape(&v126, v19, v20);
  v21 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v21;
    operator delete(v21);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v22 = v126;
  *a3 = v126;
  v23 = v127;
  *(a3 + 8) = v127;
  if (v23 - v22 != *(a2 + 8) - *a2)
  {
    v28 = MIL::IRObject::GetLocationPtr(a1);
    v29 = v28[1];
    v133 = *v28;
    v134 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v131, "Output should have the same rank as x parameter");
    MEMORY[0x259CA8EE0](a5, &v133, 315, v131);
    if (v132 < 0)
    {
      operator delete(v131[0]);
    }

    if (v134)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v134);
    }

    return MEMORY[0x259CA8F00](&v137);
  }

  if (v23 == v22)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = *(v23 - 1);
  std::string::basic_string[abi:ne200100]<0>(&v126, "group_kernel_reuse");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue && (*(*ParameterValue + 40))(ParameterValue) && (v26 = MEMORY[0x259CA93F0]()) != 0)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  std::string::basic_string[abi:ne200100]<0>(&v126, "num_groups");
  v30 = MIL::IROperation::TryGetParameterValue();
  if (v30 && (*(*v30 + 40))(v30) && (v31 = MEMORY[0x259CA9420]()) != 0)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 1;
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  std::string::basic_string[abi:ne200100]<0>(&v126, "bias");
  v33 = MIL::IROperation::TryGetParameterValue();
  v34 = v33;
  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
    if (!v34)
    {
      goto LABEL_49;
    }
  }

  else if (!v33)
  {
    goto LABEL_49;
  }

  v35 = MIL::IRValue::AsTensor(v34);
  if (MEMORY[0x259CA93C0](v35))
  {
    v34 = 1;
  }

  else
  {
    v36 = MIL::IRObject::GetLocationPtr(a1);
    v37 = (*(*v34 + 32))(v34);
    v38 = MIL::IRValueType::AsTensorType(v37);
    ANEMachineIR::Validators::ValidateChannelVectorShape(v36, v38, v24, v32, v27 & 1, a5);
    if ((MIL::ValidationResult::IsGood(a5) & 1) == 0)
    {
      return MEMORY[0x259CA8F00](&v137);
    }

    v39 = (*(*v34 + 32))(v34);
    v40 = MIL::IRValueType::AsTensorType(v39);
    v41 = (*(*v40 + 96))(v40);
    if (*(v41 + 8) == *v41)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v42 = MIL::IRDimension::AsConstant(**v41);
    v34 = (*(*v42 + 48))(v42);
    MEMORY[0x259CA8F00](a5);
  }

LABEL_49:
  std::string::basic_string[abi:ne200100]<0>(&v126, "post_scale");
  v43 = MIL::IROperation::TryGetParameterValue();
  v44 = v43;
  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
    if (v44)
    {
      goto LABEL_51;
    }

LABEL_54:
    v46 = 0;
    goto LABEL_58;
  }

  if (!v43)
  {
    goto LABEL_54;
  }

LABEL_51:
  v45 = MIL::IRValue::AsTensor(v44);
  if (MEMORY[0x259CA93C0](v45))
  {
    v46 = 1;
    goto LABEL_58;
  }

  v47 = MIL::IRObject::GetLocationPtr(a1);
  v48 = (*(*v44 + 32))(v44);
  v49 = MIL::IRValueType::AsTensorType(v48);
  ANEMachineIR::Validators::ValidateChannelVectorShape(v47, v49, v24, v32, v27 & 1, a5);
  if (MIL::ValidationResult::IsGood(a5))
  {
    v50 = (*(*v44 + 32))(v44);
    v51 = MIL::IRValueType::AsTensorType(v50);
    v52 = (*(*v51 + 96))(v51);
    if (*(v52 + 8) == *v52)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v53 = MIL::IRDimension::AsConstant(**v52);
    v46 = (*(*v53 + 48))(v53);
    MEMORY[0x259CA8F00](a5);
LABEL_58:
    std::string::basic_string[abi:ne200100]<0>(&v126, "transposed");
    v54 = MIL::IROperation::TryGetParameterValue();
    if (v54 && (*(*v54 + 40))(v54) && (v55 = MEMORY[0x259CA93F0]()) != 0)
    {
      v56 = *v55;
    }

    else
    {
      v56 = 0;
    }

    v57 = ((v115 - v16) >> 3) - 2;
    v58 = v27 & 1;
    if (SHIBYTE(v127) < 0)
    {
      operator delete(v126);
    }

    *a4 = v57;
    *(a4 + 8) = v32;
    *(a4 + 16) = v58;
    *(a4 + 17) = 0;
    *(a4 + 18) = v56 & 1;
    *(a4 + 96) = v34;
    *(a4 + 104) = v46;
    std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
    v59 = MIL::IROperation::GetParameterType();
    v60 = MIL::IRValueType::AsTensorType(v59);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(__p);
    }

    v61 = (*(*v60 + 96))(v60);
    if (v61[1] == *v61)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v62 = (*(***v61 + 16))();
    if (v62)
    {
      if ((*(*v62 + 48))(v62) == v57)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
        v63 = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(v63);
        Data = MIL::IRTensorValue::GetDataView<int>();
        v66 = v65;
        v116 = Data;
        *&v117 = v65;
        if (SHIBYTE(v122) < 0)
        {
          operator delete(__p);
        }

        *(a4 + 32) = *(a4 + 24);
        if (v66)
        {
          v67 = 0;
          do
          {
            v68 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v116, v67);
            v70 = *(a4 + 32);
            v69 = *(a4 + 40);
            if (v70 >= v69)
            {
              v72 = *(a4 + 24);
              v73 = v70 - v72;
              v74 = (v70 - v72) >> 2;
              v75 = v74 + 1;
              if ((v74 + 1) >> 62)
              {
                std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
              }

              v76 = v69 - v72;
              if (v76 >> 1 > v75)
              {
                v75 = v76 >> 1;
              }

              if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v77 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v77 = v75;
              }

              if (v77)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4 + 24, v77);
              }

              v78 = v74;
              v79 = (4 * v74);
              v80 = &v79[-v78];
              *v79 = *v68;
              v71 = v79 + 1;
              memcpy(v80, v72, v73);
              v81 = *(a4 + 24);
              *(a4 + 24) = v80;
              *(a4 + 32) = v71;
              *(a4 + 40) = 0;
              if (v81)
              {
                operator delete(v81);
              }
            }

            else
            {
              *v70 = *v68;
              v71 = v70 + 4;
            }

            *(a4 + 32) = v71;
            ++v67;
          }

          while (v117 > v67);
        }

        MIL::ValidationResult::ValidationResult(&v126);
        goto LABEL_98;
      }

      v84 = MIL::IRObject::GetLocationPtr(a1);
      v85 = *(v84 + 8);
      v116 = *v84;
      *&v117 = v85;
      if (v85)
      {
        atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "'strides' vector must have equal length to the number of spatial dimensions.");
      MEMORY[0x259CA8EE0](&v126, &v116, 315, &__p);
    }

    else
    {
      v82 = MIL::IRObject::GetLocationPtr(a1);
      v83 = *(v82 + 8);
      v116 = *v82;
      *&v117 = v83;
      if (v83)
      {
        atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "'strides' parameter must have static shape.");
      MEMORY[0x259CA8EE0](&v126, &v116, 302, &__p);
    }

    if (SHIBYTE(v122) < 0)
    {
      operator delete(__p);
    }

    if (v117)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    }

LABEL_98:
    if ((MIL::ValidationResult::IsGood(&v126) & 1) == 0)
    {
      *(a5 + 8) = v127;
      v127 = 0uLL;
      *(a5 + 24) = v128;
      *(a5 + 40) = v129;
      v128 = 0uLL;
      v129 = 0;
      *a5 = MEMORY[0x277D24E58] + 16;
      *(a5 + 48) = v130;
LABEL_159:
      MEMORY[0x259CA8F00](&v126);
      return MEMORY[0x259CA8F00](&v137);
    }

    *(a4 + 80) = *(a4 + 72);
    v86 = 2 * v57;
    if ((v115 - v16) >> 3 != 2)
    {
      v87 = 2 * v57;
      do
      {
        LODWORD(v116) = 0;
        std::vector<int>::push_back[abi:ne200100]((a4 + 72), &v116);
        --v87;
      }

      while (v87);
    }

    std::string::basic_string[abi:ne200100]<0>(&v116, "pad");
    v88 = MIL::IROperation::TryGetParameterType();
    if (SHIBYTE(v117) < 0)
    {
      operator delete(v116);
    }

    if (!v88)
    {
      goto LABEL_113;
    }

    v89 = MIL::IRValueType::AsTensorType(v88);
    v90 = (*(*v89 + 96))(v89);
    if (v90[1] == *v90)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v91 = (*(***v90 + 16))();
    if (v91)
    {
      if ((*(*v91 + 48))(v91) == v86)
      {
        std::string::basic_string[abi:ne200100]<0>(&v116, "pad");
        v92 = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(v92);
        v144 = MIL::IRTensorValue::GetDataView<int>();
        v145 = v93;
        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116);
        }

        if ((v115 - v16) >> 3 != 2)
        {
          v94 = 0;
          do
          {
            *(*(a4 + 72) + 4 * v94) = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v144, v94);
            ++v94;
          }

          while (v86 != v94);
        }

LABEL_113:
        MIL::ValidationResult::ValidationResult(&__p);
        goto LABEL_126;
      }

      v97 = MIL::IRObject::GetLocationPtr(a1);
      v98 = *(v97 + 8);
      v144 = *v97;
      v145 = v98;
      if (v98)
      {
        atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v116, "'pad' vector must have equal length to double the number of spatial dimensions.");
      MEMORY[0x259CA8EE0](&__p, &v144, 315, &v116);
    }

    else
    {
      v95 = MIL::IRObject::GetLocationPtr(a1);
      v96 = *(v95 + 8);
      v144 = *v95;
      v145 = v96;
      if (v96)
      {
        atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v116, "'pad' parameter must have static shape.");
      MEMORY[0x259CA8EE0](&__p, &v144, 302, &v116);
    }

    if (SHIBYTE(v117) < 0)
    {
      operator delete(v116);
    }

    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v145);
    }

LABEL_126:
    if ((MIL::ValidationResult::IsGood(&__p) & 1) == 0)
    {
      *(a5 + 8) = v122;
      v122 = 0uLL;
      *(a5 + 24) = v123;
      *(a5 + 40) = v124;
      v123 = 0uLL;
      v124 = 0;
      *a5 = MEMORY[0x277D24E58] + 16;
      *(a5 + 48) = v125;
LABEL_158:
      MEMORY[0x259CA8F00](&__p);
      goto LABEL_159;
    }

    v100 = *(a4 + 48);
    v99 = a4 + 48;
    *(v99 + 8) = v100;
    if ((v115 - v16) >> 3 != 2)
    {
      v101 = ((v115 - v16) >> 3) - 2;
      do
      {
        LODWORD(v144) = 1;
        std::vector<int>::push_back[abi:ne200100](v99, &v144);
        --v101;
      }

      while (v101);
    }

    std::string::basic_string[abi:ne200100]<0>(&v144, "dilations");
    v102 = MIL::IROperation::TryGetParameterType();
    if (v146 < 0)
    {
      operator delete(v144);
    }

    if (!v102)
    {
      goto LABEL_141;
    }

    v103 = MIL::IRValueType::AsTensorType(v102);
    v104 = (*(*v103 + 96))(v103);
    if (v104[1] == *v104)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v105 = (*(***v104 + 16))();
    if (v105)
    {
      if ((*(*v105 + 48))(v105) == v57)
      {
        std::string::basic_string[abi:ne200100]<0>(&v144, "dilations");
        v106 = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(v106);
        v142 = MIL::IRTensorValue::GetDataView<int>();
        v143 = v107;
        if (v146 < 0)
        {
          operator delete(v144);
        }

        if ((v115 - v16) >> 3 != 2)
        {
          v108 = 0;
          do
          {
            *(*v99 + 4 * v108) = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v142, v108);
            ++v108;
          }

          while (v57 != v108);
        }

LABEL_141:
        MIL::ValidationResult::ValidationResult(&v116);
LABEL_154:
        if (MIL::ValidationResult::IsGood(&v116))
        {
          MIL::ValidationResult::ValidationResult(a5);
        }

        else
        {
          v113 = v118;
          *(a5 + 8) = v117;
          v117 = 0uLL;
          *(a5 + 24) = v113;
          *(a5 + 40) = v119;
          v118 = 0uLL;
          v119 = 0;
          *a5 = MEMORY[0x277D24E58] + 16;
          *(a5 + 48) = v120;
        }

        MEMORY[0x259CA8F00](&v116);
        goto LABEL_158;
      }

      v111 = MIL::IRObject::GetLocationPtr(a1);
      v112 = v111[1];
      v142 = *v111;
      v143 = v112;
      if (v112)
      {
        atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v144, "'dilations' vector must have equal length to the number of spatial dimensions.");
      MEMORY[0x259CA8EE0](&v116, &v142, 315, &v144);
    }

    else
    {
      v109 = MIL::IRObject::GetLocationPtr(a1);
      v110 = v109[1];
      v142 = *v109;
      v143 = v110;
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v144, "'dilations' parameter must have static shape.");
      MEMORY[0x259CA8EE0](&v116, &v142, 302, &v144);
    }

    if (v146 < 0)
    {
      operator delete(v144);
    }

    if (v143)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v143);
    }

    goto LABEL_154;
  }

  return MEMORY[0x259CA8F00](&v137);
}

void sub_259917E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49)
{
  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  v51 = *(v49 - 120);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  MEMORY[0x259CA8F00](&a22, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x259CA8F00](&a32);
  MEMORY[0x259CA8F00](v49 - 184);
  _Unwind_Resume(a1);
}

uint64_t ANEMachineIR::Validators::ValidateNeConv@<X0>(MIL::IRObject *a1@<X0>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v6 = MIL::IRValueType::AsTensorType(ParameterType);
  if (v86 < 0)
  {
    operator delete(__p[0]);
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v8 = LocationPtr[1];
  v144 = *LocationPtr;
  v145 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  std::string::basic_string[abi:ne200100]<0>(&v139, "ne_conv");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v144, v6, __p, &v139, &v146);
  if (SHIBYTE(v140) < 0)
  {
    operator delete(v139);
  }

  if (v86 < 0)
  {
    operator delete(__p[0]);
  }

  if (v145)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v145);
  }

  if (MIL::ValidationResult::IsGood(&v146))
  {
    v9 = (*(*a1 + 176))(a1);
    if (*(v9 + 8) == *v9)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    Type = MIL::IRNamedValueType::GetType(**v9);
    v11 = MIL::IRValueType::AsTensorType(Type);
    v12 = MIL::IRObject::GetLocationPtr(a1);
    v13 = v12[1];
    v137 = *v12;
    v138 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "output");
    std::string::basic_string[abi:ne200100]<0>(&v80, "ne_conv");
    ANEMachineIR::Validators::ValidateLiveTensorSize(&v137, v11, __p, &v80, &v139);
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80);
    }

    if (v86 < 0)
    {
      operator delete(__p[0]);
    }

    if (v138)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v138);
    }

    if ((MIL::ValidationResult::IsGood(&v139) & 1) == 0)
    {
      *(a3 + 8) = v140;
      v140 = 0uLL;
      *(a3 + 24) = v141;
      *(a3 + 40) = v142;
      v141 = 0uLL;
      v142 = 0;
      *a3 = MEMORY[0x277D24E58] + 16;
      *(a3 + 48) = v143;
LABEL_89:
      MEMORY[0x259CA8F00](&v139);
      return MEMORY[0x259CA8F00](&v146);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "dense_kernel");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    if (v86 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "alternative_format_kernel_coefficients");
    v15 = MIL::IROperation::TryGetParameterValue();
    if (v86 < 0)
    {
      operator delete(__p[0]);
    }

    if (!(ParameterValue | v15))
    {
      v16 = MIL::IRObject::GetLocationPtr(a1);
      v17 = v16[1];
      v135 = *v16;
      v136 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v133, "Must specify one of 'dense_kernel' and 'alternative_format_kernel_coefficients'");
      MEMORY[0x259CA8EE0](a3, &v135, 319, v133);
      if (v134 < 0)
      {
        operator delete(v133[0]);
      }

      v18 = v136;
      if (!v136)
      {
        goto LABEL_89;
      }

      goto LABEL_42;
    }

    if (ParameterValue && v15)
    {
      v20 = MIL::IRObject::GetLocationPtr(a1);
      v21 = v20[1];
      v131 = *v20;
      v132 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v129, "Cannot specify both of 'dense_kernel' and 'alternative_format_kernel_coefficients'");
      MEMORY[0x259CA8EE0](a3, &v131, 319, v129);
      if (v130 < 0)
      {
        operator delete(v129[0]);
      }

      v18 = v132;
      if (!v132)
      {
        goto LABEL_89;
      }

LABEL_42:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      goto LABEL_89;
    }

    v127 = 0;
    v126 = 0;
    v128 = 0;
    if (ParameterValue)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "sparse_mask");
      v22 = MIL::IROperation::TryGetParameterValue();
      if (v86 < 0)
      {
        operator delete(__p[0]);
      }

      if (v22)
      {
        v23 = MIL::IRObject::GetLocationPtr(a1);
        v24 = v23[1];
        v124 = *v23;
        v125 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v122, "'sparse_mask' is incompatible with 'dense_kernel'");
        MEMORY[0x259CA8EE0](a3, &v124, 319, v122);
        if (v123 < 0)
        {
          operator delete(v122[0]);
        }

        v25 = v125;
        if (!v125)
        {
          goto LABEL_87;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "sparse_num_nonzero");
        v29 = MIL::IROperation::TryGetParameterValue();
        if (v86 < 0)
        {
          operator delete(__p[0]);
        }

        if (v29)
        {
          v30 = MIL::IRObject::GetLocationPtr(a1);
          v31 = v30[1];
          v120 = *v30;
          v121 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v118, "'sparse_num_nonzero' is incompatible with 'dense_kernel'");
          MEMORY[0x259CA8EE0](a3, &v120, 319, v118);
          if (v119 < 0)
          {
            operator delete(v118[0]);
          }

          v25 = v121;
          if (!v121)
          {
            goto LABEL_87;
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "sparse_num_nonzero_per_filter");
          v32 = MIL::IROperation::TryGetParameterValue();
          if (v86 < 0)
          {
            operator delete(__p[0]);
          }

          if (v32)
          {
            v33 = MIL::IRObject::GetLocationPtr(a1);
            v34 = v33[1];
            v116 = *v33;
            v117 = v34;
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v114, "'sparse_num_nonzero_per_filter' is incompatible with 'dense_kernel'");
            MEMORY[0x259CA8EE0](a3, &v116, 319, v114);
            if (v115 < 0)
            {
              operator delete(v114[0]);
            }

            v25 = v117;
            if (!v117)
            {
              goto LABEL_87;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "palette_table");
            v35 = MIL::IROperation::TryGetParameterValue();
            if (v86 < 0)
            {
              operator delete(__p[0]);
            }

            if (!v35)
            {
              v39 = (*(*ParameterValue + 32))(ParameterValue);
              v40 = MIL::IRValueType::AsTensorType(v39);
              v41 = (*(*v40 + 96))(v40);
              v42 = *v41;
              v43 = v41[1];
              while (1)
              {
                if (v42 == v43)
                {
                  v45 = (*(*ParameterValue + 32))(ParameterValue);
                  v46 = MIL::IRValueType::AsTensorType(v45);
                  v26 = (*(*v46 + 88))(v46);
                  if (v15)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_96;
                }

                v44 = (*(**v42 + 16))();
                if (!v44)
                {
                  break;
                }

                __p[0] = (*(*v44 + 48))(v44);
                std::vector<unsigned long long>::emplace_back<unsigned long long>(&v126, __p);
                v42 += 8;
              }

              v59 = MIL::IRObject::GetLocationPtr(a1);
              v60 = v59[1];
              v108 = *v59;
              v109 = v60;
              if (v60)
              {
                atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              std::string::basic_string[abi:ne200100]<0>(v106, "kernel shape must be static.");
              MEMORY[0x259CA8EE0](a3, &v108, 319, v106);
              if (v107 < 0)
              {
                operator delete(v106[0]);
              }

              v25 = v109;
              if (v109)
              {
                goto LABEL_86;
              }

              goto LABEL_87;
            }

            v36 = MIL::IRObject::GetLocationPtr(a1);
            v37 = v36[1];
            v112 = *v36;
            v113 = v37;
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::string::basic_string[abi:ne200100]<0>(v110, "'palette_table' is incompatible with 'dense_kernel'");
            MEMORY[0x259CA8EE0](a3, &v112, 319, v110);
            if (v111 < 0)
            {
              operator delete(v110[0]);
            }

            v25 = v113;
            if (!v113)
            {
LABEL_87:
              if (v126)
              {
                v127 = v126;
                operator delete(v126);
              }

              goto LABEL_89;
            }
          }
        }
      }
    }

    else
    {
      v26 = 4;
      if (!v15)
      {
LABEL_96:
        v101 = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, "post_right_shift");
        MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v101, &v101 + 1, a3);
        if (v86 < 0)
        {
          operator delete(__p[0]);
        }

        if (!MIL::ValidationResult::IsGood(a3))
        {
          goto LABEL_87;
        }

        MEMORY[0x259CA8F00](a3);
        if (v101 == 1)
        {
          v47 = MIL::IRObject::GetLocationPtr(a1);
          v48 = v47[1];
          v99 = *v47;
          v100 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ANEMachineIR::Validators::ValidatePostRightShiftRange(a3);
          if (v100)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v100);
          }

          if (!MIL::ValidationResult::IsGood(a3))
          {
            goto LABEL_87;
          }

          MEMORY[0x259CA8F00](a3);
        }

        v98 = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, "acc_left_shift");
        MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v98, &v98 + 1, a3);
        if (v86 < 0)
        {
          operator delete(__p[0]);
        }

        if (MIL::ValidationResult::IsGood(a3))
        {
          MEMORY[0x259CA8F00](a3);
          v97 = 0;
          std::string::basic_string[abi:ne200100]<0>(__p, "acc_bias_shift");
          MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v97, &v97 + 1, a3);
          if (v86 < 0)
          {
            operator delete(__p[0]);
          }

          if (MIL::ValidationResult::IsGood(a3))
          {
            MEMORY[0x259CA8F00](a3);
            v94 = 0;
            v95 = 0;
            v96 = 0;
            memset(v93, 0, sizeof(v93));
            v91 = 0;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            ANEMachineIR::Validators::ParseConvParameterValues(a1, v93, &v94, __p, &v80);
            if (MIL::ValidationResult::IsGood(&v80))
            {
              v49 = (*(*v6 + 88))(v6) == 4;
              v50 = ANEMachineIR::Validators::BinaryPointFormatOffsets((v26 == 4), v49);
              if (!v92)
              {
                goto LABEL_121;
              }

              v51 = v50;
              std::string::basic_string[abi:ne200100]<0>(&v67, "bias");
              v52 = MIL::IROperation::GetParameterValue();
              MIL::IRValue::AsTensor(v52);
              v54 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
              if (SHIBYTE(v68) < 0)
              {
                v55 = v53;
                operator delete(v67);
                v53 = v55;
              }

              if (v53)
              {
                v56 = 2 * v53;
                while (1)
                {
                  v57 = *v54;
                  if (!ANEMachineIR::Validators::NeuralEngineAccumulatorInitLegal(*v54, SHIBYTE(v97), SHIBYTE(v98), v51))
                  {
                    v62 = MIL::IRObject::GetLocationPtr(a1);
                    v63 = v62[1];
                    v78 = *v62;
                    v79 = v63;
                    if (v63)
                    {
                      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    std::string::basic_string[abi:ne200100]<0>(v76, "Accumulator initialization out of range.");
                    MEMORY[0x259CA8EE0](a3, &v78, 315, v76);
                    if (v77 < 0)
                    {
                      operator delete(v76[0]);
                    }

                    v64 = v79;
                    if (v79)
                    {
                      goto LABEL_147;
                    }

                    goto LABEL_132;
                  }

                  if (!ANEMachineIR::Validators::NeuralEngineBiasShifterExponentLegal(v57, SHIBYTE(v97), SHIBYTE(v98), SHIBYTE(v51)))
                  {
                    break;
                  }

                  ++v54;
                  v56 -= 2;
                  if (!v56)
                  {
                    goto LABEL_121;
                  }
                }

                v65 = MIL::IRObject::GetLocationPtr(a1);
                v66 = v65[1];
                v74 = *v65;
                v75 = v66;
                if (v66)
                {
                  atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::string::basic_string[abi:ne200100]<0>(v72, "Illegal bias shift exponent.");
                MEMORY[0x259CA8EE0](a3, &v74, 315, v72);
                if (v73 < 0)
                {
                  operator delete(v72[0]);
                }

                v64 = v75;
                if (v75)
                {
LABEL_147:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v64);
                }
              }

              else
              {
LABEL_121:
                v58 = MIL::IRObject::GetLocationPtr(a1);
                ANEMachineIR::Validators::ValidateConvParameters(v58, v93, &v126, v26, &v94, __p, &v67);
                if (MIL::ValidationResult::IsGood(&v67))
                {
                  MIL::ValidationResult::ValidationResult(a3);
                }

                else
                {
                  v61 = v69;
                  *(a3 + 8) = v68;
                  v68 = 0uLL;
                  *(a3 + 24) = v61;
                  *(a3 + 40) = v70;
                  v69 = 0uLL;
                  v70 = 0;
                  *a3 = MEMORY[0x277D24E58] + 16;
                  *(a3 + 48) = v71;
                }

                MEMORY[0x259CA8F00](&v67);
              }
            }

            else
            {
              *(a3 + 8) = v81;
              v81 = 0uLL;
              *(a3 + 24) = v82;
              *(a3 + 40) = v83;
              v82 = 0uLL;
              v83 = 0;
              *a3 = MEMORY[0x277D24E58] + 16;
              *(a3 + 48) = v84;
            }

LABEL_132:
            MEMORY[0x259CA8F00](&v80);
            ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(__p);
            if (v93[0])
            {
              operator delete(v93[0]);
            }

            if (v94)
            {
              v95 = v94;
              operator delete(v94);
            }
          }
        }

        goto LABEL_87;
      }

LABEL_54:
      v27 = MIL::IRObject::GetLocationPtr(a1);
      v28 = v27[1];
      v104 = *v27;
      v105 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v102, "Alternative kernel (to dense) representations not yet implemented in MIL<aneflow>.");
      MEMORY[0x259CA8EE0](a3, &v104, 309, v102);
      if (v103 < 0)
      {
        operator delete(v102[0]);
      }

      v25 = v105;
      if (!v105)
      {
        goto LABEL_87;
      }
    }

LABEL_86:
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    goto LABEL_87;
  }

  v19 = v148;
  *(a3 + 8) = v147;
  v147 = 0uLL;
  *(a3 + 24) = v19;
  *(a3 + 40) = v149;
  v148 = 0uLL;
  v149 = 0;
  *a3 = MEMORY[0x277D24E58] + 16;
  *(a3 + 48) = v150;
  return MEMORY[0x259CA8F00](&v146);
}

void sub_259918D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  MEMORY[0x259CA8F00](&a30);
  ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(&a37);
  if (a51)
  {
    operator delete(a51);
  }

  if (a54)
  {
    a55 = a54;
    operator delete(a54);
  }

  v57 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v57;
    operator delete(v57);
  }

  MEMORY[0x259CA8F00](v55 - 208);
  MEMORY[0x259CA8F00](v55 - 136);
  _Unwind_Resume(a1);
}

void sub_2599190CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2599190C4);
}

void MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(MIL::IRObject *a1@<X0>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, MIL::ValidationResult *a5@<X8>)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    *a3 = 0;
    goto LABEL_25;
  }

  if ((*(*ParameterValue + 40))(ParameterValue))
  {
    v10 = MEMORY[0x259CA93E0]();
    if (v10)
    {
      *a4 = *v10;
      *a3 = 1;
LABEL_25:

      MIL::ValidationResult::ValidationResult(a5);
      return;
    }
  }

  *a3 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v12 = LocationPtr[1];
  v28 = *LocationPtr;
  v29 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v13 = std::string::append(&v23, " in operation ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = (*(*a1 + 56))(a1);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = *(v15 + 8);
  }

  v19 = std::string::append(&v24, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v25, ".");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v27 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a5, &v28, 304, __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }
}

void sub_2599192F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
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

  v37 = *(v35 - 56);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::NeConvParameterValues::~NeConvParameterValues(ANEMachineIR::Validators::NeConvParameterValues *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

unint64_t MIL::Util::Span<int const,18446744073709551615ul>::operator[](void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_2798E3508, MEMORY[0x277D825E0]);
  }

  return *a1 + 4 * a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::runtime_error *std::range_error::range_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828C8] + 16);
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

char *std::vector<unsigned long long>::emplace_back<unsigned long long>(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = (v13 + 1);
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
  return v6 - 8;
}

void ANEMachineIR::H2021::NeReduce::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25991ABA4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

const void **std::vector<std::shared_ptr<MIL::IRParameter>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>>(result, a2);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void **std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void ANEMachineIR::H2021::PeReduce::Make()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  operator new();
}

void sub_25991C8A0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(result);

    JUMPOUT(0x259CA9760);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t *std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25991D158(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MIL::IRDimension const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::IRDimension const*>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::IRDimension const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25991D254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, (a2 + 16));
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[2],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991D3EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(uint64_t result, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_25991DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[10],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991DEC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991DF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[15],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E024(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E184(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991E1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[17],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E2E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[11],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991E444(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ***std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x259CA9760](v2, 0x20C40960023A9);
  }

  return result;
}

uint64_t std::default_delete<std::vector<std::shared_ptr<MIL::IRParameter>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x259CA9760](a2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRParameter>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<MIL::IRParameter>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void std::__shared_ptr_pointer<MIL::IRParameter  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRParameter  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(result);

    JUMPOUT(0x259CA9760);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<std::vector<std::shared_ptr<MIL::IRParameter>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286AADC48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::ValidationResult (*)(MIL::IROperation const&),std::allocator<MIL::ValidationResult (*)(MIL::IROperation const&)>,MIL::ValidationResult ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpParameterConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::OpOutputConstraintTarget  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorDTypeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorSymbolicShapeConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_25991F098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991F158(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
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

void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(void **a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::PossibleStringValuesConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25991F40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[16],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991F4F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991F56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[18],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991F654(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25991F6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[26],std::unique_ptr<MIL::IRParameter>,0>(void *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25991F7B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::TranslateAvgPool(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
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
    std::string::__init_copy_ctor_external(&v166, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v166.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v166.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v9 = (*(*(a2 + 8) + 16))(a2 + 64, &__p, 1);
  v11 = MIL::IRValueType::AsTensorType(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v165, v11, v10);
  std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "exclude_padding_from_average");
  MIL::IROperation::GetParameterValue();
  v12 = MIL::IRValue::GetScalar<BOOL>();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ceil_mode");
  MIL::IROperation::GetParameterValue();
  v13 = MIL::IRValue::GetScalar<BOOL>();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v13)
  {
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v166, v11, &v158);
    v26 = (*(*a2 + 176))(a2);
    v27 = **v26;
    v28 = (*v26)[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Type = MIL::IRNamedValueType::GetType(v27);
    v30 = MIL::IRValueType::AsTensorType(Type);
    v156 = 0;
    v155 = 0;
    v157 = 0;
    ANEMachineIR::Utils::GetStaticTensorShape(&v153, v30, v31);
    v32 = (*(*v11 + 96))(v11);
    MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v166.__r_.__value_.__l.__data_, (v32[1] - *v32) >> 3, &__s);
    MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__s, (v154 - v153) >> 3, v149);
    if (MilTranslator::OpTranslator::IsTransposeRequired(v149))
    {
      v71 = v28;
      MilTranslator::OpTranslator::InferTransposedShape(&v153, v149, &v131);
      (*(*v30 + 88))(v30);
      MIL::IRTensorValueType::Make();
      Name = MIL::IRNamedValueType::GetName(v27);
      v34 = Name;
      if (*(Name + 23) >= 0)
      {
        v35 = *(Name + 23);
      }

      else
      {
        v35 = *(Name + 8);
      }

      p_str = &__str;
      std::string::basic_string[abi:ne200100](&__str, v35 + 13);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (v35)
      {
        if (v34[23] >= 0)
        {
          v37 = v34;
        }

        else
        {
          v37 = *v34;
        }

        memmove(p_str, v37, v35);
      }

      strcpy(p_str + v35, "_channel_last");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        v28 = v71;
        std::string::__init_copy_ctor_external(&v132, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        v132 = __s;
        v28 = v71;
      }

      LODWORD(v133) = v151;
      BYTE4(v133) = v152;
      std::string::operator=(&v132, &__str);
      v41 = MIL::IRNamedValueType::GetName(v27);
      std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&__p, v41, &v132);
      std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &__p, &__p);
      if (SHIBYTE(v98) < 0)
      {
        operator delete(v96);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v148, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v148 = __str;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v145;
      if (v145)
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v145 = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v155, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v145);
      if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v148.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v40 = v131.__r_.__value_.__r.__words[0];
      if (!v131.__r_.__value_.__r.__words[0])
      {
        goto LABEL_76;
      }

      v131.__r_.__value_.__l.__size_ = v131.__r_.__value_.__r.__words[0];
    }

    else
    {
      v38 = MIL::IRNamedValueType::GetName(v27);
      if (*(v38 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v147, *v38, *(v38 + 8));
      }

      else
      {
        v39 = *v38;
        v147.__r_.__value_.__r.__words[2] = *(v38 + 16);
        *&v147.__r_.__value_.__l.__data_ = v39;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v132.__r_.__value_.__r.__words[0];
      if (v132.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v132.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v155, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v132);
      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      v40 = v147.__r_.__value_.__r.__words[0];
    }

    operator delete(v40);
LABEL_76:
    MilTranslator::OpTranslator::InferTransposedShape(v165, v149, &v145);
    (*(*v11 + 88))(v11);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v145, v146, (v146 - v145) >> 3);
    v42 = MIL::IRTensorValueType::Make();
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&v144, 0, sizeof(v144));
    memset(&v132, 0, sizeof(v132));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v132, v163, v164, (v164 - v163) >> 2);
    v134 = 0;
    v133 = 0;
    v135 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v133, v161, v162, (v162 - v161) >> 2);
    v137 = 0;
    v136 = 0;
    v138 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v136, v159, v160, (v160 - v159) >> 2);
    v139 = 0;
    v140 = 0;
    v43 = v12 ^ 1;
    v141 = v12 ^ 1;
    v142 = 1;
    v143 = 0;
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    v45 = (*(*a2 + 56))(a2);
    if (v156 == v155)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v46 = v45;
    v47 = MIL::IRNamedValueType::GetType(*v155);
    v48 = MIL::IRValueType::AsTensorType(v47);
    ANEMachineIR::Validators::ValidatePePool(LocationPtr, v46, v42, v48, &v132, &v131);
    if (MIL::ValidationResult::IsGood(&v131))
    {
      std::string::basic_string[abi:ne200100]<0>(&v129, "pe_avg_pool");
      MilTranslator::OpTranslator::AddOperation(this);
      if (v130 < 0)
      {
        operator delete(v129);
      }

      std::string::basic_string[abi:ne200100]<0>(&v126, "x");
      if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v125, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
      }

      else
      {
        v125 = v158;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v128)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v128);
      }

      if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v125.__r_.__value_.__l.__data_);
      }

      if (v127 < 0)
      {
        operator delete(v126);
      }

      std::string::basic_string[abi:ne200100]<0>(&v122, "kernel_sizes");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v124)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v124);
      }

      if (v123 < 0)
      {
        operator delete(v122);
      }

      std::string::basic_string[abi:ne200100]<0>(&v119, "strides");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v121)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v121);
      }

      if (v120 < 0)
      {
        operator delete(v119);
      }

      std::string::basic_string[abi:ne200100]<0>(&v116, "custom_pads");
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v159, v160, (v160 - v159) >> 2);
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v118)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v118);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v117 < 0)
      {
        operator delete(v116);
      }

      std::string::basic_string[abi:ne200100]<0>(&v113, "include_pads");
      MIL::Builder::OperationBuilder::AddInputBool();
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }

      if (v114 < 0)
      {
        operator delete(v113);
      }

      if (v156 == v155)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v67 = MIL::IRNamedValueType::GetName(*v155);
      if (*(v67 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v111, *v67, *(v67 + 8));
      }

      else
      {
        v68 = *v67;
        v111.__r_.__value_.__r.__words[2] = *(v67 + 16);
        *&v111.__r_.__value_.__l.__data_ = v68;
      }

      if (v156 == v155)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRNamedValueType::GetType(*v155);
      MIL::Builder::OperationBuilder::AddOutput();
      if (v112)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v112);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      MIL::MILResult::GetMessage(&v131);
      std::operator+<char>();
      v49 = std::string::append(&__str, "; ");
      v50 = *&v49->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
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

      std::string::append(&v144, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v163, &__p);
      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v161, &__p);
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v163, v164, (v164 - v163) >> 2);
      v96 = 0;
      v97 = 0;
      v98 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v96, v161, v162, (v162 - v161) >> 2);
      v99 = 0;
      v100 = 0;
      v101 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v99, v159, v160, (v160 - v159) >> 2);
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v108 = v43;
      v109 = 1;
      v110 = 0;
      v53 = MIL::IRObject::GetLocationPtr(a2);
      v54 = (*(*a2 + 56))(a2);
      if (v156 == v155)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v55 = v54;
      v56 = MIL::IRNamedValueType::GetType(*v155);
      v57 = MIL::IRValueType::AsTensorType(v56);
      ANEMachineIR::Validators::ValidateNePool(v53, v55, v42, v57, &__p, &__str);
      if (MIL::ValidationResult::IsGood(&__str))
      {
        std::string::basic_string[abi:ne200100]<0>(&v92, "ne_avg_pool");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:ne200100]<0>(&v89, "x");
        if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v88, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
        }

        else
        {
          v88 = v158;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v91)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (v90 < 0)
        {
          operator delete(v89);
        }

        std::string::basic_string[abi:ne200100]<0>(&v85, "kernel_sizes");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v87)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        }

        if (v86 < 0)
        {
          operator delete(v85);
        }

        std::string::basic_string[abi:ne200100]<0>(&v82, "strides");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v84)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v84);
        }

        if (v83 < 0)
        {
          operator delete(v82);
        }

        std::string::basic_string[abi:ne200100]<0>(&v79, "custom_pads");
        memset(&v78, 0, sizeof(v78));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v78, v159, v160, (v160 - v159) >> 2);
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        if (v78.__r_.__value_.__r.__words[0])
        {
          v78.__r_.__value_.__l.__size_ = v78.__r_.__value_.__r.__words[0];
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        std::string::basic_string[abi:ne200100]<0>(&v75, "include_pads");
        MIL::Builder::OperationBuilder::AddInputBool();
        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        if (v76 < 0)
        {
          operator delete(v75);
        }

        if (v156 == v155)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v69 = MIL::IRNamedValueType::GetName(*v155);
        if (*(v69 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v73, *v69, *(v69 + 8));
        }

        else
        {
          v70 = *v69;
          v73.__r_.__value_.__r.__words[2] = *(v69 + 16);
          *&v73.__r_.__value_.__l.__data_ = v70;
        }

        if (v156 == v155)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        MIL::IRNamedValueType::GetType(*v155);
        MIL::Builder::OperationBuilder::AddOutput();
        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v72.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MIL::MILResult::GetMessage(&__str);
        std::operator+<char>();
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v78;
        }

        else
        {
          v58 = v78.__r_.__value_.__r.__words[0];
        }

        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = v78.__r_.__value_.__l.__size_;
        }

        std::string::append(&v144, v58, v59);
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v60 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v61 = std::string::append(&v72, "', violations: ");
        v62 = *&v61->__r_.__value_.__l.__data_;
        v78.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
        *&v78.__r_.__value_.__l.__data_ = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &v144;
        }

        else
        {
          v63 = v144.__r_.__value_.__r.__words[0];
        }

        if ((v144.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = HIBYTE(v144.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v64 = v144.__r_.__value_.__l.__size_;
        }

        v65 = std::string::append(&v78, v63, v64);
        v66 = *&v65->__r_.__value_.__l.__data_;
        *(v60 + 16) = *(&v65->__r_.__value_.__l + 2);
        *v60 = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&__str);
      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    MEMORY[0x259CA8F00](&v131);
    if (v136)
    {
      v137 = v136;
      operator delete(v136);
    }

    if (v133)
    {
      v134 = v133;
      operator delete(v133);
    }

    if (v132.__r_.__value_.__r.__words[0])
    {
      v132.__r_.__value_.__l.__size_ = v132.__r_.__value_.__r.__words[0];
      operator delete(v132.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (v145)
    {
      v146 = v145;
      operator delete(v145);
    }

    if (v149[0])
    {
      v149[1] = v149[0];
      operator delete(v149[0]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v153)
    {
      v154 = v153;
      operator delete(v153);
    }

    __p.__r_.__value_.__r.__words[0] = &v155;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_217;
    }

    v25 = v158.__r_.__value_.__r.__words[0];
    goto LABEL_216;
  }

  *a3 = 6;
  v14 = a3 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v131, "ceil_mode");
  v15 = std::string::insert(&v131, 0, "Input '");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v132.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v132.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v132, "' is not supported for ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = (*(*a2 + 56))(a2);
  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = *v19;
  }

  if (v20 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *(v14 + 16) = *(&v23->__r_.__value_.__l + 2);
  *v14 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_217;
  }

  v25 = v131.__r_.__value_.__r.__words[0];
LABEL_216:
  operator delete(v25);
LABEL_217:
  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  if (v161)
  {
    v162 = v161;
    operator delete(v161);
  }

  if (v163)
  {
    v164 = v163;
    operator delete(v163);
  }

  if (v165[0])
  {
    v165[1] = v165[0];
    operator delete(v165[0]);
  }

  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }
}

void sub_259920A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t *a62)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MEMORY[0x259CA8F00](&a55, a2, a3, a4, a5, a6, a7, a8);
  ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(&a62);
  MEMORY[0x259CA8F00](&STACK[0x318]);
  ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(&STACK[0x350]);
  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  v65 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v65;
    operator delete(v65);
  }

  v66 = STACK[0x410];
  if (STACK[0x410])
  {
    STACK[0x418] = v66;
    operator delete(v66);
  }

  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  v67 = STACK[0x448];
  if (STACK[0x448])
  {
    STACK[0x450] = v67;
    operator delete(v67);
  }

  a62 = &STACK[0x460];
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a62);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (*(v63 - 225) < 0)
  {
    operator delete(*(v63 - 248));
  }

  v68 = *(v63 - 224);
  if (v68)
  {
    *(v63 - 216) = v68;
    operator delete(v68);
  }

  v69 = *(v63 - 200);
  if (v69)
  {
    *(v63 - 192) = v69;
    operator delete(v69);
  }

  v70 = *(v63 - 176);
  if (v70)
  {
    *(v63 - 168) = v70;
    operator delete(v70);
  }

  v71 = *(v63 - 152);
  if (v71)
  {
    *(v63 - 144) = v71;
    operator delete(v71);
  }

  if (*(v63 - 105) < 0)
  {
    operator delete(*(v63 - 128));
  }

  _Unwind_Resume(a1);
}

void MilTranslator::anonymous namespace::GetParamValuesOfInt32Vector(const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  ParameterValue = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v19 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&Data, v6);
      v9 = a3[1];
      v8 = a3[2];
      if (v9 >= v8)
      {
        v11 = *a3;
        v12 = v9 - *a3;
        v13 = (v12 >> 2) + 1;
        if (v13 >> 62)
        {
          std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
        }

        v14 = v8 - v11;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v15);
        }

        v16 = (4 * (v12 >> 2));
        *v16 = *v7;
        v10 = v16 + 1;
        memcpy(0, v11, v12);
        v17 = *a3;
        *a3 = 0;
        a3[1] = v10;
        a3[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = *v7;
        v10 = v9 + 4;
      }

      a3[1] = v10;
      ++v6;
    }

    while (v6 < v19);
  }
}

void sub_259921220(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::anonymous namespace::GetCustomPadValues(uint64_t *__return_ptr a1@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v52, "pad_type");
  MIL::IROperation::GetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  std::string::basic_string[abi:ne200100]<0>(&v52, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(&__p, v5, v4);
  std::string::basic_string[abi:ne200100]<0>(&v52, "kernel_sizes");
  ParameterValue = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(ParameterValue);
  v43[0] = MIL::IRTensorValue::GetDataView<int>();
  v43[1] = v7;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  std::string::basic_string[abi:ne200100]<0>(&v52, "strides");
  v8 = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(v8);
  v42[0] = MIL::IRTensorValue::GetDataView<int>();
  v42[1] = v9;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  std::string::basic_string[abi:ne200100]<0>(&v52, "pad");
  v10 = MIL::IROperation::GetParameterValue();
  MIL::IRValue::AsTensor(v10);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v41 = v11;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
    v11 = v41;
  }

  std::vector<int>::vector[abi:ne200100](a1, v11);
  v12 = __p;
  v13 = (v45 - __p) >> 3;
  v14 = v13 - 2;
  if (v13 != 2)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = *(__p + v16);
      v18 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v43, v16);
      v19 = *MIL::Util::Span<int const,18446744073709551615ul>::At(v42, v16);
      v20 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v15);
      v21 = *MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v15 + 1);
      if (v48 < 0)
      {
        if (v47 == 4)
        {
          v27 = *v46;
          goto LABEL_40;
        }

        if (v47 != 5)
        {
          if (v47 != 6)
          {
            goto LABEL_49;
          }

          v22 = v46;
LABEL_22:
          v23 = *v22;
          v24 = v22[2];
          if (v23 != 1953723747 || v24 != 28015)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        if (*v46 != 1768710518 || *(v46 + 4) != 100)
        {
LABEL_49:
          exception = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v49, "pad_type");
          v32 = std::string::insert(&v49, 0, "Invalid ");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v50.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          v34 = std::string::append(&v50, ": ");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v51.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
          *&v51.__r_.__value_.__l.__data_ = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          if ((v48 & 0x80u) == 0)
          {
            v36 = &v46;
          }

          else
          {
            v36 = v46;
          }

          if ((v48 & 0x80u) == 0)
          {
            v37 = v48;
          }

          else
          {
            v37 = v47;
          }

          v38 = std::string::append(&v51, v36, v37);
          v39 = *&v38->__r_.__value_.__l.__data_;
          v53 = v38->__r_.__value_.__r.__words[2];
          v52 = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x259CA9540](exception, &v52);
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      else
      {
        if (v48 == 4)
        {
          v27 = v46;
LABEL_40:
          if (v27 != 1701667187)
          {
            goto LABEL_49;
          }

          v29 = (v18 + ~v17 + v17 - (v17 + v19 - 1) % v19) & ~((v18 + ~v17 + v17 - (v17 + v19 - 1) % v19) >> 31);
          v20 = v29 >> 1;
          v21 = (v29 + 1) >> 1;
          goto LABEL_42;
        }

        if (v48 != 5)
        {
          if (v48 != 6)
          {
            goto LABEL_49;
          }

          v22 = &v46;
          goto LABEL_22;
        }

        if (v46 != 1768710518 || BYTE4(v46) != 100)
        {
          goto LABEL_49;
        }
      }

      v20 = 0;
      v21 = 0;
LABEL_42:
      v30 = (*a1 + 4 * v15);
      *v30 = v20;
      v30[1] = v21;
      ++v16;
      v15 += 2;
      if (v14 == v16)
      {
        v12 = __p;
        break;
      }
    }
  }

  if (v12)
  {
    v45 = v12;
    operator delete(v12);
  }

  if (v48 < 0)
  {
    operator delete(v46);
  }
}

void sub_259921674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::~pair(uint64_t a1)
{
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

MIL::IRNamedValueType **std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](MIL::IRNamedValueType **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRNamedValueType::~IRNamedValueType(v2);
    MEMORY[0x259CA9760]();
  }

  return a1;
}

void ANEMachineIR::Validators::NePoolParamValues::~NePoolParamValues(ANEMachineIR::Validators::NePoolParamValues *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void MilTranslator::OpTranslator::TranslateMaxPool(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
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
    std::string::__init_copy_ctor_external(&v153, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v153.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v153.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v152, v11, v10);
  std::string::basic_string[abi:ne200100]<0>(&__p, "kernel_sizes");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "strides");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ceil_mode");
  MIL::IROperation::GetParameterValue();
  v12 = MIL::IRValue::GetScalar<BOOL>();
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_29:
    MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v153, v11, &v145);
    v26 = (*(*a2 + 176))(a2);
    v28 = **v26;
    v27 = (*v26)[1];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Type = MIL::IRNamedValueType::GetType(v28);
    v30 = MIL::IRValueType::AsTensorType(Type);
    v143 = 0;
    v142 = 0;
    v144 = 0;
    ANEMachineIR::Utils::GetStaticTensorShape(&v140, v30, v31);
    v32 = (*(*v11 + 96))(v11);
    MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v153.__r_.__value_.__l.__data_, (v32[1] - *v32) >> 3, &__s);
    MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__s, (v141 - v140) >> 3, v136);
    if (MilTranslator::OpTranslator::IsTransposeRequired(v136))
    {
      MilTranslator::OpTranslator::InferTransposedShape(&v140, v136, &v120);
      (*(*v30 + 88))(v30);
      MIL::IRTensorValueType::Make();
      Name = MIL::IRNamedValueType::GetName(v28);
      v34 = Name;
      if (*(Name + 23) >= 0)
      {
        v35 = *(Name + 23);
      }

      else
      {
        v35 = *(Name + 8);
      }

      p_str = &__str;
      std::string::basic_string[abi:ne200100](&__str, v35 + 13);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (v35)
      {
        if (v34[23] >= 0)
        {
          v37 = v34;
        }

        else
        {
          v37 = *v34;
        }

        memmove(p_str, v37, v35);
      }

      strcpy(p_str + v35, "_channel_last");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v121, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        v121 = __s;
      }

      LODWORD(v122) = v138;
      BYTE4(v122) = v139;
      std::string::operator=(&v121, &__str);
      v41 = MIL::IRNamedValueType::GetName(v28);
      std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&__p, v41, &v121);
      std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &__p, &__p);
      if (SHIBYTE(v93) < 0)
      {
        operator delete(v91);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v135, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
      }

      else
      {
        v135 = __str;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v132;
      if (v132)
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v132 = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v142, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v132);
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v121.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v40 = v120.__r_.__value_.__r.__words[0];
      if (!v120.__r_.__value_.__r.__words[0])
      {
        goto LABEL_74;
      }

      v120.__r_.__value_.__l.__size_ = v120.__r_.__value_.__r.__words[0];
    }

    else
    {
      v38 = MIL::IRNamedValueType::GetName(v28);
      if (*(v38 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v134, *v38, *(v38 + 8));
      }

      else
      {
        v39 = *v38;
        v134.__r_.__value_.__r.__words[2] = *(v38 + 16);
        *&v134.__r_.__value_.__l.__data_ = v39;
      }

      MIL::IRNamedValueType::Make();
      __p.__r_.__value_.__r.__words[0] = v121.__r_.__value_.__r.__words[0];
      if (v121.__r_.__value_.__r.__words[0])
      {
        operator new();
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v121.__r_.__value_.__r.__words[0] = 0;
      std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v142, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v121);
      if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      v40 = v134.__r_.__value_.__r.__words[0];
    }

    operator delete(v40);
LABEL_74:
    MilTranslator::OpTranslator::InferTransposedShape(v152, v136, &v132);
    (*(*v11 + 88))(v11);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v132, v133, (v133 - v132) >> 3);
    v42 = MIL::IRTensorValueType::Make();
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&v131, 0, sizeof(v131));
    memset(&v121, 0, sizeof(v121));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v121, v150, v151, (v151 - v150) >> 2);
    v123 = 0;
    v122 = 0;
    v124 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v122, v148, v149, (v149 - v148) >> 2);
    v126 = 0;
    v125 = 0;
    v127 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v125, v146, v147, (v147 - v146) >> 2);
    v128 = 0;
    v129 = 0;
    v130 = 0;
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    v44 = (*(*a2 + 56))(a2);
    if (v143 == v142)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v45 = v44;
    v46 = MIL::IRNamedValueType::GetType(*v142);
    v47 = MIL::IRValueType::AsTensorType(v46);
    ANEMachineIR::Validators::ValidatePePool(LocationPtr, v45, v42, v47, &v121, &v120);
    if (MIL::ValidationResult::IsGood(&v120))
    {
      std::string::basic_string[abi:ne200100]<0>(&v118, "pe_max_pool");
      MilTranslator::OpTranslator::AddOperation(this);
      if (v119 < 0)
      {
        operator delete(v118);
      }

      std::string::basic_string[abi:ne200100]<0>(&v115, "x");
      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v114, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
      }

      else
      {
        v114 = v145;
      }

      MIL::Builder::OperationBuilder::AddInput();
      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

      if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v114.__r_.__value_.__l.__data_);
      }

      if (v116 < 0)
      {
        operator delete(v115);
      }

      std::string::basic_string[abi:ne200100]<0>(&v111, "kernel_sizes");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v113)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
      }

      if (v112 < 0)
      {
        operator delete(v111);
      }

      std::string::basic_string[abi:ne200100]<0>(&v108, "strides");
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
      }

      if (v109 < 0)
      {
        operator delete(v108);
      }

      std::string::basic_string[abi:ne200100]<0>(&v105, "custom_pads");
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v146, v147, (v147 - v146) >> 2);
      MIL::Builder::OperationBuilder::AddInputInt32();
      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v107);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v106 < 0)
      {
        operator delete(v105);
      }

      if (v143 == v142)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v66 = MIL::IRNamedValueType::GetName(*v142);
      if (*(v66 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v103, *v66, *(v66 + 8));
      }

      else
      {
        v67 = *v66;
        v103.__r_.__value_.__r.__words[2] = *(v66 + 16);
        *&v103.__r_.__value_.__l.__data_ = v67;
      }

      if (v143 == v142)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      MIL::IRNamedValueType::GetType(*v142);
      MIL::Builder::OperationBuilder::AddOutput();
      if (v104)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104);
      }

      if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v103.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      if (__str.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
      }
    }

    else
    {
      MIL::MILResult::GetMessage(&v120);
      std::operator+<char>();
      v48 = std::string::append(&__str, "; ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
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

      std::string::append(&v131, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v150, &__p);
      LODWORD(__p.__r_.__value_.__l.__data_) = 1;
      std::vector<int>::push_back[abi:ne200100](&v148, &__p);
      memset(&__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v150, v151, (v151 - v150) >> 2);
      v91 = 0;
      v92 = 0;
      v93 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, v148, v149, (v149 - v148) >> 2);
      v94 = 0;
      v95 = 0;
      v96 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v94, v146, v147, (v147 - v146) >> 2);
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v52 = MIL::IRObject::GetLocationPtr(a2);
      v53 = (*(*a2 + 56))(a2);
      if (v143 == v142)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v54 = v53;
      v55 = MIL::IRNamedValueType::GetType(*v142);
      v56 = MIL::IRValueType::AsTensorType(v55);
      ANEMachineIR::Validators::ValidateNePool(v52, v54, v42, v56, &__p, &__str);
      if (MIL::ValidationResult::IsGood(&__str))
      {
        std::string::basic_string[abi:ne200100]<0>(&v87, "ne_max_pool");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v88 < 0)
        {
          operator delete(v87);
        }

        std::string::basic_string[abi:ne200100]<0>(&v84, "x");
        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v83, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
        }

        else
        {
          v83 = v145;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84);
        }

        std::string::basic_string[abi:ne200100]<0>(&v80, "kernel_sizes");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        if (v81 < 0)
        {
          operator delete(v80);
        }

        std::string::basic_string[abi:ne200100]<0>(&v77, "strides");
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        if (v78 < 0)
        {
          operator delete(v77);
        }

        std::string::basic_string[abi:ne200100]<0>(&v74, "custom_pads");
        memset(&v73, 0, sizeof(v73));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v73, v146, v147, (v147 - v146) >> 2);
        MIL::Builder::OperationBuilder::AddInputInt32();
        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        if (v73.__r_.__value_.__r.__words[0])
        {
          v73.__r_.__value_.__l.__size_ = v73.__r_.__value_.__r.__words[0];
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74);
        }

        if (v143 == v142)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v68 = MIL::IRNamedValueType::GetName(*v142);
        if (*(v68 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v71, *v68, *(v68 + 8));
        }

        else
        {
          v69 = *v68;
          v71.__r_.__value_.__r.__words[2] = *(v68 + 16);
          *&v71.__r_.__value_.__l.__data_ = v69;
        }

        if (v143 == v142)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        MIL::IRNamedValueType::GetType(*v142);
        MIL::Builder::OperationBuilder::AddOutput();
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v70.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MIL::MILResult::GetMessage(&__str);
        std::operator+<char>();
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v73;
        }

        else
        {
          v57 = v73.__r_.__value_.__r.__words[0];
        }

        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v58 = v73.__r_.__value_.__l.__size_;
        }

        std::string::append(&v131, v57, v58);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v59 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v60 = std::string::append(&v70, "', violations: ");
        v61 = *&v60->__r_.__value_.__l.__data_;
        v73.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
        *&v73.__r_.__value_.__l.__data_ = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v131;
        }

        else
        {
          v62 = v131.__r_.__value_.__r.__words[0];
        }

        if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v131.__r_.__value_.__l.__size_;
        }

        v64 = std::string::append(&v73, v62, v63);
        v65 = *&v64->__r_.__value_.__l.__data_;
        *(v59 + 16) = *(&v64->__r_.__value_.__l + 2);
        *v59 = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&__str);
      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    MEMORY[0x259CA8F00](&v120);
    if (v125)
    {
      v126 = v125;
      operator delete(v125);
    }

    if (v122)
    {
      v123 = v122;
      operator delete(v122);
    }

    if (v121.__r_.__value_.__r.__words[0])
    {
      v121.__r_.__value_.__l.__size_ = v121.__r_.__value_.__r.__words[0];
      operator delete(v121.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if (v132)
    {
      v133 = v132;
      operator delete(v132);
    }

    if (v136[0])
    {
      v136[1] = v136[0];
      operator delete(v136[0]);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v140)
    {
      v141 = v140;
      operator delete(v140);
    }

    __p.__r_.__value_.__r.__words[0] = &v142;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_207;
    }

    v25 = v145.__r_.__value_.__r.__words[0];
    goto LABEL_206;
  }

  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_16:
  *a3 = 6;
  v14 = a3 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v120, "ceil_mode");
  v15 = std::string::insert(&v120, 0, "Input '");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v121.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v121.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v121, "' is not supported for ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = (*(*a2 + 56))(a2);
  v20 = *(v19 + 23);
  if (v20 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = *v19;
  }

  if (v20 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = std::string::append(&__p, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *(v14 + 16) = *(&v23->__r_.__value_.__l + 2);
  *v14 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_207;
  }

  v25 = v120.__r_.__value_.__r.__words[0];
LABEL_206:
  operator delete(v25);
LABEL_207:
  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v152[0])
  {
    v152[1] = v152[0];
    operator delete(v152[0]);
  }

  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }
}