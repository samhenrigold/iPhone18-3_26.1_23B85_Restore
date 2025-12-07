void sub_10BC898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10BC914(uint64_t *a1, int32x2_t *a2, int **a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  sub_10BC9B4(a1, a2, a3, a5);
  if (a2[7].i8[0] == 1)
  {
    sub_10B9C08(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_10BC9B4(uint64_t a1, int32x2_t *a2, int **a3, uint64_t a4)
{
  v8 = *(a3 + 9);
  if ((v8 & 0x40000000) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 >> 31;
  }

  result = sub_314D1C(a3, v9);
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = *(a3 + 19);
  v12 = (v11 & 0x40000000) != 0 ? 2 : v11 >> 31;
  result = sub_314D1C(a3 + 5, v12);
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  result = sub_4B7410(*(a1 + 24), a3, a3 + 5);
  v13 = (*(a4 + 528) + 16 * result);
  v14 = *v13;
  v15 = v13[1];
  v16 = v14.i32[0] == -1 || v14.i32[1] == 0x7FFFFFFF;
  if (v16 || *&v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  a2[2] = vadd_s32(a2[2], v14);
  *&a2[3] += *&v15;
  if (*(a4 + 800) == 1)
  {
    v18 = *a3;
    v19 = **a3;
  }

  else
  {
    if (*(a4 + 801) != 1)
    {
      goto LABEL_49;
    }

    v18 = *a3;
    v19 = **a3;
    v24 = (*a3 - v19);
    if (*v24 < 0x9Bu)
    {
      goto LABEL_49;
    }

    v25 = v24[77];
    if (!v25)
    {
      goto LABEL_49;
    }

    if ((v18[v25 + 3] & 2) == 0)
    {
      goto LABEL_49;
    }

    v26 = a3[5];
    v27 = (v26 - *v26);
    if (*v27 < 0x9Bu)
    {
      goto LABEL_49;
    }

    v28 = v27[77];
    if (!v28 || (*(v26 + v28 + 3) & 2) == 0)
    {
      goto LABEL_49;
    }
  }

  v20 = &v18[-v19];
  v21 = *v20;
  if ((*(a3 + 39) & 0x20) != 0)
  {
    if (v21 < 0x51)
    {
      goto LABEL_37;
    }

    v22 = *(v20 + 40);
    if (!v22)
    {
      goto LABEL_37;
    }

    v23 = 64;
  }

  else
  {
    if (v21 < 0x51)
    {
      goto LABEL_37;
    }

    v22 = *(v20 + 40);
    if (!v22)
    {
      goto LABEL_37;
    }

    v23 = 4;
  }

  if ((*&v18[v22] & v23) != 0)
  {
    goto LABEL_17;
  }

LABEL_37:
  v29 = a3[5];
  v30 = (v29 - *v29);
  v31 = *v30;
  if ((*(a3 + 79) & 0x20) != 0)
  {
    if (v31 >= 0x51)
    {
      v32 = v30[40];
      if (v32)
      {
        v33 = 1;
LABEL_44:
        if ((*(v29 + v32) & v33) != 0)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else if (v31 >= 0x51)
  {
    v32 = v30[40];
    if (v32)
    {
      v33 = 16;
      goto LABEL_44;
    }
  }

  if (sub_314E48(a3))
  {
    a2[2] = vadd_s32(*(a4 + 808), a2[2]);
    *&a2[3] += *(a4 + 816);
  }

  if (sub_314DE0(a3 + 5))
  {
    a2[2] = vadd_s32(*(a4 + 808), a2[2]);
    *&a2[3] += *(a4 + 816);
  }

LABEL_49:
  v34 = a3[10];
  v35 = v34 & 0x1F;
  if (v35 == 31)
  {
    v35 = -1;
  }

  v36 = (v34 >> 5) & 0x1F;
  if (v36 == 31)
  {
    v36 = -1;
  }

  v105[0] = v35;
  v105[1] = v36;
  v37 = 50 * ((v34 >> 10) & 0x1FF);
  if (((v34 >> 10) & 0x1FF) == 0x1FF)
  {
    v37 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v38 = 50 * ((v34 >> 19) & 0x1FF);
  if (((v34 >> 19) & 0x1FF) == 0x1FF)
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v105[2] = v37;
  v105[3] = v38;
  v39 = vdupq_n_s64(0x1FuLL);
  v40 = vandq_s8(vshlq_u64(vdupq_n_s64(v34), xmmword_2297E80), v39);
  v102 = vorrq_s8(v40, vceqq_s64(v40, v39));
  if (((v34 >> 38) & 0x1FF) == 0x1FF)
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = 50 * ((v34 >> 38) & 0x1FF);
  }

  v42 = (v34 >> 47) & 0x1FF;
  if (v42 == 511)
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v43 = 50 * v42;
  }

  v103 = v41;
  v104 = v43;
  v44 = sub_10BA8C0(a1, a3, (a4 + 32));
  v45 = sub_10BD600(v105, a4 + 32, v44);
  v47 = v46;
  result = sub_10BD600(v102.i64, a4 + 32, v44);
  v49 = HIDWORD(result);
  if (result == v45)
  {
    if (v49 == HIDWORD(v45))
    {
      v50 = v48 < v47;
    }

    else
    {
      v50 = SHIDWORD(result) < SHIDWORD(v45);
    }

    v51 = v50;
  }

  else
  {
    v51 = result < v45;
  }

  v52 = !v51;
  if (v51)
  {
    v53 = result;
  }

  else
  {
    v53 = v45;
  }

  if (v52)
  {
    LODWORD(v49) = HIDWORD(v45);
  }

  if (v52)
  {
    v54 = v47;
  }

  else
  {
    v54 = v48;
  }

  v55 = a2[2].i32[0] + v53;
  v56 = a2[2].i32[1] + v49;
  a2[2].i32[0] = v55;
  a2[2].i32[1] = v56;
  v57 = (*&a2[3] + v54);
  a2[3] = v57;
  if ((*(a4 + 616) & 1) != 0 || (*(a3 + 87) & 4) == 0)
  {
    result = sub_10BD138(result, a3, a4 + 32);
    v58 = vadd_s32(*result, a2[2]);
    a2[2] = v58;
    v57 = (*(result + 8) + *&a2[3]);
    a2[3] = v57;
    v56 = v58.i32[1];
    v55 = v58.i32[0];
  }

  v59 = *a3;
  v60 = **a3;
  v61 = -v60;
  v62 = (*a3 - v60);
  if (*v62 < 0x9Bu || (v63 = v62[77]) == 0 || (v59[v63] & 8) == 0)
  {
    v64 = a3[5];
    v65 = (v64 - *v64);
    if (*v65 >= 0x9Bu)
    {
      v66 = v65[77];
      if (v66)
      {
        if ((*(v64 + v66) & 8) != 0)
        {
          v67 = *(a4 + 448);
          if (v67 == -1)
          {
            goto LABEL_17;
          }

          v68 = *(a4 + 452);
          if (v68 == 0x7FFFFFFF || *(a4 + 456) == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_17;
          }

          v55 += v67;
          v56 += v68;
          a2[2].i32[0] = v55;
          a2[2].i32[1] = v56;
          *&v57 += *(a4 + 456);
          a2[3] = v57;
          v59 = *a3;
          v61 = -**a3;
        }
      }
    }
  }

  if (*&v59[v61] >= 0x97u && *&v59[v61 + 150] && (v59[*&v59[v61 + 150]] & 0x40) != 0 || (v69 = a3[5], v70 = (v69 - *v69), *v70 >= 0x97u) && (v71 = v70[75]) != 0 && (*(v69 + v71) & 0x40) != 0)
  {
    v72 = *(a4 + 784);
    if (v72 != -1)
    {
      v73 = *(a4 + 788);
      if (v73 != 0x7FFFFFFF && *(a4 + 792) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v55 += v72;
        v56 += v73;
        a2[2].i32[0] = v55;
        a2[2].i32[1] = v56;
        *&v57 += *(a4 + 792);
        a2[3] = v57;
        v59 = *a3;
        v61 = -**a3;
        goto LABEL_103;
      }
    }

LABEL_17:
    a2[7].i8[0] = 0;
    return result;
  }

LABEL_103:
  v74 = &v59[v61];
  if (*v74 < 0x2Fu || (v75 = *(v74 + 23)) == 0 || v59[v75] != 9)
  {
    v76 = a3[5];
    v77 = (v76 - *v76);
    if (*v77 >= 0x2Fu)
    {
      v78 = v77[23];
      if (v78)
      {
        if (*(v76 + v78) == 9)
        {
          v79 = *(a4 + 468);
          a2[2].i32[0] = v55 + *(a4 + 464);
          a2[2].i32[1] = v79 + v56;
          a2[3] = (*(a4 + 472) + *&v57);
        }
      }
    }
  }

  result = sub_10AD680((a4 + 552), (a3[10] >> 59) & 3);
  if (*result == -1)
  {
    goto LABEL_17;
  }

  v80 = *(result + 4);
  if (v80 == 0x7FFFFFFF)
  {
    goto LABEL_17;
  }

  v81 = *(result + 8);
  if (v81 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  v82 = a2[2].i32[0] + *result;
  v83 = a2[2].i32[1] + v80;
  a2[2].i32[0] = v82;
  a2[2].i32[1] = v83;
  v84 = (*&a2[3] + v81);
  a2[3] = v84;
  if (*(a4 + 576) != *(a4 + 584))
  {
    v85 = (*a3 - **a3);
    if (*v85 >= 0x1Fu && (v86 = v85[15]) != 0)
    {
      v87 = *(*a3 + v86);
    }

    else
    {
      v87 = -1;
    }

    v88 = a3[5];
    v89 = (v88 - *v88);
    v90 = *v89;
    if (v90 >= 0x1F)
    {
      v91 = v89[15] ? *(v88 + v89[15]) : -1;
      if (v90 >= 0x9B && v87 != v91 && v89[77] && (*(v88 + v89[77]) & 3) != 0)
      {
        v101 = sub_10BD4DC(a1, a3 + 5);
        result = sub_10ADE24(&v101, (a4 + 576));
        v82 = a2[2].i32[0] + result;
        v83 = a2[2].i32[1] + HIDWORD(result);
        a2[2].i32[0] = v82;
        a2[2].i32[1] = v83;
        v84 = (*&a2[3] + v92);
        a2[3] = v84;
      }
    }
  }

  v93 = *(a4 + 600);
  v94 = *(a4 + 604);
  if (__PAIR64__(v94, v93) || *(a4 + 608))
  {
    v95 = a3[1];
    if (v95)
    {
      v96 = (v95 - *v95);
      if (*v96 >= 0x1Du)
      {
        v97 = v96[14];
        if (v97)
        {
          if (*(v95 + v97 + *(v95 + v97)))
          {
            v98 = a3[6];
            if (!v98 || (v99 = (v98 - *v98), *v99 < 0x1Du) || (v100 = v99[14]) == 0 || !*(v98 + v100 + *(v98 + v100)))
            {
              a2[2].i32[0] = v82 + v93;
              a2[2].i32[1] = v94 + v83;
              a2[3] = (*(a4 + 608) + *&v84);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_10BD0E0(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1768(a2);
  a1[2] = sub_3B1994(a2);
  a1[3] = sub_3B2A90(a2);
  return a1;
}

unsigned int *sub_10BD138(uint64_t a1, int **a2, uint64_t a3)
{
  v3 = *(a2 + 9);
  if (*(a3 + 586))
  {
    v4 = (*a2 - **a2);
    v5 = *v4;
    if ((v3 & 0x20000000) != 0)
    {
      if (v5 < 0x4B || (v6 = v4[37]) == 0)
      {
LABEL_18:
        v13 = 17999;
        v14 = a2[5];
        v15 = (v14 - *v14);
        v16 = *v15;
        if ((*(a2 + 79) & 0x20) == 0)
        {
          goto LABEL_19;
        }

LABEL_15:
        if (v16 < 0x49)
        {
          goto LABEL_21;
        }

        v17 = v15[36];
        if (!v17)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v5 < 0x49)
      {
        goto LABEL_18;
      }

      v6 = v4[36];
      if (!v4[36])
      {
        goto LABEL_18;
      }
    }

    v11 = *(*a2 + v6);
    v12 = v11 + 18000;
    v13 = v11 - 18000;
    if ((v12 >> 5) < 0x465u)
    {
      v13 = v12;
    }

    v14 = a2[5];
    v15 = (v14 - *v14);
    v16 = *v15;
    if ((*(a2 + 79) & 0x20) == 0)
    {
LABEL_19:
      if (v16 < 0x4B || (v17 = v15[37]) == 0)
      {
LABEL_21:
        v18 = 0xFFFF;
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_15;
  }

  v7 = a2[1];
  v8 = (v7 - *v7);
  v9 = *v8;
  if ((v3 & 0x20000000) != 0)
  {
    if (v9 < 9 || (v10 = v8[4]) == 0)
    {
LABEL_30:
      v13 = 18000;
      v14 = a2[6];
      v21 = (v14 - *v14);
      v22 = *v21;
      if ((*(a2 + 79) & 0x20) == 0)
      {
        goto LABEL_31;
      }

LABEL_27:
      if (v22 >= 5)
      {
        v17 = v21[2];
        if (v17)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (v9 < 5)
    {
      goto LABEL_30;
    }

    v10 = v8[2];
    if (!v8[2])
    {
      goto LABEL_30;
    }
  }

  v19 = *(v7 + v10);
  v20 = v19 + 18000;
  v13 = v19 - 18000;
  if ((v20 >> 5) < 0x465u)
  {
    v13 = v20;
  }

  v14 = a2[6];
  v21 = (v14 - *v14);
  v22 = *v21;
  if ((*(a2 + 79) & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (v22 >= 9)
  {
    v17 = v21[4];
    if (v17)
    {
LABEL_33:
      v18 = *(v14 + v17);
      goto LABEL_35;
    }
  }

LABEL_34:
  v18 = 0;
LABEL_35:
  v23 = v18 - v13;
  if (v23 > 18000)
  {
    v23 -= 36000;
  }

  if (v23 < -17999)
  {
    v23 += 36000;
  }

  v24 = fabs(v23 / 100.0);
  v25 = *(a3 + 392);
  v26 = *(a3 + 400);
  if (*v25 < v24)
  {
    do
    {
      if (v25 >= v26)
      {
        break;
      }

      v27 = v25[6];
      v25 += 6;
    }

    while (v27 < v24);
  }

  if (v25 == v26)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v30 = sub_2D390(exception, "Angle based costs for walking not valid", 0x27uLL);
  }

  return v25 + 2;
}

void sub_10BD374(uint64_t *a1, uint64_t *a2)
{
  sub_2B51D8(*a1, *a2 & 0xFFFFFFFFFFFFLL);
  v4 = a1[1];
  v5 = *a2;
  if (!sub_36383C(v4, v5))
  {
    sub_363970(v4, v5);
  }
}

double sub_10BD4DC(uint64_t a1, int **a2)
{
  v4 = ((*(a2 + 9) & 0x20000000) << 19) | (*(a2 + 9) << 32) | *(a2 + 8);
  v5 = sub_4345A0(*(a1 + 8), v4 ^ 0x1000000000000);
  v6 = sub_4345A0(*(a1 + 8), v4 & 0xFFFFFFFFFFFFLL | (((v4 ^ 0x1000000000000) >> 48 == 0) << 48));
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!v6)
  {
    return 0.0;
  }

  v7 = v6;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8) | (*(a2 + 18) << 32);
  v10 = sub_3E916C(v8, v9);
  LOWORD(v11) = sub_3E916C(v8, v9 | 0x1000000000000) + v10;
  v12 = (*a2 - **a2);
  if (*v12 >= 0x9Bu && (v13 = v12[77]) != 0 && (*(*a2 + v13) & 4) != 0)
  {
    v11 = 2 * v11;
  }

  else
  {
    v11 = v11;
  }

  return v11 / v7;
}

uint64_t sub_10BD600(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = *a1;
  if (*a1 == -1)
  {
    return 0x7FFFFFFEFFFFFFFELL;
  }

  v4 = a1[2];
  v5 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if ((*&a3 - 1) < 0xFFFFFFFFFFFFFLL)
  {
    v5 = 1;
  }

  v7 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && a3 >= 0.0 || v5;
  if (a3 > 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1 && v4 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v14 = v4 / 10.0 / (a3 / 3.6);
    if (v14 >= 0.0)
    {
      if (v14 >= 4.50359963e15)
      {
        goto LABEL_28;
      }

      v15 = (v14 + v14) + 1;
    }

    else
    {
      if (v14 <= -4.50359963e15)
      {
        goto LABEL_28;
      }

      v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    }

    v14 = (v15 >> 1);
LABEL_28:
    v10 = v14;
    v11 = v14 * *(a2 + 152);
    if (v11 < 0.0)
    {
      goto LABEL_29;
    }

LABEL_19:
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_32;
    }

    v12 = (v11 + v11) + 1;
    goto LABEL_31;
  }

  v10 = 0x7FFFFFFF;
  v11 = 4294967300.0 * *(a2 + 152);
  if (v11 >= 0.0)
  {
    goto LABEL_19;
  }

LABEL_29:
  if (v11 <= -4.50359963e15)
  {
    goto LABEL_32;
  }

  v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
LABEL_31:
  v11 = (v12 >> 1);
LABEL_32:
  v16 = *(a2 + 144);
  v17 = a1[3];
  if (v17 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  if (v8 != 1)
  {
    v20 = 0x7FFFFFFF;
    v21 = v11;
    v22 = v16 * v3;
    v23 = 4294967300.0 * *(a2 + 160);
    if (v23 < 0.0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  v18 = v17 / 10.0 / (a3 / 3.6);
  if (v18 >= 0.0)
  {
    if (v18 >= 4.50359963e15)
    {
      goto LABEL_44;
    }

    v19 = (v18 + v18) + 1;
  }

  else
  {
    if (v18 <= -4.50359963e15)
    {
      goto LABEL_44;
    }

    v19 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
  }

  v18 = (v19 >> 1);
LABEL_44:
  v20 = v18;
  v21 = v11;
  v22 = v16 * v3;
  v23 = v18 * *(a2 + 160);
  if (v23 < 0.0)
  {
LABEL_45:
    if (v23 > -4.50359963e15)
    {
      v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
      goto LABEL_47;
    }

    return (v22 + v21 + v23 + *(a2 + 148) * *(a1 + 2)) | ((v20 + v10) << 32);
  }

LABEL_39:
  if (v23 < 4.50359963e15)
  {
    v24 = (v23 + v23) + 1;
LABEL_47:
    v23 = (v24 >> 1);
  }

  return (v22 + v21 + v23 + *(a2 + 148) * *(a1 + 2)) | ((v20 + v10) << 32);
}

void sub_10BDBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10BDBFC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  v10 = 9;
  strcpy(v9, "EVRouting");
  memset(v8, 0, sizeof(v8));
  sub_3AEC94(a4, v9, v8);
  operator new();
}

void sub_10BDDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104((v18 - 80));
  if ((*(v18 - 33) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v18 - 56));
  _Unwind_Resume(a1);
}

__n128 sub_10BDE48(uint64_t a1)
{
  result = *(a1 + 40);
  v2 = *(a1 + 56);
  *a1 = result;
  *(a1 + 16) = v2;
  *(a1 + 29) = *(a1 + 69);
  return result;
}

uint64_t sub_10BDE60(uint64_t result, int a2, int a3)
{
  *(result + 24) = a2;
  *(result + 28) = a3;
  return result;
}

uint64_t sub_10BDE68(uint64_t result, int a2, char a3)
{
  *(result + 32) = a2;
  *(result + 36) = a3;
  return result;
}

uint64_t sub_10BDE74(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[0] = a4;
  v26[1] = a5;
  v25 = *(a2 + 52);
  v8 = *a1;
  if (*(a1 + 1) > 0.0)
  {
    v9 = *(a1 + 1) * sub_444984((a1 + 20), a2, a3);
    if (v9 >= 0.0)
    {
      if (v9 < 4.50359963e15)
      {
        v10 = (v9 + v9) + 1;
        goto LABEL_7;
      }
    }

    else if (v9 > -4.50359963e15)
    {
      v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_7:
      v9 = (v10 >> 1);
    }

    v8 = (v8 + v9);
  }

  if (sub_3A8760((a4 + 16), &v25))
  {
    v11 = *(sub_3A8760((a4 + 16), &v25) + 24);
    if (v11 == 1)
    {
      v12 = 5;
    }

    else
    {
      if (v11 != 2)
      {
        v13 = 0x7FFFFFFF;
        goto LABEL_16;
      }

      v12 = 4;
    }

    v13 = -a1[v12];
LABEL_16:
    v8 = v13 + v8;
  }

  v14 = a2[3];
  v15 = a2[4];
  if (v14 == v15)
  {
    goto LABEL_24;
  }

  v16 = v14 + 48;
  do
  {
    v17 = sub_E6F808(*(a1 + 19), *(v16 - 48));
    if (v17)
    {
      break;
    }

    v22 = v16 == v15;
    v16 += 48;
  }

  while (!v22);
  if (!v17)
  {
LABEL_24:
    v8 = a1[8] + v8;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_45AC68(v26, a2[8]);
  v20 = (v18 & a1[9]);
  v21 = v19 ^ 1;
  v22 = v20 != 1 || v19 == 0;
  if (v22)
  {
    if ((v20 | v21))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v24 = sub_45AC60(v26);
    v20 = !v24;
    if ((!v24 | v21))
    {
LABEL_35:
      v8 = a1[6] + v8;
      if (((v20 | sub_45AC70(v26, a2[8])) & 1) == 0)
      {
        return v8;
      }

      return a1[7] + v8;
    }
  }

  if ((v20 | sub_45AC70(v26, a2[8])))
  {
    return a1[7] + v8;
  }

  return v8;
}

void sub_10BE058(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = (((a4[7] - a4[6]) << 30) - 0x100000000) >> 32;
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v20 = *(a1 + 152);
    do
    {
      v10 = a4[12];
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a4[13] - v10) >> 3);
      if (v11 <= v9)
      {
        v12 = (v9 + 1);
        v22 = 0xFFFFuLL;
        v23 = -COERCE_DOUBLE(0x8000000080000000);
        if (v12 <= v11)
        {
          if (v12 < v11)
          {
            a4[13] = v10 + 24 * v12;
          }
        }

        else
        {
          sub_F82474((a4 + 12), v12 - v11, &v22);
          v10 = a4[12];
        }
      }

      v13 = *(v10 + v8);
      if (v13 != 0xFFFF)
      {
        v14 = sub_458004(a2, *(v10 + v8));
        *&v22 = sub_445A60(v20 + 160);
        *(&v22 + 1) = v15;
        v16 = v10 + v8;
        v17 = sub_45AC8C(&v22, *(v16 + 20));
        v19 = sub_10BDE74(a1, v14, (v14 + 10), v17, v18);
        *(v16 + 16) = v19 & ~(v19 >> 31);
        *(v16 + 8) = sub_458034(a2, v13, a3);
      }

      ++v9;
      v8 += 24;
    }

    while (v4 != v9);
  }
}

void sub_10BE3A0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C19B6) < 0)
  {
    sub_21E72D0();
  }

  sub_21E72DC();
  _Unwind_Resume(a1);
}

void sub_10BE598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10BE778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10BE7A4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v5 = a4[1];
  *(a1 + 16) = *a4;
  *(a1 + 32) = v5;
  sub_E6F038(a2, v6);
  *(a1 + 48) = sub_99078(v6);
  *(a1 + 56) = xmmword_2266560;
  *(a1 + 72) = -NAN;
  *(a1 + 80) = 0x7FFFFFFF;
  sub_10BE3C0();
}

uint64_t sub_10BE84C(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  *(result + 64) = a2[2];
  *(result + 56) = v3;
  v4 = *a3;
  *(result + 76) = a3[2];
  *(result + 68) = v4;
  v5 = a2[1] - a3[1];
  v6 = sqrt(((*a2 - *a3) * (*a2 - *a3) + v5 * v5)) / 100.0 * 100.0;
  if (v6 < 4.50359963e15)
  {
    v6 = (((v6 + v6) + 1) >> 1);
  }

  v7 = 9.22337204e18;
  if (v6 < 9.22337204e18)
  {
    v7 = v6;
  }

  v8 = v7 / 100000.0 / 60.0 * 60.0 * 60.0 * 10.0;
  if (v8 >= 0.0)
  {
    if (v8 < 4.50359963e15)
    {
      v9 = (v8 + v8) + 1;
      goto LABEL_10;
    }
  }

  else if (v8 > -4.50359963e15)
  {
    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
LABEL_10:
    v8 = (v9 >> 1);
  }

  *(result + 80) = v8;
  return result;
}

uint64_t sub_10BE960(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_3B1D8C(*(a1 + 8));
  if (*(a1 + 16) <= 0.0)
  {
    v21 = 0;
    if (*(a1 + 24) <= 0.0)
    {
      goto LABEL_40;
    }

LABEL_17:
    v22 = sub_2ACC94(v8, *(a2 + 52));
    v23 = *(a1 + 60) - HIDWORD(v22);
    v24 = *(a1 + 56) - v22;
    v25 = sqrt((v24 * v24 + v23 * v23)) / 100.0 * 100.0;
    if (v25 < 4.50359963e15)
    {
      v25 = (((v25 + v25) + 1) >> 1);
    }

    v26 = 9.22337204e18;
    if (v25 < 9.22337204e18)
    {
      v26 = v25;
    }

    v27 = v26 / 100000.0 / 60.0 * 60.0 * 60.0 * 10.0;
    if (v27 >= 0.0)
    {
      if (v27 >= 4.50359963e15)
      {
        goto LABEL_27;
      }

      v28 = (v27 + v27) + 1;
    }

    else
    {
      if (v27 <= -4.50359963e15)
      {
        goto LABEL_27;
      }

      v28 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
    }

    v27 = (v28 >> 1);
LABEL_27:
    v29 = sqrt(((v22 - *(a1 + 68)) * (v22 - *(a1 + 68)) + (HIDWORD(v22) - *(a1 + 72)) * (HIDWORD(v22) - *(a1 + 72)))) / 100.0 * 100.0;
    if (v29 < 4.50359963e15)
    {
      v29 = (((v29 + v29) + 1) >> 1);
    }

    v30 = 9.22337204e18;
    if (v29 < 9.22337204e18)
    {
      v30 = v29;
    }

    v31 = v27;
    v32 = v30 / 100000.0 / 60.0 * 60.0 * 60.0 * 10.0;
    if (v32 >= 0.0)
    {
      if (v32 < 4.50359963e15)
      {
        v33 = (v32 + v32) + 1;
        goto LABEL_36;
      }
    }

    else if (v32 > -4.50359963e15)
    {
      v33 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
LABEL_36:
      v32 = (v33 >> 1);
    }

    v34 = (v32 + v31 - *(a1 + 80)) / 10.0;
    if (v34 < 0.0)
    {
      v34 = 0.0;
    }

    v21 += (*(a1 + 24) * v34);
    goto LABEL_40;
  }

  v10 = a2[3];
  v9 = a2[4];
  v11 = v10 + 48;
  v12 = v8;
  if (v10 != v9 && v11 != v9)
  {
    v14 = *(a1 + 48);
    v15 = *v10;
    do
    {
      v16 = *(v10 + 1);
      v17 = *(v11 + 1);
      if (((v14 >> v15) & 1) == 0)
      {
        v16 = 0;
      }

      if (((v14 >> *v11) & 1) == 0)
      {
        v17 = 0;
      }

      if (v16 < v17)
      {
        v15 = *v11;
        v10 = v11;
      }

      v11 += 48;
    }

    while (v11 != v9);
  }

  nullsub_1();
  v19 = sub_4566A4(v18);
  nullsub_1();
  v21 = (*(a1 + 16) * ((v19 - sub_5AAC4(v20)) / 1000.0 * 3600.0 / (*(v10 + 1) / 1000.0)));
  v8 = v12;
  if (*(a1 + 24) > 0.0)
  {
    goto LABEL_17;
  }

LABEL_40:
  v35 = sub_10BDE74((a1 + 88), a2, a3, *a4, a4[1]);
  if (v35 < 0)
  {
    v36 = -5;
  }

  else
  {
    v36 = 5;
  }

  return v35 / 10 + v21 + (((103 * (v36 + v35 % 10)) >> 15) & 1) + ((103 * (v36 + v35 % 10)) >> 10);
}

void sub_10BEEEC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1ABE) < 0)
  {
    sub_21E73AC();
  }

  sub_21E73B8();
  _Unwind_Resume(a1);
}

void sub_10BEF74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 5384) == 1)
  {
    sub_3E3DF0((v1 + 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_10BEF98(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, __n128 *a9@<X8>)
{
  v11 = a6;
  v43 = 0u;
  v44 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v45 = _Q0;
  v46 = 0x3FF0000000000000;
  v47 = 1;
  sub_10B0E88(a1, &v43, a2, a3, a4, a5, a6);
  if (v47 != 1)
  {
    *&v43 = 0x7FFFFFFFFFFFFFFFLL;
    *(&v43 + 1) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
    sub_446C94(a9);
    return;
  }

  v22 = sub_F8634C(&v43, &v45, v21);
  v24 = (v44 + v22);
  *&v43 = v24 | ((DWORD1(v44) + HIDWORD(v22)) << 32);
  *(&v43 + 1) = *(&v44 + 1) + v23;
  if (v24 == -1)
  {
    goto LABEL_19;
  }

  v25 = (v24 | ((DWORD1(v44) + HIDWORD(v22)) << 32)) >> 32;
  if (v25 == 0x7FFFFFFF || *(&v44 + 1) + v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  sub_10B17B4(a1, a2, a4, a5, v11);
  v27 = v26;
  v28 = sub_4C1A94(*a1, a2);
  v29 = a1[678];
  v30 = *(a2 + 32);
  v31 = sub_3F80(a5);
  v32 = sub_2D435C(v29, v30 & 0xFFFFFFFFFFFFFFLL, v31);
  v33 = sub_763590((a1 + 680), a2);
  v34 = a1[677];
  if ((*&v28 <= -1 || ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v28 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = v27;
  }

  v38 = sub_44F324(a1[679]);
  v42.n128_u64[0] = sub_450220(v33, v34, a2, v25, v32, a8, a7, v27, v28, a3 / 1000000000.0, v40, v38, v39);
  v42.n128_u64[1] = v41;
  sub_446CD4(a9, &v43, &v42);
}

void sub_10BF1E0(uint64_t a1@<X0>, int **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, __n128 *a9@<X8>)
{
  v11 = a6;
  v45 = 0u;
  v46 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v47 = _Q0;
  v48 = 0x3FF0000000000000;
  v49 = 1;
  sub_10B7014(a1, &v45, a2, a3, a4, a5, a6);
  if (v49 != 1)
  {
    *&v44 = 0x7FFFFFFFFFFFFFFFLL;
    *(&v44 + 1) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
    sub_446C94(a9);
    return;
  }

  v22 = sub_F8634C(&v45, &v47, v21);
  v24 = (v46 + v22);
  *&v44 = v24 | ((DWORD1(v46) + HIDWORD(v22)) << 32);
  *(&v44 + 1) = *(&v46 + 1) + v23;
  if (v24 == -1)
  {
    goto LABEL_19;
  }

  v25 = (v24 | ((DWORD1(v46) + HIDWORD(v22)) << 32)) >> 32;
  if (v25 == 0x7FFFFFFF || *(&v46 + 1) + v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  sub_10B17B4(a1, a2, a4, a5, v11);
  v27 = v26;
  v28 = sub_4C1A94(*a1, a2);
  v29 = *(a2 + 1);
  v45 = *a2;
  v46 = v29;
  *&v47 = a2[4];
  v30 = v47;
  v31 = *(a1 + 5424);
  v32 = sub_3F80(a5);
  v33 = sub_2D435C(v31, v30 & 0xFFFFFFFFFFFFFFLL, v32);
  v34 = sub_763590(a1 + 5440, &v45);
  v35 = *(a1 + 5416);
  if ((*&v28 <= -1 || ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v28 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = v27;
  }

  v39 = sub_44F324(*(a1 + 5432));
  v43.n128_u64[0] = sub_450220(v34, v35, &v45, v25, v33, a8, a7, v27, v28, a3 / 1000000000.0, v41, v39, v40);
  v43.n128_u64[1] = v42;
  sub_446CD4(a9, &v44, &v43);
}

double sub_10BF42C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v20 = a2;
  v21 = 0u;
  v22 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v23 = _Q0;
  v24 = 0x3FF0000000000000;
  v25 = 1;
  sub_10AFB6C(a1, &v21, &v20, a3, a4, a5);
  if (v25 == 1)
  {
    v13 = sub_F8634C(&v21, &v23, v12);
    v15 = *(&v22 + 1) + v14;
    v16 = (v22 + v13) | ((DWORD1(v22) + HIDWORD(v13)) << 32);
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v21 = v16;
  *(&v21 + 1) = v15;
  v19.n128_u64[0] = sub_456D70();
  v19.n128_u64[1] = v17;
  *&result = sub_446CD4(a6, &v21, &v19).n128_u64[0];
  return result;
}

void sub_10BF4F4()
{
  byte_27C1B1F = 3;
  LODWORD(qword_27C1B08) = 5136193;
  byte_27C1B37 = 3;
  LODWORD(qword_27C1B20) = 5136194;
  byte_27C1B4F = 3;
  LODWORD(qword_27C1B38) = 5136195;
  byte_27C1B67 = 15;
  strcpy(&qword_27C1B50, "vehicle_mass_kg");
  byte_27C1B7F = 21;
  strcpy(&xmmword_27C1B68, "vehicle_cargo_mass_kg");
  byte_27C1B97 = 19;
  strcpy(&qword_27C1B80, "vehicle_aux_power_w");
  byte_27C1BAF = 15;
  strcpy(&qword_27C1B98, "dcdc_efficiency");
  strcpy(&qword_27C1BB0, "drive_train_efficiency");
  HIBYTE(word_27C1BC6) = 22;
  operator new();
}

void sub_10BF6D0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1BC6) < 0)
  {
    sub_21E7488();
  }

  sub_21E7494();
  _Unwind_Resume(a1);
}

void sub_10BF6F0(uint64_t a1, void *a2, void *a3, unsigned int *a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  nullsub_1();
  v8 = sub_4566AC(v7);
  *(a1 + 4) = sub_3F80(a4 + 80);
  *(a1 + 12) = sub_3F80(a4 + 86);
  *(a1 + 20) = sub_3F80(a4 + 92);
  *(a1 + 28) = sub_3F80(a4 + 98);
  sub_448CA4(a2, &v8);
}

void sub_10BFC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10BFC40()
{
  byte_27C1C27 = 3;
  LODWORD(qword_27C1C10) = 5136193;
  byte_27C1C3F = 3;
  LODWORD(qword_27C1C28) = 5136194;
  byte_27C1C57 = 3;
  LODWORD(qword_27C1C40) = 5136195;
  byte_27C1C6F = 15;
  strcpy(&qword_27C1C58, "vehicle_mass_kg");
  byte_27C1C87 = 21;
  strcpy(&xmmword_27C1C70, "vehicle_cargo_mass_kg");
  byte_27C1C9F = 19;
  strcpy(&qword_27C1C88, "vehicle_aux_power_w");
  byte_27C1CB7 = 15;
  strcpy(&qword_27C1CA0, "dcdc_efficiency");
  strcpy(&qword_27C1CB8, "drive_train_efficiency");
  HIBYTE(word_27C1CCE) = 22;
  operator new();
}

void sub_10BFE1C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1CCE) < 0)
  {
    sub_21E7564();
  }

  sub_21E7570();
  _Unwind_Resume(a1);
}

double sub_10BFE3C(uint64_t a1)
{
  *&result = 0x8000000080000000;
  *a1 = 0x8000000080000000;
  *(a1 + 8) = 0x7FFFFFFF;
  return result;
}

BOOL sub_10BFE50(_DWORD *a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (a1[1] == 0x7FFFFFFF)
  {
    return 0;
  }

  return a1[2] != 0x7FFFFFFF;
}

BOOL sub_10BFE90(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v3 == v2)
  {
    v5 = a2[1];
    v6 = a1[1];
    if (v6 == v5)
    {
      return *a2 < *a1;
    }

    else
    {
      return v5 < v6;
    }
  }

  return v4;
}

uint64_t sub_10BFED0(uint64_t a1, int a2, int a3)
{
  v6 = sub_449B9C(a3, a1);
  v7 = sub_449C64(a3, a1);
  if (v6 <= a2)
  {
    return 0;
  }

  v8 = v7;
  v9 = (v6 - a2) / 1000000.0 * *(a1 + 8);
  if (v9 >= 0.0)
  {
    if (v9 >= 4.50359963e15)
    {
      goto LABEL_10;
    }

    v10 = (v9 + v9) + 1;
  }

  else
  {
    if (v9 <= -4.50359963e15)
    {
      goto LABEL_10;
    }

    v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
  }

  v9 = (v10 >> 1);
LABEL_10:
  result = v9;
  v12 = __OFSUB__(v8, a2);
  v13 = v8 - a2;
  if (!((v13 < 0) ^ v12 | (v13 == 0)))
  {
    v14 = v13 / 1000000.0 * *(a1 + 16);
    if (v14 >= 0.0)
    {
      if (v14 < 4.50359963e15)
      {
        v15 = (v14 + v14) + 1;
        goto LABEL_16;
      }
    }

    else if (v14 > -4.50359963e15)
    {
      v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
LABEL_16:
      v14 = (v15 >> 1);
    }

    return (v14 + result);
  }

  return result;
}

unint64_t sub_10C0038(uint64_t a1, uint64_t a2, int a3, int a4, signed int a5, char a6, int a7, _DWORD *a8)
{
  v13 = (a2 + 20);
  v14 = *(a2 + 20);
  v15 = v14 + a3 - *a8;
  if (a3 == 0x7FFFFFFF)
  {
    v15 = *(a2 + 20);
  }

  v16 = *(a2 + 28) + a4;
  if (a4 == 0x7FFFFFFF)
  {
    v16 = 0;
  }

  if (*(a2 + 16) > v15)
  {
    v15 = *(a2 + 16);
  }

  if (v15 >= v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = sub_444284(*(v13 - 3), v17) >> 32;
  if (a5 != 0x7FFFFFFFLL)
  {
    v19 = sub_444284(*(a2 + 8), a5);
    if (SHIDWORD(v19) > v18)
    {
      LODWORD(v18) = HIDWORD(v19);
    }
  }

  v20 = v18 - v14 + *a8;
  v21 = sub_456B24(v13, v18);
  sub_10BFED0(a1, v20, a7);
  sub_449CF4(a6, a1);
  return v18 | (v21 << 32);
}

unint64_t sub_10C016C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6)
{
  v12 = *(a3 + 4);
  v13 = (*(a2 + 28) + v12);
  sub_456544(v16, *(a2 + 28) + v12, a6);
  v14 = sub_456C80((a2 + 20), v16);
  sub_10BFED0(a1, *a6 + v14, a5);
  sub_449CF4(a4, a1);
  return v13 | (*(a3 + 4) << 32);
}

unint64_t sub_10C0228(int *a1, uint64_t a2, char a3, int a4, _DWORD *a5)
{
  v10 = sub_10C0038(a1, a2, a1[1], 0x7FFFFFFF, 0x7FFFFFFF, a3, a4, a5);
  v12 = v11;
  v48 = v10;
  v49 = v11;
  v41 = a3;
  v42 = a4;
  v46 = sub_10C0038(a1, a2, a1[3], 0x7FFFFFFF, 0x7FFFFFFF, a3, a4, a5);
  v47 = v13;
  v14 = v13 < v12;
  if (HIDWORD(v46) == HIDWORD(v10))
  {
    v15 = v10 < v46;
  }

  else
  {
    v15 = SHIDWORD(v10) < SHIDWORD(v46);
  }

  if (v12 == v13)
  {
    v14 = v15;
  }

  v16 = !v14;
  v17 = &v48;
  if (!v16)
  {
    v17 = &v46;
  }

  v50 = *v17;
  v51 = *(v17 + 2);
  if (*(a2 + 16) <= *(a2 + 20))
  {
    v18 = *(a2 + 20);
  }

  else
  {
    v18 = *(a2 + 16);
  }

  v19 = sub_444284(*(a2 + 8), v18);
  v20 = v19;
  v22 = v21;
  v23 = *a2;
  v24 = sub_456B24((a2 + 20), SHIDWORD(v19));
  v38 = *(a2 + 28);
  v39 = *a2;
  v40 = sub_588D8(*(a2 + 8));
  sub_10C04BC(a2, &v43);
  v25 = v45;
  if (v45 != v22)
  {
    v26 = (v23 + v20) | (v24 << 32);
    v27 = v22 + 2;
    while (SHIDWORD(v10) >= SHIDWORD(v26))
    {
      v28 = *(a2 + 28);
      v29 = (v28 + HIDWORD(v26));
      sub_456544(&v43, v28 + HIDWORD(v26), a5);
      v30 = sub_456C80((a2 + 20), &v43);
      v31 = sub_10BFED0(a1, *a5 + v30, v42);
      v32 = sub_449CF4(v41, a1);
      v33 = a1[6];
      if (v32 >= v29)
      {
        v33 = 0;
      }

      v43 = v26 & 0xFFFFFFFF00000000 | v29;
      v44 = v31 + v26 + v33;
      v34 = v44 < v51;
      if (v51 == v44)
      {
        v34 = v50 < v29;
        if (HIDWORD(v50) != HIDWORD(v26))
        {
          v34 = SHIDWORD(v50) < SHIDWORD(v26);
        }
      }

      v16 = !v34;
      v35 = &v43;
      if (v16)
      {
        v35 = &v50;
      }

      v36 = *v35;
      v51 = *(v35 + 2);
      v50 = v36;
      if (v27 < v40)
      {
        v26 = (*v27 + v39) | ((v27[1] - v38) << 32);
        v16 = v27 == v25;
        v27 += 2;
        if (v16)
        {
          return v50;
        }
      }

      else
      {
        v26 = 0x7FFFFFFF7FFFFFFFLL;
        v16 = v27 == v25;
        v27 += 2;
        if (v16)
        {
          return v50;
        }
      }
    }
  }

  return v50;
}

uint64_t sub_10C04BC@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (a1 + 5);
  v5 = a1[4];
  if (v5 <= a1[5])
  {
    v6 = a1[5];
  }

  else
  {
    v6 = a1[4];
  }

  if (v5 <= (a1[7] + a1[6]))
  {
    v7 = a1[7] + a1[6];
  }

  else
  {
    v7 = a1[4];
  }

  v8 = sub_444284(*(a1 + 1), v7);
  v10 = v9;
  v11 = v4[2];
  if (*v9 == v8)
  {
    if (v6 != v7 && v9[1] - v11 > a1[6])
    {
      v12 = *a1 + v8;
      v13 = v12 | (sub_456B24(v4, SHIDWORD(v8)) << 32);
      v14 = *a1 | (-a1[7] << 32);
LABEL_14:
      result = sub_588D8(*(a1 + 1));
      goto LABEL_15;
    }
  }

  else if (v6 != v7)
  {
    v16 = *a1 + v8;
    v13 = v16 | (sub_456B24(v4, SHIDWORD(v8)) << 32);
    v14 = *a1 | (-a1[7] << 32);
    v10 += 8;
    goto LABEL_14;
  }

  v14 = *a1 | (-v11 << 32);
  v10 = (v9 + 2);
  result = sub_588D8(*(a1 + 1));
  v13 = 0x7FFFFFFF7FFFFFFFLL;
LABEL_15:
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v10;
  a2[3] = result;
  return result;
}

uint64_t sub_10C05E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) == -1)
  {
    return 0;
  }

  v2 = *(a2 + 20);
  v3 = *(a1 + 36);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if ((v5 < 0) ^ v4 | (v5 == 0))
  {
    return 0;
  }

  v6 = v5 / v3 * *(a1 + 40);
  if (v6 >= 0.0)
  {
    if (v6 < 4.50359963e15)
    {
      v7 = (v6 + v6) + 1;
      goto LABEL_9;
    }
  }

  else if (v6 > -4.50359963e15)
  {
    v7 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
LABEL_9:
    v6 = (v7 >> 1);
  }

  return v6;
}

double sub_10C0678(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 101) = 0u;
  *(a1 + 120) = -1;
  *(a1 + 128) = -1;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  return result;
}

void sub_10C06C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v24 = v9;
  v10 = v8;
  v11 = *v8;
  *(&v27.__r_.__value_.__s + 23) = 9;
  strcpy(&v27, "EVRouting");
  __p[1] = 0;
  __p[0] = 0;
  v26 = 0;
  sub_3AEC94(v11, &v27, __p);
  v12 = __p[0];
  if (__p[0])
  {
    v13 = __p[1];
    v14 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = __p[0];
    }

    __p[1] = v12;
    operator delete(v14);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v16 = *v10;
  *(&v27.__r_.__value_.__s + 23) = 17;
  strcpy(&v27, "EVPathGraphSearch");
  __p[1] = 0;
  __p[0] = 0;
  v26 = 0;
  v17 = sub_3AEC94(v16, &v27, __p);
  v18 = __p[0];
  if (__p[0])
  {
    v19 = __p[1];
    v20 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = __p[0];
    }

    __p[1] = v18;
    operator delete(v20);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  nullsub_1();
  *(v10 + 116) = 1;
  *(v10 + 2) = sub_456754(v22);
  sub_7E9A4(v29);
  *(&v27.__r_.__value_.__s + 23) = 14;
  strcpy(&v27, "cost_functions");
  sub_5F5AC(v17, &v27);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  sub_FEEBFC((v24 + 17), &v27);
  v23 = std::string::append(&v27, "_", 1uLL);
  v28 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_10C43AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void ***a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a34);
  sub_404190(&a65);
  sub_11BD8(&STACK[0x548]);
  sub_CDE540(&STACK[0x570]);
  sub_CDCD6C(a19);
  sub_5C010(&STACK[0x18F8]);
  sub_5C010(&STACK[0x1950]);
  v68 = STACK[0x1978];
  if (STACK[0x1978])
  {
    STACK[0x1980] = v68;
    operator delete(v68);
    v67 = STACK[0x1990];
    if (!STACK[0x1990])
    {
LABEL_6:
      sub_10C5610(&STACK[0x19A8]);
      sub_3EE920(&STACK[0x1B28]);
      sub_FEA1DC(&STACK[0x1BC0]);
      sub_10C5750(&STACK[0x3170]);
      sub_10C57C4(&STACK[0x3298]);
      sub_10C52B0(&STACK[0x3348]);
      sub_FABDCC(&STACK[0x3378]);
      if (SLOBYTE(STACK[0x3AF7]) < 0)
      {
        operator delete(*(v65 - 224));
        if ((SLOBYTE(STACK[0x3B0F]) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }
      }

      else if ((SLOBYTE(STACK[0x3B0F]) & 0x80000000) == 0)
      {
LABEL_8:
        if ((SLOBYTE(STACK[0x3B27]) & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_12:
        operator delete(*(v65 - 176));
        goto LABEL_13;
      }

      operator delete(*(v65 - 200));
      if ((SLOBYTE(STACK[0x3B27]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v67 = STACK[0x1990];
    if (!STACK[0x1990])
    {
      goto LABEL_6;
    }
  }

  STACK[0x1998] = v67;
  operator delete(v67);
  goto LABEL_6;
}

uint64_t sub_10C49AC(uint64_t *a1, uint64_t a2, void *a3, void *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, unint64_t *a12)
{
  v12 = a8;
  sub_10CBED0(v47, a2, a6, a7);
  v16 = sub_F7603C(a3);
  v17 = v16;
  v18 = HIDWORD(v16);
  if (v16 != HIDWORD(v16))
  {
    do
    {
      sub_10CBEF4(v47, v17, v12, (*(a2 + 72) + 32 * v17));
      ++v17;
    }

    while (v18 != v17);
  }

  if (sub_4D1F6C(v47))
  {
    v19 = 0;
    goto LABEL_22;
  }

  sub_10CC0FC(v47, &v45);
  v21 = v45;
  v20 = v46;
  if (v45 != v46)
  {
    if (a9)
    {
      v22 = 3;
    }

    else
    {
      v22 = 0;
    }

    do
    {
      v23 = *v21;
      v24 = *(v21 + 8);
      v25 = *(v21 + 24);
      v26 = *(v21 + 40);
      v27 = *(v21 + 8);
      v44 = *(v21 + 7);
      v43[1] = v25;
      v43[2] = v26;
      v43[0] = v24;
      v41 = v27;
      v42 = *(v21 + 18);
      sub_10CA598(a2, v23, v43, &v41, v12, a3, a4, a11, &__p, *a5, *a1);
      sub_F74004(a12, &__p, v22);
      if (a10)
      {
        v28 = *(v21 + 24);
        v35[0] = *(v21 + 8);
        v35[1] = v28;
        v35[2] = *(v21 + 40);
        v36 = *(v21 + 7);
        sub_10C5350(a1, v35, a2, a3);
      }

      if (v40 < 0)
      {
        operator delete(v39);
        v29 = __p;
        if (__p)
        {
LABEL_17:
          v30 = v38;
          v31 = v29;
          if (v38 != v29)
          {
            do
            {
              v30 = sub_4547F0(v30 - 552);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v38 = v29;
          operator delete(v31);
        }
      }

      else
      {
        v29 = __p;
        if (__p)
        {
          goto LABEL_17;
        }
      }

      v21 += 80;
    }

    while (v21 != v20);
  }

  v19 = sub_10CC038(v47);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

LABEL_22:
  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }

  return v19;
}

void sub_10C4BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v25 = *(v23 - 200);
  if (v25)
  {
    *(v23 - 192) = v25;
    operator delete(v25);
    v26 = *(v23 - 176);
    if (!v26)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v26 = *(v23 - 176);
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  *(v23 - 168) = v26;
  operator delete(v26);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10C4C44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_3B1D8C(*a1);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = sub_45AC50(a2);
  result = sub_588D8(a2);
  v8 = result;
  while (v6 != v8)
  {
    v9 = sub_452E80(v6);
    result = sub_588D8(v6);
    if (v9 != result)
    {
      v10 = sub_73EEC(v9);
      v11 = sub_2AB71C(v5, *(v10 + 104), *(v10 + 112));
      result = sub_FEE610(a3, &v11, &v11);
    }

    v6 += 6;
  }

  return result;
}

void sub_10C4D70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unint64_t *a12)
{
  v12 = *a1;
  HIBYTE(v20[2]) = 17;
  strcpy(v20, "EVPathGraphSearch");
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_3AEC94(v12, v20, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v18;
    v15 = __p;
    if (v18 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v18 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
  }

  operator new();
}

void sub_10C5154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10C5190(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_F7603C(a3);
  v6 = HIDWORD(v5);
  if (v5 == HIDWORD(v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v9 = (*(a2 + 72) + 32 * v5);
      v10 = *v9;
      v11 = v9[1];
      while (v10 != v11)
      {
        v12 = *(v10 + 32);
        if (v12 != -1)
        {
          v13 = v12 + 1;
          v14 = a3[6];
          if (v12 + 1 >= ((a3[7] - v14) >> 2))
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v21 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
          }

          v15 = *(v14 + 4 * v12);
          v16 = *(v14 + 4 * v13);
          if (v15 != v16)
          {
            v17 = a3[9];
            v18 = v17 + 56 * v16;
            v19 = v17 + 56 * v15;
            do
            {
              *v19 = 0xFFFFFFFFLL;
              *(v19 + 8) = 0;
              *(v19 + 16) = xmmword_22A85E0;
              *(v19 + 32) = xmmword_22AF6E0;
              *(v19 + 48) = 0;
              v19 += 56;
            }

            while (v19 != v18);
          }

          v7 = 1;
        }

        v10 += 56;
      }

      LODWORD(v5) = v5 + 1;
    }

    while (v5 != v6);
  }

  return v7 & 1;
}

char **sub_10C52B0(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 1776;
        sub_F96138(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_10C5320@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 56);
  v3 = *(a1 + 88);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v3;
  *(a2 + 96) = *(a1 + 104);
  v4 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 48) = result;
  return result;
}

uint64_t *sub_10C5350(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 + 36);
  v4 = *(a2 + 36);
  if (v4 == -1)
  {
    return result;
  }

  v8 = a2;
  v9 = result;
  while (2)
  {
    v11 = *(v8 + 48);
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v11 - *(a4 + 72)) >> 3);
    v21 = -1227133513 * ((v11 - *(a4 + 72)) >> 3);
    v13 = v9[18];
    if (!v13)
    {
      goto LABEL_4;
    }

    v14 = vcnt_s8(v13);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v12;
      if (v13 <= v12)
      {
        v15 = v12 % v13;
      }
    }

    else
    {
      v15 = (v13 - 1) & v12;
    }

    v16 = *(v9[17] + 8 * v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_4:
      v22 = &v21;
      *(sub_10CA058(v9 + 17, &v21, &unk_229EB70, &v22) + 5) = 1;
      v10 = *(v8 + 48);
      v22 = &v21;
      result = sub_10CA058(v9 + 17, &v21, &unk_229EB70, &v22);
      *(result + 6) = *(v10 + 20);
      goto LABEL_5;
    }

    if (v14.u32[0] < 2uLL)
    {
      v18 = v13 - 1;
      while (1)
      {
        v19 = v17[1];
        if (v19 == v12)
        {
          if (*(v17 + 4) == v12)
          {
            goto LABEL_29;
          }
        }

        else if ((v19 & v18) != v15)
        {
          goto LABEL_4;
        }

        v17 = *v17;
        if (!v17)
        {
          goto LABEL_4;
        }
      }
    }

    while (1)
    {
      v20 = v17[1];
      if (v20 == v12)
      {
        break;
      }

      if (v20 >= v13)
      {
        v20 %= v13;
      }

      if (v20 != v15)
      {
        goto LABEL_4;
      }

LABEL_23:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_4;
      }
    }

    if (*(v17 + 4) != v12)
    {
      goto LABEL_23;
    }

LABEL_29:
    ++*(v17 + 5);
LABEL_5:
    v4 = *v5;
LABEL_6:
    v8 = *(*(a3 + 72) + 32 * v4) + 56 * *(v8 + 40);
    v5 = (v8 + 36);
    v4 = *(v8 + 36);
    if (*(v8 + 36) != -1)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10C554C(void *a1, unsigned int a2)
{
  v2 = a1[7] - a1[6];
  if (a2 + 1 >= (v2 >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v3 = (v2 >> 2) - 1;
  v4 = a1[12];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[13] - v4) >> 3) < v3)
  {
    v8 = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(v8, "no or incomplete vertex data stored", 0x23uLL);
  }

  return v4 + 24 * a2;
}

void *sub_10C5610(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    v4 = a1[10];
    v5 = a1[9];
    if (v4 != v3)
    {
      v6 = a1[10];
      do
      {
        v8 = *(v6 - 32);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 24) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[9];
    }

    a1[10] = v3;
    operator delete(v5);
  }

  v9 = a1[5];
  if (v9)
  {
    a1[6] = v9;
    operator delete(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    a1[3] = v10;
    operator delete(v10);
  }

  return a1;
}

void *sub_10C56B8(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      v5 = a1[9];
      do
      {
        v7 = *(v5 - 32);
        v5 -= 32;
        v6 = v7;
        if (v7)
        {
          *(v3 - 24) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  return a1;
}

void *sub_10C5750(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  v4 = a1[21];
  if (v4)
  {
    a1[22] = v4;
    operator delete(v4);
  }

  v5 = a1[18];
  if (v5)
  {
    a1[19] = v5;
    operator delete(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    a1[16] = v6;
    operator delete(v6);
  }

  return a1;
}

char **sub_10C57C4(char **a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[16];
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = &a1[21][v4];
        v6 = *(v5 + 1);
        if (v6)
        {
          *(v5 + 2) = v6;
          operator delete(v6);
        }

        v4 += 32;
        --v3;
      }

      while (v3);
      v2 = a1[21];
    }

    free(v2);
  }

  v7 = a1[18];
  if (v7)
  {
    a1[19] = v7;
    operator delete(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    a1[7] = v8;
    operator delete(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    a1[4] = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    v11 = a1[1];
    v12 = *a1;
    if (v11 != v10)
    {
      do
      {
        v11 -= 1776;
        sub_F96138(v11);
      }

      while (v11 != v10);
      v12 = *a1;
    }

    a1[1] = v10;
    operator delete(v12);
  }

  return a1;
}

void *sub_10C58A0(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  *(a1 + 6) = *(a2 + 96);
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  *(a1 + 15) = *(a2 + 120);
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  *(a1 + 9) = *(a2 + 144);
  a1[20] = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  *(a1 + 21) = *(a2 + 168);
  a1[23] = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  *(a1 + 27) = *(a2 + 216);
  a1[29] = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  sub_10734F8((a1 + 30), a2 + 240);
  sub_FEA5FC((a1 + 126), a2 + 1008);
  return a1;
}

void *sub_10C5A30(void **a1, uint64_t a2)
{
  v2 = 0xB195E8EFDB195E8FLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x24E6A171024E6ALL)
  {
    sub_1794();
  }

  if (0x632BD1DFB632BD1ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x632BD1DFB632BD1ELL * ((a1[2] - *a1) >> 4);
  }

  if (0xB195E8EFDB195E8FLL * ((a1[2] - *a1) >> 4) >= 0x127350B8812735)
  {
    v5 = 0x24E6A171024E6ALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x24E6A171024E6ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (16 * ((a1[1] - *a1) >> 4));
  sub_10C58A0(v6, a2);
  v7 = 1776 * v2 + 1776;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v6 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_10C58A0(v12, v11);
      v11 += 1776;
      v12 = v13 + 222;
    }

    while (v11 != v9);
    do
    {
      sub_F96138(v8);
      v8 += 1776;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void **sub_10C5B94(void **a1, void *a2)
{
  *a1 = a2;
  sub_10C5D3C(a1 + 1, a2);
  a1[12] = 0x7FFFFFFF7FFFFFFFLL;
  sub_444138(a1 + 13);
  *(a1 + 128) = 0;
  sub_F85884((a1 + 132));
  v3 = (*a1)[7] - (*a1)[6];
  if (0xAAAAAAAAAAAAAAABLL * (((*a1)[13] - (*a1)[12]) >> 3) != (v3 >> 2) - 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Graph does not have charging function data stored at all its vertices.", 0x46uLL);
  }

  v4 = ((v3 << 30) - 0x100000000) >> 32;
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = *(sub_10C554C(*a1, v6) + 8);
      v8 = *(sub_10C554C(*a1, v6) + 16);
      if (v7)
      {
        if (v8 == 0x7FFFFFFF)
        {
          goto LABEL_10;
        }
      }

      else if (v8 != 0x7FFFFFFF && *(sub_10C554C(*a1, v6) + 16))
      {
LABEL_10:
        v9 = __cxa_allocate_exception(0x40uLL);
        v10 = sub_2D390(v9, "Graph has inconsistent charging function data.", 0x2EuLL);
      }

      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

void sub_10C5D10(_Unwind_Exception *a1)
{
  v3 = v1[13];
  if (v3)
  {
    v1[14] = v3;
    operator delete(v3);
  }

  sub_10C56B8(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10C5D3C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = a1 + 8;
  sub_10C5DF0(a1 + 1, ((*(a2 + 56) - *(a2 + 48)) >> 2) - 1);
  v5 = ((*(a2 + 56) - *(a2 + 48)) >> 2) - 1;
  *__p = 0u;
  v8 = 0u;
  sub_10C5ED8(v4, v5, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10C5DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_21DB4B4(v12 + 8);
  _Unwind_Resume(a1);
}

size_t *sub_10C5DF0(size_t *a1, unsigned int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_428E0(a1 + 3, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_10C5EB4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_10C5ED8(uint64_t *result, unint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_10C604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_93BE50(va);
  _Unwind_Resume(a1);
}

void sub_10C6060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v7;
    operator delete(v7);
  }

  *(a5 + 8) = v5;
  sub_93BE50(va);
  _Unwind_Resume(a1);
}

void sub_10C6090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = a4;
  v9 = a5;
  *(a1 + 96) = sub_4566AC(&v8);
  v6 = sub_3F80(&v8);
  sub_444144(&v7, 0, v6);
}

uint64_t sub_10C61C4(uint64_t result, unsigned int **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = (result + 104);
    do
    {
      v8 = *v3;
      v9 = sub_3F80(a3);
      v10 = sub_444284(v7, v9);
      LODWORD(v28) = sub_4441E8(v7) - v10;
      *(&v28 + 1) = v7;
      v29 = sub_3F80(a3);
      *&v35[0] = sub_4566AC(a3);
      v11 = sub_4568CC(v35);
      v30 = v11;
      v31 = v12;
      v32 = -1;
      v33 = 0;
      v34 = 0;
      if (v29 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v29;
      }

      v14 = sub_444284(*(&v28 + 1), v13);
      v15 = (v28 + v14);
      v16 = v15 | (sub_456B24(&v30, SHIDWORD(v14)) << 32);
      sub_588D8(*(&v28 + 1));
      *&v35[0] = v16;
      sub_10C6888(v6 + 16, v8, v35);
      v17 = (*(v6 + 72) + 32 * v8);
      sub_F85884(v35);
      sub_10C6A88(v17, &v28, v35);
      result = sub_10C554C(*v6, v8);
      v18 = *(result + 8);
      if (v18)
      {
        v19 = sub_3F80(a3);
        v20 = sub_444284(v18, v19);
        LODWORD(v28) = sub_4441E8(v18) - v20;
        *(&v28 + 1) = v18;
        v29 = sub_3F80(a3);
        *&v35[0] = sub_4566AC(a3);
        v21 = sub_4568CC(v35);
        v30 = v21;
        v31 = v22;
        v32 = -1;
        v33 = 0;
        v34 = 0;
        if (v29 <= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v29;
        }

        v24 = sub_444284(*(&v28 + 1), v23);
        v25 = (v28 + v24);
        v26 = v25 | (sub_456B24(&v30, SHIDWORD(v24)) << 32);
        sub_588D8(*(&v28 + 1));
        *&v35[0] = v26;
        sub_10C6888(v6 + 16, v8, v35);
        v27 = (*(v6 + 72) + 32 * v8);
        sub_F85884(v35);
        result = sub_10C6A88(v27, &v28, v35);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

void sub_10C63E8(uint64_t result, uint64_t a2, void ***a3, uint64_t a4, uint64_t *a5, uint64_t a6, int *a7)
{
  if (*(result + 56))
  {
    while (1)
    {
      v8 = **(result + 8);
      v9 = *(result + 64) + 32 * v8;
      v10 = *(v9 + 24);
      *(v9 + 24) = v10 + 1;
      v74 = v10;
      v11 = *v9 + 56 * v10;
      v12 = *v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 32);
      v87 = *(v11 + 48);
      v85 = v13;
      v86 = v14;
      v84 = v12;
      sub_10C9C74(*a5, v8, &v84, v9);
      v15 = *(v9 + 24);
      if (0x6DB6DB6DB6DB6DB7 * ((*(v9 + 8) - *v9) >> 3) <= v15)
      {
        v21 = *(result + 8);
        *(*(result + 32) + 4 * *v21) = -1;
        v22 = *(result + 56) - 1;
        *(result + 56) = v22;
        if (v22)
        {
          v23 = &v21[3 * v22];
          *v21 = *v23;
          *(v21 + 1) = *(v23 + 1);
          v24 = *(result + 8);
          *(*(result + 32) + 4 * *v24) = 0;
          v25 = *(result + 56);
          if (v25 >= 2)
          {
            v26 = 0;
            v27 = 0;
            v28 = 1;
            do
            {
              v29 = v26 + 5;
              if (v29 >= v25)
              {
                v30 = v25;
              }

              else
              {
                v30 = v29;
              }

              if (v29 <= v28)
              {
                break;
              }

              v31 = v27;
              v32 = *&v24[3 * v27 + 1];
              v33 = HIDWORD(v32);
              v34 = &v24[3 * v28 + 1];
              v27 = -1;
              v35 = v32;
              do
              {
                if (*v34 < v35 || *v34 == v35 && v34[1] > v33)
                {
                  v35 = *v34;
                  LODWORD(v33) = v34[1];
                  v27 = v28;
                }

                ++v28;
                v34 += 3;
              }

              while (v28 < v30);
              if (v27 >= v25)
              {
                break;
              }

              v36 = &v24[3 * v27];
              v37 = 12 * v31;
              v38 = v24 + v37;
              v39 = *v36;
              *v36 = *v38;
              *v38 = v39;
              v40 = *(v36 + 1);
              *(v36 + 1) = v32;
              *(v38 + 4) = v40;
              v24 = *(result + 8);
              v41 = v24[3 * v27];
              v42 = *(result + 32);
              v43 = *(v24 + v37);
              LODWORD(v37) = *(v42 + 4 * v41);
              *(v42 + 4 * v41) = *(v42 + 4 * v43);
              *(v42 + 4 * v43) = v37;
              v26 = 4 * v27;
              v28 = (4 * v27) | 1;
              v25 = *(result + 56);
            }

            while (v28 < v25);
          }
        }

        *(result + 16) -= 12;
      }

      else
      {
        v16 = *v9 + 56 * v15;
        v17 = *(v16 + 16) <= *(v16 + 20) ? *(v16 + 20) : *(v16 + 16);
        v18 = sub_444284(*(v16 + 8), v17);
        v19 = (*v16 + v18);
        v20 = v19 | (sub_456B24((v16 + 20), SHIDWORD(v18)) << 32);
        sub_588D8(*(v16 + 8));
        *&v76 = v20;
        sub_10C6888(result + 8, v8, &v76);
      }

      v44 = *a3;
      if (!*(sub_10C554C(**a3, v8) + 8) || *(v44 + 128) != 1 || DWORD1(v86) == -1 || DWORD1(v86) == v8)
      {
        v45 = (v8 + 1);
        v46 = *(*result + 48);
        if (v45 >= (*(*result + 56) - v46) >> 2)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v70 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        v47 = *(v46 + 4 * v8);
        v48 = *(v46 + 4 * v45);
        if (v47 != v48)
        {
          break;
        }
      }

LABEL_3:
      if (!*(result + 56))
      {
        return;
      }
    }

    v49 = *(*result + 72);
    v50 = (v49 + 56 * v48);
    v51 = (v49 + 56 * v47);
    while (v51[4] == -1 || !sub_456A78(v51 + 6))
    {
LABEL_33:
      v51 += 14;
      if (v51 == v50)
      {
        goto LABEL_3;
      }
    }

    v52 = *v51;
    if (sub_456A78(v51 + 6))
    {
      v53 = v51[5];
      v54 = v84;
      v55 = *(&v84 + 1);
      v56 = v85;
      *&v76 = sub_456CF8(&v85 + 1, v51 + 6);
      DWORD2(v76) = v57;
      v58 = v86;
      v59 = 0x8000000080000000;
      if (sub_456A78(&v76))
      {
        v60 = sub_4441F4(v55);
        v61 = v76;
        if (v60 >= v76)
        {
          v62 = v54 + v53;
          v59 = *(&v76 + 4);
LABEL_42:
          *&v76 = v62;
          *(&v76 + 1) = v55;
          v77 = v56;
          v78 = v61;
          v79 = v59;
          v80 = v58;
          v81 = v8;
          v82 = v74;
          v63 = *(result + 64) + 32 * v52;
          v83 = v51;
          if (sub_10C6A88(v63, &v76, a7))
          {
            v64 = *v63 + 56 * *(v63 + 24);
            if (*(v64 + 16) <= *(v64 + 20))
            {
              v65 = *(v64 + 20);
            }

            else
            {
              v65 = *(v64 + 16);
            }

            v66 = sub_444284(*(v64 + 8), v65);
            v67 = (*v64 + v66);
            v68 = v67 | (sub_456B24((v64 + 20), SHIDWORD(v66)) << 32);
            sub_588D8(*(v64 + 8));
            v75 = v68;
            sub_10C6888(result + 8, v52, &v75);
          }

          goto LABEL_33;
        }
      }

      v55 = 0;
    }

    else
    {
      v55 = 0;
      v59 = 0x8000000080000000;
    }

    v58 = -1;
    v62 = 0x7FFFFFFF;
    v56 = 0x7FFFFFFF;
    v61 = 0x7FFFFFFF;
    goto LABEL_42;
  }
}

void sub_10C6888(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (a2 >= ((*(result + 32) - v3) >> 2) || (v4 = *(v3 + 4 * a2), v4 == -1))
  {
    sub_10C6DB4(result, a2, a3);
  }

  else
  {
    v5 = *result + 12 * v4;
    v6 = *(v5 + 4);
    *(v5 + 4) = *a3;
    if (*a3 >= v6 && (*a3 == v6 ? (v7 = *(a3 + 4) <= SHIDWORD(v6)) : (v7 = 1), v7))
    {
      v8 = (4 * v4) | 1;
      v9 = *(result + 48);
      if (v8 < v9)
      {
        v10 = 4 * v4;
        do
        {
          v11 = v10 + 5;
          if (v11 >= v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = v11;
          }

          if (v11 <= v8)
          {
            break;
          }

          v13 = *result;
          v14 = v4;
          v15 = *(*result + 12 * v4 + 4);
          v16 = HIDWORD(v15);
          v17 = (*result + 12 * v8 + 4);
          v4 = -1;
          v18 = v15;
          do
          {
            if (*v17 < v18 || *v17 == v18 && v17[1] > v16)
            {
              v18 = *v17;
              LODWORD(v16) = v17[1];
              v4 = v8;
            }

            ++v8;
            v17 += 3;
          }

          while (v8 < v12);
          if (v4 >= v9)
          {
            break;
          }

          v19 = v13 + 12 * v4;
          v20 = 12 * v14;
          v21 = v13 + v20;
          v22 = *v19;
          *v19 = *v21;
          *v21 = v22;
          v23 = *(v19 + 4);
          *(v19 + 4) = v15;
          *(v21 + 4) = v23;
          v24 = *(*result + 12 * v4);
          v25 = *(result + 24);
          v26 = *(*result + v20);
          LODWORD(v21) = *(v25 + 4 * v24);
          *(v25 + 4 * v24) = *(v25 + 4 * v26);
          *(v25 + 4 * v26) = v21;
          v10 = 4 * v4;
          v8 = (4 * v4) | 1;
          v9 = *(result + 48);
        }

        while (v8 < v9);
      }
    }

    else if (v4)
    {
      v27 = *result;
      do
      {
        v34 = v4 - 1;
        v35 = (v4 - 1) >> 2;
        v36 = (v27 + 12 * v35);
        v37 = (v27 + 12 * v4);
        v38 = v36[1];
        v39 = v37[1];
        if (v38 < v39 || v38 == v39 && v36[2] > v37[2])
        {
          break;
        }

        v28 = *v37;
        *v37 = *v36;
        *v36 = v28;
        v29 = *(v37 + 1);
        *(v37 + 1) = *(v36 + 1);
        *(v36 + 1) = v29;
        v27 = *result;
        v30 = *(*result + 12 * v4);
        v31 = *(result + 24);
        v32 = *(*result + 12 * v35);
        v33 = *(v31 + 4 * v30);
        *(v31 + 4 * v30) = *(v31 + 4 * v32);
        *(v31 + 4 * v32) = v33;
        v4 = v34 >> 2;
      }

      while (v34 >= 4);
    }
  }
}

BOOL sub_10C6A88(unsigned int **a1, __int128 *a2, int *a3)
{
  if (*a2 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (*(a2 + 1))
  {
    v5 = *(a2 + 4) == 0x7FFFFFFF;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  result = sub_456A78(a2 + 5);
  if (!result)
  {
    return result;
  }

  v8 = *(a2 + 5);
  if (v8 > sub_4441F4(*(a2 + 1)))
  {
    return 0;
  }

  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while (!sub_10C6F84(v9, a2, a3))
    {
      v9 += 14;
      if (v9 == v10)
      {
        v11 = a1;
        v9 = *a1;
        v10 = a1[1];
        goto LABEL_17;
      }
    }

    return 0;
  }

  v11 = a1;
LABEL_17:
  v12 = &v9[14 * *(v11 + 6)];
  v13 = v12;
  if (v12 != v10)
  {
    while (!sub_10C6F84(a2, v13, a3))
    {
      v13 += 14;
      v12 += 14;
      if (v13 == v10)
      {
        v13 = v10;
        goto LABEL_27;
      }
    }
  }

  if (v12 != v10)
  {
    for (i = v13 + 14; i != v10; i += 14)
    {
      if (!sub_10C6F84(a2, i, a3))
      {
        v15 = *i;
        v16 = *(i + 1);
        v17 = *(i + 2);
        *(v13 + 6) = *(i + 6);
        *(v13 + 1) = v16;
        *(v13 + 2) = v17;
        *v13 = v15;
        v13 += 14;
      }
    }
  }

LABEL_27:
  v18 = a1;
  v19 = a1[1];
  if (v13 != v19)
  {
    v19 = v13;
    a1[1] = v13;
  }

  v20 = a1[2];
  if (v19 >= v20)
  {
    v25 = *a1;
    v26 = 0x6DB6DB6DB6DB6DB7 * ((v19 - *a1) >> 3);
    v27 = v26 + 1;
    if ((v26 + 1) > 0x492492492492492)
    {
      sub_1794();
    }

    v28 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v25) >> 3);
    if (2 * v28 > v27)
    {
      v27 = 2 * v28;
    }

    if (v28 >= 0x249249249249249)
    {
      v29 = 0x492492492492492;
    }

    else
    {
      v29 = v27;
    }

    if (v29)
    {
      if (v29 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v30 = 8 * ((v19 - *a1) >> 3);
    v31 = a2[1];
    *v30 = *a2;
    *(v30 + 16) = v31;
    *(v30 + 32) = a2[2];
    *(v30 + 48) = *(a2 + 6);
    v24 = (56 * v26 + 56);
    v32 = 56 * v26 - (v19 - v25);
    memcpy((v30 - (v19 - v25)), v25, v19 - v25);
    *a1 = v32;
    a1[1] = v24;
    a1[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }

    v18 = a1;
  }

  else
  {
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[2];
    *(v19 + 6) = *(a2 + 6);
    *(v19 + 1) = v22;
    *(v19 + 2) = v23;
    *v19 = v21;
    v24 = (v19 + 14);
  }

  v33 = &(*v18)[14 * *(v18 + 6)];
  v34 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v24 - v33) >> 3));
  v18[1] = v24;
  if (v24 == v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  sub_10C774C(v33, v24, &v36, v35, 1);
  return 1;
}

void sub_10C6DB4(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = a2;
  v8 = a1[3];
  v9 = a1[4];
  v7 = (a1 + 3);
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 2;
  if (v11 <= a2)
  {
    do
    {
      v15 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v15 - v11);
        v8 = a1[3];
        v9 = a1[4];
        v10 = v9 - v8;
        v16 = (v9 - v8) >> 2;
        if (v11 < v16)
        {
          goto LABEL_12;
        }
      }

      else if (v15 < v11)
      {
        v9 = v8 + 4 * v15;
        a1[4] = v9;
        v10 = 4 * v15;
        v16 = (4 * v15) >> 2;
        if (v11 < v16)
        {
LABEL_12:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else
      {
        v10 = v9 - v8;
        v16 = (v9 - v8) >> 2;
        if (v11 < v16)
        {
          goto LABEL_12;
        }
      }

      v11 = v16;
    }

    while (v16 <= v6);
  }

  LODWORD(v29) = a2;
  v12 = *a3;
  HIDWORD(v29) = *a3;
  v30 = HIDWORD(v12);
  sub_376F0(a1, &v29);
  v13 = *(a1 + 12);
  *(a1[3] + 4 * v6) = v13;
  *(a1 + 12) = v13 + 1;
  if (v13)
  {
    v14 = *a1;
    do
    {
      v23 = v13 - 1;
      v24 = (v13 - 1) >> 2;
      v25 = (v14 + 12 * v24);
      v26 = (v14 + 12 * v13);
      v27 = v25[1];
      v28 = v26[1];
      if (v27 < v28 || v27 == v28 && v25[2] > v26[2])
      {
        break;
      }

      v17 = *v26;
      *v26 = *v25;
      *v25 = v17;
      v18 = *(v26 + 1);
      *(v26 + 1) = *(v25 + 1);
      *(v25 + 1) = v18;
      v14 = *a1;
      v19 = *(*a1 + 12 * v13);
      v20 = a1[3];
      v21 = *(*a1 + 12 * v24);
      v22 = *(v20 + 4 * v19);
      *(v20 + 4 * v19) = *(v20 + 4 * v21);
      *(v20 + 4 * v21) = v22;
      v13 = v23 >> 2;
    }

    while (v23 > 3);
  }
}

BOOL sub_10C6F84(unsigned int *a1, unsigned int *a2, int *a3)
{
  v6 = (a1 + 5);
  if (a1[4] <= a1[5])
  {
    v7 = a1[5];
  }

  else
  {
    v7 = a1[4];
  }

  v8 = sub_444284(*(a1 + 1), v7);
  v10 = v9;
  v11 = *a1 + v8;
  v12 = v11 | (sub_456B24(v6, SHIDWORD(v8)) << 32);
  v13 = *a1 | (-a1[7] << 32);
  v14 = sub_588D8(*(a1 + 1));
  sub_10C04BC(a1, v31);
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v10;
  v30[3] = v14;
  if (a2[4] <= a2[5])
  {
    v15 = a2[5];
  }

  else
  {
    v15 = a2[4];
  }

  v16 = sub_444284(*(a2 + 1), v15);
  v18 = v17;
  v19 = *a2 + v16;
  v20 = v19 | (sub_456B24(a2 + 5, SHIDWORD(v16)) << 32);
  v21 = *a2 | (-a2[7] << 32);
  v22 = sub_588D8(*(a2 + 1));
  sub_10C04BC(a2, v29);
  v28[0] = v20;
  v28[1] = v21;
  v28[2] = v18;
  v28[3] = v22;
  v27 = *a3;
  v25 = &v27;
  v26 = &v27;
  v23 = sub_10C70EC(a1, v28, v30, &v26);
  result = 0;
  if (!v23)
  {
    return !sub_10C7238(a1, v30, v28, &v25);
  }

  return result;
}

BOOL sub_10C70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = (*(a2 + 16) + 8);
  if (v7 <= v8)
  {
    v9 = 0x7FFFFFFF7FFFFFFFLL;
  }

  else
  {
    v9 = (*v8 + v6) | ((*(*(a2 + 16) + 12) + HIDWORD(v6)) << 32);
  }

  v23[0] = v9;
  v23[1] = v6;
  v23[2] = v8;
  v23[3] = v7;
  v22[0] = v23;
  v22[1] = a2;
  v22[2] = v24;
  v21[0] = v24;
  v21[1] = v23;
  v21[2] = a2;
  *&v19 = v22;
  *(&v19 + 1) = a4;
  v20 = v21;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 12);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(a3 + 48);
  v25 = v19;
  v26 = v21;
  if (v13 == v15)
  {
LABEL_11:
    *&v25 = *(a3 + 32);
    return sub_10C7384(&v19, &v25);
  }

  else
  {
    v16 = v13 + 2;
    while (1)
    {
      v27 = v10;
      if (sub_10C7384(&v25, &v27))
      {
        return 1;
      }

      if (v14 > v16)
      {
        v10 = (*v16 + v11) | ((v16[1] + v12) << 32);
        v17 = v16 == v15;
        v16 += 2;
        if (v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = 0x7FFFFFFF7FFFFFFFLL;
        v17 = v16 == v15;
        v16 += 2;
        if (v17)
        {
          goto LABEL_11;
        }
      }
    }
  }
}

BOOL sub_10C7238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = (*(a2 + 16) + 8);
  if (v7 <= v8)
  {
    v9 = 0x7FFFFFFF7FFFFFFFLL;
  }

  else
  {
    v9 = (*v8 + v6) | ((*(*(a2 + 16) + 12) + HIDWORD(v6)) << 32);
  }

  v23[0] = v9;
  v23[1] = v6;
  v23[2] = v8;
  v23[3] = v7;
  v22[0] = v23;
  v22[1] = a2;
  v22[2] = v24;
  v21[0] = v24;
  v21[1] = v23;
  v21[2] = a2;
  *&v19 = v22;
  *(&v19 + 1) = a4;
  v20 = v21;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 12);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(a3 + 48);
  v25 = v19;
  v26 = v21;
  if (v13 == v15)
  {
LABEL_11:
    *&v25 = *(a3 + 32);
    return sub_10C7564(&v19, &v25);
  }

  else
  {
    v16 = v13 + 2;
    while (1)
    {
      v27 = v10;
      if (sub_10C7564(&v25, &v27))
      {
        return 1;
      }

      if (v14 > v16)
      {
        v10 = (*v16 + v11) | ((v16[1] + v12) << 32);
        v17 = v16 == v15;
        v16 += 2;
        if (v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = 0x7FFFFFFF7FFFFFFFLL;
        v17 = v16 == v15;
        v16 += 2;
        if (v17)
        {
          goto LABEL_11;
        }
      }
    }
  }
}

BOOL sub_10C7384(uint64_t **a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == 0x7FFFFFFF || v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  v8 = (v7 + 16);
  if (*(v7 + 16) == *((*a1)[1] + 48))
  {
    v9 = a1[2];
    v10 = *v9;
    if (v2 < **v9)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v2 = *a2;
      if (*v7 >= *a2)
      {
        break;
      }

      v12 = v6[2];
      *v12 = *v7;
      v12[2] = *v8;
      v13 = *v6;
      v14 = *(*v6 + 16);
      v15 = *(*v6 + 24);
      *(*v6 + 16) = v14 + 8;
      if (v15 > v14 + 8)
      {
        v11 = (*(v14 + 8) + *(v13 + 8)) | ((*(v14 + 12) + *(v13 + 12)) << 32);
      }

      else
      {
        v11 = 0x7FFFFFFF7FFFFFFFLL;
      }

      *v13 = v11;
      v7 = *v6;
      v8 = (*v6 + 16);
      if (*v8 == *(v6[1] + 48))
      {
        v2 = *a2;
        break;
      }
    }

    v3 = a2[1];
    v9 = a1[2];
    v10 = *v9;
    if (v2 < **v9)
    {
      return 0;
    }
  }

  v16 = a1[1];
  v18 = v9[1];
  v17 = v9[2];
  if (v18[2] != *(v17 + 48))
  {
    v24 = *v10;
    v19 = *v18;
LABEL_19:
    v23 = v19;
    v20 = sub_444200(&v24, &v23, v2);
    goto LABEL_27;
  }

  v21 = *(v17 + 32);
  v20 = *(v17 + 36);
  if (v21 == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
  {
    v20 = v10[1];
  }

  else if (v2 <= v21)
  {
    v24 = *v10;
    v19 = *(v17 + 32);
    goto LABEL_19;
  }

LABEL_27:
  if (v20 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (v3 == 0x7FFFFFFF)
  {
    return 1;
  }

  return v20 - **v16 > v3;
}

BOOL sub_10C7564(uint64_t **a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == 0x7FFFFFFF || v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *a1;
  v7 = **a1;
  v8 = (v7 + 16);
  if (*(v7 + 16) == *((*a1)[1] + 48))
  {
    v9 = a1[2];
    v10 = *v9;
    if (v2 < **v9)
    {
      return v3 != 0x7FFFFFFF;
    }
  }

  else
  {
    while (1)
    {
      v2 = *a2;
      if (*v7 >= *a2)
      {
        break;
      }

      v12 = v6[2];
      *v12 = *v7;
      v12[2] = *v8;
      v13 = *v6;
      v14 = *(*v6 + 16);
      v15 = *(*v6 + 24);
      *(*v6 + 16) = v14 + 8;
      if (v15 > v14 + 8)
      {
        v11 = (*(v14 + 8) + *(v13 + 8)) | ((*(v14 + 12) + *(v13 + 12)) << 32);
      }

      else
      {
        v11 = 0x7FFFFFFF7FFFFFFFLL;
      }

      *v13 = v11;
      v7 = *v6;
      v8 = (*v6 + 16);
      if (*v8 == *(v6[1] + 48))
      {
        v2 = *a2;
        break;
      }
    }

    v3 = a2[1];
    v9 = a1[2];
    v10 = *v9;
    if (v2 < **v9)
    {
      return v3 != 0x7FFFFFFF;
    }
  }

  v16 = a1[1];
  v18 = v9[1];
  v17 = v9[2];
  if (v18[2] != *(v17 + 48))
  {
    v24 = *v10;
    v19 = *v18;
LABEL_19:
    v23 = v19;
    v20 = sub_444200(&v24, &v23, v2);
    goto LABEL_27;
  }

  v21 = *(v17 + 32);
  v20 = *(v17 + 36);
  if (v21 == 0x7FFFFFFF || v20 == 0x7FFFFFFF)
  {
    v20 = v10[1];
  }

  else if (v2 <= v21)
  {
    v24 = *v10;
    v19 = *(v17 + 32);
    goto LABEL_19;
  }

LABEL_27:
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (v20 == 0x7FFFFFFF)
  {
    return 1;
  }

  return v3 - **v16 > v20;
}

void sub_10C774C(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = result;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    result = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          sub_10C7FB8(result, (result + 56), (a2 - 56));
          return;
        case 4uLL:

          sub_10C8390(result, result + 56, result + 112, (a2 - 56));
          return;
        case 5uLL:

          sub_10C860C(result, (result + 56), (result + 112), result + 168, (a2 - 56));
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 10) <= *(a2 - 9))
        {
          v37 = *(a2 - 9);
        }

        else
        {
          v37 = *(a2 - 10);
        }

        v38 = sub_444284(*(a2 - 6), v37);
        v39 = a2 - 56;
        v40 = *(a2 - 14) + v38;
        v41 = sub_456B24(a2 - 9, SHIDWORD(v38));
        sub_588D8(*(a2 - 6));
        if (*(result + 16) <= *(result + 20))
        {
          v42 = *(result + 20);
        }

        else
        {
          v42 = *(result + 16);
        }

        v43 = sub_444284(*(result + 8), v42);
        v44 = *result + v43;
        v45 = sub_456B24((result + 20), SHIDWORD(v43));
        sub_588D8(*(result + 8));
        if (v40 < v44 || (v40 == v44 ? (v46 = v41 <= v45) : (v46 = 1), !v46))
        {
          v47 = *result;
          v48 = *(result + 16);
          v49 = *(result + 32);
          v133 = *(result + 48);
          v131 = v48;
          v132 = v49;
          v128 = v47;
          v50 = *v39;
          v51 = *(v39 + 1);
          v52 = *(v39 + 2);
          *(result + 48) = *(v39 + 6);
          *(result + 16) = v51;
          *(result + 32) = v52;
          *result = v50;
          *v39 = v128;
          *(v39 + 1) = v131;
          *(v39 + 2) = v132;
          *(v39 + 6) = v133;
        }

        return;
      }
    }

    if (v12 <= 1343)
    {
      break;
    }

    if (v10 == 1)
    {
      if (result != a2)
      {
        v90 = (v13 - 2) >> 1;
        v91 = v90 + 1;
        v92 = (result + 56 * v90);
        do
        {
          sub_10C9544(result, a3, 0x6DB6DB6DB6DB6DB7 * (v12 >> 3), v92);
          v92 -= 14;
          --v91;
        }

        while (v91);
        v93 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
        do
        {
          sub_10C98C8(result, a2, a3, v93);
          a2 = (a2 - 56);
          v46 = v93-- > 2;
        }

        while (v46);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = result + 56 * (v13 >> 1);
    if (v12 < 0x1C01)
    {
      sub_10C7FB8(v15, result, (a2 - 56));
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_10C7FB8(result, v15, (a2 - 56));
      v16 = 56 * v14;
      v17 = (56 * v14 + result - 56);
      sub_10C7FB8((result + 56), v17, a2 - 7);
      sub_10C7FB8((result + 112), (result + 56 + v16), (a2 - 168));
      sub_10C7FB8(v17, v15, (result + 56 + v16));
      v18 = *result;
      v19 = *(result + 16);
      v20 = *(result + 32);
      v133 = *(result + 48);
      v131 = v19;
      v132 = v20;
      v127 = v18;
      v21 = *v15;
      v22 = *(v15 + 16);
      v23 = *(v15 + 32);
      *(result + 48) = *(v15 + 48);
      *(result + 16) = v22;
      *(result + 32) = v23;
      *result = v21;
      v24 = v131;
      v25 = v132;
      *(v15 + 48) = v133;
      *(v15 + 16) = v24;
      *(v15 + 32) = v25;
      *v15 = v127;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    if (*(result - 40) <= *(result - 36))
    {
      v26 = *(result - 36);
    }

    else
    {
      v26 = *(result - 40);
    }

    v27 = sub_444284(*(result - 48), v26);
    v28 = *(result - 56) + v27;
    v29 = sub_456B24((result - 36), SHIDWORD(v27));
    sub_588D8(*(result - 48));
    if (*(result + 16) <= *(result + 20))
    {
      v30 = *(result + 20);
    }

    else
    {
      v30 = *(result + 16);
    }

    v31 = sub_444284(*(result + 8), v30);
    v32 = *result + v31;
    v33 = sub_456B24((result + 20), SHIDWORD(v31));
    sub_588D8(*(result + 8));
    if (v28 >= v32 && (v28 != v32 || v29 <= v33))
    {
      v9 = sub_10C8940(result, a2);
      goto LABEL_29;
    }

LABEL_25:
    v34 = sub_10C8D74(result, a2);
    if ((v35 & 1) == 0)
    {
      goto LABEL_28;
    }

    v36 = sub_10C9170(result, v34);
    v9 = v34 + 14;
    if (sub_10C9170((v34 + 14), a2))
    {
      a4 = -v11;
      a2 = v34;
      if (v36)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v36)
    {
LABEL_28:
      sub_10C774C(result, v34, a3, -v11, a5 & 1);
      v9 = v34 + 14;
LABEL_29:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v53 = (result + 56);
  v55 = result == a2 || v53 == a2;
  if (a5)
  {
    if (!v55)
    {
      v56 = 0;
      v57 = result;
      do
      {
        v59 = v53;
        v63 = v53 + 5;
        v62 = *(v53 + 5);
        if (*(v63 - 1) <= v62)
        {
          v64 = v62;
        }

        else
        {
          v64 = *(v63 - 1);
        }

        v65 = sub_444284(*(v63 - 3), v64);
        v66 = *(v57 + 56) + v65;
        v67 = sub_456B24(v63, SHIDWORD(v65));
        sub_588D8(*(v63 - 3));
        if (*(v57 + 16) <= *(v57 + 20))
        {
          v68 = *(v57 + 20);
        }

        else
        {
          v68 = *(v57 + 16);
        }

        v69 = sub_444284(*(v57 + 8), v68);
        v70 = *v57 + v69;
        v71 = sub_456B24((v57 + 20), SHIDWORD(v69));
        sub_588D8(*(v57 + 8));
        if (v66 < v70 || (v66 == v70 ? (v72 = v67 <= v71) : (v72 = 1), !v72))
        {
          v73 = *v59;
          v74 = *(v59 + 16);
          v75 = *(v59 + 32);
          v133 = *(v59 + 48);
          v131 = v74;
          v132 = v75;
          v129 = v73;
          v76 = *(v57 + 16);
          *v59 = *v57;
          *(v59 + 16) = v76;
          *(v59 + 32) = *(v57 + 32);
          *(v59 + 48) = *(v57 + 48);
          v58 = result;
          if (v57 != result)
          {
            v125 = v59;
            v126 = v56;
            v77 = v56;
            while (1)
            {
              v79 = result + v77;
              v80 = v131 <= SDWORD1(v131) ? DWORD1(v131) : v131;
              v81 = sub_444284(*(&v129 + 1), v80);
              v82 = v81;
              v83 = sub_456B24(&v131 + 1, SHIDWORD(v81));
              sub_588D8(*(&v129 + 1));
              v84 = *(v79 - 40) <= *(v79 - 36) ? *(v79 - 36) : *(v79 - 40);
              v85 = sub_444284(*(v79 - 48), v84);
              v86 = v129 + v82;
              v87 = *(v79 - 56) + v85;
              v88 = sub_456B24((v79 - 36), SHIDWORD(v85));
              sub_588D8(*(v79 - 48));
              if (v86 >= v87 && (v86 != v87 || v83 <= v88))
              {
                break;
              }

              v78 = *(v79 - 40);
              *v79 = *(v79 - 56);
              *(v79 + 16) = v78;
              *(v79 + 32) = *(v79 - 24);
              *(v79 + 48) = *(v79 - 8);
              v77 -= 56;
              if (!v77)
              {
                v58 = result;
                goto LABEL_64;
              }
            }

            v58 = result + v77;
LABEL_64:
            v59 = v125;
            v56 = v126;
          }

          v60 = v131;
          v61 = v132;
          *(v58 + 48) = v133;
          *(v58 + 16) = v60;
          *(v58 + 32) = v61;
          *v58 = v129;
        }

        v53 = (v59 + 56);
        v56 += 56;
        v57 = v59;
      }

      while ((v59 + 56) != a2);
    }
  }

  else if (!v55)
  {
    do
    {
      v94 = v53;
      v96 = v53 + 5;
      v95 = *(v53 + 5);
      if (*(v96 - 1) <= v95)
      {
        v97 = v95;
      }

      else
      {
        v97 = *(v96 - 1);
      }

      v98 = sub_444284(*(v96 - 3), v97);
      v99 = *(result + 56) + v98;
      v100 = sub_456B24(v96, SHIDWORD(v98));
      sub_588D8(*(v96 - 3));
      if (*(result + 16) <= *(result + 20))
      {
        v101 = *(result + 20);
      }

      else
      {
        v101 = *(result + 16);
      }

      v102 = sub_444284(*(result + 8), v101);
      v103 = *result + v102;
      v104 = sub_456B24((result + 20), SHIDWORD(v102));
      sub_588D8(*(result + 8));
      if (v99 < v103 || (v99 == v103 ? (v105 = v100 <= v104) : (v105 = 1), !v105))
      {
        v106 = *v94;
        v107 = *(v94 + 16);
        v108 = *(v94 + 32);
        v133 = *(v94 + 48);
        v131 = v107;
        v132 = v108;
        v130 = v106;
        do
        {
          v109 = result;
          v110 = *(result + 16);
          *(result + 56) = *result;
          *(result + 72) = v110;
          *(result + 88) = *(result + 32);
          *(result + 104) = *(result + 48);
          if (v131 <= SDWORD1(v131))
          {
            v111 = DWORD1(v131);
          }

          else
          {
            v111 = v131;
          }

          v112 = sub_444284(*(&v130 + 1), v111);
          v113 = v112;
          v114 = sub_456B24(&v131 + 1, SHIDWORD(v112));
          sub_588D8(*(&v130 + 1));
          v115 = (result - 36);
          if (*(result - 40) <= *(result - 36))
          {
            v116 = *(result - 36);
          }

          else
          {
            v116 = *(result - 40);
          }

          v117 = sub_444284(*(result - 48), v116);
          v118 = *(result - 56);
          result -= 56;
          v119 = v130 + v113;
          v120 = v118 + v117;
          v121 = sub_456B24(v115, SHIDWORD(v117));
          sub_588D8(*(v109 - 48));
        }

        while (v119 < v120 || v119 == v120 && v114 > v121);
        v123 = v131;
        v124 = v132;
        *(v109 + 48) = v133;
        *(v109 + 16) = v123;
        *(v109 + 32) = v124;
        *v109 = v130;
      }

      v53 = (v94 + 56);
      result = v94;
    }

    while ((v94 + 56) != a2);
  }
}

uint64_t sub_10C7FB8(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = a2 + 5;
  if (*(a2 + 4) <= *(a2 + 5))
  {
    v7 = *(a2 + 5);
  }

  else
  {
    v7 = *(a2 + 4);
  }

  v8 = sub_444284(*(a2 + 1), v7);
  v9 = *a2 + v8;
  v10 = sub_456B24(v6, SHIDWORD(v8));
  sub_588D8(*(a2 + 1));
  if (*(a1 + 4) <= *(a1 + 5))
  {
    v11 = *(a1 + 5);
  }

  else
  {
    v11 = *(a1 + 4);
  }

  v12 = sub_444284(*(a1 + 1), v11);
  v13 = *a1 + v12;
  v14 = sub_456B24(a1 + 5, SHIDWORD(v12));
  sub_588D8(*(a1 + 1));
  if (v9 >= v13 && (v9 == v13 ? (v15 = v10 <= v14) : (v15 = 1), v15))
  {
    if (*(a3 + 4) <= *(a3 + 5))
    {
      v16 = *(a3 + 5);
    }

    else
    {
      v16 = *(a3 + 4);
    }

    v17 = sub_444284(*(a3 + 1), v16);
    v18 = *a3 + v17;
    v19 = sub_456B24(a3 + 5, SHIDWORD(v17));
    sub_588D8(*(a3 + 1));
    if (*(a2 + 4) <= *(a2 + 5))
    {
      v20 = *(a2 + 5);
    }

    else
    {
      v20 = *(a2 + 4);
    }

    v21 = sub_444284(*(a2 + 1), v20);
    v22 = *a2 + v21;
    v23 = sub_456B24(v6, SHIDWORD(v21));
    sub_588D8(*(a2 + 1));
    if (v18 < v22 || (result = 0, v18 == v22) && v19 > v23)
    {
      v25 = *(a2 + 6);
      v27 = a2[1];
      v26 = a2[2];
      v28 = *a2;
      v30 = a3[1];
      v29 = a3[2];
      v31 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v30;
      a2[2] = v29;
      *a2 = v31;
      *a3 = v28;
      a3[1] = v27;
      a3[2] = v26;
      *(a3 + 6) = v25;
      v32 = *(a2 + 4) <= *(a2 + 5) ? *(a2 + 5) : *(a2 + 4);
      v33 = sub_444284(*(a2 + 1), v32);
      v34 = *a2 + v33;
      v35 = sub_456B24(v6, SHIDWORD(v33));
      sub_588D8(*(a2 + 1));
      v36 = *(a1 + 4) <= *(a1 + 5) ? *(a1 + 5) : *(a1 + 4);
      v37 = sub_444284(*(a1 + 1), v36);
      v38 = *a1 + v37;
      v39 = sub_456B24(a1 + 5, SHIDWORD(v37));
      sub_588D8(*(a1 + 1));
      if (v34 < v38 || (result = 1, v34 == v38) && v35 > v39)
      {
        v40 = *(a1 + 6);
        v42 = a1[1];
        v41 = a1[2];
        v43 = *a1;
        v45 = a2[1];
        v44 = a2[2];
        v46 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v45;
        a1[2] = v44;
        *a1 = v46;
        *a2 = v43;
        a2[1] = v42;
        a2[2] = v41;
        result = 1;
        *(a2 + 6) = v40;
      }
    }
  }

  else
  {
    if (*(a3 + 4) <= *(a3 + 5))
    {
      v47 = *(a3 + 5);
    }

    else
    {
      v47 = *(a3 + 4);
    }

    v48 = sub_444284(*(a3 + 1), v47);
    v49 = *a3 + v48;
    v50 = sub_456B24(a3 + 5, SHIDWORD(v48));
    sub_588D8(*(a3 + 1));
    if (*(a2 + 4) <= *(a2 + 5))
    {
      v51 = *(a2 + 5);
    }

    else
    {
      v51 = *(a2 + 4);
    }

    v52 = sub_444284(*(a2 + 1), v51);
    v53 = *a2 + v52;
    v54 = sub_456B24(v6, SHIDWORD(v52));
    sub_588D8(*(a2 + 1));
    if (v49 < v53 || v49 == v53 && v50 > v54)
    {
      v55 = *(a1 + 6);
      v57 = a1[1];
      v56 = a1[2];
      v58 = *a1;
      v60 = a3[1];
      v59 = a3[2];
      v61 = *a3;
      *(a1 + 6) = *(a3 + 6);
      a1[1] = v60;
      a1[2] = v59;
      *a1 = v61;
LABEL_42:
      *a3 = v58;
      a3[1] = v57;
      a3[2] = v56;
      result = 1;
      *(a3 + 6) = v55;
      return result;
    }

    v62 = *(a1 + 6);
    v64 = a1[1];
    v63 = a1[2];
    v65 = *a1;
    v67 = a2[1];
    v66 = a2[2];
    v68 = *a2;
    *(a1 + 6) = *(a2 + 6);
    a1[1] = v67;
    a1[2] = v66;
    *a1 = v68;
    *a2 = v65;
    a2[1] = v64;
    a2[2] = v63;
    *(a2 + 6) = v62;
    if (*(a3 + 4) <= *(a3 + 5))
    {
      v69 = *(a3 + 5);
    }

    else
    {
      v69 = *(a3 + 4);
    }

    v70 = sub_444284(*(a3 + 1), v69);
    v71 = *a3 + v70;
    v72 = sub_456B24(a3 + 5, SHIDWORD(v70));
    sub_588D8(*(a3 + 1));
    if (*(a2 + 4) <= *(a2 + 5))
    {
      v73 = *(a2 + 5);
    }

    else
    {
      v73 = *(a2 + 4);
    }

    v74 = sub_444284(*(a2 + 1), v73);
    v75 = *a2 + v74;
    v76 = sub_456B24(v6, SHIDWORD(v74));
    sub_588D8(*(a2 + 1));
    if (v71 < v75 || (result = 1, v71 == v75) && v72 > v76)
    {
      v55 = *(a2 + 6);
      v57 = a2[1];
      v56 = a2[2];
      v58 = *a2;
      v78 = a3[1];
      v77 = a3[2];
      v79 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v78;
      a2[2] = v77;
      *a2 = v79;
      goto LABEL_42;
    }
  }

  return result;
}

__n128 sub_10C8390(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_10C7FB8(a1, a2, a3);
  if (*(a4 + 4) <= *(a4 + 5))
  {
    v8 = *(a4 + 5);
  }

  else
  {
    v8 = *(a4 + 4);
  }

  v9 = sub_444284(*(a4 + 1), v8);
  v10 = *a4 + v9;
  v11 = sub_456B24(a4 + 5, SHIDWORD(v9));
  sub_588D8(*(a4 + 1));
  if (*(a3 + 16) <= *(a3 + 20))
  {
    v12 = *(a3 + 20);
  }

  else
  {
    v12 = *(a3 + 16);
  }

  v13 = sub_444284(*(a3 + 8), v12);
  v14 = *a3 + v13;
  v15 = sub_456B24((a3 + 20), SHIDWORD(v13));
  sub_588D8(*(a3 + 8));
  if (v10 < v14 || (v10 == v14 ? (v17 = v11 <= v15) : (v17 = 1), !v17))
  {
    v18 = *(a3 + 48);
    v20 = *(a3 + 16);
    v19 = *(a3 + 32);
    v21 = *a3;
    v23 = a4[1];
    v22 = a4[2];
    v24 = *a4;
    *(a3 + 48) = *(a4 + 6);
    *(a3 + 16) = v23;
    *(a3 + 32) = v22;
    *a3 = v24;
    *a4 = v21;
    a4[1] = v20;
    a4[2] = v19;
    *(a4 + 6) = v18;
    if (*(a3 + 16) <= *(a3 + 20))
    {
      v25 = *(a3 + 20);
    }

    else
    {
      v25 = *(a3 + 16);
    }

    v26 = sub_444284(*(a3 + 8), v25);
    v27 = *a3 + v26;
    v28 = sub_456B24((a3 + 20), SHIDWORD(v26));
    sub_588D8(*(a3 + 8));
    if (*(a2 + 16) <= *(a2 + 20))
    {
      v29 = *(a2 + 20);
    }

    else
    {
      v29 = *(a2 + 16);
    }

    v30 = sub_444284(*(a2 + 8), v29);
    v31 = *a2 + v30;
    v32 = sub_456B24((a2 + 20), SHIDWORD(v30));
    sub_588D8(*(a2 + 8));
    if (v27 < v31 || v27 == v31 && v28 > v32)
    {
      v33 = *(a2 + 48);
      v35 = *(a2 + 16);
      v34 = *(a2 + 32);
      v36 = *a2;
      v38 = *(a3 + 16);
      v37 = *(a3 + 32);
      v39 = *a3;
      *(a2 + 48) = *(a3 + 48);
      *(a2 + 16) = v38;
      *(a2 + 32) = v37;
      *a2 = v39;
      *a3 = v36;
      *(a3 + 16) = v35;
      *(a3 + 32) = v34;
      *(a3 + 48) = v33;
      if (*(a2 + 16) <= *(a2 + 20))
      {
        v40 = *(a2 + 20);
      }

      else
      {
        v40 = *(a2 + 16);
      }

      v41 = sub_444284(*(a2 + 8), v40);
      v42 = *a2 + v41;
      v43 = sub_456B24((a2 + 20), SHIDWORD(v41));
      sub_588D8(*(a2 + 8));
      if (*(a1 + 16) <= *(a1 + 20))
      {
        v44 = *(a1 + 20);
      }

      else
      {
        v44 = *(a1 + 16);
      }

      v45 = sub_444284(*(a1 + 8), v44);
      v46 = *a1 + v45;
      v47 = sub_456B24((a1 + 20), SHIDWORD(v45));
      sub_588D8(*(a1 + 8));
      if (v42 < v46 || v42 == v46 && v43 > v47)
      {
        v48 = *(a1 + 48);
        v49 = *(a1 + 16);
        result = *(a1 + 32);
        v50 = *a1;
        v52 = *(a2 + 16);
        v51 = *(a2 + 32);
        v53 = *a2;
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 16) = v52;
        *(a1 + 32) = v51;
        *a1 = v53;
        *a2 = v50;
        *(a2 + 16) = v49;
        *(a2 + 32) = result;
        *(a2 + 48) = v48;
      }
    }
  }

  return result;
}

__n128 sub_10C860C(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  sub_10C8390(a1, a2, a3, a4);
  if (*(a5 + 4) <= *(a5 + 5))
  {
    v10 = *(a5 + 5);
  }

  else
  {
    v10 = *(a5 + 4);
  }

  v11 = sub_444284(*(a5 + 1), v10);
  v12 = *a5 + v11;
  v13 = sub_456B24(a5 + 5, SHIDWORD(v11));
  sub_588D8(*(a5 + 1));
  if (*(a4 + 16) <= *(a4 + 20))
  {
    v14 = *(a4 + 20);
  }

  else
  {
    v14 = *(a4 + 16);
  }

  v15 = sub_444284(*(a4 + 8), v14);
  v16 = *a4 + v15;
  v17 = sub_456B24((a4 + 20), SHIDWORD(v15));
  sub_588D8(*(a4 + 8));
  if (v12 < v16 || (v12 == v16 ? (v19 = v13 <= v17) : (v19 = 1), !v19))
  {
    v20 = *(a4 + 48);
    v22 = *(a4 + 16);
    v21 = *(a4 + 32);
    v23 = *a4;
    v25 = a5[1];
    v24 = a5[2];
    v26 = *a5;
    *(a4 + 48) = *(a5 + 6);
    *(a4 + 16) = v25;
    *(a4 + 32) = v24;
    *a4 = v26;
    *a5 = v23;
    a5[1] = v22;
    a5[2] = v21;
    *(a5 + 6) = v20;
    if (*(a4 + 16) <= *(a4 + 20))
    {
      v27 = *(a4 + 20);
    }

    else
    {
      v27 = *(a4 + 16);
    }

    v28 = sub_444284(*(a4 + 8), v27);
    v29 = *a4 + v28;
    v30 = sub_456B24((a4 + 20), SHIDWORD(v28));
    sub_588D8(*(a4 + 8));
    if (*(a3 + 4) <= *(a3 + 5))
    {
      v31 = *(a3 + 5);
    }

    else
    {
      v31 = *(a3 + 4);
    }

    v32 = sub_444284(*(a3 + 1), v31);
    v33 = *a3 + v32;
    v34 = sub_456B24(a3 + 5, SHIDWORD(v32));
    sub_588D8(*(a3 + 1));
    if (v29 < v33 || v29 == v33 && v30 > v34)
    {
      v35 = *(a3 + 6);
      v37 = a3[1];
      v36 = a3[2];
      v38 = *a3;
      v40 = *(a4 + 16);
      v39 = *(a4 + 32);
      v41 = *a4;
      *(a3 + 6) = *(a4 + 48);
      a3[1] = v40;
      a3[2] = v39;
      *a3 = v41;
      *a4 = v38;
      *(a4 + 16) = v37;
      *(a4 + 32) = v36;
      *(a4 + 48) = v35;
      v42 = *(a3 + 4) <= *(a3 + 5) ? *(a3 + 5) : *(a3 + 4);
      v43 = sub_444284(*(a3 + 1), v42);
      v44 = *a3 + v43;
      v45 = sub_456B24(a3 + 5, SHIDWORD(v43));
      sub_588D8(*(a3 + 1));
      v46 = *(a2 + 4) <= *(a2 + 5) ? *(a2 + 5) : *(a2 + 4);
      v47 = sub_444284(*(a2 + 1), v46);
      v48 = *a2 + v47;
      v49 = sub_456B24(a2 + 5, SHIDWORD(v47));
      sub_588D8(*(a2 + 1));
      if (v44 < v48 || v44 == v48 && v45 > v49)
      {
        v50 = *(a2 + 6);
        v52 = a2[1];
        v51 = a2[2];
        v53 = *a2;
        v55 = a3[1];
        v54 = a3[2];
        v56 = *a3;
        *(a2 + 6) = *(a3 + 6);
        a2[1] = v55;
        a2[2] = v54;
        *a2 = v56;
        *a3 = v53;
        a3[1] = v52;
        a3[2] = v51;
        *(a3 + 6) = v50;
        if (*(a2 + 4) <= *(a2 + 5))
        {
          v57 = *(a2 + 5);
        }

        else
        {
          v57 = *(a2 + 4);
        }

        v58 = sub_444284(*(a2 + 1), v57);
        v59 = *a2 + v58;
        v60 = sub_456B24(a2 + 5, SHIDWORD(v58));
        sub_588D8(*(a2 + 1));
        if (*(a1 + 4) <= *(a1 + 5))
        {
          v61 = *(a1 + 5);
        }

        else
        {
          v61 = *(a1 + 4);
        }

        v62 = sub_444284(*(a1 + 1), v61);
        v63 = *a1 + v62;
        v64 = sub_456B24(a1 + 5, SHIDWORD(v62));
        sub_588D8(*(a1 + 1));
        if (v59 < v63 || v59 == v63 && v60 > v64)
        {
          v65 = *(a1 + 6);
          v66 = a1[1];
          result = a1[2];
          v67 = *a1;
          v69 = a2[1];
          v68 = a2[2];
          v70 = *a2;
          *(a1 + 6) = *(a2 + 6);
          a1[1] = v69;
          a1[2] = v68;
          *a1 = v70;
          *a2 = v67;
          a2[1] = v66;
          a2[2] = result;
          *(a2 + 6) = v65;
        }
      }
    }
  }

  return result;
}

int *sub_10C8940(int *a1, __int128 *a2)
{
  v80 = *a1;
  v81 = *(a1 + 1);
  v82 = *(a1 + 2);
  v83 = *(a1 + 6);
  if (v81 <= SDWORD1(v81))
  {
    v4 = DWORD1(v81);
  }

  else
  {
    v4 = v81;
  }

  v5 = sub_444284(*(&v80 + 1), v4);
  v6 = v80 + v5;
  v7 = sub_456B24(&v81 + 1, SHIDWORD(v5));
  sub_588D8(*(&v80 + 1));
  if (*(a2 - 10) <= *(a2 - 9))
  {
    v8 = *(a2 - 9);
  }

  else
  {
    v8 = *(a2 - 10);
  }

  v9 = sub_444284(*(a2 - 6), v8);
  v10 = *(a2 - 14) + v9;
  v11 = sub_456B24(a2 - 9, SHIDWORD(v9));
  sub_588D8(*(a2 - 6));
  if (v6 >= v10 && (v6 == v10 ? (v12 = v7 <= v11) : (v12 = 1), v12))
  {
    v13 = a1 + 19;
    do
    {
      v14 = (v13 - 5);
      if (v13 - 5 >= a2)
      {
        break;
      }

      v15 = v81 <= SDWORD1(v81) ? DWORD1(v81) : v81;
      v16 = sub_444284(*(&v80 + 1), v15);
      v17 = v80 + v16;
      v18 = sub_456B24(&v81 + 1, SHIDWORD(v16));
      sub_588D8(*(&v80 + 1));
      v19 = *(v13 - 1) <= *v13 ? *v13 : *(v13 - 1);
      v20 = sub_444284(*(v13 - 3), v19);
      v21 = *(v13 - 5) + v20;
      v22 = sub_456B24(v13, SHIDWORD(v20));
      sub_588D8(*(v13 - 3));
      if (v17 < v21)
      {
        break;
      }

      v13 += 14;
    }

    while (v17 != v21 || v18 <= v22);
    if (v14 >= a2)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v24 = a1 + 19;
    do
    {
      v25 = v24;
      if (v81 <= SDWORD1(v81))
      {
        v26 = DWORD1(v81);
      }

      else
      {
        v26 = v81;
      }

      v27 = sub_444284(*(&v80 + 1), v26);
      v28 = v80 + v27;
      v29 = sub_456B24(&v81 + 1, SHIDWORD(v27));
      sub_588D8(*(&v80 + 1));
      if (*(v25 - 1) <= *v25)
      {
        v30 = *v25;
      }

      else
      {
        v30 = *(v25 - 1);
      }

      v31 = sub_444284(*(v25 - 3), v30);
      v32 = *(v25 - 5) + v31;
      v33 = sub_456B24(v25, SHIDWORD(v31));
      sub_588D8(*(v25 - 3));
      if (v28 < v32)
      {
        break;
      }

      v24 = v25 + 14;
    }

    while (v28 != v32 || v29 <= v33);
    v14 = (v25 - 5);
    if (v14 >= a2)
    {
      goto LABEL_79;
    }
  }

  do
  {
    a2 = (a2 - 56);
    if (v81 <= SDWORD1(v81))
    {
      v35 = DWORD1(v81);
    }

    else
    {
      v35 = v81;
    }

    v36 = sub_444284(*(&v80 + 1), v35);
    v37 = v80 + v36;
    v38 = sub_456B24(&v81 + 1, SHIDWORD(v36));
    sub_588D8(*(&v80 + 1));
    if (*(a2 + 4) <= *(a2 + 5))
    {
      v39 = *(a2 + 5);
    }

    else
    {
      v39 = *(a2 + 4);
    }

    v40 = sub_444284(*(a2 + 1), v39);
    v41 = *a2 + v40;
    v42 = sub_456B24(a2 + 5, SHIDWORD(v40));
    sub_588D8(*(a2 + 1));
  }

  while (v37 < v41 || v37 == v41 && v38 > v42);
LABEL_79:
  while (v14 < a2)
  {
    v44 = *v14;
    v45 = *(v14 + 16);
    v46 = *(v14 + 32);
    v87 = *(v14 + 48);
    v85 = v45;
    v86 = v46;
    v84 = v44;
    v47 = *a2;
    v48 = a2[1];
    v49 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v48;
    *(v14 + 32) = v49;
    *v14 = v47;
    v50 = v84;
    v51 = v85;
    v52 = v86;
    *(a2 + 6) = v87;
    a2[1] = v51;
    a2[2] = v52;
    *a2 = v50;
    v53 = (v14 + 76);
    do
    {
      v54 = v53;
      if (v81 <= SDWORD1(v81))
      {
        v55 = DWORD1(v81);
      }

      else
      {
        v55 = v81;
      }

      v56 = sub_444284(*(&v80 + 1), v55);
      v57 = v80 + v56;
      v58 = sub_456B24(&v81 + 1, SHIDWORD(v56));
      sub_588D8(*(&v80 + 1));
      if (*(v54 - 1) <= *v54)
      {
        v59 = *v54;
      }

      else
      {
        v59 = *(v54 - 1);
      }

      v60 = sub_444284(*(v54 - 3), v59);
      v61 = *(v54 - 5) + v60;
      v62 = sub_456B24(v54, SHIDWORD(v60));
      sub_588D8(*(v54 - 3));
      if (v57 < v61)
      {
        break;
      }

      v53 = v54 + 14;
    }

    while (v57 != v61 || v58 <= v62);
    v14 = (v54 - 5);
    do
    {
      a2 = (a2 - 56);
      if (v81 <= SDWORD1(v81))
      {
        v64 = DWORD1(v81);
      }

      else
      {
        v64 = v81;
      }

      v65 = sub_444284(*(&v80 + 1), v64);
      v66 = v80 + v65;
      v67 = sub_456B24(&v81 + 1, SHIDWORD(v65));
      sub_588D8(*(&v80 + 1));
      if (*(a2 + 4) <= *(a2 + 5))
      {
        v68 = *(a2 + 5);
      }

      else
      {
        v68 = *(a2 + 4);
      }

      v69 = sub_444284(*(a2 + 1), v68);
      v70 = *a2 + v69;
      v71 = sub_456B24(a2 + 5, SHIDWORD(v69));
      sub_588D8(*(a2 + 1));
    }

    while (v66 < v70 || v66 == v70 && v67 > v71);
  }

  v73 = (v14 - 56);
  if ((v14 - 56) != a1)
  {
    v74 = *v73;
    v75 = *(v14 - 40);
    v76 = *(v14 - 24);
    *(a1 + 6) = *(v14 - 8);
    *(a1 + 1) = v75;
    *(a1 + 2) = v76;
    *a1 = v74;
  }

  v77 = v81;
  v78 = v82;
  *(v14 - 8) = v83;
  *(v14 - 40) = v77;
  *(v14 - 24) = v78;
  *v73 = v80;
  return v14;
}

int *sub_10C8D74(int *a1, uint64_t a2)
{
  v4 = 0;
  v77 = *a1;
  v78 = *(a1 + 1);
  v79 = *(a1 + 2);
  v80 = *(a1 + 6);
  while (1)
  {
    v5 = a1[v4 + 18] <= a1[v4 + 19] ? a1[v4 + 19] : a1[v4 + 18];
    v6 = sub_444284(*&a1[v4 + 16], v5);
    v7 = a1[v4 + 14] + v6;
    v8 = sub_456B24(&a1[v4 + 19], SHIDWORD(v6));
    sub_588D8(*&a1[v4 + 16]);
    v9 = v78 <= SDWORD1(v78) ? DWORD1(v78) : v78;
    v10 = sub_444284(*(&v77 + 1), v9);
    v11 = v77 + v10;
    v12 = sub_456B24(&v78 + 1, SHIDWORD(v10));
    sub_588D8(*(&v77 + 1));
    if (v7 >= v11 && (v7 != v11 || v8 <= v12))
    {
      break;
    }

    v4 += 14;
  }

  v14 = &a1[v4];
  v15 = &a1[v4 + 14];
  v16 = a2 - 56;
  if (v4 * 4)
  {
    do
    {
      v17 = v16;
      v19 = (v16 + 20);
      v18 = *(v16 + 20);
      if (*(v17 + 16) <= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = *(v17 + 16);
      }

      v21 = sub_444284(*(v17 + 8), v20);
      v22 = *v17 + v21;
      v23 = sub_456B24(v19, SHIDWORD(v21));
      sub_588D8(*(v17 + 8));
      if (v78 <= SDWORD1(v78))
      {
        v24 = DWORD1(v78);
      }

      else
      {
        v24 = v78;
      }

      v25 = sub_444284(*(&v77 + 1), v24);
      v26 = v77 + v25;
      v27 = sub_456B24(&v78 + 1, SHIDWORD(v25));
      sub_588D8(*(&v77 + 1));
      if (v22 < v26)
      {
        break;
      }

      v16 = v17 - 56;
    }

    while (v22 != v26 || v23 <= v27);
  }

  else
  {
    while (1)
    {
      v17 = v16;
      v38 = v16 + 56;
      if (v15 >= v38)
      {
        break;
      }

      if (*(v17 + 16) <= *(v17 + 20))
      {
        v29 = *(v17 + 20);
      }

      else
      {
        v29 = *(v17 + 16);
      }

      v30 = sub_444284(*(v17 + 8), v29);
      v31 = *v17 + v30;
      v32 = sub_456B24((v17 + 20), SHIDWORD(v30));
      sub_588D8(*(v17 + 8));
      if (v78 <= SDWORD1(v78))
      {
        v33 = DWORD1(v78);
      }

      else
      {
        v33 = v78;
      }

      v34 = sub_444284(*(&v77 + 1), v33);
      v35 = v77 + v34;
      v36 = sub_456B24(&v78 + 1, SHIDWORD(v34));
      sub_588D8(*(&v77 + 1));
      if (v31 >= v35)
      {
        v16 = v17 - 56;
        if (v31 != v35 || v32 <= v36)
        {
          continue;
        }
      }

      goto LABEL_42;
    }

    v17 = v38;
  }

LABEL_42:
  if (v15 < v17)
  {
    v39 = v17;
    do
    {
      v40 = *v15;
      v41 = *(v15 + 1);
      v42 = *(v15 + 2);
      v84 = *(v15 + 6);
      v82 = v41;
      v83 = v42;
      v81 = v40;
      v43 = *v39;
      v44 = *(v39 + 16);
      v45 = *(v39 + 32);
      *(v15 + 6) = *(v39 + 48);
      *(v15 + 1) = v44;
      *(v15 + 2) = v45;
      *v15 = v43;
      v46 = v81;
      v47 = v82;
      v48 = v83;
      *(v39 + 48) = v84;
      *(v39 + 16) = v47;
      *(v39 + 32) = v48;
      *v39 = v46;
      for (i = v15 + 19; ; i += 14)
      {
        v50 = *(i - 1) <= *i ? *i : *(i - 1);
        v51 = sub_444284(*(i - 3), v50);
        v52 = *(i - 5) + v51;
        v53 = sub_456B24(i, SHIDWORD(v51));
        sub_588D8(*(i - 3));
        v54 = v78 <= SDWORD1(v78) ? DWORD1(v78) : v78;
        v55 = sub_444284(*(&v77 + 1), v54);
        v56 = v77 + v55;
        v57 = sub_456B24(&v78 + 1, SHIDWORD(v55));
        sub_588D8(*(&v77 + 1));
        if (v52 >= v56 && (v52 != v56 || v53 <= v57))
        {
          break;
        }
      }

      v15 = i - 5;
      v59 = v39 - 56;
      do
      {
        v39 = v59;
        v61 = (v59 + 20);
        v60 = *(v59 + 20);
        if (*(v39 + 16) <= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = *(v39 + 16);
        }

        v63 = sub_444284(*(v39 + 8), v62);
        v64 = *v39 + v63;
        v65 = sub_456B24(v61, SHIDWORD(v63));
        sub_588D8(*(v39 + 8));
        if (v78 <= SDWORD1(v78))
        {
          v66 = DWORD1(v78);
        }

        else
        {
          v66 = v78;
        }

        v67 = sub_444284(*(&v77 + 1), v66);
        v68 = v77 + v67;
        v69 = sub_456B24(&v78 + 1, SHIDWORD(v67));
        sub_588D8(*(&v77 + 1));
        if (v64 < v68)
        {
          break;
        }

        v59 = v39 - 56;
      }

      while (v64 != v68 || v65 <= v69);
    }

    while (v15 < v39);
    v14 = i - 19;
  }

  if (v14 != a1)
  {
    v71 = *v14;
    v72 = *(v14 + 1);
    v73 = *(v14 + 2);
    *(a1 + 6) = *(v14 + 6);
    *(a1 + 1) = v72;
    *(a1 + 2) = v73;
    *a1 = v71;
  }

  v74 = v78;
  v75 = v79;
  *(v14 + 6) = v80;
  *(v14 + 1) = v74;
  *(v14 + 2) = v75;
  *v14 = v77;
  return v14;
}

BOOL sub_10C9170(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10C7FB8(a1, (a1 + 56), (a2 - 56));
        break;
      case 4:
        sub_10C8390(a1, a1 + 56, a1 + 112, (a2 - 56));
        break;
      case 5:
        sub_10C860C(a1, (a1 + 56), (a1 + 112), a1 + 168, (a2 - 56));
        break;
      default:
LABEL_19:
        v22 = (a1 + 112);
        sub_10C7FB8(a1, (a1 + 56), (a1 + 112));
        v23 = (a1 + 168);
        if (a1 + 168 != v2)
        {
          v24 = 0;
          v25 = 0;
          v51 = v2;
          while (1)
          {
            if (*(v23 + 4) <= *(v23 + 5))
            {
              v26 = *(v23 + 5);
            }

            else
            {
              v26 = *(v23 + 4);
            }

            v27 = sub_444284(*(v23 + 1), v26);
            v28 = *v23 + v27;
            v29 = sub_456B24(v23 + 5, SHIDWORD(v27));
            sub_588D8(*(v23 + 1));
            if (*(v22 + 4) <= *(v22 + 5))
            {
              v30 = *(v22 + 5);
            }

            else
            {
              v30 = *(v22 + 4);
            }

            v31 = sub_444284(*(v22 + 1), v30);
            v32 = *v22 + v31;
            v33 = sub_456B24(v22 + 5, SHIDWORD(v31));
            sub_588D8(*(v22 + 1));
            if (v28 < v32 || (v28 == v32 ? (v34 = v29 <= v33) : (v34 = 1), !v34))
            {
              v53 = v25;
              v54 = *v23;
              v55 = v23[1];
              v56 = v23[2];
              v57 = *(v23 + 6);
              v35 = v22[1];
              *v23 = *v22;
              v23[1] = v35;
              v23[2] = v22[2];
              *(v23 + 6) = *(v22 + 6);
              v52 = v24;
              v36 = v24;
              do
              {
                v38 = a1 + v36;
                if (v55 <= SDWORD1(v55))
                {
                  v39 = DWORD1(v55);
                }

                else
                {
                  v39 = v55;
                }

                v40 = sub_444284(*(&v54 + 1), v39);
                v41 = v40;
                v42 = sub_456B24(&v55 + 1, SHIDWORD(v40));
                sub_588D8(*(&v54 + 1));
                if (*(v38 + 72) <= *(v38 + 76))
                {
                  v43 = *(v38 + 76);
                }

                else
                {
                  v43 = *(v38 + 72);
                }

                v44 = sub_444284(*(v38 + 64), v43);
                v45 = v54 + v41;
                v46 = *(v38 + 56) + v44;
                v47 = sub_456B24((v38 + 76), SHIDWORD(v44));
                sub_588D8(*(v38 + 64));
                if (v45 >= v46 && (v45 != v46 || v42 <= v47))
                {
                  v49 = a1 + v36 + 112;
                  goto LABEL_49;
                }

                v37 = *(v38 + 72);
                *(v38 + 112) = *(v38 + 56);
                *(v38 + 128) = v37;
                *(v38 + 144) = *(v38 + 88);
                *(v38 + 160) = *(v38 + 104);
                v36 -= 56;
              }

              while (v36 != -112);
              v49 = a1;
LABEL_49:
              v50 = v55;
              *v49 = v54;
              *(v49 + 16) = v50;
              *(v49 + 32) = v56;
              *(v49 + 48) = v57;
              v25 = v53 + 1;
              v2 = v51;
              if (v53 == 7)
              {
                return (v23 + 56) == v51;
              }

              v24 = v52;
            }

            v22 = v23;
            v24 += 56;
            v23 = (v23 + 56);
            if (v23 == v2)
            {
              return 1;
            }
          }
        }

        return 1;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_19;
  }

  if (*(a2 - 40) <= *(a2 - 36))
  {
    v5 = *(a2 - 36);
  }

  else
  {
    v5 = *(a2 - 40);
  }

  v6 = sub_444284(*(v2 - 48), v5);
  v7 = (v2 - 56);
  v8 = *(v2 - 56) + v6;
  v9 = sub_456B24((v2 - 36), SHIDWORD(v6));
  sub_588D8(*(v2 - 48));
  if (*(a1 + 16) <= *(a1 + 20))
  {
    v10 = *(a1 + 20);
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = sub_444284(*(a1 + 8), v10);
  v12 = *a1 + v11;
  v13 = sub_456B24((a1 + 20), SHIDWORD(v11));
  sub_588D8(*(a1 + 8));
  if (v8 < v12 || (result = 1, v8 == v12) && v9 > v13)
  {
    v15 = *(a1 + 48);
    v17 = *(a1 + 16);
    v16 = *(a1 + 32);
    v18 = *a1;
    v20 = *(v2 - 40);
    v19 = *(v2 - 24);
    v21 = *v7;
    *(a1 + 48) = *(v2 - 8);
    *(a1 + 16) = v20;
    *(a1 + 32) = v19;
    *a1 = v21;
    *v7 = v18;
    *(v2 - 40) = v17;
    *(v2 - 24) = v16;
    result = 1;
    *(v2 - 8) = v15;
  }

  return result;
}

__n128 sub_10C9544(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v70 = v4;
    v71 = v5;
    v7 = a4;
    v65 = v6 >> 1;
    if ((v6 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - a1) >> 3))
    {
      v8 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3)) | 1;
      v9 = a1;
      v10 = a1 + 56 * v8;
      v11 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 3) + 2;
      if (v11 < a3)
      {
        v13 = *(v10 + 16) <= *(v10 + 20) ? *(v10 + 20) : *(v10 + 16);
        v14 = sub_444284(*(v10 + 8), v13);
        v15 = v14;
        v63 = *v10;
        v61 = sub_456B24((v10 + 20), SHIDWORD(v14));
        sub_588D8(*(v10 + 8));
        v16 = *(v10 + 72) <= *(v10 + 76) ? *(v10 + 76) : *(v10 + 72);
        v17 = sub_444284(*(v10 + 64), v16);
        v18 = v63 + v15;
        v19 = *(v10 + 56) + v17;
        v20 = sub_456B24((v10 + 76), SHIDWORD(v17));
        sub_588D8(*(v10 + 64));
        if (v18 < v19 || (v18 == v19 ? (v21 = v61 <= v20) : (v21 = 1), !v21))
        {
          v10 += 56;
          v8 = v11;
        }
      }

      if (*(v10 + 16) <= *(v10 + 20))
      {
        v22 = *(v10 + 20);
      }

      else
      {
        v22 = *(v10 + 16);
      }

      v23 = sub_444284(*(v10 + 8), v22);
      v24 = *v10 + v23;
      v25 = sub_456B24((v10 + 20), SHIDWORD(v23));
      sub_588D8(*(v10 + 8));
      if (v7[4] <= v7[5])
      {
        v26 = v7[5];
      }

      else
      {
        v26 = v7[4];
      }

      v27 = sub_444284(*(v7 + 1), v26);
      v28 = *v7 + v27;
      v29 = sub_456B24(v7 + 5, SHIDWORD(v27));
      sub_588D8(*(v7 + 1));
      if (v24 >= v28 && (v24 != v28 || v25 <= v29))
      {
        v64 = a3;
        v66 = *v7;
        v67 = *(v7 + 1);
        v68 = *(v7 + 2);
        v69 = *(v7 + 6);
        do
        {
          v32 = v10;
          v33 = *v10;
          v34 = *(v10 + 16);
          v35 = *(v10 + 32);
          *(v7 + 6) = *(v10 + 48);
          *(v7 + 1) = v34;
          *(v7 + 2) = v35;
          *v7 = v33;
          if (v65 < v8)
          {
            break;
          }

          v36 = 2 * v8;
          v8 = (2 * v8) | 1;
          v37 = v9;
          v10 = v9 + 56 * v8;
          v38 = v36 + 2;
          if (v36 + 2 < v64)
          {
            v39 = *(v10 + 16) <= *(v10 + 20) ? *(v10 + 20) : *(v10 + 16);
            v40 = sub_444284(*(v10 + 8), v39);
            v41 = v40;
            v42 = *v10;
            v62 = sub_456B24((v10 + 20), SHIDWORD(v40));
            sub_588D8(*(v10 + 8));
            v43 = *(v10 + 72) <= *(v10 + 76) ? *(v10 + 76) : *(v10 + 72);
            v44 = sub_444284(*(v10 + 64), v43);
            v45 = v42 + v41;
            v46 = *(v10 + 56) + v44;
            v47 = sub_456B24((v10 + 76), SHIDWORD(v44));
            sub_588D8(*(v10 + 64));
            if (v45 < v46 || (v45 == v46 ? (v48 = v62 <= v47) : (v48 = 1), !v48))
            {
              v10 += 56;
              v8 = v38;
            }
          }

          v49 = *(v10 + 16) <= *(v10 + 20) ? *(v10 + 20) : *(v10 + 16);
          v50 = sub_444284(*(v10 + 8), v49);
          v51 = *v10 + v50;
          v52 = sub_456B24((v10 + 20), SHIDWORD(v50));
          sub_588D8(*(v10 + 8));
          v53 = v67 <= SDWORD1(v67) ? DWORD1(v67) : v67;
          v54 = sub_444284(v66.n128_u64[1], v53);
          v55 = v66.n128_u32[0] + v54;
          v56 = sub_456B24(&v67 + 1, SHIDWORD(v54));
          sub_588D8(v66.n128_i64[1]);
          v57 = v51 == v55;
          if (v51 < v55)
          {
            break;
          }

          v9 = v37;
          v58 = !v57 || v52 <= v56;
          v7 = v32;
        }

        while (v58);
        result = v66;
        v59 = v67;
        v60 = v68;
        *(v32 + 48) = v69;
        *(v32 + 16) = v59;
        *(v32 + 32) = v60;
        *v32 = v66;
      }
    }
  }

  return result;
}

