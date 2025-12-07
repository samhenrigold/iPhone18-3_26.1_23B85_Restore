_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1E12C1580](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if ((a4 + 1) == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (v6[v10] != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = &v6[v10];
      if (*result == 46)
      {
        v6 = (a4 + 1);
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12C1580](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1E12C1580](a5, a3 + a2, 1, a4);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1E12C15E0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if ((a4 + 1) == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (v6[v10] != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = &v6[v10];
      if (*result == 46)
      {
        v6 = (a4 + 1);
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1E12C15E0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 5), 112, 3uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1E12C15E0](a5, a3 + a2, 1, a4);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      return result;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_10;
    case 7:
      result = *a1;
      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t **a3, unint64_t a4, unint64_t a5, char a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 0xAu);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 0xAu);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, __src, v14, v6, 8u);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t **a3, unint64_t a4, unint64_t a5, char a6, char *__src, char *a8, char *a9, unsigned int a10)
{
  v10 = a8;
  v11 = __src;
  v12 = a5;
  v14 = a2;
  v15 = a1;
  v16 = a4;
  if (a6)
  {
    v17 = 45;
LABEL_7:
    *__src = v17;
    v19 = __src + 1;
    goto LABEL_8;
  }

  v18 = (a4 >> 3) & 3;
  if (v18 == 2)
  {
    v17 = 43;
    goto LABEL_7;
  }

  v19 = __src;
  if (v18 == 3)
  {
    v17 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v20 = *a9;
      if (*a9)
      {
        v21 = a9 + 1;
        do
        {
          *v19++ = v20;
          v22 = *v21++;
          v20 = v22;
        }

        while (v22);
      }
    }
  }

  HIDWORD(v24) = a10 - 2;
  LODWORD(v24) = a10 - 2;
  v23 = v24 >> 1;
  if (v23 != 4)
  {
    if (v23)
    {
      if (v23 == 3)
      {
        v61 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }

      else
      {
        if (v23 != 7)
        {
          v62 = (a8 - v19);
          v63 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a1, a2, a10);
          if (v62 >= v63)
          {
            v10 = &v19[v63];
            v64 = v10 - 1;
            do
            {
              v65 = __udivti3();
              v66 = __PAIR128__(v14, v15) >= a10;
              *v64-- = a0123456789abcd[v15 - v65 * a10];
              v15 = v65;
              v14 = v67;
            }

            while (v66);
          }

LABEL_17:
          v27 = a3;
          if ((v16 & 0x40) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_38;
        }

        v61 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
      }
    }

    else
    {
      v61 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(v19, a8, a1, a2);
    }

    v10 = v61;
    goto LABEL_17;
  }

  v25 = a8 - v19;
  if (!a2)
  {
    v27 = a3;
    if (v25 > 19 || (v28 = (1233 * (64 - __clz(a1 | 1))) >> 12, v25 >= v28 - (std::__itoa::__pow10_64[v28] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v32 = v19;
        if (v15 > 0x2540BE3FFLL)
        {
          v32 = std::__itoa::__base_10_u32[abi:ne200100](v19, v15 / 0x2540BE400);
          v15 %= 0x2540BE400uLL;
        }

        v29 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v32, v15);
      }

      else
      {
        v29 = std::__itoa::__base_10_u32[abi:ne200100](v19, a1);
      }

      v10 = v29;
    }

    if ((v16 & 0x40) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_38;
  }

  if (v25 <= 38)
  {
    v26 = (1233 * (128 - __clz(a2))) >> 12;
    if (v25 < v26 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v26]) + 1)
    {
      goto LABEL_17;
    }
  }

  if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *v19 = __udivti3() | 0x30;
    v33 = __udivti3();
    v19[1] = ((1441151881 * v33) >> 57) + 48;
    *(v19 + 1) = std::__itoa::__digits_base_10[v33 % 0x5F5E100 / 0xF4240uLL];
    v34 = v33 % 0x5F5E100 % 0xF4240;
    *(v19 + 2) = std::__itoa::__digits_base_10[v34 / 0x2710uLL];
    LOWORD(v34) = v34 % 0x2710;
    *(v19 + 3) = std::__itoa::__digits_base_10[v34 / 0x64u];
    *(v19 + 4) = std::__itoa::__digits_base_10[v34 % 0x64u];
    v35 = __udivti3();
    v31 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v19 + 5, v35);
    goto LABEL_33;
  }

  v30 = __udivti3();
  if (!HIDWORD(v30))
  {
    v31 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30);
LABEL_33:
    v36 = v31;
    goto LABEL_37;
  }

  v37 = v19;
  if (v30 > 0x2540BE3FFLL)
  {
    v37 = std::__itoa::__base_10_u32[abi:ne200100](v19, v30 / 0x2540BE400);
    v30 %= 0x2540BE400uLL;
  }

  v36 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v37, v30);
LABEL_37:
  v38 = __umodti3();
  *v36 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
  v39 = v38 / 0x2540BE400 % 0x5F5E100;
  *(v36 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
  v39 %= 0xF4240u;
  *(v36 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
  LOWORD(v39) = v39 % 0x2710;
  *(v36 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
  *(v36 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
  v10 = std::__itoa::__append10[abi:ne200100]<unsigned long long>((v36 + 9), v38 % 0x2540BE400);
  v12 = a5;
  v27 = a3;
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_64;
  }

LABEL_38:
  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v71, v27);
  v40 = std::locale::use_facet(&v71, MEMORY[0x1E69E5368]);
  v41 = v10 - v19;
  std::locale::~locale(&v71);
  (v40->__vftable[1].__on_zero_shared)(&v71, v40);
  if ((v73 & 0x8000000000000000) != 0)
  {
    locale = v71.__locale_;
    v43 = v72;
    if (v72 && v41 > *v71.__locale_)
    {
      v44 = v71.__locale_;
      goto LABEL_45;
    }

    operator delete(v71.__locale_);
    v27 = a3;
LABEL_64:
    v56 = HIDWORD(a4);
    if ((v16 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*v27, v11, v19 - v11);
      v57 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v19 - v11)
      {
        LODWORD(v58) = v19 - v11;
      }

      else
      {
        LODWORD(v58) = HIDWORD(a4);
      }

      v56 = (HIDWORD(a4) - v58);
      LOBYTE(v58) = 48;
      v11 = v19;
    }

    else
    {
      v58 = HIDWORD(v12);
      v57 = a4;
    }

    v55 = *v27;
    v59 = v56 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, *v27, v59 | a4 & 0xFFFF0000 | v57 | 0x700, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10 - v11, *v27, v59 | a4 & 0xFFFFFF00 | v57, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32), v10 - v11);
    }

    return v55;
  }

  if (!v73 || v41 <= SLOBYTE(v71.__locale_))
  {
    goto LABEL_64;
  }

  locale = &v71;
  v44 = v71.__locale_;
  v43 = v72;
LABEL_45:
  v45 = *a3;
  memset(&v70, 0, sizeof(v70));
  v46 = v44 + v43;
  if (v73 >= 0)
  {
    v46 = &v71 + v73;
  }

  v47 = *locale;
  v48 = v41 - *locale;
  if (v48 >= 1)
  {
    v49 = v46 - 1;
    do
    {
      std::string::push_back(&v70, v47);
      if (locale == v49)
      {
        v47 = *locale;
      }

      else
      {
        v50 = locale + 1;
        v51 = locale + 1;
        do
        {
          v52 = *v51++;
          v47 = v52;
          if (v52)
          {
            v53 = 1;
          }

          else
          {
            v53 = v50 == v49;
          }

          v50 = v51;
        }

        while (!v53);
        locale = v51 - 1;
      }

      v48 -= v47;
    }

    while (v48 > 0);
  }

  std::string::push_back(&v70, v47 + v48);
  v54 = (v40->__vftable[1].~facet_0)(v40);
  v55 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v45, v11, v19, v10, &v70, v54, a4, v12);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v73 < 0)
  {
    operator delete(v71.__locale_);
  }

  return v55;
}

void sub_1DE4C6DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::locale a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(unint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = 0;
  v6 = a3 * a3;
  v7 = a3 * a3 * a3;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v6)
    {
      return v5 | 2u;
    }

    if (__PAIR128__(a2, a1) < v7)
    {
      return v5 | 3u;
    }

    if (__PAIR128__(a2, a1) < v6 * v6)
    {
      break;
    }

    a1 = __udivti3();
    v5 += 4;
    if (__PAIR128__(a2, a1) < a3)
    {
      return v5 | 1u;
    }
  }

  return (v5 + 4);
}

uint64_t *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8u);
}

uint64_t *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5, char *a6, char *a7, char *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_40;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v43, a2);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  v22 = v20 - v16;
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    v24 = v44;
    if (v44 && v22 > *v43.__locale_)
    {
      v25 = v43.__locale_;
      goto LABEL_21;
    }

    operator delete(v43.__locale_);
LABEL_40:
    v37 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v38 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v39) = v16 - v9;
      }

      else
      {
        LODWORD(v39) = HIDWORD(a3);
      }

      v37 = (HIDWORD(a3) - v39);
      LOBYTE(v39) = 48;
      v9 = v16;
    }

    else
    {
      v39 = HIDWORD(a4);
      v38 = a3;
    }

    v36 = *a2;
    v40 = v37 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, *a2, v40 | a3 & 0xFFFF0000 | v38 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, *a2, v40 | a3 & 0xFFFFFF00 | v38, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32), v20 - v9);
    }

    return v36;
  }

  if (!v45 || v22 <= SLOBYTE(v43.__locale_))
  {
    goto LABEL_40;
  }

  locale = &v43;
  v25 = v43.__locale_;
  v24 = v44;
LABEL_21:
  v26 = *a2;
  memset(&__p, 0, sizeof(__p));
  v27 = v25 + v24;
  if (v45 >= 0)
  {
    v27 = &v43 + v45;
  }

  v28 = *locale;
  v29 = v22 - *locale;
  if (v29 >= 1)
  {
    v30 = v27 - 1;
    do
    {
      std::string::push_back(&__p, v28);
      if (locale == v30)
      {
        v28 = *locale;
      }

      else
      {
        v31 = locale + 1;
        v32 = locale + 1;
        do
        {
          v33 = *v32++;
          v28 = v33;
          if (v33)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31 == v30;
          }

          v31 = v32;
        }

        while (!v34);
        locale = v32 - 1;
      }

      v29 -= v28;
    }

    while (v29 > 0);
  }

  std::string::push_back(&__p, v28 + v29);
  v35 = (v21->__vftable[1].~facet_0)(v21);
  v36 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v26, v9, v16, v20, &__p, v35, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v36;
}

void sub_1DE4C7594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, __src, v12, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, __src, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, __src, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, __src, v12, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, __src, v13, v5, 8u);
}

uint64_t *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5, char *__src, uint64_t a7, char *a8, unsigned int a9)
{
  v9 = a7;
  v10 = __src;
  v14 = a1;
  v15 = a3;
  if (a5)
  {
    v16 = 45;
LABEL_7:
    *__src = v16;
    v18 = __src + 1;
    goto LABEL_8;
  }

  v17 = (a3 >> 3) & 3;
  if (v17 == 2)
  {
    v16 = 43;
    goto LABEL_7;
  }

  v18 = __src;
  if (v17 == 3)
  {
    v16 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v19 = *a8;
      if (*a8)
      {
        v20 = a8 + 1;
        do
        {
          *v18++ = v19;
          v21 = *v20++;
          v19 = v21;
        }

        while (v21);
      }
    }
  }

  HIDWORD(v23) = a9 - 2;
  LODWORD(v23) = a9 - 2;
  v22 = v23 >> 1;
  switch(v22)
  {
    case 4:
      if (a7 - v18 > 9 || (v24 = (1233 * (32 - __clz(a1 | 1))) >> 12, a7 - v18 >= (((__PAIR64__(v24, a1) - std::__itoa::__pow10_32[v24]) >> 32) + 1)))
      {
        v25 = std::__itoa::__base_10_u32[abi:ne200100](v18, a1);
LABEL_17:
        v9 = v25;
      }

      break;
    case 0:
      v25 = std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 3:
      v25 = std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    case 7:
      v25 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(v18, a7, a1);
      goto LABEL_17;
    default:
      v47 = a7 - v18;
      v48 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a1, a9);
      if (v47 >= v48)
      {
        v9 = &v18[v48];
        v49 = (v9 - 1);
        do
        {
          *v49-- = a0123456789abcd[v14 - v14 / a9 * a9];
          v50 = v14 >= a9;
          v14 /= a9;
        }

        while (v50);
      }

      break;
  }

  if ((v15 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v52, a2);
  v26 = std::locale::use_facet(&v52, MEMORY[0x1E69E5368]);
  v27 = v9 - v18;
  std::locale::~locale(&v52);
  (v26->__vftable[1].__on_zero_shared)(&v52, v26);
  if ((v54 & 0x8000000000000000) != 0)
  {
    locale = v52.__locale_;
    v29 = v53;
    if (v53 && v27 > *v52.__locale_)
    {
      v30 = v52.__locale_;
      goto LABEL_26;
    }

    operator delete(v52.__locale_);
LABEL_45:
    v42 = HIDWORD(a3);
    if ((v15 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v10, v18 - v10);
      v43 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v18 - v10)
      {
        LODWORD(v44) = v18 - v10;
      }

      else
      {
        LODWORD(v44) = HIDWORD(a3);
      }

      v42 = (HIDWORD(a3) - v44);
      LOBYTE(v44) = 48;
      v10 = v18;
    }

    else
    {
      v44 = HIDWORD(a4);
      v43 = a3;
    }

    v41 = *a2;
    v45 = v42 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9, *a2, v45 | a3 & 0xFFFF0000 | v43 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v9 - v10, *a2, v45 | a3 & 0xFFFFFF00 | v43, a4 & 0xFFFFFF00FFFFFFFFLL | (v44 << 32), v9 - v10);
    }

    return v41;
  }

  if (!v54 || v27 <= SLOBYTE(v52.__locale_))
  {
    goto LABEL_45;
  }

  locale = &v52;
  v30 = v52.__locale_;
  v29 = v53;
LABEL_26:
  v31 = *a2;
  memset(&__p, 0, sizeof(__p));
  v32 = v30 + v29;
  if (v54 >= 0)
  {
    v32 = &v52 + v54;
  }

  v33 = *locale;
  v34 = v27 - *locale;
  if (v34 >= 1)
  {
    v35 = v32 - 1;
    do
    {
      std::string::push_back(&__p, v33);
      if (locale == v35)
      {
        v33 = *locale;
      }

      else
      {
        v36 = locale + 1;
        v37 = locale + 1;
        do
        {
          v38 = *v37++;
          v33 = v38;
          if (v38)
          {
            v39 = 1;
          }

          else
          {
            v39 = v36 == v35;
          }

          v36 = v37;
        }

        while (!v39);
        locale = v37 - 1;
      }

      v34 -= v33;
    }

    while (v34 > 0);
  }

  std::string::push_back(&__p, v33 + v34);
  v40 = (v26->__vftable[1].~facet_0)(v26);
  v41 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v31, v10, v18, v9, &__p, v40, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v52.__locale_);
  }

  return v41;
}

void sub_1DE4C7B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = v4 * v4;
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < a2 * a2 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, const char *a2)
{
  if ((*result & 0x18) != 0)
  {
    v2 = "sign";
    goto LABEL_11;
  }

  if ((*result & 0x20) != 0)
  {
    v2 = "alternate form";
    goto LABEL_11;
  }

  if ((*result & 7) == 4)
  {
    v2 = "zero-padding";
    goto LABEL_11;
  }

  if (*(result + 8) != -1)
  {
    v2 = "precision";
LABEL_11:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a2, v2);
  }

  if (*(result + 1) >= 0x20u)
  {
    std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_1DE4C7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F5973BF0;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1E12C1730);
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }
}

