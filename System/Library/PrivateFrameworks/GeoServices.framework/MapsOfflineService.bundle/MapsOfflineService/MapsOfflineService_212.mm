void sub_C8CE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a36 < 0)
  {
    operator delete(__p);
    sub_1959728(&a37);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a37);
  _Unwind_Resume(a1);
}

unint64_t sub_C8D7D8(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 == 1)
  {
    return *(a1 + 4) | (*(a1 + 4) << 32);
  }

  if (v1)
  {
    sub_5AF20();
  }

  return *(a1 + 8);
}

unint64_t sub_C8D818(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 == 1)
  {
    return *(a1 + 8) | (*(a1 + 8) << 32);
  }

  if (v1)
  {
    sub_5AF20();
  }

  return *(a1 + 20);
}

uint64_t sub_C8D858(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    return 10 * (*(a1 + 20) - *(a1 + 8));
  }

  if (v1 != 1)
  {
    sub_5AF20();
  }

  return (10 * (*(a1 + 8) - *(a1 + 4)));
}

uint64_t sub_C8D8AC(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (!v1)
  {
    v2 = *(a1 + 8);
    v3 = HIDWORD(*(a1 + 20));
    result = 0x7FFFFFFFLL;
    if (v3 == 0x7FFFFFFF)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v1 != 1)
  {
    sub_5AF20();
  }

  v2 = *(a1 + 4) | (*(a1 + 4) << 32);
  v3 = (*(a1 + 8) | (*(a1 + 8) << 32)) >> 32;
  result = 0x7FFFFFFFLL;
  if (v3 != 0x7FFFFFFF)
  {
LABEL_6:
    result = 0x7FFFFFFFLL;
    if (HIDWORD(v2) != 0x7FFFFFFF)
    {
      return (10 * (v3 - HIDWORD(v2)));
    }
  }

  return result;
}

uint64_t *sub_C8D924(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v6 = *a1;
  result = sub_4C2B90(*a1 + 3896);
  if (result)
  {
    if (!*(v6 + 3960))
    {
      return 0;
    }

    v8 = *(*a1 + 3976);
    if (!v8)
    {
      return 0;
    }

    v15 = a2;
    result = sub_A794D0((v8 + 208), &v15);
    if (!result)
    {
      return result;
    }

    v9 = *(*a1 + 3976);
    v15 = a2;
    v10 = sub_A794D0((v9 + 208), &v15);
    if (!v10)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    v11 = v10;
    LODWORD(result) = sub_585D8((*a1 + 3896));
    v12 = *(v11 + 6);
    if (a3 < v12)
    {
      return 0;
    }

    v13 = v11[4];
    if (v11[5] + v12 - v13 <= a3)
    {
      return 0;
    }

    v14 = *(v13 + a3 - v12);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if ((v14 & 2) != 0)
    {
      return result;
    }

    else
    {
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t sub_C8DA30(void *a1, unint64_t a2, unsigned int a3)
{
  v4 = sub_A57920(a1, a2);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  return 10 * sub_A571D4(v7, a3)[2];
}

unint64_t sub_C8DA98(uint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  v17 = sub_A56F04((a1 + 4136), a2, a3, *a4);
  v18 = v8;
  v9 = sub_A57920((a1 + 4136), a2);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(sub_A571D4(v12, a3) + 6);
  if (a4[1] == -1)
  {
    v15 = (a1 + 4184);
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = a4[2];
    v15 = (a1 + 4184);
  }

  return sub_A56700(v15, &v17, v13, v14);
}

unint64_t sub_C8DB74(uint64_t a1, unint64_t a2, unsigned int a3, int *a4)
{
  v17 = sub_A56F04((a1 + 4136), a2, a3, *a4);
  v18 = v8;
  v9 = sub_A57920((a1 + 4136), a2);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = *(sub_A571D4(v12, a3) + 6);
  if (a4[1] == -1)
  {
    v15 = (a1 + 4184);
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = a4[2];
    v15 = (a1 + 4184);
  }

  return sub_A56A5C(v15, &v17, v13, v14);
}

uint64_t sub_C8DC50(uint64_t *a1, unint64_t a2, int a3, unsigned int *a4)
{
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, *a4);
  if (a4[1] == -1)
  {
    v16 = v15;
  }

  else
  {
    v16 = a4 + 2;
  }

  v17 = *v16;
  v18 = (v8 - *v8);
  if (*v18 < 7u)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[3];
    if (v19)
    {
      v19 = (v19 + v8 + *(v19 + v8));
    }
  }

  return *sub_A7AEE0(v19, v15[1] + a3) + v17;
}

BOOL sub_C8DD5C(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if ((a4 & 1) == 0)
  {
    v12 = (a2 + 4);
    goto LABEL_18;
  }

  v7 = *(a3 + 16);
  if (v7 == 0x7FFFFFFF || (v8 = *(a3 + 4), v8 == 0x7FFFFFFF))
  {
    v9 = 7;
    v10 = 214748364;
LABEL_5:
    v11 = 5;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = v7 - v8;
  if (v10 >= 0)
  {
    goto LABEL_5;
  }

  v11 = -5;
LABEL_6:
  if (v10 + ((((103 * (v11 + v9)) & 0x8000) != 0) + ((103 * (v11 + v9)) >> 10)) < 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Journey leg (alternative) has a negative static duration of ", 60);
    std::ostream::operator<<();
    if ((v91 & 0x10) != 0)
    {
      v28 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v28 = v87;
      }

      v27 = v86;
      v20 = v28 - v86;
      if (v28 - v86 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v27 = v84[0];
      v20 = v85 - v84[0];
      if (v85 - v84[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_86:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v20;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v13 = *(a2 + 4);
  v12 = (a2 + 4);
  if (v13 != 2)
  {
    goto LABEL_18;
  }

  v14 = *(a3 + 20);
  if (v14 == 0x7FFFFFFF || (v15 = *(a3 + 8), v15 == 0x7FFFFFFF))
  {
    v16 = 7;
    v17 = 214748364;
LABEL_11:
    v18 = 5;
    goto LABEL_12;
  }

  v16 = 0;
  v17 = v14 - v15;
  if (v17 >= 0)
  {
    goto LABEL_11;
  }

  v18 = -5;
LABEL_12:
  if (v17 + ((((103 * (v18 + v16)) & 0x8000) != 0) + ((103 * (v18 + v16)) >> 10)) < 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Journey leg (alternative) of journey based on realtime data has a negative expected duration of ", 96);
    std::ostream::operator<<();
    if ((v91 & 0x10) != 0)
    {
      v34 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v34 = v87;
      }

      v35 = &v86;
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_133:
        __dst.__r_.__value_.__s.__data_[v20] = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v89 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v83);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v35 = v84;
      v34 = v85;
    }

    v27 = *v35;
    v20 = v34 - *v35;
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v34 - *v35;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

LABEL_18:
  v21 = *(a3 + 48);
  if (v21 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid origin stop index", 75);
    if ((v91 & 0x10) != 0)
    {
      v26 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v26 = v87;
      }

      v27 = v86;
      v20 = v26 - v86;
      if (v26 - v86 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v27 = v84[0];
      v20 = v85 - v84[0];
      if (v85 - v84[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_80:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v20;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v22 = *(a3 + 52);
  if (v22 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid destination stop index", 80);
    if ((v91 & 0x10) != 0)
    {
      v29 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v29 = v87;
      }

      v27 = v86;
      v20 = v29 - v86;
      if (v29 - v86 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v27 = v84[0];
      v20 = v85 - v84[0];
      if (v85 - v84[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_88:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v20;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  if (v21 == v22)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has the same origin and destination stop index", 89);
    if ((v91 & 0x10) != 0)
    {
      v30 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v30 = v87;
      }

      v31 = &v86;
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v31 = v84;
      v30 = v85;
    }

    v27 = *v31;
    v20 = v30 - *v31;
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v30 - *v31;
    if (!v20)
    {
      goto LABEL_133;
    }

LABEL_132:
    memmove(&__dst, v27, v20);
    goto LABEL_133;
  }

  if (*(a3 + 28) == -1 || !*(a3 + 32))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid stop pattern ref", 74);
    if ((v91 & 0x10) != 0)
    {
      v32 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v32 = v87;
      }

      v33 = &v86;
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
        goto LABEL_133;
      }

      v33 = v84;
      v32 = v85;
    }

    v27 = *v33;
    v20 = v32 - *v33;
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v32 - *v33;
    if (!v20)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v23 = v12;
  if ((sub_C7F708(a1 + 517, *(a3 + 28)) & 1) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has a stop pattern ref, which is not in the data.", 92);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  v25 = *(a3 + 36);
  if (v25 == -1)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has an invalid trip sequence index", 77);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  if (*v23 == 2 && (a5 & 1) == 0 && sub_C8D924(a1 + 517, *(a3 + 28), v25))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) represents a trip that is blocked in the dynamic data on the stop pattern", 116);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  if (*(a3 + 40) != -1 && *(a3 + 44) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) represents a frequency trip but has an invalid basetime", 98);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  v36 = *(a3 + 48);
  if (v36 <= v36 + 1)
  {
    v37 = v36 + 1;
  }

  else
  {
    v37 = *(a3 + 48);
  }

  if (v36 != -1)
  {
    do
    {
      v38 = sub_A57920(a1 + 517, *(a3 + 28));
      v39 = (v38 - *v38);
      if (*v39 >= 9u && (v40 = v39[4]) != 0)
      {
        v41 = (v38 + v40 + *(v38 + v40));
      }

      else
      {
        v41 = 0;
      }

      v42 = __ROR8__(*sub_A571D4(v41, v36), 32);
      v43 = sub_A56F04(a1 + 517, *(a3 + 28), v36, *(a3 + 36));
      if (HIDWORD(v42) != 1 || (v42 + 3) >= 2)
      {
        v45 = __ROR8__(v42, 32);
        v46 = sub_2C939C(a1[515] + 24, v45, 1);
        if (!v46 || (v47 = &v46[-*v46], *v47 < 0x1Du) || (v48 = *(v47 + 14)) == 0 || *&v46[v48 + *&v46[v48]] <= HIDWORD(v45))
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v81);
          v56 = sub_4A5C(&v81, "Public transport journey leg (alternative) uses a stop index ", 61);
          std::ostream::operator<<();
          sub_4A5C(v56, ", which is not in the data", 26);
          sub_1959680(&v81, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_108;
        }
      }

      if (v43 != 0xFFFFFFFFLL)
      {
        v49 = __ROR8__(v43, 32);
        v50 = sub_2C939C(a1[523] + 24, v49, 1);
        if (!v50 || (v51 = &v50[-*v50], *v51 < 0x2Bu) || (v52 = *(v51 + 21)) == 0 || (v53 = &v50[v52 + *&v50[v52]], v54 = &v53[-*v53], *v54 < 5u) || (v55 = *(v54 + 2)) == 0 || *&v53[v55 + *&v53[v55]] <= HIDWORD(v49))
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v81);
          sub_4A5C(&v81, "Public transport journey leg (alternative) uses a trip, which is not in the data", 80);
          sub_1959680(&v81, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_108;
        }
      }

      ++v36;
    }

    while (v37 != v36);
    if (*a3 == sub_C8DA30(a1 + 517, *(a3 + 28), *(a3 + 48)))
    {
      goto LABEL_123;
    }

    goto LABEL_185;
  }

  if (*a3 != sub_C8DA30(a1 + 517, *(a3 + 28), 0xFFFFFFFF))
  {
LABEL_185:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    sub_4A5C(&v81, "Public transport journey leg (alternative) has buffer duration ", 63);
    v65 = std::ostream::operator<<();
    v66 = sub_4A5C(v65, " sec which does not match the data ", 35);
    v67 = sub_C8DA30(a1 + 517, *(a3 + 28), *(a3 + 48));
    sub_72140(v66, v67);
    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
LABEL_108:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_1959728(&v81);
    return 0;
  }

LABEL_123:
  if (*(a3 + 4) != sub_C8DA98(a1, *(a3 + 28), *(a3 + 48), (a3 + 36)))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v81);
    v57 = sub_4A5C(&v81, "Public transport journey leg (alternative) has departure time ", 62);
    sub_3608D0(v78, "");
    sub_509AD8(a3 + 4, v78, &__dst);
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
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v60 = sub_4A5C(v57, p_dst, size);
    v61 = sub_4A5C(v60, " whose static time does not match the data ", 43);
    v75 = sub_C8DA98(a1, *(a3 + 28), *(a3 + 48), (a3 + 36));
    v76 = v62;
    sub_3608D0(v73, "");
    sub_509AD8(&v75, v73, &v77);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v77;
    }

    else
    {
      v63 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = v77.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v61, v63, v64);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((v74 & 0x80000000) == 0)
      {
LABEL_181:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_182;
        }

        goto LABEL_201;
      }
    }

    else if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

    operator delete(v73[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_182:
      if ((v79 & 0x80000000) == 0)
      {
LABEL_183:
        sub_1959680(&v81, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_108;
      }

LABEL_202:
      operator delete(v78[0]);
      goto LABEL_183;
    }

LABEL_201:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v79 & 0x80000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_202;
  }

  if (*(a3 + 16) == sub_C8DB74(a1, *(a3 + 28), *(a3 + 52), (a3 + 36)))
  {
    return 1;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v81);
    v68 = sub_4A5C(&v81, "Public transport journey leg (alternative) has arrival time ", 60);
    sub_3608D0(v78, "");
    sub_509AD8(a3 + 16, v78, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &__dst;
    }

    else
    {
      v69 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = __dst.__r_.__value_.__l.__size_;
    }

    v71 = sub_4A5C(v68, v69, v70);
    v72 = sub_4A5C(v71, " whose static time does not match the data ", 43);
    LODWORD(v77.__r_.__value_.__l.__data_) = sub_C8DC50(a1 + 517, *(a3 + 28), *(a3 + 52), (a3 + 36));
    sub_258D4(v72, &v77);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v79 < 0)
    {
      operator delete(v78[0]);
    }

    sub_1959680(&v81, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_108;
  }

  return result;
}

void sub_C8EE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a35 < 0)
  {
    operator delete(__p);
    sub_1959728(&a36);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a36);
  _Unwind_Resume(a1);
}

BOOL sub_C8F204(unsigned int *a1)
{
  if (*a1 != 0x7FFFFFFF)
  {
    v4 = a1 + 1;
    v3 = a1[1];
    if (v3 == 0x7FFFFFFF)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v16);
      sub_4A5C(&v16, "Operating hours have an invalid end time", 40);
      if ((v26 & 0x10) != 0)
      {
        v11 = v25;
        if (v25 < v22)
        {
          v25 = v22;
          v11 = v22;
        }

        v10 = v21;
        v2 = v11 - v21;
        if (v11 - v21 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((v26 & 8) == 0)
        {
          v2 = 0;
          v15 = 0;
          goto LABEL_48;
        }

        v10 = v19;
        v2 = v20 - v19;
        if (v20 - v19 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_37:
          sub_3244();
        }
      }

      if (v2 >= 0x17)
      {
        operator new();
      }

      v15 = v2;
      if (!v2)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (*a1 <= v3)
      {
        return 1;
      }

      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v16);
      v6 = sub_4A5C(&v16, "Operating hours cover a negative time interval: ", 48);
      v7 = sub_258D4(v6, a1);
      v8 = sub_4A5C(v7, " < ", 3);
      sub_258D4(v8, v4);
      if ((v26 & 0x10) != 0)
      {
        v12 = v25;
        if (v25 < v22)
        {
          v25 = v22;
          v12 = v22;
        }

        v13 = &v21;
      }

      else
      {
        if ((v26 & 8) == 0)
        {
          v2 = 0;
          v15 = 0;
          goto LABEL_48;
        }

        v13 = &v19;
        v12 = v20;
      }

      v10 = *v13;
      v2 = v12 - *v13;
      if (v2 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v2 >= 0x17)
      {
        operator new();
      }

      v15 = v12 - *v13;
      if (!v2)
      {
        goto LABEL_48;
      }
    }

LABEL_47:
    memmove(&__p, v10, v2);
    goto LABEL_48;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v16);
  sub_4A5C(&v16, "Operating hours have an invalid start time", 42);
  if ((v26 & 0x10) != 0)
  {
    v9 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v9 = v22;
    }

    v10 = v21;
    v2 = v9 - v21;
    if (v9 - v21 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_27:
      sub_3244();
    }

    goto LABEL_21;
  }

  if ((v26 & 8) != 0)
  {
    v10 = v19;
    v2 = v20 - v19;
    if (v20 - v19 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_27;
    }

LABEL_21:
    if (v2 >= 0x17)
    {
      operator new();
    }

    v15 = v2;
    if (!v2)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v2 = 0;
  v15 = 0;
LABEL_48:
  *(&__p + v2) = 0;
  sub_7E854(&__p, 1u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_C8F6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_C8F784(uint64_t a1)
{
  v2 = *a1 != 0x7FFFFFFF;
  if (*a1 != 0x7FFFFFFF || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v33);
  sub_4A5C(&v33, "The schedule lookup request entity has an invalid requested time", 64);
  if ((v43 & 0x10) != 0)
  {
    v4 = v42;
    if (v42 < v39)
    {
      v42 = v39;
      v4 = v39;
    }

    v5 = v38;
    v3 = v4 - v38;
    if (v4 - v38 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_57:
      sub_3244();
    }

LABEL_9:
    if (v3 >= 0x17)
    {
      operator new();
    }

    v32 = v3;
    if (v3)
    {
      memmove(&__dst, v5, v3);
    }

    goto LABEL_14;
  }

  if ((v43 & 8) != 0)
  {
    v5 = v36;
    v3 = v37 - v36;
    if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_57;
    }

    goto LABEL_9;
  }

  v3 = 0;
  v32 = 0;
LABEL_14:
  *(&__dst + v3) = 0;
  sub_7E854(&__dst, 1u);
  if (v32 < 0)
  {
    operator delete(__dst);
  }

  if (v41 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v35);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  if (*(a1 + 8) != 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid duration", 58);
    if ((v43 & 0x10) != 0)
    {
      v7 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v7 = v39;
      }

      v8 = v38;
      v6 = v7 - v38;
      if (v7 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v6 = 0;
        v32 = 0;
LABEL_32:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v8 = v36;
      v6 = v37 - v36;
      if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_59:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v32 = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_32;
  }

LABEL_37:
  v2 = 0;
LABEL_38:
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v9 == v10)
  {
LABEL_44:
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    if (v12 != v13)
    {
      goto LABEL_68;
    }

    goto LABEL_73;
  }

  while (HIDWORD(*v9) && *v9 != 0xFFFFFFFFLL)
  {
    if (++v9 == v10)
    {
      goto LABEL_44;
    }
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid from stop ref", 63);
    if ((v43 & 0x10) != 0)
    {
      v15 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v15 = v39;
      }

      v16 = v38;
      v14 = v15 - v38;
      if (v15 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_121;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v14 = 0;
        v32 = 0;
LABEL_62:
        *(&__dst + v14) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_67;
      }

      v16 = v36;
      v14 = v37 - v36;
      if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_121:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v32 = v14;
    if (v14)
    {
      memmove(&__dst, v16, v14);
    }

    goto LABEL_62;
  }

LABEL_67:
  v2 = 0;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  if (v12 != v13)
  {
LABEL_68:
    while (HIDWORD(*v12) && *v12 != 0xFFFFFFFFLL)
    {
      if (++v12 == v13)
      {
        goto LABEL_73;
      }
    }

    if (!sub_7E7E4(1u))
    {
LABEL_92:
      v2 = 0;
      v19 = *(a1 + 96);
      v18 = *(a1 + 104);
      if (v19 != v18)
      {
        goto LABEL_93;
      }

      return v2;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid to stop ref", 61);
    if ((v43 & 0x10) != 0)
    {
      v21 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v21 = v39;
      }

      v22 = v38;
      v20 = v21 - v38;
      if (v21 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v20 = 0;
        v32 = 0;
LABEL_87:
        *(&__dst + v20) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_92;
      }

      v22 = v36;
      v20 = v37 - v36;
      if (v37 - v36 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_123:
        sub_3244();
      }
    }

    if (v20 >= 0x17)
    {
      operator new();
    }

    v32 = v20;
    if (v20)
    {
      memmove(&__dst, v22, v20);
    }

    goto LABEL_87;
  }

LABEL_73:
  v19 = *(a1 + 96);
  v18 = *(a1 + 104);
  if (v19 != v18)
  {
LABEL_93:
    while (1)
    {
      if (HIDWORD(*v19))
      {
        v23 = *v19 == 0xFFFFFFFFLL;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        goto LABEL_96;
      }

      if (sub_7E7E4(1u))
      {
        break;
      }

LABEL_95:
      v2 = 0;
LABEL_96:
      if (++v19 == v18)
      {
        return v2;
      }
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The schedule lookup request entity has an invalid permissible line ref", 70);
    if ((v43 & 0x10) != 0)
    {
      v25 = v42;
      v26 = &v38;
      if (v42 < v39)
      {
        v42 = v39;
        v25 = v39;
        v26 = &v38;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v24 = 0;
        v32 = 0;
LABEL_115:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 1u);
        if (v32 < 0)
        {
          operator delete(__dst);
        }

        v33 = v30;
        *(&v33 + *(*&v30 - 24)) = v29;
        if (v41 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_95;
      }

      v25 = v37;
      v26 = &v36;
    }

    v27 = *v26;
    v24 = v25 - *v26;
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v32 = v25 - *v26;
    if (v24)
    {
      memmove(&__dst, v27, v24);
    }

    goto LABEL_115;
  }

  return v2;
}

void sub_C90324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1959728(&a20);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a20);
  _Unwind_Resume(a1);
}

BOOL sub_C90434(unsigned int *a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v26);
    sub_4A5C(&v26, "Service frequency has an invalid start time", 43);
    if ((v36 & 0x10) != 0)
    {
      v10 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v10 = v32;
      }

      v11 = v31;
      v2 = v10 - v31;
      if (v10 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v2 = 0;
        v25 = 0;
LABEL_74:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 1u);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v11 = v29[0];
      v2 = v30 - v29[0];
      if (v30 - v29[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v25 = v2;
    if (!v2)
    {
      goto LABEL_74;
    }

LABEL_73:
    memmove(&__p, v11, v2);
    goto LABEL_74;
  }

  v5 = a1 + 1;
  v4 = a1[1];
  if (v4 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v26);
    sub_4A5C(&v26, "Service frequency has an invalid end time", 41);
    if ((v36 & 0x10) != 0)
    {
      v13 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v13 = v32;
      }

      v11 = v31;
      v2 = v13 - v31;
      if (v13 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v2 = 0;
        v25 = 0;
        goto LABEL_74;
      }

      v11 = v29[0];
      v2 = v30 - v29[0];
      if (v30 - v29[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_46:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v25 = v2;
    if (!v2)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (*a1 >= v4)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v26);
    v7 = sub_4A5C(&v26, "Service frequency covers an empty or negative time interval: ", 61);
    v8 = sub_258D4(v7, a1);
    v9 = sub_4A5C(v8, " < ", 3);
    sub_258D4(v9, v5);
    if ((v36 & 0x10) != 0)
    {
      v17 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v17 = v32;
      }

      v18 = &v31;
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v2 = 0;
        v25 = 0;
        goto LABEL_74;
      }

      v18 = v29;
      v17 = v30;
    }

    v11 = *v18;
    v2 = v17 - *v18;
    if (v2 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v25 = v17 - *v18;
    if (!v2)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v6 = a1[2];
  if (v6 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v26);
    sub_4A5C(&v26, "Service frequency has an invalid minimum headway", 48);
    if ((v36 & 0x10) != 0)
    {
      v20 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v20 = v32;
      }

      v21 = &v31;
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v2 = 0;
        v25 = 0;
        goto LABEL_74;
      }

      v21 = v29;
      v20 = v30;
    }

    v11 = *v21;
    v2 = v20 - *v21;
    if (v2 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v25 = v20 - *v21;
    if (!v2)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v12 = a1[3];
  if (v12 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v26);
    sub_4A5C(&v26, "Service frequency has an invalid maximum headway", 48);
    sub_1959680(&v26, &__p);
    sub_7E854(&__p, 1u);
    goto LABEL_83;
  }

  if (v6 > v12)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v26);
    v14 = sub_4A5C(&v26, "Service frequency has a minimum headway which is larger than the maximum headway: ", 82);
    v15 = sub_72140(v14, a1[2]);
    v16 = sub_4A5C(v15, " <= ", 4);
    sub_72140(v16, a1[3]);
    sub_1959680(&v26, &__p);
    sub_7E854(&__p, 1u);
    goto LABEL_83;
  }

  v19 = a1[4];
  result = 1;
  if (v19 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v26);
    sub_4A5C(&v26, "Service frequency has an invalid mean headway", 45);
    sub_1959680(&v26, &__p);
    sub_7E854(&__p, 1u);
    goto LABEL_83;
  }

  if (v6 <= 0)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v26);
      sub_4A5C(&v26, "Service frequency has a min headway value of ", 45);
      v23 = std::ostream::operator<<();
      sub_4A5C(v23, " sec", 4);
      sub_1959680(&v26, &__p);
      sub_7E854(&__p, 1u);
      goto LABEL_83;
    }
  }

  else if (v19 <= 0)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v26);
      sub_4A5C(&v26, "Service frequency has a mean headway value of ", 46);
      v22 = std::ostream::operator<<();
      sub_4A5C(v22, " sec", 4);
      sub_1959680(&v26, &__p);
      sub_7E854(&__p, 1u);