__n128 sub_10C98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v81 = v4;
    v82 = v5;
    v7 = 0;
    v73 = *a1;
    v74 = *(a1 + 16);
    v75 = *(a1 + 32);
    v76 = *(a1 + 48);
    v8 = v6 >> 1;
    v9 = a1;
    v70 = v6 >> 1;
    v71 = a4;
    do
    {
      v13 = v9;
      v14 = v9 + 56 * v7;
      v9 = v14 + 56;
      v15 = 2 * v7;
      v7 = (2 * v7) | 1;
      v16 = v15 + 2;
      if (v15 + 2 < a4)
      {
        v17 = *(v14 + 72) <= *(v14 + 76) ? *(v14 + 76) : *(v14 + 72);
        v18 = sub_444284(*(v14 + 64), v17);
        v19 = v18;
        v20 = *(v14 + 56);
        v72 = sub_456B24((v14 + 76), SHIDWORD(v18));
        sub_588D8(*(v14 + 64));
        v21 = *(v14 + 128) <= *(v14 + 132) ? *(v14 + 132) : *(v14 + 128);
        v22 = sub_444284(*(v14 + 120), v21);
        v23 = v20 + v19;
        v24 = *(v14 + 112) + v22;
        v25 = sub_456B24((v14 + 132), SHIDWORD(v22));
        sub_588D8(*(v14 + 120));
        v8 = v70;
        a4 = v71;
        if (v23 < v24 || (v72 > v25 ? (v26 = v23 == v24) : (v26 = 0), v26))
        {
          v9 = v14 + 112;
          v7 = v16;
        }
      }

      v10 = *v9;
      v11 = *(v9 + 16);
      v12 = *(v9 + 32);
      *(v13 + 48) = *(v9 + 48);
      *(v13 + 16) = v11;
      *(v13 + 32) = v12;
      *v13 = v10;
    }

    while (v7 <= v8);
    v27 = (a2 - 56);
    if (v9 == a2 - 56)
    {
      result = v73;
      *(v9 + 48) = v76;
      *(v9 + 16) = v74;
      *(v9 + 32) = v75;
      *v9 = v73;
    }

    else
    {
      v28 = *v27;
      v29 = *(a2 - 40);
      v30 = *(a2 - 24);
      *(v9 + 48) = *(a2 - 8);
      *(v9 + 16) = v29;
      *(v9 + 32) = v30;
      *v9 = v28;
      *v27 = v73;
      *(a2 - 40) = v74;
      result = v75;
      *(a2 - 24) = v75;
      *(a2 - 8) = v76;
      v32 = a1;
      v33 = v9 - a1 + 56;
      if (v33 >= 57)
      {
        v34 = 0x6DB6DB6DB6DB6DB7 * (v33 >> 3) - 2;
        v35 = v34 >> 1;
        v36 = a1 + 56 * (v34 >> 1);
        v37 = *(v36 + 16) <= *(v36 + 20) ? *(v36 + 20) : *(v36 + 16);
        v38 = sub_444284(*(v36 + 8), v37);
        v39 = *v36 + v38;
        v40 = sub_456B24((v36 + 20), SHIDWORD(v38));
        sub_588D8(*(v36 + 8));
        v41 = *(v9 + 16) <= *(v9 + 20) ? *(v9 + 20) : *(v9 + 16);
        v42 = sub_444284(*(v9 + 8), v41);
        v43 = *v9 + v42;
        v44 = sub_456B24((v9 + 20), SHIDWORD(v42));
        sub_588D8(*(v9 + 8));
        if (v39 < v43 || (v39 == v43 ? (v45 = v40 <= v44) : (v45 = 1), !v45))
        {
          v46 = *v9;
          v47 = *(v9 + 16);
          v48 = *(v9 + 32);
          v80 = *(v9 + 48);
          v78 = v47;
          v79 = v48;
          v77 = v46;
          v49 = *v36;
          v50 = *(v36 + 16);
          v51 = *(v36 + 32);
          *(v9 + 48) = *(v36 + 48);
          *(v9 + 16) = v50;
          *(v9 + 32) = v51;
          *v9 = v49;
          if (v34 >= 2)
          {
            while (1)
            {
              v55 = v35 - 1;
              v35 = (v35 - 1) >> 1;
              v56 = v32 + 56 * v35;
              v57 = *(v56 + 16) <= *(v56 + 20) ? *(v56 + 20) : *(v56 + 16);
              v58 = sub_444284(*(v56 + 8), v57);
              v59 = *v56 + v58;
              v60 = sub_456B24((v56 + 20), SHIDWORD(v58));
              sub_588D8(*(v56 + 8));
              v61 = v78 <= SDWORD1(v78) ? DWORD1(v78) : v78;
              v62 = sub_444284(v77.n128_u64[1], v61);
              v63 = v77.n128_u32[0] + v62;
              v64 = sub_456B24(&v78 + 1, SHIDWORD(v62));
              sub_588D8(v77.n128_i64[1]);
              if (v59 >= v63 && (v59 != v63 || v60 <= v64))
              {
                break;
              }

              v52 = *v56;
              v53 = *(v56 + 16);
              v54 = *(v56 + 32);
              *(v36 + 48) = *(v56 + 48);
              *(v36 + 16) = v53;
              *(v36 + 32) = v54;
              *v36 = v52;
              v36 = v56;
              v32 = a1;
              if (v55 <= 1)
              {
                goto LABEL_47;
              }
            }
          }

          v56 = v36;
LABEL_47:
          result = v77;
          v66 = v78;
          v67 = v79;
          *(v56 + 48) = v80;
          *(v56 + 16) = v66;
          *(v56 + 32) = v67;
          *v56 = v77;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10C9C74(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = sub_10C554C(*a1, a2);
  v10 = *(result + 8);
  if (v10)
  {
    v11 = *(a3 + 36) == a2;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (*(a3 + 16) <= *(a3 + 20))
    {
      v12 = *(a3 + 20);
    }

    else
    {
      v12 = *(a3 + 16);
    }

    v13 = sub_444284(*(a3 + 8), v12);
    v14 = v13;
    v16 = v15;
    v35 = *a3;
    v34 = sub_456B24((a3 + 20), SHIDWORD(v13));
    v17 = *a3;
    v18 = *(a3 + 28);
    v19 = sub_588D8(*(a3 + 8));
    sub_10C04BC(a3, &v37);
    v20 = v16;
    v21 = v38;
    if (v38 != v20)
    {
      v22 = (v35 + v14) | (v34 << 32);
      v23 = v20 + 2;
      do
      {
        while (1)
        {
          v39 = v22;
          v24 = sub_10C016C(a1 + 132, a3, &v39, 0, 0, (a1 + 96));
          v36 = v24 & 0xFFFFFFFF00000000 | v25;
          sub_10C9F2C(a1, a2, v10, &v36, a3, a4);
          if (v23 >= v19)
          {
            break;
          }

          v22 = (*v23 + v17) | ((v23[1] - v18) << 32);
          v11 = v23 == v21;
          v23 += 2;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        v22 = 0x7FFFFFFF7FFFFFFFLL;
        v11 = v23 == v21;
        v23 += 2;
      }

      while (!v11);
    }

LABEL_14:
    if (v37 != 0x7FFFFFFF && HIDWORD(v37) != 0x7FFFFFFF)
    {
      v36 = v37;
      v26 = sub_10C016C(a1 + 132, a3, &v36, 0, 0, (a1 + 96));
      v39 = v26 & 0xFFFFFFFF00000000 | v27;
      sub_10C9F2C(a1, a2, v10, &v39, a3, a4);
    }

    v28 = sub_10C0038(a1 + 132, a3, *(a1 + 136), 0x7FFFFFFF, 0x7FFFFFFF, 0, 0, (a1 + 96));
    v39 = __PAIR64__(HIDWORD(v28), v29);
    sub_10C9F2C(a1, a2, v10, &v39, a3, a4);
    v30 = sub_10C0038(a1 + 132, a3, *(a1 + 144), 0x7FFFFFFF, 0x7FFFFFFF, 0, 0, (a1 + 96));
    v39 = __PAIR64__(HIDWORD(v30), v31);
    sub_10C9F2C(a1, a2, v10, &v39, a3, a4);
    v32 = sub_10C0038(a1 + 132, a3, 0x7FFFFFFF, 0x7FFFFFFF, *(a1 + 152), 0, 0, (a1 + 96));
    v39 = __PAIR64__(HIDWORD(v32), v33);
    return sub_10C9F2C(a1, a2, v10, &v39, a3, a4);
  }

  return result;
}

uint64_t sub_10C9F2C(uint64_t a1, unsigned int a2, uint64_t *a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v11 = a4[1];
  result = sub_4441F4(a3);
  if (result >= v11)
  {
    v14 = *(sub_10C554C(*a1, a2) + 16);
    v15 = v12 + sub_10C05E0(a1 + 132, a5);
    if (*(a5 + 32) == -1)
    {
      v16 = a2;
    }

    else
    {
      v16 = *(a5 + 32);
    }

    sub_456544(v22, v11, (a1 + 96));
    v17 = *(a1 + 164);
    v18 = sub_3F80(v22);
    v19 = sub_444284(a3, v18);
    LODWORD(v23) = v14 + v15 + sub_4441E8(a3) - v19;
    *(&v23 + 1) = a3;
    v24 = sub_3F80(v22) + v17;
    v31 = sub_4566AC(v22);
    v25 = sub_4568CC(&v31);
    v26 = v20;
    v27 = v16;
    v21 = *(a6 + 24) - 1;
    v28 = a2;
    v29 = v21;
    v30 = 0;
    sub_F85884(v22);
    return sub_10C6A88(a6, &v23, v22);
  }

  return result;
}

uint64_t *sub_10CA058(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_10CA39C()
{
  byte_27C1D2F = 3;
  LODWORD(qword_27C1D18) = 5136193;
  byte_27C1D47 = 3;
  LODWORD(qword_27C1D30) = 5136194;
  byte_27C1D5F = 3;
  LODWORD(qword_27C1D48) = 5136195;
  byte_27C1D77 = 15;
  strcpy(&qword_27C1D60, "vehicle_mass_kg");
  byte_27C1D8F = 21;
  strcpy(&xmmword_27C1D78, "vehicle_cargo_mass_kg");
  byte_27C1DA7 = 19;
  strcpy(&qword_27C1D90, "vehicle_aux_power_w");
  byte_27C1DBF = 15;
  strcpy(&qword_27C1DA8, "dcdc_efficiency");
  strcpy(&qword_27C1DC0, "drive_train_efficiency");
  HIBYTE(word_27C1DD6) = 22;
  operator new();
}

void sub_10CA578(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1DD6) < 0)
  {
    sub_21E7640();
  }

  sub_21E764C();
  _Unwind_Resume(a1);
}

void sub_10CA598(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int *a4@<X3>, int a5@<W4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, int a10, uint64_t a11)
{
  v16 = a9;
  sub_4E3D18(a9);
  nullsub_1();
  v18 = *(a3 + 8);
  if (v18 == a1 + 104)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  if (*(a3 + 32) == -1)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a5)
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

  v140 = 0;
  v141 = 0;
  v142 = 0;
  v22 = *(a3 + 16);
  v124 = a1 + 104;
  v127 = v17;
  v128 = a1;
  if (v18 == a1 + 104)
  {
    v23 = (a1 + 96);
  }

  else
  {
    v23 = (a1 + 96);
    v22 -= *(a1 + 164);
    if (v22 <= *(a1 + 96))
    {
      v22 = *(a1 + 96);
    }
  }

  v24 = *(a3 + 48);
  v25 = *(a3 + 36);
  v26 = *(a3 + 40);
  sub_456544(v143, v22, v23);
  v138 = *v143;
  v139 = *&v143[8];
  if (sub_10BFE50(a4))
  {
    sub_456544(v143, *a4, (v128 + 96));
  }

  else
  {
    v27 = sub_10C0228((v128 + 132), a3, v20, v21, (v128 + 96));
    sub_456544(v143, v27, (v128 + 96));
  }

  v136 = *v143;
  v137 = *&v143[8];
  if (sub_456C80((a3 + 20), &v136) != 0x7FFFFFFF)
  {
    sub_5AAC4(&v136);
  }

  v135 = 0;
  if (v25 != 0xFFFFFFFFLL)
  {
    v123 = v16;
    v28 = a2;
    while (1)
    {
      v30 = v25;
      v31 = *(*(v128 + 72) + 32 * v25) + 56 * v26;
      if (!v24)
      {
        break;
      }

      v32 = sub_F84DFC(a6, v25, v24, 0);
      if (v25 == v28)
      {
        goto LABEL_31;
      }

      v33 = v141;
      if (!v32)
      {
        goto LABEL_45;
      }

      if (v140 != v141)
      {
        sub_10CB3D4(v28, &v140, a6, a7, a11, v143);
        v34 = v127[1];
        if (v34 >= v127[2])
        {
          sub_49DFE8(v127, v143);
        }

        else
        {
          v35 = *v143;
          *(v34 + 16) = *&v143[16];
          *(v34 + 24) = 0;
          *v34 = v35;
          memset(v143, 0, sizeof(v143));
          *(v34 + 32) = 0;
          *(v34 + 40) = 0;
          *(v34 + 24) = v144;
          *(v34 + 40) = v145;
          v144 = 0uLL;
          v145 = 0;
          v36 = v146;
          v37 = v148;
          v38 = v149;
          *(v34 + 64) = v147;
          *(v34 + 80) = v37;
          *(v34 + 48) = v36;
          *(v34 + 96) = v38;
          *(v34 + 104) = 0;
          *(v34 + 112) = 0;
          *(v34 + 120) = 0;
          *(v34 + 104) = v150;
          v150 = 0uLL;
          *(v34 + 120) = v151;
          *(v34 + 128) = 0;
          *(v34 + 136) = 0;
          *(v34 + 144) = 0;
          *(v34 + 128) = v152;
          *(v34 + 144) = v153;
          *(v34 + 152) = 0;
          v151 = 0;
          v152 = 0uLL;
          v153 = 0;
          *(v34 + 160) = 0;
          *(v34 + 168) = 0;
          *(v34 + 152) = v154;
          *(v34 + 168) = v155;
          v154 = 0uLL;
          v155 = 0;
          v39 = v157;
          v40 = v158;
          *(v34 + 176) = v156;
          *(v34 + 192) = v39;
          *(v34 + 208) = v40;
          *(v34 + 216) = 0;
          *(v34 + 224) = 0;
          *(v34 + 232) = 0;
          *(v34 + 216) = v159;
          v159 = 0uLL;
          *(v34 + 232) = v160;
          *(v34 + 240) = 0;
          *(v34 + 248) = 0;
          *(v34 + 256) = 0;
          *(v34 + 240) = v161;
          *(v34 + 256) = v162;
          v160 = 0;
          v161 = 0uLL;
          v162 = 0;
          v41 = v163;
          v42 = v165;
          *(v34 + 280) = v164;
          *(v34 + 296) = v42;
          *(v34 + 264) = v41;
          v43 = v166;
          v44 = v167;
          v45 = v169;
          *(v34 + 344) = v168;
          *(v34 + 360) = v45;
          *(v34 + 312) = v43;
          *(v34 + 328) = v44;
          v46 = v170;
          v47 = v171;
          v48 = v173;
          *(v34 + 408) = v172;
          *(v34 + 424) = v48;
          *(v34 + 376) = v46;
          *(v34 + 392) = v47;
          v49 = v174;
          v50 = v175;
          v51 = v177;
          *(v34 + 472) = v176;
          *(v34 + 488) = v51;
          *(v34 + 440) = v49;
          *(v34 + 456) = v50;
          *(v34 + 504) = v178[0];
          *(v34 + 512) = *&v178[1];
          memset(v178, 0, sizeof(v178));
          *(v34 + 528) = 0;
          *(v34 + 544) = 0;
          *(v34 + 536) = 0;
          *(v34 + 528) = v179;
          *(v34 + 544) = v180;
          v179 = 0uLL;
          v180 = 0;
          v52 = v34 + 552;
          v127[1] = v34 + 552;
        }

        v127[1] = v52;
        sub_4547F0(v143);
      }

      sub_F69690(v127[1] - 552, &v135);
LABEL_23:
      v24 = *(v31 + 48);
      v25 = *(v31 + 36);
      v26 = *(v31 + 40);
      v28 = v30;
      if (v25 == -1)
      {
        v16 = v123;
        if (v140 != v141)
        {
          v82 = sub_10C554C(a6, v30);
          sub_10CB1D8(v82, &v138, &v136, a8, v130);
          sub_10CB3D4(v30, &v140, a6, a7, a11, v143);
          sub_F69690(v143, &v135);
          sub_F6C830(v143, v130);
          v83 = v127[1];
          if (v83 >= v127[2])
          {
            sub_49DFE8(v127, v143);
          }

          else
          {
            v84 = *&v143[16];
            *v83 = *v143;
            *(v83 + 16) = v84;
            *(v83 + 24) = 0;
            *&v143[8] = 0u;
            *(v83 + 32) = 0u;
            *(v83 + 24) = v144;
            *(v83 + 40) = v145;
            v144 = 0u;
            *v143 = 0;
            v145 = 0;
            v85 = v149;
            v87 = v147;
            v86 = v148;
            *(v83 + 48) = v146;
            *(v83 + 64) = v87;
            *(v83 + 80) = v86;
            *(v83 + 96) = v85;
            *(v83 + 120) = 0;
            *(v83 + 104) = 0u;
            *(v83 + 104) = v150;
            *(v83 + 120) = v151;
            v150 = 0u;
            *(v83 + 144) = 0;
            *(v83 + 128) = 0u;
            *(v83 + 128) = v152;
            *(v83 + 144) = v153;
            v152 = 0u;
            v151 = 0;
            v153 = 0;
            *(v83 + 168) = 0;
            *(v83 + 152) = 0u;
            *(v83 + 152) = v154;
            *(v83 + 168) = v155;
            v154 = 0u;
            v88 = v156;
            v89 = v157;
            *(v83 + 208) = v158;
            *(v83 + 176) = v88;
            *(v83 + 192) = v89;
            *(v83 + 232) = 0;
            *(v83 + 216) = 0u;
            *(v83 + 216) = v159;
            *(v83 + 232) = v160;
            v159 = 0u;
            v155 = 0;
            v160 = 0;
            *(v83 + 256) = 0;
            *(v83 + 240) = 0u;
            *(v83 + 240) = v161;
            *(v83 + 256) = v162;
            v161 = 0u;
            v90 = v163;
            v91 = v165;
            *(v83 + 280) = v164;
            *(v83 + 296) = v91;
            *(v83 + 264) = v90;
            v92 = v166;
            v93 = v167;
            v94 = v169;
            *(v83 + 344) = v168;
            *(v83 + 360) = v94;
            *(v83 + 312) = v92;
            *(v83 + 328) = v93;
            v95 = v170;
            v96 = v171;
            v97 = v173;
            *(v83 + 408) = v172;
            *(v83 + 424) = v97;
            *(v83 + 376) = v95;
            *(v83 + 392) = v96;
            v98 = v174;
            v99 = v175;
            v100 = v177;
            *(v83 + 472) = v176;
            *(v83 + 488) = v100;
            *(v83 + 440) = v98;
            *(v83 + 456) = v99;
            *(v83 + 504) = v178[0];
            *(v83 + 512) = *&v178[1];
            memset(v178, 0, sizeof(v178));
            v162 = 0;
            *(v83 + 528) = 0;
            *(v83 + 536) = 0u;
            *(v83 + 528) = v179;
            *(v83 + 544) = v180;
            v179 = 0u;
            v180 = 0;
            v101 = v83 + 552;
            v127[1] = v83 + 552;
          }

          v127[1] = v101;
          sub_4547F0(v143);
          if (__p)
          {
            v134 = __p;
            operator delete(__p);
          }

          if (v131)
          {
            v132 = v131;
            operator delete(v131);
          }
        }

        goto LABEL_68;
      }
    }

    if (v25 == v28)
    {
LABEL_31:
      v53 = sub_10C554C(a6, v28);
      sub_10CB1D8(v53, &v138, &v136, a8, v130);
      sub_10CB3D4(v28, &v140, a6, a7, a11, v143);
      sub_F6C830(v143, v130);
      v54 = v127[1];
      if (v54 >= v127[2])
      {
        sub_49DFE8(v127, v143);
      }

      else
      {
        v55 = *v143;
        *(v54 + 16) = *&v143[16];
        *(v54 + 24) = 0;
        *v54 = v55;
        memset(v143, 0, sizeof(v143));
        *(v54 + 32) = 0;
        *(v54 + 40) = 0;
        *(v54 + 24) = v144;
        *(v54 + 40) = v145;
        v144 = 0uLL;
        v145 = 0;
        v56 = v146;
        v57 = v148;
        v58 = v149;
        *(v54 + 64) = v147;
        *(v54 + 80) = v57;
        *(v54 + 48) = v56;
        *(v54 + 96) = v58;
        *(v54 + 104) = 0;
        *(v54 + 112) = 0;
        *(v54 + 120) = 0;
        *(v54 + 104) = v150;
        v150 = 0uLL;
        *(v54 + 120) = v151;
        *(v54 + 128) = 0;
        *(v54 + 136) = 0;
        *(v54 + 144) = 0;
        *(v54 + 128) = v152;
        *(v54 + 144) = v153;
        *(v54 + 152) = 0;
        v151 = 0;
        v152 = 0uLL;
        v153 = 0;
        *(v54 + 160) = 0;
        *(v54 + 168) = 0;
        *(v54 + 152) = v154;
        *(v54 + 168) = v155;
        v154 = 0uLL;
        v155 = 0;
        v59 = v157;
        v60 = v158;
        *(v54 + 176) = v156;
        *(v54 + 192) = v59;
        *(v54 + 208) = v60;
        *(v54 + 216) = 0;
        *(v54 + 224) = 0;
        *(v54 + 232) = 0;
        *(v54 + 216) = v159;
        v159 = 0uLL;
        *(v54 + 232) = v160;
        *(v54 + 240) = 0;
        *(v54 + 248) = 0;
        *(v54 + 256) = 0;
        *(v54 + 240) = v161;
        *(v54 + 256) = v162;
        v160 = 0;
        v161 = 0uLL;
        v162 = 0;
        v61 = v163;
        v62 = v165;
        *(v54 + 280) = v164;
        *(v54 + 296) = v62;
        *(v54 + 264) = v61;
        v63 = v166;
        v64 = v167;
        v65 = v169;
        *(v54 + 344) = v168;
        *(v54 + 360) = v65;
        *(v54 + 312) = v63;
        *(v54 + 328) = v64;
        v66 = v170;
        v67 = v171;
        v68 = v173;
        *(v54 + 408) = v172;
        *(v54 + 424) = v68;
        *(v54 + 376) = v66;
        *(v54 + 392) = v67;
        v69 = v174;
        v70 = v175;
        v71 = v177;
        *(v54 + 472) = v176;
        *(v54 + 488) = v71;
        *(v54 + 440) = v69;
        *(v54 + 456) = v70;
        *(v54 + 504) = v178[0];
        *(v54 + 512) = *&v178[1];
        memset(v178, 0, sizeof(v178));
        *(v54 + 528) = 0;
        *(v54 + 544) = 0;
        *(v54 + 536) = 0;
        *(v54 + 528) = v179;
        *(v54 + 544) = v180;
        v179 = 0uLL;
        v180 = 0;
        v72 = v54 + 552;
        v127[1] = v54 + 552;
      }

      v127[1] = v72;
      sub_4547F0(v143);
      if (__p)
      {
        v134 = __p;
        operator delete(__p);
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      v136 = sub_10CB7E8(v31, &v138);
      v137 = v73;
      if (sub_456C80((v31 + 20), &v136) != 0x7FFFFFFF)
      {
        sub_5AAC4(&v136);
      }

      v74 = *(v31 + 16);
      if (*(v31 + 8) != v124)
      {
        v74 -= *(v128 + 164);
        if (v74 <= *(v128 + 96))
        {
          v74 = *(v128 + 96);
        }
      }

      sub_456544(v143, v74, (v128 + 96));
      v138 = *v143;
      v139 = *&v143[8];
      goto LABEL_23;
    }

    v33 = v141;
LABEL_45:
    if (v33 < v142)
    {
      *v33 = v24;
      v29 = v33 + 8;
    }

    else
    {
      v75 = v140;
      v76 = v33 - v140;
      v77 = (v33 - v140) >> 3;
      v78 = v77 + 1;
      if ((v77 + 1) >> 61)
      {
        sub_1794();
      }

      v79 = v142 - v140;
      if ((v142 - v140) >> 2 > v78)
      {
        v78 = v79 >> 2;
      }

      if (v79 >= 0x7FFFFFFFFFFFFFF8)
      {
        v80 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v80 = v78;
      }

      if (v80)
      {
        if (!(v80 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v81 = (8 * v77);
      *v81 = v24;
      v29 = (v81 + 1);
      memcpy(0, v75, v76);
      v140 = 0;
      v142 = 0;
      if (v75)
      {
        operator delete(v75);
      }
    }

    v141 = v29;
    goto LABEL_23;
  }

LABEL_68:
  v103 = *v127;
  v102 = v127[1];
  if (*v127 != v102)
  {
    v104 = (v102 - 552);
    if (v102 - 552 > v103)
    {
      do
      {
        v105 = *v103;
        *&v143[16] = *(v103 + 16);
        *v143 = v105;
        *(v103 + 8) = 0u;
        *v103 = 0;
        v144 = *(v103 + 24);
        v145 = *(v103 + 40);
        *(v103 + 40) = 0;
        *(v103 + 24) = 0u;
        v106 = *(v103 + 48);
        v107 = *(v103 + 64);
        v108 = *(v103 + 80);
        v149 = *(v103 + 96);
        v147 = v107;
        v148 = v108;
        v146 = v106;
        v150 = *(v103 + 104);
        v151 = *(v103 + 120);
        *(v103 + 120) = 0;
        *(v103 + 104) = 0u;
        v152 = *(v103 + 128);
        v153 = *(v103 + 144);
        *(v103 + 144) = 0;
        *(v103 + 128) = 0u;
        v154 = *(v103 + 152);
        v155 = *(v103 + 168);
        *(v103 + 168) = 0;
        *(v103 + 152) = 0u;
        v109 = *(v103 + 176);
        v110 = *(v103 + 192);
        v158 = *(v103 + 208);
        v156 = v109;
        v157 = v110;
        v159 = *(v103 + 216);
        v160 = *(v103 + 232);
        *(v103 + 232) = 0;
        *(v103 + 216) = 0u;
        v161 = *(v103 + 240);
        v162 = *(v103 + 256);
        *(v103 + 256) = 0;
        *(v103 + 240) = 0u;
        v111 = *(v103 + 264);
        v112 = *(v103 + 296);
        v164 = *(v103 + 280);
        v165 = v112;
        v163 = v111;
        v113 = *(v103 + 312);
        v114 = *(v103 + 328);
        v115 = *(v103 + 360);
        v168 = *(v103 + 344);
        v169 = v115;
        v166 = v113;
        v167 = v114;
        v116 = *(v103 + 376);
        v117 = *(v103 + 392);
        v118 = *(v103 + 424);
        v172 = *(v103 + 408);
        v173 = v118;
        v170 = v116;
        v171 = v117;
        v119 = *(v103 + 440);
        v120 = *(v103 + 456);
        v121 = *(v103 + 488);
        v176 = *(v103 + 472);
        v177 = v121;
        v174 = v119;
        v175 = v120;
        v178[0] = *(v103 + 504);
        v122 = *(v103 + 528);
        *&v178[1] = *(v103 + 512);
        *(v103 + 520) = 0;
        *(v103 + 504) = 0u;
        v179 = v122;
        v180 = *(v103 + 544);
        *(v103 + 544) = 0;
        *(v103 + 528) = 0u;
        sub_49C304(v103, v104);
        sub_49C304(v104, v143);
        sub_4547F0(v143);
        v103 += 552;
        v104 = (v104 - 552);
      }

      while (v103 < v104);
    }
  }

  sub_10CB898(v16, a10);
  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }
}

void sub_10CB12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, char a47)
{
  sub_49A8F8(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  sub_454784(a9);
  _Unwind_Resume(a1);
}

double sub_10CB1D8@<D0>(__int16 *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = *(a1 + 1);
    v10 = a1;
    v11 = sub_3F80(a2);
    v12 = sub_3F80(a3);
    sub_444404(v9, v11, v12);
    LOWORD(v10) = *v10;
    sub_458004(a5, v10);
    LODWORD(v8) = sub_3F80(v8);
    v13 = sub_3F80(a3);
    sub_45830C(a5, v10, v8, v13, &v16);
    sub_458BBC(a5, v10, &v15);
  }

  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0;
  *a6 = 0x7FFFFFFF;
  *(a6 + 8) = 0x7FFFFFFF;
  *(a6 + 12) = 0x7FFFFFFF7FFFFFFFLL;
  *(a6 + 32) = 0x8000000080000000;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0;
  *(a6 + 92) = 0x8000000080000000;
  *(a6 + 100) = 0x7FFFFFFF;
  result = 0.0;
  *(a6 + 120) = xmmword_2297C00;
  return result;
}

void sub_10CB388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v19 = a17;
    if (!a17)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v19 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10CB3D4@<X0>(unsigned int a1@<W0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = sub_3AF6B4(a5);
  v11 = *a2;
  v12 = a2[1];
  v13 = (v12 - 8);
  if (*a2 != v12 && v13 > v11)
  {
    v15 = (v12 - 16);
    v16 = v11 + 8;
    if (v12 - 16 > v11 + 8)
    {
      v16 = v12 - 16;
    }

    v17 = v16 - 8;
    if (v17 == v11)
    {
      v18 = *a2;
    }

    else
    {
      v18 = v11 + 1;
    }

    v36 = v17 == v11;
    v19 = (v17 - v18) >> 4;
    if (!v36)
    {
      ++v19;
    }

    if (v19 < 0x13 || v11 < v12 && v12 - 8 * v19 - 8 < v11 + 8 * v19 + 8)
    {
      goto LABEL_19;
    }

    v20 = v19 + 1;
    v21 = (v19 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v13 -= v21;
    v22 = v11 + 8 * v21;
    v23 = (v11 + 16);
    v24 = v21;
    do
    {
      v25 = v23[-1];
      v26 = *v23;
      v27 = vextq_s8(v15[-1], v15[-1], 8uLL);
      v23[-1] = vextq_s8(*v15, *v15, 8uLL);
      *v23 = v27;
      v15[-1] = vextq_s8(v26, v26, 8uLL);
      *v15 = vextq_s8(v25, v25, 8uLL);
      v23 += 2;
      v15 -= 2;
      v24 -= 4;
    }

    while (v24);
    v11 = v22;
    if (v20 != v21)
    {
LABEL_19:
      v28 = v11 + 8;
      do
      {
        v29 = *(v28 - 8);
        *(v28 - 8) = *v13;
        *v13-- = v29;
        v30 = v28 >= v13;
        v28 += 8;
      }

      while (!v30);
    }
  }

  v52 = a3;
  v31 = v10;
  sub_F6BEE8(a6);
  v32 = *a2;
  v33 = a2[1];
  if (*a2 != v33)
  {
    do
    {
      v34 = *(*v32 + 40);
      v35 = *(*v32 + 48);
      v36 = *(*v32 + 36) == v34 && v35 == 0;
      if (!v36)
      {
        do
        {
          while (1)
          {
            sub_F6C3B8(a6, (v35 + 8), 0);
            v37 = *v35;
            if (sub_F94B2C(a4, *v35) == 1)
            {
              break;
            }

            v35 = 0;
            if (v37 == v34)
            {
              goto LABEL_24;
            }
          }

          sub_F9495C(a4, v37, v53);
          v35 = *v53[0] + 104 * v54;
        }

        while (v37 != v34);
      }

LABEL_24:
      v32 += 8;
    }

    while (v32 != v33);
  }

  if (!sub_F6D008(a6))
  {
    v38 = sub_F94B9C(a4, *(**a2 + 36));
    v39 = HIDWORD(v38) & 0xFFFF0000FFFFFFFFLL | (WORD1(v38) << 32);
    v40 = sub_2B51D8(v31, v39);
    if (*(v31 + 7772) == 1)
    {
      v41 = sub_30C50C(v31 + 3896, HIDWORD(v38), 0);
      v42 = &v41[-*v41];
      if (*v42 < 5u)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(v42 + 2);
        if (v43)
        {
          v43 += &v41[*&v41[v43]];
        }
      }

      v44 = (v43 + ((v38 << 16 >> 30) & 0x3FFFC) + 4 + *(v43 + ((v38 << 16 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v44 = 0;
    }

    v45 = sub_31D7E8(v31, v39, 1);
    v53[0] = v40;
    v53[1] = v44;
    v54 = v45;
    v55 = v46;
    v56 = (HIDWORD(v38) & 0xFFFE0000FFFFFFFFLL | (WORD1(v38) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v38 >> 1) & 1) << 48)) ^ 0x1000000000000;
    sub_F6C100(a6, v38, v53, 0);
  }

  v47 = **(a2[1] - 8);
  v48 = sub_F75E48(v52, a1);
  v49 = sub_F75E48(v52, v47);
  sub_F68F20(a6, v48 + 112);
  sub_F6901C(a6, v49 + 16);
  LODWORD(v53[0]) = 0x3FFFF;
  sub_F69690(a6, v53);
  LODWORD(v53[0]) = 0x3FFFF;
  result = sub_F6969C(a6, v53);
  a2[1] = *a2;
  return result;
}

uint64_t sub_10CB7E8(uint64_t a1, unsigned int *a2)
{
  v4 = sub_3F80(a2);
  v5 = sub_456C34((a1 + 20), v4);
  v6 = sub_4566A4(a2);
  if (v6 >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    sub_4441F4(v8);
  }

  v11 = sub_4566AC(a2);
  if (v5 >= v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  sub_456544(&v12, v9, &v11);
  return v12;
}

uint64_t sub_10CB898(uint64_t *a1, int a2)
{
  result = sub_F63D58(a1);
  if ((result & 1) == 0)
  {
    if (a2 == 2)
    {
      nullsub_1();
      v6 = *v5;
      v16 = 196607;
      sub_F69690(v6, &v16);
    }

    v7 = a2 != 2;
    v8 = sub_45AC50(a1);
    v9 = sub_588D8(a1);
    if (v8 != v9)
    {
      v10 = v9;
      v11 = v8 + 552;
      while (v11 != v10)
      {
        v12 = sub_4D1DB0(v8 + 552);
        if (*v12 != -1 || *(v12 + 2) != 3)
        {
          v16 = v7;
          sub_F6969C(v8, &v16);
          v16 = v7;
          sub_F69690(v8 + 552, &v16);
          ++v7;
        }

        v11 = v8 + 1104;
        v8 += 552;
      }
    }

    nullsub_1();
    v15 = *(v14 + 8) - 552;
    v16 = v7;
    return sub_F6969C(v15, &v16);
  }

  return result;
}

void sub_10CB9AC()
{
  byte_27C1E37 = 3;
  LODWORD(qword_27C1E20) = 5136193;
  byte_27C1E4F = 3;
  LODWORD(qword_27C1E38) = 5136194;
  byte_27C1E67 = 3;
  LODWORD(qword_27C1E50) = 5136195;
  byte_27C1E7F = 15;
  strcpy(&qword_27C1E68, "vehicle_mass_kg");
  byte_27C1E97 = 21;
  strcpy(&xmmword_27C1E80, "vehicle_cargo_mass_kg");
  byte_27C1EAF = 19;
  strcpy(&qword_27C1E98, "vehicle_aux_power_w");
  byte_27C1EC7 = 15;
  strcpy(&qword_27C1EB0, "dcdc_efficiency");
  strcpy(&qword_27C1EC8, "drive_train_efficiency");
  HIBYTE(word_27C1EDE) = 22;
  operator new();
}

void sub_10CBB88(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1EDE) < 0)
  {
    sub_21E771C();
  }

  sub_21E7728();
  _Unwind_Resume(a1);
}

void sub_10CBBA8(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = xmmword_22AF6F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = sub_3F80((a3 + 392));
  operator new();
}

void sub_10CBE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10CBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a2 + 132;
  result = *a4;
  v5 = *(a4 + 16);
  *(a1 + 80) = *(a4 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

void sub_10CBEF4(uint64_t a1, int a2, char a3, void *a4)
{
  if (*a4 != a4[1])
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v6 >= v5)
    {
      v8 = *a1;
      v9 = (v6 - *a1) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        sub_1794();
      }

      v11 = v5 - v8;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v13 = (v6 - *a1) >> 4;
      v14 = 16 * v9;
      *v14 = a2;
      *(v14 + 4) = a3;
      *(v14 + 8) = a4;
      v7 = 16 * v9 + 16;
      v15 = (v14 - 16 * v13);
      if (v8 != v6)
      {
        v16 = v15;
        do
        {
          v17 = *v8++;
          *v16++ = v17;
        }

        while (v8 != v6);
        v8 = *a1;
      }

      *a1 = v15;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v6 = a2;
      *(v6 + 4) = a3;
      v7 = v6 + 16;
      *(v6 + 8) = a4;
    }

    *(a1 + 8) = v7;
  }
}

uint64_t sub_10CC038(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 16;
  if (v3 >= 0x10)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 >> 4) + 1;
    v5 = v2 + 16 * (v9 & 0x1FFFFFFFFFFFFFFELL);
    v10 = (v2 + 24);
    v11 = v9 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v12 = *(v10 - 2);
      v13 = *v10;
      v10 += 4;
      v7 -= 1227133513 * ((v12[1] - *v12) >> 3);
      v8 -= 1227133513 * ((v13[1] - *v13) >> 3);
      v11 -= 2;
    }

    while (v11);
    v4 = v8 + v7;
    if (v9 == (v9 & 0x1FFFFFFFFFFFFFFELL))
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    v5 = *a1;
  }

  do
  {
    v4 -= 1227133513 * ((*(*(v5 + 8) + 8) - **(v5 + 8)) >> 3);
    v5 += 16;
  }

  while (v5 != v1);
  return v4;
}