const void **CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::Graph::LoadStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v12 = 0;
  delayInitStub = 0;
  if (!CADSPGraphLoadStrip_delayInitStub(a5))
  {
    delayInitStub = CADSPErrorCreate_delayInitStub(v6);
    v12 = delayInitStub;
  }

  v11 = delayInitStub;
  if (delayInitStub)
  {
    v11 = 0;
    v10 = 0;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v11);
    v9 = 0;
    v12 = 0;
    *a1 = delayInitStub;
    CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v12);
    *(a1 + 8) = 0;
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v9);
  }

  else
  {
    v10 = 1;
    result = CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(&v11);
    *(a1 + 8) = 1;
  }

  return result;
}

const void **std::expected<CA::DSP::Reference<CA::DSP::Graph>,CA::DSP::Reference<CA::DSP::Error>>::~expected[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    return CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(a1);
  }

  else
  {
    return CA::DSP::ReferenceCounted<__CADSPError *>::~ReferenceCounted(a1);
  }
}

const void **CA::DSP::ReferenceCounted<__CADSPLanguageV1Interpreter *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void std::allocator<HALS_DSPStreamData>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_IOStreamDSP::AddInputStreamAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = (a2 - a1) >> 4;
  if (v6 <= a5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = "HALS_IOStreamDSP.cpp";
      v10 = 1024;
      v11 = 218;
      v12 = 2048;
      v13 = a5;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Cannot add new stream to index %lu because we expect only %lu streams", &v8, 0x26u);
    }
  }

  else
  {
    v7 = (a1 + 16 * a5);
    *v7 = a3;
    v7[1] = a4;
  }
}

unint64_t HALS_DSPSettings::HasValidDSPString(HALS_DSPSettings *this, const __CFDictionary *a2)
{
  v2 = this;
  if (this)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v7 = 257;
    CACFDictionary::operator=(&Mutable, v2);
    v4 = 0;
    v5 = 1;
    CACFDictionary::GetCACFString(&Mutable, @"dsp graph", &v4);
    v2 = v4 != 0;
    CACFString::~CACFString(&v4);
    CACFDictionary::~CACFDictionary(&Mutable);
  }

  return v2;
}

void sub_1DE4C8558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  CACFString::~CACFString(&a9);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CACFDictionary::operator=(uint64_t a1, const void *a2)
{
  if (*(a1 + 8))
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
      v5 = *(a1 + 8);
    }

    else
    {
      v5 = 1;
    }

    *a1 = a2;
    *(a1 + 9) = 0;
    if (a2 && (v5 & 1) != 0)
    {
      CFRetain(a2);
    }
  }

  else
  {
    *a1 = a2;
    *(a1 + 9) = 0;
  }

  return a1;
}

void HALS_DSPSettings::FromDictionary(HALS_DSPSettings *this, const __CFDictionary *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v46 = 257;
    v4 = CACFDictionary::operator=(&Mutable, a2);
    v43 = 0;
    v44 = 1;
    CACFDictionary::GetCACFString(v4, @"dsp graph", &v43);
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v42 = 257;
    CACFDictionary::GetCACFDictionary(&Mutable, @"au tuning strip", &cf);
    v39 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v40 = 257;
    CACFDictionary::GetCACFDictionary(&Mutable, @"property strip", &v39);
    v37 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v38 = 257;
    CACFDictionary::GetCACFArray(&Mutable, @"initialization properties", &v37);
    v36 = 0;
    CACFDictionary::GetUInt32(Mutable, @"client channel count", &v36);
    v35 = 0;
    CACFDictionary::GetUInt32(Mutable, @"target stream", &v35);
    v33 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    v34 = 257;
    CACFDictionary::GetCACFDictionary(&Mutable, @"dsp graph string substitutions", &v33);
    v32 = 1;
    if (_os_feature_enabled_impl())
    {
      v32 = 2;
    }

    CACFDictionary::GetUInt32(Mutable, @"dsp graph API version", &v32);
    if (v43)
    {
      CFRetain(v43);
      v31[0] = &unk_1F5991188;
      v31[1] = v43;
      if (cf)
      {
        CFRetain(cf);
        v5 = cf;
      }

      else
      {
        v5 = 0;
      }

      v30 = v5;
      v29 = &unk_1F5991008;
      if (v39)
      {
        CFRetain(v39);
        v6 = v39;
      }

      else
      {
        v6 = 0;
      }

      v28 = v6;
      v27 = &unk_1F5991008;
      if (v33)
      {
        CFRetain(v33);
        v7 = v33;
      }

      else
      {
        v7 = 0;
      }

      v26 = v7;
      v25 = &unk_1F5991008;
      if (v37)
      {
        CFRetain(v37);
        v24 = v37;
        if (v37)
        {
          v8 = CFGetTypeID(v37);
          if (v8 != CFArrayGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }
        }
      }

      else
      {
        v24 = 0;
      }

      *this = 0u;
      *(this + 2) = 0;
      *(this + 3) = &unk_1F5991008;
      *(this + 4) = 0;
      *(this + 5) = &unk_1F5991008;
      *(this + 3) = 0u;
      *(this + 9) = 0;
      v10 = (this + 72);
      *(this + 5) = 0u;
      v11 = this + 104;
      *(this + 13) = &unk_1F5991008;
      *(this + 14) = 0;
      OS::CF::String::AsStdString(&buf, v31);
      if (*(this + 23) < 0)
      {
        operator delete(*this);
      }

      *this = buf;
      OS::CF::Dictionary::operator=(this + 24, v30);
      OS::CF::Dictionary::operator=(this + 40, v28);
      v12 = *(this + 7);
      *(this + 7) = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (CFDictionaryContainsKey(Mutable, @"input stream busses"))
      {
        buf.__r_.__value_.__r.__words[0] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 257;
        CACFDictionary::GetCACFArray(&Mutable, @"input stream busses", &buf.__r_.__value_.__l.__data_);
        v13 = 0;
        v23 = 0u;
        while (1)
        {
          data = buf.__r_.__value_.__l.__data_;
          if (buf.__r_.__value_.__r.__words[0])
          {
            data = CFArrayGetCount(buf.__r_.__value_.__l.__data_);
          }

          if (v13 >= data)
          {
            break;
          }

          v47 = 0;
          if (CACFArray::GetUInt32(&buf, v13, &v47))
          {
            v15 = (*(&v23 + 1) - v23) >> 2;
            v16 = v15 + 1;
            if ((v15 + 1) >> 62)
            {
              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            if (-v23 >> 1 > v16)
            {
              v16 = -v23 >> 1;
            }

            if (-v23 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v17 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v17);
            }

            v18 = (4 * v15);
            *v18 = v47;
            v19 = v18 + 1;
            memcpy(0, v23, *(&v23 + 1) - v23);
            if (v23)
            {
              operator delete(v23);
            }

            *&v20 = 0;
            *(&v20 + 1) = v19;
            v23 = v20;
          }

          ++v13;
        }

        CACFArray::~CACFArray(&buf);
        v11 = this + 104;
      }

      else
      {
        v23 = 0u;
      }

      v21 = *v10;
      if (*v10)
      {
        *(this + 10) = v21;
        operator delete(v21);
      }

      *(this + 72) = v23;
      *(this + 11) = 0;
      v22 = v35;
      *(this + 16) = v36;
      *(this + 24) = v22;
      OS::CF::Dictionary::operator=(v11, v26);
      *(this + 30) = v32;
      if (v24)
      {
        CFRelease(v24);
      }

      OS::CF::UntypedObject::~UntypedObject(&v25);
      OS::CF::UntypedObject::~UntypedObject(&v27);
      OS::CF::UntypedObject::~UntypedObject(&v29);
      OS::CF::UntypedObject::~UntypedObject(v31);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "HALS_IOStreamDSP.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 397;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  DSP graph is missing from DSP description", &buf, 0x12u);
      }

      *this = 0u;
      *(this + 1) = 0u;
      *(this + 3) = &unk_1F5991008;
      *(this + 4) = 0;
      *(this + 6) = 0;
      *(this + 7) = 0;
      *(this + 5) = &unk_1F5991008;
      *(this + 16) = 0;
      *(this + 10) = 0;
      *(this + 11) = 0;
      *(this + 9) = 0;
      *(this + 24) = 0;
      *(this + 13) = &unk_1F5991008;
      *(this + 14) = 0;
      *(this + 30) = 0;
    }

    CACFDictionary::~CACFDictionary(&v33);
    CACFArray::~CACFArray(&v37);
    CACFDictionary::~CACFDictionary(&v39);
    CACFDictionary::~CACFDictionary(&cf);
    CACFString::~CACFString(&v43);
    CACFDictionary::~CACFDictionary(&Mutable);
  }

  else
  {
    *this = 0u;
    *(this + 1) = 0u;
    *(this + 3) = &unk_1F5991008;
    *(this + 4) = 0;
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 5) = &unk_1F5991008;
    *(this + 16) = 0;
    *(this + 10) = 0;
    *(this + 11) = 0;
    *(this + 9) = 0;
    *(this + 24) = 0;
    *(this + 13) = &unk_1F5991008;
    *(this + 14) = 0;
    *(this + 30) = 0;
  }
}

void sub_1DE4C8DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, const void *a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v31);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a12);
  OS::CF::UntypedObject::~UntypedObject(&a13);
  OS::CF::UntypedObject::~UntypedObject(&a17);
  OS::CF::UntypedObject::~UntypedObject(&a19);
  OS::CF::UntypedObject::~UntypedObject(&a21);
  CACFDictionary::~CACFDictionary(&a24);
  CACFArray::~CACFArray(&a27);
  CACFDictionary::~CACFDictionary(&a29);
  CACFDictionary::~CACFDictionary(&a31);
  CACFString::~CACFString((v32 - 168));
  CACFDictionary::~CACFDictionary((v32 - 152));
  _Unwind_Resume(a1);
}

uint64_t OS::CF::Dictionary::operator=(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void HALS_DSPSettings::~HALS_DSPSettings(HALS_DSPSettings *this)
{
  OS::CF::UntypedObject::~UntypedObject((this + 104));
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  OS::CF::UntypedObject::~UntypedObject((this + 40));
  OS::CF::UntypedObject::~UntypedObject((this + 24));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  OS::CF::UntypedObject::~UntypedObject((this + 104));
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  OS::CF::UntypedObject::~UntypedObject((this + 40));
  OS::CF::UntypedObject::~UntypedObject((this + 24));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t VisitableVector<HALS_IOStackDescription>::apply<>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *(a3 + 2);
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v5)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    v10[0] = v4;
    v10[1] = v6;
    result = (v8)(&v8 + 8, v10);
    if (result)
    {
      break;
    }

    v4 += 32;
    v5 = 1;
    if (v4 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>(uint64_t **a1, uint64_t *a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[1];
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::__value_func[abi:ne200100](v7, **a1);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::__value_func[abi:ne200100](v8, v7);
  v9 = v3;
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::__value_func[abi:ne200100](v10, v8);
  *&v6 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGroupList::apply_to_streams(unsigned long,std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v6 + 1) = &v9;
  v4 = VisitableVector<HALS_IOStreamGroup>::apply<>(*(v2 + 8), *(v2 + 16), &v6);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v7);
  return v4;
}

void sub_1DE4C90F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v9 + 8);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALS_AudioBus>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5973E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_AudioNode::AddInput(void *a1, __int128 *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  if (v3 >= v4)
  {
    v7 = a1[1];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[1];
    v15 = a1[2] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[2] = v6;
}

void HALS_AudioNode::ReferToBusesFrom(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = *(a1 + 32);
    if ((*(a1 + 40) - v4) >> 4 >= ((*(v2 + 40) - *(v2 + 32)) >> 4) ? (*(v2 + 40) - *(v2 + 32)) >> 4 : (*(a1 + 40) - v4) >> 4)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v4 + v7;
        v10 = *(v4 + v7);
        v11 = *(v9 + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v2 = *a2;
        }

        v13 = v2 + 32;
        v12 = *(v2 + 32);
        *(&v14 + 1) = 0;
        if (v8 < (*(v13 + 8) - v12) >> 4)
        {
          v14 = *(v12 + v7);
          v15 = *(v12 + v7 + 8);
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
          }

          if (v14)
          {
            *v10 = *v14;
          }
        }

        if (*(&v14 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        ++v8;
        v2 = *a2;
        v16 = *(*a2 + 40) - *(*a2 + 32);
        v4 = *(a1 + 32);
        if ((*(a1 + 40) - v4) >> 4 >= (v16 >> 4))
        {
          v17 = v16 >> 4;
        }

        else
        {
          v17 = (*(a1 + 40) - v4) >> 4;
        }

        v7 += 16;
      }

      while (v8 < v17);
    }
  }
}

void HALS_ProcessorGraph::Visit<std::shared_ptr<HALS_AudioNode> &,HALS_ProcessorGraph::Process(HALS_ProcessorGraph::ProcessContext const&)::$_0 &>(uint64_t a1, void *a2, __n128 a3)
{
  v4 = *a1;
  if (v4)
  {
    v6 = v4[1];
    v7 = v4[2];
    if (v6 != v7)
    {
      do
      {
        v8 = v6[1];
        v10[0] = *v6;
        v10[1] = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_ProcessorGraph::Visit<std::shared_ptr<HALS_AudioNode> &,HALS_ProcessorGraph::Process(HALS_ProcessorGraph::ProcessContext const&)::$_0 &>(v10, a2, a3);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v6 += 2;
      }

      while (v6 != v7);
      v4 = *a1;
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 24))(v4, *a2);
    if (v9)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1DE4C94E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_ProcessorGraph::Visit<std::shared_ptr<HALS_AudioNode> &,HALS_ProcessorGraph::Reset(void)::$_0 &>(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = v2[1];
    v4 = v2[2];
    if (v3 != v4)
    {
      do
      {
        v5 = v3[1];
        v7[0] = *v3;
        v7[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_ProcessorGraph::Visit<std::shared_ptr<HALS_AudioNode> &,HALS_ProcessorGraph::Reset(void)::$_0 &>(v7);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v3 += 2;
      }

      while (v3 != v4);
      v2 = *a1;
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 16))(v2);
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1DE4C95FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_ChannelMapper::Process(HALS_ChannelMapper *this, unsigned __int8 *a2, unsigned __int8 *__dst, UInt32 inNumberPCMFrames)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1)
  {
    v5 = *(this + 7);
    v4 = *(this + 8);
    inInputData.mNumberBuffers = 1;
    inInputData.mBuffers[0].mNumberChannels = v4;
    inInputData.mBuffers[0].mDataByteSize = v5 * inNumberPCMFrames;
    inInputData.mBuffers[0].mData = a2;
    v7 = *(this + 9);
    v6 = *(this + 10);
    v16.mNumberBuffers = 1;
    v16.mBuffers[0].mNumberChannels = v6;
    v16.mBuffers[0].mDataByteSize = v7 * inNumberPCMFrames;
    v16.mBuffers[0].mData = __dst;
    v8 = AudioConverterConvertComplexBuffer(*(this + 2), inNumberPCMFrames, &inInputData, &v16);
    if (v8)
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v8);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "HALS_ChannelMapper.cpp";
        v20 = 1024;
        v21 = 87;
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_ChannelMapper::Process: AudioConverterConvertBuffer failed", buf, 0x12u);
      }
    }
  }

  else
  {
    v13 = *(this + 7);
    if (*(this + 24) == 1)
    {
      v14 = __dst;
      v15 = v13 * inNumberPCMFrames;
    }

    else
    {
      v14 = __dst;
      v15 = v13;
    }

    memcpy(v14, a2, v15);
  }
}

OpaqueAudioConverter *HALS_ChannelMapper::Reset(HALS_ChannelMapper *this)
{
  result = *(this + 2);
  if (result)
  {
    return AudioConverterReset(result);
  }

  return result;
}