LABEL_83:
      if (v25 < 0)
      {
        operator delete(__p);
      }

      sub_1959728(&v26);
      return 0;
    }
  }

  return result;
}

void sub_C90C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_C90DBC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __ROR8__(**(a3 + 72), 32);
  if ((sub_C7F708((a1 + 4136), v6) & 1) == 0)
  {
    if (!sub_7E7E4(3u))
    {
      return 0;
    }

    sub_19594F8(&v170);
    v14 = sub_4A5C(&v170, "Stop ", 5);
    v15 = sub_2FF718(v14, a2);
    v16 = sub_4A5C(v15, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v18 = std::ostream::operator<<(v16, v17);
    v19 = sub_4A5C(v18, ") references stop pattern ", 26);
    v20 = sub_2FF718(v19, v6);
    sub_4A5C(v20, " which does not exist", 21);
    if ((v180 & 0x10) != 0)
    {
      v33 = v179;
      if (v179 < v176)
      {
        v179 = v176;
        v33 = v176;
      }

      v34 = v175;
      v21 = v33 - v175;
      if (v33 - v175 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if ((v180 & 8) == 0)
      {
        v21 = 0;
        v169 = 0;
LABEL_219:
        *(&__dst + v21) = 0;
        sub_7E854(&__dst, 3u);
        if (v169 < 0)
        {
          operator delete(__dst);
        }

        if (v178 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v172);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v34 = v173[0];
      v21 = v174 - v173[0];
      if (v174 - v173[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_99:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v169 = v21;
    if (!v21)
    {
      goto LABEL_219;
    }

    goto LABEL_218;
  }

  v7 = sub_A57920((a1 + 4136), v6);
  v8 = (v7 - *v7);
  if (*v8 < 9u || (v9 = v8[4]) == 0 || *(v7 + v9 + *(v7 + v9)) <= *(*(a3 + 72) + 8) || (v10 = sub_A57920((a1 + 4136), v6), v11 = (v10 - *v10), *v11 < 9u) || (v12 = v11[4]) == 0 || *(v10 + v12 + *(v10 + v12)) <= *(*(a3 + 72) + 10))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_38:
      v13 = 0;
      goto LABEL_39;
    }

    sub_19594F8(&v170);
    v22 = sub_4A5C(&v170, "Stop ", 5);
    v23 = sub_2FF718(v22, a2);
    v24 = sub_4A5C(v23, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v26 = std::ostream::operator<<(v24, v25);
    v27 = sub_4A5C(v26, ") references stop pattern ", 26);
    v28 = sub_2FF718(v27, v6);
    v29 = sub_4A5C(v28, " at first stop index ", 21);
    std::ostream::operator<<();
    v30 = sub_4A5C(v29, " and last stop index ", 21);
    std::ostream::operator<<();
    v31 = sub_4A5C(v30, ", but the stop pattern has only ", 32);
    sub_A57920((a1 + 4136), v6);
    std::ostream::operator<<();
    sub_4A5C(v31, " stops", 6);
    if ((v180 & 0x10) != 0)
    {
      v35 = v179;
      if (v179 < v176)
      {
        v179 = v176;
        v35 = v176;
      }

      v36 = v175;
      v32 = v35 - v175;
      if (v35 - v175 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if ((v180 & 8) == 0)
      {
        v32 = 0;
        v169 = 0;
LABEL_33:
        *(&__dst + v32) = 0;
        sub_7E854(&__dst, 3u);
        if (v169 < 0)
        {
          operator delete(__dst);
        }

        if (v178 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v172);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_38;
      }

      v36 = v173[0];
      v32 = v174 - v173[0];
      if (v174 - v173[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_101:
        sub_3244();
      }
    }

    if (v32 >= 0x17)
    {
      operator new();
    }

    v169 = v32;
    if (v32)
    {
      memmove(&__dst, v36, v32);
    }

    goto LABEL_33;
  }

  v13 = 1;
LABEL_39:
  v37 = *(*(a3 + 72) + 8);
  v38 = sub_A57920((a1 + 4136), v6);
  v39 = (v38 - *v38);
  if (*v39 >= 9u && (v40 = v39[4]) != 0)
  {
    v41 = (v38 + v40 + *(v38 + v40));
  }

  else
  {
    v41 = 0;
  }

  v42 = __ROR8__(*sub_A571D4(v41, v37), 32);
  v43 = HIDWORD(a2);
  v44 = HIDWORD(v42) == HIDWORD(a2) && v42 == a2;
  if (!v44 || ((v45 = *(*(a3 + 72) + 10), v46 = sub_A57920((a1 + 4136), v6), v47 = (v46 - *v46), *v47 < 9u) || (v48 = v47[4]) == 0 ? (v49 = 0) : (v49 = (v46 + v48 + *(v46 + v48))), (v50 = __ROR8__(*sub_A571D4(v49, v45), 32), HIDWORD(v42) == HIDWORD(v50)) ? (v51 = v50 == v42) : (v51 = 0), !v51))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_81:
      v13 = 0;
      goto LABEL_82;
    }

    sub_19594F8(&v170);
    v52 = sub_4A5C(&v170, "Stop ", 5);
    v53 = sub_2FF718(v52, a2);
    v54 = sub_4A5C(v53, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v56 = std::ostream::operator<<(v54, v55);
    v57 = sub_4A5C(v56, ") references stop pattern ", 26);
    v58 = sub_2FF718(v57, v6);
    v59 = sub_4A5C(v58, " at first stop ", 15);
    v60 = *(*(a3 + 72) + 8);
    v61 = sub_A57920((a1 + 4136), v6);
    v62 = (v61 - *v61);
    if (*v62 >= 9u && (v63 = v62[4]) != 0)
    {
      v64 = (v61 + v63 + *(v61 + v63));
    }

    else
    {
      v64 = 0;
    }

    v65 = sub_A571D4(v64, v60);
    v66 = sub_2FF718(v59, __ROR8__(*v65, 32));
    v67 = sub_4A5C(v66, " and last stop  ", 16);
    v68 = *(*(a3 + 72) + 10);
    v69 = sub_A57920((a1 + 4136), v6);
    v70 = (v69 - *v69);
    if (*v70 >= 9u && (v71 = v70[4]) != 0)
    {
      v72 = (v69 + v71 + *(v69 + v71));
    }

    else
    {
      v72 = 0;
    }

    v73 = sub_A571D4(v72, v68);
    v74 = sub_2FF718(v67, __ROR8__(*v73, 32));
    sub_4A5C(v74, ", which are different from the stop", 35);
    if ((v180 & 0x10) != 0)
    {
      v76 = v179;
      if (v179 < v176)
      {
        v179 = v176;
        v76 = v176;
      }

      v77 = v175;
      v75 = v76 - v175;
      if (v76 - v175 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if ((v180 & 8) == 0)
      {
        v75 = 0;
        v169 = 0;
LABEL_76:
        *(&__dst + v75) = 0;
        sub_7E854(&__dst, 3u);
        if (v169 < 0)
        {
          operator delete(__dst);
        }

        if (v178 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v172);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_81;
      }

      v77 = v173[0];
      v75 = v174 - v173[0];
      if (v174 - v173[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_103:
        sub_3244();
      }
    }

    if (v75 >= 0x17)
    {
      operator new();
    }

    v169 = v75;
    if (v75)
    {
      memmove(&__dst, v77, v75);
    }

    goto LABEL_76;
  }

LABEL_82:
  v78 = *(a3 + 72);
  v79 = *(v78 + 8);
  if (!*(v78 + 8))
  {
    goto LABEL_120;
  }

  v80 = 0;
  while (1)
  {
    v81 = sub_A57920((a1 + 4136), v6);
    v82 = (v81 - *v81);
    if (*v82 >= 9u && (v83 = v82[4]) != 0)
    {
      v84 = (v81 + v83 + *(v81 + v83));
    }

    else
    {
      v84 = 0;
    }

    v85 = __ROR8__(*sub_A571D4(v84, v80), 32);
    if (v43 == HIDWORD(v85) && v85 == a2)
    {
      break;
    }

    if (v79 == ++v80)
    {
      goto LABEL_120;
    }
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v170);
    v87 = sub_4A5C(&v170, "Stop ", 5);
    v88 = sub_2FF718(v87, a2);
    v89 = sub_4A5C(v88, " (muid: ", 8);
    sub_A4FC74((a1 + 4120), a2);
    v91 = std::ostream::operator<<(v89, v90);
    v92 = sub_4A5C(v91, ") is referenced by stop pattern ", 32);
    v93 = sub_2FF718(v92, v6);
    v94 = sub_4A5C(v93, " as first stop index ", 21);
    std::ostream::operator<<();
    sub_4A5C(v94, " but the stop already appears at index ", 39);
    std::ostream::operator<<();
    if ((v180 & 0x10) != 0)
    {
      v96 = v179;
      if (v179 < v176)
      {
        v179 = v176;
        v96 = v176;
      }

      v97 = &v175;
    }

    else
    {
      if ((v180 & 8) == 0)
      {
        v95 = 0;
        v169 = 0;
LABEL_114:
        *(&__dst + v95) = 0;
        sub_7E854(&__dst, 3u);
        if (v169 < 0)
        {
          operator delete(__dst);
        }

        if (v178 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v172);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_119;
      }

      v97 = v173;
      v96 = v174;
    }

    v98 = *v97;
    v95 = v96 - *v97;
    if (v95 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v95 >= 0x17)
    {
      operator new();
    }

    v169 = v96 - *v97;
    if (v95)
    {
      memmove(&__dst, v98, v95);
    }

    goto LABEL_114;
  }

LABEL_119:
  v13 = 0;
LABEL_120:
  v99 = *(*(a3 + 72) + 10);
  v100 = sub_A57920((a1 + 4136), v6);
  v101 = (v100 - *v100);
  if (*v101 >= 9u)
  {
    v102 = v101[4];
    if (v102)
    {
      v103 = v99 + 1;
      v104 = *(v100 + v102 + *(v100 + v102));
      v105 = v103 <= v104 ? v104 : v103;
      if (v103 < v104)
      {
        while (1)
        {
          v106 = sub_A57920((a1 + 4136), v6);
          v107 = (v106 - *v106);
          if (*v107 >= 9u && (v108 = v107[4]) != 0)
          {
            v109 = (v106 + v108 + *(v106 + v108));
          }

          else
          {
            v109 = 0;
          }

          v110 = __ROR8__(*sub_A571D4(v109, v103), 32);
          if (v43 == HIDWORD(v110) && v110 == a2)
          {
            break;
          }

          if (v105 == ++v103)
          {
            goto LABEL_156;
          }
        }

        if (!sub_7E7E4(3u))
        {
          goto LABEL_155;
        }

        sub_19594F8(&v170);
        v112 = sub_4A5C(&v170, "Stop ", 5);
        v113 = sub_2FF718(v112, a2);
        v114 = sub_4A5C(v113, " (muid: ", 8);
        sub_A4FC74((a1 + 4120), a2);
        v116 = std::ostream::operator<<(v114, v115);
        v117 = sub_4A5C(v116, ") is referenced by stop pattern ", 32);
        v118 = sub_2FF718(v117, v6);
        v119 = sub_4A5C(v118, " as last stop index ", 20);
        std::ostream::operator<<();
        sub_4A5C(v119, " but the stop again appears at index ", 37);
        std::ostream::operator<<();
        if ((v180 & 0x10) != 0)
        {
          v121 = v179;
          if (v179 < v176)
          {
            v179 = v176;
            v121 = v176;
          }

          v122 = &v175;
        }

        else
        {
          if ((v180 & 8) == 0)
          {
            v120 = 0;
            v169 = 0;
LABEL_150:
            *(&__dst + v120) = 0;
            sub_7E854(&__dst, 3u);
            if (v169 < 0)
            {
              operator delete(__dst);
            }

            if (v178 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v172);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_155:
            v13 = 0;
            goto LABEL_156;
          }

          v122 = v173;
          v121 = v174;
        }

        v123 = *v122;
        v120 = v121 - *v122;
        if (v120 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v120 >= 0x17)
        {
          operator new();
        }

        v169 = v121 - *v122;
        if (v120)
        {
          memmove(&__dst, v123, v120);
        }

        goto LABEL_150;
      }
    }
  }

LABEL_156:
  v124 = *(*(a3 + 72) + 12);
  v125 = sub_A57920((a1 + 4136), v6);
  v126 = (v125 - *v125);
  if (*v126 >= 0xFu)
  {
    v127 = v126[7];
    if (v127)
    {
      if (v124 == *(v125 + v127))
      {
        goto LABEL_179;
      }

LABEL_161:
      if (!sub_7E7E4(3u))
      {
LABEL_178:
        v13 = 0;
        goto LABEL_179;
      }

      sub_19594F8(&v170);
      v128 = sub_4A5C(&v170, "Stop ", 5);
      v129 = sub_2FF718(v128, a2);
      v130 = sub_4A5C(v129, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), a2);
      v132 = std::ostream::operator<<(v130, v131);
      v133 = sub_4A5C(v132, ") references stop pattern ", 26);
      v134 = sub_2FF718(v133, v6);
      sub_4A5C(v134, " with a different transit type than the stop pattern itself: ", 61);
      v135 = std::ostream::operator<<();
      sub_4A5C(v135, " != ", 4);
      sub_A57920((a1 + 4136), v6);
      std::ostream::operator<<();
      if ((v180 & 0x10) != 0)
      {
        v137 = v179;
        if (v179 < v176)
        {
          v179 = v176;
          v137 = v176;
        }

        v138 = v175;
        v136 = v137 - v175;
        if (v137 - v175 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_227;
        }
      }

      else
      {
        if ((v180 & 8) == 0)
        {
          v136 = 0;
          v169 = 0;
LABEL_173:
          *(&__dst + v136) = 0;
          sub_7E854(&__dst, 3u);
          if (v169 < 0)
          {
            operator delete(__dst);
          }

          if (v178 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v172);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_178;
        }

        v138 = v173[0];
        v136 = v174 - v173[0];
        if (v174 - v173[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_227:
          sub_3244();
        }
      }

      if (v136 >= 0x17)
      {
        operator new();
      }

      v169 = v136;
      if (v136)
      {
        memmove(&__dst, v138, v136);
      }

      goto LABEL_173;
    }
  }

  if (v124 != 0x7FFF)
  {
    goto LABEL_161;
  }

LABEL_179:
  v139 = *(*(a3 + 72) + 14);
  v140 = sub_A57920((a1 + 4136), v6);
  v141 = (v140 - *v140);
  if (*v141 >= 0xDu)
  {
    v142 = v141[6];
    if (v142)
    {
      if (v139 == *(v140 + v142))
      {
        goto LABEL_202;
      }

LABEL_184:
      if (!sub_7E7E4(3u))
      {
LABEL_201:
        v13 = 0;
        goto LABEL_202;
      }

      sub_19594F8(&v170);
      v143 = sub_4A5C(&v170, "Stop ", 5);
      v144 = sub_2FF718(v143, a2);
      v145 = sub_4A5C(v144, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), a2);
      v147 = std::ostream::operator<<(v145, v146);
      v148 = sub_4A5C(v147, ") references stop pattern ", 26);
      v149 = sub_2FF718(v148, v6);
      sub_4A5C(v149, " with a different required market support version than the stop pattern itself: ", 80);
      v150 = std::ostream::operator<<();
      sub_4A5C(v150, " != ", 4);
      sub_A57920((a1 + 4136), v6);
      std::ostream::operator<<();
      if ((v180 & 0x10) != 0)
      {
        v152 = v179;
        if (v179 < v176)
        {
          v179 = v176;
          v152 = v176;
        }

        v153 = v175;
        v151 = v152 - v175;
        if (v152 - v175 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_229;
        }
      }

      else
      {
        if ((v180 & 8) == 0)
        {
          v151 = 0;
          v169 = 0;
LABEL_196:
          *(&__dst + v151) = 0;
          sub_7E854(&__dst, 3u);
          if (v169 < 0)
          {
            operator delete(__dst);
          }

          if (v178 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v172);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_201;
        }

        v153 = v173[0];
        v151 = v174 - v173[0];
        if (v174 - v173[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_229:
          sub_3244();
        }
      }

      if (v151 >= 0x17)
      {
        operator new();
      }

      v169 = v151;
      if (v151)
      {
        memmove(&__dst, v153, v151);
      }

      goto LABEL_196;
    }
  }

  if (v139 != 1)
  {
    goto LABEL_184;
  }

LABEL_202:
  v154 = *(*(a3 + 72) + 15);
  v155 = sub_A57920((a1 + 4136), v6);
  v156 = (v155 - *v155);
  if (*v156 >= 0x13u)
  {
    v157 = v156[9];
    if (v157)
    {
      if ((v154 & 1) == (*(v155 + v157) & 2) >> 1)
      {
        return v13;
      }

LABEL_207:
      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v170);
        v158 = sub_4A5C(&v170, "Stop ", 5);
        v159 = sub_2FF718(v158, a2);
        v160 = sub_4A5C(v159, " (muid: ", 8);
        sub_A4FC74((a1 + 4120), a2);
        v162 = std::ostream::operator<<(v160, v161);
        v163 = sub_4A5C(v162, ") references stop pattern ", 26);
        v164 = sub_2FF718(v163, v6);
        sub_4A5C(v164, " with a different preflight flag than the stop pattern itself: ", 63);
        v165 = std::ostream::operator<<();
        sub_4A5C(v165, " != ", 4);
        sub_A57920((a1 + 4136), v6);
        std::ostream::operator<<();
        if ((v180 & 0x10) != 0)
        {
          v166 = v179;
          if (v179 < v176)
          {
            v179 = v176;
            v166 = v176;
          }

          v34 = v175;
          v21 = v166 - v175;
          if (v166 - v175 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_231;
          }
        }

        else
        {
          if ((v180 & 8) == 0)
          {
            v21 = 0;
            v169 = 0;
            goto LABEL_219;
          }

          v34 = v173[0];
          v21 = v174 - v173[0];
          if (v174 - v173[0] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_231:
            sub_3244();
          }
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v169 = v21;
        if (!v21)
        {
          goto LABEL_219;
        }

LABEL_218:
        memmove(&__dst, v34, v21);
        goto LABEL_219;
      }

      return 0;
    }
  }

  if (v154)
  {
    goto LABEL_207;
  }

  return v13;
}

void sub_C92768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_C928E8(uint64_t a1, unint64_t *a2)
{
  v2 = sub_A57920((a1 + 4136), *a2);
  v3 = (v2 - *v2);
  if (*v3 < 7u || (v4 = v3[3]) == 0 || !*(v2 + v4 + *(v2 + v4)))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_22:
      v5 = 0;
      goto LABEL_23;
    }

    sub_19594F8(&v609);
    v6 = sub_4A5C(&v609, "Stop pattern ", 13);
    v7 = sub_2FF718(v6, *a2);
    sub_4A5C(v7, " has no trips on it", 19);
    if ((v622 & 0x10) != 0)
    {
      v9 = v621;
      if (v621 < v616)
      {
        v621 = v616;
        v9 = v616;
      }

      v10 = v615;
      v8 = v9 - v615;
      if ((v9 - v615) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v622 & 8) == 0)
      {
        v8 = 0;
        v608 = 0;
LABEL_17:
        *(&__dst + v8) = 0;
        sub_7E854(&__dst, 3u);
        if (v608 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v620) < 0)
        {
          operator delete(v618);
        }

        std::locale::~locale(&v611);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v10 = v612;
      v8 = v614 - v612;
      if ((v614 - v612) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_68:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v608 = v8;
    if (v8)
    {
      memmove(&__dst, v10, v8);
    }

    goto LABEL_17;
  }

  v5 = 1;
LABEL_23:
  v11 = sub_A57920((a1 + 4136), *a2);
  v12 = (v11 - *v11);
  if (*v12 < 9u || (v13 = v12[4]) == 0 || *(v11 + v13 + *(v11 + v13)) <= 1)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_43:
      v5 = 0;
      goto LABEL_44;
    }

    sub_19594F8(&v609);
    v14 = sub_4A5C(&v609, "Stop pattern ", 13);
    v15 = sub_2FF718(v14, *a2);
    v16 = sub_4A5C(v15, " has ", 5);
    sub_A57920((a1 + 4136), *a2);
    std::ostream::operator<<();
    sub_4A5C(v16, " which is too few (at least 2 required)", 39);
    if ((v622 & 0x10) != 0)
    {
      v18 = v621;
      if (v621 < v616)
      {
        v621 = v616;
        v18 = v616;
      }

      v19 = v615;
      v17 = v18 - v615;
      if ((v18 - v615) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if ((v622 & 8) == 0)
      {
        v17 = 0;
        v608 = 0;
LABEL_38:
        *(&__dst + v17) = 0;
        sub_7E854(&__dst, 3u);
        if (v608 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v620) < 0)
        {
          operator delete(v618);
        }

        std::locale::~locale(&v611);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_43;
      }

      v19 = v612;
      v17 = v614 - v612;
      if ((v614 - v612) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_66:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v608 = v17;
    if (v17)
    {
      memmove(&__dst, v19, v17);
    }

    goto LABEL_38;
  }

LABEL_44:
  v20 = sub_A57920((a1 + 4136), *a2);
  v21 = (v20 - *v20);
  if (*v21 < 0x15u || !v21[10])
  {
    goto LABEL_54;
  }

  v22 = sub_A57920((a1 + 4136), *a2);
  v23 = (v22 - *v22);
  if (*v23 >= 0x15u && (v24 = v23[10]) != 0)
  {
    v25 = *(v22 + v24 + *(v22 + v24));
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_A57920((a1 + 4136), *a2);
  v27 = (v26 - *v26);
  if (*v27 < 9u)
  {
    if (!v25)
    {
      goto LABEL_54;
    }

LABEL_63:
    if (!sub_7E7E4(3u))
    {
LABEL_836:
      v274 = 0;
      return v274 & 1;
    }

    sub_19594F8(&v609);
    v37 = sub_4A5C(&v609, "Stop pattern ", 13);
    v38 = sub_2FF718(v37, *a2);
    sub_4A5C(v38, " has ", 5);
    sub_A57920((a1 + 4136), *a2);
    v502 = std::ostream::operator<<();
    sub_4A5C(v502, " boarding restriction groups which does not match its number of stops ", 70);
    sub_A57920((a1 + 4136), *a2);
    std::ostream::operator<<();
    if ((v622 & 0x10) != 0)
    {
      v568 = v621;
      if (v621 < v616)
      {
        v621 = v616;
        v568 = v616;
      }

      v569 = &v615;
    }

    else
    {
      if ((v622 & 8) == 0)
      {
        v503 = 0;
        v608 = 0;
LABEL_831:
        *(&__dst + v503) = 0;
        sub_7E854(&__dst, 3u);
        if (v608 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v620) < 0)
        {
          operator delete(v618);
        }

        std::locale::~locale(&v611);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_836;
      }

      v569 = &v612;
      v568 = v614;
    }

    v570 = *v569;
    v503 = v568 - *v569;
    if (v503 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v503 >= 0x17)
    {
      operator new();
    }

    v608 = v568 - *v569;
    if (v503)
    {
      memmove(&__dst, v570, v503);
    }

    goto LABEL_831;
  }

  v28 = v27[4];
  if (v28)
  {
    v28 = *(v26 + v28 + *(v26 + v28));
  }

  if (v25 != v28)
  {
    goto LABEL_63;
  }

LABEL_54:
  v29 = sub_A57920((a1 + 4136), *a2);
  v30 = (v29 - *v29);
  v585 = v5;
  if (*v30 >= 9u)
  {
    v31 = v30[4];
    if (v31)
    {
      if (*(v29 + v31 + *(v29 + v31)))
      {
        v33 = sub_A57920((a1 + 4136), *a2);
        v34 = (v33 - *v33);
        if (*v34 >= 0x15u)
        {
          v35 = v34[10];
          if (v35)
          {
            sub_BCAB48((v33 + v35 + *(v33 + v35)), 0);
          }
        }

        operator new();
      }
    }
  }

  sub_C9D368(0, 0, 0, 1);
  v36 = v585;
  sub_C98A60((a1 + 4136), *a2, &v609);
  if (v610 != *&v609)
  {
    v39 = 0;
    if (v609 == 0.0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v39 = 1;
  if (v609 != 0.0)
  {
LABEL_71:
    v610 = *&v609;
    operator delete(*&v609);
  }

LABEL_72:
  if (v39)
  {
    goto LABEL_93;
  }

  if (!sub_7E7E4(3u))
  {
    v36 = 0;
    goto LABEL_93;
  }

  sub_19594F8(&v609);
  v40 = sub_4A5C(&v609, "Stop pattern ", 13);
  v41 = sub_2FF718(v40, *a2);
  sub_4A5C(v41, " has a set of boarding restriction groups that is not reflected by the unique boarding restriction groups associated with the stop pattern", 138);
  if ((v622 & 0x10) != 0)
  {
    v43 = v621;
    if (v621 < v616)
    {
      v621 = v616;
      v43 = v616;
    }

    v44 = v615;
    v42 = v43 - v615;
    if ((v43 - v615) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_820:
      sub_3244();
    }

LABEL_83:
    if (v42 >= 0x17)
    {
      operator new();
    }

    v608 = v42;
    if (v42)
    {
      memmove(&__dst, v44, v42);
    }

    goto LABEL_88;
  }

  if ((v622 & 8) != 0)
  {
    v44 = v612;
    v42 = v614 - v612;
    if ((v614 - v612) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_820;
    }

    goto LABEL_83;
  }

  v42 = 0;
  v608 = 0;
LABEL_88:
  *(&__dst + v42) = 0;
  sub_7E854(&__dst, 3u);
  if (v608 < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v620) < 0)
  {
    operator delete(v618);
  }

  std::locale::~locale(&v611);
  std::ostream::~ostream();
  std::ios::~ios();
  v36 = 0;
LABEL_93:
  v45 = sub_A57920((a1 + 4136), *a2);
  v46 = (v45 - *v45);
  if (*v46 >= 9u)
  {
    v47 = v46[4];
    if (v47)
    {
      v48 = *(v45 + v47 + *(v45 + v47));
      if (v48)
      {
        v49 = 0;
        do
        {
          v50 = sub_A57920((a1 + 4136), *a2);
          v51 = (v50 - *v50);
          if (*v51 >= 9u && (v52 = v51[4]) != 0)
          {
            v53 = (v50 + v52 + *(v50 + v52));
          }

          else
          {
            v53 = 0;
          }

          v54 = __ROR8__(*sub_A571D4(v53, v49), 32);
          if (*(a1 + 16))
          {
            v55 = v54 + 3;
            v56 = 0x100000000;
            if ((v54 & 0xFFFFFFFF00000000) != 0x100000000 || v55 >= 2)
            {
              v58 = sub_2D5204(**(a1 + 4120));
              v56 = v54 & 0xFFFFFFFF00000000;
              if ((v58 & 1) == 0)
              {
                goto LABEL_99;
              }
            }

            if (v56 == 0x100000000 && v55 < 2)
            {
              goto LABEL_125;
            }
          }

          else if ((v54 & 0xFFFFFFFF00000000) == 0x100000000 && (v54 + 3) < 2)
          {
LABEL_125:
            sub_A7905C(&v609, a1, v54, 1, 1, 0);
            v65 = v618;
            v66 = *v619;
            do
            {
              while (1)
              {
LABEL_126:
                if (v65 >= v66)
                {
LABEL_158:
                  if (sub_7E7E4(3u))
                  {
                    sub_19594F8(&v609);
                    v79 = sub_4A5C(&v609, "Stop pattern ", 13);
                    v80 = sub_2FF718(v79, *a2);
                    v81 = sub_4A5C(v80, " has stop ", 10);
                    v82 = sub_2FF718(v81, v54);
                    v83 = sub_4A5C(v82, " (muid: ", 8);
                    sub_A4FC74((a1 + 4120), v54);
                    v85 = std::ostream::operator<<(v83, v84);
                    sub_4A5C(v85, "), which does not reference the stop pattern", 44);
                    if ((v622 & 0x10) != 0)
                    {
                      v91 = v621;
                      v92 = &v615;
                      if (v621 < v616)
                      {
                        v621 = v616;
                        v91 = v616;
                        v92 = &v615;
                      }
                    }

                    else
                    {
                      if ((v622 & 8) == 0)
                      {
                        v86 = 0;
                        v608 = 0;
                        goto LABEL_184;
                      }

                      v91 = v614;
                      v92 = &v612;
                    }

                    v95 = *v92;
                    v86 = v91 - *v92;
                    if (v86 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_3244();
                    }

                    if (v86 >= 0x17)
                    {
                      operator new();
                    }

                    v608 = v91 - *v92;
                    if (v86)
                    {
                      memmove(&__dst, v95, v86);
                    }

                    goto LABEL_184;
                  }

                  goto LABEL_98;
                }

                if (__ROR8__(*v65, 32) == *a2)
                {
                  goto LABEL_99;
                }

                v65 += 16;
                v618 = v65;
                if (v65 != v66)
                {
                  break;
                }

                v67 = (v616 + 2);
                v616 = v67;
                if (v67 < v617)
                {
                  while (1)
                  {
                    v68 = *v67;
                    v69 = *(v67 + 1);
                    if (*v67 != v69)
                    {
                      break;
                    }

                    v67 += 8;
                    v616 = v67;
                    if (v67 >= v617)
                    {
                      goto LABEL_126;
                    }
                  }

                  v618 = *v67;
                  *v619 = v69;
                  v66 = v69;
                  v65 = v68;
                  if (v68 < v69)
                  {
                    goto LABEL_140;
                  }
                }
              }
            }

            while (v65 >= v66);
            while (1)
            {
LABEL_140:
              if ((v619[9] & 1) == 0 && (v70 = *&v609, v71 = *v65, v72 = *(*&v609 + 4136), sub_68312C(v72 + 3896)) && *(v72 + 3944) && (v73 = __ROR8__(v71, 32), !sub_A576FC(v70 + 517, SHIDWORD(v73))) && (v74 = *(*(v70 + 517) + 3944), __dst = v73, sub_A794D0(v74, &__dst)))
              {
                v65 = v618;
              }

              else
              {
                if (v619[8] == 1)
                {
                  v65 = v618;
                  v66 = *v619;
                  goto LABEL_126;
                }

                v75 = sub_C9E544(*&v609 + 3896);
                v65 = v618;
                if (v75 >= v618[14])
                {
                  if (v619[8])
                  {
                    goto LABEL_156;
                  }

                  v76 = sub_585D8((*&v609 + 3896));
                  v65 = v618;
                  if ((v76 & 1) != 0 || (v618[15] & 1) == 0)
                  {
                    goto LABEL_156;
                  }
                }
              }

              v65 += 16;
              v618 = v65;
              if (v65 == *v619)
              {
                v77 = v616 + 2;
                v616 = v77;
                if (v77 >= v617)
                {
                  goto LABEL_156;
                }

                while (1)
                {
                  v65 = *v77;
                  v78 = v77[1];
                  if (*v77 != v78)
                  {
                    break;
                  }

                  v77 += 2;
                  v616 = v77;
                  if (v77 >= v617)
                  {
                    goto LABEL_158;
                  }
                }

                v618 = *v77;
                *v619 = v78;
                if (v65 >= v78)
                {
LABEL_156:
                  v66 = *v619;
                  goto LABEL_126;
                }
              }

              else if (v65 >= *v619)
              {
                goto LABEL_156;
              }
            }
          }

          v61 = __ROR8__(v54, 32);
          v62 = sub_2C939C(*(a1 + 4120) + 24, v61, 1);
          if (v62)
          {
            v63 = &v62[-*v62];
            if (*v63 >= 0x1Du)
            {
              v64 = *(v63 + 14);
              if (v64)
              {
                if (*&v62[v64 + *&v62[v64]] > HIDWORD(v61))
                {
                  goto LABEL_125;
                }
              }
            }
          }

          if (sub_7E7E4(3u))
          {
            sub_19594F8(&v609);
            v87 = sub_4A5C(&v609, "Stop pattern ", 13);
            v88 = sub_2FF718(v87, *a2);
            v89 = sub_4A5C(v88, " has stop ", 10);
            v90 = sub_2FF718(v89, v54);
            sub_4A5C(v90, ", which does not exist in the data.", 35);
            if ((v622 & 0x10) != 0)
            {
              v93 = v621;
              v94 = &v615;
              if (v621 < v616)
              {
                v621 = v616;
                v93 = v616;
                v94 = &v615;
              }
            }

            else
            {
              if ((v622 & 8) == 0)
              {
                v86 = 0;
                v608 = 0;
                goto LABEL_184;
              }

              v93 = v614;
              v94 = &v612;
            }

            v96 = *v94;
            v86 = v93 - *v94;
            if (v86 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v86 >= 0x17)
            {
              operator new();
            }

            v608 = v93 - *v94;
            if (v86)
            {
              memmove(&__dst, v96, v86);
            }

LABEL_184:
            *(&__dst + v86) = 0;
            sub_7E854(&__dst, 3u);
            if (v608 < 0)
            {
              operator delete(__dst);
            }

            v609 = v586;
            *(&v609 + *(*&v586 - 24)) = v581;
            if (SHIBYTE(v620) < 0)
            {
              operator delete(v618);
            }

            std::locale::~locale(&v611);
            std::ostream::~ostream();
            std::ios::~ios();
          }

LABEL_98:
          v36 = 0;
LABEL_99:
          ++v49;
        }

        while (v49 != v48);
      }
    }
  }

  v97 = sub_A57920((a1 + 4136), *a2);
  v98 = (v97 - *v97);
  if (*v98 >= 9u && (v99 = v98[4]) != 0)
  {
    v100 = v36;
    v101 = *(v97 + v99 + *(v97 + v99));
    if (v101 >= 2)
    {
      v102 = 1;
      while (1)
      {
        v103 = sub_A57920((a1 + 4136), *a2);
        v104 = (v103 - *v103);
        if (*v104 >= 9u && (v105 = v104[4]) != 0)
        {
          v106 = (v103 + v105 + *(v103 + v105));
        }

        else
        {
          v106 = 0;
        }

        v107 = *sub_A571D4(v106, v102 - 1);
        v108 = sub_A57920((a1 + 4136), *a2);
        v109 = (v108 - *v108);
        if (*v109 >= 9u && (v110 = v109[4]) != 0)
        {
          v111 = (v108 + v110 + *(v108 + v110));
        }

        else
        {
          v111 = 0;
        }

        v112 = __ROR8__(v107, 32);
        v113 = __ROR8__(*sub_A571D4(v111, v102), 32);
        if (*(a1 + 16) == 1)
        {
          v114 = HIDWORD(v112) != 1 || (v112 + 3) >= 2;
          if (v114 && !sub_2D5204(**(a1 + 4120)) || (HIDWORD(v113) != 1 || (v113 + 3) >= 2) && (sub_2D5204(**(a1 + 4120)) & 1) == 0)
          {
            goto LABEL_194;
          }
        }

        v115 = sub_A82A90(*(a1 + 4120) + 24, v112, 0, "routing stop");
        v116 = (v115 - *v115);
        if (*v116 >= 5u && (v117 = v116[2]) != 0)
        {
          v118 = *(v115 + v117);
        }

        else
        {
          v118 = 0;
        }

        v119 = sub_A82A90(*(a1 + 4120) + 24, v113, 0, "routing stop");
        v120 = (v119 - *v119);
        if (*v120 < 5u)
        {
          if (!v118)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v121 = v120[2];
          if (v121)
          {
            LODWORD(v121) = *(v119 + v121);
          }

          if (v118 == v121)
          {
            goto LABEL_194;
          }
        }

        if (sub_7E7E4(3u))
        {
          break;
        }

LABEL_193:
        v100 = 0;
LABEL_194:
        if (v101 == ++v102)
        {
          goto LABEL_241;
        }
      }

      sub_19594F8(&v609);
      v122 = sub_4A5C(&v609, "Stop pattern ", 13);
      v123 = sub_2FF718(v122, *a2);
      v124 = sub_4A5C(v123, " has stops ", 11);
      v125 = sub_2FF718(v124, v112);
      v126 = sub_4A5C(v125, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), v112);
      v128 = std::ostream::operator<<(v126, v127);
      v129 = sub_4A5C(v128, ") and ", 6);
      v130 = sub_2FF718(v129, v113);
      v131 = sub_4A5C(v130, " (muid: ", 8);
      sub_A4FC74((a1 + 4120), v113);
      v133 = std::ostream::operator<<(v131, v132);
      v134 = sub_4A5C(v133, ") in different connected components: ", 37);
      sub_A82A90(*(a1 + 4120) + 24, v112, 0, "routing stop");
      std::ostream::operator<<();
      sub_4A5C(v134, " and ", 5);
      sub_A82A90(*(a1 + 4120) + 24, v113, 0, "routing stop");
      std::ostream::operator<<();
      if ((v622 & 0x10) != 0)
      {
        v136 = v621;
        v137 = &v615;
        if (v621 < v616)
        {
          v621 = v616;
          v136 = v616;
          v137 = &v615;
        }
      }

      else
      {
        if ((v622 & 8) == 0)
        {
          v135 = 0;
          v608 = 0;
LABEL_236:
          *(&__dst + v135) = 0;
          sub_7E854(&__dst, 3u);
          if (v608 < 0)
          {
            operator delete(__dst);
          }

          v609 = v587;
          *(&v609 + *(*&v587 - 24)) = v579;
          if (SHIBYTE(v620) < 0)
          {
            operator delete(v618);
          }

          std::locale::~locale(&v611);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_193;
        }

        v136 = v614;
        v137 = &v612;
      }

      v138 = *v137;
      v135 = v136 - *v137;
      if (v135 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v135 >= 0x17)
      {
        operator new();
      }

      v608 = v136 - *v137;
      if (v135)
      {
        memmove(&__dst, v138, v135);
      }

      goto LABEL_236;
    }
  }

  else
  {
    v100 = v36;
  }

LABEL_241:
  v139 = sub_A57920((a1 + 4136), *a2);
  v140 = (v139 - *v139);
  if (*v140 >= 5u)
  {
    v141 = v140[2];
    if (v141)
    {
      v142 = *(v139 + v141 + *(v139 + v141));
      if (v142)
      {
        v143 = 0;
        v144 = (a1 + 4056);
        while (1)
        {
          v145 = sub_A57920((a1 + 4136), *a2);
          v146 = (v145 - *v145);
          if (*v146 >= 5u && (v147 = v146[2]) != 0)
          {
            v148 = (v145 + v147 + *(v145 + v147));
          }

          else
          {
            v148 = 0;
          }

          v149 = __ROR8__(*sub_A6E4F4(v148, v143), 32);
          if (*(a1 + 16) == 1 && (sub_2D5204(**v144) & 1) == 0)
          {
            goto LABEL_250;
          }

          v150 = __ROR8__(v149, 32);
          v151 = sub_2C939C((*v144 + 3), v150, 1);
          if (v151)
          {
            v152 = &v151[-*v151];
            if (*v152 >= 0xFu)
            {
              v153 = *(v152 + 7);
              if (v153)
              {
                if (*&v151[v153 + *&v151[v153]] > HIDWORD(v150))
                {
                  break;
                }
              }
            }
          }

          if (sub_7E7E4(3u))
          {
            sub_19594F8(&v609);
            v156 = sub_4A5C(&v609, "Stop pattern ", 13);
            v157 = sub_2FF718(v156, *a2);
            v158 = sub_4A5C(v157, " has line ", 10);
            v159 = sub_2FF718(v158, v149);
            sub_4A5C(v159, ", which does not exist in the data.", 35);
            if ((v622 & 0x10) != 0)
            {
              v161 = v621;
              v162 = &v615;
              if (v621 < v616)
              {
                v621 = v616;
                v161 = v616;
                v162 = &v615;
              }
            }

            else
            {
              if ((v622 & 8) == 0)
              {
                v160 = 0;
                v608 = 0;
                goto LABEL_286;
              }

              v161 = v614;
              v162 = &v612;
            }

            v163 = *v162;
            v160 = v161 - *v162;
            if (v160 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v160 >= 0x17)
            {
              operator new();
            }

            v608 = v161 - *v162;
            if (v160)
            {
              memmove(&__dst, v163, v160);
            }

LABEL_286:
            *(&__dst + v160) = 0;
            sub_7E854(&__dst, 3u);
            if (v608 < 0)
            {
              goto LABEL_245;
            }

            goto LABEL_246;
          }

LABEL_249:
          v100 = 0;
LABEL_250:
          if (++v143 == v142)
          {
            goto LABEL_444;
          }
        }

        sub_C7FB60(&v609, a1, v149, 1, 0);
        while (v618 < *v619)
        {
          if (__ROR8__(*v618, 32) == *a2 && v143 == v618[8])
          {
            goto LABEL_307;
          }

          v618 += 12;
          if (v618 == *v619)
          {
            v616 += 2;
            v154 = v616;
            if (v616 < v617)
            {
              while (1)
              {
                v155 = *(v154 + 1);
                if (*v154 != v155)
                {
                  break;
                }

                v154 += 8;
                v616 = v154;
                if (v154 >= v617)
                {
                  goto LABEL_263;
                }
              }

              v618 = *v154;
              *v619 = v155;
            }
          }

LABEL_263:
          sub_C7FDC4(&v609);
        }

        if (!sub_7E7E4(3u))
        {
          goto LABEL_306;
        }

        sub_19594F8(&v609);
        v164 = sub_4A5C(&v609, "Stop pattern ", 13);
        v165 = sub_2FF718(v164, *a2);
        v166 = sub_4A5C(v165, " has line ", 10);
        v167 = sub_2FF718(v166, v149);
        v168 = sub_4A5C(v167, " (muid: ", 8);
        sub_A81B90(v144, v149);
        v170 = std::ostream::operator<<(v168, v169);
        sub_4A5C(v170, "), which does not reference the stop pattern", 44);
        if ((v622 & 0x10) != 0)
        {
          v172 = v621;
          v173 = &v615;
          if (v621 < v616)
          {
            v621 = v616;
            v172 = v616;
            v173 = &v615;
          }
        }

        else
        {
          if ((v622 & 8) == 0)
          {
            v171 = 0;
            v608 = 0;
LABEL_301:
            *(&__dst + v171) = 0;
            sub_7E854(&__dst, 3u);
            if (v608 < 0)
            {
              operator delete(__dst);
            }

            v609 = v588;
            *(&v609 + *(*&v588 - 24)) = v582;
            if (SHIBYTE(v620) < 0)
            {
              operator delete(v618);
            }

            std::locale::~locale(&v611);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_306:
            v100 = 0;
LABEL_307:
            if (v143)
            {
              goto LABEL_369;
            }

            v175 = sub_92FC60((*v144 + 3), v150, 0, "line");
            v176 = (v175 - *v175);
            v177 = *v176;
            if (v177 < 0x11)
            {
              goto LABEL_315;
            }

            if (v176[8] && *(v175 + v176[8]) == 101)
            {
              v178 = 2;
              goto LABEL_316;
            }

            if (v177 >= 0x2F && (v179 = v176[23]) != 0)
            {
              v178 = *(v175 + v179);
            }

            else
            {
LABEL_315:
              v178 = 0;
            }

LABEL_316:
            v180 = sub_A57920((a1 + 4136), *a2);
            v181 = (v180 - *v180);
            if (*v181 < 0xBu)
            {
              if (!v178)
              {
                goto LABEL_341;
              }
            }

            else
            {
              v182 = v181[5];
              if (v182)
              {
                LODWORD(v182) = *(v180 + v182);
              }

              if (v178 == v182)
              {
                goto LABEL_341;
              }
            }

            if (!sub_7E7E4(3u))
            {
LABEL_340:
              v100 = 0;
LABEL_341:
              v195 = sub_92FC60((*v144 + 3), v150, 0, "line");
              v196 = (v195 - *v195);
              if (*v196 >= 0x31u && (v197 = v196[24]) != 0)
              {
                v198 = *(v195 + v197);
              }

              else
              {
                v198 = 2;
              }

              v199 = sub_A57920((a1 + 4136), *a2);
              v200 = (v199 - *v199);
              if (*v200 >= 0x19u)
              {
                v201 = v200[12];
                if (v201)
                {
                  if (v198 == *(v199 + v201))
                  {
                    goto LABEL_369;
                  }

LABEL_350:
                  if (!sub_7E7E4(1u))
                  {
LABEL_368:
                    v100 = 0;
                    goto LABEL_369;
                  }

                  sub_19594F8(&v609);
                  v202 = sub_4A5C(&v609, "Stop pattern ", 13);
                  v203 = sub_2FF718(v202, *a2);
                  v204 = sub_4A5C(v203, " has line ", 10);
                  v205 = sub_2FF718(v204, v149);
                  v206 = sub_4A5C(v205, " (muid: ", 8);
                  sub_A81B90(v144, v149);
                  v208 = std::ostream::operator<<(v206, v207);
                  sub_4A5C(v208, ") with fare estimate of ", 24);
                  sub_92FC60((*v144 + 3), v150, 0, "line");
                  v209 = std::ostream::operator<<();
                  sub_4A5C(v209, ", which does not match the stop pattern: ", 41);
                  sub_A57920((a1 + 4136), *a2);
                  std::ostream::operator<<();
                  if ((v622 & 0x10) != 0)
                  {
                    v211 = v621;
                    v212 = &v615;
                    if (v621 < v616)
                    {
                      v621 = v616;
                      v211 = v616;
                      v212 = &v615;
                    }
                  }

                  else
                  {
                    if ((v622 & 8) == 0)
                    {
                      v210 = 0;
                      v608 = 0;
LABEL_363:
                      *(&__dst + v210) = 0;
                      sub_7E854(&__dst, 1u);
                      if (v608 < 0)
                      {
                        operator delete(__dst);
                      }

                      v609 = v588;
                      *(&v609 + *(*&v588 - 24)) = v582;
                      if (SHIBYTE(v620) < 0)
                      {
                        operator delete(v618);
                      }

                      std::locale::~locale(&v611);
                      std::ostream::~ostream();
                      std::ios::~ios();
                      goto LABEL_368;
                    }

                    v211 = v614;
                    v212 = &v612;
                  }

                  v213 = *v212;
                  v210 = v211 - *v212;
                  if (v210 > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_3244();
                  }

                  if (v210 >= 0x17)
                  {
                    operator new();
                  }

                  v608 = v211 - *v212;
                  if (v210)
                  {
                    memmove(&__dst, v213, v210);
                  }

                  goto LABEL_363;
                }
              }

              if (v198 != 2)
              {
                goto LABEL_350;
              }

LABEL_369:
              v214 = sub_C4C36C(v144, v149);
              v215 = sub_A57920((a1 + 4136), *a2);
              v216 = (v215 - *v215);
              if (*v216 >= 0xDu && (v217 = v216[6]) != 0)
              {
                if (v214 != *(v215 + v217))
                {
                  goto LABEL_372;
                }
              }

              else if (v214 != 1)
              {
LABEL_372:
                if (!sub_7E7E4(3u))
                {
                  goto LABEL_394;
                }

                sub_19594F8(&v609);
                v218 = sub_4A5C(&v609, "Stop pattern ", 13);
                v219 = sub_2FF718(v218, *a2);
                v220 = sub_4A5C(v219, " has line ", 10);
                v221 = sub_2FF718(v220, v149);
                v222 = sub_4A5C(v221, " (muid: ", 8);
                sub_A81B90(v144, v149);
                v224 = std::ostream::operator<<(v222, v223);
                sub_4A5C(v224, ") with minimum required market support version of ", 50);
                sub_C4C36C(v144, v149);
                v225 = std::ostream::operator<<();
                sub_4A5C(v225, ", which does not match the stop pattern: ", 41);
                sub_A57920((a1 + 4136), *a2);
                std::ostream::operator<<();
                if ((v622 & 0x10) != 0)
                {
                  v227 = v621;
                  v228 = &v615;
                  if (v621 < v616)
                  {
                    v621 = v616;
                    v227 = v616;
                    v228 = &v615;
                  }
                }

                else
                {
                  if ((v622 & 8) == 0)
                  {
                    v226 = 0;
                    v608 = 0;
LABEL_389:
                    *(&__dst + v226) = 0;
                    sub_7E854(&__dst, 3u);
                    if (v608 < 0)
                    {
                      operator delete(__dst);
                    }

                    v609 = v588;
                    *(&v609 + *(*&v588 - 24)) = v582;
                    if (SHIBYTE(v620) < 0)
                    {
                      operator delete(v618);
                    }

                    std::locale::~locale(&v611);
                    std::ostream::~ostream();
                    std::ios::~ios();
LABEL_394:
                    v100 = 0;
                    if (v143)
                    {
                      goto LABEL_423;
                    }

LABEL_395:
                    v230 = sub_92FC60((*v144 + 3), v150, 0, "line");
                    v231 = (v230 - *v230);
                    if (*v231 >= 0x11u && (v232 = v231[8]) != 0)
                    {
                      v233 = *(v230 + v232);
                    }

                    else
                    {
                      v233 = 0x7FFF;
                    }

                    v234 = sub_A57920((a1 + 4136), *a2);
                    v235 = (v234 - *v234);
                    if (*v235 >= 0xFu)
                    {
                      v236 = v235[7];
                      if (v236)
                      {
                        if (v233 == *(v234 + v236))
                        {
                          goto LABEL_423;
                        }

LABEL_404:
                        if (!sub_7E7E4(3u))
                        {
LABEL_422:
                          v100 = 0;
                          goto LABEL_423;
                        }

                        sub_19594F8(&v609);
                        v237 = sub_4A5C(&v609, "Stop pattern ", 13);
                        v238 = sub_2FF718(v237, *a2);
                        v239 = sub_4A5C(v238, " has line ", 10);
                        v240 = sub_2FF718(v239, v149);
                        v241 = sub_4A5C(v240, " (muid: ", 8);
                        sub_A81B90(v144, v149);
                        v243 = std::ostream::operator<<(v241, v242);
                        sub_4A5C(v243, ") with transit type of ", 23);
                        sub_92FC60((*v144 + 3), v150, 0, "line");
                        v244 = std::ostream::operator<<();
                        sub_4A5C(v244, ", which does not match the stop pattern: ", 41);
                        sub_A57920((a1 + 4136), *a2);
                        std::ostream::operator<<();
                        if ((v622 & 0x10) != 0)
                        {
                          v246 = v621;
                          v247 = &v615;
                          if (v621 < v616)
                          {
                            v621 = v616;
                            v246 = v616;
                            v247 = &v615;
                          }
                        }

                        else
                        {
                          if ((v622 & 8) == 0)
                          {
                            v245 = 0;
                            v608 = 0;
LABEL_417:
                            *(&__dst + v245) = 0;
                            sub_7E854(&__dst, 3u);
                            if (v608 < 0)
                            {
                              operator delete(__dst);
                            }

                            v609 = v588;
                            *(&v609 + *(*&v588 - 24)) = v582;
                            if (SHIBYTE(v620) < 0)
                            {
                              operator delete(v618);
                            }

                            std::locale::~locale(&v611);
                            std::ostream::~ostream();
                            std::ios::~ios();
                            goto LABEL_422;
                          }

                          v246 = v614;
                          v247 = &v612;
                        }

                        v248 = *v247;
                        v245 = v246 - *v247;
                        if (v245 > 0x7FFFFFFFFFFFFFF7)
                        {
                          sub_3244();
                        }

                        if (v245 >= 0x17)
                        {
                          operator new();
                        }

                        v608 = v246 - *v247;
                        if (v245)
                        {
                          memmove(&__dst, v248, v245);
                        }

                        goto LABEL_417;
                      }
                    }

                    if (v233 != 0x7FFF)
                    {
                      goto LABEL_404;
                    }

LABEL_423:
                    v249 = sub_92FC60((*v144 + 3), v150, 0, "line");
                    v250 = (v249 - *v249);
                    if (*v250 < 0x23u)
                    {
                      goto LABEL_250;
                    }

                    v251 = v250[17];
                    if (!v251)
                    {
                      goto LABEL_250;
                    }

                    if (!*(v249 + v251))
                    {
                      goto LABEL_250;
                    }

                    v252 = sub_A57920((a1 + 4136), *a2);
                    v253 = (v252 - *v252);
                    if (*v253 >= 0x13u)
                    {
                      v254 = v253[9];
                      if (v254)
                      {
                        if ((*(v252 + v254) & 2) != 0)
                        {
                          goto LABEL_250;
                        }
                      }
                    }

                    if (sub_7E7E4(3u))
                    {
                      sub_19594F8(&v609);
                      v255 = sub_4A5C(&v609, "Stop pattern ", 13);
                      v256 = sub_2FF718(v255, *a2);
                      v257 = sub_4A5C(v256, " has line ", 10);
                      v258 = sub_2FF718(v257, v149);
                      v259 = sub_4A5C(v258, " (muid: ", 8);
                      sub_A81B90(v144, v149);
                      v261 = std::ostream::operator<<(v259, v260);
                      sub_4A5C(v261, ") with preflight flag of ", 25);
                      sub_92FC60((*v144 + 3), v150, 0, "line");
                      v262 = std::ostream::operator<<();
                      sub_4A5C(v262, ", which does not match the stop pattern: ", 41);
                      sub_A57920((a1 + 4136), *a2);
                      std::ostream::operator<<();
                      if ((v622 & 0x10) != 0)
                      {
                        v264 = v621;
                        v265 = &v615;
                        if (v621 < v616)
                        {
                          v621 = v616;
                          v264 = v616;
                          v265 = &v615;
                        }
                      }

                      else
                      {
                        if ((v622 & 8) == 0)
                        {
                          v263 = 0;
                          v608 = 0;
                          goto LABEL_442;
                        }

                        v264 = v614;
                        v265 = &v612;
                      }

                      v266 = *v265;
                      v263 = v264 - *v265;
                      if (v263 > 0x7FFFFFFFFFFFFFF7)
                      {
                        sub_3244();
                      }

                      if (v263 >= 0x17)
                      {
                        operator new();
                      }

                      v608 = v264 - *v265;
                      if (v263)
                      {
                        memmove(&__dst, v266, v263);
                      }

LABEL_442:
                      *(&__dst + v263) = 0;
                      sub_7E854(&__dst, 3u);
                      if (v608 < 0)
                      {
LABEL_245:
                        operator delete(__dst);
                      }

LABEL_246:
                      v609 = v588;
                      *(&v609 + *(*&v588 - 24)) = v582;
                      if (SHIBYTE(v620) < 0)
                      {
                        operator delete(v618);
                      }

                      std::locale::~locale(&v611);
                      std::ostream::~ostream();
                      std::ios::~ios();
                      goto LABEL_249;
                    }

                    goto LABEL_249;
                  }

                  v227 = v614;
                  v228 = &v612;
                }

                v229 = *v228;
                v226 = v227 - *v228;
                if (v226 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v226 >= 0x17)
                {
                  operator new();
                }

                v608 = v227 - *v228;
                if (v226)
                {
                  memmove(&__dst, v229, v226);
                }

                goto LABEL_389;
              }

              if (v143)
              {
                goto LABEL_423;
              }

              goto LABEL_395;
            }

            sub_19594F8(&v609);
            v183 = sub_4A5C(&v609, "Stop pattern ", 13);
            v184 = sub_2FF718(v183, *a2);
            v185 = sub_4A5C(v184, " has line ", 10);
            v186 = sub_2FF718(v185, v149);
            v187 = sub_4A5C(v186, " (muid: ", 8);
            sub_A81B90(v144, v149);
            v189 = std::ostream::operator<<(v187, v188);
            sub_4A5C(v189, ") with routing preference of ", 29);
            sub_92FC60((*v144 + 3), v150, 0, "line");
            v190 = std::ostream::operator<<();
            sub_4A5C(v190, ", which does not match the stop pattern: ", 41);
            sub_A57920((a1 + 4136), *a2);
            std::ostream::operator<<();
            if ((v622 & 0x10) != 0)
            {
              v192 = v621;
              v193 = &v615;
              if (v621 < v616)
              {
                v621 = v616;
                v192 = v616;
                v193 = &v615;
              }
            }

            else
            {
              if ((v622 & 8) == 0)
              {
                v191 = 0;
                v608 = 0;
LABEL_335:
                *(&__dst + v191) = 0;
                sub_7E854(&__dst, 3u);
                if (v608 < 0)
                {
                  operator delete(__dst);
                }

                v609 = v588;
                *(&v609 + *(*&v588 - 24)) = v582;
                if (SHIBYTE(v620) < 0)
                {
                  operator delete(v618);
                }

                std::locale::~locale(&v611);
                std::ostream::~ostream();
                std::ios::~ios();
                goto LABEL_340;
              }

              v192 = v614;
              v193 = &v612;
            }

            v194 = *v193;
            v191 = v192 - *v193;
            if (v191 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v191 >= 0x17)
            {
              operator new();
            }

            v608 = v192 - *v193;
            if (v191)
            {
              memmove(&__dst, v194, v191);
            }

            goto LABEL_335;
          }

          v172 = v614;
          v173 = &v612;
        }

        v174 = *v173;
        v171 = v172 - *v173;
        if (v171 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v171 >= 0x17)
        {
          operator new();
        }

        v608 = v172 - *v173;
        if (v171)
        {
          memmove(&__dst, v174, v171);
        }

        goto LABEL_301;
      }
    }
  }

LABEL_444:
  if ((v100 & sub_C98C38(a1, a2)) != 1)
  {
    v274 = 0;
    return v274 & 1;
  }

  v267 = sub_A57920((a1 + 4136), *a2);
  v268 = (v267 - *v267);
  if (*v268 >= 0x13u)
  {
    v269 = v268[9];
    if (v269)
    {
      if (*(v267 + v269))
      {
        v478 = sub_A57920((a1 + 4136), *a2);
        v479 = (v478 - *v478);
        if (*v479 >= 7u)
        {
          v480 = v479[3];
          if (v480)
          {
            v481 = *(v478 + v480 + *(v478 + v480));
            if (v481)
            {
              v482 = 0;
              v274 = 1;
              while (1)
              {
                sub_A78D38((a1 + 4136), *a2, v482, &__dst);
                v483 = __dst;
                if (v607 - __dst == 12)
                {
LABEL_694:
                  v492 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v483, 32), 0, "trip");
                  v493 = (v492 - *v492);
                  if (*v493 < 0x13u || (v494 = v493[9]) == 0 || !*(v492 + v494 + *(v492 + v494)))
                  {
                    if (sub_7E7E4(3u))
                    {
                      sub_19594F8(&v609);
                      v495 = sub_4A5C(&v609, "Frequency trip at index ", 24);
                      std::ostream::operator<<();
                      v496 = sub_4A5C(v495, " on stop pattern ", 17);
                      v497 = sub_2FF718(v496, *a2);
                      sub_4A5C(v497, " has no associated frequencies.", 31);
                      if ((v622 & 0x10) != 0)
                      {
                        v499 = v621;
                        v500 = &v615;
                        if (v621 < v616)
                        {
                          v621 = v616;
                          v499 = v616;
                          v500 = &v615;
                        }
                      }

                      else
                      {
                        if ((v622 & 8) == 0)
                        {
                          v498 = 0;
                          v605 = 0;
                          goto LABEL_710;
                        }

                        v499 = v614;
                        v500 = &v612;
                      }

                      v501 = *v500;
                      v498 = v499 - *v500;
                      if (v498 > 0x7FFFFFFFFFFFFFF7)
                      {
                        sub_3244();
                      }

                      if (v498 >= 0x17)
                      {
                        operator new();
                      }

                      v605 = v499 - *v500;
                      if (v498)
                      {
                        memmove(&__p, v501, v498);
                      }

LABEL_710:
                      *(&__p + v498) = 0;
                      sub_7E854(&__p, 3u);
                      if (v605 < 0)
                      {
                        operator delete(__p);
                      }

                      v609 = v590;
                      *(&v609 + *(*&v590 - 24)) = v584;
                      if (SHIBYTE(v620) < 0)
                      {
                        operator delete(v618);
                      }

                      std::locale::~locale(&v611);
                      std::ostream::~ostream();
                      std::ios::~ios();
                    }

                    v274 = 0;
                  }

                  v483 = __dst;
                  goto LABEL_717;
                }

                if (sub_7E7E4(3u))
                {
                  break;
                }

LABEL_693:
                v274 = 0;
                v483 = __dst;
                if (__dst != v607)
                {
                  goto LABEL_694;
                }

LABEL_717:
                if (v483)
                {
                  v607 = v483;
                  operator delete(v483);
                }

                if (v481 == ++v482)
                {
                  goto LABEL_723;
                }
              }

              sub_19594F8(&v609);
              v484 = sub_4A5C(&v609, "Frequency trip at index ", 24);
              std::ostream::operator<<();
              v485 = sub_4A5C(v484, " on stop pattern ", 17);
              v486 = sub_2FF718(v485, *a2);
              sub_4A5C(v486, " has a trip sequence size of ", 29);
              v487 = std::ostream::operator<<();
              sub_4A5C(v487, ", which must be 1", 17);
              if ((v622 & 0x10) != 0)
              {
                v489 = v621;
                v490 = &v615;
                if (v621 < v616)
                {
                  v621 = v616;
                  v489 = v616;
                  v490 = &v615;
                }
              }

              else
              {
                if ((v622 & 8) == 0)
                {
                  v488 = 0;
                  v605 = 0;
LABEL_688:
                  *(&__p + v488) = 0;
                  sub_7E854(&__p, 3u);
                  if (v605 < 0)
                  {
                    operator delete(__p);
                  }

                  v609 = v590;
                  *(&v609 + *(*&v590 - 24)) = v584;
                  if (SHIBYTE(v620) < 0)
                  {
                    operator delete(v618);
                  }

                  std::locale::~locale(&v611);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_693;
                }

                v489 = v614;
                v490 = &v612;
              }

              v491 = *v490;
              v488 = v489 - *v490;
              if (v488 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v488 >= 0x17)
              {
                operator new();
              }

              v605 = v489 - *v490;
              if (v488)
              {
                memmove(&__p, v491, v488);
              }

              goto LABEL_688;
            }
          }
        }

        v274 = 1;
LABEL_723:
        v504 = sub_A57920((a1 + 4136), *a2);
        v505 = (v504 - *v504);
        if (*v505 < 7u)
        {
          return v274 & 1;
        }

        v506 = v505[3];
        if (!v506)
        {
          return v274 & 1;
        }

        v591 = *(v504 + v506 + *(v504 + v506));
        if (v591 < 2)
        {
          return v274 & 1;
        }

        v507 = 1;
        while (1)
        {
          sub_A78D38((a1 + 4136), *a2, v507, &__dst);
          v508 = __dst;
          if (__dst != v607)
          {
            break;
          }

LABEL_763:
          if (v508)
          {
            v607 = v508;
            operator delete(v508);
          }

          if (++v507 == v591)
          {
            return v274 & 1;
          }
        }

        v509 = *__dst;
        v602 = *(__dst + 2);
        v601 = v509;
        v510 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(v509, 32), 0, "trip");
        v511 = (v510 - *v510);
        if (*v511 < 0x13u || (v512 = v511[9]) == 0 || !*(v510 + v512 + *(v510 + v512)))
        {
LABEL_762:
          v508 = __dst;
          goto LABEL_763;
        }

        sub_A78D38((a1 + 4136), *a2, v507 - 1, &__p);
        v513 = __p;
        if (__p == v604)
        {
LABEL_760:
          if (v513)
          {
            v604 = v513;
            operator delete(v513);
          }

          goto LABEL_762;
        }

        v514 = *__p;
        v600 = *(__p + 2);
        v599 = v514;
        v515 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(v514, 32), 0, "trip");
        v516 = (v515 - *v515);
        if (*v516 < 0x13u || (v517 = v516[9]) == 0 || (v518 = *(v515 + v517 + *(v515 + v517))) == 0)
        {
LABEL_759:
          v513 = __p;
          goto LABEL_760;
        }

        v598 = sub_A6E970((a1 + 4184), &v599, (v518 - 1));
        v597 = sub_A6E7D4((a1 + 4184), &v601, 0);
        if (v598 <= v597)
        {
          goto LABEL_756;
        }

        if (!sub_7E7E4(3u))
        {
LABEL_755:
          v274 = 0;
LABEL_756:
          v530 = sub_A57920((a1 + 4136), *a2);
          v531 = (v530 - *v530);
          if (*v531 < 9u)
          {
            goto LABEL_759;
          }

          v532 = v531[4];
          if (!v532)
          {
            goto LABEL_759;
          }

          v580 = *(v530 + v532 + *(v530 + v532));
          if (v580 < 2)
          {
            goto LABEL_759;
          }

          v533 = 1;
          while (1)
          {
            v534 = sub_C9CF18((a1 + 4184), &v599, v533);
            v535 = sub_C9D140((a1 + 4184), &v599, v533);
            v536 = sub_C9CF18((a1 + 4184), &v601, v533);
            v537 = sub_C9D140((a1 + 4184), &v601, v533);
            v538 = v534 < 0 ? -5 : 5;
            v539 = v534 / 10 + (((103 * (v538 + v534 % 10)) >> 15) & 1) + ((103 * (v538 + v534 % 10)) >> 10);
            v540 = v536 < 0 ? -5 : 5;
            v541 = v536 / 10 + (((103 * (v540 + v536 % 10)) >> 15) & 1) + ((103 * (v540 + v536 % 10)) >> 10);
            if ((v598 + v539) > (v597 + v541))
            {
              break;
            }

LABEL_795:
            if (v535 < 0)
            {
              v553 = -5;
            }

            else
            {
              v553 = 5;
            }

            v554 = v535 / 10 + (((103 * (v553 + v535 % 10)) >> 15) & 1) + ((103 * (v553 + v535 % 10)) >> 10);
            if (v537 < 0)
            {
              v555 = -5;
            }

            else
            {
              v555 = 5;
            }

            v556 = v537 / 10 + (((103 * (v555 + v537 % 10)) >> 15) & 1) + ((103 * (v555 + v537 % 10)) >> 10);
            if ((v598 + v554) <= (v597 + v556))
            {
              goto LABEL_768;
            }

            if (sub_7E7E4(3u))
            {
              sub_19594F8(&v609);
              v557 = sub_4A5C(&v609, "On stop pattern ", 16);
              v558 = sub_2FF718(v557, *a2);
              sub_4A5C(v558, " the last frequency trip manifestation at trip index ", 53);
              v559 = std::ostream::operator<<();
              v560 = sub_4A5C(v559, " is overtaken by the first frequency trip manifestation at trip index ", 70);
              std::ostream::operator<<();
              v561 = sub_4A5C(v560, " in terms of static relative departure time: ", 45);
              LODWORD(v595) = v598 + v554;
              v562 = sub_258D4(v561, &v595);
              v563 = sub_4A5C(v562, " > ", 3);
              v594 = v597 + v556;
              sub_258D4(v563, &v594);
              if ((v622 & 0x10) != 0)
              {
                v565 = v621;
                v566 = &v615;
                if (v621 < v616)
                {
                  v621 = v616;
                  v565 = v616;
                  v566 = &v615;
                }
              }

              else
              {
                if ((v622 & 8) == 0)
                {
                  v564 = 0;
                  v596 = 0;
LABEL_815:
                  *(&v595 + v564) = 0;
                  sub_7E854(&v595, 3u);
                  if (v596 < 0)
                  {
                    operator delete(v595);
                  }

                  v609 = v578;
                  *(&v609 + *(*&v578 - 24)) = v576;
                  if (SHIBYTE(v620) < 0)
                  {
                    operator delete(v618);
                  }

                  std::locale::~locale(&v611);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_767;
                }

                v565 = v614;
                v566 = &v612;
              }

              v567 = *v566;
              v564 = v565 - *v566;
              if (v564 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v564 >= 0x17)
              {
                operator new();
              }

              v596 = v565 - *v566;
              if (v564)
              {
                memmove(&v595, v567, v564);
              }

              goto LABEL_815;
            }

LABEL_767:
            v274 = 0;
LABEL_768:
            if (v580 == ++v533)
            {
              goto LABEL_759;
            }
          }

          if (!sub_7E7E4(3u))
          {
LABEL_794:
            v274 = 0;
            goto LABEL_795;
          }

          sub_19594F8(&v609);
          v542 = sub_4A5C(&v609, "On stop pattern ", 16);
          v543 = sub_2FF718(v542, *a2);
          sub_4A5C(v543, " the last frequency trip manifestation at trip index ", 53);
          v544 = std::ostream::operator<<();
          v545 = sub_4A5C(v544, " overtakes the first frequency trip manifestation at trip index ", 64);
          std::ostream::operator<<();
          v546 = sub_4A5C(v545, " in terms of static relative arrival time: ", 43);
          LODWORD(v595) = v598 + v539;
          v547 = sub_258D4(v546, &v595);
          v548 = sub_4A5C(v547, " > ", 3);
          v594 = v597 + v541;
          sub_258D4(v548, &v594);
          if ((v622 & 0x10) != 0)
          {
            v550 = v621;
            v551 = &v615;
            if (v621 < v616)
            {
              v621 = v616;
              v550 = v616;
              v551 = &v615;
            }
          }

          else
          {
            if ((v622 & 8) == 0)
            {
              v549 = 0;
              v596 = 0;
LABEL_789:
              *(&v595 + v549) = 0;
              sub_7E854(&v595, 3u);
              if (v596 < 0)
              {
                operator delete(v595);
              }

              v609 = v578;
              *(&v609 + *(*&v578 - 24)) = v576;
              if (SHIBYTE(v620) < 0)
              {
                operator delete(v618);
              }

              std::locale::~locale(&v611);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_794;
            }

            v550 = v614;
            v551 = &v612;
          }

          v552 = *v551;
          v549 = v550 - *v551;
          if (v549 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v549 >= 0x17)
          {
            operator new();
          }

          v596 = v550 - *v551;
          if (v549)
          {
            memmove(&v595, v552, v549);
          }

          goto LABEL_789;
        }

        sub_19594F8(&v609);
        v519 = sub_4A5C(&v609, "On stop pattern ", 16);
        v520 = sub_2FF718(v519, *a2);
        sub_4A5C(v520, " frequency trip ", 16);
        v521 = std::ostream::operator<<();
        v522 = sub_4A5C(v521, " has frequency end time of ", 27);
        v523 = sub_258D4(v522, &v598);
        v524 = sub_4A5C(v523, ", which is after the frequency start time ", 42);
        v525 = sub_258D4(v524, &v597);
        sub_4A5C(v525, " of frequency trip ", 19);
        std::ostream::operator<<();
        if ((v622 & 0x10) != 0)
        {
          v527 = v621;
          v528 = &v615;
          if (v621 < v616)
          {
            v621 = v616;
            v527 = v616;
            v528 = &v615;
          }
        }

        else
        {
          if ((v622 & 8) == 0)
          {
            v526 = 0;
            v596 = 0;
LABEL_750:
            *(&v595 + v526) = 0;
            sub_7E854(&v595, 3u);
            if (v596 < 0)
            {
              operator delete(v595);
            }

            v609 = v578;
            *(&v609 + *(*&v578 - 24)) = v576;
            if (SHIBYTE(v620) < 0)
            {
              operator delete(v618);
            }

            std::locale::~locale(&v611);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_755;
          }

          v527 = v614;
          v528 = &v612;
        }

        v529 = *v528;
        v526 = v527 - *v528;
        if (v526 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v526 >= 0x17)
        {
          operator new();
        }

        v596 = v527 - *v528;
        if (v526)
        {
          memmove(&v595, v529, v526);
        }

        goto LABEL_750;
      }
    }
  }

  v270 = sub_A57920((a1 + 4136), *a2);
  v271 = (v270 - *v270);
  if (*v271 >= 7u)
  {
    v272 = v271[3];
    if (v272)
    {
      v572 = *(v270 + v272 + *(v270 + v272));
      if (v572)
      {
        v273 = 0;
        v274 = 1;
        while (1)
        {
          if ((sub_C8D924((a1 + 4136), *a2, v273) & 1) == 0)
          {
            v275 = sub_A57920((a1 + 4136), *a2);
            v276 = (v275 - *v275);
            if (*v276 >= 9u)
            {
              v277 = v276[4];
              if (v277)
              {
                v583 = *(v275 + v277 + *(v275 + v277));
                if (v583)
                {
                  break;
                }
              }
            }
          }

LABEL_452:
          if (++v273 == v572)
          {
            return v274 & 1;
          }
        }

        v278 = 0;
        v589 = v273 - 1;
        while (1)
        {
          if (v278)
          {
            v279 = *a2;
            v280 = sub_A5706C((a1 + 4136), *a2);
            v281 = v280;
            v282 = &v280[-*v280];
            if (*v282 < 5u)
            {
              v283 = 0;
            }

            else
            {
              v283 = *(v282 + 2);
              if (v283)
              {
                v283 += &v280[*&v280[v283]];
              }
            }

            v284 = (v283 + 4 * v279 + 4 + *(v283 + 4 * v279 + 4));
            v285 = (v284 - *v284);
            if (*v285 >= 7u && (v286 = v285[3]) != 0)
            {
              v287 = (v284 + v286 + *(v284 + v286));
            }

            else
            {
              v287 = 0;
            }

            v288 = sub_A7AC40(v287, v273);
            v289 = (v281 - *v281);
            if (*v289 < 7u)
            {
              v290 = 0;
            }

            else
            {
              v290 = v289[3];
              if (v290)
              {
                v290 = (v290 + v281 + *(v290 + v281));
              }
            }

            v291 = *v288;
            v292 = sub_A7AEE0(v290, v278 + v288[1] - 1)[1];
            v293 = *a2;
            v294 = sub_A5706C((a1 + 4136), *a2);
            v295 = v294;
            v296 = &v294[-*v294];
            if (*v296 < 5u)
            {
              v297 = 0;
            }

            else
            {
              v297 = *(v296 + 2);
              if (v297)
              {
                v297 += &v294[*&v294[v297]];
              }
            }

            v298 = (v297 + 4 * v293 + 4 + *(v297 + 4 * v293 + 4));
            v299 = (v298 - *v298);
            if (*v299 >= 7u && (v300 = v299[3]) != 0)
            {
              v301 = (v298 + v300 + *(v298 + v300));
            }

            else
            {
              v301 = 0;
            }

            v302 = sub_A7AC40(v301, v273);
            v303 = (v295 - *v295);
            if (*v303 < 7u)
            {
              v304 = 0;
            }

            else
            {
              v304 = v303[3];
              if (v304)
              {
                v304 = (v304 + v295 + *(v304 + v295));
              }
            }

            v305 = *v302;
            if ((v292 + v291) > (*sub_A7AEE0(v304, v278 + v302[1]) + v305))
            {
              if (sub_7E7E4(3u))
              {
                v624 = 0;
                v609 = v577;
                *(&v609 + *(*&v577 - 24)) = v575;
                v306 = (&v609 + *(*&v609 - 24));
                std::ios_base::init(v306, &v610);
                v306[1].__vftable = 0;
                v306[1].__fmtflags_ = -1;
                std::locale::locale(&v611);
                v612 = 0;
                v613 = 0;
                v614 = 0;
                v622 = 16;
                v621 = &v618;
                v618 = 0;
                memset(v619, 0, sizeof(v619));
                v620 = 5632;
                v615 = &v618;
                v616 = &v618;
                v617 = &v620;
                v307 = sub_4A5C(&v609, "On stop pattern ", 16);
                v308 = sub_2FF718(v307, *a2);
                v309 = sub_4A5C(v308, ", trip at index ", 16);
                std::ostream::operator<<();
                v310 = sub_4A5C(v309, " travels into the past between stop indices ", 44);
                std::ostream::operator<<();
                v311 = sub_4A5C(v310, " and ", 5);
                std::ostream::operator<<();
                sub_4A5C(v311, "  frequency trips ", 18);
                v312 = std::ostream::operator<<();
                v313 = sub_4A5C(v312, ": ", 2);
                v314 = *a2;
                v315 = sub_A5706C((a1 + 4136), *a2);
                v316 = v315;
                v317 = &v315[-*v315];
                if (*v317 < 5u)
                {
                  v318 = 0;
                }

                else
                {
                  v318 = *(v317 + 2);
                  if (v318)
                  {
                    v318 += &v315[*&v315[v318]];
                  }
                }

                v358 = (v318 + 4 * v314 + 4 + *(v318 + 4 * v314 + 4));
                v359 = (v358 - *v358);
                if (*v359 >= 7u && (v360 = v359[3]) != 0)
                {
                  v361 = (v358 + v360 + *(v358 + v360));
                }

                else
                {
                  v361 = 0;
                }

                v362 = sub_A7AC40(v361, v273);
                v363 = (v316 - *v316);
                if (*v363 < 7u)
                {
                  v364 = 0;
                }

                else
                {
                  v364 = v363[3];
                  if (v364)
                  {
                    v364 = (v364 + v316 + *(v364 + v316));
                  }
                }

                v365 = *v362;
                LODWORD(__dst) = sub_A7AEE0(v364, v278 + v362[1] - 1)[1] + v365;
                v366 = sub_258D4(v313, &__dst);
                v367 = sub_4A5C(v366, " > ", 3);
                v368 = *a2;
                v369 = sub_A5706C((a1 + 4136), *a2);
                v370 = v369;
                v371 = &v369[-*v369];
                if (*v371 < 5u)
                {
                  v372 = 0;
                }

                else
                {
                  v372 = *(v371 + 2);
                  if (v372)
                  {
                    v372 += &v369[*&v369[v372]];
                  }
                }

                v373 = (v372 + 4 * v368 + 4 + *(v372 + 4 * v368 + 4));
                v374 = (v373 - *v373);
                if (*v374 >= 7u && (v375 = v374[3]) != 0)
                {
                  v376 = (v373 + v375 + *(v373 + v375));
                }

                else
                {
                  v376 = 0;
                }

                v377 = sub_A7AC40(v376, v273);
                v378 = (v370 - *v370);
                if (*v378 < 7u)
                {
                  v379 = 0;
                }

                else
                {
                  v379 = v378[3];
                  if (v379)
                  {
                    v379 = (v379 + v370 + *(v379 + v370));
                  }
                }

                v387 = *v377;
                LODWORD(__p) = *sub_A7AEE0(v379, v278 + v377[1]) + v387;
                sub_258D4(v367, &__p);
                if ((v622 & 0x10) != 0)
                {
                  v397 = v621;
                  v398 = &v615;
                  if (v621 < v616)
                  {
                    v621 = v616;
                    v397 = v616;
                    v398 = &v615;
                  }
                }

                else
                {
                  if ((v622 & 8) == 0)
                  {
                    v388 = 0;
                    v608 = 0;
                    goto LABEL_581;
                  }

                  v397 = v614;
                  v398 = &v612;
                }

                v410 = *v398;
                v388 = v397 - *v398;
                if (v388 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v388 >= 0x17)
                {
                  operator new();
                }

                v608 = v397 - *v398;
                if (v388)
                {
                  memmove(&__dst, v410, v388);
                }

LABEL_581:
                *(&__dst + v388) = 0;
                sub_7E854(&__dst, 3u);
                if (v608 < 0)
                {
                  operator delete(__dst);
                }

                v609 = v574;
                *(&v609 + *(*&v574 - 24)) = v573;
                if (SHIBYTE(v620) < 0)
                {
                  operator delete(v618);
                }

                std::locale::~locale(&v611);
                std::ostream::~ostream();
                std::ios::~ios();
                v274 = 0;
                if (!v273)
                {
                  goto LABEL_459;
                }

                goto LABEL_492;
              }

              v274 = 0;
            }
          }

          if (!v273)
          {
            goto LABEL_459;
          }

LABEL_492:
          v319 = *a2;
          v320 = sub_A5706C((a1 + 4136), *a2);
          v321 = v320;
          v322 = &v320[-*v320];
          if (*v322 < 5u)
          {
            v323 = 0;
          }

          else
          {
            v323 = *(v322 + 2);
            if (v323)
            {
              v323 += &v320[*&v320[v323]];
            }
          }

          v324 = (v323 + 4 * v319 + 4 + *(v323 + 4 * v319 + 4));
          v325 = (v324 - *v324);
          if (*v325 >= 7u && (v326 = v325[3]) != 0)
          {
            v327 = (v324 + v326 + *(v324 + v326));
          }

          else
          {
            v327 = 0;
          }

          v328 = sub_A7AC40(v327, v589);
          v329 = (v321 - *v321);
          if (*v329 < 7u)
          {
            v330 = 0;
          }

          else
          {
            v330 = v329[3];
            if (v330)
            {
              v330 = (v330 + v321 + *(v330 + v321));
            }
          }

          v331 = *v328;
          v332 = *sub_A7AEE0(v330, v278 + v328[1]);
          v333 = *a2;
          v334 = sub_A5706C((a1 + 4136), *a2);
          v335 = v334;
          v336 = &v334[-*v334];
          if (*v336 < 5u)
          {
            v337 = 0;
          }

          else
          {
            v337 = *(v336 + 2);
            if (v337)
            {
              v337 += &v334[*&v334[v337]];
            }
          }

          v338 = (v337 + 4 * v333 + 4 + *(v337 + 4 * v333 + 4));
          v339 = (v338 - *v338);
          if (*v339 >= 7u && (v340 = v339[3]) != 0)
          {
            v341 = (v338 + v340 + *(v338 + v340));
          }

          else
          {
            v341 = 0;
          }

          v342 = sub_A7AC40(v341, v273);
          v343 = (v335 - *v335);
          if (*v343 < 7u)
          {
            v344 = 0;
          }

          else
          {
            v344 = v343[3];
            if (v344)
            {
              v344 = (v344 + v335 + *(v344 + v335));
            }
          }

          v345 = *v342;
          if ((v332 + v331) <= (*sub_A7AEE0(v344, v278 + v342[1]) + v345))
          {
            goto LABEL_599;
          }

          if (sub_7E7E4(3u))
          {
            v624 = 0;
            v609 = v577;
            *(&v609 + *(*&v577 - 24)) = v575;
            v346 = (&v609 + *(*&v609 - 24));
            std::ios_base::init(v346, &v610);
            v346[1].__vftable = 0;
            v346[1].__fmtflags_ = -1;
            std::locale::locale(&v611);
            v612 = 0;
            v613 = 0;
            v614 = 0;
            v622 = 16;
            v621 = &v618;
            v618 = 0;
            memset(v619, 0, sizeof(v619));
            v620 = 5632;
            v615 = &v618;
            v616 = &v618;
            v617 = &v620;
            v347 = sub_4A5C(&v609, "On stop pattern ", 16);
            v348 = sub_2FF718(v347, *a2);
            v349 = sub_4A5C(v348, ", at stop index ", 16);
            std::ostream::operator<<();
            v350 = sub_4A5C(v349, ", trips ", 8);
            std::ostream::operator<<();
            v351 = sub_4A5C(v350, " and ", 5);
            std::ostream::operator<<();
            v352 = sub_4A5C(v351, " are not fifo with respect to their arrival times: ", 51);
            v353 = *a2;
            v354 = sub_A5706C((a1 + 4136), *a2);
            v355 = v354;
            v356 = &v354[-*v354];
            if (*v356 < 5u)
            {
              v357 = 0;
            }

            else
            {
              v357 = *(v356 + 2);
              if (v357)
              {
                v357 += &v354[*&v354[v357]];
              }
            }

            v380 = (v357 + 4 * v353 + 4 + *(v357 + 4 * v353 + 4));
            v381 = (v380 - *v380);
            if (*v381 >= 7u && (v382 = v381[3]) != 0)
            {
              v383 = (v380 + v382 + *(v380 + v382));
            }

            else
            {
              v383 = 0;
            }

            v384 = sub_A7AC40(v383, v589);
            v385 = (v355 - *v355);
            if (*v385 < 7u)
            {
              v386 = 0;
            }

            else
            {
              v386 = v385[3];
              if (v386)
              {
                v386 = (v386 + v355 + *(v386 + v355));
              }
            }

            v389 = *v384;
            LODWORD(__dst) = *sub_A7AEE0(v386, v278 + v384[1]) + v389;
            v390 = sub_258D4(v352, &__dst);
            v391 = sub_4A5C(v390, " > ", 3);
            v392 = *a2;
            v393 = sub_A5706C((a1 + 4136), *a2);
            v394 = v393;
            v395 = &v393[-*v393];
            if (*v395 < 5u)
            {
              v396 = 0;
            }

            else
            {
              v396 = *(v395 + 2);
              if (v396)
              {
                v396 += &v393[*&v393[v396]];
              }
            }

            v399 = (v396 + 4 * v392 + 4 + *(v396 + 4 * v392 + 4));
            v400 = (v399 - *v399);
            if (*v400 >= 7u && (v401 = v400[3]) != 0)
            {
              v402 = (v399 + v401 + *(v399 + v401));
            }

            else
            {
              v402 = 0;
            }

            v403 = sub_A7AC40(v402, v273);
            v404 = (v394 - *v394);
            if (*v404 < 7u)
            {
              v405 = 0;
            }

            else
            {
              v405 = v404[3];
              if (v405)
              {
                v405 = (v405 + v394 + *(v405 + v394));
              }
            }

            v406 = *v403;
            LODWORD(__p) = *sub_A7AEE0(v405, v278 + v403[1]) + v406;
            sub_258D4(v391, &__p);
            if ((v622 & 0x10) != 0)
            {
              v408 = v621;
              v409 = &v615;
              if (v621 < v616)
              {
                v621 = v616;
                v408 = v616;
                v409 = &v615;
              }
            }

            else
            {
              if ((v622 & 8) == 0)
              {
                v407 = 0;
                v608 = 0;
LABEL_594:
                *(&__dst + v407) = 0;
                sub_7E854(&__dst, 3u);
                if (v608 < 0)
                {
                  operator delete(__dst);
                }

                v609 = v574;
                *(&v609 + *(*&v574 - 24)) = v573;
                if (SHIBYTE(v620) < 0)
                {
                  operator delete(v618);
                }

                std::locale::~locale(&v611);
                std::ostream::~ostream();
                std::ios::~ios();
                v274 = 0;
                goto LABEL_599;
              }

              v408 = v614;
              v409 = &v612;
            }

            v411 = *v409;
            v407 = v408 - *v409;
            if (v407 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v407 >= 0x17)
            {
              operator new();
            }

            v608 = v408 - *v409;
            if (v407)
            {
              memmove(&__dst, v411, v407);
            }

            goto LABEL_594;
          }

          v274 = 0;
LABEL_599:
          v412 = *a2;
          v413 = sub_A5706C((a1 + 4136), *a2);
          v414 = v413;
          v415 = &v413[-*v413];
          if (*v415 < 5u)
          {
            v416 = 0;
          }

          else
          {
            v416 = *(v415 + 2);
            if (v416)
            {
              v416 += &v413[*&v413[v416]];
            }
          }

          v417 = (v416 + 4 * v412 + 4 + *(v416 + 4 * v412 + 4));
          v418 = (v417 - *v417);
          if (*v418 >= 7u && (v419 = v418[3]) != 0)
          {
            v420 = (v417 + v419 + *(v417 + v419));
          }

          else
          {
            v420 = 0;
          }

          v421 = sub_A7AC40(v420, v589);
          v422 = (v414 - *v414);
          if (*v422 < 7u)
          {
            v423 = 0;
          }

          else
          {
            v423 = v422[3];
            if (v423)
            {
              v423 = (v423 + v414 + *(v423 + v414));
            }
          }

          v424 = *v421;
          v425 = sub_A7AEE0(v423, v278 + v421[1])[1];
          v426 = *a2;
          v427 = sub_A5706C((a1 + 4136), *a2);
          v428 = v427;
          v429 = &v427[-*v427];
          if (*v429 < 5u)
          {
            v430 = 0;
          }

          else
          {
            v430 = *(v429 + 2);
            if (v430)
            {
              v430 += &v427[*&v427[v430]];
            }
          }

          v431 = (v430 + 4 * v426 + 4 + *(v430 + 4 * v426 + 4));
          v432 = (v431 - *v431);
          if (*v432 >= 7u && (v433 = v432[3]) != 0)
          {
            v434 = (v431 + v433 + *(v431 + v433));
          }

          else
          {
            v434 = 0;
          }

          v435 = sub_A7AC40(v434, v273);
          v436 = (v428 - *v428);
          if (*v436 < 7u)
          {
            v437 = 0;
          }

          else
          {
            v437 = v436[3];
            if (v437)
            {
              v437 = (v437 + v428 + *(v437 + v428));
            }
          }

          v438 = *v435;
          if ((v425 + v424) <= (sub_A7AEE0(v437, v278 + v435[1])[1] + v438))
          {
            goto LABEL_459;
          }

          if (sub_7E7E4(3u))
          {
            v624 = 0;
            v609 = v577;
            *(&v609 + *(*&v577 - 24)) = v575;
            v439 = (&v609 + *(*&v609 - 24));
            std::ios_base::init(v439, &v610);
            v439[1].__vftable = 0;
            v439[1].__fmtflags_ = -1;
            std::locale::locale(&v611);
            v612 = 0;
            v613 = 0;
            v614 = 0;
            v622 = 16;
            v621 = &v618;
            v618 = 0;
            memset(v619, 0, sizeof(v619));
            v620 = 5632;
            v615 = &v618;
            v616 = &v618;
            v617 = &v620;
            v440 = sub_4A5C(&v609, "On stop pattern ", 16);
            v441 = sub_2FF718(v440, *a2);
            v442 = sub_4A5C(v441, ", at stop index ", 16);
            std::ostream::operator<<();
            v443 = sub_4A5C(v442, ", trips ", 8);
            std::ostream::operator<<();
            v444 = sub_4A5C(v443, " and ", 5);
            std::ostream::operator<<();
            v445 = sub_4A5C(v444, " are not fifo with respect to their departure times: ", 53);
            v446 = *a2;
            v447 = sub_A5706C((a1 + 4136), *a2);
            v448 = v447;
            v449 = &v447[-*v447];
            if (*v449 < 5u)
            {
              v450 = 0;
            }

            else
            {
              v450 = *(v449 + 2);
              if (v450)
              {
                v450 += &v447[*&v447[v450]];
              }
            }

            v451 = (v450 + 4 * v446 + 4 + *(v450 + 4 * v446 + 4));
            v452 = (v451 - *v451);
            if (*v452 >= 7u && (v453 = v452[3]) != 0)
            {
              v454 = (v451 + v453 + *(v451 + v453));
            }

            else
            {
              v454 = 0;
            }

            v455 = sub_A7AC40(v454, v589);
            v456 = (v448 - *v448);
            if (*v456 < 7u)
            {
              v457 = 0;
            }

            else
            {
              v457 = v456[3];
              if (v457)
              {
                v457 = (v457 + v448 + *(v457 + v448));
              }
            }

            v458 = *v455;
            LODWORD(__dst) = sub_A7AEE0(v457, v278 + v455[1])[1] + v458;
            v459 = sub_258D4(v445, &__dst);
            v460 = sub_4A5C(v459, " > ", 3);
            v461 = *a2;
            v462 = sub_A5706C((a1 + 4136), *a2);
            v463 = v462;
            v464 = &v462[-*v462];
            if (*v464 < 5u)
            {
              v465 = 0;
            }

            else
            {
              v465 = *(v464 + 2);
              if (v465)
              {
                v465 += &v462[*&v462[v465]];
              }
            }

            v466 = (v465 + 4 * v461 + 4 + *(v465 + 4 * v461 + 4));
            v467 = (v466 - *v466);
            if (*v467 >= 7u && (v468 = v467[3]) != 0)
            {
              v469 = (v466 + v468 + *(v466 + v468));
            }

            else
            {
              v469 = 0;
            }

            v470 = sub_A7AC40(v469, v273);
            v471 = (v463 - *v463);
            if (*v471 < 7u)
            {
              v472 = 0;
            }

            else
            {
              v472 = v471[3];
              if (v472)
              {
                v472 = (v472 + v463 + *(v472 + v463));
              }
            }

            v473 = *v470;
            LODWORD(__p) = sub_A7AEE0(v472, v278 + v470[1])[1] + v473;
            sub_258D4(v460, &__p);
            if ((v622 & 0x10) != 0)
            {
              v475 = v621;
              v476 = &v615;
              if (v621 < v616)
              {
                v621 = v616;
                v475 = v616;
                v476 = &v615;
              }
            }

            else
            {
              if ((v622 & 8) == 0)
              {
                v474 = 0;
                v608 = 0;
LABEL_661:
                *(&__dst + v474) = 0;
                sub_7E854(&__dst, 3u);
                if (v608 < 0)
                {
                  operator delete(__dst);
                }

                v609 = v574;
                *(&v609 + *(*&v574 - 24)) = v573;
                if (SHIBYTE(v620) < 0)
                {
                  operator delete(v618);
                }

                std::locale::~locale(&v611);
                std::ostream::~ostream();
                std::ios::~ios();
                v274 = 0;
                goto LABEL_459;
              }

              v475 = v614;
              v476 = &v612;
            }

            v477 = *v476;
            v474 = v475 - *v476;
            if (v474 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v474 >= 0x17)
            {
              operator new();
            }

            v608 = v475 - *v476;
            if (v474)
            {
              memmove(&__dst, v477, v474);
            }

            goto LABEL_661;
          }

          v274 = 0;
LABEL_459:
          if (v583 == ++v278)
          {
            goto LABEL_452;
          }
        }
      }
    }
  }

  v274 = 1;
  return v274 & 1;
}