void sub_10CC0FC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a2;
  if (*a1 == a1[1])
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v3 = a1;
  nullsub_1();
  v118 = sub_4566AC(v4);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v7 = *v3;
  v6 = v3[1];
  if (*v3 == v6)
  {
    goto LABEL_12;
  }

  v8 = v6 - v7 - 16;
  if (v8 <= 0xF)
  {
    v9 = 0;
    v10 = *v3;
    do
    {
LABEL_9:
      v9 -= 1227133513 * ((*(*(v10 + 8) + 8) - **(v10 + 8)) >> 3);
      v10 += 16;
    }

    while (v10 != v6);
    goto LABEL_10;
  }

  v11 = 0;
  v12 = 0;
  v13 = (v8 >> 4) + 1;
  v10 = v7 + 16 * (v13 & 0x1FFFFFFFFFFFFFFELL);
  v14 = (v7 + 24);
  v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v16 = *(v14 - 2);
    v17 = *v14;
    v14 += 4;
    v11 -= 1227133513 * ((v16[1] - *v16) >> 3);
    v12 -= 1227133513 * ((v17[1] - *v17) >> 3);
    v15 -= 2;
  }

  while (v15);
  v9 = v12 + v11;
  if (v13 != (v13 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v9)
  {
    operator new();
  }

LABEL_12:
  v18 = 0;
  v19 = 0;
  v105 = v2;
  v112 = v3;
  if (v7 == v6)
  {
    goto LABEL_93;
  }

  v103 = v3[1];
  do
  {
    v20 = *(v3 + 12);
    if (*(v7 + 4) == 1)
    {
      v111 = 2;
      v108 = 0x7FFFFFFF;
    }

    else
    {
      v111 = 3;
      v108 = *(v3 + 12);
    }

    if (v20 >= *(v3[5] + 4))
    {
      v20 = *(v3[5] + 4);
    }

    v107 = v20;
    v21 = *(v3 + 15);
    v114 = v7;
    if (v21 == 0x7FFFFFFF || (LODWORD(v115[0]) = -v21, v109 = sub_4568D8(v115, &v118), v106 = v22, v23 = *(v7 + 8), v24 = *v23, v104 = v23[1], *v23 == v104))
    {
      __src = 0;
      v25 = 0;
    }

    else
    {
      __src = 0;
      v25 = 0;
      do
      {
        v115[0] = v109;
        LODWORD(v115[1]) = v106;
        if (sub_456A78(v115) && (v26 = *v24, v27 = *(v24 + 8), v28 = *(v24 + 16), v119 = v109, v120 = v106, v115[0] = sub_456CF8((v24 + 20), &v119), LODWORD(v115[1]) = v29, v30 = *(v24 + 32), sub_456A78(v115)) && (v31 = sub_4441F4(v27), v32 = v115[0], v31 >= SLODWORD(v115[0])))
        {
          v34 = HIDWORD(v115[0]);
          v33 = v115[1];
          v35 = v28;
        }

        else
        {
          v27 = 0;
          v33 = 0x7FFFFFFF;
          v30 = -1;
          v34 = 0x7FFFFFFF;
          v32 = 0x7FFFFFFF;
          v35 = 0x7FFFFFFF;
          v26 = 0x7FFFFFFF;
        }

        v36 = v25 - __src;
        v37 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - __src) >> 3);
        v38 = v37 + 1;
        if (v37 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        if (0x999999999999999ALL * (-__src >> 3) > v38)
        {
          v38 = 0x999999999999999ALL * (-__src >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
        {
          v39 = 0x666666666666666;
        }

        else
        {
          v39 = v38;
        }

        if (v39)
        {
          if (v39 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v40 = 40 * v37;
        *v40 = v26;
        *(v40 + 4) = 0;
        *(v40 + 8) = v27;
        *(v40 + 16) = v35;
        *(v40 + 20) = v32;
        *(v40 + 24) = v34;
        *(v40 + 28) = v33;
        *(v40 + 32) = v30;
        *(v40 + 36) = 0;
        v25 = 40 * v37 + 40;
        v41 = (v40 + 40 * (v36 / -40));
        memcpy(v41, __src, v36);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v41;
        v3 = v112;
        v7 = v114;
        v2 = v105;
        v24 += 56;
      }

      while (v24 != v104);
    }

    v110 = -1227133513 * ((*(*(v7 + 8) + 8) - **(v7 + 8)) >> 3);
    if (v110)
    {
      for (i = 0; i != v110; ++i)
      {
        v46 = **(v7 + 8) + 56 * i;
        if (*(v3 + 80) == 1 && *(v46 + 32) == -1)
        {
          continue;
        }

        if (__src != v25 && *(v46 + 32) != -1)
        {
          v47 = 0;
          v48 = v3[3];
          v49 = *(v46 + 36);
          v50 = **(v7 + 8) + 56 * i;
          while (v49 != 0xFFFFFFFFLL)
          {
            v50 = *(*(v48 + 72) + 32 * v49) + 56 * *(v50 + 40);
            v51 = *(v50 + 36);
            if (v51 == v49)
            {
              ++v47;
            }

            v49 = *(v50 + 36);
            if (v51 == -1)
            {
              if (*(v50 + 8) != v48 + 104)
              {
                ++v47;
              }

              break;
            }
          }

          if (i && v47 >= *(v3 + 16))
          {
            v52 = __src;
            v53 = i;
            while (!sub_10C6F84(v52, (__src + 40 * i), v3[5]))
            {
              v52 += 10;
              if (!--v53)
              {
                goto LABEL_63;
              }
            }

            continue;
          }
        }

LABEL_63:
        if (*(v46 + 32) == -1)
        {
          if (*(v46 + 8) == v3[3] + 104)
          {
            v54 = 3;
          }

          else
          {
            v54 = 2;
          }
        }

        else
        {
          v54 = 0;
        }

        v55 = sub_10C0038(v3[5], v46, v107, v108, 0x7FFFFFFF, v54, v111, &v118);
        v56 = v55;
        v58 = v57;
        v7 = v114;
        if (*(v114 + 4))
        {
          v3 = v112;
          v59 = v2[1];
          v60 = v2[2];
          if (v59 >= v60)
          {
            goto LABEL_78;
          }

          goto LABEL_44;
        }

        v3 = v112;
        v61 = *(v112 + 9);
        v62 = v61 * sub_10BFED0(v112[5], SHIDWORD(v55), v111);
        if (v62 >= 0.0)
        {
          if (v62 >= 4.50359963e15)
          {
            goto LABEL_77;
          }

          v63 = (v62 + v62) + 1;
        }

        else
        {
          if (v62 <= -4.50359963e15)
          {
            goto LABEL_77;
          }

          v63 = (v62 + v62) - 1 + (((v62 + v62) - 1) >> 63);
        }

        v62 = (v63 >> 1);
LABEL_77:
        v58 += v62;
        v59 = v2[1];
        v60 = v2[2];
        if (v59 >= v60)
        {
LABEL_78:
          v64 = *v2;
          v65 = v59 - *v2;
          v66 = 0xCCCCCCCCCCCCCCCDLL * (v65 >> 4) + 1;
          if (v66 > 0x333333333333333)
          {
            sub_1794();
          }

          v67 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v64) >> 4);
          if (2 * v67 > v66)
          {
            v66 = 2 * v67;
          }

          if (v67 >= 0x199999999999999)
          {
            v68 = 0x333333333333333;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            if (v68 <= 0x333333333333333)
            {
              operator new();
            }

            sub_1808();
          }

          v69 = 16 * (v65 >> 4);
          *v69 = *v114;
          v70 = *v46;
          v71 = *(v46 + 16);
          v72 = *(v46 + 48);
          *(v69 + 40) = *(v46 + 32);
          *(v69 + 24) = v71;
          *(v69 + 8) = v70;
          *(v69 + 56) = v72;
          *(v69 + 64) = v56;
          *(v69 + 72) = v58;
          v45 = v69 + 80;
          v73 = v69 - v65;
          memcpy((v69 - v65), v64, v65);
          *v2 = v73;
          v2[1] = v45;
          v2[2] = 0;
          if (v64)
          {
            operator delete(v64);
          }

          v3 = v112;
          v7 = v114;
          goto LABEL_45;
        }

LABEL_44:
        *v59 = *v114;
        v5 = *v46;
        v43 = *(v46 + 16);
        v44 = *(v46 + 48);
        *(v59 + 40) = *(v46 + 32);
        *(v59 + 24) = v43;
        *(v59 + 8) = v5;
        *(v59 + 56) = v44;
        *(v59 + 64) = v56;
        *(v59 + 72) = v58;
        v45 = v59 + 80;
LABEL_45:
        v2[1] = v45;
      }
    }

    if (__src)
    {
      operator delete(__src);
    }

    v7 += 16;
  }

  while (v7 != v103);
  v19 = *v2;
  v18 = v2[1];
LABEL_93:
  if (v18 - v19 < 10241)
  {
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v74 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 4);
    while (1)
    {
      v75 = operator new(80 * v74, &std::nothrow);
      if (v75)
      {
        break;
      }

      v76 = v74 >> 1;
      v77 = v74 > 1;
      v74 >>= 1;
      if (!v77)
      {
        goto LABEL_100;
      }
    }

    v76 = v74;
  }

LABEL_100:
  sub_10CCF18(v19, v18, 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 4), v75, v76, v5);
  if (v75)
  {
    operator delete(v75);
  }

  v78 = *(v112 + 13);
  if (v78)
  {
    v79 = *v105;
    v80 = v105[1];
    if (0xCCCCCCCCCCCCCCCDLL * (&v80[-*v105] >> 4) > v78)
    {
      v81 = *(v112 + 14);
      if (v78 >= v81)
      {
        v82 = v81;
      }

      else
      {
        v82 = v78;
      }

      v83 = 80 * (v78 - v82);
      v84 = v83 + v79;
      v85 = 0uLL;
      *v115 = 0u;
      *__p = 0u;
      v117 = 1065353216;
      if (v83)
      {
        do
        {
          LODWORD(v119) = *(v79 + 40);
          if (v119 != -1)
          {
            sub_10CDD10(v115, &v119, &v119);
          }

          v79 += 80;
        }

        while (v79 != v84);
      }

      v86 = &v80[-v84];
      if (v80 != v84)
      {
        v87 = v84;
        do
        {
          v88 = *(v87 + 40);
          LODWORD(v119) = v88;
          if (v88 == -1)
          {
            goto LABEL_113;
          }

          if (v115[1])
          {
            v85.n128_u64[0] = vcnt_s8(v115[1]);
            v85.n128_u16[0] = vaddlv_u8(v85.n128_u64[0]);
            if (v85.n128_u32[0] > 1uLL)
            {
              v89 = v88;
              if (v115[1] <= v88)
              {
                v89 = v88 % LODWORD(v115[1]);
              }
            }

            else
            {
              v89 = (LODWORD(v115[1]) - 1) & v88;
            }

            v90 = *(v115[0] + v89);
            if (v90)
            {
              v91 = *v90;
              if (v91)
              {
                if (v85.n128_u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v93 = v91[1];
                    if (v93 == v88)
                    {
                      if (*(v91 + 4) == v88)
                      {
                        goto LABEL_113;
                      }
                    }

                    else if ((v93 & (v115[1] - 1)) != v89)
                    {
                      goto LABEL_136;
                    }

                    v91 = *v91;
                    if (!v91)
                    {
                      goto LABEL_136;
                    }
                  }
                }

                do
                {
                  v92 = v91[1];
                  if (v92 == v88)
                  {
                    if (*(v91 + 4) == v88)
                    {
                      goto LABEL_113;
                    }
                  }

                  else
                  {
                    if (v92 >= v115[1])
                    {
                      v92 %= v115[1];
                    }

                    if (v92 != v89)
                    {
                      break;
                    }
                  }

                  v91 = *v91;
                }

                while (v91);
              }
            }
          }

LABEL_136:
          if (__p[1] >= v82)
          {
LABEL_113:
            *(v87 + 72) += 864000;
          }

          else
          {
            sub_10CDD10(v115, &v119, &v119);
          }

          v87 += 80;
        }

        while (v87 != v80);
      }

      v94 = 0xCCCCCCCCCCCCCCCDLL * (v86 >> 4);
      if (v86 < 10241)
      {
        v96 = 0;
        v97 = 0;
      }

      else
      {
        v95 = 0xCCCCCCCCCCCCCCCDLL * (v86 >> 4);
        while (1)
        {
          v96 = operator new(80 * v95, &std::nothrow);
          if (v96)
          {
            break;
          }

          v97 = v95 >> 1;
          v77 = v95 > 1;
          v95 >>= 1;
          if (!v77)
          {
            goto LABEL_145;
          }
        }

        v97 = v95;
      }

LABEL_145:
      sub_10CE048(v84, v80, v94, v96, v97, v85);
      if (v96)
      {
        operator delete(v96);
      }

      v98 = *(v112 + 13);
      v99 = 0xCCCCCCCCCCCCCCCDLL * ((v105[1] - *v105) >> 4);
      if (v98 <= v99)
      {
        if (v98 < v99)
        {
          v105[1] = *v105 + 80 * v98;
        }
      }

      else
      {
        sub_10CCCE0(v105, v98 - v99);
      }

      v100 = __p[0];
      if (__p[0])
      {
        do
        {
          v101 = *v100;
          operator delete(v100);
          v100 = v101;
        }

        while (v101);
      }

      v102 = v115[0];
      v115[0] = 0;
      if (v102)
      {
        operator delete(v102);
      }
    }
  }
}

