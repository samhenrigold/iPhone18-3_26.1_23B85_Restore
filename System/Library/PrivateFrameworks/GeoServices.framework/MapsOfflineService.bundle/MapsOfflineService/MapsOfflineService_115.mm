void sub_72F9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_72FA14(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  sub_72E16C(a1, a2, a3, a3 + ((*(a4 + 8) - *a4) >> 3) - 1, *(a4 + 24), v9);
  if (*v9 != -1 || (v6.i64[0] = -1, v6.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v9[8], v6), vceqq_s64(*&v9[24], v6))))) & 1) != 0) || *&v10[0] != -1)
  {
    if (!*(a4 + 24) && (*(a4 + 244) & 1) == 0)
    {
      *(a4 + 24) = 3;
      *(a4 + 232) = 0;
    }

    if (sub_72E82C(a1, a4))
    {
      v7 = *v9;
      *(a4 + 88) = *&v9[16];
      v8 = v10[0];
      *(a4 + 104) = *&v9[32];
      *(a4 + 120) = v8;
      *(a4 + 132) = *(v10 + 12);
      *(a4 + 72) = v7;
    }

    sub_72FAF8(a1, a4);
  }
}

void sub_72FAF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72) != -1 || *(a2 + 80) != -1 || *(a2 + 88) != -1 || *(a2 + 120) != -1 || *(a2 + 96) != -1 || *(a2 + 104) != -1)
  {
    v7 = 1;
    switch(*(a2 + 24))
    {
      case 1:
      case 0x14:
      case 0x1B:
      case 0x1D:
      case 0x21:
      case 0x3C:
      case 0x3E:
      case 0x41:
      case 0x56:
        goto LABEL_19;
      case 2:
      case 0x15:
      case 0x1C:
      case 0x1E:
      case 0x22:
      case 0x3D:
      case 0x3F:
      case 0x42:
      case 0x57:
        v7 = 2;
LABEL_19:
        *(a2 + 24) = v7;
        break;
      default:
        return;
    }
  }
}

void sub_730080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_730244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_730280(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  sub_730364(a1, a2, a3, a3 + ((*(a4 + 8) - *a4) >> 3) - 1, *(a4 + 24), v9);
  if (*v9 != -1 || (v6.i64[0] = -1, v6.i64[1] = -1, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v9[8], v6), vceqq_s64(*&v9[24], v6))))) & 1) != 0) || *&v10[0] != -1)
  {
    if (!*(a4 + 24) && (*(a4 + 244) & 1) == 0)
    {
      *(a4 + 24) = 3;
      *(a4 + 232) = 0;
    }

    if (sub_7309F4(a1, a4))
    {
      v7 = *v9;
      *(a4 + 88) = *&v9[16];
      v8 = v10[0];
      *(a4 + 104) = *&v9[32];
      *(a4 + 120) = v8;
      *(a4 + 132) = *(v10 + 12);
      *(a4 + 72) = v7;
    }

    sub_730ADC(a1, a4);
  }
}

uint64_t sub_730364@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = a2;
  v10 = *(a1 + 48);
  v11 = sub_4D1F50(a2, a3);
  v12 = *(v11 + 32);
  v13 = v12 | (*(v11 + 36) << 32);
  v14 = sub_2B51D8(v10, v13);
  if (*(v10 + 7772) == 1)
  {
    sub_30C50C(v10 + 3896, v12, 0);
  }

  sub_31D7E8(v10, v13, 1);
  v15 = *(a1 + 48);
  v16 = sub_4D1F50(v7, a4);
  v18 = *(v16 + 32);
  v17 = *(v16 + 36);
  v19 = v18 | (v17 << 32);
  v20 = sub_2B51D8(v15, v19);
  if (*(v15 + 7772) == 1)
  {
    sub_30C50C(v15 + 3896, v18, 0);
  }

  result = sub_31D7E8(v15, v19, 1);
  if (*a1 & 1) == 0 && (*(a1 + 1) & 1) == 0 && *(a1 + 2) != 1 || (result = sub_72EF68(a1, v7, a3, v22), (result))
  {
    LODWORD(v88) = 0;
    v23 = -1;
    v24 = -1;
    v25 = -1;
    v26 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  result = sub_7310A4(a1, v7, a3, a4);
  v23 = v27;
  if (result > 1)
  {
    if (result == 3)
    {
      LODWORD(v88) = HIDWORD(result);
      v24 = -1;
      v25 = -1;
      v26 = v27;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    if (result == 2)
    {
      v25 = -1;
      v24 = v27;
      LODWORD(v88) = HIDWORD(result);
      v26 = -1;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

LABEL_20:
    v24 = -1;
    v25 = -1;
    v88 = HIDWORD(result);
    v26 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  v24 = -1;
  if (result)
  {
    v25 = v27;
    if (result == 1)
    {
      LODWORD(v88) = HIDWORD(result);
      v26 = -1;
      if (*(a1 + 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v23 = -1;
  LODWORD(v88) = 0;
  v25 = -1;
  v26 = -1;
  if (*(a1 + 3) != 1)
  {
    goto LABEL_44;
  }

LABEL_25:
  v28 = (v14 - *v14);
  if (*v28 >= 0x9Bu && v28[77] && (*(v14 + v28[77] + 1) & 4) != 0)
  {
    v29 = v28[23];
    if (!v29 || ((v30 = *(v14 + v29), v31 = v30 > 0x2A, v32 = (1 << v30) & 0x50426810004, !v31) ? (v33 = v32 == 0) : (v33 = 1), v33))
    {
LABEL_44:
      v38 = -1;
      if (*(a1 + 4) != 1)
      {
        goto LABEL_70;
      }

      goto LABEL_56;
    }
  }

  v34 = (v20 - *v20);
  v35 = *v34;
  if (v35 < 0x2F || !v34[23] || *(v20 + v34[23]) != 9)
  {
    goto LABEL_46;
  }

  if ((v17 & 0x20000000) != 0)
  {
    if (v35 < 0x73)
    {
      goto LABEL_46;
    }

    v36 = v34[57];
    if (!v36)
    {
      goto LABEL_46;
    }

    v37 = 2;
  }

  else
  {
    if (v35 < 0x73)
    {
      goto LABEL_46;
    }

    v36 = v34[57];
    if (!v36)
    {
      goto LABEL_46;
    }

    v37 = 1;
  }

  if (*(v20 + v36) == v37)
  {
    goto LABEL_44;
  }

LABEL_46:
  v39 = v20;
  v40 = v25;
  v41 = *(a1 + 8);
  result = sub_7317E0(a1, v7, a4);
  if (result < v41)
  {
    v38 = -1;
  }

  else
  {
    v38 = v42;
  }

  v91 = v38;
  v92 = v23;
  if (v23 == -1)
  {
    v43 = &v91;
  }

  else
  {
    v43 = &v92;
    if (v38 != -1 && v23 < v38)
    {
      v43 = &v91;
    }
  }

  v25 = v40;
  v23 = *v43;
  v20 = v39;
  if (*(a1 + 4) != 1)
  {
LABEL_70:
    v54 = -1;
    if (*(a1 + 3) != 1)
    {
      goto LABEL_87;
    }

    goto LABEL_71;
  }

LABEL_56:
  v44 = (v14 - *v14);
  if (*v44 >= 0x2Fu)
  {
    v45 = v44[23];
    if (v45)
    {
      if (*(v14 + v45) == 51)
      {
        goto LABEL_70;
      }
    }
  }

  v46 = (v20 - *v20);
  if (*v46 < 0x2Fu)
  {
    goto LABEL_70;
  }

  v47 = v46[23];
  if (!v47 || *(v20 + v47) != 51)
  {
    goto LABEL_70;
  }

  v48 = v7;
  v49 = v38;
  v86 = v20;
  v50 = v25;
  v51 = *(a1 + 16);
  v52 = v48;
  result = sub_731940(a1, v48, a4);
  if (result < v51)
  {
    v54 = -1;
  }

  else
  {
    v54 = v53;
  }

  v91 = v54;
  v92 = v23;
  if (v23 == -1)
  {
    v55 = &v91;
  }

  else
  {
    v55 = &v92;
    if (v54 != -1 && v23 < v54)
    {
      v55 = &v91;
    }
  }

  v25 = v50;
  v38 = v49;
  v23 = *v55;
  v20 = v86;
  v7 = v52;
  if (*(a1 + 3) != 1)
  {
LABEL_87:
    v66 = -1;
    v68 = a5;
    v69 = -1;
    if ((a5 - 6) < 2)
    {
      goto LABEL_105;
    }

    goto LABEL_88;
  }

LABEL_71:
  v56 = (v14 - *v14);
  if (*v56 >= 0x9Bu)
  {
    v57 = v56[77];
    if (v57)
    {
      if ((*(v14 + v57 + 1) & 8) != 0)
      {
        goto LABEL_87;
      }
    }
  }

  v58 = v54;
  v59 = v7;
  v60 = v38;
  v87 = v26;
  v61 = v14;
  v62 = v20;
  v63 = v25;
  v64 = *(a1 + 8);
  result = sub_731A68(a1, v59, a4);
  if (result < v64)
  {
    v66 = -1;
  }

  else
  {
    v66 = v65;
  }

  v91 = v66;
  v92 = v23;
  if (v23 == -1)
  {
    v67 = &v91;
  }

  else
  {
    v67 = &v92;
    if (v66 != -1 && v23 < v66)
    {
      v67 = &v91;
    }
  }

  v68 = a5;
  v25 = v63;
  v38 = v60;
  v54 = v58;
  v23 = *v67;
  v20 = v62;
  v14 = v61;
  v26 = v87;
  v69 = -1;
  if ((a5 - 6) >= 2)
  {
LABEL_88:
    if ((v68 - 86) >= 2)
    {
      if ((v68 - 41) < 0x13 || (v70 = (v14 - *v14), *v70 >= 0x2Fu) && (v71 = v70[23]) != 0 && ((v72 = *(v14 + v71), v31 = v72 > 0x36, v73 = (1 << v72) & 0x44000000000008, !v31) ? (v74 = v73 == 0) : (v74 = 1), !v74) || (v75 = (v20 - *v20), *v75 < 0x2Fu) || (v76 = v75[23]) == 0 || ((v77 = *(v20 + v76), v31 = v77 > 0x36, v78 = (1 << v77) & 0x44000000000008, !v31) ? (v79 = v78 == 0) : (v79 = 1), v79))
      {
        v69 = -1;
      }

      else
      {
        v69 = a4;
      }
    }
  }

LABEL_105:
  if (v26 == -1 && v54 == -1 && v25 == -1 && v38 == -1 && v66 == -1 && v69 == -1 && v24 == -1 && ((v80 = (v20 - *v20), *v80 < 0x2Fu) || (v81 = v80[23]) == 0 || ((v82 = *(v20 + v81), v31 = v82 > 0x36, v83 = (1 << v82) & 0x44000000000008, !v31) ? (v84 = v83 == 0) : (v84 = 1), v84)))
  {
    v23 = -1;
    *(a6 + 48) = -1;
    *&v85 = -1;
    *(&v85 + 1) = -1;
    *(a6 + 16) = v85;
    *(a6 + 32) = v85;
    *a6 = v85;
    *(a6 + 56) = 0;
  }

  else
  {
    *a6 = v26;
    *(a6 + 8) = v54;
    *(a6 + 16) = v25;
    *(a6 + 24) = v38;
    *(a6 + 32) = v66;
    *(a6 + 40) = v69;
    *(a6 + 48) = v24;
    *(a6 + 56) = v88;
  }

  *(a6 + 64) = v23;
  *(a6 + 72) = 0;
  return result;
}

BOOL sub_7309F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a2 + 8) - 8);
  sub_2B51D8(v3, v4 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    sub_30C50C(v3 + 3896, v4, 0);
  }

  sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v5 = *(a2 + 24);
  if (v5 - 6 >= 2 && v5 - 86 >= 2)
  {
    if (v5 - 41 < 0x13)
    {
      return 0;
    }
  }

  else if (v5 < 0x56)
  {
    return 0;
  }

  if (v5 > 0x23 || ((1 << v5) & 0x805C00010) == 0)
  {
    return v5 - 91 >= 6;
  }

  return 0;
}

void sub_730ADC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72) != -1 || *(a2 + 80) != -1 || *(a2 + 88) != -1 || *(a2 + 120) != -1 || *(a2 + 96) != -1 || *(a2 + 104) != -1)
  {
    v7 = 1;
    switch(*(a2 + 24))
    {
      case 1:
      case 0x14:
      case 0x1B:
      case 0x1D:
      case 0x21:
      case 0x3C:
      case 0x3E:
      case 0x41:
      case 0x56:
        goto LABEL_19;
      case 2:
      case 0x15:
      case 0x1C:
      case 0x1E:
      case 0x22:
      case 0x3D:
      case 0x3F:
      case 0x42:
      case 0x57:
        v7 = 2;
LABEL_19:
        *(a2 + 24) = v7;
        break;
      default:
        return;
    }
  }
}

void sub_731064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7310A4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = sub_4D1F50(a2, a3);
  v9 = *(v8 + 32);
  v10 = *(v8 + 36);
  v11 = ((v10 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v10 << 32) | v9;
  v12 = sub_2B51D8(v7, ((v10 & 0x20000000u) << 19) | (v10 << 32) & 0xFFFFFFFFFFFFLL | v9 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v13 = sub_30C50C(v7 + 3896, v9, 0);
    v14 = &v13[-*v13];
    if (*v14 < 5u)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 2);
      if (v15)
      {
        v15 += &v13[*&v13[v15]];
      }
    }

    v16 = v15 + 4 * v10 + 4 + *(v15 + 4 * v10 + 4);
  }

  else
  {
    v16 = 0;
  }

  v58 = 1;
  v63[0] = v12;
  v63[1] = v16;
  v63[2] = sub_31D7E8(v7, v11 & 0xFFFFFFFFFFFFLL, 1);
  v63[3] = v17;
  v63[4] = v11 ^ 0x1000000000000;
  if (*(a1 + 1) == 1)
  {
    v18 = (v12 - *v12);
    v58 = *v18 >= 0x2Fu && (v19 = v18[23]) != 0 && *(v12 + v19) == 43;
  }

  v20 = a3 + 1;
  v21 = sub_4D1DC0(a2);
  if (a3 + 1 > v21)
  {
    v22 = a3 + 1;
  }

  else
  {
    v22 = v21;
  }

  v60 = v22;
  if (v20 >= v21)
  {
    return 0;
  }

  v23 = 0;
  v24 = 0;
  v59 = 0;
  do
  {
    v27 = sub_4D1F50(a2, v20);
    v29 = *v27;
    v30 = (*v27 - **v27);
    v31 = *v30;
    if (v20 < a4)
    {
      if (v31 < 0x2F)
      {
        goto LABEL_22;
      }

      v32 = v30[23];
      if (!v32)
      {
        goto LABEL_22;
      }

      v33 = v29[v32];
      if (v33 != 9)
      {
        v34 = v33 == 20;
        v35 = v58;
        if (v33 == 20)
        {
          v35 = 1;
        }

        if ((v35 & 1) == 0)
        {
          v34 = v33 == 43;
        }

        if (!v34)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_43;
    }

    if (v31 < 0x2F)
    {
      goto LABEL_62;
    }

    v36 = v30[23];
    if (!v36)
    {
      goto LABEL_62;
    }

    v37 = v29[v36];
    if (v37 != 9)
    {
      v38 = v37 == 20;
      v39 = v58;
      if (v37 == 20)
      {
        v39 = 1;
      }

      if ((v39 & 1) == 0)
      {
        v38 = v37 == 43;
      }

      if (!v38)
      {
LABEL_62:
        if (!sub_72EF68(a1, a2, v20, v28))
        {
          break;
        }
      }
    }

LABEL_43:
    v40 = *(a1 + 48);
    v42 = *(v27 + 8);
    v41 = *(v27 + 9);
    v43 = ((v41 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v41 << 32) | v42;
    v44 = sub_2B51D8(v40, ((v41 & 0x20000000u) << 19) | (v41 << 32) & 0xFFFFFFFFFFFFLL | v42 & 0xFFFFFFFFFFFFLL);
    if (*(v40 + 7772) == 1)
    {
      v45 = sub_30C50C(v40 + 3896, v42, 0);
      v46 = &v45[-*v45];
      if (*v46 < 5u)
      {
        v47 = 0;
      }

      else
      {
        v47 = *(v46 + 2);
        if (v47)
        {
          v47 += &v45[*&v45[v47]];
        }
      }

      v48 = (v47 + 4 * v41 + 4 + *(v47 + 4 * v41 + 4));
    }

    else
    {
      v48 = 0;
    }

    v49 = sub_31D7E8(v40, v43 & 0xFFFFFFFFFFFFLL, 1);
    v62[0] = v44;
    v62[1] = v48;
    v62[2] = v49;
    v62[3] = v50;
    v62[4] = (v43 ^ 0x1000000000000);
    v51 = sub_72F450(a1, v63, v62, v24, v23);
    v53 = v51;
    if (v51)
    {
      v23 = HIDWORD(v51);
      v25 = sub_4D23F8(a2, v20, v52);
      v26 = v59;
      if (v24 != v53)
      {
        v26 = 0;
      }

      v59 = v25 + v26;
    }

    else
    {
      v53 = v24;
    }

    v24 = v53;
LABEL_22:
    ++v20;
  }

  while (v60 != v20);
  v54 = v23 << 32;
  if (v24 != 1)
  {
    if ((v24 & 0xFFFFFFFE) == 2)
    {
      v55 = v59 < *(a1 + 40);
      v56 = v54 | v24;
      goto LABEL_56;
    }

    return 0;
  }

  v55 = v59 < *(a1 + 24);
  v56 = v54 | 1;
LABEL_56:
  if (v55)
  {
    return 0;
  }

  else
  {
    return v56;
  }
}

uint64_t sub_731448(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = *(sub_4D1F50(a2, a3) + 32);
    v11 = sub_2B51D8(v9, v10 & 0xFFFFFFFFFFFFLL);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v10, 0);
    }

    sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
    v13 = (v11 - *v11);
    if (*v13 < 0x9Bu || !v13[77] || (*(v11 + v13[77] + 1) & 4) == 0)
    {
      break;
    }

    v14 = v13[23];
    if (v14)
    {
      v15 = *(v11 + v14);
      v16 = v15 > 0x2A;
      v17 = (1 << v15) & 0x50426810004;
      if (!v16 && v17 != 0)
      {
        break;
      }
    }

    v8 += sub_4D23F8(a2, a3++, v12);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_7315A0(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = *(sub_4D1F50(a2, a3) + 32);
    v11 = sub_2B51D8(v9, v10 & 0xFFFFFFFFFFFFLL);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v10, 0);
    }

    sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
    v13 = (v11 - *v11);
    if (*v13 < 0x2Fu)
    {
      break;
    }

    v14 = v13[23];
    if (!v14)
    {
      break;
    }

    if (*(v11 + v14) != 51)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v12);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_7316C0(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = *(sub_4D1F50(a2, a3) + 32);
    v11 = sub_2B51D8(v9, v10 & 0xFFFFFFFFFFFFLL);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v10, 0);
    }

    sub_31D7E8(v9, v10 & 0xFFFFFFFFFFFFLL, 1);
    v13 = (v11 - *v11);
    if (*v13 < 0x9Bu)
    {
      break;
    }

    v14 = v13[77];
    if (!v14)
    {
      break;
    }

    if ((*(v11 + v14 + 1) & 8) == 0)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v12);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_7317E0(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = sub_4D1F50(a2, a3);
    v11 = *(v10 + 32);
    v12 = v11 | (*(v10 + 36) << 32);
    v13 = sub_2B51D8(v9, v12);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v11, 0);
    }

    sub_31D7E8(v9, v12, 1);
    v15 = (v13 - *v13);
    if (*v15 < 0x9Bu || !v15[77] || (*(v13 + v15[77] + 1) & 4) == 0)
    {
      break;
    }

    v16 = v15[23];
    if (v16)
    {
      v17 = *(v13 + v16);
      v18 = v17 > 0x2A;
      v19 = (1 << v17) & 0x50426810004;
      if (!v18 && v19 != 0)
      {
        break;
      }
    }

    v8 += sub_4D23F8(a2, a3++, v14);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_731940(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = sub_4D1F50(a2, a3);
    v11 = *(v10 + 32);
    v12 = v11 | (*(v10 + 36) << 32);
    v13 = sub_2B51D8(v9, v12);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v11, 0);
    }

    sub_31D7E8(v9, v12, 1);
    v15 = (v13 - *v13);
    if (*v15 < 0x2Fu)
    {
      break;
    }

    v16 = v15[23];
    if (!v16)
    {
      break;
    }

    if (*(v13 + v16) != 51)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v14);
  }

  while (v7 != a3);
  return v8;
}