void sub_C986E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  sub_1959728(&a50);
  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_C98A60(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_A57920(a1, a2);
  v5 = (v4 - *v4);
  if (*v5 < 0x17u || (v6 = v5[11]) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *(v4 + v6);
  v8 = *(v4 + v6 + v7);
  if (v8)
  {
    v9 = 0;
    v10 = 4 * v8;
    v11 = (v4 + v7 + v6 + 4);
    do
    {
      while (1)
      {
        v12 = *v11;
        v13 = a3[2];
        if (v9 >= v13)
        {
          break;
        }

        *v9 = v12;
        v9 += 8;
        a3[1] = v9;
        ++v11;
        v10 -= 4;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      v14 = v9;
      v15 = v9 >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        *a3 = 0;
        sub_1794();
      }

      if (v13 >> 2 > v16)
      {
        v16 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        *a3 = 0;
        sub_1808();
      }

      v18 = (8 * v15);
      *v18 = v12;
      v9 = (v18 + 1);
      memcpy(0, 0, v14);
      a3[1] = v9;
      a3[2] = 0;
      a3[1] = v9;
      ++v11;
      v10 -= 4;
    }

    while (v10);
  }

LABEL_19:
  *a3 = 0;
}

void sub_C98C10(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C98C38(uint64_t a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339D8))
  {
    v427 = sub_A57824(-85.0, -13.0);
    sub_58168(v427 >> 17, v427 >> 49);
    dword_27339D0 = v428 | 0x40000000;
    __cxa_guard_release(&qword_27339D8);
  }

  v431 = dword_27339D0;
  v5 = sub_A57920((a1 + 4136), *v2);
  v6 = (v5 - *v5);
  if (*v6 >= 7u)
  {
    v7 = v6[3];
    if (v7)
    {
      v429 = *(v5 + v7 + *(v5 + v7));
      if (v429)
      {
        v8 = 0;
        v430 = HIDWORD(v4);
        v441 = 1;
        v435 = v2;
        while (1)
        {
          v9 = v8;
          v440 = v8;
          if ((sub_C8D924((a1 + 4136), *v2, v8) & 1) == 0)
          {
            sub_A78D38((a1 + 4136), *v2, v9, &v456);
            v10 = v456;
            v11 = v457;
            while (v10 != v11)
            {
              if (*(a1 + 16) == 1 && (sub_2D5204(**(a1 + 4184)) & 1) == 0)
              {
                v10 = (v10 + 12);
              }

              else
              {
                v12 = *(a1 + 4184);
                v13 = __ROR8__(*v10, 32);
                LODWORD(__dst[0]) = v13;
                v458 = 1;
                v445 = &v458;
                v446 = __dst;
                v14 = *(v12 + 3880) + 1;
                *(v12 + 3880) = v14;
                v15 = *(v12 + 24);
                if (!v15)
                {
                  goto LABEL_55;
                }

                if (*(v12 + 616) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 624) = v14;
                  v16 = *(v12 + 632);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else if (*(v12 + 640) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 648) = v14;
                  v16 = *(v12 + 656);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else if (*(v12 + 664) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 672) = v14;
                  v16 = *(v12 + 680);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else if (*(v12 + 688) == v13)
                {
                  ++*(v12 + 3888);
                  *(v12 + 696) = v14;
                  v16 = *(v12 + 704);
                  if (!v16)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v17 = *(v12 + 672);
                  v18 = *(v12 + 648);
                  v19 = *(v12 + 624);
                  v20 = *(v12 + 696);
                  v16 = sub_2D52A4(v15, 6, v13, 1);
                  if (v19 >= v14)
                  {
                    v21 = v14;
                  }

                  else
                  {
                    v21 = v19;
                  }

                  if (v19 >= v14)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v22 = 24;
                  }

                  if (v18 < v21)
                  {
                    v21 = v18;
                    v22 = 25;
                  }

                  if (v17 < v21)
                  {
                    v22 = 26;
                    v21 = v17;
                  }

                  v23 = v20 >= v21;
                  v24 = 27;
                  if (v23)
                  {
                    v24 = v22;
                  }

                  v25 = v12 + 40 + 24 * v24;
                  *v25 = __dst[0];
                  *(v25 + 8) = *(v12 + 3880);
                  *(v25 + 16) = v16;
                  if (!v16)
                  {
                    sub_2C9894(&v445);
                    goto LABEL_55;
                  }
                }

                v26 = (v16 + *v16);
                v27 = (v26 - *v26);
                if (*v27 >= 0x2Bu && (v28 = v27[21]) != 0 && (v29 = (v26 + v28 + *(v26 + v28)), v30 = (v29 - *v29), *v30 >= 5u) && (v31 = v30[2]) != 0 && *(v29 + v31 + *(v29 + v31)) > HIDWORD(v13))
                {
                  v32 = *(v10 + 2);
                  v33 = sub_3A25A8(*(a1 + 4184) + 24, __ROR8__(*v10, 32), 0, "trip");
                  v34 = (v33 - *v33);
                  if (*v34 >= 0x17u)
                  {
                    v35 = v34[11];
                    if (v35)
                    {
                      if (v32 < *(v33 + v35))
                      {
                        goto LABEL_88;
                      }
                    }
                  }

                  if (!sub_7E7E4(3u))
                  {
                    goto LABEL_10;
                  }

                  sub_19594F8(&v445);
                  v36 = sub_4A5C(&v445, "Stop pattern ", 13);
                  v37 = sub_2FF718(v36, *v435);
                  v38 = sub_4A5C(v37, " at trip sequence index ", 24);
                  std::ostream::operator<<();
                  v39 = sub_4A5C(v38, " has a trip ref ", 16);
                  v40 = sub_4A5C(v39, "(", 1);
                  v41 = sub_2FF718(v40, *v10);
                  sub_4A5C(v41, ", ", 2);
                  v42 = std::ostream::operator<<();
                  sub_4A5C(v42, ")", 1);
                  sub_4A5C(v39, ", whose schedule index is too large.", 36);
                  if ((v453 & 0x10) != 0)
                  {
                    v57 = p_p;
                    v58 = &v449 + 1;
                    if (p_p < v450)
                    {
                      p_p = v450;
                      v57 = v450;
                      v58 = &v449 + 1;
                    }

                    goto LABEL_77;
                  }

                  if ((v453 & 8) != 0)
                  {
                    v57 = v449;
                    v58 = &v448;
LABEL_77:
                    v59 = *v58;
                    v43 = v57 - *v58;
                    if (v43 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_3244();
                    }

                    if (v43 >= 0x17)
                    {
                      operator new();
                    }

                    v444 = v57 - *v58;
                    if (v43)
                    {
                      memmove(__dst, v59, v43);
                    }

                    goto LABEL_83;
                  }

                  v43 = 0;
                  v444 = 0;
LABEL_83:
                  *(__dst + v43) = 0;
                  sub_7E854(__dst, 3u);
                  if (v444 < 0)
                  {
                    operator delete(__dst[0]);
                  }

                  v445 = v438;
                  *(&v445 + *(v438 - 3)) = v437;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v447);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  v441 = 0;
LABEL_88:
                  v10 = (v10 + 12);
                }

                else
                {
LABEL_55:
                  if (!sub_7E7E4(3u))
                  {
                    goto LABEL_10;
                  }

                  v455 = 0;
                  v445 = v434;
                  *(&v445 + *(v434 - 3)) = v433;
                  v44 = (&v445 + *(v445 - 3));
                  std::ios_base::init(v44, &v446);
                  v44[1].__vftable = 0;
                  v44[1].__fmtflags_ = -1;
                  std::locale::locale(&v447);
                  v449 = 0u;
                  v450 = 0u;
                  v448 = 0u;
                  memset(&__p, 0, sizeof(__p));
                  v453 = 16;
                  p_p = &__p;
                  std::string::append(&__p, 0x16uLL, 0);
                  size = __p.__r_.__value_.__l.__size_;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  }

                  *(&v449 + 1) = &__p;
                  *&v450 = &__p;
                  *(&v450 + 1) = &__p + size;
                  v46 = sub_4A5C(&v445, "Stop pattern ", 13);
                  v47 = sub_2FF718(v46, *v435);
                  v48 = sub_4A5C(v47, " at trip sequence index ", 24);
                  std::ostream::operator<<();
                  v49 = sub_4A5C(v48, " has a trip ref ", 16);
                  v50 = sub_4A5C(v49, "(", 1);
                  v51 = sub_2FF718(v50, *v10);
                  sub_4A5C(v51, ", ", 2);
                  v52 = std::ostream::operator<<();
                  sub_4A5C(v52, ")", 1);
                  sub_4A5C(v49, ", which does not exist in the data.", 35);
                  if ((v453 & 0x10) != 0)
                  {
                    v54 = p_p;
                    v55 = &v449 + 1;
                    if (p_p < v450)
                    {
                      p_p = v450;
                      v54 = v450;
                      v55 = &v449 + 1;
                    }

                    goto LABEL_64;
                  }

                  if ((v453 & 8) != 0)
                  {
                    v54 = v449;
                    v55 = &v448;
LABEL_64:
                    v56 = *v55;
                    v53 = v54 - *v55;
                    if (v53 > 0x7FFFFFFFFFFFFFF7)
                    {
                      sub_3244();
                    }

                    if (v53 >= 0x17)
                    {
                      operator new();
                    }

                    v444 = v54 - *v55;
                    if (v53)
                    {
                      memmove(__dst, v56, v53);
                    }

                    goto LABEL_70;
                  }

                  v53 = 0;
                  v444 = 0;
LABEL_70:
                  *(__dst + v53) = 0;
                  sub_7E854(__dst, 3u);
                  if (v444 < 0)
                  {
                    operator delete(__dst[0]);
                  }

                  v445 = v438;
                  *(&v445 + *(v438 - 3)) = v437;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v447);
                  std::ostream::~ostream();
                  std::ios::~ios();
LABEL_10:
                  v441 = 0;
                  v10 = (v10 + 12);
                }
              }
            }

            if (v441)
            {
              v2 = v435;
              if (*(a1 + 16) == 1)
              {
                v60 = v457;
                if (v456 != v457)
                {
                  v61 = v456 + 12;
                  do
                  {
                    v62 = sub_2D5204(**(a1 + 4184));
                    if (v61 == v60)
                    {
                      v63 = 0;
                    }

                    else
                    {
                      v63 = v62;
                    }

                    v61 += 12;
                  }

                  while ((v63 & 1) != 0);
                  if (!v62)
                  {
                    goto LABEL_110;
                  }
                }
              }

              v64 = sub_A57920((a1 + 4136), *v435);
              v65 = (v64 - *v64);
              if (*v65 >= 0x15u && v65[10])
              {
                v66 = v456;
                v67 = v457;
                while (v66 != v67)
                {
                  v68 = *v66;
                  v69 = sub_3A231C(*(a1 + 4184) + 24, __ROR8__(*v66, 32), 0);
                  v70 = &v69[-*v69];
                  if (*v70 < 5u)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    v71 = *(v70 + 2);
                    if (v71)
                    {
                      v71 += &v69[*&v69[v71]];
                    }
                  }

                  v72 = (v71 + 4 * v68 + 4 + *(v71 + 4 * v68 + 4));
                  v73 = (v72 - *v72);
                  if (*v73 >= 0x2Bu)
                  {
                    v74 = v73[21];
                    if (v74)
                    {
                      if (*(v72 + v74) != -1)
                      {
                        goto LABEL_110;
                      }
                    }
                  }

                  v66 = (v66 + 12);
                }

                if (sub_7E7E4(3u))
                {
                  sub_19594F8(&v445);
                  v75 = sub_4A5C(&v445, "Stop pattern ", 13);
                  v76 = sub_2FF718(v75, *v435);
                  v77 = sub_4A5C(v76, " has boarding restrictions and none of the trips at sequence index ", 67);
                  std::ostream::operator<<();
                  sub_4A5C(v77, " have any boarding restrictions.", 32);
                  if ((v453 & 0x10) != 0)
                  {
                    v79 = p_p;
                    v80 = &v449 + 1;
                    if (p_p < v450)
                    {
                      p_p = v450;
                      v79 = v450;
                      v80 = &v449 + 1;
                    }
                  }

                  else
                  {
                    if ((v453 & 8) == 0)
                    {
                      v78 = 0;
                      v444 = 0;
                      goto LABEL_125;
                    }

                    v79 = v449;
                    v80 = &v448;
                  }

                  v81 = *v80;
                  v78 = v79 - *v80;
                  if (v78 > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_3244();
                  }

                  if (v78 >= 0x17)
                  {
                    operator new();
                  }

                  v444 = v79 - *v80;
                  if (v78)
                  {
                    memmove(__dst, v81, v78);
                  }

LABEL_125:
                  *(__dst + v78) = 0;
                  sub_7E854(__dst, 3u);
                  if (v444 < 0)
                  {
                    operator delete(__dst[0]);
                  }

                  v445 = v438;
                  *(&v445 + *(v438 - 3)) = v437;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v447);
                  std::ostream::~ostream();
                  std::ios::~ios();
                }

                v441 = 0;
              }

              else
              {
LABEL_110:
                v441 = 1;
              }

              v82 = sub_A57920((a1 + 4136), *v435);
              v83 = (v82 - *v82);
              if (*v83 >= 9u)
              {
                v84 = v83[4];
                if (v84)
                {
                  v432 = *(v82 + v84 + *(v82 + v84));
                  if (v432)
                  {
                    for (i = 0; v432 != i; ++i)
                    {
                      v86 = *v435;
                      v87 = sub_A5706C((a1 + 4136), *v435);
                      v88 = v87;
                      v89 = &v87[-*v87];
                      if (*v89 < 5u)
                      {
                        v90 = 0;
                      }

                      else
                      {
                        v90 = *(v89 + 2);
                        if (v90)
                        {
                          v90 += &v87[*&v87[v90]];
                        }
                      }

                      v91 = (v90 + 4 * v86 + 4 + *(v90 + 4 * v86 + 4));
                      v92 = (v91 - *v91);
                      if (*v92 >= 9u && (v93 = v92[4]) != 0)
                      {
                        v94 = (v91 + v93 + *(v91 + v93));
                      }

                      else
                      {
                        v94 = 0;
                      }

                      v95 = sub_A571D4(v94, i);
                      v96 = (v88 - *v88);
                      if (*v96 < 0xBu)
                      {
                        v97 = 0;
                        v98 = (v91 - *v91);
                        if (*v98 < 0x11u)
                        {
                          goto LABEL_153;
                        }
                      }

                      else
                      {
                        v97 = v96[5];
                        if (v97)
                        {
                          v97 = (v97 + v88 + *(v97 + v88));
                        }

                        v98 = (v91 - *v91);
                        if (*v98 < 0x11u)
                        {
LABEL_153:
                          LODWORD(v99) = 0;
                          goto LABEL_154;
                        }
                      }

                      v99 = v98[8];
                      if (v98[8])
                      {
                        LODWORD(v99) = *(v91 + v99);
                      }

LABEL_154:
                      v100 = sub_A57320(v97, v99 + *(v91 + v98[2] + *(v91 + v98[2])) * v440 + *(v95 + 14));
                      if (v100)
                      {
                        v442 = __ROR8__(*v100, 32);
                        v101 = v100[2];
                      }

                      else
                      {
                        v101 = 0;
                        v442 = 0xFFFFFFFFLL;
                      }

                      v102 = sub_A57920((a1 + 4136), *v435);
                      v103 = (v102 - *v102);
                      if (*v103 >= 9u && (v104 = v103[4]) != 0)
                      {
                        v105 = (v102 + v104 + *(v102 + v104));
                      }

                      else
                      {
                        v105 = 0;
                      }

                      v439 = *(sub_A571D4(v105, i) + 6);
                      v436 = HIDWORD(v442);
                      if (*(a1 + 16) == 1 && (sub_2D5204(**(a1 + 4184)) & 1) == 0)
                      {
                        continue;
                      }

                      v106 = sub_A57920((a1 + 4136), *v435);
                      v107 = (v106 - *v106);
                      if (*v107 >= 9u && (v108 = v107[4]) != 0)
                      {
                        v109 = (v106 + v108 + *(v106 + v108));
                      }

                      else
                      {
                        v109 = 0;
                      }

                      v110 = sub_A571D4(v109, i)[2];
                      v111 = __ROR8__(v442, 32);
                      v112 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v113 = &v112[-*v112];
                      v114 = *v113;
                      if (v114 <= 4)
                      {
                        v118 = 0;
                        v116 = (4 * v442 + 4 + dword_4[v442]);
                        v119 = (v116 - *(&dword_4[v442] + dword_4[v442]));
                        if (*v119 < 0xDu)
                        {
                          goto LABEL_179;
                        }
                      }

                      else
                      {
                        v115 = *(v113 + 2);
                        if (*(v113 + 2))
                        {
                          v115 += &v112[*&v112[v115]];
                        }

                        v116 = (v115 + 4 * v442 + 4 + *(v115 + 4 * v442 + 4));
                        if (v114 >= 7 && (v117 = *(v113 + 3)) != 0)
                        {
                          v118 = &v112[v117 + *&v112[v117]];
                          v119 = (v116 - *v116);
                          if (*v119 < 0xDu)
                          {
                            goto LABEL_179;
                          }
                        }

                        else
                        {
                          v118 = 0;
                          v119 = (v116 - *v116);
                          if (*v119 < 0xDu)
                          {
                            goto LABEL_179;
                          }
                        }
                      }

                      v120 = v119[6];
                      if (v120)
                      {
                        v121 = *(v116 + v120);
                        goto LABEL_180;
                      }

LABEL_179:
                      v121 = -1;
LABEL_180:
                      if (v110 != *(sub_3A2E6C(v118, v121 + v439) + 10))
                      {
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v122 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v123 = sub_2FF718(v122, *v435);
                          v124 = sub_4A5C(v123, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v125 = sub_4A5C(v124, " and stop index ", 16);
                          std::ostream::operator<<();
                          sub_4A5C(v125, " has mismatching buffer durations (sp: ", 39);
                          v126 = sub_A57920((a1 + 4136), *v435);
                          v127 = (v126 - *v126);
                          if (*v127 >= 9u && (v128 = v127[4]) != 0)
                          {
                            v129 = (v126 + v128 + *(v126 + v128));
                          }

                          else
                          {
                            v129 = 0;
                          }

                          sub_A571D4(v129, i);
                          v130 = std::ostream::operator<<();
                          sub_4A5C(v130, " sec; trip: ", 12);
                          v131 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v132 = &v131[-*v131];
                          v133 = *v132;
                          if (v133 <= 4)
                          {
                            v137 = 0;
                            v135 = (4 * v442 + 4 + dword_4[v442]);
                            v138 = (v135 - *(&dword_4[v442] + dword_4[v442]));
                            if (*v138 >= 0xDu)
                            {
                              goto LABEL_196;
                            }

LABEL_198:
                            v140 = -1;
                          }

                          else
                          {
                            v134 = *(v132 + 2);
                            if (*(v132 + 2))
                            {
                              v134 += &v131[*&v131[v134]];
                            }

                            v135 = (v134 + 4 * v442 + 4 + *(v134 + 4 * v442 + 4));
                            if (v133 >= 7 && (v136 = *(v132 + 3)) != 0)
                            {
                              v137 = &v131[v136 + *&v131[v136]];
                              v138 = (v135 - *v135);
                              if (*v138 < 0xDu)
                              {
                                goto LABEL_198;
                              }
                            }

                            else
                            {
                              v137 = 0;
                              v138 = (v135 - *v135);
                              if (*v138 < 0xDu)
                              {
                                goto LABEL_198;
                              }
                            }

LABEL_196:
                            v139 = v138[6];
                            if (!v139)
                            {
                              goto LABEL_198;
                            }

                            v140 = *(v135 + v139);
                          }

                          sub_3A2E6C(v137, v140 + v439);
                          v141 = std::ostream::operator<<();
                          sub_4A5C(v141, " sec.", 5);
                          if ((v453 & 0x10) != 0)
                          {
                            v143 = p_p;
                            v144 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v143 = v450;
                              v144 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v142 = 0;
                              v444 = 0;
                              goto LABEL_211;
                            }

                            v143 = v449;
                            v144 = &v448;
                          }

                          v145 = *v144;
                          v142 = v143 - *v144;
                          if (v142 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v142 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v143 - *v144;
                          if (v142)
                          {
                            memmove(__dst, v145, v142);
                          }

LABEL_211:
                          *(__dst + v142) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v146 = sub_585D8((*(a1 + 4184) + 3896));
                      v147 = *(a1 + 4184);
                      if (!sub_4C2B90(v147 + 3896) || !*(v147 + 3960) || (v148 = sub_39F47C(*(*(a1 + 4184) + 3960), v111, v101, v146)) == 0)
                      {
                        v151 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                        v152 = &v151[-*v151];
                        v153 = *v152;
                        if (v153 <= 4)
                        {
                          v157 = 0;
                          v155 = (4 * v442 + 4 + dword_4[v442]);
                          v158 = (v155 - *(&dword_4[v442] + dword_4[v442]));
                          if (*v158 >= 0xDu)
                          {
                            goto LABEL_232;
                          }

LABEL_234:
                          v160 = -1;
                        }

                        else
                        {
                          v154 = *(v152 + 2);
                          if (*(v152 + 2))
                          {
                            v154 += &v151[*&v151[v154]];
                          }

                          v155 = (v154 + 4 * v442 + 4 + *(v154 + 4 * v442 + 4));
                          if (v153 >= 7 && (v156 = *(v152 + 3)) != 0)
                          {
                            v157 = &v151[v156 + *&v151[v156]];
                            v158 = (v155 - *v155);
                            if (*v158 < 0xDu)
                            {
                              goto LABEL_234;
                            }
                          }

                          else
                          {
                            v157 = 0;
                            v158 = (v155 - *v155);
                            if (*v158 < 0xDu)
                            {
                              goto LABEL_234;
                            }
                          }

LABEL_232:
                          v159 = v158[6];
                          if (!v159)
                          {
                            goto LABEL_234;
                          }

                          v160 = *(v155 + v159);
                        }

                        v150 = sub_3A2E6C(v157, v160 + v439) + 4;
                        goto LABEL_236;
                      }

                      v149 = v148[5];
                      if (0xCCCCCCCCCCCCCCCDLL * ((v148[6] - v149) >> 2) <= v439)
                      {
                        v161 = 0;
                        goto LABEL_237;
                      }

                      v150 = (v149 + 20 * v439 + 16);
LABEL_236:
                      v161 = *v150 != 1;
LABEL_237:
                      v162 = sub_585D8((*(a1 + 4184) + 3896));
                      v163 = *(a1 + 4184);
                      if (!sub_4C2B90(v163 + 3896) || !*(v163 + 3960) || (v164 = sub_39F47C(*(*(a1 + 4184) + 3960), v111, v101, v162)) == 0)
                      {
                        v167 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                        v168 = &v167[-*v167];
                        v169 = *v168;
                        if (v169 <= 4)
                        {
                          v173 = 0;
                          v171 = (4 * v442 + 4 + dword_4[v442]);
                          v174 = (v171 - *(&dword_4[v442] + dword_4[v442]));
                          if (*v174 >= 0xDu)
                          {
                            goto LABEL_252;
                          }

LABEL_254:
                          v176 = -1;
                        }

                        else
                        {
                          v170 = *(v168 + 2);
                          if (*(v168 + 2))
                          {
                            v170 += &v167[*&v167[v170]];
                          }

                          v171 = (v170 + 4 * v442 + 4 + *(v170 + 4 * v442 + 4));
                          if (v169 >= 7 && (v172 = *(v168 + 3)) != 0)
                          {
                            v173 = &v167[v172 + *&v167[v172]];
                            v174 = (v171 - *v171);
                            if (*v174 < 0xDu)
                            {
                              goto LABEL_254;
                            }
                          }

                          else
                          {
                            v173 = 0;
                            v174 = (v171 - *v171);
                            if (*v174 < 0xDu)
                            {
                              goto LABEL_254;
                            }
                          }

LABEL_252:
                          v175 = v174[6];
                          if (!v175)
                          {
                            goto LABEL_254;
                          }

                          v176 = *(v171 + v175);
                        }

                        v166 = sub_3A2E6C(v173, v176 + v439) + 17;
LABEL_256:
                        v177 = *v166 != 1;
                        if (v431 == v430)
                        {
                          goto LABEL_257;
                        }

                        goto LABEL_269;
                      }

                      v165 = v164[5];
                      if (0xCCCCCCCCCCCCCCCDLL * ((v164[6] - v165) >> 2) > v439)
                      {
                        v166 = (v165 + 20 * v439 + 17);
                        goto LABEL_256;
                      }

                      v177 = 0;
                      if (v431 == v430)
                      {
LABEL_257:
                        if ((v161 & 1) == 0)
                        {
                          v178 = sub_A57920((a1 + 4136), *v435);
                          v179 = (v178 - *v178);
                          if (*v179 >= 9u && (v180 = v179[4]) != 0)
                          {
                            v181 = (v178 + v180 + *(v178 + v180));
                          }

                          else
                          {
                            v181 = 0;
                          }

                          if ((*(sub_A571D4(v181, i) + 15) & 2) != 0)
                          {
                            if (sub_7E7E4(3u))
                            {
                              sub_19594F8(&v445);
                              v182 = sub_4A5C(&v445, "Realtime stop pattern ", 22);
                              v183 = sub_2FF718(v182, *v435);
                              v184 = sub_4A5C(v183, " at trip sequence index ", 24);
                              std::ostream::operator<<();
                              v185 = sub_4A5C(v184, " and stop index ", 16);
                              std::ostream::operator<<();
                              sub_4A5C(v185, " has pickup flag where the trip does not (sp: ", 46);
                              v186 = sub_A57920((a1 + 4136), *v435);
                              v187 = (v186 - *v186);
                              if (*v187 >= 9u && (v188 = v187[4]) != 0)
                              {
                                v189 = (v186 + v188 + *(v186 + v188));
                              }

                              else
                              {
                                v189 = 0;
                              }

                              sub_A571D4(v189, i);
                              v207 = std::ostream::operator<<();
                              sub_4A5C(v207, "; trip: ", 8);
                              v208 = std::ostream::operator<<();
                              sub_4A5C(v208, ").", 2);
                              if ((v453 & 0x10) != 0)
                              {
                                v228 = p_p;
                                v229 = &v449 + 1;
                                if (p_p < v450)
                                {
                                  p_p = v450;
                                  v228 = v450;
                                  v229 = &v449 + 1;
                                }
                              }

                              else
                              {
                                if ((v453 & 8) == 0)
                                {
                                  v209 = 0;
                                  v444 = 0;
                                  goto LABEL_332;
                                }

                                v228 = v449;
                                v229 = &v448;
                              }

                              v231 = *v229;
                              v209 = v228 - *v229;
                              if (v209 > 0x7FFFFFFFFFFFFFF7)
                              {
                                sub_3244();
                              }

                              if (v209 >= 0x17)
                              {
                                operator new();
                              }

                              v444 = v228 - *v229;
                              if (v209)
                              {
                                memmove(__dst, v231, v209);
                              }

LABEL_332:
                              *(__dst + v209) = 0;
                              sub_7E854(__dst, 3u);
                              if (v444 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v445 = v438;
                              *(&v445 + *(v438 - 3)) = v437;
                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              std::locale::~locale(&v447);
                              std::ostream::~ostream();
                              std::ios::~ios();
                            }

                            v441 = 0;
                          }
                        }

                        if (!v177)
                        {
                          v232 = sub_A57920((a1 + 4136), *v435);
                          v233 = (v232 - *v232);
                          if (*v233 >= 9u && (v234 = v233[4]) != 0)
                          {
                            v235 = (v232 + v234 + *(v232 + v234));
                          }

                          else
                          {
                            v235 = 0;
                          }

                          if (*(sub_A571D4(v235, i) + 15))
                          {
                            if (sub_7E7E4(3u))
                            {
                              sub_19594F8(&v445);
                              v236 = sub_4A5C(&v445, "Realtime stop pattern ", 22);
                              v237 = sub_2FF718(v236, *v435);
                              v238 = sub_4A5C(v237, " at trip sequence index ", 24);
                              std::ostream::operator<<();
                              v239 = sub_4A5C(v238, " and stop index ", 16);
                              std::ostream::operator<<();
                              sub_4A5C(v239, " has dropoff flag where the trip does not (sp: ", 47);
                              v240 = sub_A57920((a1 + 4136), *v435);
                              v241 = (v240 - *v240);
                              if (*v241 >= 9u && (v242 = v241[4]) != 0)
                              {
                                v243 = (v240 + v242 + *(v240 + v242));
                              }

                              else
                              {
                                v243 = 0;
                              }

                              sub_A571D4(v243, i);
                              v244 = std::ostream::operator<<();
                              sub_4A5C(v244, "; trip: ", 8);
                              v245 = std::ostream::operator<<();
                              sub_4A5C(v245, ").", 2);
                              if ((v453 & 0x10) != 0)
                              {
                                v246 = p_p;
                                v247 = &v449 + 1;
                                if (p_p < v450)
                                {
                                  p_p = v450;
                                  v246 = v450;
                                  v247 = &v449 + 1;
                                }
                              }

                              else
                              {
                                if ((v453 & 8) == 0)
                                {
                                  v225 = 0;
                                  v444 = 0;
                                  goto LABEL_361;
                                }

                                v246 = v449;
                                v247 = &v448;
                              }

                              v230 = *v247;
                              v225 = v246 - *v247;
                              if (v225 > 0x7FFFFFFFFFFFFFF7)
                              {
                                sub_3244();
                              }

                              if (v225 >= 0x17)
                              {
                                operator new();
                              }

                              v444 = v246 - *v247;
                              if (v225)
                              {
                                goto LABEL_360;
                              }

LABEL_361:
                              *(__dst + v225) = 0;
                              sub_7E854(__dst, 3u);
                              if (v444 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v445 = v438;
                              *(&v445 + *(v438 - 3)) = v437;
                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              std::locale::~locale(&v447);
                              std::ostream::~ostream();
                              std::ios::~ios();
                            }

                            goto LABEL_366;
                          }
                        }

                        goto LABEL_367;
                      }

LABEL_269:
                      v190 = sub_A57920((a1 + 4136), *v435);
                      v191 = (v190 - *v190);
                      if (*v191 >= 9u && (v192 = v191[4]) != 0)
                      {
                        v193 = (v190 + v192 + *(v190 + v192));
                      }

                      else
                      {
                        v193 = 0;
                      }

                      if (v161 != (*(sub_A571D4(v193, i) + 15) & 2) >> 1)
                      {
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v194 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v195 = sub_2FF718(v194, *v435);
                          v196 = sub_4A5C(v195, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v197 = sub_4A5C(v196, " and stop index ", 16);
                          std::ostream::operator<<();
                          sub_4A5C(v197, " has mismatching pickup flags (sp: ", 35);
                          v198 = sub_A57920((a1 + 4136), *v435);
                          v199 = (v198 - *v198);
                          if (*v199 >= 9u && (v200 = v199[4]) != 0)
                          {
                            v201 = (v198 + v200 + *(v198 + v200));
                          }

                          else
                          {
                            v201 = 0;
                          }

                          sub_A571D4(v201, i);
                          v202 = std::ostream::operator<<();
                          sub_4A5C(v202, "; trip: ", 8);
                          v203 = std::ostream::operator<<();
                          sub_4A5C(v203, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v205 = p_p;
                            v206 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v205 = v450;
                              v206 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v204 = 0;
                              v444 = 0;
                              goto LABEL_295;
                            }

                            v205 = v449;
                            v206 = &v448;
                          }

                          v210 = *v206;
                          v204 = v205 - *v206;
                          if (v204 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v204 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v205 - *v206;
                          if (v204)
                          {
                            memmove(__dst, v210, v204);
                          }

LABEL_295:
                          *(__dst + v204) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v211 = sub_A57920((a1 + 4136), *v435);
                      v212 = (v211 - *v211);
                      if (*v212 >= 9u && (v213 = v212[4]) != 0)
                      {
                        v214 = (v211 + v213 + *(v211 + v213));
                      }

                      else
                      {
                        v214 = 0;
                      }

                      if (v177 != (*(sub_A571D4(v214, i) + 15) & 1))
                      {
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v215 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v216 = sub_2FF718(v215, *v435);
                          v217 = sub_4A5C(v216, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v218 = sub_4A5C(v217, " and stop index ", 16);
                          std::ostream::operator<<();
                          sub_4A5C(v218, " has mismatching dropoff flags (sp: ", 36);
                          v219 = sub_A57920((a1 + 4136), *v435);
                          v220 = (v219 - *v219);
                          if (*v220 >= 9u && (v221 = v220[4]) != 0)
                          {
                            v222 = (v219 + v221 + *(v219 + v221));
                          }

                          else
                          {
                            v222 = 0;
                          }

                          sub_A571D4(v222, i);
                          v223 = std::ostream::operator<<();
                          sub_4A5C(v223, "; trip: ", 8);
                          v224 = std::ostream::operator<<();
                          sub_4A5C(v224, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v226 = p_p;
                            v227 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v226 = v450;
                              v227 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v225 = 0;
                              v444 = 0;
                              goto LABEL_361;
                            }

                            v226 = v449;
                            v227 = &v448;
                          }

                          v230 = *v227;
                          v225 = v226 - *v227;
                          if (v225 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v225 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v226 - *v227;
                          if (!v225)
                          {
                            goto LABEL_361;
                          }

LABEL_360:
                          memmove(__dst, v230, v225);
                          goto LABEL_361;
                        }

LABEL_366:
                        v441 = 0;
                      }

LABEL_367:
                      v248 = sub_A57920((a1 + 4136), *v435);
                      v249 = (v248 - *v248);
                      if (*v249 < 0x15u || !v249[10])
                      {
                        goto LABEL_421;
                      }

                      v250 = sub_A57920((a1 + 4136), *v435);
                      v251 = (v250 - *v250);
                      if (*v251 >= 0x15u && (v252 = v251[10]) != 0)
                      {
                        v253 = sub_BCAB48((v250 + v252 + *(v250 + v252)), i);
                      }

                      else
                      {
                        v253 = 0;
                      }

                      v254 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v255 = &v254[-*v254];
                      if (*v255 < 5u)
                      {
                        v256 = 0;
                      }

                      else
                      {
                        v256 = *(v255 + 2);
                        if (v256)
                        {
                          v256 += &v254[*&v254[v256]];
                        }
                      }

                      v257 = (v256 + 4 * v442 + 4 + *(v256 + 4 * v442 + 4));
                      v258 = (v257 - *v257);
                      if (*v258 >= 0x2Bu)
                      {
                        v259 = v258[21];
                        if (v259)
                        {
                          if (*(v257 + v259) != -1)
                          {
                            v260 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                            v261 = &v260[-*v260];
                            v262 = *v261;
                            if (v262 <= 4)
                            {
                              v266 = 0;
                              v264 = (4 * v442 + 4 + dword_4[v442]);
                              v267 = (v264 - *(&dword_4[v442] + dword_4[v442]));
                              if (*v267 >= 0x2Bu)
                              {
                                goto LABEL_390;
                              }

LABEL_392:
                              v269 = -1;
                            }

                            else
                            {
                              v263 = *(v261 + 2);
                              if (*(v261 + 2))
                              {
                                v263 += &v260[*&v260[v263]];
                              }

                              v264 = (v263 + 4 * v442 + 4 + *(v263 + 4 * v442 + 4));
                              if (v262 >= 0x17 && (v265 = *(v261 + 11)) != 0)
                              {
                                v266 = &v260[v265 + *&v260[v265]];
                                v267 = (v264 - *v264);
                                if (*v267 < 0x2Bu)
                                {
                                  goto LABEL_392;
                                }
                              }

                              else
                              {
                                v266 = 0;
                                v267 = (v264 - *v264);
                                if (*v267 < 0x2Bu)
                                {
                                  goto LABEL_392;
                                }
                              }

LABEL_390:
                              v268 = v267[21];
                              if (!v268)
                              {
                                goto LABEL_392;
                              }

                              v269 = *(v264 + v268);
                            }

                            v270 = sub_A7F86C(v266, v269 + v439);
                            v271 = (v270 - *v270);
                            if (*v271 >= 5u)
                            {
                              v272 = v271[2];
                              if (v272)
                              {
                                if (*(v270 + v272 + *(v270 + v272)))
                                {
                                  operator new();
                                }
                              }
                            }
                          }
                        }
                      }

                      if (!v253 || !sub_7E7E4(3u))
                      {
                        goto LABEL_421;
                      }

                      sub_19594F8(&v445);
                      v273 = sub_4A5C(&v445, "Stop pattern ", 13);
                      v274 = sub_2FF718(v273, *v435);
                      v275 = sub_4A5C(v274, " at trip sequence index ", 24);
                      std::ostream::operator<<();
                      v276 = sub_4A5C(v275, " and stop index ", 16);
                      std::ostream::operator<<();
                      sub_4A5C(v276, " has mismatching number of boarding restriction identifiers (sp: ", 65);
                      v277 = sub_A57920((a1 + 4136), *v435);
                      v278 = (v277 - *v277);
                      if (*v278 >= 0x15u)
                      {
                        v279 = v278[10];
                        if (v279)
                        {
                          sub_BCAB48((v277 + v279 + *(v277 + v279)), i);
                        }
                      }

                      v280 = std::ostream::operator<<();
                      sub_4A5C(v280, "; trip: ", 8);
                      sub_C9CCF4((a1 + 4184), v442, v439, __dst);
                      v281 = std::ostream::operator<<();
                      sub_4A5C(v281, ").", 2);
                      if (__dst[0])
                      {
                        __dst[1] = __dst[0];
                        operator delete(__dst[0]);
                      }

                      if ((v453 & 0x10) != 0)
                      {
                        v283 = p_p;
                        v284 = &v449 + 1;
                        if (p_p < v450)
                        {
                          p_p = v450;
                          v283 = v450;
                          v284 = &v449 + 1;
                        }

                        goto LABEL_410;
                      }

                      if ((v453 & 8) != 0)
                      {
                        v283 = v449;
                        v284 = &v448;
LABEL_410:
                        v285 = *v284;
                        v282 = v283 - *v284;
                        if (v282 > 0x7FFFFFFFFFFFFFF7)
                        {
                          sub_3244();
                        }

                        if (v282 >= 0x17)
                        {
                          operator new();
                        }

                        v444 = v283 - *v284;
                        if (v282)
                        {
                          memmove(__dst, v285, v282);
                        }

                        goto LABEL_416;
                      }

                      v282 = 0;
                      v444 = 0;
LABEL_416:
                      *(__dst + v282) = 0;
                      sub_7E854(__dst, 3u);
                      if (v444 < 0)
                      {
                        operator delete(__dst[0]);
                      }

                      v445 = v438;
                      *(&v445 + *(v438 - 3)) = v437;
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      std::locale::~locale(&v447);
                      std::ostream::~ostream();
                      std::ios::~ios();
LABEL_421:
                      v286 = sub_BD5F34((a1 + 4136), *v435, i);
                      v287 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v288 = &v287[-*v287];
                      if (*v288 >= 5u && (v289 = *(v288 + 2)) != 0)
                      {
                        v290 = &v287[v289 + *&v287[v289]];
                      }

                      else
                      {
                        v290 = 0;
                      }

                      v291 = sub_BCA9F8(v290, v442);
                      v292 = HIDWORD(v442);
                      v293 = (v291 - *v291);
                      v294 = *v293;
                      if (v294 < 0x27)
                      {
                        if (v294 < 0x11)
                        {
                          goto LABEL_434;
                        }
                      }

                      else if (v293[19])
                      {
                        v295 = sub_BCAB48((v291 + v293[19] + *(v291 + v293[19])), v439);
                        v296 = HIDWORD(v442);
                        if (v295 != -1)
                        {
                          goto LABEL_432;
                        }

                        goto LABEL_434;
                      }

                      v297 = v293[8];
                      if (v297)
                      {
                        v295 = *(v291 + v297);
                        v296 = HIDWORD(v442);
                        if (v295 != -1)
                        {
LABEL_432:
                          if (v295 != v286)
                          {
                            goto LABEL_436;
                          }

                          goto LABEL_435;
                        }
                      }

LABEL_434:
                      v296 = 0;
                      if (v286 != -1)
                      {
                        goto LABEL_436;
                      }

LABEL_435:
                      if (HIDWORD(v286) != v296)
                      {
LABEL_436:
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v298 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v299 = sub_2FF718(v298, *v435);
                          v300 = sub_4A5C(v299, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v301 = sub_4A5C(v300, " and stop index ", 16);
                          std::ostream::operator<<();
                          v302 = sub_4A5C(v301, " has mismatching direction name ref (sp: ", 41);
                          v303 = sub_BD5F34((a1 + 4136), *v435, i);
                          v304 = sub_2FF718(v302, v303);
                          v305 = sub_4A5C(v304, "; trip: ", 8);
                          v306 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v307 = &v306[-*v306];
                          if (*v307 >= 5u && (v308 = *(v307 + 2)) != 0)
                          {
                            v309 = &v306[v308 + *&v306[v308]];
                          }

                          else
                          {
                            v309 = 0;
                          }

                          v310 = sub_BCA9F8(v309, v442);
                          v311 = (v310 - *v310);
                          v312 = *v311;
                          if (v312 < 0x27)
                          {
                            if (v312 < 0x11)
                            {
                              goto LABEL_448;
                            }
                          }

                          else if (v311[19])
                          {
                            v313 = sub_BCAB48((v310 + v311[19] + *(v310 + v311[19])), v439);
                            v314 = HIDWORD(v442);
                            if (v313 == -1)
                            {
                              goto LABEL_448;
                            }

                            goto LABEL_449;
                          }

                          v315 = v311[8];
                          if (!v315 || (v313 = *(v310 + v315), v314 = HIDWORD(v442), v313 == -1))
                          {
LABEL_448:
                            v314 = 0;
                            v313 = -1;
                          }

LABEL_449:
                          v316 = sub_2FF718(v305, v313 | (v314 << 32));
                          sub_4A5C(v316, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v318 = p_p;
                            v319 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v318 = v450;
                              v319 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v317 = 0;
                              v444 = 0;
                              goto LABEL_461;
                            }

                            v318 = v449;
                            v319 = &v448;
                          }

                          v320 = *v319;
                          v317 = v318 - *v319;
                          if (v317 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v317 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v318 - *v319;
                          if (v317)
                          {
                            memmove(__dst, v320, v317);
                          }

LABEL_461:
                          *(__dst + v317) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v321 = sub_BD5F34((a1 + 4136), *v435, i);
                      v322 = -1;
                      if (HIDWORD(v321) && v321 != 0xFFFFFFFFLL)
                      {
                        v323 = sub_BCAC94(*(a1 + 4136) + 24, v321, 0, "routing direction name");
                        v324 = (v323 - *v323);
                        if (*v324 >= 5u && (v325 = v324[2]) != 0)
                        {
                          v322 = *(v323 + v325);
                        }

                        else
                        {
                          v322 = 0;
                        }
                      }

                      v326 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v327 = &v326[-*v326];
                      if (*v327 >= 5u && (v328 = *(v327 + 2)) != 0)
                      {
                        v329 = &v326[v328 + *&v326[v328]];
                      }

                      else
                      {
                        v329 = 0;
                      }

                      v330 = sub_BCA9F8(v329, v442);
                      v331 = (v330 - *v330);
                      v332 = *v331;
                      if (v332 < 0x27)
                      {
                        if (v332 < 0x11)
                        {
                          if (v322 == -1)
                          {
                            goto LABEL_530;
                          }

                          goto LABEL_493;
                        }
                      }

                      else if (v331[19])
                      {
                        v333 = sub_BCAB48((v330 + v331[19] + *(v330 + v331[19])), v439);
                        LODWORD(v334) = -1;
                        if (v333 == -1)
                        {
                          goto LABEL_492;
                        }

                        goto LABEL_484;
                      }

                      v334 = v331[8];
                      if (!v334)
                      {
                        LODWORD(v334) = -1;
                        goto LABEL_492;
                      }

                      v333 = *(v330 + v334);
                      LODWORD(v334) = -1;
                      if (v333 == -1)
                      {
                        goto LABEL_492;
                      }

LABEL_484:
                      if (v436)
                      {
                        v335 = sub_BCAC94(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v333, 0, "routing direction name");
                        v336 = (v335 - *v335);
                        if (*v336 < 5u)
                        {
                          if (!v322)
                          {
                            goto LABEL_530;
                          }

                          goto LABEL_493;
                        }

                        v334 = v336[2];
                        if (v334)
                        {
                          if (v322 == *(v335 + v334))
                          {
                            goto LABEL_530;
                          }

LABEL_493:
                          if (!sub_7E7E4(3u))
                          {
                            goto LABEL_529;
                          }

                          sub_19594F8(&v445);
                          v337 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v338 = sub_2FF718(v337, *v435);
                          v339 = sub_4A5C(v338, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v340 = sub_4A5C(v339, " and stop index ", 16);
                          std::ostream::operator<<();
                          v341 = sub_4A5C(v340, " has mismatching direction name sort key (sp: ", 46);
                          v342 = sub_BD5F34((a1 + 4136), *v435, i);
                          if (HIDWORD(v342) && v342 != 0xFFFFFFFFLL)
                          {
                            sub_BCAC94(*(a1 + 4136) + 24, v342, 0, "routing direction name");
                          }

                          std::ostream::operator<<();
                          v343 = sub_4A5C(v341, "; trip: ", 8);
                          v344 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v345 = &v344[-*v344];
                          if (*v345 >= 5u && (v346 = *(v345 + 2)) != 0)
                          {
                            v347 = &v344[v346 + *&v344[v346]];
                          }

                          else
                          {
                            v347 = 0;
                          }

                          v348 = sub_BCA9F8(v347, v442);
                          v349 = (v348 - *v348);
                          v350 = *v349;
                          if (v350 < 0x27)
                          {
                            if (v350 < 0x11)
                            {
                              goto LABEL_512;
                            }
                          }

                          else if (v349[19])
                          {
                            v351 = sub_BCAB48((v348 + v349[19] + *(v348 + v349[19])), v439);
                            if (v351 == -1)
                            {
                              goto LABEL_512;
                            }

LABEL_510:
                            if (v436)
                            {
                              sub_BCAC94(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v351, 0, "routing direction name");
                            }

LABEL_512:
                            std::ostream::operator<<();
                            sub_4A5C(v343, ").", 2);
                            if ((v453 & 0x10) != 0)
                            {
                              v354 = p_p;
                              v355 = &v449 + 1;
                              if (p_p < v450)
                              {
                                p_p = v450;
                                v354 = v450;
                                v355 = &v449 + 1;
                              }
                            }

                            else
                            {
                              if ((v453 & 8) == 0)
                              {
                                v353 = 0;
                                v444 = 0;
                                goto LABEL_524;
                              }

                              v354 = v449;
                              v355 = &v448;
                            }

                            v356 = *v355;
                            v353 = v354 - *v355;
                            if (v353 > 0x7FFFFFFFFFFFFFF7)
                            {
                              sub_3244();
                            }

                            if (v353 >= 0x17)
                            {
                              operator new();
                            }

                            v444 = v354 - *v355;
                            if (v353)
                            {
                              memmove(__dst, v356, v353);
                            }

LABEL_524:
                            *(__dst + v353) = 0;
                            sub_7E854(__dst, 3u);
                            if (v444 < 0)
                            {
                              operator delete(__dst[0]);
                            }

                            v445 = v438;
                            *(&v445 + *(v438 - 3)) = v437;
                            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__p.__r_.__value_.__l.__data_);
                            }

                            std::locale::~locale(&v447);
                            std::ostream::~ostream();
                            std::ios::~ios();
LABEL_529:
                            v441 = 0;
                            goto LABEL_530;
                          }

                          v352 = v349[8];
                          if (v352)
                          {
                            v351 = *(v348 + v352);
                            if (v351 != -1)
                            {
                              goto LABEL_510;
                            }
                          }

                          goto LABEL_512;
                        }
                      }

LABEL_492:
                      if (v322 != v334)
                      {
                        goto LABEL_493;
                      }

LABEL_530:
                      v357 = sub_BD5DA0((a1 + 4136), *v435, i);
                      v358 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v359 = &v358[-*v358];
                      if (*v359 >= 5u && (v360 = *(v359 + 2)) != 0)
                      {
                        v361 = &v358[v360 + *&v358[v360]];
                      }

                      else
                      {
                        v361 = 0;
                      }

                      v362 = sub_BCA9F8(v361, v442);
                      v363 = (v362 - *v362);
                      v364 = *v363;
                      if (v364 < 0x25)
                      {
                        if (v364 < 0xF)
                        {
                          goto LABEL_543;
                        }
                      }

                      else if (v363[18])
                      {
                        v365 = sub_BCAB48((v362 + v363[18] + *(v362 + v363[18])), v439);
                        v366 = HIDWORD(v442);
                        if (v365 != -1)
                        {
                          goto LABEL_541;
                        }

                        goto LABEL_543;
                      }

                      v367 = v363[7];
                      if (v367)
                      {
                        v365 = *(v362 + v367);
                        v366 = HIDWORD(v442);
                        if (v365 != -1)
                        {
LABEL_541:
                          if (v365 != v357)
                          {
                            goto LABEL_545;
                          }

                          goto LABEL_544;
                        }
                      }

LABEL_543:
                      v366 = 0;
                      if (v357 != -1)
                      {
                        goto LABEL_545;
                      }

LABEL_544:
                      if (HIDWORD(v357) != v366)
                      {
LABEL_545:
                        if (sub_7E7E4(3u))
                        {
                          sub_19594F8(&v445);
                          v368 = sub_4A5C(&v445, "Stop pattern ", 13);
                          v369 = sub_2FF718(v368, *v435);
                          v370 = sub_4A5C(v369, " at trip sequence index ", 24);
                          std::ostream::operator<<();
                          v371 = sub_4A5C(v370, " and stop index ", 16);
                          std::ostream::operator<<();
                          v372 = sub_4A5C(v371, " has mismatching headsign ref (sp: ", 35);
                          v373 = sub_BD5DA0((a1 + 4136), *v435, i);
                          v374 = sub_2FF718(v372, v373);
                          v375 = sub_4A5C(v374, "; trip: ", 8);
                          v376 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                          v377 = &v376[-*v376];
                          if (*v377 >= 5u && (v378 = *(v377 + 2)) != 0)
                          {
                            v379 = &v376[v378 + *&v376[v378]];
                          }

                          else
                          {
                            v379 = 0;
                          }

                          v380 = sub_BCA9F8(v379, v442);
                          v381 = (v380 - *v380);
                          v382 = *v381;
                          if (v382 < 0x25)
                          {
                            if (v382 < 0xF)
                            {
                              goto LABEL_557;
                            }
                          }

                          else if (v381[18])
                          {
                            v383 = sub_BCAB48((v380 + v381[18] + *(v380 + v381[18])), v439);
                            if (v383 == -1)
                            {
                              goto LABEL_557;
                            }

                            goto LABEL_558;
                          }

                          v384 = v381[7];
                          if (!v384 || (v383 = *(v380 + v384), v383 == -1))
                          {
LABEL_557:
                            v292 = 0;
                            v383 = -1;
                          }

LABEL_558:
                          v385 = sub_2FF718(v375, v383 | (v292 << 32));
                          sub_4A5C(v385, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v387 = p_p;
                            v388 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v387 = v450;
                              v388 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v386 = 0;
                              v444 = 0;
                              goto LABEL_570;
                            }

                            v387 = v449;
                            v388 = &v448;
                          }

                          v389 = *v388;
                          v386 = v387 - *v388;
                          if (v386 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v386 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v387 - *v388;
                          if (v386)
                          {
                            memmove(__dst, v389, v386);
                          }

LABEL_570:
                          *(__dst + v386) = 0;
                          sub_7E854(__dst, 3u);
                          if (v444 < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v445 = v438;
                          *(&v445 + *(v438 - 3)) = v437;
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__p.__r_.__value_.__l.__data_);
                          }

                          std::locale::~locale(&v447);
                          std::ostream::~ostream();
                          std::ios::~ios();
                        }

                        v441 = 0;
                      }

                      v390 = sub_BD5DA0((a1 + 4136), *v435, i);
                      v391 = -1;
                      if (HIDWORD(v390) && v390 != 0xFFFFFFFFLL)
                      {
                        v392 = sub_BCAE50(*(a1 + 4136) + 24, v390, 0, "routing headsign");
                        v393 = (v392 - *v392);
                        if (*v393 >= 5u && (v394 = v393[2]) != 0)
                        {
                          v391 = *(v392 + v394);
                        }

                        else
                        {
                          v391 = 0;
                        }
                      }

                      v395 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                      v396 = &v395[-*v395];
                      if (*v396 >= 5u && (v397 = *(v396 + 2)) != 0)
                      {
                        v398 = &v395[v397 + *&v395[v397]];
                      }

                      else
                      {
                        v398 = 0;
                      }

                      v399 = sub_BCA9F8(v398, v442);
                      v400 = (v399 - *v399);
                      v401 = *v400;
                      if (v401 < 0x25)
                      {
                        if (v401 < 0xF)
                        {
                          if (v391 == -1)
                          {
                            continue;
                          }

                          goto LABEL_602;
                        }

LABEL_591:
                        v403 = v400[7];
                        if (!v403)
                        {
                          LODWORD(v403) = -1;
LABEL_601:
                          if (v391 == v403)
                          {
                            continue;
                          }

                          goto LABEL_602;
                        }

                        v402 = *(v399 + v403);
                        LODWORD(v403) = -1;
                        if (v402 == -1)
                        {
                          goto LABEL_601;
                        }

                        goto LABEL_593;
                      }

                      if (!v400[18])
                      {
                        goto LABEL_591;
                      }

                      v402 = sub_BCAB48((v399 + v400[18] + *(v399 + v400[18])), v439);
                      LODWORD(v403) = -1;
                      if (v402 == -1)
                      {
                        goto LABEL_601;
                      }

LABEL_593:
                      if (!v436)
                      {
                        goto LABEL_601;
                      }

                      v404 = sub_BCAE50(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v402, 0, "routing headsign");
                      v405 = (v404 - *v404);
                      if (*v405 < 5u)
                      {
                        if (!v391)
                        {
                          continue;
                        }

                        goto LABEL_602;
                      }

                      v403 = v405[2];
                      if (!v403)
                      {
                        goto LABEL_601;
                      }

                      if (v391 == *(v404 + v403))
                      {
                        continue;
                      }

LABEL_602:
                      if (sub_7E7E4(3u))
                      {
                        sub_19594F8(&v445);
                        v406 = sub_4A5C(&v445, "Stop pattern ", 13);
                        v407 = sub_2FF718(v406, *v435);
                        v408 = sub_4A5C(v407, " at trip sequence index ", 24);
                        std::ostream::operator<<();
                        v409 = sub_4A5C(v408, " and stop index ", 16);
                        std::ostream::operator<<();
                        v410 = sub_4A5C(v409, " has mismatching headsign sort key (sp: ", 40);
                        v411 = sub_BD5DA0((a1 + 4136), *v435, i);
                        if (HIDWORD(v411) && v411 != 0xFFFFFFFFLL)
                        {
                          sub_BCAE50(*(a1 + 4136) + 24, v411, 0, "routing headsign");
                        }

                        std::ostream::operator<<();
                        v412 = sub_4A5C(v410, "; trip: ", 8);
                        v413 = sub_3A231C(*(a1 + 4184) + 24, v111, 0);
                        v414 = &v413[-*v413];
                        if (*v414 >= 5u && (v415 = *(v414 + 2)) != 0)
                        {
                          v416 = &v413[v415 + *&v413[v415]];
                        }

                        else
                        {
                          v416 = 0;
                        }

                        v417 = sub_BCA9F8(v416, v442);
                        v418 = (v417 - *v417);
                        v419 = *v418;
                        if (v419 < 0x25)
                        {
                          if (v419 < 0xF)
                          {
                            goto LABEL_621;
                          }
                        }

                        else if (v418[18])
                        {
                          v420 = sub_BCAB48((v417 + v418[18] + *(v417 + v418[18])), v439);
                          if (v420 == -1)
                          {
                            goto LABEL_621;
                          }

LABEL_619:
                          if (v436)
                          {
                            sub_BCAE50(*(a1 + 4184) + 24, v442 & 0xFFFFFFFF00000000 | v420, 0, "routing headsign");
                          }

LABEL_621:
                          std::ostream::operator<<();
                          sub_4A5C(v412, ").", 2);
                          if ((v453 & 0x10) != 0)
                          {
                            v423 = p_p;
                            v424 = &v449 + 1;
                            if (p_p < v450)
                            {
                              p_p = v450;
                              v423 = v450;
                              v424 = &v449 + 1;
                            }
                          }

                          else
                          {
                            if ((v453 & 8) == 0)
                            {
                              v422 = 0;
                              v444 = 0;
LABEL_633:
                              *(__dst + v422) = 0;
                              sub_7E854(__dst, 3u);
                              if (v444 < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              v445 = v438;
                              *(&v445 + *(v438 - 3)) = v437;
                              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(__p.__r_.__value_.__l.__data_);
                              }

                              std::locale::~locale(&v447);
                              std::ostream::~ostream();
                              std::ios::~ios();
                              goto LABEL_136;
                            }

                            v423 = v449;
                            v424 = &v448;
                          }

                          v425 = *v424;
                          v422 = v423 - *v424;
                          if (v422 > 0x7FFFFFFFFFFFFFF7)
                          {
                            sub_3244();
                          }

                          if (v422 >= 0x17)
                          {
                            operator new();
                          }

                          v444 = v423 - *v424;
                          if (v422)
                          {
                            memmove(__dst, v425, v422);
                          }

                          goto LABEL_633;
                        }

                        v421 = v418[7];
                        if (v421)
                        {
                          v420 = *(v417 + v421);
                          if (v420 != -1)
                          {
                            goto LABEL_619;
                          }
                        }

                        goto LABEL_621;
                      }

LABEL_136:
                      v441 = 0;
                    }
                  }
                }
              }
            }

            else
            {
              v441 = 0;
              v2 = v435;
            }

            if (v456)
            {
              v457 = v456;
              operator delete(v456);
            }
          }

          v8 = v440 + 1;
          if (v440 + 1 == v429)
          {
            return v441 & 1;
          }
        }
      }
    }
  }

  v441 = 1;
  return v441 & 1;
}