void sub_10CCC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_11BD8(va);
  v21 = *a12;
  if (!*a12)
  {
    _Unwind_Resume(a1);
  }

  *(a12 + 8) = v21;
  operator delete(v21);
  _Unwind_Resume(a1);
}

void sub_10CCCE0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v8 = &v4[5 * a2];
      v9 = 80 * a2;
      do
      {
        *v4 = 0u;
        v4[1] = 0u;
        v4[2] = 0u;
        v4[3] = 0u;
        v4[4] = 0u;
        *v4 = -1;
        *(v4 + 8) = 0u;
        *(v4 + 40) = 0u;
        *(v4 + 2) = 0x7FFFFFFF;
        *&v10 = 0x8000000080000000;
        *(&v10 + 1) = 0x8000000080000000;
        *(v4 + 24) = v10;
        *(v4 + 5) = -1;
        sub_10BFE3C((v4 + 4));
        v4 += 5;
        v9 -= 80;
      }

      while (v9);
      v4 = v8;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4) + a2;
    if (v5 > 0x333333333333333)
    {
      sub_1794();
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x199999999999999)
    {
      v7 = 0x333333333333333;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 16 * ((v4 - *a1) >> 4);
    v12 = v11 + 80 * a2;
    v13 = (v11 + 64);
    do
    {
      *(v13 - 4) = 0u;
      v14 = v13 - 4;
      *(v13 - 3) = 0u;
      *(v13 - 2) = 0u;
      *(v13 - 1) = 0u;
      *v13 = 0u;
      *(v13 - 16) = -1;
      *(v13 - 56) = 0u;
      *(v13 - 24) = 0u;
      *(v13 - 14) = 0x7FFFFFFF;
      *&v15 = 0x8000000080000000;
      *(&v15 + 1) = 0x8000000080000000;
      *(v13 - 40) = v15;
      *(v13 - 3) = -1;
      sub_10BFE3C(v13);
      v13 = (v16 + 80);
    }

    while (v14 + 5 != v12);
    v17 = *a1;
    v18 = *(a1 + 8) - *a1;
    v19 = (v11 - v18);
    memcpy(v19, *a1, v18);
    *a1 = v19;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_10CCEF8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_10CCF18(uint64_t result, _OWORD *a2, unint64_t a3, uint64_t a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      if (sub_10BFE90(a2 - 4, (result + 64)))
      {
        v46 = v7[1];
        v48 = v7[2];
        *v50 = v7[3];
        *&v50[16] = v7[4];
        v44 = *v7;
        *v7 = *(a2 - 5);
        v9 = *(a2 - 3);
        v8 = *(a2 - 2);
        v10 = *(a2 - 4);
        *(v7 + 60) = *(a2 - 20);
        v7[2] = v9;
        v7[3] = v8;
        v7[1] = v10;
        *(a2 - 5) = v44;
        *(a2 - 20) = *&v50[12];
        *(a2 - 2) = *v50;
        *(a2 - 3) = v48;
        *(a2 - 4) = v46;
      }
    }

    else if (a3 > 128)
    {
      v22 = a4;
      v23 = a3 >> 1;
      v24 = (result + 80 * (a3 >> 1));
      v25 = a3 - (a3 >> 1);
      if (a3 <= a5)
      {
        v28 = sub_10CD270(result, v24, a3 >> 1, a4, a6);
        v29 = v22 + 80 * v23;
        sub_10CD270(v24, a2, v25, v29, v28);
        v30 = v22 + 80 * a3;
        v31 = v29;
        while (v31 != v30)
        {
          if (sub_10BFE90((v31 + 64), (v22 + 64)))
          {
            *v7 = *v31;
            v35 = *(v31 + 16);
            v36 = *(v31 + 32);
            v37 = *(v31 + 48);
            *(v7 + 60) = *(v31 + 60);
            v7[2] = v36;
            v7[3] = v37;
            v7[1] = v35;
            v31 += 80;
            v7 += 5;
            if (v22 == v29)
            {
LABEL_32:
              while (v31 != v30)
              {
                *v7 = *v31;
                v41 = *(v31 + 16);
                v42 = *(v31 + 32);
                v43 = *(v31 + 48);
                *(v7 + 60) = *(v31 + 60);
                v7[2] = v42;
                v7[3] = v43;
                v7[1] = v41;
                v31 += 80;
                v7 += 5;
              }

              return;
            }
          }

          else
          {
            *v7 = *v22;
            v32 = *(v22 + 16);
            v33 = *(v22 + 32);
            v34 = *(v22 + 48);
            *(v7 + 60) = *(v22 + 60);
            v7[2] = v33;
            v7[3] = v34;
            v7[1] = v32;
            v22 += 80;
            v7 += 5;
            if (v22 == v29)
            {
              goto LABEL_32;
            }
          }
        }

        while (v22 != v29)
        {
          *v7 = *v22;
          v38 = *(v22 + 16);
          v39 = *(v22 + 32);
          v40 = *(v22 + 48);
          *(v7 + 60) = *(v22 + 60);
          v7[2] = v39;
          v7[3] = v40;
          v7[1] = v38;
          v22 += 80;
          v7 += 5;
        }
      }

      else
      {
        sub_10CCF18(result, v24, a3 >> 1, a4, a5);
        sub_10CCF18(v24, a2, v25, v22, a5);

        sub_10CD5B0(v7, v24, a2, v23, v25, v22, a5);
      }
    }

    else if (result != a2)
    {
      v11 = (result + 80);
      if ((result + 80) != a2)
      {
        v12 = 0;
        v13 = result;
        do
        {
          v15 = v13;
          v13 = v11;
          if (sub_10BFE90(v15 + 36, v15 + 16))
          {
            v45 = *v13;
            v16 = v13[1];
            v17 = v13[2];
            *v50 = v13[3];
            *&v50[16] = v13[4];
            v47 = v16;
            v49 = v17;
            v18 = v12;
            do
            {
              v19 = (v7 + v18);
              v20 = *(v7 + v18 + 48);
              v19[7] = *(v7 + v18 + 32);
              v19[8] = v20;
              *(v19 + 140) = *(v7 + v18 + 60);
              v21 = *(v7 + v18 + 16);
              v19[5] = *(v7 + v18);
              v19[6] = v21;
              if (!v18)
              {
                v14 = v7;
                goto LABEL_11;
              }

              v18 -= 80;
            }

            while (sub_10BFE90(&v50[16], v19 - 4));
            v14 = (v7 + v18 + 80);
LABEL_11:
            *v14 = v45;
            *(v14 + 60) = *&v50[12];
            v14[2] = v49;
            v14[3] = *v50;
            v14[1] = v47;
          }

          v11 = v13 + 5;
          v12 += 80;
        }

        while (v13 + 5 != a2);
      }
    }
  }
}