void HALS_ChannelMapper::~HALS_ChannelMapper(HALS_ChannelMapper *this)
{
  HALS_ChannelMapper::~HALS_ChannelMapper(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5973C18;
  v1 = *(this + 2);
  if (v1)
  {
    AudioConverterDispose(v1);
  }
}

uint64_t HALS_ChannelMapperProcessorNode::ProcessInternal(uint64_t a1, void **a2, void **a3)
{
  result = *(a1 + 80);
  if (result && *a2)
  {
    if (*a3)
    {
      result = (*(*result + 24))(result, **a2, **a3, *(*a2)[1]);
      *(*a3)[1] = *(*a2)[1];
    }
  }

  return result;
}

uint64_t HALS_ChannelMapperProcessorNode::Reset(HALS_ChannelMapperProcessorNode *this)
{
  result = *(this + 10);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void HALS_ChannelMapperProcessorNode::~HALS_ChannelMapperProcessorNode(HALS_ChannelMapperProcessorNode *this)
{
  HALS_ChannelMapperProcessorNode::~HALS_ChannelMapperProcessorNode(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5973C58;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F59743B8;
  v3 = (this + 32);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t HALS_CustomProcessor::MyProcessInputSequence(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(**(a1 + 8) + 24))(*(a1 + 8), *a2, *a3, **(a2 + 8));
  a3[1] = *(a2 + 8);
  return result;
}

void *HALS_DelayProcessor::Process(HALS_DelayProcessor *this, const unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *(this + 10);
  v9 = *(this + 8) - v8;
  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = *(this + 8) - v8;
  }

  memcpy((*(this + 3) + (*(this + 3) * v8)), a2, v10 * *(this + 3));
  if (v9 < a4)
  {
    v11 = a4 - v9;
    if (a4 < v9)
    {
      v11 = 0;
    }

    memcpy(*(this + 3), &a2[*(this + 3) * v10], (*(this + 3) * v11));
  }

  v12 = *(this + 9);
  v13 = *(this + 8);
  *(this + 10) = (*(this + 10) + a4) % v13;
  v14 = v13 - v12;
  if (v13 - v12 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v13 - v12;
  }

  result = memcpy(a3, (*(this + 3) + (*(this + 3) * v12)), v15 * *(this + 3));
  if (v14 < a4)
  {
    v17 = a4 - v14;
    if (a4 < v14)
    {
      v17 = 0;
    }

    result = memcpy(&a3[*(this + 3) * v15], *(this + 3), (*(this + 3) * v17));
  }

  *(this + 9) = (*(this + 9) + a4) % *(this + 8);
  return result;
}

void *HALS_DelayProcessor::Process(HALS_DelayProcessor *this, unsigned __int8 *a2, int a3)
{
  v6 = *(this + 10);
  v7 = *(this + 3);
  v8 = (v7 * v6);
  v9 = v6 + a3;
  v10 = *(this + 8);
  v11 = v10 - v6;
  if (v6 + a3 <= v10)
  {
    v12 = a3;
  }

  else
  {
    v12 = v10 - v6;
  }

  memcpy((*(this + 3) + v8), a2, (v12 * v7));
  if (v9 > v10)
  {
    memcpy(*(this + 3), &a2[*(this + 3) * v11], (*(this + 3) * (a3 - v11)));
  }

  v13 = *(this + 9);
  v14 = *(this + 8);
  *(this + 10) = (*(this + 10) + a3) % v14;
  v15 = *(this + 3);
  v16 = (v15 * v13);
  v17 = v13 + a3;
  v18 = v14 - v13;
  if (v13 + a3 <= v14)
  {
    v19 = a3;
  }

  else
  {
    v19 = v14 - v13;
  }

  result = memcpy(a2, (*(this + 3) + v16), (v19 * v15));
  if (v17 > v14)
  {
    result = memcpy(&a2[*(this + 3) * v18], *(this + 3), (*(this + 3) * (a3 - v18)));
  }

  *(this + 9) = (*(this + 9) + a3) % *(this + 8);
  return result;
}

uint64_t HALS_DelayProcessor::MyProcessInputSequence(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  if (*a2 == *a3)
  {
    result = (*(v5 + 24))();
  }

  else
  {
    result = (*(v5 + 32))();
  }

  a3[1] = a2[1];
  return result;
}

void HALS_DelayProcessor::~HALS_DelayProcessor(HALB_IOBufferManager_Server **this, uint64_t a2, unsigned int a3)
{
  HALS_DelayProcessor::~HALS_DelayProcessor(this, a2, a3);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5973CF8;
  HALB_IOBufferManager_Server::FreeBuffer(this[3], *(this + 3) * *(this + 8));
}

uint64_t *HALS_DelayProcessorNode::ProcessInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 80);
  if (result && *a2 && *a3)
  {
    v6 = *result;
    if (**a2 == **a3)
    {
      result = (*(v6 + 24))();
    }

    else
    {
      result = (*(v6 + 32))();
    }

    **(*a3 + 8) = **(*a2 + 8);
  }

  return result;
}

void HALS_DelayProcessorNode::~HALS_DelayProcessorNode(HALS_DelayProcessorNode *this)
{
  HALS_DelayProcessorNode::~HALS_DelayProcessorNode(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5973D48;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F59743B8;
  v3 = (this + 32);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t HALS_IOProcessor::Resampler_SetRateScalar(uint64_t this, __n128 a2, __n128 a3)
{
  v3 = this;
  v4 = *(this + 200);
  if (!v4)
  {
    this = *(this + 144);
    if (!this)
    {
      return this;
    }

    v6 = *(*this + 64);
    if (*(v3 + 8) == 1)
    {
      return v6(a3.n128_f64[0], a2.n128_f64[0]);
    }

    return (v6)(a2, a3);
  }

  v5 = *(v4 + 88);
  if (*(this + 8) != 1)
  {
    if (!v5)
    {
      return this;
    }

    this = *(v5 + 80);
    if (!this)
    {
      return this;
    }

    v6 = *(*this + 64);
    return (v6)(a2, a3);
  }

  if (v5)
  {
    this = *(v5 + 80);
    if (this)
    {
      return (*(*this + 64))(a3.n128_f64[0], a2.n128_f64[0]);
    }
  }

  return this;
}

uint64_t HALS_IOProcessor::Resampler_IsEnabled(HALS_IOProcessor *this)
{
  v1 = *(this + 25);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      v3 = *(v2 + 80);
      if (v3)
      {
        return (*(*v3 + 24))();
      }
    }
  }

  else
  {
    v3 = *(this + 18);
    if (v3)
    {
      return (*(*v3 + 24))();
    }
  }

  return 0;
}

uint64_t HALS_IOProcessor::CalculateFrameSize(HALS_IOProcessor *this, int a2, uint64_t a3)
{
  v3 = *(this + 25);
  if (!a2)
  {
    if (v3)
    {
      v6 = *(v3 + 88);
      if (!v6)
      {
        return a3;
      }

      v7 = *(v6 + 80);
      if (!v7)
      {
        return a3;
      }
    }

    else
    {
      v7 = *(this + 18);
      if (!v7)
      {
        return a3;
      }
    }

    return (*(*v7 + 48))(v7, a3);
  }

  if (v3)
  {
    v4 = *(v3 + 88);
    if (!v4)
    {
      return a3;
    }

    v5 = *(v4 + 80);
    if (!v5)
    {
      return a3;
    }

    return (*(*v5 + 40))(v5, a3);
  }

  v5 = *(this + 18);
  if (v5)
  {
    return (*(*v5 + 40))(v5, a3);
  }

  return a3;
}

void HALS_IOProcessor::~HALS_IOProcessor(HALS_IOProcessor *this)
{
  HALS_IOProcessor::~HALS_IOProcessor(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5973D98;
  std::unique_ptr<HALS_IOProcessor_ProcessingManifest>::reset[abi:ne200100](this + 24, 0);
  std::unique_ptr<HALS_IOProcessor_ProcessorGraph>::reset[abi:ne200100](this + 25, 0);
  std::unique_ptr<HALS_IOProcessor_ProcessingManifest>::reset[abi:ne200100](this + 24, 0);
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t *std::unique_ptr<HALS_IOProcessor_ProcessingManifest>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 64);
    std::vector<HALS_IOProcessor_ProcessingManifest::ProcessingStage>::__destroy_vector::operator()[abi:ne200100](&v3);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void *std::unique_ptr<HALS_IOProcessor_ProcessorGraph>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[12];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = v2[10];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = v2[8];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table((v2 + 2));
    v6 = v2[1];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t HALS_IOProcessor::HALS_IOProcessor(uint64_t a1, int a2, char a3, __int128 *a4, __int128 *a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned int a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v43 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5973D98;
  *(a1 + 8) = a2;
  *(a1 + 9) = a3;
  *(a1 + 10) = *(a5 + 2) == 1819304813;
  *(a1 + 12) = *(a5 + 2);
  v16 = *a4;
  v17 = a4[1];
  *(a1 + 56) = *(a4 + 4);
  *(a1 + 40) = v17;
  *(a1 + 24) = v16;
  v18 = *a5;
  v19 = a5[1];
  v20 = *(a5 + 4);
  *(a1 + 192) = 0u;
  v21 = (a1 + 64);
  *(a1 + 96) = v20;
  *(a1 + 64) = v18;
  *(a1 + 80) = v19;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  v22 = a1 + 112;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  if (a10 && a2)
  {
    LOBYTE(v36[0]) = a2;
    v23 = *(a1 + 80);
    *(v36 + 8) = *v21;
    *(&v36[1] + 8) = v23;
    *(&v36[2] + 1) = *(a1 + 96);
    v36[3] = *(a1 + 24);
    v36[4] = *(a1 + 40);
    *&v37 = *(a1 + 56);
    *(&v37 + 1) = a6;
    v38 = __PAIR64__(a9, a7);
    v39 = a10;
    v40 = a11;
    operator new();
  }

  if (AMCP::Feature_Flags::use_graph_based_io_processor(0, 0))
  {
    if (*(a1 + 8))
    {
      v24 = v21[1];
      v36[0] = *v21;
      v36[1] = v24;
      *&v36[2] = *(v21 + 4);
      *(&v37 + 1) = 0;
      v38 = 0;
      v25 = *(a1 + 40);
      *(&v36[2] + 8) = *(a1 + 24);
      *(&v36[3] + 8) = v25;
      *(&v36[4] + 1) = *(a1 + 56);
      LODWORD(v37) = a11;
      *(&v37 + 4) = a6;
      HIDWORD(v37) = a7;
      LODWORD(v38) = a9;
      operator new();
    }

    v36[0] = *(a1 + 88);
    v36[1] = *(a1 + 24);
    v36[2] = *(a1 + 40);
    *&v36[3] = *(a1 + 56);
    operator new();
  }

  if (*(a1 + 8))
  {
    if ((*(*a12 + 16))(a12, v21, a11))
    {
      (*(*a12 + 48))(v36, a12, v21, a11);
      std::shared_ptr<HALS_VolumeProcessor>::operator=[abi:ne200100]<HALS_VolumeProcessor,std::default_delete<HALS_VolumeProcessor>,0>(v22, v36);
      v26 = *&v36[0];
      *&v36[0] = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      *(a1 + 104) |= 1u;
    }

    if ((*(*a12 + 24))(a12, v21, a6, a7, *(a1 + 24)))
    {
      (*(*a12 + 56))(v36, a12, v21, a6, a7, *(a1 + 24));
      std::shared_ptr<HALS_Resampler>::operator=[abi:ne200100]<HALS_Resampler,std::default_delete<HALS_Resampler>,0>(a1 + 144, v36);
      v27 = *&v36[0];
      *&v36[0] = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }

      *(a1 + 104) |= 2u;
    }

    if ((*(*a12 + 32))(a12, v21, a9))
    {
      (*(*a12 + 64))(v36, a12, v21, a9);
      std::shared_ptr<HALS_DelayProcessor>::operator=[abi:ne200100]<HALS_DelayProcessor,std::default_delete<HALS_DelayProcessor>,0>(a1 + 160, v36);
      v28 = *&v36[0];
      *&v36[0] = 0;
      if (!v28)
      {
LABEL_19:
        *(a1 + 104) |= 8u;
        return a1;
      }

LABEL_18:
      (*(*v28 + 8))(v28);
      goto LABEL_19;
    }
  }

  else
  {
    v29 = *v21;
    v36[1] = v21[1];
    *&v36[2] = *(v21 + 4);
    v36[0] = v29;
    if ((*(*a12 + 16))(a12, v36, a11))
    {
      (*(*a12 + 48))(buf, a12, v36, a11);
      std::shared_ptr<HALS_VolumeProcessor>::operator=[abi:ne200100]<HALS_VolumeProcessor,std::default_delete<HALS_VolumeProcessor>,0>(v22, buf);
      v30 = *&buf[0];
      *&buf[0] = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      *(a1 + 104) |= 1u;
    }

    if ((*(*a12 + 40))(a12, a1 + 24, HIDWORD(v36[1]), a8))
    {
      (*(*a12 + 72))(buf, a12, a1 + 24, HIDWORD(v36[1]), a8);
      if (*&buf[0])
      {
        operator new();
      }

      *&buf[0] = 0;
      v31 = *(a1 + 136);
      *(a1 + 128) = 0u;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        v32 = *&buf[0];
        *&buf[0] = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      else
      {
        *&buf[0] = 0;
      }

      *(a1 + 104) |= 4u;
    }

    buf[0] = *(a1 + 24);
    buf[1] = *(a1 + 40);
    v42 = *(a1 + 56);
    if (*(a1 + 128))
    {
      LODWORD(buf[1]) = HIDWORD(v36[1]) * (LODWORD(buf[1]) / HIDWORD(buf[1]));
      *(&buf[1] + 1) = __PAIR64__(HIDWORD(v36[1]), buf[1]);
    }

    if ((*(*a12 + 24))(a12, buf, a6, a7, *v36))
    {
      (*(*a12 + 56))(&v35, a12, buf, a6, a7, *v36);
      std::shared_ptr<HALS_Resampler>::operator=[abi:ne200100]<HALS_Resampler,std::default_delete<HALS_Resampler>,0>(a1 + 144, &v35);
      v33 = v35;
      v35 = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      *(a1 + 104) |= 2u;
    }

    if ((*(*a12 + 32))(a12, a1 + 24, a9))
    {
      (*(*a12 + 64))(&v35, a12, a1 + 24, a9);
      std::shared_ptr<HALS_DelayProcessor>::operator=[abi:ne200100]<HALS_DelayProcessor,std::default_delete<HALS_DelayProcessor>,0>(a1 + 160, &v35);
      v28 = v35;
      v35 = 0;
      if (!v28)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  return a1;
}

void sub_1DE4CC904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  std::deque<std::shared_ptr<HALS_IOProcessor_SubProcessorNode>>::~deque[abi:ne200100](v23 - 176);
  HALS_IOProcessor_ProcessorGraph::~HALS_IOProcessor_ProcessorGraph(v22);
  MEMORY[0x1E12C1730]();
  std::unique_ptr<HALS_IOProcessor_ProcessorGraph>::reset[abi:ne200100](a22 + 1, 0);
  std::unique_ptr<HALS_IOProcessor_ProcessingManifest>::reset[abi:ne200100](a22, 0);
  v25 = a15[23];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = a15[21];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = a15[19];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = a15[17];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = a15[15];
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<HALS_VolumeProcessor>::operator=[abi:ne200100]<HALS_VolumeProcessor,std::default_delete<HALS_VolumeProcessor>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::shared_ptr<HALS_Resampler>::operator=[abi:ne200100]<HALS_Resampler,std::default_delete<HALS_Resampler>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::shared_ptr<HALS_DelayProcessor>::operator=[abi:ne200100]<HALS_DelayProcessor,std::default_delete<HALS_DelayProcessor>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<HALS_ChannelMapper  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI18HALS_ChannelMapperEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<HALS_ChannelMapper  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HALS_ChannelMapper  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<HALS_DelayProcessor  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI19HALS_DelayProcessorEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<HALS_DelayProcessor  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HALS_DelayProcessor  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<HALS_Resampler  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI14HALS_ResamplerEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<HALS_Resampler  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HALS_Resampler  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<HALS_VolumeProcessor  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI20HALS_VolumeProcessorEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<HALS_VolumeProcessor  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HALS_VolumeProcessor  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOProcessor::NeedsLocalBuffer(HALS_IOProcessor *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);
    if (v2 == v3)
    {
LABEL_5:
      v4 = 0;
    }

    else
    {
      while ((*v2 & ~*(this + 26)) != 0)
      {
        v2 += 24;
        if (v2 == v3)
        {
          goto LABEL_5;
        }
      }

      v4 = *(v2 + 4) & 1;
    }
  }

  else
  {
    if (*(this + 25))
    {
      return HALS_IOProcessor_ProcessorGraph::RequiresBus(*(this + 25), 0);
    }

    v6 = *(this + 26);
    v7 = 0xFCFCu >> v6;
    if (v6 > 0xF)
    {
      LOBYTE(v7) = 0;
    }

    v8 = ((v6 - 2) & 0xFFFFFFF6) == 0;
    if (*(this + 8) == 1)
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }
  }

  return v4 & 1;
}