uint64_t sub_731A68(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_4D1DC0(a2);
  if (a3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v6 <= a3)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = *(a1 + 48);
    v10 = sub_4D1F50(a2, a3);
    v11 = *(v10 + 32);
    v12 = v11 | (*(v10 + 36) << 32);
    v13 = sub_2B51D8(v9, v12);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v11, 0);
    }

    sub_31D7E8(v9, v12, 1);
    v15 = (v13 - *v13);
    if (*v15 < 0x9Bu)
    {
      break;
    }

    v16 = v15[77];
    if (!v16)
    {
      break;
    }

    if ((*(v13 + v16 + 1) & 8) == 0)
    {
      break;
    }

    v8 += sub_4D23F8(a2, a3++, v14);
  }

  while (v7 != a3);
  return v8;
}

void sub_731B90()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A4160 = 0u;
  *algn_27A4170 = 0u;
  dword_27A4180 = 1065353216;
  sub_3A9A34(&xmmword_27A4160, v0, v0);
  sub_3A9A34(&xmmword_27A4160, v3, v3);
  sub_3A9A34(&xmmword_27A4160, __p, __p);
  sub_3A9A34(&xmmword_27A4160, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A4138 = 0;
    qword_27A4140 = 0;
    qword_27A4130 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_731DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A4148)
  {
    qword_27A4150 = qword_27A4148;
    operator delete(qword_27A4148);
  }

  _Unwind_Resume(exception_object);
}

void *sub_731E84(void *a1, int a2)
{
  switch(a2)
  {
    case 0:
      v3 = "NO_TURN";
      goto LABEL_86;
    case 1:
      v3 = "LEFT_TURN";
      goto LABEL_35;
    case 2:
      v3 = "RIGHT_TURN";
      goto LABEL_54;
    case 3:
      v3 = "STRAIGHT_AHEAD";
      goto LABEL_82;
    case 4:
      v3 = "U_TURN";
      v4 = 6;
      goto LABEL_89;
    case 5:
      v3 = "FOLLOW_ROAD";
      goto LABEL_41;
    case 6:
      v3 = "ENTER_ROUNDABOUT";
      goto LABEL_77;
    case 7:
      v3 = "EXIT_ROUNDABOUT";
      goto LABEL_75;
    case 11:
      v3 = "OFF_RAMP";
      v4 = 8;
      goto LABEL_89;
    case 12:
      v3 = "ON_RAMP";
      goto LABEL_86;
    case 16:
      v3 = "ARRIVE_END_OF_NAVIGATION";
      goto LABEL_84;
    case 17:
      v3 = "START_ROUTE";
      goto LABEL_41;
    case 18:
      v3 = "ARRIVE_AT_DESTINATION";
      goto LABEL_88;
    case 20:
      v3 = "KEEP_LEFT";
LABEL_35:
      v4 = 9;
      goto LABEL_89;
    case 21:
      v3 = "KEEP_RIGHT";
      goto LABEL_54;
    case 22:
      v3 = "ENTER_FERRY";
      goto LABEL_41;
    case 23:
      v3 = "EXIT_FERRY";
LABEL_54:
      v4 = 10;
      goto LABEL_89;
    case 24:
      v3 = "CHANGE_FERRY";
      goto LABEL_63;
    case 25:
      v3 = "START_ROUTE_WITH_U_TURN";
      goto LABEL_60;
    case 26:
      v3 = "U_TURN_AT_ROUNDABOUT";
      goto LABEL_66;
    case 27:
      v3 = "LEFT_TURN_AT_END";
      goto LABEL_77;
    case 28:
      v3 = "RIGHT_TURN_AT_END";
      goto LABEL_73;
    case 29:
      v3 = "HIGHWAY_OFF_RAMP_LEFT";
      goto LABEL_88;
    case 30:
      v3 = "HIGHWAY_OFF_RAMP_RIGHT";
      goto LABEL_68;
    case 33:
      v3 = "ARRIVE_AT_DESTINATION_LEFT";
      v4 = 26;
      goto LABEL_89;
    case 34:
      v3 = "ARRIVE_AT_DESTINATION_RIGHT";
      v4 = 27;
      goto LABEL_89;
    case 35:
      v3 = "U_TURN_WHEN_POSSIBLE";
      goto LABEL_66;
    case 39:
      v3 = "ARRIVE_END_OF_DIRECTIONS";
      goto LABEL_84;
    case 41:
      v3 = "ROUNDABOUT_EXIT_1";
      goto LABEL_73;
    case 42:
      v3 = "ROUNDABOUT_EXIT_2";
      goto LABEL_73;
    case 43:
      v3 = "ROUNDABOUT_EXIT_3";
      goto LABEL_73;
    case 44:
      v3 = "ROUNDABOUT_EXIT_4";
      goto LABEL_73;
    case 45:
      v3 = "ROUNDABOUT_EXIT_5";
      goto LABEL_73;
    case 46:
      v3 = "ROUNDABOUT_EXIT_6";
      goto LABEL_73;
    case 47:
      v3 = "ROUNDABOUT_EXIT_7";
      goto LABEL_73;
    case 48:
      v3 = "ROUNDABOUT_EXIT_8";
      goto LABEL_73;
    case 49:
      v3 = "ROUNDABOUT_EXIT_9";
      goto LABEL_73;
    case 50:
      v3 = "ROUNDABOUT_EXIT_10";
      goto LABEL_80;
    case 51:
      v3 = "ROUNDABOUT_EXIT_11";
      goto LABEL_80;
    case 52:
      v3 = "ROUNDABOUT_EXIT_12";
      goto LABEL_80;
    case 53:
      v3 = "ROUNDABOUT_EXIT_13";
      goto LABEL_80;
    case 54:
      v3 = "ROUNDABOUT_EXIT_14";
      goto LABEL_80;
    case 55:
      v3 = "ROUNDABOUT_EXIT_15";
      goto LABEL_80;
    case 56:
      v3 = "ROUNDABOUT_EXIT_16";
      goto LABEL_80;
    case 57:
      v3 = "ROUNDABOUT_EXIT_17";
      goto LABEL_80;
    case 58:
      v3 = "ROUNDABOUT_EXIT_18";
      goto LABEL_80;
    case 59:
      v3 = "ROUNDABOUT_EXIT_19";
      goto LABEL_80;
    case 60:
      v3 = "SHARP_LEFT_TURN";
LABEL_75:
      v4 = 15;
      goto LABEL_89;
    case 61:
      v3 = "SHARP_RIGHT_TURN";
      goto LABEL_77;
    case 62:
      v3 = "SLIGHT_LEFT_TURN";
      goto LABEL_77;
    case 63:
      v3 = "SLIGHT_RIGHT_TURN";
      goto LABEL_73;
    case 64:
      v3 = "CHANGE_HIGHWAY";
LABEL_82:
      v4 = 14;
      goto LABEL_89;
    case 65:
      v3 = "CHANGE_HIGHWAY_LEFT";
      goto LABEL_70;
    case 66:
      v3 = "CHANGE_HIGHWAY_RIGHT";
      goto LABEL_66;
    case 82:
      v3 = "WAYPOINT_STOP";
      v4 = 13;
      goto LABEL_89;
    case 83:
      v3 = "WAYPOINT_STOP_LEFT";
      goto LABEL_80;
    case 84:
      v3 = "WAYPOINT_STOP_RIGHT";
LABEL_70:
      v4 = 19;
      goto LABEL_89;
    case 85:
      v3 = "RESUME_ROUTE";
LABEL_63:
      v4 = 12;
      goto LABEL_89;
    case 86:
      v3 = "ROUNDABOUT_EXIT_LEFT";
      goto LABEL_66;
    case 87:
      v3 = "ROUNDABOUT_EXIT_RIGHT";
      goto LABEL_88;
    case 88:
      v3 = "RESUME_ROUTE_WITH_U_TURN";
      goto LABEL_84;
    case 89:
      v3 = "FOLLOW_ROAD_ENTER_DETOUR";
LABEL_84:
      v4 = 24;
      goto LABEL_89;
    case 90:
      v3 = "FOLLOW_ROAD_EXIT_DETOUR";
LABEL_60:
      v4 = 23;
      goto LABEL_89;
    case 91:
      v3 = "ENTER_RAILWAY_SHUTTLE";
LABEL_88:
      v4 = 21;
      goto LABEL_89;
    case 92:
      v3 = "EXIT_RAILWAY_SHUTTLE";
LABEL_66:
      v4 = 20;
      goto LABEL_89;
    case 93:
      v3 = "CHANGE_RAILWAY_SHUTTLE";
LABEL_68:
      v4 = 22;
      goto LABEL_89;
    case 94:
      v3 = "ENTER_BUS_SHUTTLE";
LABEL_73:
      v4 = 17;
      goto LABEL_89;
    case 95:
      v3 = "EXIT_BUS_SHUTTLE";
LABEL_77:
      v4 = 16;
      goto LABEL_89;
    case 96:
      v3 = "CHANGE_BUS_SHUTTLE";
LABEL_80:
      v4 = 18;
      goto LABEL_89;
    case 97:
      v3 = "TURN_AROUND";
LABEL_41:
      v4 = 11;
      goto LABEL_89;
    case 98:
      v3 = "UNKNOWN";
LABEL_86:
      v4 = 7;
LABEL_89:
      sub_4A5C(a1, v3, v4);
      break;
    default:
      return a1;
  }

  return a1;
}

void sub_73245C(uint64_t a1, uint64_t a2)
{
  strcpy(v5, "MultiPointRouteAligner");
  HIBYTE(v5[2]) = 22;
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  *a1 = xmmword_229EBA0;
  *(a1 + 16) = xmmword_229EBB0;
  *(a1 + 32) = 0;
  sub_732F3C(a1, v3);
}

void sub_732560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_732584(int a1, unint64_t a2, int **a3, double a4, double a5, double a6, double a7)
{
  v12 = a2 - 1;
  LODWORD(v13) = *(sub_37268(a3, a2 - 1) + 4);
  v14 = exp(v13 * -6.28318531 / 4294967300.0 + 3.14159265);
  v15 = atan((v14 - 1.0 / v14) * 0.5);
  v16 = 0.00932288077 / (1.0 / cos(v15 * 57.2957795 / 180.0 * 3.14159265));
  v17 = &(*a3)[3 * v12];
  v18 = *v17;
  v19 = v17[1];
  v20 = sub_37268(a3, v12);
  v21 = *v20;
  v22 = v20[1];
  v111 = v12;
  do
  {
    if (!v12)
    {
      break;
    }

    v23 = sub_37268(a3, --v12);
  }

  while (sqrt(((*v23 - v21) * (*v23 - v21) + (v23[1] - v22) * (v23[1] - v22))) / 100.0 <= a6);
  v24 = sub_37268(a3, v12);
  v26 = v24[1];
  v27 = 0.0;
  v28 = v18 == *v24 && v19 == v26;
  v29 = v111;
  if (!v28)
  {
    v30 = -(*v24 - v18);
    if (v18 - *v24 < (*v24 - v18))
    {
      v30 = (v18 - *v24);
    }

    v31 = atan2(v19 - v26, v30);
    HIDWORD(v25) = 1080459264;
    v27 = (v31 + 1.57079633) * 180.0 / 3.14159265;
    if (v27 >= 180.0)
    {
      HIDWORD(v25) = 1080459264;
      do
      {
        v27 = v27 + -360.0;
      }

      while (v27 >= 180.0);
    }

    if (v27 < -180.0)
    {
      HIDWORD(v25) = -1067024384;
      do
      {
        v27 = v27 + 360.0;
      }

      while (v27 < -180.0);
    }
  }

  if (a2)
  {
    v112 = 0;
    HIDWORD(v32) = 1073291771;
    for (i = a2; ; --i)
    {
      v33 = &(*a3)[3 * v29];
      LODWORD(v32) = *v33;
      LODWORD(v25) = v33[1];
      v34 = *&v32;
      v35 = *&v25;
      v36 = v111;
      if (v29 == v111)
      {
        v37 = sub_37268(a3, v111);
        v38 = *v37;
        v39 = v37[1];
        do
        {
          if (!v36)
          {
            break;
          }

          v40 = sub_37268(a3, --v36);
        }

        while (sqrt(((*v40 - v38) * (*v40 - v38) + (v40[1] - v39) * (v40[1] - v39))) / 100.0 <= a6);
        v41 = sub_37268(a3, v36);
        v42 = v41[1];
        v43 = v34 - *v41;
        v44 = v35 - v42;
        if (v42 >= 0xFFFFFFFE)
        {
          v42 = -2;
        }

        v45 = &(*a3)[3 * v111];
        v47 = *v45;
        v46 = v45[1];
        j = 0.0;
        v49 = v47 - *v41;
        if (v49)
        {
          v50 = 0;
        }

        else
        {
          v50 = v42 == v46;
        }

        if (!v50)
        {
          v51 = -(*v41 - v47);
          if (v47 - *v41 < *v41 - v47)
          {
            v51 = v49;
          }

            ;
          }

            ;
          }
        }
      }

      else if (v29)
      {
        v52 = sub_37268(a3, v29);
        v53 = *v52;
        v54 = v52[1];
        v55 = v29;
        do
        {
          if (!v55)
          {
            break;
          }

          v56 = sub_37268(a3, --v55);
        }

        while (sqrt(((*v56 - v53) * (*v56 - v53) + (v56[1] - v54) * (v56[1] - v54))) / 100.0 <= a6);
        v57 = *sub_37268(a3, v55);
        v58 = sub_37268(a3, v29);
        v59 = *v58;
        v60 = v58[1];
        v61 = i;
        while (v61 < a2)
        {
          v62 = sub_37268(a3, v61++);
          if (sqrt(((*v62 - v59) * (*v62 - v59) + (v62[1] - v60) * (v62[1] - v60))) / 100.0 > a6)
          {
            v63 = v61 - 1;
            goto LABEL_48;
          }
        }

        v63 = -1 - 0x5555555555555555 * (a3[1] - *a3);
LABEL_48:
        v70 = sub_37268(a3, v63);
        v71 = HIDWORD(v57);
        v72 = *v70;
        v73 = HIDWORD(*v70);
        v74 = v73;
        if (*v70 == v57 && HIDWORD(v57) == v73)
        {
          v77 = v74 - v71;
          j = 0.0;
        }

        else
        {
          v76 = (*v70 - v57);
          if (*v70 - v57 >= v57 - *v70)
          {
            v76 = -(v57 - *v70);
          }

          v77 = v74 - v71;
            ;
          }

            ;
          }
        }

        v43 = (v72 - v57) * 0.5;
        v44 = v77 * 0.5;
      }

      else
      {
        v64 = sub_37268(a3, 0);
        v66 = *v64;
        v65 = v64[1];
        v67 = 1;
        while (a2 != v67)
        {
          v68 = sub_37268(a3, v67++);
          if (sqrt(((*v68 - v66) * (*v68 - v66) + (v68[1] - v65) * (v68[1] - v65))) / 100.0 > a6)
          {
            v69 = v67 - 1;
            goto LABEL_62;
          }
        }

        v69 = -1 - 0x5555555555555555 * (a3[1] - *a3);
LABEL_62:
        v78 = sub_37268(a3, v69);
        v79 = v78[1];
        v43 = *v78 - v34;
        v44 = v79 - v35;
        v80 = *a3;
        if (v79 >= 0xFFFFFFFE)
        {
          v79 = -2;
        }

        v82 = *v80;
        v81 = v80[1];
        j = 0.0;
        v83 = *v78 - v82;
        if (v83)
        {
          v84 = 0;
        }

        else
        {
          v84 = v81 == v79;
        }

        if (!v84)
        {
          v85 = -(v82 - *v78);
          if (*v78 - v82 < v82 - *v78)
          {
            v85 = v83;
          }

            ;
          }

            ;
          }
        }
      }

      sub_455D0(v27, j);
      if (v32 > a7)
      {
        break;
      }

      v86 = -v43;
      if (a1)
      {
        v86 = v43;
        v87 = -v44;
      }

      else
      {
        v87 = v44;
      }

      v88 = sqrt(v86 * v86 + v87 * v87);
      v89 = 0.0;
      v90 = 0.0;
      if (v88 != 0.0)
      {
        v90 = v87 / v88;
        v89 = v86 / v88;
      }

      v91 = v112 >> 4;
      if (((v112 >> 4) + 1) >> 60)
      {
        sub_1794();
      }

      if (v112 >> 4 != -1)
      {
        if (!(((v112 >> 4) + 1) >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v92 = (16 * v91);
      *v92 = a4 * v90 / v16;
      v92[1] = a4 * v89 / v16;
      memcpy(0, 0, v112);
      v93 = 16 * v91 + 16;
      if (!v29)
      {
        goto LABEL_91;
      }

      v112 = 16 * v91 + 16;
      v94 = *a3;
      v95 = sub_37268(a3, v29);
      v96 = &v94[3 * v29];
      v97 = *v95;
      v98 = v95[1];
      v99 = v29;
      do
      {
        if (!v99)
        {
          break;
        }

        v100 = sub_37268(a3, --v99);
      }

      while (sqrt(((*v100 - v97) * (*v100 - v97) + (v100[1] - v98) * (v100[1] - v98))) / 100.0 <= a6);
      v101 = sub_37268(a3, v99);
      v102 = v96[1] - HIDWORD(*v101);
      HIDWORD(v25) = HIDWORD(a5);
      v32 = sqrt(((*v96 - *v101) * (*v96 - *v101) + v102 * v102)) / -100.0 * a5;
      a4 = a4 + v32;
      if (a4 <= 0.0)
      {
        break;
      }

      --v29;
    }

    v93 = v112;
LABEL_91:
    if (v93)
    {
      v103 = v93 >> 4;
      v104 = 3 * a2;
      v105 = dword_8;
      do
      {
        v106 = &(*a3)[v104];
        LODWORD(v32) = *(v106 - 3);
        LODWORD(v25) = *(v106 - 2);
        v32 = *(v105 - 1) + *&v32;
        v25 = *v105 + *&v25;
        LODWORD(v107) = v25;
        v108 = *(v106 - 1);
        if (v25 >= 0xFFFFFFFE)
        {
          v107 = 4294967294;
        }

        else
        {
          v107 = v107;
        }

        *(v106 - 3) = v32 | (v107 << 32);
        *(v106 - 1) = 0x7FFFFFFF;
        (*a3)[v104 - 1] = v108;
        v104 -= 3;
        v105 += 2;
        --v103;
      }

      while (v103);
      operator delete(0);
    }
  }
}