__n128 sub_10CD270(uint64_t a1, _OWORD *a2, unint64_t a3, uint64_t a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v10 = a2 - 5;
      if (sub_10BFE90(a2 - 4, (a1 + 64)))
      {
        *v5 = *v10;
        v11 = *(a2 - 4);
        v12 = *(a2 - 3);
        v13 = *(a2 - 1);
        *(v5 + 48) = *(a2 - 2);
        *(v5 + 64) = v13;
        *(v5 + 16) = v11;
        *(v5 + 32) = v12;
        v14 = *(v7 + 64);
        v16 = *(v7 + 16);
        v15 = *(v7 + 32);
        *(v5 + 128) = *(v7 + 48);
        *(v5 + 144) = v14;
        *(v5 + 96) = v16;
        *(v5 + 112) = v15;
        result = *v7;
      }

      else
      {
        *v5 = *v7;
        v34 = *(v7 + 16);
        v35 = *(v7 + 32);
        v36 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v36;
        *(v5 + 16) = v34;
        *(v5 + 32) = v35;
        v37 = *(a2 - 1);
        v39 = *(a2 - 4);
        v38 = *(a2 - 3);
        *(v5 + 128) = *(a2 - 2);
        *(v5 + 144) = v37;
        *(v5 + 96) = v39;
        *(v5 + 112) = v38;
        result = *v10;
      }

      *(v5 + 80) = result;
    }

    else if (a3 == 1)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v8 = *(a1 + 32);
      v9 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = result;
      *(a4 + 32) = v8;
    }

    else if (a3 > 8)
    {
      v40 = a3 >> 1;
      v41 = 80 * (a3 >> 1);
      v42 = v41 + a1;
      sub_10CCF18(a1, (v41 + a1), v40, a4, v40);
      sub_10CCF18(v41 + v7, a2, a3 - v40, v5 + v41, a3 - v40);
      v44 = v41 + v7;
      while (v44 != a2)
      {
        if (sub_10BFE90((v44 + 64), (v7 + 64)))
        {
          *v5 = *v44;
          result = *(v44 + 16);
          v47 = *(v44 + 32);
          v48 = *(v44 + 64);
          *(v5 + 48) = *(v44 + 48);
          *(v5 + 64) = v48;
          *(v5 + 16) = result;
          *(v5 + 32) = v47;
          v44 += 80;
          v5 += 80;
          if (v7 == v42)
          {
LABEL_32:
            while (v44 != a2)
            {
              *v5 = *v44;
              result = *(v44 + 16);
              v51 = *(v44 + 32);
              v52 = *(v44 + 64);
              *(v5 + 48) = *(v44 + 48);
              *(v5 + 64) = v52;
              *(v5 + 16) = result;
              *(v5 + 32) = v51;
              v44 += 80;
              v5 += 80;
            }

            return result;
          }
        }

        else
        {
          *v5 = *v7;
          result = *(v7 + 16);
          v45 = *(v7 + 32);
          v46 = *(v7 + 64);
          *(v5 + 48) = *(v7 + 48);
          *(v5 + 64) = v46;
          *(v5 + 16) = result;
          *(v5 + 32) = v45;
          v7 += 80;
          v5 += 80;
          if (v7 == v42)
          {
            goto LABEL_32;
          }
        }
      }

      while (v7 != v42)
      {
        *v5 = *v7;
        result = *(v7 + 16);
        v49 = *(v7 + 32);
        v50 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v50;
        *(v5 + 16) = result;
        *(v5 + 32) = v49;
        v7 += 80;
        v5 += 80;
      }
    }

    else if (a1 != a2)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v17 = *(a1 + 32);
      v18 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v18;
      *(a4 + 16) = result;
      *(a4 + 32) = v17;
      v19 = a1 + 80;
      if ((a1 + 80) != a2)
      {
        v20 = 0;
        v21 = a4;
        do
        {
          while (1)
          {
            v24 = v19;
            v25 = (v21 + 80);
            if (sub_10BFE90((v7 + 144), (v21 + 64)))
            {
              break;
            }

            *v25 = *v24;
            result = *(v24 + 16);
            v22 = *(v24 + 32);
            v23 = *(v24 + 64);
            *(v21 + 128) = *(v24 + 48);
            *(v21 + 144) = v23;
            *(v21 + 96) = result;
            *(v21 + 112) = v22;
            v19 = v24 + 80;
            v20 += 80;
            v21 += 80;
            v7 = v24;
            if ((v24 + 80) == a2)
            {
              return result;
            }
          }

          v26 = *(v21 + 48);
          *(v21 + 112) = *(v21 + 32);
          *(v21 + 128) = v26;
          *(v21 + 144) = *(v21 + 64);
          v27 = *(v21 + 16);
          *v25 = *v21;
          *(v21 + 96) = v27;
          v28 = v5;
          if (v21 != v5)
          {
            v29 = v20;
            while (1)
            {
              v28 = (v5 + v29);
              if (!sub_10BFE90((v7 + 144), (v5 + v29 - 16)))
              {
                break;
              }

              v30 = *(v28 - 2);
              v28[2] = *(v28 - 3);
              v28[3] = v30;
              *(v28 + 60) = *(v28 - 20);
              v31 = *(v28 - 4);
              *v28 = *(v28 - 5);
              v28[1] = v31;
              v29 -= 80;
              if (!v29)
              {
                v28 = v5;
                break;
              }
            }
          }

          *v28 = *v24;
          result = *(v24 + 16);
          v32 = *(v24 + 32);
          v33 = *(v24 + 48);
          *(v28 + 60) = *(v24 + 60);
          v28[2] = v32;
          v28[3] = v33;
          v28[1] = result;
          v19 = v24 + 80;
          v20 += 80;
          v21 = v25;
          v7 = v24;
        }

        while ((v24 + 80) != a2);
      }
    }
  }

  return result;
}