uint64_t HALS_IOProcessor::NeedsIntermediate1Buffer(HALS_IOProcessor *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);
    if (v2 == v3)
    {
      goto LABEL_9;
    }

    while ((*v2 & ~*(this + 26)) != 0)
    {
      v2 += 24;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    if ((*(v2 + 4) & 0x40) == 0)
    {
LABEL_9:
      v5 = 0;
      return v5 & 1;
    }

LABEL_37:
    v5 = 1;
    return v5 & 1;
  }

  if (*(this + 25))
  {
    return HALS_IOProcessor_ProcessorGraph::RequiresBus(*(this + 25), 2u);
  }

  v6 = *(this + 26);
  if (*(this + 8) == 1)
  {
    v5 = 0;
    if (v6 > 9)
    {
      if (v6 != 10 && v6 != 11)
      {
        return v5 & 1;
      }

      return (*(**(this + 18) + 56))();
    }

    if (v6 == 2)
    {
      return (*(**(this + 18) + 56))();
    }

    goto LABEL_31;
  }

  if (v6 > 10)
  {
    if (v6 <= 12)
    {
      if (v6 == 11)
      {
        goto LABEL_35;
      }
    }

    else if (v6 != 13)
    {
      v5 = v6 == 14 || v6 == 15;
      return v5 & 1;
    }

    v5 = *(this + 9) ^ 1;
    return v5 & 1;
  }

  if (v6 <= 5)
  {
    if (v6 == 2)
    {
      return (*(**(this + 18) + 56))();
    }

    v5 = 0;
LABEL_31:
    if (v6 != 3)
    {
      return v5 & 1;
    }

    return (*(**(this + 18) + 56))();
  }

  if (v6 == 6 || v6 == 7)
  {
    goto LABEL_37;
  }

  v5 = 0;
  if (v6 != 10)
  {
    return v5 & 1;
  }

LABEL_35:
  if (*(this + 9) != 1)
  {
    goto LABEL_37;
  }

  return (*(**(this + 18) + 56))();
}

uint64_t HALS_IOProcessor::NeedsIntermediate2Buffer(HALS_IOProcessor *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);
    if (v2 != v3)
    {
      while ((*v2 & ~*(this + 26)) != 0)
      {
        v2 += 24;
        if (v2 == v3)
        {
          goto LABEL_5;
        }
      }

      v4 = *(v2 + 4) >> 7;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (*(this + 25))
  {
    return HALS_IOProcessor_ProcessorGraph::RequiresBus(*(this + 25), 3u);
  }

  v6 = *(this + 26);
  if (*(this + 8) == 1)
  {
    if (v6 != 11)
    {
LABEL_5:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }
  }

  else
  {
    if (v6 > 11)
    {
      if (v6 > 13)
      {
        LOBYTE(v4) = v6 == 14 || v6 == 15;
      }

      else
      {
        LOBYTE(v4) = *(this + 9) ^ 1;
      }

      return v4 & 1;
    }

    if (v6 > 9)
    {
      if (*(this + 9) != 1)
      {
        LOBYTE(v4) = 1;
        return v4 & 1;
      }
    }

    else if (v6 != 6)
    {
      LOBYTE(v4) = 0;
      if (v6 != 7)
      {
        return v4 & 1;
      }
    }
  }

  return (*(**(this + 18) + 56))();
}