void sub_C9CB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  sub_1959728(&a36);
  v52 = *(v50 - 120);
  if (!v52)
  {
    _Unwind_Resume(a1);
  }

  *(v50 - 112) = v52;
  operator delete(v52);
  _Unwind_Resume(a1);
}

int *sub_C9CCF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = a2;
  v8 = __ROR8__(a2, 32);
  result = sub_3A231C(*a1 + 24, v8, 0);
  v10 = (result - *result);
  if (*v10 < 5u)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10[2];
    if (v11)
    {
      v11 += result + *(result + v11);
    }
  }

  v12 = (v11 + 4 * v5 + 4 + *(v11 + 4 * v5 + 4));
  v13 = (v12 - *v12);
  if (*v13 < 0x2Bu)
  {
    goto LABEL_26;
  }

  v14 = v13[21];
  if (!v14 || *(v12 + v14) == -1)
  {
    goto LABEL_26;
  }

  v15 = sub_3A231C(*a1 + 24, v8, 0);
  v16 = &v15[-*v15];
  v17 = *v16;
  if (v17 <= 4)
  {
    v21 = 0;
    v19 = (4 * v5 + 4 + dword_4[v5]);
    v22 = (v19 - *(&dword_4[v5] + dword_4[v5]));
    if (*v22 < 0x2Bu)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(v16 + 2);
    if (*(v16 + 2))
    {
      v18 += &v15[*&v15[v18]];
    }

    v19 = (v18 + 4 * v5 + 4 + *(v18 + 4 * v5 + 4));
    if (v17 >= 0x17 && (v20 = *(v16 + 11)) != 0)
    {
      v21 = &v15[v20 + *&v15[v20]];
      v22 = (v19 - *v19);
      if (*v22 < 0x2Bu)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = 0;
      v22 = (v19 - *v19);
      if (*v22 < 0x2Bu)
      {
LABEL_20:
        v24 = -1;
        goto LABEL_21;
      }
    }
  }

  v23 = v22[21];
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = *(v19 + v23);
LABEL_21:
  result = sub_A7F86C(v21, v24 + a3);
  v25 = (result - *result);
  if (*v25 < 5u || (v26 = v25[2]) == 0)
  {
LABEL_26:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v27 = *(result + v26 + *(result + v26));
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v27)
  {
    operator new();
  }

  return result;
}