uint64_t sub_10CD5B0(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v69 = a5;
  if (a5)
  {
    v12 = result;
    while (v69 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        result = sub_10BFE90(a2 + 16, &v13[v12 + 64]);
        if (result)
        {
          break;
        }

        v13 += 80;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v16 = v69;
      __src = a6;
      v67 = a3;
      v68 = a7;
      if (-v14 >= v69)
      {
        if (v14 == -1)
        {
          v57 = &v13[v12];
          v70 = *&v13[v12];
          *v73 = *&v13[v12 + 48];
          *&v73[16] = *&v13[v12 + 64];
          v71 = *&v13[v12 + 16];
          v72 = *&v13[v12 + 32];
          v59 = *(a2 + 2);
          v58 = *(a2 + 3);
          v60 = *(a2 + 1);
          *(v57 + 60) = *(a2 + 60);
          *(v57 + 2) = v59;
          *(v57 + 3) = v58;
          *(v57 + 1) = v60;
          *v57 = *a2;
          *(a2 + 2) = v72;
          *(a2 + 3) = *v73;
          *(a2 + 60) = *&v73[12];
          *a2 = v70;
          *(a2 + 1) = v71;
          return result;
        }

        v22 = -v14 / 2;
        v18 = a2;
        if (a2 != a3)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 4);
          v24 = &v13[80 * v22 + v12];
          v18 = a2;
          do
          {
            v25 = &v18[80 * (v23 >> 1)];
            v26 = sub_10BFE90(v25 + 16, v24 + 16);
            if (v26)
            {
              v23 += ~(v23 >> 1);
            }

            else
            {
              v23 >>= 1;
            }

            if (v26)
            {
              v18 = v25 + 80;
            }
          }

          while (v23);
          v16 = v69;
          v22 = -v14 / 2;
        }

        v17 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - a2) >> 4);
        v19 = &v13[80 * v22 + v12];
      }

      else
      {
        v17 = v69 / 2;
        v18 = &a2[80 * (v69 / 2)];
        v19 = a2;
        if (&a2[-v12] != v13)
        {
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((&a2[-v12] - v13) >> 4);
          v19 = &v13[v12];
          do
          {
            v21 = &v19[80 * (v20 >> 1)];
            if (sub_10BFE90(v18 + 16, v21 + 16))
            {
              v20 >>= 1;
            }

            else
            {
              v19 = v21 + 80;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
          v16 = v69;
          v17 = v69 / 2;
        }

        v22 = 0xCCCCCCCCCCCCCCCDLL * ((&v19[-v12] - v13) >> 4);
      }

      a4 = -v14 - v22;
      v69 = v16 - v17;
      v27 = a2;
      v28 = v16;
      v29 = v22;
      v30 = sub_10CDAB0(v19, v27, v18);
      v31 = v29;
      v32 = v30;
      if ((v31 + v17) >= (v28 - (v31 + v17) - v14))
      {
        a6 = __src;
        v33 = v31;
        result = sub_10CD5B0(v30, v18, v67, a4, v69, __src, v68);
        v34 = v19;
        a4 = v33;
        a3 = v32;
        v69 = v17;
        v12 += v13;
        a2 = v34;
        a7 = v68;
        if (!v17)
        {
          return result;
        }
      }

      else
      {
        a6 = __src;
        result = sub_10CD5B0(&v13[v12], v19, v30, v31, v17, __src, v68);
        v12 = v32;
        a2 = v18;
        a3 = v67;
        a7 = v68;
        if (!v69)
        {
          return result;
        }
      }
    }

    if (a4 <= v69)
    {
      if (a2 != v12)
      {
        v45 = 4 - a6;
        v46 = a6;
        v47 = v12;
        do
        {
          *v46 = *v47;
          v48 = *(v47 + 16);
          v49 = *(v47 + 32);
          v50 = *(v47 + 64);
          *(v46 + 3) = *(v47 + 48);
          *(v46 + 4) = v50;
          *(v46 + 1) = v48;
          *(v46 + 2) = v49;
          v47 += 80;
          v46 += 80;
          v45 -= 80;
        }

        while (v47 != a2);
        while (a2 != a3)
        {
          result = sub_10BFE90(a2 + 16, a6 + 16);
          if (result)
          {
            *v12 = *a2;
            v54 = *(a2 + 1);
            v55 = *(a2 + 2);
            v56 = *(a2 + 3);
            *(v12 + 60) = *(a2 + 60);
            *(v12 + 32) = v55;
            *(v12 + 48) = v56;
            *(v12 + 16) = v54;
            a2 += 80;
            v12 += 80;
            if (v46 == a6)
            {
              return result;
            }
          }

          else
          {
            *v12 = *a6;
            v51 = *(a6 + 1);
            v52 = *(a6 + 2);
            v53 = *(a6 + 3);
            *(v12 + 60) = *(a6 + 60);
            *(v12 + 32) = v52;
            *(v12 + 48) = v53;
            *(v12 + 16) = v51;
            a6 += 80;
            v12 += 80;
            if (v46 == a6)
            {
              return result;
            }
          }
        }

        return memmove(v12, a6, -&a6[v45]);
      }
    }

    else if (a2 != a3)
    {
      v35 = 0;
      do
      {
        v36 = &a6[v35];
        *v36 = *&a2[v35];
        v37 = *&a2[v35 + 16];
        v38 = *&a2[v35 + 32];
        v39 = *&a2[v35 + 64];
        *(v36 + 3) = *&a2[v35 + 48];
        *(v36 + 4) = v39;
        *(v36 + 1) = v37;
        *(v36 + 2) = v38;
        v35 += 80;
      }

      while (&a2[v35] != a3);
      v40 = &a6[v35];
      while (a2 != v12)
      {
        result = sub_10BFE90(v40 - 4, a2 - 4);
        if (result)
        {
          v41 = a2 - 80;
        }

        else
        {
          v41 = v40 - 80;
        }

        *(a3 - 5) = *v41;
        v43 = *(v41 + 2);
        v42 = *(v41 + 3);
        v44 = *(v41 + 1);
        *(a3 - 20) = *(v41 + 60);
        *(a3 - 3) = v43;
        *(a3 - 2) = v42;
        *(a3 - 4) = v44;
        a3 -= 80;
        if (result)
        {
          a2 -= 80;
        }

        else
        {
          v40 -= 80;
        }

        if (v40 == a6)
        {
          return result;
        }
      }

      if (v40 != a6)
      {
        v61 = -80;
        do
        {
          v62 = &a3[v61];
          *v62 = *(v40 - 5);
          v63 = *(v40 - 4);
          v64 = *(v40 - 3);
          v65 = *(v40 - 2);
          *(v62 + 60) = *(v40 - 20);
          *(v62 + 2) = v64;
          *(v62 + 3) = v65;
          *(v62 + 1) = v63;
          v61 -= 80;
          v40 -= 80;
        }

        while (v40 != a6);
      }
    }
  }

  return result;
}