void *HALS_IOProcessor::Volume_RampTo(void *result)
{
  v1 = result[25];
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      result = *(v2 + 80);
      if (result)
      {
        return (*(*result + 24))();
      }
    }
  }

  else
  {
    result = result[14];
    if (result)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

void HALS_IOProcessor_CopyInputToOutputNode::Process(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(a1 + 16) == v2)
  {
    *(&v3 + 1) = 0;
    goto LABEL_9;
  }

  v3 = *v2;
  v4 = *(v2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
LABEL_9:
    v4 = *(&v3 + 1);
    if (!*(&v3 + 1))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = v3;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(&v21 + 1);
    HALS_AudioNode::ReferToBusesFrom(a1, &v21);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    goto LABEL_11;
  }

  HALS_AudioNode::ReferToBusesFrom(a1, &v21);
LABEL_11:
  v6 = *(a1 + 76);
  v7 = *(a1 + 32);
  v8 = (*(a1 + 40) - v7) >> 4;
  v9 = 0uLL;
  if (v8 <= v6)
  {
    v10 = 0uLL;
  }

  else
  {
    v10 = *(v7 + 16 * v6);
    v11 = *(v7 + 16 * v6 + 8);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      v7 = *(a1 + 32);
      v8 = (*(a1 + 40) - v7) >> 4;
    }
  }

  v12 = *(a1 + 80);
  if (v8 > v12)
  {
    v9 = *(v7 + 16 * v12);
    v13 = *(v7 + 16 * v12 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v14 = v10;
  if (v10)
  {
    v15 = v9;
    if (v9)
    {
      v16 = *v10;
      v17 = *v9;
      if (*v10 != *v9)
      {
        v20 = *(&v9 + 1);
        if (*(a1 + 64) == 1)
        {
          v18 = (*(a1 + 68) * **(v10 + 8));
          if (*(&v10 + 1))
          {
            atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
            memcpy(*v9, *v10, v18);
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
          }

          else
          {
            memcpy(v17, v16, v18);
          }

          v19 = **(v14 + 8);
        }

        else
        {
          if (*(&v10 + 1))
          {
            atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
            memcpy(*v9, *v10, *(a1 + 68));
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
          }

          else
          {
            memcpy(v17, v16, *(a1 + 68));
          }

          v19 = *(a1 + 72);
          **(v14 + 8) = v19;
        }

        *(&v9 + 1) = v20;
        **(v15 + 8) = v19;
      }
    }
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  if (*(&v14 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }
}

void HALS_IOProcessor_CopyInputToOutputNode::~HALS_IOProcessor_CopyInputToOutputNode(HALS_IOProcessor_CopyInputToOutputNode *this)
{
  *this = &unk_1F59743B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59743B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void HALS_AudioNode::~HALS_AudioNode(HALS_AudioNode *this)
{
  *this = &unk_1F59743B8;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void sub_1DE4CD994(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__hash_table<HALS_IOProcessor_BusType,std::hash<HALS_IOProcessor_BusType>,std::equal_to<HALS_IOProcessor_BusType>,std::allocator<HALS_IOProcessor_BusType>>::__emplace_unique_key_args<HALS_IOProcessor_BusType,HALS_IOProcessor_BusType>(void *a1, unsigned int a2, _DWORD *a3)
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
}

void sub_1DE4CDCAC(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1DE4CDDA4(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1DE4CDFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](va);
  HALS_AudioNode::~HALS_AudioNode(v10);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void HALS_IOProcessor_ProcessorGraph::~HALS_IOProcessor_ProcessorGraph(HALS_IOProcessor_ProcessorGraph *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(this + 16);
  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::__shared_ptr_emplace<HALS_IOProcessor_CopyInputToOutputNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DelayProcessorNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5973FC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_VolumeProcessorNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5973ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_ResamplerProcessorNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5973F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

__n128 std::deque<std::shared_ptr<HALS_IOProcessor_SubProcessorNode>>::push_back(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x100)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
    }

    a1[4] = v7 - 256;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v14);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  ++a1[5];
  return result;
}

void sub_1DE4CE798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<HALS_IOProcessor_BusType,std::hash<HALS_IOProcessor_BusType>,std::equal_to<HALS_IOProcessor_BusType>,std::allocator<HALS_IOProcessor_BusType>>::__emplace_unique_key_args<HALS_IOProcessor_BusType,HALS_IOProcessor_BusType const&>(void *a1, unsigned int a2, _DWORD *a3)
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
}

void std::deque<std::shared_ptr<HALS_IOProcessor_SubProcessorNode>>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = v2 + a1[4];
  v4 = a1[1];
  v5 = *(*(v4 + ((v3 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v2 = a1[5] - 1;
    v4 = a1[1];
    v3 = v2 + a1[4];
  }

  v6 = a1[2];
  a1[5] = v2;
  if (v6 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v6 - v4) - 1;
  }

  if (v7 - v3 >= 0x200)
  {
    operator delete(*(v6 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::shared_ptr<HALS_IOProcessor_SubProcessorNode>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 128;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 256;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<HALS_ChannelMapperProcessorNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5973F70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::vector<HALS_IOProcessor_ProcessingManifest::ProcessingStage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HALS_IOProcessor_ProcessingManifest::ProcessingStage>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<HALS_IOProcessor_ProcessingManifest::ProcessingStage>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t *std::unique_ptr<HALS_IOProcessor_ProcessingManifest>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 64);
    std::vector<HALS_IOProcessor_ProcessingManifest::ProcessingStage>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1E12C1730](v2, 0x1030C40D8696D6CLL);
  }

  return a1;
}

void std::vector<HALS_IOProcessor_ProcessingManifest::ProcessingStage>::push_back[abi:ne200100](uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 24 * v7;
    v12 = a2[1];
    *v11 = *a2;
    *(v11 + 8) = v12;
    v13 = a2[2];
    *(v11 + 16) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 24);
    v21 = (v11 + 24);
    v15 = *a1;
    v14 = a1[1];
    v16 = v11 + *a1 - v14;
    if (v14 != *a1)
    {
      v17 = v11 + *a1 - v14;
      v18 = *a1;
      do
      {
        *v17 = *v18;
        *(v17 + 8) = *(v18 + 8);
        *(v18 + 1) = 0;
        *(v18 + 2) = 0;
        v18 += 24;
        v17 += 24;
      }

      while (v18 != v14);
      do
      {
        v19 = *(v15 + 2);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v15 += 24;
      }

      while (v15 != v14);
    }

    v20 = *a1;
    *a1 = v16;
    *(a1 + 1) = v21;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = a2[2];
    v3[1] = a2[1];
    v3[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 3;
  }

  a1[1] = v6;
}

uint64_t std::shared_ptr<HALS_CustomProcessor>::operator=[abi:ne200100]<HALS_CustomProcessor,std::default_delete<HALS_CustomProcessor>,0>(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v3 = *(a1 + 8);
  *a1 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<HALS_CustomProcessor  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI20HALS_CustomProcessorEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<HALS_CustomProcessor  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<HALS_CustomProcessor  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOProcessor_ProcessorGraph::RequiresBus(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % v2;
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 16) + 8 * v4);
    if (v5)
    {
      for (i = *v5; i; i = *i)
      {
        v7 = i[1];
        if (v7 == a2)
        {
          if (*(i + 4) == a2)
          {
            return 1;
          }
        }

        else
        {
          if (v3.u32[0] > 1uLL)
          {
            if (v7 >= v2)
            {
              v7 %= v2;
            }
          }

          else
          {
            v7 &= v2 - 1;
          }

          if (v7 != v4)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

void HALS_IOProcessor_SubProcessorNode::Process(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  if (*(a1 + 16) == v4)
  {
    v5.n128_u64[1] = 0;
    goto LABEL_9;
  }

  v5 = *v4;
  v6 = *(v4 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5.n128_u64[0])
  {
LABEL_9:
    v6 = v5.n128_u64[1];
    if (!v5.n128_u64[1])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v25 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = v25.n128_u64[1];
    HALS_AudioNode::ReferToBusesFrom(a1, &v25);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_11;
  }

  HALS_AudioNode::ReferToBusesFrom(a1, &v25);
LABEL_11:
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = (*(a1 + 40) - v9) >> 4;
  v11 = 0uLL;
  if (v10 <= v8)
  {
    v12 = 0uLL;
  }

  else
  {
    v12 = *(v9 + 16 * v8);
    v13 = *(v9 + 16 * v8 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v9 = *(a1 + 32);
      v10 = (*(a1 + 40) - v9) >> 4;
    }
  }

  v14 = *(a1 + 68);
  if (v10 > v14)
  {
    v11 = *(v9 + 16 * v14);
    v15 = *(v9 + 16 * v14 + 8);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v9 = *(a1 + 32);
      v10 = (*(a1 + 40) - v9) >> 4;
    }
  }

  v16 = *(a1 + 72);
  v17 = 0uLL;
  if (v10 > v16)
  {
    v17 = *(v9 + 16 * v16);
    v18 = *(v9 + 16 * v16 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v5.n128_u64[0] = *a2;
  v24 = v12;
  v19 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v23 = v11;
  v20 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v22 = v17;
  v21 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 32))(a1, &v24, &v23, &v22, v5);
  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
  }

  if (*(&v23 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
  }

  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_1DE4CF350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    if (!v16)
    {
LABEL_7:
      if (!v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if (!v16)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (!v15)
  {
LABEL_8:
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_13:
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (!v14)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  goto LABEL_10;
}

uint64_t HALS_IOProcessor_SubProcessorNode::HALS_IOProcessor_SubProcessorNode(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F59743B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (a2)
  {
    operator new();
  }

  *a1 = &unk_1F59741A0;
  *(a1 + 64) = a3;
  *(a1 + 72) = a4;
  return a1;
}

void sub_1DE4CF57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *HALS_IOProcessorList::DestroyProcessor(void *this, HALS_IOProcessor *a2)
{
  v2 = this;
  v4 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        v4 = this[1];
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v5 = v4 + 1;
    if (v4 + 1 != v3)
    {
      do
      {
        v4 = v5;
        this = *(v5 - 1);
        *(v5 - 1) = *v5;
        *v5 = 0;
        if (this)
        {
          this = (*(*this + 8))(this);
        }

        v5 = v4 + 1;
      }

      while (v4 + 1 != v3);
      v3 = v2[1];
    }

    while (v3 != v4)
    {
      v6 = *--v3;
      this = v6;
      *v3 = 0;
      if (v6)
      {
        this = (*(*this + 8))(this);
      }
    }

    v2[1] = v4;
  }

  return this;
}

void sub_1DE4D0354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  v15 = v13[10];
  if (v15)
  {
    v13[11] = v15;
    operator delete(v15);
  }

  v16 = v13[7];
  if (v16)
  {
    v13[8] = v16;
    operator delete(v16);
  }

  v17 = *a13;
  if (*a13)
  {
    v13[5] = v17;
    operator delete(v17);
  }

  MEMORY[0x1E12C1730](v13, 0x10A1C40076B55E3, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL HALS_IOProcessorSubprocessFactoryDefault::NeedsChannelMapperSubprocessor(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a2 + 8);
  if (a4)
  {
    if (v4 != 1819304813)
    {
      return 0;
    }

    if (a4[1] != *a4)
    {
      return 1;
    }

    v5 = *(a2 + 28) == a3;
  }

  else
  {
    v5 = v4 != 1819304813 || *(a2 + 28) == a3;
  }

  return !v5;
}

uint64_t HALS_IOProcessorSubprocessFactoryDefault::NeedsResamplerSubprocessor(double a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a3 + 8) == 1819304813)
  {
    v4 = (*a3 != a1) | a4;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void HALS_Resampler::Process(HALS_Resampler *this, const unsigned __int8 *a2, unsigned int *a3, unsigned __int8 *a4, unsigned int *a5, unsigned __int8 *a6, __n128 a7)
{
  if (*(this + 8) == 1)
  {
    v12 = *(this + 13);
    if (v12 && *(this + 14))
    {
      v14 = *(this + 3) * *a3;
      ioOutputDataSize = 4 * *a3 * *(this + 4);
      AudioConverterConvertBuffer(v12, v14, a2, &ioOutputDataSize, a4);
      v15 = *a3;
      v20 = *a5;
      v21 = v15;
      HALS_Resampler::Process_Resample(this, a4, &v21, a6, &v20, v16);
      v17 = v20;
      *a3 = v21;
      *a5 = v17;
      v18 = 4 * v17 * *(this + 4);
      ioOutputDataSize = *(this + 3) * v17;
      AudioConverterConvertBuffer(*(this + 14), v18, a6, &ioOutputDataSize, a4);
    }

    else
    {

      HALS_Resampler::Process_Resample(this, a2, a3, a4, a5, a7);
    }
  }

  else
  {
    if (*(this + 10) == 1)
    {
      v19 = *(this + 3) * *a3;
    }

    else
    {
      v19 = *(this + 3);
    }

    memcpy(a4, a2, v19);
    *a5 = *a3;
  }
}

void HALS_Resampler::Process_Resample(unsigned int *this, const unsigned __int8 *a2, unsigned int *a3, unsigned __int8 *a4, unsigned int *a5, __n128 a6)
{
  v8 = this[4];
  if (!v8)
  {
    v28 = 0;
    v29 = 0;
    goto LABEL_26;
  }

  v12 = 0;
  do
  {
    v13 = &a2[4 * v12];
    v14 = v12 + 1;
    if (v12 + 1 >= v8)
    {
      v15 = 0;
    }

    else
    {
      v15 = &a2[4 * v14];
    }

    v16 = *a3;
    v17 = &a4[4 * v14];
    if (v12 + 1 >= v8)
    {
      v17 = 0;
    }

    v18 = *a5;
    v34 = *a5;
    v35 = v16;
    v19 = v12 >> 1;
    v20 = this[6];
    switch(v20)
    {
      case 2u:
        v24 = *(this + 10);
        if (v19 >= (*(this + 11) - v24) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v25 = *(v24 + 8 * v19);
        v26 = *(v25 + 12);
        if (v26 == 2)
        {
          a6.n128_f64[0] = RamstadSRC::processStereo(&v31, v25, v13, v15, &a4[4 * v12], v17, v16, v18, v8, v8);
          if (v32 == 1)
          {
LABEL_19:
            v27 = v31 & ~(v31 >> 31);
LABEL_22:
            *a3 = v27;
            break;
          }
        }

        else if (v26 == 1)
        {
          a6.n128_f64[0] = RamstadSRC::processMono(&v31, v25, v13, &a4[4 * v12], v16, v18, v8, v8);
          if (v32)
          {
            goto LABEL_19;
          }
        }

        v27 = 0;
        goto LABEL_22;
      case 1u:
        v23 = *(this + 7);
        if (v19 >= (*(this + 8) - v23) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        ShortTermLinearInterpolationResampler::PushConvertFloat(*(v23 + 8 * v19), &a2[4 * v12], v15, &a4[4 * v12], v17, &v35, &v34, v8, a6, v8);
        break;
      case 0u:
        v21 = *(this + 4);
        if (v19 >= (*(this + 5) - v21) >> 3)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v22 = *(v21 + 8 * v19);
        v31 = v16;
        v33 = v18;
        Resampler2::PushConvert(v22, &a2[4 * v12], v15, &a4[4 * v12], v17, &v31, &v33, v8, v8, v30);
        v34 = v33;
        v35 = v16;
        break;
    }

    v12 += 2;
    v8 = this[4];
  }

  while (v12 < v8);
  v28 = v34;
  v29 = v35;
LABEL_26:
  *a3 = v29;
  *a5 = v28;
}

void HALS_Resampler::Reset(HALS_Resampler *this)
{
  v1 = *(this + 6);
  switch(v1)
  {
    case 2:
      v10 = *(this + 10);
      for (i = *(this + 11); v10 != i; ++v10)
      {
        v12 = *v10;
        *(v12 + 72) = 0;
        *(v12 + 88) = 1;
        if (*(v12 + 93) == 1)
        {
          v13 = *(v12 + 160);
          v14 = *(v12 + 168) - v13;
          if (v14 >= 1)
          {
            bzero(v13, v14);
          }

          v15 = *(v12 + 184);
          v16 = *(v12 + 192);
        }

        else
        {
          v17 = *(v12 + 112);
          v18 = *(v12 + 120) - v17;
          if (v18 >= 1)
          {
            bzero(v17, v18);
          }

          v15 = *(v12 + 136);
          v16 = *(v12 + 144);
        }

        if (v16 - v15 >= 1)
        {
          bzero(v15, v16 - v15);
        }
      }

      break;
    case 1:
      v7 = *(this + 7);
      v8 = *(this + 8);
      while (v7 != v8)
      {
        v9 = *v7++;
        *(v9 + 16) = *(v9 + 8);
      }

      break;
    case 0:
      v2 = *(this + 4);
      for (j = *(this + 5); v2 != j; ++v2)
      {
        v4 = *v2;
        bzero(*(*v2 + 72), 4 * *(*v2 + 68));
        bzero(*(v4 + 80), 4 * *(v4 + 68));
        *(v4 + 64) = 0;
        *(v4 + 152) = 0;
        *(v4 + 96) = 0;
        *(v4 + 124) = 0;
        Resampler2::SetPrimeMethod(v4, *(v4 + 112));
        v5 = 0.0;
        if ((*(v4 + 256) & 1) == 0)
        {
          v6 = 1.0;
          if (*(v4 + 108) != 1818848869)
          {
            v6 = (*(*(v4 + 48) + 12) >> 1);
          }

          v5 = -1.0 - (*(v4 + 152) + v6);
        }

        *(v4 + 128) = v5;
        *(v4 + 264) = 0;
      }

      break;
  }
}

uint64_t HALS_Resampler::SetRateScalar(uint64_t this, double a2, double a3)
{
  if (*(this + 8) == 1)
  {
    v4 = *(this + 24);
    v5 = a3 / a2;
    switch(v4)
    {
      case 2:
        v12 = *(this + 80);
        v13 = *(this + 88);
        if (v12 != v13)
        {
          LODWORD(v3) = vcvtmd_s64_f64(v5);
          v14 = vcvtmd_s64_f64((v5 - floor(v5)) * 2147483650.0);
          do
          {
            v15 = *v12++;
            *(v15 + 60) = v3;
            *(v15 + 68) = v14;
            *(v15 + 80) = (v3 << 32 >> 1) + v14;
            *(v15 + 256) = -1;
            *(v15 + 264) = -1;
          }

          while (v12 != v13);
        }

        break;
      case 1:
        v9 = *(this + 56);
        v10 = *(this + 64);
        while (v9 != v10)
        {
          v11 = *v9++;
          this = ShortTermLinearInterpolationResampler::SetRate(v11, v5);
        }

        break;
      case 0:
        v6 = *(this + 32);
        v7 = *(this + 40);
        while (v6 != v7)
        {
          v8 = *v6++;
          this = Resampler2::SetVarispeedRate(v8, v5);
        }

        break;
    }
  }

  return this;
}

uint64_t HALS_Resampler::CalculateOutputFrameSize(HALS_Resampler *this, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  v16 = a2;
  if (*(this + 6) == 2)
  {
    v10 = *(this + 10);
    v11 = *(this + 11);
    if (v10 == v11)
    {
      return a2;
    }

    else
    {
      result = a2;
      do
      {
        if (*v10)
        {
          result = RamstadSRC::outputSamplesForInputSamples(*v10, v9, &v15);
        }

        ++v10;
      }

      while (v10 != v11);
    }
  }

  else
  {
    HALS_Resampler::PreflightFrameSizes(this, &v16, &v14, a5, a6, a7, a8, a9, a3, v13);
    return v14;
  }

  return result;
}

uint64_t HALS_Resampler::PreflightFrameSizes(uint64_t this, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, unsigned int a10)
{
  if (*(this + 8) != 1)
  {
    v14 = *a3;
    if (*a3 >= *a2)
    {
      v14 = *a2;
    }

    *a2 = v14;
    goto LABEL_9;
  }

  v12 = *(this + 24);
  if (v12 == 1)
  {
    this = **(this + 56);
    if (this)
    {

      return ShortTermLinearInterpolationResampler::PreFlight(this, a2, a3, a9, a4, a5, a6, a7, a8, a10);
    }
  }

  else if (!v12)
  {
    this = **(this + 32);
    if (this)
    {
      v13 = *a2;
      v15 = *a3;
      v16 = v13;
      this = Resampler2::PreFlight(this, &v16, &v15);
      v14 = v15;
      *a2 = v16;
LABEL_9:
      *a3 = v14;
    }
  }

  return this;
}

uint64_t HALS_Resampler::CalculateInputFrameSize(HALS_Resampler *this, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  v15 = a2;
  if (*(this + 6) == 2)
  {
    v10 = *(this + 10);
    v11 = *(this + 11);
    if (v10 == v11)
    {
      return a2;
    }

    else
    {
      result = a2;
      do
      {
        if (*v10)
        {
          result = RamstadSRC::inputSamplesForOutputSamples(*v10, v9);
        }

        ++v10;
      }

      while (v10 != v11);
    }
  }

  else
  {
    v14 = 100 * a2;
    HALS_Resampler::PreflightFrameSizes(this, &v14, &v15, a5, a6, a7, a8, a9, a3, v13);
    return v14;
  }

  return result;
}

void HALS_Resampler::~HALS_Resampler(HALS_Resampler *this)
{
  HALS_Resampler::~HALS_Resampler(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5974210;
  v2 = *(this + 4);
  for (i = *(this + 5); v2 != i; ++v2)
  {
    if (*v2)
    {
      Resampler2::~Resampler2(*v2);
      MEMORY[0x1E12C1730]();
    }
  }

  if (!*(this + 6))
  {
    Resampler2::ShutdownVarispeedMode(*(this + 5));
  }

  v4 = *(this + 7);
  for (j = *(this + 8); v4 != j; ++v4)
  {
    if (*v4)
    {
      MEMORY[0x1E12C1730](*v4, 0x1000C40AC875A91);
    }
  }

  v6 = *(this + 10);
  for (k = *(this + 11); v6 != k; ++v6)
  {
    if (*v6)
    {
      RamstadSRC::~RamstadSRC(*v6);
      MEMORY[0x1E12C1730]();
    }
  }

  v8 = *(this + 13);
  if (v8)
  {
    AudioConverterDispose(v8);
  }

  v9 = *(this + 14);
  if (v9)
  {
    AudioConverterDispose(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }
}

uint64_t HALS_ResamplerProcessorNode::ProcessInternal(uint64_t a1, void **a2, void **a3, uint64_t **a4)
{
  result = *(a1 + 80);
  if (result && *a2 && *a3)
  {
    if (*a4)
    {
      v5 = **a4;
    }

    else
    {
      v5 = 0;
    }

    return (*(*result + 80))(result, **a2, (*a2)[1], **a3, (*a3)[1], v5);
  }

  return result;
}

uint64_t HALS_ResamplerProcessorNode::Reset(HALS_ResamplerProcessorNode *this)
{
  result = *(this + 10);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

void HALS_ResamplerProcessorNode::~HALS_ResamplerProcessorNode(HALS_ResamplerProcessorNode *this)
{
  HALS_ResamplerProcessorNode::~HALS_ResamplerProcessorNode(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5974290;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F59743B8;
  v3 = (this + 32);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void HALS_VolumeProcessor::Process(HALS_VolumeProcessor *this, double a2, const unsigned __int8 *__src, unsigned __int8 *a4, unsigned int a5)
{
  v5 = a5;
  v6 = a4;
  v7 = __src;
  if (*(this + 8) == 1)
  {
    v9 = *(this + 4);
    if (v9 == 0.0)
    {
      *(this + 4) = a2;
      v9 = a2;
    }

    v10 = a5 + a2;
    if (v10 < v9)
    {
      v11 = 0;
      v12 = 0;
      goto LABEL_6;
    }

    v15 = v9 + *(this + 5);
    if (v15 <= a2)
    {
      goto LABEL_57;
    }

    if (v9 > a2 && v10 >= v15)
    {
      v5 = (v9 - a2);
      v11 = (v15 - v9);
      v12 = (v10 - v15);
      goto LABEL_6;
    }

    if (v9 <= a2 && v10 < v15)
    {
      v12 = 0;
      v11 = a5;
      if (!a5)
      {
        goto LABEL_56;
      }

      goto LABEL_36;
    }

    if (v9 > a2 && v10 >= v9 && v10 < v15)
    {
      v12 = 0;
      v5 = (v9 - a2);
      v11 = (v10 - v9);
LABEL_6:
      if (v5)
      {
        v13 = *(this + 5);
        if (v13 == 1.0)
        {
          memcpy(a4, __src, 4 * *(this + 4) * v5);
        }

        else if (v13 == 0.0)
        {
          bzero(a4, 4 * *(this + 4) * v5);
        }

        else
        {
          v31 = v13 * v13;
          MEMORY[0x1E12C2970](__src, 1, &v31, a4, 1, *(this + 4) * v5);
        }

        v19 = *(this + 4) * v5;
        v7 += 4 * v19;
        v6 += 4 * v19;
      }

      if (v11)
      {
        goto LABEL_36;
      }

      goto LABEL_56;
    }

    if (v9 <= a2 && v15 > a2 && v10 >= v15)
    {
      v11 = (v15 - a2);
      v12 = (v10 - v15);
      if (!v11)
      {
LABEL_56:
        v5 = v12;
LABEL_57:
        if (v5)
        {
          v29 = *(this + 6);
          *(this + 5) = v29;
          if (v29 == 1.0)
          {
            memcpy(v6, v7, 4 * *(this + 4) * v5);
          }

          else if (v29 == 0.0)
          {
            bzero(v6, 4 * *(this + 4) * v5);
          }

          else
          {
            v30 = v29 * v29;
            MEMORY[0x1E12C2970](v7, 1, &v30, v6, 1, *(this + 4) * v5);
          }
        }

        return;
      }

LABEL_36:
      v20 = 0;
      v21 = *(this + 4);
      v22 = 4 * v21;
      while (1)
      {
        if (v21)
        {
          v23 = 0;
          do
          {
            *&v6[v23] = (*(this + 5) * *(this + 5)) * *&v7[v23];
            v23 += 4;
          }

          while (v22 != v23);
        }

        v25 = *(this + 5);
        v24 = *(this + 6);
        v26 = *(this + 7);
        if (v26 >= 0.0)
        {
          break;
        }

        if (v25 > v24)
        {
          goto LABEL_42;
        }

LABEL_43:
        *(this + 5) = v24;
        v7 += v22;
        v6 += v22;
        if (++v20 == v11)
        {
          goto LABEL_56;
        }
      }

      if (v26 <= 0.0 || v25 >= v24)
      {
        goto LABEL_43;
      }

LABEL_42:
      v24 = v25 + v26;
      goto LABEL_43;
    }
  }

  else
  {
    v14 = *(this + 3) * a5;

    memcpy(v6, __src, v14);
  }
}

double HALS_VolumeProcessor::Reset(HALS_VolumeProcessor *this)
{
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 20) = result;
  *(this + 36) = 0;
  *(this + 28) = 0;
  *(this + 11) = 0;
  return result;
}

float HALS_VolumeProcessor::RampTo(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v2 < 1.0)
  {
    v2 = 1.0;
  }

  v3 = floor(v2);
  *(a1 + 40) = v3;
  v4 = *a2;
  if (*a2 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  result = (v4 - *(a1 + 20)) / v3;
  *(a1 + 24) = v4;
  *(a1 + 28) = result;
  return result;
}

uint64_t HALS_VolumeProcessor::MyProcessInputSequence(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  if (*a2 == *a3)
  {
    result = (*(v5 + 40))();
  }

  else
  {
    result = (*(v5 + 48))();
  }

  a3[1] = a2[1];
  return result;
}

uint64_t *HALS_VolumeProcessorNode::ProcessInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 80);
  if (result && *a2 && *a3)
  {
    v6 = *result;
    if (**a2 == **a3)
    {
      result = (*(v6 + 40))();
    }

    else
    {
      result = (*(v6 + 48))();
    }

    **(*a3 + 8) = **(*a2 + 8);
  }

  return result;
}

uint64_t HALS_VolumeProcessorNode::Reset(HALS_VolumeProcessorNode *this)
{
  result = *(this + 10);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void HALS_VolumeProcessorNode::~HALS_VolumeProcessorNode(HALS_VolumeProcessorNode *this)
{
  HALS_VolumeProcessorNode::~HALS_VolumeProcessorNode(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5974350;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F59743B8;
  v3 = (this + 32);
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 8);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void ADS::Box::GetPropertyData(ADS::Box *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, char *a9)
{
  v24 = *MEMORY[0x1E69E9840];
  mSelector = a4->mSelector;
  if (a4->mSelector > 1651536494)
  {
    if (mSelector > 1652060013)
    {
      if (mSelector != 1652060014)
      {
        if (mSelector != 1953653102)
        {
          if (mSelector != 1819173229)
          {
            goto LABEL_38;
          }

          if (a7 > 3)
          {
            v13 = *MEMORY[0x1E695E478];
            v14 = *(this + 16);
LABEL_32:
            *a9 = CFStringCreateCopy(v13, v14);
            v15 = 8;
            goto LABEL_33;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v20 = 136315394;
            v21 = "ADS_Box.cpp";
            v22 = 1024;
            v23 = 168;
            v17 = MEMORY[0x1E69E9C10];
            v18 = "%25s:%-5d  ADS::Box::GetPropertyData: not enough space for the return value of kAudioObjectPropertyName for the box";
            goto LABEL_43;
          }

LABEL_44:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = 561211770;
        }

        if (a7 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          v20 = 136315394;
          v21 = "ADS_Box.cpp";
          v22 = 1024;
          v23 = 184;
          v17 = MEMORY[0x1E69E9C10];
          v18 = "%25s:%-5d  ADS::Box::GetPropertyData: not enough space for the return value of a AudioBox Property for the box";
          goto LABEL_43;
        }

LABEL_22:
        *a9 = 0;
        goto LABEL_23;
      }
    }

    else if (mSelector != 1651536495)
    {
      if (mSelector != 1651861860)
      {
        if (mSelector == 1652060006)
        {
          *a9 = 2003329396;
LABEL_23:
          v15 = 4;
LABEL_33:
          *a8 = v15;
          return;
        }

        goto LABEL_38;
      }

      if (a7 > 3)
      {
        v13 = *MEMORY[0x1E695E478];
        v14 = *(this + 18);
        goto LABEL_32;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "ADS_Box.cpp";
        v22 = 1024;
        v23 = 175;
        v17 = MEMORY[0x1E69E9C10];
        v18 = "%25s:%-5d  ADS::Box::GetPropertyData: not enough space for the return value of kAudioBoxPropertyBoxUID for the box";
LABEL_43:
        _os_log_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, v18, &v20, 0x12u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

LABEL_21:
    if (a7 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      v20 = 136315394;
      v21 = "ADS_Box.cpp";
      v22 = 1024;
      v23 = 191;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "%25s:%-5d  ADS::Box::GetPropertyData: not enough space for the return value of a AudioBox Property for the box";
      goto LABEL_43;
    }

    goto LABEL_22;
  }

  if (mSelector <= 1651007860)
  {
    if (mSelector == 1650682915 || mSelector == 1650751011)
    {
      *a8 = 0;
      return;
    }

    goto LABEL_38;
  }

  if (mSelector == 1651007861 || mSelector == 1651010921 || mSelector == 1651013225)
  {
    goto LABEL_21;
  }

LABEL_38:

  ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ADS::Box::GetPropertyDataSize(ADS::Box *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  if (a4->mSelector <= 1651536494)
  {
    if (mSelector <= 1651007860)
    {
      if (mSelector == 1650682915 || mSelector == 1650751011)
      {
        return 0;
      }
    }

    else if (mSelector == 1651007861 || mSelector == 1651010921 || mSelector == 1651013225)
    {
      return 4;
    }

    return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }

  v7 = 8;
  if (mSelector <= 1652060013)
  {
    if (mSelector != 1651536495)
    {
      if (mSelector != 1651861860)
      {
        v8 = 28518;
        goto LABEL_18;
      }

      return v7;
    }

    return 4;
  }

  if (mSelector == 1953653102)
  {
    return 4;
  }

  if (mSelector == 1819173229)
  {
    return v7;
  }

  v8 = 28526;
LABEL_18:
  if (mSelector == (v8 | 0x62780000))
  {
    return 4;
  }

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

uint64_t ADS::Box::IsPropertySettable(ADS::Box *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1651536494)
  {
    if (mSelector <= 1652060005)
    {
      v5 = mSelector == 1651536495;
      v6 = 1651861860;
    }

    else
    {
      v5 = mSelector == 1652060006 || mSelector == 1652060014;
      v6 = 1953653102;
    }
  }

  else if (mSelector <= 1651007860)
  {
    v5 = mSelector == 1650682915;
    v6 = 1650751011;
  }

  else
  {
    v5 = mSelector == 1651007861 || mSelector == 1651010921;
    v6 = 1651013225;
  }

  if (v5 || mSelector == v6)
  {
    return 0;
  }

  else
  {
    return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
  }
}

BOOL ADS::Box::HasProperty(ADS::Box *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector <= 1651536494)
  {
    if (mSelector <= 1651007860)
    {
      v5 = mSelector == 1650682915;
      v6 = 1650751011;
    }

    else
    {
      v5 = mSelector == 1651007861 || mSelector == 1651010921;
      v6 = 1651013225;
    }
  }

  else if (mSelector > 1652060013)
  {
    v5 = mSelector == 1652060014 || mSelector == 1819173229;
    v6 = 1953653102;
  }

  else
  {
    v5 = mSelector == 1651536495 || mSelector == 1651861860;
    v6 = 1652060006;
  }

  return v5 || mSelector == v6 || ADS::BaseObject::HasProperty(this, a2, a3, a4);
}

void ADS::Box::~Box(ADS::Box *this)
{
  *this = &unk_1F59743E8;
  v2 = (this + 120);
  OS::CF::UntypedObject::~UntypedObject((this + 136));
  OS::CF::UntypedObject::~UntypedObject(v2);
  ADS::BaseObject::~BaseObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59743E8;
  v2 = (this + 120);
  OS::CF::UntypedObject::~UntypedObject((this + 136));
  OS::CF::UntypedObject::~UntypedObject(v2);

  ADS::BaseObject::~BaseObject(this);
}

void AMCP::System_Context::System_Context(AMCP::Log::AMCP_Scope_Registry *a1)
{
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  AMCP::System_Context::System_Context(a1, v2, v1);
}

{
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  AMCP::System_Context::System_Context(a1, v2, v1);
}

void sub_1DE4D1E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 - 40) = v3;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::System_Context::System_Context(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    a1 = AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 16);
  switch(v6)
  {
    case 1:
      v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v15 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = *v17;
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      else
      {
        v18 = *v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "System_Context.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 191;
        v19 = v18;
        v20 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v19, v20, "%32s:%-5d \n-=-=-=-=-=-=-=-=\nBegin creating System_Context\n-=-=-=-=-=-=-=-=", buf, 0x12u);
      }

      break;
    case 2:
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "System_Context.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 191;
        _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d \n-=-=-=-=-=-=-=-=\nBegin creating System_Context\n-=-=-=-=-=-=-=-=", buf, 0x12u);
      }

      break;
    case 3:
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "System_Context.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 191;
        v19 = v10;
        v20 = OS_LOG_TYPE_INFO;
        goto LABEL_29;
      }

      break;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  kdebug_trace();
  operator new();
}

void sub_1DE4D2CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v18 = *(v15 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::System_Context::System_Context_State>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<AMCP::System_Context::System_Context_State>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE4D2F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 - 40) = v3;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AMCP::System_Context::System_Context(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
  if (v3)
  {
    memset(v2, 0, sizeof(v2));
    std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v2, &v3, &v4, 1uLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v3 = CFStringCreateWithBytes(0, "*", 1, 0x8000100u, 0);
  if (v3)
  {
    memset(v2, 0, sizeof(v2));
    std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v2, &v3, &v4, 1uLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v3 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  if (v3)
  {
    memset(v2, 0, sizeof(v2));
    std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v2, &v3, &v4, 1uLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v3 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  if (v3)
  {
    memset(v2, 0, sizeof(v2));
    std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v2, &v3, &v4, 1uLL);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Could not construct");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v4 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  if (v4)
  {
    if (CFStringCreateWithBytes(0, "com.apple.audio.Meta-Driver", 27, 0x8000100u, 0))
    {
      memset(v3, 0, sizeof(v3));
      std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v3, &v4, &v6, 2uLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v1, "Could not construct");
  __cxa_throw(v1, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v4 = CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0);
  if (v4)
  {
    if (CFStringCreateWithBytes(0, "com.apple.audio.Meta-Driver", 27, 0x8000100u, 0))
    {
      memset(v3, 0, sizeof(v3));
      std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v3, &v4, &v6, 2uLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v1, "Could not construct");
  __cxa_throw(v1, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
  if (v5)
  {
    if (CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0))
    {
      if (CFStringCreateWithBytes(0, "com.apple.audio.Meta-Driver", 27, 0x8000100u, 0))
      {
        memset(v4, 0, sizeof(v4));
        std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v4, &v5, &v8, 3uLL);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Could not construct");
    __cxa_throw(v2, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v1, "Could not construct");
  __cxa_throw(v1, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v5 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
  if (v5)
  {
    if (CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0))
    {
      if (CFStringCreateWithBytes(0, "com.apple.audio.Meta-Driver", 27, 0x8000100u, 0))
      {
        memset(v4, 0, sizeof(v4));
        std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v4, &v5, &v8, 3uLL);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Could not construct");
    __cxa_throw(v2, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v1, "Could not construct");
  __cxa_throw(v1, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v4[3], 0, 24);
  v5 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
  if (v5)
  {
    if (CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio2", 24, 0x8000100u, 0))
    {
      if (CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0))
      {
        memset(v4, 0, 24);
        std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v4, &v5, &v8, 3uLL);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Could not construct");
    __cxa_throw(v2, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v1, "Could not construct");
  __cxa_throw(v1, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v4[3], 0, 24);
  v5 = CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio1", 24, 0x8000100u, 0);
  if (v5)
  {
    if (CFStringCreateWithBytes(0, "com.apple.iokit.IOAudio2", 24, 0x8000100u, 0))
    {
      if (CFStringCreateWithBytes(0, "com.apple.audio.Null-Driver", 27, 0x8000100u, 0))
      {
        memset(v4, 0, 24);
        std::vector<applesauce::CF::StringRef>::__init_with_size[abi:ne200100]<applesauce::CF::StringRef const*,applesauce::CF::StringRef const*>(v4, &v5, &v8, 3uLL);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v2 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v2, "Could not construct");
    __cxa_throw(v2, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v1 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v1, "Could not construct");
  __cxa_throw(v1, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1DE4D37EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void sub_1DE4D3A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va1);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void sub_1DE4D3FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v18);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v18);
  }

  while (v18 != &a17);
  a17 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a17);
  v20 = -24;
  do
  {
    applesauce::CF::StringRef::~StringRef(v17--);
    v20 += 8;
  }

  while (v20);
  _Unwind_Resume(a1);
}

void sub_1DE4D45F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v18);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v18);
  }

  while (v18 != &a17);
  a17 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a17);
  v20 = -24;
  do
  {
    applesauce::CF::StringRef::~StringRef(v17--);
    v20 += 8;
  }

  while (v20);
  _Unwind_Resume(a1);
}

void sub_1DE4D4978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v17);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v17);
  }

  while (v17 != &a17);
  a10 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1DE4D4C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v17);
  do
  {
    applesauce::CF::StringRef::~StringRef(--v17);
  }

  while (v17 != &a17);
  a10 = &a13;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void AMCP::System_Context::~System_Context(std::__shared_weak_count **this)
{
  v1 = this;
  v57 = *MEMORY[0x1E69E9840];
  v2 = this[1];
  if (v2)
  {
    if (!v2->__shared_owners_)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v4 + 16);
      switch(v6)
      {
        case 3:
          v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v15 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(this);
          }

          v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            v18 = *v17;
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          else
          {
            v18 = *v17;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "System_Context.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 212;
            v19 = v18;
            v20 = OS_LOG_TYPE_INFO;
LABEL_31:
            _os_log_impl(&dword_1DE1F9000, v19, v20, "%32s:%-5d \n-=-=-=-=-=-=-=-=\nBegin destroying System_Context\n-=-=-=-=-=-=-=-=", buf, 0x12u);
          }

          break;
        case 2:
          v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v11 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(this);
          }

          v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            v14 = *v13;
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          else
          {
            v14 = *v13;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "System_Context.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 212;
            _os_log_debug_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEBUG, "%32s:%-5d \n-=-=-=-=-=-=-=-=\nBegin destroying System_Context\n-=-=-=-=-=-=-=-=", buf, 0x12u);
          }

          break;
        case 1:
          v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v7 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(this);
          }

          v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            v10 = *v9;
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          else
          {
            v10 = *v9;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "System_Context.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 212;
            v19 = v10;
            v20 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_31;
          }

          break;
      }

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v21 = **v1;
      std::mutex::lock((v21 + 80));
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        v22 = AMCP::Log::AMCP_Scope_Registry::initialize(v22);
      }

      v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v24 + 16);
      switch(v26)
      {
        case 3:
          v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v35 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
          }

          v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            v38 = *v37;
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          else
          {
            v38 = *v37;
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "System_Core.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 94;
            v39 = v38;
            v40 = OS_LOG_TYPE_INFO;
LABEL_62:
            _os_log_impl(&dword_1DE1F9000, v39, v40, "%32s:%-5d Stopping System_Core", buf, 0x12u);
          }

          break;
        case 2:
          v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v31 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
          }

          v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            v34 = *v33;
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          else
          {
            v34 = *v33;
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "System_Core.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 94;
            _os_log_debug_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_DEBUG, "%32s:%-5d Stopping System_Core", buf, 0x12u);
          }

          break;
        case 1:
          v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v27 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v22);
          }

          v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            v30 = *v29;
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          else
          {
            v30 = *v29;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "System_Core.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 94;
            v39 = v30;
            v40 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_62;
          }

          break;
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v41 = *(v21 + 32);
      AMCP::Graph::Graph::get_nodes(buf, *(v41 + 2896));
      v42 = *buf;
      v43 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v44 = v41 + 2696;
        do
        {
          (*(*v44 + 16))(&v52, v44);
          v45 = (*(*v52 + 16))(v52);
          v46 = *(*v42 + 176);
          if (v46)
          {
            v47 = *(v46 + 8);
          }

          else
          {
            v47 = 0;
          }

          AMCP::Core::Broker::fetch_core(&v50, v45, v47);
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          v52 = 0x676C6F6270617573;
          LODWORD(v53) = 0;
          AMCP::Core::Core::call_operation_function<void,AMCP::Pause_Behavior>(v50, &v52, 1);
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }

          v42 += 16;
        }

        while (v42 != v43);
      }

      v50 = buf;
      std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&v50);
      AMCP::Core::Conductor::flush_work_queues(*(v21 + 32));
      v48 = *(v21 + 32);
      v55[0] = &unk_1F5968288;
      v55[1] = v21;
      v55[3] = v55;
      __lk.__m_ = (v48 + 1040);
      __lk.__owns_ = 1;
      std::mutex::lock((v48 + 1040));
      operator new();
    }

    v49 = this[1];
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }
  }
}