void sub_732EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    v14 = a1;
    operator delete(__p);
    a1 = v14;
  }

  _Unwind_Resume(a1);
}

void sub_732F3C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *(a1 + 32) = sub_5FBE4(a2, __p, (a1 + 32));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "minimum_shift_gap");
  sub_63EC4(a2, __p, a1);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "maximum_shift_gap");
  sub_63EC4(a2, __p, (a1 + 8));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_7331D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_733204(uint64_t a1, uint64_t a2)
{
  strcpy(v5, "MultiPointRouteAligner");
  HIBYTE(v5[2]) = 22;
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  *a1 = xmmword_229EBA0;
  *(a1 + 16) = xmmword_229EBB0;
  *(a1 + 32) = 0;
  sub_73332C(a1, v3);
}

void sub_733308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_73332C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *(a1 + 32) = sub_5FBE4(a2, __p, (a1 + 32));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "minimum_shift_gap");
  sub_63EC4(a2, __p, a1);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "maximum_shift_gap");
  sub_63EC4(a2, __p, (a1 + 8));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_7335C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7335F4(uint64_t a1, uint64_t a2)
{
  strcpy(v5, "MultiPointRouteAligner");
  HIBYTE(v5[2]) = 22;
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  *a1 = xmmword_229EBA0;
  *(a1 + 16) = xmmword_229EBB0;
  *(a1 + 32) = 0;
  sub_73371C(a1, v3);
}

void sub_7336F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_73371C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *(a1 + 32) = sub_5FBE4(a2, __p, (a1 + 32));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "minimum_shift_gap");
  sub_63EC4(a2, __p, a1);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "maximum_shift_gap");
  sub_63EC4(a2, __p, (a1 + 8));
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_7339B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7339E4(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    nullsub_1();
    v79 = 0x5DDB1ADCB91F64A7 * ((v2[1] - *v2) >> 4);
    if (v79 >= 2)
    {
      v3 = 1;
      v4 = -6.28318531;
      v5 = 1.0;
      while (1)
      {
        v6 = sub_68C454(a2, v3);
        v82 = v3;
        v7 = sub_68C454(a2, v3 - 1);
        sub_69CB14(v6);
        v9 = v8;
        sub_4D1DC0(v7);
        sub_69CB14(v7);
        v11 = v10;
        v83 = v7;
        if (*v9 == v9[1])
        {
          break;
        }

LABEL_7:
        v12 = sub_4D1DC0(v7);
        v14 = *v11;
        v13 = v11[1];
        v15 = *v11 == v13;
        if (*v11 == v13)
        {
          v16 = (v12 - 1);
          if ((v16 & 0x80000000) == 0)
          {
            v17 = v16 - 1;
            while (1)
            {
              while (1)
              {
                sub_69CB14(v7);
                if (v11 != v19)
                {
                  break;
                }

                v14 = *v11;
                v13 = v11[1];
                v15 = *v11 == v13;
                if (*v11 != v13 || v17-- == -1)
                {
                  goto LABEL_40;
                }
              }

              v21 = *v19;
              v20 = v19[1];
              v22 = &v20[-*v19];
              v23 = v11[2];
              v24 = *v11;
              if (v23 - *v11 < v22)
              {
                break;
              }

              v28 = v11[1];
              v29 = v28 - v24;
              if (v28 - v24 >= v22)
              {
                if (v20 != v21)
                {
                  v30 = *v11;
                  memmove(v24, v21, v22);
                  v24 = v30;
                }

                v13 = &v24[v22];
              }

              else
              {
                if (v28 != v24)
                {
                  memmove(v24, v21, v28 - v24);
                  v28 = v11[1];
                }

                if (v20 != &v21[v29])
                {
                  memmove(v28, &v21[v29], v20 - &v21[v29]);
                }

                v13 = &v28[v20 - &v21[v29]];
              }

              v11[1] = v13;
              v14 = *v11;
              v15 = *v11 == v13;
              if (*v11 != v13 || v17-- == -1)
              {
                goto LABEL_40;
              }
            }

            if (v24)
            {
              v11[1] = v24;
              operator delete(v24);
              v23 = 0;
              *v11 = 0;
              v11[1] = 0;
              v11[2] = 0;
            }

            v25 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 2);
            if (v25 <= 0x1555555555555555)
            {
              v26 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 2);
              if (2 * v26 > v25)
              {
                v25 = 2 * v26;
              }

              if (v26 >= 0xAAAAAAAAAAAAAAALL)
              {
                v27 = 0x1555555555555555;
              }

              else
              {
                v27 = v25;
              }

              if (v27 <= 0x1555555555555555)
              {
                operator new();
              }
            }

            goto LABEL_108;
          }
        }

LABEL_40:
        if (!v15 && *v9 != v9[1])
        {
          v32 = sub_37268(v11, 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2) - 2);
          v33 = *v32;
          v34 = v32[1];
          v35 = v11[1];
          v36 = *(v35 - 3);
          v37 = *(v35 - 2);
          v38 = *(v35 - 1);
          v39 = **v9;
          v40 = *(*v9 + 1);
          v41 = *(*v9 + 2);
          v42 = sub_37268(v9, 1uLL);
          v43 = v36 == v39 && v37 == v40;
          if (!v43 || v38 != v41)
          {
            v46 = *v42;
            v45 = v42[1];
            v47 = ((v34 - v37) * (v39 - v36) - (v33 - v36) * (v40 - v37)) / sqrt((v33 - v36) * (v33 - v36) + (v34 - v37) * (v34 - v37));
            v48 = v40 >= 0xFFFFFFFE ? -2 : v40;
            v49 = exp(v48 * v4 / 4294967300.0 + 3.14159265);
            v50 = atan((v49 - v5 / v49) * 0.5);
            v51 = v47 * (0.00932288077 / (v5 / cos(v50 * 57.2957795 / 180.0 * 3.14159265)));
            v52 = fabs(v51);
            if (v52 >= *a1 / 100.0 && sqrt(((v36 - v39) * (v36 - v39) + (v37 - v40) * (v37 - v40))) / 100.0 - v52 < *(a1 + 8) / 100.0)
            {
              v53 = v4;
              if (v36 != v33 || (i = 0.0, v34 != v37))
              {
                v55 = -(v33 - v36);
                if (v36 - v33 < v33 - v36)
                {
                  v55 = (v36 - v33);
                }

                  ;
                }

                  ;
                }
              }

              if (v46 != v39 || (j = 0.0, v40 != v45))
              {
                v57 = -(v39 - v46);
                if (v46 - v39 < (v39 - v46))
                {
                  v57 = (v46 - v39);
                }

                  ;
                }

                  ;
                }
              }

              v58 = vabdd_f64(i, j);
              v4 = v53;
              v5 = 1.0;
              if (v58 < *(a1 + 16))
              {
                v59 = sub_4D1DC0(v83);
                if (v51 != 0.0)
                {
                  v60 = (v59 - 1);
                  if ((v60 & 0x80000000) == 0)
                  {
                    do
                    {
                      sub_69CB14(v83);
                      v62 = 0xAAAAAAAAAAAAAAABLL * ((*(v61 + 8) - *v61) >> 2);
                      v63 = *(a1 + 24);
                      v64 = fabs(v52 / v63) != INFINITY && v62 > 1;
                      if (v64)
                      {
                        sub_732584(v51 > 0.0, v62, v61, v52, v63, 0.5, *(a1 + 16));
                        v52 = v65;
                      }

                      else
                      {
                        v52 = v62;
                      }

                      if (v52 == 0.0)
                      {
                        break;
                      }

                      v64 = v60-- <= 0;
                    }

                    while (!v64);
                  }
                }
              }
            }
          }
        }

        v3 = v82 + 1;
        if (v79 == v82 + 1)
        {
          return;
        }
      }

      v66 = 0;
      while (1)
      {
        while (1)
        {
          if (sub_4D1DC0(v6) <= v66)
          {
            goto LABEL_7;
          }

          ++v66;
          sub_69CB14(v6);
          if (v9 != v67)
          {
            break;
          }

          if (*v9 != v9[1])
          {
            goto LABEL_7;
          }
        }

        v69 = *v67;
        v68 = *(v67 + 8);
        v70 = v68 - *v67;
        v71 = v9[2];
        v72 = *v9;
        if (v71 - *v9 < v70)
        {
          break;
        }

        v76 = v9[1];
        v77 = v76 - v72;
        if (v76 - v72 >= v70)
        {
          if (v68 != v69)
          {
            memmove(*v9, v69, v70);
          }

          v78 = (v72 + v70);
        }

        else
        {
          if (v76 != v72)
          {
            memmove(*v9, v69, v76 - v72);
            v76 = v9[1];
          }

          if (v68 != (v69 + v77))
          {
            memmove(v76, v69 + v77, v68 - (v69 + v77));
          }

          v78 = (v76 + v68 - (v69 + v77));
        }

        v9[1] = v78;
        v7 = v83;
        if (*v9 != v78)
        {
          goto LABEL_7;
        }
      }

      if (v72)
      {
        v9[1] = v72;
        operator delete(v72);
        v71 = 0;
        *v9 = 0;
        v9[1] = 0;
        v9[2] = 0;
      }

      v73 = 0xAAAAAAAAAAAAAAABLL * (v70 >> 2);
      if (v73 <= 0x1555555555555555)
      {
        v74 = 0xAAAAAAAAAAAAAAABLL * (v71 >> 2);
        if (2 * v74 > v73)
        {
          v73 = 2 * v74;
        }

        if (v74 >= 0xAAAAAAAAAAAAAAALL)
        {
          v75 = 0x1555555555555555;
        }

        else
        {
          v75 = v73;
        }

        if (v75 <= 0x1555555555555555)
        {
          operator new();
        }
      }

LABEL_108:
      sub_1794();
    }
  }
}

void sub_734218()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A41B8 = 0u;
  unk_27A41C8 = 0u;
  dword_27A41D8 = 1065353216;
  sub_3A9A34(&xmmword_27A41B8, v0, v0);
  sub_3A9A34(&xmmword_27A41B8, v3, v3);
  sub_3A9A34(&xmmword_27A41B8, __p, __p);
  sub_3A9A34(&xmmword_27A41B8, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A4190 = 0;
    qword_27A4198 = 0;
    qword_27A4188 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_734460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A41A0)
  {
    qword_27A41A8 = qword_27A41A0;
    operator delete(qword_27A41A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_73450C(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 8), *a3, *(a3 + 1));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v6;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v7 = *a4;
      *(a1 + 48) = *(a4 + 2);
      *(a1 + 32) = v7;
      return a1;
    }
  }

  sub_325C((a1 + 32), *a4, *(a4 + 1));
  return a1;
}

void sub_7345A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_7345C4(uint64_t a1)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
      return *a1 != -1;
    }
  }

  else if (*(a1 + 31))
  {
    return *a1 != -1;
  }

  return 0;
}

BOOL sub_7345F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(v32, *a2, *(a2 + 8));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v32 = *a2;
    v33 = *(a2 + 16);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      *v30 = *(a1 + 8);
      v31 = *(a1 + 24);
      goto LABEL_6;
    }
  }

  sub_325C(v30, *(a1 + 8), *(a1 + 16));
LABEL_6:
  if (v33 >= 0)
  {
    v4 = v32;
  }

  else
  {
    v4 = v32[0];
  }

  if (v33 >= 0)
  {
    v5 = SHIBYTE(v33);
  }

  else
  {
    v5 = v32[1];
  }

  for (; v5; v5 = v5 - 1)
  {
    *v4 = __toupper(*v4);
    v4 = (v4 + 1);
  }

  v6 = SHIBYTE(v31);
  v7 = v30;
  v8 = v30[0];
  v9 = v30[1];
  if (v31 >= 0)
  {
    v10 = v30;
  }

  else
  {
    v10 = v30[0];
  }

  if (v31 >= 0)
  {
    v11 = SHIBYTE(v31);
  }

  else
  {
    v11 = v30[1];
  }

  if (v11)
  {
    do
    {
      *v10 = __toupper(*v10);
      v10 = (v10 + 1);
      v11 = v11 - 1;
    }

    while (v11);
    v6 = HIBYTE(v31);
    v8 = v30[0];
    v9 = v30[1];
  }

  if (v33 >= 0)
  {
    v12 = HIBYTE(v33);
  }

  else
  {
    v12 = v32[1];
  }

  if (v33 >= 0)
  {
    v13 = v32;
  }

  else
  {
    v13 = v32[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v14 = v6;
  }

  else
  {
    v14 = v9;
  }

  if ((v6 & 0x80u) != 0)
  {
    v7 = v8;
  }

  if (v12 == v14 && !memcmp(v13, v7, v12))
  {
LABEL_66:
    v15 = 0;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_67;
    }
  }

  else if (v14)
  {
    if (v12 >= v14)
    {
      v16 = v13 + v12;
      v17 = *v7;
      v18 = v13;
      do
      {
        if (v12 - v14 == -1)
        {
          break;
        }

        v19 = memchr(v18, v17, v12 - v14 + 1);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, v7, v14))
        {
          v15 = 1;
          if (v20 == v16 || v20 - v13 == -1)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v21 = *v7;
            if (v21 < 0 || (_DefaultRuneLocale.__runetype[v21] & 0x400) == 0)
            {
              goto LABEL_66;
            }

            v7 = (v7 + 1);
            if (!--v14)
            {
              goto LABEL_51;
            }
          }
        }

        v18 = (v20 + 1);
        v12 = v16 - (v20 + 1);
      }

      while (v12 >= v14);
    }

    v15 = 1;
    if ((v6 & 0x80) != 0)
    {
LABEL_67:
      operator delete(v30[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_68;
      }

      return v15;
    }
  }

  else
  {
LABEL_51:
    v22 = *(a2 + 23);
    if (v22 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (v22 >= 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = *(a2 + 8);
    }

    sub_7348D0(v23, v24, __p);
    v25 = __p[1];
    if (v29 >= 0)
    {
      v25 = v29;
    }

    v26 = HIBYTE(v31);
    LOBYTE(v6) = HIBYTE(v31);
    if (v31 < 0)
    {
      v26 = v30[1];
    }

    v15 = v25 != v26;
    if ((v29 & 0x8000000000000000) != 0)
    {
      operator delete(__p[0]);
      LOBYTE(v6) = HIBYTE(v31);
    }

LABEL_63:
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_67;
    }
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_68:
    operator delete(v32[0]);
  }

  return v15;
}

void sub_73487C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a20);
  _Unwind_Resume(a1);
}