char *sub_10CDAB0(char *__src, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - __src;
  if (a2 != __src)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 80 == a2)
    {
      v37 = *(__src + 2);
      *v41 = *(__src + 3);
      *&v41[16] = *(__src + 4);
      v31 = *__src;
      v34 = *(__src + 1);
      v6 = __src;
      memmove(__src, __src + 80, v5 - 4);
      v3 = &v6[v5];
      *(v3 + 2) = v37;
      *(v3 + 3) = *v41;
      *(v3 + 60) = *&v41[12];
      *v3 = v31;
      *(v3 + 1) = v34;
    }

    else if (a2 + 80 == a3)
    {
      v3 = __src + 80;
      v38 = *(a3 - 3);
      *v42 = *(a3 - 2);
      *&v42[16] = *(a3 - 1);
      v32 = *(a3 - 5);
      v35 = *(a3 - 4);
      if (a3 - 80 != __src)
      {
        v7 = __src;
        memmove(__src + 80, __src, a3 - 80 - __src - 4);
        __src = v7;
      }

      *(__src + 2) = v38;
      *(__src + 3) = *v42;
      *(__src + 60) = *&v42[12];
      *__src = v32;
      *(__src + 1) = v35;
    }

    else
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 4);
      if (0xCCCCCCCCCCCCCCCDLL * (v4 >> 4) == v8)
      {
        v9 = __src + 80;
        v10 = a2 + 80;
        do
        {
          v39 = *(v9 - 3);
          *v43 = *(v9 - 2);
          *&v43[16] = *(v9 - 1);
          v33 = *(v9 - 5);
          v36 = *(v9 - 4);
          *(v9 - 5) = *(v10 - 5);
          v12 = *(v10 - 3);
          v11 = *(v10 - 2);
          v13 = *(v10 - 4);
          *(v9 - 20) = *(v10 - 20);
          *(v9 - 3) = v12;
          *(v9 - 2) = v11;
          *(v9 - 4) = v13;
          *(v10 - 20) = *&v43[12];
          *(v10 - 3) = v39;
          *(v10 - 2) = *v43;
          *(v10 - 5) = v33;
          *(v10 - 4) = v36;
          if (v9 == a2)
          {
            break;
          }

          v9 += 80;
          v14 = v10 == a3;
          v10 += 80;
        }

        while (!v14);
        return a2;
      }

      else
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
        do
        {
          v16 = v15;
          v15 = v8;
          v8 = v16 % v8;
        }

        while (v8);
        v17 = &__src[80 * v15];
        do
        {
          v18 = *(v17 - 3);
          v19 = *(v17 - 2);
          v20 = *(v17 - 1);
          v22 = *(v17 - 5);
          v21 = *(v17 - 4);
          v17 -= 80;
          v40 = v18;
          *v44 = v19;
          *&v44[16] = v20;
          v23 = &v17[v4];
          v24 = v17;
          do
          {
            v25 = v23;
            *v24 = *v23;
            v26 = *(v23 + 1);
            v27 = *(v23 + 2);
            v28 = *(v23 + 3);
            *(v24 + 60) = *(v23 + 60);
            v24[2] = v27;
            v24[3] = v28;
            v24[1] = v26;
            v29 = (a3 - v23);
            v23 += 16 * (v4 >> 4);
            if (v4 >= v29)
            {
              v23 = (a2 - v29);
            }

            v24 = v25;
          }

          while (v23 != v17);
          *v25 = v22;
          *(v25 + 60) = *&v44[12];
          v25[2] = v40;
          v25[3] = *v44;
          v25[1] = v21;
        }

        while (v17 != __src);
        return &__src[v5];
      }
    }
  }

  return v3;
}