uint64_t sub_C9CF18(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v6 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v7 = &v6[-*v6];
  v8 = *v7;
  if (v8 <= 4)
  {
    v12 = 0;
    v10 = (4 * *a2 + 4 + dword_4[*a2]);
    v13 = (v10 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v13 < 0xDu)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *(v7 + 2);
    if (*(v7 + 2))
    {
      v9 += &v6[*&v6[v9]];
    }

    v10 = (v9 + 4 * *a2 + 4 + *(v9 + 4 * *a2 + 4));
    if (v8 >= 7 && (v11 = *(v7 + 3)) != 0)
    {
      v12 = &v6[v11 + *&v6[v11]];
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
LABEL_13:
        v15 = -1;
        goto LABEL_14;
      }
    }
  }

  v14 = v13[6];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = *(v10 + v14);
LABEL_14:
  v16 = 10 * sub_3A2E6C(v12, v15 + a3)[2];
  v17 = sub_585D8((*a1 + 3896));
  v18 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return v16 | (v16 << 32);
  }

  if (!*(v18 + 3960))
  {
    return v16 | (v16 << 32);
  }

  v19 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v17);
  if (!v19)
  {
    return v16 | (v16 << 32);
  }

  v20 = v19[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v19[6] - v20) >> 2) <= a3)
  {
    v21 = 0x7FFFFFFFLL;
  }

  else
  {
    v21 = *(v20 + 20 * a3 + 8);
  }

  v23 = v21 << 32;
  if (*(v19 + 32) == 1)
  {
    v23 = 0x7FFFFFFF00000000;
  }

  return v23 | v16;
}