void sub_1DE4D5674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void AMCP::System_Context::System_Context_State::~System_Context_State(AMCP::System_Context::System_Context_State *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t HALS_DSPHostPerClientConfigSerializer::add_dictionary(uint64_t a1, uint64_t a2, const __CFString **a3)
{
  v4 = **(a1 + 8);
  v5 = *a3;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v9)
    {
      if (v8 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      key = CFStringCreateWithBytes(0, v9, v11, 0x8000100u, 0);
      if (!key)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v5 = *a3;
    }

    else
    {
      key = 0;
    }

    v12 = PropertyListDeepImmutableCopy(v5);
    cf = v12;
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFDictionaryGetTypeID())
      {
        v17 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v17, "Could not construct");
        __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v14 = cf;
    }

    else
    {
      v14 = 0;
    }

    CFDictionaryAddValue(**(a1 + 8), key, v14);
    if (cf)
    {
      CFRelease(cf);
    }

    if (key)
    {
      CFRelease(key);
    }
  }

  return v7;
}

void sub_1DE4D58AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

BOOL HALS_DSPHostPerClientConfigSerializer::add_uint32(uint64_t a1, uint64_t a2, int a3)
{
  v3 = **(a1 + 8);
  if (v3)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      key = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
      if (!key)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      key = 0;
    }

    valuePtr = a3;
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    cf = v10;
    if (!v10)
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
      __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFDictionaryAddValue(**(a1 + 8), key, v10);
    CFRelease(cf);
    if (key)
    {
      CFRelease(key);
    }
  }

  return v3 != 0;
}