char *sub_7348D0@<X0>(char *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = &result[a2];
  if (a2)
  {
    v5 = a2;
    v6 = result;
    while (1)
    {
      v7 = *v6;
      if ((v7 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v7] & 0x400) != 0)
      {
        break;
      }

      ++v6;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    if (v6 != v4)
    {
LABEL_7:
      v8 = v6;
      while (1)
      {
        v9 = *v8;
        if (v9 < 0 || (_DefaultRuneLocale.__runetype[v9] & 0x400) == 0)
        {
          break;
        }

        if (++v8 == v4)
        {
          goto LABEL_14;
        }
      }

      v4 = v8;
      v10 = v6 - result;
      v11 = a2 - (v6 - result);
      if (a2 < v6 - result)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = result;
    if (result != v4)
    {
      goto LABEL_7;
    }
  }

LABEL_13:
  v6 = &result[a2];
LABEL_14:
  v10 = v6 - result;
  v11 = a2 - (v6 - result);
  if (a2 < v6 - result)
  {
LABEL_25:
    sub_49EC("string_view::substr");
  }

LABEL_15:
  v12 = v4 - v6;
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v13;
  if (v13)
  {
    result = memmove(a3, &result[v10], v13);
    *(a3 + v13) = 0;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

BOOL sub_734A38(uint64_t a1)
{
  v1 = *(a1 + 55);
  if (v1 < 0)
  {
    return *(a1 + 40) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

BOOL sub_734A5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 8);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (memcmp(v7, v9, v3))
  {
    return 0;
  }

  v11 = *(a1 + 55);
  if (v11 < 0)
  {
    v12 = a2;
    if (!*(a1 + 40))
    {
      return 1;
    }
  }

  else
  {
    v12 = a2;
    if (!*(a1 + 55))
    {
      return 1;
    }
  }

  v13 = *(v12 + 55);
  if (v13 >= 0)
  {
    v14 = *(v12 + 55);
  }

  else
  {
    v14 = *(v12 + 40);
  }

  if (!v14)
  {
    return 1;
  }

  v15 = *(a1 + 40);
  if (v11 >= 0)
  {
    v15 = *(a1 + 55);
  }

  if (v15 != v14)
  {
    return 0;
  }

  if (v11 >= 0)
  {
    v16 = (a1 + 32);
  }

  else
  {
    v16 = *(a1 + 32);
  }

  v19 = *(v12 + 32);
  v18 = (v12 + 32);
  v17 = v19;
  if (v13 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v14) == 0;
}

uint64_t sub_734B90(uint64_t result, __int128 *a2, int a3, int a4)
{
  if (*(a2 + 23) < 0)
  {
    v7 = result;
    sub_325C(result, *a2, *(a2 + 1));
    result = v7;
    *(v7 + 24) = a3;
    *(v7 + 28) = a4;
  }

  else
  {
    v6 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v6;
    *(result + 24) = a3;
    *(result + 28) = a4;
  }

  return result;
}

void *sub_734C00(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x100000000;
  return result;
}

BOOL sub_734C10(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    return *(a1 + 8) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

void *sub_734C34(void *a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    a1[2] = *(a2 + 2);
    *a1 = v3;
  }

  a1[3] = sub_12331FC();
  a1[4] = 0;
  *(a1 + 14) = 0;
  *(a1 + 5) = 0u;
  *(a1 + 60) = 0xFFFFFFFF00000001;
  a1[17] = 0;
  a1[18] = 0;
  a1[16] = 0;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 30) = 0;
  return a1;
}

void sub_734CC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_734CE0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_12331FC();
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 60) = 0xFFFFFFFF00000001;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return a1;
}

void sub_734D4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_734D68(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return sub_7345F0(a1 + 64, a1);
    }
  }

  else if (*(a1 + 23))
  {
    return sub_7345F0(a1 + 64, a1);
  }

  return 0;
}

BOOL sub_734D94(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  result = sub_1232EBC((v7 + 3), (v6 + 3));
  if (result)
  {
    result = sub_734A5C((v7 + 8), (v6 + 8));
    if (result)
    {
      return *(v7 + 30) == *(v6 + 30);
    }
  }

  return result;
}

BOOL sub_734E58(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) || !sub_1232EBC((v7 + 3), (v6 + 3)) || !sub_734A5C((v7 + 8), (v6 + 8)) || *(v7 + 30) != *(v6 + 30);
}

void *sub_734F1C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = sub_12331FC();
  a1[4] = 0x7FFFFFFFFFFFFFFFLL;
  return a1;
}

void sub_734F54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_734F70(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return sub_1232EAC((a1 + 24));
    }
  }

  else if (*(a1 + 23))
  {
    return sub_1232EAC((a1 + 24));
  }

  return 0;
}

BOOL sub_734F94(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  result = sub_1232EBC((v7 + 3), (v6 + 3));
  if (result)
  {
    return v7[4] == v6[4];
  }

  return result;
}

void sub_735048(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v5 = a5;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 == v7)
  {
    goto LABEL_41;
  }

  v8 = *a2;
  do
  {
    if (*v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8[114] == 2;
    }

    v10 = v9;
    v8 += 144;
  }

  while (v10 == 1 && v8 != v7);
  v12 = 0;
  v13 = *a2;
  do
  {
    if (v6[114] == 2)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (*v6)
    {
      if (((*v6 == 1) & v14) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (!v14)
    {
      goto LABEL_17;
    }

    if (v12 < v27)
    {
      *v12 = v13;
      v12 += 8;
    }

    else
    {
      v15 = v25;
      v16 = v12 - v25;
      v17 = (v12 - v25) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_1794();
      }

      v19 = v27 - v25;
      if ((v27 - v25) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v21 = (v12 - v25) >> 3;
      v22 = (8 * v17);
      v23 = (8 * v17 - 8 * v21);
      *v22 = v13;
      v12 = (v22 + 1);
      memcpy(v23, v15, v16);
      v25 = v23;
      v27 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    v26 = v12;
LABEL_17:
    v6 += 144;
    v13 += 144;
  }

  while (v6 != v7);
  if (v25 != v12)
  {
    operator new();
  }

  v5 = a5;
LABEL_41:
  sub_734CE0(v5);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_7358D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_3E5388(a12);
  if (v32)
  {
    operator delete(v32);
    v35 = *(v33 - 112);
    if (!v35)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v35 = *(v33 - 112);
    if (!v35)
    {
      goto LABEL_3;
    }
  }

  *(v33 - 104) = v35;
  operator delete(v35);
  _Unwind_Resume(a1);
}

void sub_735990(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a5;
  LOBYTE(v33[0]) = 0;
  v39 = 0;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_28;
  }

  do
  {
    v11 = *(v10 + 48);
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        if (sub_7365DC(a1, v10 + 24) == *(a4 + 32) && (v39 != 1 || *(v10 + 52) < v38))
        {
          sub_7367B0(v33, v10);
        }

        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (v11 - 2 < 2)
    {
      goto LABEL_11;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        goto LABEL_4;
      }

LABEL_11:
      v13 = *(a4 + 40);
      v12 = *(a4 + 48);
      v14 = v12 - v13;
      if (v12 != v13)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    v16 = *(a4 + 40);
    v15 = *(a4 + 48);
    v14 = v15 - v16;
    if (v15 != v16)
    {
LABEL_12:
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

LABEL_4:
    v10 += 56;
  }

  while (v10 != v9);
  v8 = a5;
  if (v39)
  {
    v17 = HIBYTE(v34);
    if (v34 < 0)
    {
      v17 = v33[1];
    }

    if (v17)
    {
      sub_734C00(a5);
      if (v33 != a5)
      {
        if (*(a5 + 23) < 0)
        {
          if (v34 >= 0)
          {
            v25 = v33;
          }

          else
          {
            v25 = v33[0];
          }

          if (v34 >= 0)
          {
            v26 = HIBYTE(v34);
          }

          else
          {
            v26 = v33[1];
          }

          sub_13B38(a5, v25, v26);
        }

        else if (v34 < 0)
        {
          sub_13A68(a5, v33[0], v33[1]);
        }

        else
        {
          *a5 = *v33;
          *(a5 + 16) = v34;
        }
      }

      *(a5 + 24) = sub_73696C(&__p);
      if (v37 > 5uLL)
      {
        *(a5 + 28) = 2;
      }

      else
      {
        *(a5 + 28) = dword_229ED80[v37];
      }

      goto LABEL_41;
    }

LABEL_40:
    sub_734B90(v8, a3, 0, 1);
    goto LABEL_41;
  }

LABEL_28:
  if (*(a1 + 24) != 1)
  {
    goto LABEL_40;
  }

  v19 = *a2;
  v18 = a2[1];
  v20 = *a2 + 56;
  if (*a2 != v18 && v20 != v18)
  {
    do
    {
      if (*(v20 + 52) < *(v19 + 52))
      {
        v19 = v20;
      }

      v20 += 56;
    }

    while (v20 != v18);
  }

  if (v19 == v18)
  {
    goto LABEL_40;
  }

  v22 = *(a4 + 32) - 1;
  if (v22 < 0x2A && ((0x27EFFDFFFBFuLL >> v22) & 1) != 0)
  {
    v23 = dword_229ECD8[v22];
    v24 = (v31 + 3);
    v32 = 3;
    LOWORD(v31[0]) = v23;
    BYTE2(v31[0]) = BYTE2(v23);
  }

  else
  {
    v32 = 0;
    v24 = v31;
  }

  *v24 = 0;
  sub_734C00(v8);
  sub_74AA44(v19, (v19 + 24), v31, &v29);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v29;
  *(v8 + 16) = v30;
  *(v8 + 24) = sub_73696C((v19 + 24));
  *(v8 + 28) = 2;
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

LABEL_41:
  if (v39 == 1)
  {
    if ((v36 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        return;
      }

LABEL_46:
      operator delete(v33[0]);
      return;
    }

    operator delete(__p);
    if (SHIBYTE(v34) < 0)
    {
      goto LABEL_46;
    }
  }
}

void sub_735D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  if (a19 < 0)
  {
    operator delete(__p);
    sub_736B14(&a20);
    _Unwind_Resume(a1);
  }

  sub_736B14(&a20);
  _Unwind_Resume(a1);
}

double sub_735DBC@<D0>(uint64_t a1@<X0>, unsigned __int8 ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_13:
    sub_734C00(__p);
    HIDWORD(v41) = 1;
    v15 = *a2;
    v16 = a2[1];
    if (*a2 != v16)
    {
      while (1)
      {
        v17 = *v15;
        v42 = sub_12330DC(0x29u);
        if (sub_1232EBC(v17 + 56, &v42))
        {
          break;
        }

        if (++v15 == v16)
        {
          v15 = v16;
          break;
        }
      }

      v18 = v15;
      v15 = *a2;
      v16 = a2[1];
      if (v18 != v16)
      {
        if (v15 != v16)
        {
          while (1)
          {
            v19 = *v15;
            v42 = sub_12330DC(0x2Bu);
            if (sub_1232EBC(v19 + 56, &v42))
            {
              break;
            }

            if (++v15 == v16)
            {
              v15 = v16;
              break;
            }
          }

          v16 = a2[1];
        }

        if (v15 != v16)
        {
          v20 = *v15;
          v21 = (*v15 + 8);
          if (__p == v21)
          {
            goto LABEL_80;
          }

          v22 = v20[31];
          if ((SHIBYTE(v40) & 0x80000000) == 0)
          {
            if ((v20[31] & 0x80) != 0)
            {
              sub_13A68(__p, *(v20 + 1), *(v20 + 2));
            }

            else
            {
              v23 = *v21;
              v40 = *(*v15 + 24);
              *__p = v23;
            }

            goto LABEL_80;
          }

          if (v22 >= 0)
          {
            v34 = (*v15 + 8);
          }

          else
          {
            v34 = *(v20 + 1);
          }

          if (v22 >= 0)
          {
            v35 = v20[31];
          }

          else
          {
            v35 = *(v20 + 2);
          }

          goto LABEL_77;
        }

        v15 = *a2;
      }
    }

    v42 = sub_738680(v15, v16, a3 + 32);
    v24 = sub_1232EB4(&v42);
    v25 = *a2;
    v26 = a2[1];
    if (!v24)
    {
      if (v25 != v26)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    if (v25 != v26)
    {
      while (!sub_1232EBC(*v25 + 56, &v42))
      {
        if (++v25 == v26)
        {
          v25 = v26;
          break;
        }
      }

      v26 = a2[1];
    }

    if (v25 != v26)
    {
      v29 = *v25;
      LODWORD(v41) = sub_1232E98((*v25 + 56));
      if (__p != (v29 + 8))
      {
        v30 = v29[31];
        if (SHIBYTE(v40) < 0)
        {
          if (v30 >= 0)
          {
            v36 = v29 + 8;
          }

          else
          {
            v36 = *(v29 + 1);
          }

          if (v30 >= 0)
          {
            v37 = v29[31];
          }

          else
          {
            v37 = *(v29 + 2);
          }

          sub_13B38(__p, v36, v37);
        }

        else if ((v29[31] & 0x80) != 0)
        {
          sub_13A68(__p, *(v29 + 1), *(v29 + 2));
        }

        else
        {
          v31 = *(v29 + 8);
          v40 = *(v29 + 3);
          *__p = v31;
        }
      }

      goto LABEL_81;
    }

    v25 = *a2;
    if (*a2 == v26)
    {
LABEL_38:
      sub_734C00(a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      return result;
    }

LABEL_33:
    while (1)
    {
      v20 = *v25;
      v27 = sub_6DE68((*v25 + 56));
      if (*v20 < 2u && v27)
      {
        break;
      }

      if (++v25 == v26)
      {
        goto LABEL_38;
      }
    }

    if (__p == (v20 + 8))
    {
LABEL_80:
      LODWORD(v41) = sub_1232E98(v20 + 7);
LABEL_81:
      result = *__p;
      *a4 = *__p;
      v38 = v41;
      *(a4 + 16) = v40;
      *(a4 + 24) = v38;
      return result;
    }

    v32 = v20[31];
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      if ((v20[31] & 0x80) != 0)
      {
        sub_13A68(__p, *(v20 + 1), *(v20 + 2));
      }

      else
      {
        v33 = *(v20 + 8);
        v40 = *(v20 + 3);
        *__p = v33;
      }

      goto LABEL_80;
    }

    if (v32 >= 0)
    {
      v34 = v20 + 8;
    }

    else
    {
      v34 = *(v20 + 1);
    }

    if (v32 >= 0)
    {
      v35 = v20[31];
    }

    else
    {
      v35 = *(v20 + 2);
    }

LABEL_77:
    sub_13B38(__p, v34, v35);
    goto LABEL_80;
  }

  while (1)
  {
    v10 = *v7;
    if (**v7 <= 1u)
    {
      __p[0] = 0;
      __p[1] = 0;
      v40 = 0;
      sub_735990(a1, (v10 + 64), __p, a3, a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = sub_734C10(a4);
      v13 = v11;
      v14 = *(a4 + 23) >= 0 || v11;
      if ((v14 & 1) == 0)
      {
        operator delete(*a4);
      }

      if (v13)
      {
        return result;
      }
    }

    if (++v7 == v8)
    {
      goto LABEL_13;
    }
  }
}

void sub_736160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7361B0(uint64_t **a1@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != a1[1])
  {
    operator new();
  }

  sub_734CE0(a3);
}

void sub_736574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E5388(a11);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7365DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 >= 0x1F)
  {
    v5 = 31;
  }

  else
  {
    v5 = v3;
  }

  if (v3)
  {
    switch(v3)
    {
      case 1uLL:
        v6 = *v4;
        v7 = 1;
        break;
      case 2uLL:
        v6 = *v4;
        v7 = 2;
        break;
      case 3uLL:
        v6 = *v4 | (v4[2] << 16);
        v7 = 3;
        break;
      default:
        sub_852E4(v4, v5, &v18);
        goto LABEL_18;
    }

    *&v18 = v6;
    *(&v18 + 1) = v7;
    v19 = 0u;
    v20 = 0u;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
  }

LABEL_18:
  v11 = sub_1232F28(&v18, 3);
  v30 = xmmword_229EC98;
  v31 = unk_229ECA8;
  *v32 = xmmword_229ECB8;
  *&v32[12] = *(&xmmword_229ECB8 + 12);
  v26 = xmmword_229EC58;
  v27 = unk_229EC68;
  v28 = xmmword_229EC78;
  v29 = unk_229EC88;
  v22 = xmmword_229EC18;
  v23 = unk_229EC28;
  v24 = xmmword_229EC38;
  v25 = unk_229EC48;
  v18 = xmmword_229EBD8;
  v19 = unk_229EBE8;
  v20 = xmmword_229EBF8;
  v21 = unk_229EC08;
  v8 = sub_6EAFC();
  v15[0] = &v11;
  v15[1] = v12;
  v16 = 2;
  v17 = 1;
  v12[0] = &v18;
  v12[1] = &v33;
  v13 = 4;
  v14 = 63;
  v9 = (*(*v8 + 40))(v8, v15, v12);
  if (v9 > 0x3E)
  {
    return sub_73696C(a2);
  }

  result = *(&v18 + (v9 & 0x3F));
  if (!result)
  {
    return sub_73696C(a2);
  }

  return result;
}