uint64_t sub_C9D140(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v6 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v7 = &v6[-*v6];
  v8 = *v7;
  if (v8 <= 4)
  {
    v12 = 0;
    v10 = (4 * *a2 + 4 + dword_4[*a2]);
    v13 = (v10 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v13 < 0xDu)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *(v7 + 2);
    if (*(v7 + 2))
    {
      v9 += &v6[*&v6[v9]];
    }

    v10 = (v9 + 4 * *a2 + 4 + *(v9 + 4 * *a2 + 4));
    if (v8 >= 7 && (v11 = *(v7 + 3)) != 0)
    {
      v12 = &v6[v11 + *&v6[v11]];
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = (v10 - *v10);
      if (*v13 < 0xDu)
      {
LABEL_13:
        v15 = -1;
        goto LABEL_14;
      }
    }
  }

  v14 = v13[6];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = *(v10 + v14);
LABEL_14:
  v16 = 10 * sub_3A2E6C(v12, v15 + a3)[3];
  v17 = sub_585D8((*a1 + 3896));
  v18 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return v16 | (v16 << 32);
  }

  if (!*(v18 + 3960))
  {
    return v16 | (v16 << 32);
  }

  v19 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v17);
  if (!v19)
  {
    return v16 | (v16 << 32);
  }

  v20 = v19[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v19[6] - v20) >> 2) <= a3)
  {
    v21 = 0x7FFFFFFFLL;
  }

  else
  {
    v21 = *(v20 + 20 * a3 + 12);
  }

  v23 = v21 << 32;
  if (*(v19 + 32) == 1)
  {
    v23 = 0x7FFFFFFF00000000;
  }

  return v23 | v16;
}