uint64_t *sub_10CDD10(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (*(v8 + 4) == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_10CE048(uint64_t result, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      if (sub_10BFE90(a2 - 4, (result + 64)))
      {
        v46 = v7[1];
        v48 = v7[2];
        *v50 = v7[3];
        *&v50[16] = v7[4];
        v44 = *v7;
        *v7 = *(a2 - 5);
        v9 = *(a2 - 3);
        v8 = *(a2 - 2);
        v10 = *(a2 - 4);
        *(v7 + 60) = *(a2 - 20);
        v7[2] = v9;
        v7[3] = v8;
        v7[1] = v10;
        *(a2 - 5) = v44;
        *(a2 - 20) = *&v50[12];
        *(a2 - 2) = *v50;
        *(a2 - 3) = v48;
        *(a2 - 4) = v46;
      }
    }

    else if (a3 > 128)
    {
      v22 = a4;
      v23 = a3 >> 1;
      v24 = (result + 80 * (a3 >> 1));
      v25 = a3 - (a3 >> 1);
      if (a3 <= a5)
      {
        v28 = sub_10CE3A0(result, v24, a3 >> 1, a4, a6);
        v29 = v22 + 80 * v23;
        sub_10CE3A0(v24, a2, v25, v29, v28);
        v30 = v22 + 80 * a3;
        v31 = v29;
        while (v31 != v30)
        {
          if (sub_10BFE90((v31 + 64), (v22 + 64)))
          {
            *v7 = *v31;
            v35 = *(v31 + 16);
            v36 = *(v31 + 32);
            v37 = *(v31 + 48);
            *(v7 + 60) = *(v31 + 60);
            v7[2] = v36;
            v7[3] = v37;
            v7[1] = v35;
            v31 += 80;
            v7 += 5;
            if (v22 == v29)
            {
LABEL_32:
              while (v31 != v30)
              {
                *v7 = *v31;
                v41 = *(v31 + 16);
                v42 = *(v31 + 32);
                v43 = *(v31 + 48);
                *(v7 + 60) = *(v31 + 60);
                v7[2] = v42;
                v7[3] = v43;
                v7[1] = v41;
                v31 += 80;
                v7 += 5;
              }

              return;
            }
          }

          else
          {
            *v7 = *v22;
            v32 = *(v22 + 16);
            v33 = *(v22 + 32);
            v34 = *(v22 + 48);
            *(v7 + 60) = *(v22 + 60);
            v7[2] = v33;
            v7[3] = v34;
            v7[1] = v32;
            v22 += 80;
            v7 += 5;
            if (v22 == v29)
            {
              goto LABEL_32;
            }
          }
        }

        while (v22 != v29)
        {
          *v7 = *v22;
          v38 = *(v22 + 16);
          v39 = *(v22 + 32);
          v40 = *(v22 + 48);
          *(v7 + 60) = *(v22 + 60);
          v7[2] = v39;
          v7[3] = v40;
          v7[1] = v38;
          v22 += 80;
          v7 += 5;
        }
      }

      else
      {
        sub_10CE048(result, v24, a3 >> 1, a4, a5);
        sub_10CE048(v24, a2, v25, v22, a5);

        sub_10CD5B0(v7, v24, a2, v23, v25, v22, a5);
      }
    }

    else if (result != a2)
    {
      v11 = result + 80;
      if ((result + 80) != a2)
      {
        v12 = 0;
        v13 = result;
        do
        {
          v15 = v13;
          v13 = v11;
          if (sub_10BFE90((v15 + 144), (v15 + 64)))
          {
            v45 = *v13;
            v16 = *(v13 + 16);
            v17 = *(v13 + 32);
            *v50 = *(v13 + 48);
            *&v50[16] = *(v13 + 64);
            v47 = v16;
            v49 = v17;
            v18 = v12;
            do
            {
              v19 = (v7 + v18);
              v20 = *(v7 + v18 + 48);
              v19[7] = *(v7 + v18 + 32);
              v19[8] = v20;
              *(v19 + 140) = *(v7 + v18 + 60);
              v21 = *(v7 + v18 + 16);
              v19[5] = *(v7 + v18);
              v19[6] = v21;
              if (!v18)
              {
                v14 = v7;
                goto LABEL_11;
              }

              v18 -= 80;
            }

            while (sub_10BFE90(&v50[16], v19 - 4));
            v14 = (v7 + v18 + 80);
LABEL_11:
            *v14 = v45;
            *(v14 + 60) = *&v50[12];
            v14[2] = v49;
            v14[3] = *v50;
            v14[1] = v47;
          }

          v11 = v13 + 80;
          v12 += 80;
        }

        while ((v13 + 80) != a2);
      }
    }
  }
}