uint64_t sub_7367B0(uint64_t a1, char *a2)
{
  v2 = a2;
  if (*(a1 + 56) != 1)
  {
    if (a2[23] < 0)
    {
      sub_325C(a1, *a2, *(a2 + 1));
      if ((v2[47] & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v7;
      if ((a2[47] & 0x80000000) == 0)
      {
LABEL_9:
        v8 = *(v2 + 24);
        *(a1 + 40) = *(v2 + 5);
        *(a1 + 24) = v8;
LABEL_12:
        *(a1 + 48) = *(v2 + 6);
        *(a1 + 56) = 1;
        return a1;
      }
    }

    sub_325C((a1 + 24), *(v2 + 3), *(v2 + 4));
    goto LABEL_12;
  }

  if (a1 == a2)
  {
    goto LABEL_19;
  }

  if (*(a1 + 23) < 0)
  {
    if (a2[23] >= 0)
    {
      v10 = a2[23];
    }

    else
    {
      a2 = *a2;
      v10 = *(v2 + 1);
    }

    sub_13B38(a1, a2, v10);
    v5 = v2 + 24;
    v6 = v2[47];
    if (*(a1 + 47) < 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((a2[23] & 0x80) == 0)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    v5 = a2 + 24;
    v6 = a2[47];
    if (*(a1 + 47) < 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  sub_13A68(a1, *a2, *(a2 + 1));
  v5 = v2 + 24;
  v6 = v2[47];
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
LABEL_17:
    if ((v6 & 0x80) != 0)
    {
      sub_13A68((a1 + 24), *(v2 + 3), *(v2 + 4));
      *(a1 + 48) = *(v2 + 6);
      return a1;
    }

    v11 = *v5;
    *(a1 + 40) = *(v5 + 2);
    *(a1 + 24) = v11;
LABEL_19:
    *(a1 + 48) = *(v2 + 6);
    return a1;
  }

LABEL_21:
  if ((v6 & 0x80u) == 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = *(v2 + 3);
  }

  if ((v6 & 0x80u) == 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = *(v2 + 4);
  }

  sub_13B38((a1 + 24), v12, v13);
  *(a1 + 48) = *(v2 + 6);
  return a1;
}

void sub_736950(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_73696C(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = a1[23];
  v3 = *(a1 + 1);
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  if (v2 >= 0x1F)
  {
    v4 = 31;
  }

  else
  {
    v4 = v2;
  }

  switch(v2)
  {
    case 0uLL:
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      goto LABEL_15;
    case 1uLL:
      v5 = *a1;
      v6 = 1;
LABEL_14:
      *&v14 = v5;
      *(&v14 + 1) = v6;
      v15 = 0u;
      v16 = 0u;
      goto LABEL_15;
    case 2uLL:
      v5 = *a1;
      v6 = 2;
      goto LABEL_14;
    case 3uLL:
      v5 = *a1 | (a1[2] << 16);
      v6 = 3;
      goto LABEL_14;
  }

  sub_852E4(a1, v4, &v14);
LABEL_15:
  v13 = sub_1232F28(&v14, 3);
  result = sub_1232E98(&v13);
  if (result)
  {
    return result;
  }

  v8 = v1[23];
  if ((v8 & 0x80u) == 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = *v1;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v1 + 1);
  }

  if (v8 >= 0x1F)
  {
    v10 = 31;
  }

  else
  {
    v10 = v8;
  }

  if (v8)
  {
    switch(v8)
    {
      case 1uLL:
        v11 = *v9;
        v12 = 1;
        break;
      case 2uLL:
        v11 = *v9;
        v12 = 2;
        break;
      case 3uLL:
        v11 = *v9 | (v9[2] << 16);
        v12 = 3;
        break;
      default:
        sub_852E4(v9, v10, &v14);
        goto LABEL_34;
    }

    *&v14 = v11;
    *(&v14 + 1) = v12;
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

LABEL_34:
  v13 = sub_1232F28(&v14, 0);
  return sub_1232E98(&v13);
}

uint64_t sub_736B14(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 47) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 24));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

void sub_736B84(unsigned __int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X8>)
{
  v4 = a2;
  v5 = a4;
  v6 = *a2;
  v23 = a2[1];
  if (*a2 != v23)
  {
    do
    {
      if (*v6 != *(v6 + 8))
      {
        sub_845EC(*v6);
        operator new();
      }

      v6 += 128;
    }

    while (v6 != v23);
    v4 = a2;
    v5 = a4;
  }

  v7 = sub_6E9A8();
  sub_852E4("en_US", 5, v30);
  v8 = sub_1232F28(v30, 0);
  v27[0] = a3;
  v27[1] = a3 + 4;
  v28 = 4;
  v29 = 1;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 2;
  v26 = 0;
  v9 = (*(*v7 + 40))(v7, v27, v24);
  if (v9 < 0)
  {
    v11 = a1;
    v10 = a3;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v13 = *v4;
    v12 = v4[1];
    if (*v4 != v12)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v11 = a1;
  v10 = a3;
  if (v9 < 0)
  {
    v8 = *(8 * (v9 & 0x7FFFFFFF));
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v13 = *v4;
  v12 = v4[1];
  if (*v4 == v12)
  {
LABEL_33:
    v17 = *v4;
    v16 = v4[1];
    while (1)
    {
      if (v17 == v16)
      {
        return;
      }

      if (*v17 != *(v17 + 8))
      {
        break;
      }

LABEL_34:
      v17 += 128;
    }

    v18 = sub_845EC(*v17);
    sub_737068(v11, v17, v10, v18, v30);
    if (sub_734C10(v30))
    {
      v19 = v5[1];
      if (v19 >= v5[2])
      {
        v20 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v20 = (v19 + 152);
        v5[1] = (v19 + 152);
      }

      v5[1] = v20;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_44:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_50;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_45:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_51;
    }

LABEL_50:
    operator delete(v34);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_46:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_52:
      operator delete(v30[0]);
      goto LABEL_34;
    }

LABEL_51:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

  do
  {
LABEL_15:
    sub_737068(v11, v13, v10, v8, v30);
    if (sub_734C10(v30))
    {
      v14 = v5[1];
      if (v14 >= v5[2])
      {
        v15 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v15 = (v14 + 152);
      }

      v5[1] = v15;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_23:
      if (v33 < 0)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_28:
    operator delete(v34);
    if (v33 < 0)
    {
LABEL_29:
      operator delete(v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_24:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    operator delete(v30[0]);
LABEL_14:
    v13 += 16;
  }

  while (v13 != v12);
  if (*v5 == v5[1])
  {
    goto LABEL_33;
  }
}

void sub_736FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    v23 = a1;
    operator delete(v22);
    a1 = v23;
  }

  _Unwind_Resume(a1);
}

void sub_737068(unsigned __int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    while (1)
    {
      v51 = sub_845EC(v9);
      v47[0] = sub_1232F20(&v51);
      __p[0] = sub_1232F20(&v55);
      if (sub_1232EBC(v47, __p) || sub_846D0(v9))
      {
        break;
      }

      v9 += 48;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }
  }

  v11 = a2[1];
  sub_734CE0(a5);
  if (v9 != v11)
  {
    if (v9 + 24 != a5)
    {
      v12 = *(v9 + 47);
      if (*(a5 + 23) < 0)
      {
        if (v12 >= 0)
        {
          v14 = (v9 + 24);
        }

        else
        {
          v14 = *(v9 + 24);
        }

        if (v12 >= 0)
        {
          v15 = *(v9 + 47);
        }

        else
        {
          v15 = *(v9 + 32);
        }

        sub_13B38(a5, v14, v15);
      }

      else if ((*(v9 + 47) & 0x80) != 0)
      {
        sub_13A68(a5, *(v9 + 24), *(v9 + 32));
      }

      else
      {
        v13 = *(v9 + 24);
        *(a5 + 16) = *(v9 + 40);
        *a5 = v13;
      }
    }

    *(a5 + 24) = sub_845EC(v9);
    v16 = a2[3];
    v17 = a2[4];
    if (v16 != v17)
    {
      while (1)
      {
        v51 = sub_845EC(v16);
        v47[0] = sub_1232F20(&v51);
        __p[0] = sub_1232F20(&v55);
        if (sub_1232EBC(v47, __p) || sub_846D0(v16))
        {
          break;
        }

        v16 += 48;
        if (v16 == v17)
        {
          v16 = v17;
          break;
        }
      }
    }

    if (v16 == a2[4])
    {
      v19 = (a5 + 128);
      v18 = a5;
      v20 = *(a5 + 23);
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
LABEL_27:
        if ((v20 & 0x80) != 0)
        {
          sub_13A68(v19, *v18, *(v18 + 8));
        }

        else
        {
          v21 = *v18;
          v19[2] = *(v18 + 16);
          *v19 = v21;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v18 = (v16 + 24);
      v19 = (a5 + 128);
      if (a5 + 128 == v18)
      {
        goto LABEL_38;
      }

      v20 = *(v18 + 23);
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((v20 & 0x80u) == 0)
    {
      v22 = v18;
    }

    else
    {
      v22 = *v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *(v18 + 8);
    }

    sub_13B38(v19, v22, v23);
LABEL_38:
    if (*(a2 + 49))
    {
      if (*(a2 + 49) == 3)
      {
        goto LABEL_48;
      }

      v24 = *(a2 + 48);
      if (v24 == 5 || v24 == 8)
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v26 = 1;
    }

    *(a5 + 120) = v26;
LABEL_48:
    v27 = a2[8];
    v28 = a2[7];
    if (v28 == v27)
    {
      goto LABEL_93;
    }

    v29 = a2[7];
    while ((*(v29 + 32) & 1) == 0)
    {
      v29 += 40;
      if (v29 == v27)
      {
        goto LABEL_57;
      }
    }

    if (v29 == v27)
    {
LABEL_57:
      LODWORD(v51) = *v28;
      if (*(v28 + 31) < 0)
      {
        sub_325C(&v52, *(v28 + 8), *(v28 + 16));
      }

      else
      {
        v31 = *(v28 + 8);
        v53 = *(v28 + 24);
        v52 = v31;
      }

      goto LABEL_61;
    }

    LODWORD(v51) = *v29;
    if (*(v29 + 31) < 0)
    {
      sub_325C(&v52, *(v29 + 8), *(v29 + 16));
    }

    else
    {
      v30 = *(v29 + 8);
      v53 = *(v29 + 24);
      v52 = v30;
    }

    v28 = v29;
LABEL_61:
    v54 = *(v28 + 32);
    v46 = 0;
    LOBYTE(__p[0]) = 0;
    sub_73450C(v47, v51, &v52, __p);
    *(a5 + 64) = v47[0];
    if (*(a5 + 95) < 0)
    {
      operator delete(*(a5 + 72));
    }

    *(a5 + 72) = *&v47[1];
    *(a5 + 88) = v48;
    HIBYTE(v48) = 0;
    LOBYTE(v47[1]) = 0;
    v32 = (a5 + 96);
    if ((*(a5 + 119) & 0x80000000) == 0)
    {
      *v32 = v49;
      *(a5 + 112) = v50;
      HIBYTE(v50) = 0;
      LOBYTE(v49) = 0;
      if (v46 < 0)
      {
        goto LABEL_65;
      }

LABEL_69:
      v33 = a2[13];
      v34 = a2[14];
      if (v33 != v34)
      {
        goto LABEL_70;
      }

      goto LABEL_74;
    }

    operator delete(*v32);
    v35 = SHIBYTE(v48);
    *v32 = v49;
    *(a5 + 112) = v50;
    HIBYTE(v50) = 0;
    LOBYTE(v49) = 0;
    if (v35 < 0)
    {
      operator delete(v47[1]);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_65:
    operator delete(__p[0]);
    v33 = a2[13];
    v34 = a2[14];
    if (v33 != v34)
    {
LABEL_70:
      while (1)
      {
        __p[0] = sub_845EC(v33);
        v47[0] = sub_1232F20(__p);
        v56 = sub_1232F20(&v55);
        if (sub_1232EBC(v47, &v56) || sub_846D0(v33))
        {
          break;
        }

        v33 += 48;
        if (v33 == v34)
        {
          v33 = v34;
          break;
        }
      }
    }

LABEL_74:
    if (v33 == a2[14])
    {
      HIBYTE(v47[2]) = 0;
      LOBYTE(v47[0]) = 0;
    }

    else if (*(v33 + 47) < 0)
    {
      sub_325C(v47, *(v33 + 24), *(v33 + 32));
    }

    else
    {
      *v47 = *(v33 + 24);
      v47[2] = *(v33 + 40);
    }

    if (v32 != v47)
    {
      if (*(a5 + 119) < 0)
      {
        if (SHIBYTE(v47[2]) >= 0)
        {
          v36 = v47;
        }

        else
        {
          v36 = v47[0];
        }

        if (SHIBYTE(v47[2]) >= 0)
        {
          v37 = HIBYTE(v47[2]);
        }

        else
        {
          v37 = v47[1];
        }

        sub_13B38((a5 + 96), v36, v37);
      }

      else if ((HIBYTE(v47[2]) & 0x80) != 0)
      {
        sub_13A68((a5 + 96), v47[0], v47[1]);
      }

      else
      {
        *v32 = *v47;
        *(a5 + 112) = v47[2];
      }
    }

    if (SHIBYTE(v47[2]) < 0)
    {
      operator delete(v47[0]);
      if ((SHIBYTE(v53) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    else if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v52);
LABEL_93:
    sub_735990(a1, a2 + 10, v19, a3, v47);
    if (*(a5 + 55) < 0)
    {
      operator delete(*(a5 + 32));
    }

    *(a5 + 32) = *v47;
    v38 = v48;
    *(a5 + 48) = v47[2];
    *(a5 + 56) = v38;
    memset(v47, 0, sizeof(v47));
    v39 = *(a1 + 23);
    if ((v39 & 0x80) != 0)
    {
      if (*(a1 + 1) != 3)
      {
        return;
      }

      v40 = *a1;
    }

    else
    {
      v40 = a1;
      if (v39 != 3)
      {
LABEL_105:
        if (v39 != 3)
        {
          return;
        }

LABEL_112:
        if (*a1 == 18499 && *(a1 + 2) == 78 && *(a3 + 32) == 5)
        {
          *(a5 + 60) = 0;
        }

        return;
      }
    }

    v41 = *v40;
    v42 = *(v40 + 2);
    if (v41 == 20554 && v42 == 78)
    {
      sub_737720(a1, a5);
      v39 = *(a1 + 23);
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_105;
      }
    }

    else if ((v39 & 0x80) == 0)
    {
      goto LABEL_105;
    }

    if (*(a1 + 1) != 3)
    {
      return;
    }

    a1 = *a1;
    goto LABEL_112;
  }
}

void sub_737638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    sub_3E5388(v32);
    _Unwind_Resume(a1);
  }

  sub_3E5388(v32);
  _Unwind_Resume(a1);
}

void sub_737720(uint64_t *a1, void **a2)
{
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    if (a1[1] != 3)
    {
      return;
    }

    a1 = *a1;
  }

  else if (v3 != 3)
  {
    return;
  }

  v4 = *a1 == 20554 && *(a1 + 2) == 78;
  if (v4 && sub_7345C4((a2 + 8)))
  {
    v5 = *(a2 + 23);
    v6 = v5;
    v7 = *a2;
    if (v5 < 0)
    {
      v5 = a2[1];
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      do
      {
        v8 = *v7;
        if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
        {
          return;
        }

        v7 = (v7 + 1);
      }

      while (--v5);
    }

    __src = 0uLL;
    v47 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    memset(&__dst, 0, sizeof(__dst));
    v39 = 0;
    v40 = 0;
    v9 = *(a2 + 16);
    v41 = 0;
    if (v9 == 100000)
    {
      HIBYTE(v47) = 15;
      *&__src = *"都道府県道";
      *(&__src + 7) = *"\xBA\x9C県道";
      HIBYTE(__src) = 0;
      sub_195A048(&__dst, "トドウフケンドウ", 0x18uLL);
      if (SHIBYTE(v45) < 0)
      {
        v44 = 6;
        v12 = v43;
      }

      else
      {
        HIBYTE(v45) = 6;
        v12 = &v43;
      }

      v12[2] = -25929;
      *v12 = -407400475;
      *(v12 + 6) = 0;
      if (SHIBYTE(v41) < 0)
      {
        v40 = 12;
        v13 = v39;
      }

      else
      {
        HIBYTE(v41) = 12;
        v13 = &v39;
      }

      v10 = 0;
      v13[2] = -1283202117;
      *v13 = *"ゴウセン";
      *(v13 + 12) = 0;
      v6 = *(a2 + 23);
      v11 = 15;
    }

    else if (v9 == 100006)
    {
      v10 = 0;
      v11 = 6;
      HIBYTE(v47) = 6;
      LODWORD(__src) = -373449755;
      WORD2(__src) = -27775;
      BYTE6(__src) = 0;
      LODWORD(__dst.__r_.__value_.__r.__words[1]) = -1501371511;
      __dst.__r_.__value_.__r.__words[0] = *"コクドウ";
      LODWORD(v43) = -407400475;
      WORD2(v43) = -25929;
      *(&__dst.__r_.__value_.__s + 23) = 12;
      __dst.__r_.__value_.__s.__data_[12] = 0;
      HIBYTE(v45) = 6;
      BYTE6(v43) = 0;
      HIBYTE(v41) = 12;
      LODWORD(v40) = -1283202117;
      v39 = *"ゴウセン";
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    if (v6 < 0)
    {
      sub_325C(v37, *a2, a2[1]);
    }

    else
    {
      *v37 = *a2;
      v38 = a2[2];
    }

    if (!v10)
    {
      goto LABEL_37;
    }

    v14 = HIBYTE(v45);
    if (v45 < 0)
    {
      v14 = v44;
    }

    if (v14)
    {
LABEL_37:
      if (SHIBYTE(v38) >= 0)
      {
        v15 = HIBYTE(v38);
      }

      else
      {
        v15 = v37[1];
      }

      if (v15 + v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 + v11 > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v15 + v11;
      if ((v10 & 1) == 0)
      {
        memcpy(&v48, &__src, v11);
      }

      v16 = &v48 + v11;
      if (v15)
      {
        if (SHIBYTE(v38) >= 0)
        {
          v17 = v37;
        }

        else
        {
          v17 = v37[0];
        }

        memmove(v16, v17, v15);
      }

      v16[v15] = 0;
      if (v45 >= 0)
      {
        v18 = &v43;
      }

      else
      {
        v18 = v43;
      }

      if (v45 >= 0)
      {
        v19 = HIBYTE(v45);
      }

      else
      {
        v19 = v44;
      }

      v20 = std::string::append(&v48, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v36 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (__p != a2)
      {
        if (*(a2 + 23) < 0)
        {
          if (SHIBYTE(v36) >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (SHIBYTE(v36) >= 0)
          {
            v23 = HIBYTE(v36);
          }

          else
          {
            v23 = __p[1];
          }

          sub_13B38(a2, v22, v23);
        }

        else if ((HIBYTE(v36) & 0x80) != 0)
        {
          sub_13A68(a2, __p[0], __p[1]);
        }

        else
        {
          *a2 = *__p;
          a2[2] = v36;
        }
      }

      sub_852E4("ja_JP", 5, &v48);
      a2[3] = sub_1232F28(&v48, 0);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_79;
    }

    v25 = HIBYTE(v41);
    if (v41 < 0)
    {
      v25 = v40;
    }

    if (v25)
    {
LABEL_79:
      if (SHIBYTE(v38) >= 0)
      {
        v26 = HIBYTE(v38);
      }

      else
      {
        v26 = v37[1];
      }

      if (v26 + size > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v26 + size > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v26 + size;
      if (size)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(&v48, p_dst, size);
      }

      v28 = &v48 + size;
      if (v26)
      {
        if (SHIBYTE(v38) >= 0)
        {
          v29 = v37;
        }

        else
        {
          v29 = v37[0];
        }

        memmove(v28, v29, v26);
      }

      v28[v26] = 0;
      if (v41 >= 0)
      {
        v30 = &v39;
      }

      else
      {
        v30 = v39;
      }

      if (v41 >= 0)
      {
        v31 = HIBYTE(v41);
      }

      else
      {
        v31 = v40;
      }

      v32 = std::string::append(&v48, v30, v31);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v36 = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      sub_734B90(&v48, __p, 20, 1);
      if (*(a2 + 55) < 0)
      {
        operator delete(a2[4]);
      }

      *(a2 + 2) = *&v48.__r_.__value_.__l.__data_;
      v34 = v49;
      a2[6] = v48.__r_.__value_.__r.__words[2];
      a2[7] = v34;
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
      if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
LABEL_109:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_114;
      }
    }

    else if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    operator delete(v39);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_110:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_115;
    }

LABEL_114:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      return;
    }

LABEL_115:
    operator delete(v43);
  }
}

void sub_737DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if (a39 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  operator delete(a28);
  if (a39 < 0)
  {
LABEL_8:
    operator delete(a34);
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void sub_737E50(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIBYTE(v17) = 0;
  LOBYTE(__dst[0]) = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    *a3 = *__dst;
    *(a3 + 16) = v17;
  }

  else
  {
    if (__dst != (v4 + 24))
    {
      if (*(v4 + 47) < 0)
      {
        sub_13A68(__dst, *(v4 + 3), *(v4 + 4));
      }

      else
      {
        *__dst = *(v4 + 24);
        v17 = *(v4 + 5);
      }
    }

    sub_738070(a1, &__p);
    v11 = 50331648;
    v12 = 0;
    v13 = -4294967282;
    v7 = sub_6E9A8();
    v21[0] = a2;
    v21[1] = a2 + 4;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v15;
    v19 = 2;
    v20 = (v15 - __p) >> 3;
    v8 = (*(*v7 + 48))(v7, v21, v18, &v11);
    if (v8 >> 31)
    {
      *a3 = *__dst;
      *(a3 + 16) = v17;
      __dst[1] = 0;
      v17 = 0;
      __dst[0] = 0;
    }

    else
    {
      v9 = *a1;
      if (v8 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v9 += 3 * v8;
      }

      if (*(v9 + 47) < 0)
      {
        sub_325C(a3, *(v9 + 3), *(v9 + 4));
      }

      else
      {
        v10 = *(v9 + 24);
        *(a3 + 16) = *(v9 + 5);
        *a3 = v10;
      }
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_73801C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_738070(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v2 - *a1)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_73836C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v14[2] = v16;
  *v14 = v15;
  if (!v15)
  {
    _Unwind_Resume(exception_object);
  }

  v14[1] = v15;
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_7383C8(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_734F1C(a3);
  if (*a1 != a1[1])
  {
    sub_7385A4(a1, &__p);
    v13 = 50331648;
    v14 = 0;
    v15 = -4294967282;
    v6 = sub_6EAFC();
    v21[0] = a2 + 32;
    v21[1] = a2 + 36;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v17;
    v19 = 2;
    v20 = (v17 - __p) >> 3;
    v7 = (*(*v6 + 48))(v6, v21, v18, &v13);
    if (!(v7 >> 31))
    {
      v8 = *a1;
      if (v7 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v8 += 48 * v7;
      }

      *(a3 + 24) = sub_845EC(v8);
      if (v8 + 24 != a3)
      {
        v9 = *(v8 + 47);
        if (*(a3 + 23) < 0)
        {
          if (v9 >= 0)
          {
            v11 = (v8 + 24);
          }

          else
          {
            v11 = *(v8 + 24);
          }

          if (v9 >= 0)
          {
            v12 = *(v8 + 47);
          }

          else
          {
            v12 = *(v8 + 32);
          }

          sub_13B38(a3, v11, v12);
        }

        else if ((*(v8 + 47) & 0x80) != 0)
        {
          sub_13A68(a3, *(v8 + 24), *(v8 + 32));
        }

        else
        {
          v10 = *(v8 + 24);
          *(a3 + 16) = *(v8 + 40);
          *a3 = v10;
        }
      }
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

void sub_738550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v13 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v13 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v13);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_7385A4@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_738664(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_738680(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    operator new();
  }

  return sub_12331FC();
}

void sub_7388E0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2732FA0);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_738918(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v5 = a5;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 == v7)
  {
    goto LABEL_41;
  }

  v8 = *a2;
  do
  {
    if (*v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8[114] == 2;
    }

    v10 = v9;
    v8 += 144;
  }

  while (v10 == 1 && v8 != v7);
  v12 = 0;
  v13 = *a2;
  do
  {
    if (v6[114] == 2)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (*v6)
    {
      if (((*v6 == 1) & v14) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (!v14)
    {
      goto LABEL_17;
    }

    if (v12 < v27)
    {
      *v12 = v13;
      v12 += 8;
    }

    else
    {
      v15 = v25;
      v16 = v12 - v25;
      v17 = (v12 - v25) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_1794();
      }

      v19 = v27 - v25;
      if ((v27 - v25) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v21 = (v12 - v25) >> 3;
      v22 = (8 * v17);
      v23 = (8 * v17 - 8 * v21);
      *v22 = v13;
      v12 = (v22 + 1);
      memcpy(v23, v15, v16);
      v25 = v23;
      v27 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    v26 = v12;
LABEL_17:
    v6 += 144;
    v13 += 144;
  }

  while (v6 != v7);
  if (v25 != v12)
  {
    operator new();
  }

  v5 = a5;
LABEL_41:
  sub_734CE0(v5);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_7390F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_3E5388(a14);
  if (v34)
  {
    operator delete(v34);
    v37 = *(v35 - 112);
    if (!v37)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v37 = *(v35 - 112);
    if (!v37)
    {
      goto LABEL_3;
    }
  }

  *(v35 - 104) = v37;
  operator delete(v37);
  _Unwind_Resume(a1);
}

void sub_7391AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a5;
  LOBYTE(v33[0]) = 0;
  v39 = 0;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_28;
  }

  do
  {
    v11 = *(v10 + 48);
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        if (sub_739F40(a1, v10 + 24) == *(a4 + 32) && (v39 != 1 || *(v10 + 52) < v38))
        {
          sub_7367B0(v33, v10);
        }

        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (v11 - 2 < 2)
    {
      goto LABEL_11;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        goto LABEL_4;
      }

LABEL_11:
      v13 = *(a4 + 40);
      v12 = *(a4 + 48);
      v14 = v12 - v13;
      if (v12 != v13)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    v16 = *(a4 + 40);
    v15 = *(a4 + 48);
    v14 = v15 - v16;
    if (v15 != v16)
    {
LABEL_12:
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

LABEL_4:
    v10 += 56;
  }

  while (v10 != v9);
  v8 = a5;
  if (v39)
  {
    v17 = HIBYTE(v34);
    if (v34 < 0)
    {
      v17 = v33[1];
    }

    if (v17)
    {
      sub_734C00(a5);
      if (v33 != a5)
      {
        if (*(a5 + 23) < 0)
        {
          if (v34 >= 0)
          {
            v25 = v33;
          }

          else
          {
            v25 = v33[0];
          }

          if (v34 >= 0)
          {
            v26 = HIBYTE(v34);
          }

          else
          {
            v26 = v33[1];
          }

          sub_13B38(a5, v25, v26);
        }

        else if (v34 < 0)
        {
          sub_13A68(a5, v33[0], v33[1]);
        }

        else
        {
          *a5 = *v33;
          *(a5 + 16) = v34;
        }
      }

      *(a5 + 24) = sub_73696C(&__p);
      if (v37 > 5uLL)
      {
        *(a5 + 28) = 2;
      }

      else
      {
        *(a5 + 28) = dword_229ED80[v37];
      }

      goto LABEL_41;
    }

LABEL_40:
    sub_734B90(v8, a3, 0, 1);
    goto LABEL_41;
  }

LABEL_28:
  if (*(a1 + 24) != 1)
  {
    goto LABEL_40;
  }

  v19 = *a2;
  v18 = a2[1];
  v20 = *a2 + 56;
  if (*a2 != v18 && v20 != v18)
  {
    do
    {
      if (*(v20 + 52) < *(v19 + 52))
      {
        v19 = v20;
      }

      v20 += 56;
    }

    while (v20 != v18);
  }

  if (v19 == v18)
  {
    goto LABEL_40;
  }

  v22 = *(a4 + 32) - 1;
  if (v22 < 0x2A && ((0x27EFFDFFFBFuLL >> v22) & 1) != 0)
  {
    v23 = dword_229ECD8[v22];
    v24 = (v31 + 3);
    v32 = 3;
    LOWORD(v31[0]) = v23;
    BYTE2(v31[0]) = BYTE2(v23);
  }

  else
  {
    v32 = 0;
    v24 = v31;
  }

  *v24 = 0;
  sub_734C00(v8);
  sub_74AA44(v19, (v19 + 24), v31, &v29);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v29;
  *(v8 + 16) = v30;
  *(v8 + 24) = sub_73696C((v19 + 24));
  *(v8 + 28) = 2;
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

LABEL_41:
  if (v39 == 1)
  {
    if ((v36 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        return;
      }

LABEL_46:
      operator delete(v33[0]);
      return;
    }

    operator delete(__p);
    if (SHIBYTE(v34) < 0)
    {
      goto LABEL_46;
    }
  }
}

void sub_73954C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  if (a19 < 0)
  {
    operator delete(__p);
    sub_736B14(&a20);
    _Unwind_Resume(a1);
  }

  sub_736B14(&a20);
  _Unwind_Resume(a1);
}

double sub_7395D8@<D0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_13:
    sub_734C00(__p);
    HIDWORD(v41) = 1;
    v15 = *a2;
    v16 = a2[1];
    if (*a2 != v16)
    {
      while (1)
      {
        v17 = *v15;
        v42 = sub_12330DC(0x29u);
        if (sub_1232EBC(v17 + 56, &v42))
        {
          break;
        }

        if (++v15 == v16)
        {
          v15 = v16;
          break;
        }
      }

      v18 = v15;
      v15 = *a2;
      v16 = a2[1];
      if (v18 != v16)
      {
        if (v15 != v16)
        {
          while (1)
          {
            v19 = *v15;
            v42 = sub_12330DC(0x2Bu);
            if (sub_1232EBC(v19 + 56, &v42))
            {
              break;
            }

            if (++v15 == v16)
            {
              v15 = v16;
              break;
            }
          }

          v16 = a2[1];
        }

        if (v15 != v16)
        {
          v20 = *v15;
          v21 = (*v15 + 8);
          if (__p == v21)
          {
            goto LABEL_80;
          }

          v22 = v20[31];
          if ((SHIBYTE(v40) & 0x80000000) == 0)
          {
            if ((v20[31] & 0x80) != 0)
            {
              sub_13A68(__p, *(v20 + 1), *(v20 + 2));
            }

            else
            {
              v23 = *v21;
              v40 = *(*v15 + 24);
              *__p = v23;
            }

            goto LABEL_80;
          }

          if (v22 >= 0)
          {
            v34 = (*v15 + 8);
          }

          else
          {
            v34 = *(v20 + 1);
          }

          if (v22 >= 0)
          {
            v35 = v20[31];
          }

          else
          {
            v35 = *(v20 + 2);
          }

          goto LABEL_77;
        }

        v15 = *a2;
      }
    }

    v42 = sub_738680(v15, v16, a3 + 32);
    v24 = sub_1232EB4(&v42);
    v25 = *a2;
    v26 = a2[1];
    if (!v24)
    {
      if (v25 != v26)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    if (v25 != v26)
    {
      while (!sub_1232EBC(*v25 + 56, &v42))
      {
        if (++v25 == v26)
        {
          v25 = v26;
          break;
        }
      }

      v26 = a2[1];
    }

    if (v25 != v26)
    {
      v29 = *v25;
      LODWORD(v41) = sub_1232E98((*v25 + 56));
      if (__p != (v29 + 8))
      {
        v30 = *(v29 + 31);
        if (SHIBYTE(v40) < 0)
        {
          if (v30 >= 0)
          {
            v36 = (v29 + 8);
          }

          else
          {
            v36 = *(v29 + 8);
          }

          if (v30 >= 0)
          {
            v37 = *(v29 + 31);
          }

          else
          {
            v37 = *(v29 + 16);
          }

          sub_13B38(__p, v36, v37);
        }

        else if ((*(v29 + 31) & 0x80) != 0)
        {
          sub_13A68(__p, *(v29 + 8), *(v29 + 16));
        }

        else
        {
          v31 = *(v29 + 8);
          v40 = *(v29 + 24);
          *__p = v31;
        }
      }

      goto LABEL_81;
    }

    v25 = *a2;
    if (*a2 == v26)
    {
LABEL_38:
      sub_734C00(a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      return result;
    }

LABEL_33:
    while (1)
    {
      v20 = *v25;
      v27 = sub_6DE68((*v25 + 56));
      if (*v20 < 2u && v27)
      {
        break;
      }

      if (++v25 == v26)
      {
        goto LABEL_38;
      }
    }

    if (__p == (v20 + 8))
    {
LABEL_80:
      LODWORD(v41) = sub_1232E98(v20 + 7);
LABEL_81:
      result = *__p;
      *a4 = *__p;
      v38 = v41;
      *(a4 + 16) = v40;
      *(a4 + 24) = v38;
      return result;
    }

    v32 = v20[31];
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      if ((v20[31] & 0x80) != 0)
      {
        sub_13A68(__p, *(v20 + 1), *(v20 + 2));
      }

      else
      {
        v33 = *(v20 + 8);
        v40 = *(v20 + 3);
        *__p = v33;
      }

      goto LABEL_80;
    }

    if (v32 >= 0)
    {
      v34 = v20 + 8;
    }

    else
    {
      v34 = *(v20 + 1);
    }

    if (v32 >= 0)
    {
      v35 = v20[31];
    }

    else
    {
      v35 = *(v20 + 2);
    }

LABEL_77:
    sub_13B38(__p, v34, v35);
    goto LABEL_80;
  }

  while (1)
  {
    v10 = *v7;
    if (**v7 <= 1u)
    {
      __p[0] = 0;
      __p[1] = 0;
      v40 = 0;
      sub_7391AC(a1, (v10 + 64), __p, a3, a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = sub_734C10(a4);
      v13 = v11;
      v14 = *(a4 + 23) >= 0 || v11;
      if ((v14 & 1) == 0)
      {
        operator delete(*a4);
      }

      if (v13)
      {
        return result;
      }
    }

    if (++v7 == v8)
    {
      goto LABEL_13;
    }
  }
}

void sub_73997C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7399CC(unsigned __int16 *result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 23);
  if (*(result + 23) < 0)
  {
    if (*(result + 1) != 3)
    {
      goto LABEL_14;
    }

    v8 = *result;
  }

  else
  {
    v8 = result;
    if (v7 != 3)
    {
      goto LABEL_11;
    }
  }

  v9 = *v8;
  v10 = *(v8 + 2);
  if (v9 == 20554 && v10 == 78)
  {
    v13 = a3;
    sub_73AC58(result, a2);
    a3 = v13;
    v7 = *(v6 + 23);
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
LABEL_11:
    if (v7 != 3)
    {
      goto LABEL_21;
    }

    v12 = v6;
    goto LABEL_16;
  }

LABEL_14:
  if (*(v6 + 8) != 3)
  {
    goto LABEL_24;
  }

  v12 = *v6;
LABEL_16:
  v14 = *v12;
  v15 = *(v12 + 2);
  if (v14 == 16967 && v15 == 82)
  {
    sub_73B388(v6, a2, a3, a4);
    v7 = *(v6 + 23);
    if ((v7 & 0x80) == 0)
    {
LABEL_21:
      if (v7 != 3)
      {
        return;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  if (*(v6 + 8) != 3)
  {
    return;
  }

  v6 = *v6;
LABEL_26:
  if (*v6 == 18499 && *(v6 + 2) == 78 && *(a4 + 32) == 5)
  {
    *(a2 + 60) = 0;
  }
}

void sub_739B14(uint64_t **a1@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != a1[1])
  {
    operator new();
  }

  sub_734CE0(a3);
}

void sub_739ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E5388(a11);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_739F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 >= 0x1F)
  {
    v5 = 31;
  }

  else
  {
    v5 = v3;
  }

  if (v3)
  {
    switch(v3)
    {
      case 1uLL:
        v6 = *v4;
        v7 = 1;
        break;
      case 2uLL:
        v6 = *v4;
        v7 = 2;
        break;
      case 3uLL:
        v6 = *v4 | (v4[2] << 16);
        v7 = 3;
        break;
      default:
        sub_852E4(v4, v5, &v18);
        goto LABEL_18;
    }

    *&v18 = v6;
    *(&v18 + 1) = v7;
    v19 = 0u;
    v20 = 0u;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
  }

LABEL_18:
  v11 = sub_1232F28(&v18, 3);
  v30 = xmmword_229EC98;
  v31 = unk_229ECA8;
  *v32 = xmmword_229ECB8;
  *&v32[12] = *(&xmmword_229ECB8 + 12);
  v26 = xmmword_229EC58;
  v27 = unk_229EC68;
  v28 = xmmword_229EC78;
  v29 = unk_229EC88;
  v22 = xmmword_229EC18;
  v23 = unk_229EC28;
  v24 = xmmword_229EC38;
  v25 = unk_229EC48;
  v18 = xmmword_229EBD8;
  v19 = unk_229EBE8;
  v20 = xmmword_229EBF8;
  v21 = unk_229EC08;
  v8 = sub_6EAFC();
  v15[0] = &v11;
  v15[1] = v12;
  v16 = 2;
  v17 = 1;
  v12[0] = &v18;
  v12[1] = &v33;
  v13 = 4;
  v14 = 63;
  v9 = (*(*v8 + 40))(v8, v15, v12);
  if (v9 > 0x3E)
  {
    return sub_73696C(a2);
  }

  result = *(&v18 + (v9 & 0x3F));
  if (!result)
  {
    return sub_73696C(a2);
  }

  return result;
}

void sub_73A114(unsigned __int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X8>)
{
  v4 = a2;
  v5 = a4;
  v6 = *a2;
  v23 = a2[1];
  if (*a2 != v23)
  {
    do
    {
      if (*v6 != *(v6 + 8))
      {
        sub_845EC(*v6);
        operator new();
      }

      v6 += 128;
    }

    while (v6 != v23);
    v4 = a2;
    v5 = a4;
  }

  v7 = sub_6E9A8();
  sub_852E4("en_US", 5, v30);
  v8 = sub_1232F28(v30, 0);
  v27[0] = a3;
  v27[1] = a3 + 4;
  v28 = 4;
  v29 = 1;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 2;
  v26 = 0;
  v9 = (*(*v7 + 40))(v7, v27, v24);
  if (v9 < 0)
  {
    v11 = a1;
    v10 = a3;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v13 = *v4;
    v12 = v4[1];
    if (*v4 != v12)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v11 = a1;
  v10 = a3;
  if (v9 < 0)
  {
    v8 = *(8 * (v9 & 0x7FFFFFFF));
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v13 = *v4;
  v12 = v4[1];
  if (*v4 == v12)
  {
LABEL_33:
    v17 = *v4;
    v16 = v4[1];
    while (1)
    {
      if (v17 == v16)
      {
        return;
      }

      if (*v17 != *(v17 + 8))
      {
        break;
      }

LABEL_34:
      v17 += 128;
    }

    v18 = sub_845EC(*v17);
    sub_73A5F8(v11, v17, v10, v18, v30);
    if (sub_734C10(v30))
    {
      v19 = v5[1];
      if (v19 >= v5[2])
      {
        v20 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v20 = (v19 + 152);
        v5[1] = (v19 + 152);
      }

      v5[1] = v20;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_44:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_50;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_45:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_51;
    }

LABEL_50:
    operator delete(v34);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_46:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_52:
      operator delete(v30[0]);
      goto LABEL_34;
    }

LABEL_51:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

  do
  {
LABEL_15:
    sub_73A5F8(v11, v13, v10, v8, v30);
    if (sub_734C10(v30))
    {
      v14 = v5[1];
      if (v14 >= v5[2])
      {
        v15 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v15 = (v14 + 152);
      }

      v5[1] = v15;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_23:
      if (v33 < 0)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_28:
    operator delete(v34);
    if (v33 < 0)
    {
LABEL_29:
      operator delete(v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_24:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    operator delete(v30[0]);
LABEL_14:
    v13 += 16;
  }

  while (v13 != v12);
  if (*v5 == v5[1])
  {
    goto LABEL_33;
  }
}

void sub_73A580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    v23 = a1;
    operator delete(v22);
    a1 = v23;
  }

  _Unwind_Resume(a1);
}

void sub_73A5F8(unsigned __int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    while (1)
    {
      v48 = sub_845EC(v9);
      v44[0] = sub_1232F20(&v48);
      __p[0] = sub_1232F20(&v52);
      if (sub_1232EBC(v44, __p) || sub_846D0(v9))
      {
        break;
      }

      v9 += 48;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }
  }

  v11 = a2[1];
  sub_734CE0(a5);
  if (v9 != v11)
  {
    if (v9 + 24 != a5)
    {
      v12 = *(v9 + 47);
      if (*(a5 + 23) < 0)
      {
        if (v12 >= 0)
        {
          v14 = (v9 + 24);
        }

        else
        {
          v14 = *(v9 + 24);
        }

        if (v12 >= 0)
        {
          v15 = *(v9 + 47);
        }

        else
        {
          v15 = *(v9 + 32);
        }

        sub_13B38(a5, v14, v15);
      }

      else if ((*(v9 + 47) & 0x80) != 0)
      {
        sub_13A68(a5, *(v9 + 24), *(v9 + 32));
      }

      else
      {
        v13 = *(v9 + 24);
        *(a5 + 16) = *(v9 + 40);
        *a5 = v13;
      }
    }

    *(a5 + 24) = sub_845EC(v9);
    v16 = a2[3];
    v17 = a2[4];
    if (v16 != v17)
    {
      while (1)
      {
        v48 = sub_845EC(v16);
        v44[0] = sub_1232F20(&v48);
        __p[0] = sub_1232F20(&v52);
        if (sub_1232EBC(v44, __p) || sub_846D0(v16))
        {
          break;
        }

        v16 += 48;
        if (v16 == v17)
        {
          v16 = v17;
          break;
        }
      }
    }

    if (v16 == a2[4])
    {
      v19 = (a5 + 128);
      v18 = a5;
      v20 = *(a5 + 23);
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
LABEL_27:
        if ((v20 & 0x80) != 0)
        {
          sub_13A68(v19, *v18, *(v18 + 8));
        }

        else
        {
          v21 = *v18;
          v19[2] = *(v18 + 16);
          *v19 = v21;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v18 = (v16 + 24);
      v19 = (a5 + 128);
      if (a5 + 128 == v18)
      {
        goto LABEL_38;
      }

      v20 = *(v18 + 23);
      if ((*(a5 + 151) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((v20 & 0x80u) == 0)
    {
      v22 = v18;
    }

    else
    {
      v22 = *v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *(v18 + 8);
    }

    sub_13B38(v19, v22, v23);
LABEL_38:
    if (*(a2 + 49))
    {
      if (*(a2 + 49) == 3)
      {
        goto LABEL_48;
      }

      v24 = *(a2 + 48);
      if (v24 == 5 || v24 == 8)
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v26 = 1;
    }

    *(a5 + 120) = v26;
LABEL_48:
    v27 = a2[8];
    v28 = a2[7];
    if (v28 == v27)
    {
LABEL_93:
      sub_7391AC(a1, a2 + 10, v19, a3, v44);
      if (*(a5 + 55) < 0)
      {
        operator delete(*(a5 + 32));
      }

      *(a5 + 32) = *v44;
      v38 = v45;
      *(a5 + 48) = v44[2];
      *(a5 + 56) = v38;
      memset(v44, 0, sizeof(v44));
      sub_7399CC(a1, a5, v44, a3);
      v39 = v44[0];
      if (v44[0])
      {
        v40 = v44[1];
        v41 = v44[0];
        if (v44[1] != v44[0])
        {
          do
          {
            v40 = sub_310F30(v40 - 144);
          }

          while (v40 != v39);
          v41 = v44[0];
        }

        v44[1] = v39;
        operator delete(v41);
      }

      return;
    }

    v29 = a2[7];
    while ((*(v29 + 32) & 1) == 0)
    {
      v29 += 40;
      if (v29 == v27)
      {
        goto LABEL_57;
      }
    }

    if (v29 == v27)
    {
LABEL_57:
      LODWORD(v48) = *v28;
      if (*(v28 + 31) < 0)
      {
        sub_325C(&v49, *(v28 + 8), *(v28 + 16));
      }

      else
      {
        v31 = *(v28 + 8);
        v50 = *(v28 + 24);
        v49 = v31;
      }

      goto LABEL_61;
    }

    LODWORD(v48) = *v29;
    if (*(v29 + 31) < 0)
    {
      sub_325C(&v49, *(v29 + 8), *(v29 + 16));
    }

    else
    {
      v30 = *(v29 + 8);
      v50 = *(v29 + 24);
      v49 = v30;
    }

    v28 = v29;
LABEL_61:
    v51 = *(v28 + 32);
    v43 = 0;
    LOBYTE(__p[0]) = 0;
    sub_73450C(v44, v48, &v49, __p);
    *(a5 + 64) = v44[0];
    if (*(a5 + 95) < 0)
    {
      operator delete(*(a5 + 72));
    }

    *(a5 + 72) = *&v44[1];
    *(a5 + 88) = v45;
    HIBYTE(v45) = 0;
    LOBYTE(v44[1]) = 0;
    v32 = (a5 + 96);
    if ((*(a5 + 119) & 0x80000000) == 0)
    {
      *v32 = v46;
      *(a5 + 112) = v47;
      HIBYTE(v47) = 0;
      LOBYTE(v46) = 0;
      if (v43 < 0)
      {
        goto LABEL_65;
      }

LABEL_69:
      v33 = a2[13];
      v34 = a2[14];
      if (v33 != v34)
      {
        goto LABEL_70;
      }

      goto LABEL_74;
    }

    operator delete(*v32);
    v35 = SHIBYTE(v45);
    *v32 = v46;
    *(a5 + 112) = v47;
    HIBYTE(v47) = 0;
    LOBYTE(v46) = 0;
    if (v35 < 0)
    {
      operator delete(v44[1]);
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_65:
    operator delete(__p[0]);
    v33 = a2[13];
    v34 = a2[14];
    if (v33 != v34)
    {
LABEL_70:
      while (1)
      {
        __p[0] = sub_845EC(v33);
        v44[0] = sub_1232F20(__p);
        v53 = sub_1232F20(&v52);
        if (sub_1232EBC(v44, &v53) || sub_846D0(v33))
        {
          break;
        }

        v33 += 48;
        if (v33 == v34)
        {
          v33 = v34;
          break;
        }
      }
    }

LABEL_74:
    if (v33 == a2[14])
    {
      HIBYTE(v44[2]) = 0;
      LOBYTE(v44[0]) = 0;
    }

    else if (*(v33 + 47) < 0)
    {
      sub_325C(v44, *(v33 + 24), *(v33 + 32));
    }

    else
    {
      *v44 = *(v33 + 24);
      v44[2] = *(v33 + 40);
    }

    if (v32 != v44)
    {
      if (*(a5 + 119) < 0)
      {
        if (SHIBYTE(v44[2]) >= 0)
        {
          v36 = v44;
        }

        else
        {
          v36 = v44[0];
        }

        if (SHIBYTE(v44[2]) >= 0)
        {
          v37 = HIBYTE(v44[2]);
        }

        else
        {
          v37 = v44[1];
        }

        sub_13B38((a5 + 96), v36, v37);
      }

      else if ((HIBYTE(v44[2]) & 0x80) != 0)
      {
        sub_13A68((a5 + 96), v44[0], v44[1]);
      }

      else
      {
        *v32 = *v44;
        *(a5 + 112) = v44[2];
      }
    }

    if (SHIBYTE(v44[2]) < 0)
    {
      operator delete(v44[0]);
      if ((SHIBYTE(v50) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    else if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v49);
    goto LABEL_93;
  }
}

void sub_73AB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    sub_3E5388(v32);
    _Unwind_Resume(a1);
  }

  sub_3E5388(v32);
  _Unwind_Resume(a1);
}

void sub_73AC58(uint64_t *a1, void **a2)
{
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    if (a1[1] != 3)
    {
      return;
    }

    a1 = *a1;
  }

  else if (v3 != 3)
  {
    return;
  }

  v4 = *a1 == 20554 && *(a1 + 2) == 78;
  if (v4 && sub_7345C4((a2 + 8)))
  {
    v5 = *(a2 + 23);
    v6 = v5;
    v7 = *a2;
    if (v5 < 0)
    {
      v5 = a2[1];
    }

    else
    {
      v7 = a2;
    }

    if (v5)
    {
      do
      {
        v8 = *v7;
        if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
        {
          return;
        }

        v7 = (v7 + 1);
      }

      while (--v5);
    }

    __src = 0uLL;
    v47 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    memset(&__dst, 0, sizeof(__dst));
    v39 = 0;
    v40 = 0;
    v9 = *(a2 + 16);
    v41 = 0;
    if (v9 == 100000)
    {
      HIBYTE(v47) = 15;
      *&__src = *"都道府県道";
      *(&__src + 7) = *"\xBA\x9C県道";
      HIBYTE(__src) = 0;
      sub_195A048(&__dst, "トドウフケンドウ", 0x18uLL);
      if (SHIBYTE(v45) < 0)
      {
        v44 = 6;
        v12 = v43;
      }

      else
      {
        HIBYTE(v45) = 6;
        v12 = &v43;
      }

      v12[2] = -25929;
      *v12 = -407400475;
      *(v12 + 6) = 0;
      if (SHIBYTE(v41) < 0)
      {
        v40 = 12;
        v13 = v39;
      }

      else
      {
        HIBYTE(v41) = 12;
        v13 = &v39;
      }

      v10 = 0;
      v13[2] = -1283202117;
      *v13 = *"ゴウセン";
      *(v13 + 12) = 0;
      v6 = *(a2 + 23);
      v11 = 15;
    }

    else if (v9 == 100006)
    {
      v10 = 0;
      v11 = 6;
      HIBYTE(v47) = 6;
      LODWORD(__src) = -373449755;
      WORD2(__src) = -27775;
      BYTE6(__src) = 0;
      LODWORD(__dst.__r_.__value_.__r.__words[1]) = -1501371511;
      __dst.__r_.__value_.__r.__words[0] = *"コクドウ";
      LODWORD(v43) = -407400475;
      WORD2(v43) = -25929;
      *(&__dst.__r_.__value_.__s + 23) = 12;
      __dst.__r_.__value_.__s.__data_[12] = 0;
      HIBYTE(v45) = 6;
      BYTE6(v43) = 0;
      HIBYTE(v41) = 12;
      LODWORD(v40) = -1283202117;
      v39 = *"ゴウセン";
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    if (v6 < 0)
    {
      sub_325C(v37, *a2, a2[1]);
    }

    else
    {
      *v37 = *a2;
      v38 = a2[2];
    }

    if (!v10)
    {
      goto LABEL_37;
    }

    v14 = HIBYTE(v45);
    if (v45 < 0)
    {
      v14 = v44;
    }

    if (v14)
    {
LABEL_37:
      if (SHIBYTE(v38) >= 0)
      {
        v15 = HIBYTE(v38);
      }

      else
      {
        v15 = v37[1];
      }

      if (v15 + v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 + v11 > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v15 + v11;
      if ((v10 & 1) == 0)
      {
        memcpy(&v48, &__src, v11);
      }

      v16 = &v48 + v11;
      if (v15)
      {
        if (SHIBYTE(v38) >= 0)
        {
          v17 = v37;
        }

        else
        {
          v17 = v37[0];
        }

        memmove(v16, v17, v15);
      }

      v16[v15] = 0;
      if (v45 >= 0)
      {
        v18 = &v43;
      }

      else
      {
        v18 = v43;
      }

      if (v45 >= 0)
      {
        v19 = HIBYTE(v45);
      }

      else
      {
        v19 = v44;
      }

      v20 = std::string::append(&v48, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v36 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (__p != a2)
      {
        if (*(a2 + 23) < 0)
        {
          if (SHIBYTE(v36) >= 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          if (SHIBYTE(v36) >= 0)
          {
            v23 = HIBYTE(v36);
          }

          else
          {
            v23 = __p[1];
          }

          sub_13B38(a2, v22, v23);
        }

        else if ((HIBYTE(v36) & 0x80) != 0)
        {
          sub_13A68(a2, __p[0], __p[1]);
        }

        else
        {
          *a2 = *__p;
          a2[2] = v36;
        }
      }

      sub_852E4("ja_JP", 5, &v48);
      a2[3] = sub_1232F28(&v48, 0);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_79;
    }

    v25 = HIBYTE(v41);
    if (v41 < 0)
    {
      v25 = v40;
    }

    if (v25)
    {
LABEL_79:
      if (SHIBYTE(v38) >= 0)
      {
        v26 = HIBYTE(v38);
      }

      else
      {
        v26 = v37[1];
      }

      if (v26 + size > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v26 + size > 0x16)
      {
        operator new();
      }

      memset(&v48, 0, sizeof(v48));
      *(&v48.__r_.__value_.__s + 23) = v26 + size;
      if (size)
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        memmove(&v48, p_dst, size);
      }

      v28 = &v48 + size;
      if (v26)
      {
        if (SHIBYTE(v38) >= 0)
        {
          v29 = v37;
        }

        else
        {
          v29 = v37[0];
        }

        memmove(v28, v29, v26);
      }

      v28[v26] = 0;
      if (v41 >= 0)
      {
        v30 = &v39;
      }

      else
      {
        v30 = v39;
      }

      if (v41 >= 0)
      {
        v31 = HIBYTE(v41);
      }

      else
      {
        v31 = v40;
      }

      v32 = std::string::append(&v48, v30, v31);
      v33 = *&v32->__r_.__value_.__l.__data_;
      v36 = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      sub_734B90(&v48, __p, 20, 1);
      if (*(a2 + 55) < 0)
      {
        operator delete(a2[4]);
      }

      *(a2 + 2) = *&v48.__r_.__value_.__l.__data_;
      v34 = v49;
      a2[6] = v48.__r_.__value_.__r.__words[2];
      a2[7] = v34;
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
      if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
LABEL_109:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_110;
        }

        goto LABEL_114;
      }
    }

    else if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    operator delete(v39);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_110:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_115;
    }

LABEL_114:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      return;
    }

LABEL_115:
    operator delete(v43);
  }
}

void sub_73B2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if (a39 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  operator delete(a28);
  if (a39 < 0)
  {
LABEL_8:
    operator delete(a34);
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void sub_73B388(unsigned __int16 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    if (*(a1 + 1) != 3)
    {
      return;
    }

    v8 = *a1;
  }

  else
  {
    v8 = a1;
    if (v7 != 3)
    {
      return;
    }
  }

  v9 = *v8;
  v10 = *(v8 + 2);
  v11 = v9 == 16967 && v10 == 82;
  if (v11 && sub_7345C4(a2 + 64))
  {
    if (*(a2 + 95) < 0)
    {
      sub_325C(__p, *(a2 + 72), *(a2 + 80));
      v13 = a3;
      v14 = *(a2 + 64) - 2600;
      if (v14 > 0xA)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = a3;
      *__p = *(a2 + 72);
      v32 = *(a2 + 88);
      v14 = *(a2 + 64) - 2600;
      if (v14 > 0xA)
      {
LABEL_45:
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }
    }

    if (((1 << v14) & 0x421) != 0)
    {
      v15 = v13[1];
      if (*v13 != v15)
      {
        if (v32 >= 0)
        {
          v16 = HIBYTE(v32);
        }

        else
        {
          v16 = __p[1];
        }

        if (v32 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        v18 = (*v13 + 88);
        while (1)
        {
          if (*(v18 - 3) != *(v18 - 2))
          {
            v20 = *(v18 - 57);
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = *(v18 - 9);
            }

            if (v20 == v16)
            {
              v22 = *(v18 - 10);
              v23 = v21 >= 0 ? v18 - 5 : *(v18 - 10);
              if (!memcmp(v23, v17, v16))
              {
                if (v21 < 0)
                {
                  v24 = *v22;
                  if (v24 == 65)
                  {
                    break;
                  }
                }

                else
                {
                  v24 = v22;
                  if (v22 == 65)
                  {
                    break;
                  }
                }

                if (v24 == 77)
                {
                  break;
                }
              }
            }
          }

          v19 = v18 + 56;
          v18 += 9;
          if (v19 == v15)
          {
            goto LABEL_45;
          }
        }

        sub_7391AC(a1, v18 - 3, v18, a4, &v28);
        if (*(a2 + 55) < 0)
        {
          operator delete(*(a2 + 32));
        }

        *(a2 + 32) = v28;
        v25 = v30;
        *(a2 + 48) = v29;
        *(a2 + 56) = v25;
        if (!sub_734C10(a2 + 32))
        {
          v26 = sub_1232E98(v18 - 4);
          sub_734B90(&v28, v18 - 5, v26, 1);
          if (*(a2 + 55) < 0)
          {
            operator delete(*(a2 + 32));
          }

          *(a2 + 32) = v28;
          v27 = v30;
          *(a2 + 48) = v29;
          *(a2 + 56) = v27;
        }
      }
    }

    goto LABEL_45;
  }
}

void sub_73B5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_73B5F8(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIBYTE(v17) = 0;
  LOBYTE(__dst[0]) = 0;
  v4 = *a1;
  if (*a1 == a1[1])
  {
    *a3 = *__dst;
    *(a3 + 16) = v17;
  }

  else
  {
    if (__dst != (v4 + 24))
    {
      if (*(v4 + 47) < 0)
      {
        sub_13A68(__dst, *(v4 + 3), *(v4 + 4));
      }

      else
      {
        *__dst = *(v4 + 24);
        v17 = *(v4 + 5);
      }
    }

    sub_73B818(a1, &__p);
    v11 = 50331648;
    v12 = 0;
    v13 = -4294967282;
    v7 = sub_6E9A8();
    v21[0] = a2;
    v21[1] = a2 + 4;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v15;
    v19 = 2;
    v20 = (v15 - __p) >> 3;
    v8 = (*(*v7 + 48))(v7, v21, v18, &v11);
    if (v8 >> 31)
    {
      *a3 = *__dst;
      *(a3 + 16) = v17;
      __dst[1] = 0;
      v17 = 0;
      __dst[0] = 0;
    }

    else
    {
      v9 = *a1;
      if (v8 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v9 += 3 * v8;
      }

      if (*(v9 + 47) < 0)
      {
        sub_325C(a3, *(v9 + 3), *(v9 + 4));
      }

      else
      {
        v10 = *(v9 + 24);
        *(a3 + 16) = *(v9 + 5);
        *a3 = v10;
      }
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_73B7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_73B818(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v2 - *a1)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_73BB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v14[2] = v16;
  *v14 = v15;
  if (!v15)
  {
    _Unwind_Resume(exception_object);
  }

  v14[1] = v15;
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_73BB70(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_734F1C(a3);
  if (*a1 != a1[1])
  {
    sub_73BD4C(a1, &__p);
    v13 = 50331648;
    v14 = 0;
    v15 = -4294967282;
    v6 = sub_6EAFC();
    v21[0] = a2 + 32;
    v21[1] = a2 + 36;
    v22 = 4;
    v23 = 1;
    v18[0] = __p;
    v18[1] = v17;
    v19 = 2;
    v20 = (v17 - __p) >> 3;
    v7 = (*(*v6 + 48))(v6, v21, v18, &v13);
    if (!(v7 >> 31))
    {
      v8 = *a1;
      if (v7 < (-1431655765 * ((a1[1] - *a1) >> 4)))
      {
        v8 += 48 * v7;
      }

      *(a3 + 24) = sub_845EC(v8);
      if (v8 + 24 != a3)
      {
        v9 = *(v8 + 47);
        if (*(a3 + 23) < 0)
        {
          if (v9 >= 0)
          {
            v11 = (v8 + 24);
          }

          else
          {
            v11 = *(v8 + 24);
          }

          if (v9 >= 0)
          {
            v12 = *(v8 + 47);
          }

          else
          {
            v12 = *(v8 + 32);
          }

          sub_13B38(a3, v11, v12);
        }

        else if ((*(v8 + 47) & 0x80) != 0)
        {
          sub_13A68(a3, *(v8 + 24), *(v8 + 32));
        }

        else
        {
          v10 = *(v8 + 24);
          *(a3 + 16) = *(v8 + 40);
          *a3 = v10;
        }
      }
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

void sub_73BCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v13 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v13 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v13);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_73BD4C@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_73BE0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_73BE28(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v5 = a5;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 == v7)
  {
    goto LABEL_41;
  }

  v8 = *a2;
  do
  {
    if (*v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8[114] == 2;
    }

    v10 = v9;
    v8 += 144;
  }

  while (v10 == 1 && v8 != v7);
  v12 = 0;
  v13 = *a2;
  do
  {
    if (v6[114] == 2)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (*v6)
    {
      if (((*v6 == 1) & v14) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (!v14)
    {
      goto LABEL_17;
    }

    if (v12 < v27)
    {
      *v12 = v13;
      v12 += 8;
    }

    else
    {
      v15 = v25;
      v16 = v12 - v25;
      v17 = (v12 - v25) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_1794();
      }

      v19 = v27 - v25;
      if ((v27 - v25) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v21 = (v12 - v25) >> 3;
      v22 = (8 * v17);
      v23 = (8 * v17 - 8 * v21);
      *v22 = v13;
      v12 = (v22 + 1);
      memcpy(v23, v15, v16);
      v25 = v23;
      v27 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    v26 = v12;
LABEL_17:
    v6 += 144;
    v13 += 144;
  }

  while (v6 != v7);
  if (v25 != v12)
  {
    operator new();
  }

  v5 = a5;
LABEL_41:
  sub_734CE0(v5);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_73C6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_3E5388(a12);
  if (v32)
  {
    operator delete(v32);
    v35 = *(v33 - 112);
    if (!v35)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v35 = *(v33 - 112);
    if (!v35)
    {
      goto LABEL_3;
    }
  }

  *(v33 - 104) = v35;
  operator delete(v35);
  _Unwind_Resume(a1);
}

void sub_73C770(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a5;
  LOBYTE(v33[0]) = 0;
  v39 = 0;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_28;
  }

  do
  {
    v11 = *(v10 + 48);
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        if (sub_73D3BC(a1, v10 + 24) == *(a4 + 32) && (v39 != 1 || *(v10 + 52) < v38))
        {
          sub_7367B0(v33, v10);
        }

        goto LABEL_4;
      }

      goto LABEL_11;
    }

    if (v11 - 2 < 2)
    {
      goto LABEL_11;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        goto LABEL_4;
      }

LABEL_11:
      v13 = *(a4 + 40);
      v12 = *(a4 + 48);
      v14 = v12 - v13;
      if (v12 != v13)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

    v16 = *(a4 + 40);
    v15 = *(a4 + 48);
    v14 = v15 - v16;
    if (v15 != v16)
    {
LABEL_12:
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

LABEL_4:
    v10 += 56;
  }

  while (v10 != v9);
  v8 = a5;
  if (v39)
  {
    v17 = HIBYTE(v34);
    if (v34 < 0)
    {
      v17 = v33[1];
    }

    if (v17)
    {
      sub_734C00(a5);
      if (v33 != a5)
      {
        if (*(a5 + 23) < 0)
        {
          if (v34 >= 0)
          {
            v25 = v33;
          }

          else
          {
            v25 = v33[0];
          }

          if (v34 >= 0)
          {
            v26 = HIBYTE(v34);
          }

          else
          {
            v26 = v33[1];
          }

          sub_13B38(a5, v25, v26);
        }

        else if (v34 < 0)
        {
          sub_13A68(a5, v33[0], v33[1]);
        }

        else
        {
          *a5 = *v33;
          *(a5 + 16) = v34;
        }
      }

      *(a5 + 24) = sub_73696C(&__p);
      if (v37 > 5uLL)
      {
        *(a5 + 28) = 2;
      }

      else
      {
        *(a5 + 28) = dword_229ED80[v37];
      }

      goto LABEL_41;
    }

LABEL_40:
    sub_734B90(v8, a3, 0, 1);
    goto LABEL_41;
  }

LABEL_28:
  if (*(a1 + 24) != 1)
  {
    goto LABEL_40;
  }

  v19 = *a2;
  v18 = a2[1];
  v20 = *a2 + 56;
  if (*a2 != v18 && v20 != v18)
  {
    do
    {
      if (*(v20 + 52) < *(v19 + 52))
      {
        v19 = v20;
      }

      v20 += 56;
    }

    while (v20 != v18);
  }

  if (v19 == v18)
  {
    goto LABEL_40;
  }

  v22 = *(a4 + 32) - 1;
  if (v22 < 0x2A && ((0x27EFFDFFFBFuLL >> v22) & 1) != 0)
  {
    v23 = dword_229ECD8[v22];
    v24 = (v31 + 3);
    v32 = 3;
    LOWORD(v31[0]) = v23;
    BYTE2(v31[0]) = BYTE2(v23);
  }

  else
  {
    v32 = 0;
    v24 = v31;
  }

  *v24 = 0;
  sub_734C00(v8);
  sub_74AA44(v19, (v19 + 24), v31, &v29);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v29;
  *(v8 + 16) = v30;
  *(v8 + 24) = sub_73696C((v19 + 24));
  *(v8 + 28) = 2;
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

LABEL_41:
  if (v39 == 1)
  {
    if ((v36 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        return;
      }

LABEL_46:
      operator delete(v33[0]);
      return;
    }

    operator delete(__p);
    if (SHIBYTE(v34) < 0)
    {
      goto LABEL_46;
    }
  }
}

void sub_73CB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  if (a19 < 0)
  {
    operator delete(__p);
    sub_736B14(&a20);
    _Unwind_Resume(a1);
  }

  sub_736B14(&a20);
  _Unwind_Resume(a1);
}

double sub_73CB9C@<D0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
LABEL_13:
    sub_734C00(__p);
    HIDWORD(v41) = 1;
    v15 = *a2;
    v16 = a2[1];
    if (*a2 != v16)
    {
      while (1)
      {
        v17 = *v15;
        v42 = sub_12330DC(0x29u);
        if (sub_1232EBC(v17 + 56, &v42))
        {
          break;
        }

        if (++v15 == v16)
        {
          v15 = v16;
          break;
        }
      }

      v18 = v15;
      v15 = *a2;
      v16 = a2[1];
      if (v18 != v16)
      {
        if (v15 != v16)
        {
          while (1)
          {
            v19 = *v15;
            v42 = sub_12330DC(0x2Bu);
            if (sub_1232EBC(v19 + 56, &v42))
            {
              break;
            }

            if (++v15 == v16)
            {
              v15 = v16;
              break;
            }
          }

          v16 = a2[1];
        }

        if (v15 != v16)
        {
          v20 = *v15;
          v21 = (*v15 + 8);
          if (__p == v21)
          {
            goto LABEL_80;
          }

          v22 = v20[31];
          if ((SHIBYTE(v40) & 0x80000000) == 0)
          {
            if ((v20[31] & 0x80) != 0)
            {
              sub_13A68(__p, *(v20 + 1), *(v20 + 2));
            }

            else
            {
              v23 = *v21;
              v40 = *(*v15 + 24);
              *__p = v23;
            }

            goto LABEL_80;
          }

          if (v22 >= 0)
          {
            v34 = (*v15 + 8);
          }

          else
          {
            v34 = *(v20 + 1);
          }

          if (v22 >= 0)
          {
            v35 = v20[31];
          }

          else
          {
            v35 = *(v20 + 2);
          }

          goto LABEL_77;
        }

        v15 = *a2;
      }
    }

    v42 = sub_738680(v15, v16, a3 + 32);
    v24 = sub_1232EB4(&v42);
    v25 = *a2;
    v26 = a2[1];
    if (!v24)
    {
      if (v25 != v26)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    if (v25 != v26)
    {
      while (!sub_1232EBC(*v25 + 56, &v42))
      {
        if (++v25 == v26)
        {
          v25 = v26;
          break;
        }
      }

      v26 = a2[1];
    }

    if (v25 != v26)
    {
      v29 = *v25;
      LODWORD(v41) = sub_1232E98((*v25 + 56));
      if (__p != (v29 + 8))
      {
        v30 = *(v29 + 31);
        if (SHIBYTE(v40) < 0)
        {
          if (v30 >= 0)
          {
            v36 = (v29 + 8);
          }

          else
          {
            v36 = *(v29 + 8);
          }

          if (v30 >= 0)
          {
            v37 = *(v29 + 31);
          }

          else
          {
            v37 = *(v29 + 16);
          }

          sub_13B38(__p, v36, v37);
        }

        else if ((*(v29 + 31) & 0x80) != 0)
        {
          sub_13A68(__p, *(v29 + 8), *(v29 + 16));
        }

        else
        {
          v31 = *(v29 + 8);
          v40 = *(v29 + 24);
          *__p = v31;
        }
      }

      goto LABEL_81;
    }

    v25 = *a2;
    if (*a2 == v26)
    {
LABEL_38:
      sub_734C00(a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      return result;
    }

LABEL_33:
    while (1)
    {
      v20 = *v25;
      v27 = sub_6DE68((*v25 + 56));
      if (*v20 < 2u && v27)
      {
        break;
      }

      if (++v25 == v26)
      {
        goto LABEL_38;
      }
    }

    if (__p == (v20 + 8))
    {
LABEL_80:
      LODWORD(v41) = sub_1232E98(v20 + 7);
LABEL_81:
      result = *__p;
      *a4 = *__p;
      v38 = v41;
      *(a4 + 16) = v40;
      *(a4 + 24) = v38;
      return result;
    }

    v32 = v20[31];
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      if ((v20[31] & 0x80) != 0)
      {
        sub_13A68(__p, *(v20 + 1), *(v20 + 2));
      }

      else
      {
        v33 = *(v20 + 8);
        v40 = *(v20 + 3);
        *__p = v33;
      }

      goto LABEL_80;
    }

    if (v32 >= 0)
    {
      v34 = v20 + 8;
    }

    else
    {
      v34 = *(v20 + 1);
    }

    if (v32 >= 0)
    {
      v35 = v20[31];
    }

    else
    {
      v35 = *(v20 + 2);
    }

LABEL_77:
    sub_13B38(__p, v34, v35);
    goto LABEL_80;
  }

  while (1)
  {
    v10 = *v7;
    if (**v7 <= 1u)
    {
      __p[0] = 0;
      __p[1] = 0;
      v40 = 0;
      sub_73C770(a1, (v10 + 64), __p, a3, a4);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = sub_734C10(a4);
      v13 = v11;
      v14 = *(a4 + 23) >= 0 || v11;
      if ((v14 & 1) == 0)
      {
        operator delete(*a4);
      }

      if (v13)
      {
        return result;
      }
    }

    if (++v7 == v8)
    {
      goto LABEL_13;
    }
  }
}

void sub_73CF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_73CF90(uint64_t **a1@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != a1[1])
  {
    operator new();
  }

  sub_734CE0(a3);
}

void sub_73D354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E5388(a11);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_73D3BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 >= 0x1F)
  {
    v5 = 31;
  }

  else
  {
    v5 = v3;
  }

  if (v3)
  {
    switch(v3)
    {
      case 1uLL:
        v6 = *v4;
        v7 = 1;
        break;
      case 2uLL:
        v6 = *v4;
        v7 = 2;
        break;
      case 3uLL:
        v6 = *v4 | (v4[2] << 16);
        v7 = 3;
        break;
      default:
        sub_852E4(v4, v5, &v18);
        goto LABEL_18;
    }

    *&v18 = v6;
    *(&v18 + 1) = v7;
    v19 = 0u;
    v20 = 0u;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
  }

LABEL_18:
  v11 = sub_1232F28(&v18, 3);
  v30 = xmmword_229EC98;
  v31 = unk_229ECA8;
  *v32 = xmmword_229ECB8;
  *&v32[12] = *(&xmmword_229ECB8 + 12);
  v26 = xmmword_229EC58;
  v27 = unk_229EC68;
  v28 = xmmword_229EC78;
  v29 = unk_229EC88;
  v22 = xmmword_229EC18;
  v23 = unk_229EC28;
  v24 = xmmword_229EC38;
  v25 = unk_229EC48;
  v18 = xmmword_229EBD8;
  v19 = unk_229EBE8;
  v20 = xmmword_229EBF8;
  v21 = unk_229EC08;
  v8 = sub_6EAFC();
  v15[0] = &v11;
  v15[1] = v12;
  v16 = 2;
  v17 = 1;
  v12[0] = &v18;
  v12[1] = &v33;
  v13 = 4;
  v14 = 63;
  v9 = (*(*v8 + 40))(v8, v15, v12);
  if (v9 > 0x3E)
  {
    return sub_73696C(a2);
  }

  result = *(&v18 + (v9 & 0x3F));
  if (!result)
  {
    return sub_73696C(a2);
  }

  return result;
}

void sub_73D590(unsigned __int16 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 **a4@<X8>)
{
  v4 = a2;
  v5 = a4;
  v6 = *a2;
  v23 = a2[1];
  if (*a2 != v23)
  {
    do
    {
      if (*v6 != *(v6 + 8))
      {
        sub_845EC(*v6);
        operator new();
      }

      v6 += 128;
    }

    while (v6 != v23);
    v4 = a2;
    v5 = a4;
  }

  v7 = sub_6E9A8();
  sub_852E4("en_US", 5, v30);
  v8 = sub_1232F28(v30, 0);
  v27[0] = a3;
  v27[1] = a3 + 4;
  v28 = 4;
  v29 = 1;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 2;
  v26 = 0;
  v9 = (*(*v7 + 40))(v7, v27, v24);
  if (v9 < 0)
  {
    v11 = a1;
    v10 = a3;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v13 = *v4;
    v12 = v4[1];
    if (*v4 != v12)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  v11 = a1;
  v10 = a3;
  if (v9 < 0)
  {
    v8 = *(8 * (v9 & 0x7FFFFFFF));
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v13 = *v4;
  v12 = v4[1];
  if (*v4 == v12)
  {
LABEL_33:
    v17 = *v4;
    v16 = v4[1];
    while (1)
    {
      if (v17 == v16)
      {
        return;
      }

      if (*v17 != *(v17 + 8))
      {
        break;
      }

LABEL_34:
      v17 += 128;
    }

    v18 = sub_845EC(*v17);
    sub_73DA74(v11, v17, v10, v18, v30);
    if (sub_734C10(v30))
    {
      v19 = v5[1];
      if (v19 >= v5[2])
      {
        v20 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v20 = (v19 + 152);
        v5[1] = (v19 + 152);
      }

      v5[1] = v20;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_44:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_50;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_45:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_51;
    }

LABEL_50:
    operator delete(v34);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_46:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_52:
      operator delete(v30[0]);
      goto LABEL_34;
    }

LABEL_51:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

  do
  {
LABEL_15:
    sub_73DA74(v11, v13, v10, v8, v30);
    if (sub_734C10(v30))
    {
      v14 = v5[1];
      if (v14 >= v5[2])
      {
        v15 = sub_6868D8(v5, v30);
      }

      else
      {
        sub_5139E8(v5[1], v30);
        v15 = (v14 + 152);
      }

      v5[1] = v15;
    }

    if (v39 < 0)
    {
      operator delete(__p);
      if ((v37 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v35 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v36);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_23:
      if (v33 < 0)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_28:
    operator delete(v34);
    if (v33 < 0)
    {
LABEL_29:
      operator delete(v32);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_24:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    operator delete(v30[0]);
LABEL_14:
    v13 += 16;
  }

  while (v13 != v12);
  if (*v5 == v5[1])
  {
    goto LABEL_33;
  }
}