unint64_t sub_C9D368(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
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
      v72 = *(a2 - 1);
      v73 = *v8;
      if (v72 < *v8)
      {
        *v8 = v72;
        *(a2 - 1) = v73;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v84 = v8 + 1;
      v86 = v8 == a2 || v84 == a2;
      if (a4)
      {
        if (!v86)
        {
          v87 = 0;
          v88 = v8;
          do
          {
            v91 = *v88;
            v90 = v88[1];
            v88 = v84;
            if (v90 < v91)
            {
              v92 = v87;
              do
              {
                *(v8 + v92 + 8) = v91;
                if (!v92)
                {
                  v89 = v8;
                  goto LABEL_128;
                }

                v91 = *(v8 + v92 - 8);
                v92 -= 8;
              }

              while (v90 < v91);
              v89 = (v8 + v92 + 8);
LABEL_128:
              *v89 = v90;
            }

            v84 = v88 + 1;
            v87 += 8;
          }

          while (v88 + 1 != a2);
        }
      }

      else if (!v86)
      {
        do
        {
          v126 = *v7;
          v125 = v7[1];
          v7 = v84;
          if (v125 < v126)
          {
            do
            {
              *v84 = v126;
              v126 = *(v84 - 2);
              --v84;
            }

            while (v125 < v126);
            *v84 = v125;
          }

          v84 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v93 = (v9 - 2) >> 1;
        v94 = v93;
        do
        {
          if (v93 >= v94)
          {
            v96 = (2 * (v94 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v97 = &v8[v96];
            if (2 * (v94 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
            {
              v98 = *v97;
              v100 = &v8[v94];
              v101 = *v100;
              if (*v97 >= *v100)
              {
                goto LABEL_155;
              }
            }

            else
            {
              v98 = v97[1];
              v99 = *v97 >= v98;
              if (*v97 > v98)
              {
                v98 = *v97;
              }

              if (!v99)
              {
                ++v97;
                v96 = 2 * (v94 & 0x1FFFFFFFFFFFFFFFLL) + 2;
              }

              v100 = &v8[v94];
              v101 = *v100;
              if (v98 >= *v100)
              {
LABEL_155:
                while (1)
                {
                  *v100 = v98;
                  v100 = v97;
                  if (v93 < v96)
                  {
                    break;
                  }

                  v102 = (2 * v96) | 1;
                  v97 = &v8[v102];
                  v96 = 2 * v96 + 2;
                  if (v96 < v9)
                  {
                    v98 = *v97;
                    result = v97[1];
                    if (*v97 <= result)
                    {
                      v98 = v97[1];
                    }

                    if (*v97 >= result)
                    {
                      v96 = v102;
                    }

                    else
                    {
                      ++v97;
                    }

                    if (v98 < v101)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v98 = *v97;
                    v96 = v102;
                    if (*v97 < v101)
                    {
                      break;
                    }
                  }
                }

                *v100 = v101;
              }
            }
          }

          v95 = v94-- <= 0;
        }

        while (!v95);
        do
        {
          v103 = 0;
          v104 = *v8;
          v105 = (v9 - 2) >> 1;
          v106 = v8;
          do
          {
            while (1)
            {
              v113 = &v106[v103];
              v112 = v113 + 1;
              v114 = (2 * v103) | 1;
              v103 = 2 * v103 + 2;
              if (v103 < v9)
              {
                break;
              }

              v103 = v114;
              *v106 = *v112;
              v106 = v113 + 1;
              if (v114 > v105)
              {
                goto LABEL_170;
              }
            }

            v109 = v113[2];
            v108 = v113 + 2;
            v107 = v109;
            v110 = *(v108 - 1);
            v111 = v110 >= v109;
            if (v110 > v109)
            {
              v107 = *(v108 - 1);
            }

            if (v111)
            {
              v103 = v114;
            }

            else
            {
              v112 = v108;
            }

            *v106 = v107;
            v106 = v112;
          }

          while (v103 <= v105);
LABEL_170:
          if (v112 == --a2)
          {
            *v112 = v104;
          }

          else
          {
            *v112 = *a2;
            *a2 = v104;
            v115 = (v112 - v8 + 8) >> 3;
            v95 = v115 < 2;
            v116 = v115 - 2;
            if (!v95)
            {
              v117 = v116 >> 1;
              v118 = &v8[v117];
              v119 = *v118;
              v120 = *v112;
              if (*v118 < *v112)
              {
                do
                {
                  *v112 = v119;
                  v112 = v118;
                  if (!v117)
                  {
                    break;
                  }

                  v117 = (v117 - 1) >> 1;
                  v118 = &v8[v117];
                  v119 = *v118;
                }

                while (*v118 < v120);
                *v112 = v120;
              }
            }
          }

          v95 = v9-- <= 2;
        }

        while (!v95);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *v8;
      v16 = *v11;
      if (*v8 < *v11)
      {
        if (v12 < v15)
        {
          *v11 = v12;
          goto LABEL_37;
        }

        *v11 = v15;
        *v8 = v16;
        v26 = *(a2 - 1);
        if (v26 < v16)
        {
          *v8 = v26;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v12 >= v15)
      {
        goto LABEL_38;
      }

      *v8 = v12;
      *(a2 - 1) = v15;
      v18 = *v11;
      if (*v8 >= *v11)
      {
        goto LABEL_38;
      }

      *v11 = *v8;
      *v8 = v18;
      --a3;
      v19 = v18;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v8 - 1) < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= *(a2 - 1))
      {
        v55 = (v8 + 1);
        do
        {
          v8 = v55;
          if (v55 >= a2)
          {
            break;
          }

          v55 += 8;
        }

        while (v19 >= *v8);
      }

      else
      {
        do
        {
          v54 = v8[1];
          ++v8;
        }

        while (v19 >= v54);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v56 = a2;
        do
        {
          v57 = *--v56;
        }

        while (v19 < v57);
      }

      if (v8 < v56)
      {
        v58 = *v8;
        v59 = *v56;
        do
        {
          *v8 = v59;
          *v56 = v58;
          do
          {
            v60 = v8[1];
            ++v8;
            v58 = v60;
          }

          while (v19 >= v60);
          do
          {
            v61 = *--v56;
            v59 = v61;
          }

          while (v19 < v61);
        }

        while (v8 < v56);
      }

      v62 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v62;
      }

      a4 = 0;
      *v62 = v19;
    }

    else
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v17 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v12 >= v13)
        {
          *v8 = v13;
          *v10 = v14;
          v20 = *(a2 - 1);
          if (v20 >= v14)
          {
            goto LABEL_29;
          }

          *v10 = v20;
        }

        else
        {
          *v8 = v12;
        }

        *(a2 - 1) = v14;
      }

LABEL_29:
      v21 = v10 - 1;
      v22 = *(v10 - 1);
      v23 = v8[1];
      v24 = *(a2 - 2);
      if (v22 >= v23)
      {
        if (v24 < v22)
        {
          *v21 = v24;
          *(a2 - 2) = v22;
          v25 = v8[1];
          if (*v21 < v25)
          {
            v8[1] = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v24 >= v22)
        {
          v8[1] = v22;
          *v21 = v23;
          v27 = *(a2 - 2);
          if (v27 >= v23)
          {
            goto LABEL_43;
          }

          *v21 = v27;
        }

        else
        {
          v8[1] = v24;
        }

        *(a2 - 2) = v23;
      }

LABEL_43:
      v30 = v10[1];
      v28 = v10 + 1;
      v29 = v30;
      v31 = v8[2];
      v32 = *(a2 - 3);
      if (v30 >= v31)
      {
        if (v32 < v29)
        {
          *v28 = v32;
          *(a2 - 3) = v29;
          v33 = v8[2];
          if (*v28 < v33)
          {
            v8[2] = *v28;
            *v28 = v33;
          }
        }
      }

      else
      {
        if (v32 >= v29)
        {
          v8[2] = v29;
          *v28 = v31;
          v34 = *(a2 - 3);
          if (v34 >= v31)
          {
            goto LABEL_52;
          }

          *v28 = v34;
        }

        else
        {
          v8[2] = v32;
        }

        *(a2 - 3) = v31;
      }

LABEL_52:
      v35 = *v11;
      v36 = *v21;
      v37 = *v28;
      if (*v11 >= *v21)
      {
        if (v37 >= v35)
        {
          goto LABEL_60;
        }

        *v11 = v37;
        *v28 = v35;
        v28 = v11;
        v35 = v36;
        if (v37 < v36)
        {
LABEL_59:
          *v21 = v37;
          *v28 = v36;
LABEL_60:
          v39 = *v8;
          *v8 = v35;
          *v11 = v39;
          --a3;
          v19 = *v8;
          if ((a4 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v53 = *v8;
        *v8 = v37;
        *v11 = v53;
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v37 < v35)
      {
        goto LABEL_59;
      }

      *v21 = v35;
      *v11 = v36;
      v21 = v11;
      v35 = v37;
      if (v37 < v36)
      {
        goto LABEL_59;
      }

      v38 = *v8;
      *v8 = v36;
      *v11 = v38;
      --a3;
      v19 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v40 = 0;
      do
      {
        v41 = v8[++v40];
      }

      while (v41 < v19);
      v42 = &v8[v40];
      v43 = a2;
      if (v40 == 1)
      {
        v43 = a2;
        do
        {
          if (v42 >= v43)
          {
            break;
          }

          v45 = *--v43;
        }

        while (v45 >= v19);
      }

      else
      {
        do
        {
          v44 = *--v43;
        }

        while (v44 >= v19);
      }

      if (v42 >= v43)
      {
        v51 = v42 - 1;
        if (v42 - 1 == v8)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v8 = *v51;
        goto LABEL_80;
      }

      v46 = *v43;
      v47 = &v8[v40];
      v48 = v43;
      do
      {
        *v47 = v46;
        *v48 = v41;
        do
        {
          v49 = v47[1];
          ++v47;
          v41 = v49;
        }

        while (v49 < v19);
        do
        {
          v50 = *--v48;
          v46 = v50;
        }

        while (v50 >= v19);
      }

      while (v47 < v48);
      v51 = v47 - 1;
      if (v47 - 1 != v8)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v51 = v19;
      if (v42 < v43)
      {
        goto LABEL_83;
      }

      v52 = sub_C9DDEC(v8, v51);
      v8 = v51 + 1;
      result = sub_C9DDEC(v51 + 1, a2);
      if (result)
      {
        a2 = v51;
        if (!v52)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v52)
      {
LABEL_83:
        result = sub_C9D368(v7, v51, a3, a4 & 1);
        a4 = 0;
        v8 = v51 + 1;
      }
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v77 = v8 + 1;
      v78 = v8[1];
      v79 = v8 + 2;
      v80 = v8[2];
      v81 = *v8;
      if (v78 >= *v8)
      {
        if (v80 < v78)
        {
          *v77 = v80;
          *v79 = v78;
          v82 = v8;
          v83 = v8 + 1;
          result = v78;
          if (v80 < v81)
          {
            goto LABEL_185;
          }

          goto LABEL_186;
        }

LABEL_194:
        v78 = v80;
        v124 = *(a2 - 1);
        if (v124 >= v78)
        {
          return result;
        }
      }

      else
      {
        v82 = v8;
        v83 = v8 + 2;
        result = *v8;
        if (v80 >= v78)
        {
          *v8 = v78;
          v8[1] = v81;
          v82 = v8 + 1;
          v83 = v8 + 2;
          result = v81;
          if (v80 >= v81)
          {
            goto LABEL_194;
          }
        }

LABEL_185:
        *v82 = v80;
        *v83 = v81;
        v78 = result;
LABEL_186:
        v124 = *(a2 - 1);
        if (v124 >= v78)
        {
          return result;
        }
      }

      *v79 = v124;
      *(a2 - 1) = v78;
      v127 = *v79;
      v128 = *v77;
      if (v127 < v128)
      {
        v8[1] = v127;
        v8[2] = v128;
        v129 = *v8;
        if (v127 < *v8)
        {
          *v8 = v127;
          v8[1] = v129;
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v63 = v8 + 1;
      v64 = v8[1];
      v66 = v8 + 2;
      v65 = v8[2];
      v67 = *v8;
      if (v64 >= *v8)
      {
        if (v65 >= v64)
        {
          v70 = *v8;
          v67 = v8[1];
          v121 = v8[3];
          if (v121 >= v65)
          {
            goto LABEL_204;
          }
        }

        else
        {
          v68 = v8;
          v69 = v8 + 1;
          *v63 = v65;
          *v66 = v64;
          v70 = v65;
          result = v67;
          v71 = v64;
          if (v65 < v67)
          {
            goto LABEL_199;
          }

          v70 = v67;
          v67 = v65;
          v65 = v64;
          v121 = v8[3];
          if (v121 >= v65)
          {
            goto LABEL_204;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v68 = v8;
          v69 = v8 + 2;
          v70 = v8[2];
          result = v8[1];
          v71 = *v8;
          goto LABEL_199;
        }

        v68 = v8 + 1;
        v69 = v8 + 2;
        *v8 = v64;
        v8[1] = v67;
        v70 = v64;
        result = v65;
        v71 = v67;
        if (v65 < v67)
        {
LABEL_199:
          *v68 = v65;
          *v69 = v67;
          v67 = result;
          v65 = v71;
          v121 = v8[3];
          if (v121 < v71)
          {
            goto LABEL_200;
          }

LABEL_204:
          v65 = v121;
LABEL_205:
          v130 = *(a2 - 1);
          if (v130 >= v65)
          {
            return result;
          }

          v8[3] = v130;
          *(a2 - 1) = v65;
          v131 = v8[2];
          v122 = v8[3];
          if (v122 >= v131)
          {
            return result;
          }

          v8[2] = v122;
          v8[3] = v131;
          v132 = v8[1];
          if (v122 >= v132)
          {
            return result;
          }

          v8[1] = v122;
          v8[2] = v132;
          v123 = *v8;
          if (v122 >= *v8)
          {
            return result;
          }

LABEL_209:
          *v8 = v122;
          v8[1] = v123;
          return result;
        }

        v70 = v64;
        v121 = v8[3];
        if (v121 >= v65)
        {
          goto LABEL_204;
        }
      }

LABEL_200:
      v8[2] = v121;
      v8[3] = v65;
      if (v121 < v67)
      {
        *v63 = v121;
        *v66 = v67;
        if (v121 < v70)
        {
          *v8 = v121;
          v8[1] = v70;
        }
      }

      goto LABEL_205;
    }

    goto LABEL_10;
  }

  v74 = *v8;
  v75 = v8[1];
  v76 = *(a2 - 1);
  if (v75 < *v8)
  {
    if (v76 >= v75)
    {
      *v8 = v75;
      v8[1] = v74;
      v133 = *(a2 - 1);
      if (v133 >= v74)
      {
        return result;
      }

      v8[1] = v133;
    }

    else
    {
      *v8 = v76;
    }

    *(a2 - 1) = v74;
    return result;
  }

  if (v76 < v75)
  {
    v8[1] = v76;
    *(a2 - 1) = v75;
    v123 = *v8;
    v122 = v8[1];
    if (v122 < *v8)
    {
      goto LABEL_209;
    }
  }

  return result;
}