void sub_1DE4D5A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void HALS_DSPHostPerClientConfigDeserializer::get_dictionary(uint64_t a1@<X0>, const UInt8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = a2[23];
  if ((v6 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v7 = *(v3 + 1);
    if ((v6 & 0x80u) == 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    a2 = CFStringCreateWithBytes(0, a2, v8, 0x8000100u, 0);
    v17 = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v17 = 0;
  }

  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10)
  {
    v12 = applesauce::CF::details::at_key<applesauce::CF::StringRef &>(*v10, a2);
    if (!v12)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not find item");
      __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v13 = v12;
    CFRetain(v12);
    v14 = CFGetTypeID(v13);
    if (v14 != CFDictionaryGetTypeID())
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v16, "Could not construct");
      __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    *a3 = v13;
    *(a3 + 8) = 1;
    a2 = v17;
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (!v11)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void sub_1DE4D5C90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4D5BFCLL);
}

uint64_t HALS_DSPHostPerClientConfigDeserializer::get_uint32(uint64_t a1, const UInt8 *a2)
{
  v3 = a2;
  v5 = a2[23];
  if ((v5 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v6 = *(v3 + 1);
    if ((v5 & 0x80u) == 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    a2 = CFStringCreateWithBytes(0, a2, v7, 0x8000100u, 0);
    cf = a2;
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  v9 = *(a1 + 8);
  v10 = *v9;
  if (!*v9)
  {
    v13 = 0;
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = applesauce::CF::details::at_key<applesauce::CF::StringRef &>(*v9, a2);
  if (!v11)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not find item");
    __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v12 = applesauce::CF::convert_to<unsigned int,0>(v11);
  v13 = v12;
  v2 = v12 >> 8;
  a2 = cf;
  if (cf)
  {
LABEL_15:
    CFRelease(a2);
  }

LABEL_16:
  if (v10)
  {
    v14 = 0x100000000;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  return v14 | v13 | (v2 << 8);
}

void AMCP::Utility::Kernel_Error_Category::message(__int16 a1@<W1>, std::string *a2@<X8>)
{
  std::to_string(&v4, a1 & 0x3FFF);
  v3 = std::string::insert(&v4, 0, "kernel error code: ", 0x13uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1DE4D5F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Utility::Kernel_Error_Category::~Kernel_Error_Category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Utility::Kernel_Error_Category::get(AMCP::Utility::Kernel_Error_Category *this)
{
  {
    AMCP::Utility::Kernel_Error_Category::get(void)::s_category = &unk_1F5974588;
  }
}

uint64_t HALB_MachPort::CreatePort(HALB_MachPort *this)
{
  v1 = this;
  v24 = *MEMORY[0x1E69E9840];
  name = 0;
  v2 = MEMORY[0x1E69E9A60];
  v3 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (v3)
  {
    v9 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "HALB_MachPort.cpp";
      v20 = 1024;
      v21 = 56;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_MachPort::CreatePort: failed to allocate the port, Error: 0x%X", buf, 0x18u);
    }

LABEL_22:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v9;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

  port_info_outCnt = 1;
  attributes = mach_port_get_attributes(*v2, name, 1, &port_info_out, &port_info_outCnt);
  if (attributes)
  {
    v9 = attributes;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "HALB_MachPort.cpp";
      v20 = 1024;
      v21 = 65;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to get the port limts";
LABEL_20:
      _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x12u);
    }

LABEL_21:
    mach_port_mod_refs(*v2, name, 1u, -1);
    goto LABEL_22;
  }

  port_info_out = v1;
  v5 = MEMORY[0x1E12C1EA0](*v2, name, 1, &port_info_out, 1);
  if (v5)
  {
    v9 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "HALB_MachPort.cpp";
      v20 = 1024;
      v21 = 74;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to set the port limts";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_5:
  v6 = MEMORY[0x1E12C1EA0](*v2, name, 6, 0, 0);
  if (v6)
  {
    v9 = v6;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "HALB_MachPort.cpp";
      v20 = 1024;
      v21 = 85;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to set attribute MACH_PORT_DENAP_RECEIVER";
LABEL_14:
      _os_log_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x12u);
    }

LABEL_15:
    mach_port_deallocate(*v2, name);
    goto LABEL_22;
  }

  inserted = mach_port_insert_right(*v2, name, name, 0x14u);
  if (inserted)
  {
    v9 = inserted;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "HALB_MachPort.cpp";
      v20 = 1024;
      v21 = 93;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  HALB_MachPort::CreatePort: failed to create the send right";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  return name;
}

void HALB_MachPort::DestroyPort(AMCP::Log::AMCP_Scope_Registry *name, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (name)
  {
    v5 = name;
    if (a2 & 1) != 0 || (a3)
    {
      goto LABEL_10;
    }

    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(name);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = 136315394;
      v17 = "HALB_MachPort.cpp";
      v18 = 1024;
      v19 = 182;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_MachPort::DestroyPort: not going to destroy anything this way", &v16, 0x12u);
      if (a2)
      {
LABEL_11:
        v10 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
        if (v10)
        {
          v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!*MEMORY[0x1E69E3C08])
          {
            __break(1u);
          }

          v13 = *(v11 + 8);
          v14 = (v10 << 32) | 0xBF;
          v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
          *(v15 + 16) = 0;
          *(v15 + 20) = 16;
          *(v15 + 24) = "HALB_MachPort.cpp";
          *(v15 + 32) = v14;
          *v15 = &unk_1F59745E8;
          *(v15 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v13, v15);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }
      }
    }

    if (a3)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], v5, 1u, -1);
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_MachPort::DestroyPort(unsigned int,BOOL,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_MachPort::DestroyPort: deallocating the port failed, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_MachPort::DestroyPort(unsigned int,BOOL,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void non-virtual thunk toHALS_PlugInControl::~HALS_PlugInControl(HALS_PlugInControl *this, unsigned int a2)
{
  HALS_PlugInControl::~HALS_PlugInControl((this - 72), a2);
}

{
  v2 = (this - 72);
  HALS_PlugInObject::~HALS_PlugInObject(this, a2);

  HALS_Control::~HALS_Control(v2);
}

void HALS_PlugInControl::~HALS_PlugInControl(HALS_PlugInControl *this, unsigned int a2)
{
  HALS_PlugInObject::~HALS_PlugInObject((this + 72), a2);
  HALS_Control::~HALS_Control(this);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInObject::~HALS_PlugInObject((this + 72), a2);

  HALS_Control::~HALS_Control(this);
}

BOOL HALS_PlugInControl::GetHardwareReferenceStreamControlValue(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 240);
  }

  else
  {
    v3 = 0;
  }

  v11 = 0;
  v10 = *"lvcbbolg";
  v8 = 0;
  v9 = 4;
  v4 = *(a1 + 80);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 568))(v5, *(a1 + 92), v3, &v10, 0, 0, 4, &v9, &v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v8 != 0;
}

void sub_1DE4D6868(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInControl::SetHardwareReferenceStreamControlValue(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v9 = *"lvcbbolg";
  v8 = a3;
  v4 = *(a1 + 80);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    v7 = *(a2 + 240);
  }

  else
  {
    v7 = 0;
  }

  (*(*v5 + 576))(v5, *(a1 + 92), v7, &v9, 0, 0, 4, &v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE4D693C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInControl::SetPropertyData(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, _DWORD *a5, unsigned int a6, const void *a7, HALS_Client *a8)
{
  v63 = *MEMORY[0x1E69E9840];
  v53 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 14));
  if (!v53)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v60 = "HALS_PlugInControl.cpp";
      v61 = 1024;
      v62 = 314;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::SetPropertyData: owning device is missing", buf, 0x12u);
    }

    v46 = 560947818;
LABEL_99:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v46;
  }

  v51 = a7;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v14))
  {
    v15 = atomic_load(v53 + 40);
    v16 = a8 ? *(a8 + 60) : getpid();
    if (v15 != -1 && v15 != v16)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v60 = "HALS_PlugInControl.cpp";
        v61 = 1024;
        v62 = 315;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::_SetPropertyData: the given process does not own hog mode", buf, 0x12u);
      }

      v46 = 560492391;
      goto LABEL_99;
    }
  }

  v18 = *(this + 5);
  if (v18 == 1986817381 || v18 == 1836414053)
  {
    std::string::basic_string[abi:ne200100]<0>(v57, "HALS_PlugInControl::SetPropertyData");
    v20 = a5;
    v21 = *&a3->mSelector;
    mElement = a3->mElement;
    v24 = *(this + 12);
    v23 = *(this + 13);
    v26 = *(this + 14);
    v25 = *(this + 15);
    v27 = "no control type";
    if (v25 == 1)
    {
      v27 = "software control";
    }

    if (v25)
    {
      v28 = v27;
    }

    else
    {
      v28 = "external driver";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v28);
    v50 = v23;
    a5 = v20;
    LogVolumeChangeForServerSideControl(v57, a2, v21, mElement, a4, v20, v26, v24, v50, __p);
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    kdebug_trace();
    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  mSelector = a3->mSelector;
  if (mSelector > 1818457189)
  {
    if (mSelector > 1935962741)
    {
      if (mSelector == 1936745334)
      {
        v43 = *(this + 10);
        v32 = *(v43 + 416);
        v33 = *(v43 + 424);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *(this + 23);
        v35 = a3;
        if (a8)
        {
          v36 = *(a8 + 60);
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_88;
      }

      if (mSelector == 1935962742)
      {
        v39 = *(this + 10);
        v32 = *(v39 + 416);
        v33 = *(v39 + 424);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *(this + 23);
        v35 = a3;
        if (a8)
        {
          v36 = *(a8 + 60);
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_88;
      }
    }

    else
    {
      if (mSelector == 1818457190)
      {
        v41 = *(this + 10);
        v32 = *(v41 + 416);
        v33 = *(v41 + 424);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *(this + 23);
        v35 = a3;
        if (a8)
        {
          v36 = *(a8 + 60);
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_88;
      }

      if (mSelector == 1935893353)
      {
        v37 = *(this + 10);
        v32 = *(v37 + 416);
        v33 = *(v37 + 424);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *(this + 23);
        v35 = a3;
        if (a8)
        {
          v36 = *(a8 + 60);
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_88;
      }
    }
  }

  else if (mSelector > 1818453109)
  {
    if (mSelector == 1818453110)
    {
      v42 = *(this + 10);
      v32 = *(v42 + 416);
      v33 = *(v42 + 424);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(this + 23);
      v35 = a3;
      if (a8)
      {
        v36 = *(a8 + 60);
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_88;
    }

    if (mSelector == 1818456950)
    {
      v38 = *(this + 10);
      v32 = *(v38 + 416);
      v33 = *(v38 + 424);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(this + 23);
      v35 = a3;
      if (a8)
      {
        v36 = *(a8 + 60);
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_88;
    }
  }

  else
  {
    if (mSelector == 1650685548)
    {
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v60 = "HALS_PlugInControl.cpp";
          v61 = 1024;
          v62 = 346;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::SetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", buf, 0x12u);
        }

        v49 = __cxa_allocate_exception(0x10uLL);
        *v49 = off_1F5991DD8;
        v49[2] = 561211770;
      }

      if (*(this + 5) == 1702259059)
      {
        HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a8, *a5 != 0);
        goto LABEL_90;
      }

      v45 = *(this + 10);
      v32 = *(v45 + 416);
      v33 = *(v45 + 424);
      v35 = a3;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(this + 23);
      if (a8)
      {
        v36 = *(a8 + 60);
      }

      else
      {
        v36 = 0;
      }

      goto LABEL_88;
    }

    if (mSelector == 1651272546)
    {
      v31 = *(this + 10);
      v32 = *(v31 + 416);
      v33 = *(v31 + 424);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(this + 23);
      v35 = a3;
      if (a8)
      {
        v36 = *(a8 + 60);
      }

      else
      {
        v36 = 0;
      }

LABEL_88:
      (*(*v32 + 576))(v32, v34, v36, v35, a6, v51, a4, a5);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      goto LABEL_90;
    }
  }

  if (HALS_Control::HasProperty(this, a2, a3))
  {
    HALS_Control::SetPropertyData(this, a2, a3, a4, a5, a6, v51, a8);
    goto LABEL_90;
  }

  if ((*(*(this + 9) + 24))(this + 72, mSelector))
  {
    v44 = *(this + 10);
    v32 = *(v44 + 416);
    v33 = *(v44 + 424);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = *(this + 23);
    v35 = a3;
    if (a8)
    {
      v36 = *(a8 + 60);
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_88;
  }

LABEL_90:
  if (v29)
  {
    kdebug_trace();
  }

  HALS_ObjectMap::ReleaseObject(v53, v40);
}

void sub_1DE4D7290(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, HALS_ObjectMap *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  HALS_ObjectMap::ReleaseObject(a14, a2);
  _Unwind_Resume(a1);
}

void HALS_PlugInControl::GetPropertyData(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, char *a6, uint64_t a7, _DWORD *a8, HALS_Client *a9)
{
  v66 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (mSelector <= 1818457189)
  {
    if (mSelector > 1818453105)
    {
      if (mSelector <= 1818453109)
      {
        if (mSelector == 1818453106)
        {
          v55 = *(this + 10);
          v19 = *(v55 + 416);
          v20 = *(v55 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(this + 23);
          if (a9)
          {
            v22 = *(a9 + 60);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_152;
        }

        if (mSelector != 1818453107)
        {
          goto LABEL_114;
        }

        if (a4 >= 4 && a7 >= 4)
        {
          *a6 = *a8;
        }

        v37 = *(this + 10);
        v38 = *(v37 + 416);
        v39 = *(v37 + 424);
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40 = *(this + 23);
        if (a9)
        {
          v41 = *(a9 + 60);
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        if (mSelector == 1818453110)
        {
          v48 = *(this + 10);
          v19 = *(v48 + 416);
          v20 = *(v48 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(this + 23);
          if (a9)
          {
            v22 = *(a9 + 60);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_152;
        }

        if (mSelector != 1818456932)
        {
          if (mSelector == 1818456950)
          {
            v31 = *(this + 10);
            v19 = *(v31 + 416);
            v20 = *(v31 + 424);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v21 = *(this + 23);
            if (a9)
            {
              v22 = *(a9 + 60);
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_152;
          }

          goto LABEL_114;
        }

        if (a4 >= 4 && a7 >= 4)
        {
          *a6 = *a8;
        }

        v53 = *(this + 10);
        v38 = *(v53 + 416);
        v39 = *(v53 + 424);
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v40 = *(this + 23);
        if (a9)
        {
          v41 = *(a9 + 60);
        }

        else
        {
          v41 = 0;
        }
      }

      (*(*v38 + 568))(v38, v40, v41, a3, 0, 0, a4, a5, a6);
      if (!v39)
      {
        return;
      }

      v60 = v39;
LABEL_157:

      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      return;
    }

    if (mSelector <= 1651272547)
    {
      if (mSelector != 1650685548)
      {
        if (mSelector == 1651272546)
        {
          v36 = *(this + 10);
          v19 = *(v36 + 416);
          v20 = *(v36 + 424);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(this + 23);
          if (a9)
          {
            v22 = *(a9 + 60);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_152;
        }

        goto LABEL_114;
      }

      if (!a4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_PlugInControl.cpp";
          v64 = 1024;
          v65 = 251;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::GetPropertyData: bad property data size for kAudioBooleanControlPropertyValue", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      if (*(this + 5) != 1702259059)
      {
        v59 = *(this + 10);
        v19 = *(v59 + 416);
        v20 = *(v59 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_152;
      }

      *a6 = HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData(*(*(this + 8) + 8), a9);
      v29 = 4;
    }

    else
    {
      if (mSelector == 1651272548)
      {
        v47 = *(this + 10);
        v19 = *(v47 + 416);
        v20 = *(v47 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_152;
      }

      if (mSelector == 1668049771)
      {
        v52 = *(this + 10);
        v19 = *(v52 + 416);
        v20 = *(v52 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_152;
      }

      if (mSelector != 1668641652)
      {
        goto LABEL_114;
      }

      v23 = a4 / 0xC;
      if (*(this + 26) < a4 / 0xC)
      {
        v23 = *(this + 26);
      }

      if (v23)
      {
        v24 = 0;
        v25 = 0;
        do
        {
          if (v25 < *(this + 26))
          {
            v26 = &a6[v24];
            v27 = (*(this + 12) + v24);
            v28 = *v27;
            *(v26 + 2) = *(v27 + 2);
            *v26 = v28;
          }

          ++v25;
          v24 += 12;
        }

        while (12 * v23 != v24);
      }

      v29 = 12 * v23;
    }

    goto LABEL_124;
  }

  if (mSelector <= 1935893352)
  {
    if (mSelector <= 1851878763)
    {
      if (mSelector == 1818457190)
      {
        v51 = *(this + 10);
        v19 = *(v51 + 416);
        v20 = *(v51 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_152;
      }

      if (mSelector != 1819173229)
      {
        goto LABEL_114;
      }
    }

    else if (mSelector != 1851878764)
    {
      if (mSelector == 1852400499)
      {
        goto LABEL_68;
      }

      if (mSelector == 1935892841)
      {
        v30 = *(this + 10);
        v19 = *(v30 + 416);
        v20 = *(v30 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_152;
      }

      goto LABEL_114;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_PlugInControl.cpp";
        v64 = 1024;
        v65 = 187;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInControl::GetPropertyData: bad property data size for kAudioObjectPropertyName", buf, 0x12u);
      }

      v61 = __cxa_allocate_exception(0x10uLL);
      *v61 = off_1F5991DD8;
      v61[2] = 561211770;
    }

    v33 = *(this + 10);
    v34 = *(v33 + 416);
    v35 = *(v33 + 424);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    strcpy(buf, "manlbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*v34 + 568))(v34);
    *a6 = 0;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    v29 = 8;
LABEL_124:
    *a5 = v29;
    return;
  }

  if (mSelector <= 1935962741)
  {
    if (mSelector == 1935893353)
    {
      v49 = *(this + 10);
      v19 = *(v49 + 416);
      v20 = *(v49 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 23);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_152;
    }

    if (mSelector != 1935894894)
    {
      if (mSelector == 1935962738)
      {
        v18 = *(this + 10);
        v19 = *(v18 + 416);
        v20 = *(v18 + 424);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = *(this + 23);
        if (a9)
        {
          v22 = *(a9 + 60);
        }

        else
        {
          v22 = 0;
        }

LABEL_152:
        (*(*v19 + 568))(v19, v21, v22, a3, a7, a8, a4, a5, a6);
LABEL_155:
        if (!v20)
        {
          return;
        }

        v60 = v20;
        goto LABEL_157;
      }

      goto LABEL_114;
    }

LABEL_68:
    v42 = *(this + 10);
    v43 = *(v42 + 416);
    v44 = *(v42 + 424);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = *(this + 23);
    if (a9)
    {
      v46 = *(a9 + 60);
    }

    else
    {
      v46 = 0;
    }

    strcpy(buf, "nicsbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*v43 + 568))(v43, v45, v46, buf, a7, a8, a4, a5, a6);
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    return;
  }

  switch(mSelector)
  {
    case 0x73647276:
      v50 = *(this + 10);
      v19 = *(v50 + 416);
      v20 = *(v50 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 23);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_152;
    case 0x73706363:
      v54 = *(this + 10);
      v19 = *(v54 + 416);
      v20 = *(v54 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 23);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_152;
    case 0x73706376:
      v32 = *(this + 10);
      v19 = *(v32 + 416);
      v20 = *(v32 + 424);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(this + 23);
      if (a9)
      {
        v22 = *(a9 + 60);
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_152;
  }

LABEL_114:
  if (!HALS_Control::HasProperty(this, a2, a3))
  {
    if (!(*(*(this + 9) + 24))(this + 72, mSelector))
    {
      return;
    }

    v56 = *(this + 10);
    v57 = *(v56 + 416);
    v20 = *(v56 + 424);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v58 = *(a9 + 60);
    }

    else
    {
      v58 = 0;
    }

    (*(*v57 + 568))(v57, *(this + 23), v58, a3, a7, a8, a4, a5, a6);
    goto LABEL_155;
  }

  HALS_Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1DE4D81E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInControl::GetPropertyDataSize(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  v13 = 8;
  if (mSelector > 1851878763)
  {
    switch(mSelector)
    {
      case 0x6E616D6C:
        return v13;
      case 0x73636169:
        v21 = *(this + 10);
        v15 = *(v21 + 416);
        v16 = *(v21 + 424);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(this + 23);
        if (a6)
        {
          v18 = *(a6 + 60);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_34;
      case 0x73636369:
        v14 = *(this + 10);
        v15 = *(v14 + 416);
        v16 = *(v14 + 424);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(this + 23);
        if (a6)
        {
          v18 = *(a6 + 60);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_34;
    }
  }

  else
  {
    switch(mSelector)
    {
      case 0x626C6B62:
        v19 = *(this + 10);
        v15 = *(v19 + 416);
        v16 = *(v19 + 424);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = *(this + 23);
        if (a6)
        {
          v18 = *(a6 + 60);
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_34;
      case 0x63757374:
        return (12 * *(this + 26));
      case 0x6C6E616D:
        return v13;
    }
  }

  if (!HALS_Control::HasProperty(this, a2, a3))
  {
    if ((*(*(this + 9) + 24))(this + 72, mSelector))
    {
      v22 = *(this + 10);
      v15 = *(v22 + 416);
      v16 = *(v22 + 424);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = *(this + 23);
      if (a6)
      {
        v18 = *(a6 + 60);
      }

      else
      {
        v18 = 0;
      }

LABEL_34:
      v13 = (*(*v15 + 560))(v15, v17, v18, a3, a4, a5);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      return v13;
    }

    return 0;
  }

  return HALS_Control::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE4D858C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInControl::IsPropertySettable(HALS_PlugInControl *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (a4)
  {
    v7 = *(a4 + 60);
  }

  else
  {
    v7 = 0;
  }

  mSelector = a3->mSelector;
  if (mSelector <= 1818456949)
  {
    if (mSelector != 1650685548)
    {
      if (mSelector == 1668641652)
      {
        return 0;
      }

      if (mSelector != 1818453110)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if (mSelector > 1935962741)
    {
      v9 = mSelector == 1936745334;
      v10 = 1935962742;
    }

    else
    {
      v9 = mSelector == 1818456950;
      v10 = 1935893353;
    }

    if (!v9 && mSelector != v10)
    {
LABEL_10:
      if (!HALS_Control::HasProperty(this, a2, a3))
      {
        if ((*(*(this + 9) + 24))(this + 72, mSelector))
        {
          v11 = *(this + 10);
          v12 = *(v11 + 416);
          v13 = *(v11 + 424);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

LABEL_29:
          v22 = (*(*v12 + 552))(v12, *(this + 23), v7, a3);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          return v22;
        }

        return 0;
      }

      goto LABEL_34;
    }
  }

  if (!HALS_Control::HasProperty(this, a2, a3))
  {
    return 0;
  }

  v15 = *(this + 23);
  if (v15)
  {
    v16 = *(this + 10);
    v17 = *(v16 + 416);
    v18 = *(v16 + 424);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *(this + 23);
    }

    v19 = (*(*v17 + 544))(v17, v15, v7, a3);
    v20 = v19;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if ((v20 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (!v19)
    {
      goto LABEL_34;
    }

    v21 = *(this + 10);
    v12 = *(v21 + 416);
    v13 = *(v21 + 424);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_29;
  }

LABEL_34:

  return HALS_Control::IsPropertySettable(this, a2, a3);
}

void sub_1DE4D8854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_PlugInControl::HasProperty(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v5 = *a3;
  if (v5 == 1668641652)
  {
    return *(a1 + 104) != 0;
  }

  if (v5 == 1851878764 || v5 == 1819173229)
  {
    v8 = *(a1 + 80);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 92);
    if (a4)
    {
      v12 = *(a4 + 240);
    }

    else
    {
      v12 = 0;
    }

    v22 = 0x676C6F626C6E616DLL;
    v23 = 0;
    v15 = (*(*v9 + 544))(v9, v11, v12, &v22);
    if (v10)
    {
      v16 = v10;
LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    HasProperty = HALS_Control::HasProperty(a1, a2, a3);
    if (HasProperty)
    {
      return 1;
    }

    if (!(*(*(a1 + 72) + 24))(a1 + 72, v5))
    {
      return 0;
    }

    v18 = *(a1 + 80);
    v19 = *(v18 + 416);
    v20 = *(v18 + 424);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v21 = *(a4 + 240);
    }

    else
    {
      v21 = 0;
    }

    v15 = (*(*v19 + 544))(v19, *(a1 + 92), v21, a3);
    if (v20)
    {
      v16 = v20;
      goto LABEL_17;
    }
  }

  return v15;
}

void sub_1DE4D8A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_PlugInControl::Activate(HALS_PlugInControl *this)
{
  HALS_PlugInControl::RefreshCache(this);
  if (!*(this + 15))
  {
    (*(*(this + 9) + 32))();
  }

  HALS_Object::Activate(this, v2);
}

uint64_t HALS_PlugInControl::RefreshCache(HALS_PlugInControl *this)
{
  if (*(this + 15) == 1)
  {
    Class = 1702259059;
    BaseClass = 1650685548;
    v4 = 1869968496;
  }

  else
  {
    v5 = *(this + 10);
    v6 = *(v5 + 416);
    v7 = *(v5 + 424);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Class = HALS_UCPlugInBase::Object_GetClass(v6, *(this + 23));
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = *(this + 10);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BaseClass = HALS_UCPlugInBase::Object_GetBaseClass(v9, *(this + 23));
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v11 = *(this + 10);
    v12 = *(v11 + 416);
    v13 = *(v11 + 424);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = 0x676C6F6263736370;
    v30 = 0;
    v31 = 0;
    (*(*v12 + 568))(v12);
    v4 = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v14 = *(this + 10);
    v15 = *(v14 + 416);
    v16 = *(v14 + 424);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = 0x676C6F6263656C6DLL;
    v30 = 0;
    v31 = 0;
    (*(*v15 + 568))(v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZN18HALS_PlugInControl12RefreshCacheEv_block_invoke;
  v20[3] = &unk_1E86761B8;
  v20[4] = &v25;
  v20[5] = this;
  v21 = Class;
  v22 = BaseClass;
  v23 = v4;
  v24 = 0;
  v17 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v17, v20);
  v18 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);
  return v18;
}

void sub_1DE4D8D98(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4D8CD0);
}

void sub_1DE4D8DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN18HALS_PlugInControl12RefreshCacheEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  if (v1[5] != v2)
  {
    v1[5] = v2;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v3 = *(result + 52);
  if (v1[6] != v3)
  {
    v1[6] = v3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v4 = *(result + 56);
  if (v1[12] != v4)
  {
    v1[12] = v4;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  v5 = *(result + 60);
  if (v1[13] != v5)
  {
    v1[13] = v5;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t AMCP::Log::AMCP_Scope_Registry::initialize(AMCP::Log::AMCP_Scope_Registry *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F59747B8;
  v10 = v9;
  if (atomic_load_explicit(&StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_class_created, memory_order_acquire) != -1)
  {
    v8 = &v6;
    v7 = &v8;
    std::__call_once(&StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_class_created, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::init_static_container_class(void)::{lambda(void)#1} &&>>);
  }

  v1 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v1 & 1) == 0)
  {
    v2 = atomic_load(StaticContainerBase::s_statics_initializable);
    if (v2)
    {
      v3 = StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_init_mutex;
      std::mutex::lock(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_static_container_init_mutex);
      v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v4 & 1) == 0)
      {
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v10 + 48))(v10);
        atomic_store(1u, StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      }

      std::mutex::unlock(v3);
    }
  }

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
}

void sub_1DE4D936C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::mutex::unlock(v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Log::AMCP_Scope_Registry::initialize(void)::$_0,std::allocator<AMCP::Log::AMCP_Scope_Registry::initialize(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3Log19AMCP_Scope_Registry10initializeEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE4D9624(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Log::Scope>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100]((a1 + 32), 0);
  v2 = *(a1 + 24);
  if (v2)
  {
    os_release(v2);
  }
}

void std::__shared_ptr_emplace<AMCP::Log::Scope>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Log::AMCP_Scope_Registry>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<AMCP::Log::AMCP_Scope_Registry>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5974828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE4D9878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void *AMCP::CF::create_url_from_path_relative_to_base(AMCP::CF *this, const applesauce::CF::URLRef *a2, const applesauce::CF::StringRef *a3, BOOL a4, CFURLPathStyle a5)
{
  result = MEMORY[0x1E12C0650](0, a3, 0, 1, a2);
  *this = result;
  if (result)
  {
    v7 = CFGetTypeID(result);
    result = CFURLGetTypeID();
    if (v7 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1DE4D992C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<applesauce::CF::URLRef,applesauce::CF::URLRef&,applesauce::CF::URLRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t ShortTermLinearInterpolationResampler::SetRate(uint64_t this, double a2)
{
  if (a2 < 0.0 || a2 > 32.0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  *(this + 40) = a2;
  *(this + 24) = vcvtd_n_s64_f64(a2, 0x20uLL);
  return this;
}

uint64_t ShortTermLinearInterpolationResampler::PreFlight(uint64_t this, unsigned int *a2, unsigned int *a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v10 = *a3;
  if (*this == 1)
  {
    v11 = *a2;
    if (v10 < *a2)
    {
      v11 = *a3;
    }

    *a3 = v11;
    *a2 = v11;
    return this;
  }

  if (v10 > 0x400000)
  {
    CAAssertRtn();
LABEL_26:
    CAAssertRtn();
    goto LABEL_27;
  }

  if (v10)
  {
    v13 = *(this + 16);
    v12 = *(this + 24);
    v14 = v13 + 0x80000000;
    v15 = v13 + 0x80000000 + v12 * v10;
    v16 = HIDWORD(v15);
    v17 = *a2;
    if (v17 < HIDWORD(v15))
    {
      if (v17 <= 0x400000)
      {
        v18 = ~v13 + (v17 << 32) + v12;
        if (v18 < 0)
        {
          LODWORD(v20) = 0;
          *a3 = 0;
          goto LABEL_22;
        }

        v19 = v18 / v12;
        if (v10 >= v19)
        {
          *a3 = v19;
          if (v19)
          {
            v20 = (v14 + v12 * v19) >> 32;
          }

          else
          {
            LODWORD(v20) = 0;
          }

LABEL_22:
          if (v20 < *a2)
          {
            *a2 = v20;
          }

          return this;
        }

LABEL_28:
        v23 = CAVerboseAbort("math");
        return ShortTermLinearInterpolationResampler::PushConvertFloat(v23, v24, v25, v26, v27, v28, v29, v30, v31, a10);
      }

      goto LABEL_26;
    }

    *a2 = HIDWORD(v15);
    if (v15 > 0x400000FFFFFFFFLL)
    {
LABEL_27:
      CAAssertRtn();
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0;
    *a2 = 0;
    v13 = *(this + 16);
    v12 = *(this + 24);
  }

  v21 = ~v13 + (v16 << 32) + v12;
  if (v21 < 0)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v21 / v12;
  }

  if (v22 < *a3)
  {
    *a3 = v22;
  }

  return this;
}