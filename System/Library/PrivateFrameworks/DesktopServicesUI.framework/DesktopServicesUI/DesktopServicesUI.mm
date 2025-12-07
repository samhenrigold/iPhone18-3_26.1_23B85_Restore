__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_248839934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24883997C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_248839A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_248839A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_248839B2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a4.n128_f64[0];
  v9 = (a1 + 56);
  v8 = *(a1 + 56);
  if (v8 < 0)
  {
    v8 = 274;
    *v9 = 274;
  }

  a4.n128_f64[0] = a4.n128_f64[0] - *(a1 + 64);
  sub_24883C9F0(v8, a1, a4);
  v21[0] = &v20;
  v21[1] = &v19;
  v21[2] = &v18;
  v21[3] = &v17;
  v21[4] = &v16;
  sub_24883CB1C(a2, v15);
  sub_24889A5A4(a1, v9, a2, v21, v5);
  v11 = v19;
  result = v20;
  v13 = v17;
  v12 = v18;
  v14 = v16;
  *a3 = v20;
  *(a3 + 1) = v11;
  *(a3 + 2) = v12;
  *(a3 + 3) = v13;
  *(a3 + 4) = v14;
  return result;
}

void sub_248839BF4(double *a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2488A566C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32) * 1.2;
  v15 = 0.0;
  v16 = v14 * 0.0;
  if (a4 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 * v14;
  if (v18 >= v16)
  {
    v21 = v16 + 0.0;
    v22 = a5;
    v19 = 0.666667;
    v23 = v16 + 0.666667;
    if (v22 >= 0.0)
    {
      v15 = v22;
    }

    v24 = v15 * v23;
    v25 = v18 - v21;
    if (v24 <= v18 - v21)
    {
      v27 = v25 - v24;
      if (v27 < 0.000001)
      {
        *a1 = a4;
      }

      v19 = v27 + 0.666667;
    }

    else
    {
      v26 = fmod(v25, v23);
      if (v26 >= 0.666667)
      {
        *a1 = (v23 - v26) / v14 + a4;
      }

      else
      {
        *a1 = a4;
        v19 = v26 + 0.0;
      }
    }
  }

  else
  {
    v19 = v18 - v16;
    v20 = -(v18 - v16);
    if (v19 <= 0.0)
    {
      v15 = v20;
    }

    *a1 = v15 / v14 + a4;
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }
  }

  v28 = 0;
  v29 = 4;
  do
  {
    v30 = v29 >> 1;
    v31 = v28 + (v29 >> 1);
    if (__OFADD__(v28, v29 >> 1))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v31 > 3)
    {
      goto LABEL_87;
    }

    v29 += ~v30;
    if (*(&unk_285B484D8 + 4 * v31 + 5) <= v19)
    {
      v28 = v31 + 1;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29 > 0);
  v32 = 0.0;
  v33 = 0.0;
  if (!v28)
  {
LABEL_33:
    v38 = v19 >= 0.0833333;
    if (v19 >= 0.283333)
    {
      v38 = 2;
    }

    if (v38)
    {
      v32 = dbl_285B48578[4 * v38];
      if (v19 < 0.283333)
      {
        sub_2488A565C();
        sub_2488A564C();
        v40 = v39;
        (*(v11 + 8))(v13, v10);
        v32 = v32 + (1.0 - v32) * v40;
      }
    }

    v41 = 0;
    v42 = 4;
    do
    {
      v43 = v42 >> 1;
      v44 = v41 + (v42 >> 1);
      if (__OFADD__(v41, v42 >> 1))
      {
        goto LABEL_88;
      }

      if (v44 > 3)
      {
        goto LABEL_89;
      }

      v42 += ~v43;
      if (*(&unk_285B485D8 + 4 * v44 + 5) <= v19)
      {
        v41 = v44 + 1;
      }

      else
      {
        v42 = v43;
      }
    }

    while (v42 > 0);
    v45 = 0.0;
    if (!v41)
    {
LABEL_53:
      v50 = 0;
      v51 = 4;
      do
      {
        v52 = v51 >> 1;
        v53 = v50 + (v51 >> 1);
        if (__OFADD__(v50, v51 >> 1))
        {
          goto LABEL_90;
        }

        if (v53 > 3)
        {
          goto LABEL_91;
        }

        v51 += ~v52;
        if (*(&unk_285B48678 + 4 * v53 + 5) <= v19)
        {
          v50 = v53 + 1;
        }

        else
        {
          v51 = v52;
        }
      }

      while (v51 > 0);
      v54 = 1.0;
      if (!v50)
      {
        goto LABEL_68;
      }

      v55 = v50 - 1;
      if (!__OFSUB__(v50, 1))
      {
        if ((v55 & 0x8000000000000000) == 0 && v55 < 4)
        {
          v54 = *(&unk_285B48678 + 4 * v55 + 4);
          if (v50 != 4)
          {
            if (v50 > 3)
            {
              goto LABEL_103;
            }

            v56 = dbl_285B48698[4 * v50];
            sub_2488A565C();
            sub_2488A564C();
            v58 = v57;
            (*(v11 + 8))(v13, v10);
            v54 = v54 + (v56 - v54) * v58;
          }

LABEL_68:
          v59 = 0;
          v60 = 3;
          do
          {
            v61 = v60 >> 1;
            v62 = v59 + (v60 >> 1);
            if (__OFADD__(v59, v60 >> 1))
            {
              goto LABEL_92;
            }

            if (v62 > 2)
            {
              goto LABEL_93;
            }

            v60 += ~v61;
            if (*(&unk_285B48718 + 4 * v62 + 5) <= v19)
            {
              v59 = v62 + 1;
            }

            else
            {
              v60 = v61;
            }
          }

          while (v60 > 0);
          if (v59)
          {
            v63 = v59 - 1;
            if (__OFSUB__(v59, 1))
            {
              goto LABEL_97;
            }

            if ((v63 & 0x8000000000000000) == 0 && v63 < 3)
            {
              v64 = *(&unk_285B48718 + 4 * v63 + 4);
              if (v59 != 3)
              {
                if (v59 > 2)
                {
                  goto LABEL_104;
                }

                v65 = dbl_285B48738[4 * v59];
                sub_2488A565C();
                sub_2488A564C();
                v67 = v66;
                (*(v11 + 8))(v13, v10);
                v64 = v64 + (v65 - v64) * v67;
              }

              goto LABEL_85;
            }

            v64 = 1.0;
            if (v59 == 3)
            {
LABEL_85:
              *a3 = v33;
              a3[1] = v32;
              a3[2] = v45;
              a3[3] = v54;
              a3[4] = v64;
              return;
            }

            __break(1u);
          }

          v64 = 0.0;
          goto LABEL_85;
        }

        if (v50 == 4)
        {
          goto LABEL_68;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      goto LABEL_96;
    }

    v46 = v41 - 1;
    if (!__OFSUB__(v41, 1))
    {
      if ((v46 & 0x8000000000000000) != 0 || v46 >= 4)
      {
        if (v41 != 4)
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }
      }

      else
      {
        v45 = *(&unk_285B485D8 + 4 * v46 + 4);
        if (v41 != 4)
        {
          if (v41 > 3)
          {
            goto LABEL_102;
          }

          v47 = dbl_285B485F8[4 * v41];
          sub_2488A565C();
          sub_2488A564C();
          v49 = v48;
          (*(v11 + 8))(v13, v10);
          v45 = v45 + (v47 - v45) * v49;
        }
      }

      goto LABEL_53;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v34 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if ((v34 & 0x8000000000000000) != 0 || v34 >= 4)
  {
    v33 = 1.0;
    if (v28 == 4)
    {
      goto LABEL_33;
    }

    goto LABEL_98;
  }

  v33 = *(&unk_285B484D8 + 4 * v34 + 4);
  if (v28 == 4)
  {
    goto LABEL_33;
  }

  if (v28 <= 3)
  {
    v35 = dbl_285B484F8[4 * v28];
    sub_2488A565C();
    sub_2488A564C();
    v37 = v36;
    (*(v11 + 8))(v13, v10);
    v33 = v33 + (v35 - v33) * v37;
    goto LABEL_33;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

void sub_24883A2BC(double *a1, uint64_t a2, double a3)
{
  v61 = a2;
  v64 = sub_2488A566C();
  v5 = *(v64 - 8);
  v6 = MEMORY[0x28223BE20](v64);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 13);
  if (v8 < 0)
  {
    v8 = 276;
    *(a1 + 13) = 276;
  }

  v6.n128_f64[0] = a3 - a1[14];
  sub_24883CB54(v8, a1, v6);
  v9 = 0;
  v10 = *(*(a1 + 15) + 16);
  v62 = (v5 + 8);
  v11 = 1;
  v12 = 88;
  v58 = -56;
  v59 = a1;
  v13 = 0.0;
  v60 = 88;
  v14 = 88;
  if (v10 > 0)
  {
    goto LABEL_10;
  }

LABEL_23:
  v18 = a1[14];
  if (*(a1 + 13) == 277)
  {
    v21 = a3 - v18;
    v22 = *(v61 + 32);
    v23 = v22 * 0.0;
    v20 = 1.0;
    goto LABEL_25;
  }

LABEL_32:
  v32 = 0.0;
  v21 = INFINITY;
  if (v11)
  {
    while (1)
    {
      v15 = *a1;
      if (v18 + v21 < *a1)
      {
        v15 = v18 + v21;
      }

      *a1 = v15;
      v13 = v32;
LABEL_8:
      v11 = 0;
      ++v9;
      v14 += 56;
      if (v10 < v9)
      {
        return;
      }

      if (v9 >= v10)
      {
        goto LABEL_23;
      }

      while (1)
      {
LABEL_10:
        if (v9 < 0)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v16 = *(a1 + 15);
        if (v9 >= *(v16 + 2))
        {
          goto LABEL_59;
        }

        v17 = &v16[v14];
        v18 = *&v16[v14 - 24];
        if (v18 <= a3 && *&v16[v14 - 56] + *&v16[v14 - 48] > a3)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 15) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_248858894(v16);
          *(a1 + 15) = v16;
        }

        v25 = *(v16 + 2);
        if (v25 <= v9)
        {
          goto LABEL_63;
        }

        v26 = v25 - 1;
        memmove(&v16[v14 - 56], &v16[v14], v58 + 56 * (v25 - v9));
        *(v16 + 2) = v26;
        *(a1 + 15) = v16;
        --v10;
        v14 = v12 + 56 * v9;
        if (v9 >= v10)
        {
          goto LABEL_23;
        }
      }

      if (*(v17 - 4) != 277)
      {
        goto LABEL_32;
      }

      v20 = *(v17 - 5);
      v21 = a3 - v18;
      v22 = *(v61 + 32);
      v23 = v22 * 0.0;
LABEL_25:
      v27 = v21;
      if (v21 < 0.0)
      {
        v27 = 0.0;
      }

      v28 = v27 * v22;
      if (v28 >= v23)
      {
        v33 = v23 + 0.0;
        v34 = 0.133333;
        v35 = v22 * 0.0 + 0.133333;
        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        v36 = v20 * v35;
        v37 = v28 - v33;
        if (v36 <= v28 - v33)
        {
          v39 = v37 - v36;
          if (v39 >= 0.000001)
          {
            v21 = INFINITY;
          }

          v34 = v39 + 0.133333;
        }

        else
        {
          v38 = fmod(v37, v22 * 0.0 + 0.133333);
          if (v38 >= 0.133333)
          {
            v21 = v21 + (v35 - v38) / v22;
          }

          else
          {
            v34 = v38;
          }
        }

        v29 = v34 + 0.0;
      }

      else
      {
        v29 = v28 - v23;
        v30 = -(v28 - v23);
        v31 = 0.0;
        if (v29 > 0.0)
        {
          v30 = 0.0;
        }

        v21 = v21 + v30 / v22;
        if (v29 < 0.0)
        {
          goto LABEL_46;
        }
      }

      if (v29 >= 0.133333)
      {
        v40 = 2;
        goto LABEL_47;
      }

      v31 = v29;
LABEL_46:
      v40 = v31 >= 0.0;
      if (v31 < 0.0)
      {
        v32 = 0.0;
        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      else
      {
LABEL_47:
        v32 = dbl_285B49230[4 * v40];
        if (v40 != 2)
        {
          v41 = v63;
          sub_2488A565C();
          sub_2488A564C();
          v43 = v42;
          (*v62)(v41, v64);
          v32 = v32 + (0.75 - v32) * v43;
        }

        if ((v11 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  v44 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
LABEL_60:
    __break(1u);
  }

  else if ((v44 & 0x8000000000000000) == 0)
  {
    if (v44 < *(*(a1 + 15) + 16))
    {
      v45 = v63;
      sub_2488A565C();
      sub_2488A564C();
      v47 = v46;
      v48 = (*v62)(v45, v64);
      v65 = &v58;
      v67 = v32;
      v68 = v13;
      v49 = MEMORY[0x277D839F8];
      v50 = *(MEMORY[0x277D839F8] - 8);
      v51 = v50[8];
      v52 = MEMORY[0x28223BE20](v48);
      v66 = v14;
      v53 = &v58 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = v50[2];
      v55 = v54(v53, &v68, v49, v52);
      v56 = MEMORY[0x28223BE20](v55);
      v54(v53, &v67, v49, v56);
      off_285B4A610(v69, v53, v49, v47);
      v57 = v50[1];
      v14 = v66;
      v57(v53, v49);
      v57(v53, v49);
      a1 = v59;
      v12 = v60;
      v13 = v69[0];
      *v59 = a3;
      goto LABEL_8;
    }

    goto LABEL_62;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

void sub_24883A8D0(double *a1, uint64_t a2, double a3)
{
  v61 = a2;
  v64 = sub_2488A566C();
  v5 = *(v64 - 8);
  v6 = MEMORY[0x28223BE20](v64);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 22);
  if (v8 < 0)
  {
    v8 = 276;
    *(a1 + 22) = 276;
  }

  v6.n128_f64[0] = a3 - a1[23];
  sub_24883CC80(v8, a1, v6);
  v9 = 0;
  v10 = *(*(a1 + 24) + 16);
  v62 = (v5 + 8);
  v11 = 1;
  v12 = 88;
  v58 = -56;
  v59 = a1;
  v13 = 0.0;
  v60 = 88;
  v14 = 88;
  if (v10 > 0)
  {
    goto LABEL_10;
  }

LABEL_23:
  v18 = a1[23];
  if (*(a1 + 22) == 277)
  {
    v21 = a3 - v18;
    v22 = *(v61 + 32);
    v23 = v22 * 0.0;
    v20 = 1.0;
    goto LABEL_25;
  }

LABEL_32:
  v32 = 0.0;
  v21 = INFINITY;
  if (v11)
  {
    while (1)
    {
      v15 = *a1;
      if (v18 + v21 < *a1)
      {
        v15 = v18 + v21;
      }

      *a1 = v15;
      v13 = v32;
LABEL_8:
      v11 = 0;
      ++v9;
      v14 += 56;
      if (v10 < v9)
      {
        return;
      }

      if (v9 >= v10)
      {
        goto LABEL_23;
      }

      while (1)
      {
LABEL_10:
        if (v9 < 0)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v16 = *(a1 + 24);
        if (v9 >= *(v16 + 2))
        {
          goto LABEL_59;
        }

        v17 = &v16[v14];
        v18 = *&v16[v14 - 24];
        if (v18 <= a3 && *&v16[v14 - 56] + *&v16[v14 - 48] > a3)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 24) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_248858894(v16);
          *(a1 + 24) = v16;
        }

        v25 = *(v16 + 2);
        if (v25 <= v9)
        {
          goto LABEL_63;
        }

        v26 = v25 - 1;
        memmove(&v16[v14 - 56], &v16[v14], v58 + 56 * (v25 - v9));
        *(v16 + 2) = v26;
        *(a1 + 24) = v16;
        --v10;
        v14 = v12 + 56 * v9;
        if (v9 >= v10)
        {
          goto LABEL_23;
        }
      }

      if (*(v17 - 4) != 277)
      {
        goto LABEL_32;
      }

      v20 = *(v17 - 5);
      v21 = a3 - v18;
      v22 = *(v61 + 32);
      v23 = v22 * 0.0;
LABEL_25:
      v27 = v21;
      if (v21 < 0.0)
      {
        v27 = 0.0;
      }

      v28 = v27 * v22;
      if (v28 >= v23)
      {
        v33 = v23 + 0.0;
        v34 = 0.2;
        v35 = v22 * 0.0 + 0.2;
        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        v36 = v20 * v35;
        v37 = v28 - v33;
        if (v36 <= v28 - v33)
        {
          v39 = v37 - v36;
          if (v39 >= 0.000001)
          {
            v21 = INFINITY;
          }

          v34 = v39 + 0.2;
        }

        else
        {
          v38 = fmod(v37, v22 * 0.0 + 0.2);
          if (v38 >= 0.2)
          {
            v21 = v21 + (v35 - v38) / v22;
          }

          else
          {
            v34 = v38;
          }
        }

        v29 = v34 + 0.0;
      }

      else
      {
        v29 = v28 - v23;
        v30 = -(v28 - v23);
        v31 = 0.0;
        if (v29 > 0.0)
        {
          v30 = 0.0;
        }

        v21 = v21 + v30 / v22;
        if (v29 < 0.0)
        {
          goto LABEL_46;
        }
      }

      if (v29 >= 0.2)
      {
        v40 = 2;
        goto LABEL_47;
      }

      v31 = v29;
LABEL_46:
      v40 = v31 >= 0.0;
      if (v31 < 0.0)
      {
        v32 = 0.75;
        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      else
      {
LABEL_47:
        v32 = dbl_285B49488[4 * v40];
        if (v40 != 2)
        {
          v41 = v63;
          sub_2488A565C();
          sub_2488A564C();
          v43 = v42;
          (*v62)(v41, v64);
          v32 = v32 + (0.0 - v32) * v43;
        }

        if ((v11 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  v44 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
LABEL_60:
    __break(1u);
  }

  else if ((v44 & 0x8000000000000000) == 0)
  {
    if (v44 < *(*(a1 + 24) + 16))
    {
      v45 = v63;
      sub_2488A565C();
      sub_2488A564C();
      v47 = v46;
      v48 = (*v62)(v45, v64);
      v65 = &v58;
      v67 = v32;
      v68 = v13;
      v49 = MEMORY[0x277D839F8];
      v50 = *(MEMORY[0x277D839F8] - 8);
      v51 = v50[8];
      v52 = MEMORY[0x28223BE20](v48);
      v66 = v14;
      v53 = &v58 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = v50[2];
      v55 = v54(v53, &v68, v49, v52);
      v56 = MEMORY[0x28223BE20](v55);
      v54(v53, &v67, v49, v56);
      off_285B4A610(v69, v53, v49, v47);
      v57 = v50[1];
      v14 = v66;
      v57(v53, v49);
      v57(v53, v49);
      a1 = v59;
      v12 = v60;
      v13 = v69[0];
      *v59 = a3;
      goto LABEL_8;
    }

    goto LABEL_62;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

double sub_24883AEE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a4.n128_f64[0];
  v9 = (a1 + 80);
  v8 = *(a1 + 80);
  if (v8 < 0)
  {
    v8 = 276;
    *v9 = 276;
  }

  a4.n128_f64[0] = a4.n128_f64[0] - *(a1 + 88);
  sub_24883CDAC(v8, a1, a4);
  v23[0] = &v22;
  v23[1] = &v21;
  v23[2] = &v20;
  v23[3] = &v19;
  v23[4] = &v18;
  v23[5] = &v17;
  sub_24883CB1C(a2, v16);
  sub_24889AE44(a1, v9, a2, v23, v5);
  result = v22;
  v12 = v20;
  v11 = v21;
  v14 = v18;
  v13 = v19;
  v15 = v17;
  *a3 = v22;
  *(a3 + 1) = v11;
  *(a3 + 2) = v12;
  *(a3 + 3) = v13;
  *(a3 + 4) = v14;
  *(a3 + 5) = v15;
  return result;
}

void sub_24883AFB8(double *a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2488A566C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32) * 1.4;
  v15 = 0.0;
  v16 = v14 * 0.0;
  if (a4 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 * v14;
  if (v18 >= v16)
  {
    v21 = v16 + 0.0;
    v22 = a5;
    v23 = v16 + 1.0;
    if (v22 >= 0.0)
    {
      v15 = v22;
    }

    v24 = v15 * v23;
    v25 = v18 - v21;
    if (v24 <= v18 - v21)
    {
      v27 = v25 - v24;
      if (v27 < 0.000001)
      {
        *a1 = a4;
      }

      v19 = v27 + 1.0;
    }

    else
    {
      v26 = fmod(v25, v23);
      if (v26 >= 1.0)
      {
        *a1 = (v23 - v26) / v14 + a4;
        v19 = 1.0;
      }

      else
      {
        *a1 = a4;
        v19 = v26 + 0.0;
      }
    }
  }

  else
  {
    v19 = v18 - v16;
    v20 = -(v18 - v16);
    if (v19 <= 0.0)
    {
      v15 = v20;
    }

    *a1 = v15 / v14 + a4;
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }
  }

  v28 = 0;
  v29 = 4;
  do
  {
    v30 = v29 >> 1;
    v31 = v28 + (v29 >> 1);
    if (__OFADD__(v28, v29 >> 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v31 > 3)
    {
      goto LABEL_114;
    }

    v29 += ~v30;
    if (*(&unk_285B48798 + 4 * v31 + 5) <= v19)
    {
      v28 = v31 + 1;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29 > 0);
  v32 = 1.0;
  if (!v28)
  {
LABEL_33:
    v37 = 0;
    v38 = 3;
    do
    {
      v39 = v38 >> 1;
      v40 = v37 + (v38 >> 1);
      if (__OFADD__(v37, v38 >> 1))
      {
        goto LABEL_115;
      }

      if (v40 > 2)
      {
        goto LABEL_116;
      }

      v38 += ~v39;
      if (*(&unk_285B48838 + 4 * v40 + 5) <= v19)
      {
        v37 = v40 + 1;
      }

      else
      {
        v38 = v39;
      }
    }

    while (v38 > 0);
    v41 = 1.0;
    if (!v37)
    {
LABEL_48:
      v46 = 0;
      v47 = 4;
      do
      {
        v48 = v47 >> 1;
        v49 = v46 + (v47 >> 1);
        if (__OFADD__(v46, v47 >> 1))
        {
          goto LABEL_117;
        }

        if (v49 > 3)
        {
          goto LABEL_118;
        }

        v47 += ~v48;
        if (*(&unk_285B488B8 + 4 * v49 + 5) <= v19)
        {
          v46 = v49 + 1;
        }

        else
        {
          v47 = v48;
        }
      }

      while (v47 > 0);
      v50 = 1.0;
      if (!v46)
      {
LABEL_63:
        v55 = 0;
        v56 = 4;
        do
        {
          v57 = v56 >> 1;
          v58 = v55 + (v56 >> 1);
          if (__OFADD__(v55, v56 >> 1))
          {
            goto LABEL_119;
          }

          if (v58 > 3)
          {
            goto LABEL_120;
          }

          v56 += ~v57;
          if (*(&unk_285B48958 + 4 * v58 + 5) <= v19)
          {
            v55 = v58 + 1;
          }

          else
          {
            v56 = v57;
          }
        }

        while (v56 > 0);
        if (!v55)
        {
          goto LABEL_79;
        }

        v59 = v55 - 1;
        if (!__OFSUB__(v55, 1))
        {
          if ((v59 & 0x8000000000000000) == 0 && v59 < 4)
          {
            v60 = *(&unk_285B48958 + 4 * v59 + 4);
            if (v55 != 4)
            {
              if (v55 > 3)
              {
                goto LABEL_138;
              }

              v61 = dbl_285B48978[4 * v55];
              sub_2488A565C();
              sub_2488A564C();
              v63 = v62;
              (*(v11 + 8))(v13, v10);
              v60 = v60 + (v61 - v60) * v63;
            }

LABEL_80:
            v64 = 0;
            v65 = 4;
            do
            {
              v66 = v65 >> 1;
              v67 = v64 + (v65 >> 1);
              if (__OFADD__(v64, v65 >> 1))
              {
                goto LABEL_121;
              }

              if (v67 > 3)
              {
                goto LABEL_122;
              }

              v65 += ~v66;
              if (*(&unk_285B489F8 + 4 * v67 + 5) <= v19)
              {
                v64 = v67 + 1;
              }

              else
              {
                v65 = v66;
              }
            }

            while (v65 > 0);
            if (v64)
            {
              v68 = v64 - 1;
              if (__OFSUB__(v64, 1))
              {
                goto LABEL_129;
              }

              if ((v68 & 0x8000000000000000) == 0 && v68 < 4)
              {
                v69 = *(&unk_285B489F8 + 4 * v68 + 4);
                if (v64 != 4)
                {
                  if (v64 > 3)
                  {
                    goto LABEL_139;
                  }

                  v70 = dbl_285B48A18[4 * v64];
                  sub_2488A565C();
                  sub_2488A564C();
                  v72 = v71;
                  (*(v11 + 8))(v13, v10);
                  v69 = v69 + (v70 - v69) * v72;
                }

                goto LABEL_97;
              }

              v69 = 0.0;
              if (v64 == 4)
              {
LABEL_97:
                v73 = 0;
                v74 = 3;
                while (1)
                {
                  v75 = v74 >> 1;
                  v76 = v73 + (v74 >> 1);
                  if (__OFADD__(v73, v74 >> 1))
                  {
                    goto LABEL_123;
                  }

                  if (v76 > 2)
                  {
                    goto LABEL_124;
                  }

                  v74 += ~v75;
                  if (*(&unk_285B48A98 + 4 * v76 + 5) <= v19)
                  {
                    v73 = v76 + 1;
                  }

                  else
                  {
                    v74 = v75;
                  }

                  if (v74 <= 0)
                  {
                    v77 = 0.0;
                    if (v73)
                    {
                      v78 = v73 - 1;
                      if (__OFSUB__(v73, 1))
                      {
                        goto LABEL_130;
                      }

                      if ((v78 & 0x8000000000000000) != 0 || v78 >= 3)
                      {
                        if (v73 != 3)
                        {
                          goto LABEL_134;
                        }
                      }

                      else
                      {
                        v77 = *(&unk_285B48A98 + 4 * v78 + 4);
                        if (v73 != 3)
                        {
                          if (v73 > 2)
                          {
                            goto LABEL_140;
                          }

                          v82 = dbl_285B48AB8[4 * v73];
                          sub_2488A565C();
                          sub_2488A564C();
                          v80 = v79;
                          (*(v11 + 8))(v13, v10);
                          v77 = v77 + (v82 - v77) * v80;
                        }
                      }
                    }

                    *a3 = v32;
                    a3[1] = v41;
                    a3[2] = v50;
                    a3[3] = v60;
                    a3[4] = v69;
                    a3[5] = v77;
                    return;
                  }
                }
              }

              __break(1u);
            }

            v69 = 1.0;
            goto LABEL_97;
          }

          v60 = 0.0;
          if (v55 == 4)
          {
            goto LABEL_80;
          }

          __break(1u);
LABEL_79:
          v60 = 0.75;
          goto LABEL_80;
        }

        goto LABEL_128;
      }

      v51 = v46 - 1;
      if (!__OFSUB__(v46, 1))
      {
        if ((v51 & 0x8000000000000000) != 0 || v51 >= 4)
        {
          if (v46 != 4)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v50 = *(&unk_285B488B8 + 4 * v51 + 4);
          if (v46 != 4)
          {
            if (v46 > 3)
            {
              goto LABEL_137;
            }

            v52 = dbl_285B488D8[4 * v46];
            sub_2488A565C();
            sub_2488A564C();
            v54 = v53;
            (*(v11 + 8))(v13, v10);
            v50 = v50 + (v52 - v50) * v54;
          }
        }

        goto LABEL_63;
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v42 = v37 - 1;
    if (!__OFSUB__(v37, 1))
    {
      if ((v42 & 0x8000000000000000) != 0 || v42 >= 3)
      {
        if (v37 != 3)
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }
      }

      else
      {
        v41 = *(&unk_285B48838 + 4 * v42 + 4);
        if (v37 != 3)
        {
          if (v37 > 2)
          {
            goto LABEL_136;
          }

          v43 = dbl_285B48858[4 * v37];
          sub_2488A565C();
          sub_2488A564C();
          v45 = v44;
          (*(v11 + 8))(v13, v10);
          v41 = v41 + (v43 - v41) * v45;
        }
      }

      goto LABEL_48;
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v33 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if ((v33 & 0x8000000000000000) != 0 || v33 >= 4)
  {
    if (v28 == 4)
    {
      goto LABEL_33;
    }

    goto LABEL_131;
  }

  v32 = *(&unk_285B48798 + 4 * v33 + 4);
  if (v28 == 4)
  {
    goto LABEL_33;
  }

  if (v28 <= 3)
  {
    v34 = dbl_285B487B8[4 * v28];
    sub_2488A565C();
    sub_2488A564C();
    v36 = v35;
    (*(v11 + 8))(v13, v10);
    v32 = v32 + (v34 - v32) * v36;
    goto LABEL_33;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

double sub_24883B804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a4.n128_f64[0];
  v9 = (a1 + 152);
  v8 = *(a1 + 152);
  if (v8 < 0)
  {
    v8 = 276;
    *v9 = 276;
  }

  a4.n128_f64[0] = a4.n128_f64[0] - *(a1 + 160);
  sub_24883CFBC(v8, a1, a4);
  v29[0] = &v28;
  v29[1] = &v27;
  v29[2] = &v26;
  v29[3] = &v25;
  v29[4] = &v24;
  v29[5] = &v23;
  v29[6] = &v22;
  v29[7] = &v21;
  v29[8] = &v20;
  sub_24883CB1C(a2, v19);
  sub_24889B7EC(a1, v9, a2, v29, v5);
  result = v28;
  v12 = v26;
  v11 = v27;
  v14 = v24;
  v13 = v25;
  v16 = v22;
  v15 = v23;
  v17 = v21;
  v18 = v20;
  *a3 = v28;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;
  *(a3 + 56) = v17;
  *(a3 + 64) = v18;
  return result;
}

void sub_24883B904(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2488A566C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32) * 1.6;
  v15 = 0.0;
  v16 = v14 * 0.0;
  if (a4 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 * v14;
  if (v18 >= v16)
  {
    v21 = v16 + 0.0;
    v22 = a5;
    v19 = 1.08333;
    v23 = v16 + 1.08333;
    if (v22 >= 0.0)
    {
      v15 = v22;
    }

    v24 = v15 * v23;
    v25 = v18 - v21;
    if (v24 <= v18 - v21)
    {
      v27 = v25 - v24;
      if (v27 < 0.000001)
      {
        *a1 = a4;
      }

      v19 = v27 + 1.08333;
    }

    else
    {
      v26 = fmod(v25, v23);
      if (v26 >= 1.08333)
      {
        *a1 = (v23 - v26) / v14 + a4;
      }

      else
      {
        *a1 = a4;
        v19 = v26 + 0.0;
      }
    }
  }

  else
  {
    v19 = v18 - v16;
    v20 = -(v18 - v16);
    if (v19 <= 0.0)
    {
      v15 = v20;
    }

    *a1 = v15 / v14 + a4;
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }
  }

  v28 = 0;
  v29 = 4;
  do
  {
    v30 = v29 >> 1;
    v31 = v28 + (v29 >> 1);
    if (__OFADD__(v28, v29 >> 1))
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (v31 > 3)
    {
      goto LABEL_152;
    }

    v29 += ~v30;
    if (*(&unk_285B48B18 + 4 * v31 + 5) <= v19)
    {
      v28 = v31 + 1;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29 > 0);
  v112 = 1.0;
  if (!v28)
  {
LABEL_33:
    v36 = 0;
    v37 = 3;
    do
    {
      v38 = v37 >> 1;
      v39 = v36 + (v37 >> 1);
      if (__OFADD__(v36, v37 >> 1))
      {
        goto LABEL_153;
      }

      if (v39 > 2)
      {
        goto LABEL_154;
      }

      v37 += ~v38;
      if (*(&unk_285B48BB8 + 4 * v39 + 5) <= v19)
      {
        v36 = v39 + 1;
      }

      else
      {
        v37 = v38;
      }
    }

    while (v37 > 0);
    v40 = 1.0;
    if (!v36)
    {
LABEL_48:
      v45 = 0;
      v46 = 4;
      do
      {
        v47 = v46 >> 1;
        v48 = v45 + (v46 >> 1);
        if (__OFADD__(v45, v46 >> 1))
        {
          goto LABEL_155;
        }

        if (v48 > 3)
        {
          goto LABEL_156;
        }

        v46 += ~v47;
        if (*(&unk_285B48C38 + 4 * v48 + 5) <= v19)
        {
          v45 = v48 + 1;
        }

        else
        {
          v46 = v47;
        }
      }

      while (v46 > 0);
      v49 = 1.0;
      if (!v45)
      {
LABEL_63:
        v55 = 0;
        v56 = 4;
        do
        {
          v57 = v56 >> 1;
          v58 = v55 + (v56 >> 1);
          if (__OFADD__(v55, v56 >> 1))
          {
            goto LABEL_157;
          }

          if (v58 > 3)
          {
            goto LABEL_158;
          }

          v56 += ~v57;
          if (*(&unk_285B48CD8 + 4 * v58 + 5) <= v19)
          {
            v55 = v58 + 1;
          }

          else
          {
            v56 = v57;
          }
        }

        while (v56 > 0);
        if (!v55)
        {
          goto LABEL_79;
        }

        v59 = v55 - 1;
        if (!__OFSUB__(v55, 1))
        {
          if ((v59 & 0x8000000000000000) == 0 && v59 < 4)
          {
            v60 = *(&unk_285B48CD8 + 4 * v59 + 4);
            if (v55 != 4)
            {
              if (v55 > 3)
              {
                goto LABEL_184;
              }

              v61 = v49;
              v62 = dbl_285B48CF8[4 * v55];
              sub_2488A565C();
              sub_2488A564C();
              v64 = v63;
              (*(v11 + 8))(v13, v10);
              v60 = v60 + (v62 - v60) * v64;
              v49 = v61;
            }

            goto LABEL_80;
          }

          v60 = 0.0;
          if (v55 == 4)
          {
LABEL_80:
            v65 = 0;
            v66 = 4;
            do
            {
              v67 = v66 >> 1;
              v68 = v65 + (v66 >> 1);
              if (__OFADD__(v65, v66 >> 1))
              {
                goto LABEL_159;
              }

              if (v68 > 3)
              {
                goto LABEL_160;
              }

              v66 += ~v67;
              if (*(&unk_285B48D78 + 4 * v68 + 5) <= v19)
              {
                v65 = v68 + 1;
              }

              else
              {
                v66 = v67;
              }
            }

            while (v66 > 0);
            v69 = 1.0;
            if (!v65)
            {
LABEL_95:
              v75 = 0;
              v76 = 4;
              do
              {
                v77 = v76 >> 1;
                v78 = v75 + (v76 >> 1);
                if (__OFADD__(v75, v76 >> 1))
                {
                  goto LABEL_161;
                }

                if (v78 > 3)
                {
                  goto LABEL_162;
                }

                v76 += ~v77;
                if (*(&unk_285B48E18 + 4 * v78 + 5) <= v19)
                {
                  v75 = v78 + 1;
                }

                else
                {
                  v76 = v77;
                }
              }

              while (v76 > 0);
              v79 = v40;
              v80 = 0.0;
              if (!v75)
              {
                goto LABEL_110;
              }

              v81 = v75 - 1;
              if (!__OFSUB__(v75, 1))
              {
                if ((v81 & 0x8000000000000000) == 0 && v81 < 4)
                {
                  v80 = *(&unk_285B48E18 + 4 * v81 + 4);
                  if (v75 != 4)
                  {
                    if (v75 > 3)
                    {
                      goto LABEL_186;
                    }

                    v82 = v49;
                    v83 = dbl_285B48E38[4 * v75];
                    sub_2488A565C();
                    sub_2488A564C();
                    v85 = v84;
                    (*(v11 + 8))(v13, v10);
                    v80 = v80 + (v83 - v80) * v85;
                    v49 = v82;
                  }

LABEL_110:
                  v86 = 0;
                  v87 = 3;
                  do
                  {
                    v88 = v87 >> 1;
                    v89 = v86 + (v87 >> 1);
                    if (__OFADD__(v86, v87 >> 1))
                    {
                      goto LABEL_163;
                    }

                    if (v89 > 2)
                    {
                      goto LABEL_164;
                    }

                    v87 += ~v88;
                    if (*(&unk_285B48EB8 + 4 * v89 + 5) <= v19)
                    {
                      v86 = v89 + 1;
                    }

                    else
                    {
                      v87 = v88;
                    }
                  }

                  while (v87 > 0);
                  if (v86)
                  {
                    v90 = v86 - 1;
                    if (__OFSUB__(v86, 1))
                    {
                      goto LABEL_173;
                    }

                    if ((v90 & 0x8000000000000000) == 0 && v90 < 3)
                    {
                      v91 = *(&unk_285B48EB8 + 4 * v90 + 4);
                      if (v86 != 3)
                      {
                        v111 = v49;
                        if (v86 > 2)
                        {
                          goto LABEL_187;
                        }

                        v92 = dbl_285B48ED8[4 * v86];
                        sub_2488A565C();
                        sub_2488A564C();
                        v94 = v93;
                        (*(v11 + 8))(v13, v10);
                        v91 = v91 + (v92 - v91) * v94;
                        v49 = v111;
                      }

                      goto LABEL_127;
                    }

                    v91 = 0.0;
                    if (v86 == 3)
                    {
LABEL_127:
                      v95 = v19 >= 0.0166667;
                      if (v19 >= 1.1)
                      {
                        v95 = 2;
                      }

                      if (v95)
                      {
                        v96 = byte_285B48F38[32 * v95];
                        if (v19 < 1.1)
                        {
                          v97 = v49;
                          v98 = byte_285B48F38[32 * v95 + 32];
                          sub_2488A565C();
                          sub_2488A564C();
                          v100 = v99;
                          (*(v11 + 8))(v13, v10);
                          if (v100 >= 1.0)
                          {
                            v96 = v98;
                          }

                          v49 = v97;
                        }
                      }

                      else
                      {
                        v96 = 1;
                      }

                      v101 = 0;
                      v102 = 4;
                      while (1)
                      {
                        v103 = v102 >> 1;
                        v104 = v101 + (v102 >> 1);
                        if (__OFADD__(v101, v102 >> 1))
                        {
                          goto LABEL_165;
                        }

                        if (v104 > 3)
                        {
                          goto LABEL_166;
                        }

                        v102 += ~v103;
                        if (*(&unk_285B48F98 + 4 * v104 + 5) <= v19)
                        {
                          v101 = v104 + 1;
                        }

                        else
                        {
                          v102 = v103;
                        }

                        if (v102 <= 0)
                        {
                          v105 = 0.0;
                          if (v101)
                          {
                            v106 = v101 - 1;
                            if (__OFSUB__(v101, 1))
                            {
                              goto LABEL_174;
                            }

                            if ((v106 & 0x8000000000000000) != 0 || v106 >= 4)
                            {
                              if (v101 != 4)
                              {
                                goto LABEL_180;
                              }
                            }

                            else
                            {
                              v105 = *(&unk_285B48F98 + 4 * v106 + 4);
                              if (v101 != 4)
                              {
                                v111 = v49;
                                if (v101 > 3)
                                {
                                  goto LABEL_188;
                                }

                                v110 = dbl_285B48FB8[4 * v101];
                                sub_2488A565C();
                                sub_2488A564C();
                                v108 = v107;
                                (*(v11 + 8))(v13, v10);
                                v49 = v111;
                                v105 = v105 + (v110 - v105) * v108;
                              }
                            }
                          }

                          *a3 = v112;
                          *(a3 + 8) = v79;
                          *(a3 + 16) = v49;
                          *(a3 + 24) = v60;
                          *(a3 + 32) = v69;
                          *(a3 + 40) = v80;
                          *(a3 + 48) = v91;
                          *(a3 + 56) = v96;
                          *(a3 + 64) = v105;
                          return;
                        }
                      }
                    }

                    __break(1u);
                  }

                  v91 = 1.0;
                  goto LABEL_127;
                }

                if (v75 == 4)
                {
                  goto LABEL_110;
                }

LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
                goto LABEL_181;
              }

              goto LABEL_172;
            }

            v70 = v65 - 1;
            if (!__OFSUB__(v65, 1))
            {
              if ((v70 & 0x8000000000000000) != 0 || v70 >= 4)
              {
                if (v65 != 4)
                {
LABEL_178:
                  __break(1u);
                  goto LABEL_179;
                }
              }

              else
              {
                v69 = *(&unk_285B48D78 + 4 * v70 + 4);
                if (v65 != 4)
                {
                  if (v65 > 3)
                  {
                    goto LABEL_185;
                  }

                  v71 = v49;
                  v72 = dbl_285B48D98[4 * v65];
                  sub_2488A565C();
                  sub_2488A564C();
                  v74 = v73;
                  (*(v11 + 8))(v13, v10);
                  v69 = v69 + (v72 - v69) * v74;
                  v49 = v71;
                }
              }

              goto LABEL_95;
            }

LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          __break(1u);
LABEL_79:
          v60 = 0.75;
          goto LABEL_80;
        }

LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v50 = v45 - 1;
      if (!__OFSUB__(v45, 1))
      {
        if ((v50 & 0x8000000000000000) != 0 || v50 >= 4)
        {
          if (v45 != 4)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }
        }

        else
        {
          v49 = *(&unk_285B48C38 + 4 * v50 + 4);
          if (v45 != 4)
          {
            if (v45 > 3)
            {
              goto LABEL_183;
            }

            v51 = *(&unk_285B48C38 + 4 * v50 + 4);
            v52 = dbl_285B48C58[4 * v45];
            sub_2488A565C();
            sub_2488A564C();
            v54 = v53;
            (*(v11 + 8))(v13, v10);
            v49 = v51 + (v52 - v51) * v54;
          }
        }

        goto LABEL_63;
      }

LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v41 = v36 - 1;
    if (!__OFSUB__(v36, 1))
    {
      if ((v41 & 0x8000000000000000) != 0 || v41 >= 3)
      {
        if (v36 != 3)
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }
      }

      else
      {
        v40 = *(&unk_285B48BB8 + 4 * v41 + 4);
        if (v36 != 3)
        {
          if (v36 > 2)
          {
            goto LABEL_182;
          }

          v42 = dbl_285B48BD8[4 * v36];
          sub_2488A565C();
          sub_2488A564C();
          v44 = v43;
          (*(v11 + 8))(v13, v10);
          v40 = v40 + (v42 - v40) * v44;
        }
      }

      goto LABEL_48;
    }

LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v32 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if ((v32 & 0x8000000000000000) != 0 || v32 >= 4)
  {
    if (v28 == 4)
    {
      goto LABEL_33;
    }

    goto LABEL_175;
  }

  v112 = *(&unk_285B48B18 + 4 * v32 + 4);
  if (v28 == 4)
  {
    goto LABEL_33;
  }

  if (v28 <= 3)
  {
    v33 = dbl_285B48B38[4 * v28];
    sub_2488A565C();
    sub_2488A564C();
    v35 = v34;
    (*(v11 + 8))(v13, v10);
    v112 = v112 + (v33 - v112) * v35;
    goto LABEL_33;
  }

LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
}

uint64_t sub_24883C484()
{
  if ((*(v0 + 224) & 1) == 0 && (*(v0 + 8) & 0x8000000000000000) == 0)
  {
    *(v0 + 8) = -1;

    *(v0 + 24) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 226) & 1) == 0 && (*(v0 + 32) & 0x8000000000000000) == 0)
  {
    *(v0 + 32) = -1;

    *(v0 + 48) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 225) & 1) == 0 && (*(v0 + 56) & 0x8000000000000000) == 0)
  {
    *(v0 + 56) = -1;

    *(v0 + 72) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 228) & 1) == 0 && (*(v0 + 80) & 0x8000000000000000) == 0)
  {
    *(v0 + 80) = -1;

    *(v0 + 96) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 229) & 1) == 0 && (*(v0 + 104) & 0x8000000000000000) == 0)
  {
    *(v0 + 104) = -1;

    *(v0 + 120) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 230) & 1) == 0 && (*(v0 + 128) & 0x8000000000000000) == 0)
  {
    *(v0 + 128) = -1;

    *(v0 + 144) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 231) & 1) == 0 && (*(v0 + 152) & 0x8000000000000000) == 0)
  {
    *(v0 + 152) = -1;

    *(v0 + 168) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 232) & 1) == 0 && (*(v0 + 176) & 0x8000000000000000) == 0)
  {
    *(v0 + 176) = -1;

    *(v0 + 192) = MEMORY[0x277D84F90];
  }

  if ((*(v0 + 227) & 1) == 0 && (*(v0 + 200) & 0x8000000000000000) == 0)
  {
    *(v0 + 200) = -1;

    *(v0 + 216) = MEMORY[0x277D84F90];
  }

  *v0 = 0x7FF0000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  return result;
}

uint64_t sub_24883C634()
{
  v0 = sub_2488A538C();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_2488A544C();
  qword_27EEB0FF8 = result;
  return result;
}

uint64_t sub_24883C744(double a1, uint64_t a2, uint64_t *a3)
{
  sub_2488A53DC();
  v4 = sub_2488A542C();

  *a3 = v4;
  return result;
}

double sub_24883C798()
{
  sub_2488A520C();
  result = *&v1;
  xmmword_27EEB1028 = v1;
  unk_27EEB1038 = v2;
  byte_27EEB1048 = v3;
  return result;
}

uint64_t sub_24883C800()
{
  v0 = sub_2488A538C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2488A4CDC();
  __swift_allocate_value_buffer(v4, qword_27EEB1058);
  __swift_project_value_buffer(v4, qword_27EEB1058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10B0, &qword_2488A65B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2488A6490;
  v6 = *MEMORY[0x277CE0EE0];
  v7 = *(v1 + 104);
  v7(v3, v6, v0);
  sub_2488A544C();
  *(v5 + 32) = sub_2488A559C();
  *(v5 + 40) = v8;
  v7(v3, v6, v0);
  sub_2488A544C();
  *(v5 + 48) = sub_2488A559C();
  *(v5 + 56) = v9;
  sub_2488A55AC();
  sub_2488A4CCC();
}

BOOL sub_24883C9F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 274)
  {
    v3 = *(a2 + 64);
    v4 = v3 + a3.n128_f64[0];
    v5 = *(a2 + 56);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 72);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 72) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 72) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 274;
        *(v7 + 72) = v6;
      }

      else
      {
        a1 = 274;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 56) = 275;
    *(a2 + 64) = v4;
  }

  return a1 == 274;
}

BOOL sub_24883CB54(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 112);
    v4 = v3 + a3.n128_f64[0];
    v5 = *(a2 + 104);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 120);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 120) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 120) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 120) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 104) = 277;
    *(a2 + 112) = v4;
  }

  return a1 == 276;
}

BOOL sub_24883CC80(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 184);
    v4 = v3 + a3.n128_f64[0];
    v5 = *(a2 + 176);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 192);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 192) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 192) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 192) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 176) = 277;
    *(a2 + 184) = v4;
  }

  return a1 == 276;
}

BOOL sub_24883CDAC(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 88);
    v4 = v3 + a3.n128_f64[0];
    v5 = *(a2 + 80);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 96);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 96) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 96) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 96) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 80) = 277;
    *(a2 + 88) = v4;
  }

  return a1 == 276;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

BOOL sub_24883CFBC(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 276)
  {
    v3 = *(a2 + 160);
    v4 = v3 + a3.n128_f64[0];
    v5 = *(a2 + 152);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 168);
      v7 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 168) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v7;
      }

      else
      {
        v13 = sub_24885890C(0, *(v6 + 2) + 1, 1, v6);
        a2 = v7;
        v6 = v13;
        *(v7 + 168) = v13;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v14 = sub_24885890C((v9 > 1), v10 + 1, 1, v6);
        a2 = v7;
        v6 = v14;
        a1 = 276;
        *(v7 + 168) = v6;
      }

      else
      {
        a1 = 276;
      }

      v11 = &v6[56 * v10];
      *(v11 + 4) = v4;
      v4 = v4 + 0.0;
      *(v6 + 2) = v10 + 1;
      *(v11 + 40) = xmmword_2488A64A0;
      *(v11 + 7) = v5;
      *(v11 + 8) = v3;
      *(v11 + 72) = xmmword_2488A64B0;
    }

    *(a2 + 152) = 284;
    *(a2 + 160) = v4;
  }

  return a1 == 276;
}

void sub_24883D110(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_24883D1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24883D1E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24883D284(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24883D2CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24883D340()
{
  v0 = sub_2488A495C();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v25 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2488A49EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = sub_2488A56BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  v16 = sub_2488A497C();
  __swift_allocate_value_buffer(v16, qword_27EEB1C28);
  v24[1] = __swift_project_value_buffer(v16, qword_27EEB1C28);
  v17 = v15;
  sub_2488A56AC();
  sub_24883E438();
  v18 = sub_2488A590C();
  if (!v18)
  {
    v18 = [objc_opt_self() mainBundle];
  }

  v19 = v18;
  sub_2488A49DC();
  (*(v10 + 16))(v12, v15, v9);
  (*(v3 + 16))(v5, v8, v2);
  v20 = [v19 bundleURL];
  v24[0] = v2;
  v21 = v20;
  v22 = v25;
  sub_2488A49AC();

  (*(v26 + 104))(v22, *MEMORY[0x277CC9118], v27);
  sub_2488A498C();

  (*(v3 + 8))(v8, v24[0]);
  return (*(v10 + 8))(v17, v9);
}

__n128 sub_24883D6C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10C8, &qword_2488A6728);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-v5];
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10D0, &qword_2488A6730);
  sub_24883E5F8(&qword_27EEB10D8, &qword_27EEB10D0, &qword_2488A6730, MEMORY[0x277CE14C0]);
  sub_2488A54CC();
  v7 = sub_2488A543C();
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(v4 + 44)];
  *v9 = KeyPath;
  v9[1] = v7;
  sub_2488A55FC();
  sub_2488A4DCC();
  sub_24883E06C(v6, a1);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10E0, &qword_2488A6768) + 36);
  v11 = v21;
  *(v10 + 64) = v20;
  *(v10 + 80) = v11;
  *(v10 + 96) = v22;
  v12 = v17;
  *v10 = v16;
  *(v10 + 16) = v12;
  result = v19;
  *(v10 + 32) = v18;
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_24883D8A4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2488A4F2C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10E8, &qword_2488A6770);
  MEMORY[0x28223BE20](v44);
  v7 = (&v39 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10F0, &qword_2488A6778);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v39 - v12;
  v13 = sub_2488A497C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB1070 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_27EEB1C28);
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2488A524C();
  v40 = v19;
  v41 = v18;
  v42 = v20;
  v43 = v21;
  v22 = -(a1[2] * a1[3]);
  *v7 = sub_2488A4F1C();
  v7[1] = v22;
  *(v7 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10F8, &unk_2488A6780);
  v23 = *(a1 + 1);
  v51 = *(a1 + 4);
  v52 = v23;
  v24 = swift_allocObject();
  v25 = *(a1 + 1);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v25;
  *(v24 + 48) = a1[4];
  swift_bridgeObjectRetain_n();

  sub_24883E12C(&v52, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1100, &qword_2488A6790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1108, &qword_2488A6798);
  sub_24883E19C();
  sub_24883E24C();
  sub_24883E358();
  sub_2488A555C();
  v27 = v47;
  v26 = v48;
  v28 = v45;
  (*(v47 + 104))(v45, *MEMORY[0x277CE00F0], v48);
  sub_24883E5F8(&qword_27EEB1150, &qword_27EEB10E8, &qword_2488A6770, MEMORY[0x277CE1138]);
  v29 = v49;
  sub_2488A52BC();
  (*(v27 + 8))(v28, v26);
  sub_24883E3B0(v7);
  v30 = *(v9 + 16);
  v31 = v46;
  v30(v46, v29, v8);
  v32 = v41;
  v33 = v8;
  v34 = v40;
  *a2 = v41;
  *(a2 + 8) = v34;
  v35 = v42 & 1;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v43;
  *(a2 + 32) = 0x4014000000000000;
  *(a2 + 40) = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1158, &qword_2488A67B0);
  v30((a2 + *(v36 + 64)), v31, v33);
  sub_24883E418(v32, v34, v35);
  v37 = *(v9 + 8);

  v37(v49, v33);
  v37(v31, v33);
  sub_24883E428(v32, v34, v35);
}

double sub_24883DDDC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = *(*a1 + 32);
  v7 = *(a2 + 32);
  if (v7 >> 62)
  {
LABEL_22:
    v8 = sub_2488A596C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = 1;
      goto LABEL_19;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1DB410](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    swift_beginAccess();
    if (*(v10 + 16) == *(v4 + 16) && *(v10 + 24) == *(v4 + 24))
    {
      break;
    }

    v12 = sub_2488A5A8C();

    if (v12)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_21;
    }
  }

LABEL_19:
  result = v9;
  *a3 = v4;
  *(a3 + 8) = 0x4030501020607uLL >> (8 * v6);
  *(a3 + 16) = v5;
  *(a3 + 24) = xmmword_2488A6680;
  *(a3 + 40) = v9;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24883E014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2488A4E2C();
  *a1 = result;
  return result;
}

uint64_t sub_24883E06C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10C8, &qword_2488A6728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24883E0DC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24883E12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB17F0, &unk_2488A7500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24883E19C()
{
  result = qword_27EEB1110;
  if (!qword_27EEB1110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1100, &qword_2488A6790);
    sub_24883E5F8(&qword_27EEB1118, &qword_27EEB1120, &qword_2488A67A0, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1110);
  }

  return result;
}

unint64_t sub_24883E24C()
{
  result = qword_27EEB1128;
  if (!qword_27EEB1128)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1108, &qword_2488A6798);
    sub_24883E304(v1, v2, v3);
    sub_24883E5F8(&qword_27EEB1138, &qword_27EEB1140, &qword_2488A67A8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1128);
  }

  return result;
}

unint64_t sub_24883E304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1130;
  if (!qword_27EEB1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1130);
  }

  return result;
}

unint64_t sub_24883E358()
{
  result = qword_27EEB1148;
  if (!qword_27EEB1148)
  {
    type metadata accessor for DSLightweightTagInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1148);
  }

  return result;
}

uint64_t sub_24883E3B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB10E8, &qword_2488A6770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24883E418(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24883E428(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24883E438()
{
  result = qword_27EEB1590;
  if (!qword_27EEB1590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB1590);
  }

  return result;
}

unint64_t sub_24883E488()
{
  result = qword_27EEB1160;
  if (!qword_27EEB1160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB10E0, &qword_2488A6768);
    sub_24883E514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1160);
  }

  return result;
}

unint64_t sub_24883E514()
{
  result = qword_27EEB1168;
  if (!qword_27EEB1168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB10C8, &qword_2488A6728);
    sub_24883E5F8(&qword_27EEB1170, &qword_27EEB1178, &qword_2488A67B8, MEMORY[0x277CDEFF0]);
    sub_24883E5F8(&qword_27EEB1180, &qword_27EEB1188, &unk_2488A67C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1168);
  }

  return result;
}

uint64_t sub_24883E5F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_24883E640()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_27EEB1C40 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_27EEB1C40 = 0;
  return result;
}

void sub_24883E6EC(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_2488A56DC();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_24883E75C()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_27EEB1C68 = result;
  return result;
}

uint64_t sub_24883E7E0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_24883E840()
{
  if (qword_27EEB1090 != -1)
  {
    swift_once();
  }

  return byte_27EEB1C68;
}

id sub_24883E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24883EC18(a1, a2, a3);
  sub_2488A4EEC();
  result = v5;
  if (!v5)
  {
    v4 = [objc_opt_self() defaultStyleConfiguration];

    return v4;
  }

  return result;
}

void *sub_24883E910@<X0>(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  sub_24883EA9C(a3, a1, a4);
  result = sub_2488A58FC();
  *a2 = v6;
  return result;
}

id sub_24883E970@<X0>(void *a1@<X8>)
{
  if (qword_27EEB1078 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27EEB1C40;
  *a1 = qword_27EEB1C40;

  return v2;
}

uint64_t sub_24883E9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24883EAF0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_24883EA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1190;
  if (!qword_27EEB1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1190);
  }

  return result;
}

unint64_t sub_24883EA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1198;
  if (!qword_27EEB1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1198);
  }

  return result;
}

unint64_t sub_24883EAF0()
{
  result = qword_27EEB11A0;
  if (!qword_27EEB11A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB11A8, &unk_2488A6840);
    sub_24883EB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB11A0);
  }

  return result;
}

unint64_t sub_24883EB74()
{
  result = qword_27EEB11B0;
  if (!qword_27EEB11B0)
  {
    sub_24883EBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB11B0);
  }

  return result;
}

unint64_t sub_24883EBCC()
{
  result = qword_27EEB11B8;
  if (!qword_27EEB11B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB11B8);
  }

  return result;
}

unint64_t sub_24883EC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1860;
  if (!qword_27EEB1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1860);
  }

  return result;
}

uint64_t LabelColor.description.getter()
{
  v1 = *v0;
  v2 = 2036429383;
  v3 = 6579538;
  if (v1 != 5)
  {
    v3 = 0x65676E61724FLL;
  }

  v4 = 1702194242;
  if (v1 != 3)
  {
    v4 = 0x776F6C6C6559;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E65657247;
  if (v1 != 1)
  {
    v5 = 0x656C70727550;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t LabelColor.debugDescription.getter()
{
  v1 = *v0;
  sub_2488A59EC();

  strcpy(v14, "<LabelColor:");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  v2 = sub_2488A5A7C();
  MEMORY[0x24C1DB190](v2);

  MEMORY[0x24C1DB190](10016, 0xE200000000000000);
  v3 = 0xE400000000000000;
  v4 = 2036429383;
  v5 = 0xE300000000000000;
  v6 = 6579538;
  if (v1 != 5)
  {
    v6 = 0x65676E61724FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702194242;
  if (v1 != 3)
  {
    v8 = 0x776F6C6C6559;
    v7 = 0xE600000000000000;
  }

  if (v1 <= 4)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6E65657247;
  if (v1 != 1)
  {
    v10 = 0x656C70727550;
    v9 = 0xE600000000000000;
  }

  if (v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (v1 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v1 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x24C1DB190](v11, v12);

  MEMORY[0x24C1DB190](15911, 0xE200000000000000);
  return v14[0];
}

DesktopServicesUI::LabelColor_optional __swiftcall LabelColor.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24883EF08()
{
  v1 = *v0;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v1 + 1);
  return sub_2488A5AFC();
}

uint64_t sub_24883EF80(uint64_t a1)
{
  v2 = *v1;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v2 + 1);
  return sub_2488A5AFC();
}

UITraitCollection_optional __swiftcall DSFolderIconCustomizationApplicator.initialTraitCollection()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

uint64_t sub_24883F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248851654(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24883F0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248851654(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24883F11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_248851654(a1, a2, a3);
  sub_2488A510C();
  __break(1u);
}

uint64_t sub_24883F194@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_24883F254(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24883F3BC(v1, v2);
}

uint64_t sub_24883F294()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24883F35C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24883F3BC(v1, v2);
}

uint64_t sub_24883F3BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_2488A5A8C() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
    sub_2488A4A1C();
  }
}

uint64_t sub_24883F510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t (*sub_24883F59C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_24883F144(v4);
  return sub_24883F6D4;
}

uint64_t sub_24883F730@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24883F808()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24883F8E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_2488A5A8C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A1C();
}

uint64_t sub_24883FA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

uint64_t (*sub_24883FAD8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_24883F6E0(v4);
  return sub_24883FC10;
}

uint64_t sub_24883FC6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24883FD8C()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24883FE6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_2488A5A8C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A1C();
}

uint64_t sub_24883FFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t (*sub_24884005C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_24883FC1C(v4);
  return sub_248840194;
}

uint64_t sub_2488401F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_2488402DC()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
}

uint64_t sub_2488403C4(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24884F334(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
    sub_2488A4A1C();
  }
}

uint64_t sub_24884050C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

uint64_t (*sub_248840574(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_2488401A0(v4);
  return sub_2488406AC;
}

uint64_t sub_24884070C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_2488407F0()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_2488408A4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 72) == v2)
  {
    *(v1 + 72) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
    sub_2488A4A1C();
  }

  return result;
}

uint64_t (*sub_2488409C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  *v4 = v1;
  swift_getKeyPath();
  sub_2488A4A4C();

  v4[7] = sub_2488406B8(v4);
  return sub_248840B00;
}

void sub_248840B0C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_2488A4A3C();

  free(v3);
}

uint64_t sub_248840BA0()
{
  v1 = v0;
  swift_getKeyPath();
  *&v14 = v0;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v2 = v0[7];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v1[6];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v15 = MEMORY[0x277D837D0];
    *&v14 = v3;
    *(&v14 + 1) = v2;
    sub_24884F64C(&v14, v13);

    v5 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = v5;
    sub_24884FE18(v13, 7174515, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    return v16[0];
  }

  else
  {
LABEL_6:
    swift_getKeyPath();
    *&v14 = v1;
    sub_2488A4A2C();

    swift_beginAccess();
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[4];
      v10 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v10 = v9 & 0xFFFFFFFFFFFFLL;
      }

      result = MEMORY[0x277D84F98];
      if (v10)
      {
        v15 = MEMORY[0x277D837D0];
        *&v14 = v9;
        *(&v14 + 1) = v8;
        v11 = MEMORY[0x277D84F98];
        sub_24884F64C(&v14, v13);

        v12 = swift_isUniquelyReferenced_nonNull_native();
        sub_24884FE18(v13, 0x696A6F6D65, 0xE500000000000000, v12);
        return v11;
      }
    }

    else
    {
      return MEMORY[0x277D84F98];
    }
  }

  return result;
}

unint64_t sub_248840DA8()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_2488A596C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  while (v2)
  {
    if (__OFSUB__(v2--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1DB410](v2, v1);
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    v5 = *(v4 + 32);

    if (v5 != 7)
    {
      MEMORY[0x28223BE20](v6);
      v9 = v2;
      sub_24885053C(&v9, &v10);
      v7 = v10;
      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:

  return v7;
}

uint64_t DSFolderIconInfo.__allocating_init(name:symbol:emoji:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = swift_allocObject();
  sub_2488A4A5C();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 72) = a7;
  *(v16 + 64) = a8;
  return v16;
}

uint64_t DSFolderIconInfo.init(name:symbol:emoji:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 72) = 1;
  sub_2488A4A5C();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  *(v8 + 48) = a3;
  *(v8 + 56) = a4;

  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 72) = a7;
  *(v8 + 64) = a8;
  return v8;
}

uint64_t DSFolderIconInfo.__allocating_init(name:dictionary:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2488A4A5C();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a3 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = sub_24884F6E0(7174515, 0xE300000000000000);
  if ((v13 & 1) == 0)
  {
    v11 = 0;
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  sub_24885055C(*(a3 + 56) + 32 * v12, v24);
  v14 = swift_dynamicCast();
  v11 = v22;
  v15 = v23;
  if (!v14)
  {
    v11 = 0;
    v15 = 0;
  }

LABEL_7:
  *(v10 + 48) = v11;
  *(v10 + 56) = v15;
  if (*(a3 + 16) && (v16 = sub_24884F6E0(0x696A6F6D65, 0xE500000000000000), (v17 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v16, v24);

    v18 = swift_dynamicCast();
    v19 = v22;
    v20 = v23;
    if (!v18)
    {
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {

    v19 = 0;
    v20 = 0;
  }

  *(v10 + 32) = v19;
  *(v10 + 40) = v20;
  *(v10 + 72) = a4 & 1;
  *(v10 + 64) = a5;
  return v10;
}

uint64_t DSFolderIconInfo.init(name:dictionary:folderEmpty:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 72) = 1;
  sub_2488A4A5C();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (*(a3 + 16) && (v12 = sub_24884F6E0(7174515, 0xE300000000000000), (v13 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v12, v25);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v23;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v24;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  *(v6 + 48) = v15;
  *(v6 + 56) = v16;
  if (*(a3 + 16) && (v17 = sub_24884F6E0(0x696A6F6D65, 0xE500000000000000), (v18 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v17, v25);

    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v23;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v24;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {

    v20 = 0;
    v21 = 0;
  }

  *(v6 + 32) = v20;
  *(v6 + 40) = v21;
  *(v6 + 72) = a4 & 1;
  *(v6 + 64) = a5;
  return v6;
}

uint64_t DSFolderIconInfo.__allocating_init(name:symbol:emoji:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 72) = 1;
  sub_2488A4A5C();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  *(v14 + 64) = a7;
  return v14;
}

uint64_t DSFolderIconInfo.init(name:symbol:emoji:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 72) = 1;
  sub_2488A4A5C();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  *(v7 + 48) = a3;
  *(v7 + 56) = a4;

  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t DSFolderIconInfo.__allocating_init(name:dictionary:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DSFolderIconInfo.init(name:dictionary:tags:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DSFolderIconInfo.init(name:dictionary:tags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 72) = 1;
  sub_2488A4A5C();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (*(a3 + 16) && (v10 = sub_24884F6E0(7174515, 0xE300000000000000), (v11 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v10, v23);
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = v21;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v22;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *(v5 + 48) = v13;
  *(v5 + 56) = v14;
  if (*(a3 + 16) && (v15 = sub_24884F6E0(0x696A6F6D65, 0xE500000000000000), (v16 & 1) != 0))
  {
    sub_24885055C(*(a3 + 56) + 32 * v15, v23);

    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v21;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v22;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {

    v18 = 0;
    v19 = 0;
  }

  *(v5 + 32) = v18;
  *(v5 + 40) = v19;
  *(v5 + 64) = a4;
  return v5;
}

uint64_t sub_248841698()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v3 = *(v0 + 56);
  v12 = *(v0 + 48);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(v0 + 40);
  v11 = *(v0 + 32);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v5 = *(v0 + 72);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v6 = *(v0 + 64);
  type metadata accessor for DSFolderIconInfo(0);
  v7 = swift_allocObject();

  sub_2488A4A5C();
  *&v9 = v11;
  *&v8 = v12;
  *(&v9 + 1) = v4;
  *(&v8 + 1) = v3;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *(v7 + 32) = v9;
  *(v7 + 48) = v8;
  *(v7 + 72) = v5;
  *(v7 + 64) = v6;
  return v7;
}

uint64_t sub_248841900(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v6 = *(v1 + 56);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    if (v5 == *(v1 + 48) && v4 == v6)
    {
    }

    else
    {
      v7 = sub_2488A5A8C();

      if ((v7 & 1) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  else if (v6)
  {
    goto LABEL_50;
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_getKeyPath();

  sub_2488A4A2C();

  swift_beginAccess();
  v10 = *(v2 + 40);
  if (!v8)
  {
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_50:
    v19 = 1;
    return v19 & 1;
  }

  if (!v10)
  {
LABEL_14:

    goto LABEL_50;
  }

  if (v9 == *(v2 + 32) && v8 == v10)
  {

    goto LABEL_18;
  }

  v11 = sub_2488A5A8C();

  if ((v11 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_18:
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v12 = *(a1 + 72);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  if (v12 != *(v2 + 72))
  {
    goto LABEL_50;
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v13 = *(a1 + 64);
  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_21;
    }

LABEL_27:
    v15 = 0;
    goto LABEL_28;
  }

  result = sub_2488A596C();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_21:
  v15 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_44:

    v15 = MEMORY[0x24C1DB410](v15, v13);

    goto LABEL_28;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:

    v16 = MEMORY[0x24C1DB410](v2, v13);

    if (v15)
    {
LABEL_35:
      if (v16)
      {
        swift_beginAccess();
        v17 = *(v15 + 16);
        v18 = *(v15 + 24);
        swift_beginAccess();
        if (v17 == *(v16 + 16) && v18 == *(v16 + 24))
        {

          v19 = 0;
        }

        else
        {
          v20 = sub_2488A5A8C();

          v19 = v20 ^ 1;
        }

        return v19 & 1;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (v16)
    {
LABEL_49:

      goto LABEL_50;
    }

LABEL_52:
    v19 = 0;
    return v19 & 1;
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_54;
  }

  v15 = *(v13 + 8 * v15 + 32);

LABEL_28:
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v13 = *(v2 + 64);
  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_30;
    }

LABEL_41:
    if (v15)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  result = sub_2488A596C();
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_30:
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_47;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v2 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v13 + 8 * v2 + 32);

    if (v15)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_248841E68(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_2488A576C();
  return sub_2488A57DC();
}

uint64_t sub_248841EE8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  sub_24883F3BC(v4, v5);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  sub_24883F8E8(v6, v7);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);

  sub_24883FE6C(v8, v9);
  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v10 = *(a1 + 72);
  swift_beginAccess();
  if (v10 == *(v2 + 72))
  {
    *(v2 + 72) = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488A4A1C();
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();

  return sub_2488403C4(v12);
}

char *DSFolderIconInfo.deinit()
{

  v1 = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  v2 = sub_2488A4A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DSFolderIconInfo.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17DesktopServicesUI16DSFolderIconInfo___observationRegistrar;
  v2 = sub_2488A4A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t static DSFolderCustomizationController.controller(forFolder:allTags:delegate:retainDelegate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11D0, &qword_2488A69C8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  type metadata accessor for FolderCustomizationModel(0);
  swift_allocObject();

  swift_unknownObjectRetain();

  v17 = sub_2488444CC(v16, a2, a3, a4, v5);
  sub_248850668(v17, v18, v19);
  sub_2488A4D8C();
  (*(v10 + 16))(v12, v15, v9);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11E0, &qword_2488A69D0));
  v21 = sub_2488A4FBC();

  (*(v10 + 8))(v15, v9);
  return v21;
}

void *sub_2488424F8@<X0>(uint64_t a2@<X8>)
{
  sub_2488A54DC();
  *(a2 + 16) = v6;
  *(a2 + 32) = 1;
  sub_2488A54DC();
  *(a2 + 40) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = sub_2488A4B8C() & 1;
  *(a2 + 72) = v3;
  *(a2 + 80) = v4 & 1;
  *(a2 + 88) = swift_getKeyPath();
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x4030000000000000;
  type metadata accessor for FolderCustomizationModel(0);
  result = sub_2488A54DC();
  *a2 = v6;
  return result;
}

uint64_t sub_24884261C()
{
  v1 = [v0 topViewController];
  v2 = [v0 viewControllers];
  sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
  v3 = sub_2488A584C();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    if (v1)
    {
LABEL_13:

      return 0;
    }

    return 1;
  }

  result = sub_2488A596C();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1DB410](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = v5;

    if (v1)
    {
      if (v6)
      {
        swift_unknownObjectRelease();

        return v1 == v6;
      }

      goto LABEL_13;
    }

    if (v6)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

id static DSFolderCustomizationNavigationController.controller(forFolder:allTags:delegate:initialCustomIcon:retainDelegate:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a6;
  type metadata accessor for FolderCustomizationModel(0);
  swift_allocObject();

  swift_unknownObjectRetain();

  sub_2488444CC(v12, a2, a3, a4, v6);
  if (a5)
  {
    v13 = a5;
    sub_24884433C(a5);
    sub_24884557C(a1);
  }

  sub_2488424F8(&v21);
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11E8, &qword_2488A69D8));
  v15 = sub_2488A4FBC();
  [v15 setAdditionalSafeAreaInsets_];
  v16 = [objc_allocWithZone(type metadata accessor for DSFolderCustomizationNavigationController()) initWithRootViewController_];
  v17 = [v16 popoverPresentationController];
  if (v17)
  {
    v18 = v17;
    v19 = v16;
    [v18 setDelegate_];
  }

  return v16;
}

id DSFolderCustomizationNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id static DSFolderCustomizationNavigationController.controller(forFolder:allTags:delegate:retainDelegate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  type metadata accessor for FolderCustomizationModel(0);
  swift_allocObject();

  swift_unknownObjectRetain();

  sub_2488444CC(v9, a2, a3, a4, v5);

  sub_2488424F8(&v17);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB11E8, &qword_2488A69D8));
  v11 = sub_2488A4FBC();
  [v11 setAdditionalSafeAreaInsets_];
  v12 = [objc_allocWithZone(type metadata accessor for DSFolderCustomizationNavigationController()) initWithRootViewController_];
  v13 = [v12 popoverPresentationController];
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    [v14 setDelegate_];
  }

  return v12;
}

void sub_248842AF4(void *a1, char a2)
{
  v9 = [a1 topViewController];
  v4 = [a1 viewControllers];
  sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
  v5 = sub_2488A584C();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

    v8 = v9;
    if (v9)
    {
LABEL_16:

      return;
    }

LABEL_19:
    if (*(a1 + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) == 1)
    {

      [a1 setNavigationBarHidden:1 animated:a2 & 1];
    }

    return;
  }

  if (!sub_2488A596C())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x24C1DB410](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = v9;
  if (v9)
  {
    if (v7)
    {
      swift_unknownObjectRelease();

      if (v9 != v7)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  swift_unknownObjectRelease();
}

void sub_248842D50(uint64_t a1, id a2, char a3)
{
  v6 = [a2 viewControllers];
  sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
  v7 = sub_2488A584C();

  if (v7 >> 62)
  {
    if (sub_2488A596C())
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C1DB410](0, v7);
    swift_unknownObjectRelease();

    if (v9 != a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v8 = *(v7 + 32);

  if (v8 == a1)
  {
LABEL_6:
    if (*(a2 + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) == 1)
    {

      [a2 setNavigationBarHidden:1 animated:a3 & 1];
    }
  }
}

void sub_2488430F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 7)
  {
    v2[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
    if (sub_24884261C())
    {

      [v2 setNavigationBarHidden:0 animated:0];
    }
  }
}

uint64_t sub_2488431D0()
{
  v0[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 1;
  result = sub_24884261C();
  if (result)
  {

    return [v0 setNavigationBarHidden:1 animated:0];
  }

  return result;
}

id DSFolderCustomizationNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id DSFolderCustomizationNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  v3 = a2;
  v2[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  if (!ObjCClassFromMetadata)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, v4, v3);
}

id DSFolderCustomizationNavigationController.init(rootViewController:)(void *a1)
{
  v1[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id DSFolderCustomizationNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2488A56CC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DSFolderCustomizationNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  if (a2)
  {
    v5 = sub_2488A56CC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id DSFolderCustomizationNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DSFolderCustomizationNavigationController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DSFolderCustomizationNavigationController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2488437D8()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();
}

uint64_t sub_24884387C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  *a2 = *(v3 + 24);
}

uint64_t sub_248843928(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
    sub_2488A4A1C();
  }
}

uint64_t sub_248843A5C()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_248843B04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_248843BB4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A1C();
}

uint64_t sub_248843C84()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();
}

uint64_t sub_248843D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  *a2 = *(v3 + 64);
}

uint64_t sub_248843DD4(uint64_t a1)
{
  if (*(v1 + 64) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
    sub_2488A4A1C();
  }
}

id sub_248843F08()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v1 = *(v0 + 72);

  return v1;
}

id sub_248843FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_248844070(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_248853D5C(0, &qword_27EEB1360, 0x277D755B8);
  v5 = v4;
  v6 = sub_2488A591C();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
    sub_2488A4A1C();
  }
}

void *sub_2488441DC()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_248844284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_24884433C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
    sub_2488A4A1C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_248853D5C(0, &unk_27EEB1870, 0x277D1B1A8);
  v5 = v4;
  v6 = a1;
  v7 = sub_2488A591C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 80);
LABEL_8:
  *(v2 + 80) = a1;
}

void *sub_2488444CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  sub_2488A4A5C();
  *(v5 + 24) = a1;

  *(v5 + 64) = sub_248841698();
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v12 = *(a1 + 64);
  type metadata accessor for TagModel(0);
  swift_allocObject();

  v6[2] = sub_248856104(a2, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v14 = 0;
  v15 = 0;
  v6[9] = v13;
  if (a5)
  {
    swift_unknownObjectRetain();
    v14 = a3;
    v15 = a4;
  }

  v6[6] = v14;
  v6[7] = v15;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  swift_unknownObjectRetain();
  sub_2488A4A1C();

  swift_unknownObjectRelease();
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v18 = *(a4 + 40);
    swift_unknownObjectRetain();
    v19 = v18(ObjectType, a4);
    v20 = swift_unknownObjectRelease();
    if (v19)
    {
      sub_24883EA9C(v20, v21, v22);
      sub_2488A58FC();

      if (v6)
      {
        v23 = [v6 tintColor];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 UIColor];

          if (v25)
          {
            v26 = [v25 CGColor];
            v27 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

            v28 = v27;
            goto LABEL_11;
          }
        }
      }
    }
  }

  v28 = 0;
LABEL_11:
  sub_248844A38(v28);
  swift_getKeyPath();
  sub_2488A4A2C();

  v29 = sub_248841698();

  sub_24884557C(v29);

  if (a3)
  {
    v30 = swift_getObjectType();
    v31 = *(a4 + 32);
    swift_unknownObjectRetain();

    v31(sub_248853DCC, v6, v30, a4);

    swift_unknownObjectRelease_n();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_248844928(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
    sub_2488A4A1C();
  }

  return result;
}

void sub_248844A38(void *a1)
{
  v3 = *(v1 + 96);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
    sub_2488A4A1C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_248853D5C(0, &qword_27EEB1358, 0x277D1B150);
  v4 = v3;
  v5 = a1;
  v6 = sub_2488A591C();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 96);
LABEL_8:
  *(v1 + 96) = a1;
  v8 = v5;
  sub_2488451E0(v9);
}

uint64_t sub_248844BF0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_2488A58CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2488A58AC();

  v6 = sub_2488A589C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_24889D460(0, 0, v3, &unk_2488A7560, v7);
}

uint64_t sub_248844D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2488A58AC();
  v4[7] = sub_2488A589C();
  v6 = sub_2488A588C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_248844DDC, v6, v5);
}

uint64_t sub_248844DDC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_248844EE0;

    return sub_24884681C();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_248844EE0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_248845024, v3, v2);
}

uint64_t sub_248845024()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248845098()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  return *(v0 + 88);
}

uint64_t sub_248845138@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  *a2 = *(v3 + 88);
  return result;
}

void sub_2488451E0(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v4 = *(v1 + 96);
  if (a1)
  {
    if (v4)
    {
      sub_248853D5C(0, &qword_27EEB1358, 0x277D1B150);
      v5 = v4;
      v6 = a1;
      v7 = sub_2488A591C();

      if (v7)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  sub_2488A4A2C();

  if (*(v2 + 88) == 1)
  {
    swift_getKeyPath();
    sub_2488A4A2C();

    v8 = sub_248841698();

    sub_24884557C(v8);
  }

LABEL_8:
  if (*(v2 + 88) == 1)
  {
    *(v2 + 88) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2488A4A1C();
  }
}

void *sub_24884541C()
{
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id sub_2488454C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

uint64_t sub_24884557C(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  if (a1)
  {
    swift_getKeyPath();
    v38[7] = a1;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
    sub_2488A4A2C();

    swift_beginAccess();
    v7 = *(a1 + 56);
    v35 = *(a1 + 48);
    swift_getKeyPath();
    v38[4] = a1;
    v33 = v7;

    sub_2488A4A2C();

    swift_beginAccess();
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    swift_getKeyPath();
    v38[1] = a1;

    sub_2488A4A2C();

    swift_beginAccess();
    v10 = *(a1 + 64);
    v38[0] = v10;
    v34 = v6;
    v36 = v8;
    v32 = v9;
    if (v10 >> 62)
    {
LABEL_24:
      v11 = sub_2488A596C();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    while (v11)
    {
      if (__OFSUB__(v11--, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1DB410](v11, v10);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }
      }

      v14 = *(v13 + 32);

      if (v14 != 7)
      {
        MEMORY[0x28223BE20](v15);
        *(&v31 - 2) = v38;
        v39 = v11;
        sub_248853F7C(&v39, v37);
        v21 = v37[0];
        goto LABEL_16;
      }
    }

    v21 = 0;
LABEL_16:
    v6 = v34;
    v16 = v2;

    if (v21)
    {
      v20 = *(v21 + 32);
    }

    else
    {
      v20 = 7;
    }

    v18 = v35;
    swift_getKeyPath();
    v37[0] = a1;
    sub_2488A4A2C();

    swift_beginAccess();
    LODWORD(v35) = *(a1 + 72);
    v17 = v32;
    v19 = v33;
  }

  else
  {
    v16 = v1;
    v36 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 7;
    LODWORD(v35) = 1;
  }

  swift_getKeyPath();
  v22 = v16;
  v39 = v16;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v23 = *(v16 + 96);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v25 = sub_2488A58CC();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  sub_2488A58AC();
  v26 = v23;

  v27 = sub_2488A589C();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  *(v28 + 32) = 0;
  *(v28 + 40) = v18;
  *(v28 + 48) = v19;
  *(v28 + 56) = v20;
  *(v28 + 64) = v36;
  *(v28 + 72) = v17;
  *(v28 + 80) = v35;
  *(v28 + 88) = sub_248853AEC;
  *(v28 + 96) = v24;
  *(v28 + 104) = v22;
  sub_24889D1A0(0, 0, v6, &unk_2488A7548, v28);
}

uint64_t sub_248845A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = v17;
  *(v8 + 344) = v18;
  *(v8 + 425) = v15;
  *(v8 + 320) = v14;
  *(v8 + 328) = v16;
  *(v8 + 424) = a7;
  *(v8 + 304) = a6;
  *(v8 + 312) = a8;
  *(v8 + 288) = a4;
  *(v8 + 296) = a5;
  v9 = sub_2488A4ABC();
  *(v8 + 352) = v9;
  *(v8 + 360) = *(v9 - 8);
  *(v8 + 368) = swift_task_alloc();
  sub_2488A58AC();
  *(v8 + 376) = sub_2488A589C();
  v11 = sub_2488A588C();
  *(v8 + 384) = v11;
  *(v8 + 392) = v10;

  return MEMORY[0x2822009F8](sub_248845B8C, v11, v10);
}

uint64_t sub_248845B8C()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = *(v0 + 288);
  }

  else
  {
    v3 = qword_2488A7578[*(v0 + 424)];
    if (*(v0 + 304))
    {
      v4 = sub_2488A56CC();
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v0 + 320);
    v6 = [objc_allocWithZone(MEMORY[0x277D1B190]) initWithSymbolName:v4 systemTintColor:v3];

    if (v5)
    {
      v7 = sub_2488A56CC();
    }

    else
    {
      v7 = 0;
    }

    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 352);
    v11 = *(v0 + 425);
    v1 = *(v0 + 288);
    [v6 setEmoji_];

    [v6 setFolderEmpty_];
    sub_2488A4AAC();
    sub_2488A4A8C();
    (*(v9 + 8))(v8, v10);
    v12 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v13 = v6;
    v14 = sub_2488A56CC();

    v2 = [v12 initWithType:v14 iconConfiguration:v13];
  }

  *(v0 + 400) = v2;
  v15 = *(v0 + 328);
  v16 = objc_allocWithZone(MEMORY[0x277D1B1C8]);
  v17 = v1;
  v18 = [v16 initWithSize:90.0 scale:{90.0, 2.0}];
  *(v0 + 408) = v18;
  v15();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 272;
  *(v0 + 24) = sub_248845E4C;
  v19 = swift_continuation_init();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1868, &qword_2488A7550);
  *(v0 + 416) = v20;
  *(v0 + 200) = v20;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_248846260;
  *(v0 + 168) = &block_descriptor;
  *(v0 + 176) = v19;
  [v2 getCGImageForImageDescriptor:v18 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_248845E4C()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_248845F54, v2, v1);
}

uint64_t sub_248845F54()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 280;
  *(v0 + 88) = sub_248846070;
  v4 = swift_continuation_init();
  *(v0 + 264) = v2;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_248846260;
  *(v0 + 232) = &block_descriptor_228;
  *(v0 + 240) = v4;
  [v3 getCGImageForImageDescriptor:v1 completion:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_248846070()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_248846178, v2, v1);
}

uint64_t sub_248846178()
{

  v1 = v0[35];
  if (v1 && (v2 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_], v1, v2))
  {
    v3 = v2;
    v4 = v3;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v4 = 0;
  }

  v6 = v0[50];
  v5 = v0[51];
  sub_248844070(v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_248846260(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_2488462C4()
{
  v1[4] = v0;
  sub_2488A58AC();
  v1[5] = sub_2488A589C();
  v3 = sub_2488A588C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_24884635C, v3, v2);
}

uint64_t sub_24884635C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v2 = sub_248841698();
  v0[8] = v2;

  sub_24884557C(v3);

  swift_getKeyPath();
  v0[3] = v1;
  sub_2488A4A2C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v5 = *(v0[4] + 40);
    ObjectType = swift_getObjectType();
    v10 = (*(v5 + 8) + **(v5 + 8));
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_2488465DC;

    return v10(v2, ObjectType, v5);
  }

  else
  {

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_2488465DC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_248846790;
  }

  else
  {
    v5 = sub_248846718;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_248846718()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_248846790()
{
  v1 = *(v0 + 88);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_24884681C()
{
  v1[14] = v0;
  sub_2488A58AC();
  v1[15] = sub_2488A589C();
  v3 = sub_2488A588C();
  v1[16] = v3;
  v1[17] = v2;

  return MEMORY[0x2822009F8](sub_2488468B4, v3, v2);
}

uint64_t sub_2488468B4()
{
  v1 = v0[14];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC17DesktopServicesUI24FolderCustomizationModel___observationRegistrar;
  v0[8] = v1;
  v0[18] = v2;
  v0[19] = sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v4 = *(v0[14] + 40);
    ObjectType = swift_getObjectType();
    v9 = (*(v4 + 16) + **(v4 + 16));
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_248846AAC;

    return v9(ObjectType, v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_248846AAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_248846FB8;
  }

  else
  {
    v7 = sub_248846BF0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_248846BF0()
{
  v1 = v0[22];
  v2 = v0[14];

  swift_getKeyPath();
  v0[9] = v2;
  sub_2488A4A2C();

  LOBYTE(v1) = sub_248841900(v1);

  if (v1)
  {

    sub_24884557C(v3);
  }

  v4 = v0[22];
  v5 = v0[14];
  swift_getKeyPath();
  v0[10] = v5;
  sub_2488A4A2C();

  sub_248841EE8(v4);

  v6 = *(v5 + 16);
  swift_getKeyPath();
  v0[11] = v6;
  sub_2488516B0(&qword_27EEB1350, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
  v7 = *(v6 + 40);
  swift_getKeyPath();
  v0[12] = v4;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);

  sub_2488A4A2C();

  swift_beginAccess();
  v8 = *(v4 + 64);

  v9 = sub_24884F334(v7, v8);

  if ((v9 & 1) == 0)
  {
    v10 = v0[22];
    sub_2488583FC();
    swift_getKeyPath();
    v0[13] = v10;
    sub_2488A4A2C();

    v11 = *(v4 + 64);
    if (v11 >> 62)
    {
      goto LABEL_21;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

    if (v12)
    {
      v13 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C1DB410](v13, v11);
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v12 = sub_2488A596C();
            goto LABEL_6;
          }

          v14 = *(v11 + 8 * v13 + 32);

          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_15;
          }
        }

        sub_248856F94(v14, 0, 0);

        ++v13;
      }

      while (v15 != v12);
    }
  }

  v16 = sub_248841698();
  sub_248843DD4(v16);

  swift_unknownObjectRelease();
  v17 = v0[1];

  return v17();
}

uint64_t sub_248846FB8()
{
  v1 = *(v0 + 184);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

id *sub_248847030()
{

  sub_248851954((v0 + 4));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC17DesktopServicesUI24FolderCustomizationModel___observationRegistrar;
  v2 = sub_2488A4A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2488470D0()
{
  sub_248847030();

  return swift_deallocClassInstance();
}

uint64_t sub_248847128()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v0 = *(v5 + 24);

  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 56);

  if (!v1)
  {
    sub_2488A54EC();
    swift_getKeyPath();
    sub_2488A4A2C();

    v2 = *(v6 + 24);

    swift_getKeyPath();
    sub_2488A4A2C();

    swift_beginAccess();
    v3 = *(v2 + 40);

    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FolderCustomizationView.init(info:allTags:delegate:)@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2488A54DC();
  *(a5 + 16) = v13;
  *(a5 + 32) = 1;
  sub_2488A54DC();
  *(a5 + 40) = v13;
  *(a5 + 56) = v14;
  *(a5 + 64) = sub_2488A4B8C() & 1;
  *(a5 + 72) = v9;
  *(a5 + 80) = v10 & 1;
  *(a5 + 88) = swift_getKeyPath();
  *(a5 + 96) = 0;
  *(a5 + 104) = 0x4030000000000000;
  type metadata accessor for FolderCustomizationModel(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_2488444CC(v11, a2, a3, a4, 0);

  sub_2488A54DC();

  result = swift_unknownObjectRelease();
  *a5 = v13;
  return result;
}

uint64_t sub_2488474EC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v31 = sub_2488A4EDC();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2488A548C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1820, &qword_2488A7520);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - v10;
  v11 = v1[5];
  v54 = v1[4];
  v55 = v11;
  v56 = v1[6];
  v12 = v1[1];
  v50 = *v1;
  v51 = v12;
  v13 = v1[3];
  v52 = v1[2];
  v53 = v13;
  v40[0] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v14 = v43;
  swift_getKeyPath();
  *&v40[0] = v14;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v15 = *(v14 + 72);

  sub_2488A547C();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v16 = sub_2488A54BC();

  (*(v6 + 8))(v8, v5);
  sub_2488A55FC();
  sub_2488A4BEC();
  v46 = 0;
  *&v45[22] = v48;
  *&v45[38] = v49;
  *&v45[6] = v47;
  *&v43 = v16;
  *(&v43 + 1) = 0x3FF0000000000000;
  *v44 = 256;
  *&v44[2] = *v45;
  *&v44[18] = *&v45[16];
  *&v44[34] = *&v45[32];
  *&v44[48] = *(&v49 + 1);
  v58 = v56;
  v57 = *(&v55 + 1);
  if (v56 == 1)
  {
    v42 = *(&v55 + 1);
    v17 = *(&v55 + 1);
  }

  else
  {

    sub_2488A58EC();
    v18 = sub_2488A513C();
    sub_2488A4ACC();

    sub_2488A4ECC();
    swift_getAtKeyPath();
    sub_2488532FC(&v57, &qword_27EEB1828, &qword_2488A7528);
    (*(v2 + 8))(v4, v31);
    v17 = v42;
  }

  v36 = v17;
  v19 = swift_allocObject();
  v20 = v55;
  v19[5] = v54;
  v19[6] = v20;
  v19[7] = v56;
  v21 = v51;
  v19[1] = v50;
  v19[2] = v21;
  v22 = v53;
  v19[3] = v52;
  v19[4] = v22;
  sub_248851FE8(&v50, v40);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB1830, &qword_2488A7530);
  v24 = sub_248853D5C(0, &qword_27EEB11B8, 0x277D66AB0);
  v25 = sub_2488539A4();
  v26 = sub_24883EB74();
  v27 = v32;
  sub_2488A535C();

  v40[2] = *&v44[16];
  v40[3] = *&v44[32];
  v41 = *&v44[48];
  v40[0] = v43;
  v40[1] = *v44;
  sub_2488532FC(v40, &unk_27EEB1830, &qword_2488A7530);
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v34;
  sub_2488A533C();
  return (*(v33 + 8))(v27, v28);
}

uint64_t sub_248847A94(uint64_t a1, void **a2, __int128 *a3)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v4 = [v3 tintColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 UIColor];

    if (v6)
    {
      v7 = [v6 CGColor];
      v8 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

      v4 = v8;
    }

    else
    {
      v4 = 0;
    }
  }

  sub_248844A38(v4);
}

uint64_t sub_248847B8C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1640, &qword_2488A7370);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1648, &qword_2488A7378);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x28223BE20](v6);
  v32 = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1650, &qword_2488A7380);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  MEMORY[0x28223BE20](v9);
  v35 = v31 - v11;
  v12 = v1[5];
  v51 = v1[4];
  v52 = v12;
  v53 = v1[6];
  v13 = v1[1];
  v47 = *v1;
  v48 = v13;
  v14 = v1[3];
  v49 = v1[2];
  v50 = v14;
  v15 = sub_2488A4F3C();
  v31[0] = v16;
  v31[1] = v15;
  v54 = *(v1 + 40);
  v55 = *(v1 + 7);
  v45 = *(v1 + 40);
  v46 = *(v1 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1658, &qword_2488A7388);
  sub_2488A550C();
  sub_2488A4F3C();
  sub_2488A523C();
  sub_2488A563C();
  v17 = sub_24883E5F8(&qword_27EEB1660, &qword_27EEB1640, &qword_2488A7370, MEMORY[0x277CDF1A8]);
  v19 = v32;
  v18 = v33;
  sub_2488A52CC();
  (*(v34 + 8))(v5, v18);
  v42 = v54;
  v43 = v55;
  sub_2488A54EC();
  v20 = swift_allocObject();
  v21 = v52;
  v20[5] = v51;
  v20[6] = v21;
  v20[7] = v53;
  v22 = v48;
  v20[1] = v47;
  v20[2] = v22;
  v23 = v50;
  v20[3] = v49;
  v20[4] = v23;
  sub_248851FE8(&v47, &v42);
  *&v42 = v18;
  *(&v42 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = MEMORY[0x277D837D0];
  v27 = v35;
  v26 = v36;
  sub_2488A535C();

  (*(v37 + 8))(v19, v26);
  v42 = v51;
  LOBYTE(v43) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1668, &qword_2488A7390);
  sub_2488A4B7C();
  v41 = 1;
  *&v42 = v26;
  *(&v42 + 1) = v25;
  v43 = OpaqueTypeConformance2;
  v44 = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  v28 = v40;
  v29 = v38;
  sub_2488A534C();

  (*(v39 + 8))(v27, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1670, &qword_2488A7398);
  *(v28 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2488480C4(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a2;
  v12 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1680, &qword_2488A73A8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2488A68D0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 32) = v9;
  *(v13 + 40) = v10;
  *(v13 + 88) = v14;
  *(v13 + 56) = v14;
  *(v13 + 64) = v11;
  *(v13 + 72) = v12;
  v44 = *(a3 + 40);
  v45 = *(a3 + 7);
  v37 = *(a3 + 40);
  v38 = *(a3 + 7);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1658, &qword_2488A7388);
  sub_2488A54EC();
  v16 = v41;
  v17 = v42;
  *(v13 + 120) = v14;
  *(v13 + 96) = v16;
  *(v13 + 104) = v17;
  sub_2488A5ACC();

  v18 = sub_248841E68(v11, v12);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v35[1] = v15;
    v36 = v8;
    v43 = *a3;
    v37 = *a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
    sub_2488A54EC();
    v22 = v41;
    swift_getKeyPath();
    *&v37 = v22;
    sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
    sub_2488A4A2C();

    sub_24883F8E8(v20, v21);

    v37 = v43;
    sub_2488A54EC();
    v23 = v41;
    swift_getKeyPath();
    *&v37 = v23;
    sub_2488A4A2C();

    v24 = *(v23 + 24);

    swift_beginAccess();
    if (*(v24 + 56))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v35[-3] = 0;
      v35[-2] = 0;
      v35[-4] = v24;
      *&v37 = v24;
      sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
      sub_2488A4A1C();
    }

    else
    {
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
    }

    v27 = v36;
    v37 = a3[4];
    LOBYTE(v38) = *(a3 + 80);
    LOBYTE(v39) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1668, &qword_2488A7390);
    sub_2488A4B6C();
    v37 = v44;
    v38 = v45;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_2488A54FC();
    v28 = sub_2488A58CC();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    sub_2488A58AC();
    sub_248851FE8(a3, &v37);
    v29 = sub_2488A589C();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 16) = v29;
    *(v30 + 24) = v31;
    v32 = a3[5];
    *(v30 + 96) = a3[4];
    *(v30 + 112) = v32;
    *(v30 + 128) = a3[6];
    v33 = a3[1];
    *(v30 + 32) = *a3;
    *(v30 + 48) = v33;
    v34 = a3[3];
    *(v30 + 64) = a3[2];
    *(v30 + 80) = v34;
    sub_24889D734(0, 0, v27, &unk_2488A73B8, v30);
  }

  else
  {
    v37 = v44;
    v38 = v45;
    v41 = 0;
    v42 = 0xE000000000000000;
    return sub_2488A54FC();
  }
}

uint64_t sub_248848618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2488A58AC();
  v4[7] = sub_2488A589C();
  v6 = sub_2488A588C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2488486B0, v6, v5);
}

uint64_t sub_2488486B0()
{
  *(v0 + 16) = **(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  *(v0 + 80) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_248848770;

  return sub_2488462C4();
}

uint64_t sub_248848770(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2488488BC, v4, v3);
}

uint64_t sub_2488488BC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_248848928@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v137 = sub_2488A495C();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v138 = v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2488A49EC();
  v136 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v129 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v131 = v104 - v6;
  v148 = sub_2488A56BC();
  v127 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v122 = v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v142 = v104 - v9;
  v134 = sub_2488A497C();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v121 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v125 = v104 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14D8, &qword_2488A7268);
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = v104 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14E0, &qword_2488A7270);
  MEMORY[0x28223BE20](v117);
  v147 = v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = v104 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14E8, &qword_2488A7278);
  MEMORY[0x28223BE20](v123);
  v126 = v104 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14F0, &qword_2488A7280);
  v128 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v124 = v104 - v18;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14F8, &qword_2488A7288);
  MEMORY[0x28223BE20](v118);
  v139 = v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v119 = v104 - v21;
  MEMORY[0x28223BE20](v22);
  v130 = v104 - v23;
  v146 = sub_2488A504C();
  v150 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2488A546C();
  v149 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1500, &qword_2488A7290);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v104 - v28;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1508, &qword_2488A7298);
  MEMORY[0x28223BE20](v111);
  v31 = v104 - v30;
  v115 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1510, &qword_2488A72A0) - 8);
  MEMORY[0x28223BE20](v115);
  v116 = v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = v104 - v34;
  v36 = swift_allocObject();
  v37 = a1[5];
  v36[5] = a1[4];
  v36[6] = v37;
  v36[7] = a1[6];
  v38 = a1[1];
  v36[1] = *a1;
  v36[2] = v38;
  v39 = a1[3];
  v36[3] = a1[2];
  v36[4] = v39;
  sub_248851FE8(a1, &v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1518, &qword_2488A72A8);
  v104[0] = MEMORY[0x277CE1138];
  sub_24883E5F8(&qword_27EEB1520, &qword_27EEB1518, &qword_2488A72A8, MEMORY[0x277CE1138]);
  sub_2488A551C();
  v40 = MEMORY[0x277CDF028];
  sub_24883E5F8(&qword_27EEB1528, &qword_27EEB1500, &qword_2488A7290, MEMORY[0x277CDF028]);
  sub_2488A533C();
  (*(v27 + 8))(v29, v26);
  v41 = a1[5];
  v156 = a1[4];
  v157 = v41;
  v158 = a1[6];
  v42 = a1[1];
  v152 = *a1;
  v153 = v42;
  v43 = a1[3];
  v154 = a1[2];
  v155 = v43;
  LOBYTE(v26) = sub_248847128();
  KeyPath = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v26 & 1;
  v46 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1530, &qword_2488A72E0) + 36)];
  *v46 = KeyPath;
  v46[1] = sub_248852220;
  v46[2] = v45;
  sub_2488A55FC();
  sub_2488A4BEC();
  v47 = &v31[*(v111 + 36)];
  v48 = v160;
  *v47 = v159;
  *(v47 + 1) = v48;
  *(v47 + 2) = v161;
  v49 = v143;
  sub_2488A545C();
  v50 = v145;
  sub_2488A503C();
  sub_248852238();
  v51 = sub_2488516B0(&qword_27EEB1570, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
  v52 = v49;
  v53 = v146;
  v111 = v51;
  sub_2488A529C();
  v54 = *(v150 + 8);
  v150 += 8;
  v110 = v54;
  v54(v50, v53);
  v55 = *(v149 + 8);
  v149 += 8;
  v109 = v55;
  v55(v52, v144);
  sub_2488532FC(v31, &qword_27EEB1508, &qword_2488A7298);
  v56 = *(v115 + 11);
  v115 = v35;
  v57 = &v35[v56];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1470, &qword_2488A7220);
  sub_2488A4DDC();
  v59 = *MEMORY[0x277CE0118];
  v60 = sub_2488A4F4C();
  v61 = *(v60 - 8);
  v62 = *(v61 + 104);
  v107 = v59;
  v106 = v60;
  v105 = v62;
  v104[1] = v61 + 104;
  (v62)(v57, v59);
  v108 = v58;
  v57[*(v58 + 36)] = 0;
  v63 = swift_allocObject();
  v64 = a1[5];
  v63[5] = a1[4];
  v63[6] = v64;
  v63[7] = a1[6];
  v65 = a1[1];
  v63[1] = *a1;
  v63[2] = v65;
  v66 = a1[3];
  v63[3] = a1[2];
  v63[4] = v66;
  v151 = a1;
  sub_248851FE8(a1, &v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1578, &qword_2488A72F8);
  sub_24883E5F8(&qword_27EEB1580, &qword_27EEB1578, &qword_2488A72F8, v104[0]);
  v67 = v112;
  sub_2488A551C();
  sub_24883E5F8(&qword_27EEB1588, &qword_27EEB14D8, &qword_2488A7268, v40);
  v68 = v113;
  sub_2488A533C();
  (*(v114 + 8))(v67, v68);
  v69 = v142;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v70 = sub_2488A590C();
  if (!v70)
  {
    v70 = [objc_opt_self() mainBundle];
  }

  v71 = v70;
  v72 = v131;
  sub_2488A49DC();
  v73 = v127;
  (*(v127 + 16))(v122, v69, v148);
  v74 = v136;
  v75 = v140;
  (*(v136 + 16))(v129, v72, v140);
  v76 = [v71 bundleURL];
  v77 = v138;
  sub_2488A49AC();

  (*(v135 + 104))(v77, *MEMORY[0x277CC9118], v137);
  v78 = v125;
  sub_2488A498C();

  (*(v74 + 8))(v72, v75);
  (*(v73 + 8))(v142, v148);
  v79 = v133;
  v80 = v134;
  (*(v133 + 16))(v121, v78, v134);
  v81 = sub_2488A524C();
  v83 = v82;
  LOBYTE(v77) = v84;
  v85 = v120;
  v86 = v147;
  sub_2488A4D5C();
  sub_24883E428(v81, v83, v77 & 1);

  (*(v79 + 8))(v78, v80);
  sub_2488532FC(v86, &qword_27EEB14E0, &qword_2488A7270);
  sub_2488A55FC();
  sub_2488A4BEC();
  v87 = v126;
  sub_2488533E4(v85, v126, &qword_27EEB14E0, &qword_2488A7270);
  v88 = (v87 + *(v123 + 36));
  v89 = v153;
  *v88 = v152;
  v88[1] = v89;
  v88[2] = v154;
  v90 = v143;
  sub_2488A545C();
  v91 = v145;
  sub_2488A503C();
  sub_248852474();
  v92 = v124;
  v93 = v146;
  sub_2488A529C();
  v110(v91, v93);
  v109(v90, v144);
  sub_2488532FC(v87, &qword_27EEB14E8, &qword_2488A7278);
  v94 = v119;
  v95 = &v119[*(v118 + 36)];
  v96 = v108;
  sub_2488A4DDC();
  v105(v95, v107, v106);
  v95[*(v96 + 36)] = 0;
  (*(v128 + 32))(v94, v92, v132);
  v97 = v130;
  sub_2488533E4(v94, v130, &qword_27EEB14F8, &qword_2488A7288);
  v98 = v115;
  v99 = v116;
  sub_2488527B8(v115, v116, &qword_27EEB1510, &qword_2488A72A0);
  v100 = v139;
  sub_2488527B8(v97, v139, &qword_27EEB14F8, &qword_2488A7288);
  v101 = v141;
  sub_2488527B8(v99, v141, &qword_27EEB1510, &qword_2488A72A0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15A8, &qword_2488A7300);
  sub_2488527B8(v100, v101 + *(v102 + 48), &qword_27EEB14F8, &qword_2488A7288);
  sub_2488532FC(v97, &qword_27EEB14F8, &qword_2488A7288);
  sub_2488532FC(v98, &qword_27EEB1510, &qword_2488A72A0);
  sub_2488532FC(v100, &qword_27EEB14F8, &qword_2488A7288);
  return sub_2488532FC(v99, &qword_27EEB1510, &qword_2488A72A0);
}

uint64_t sub_248849BBC(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v2 - 8);
  v19[0] = v19 - v3;
  v23 = *a1;
  v20[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v4 = v22;
  swift_getKeyPath();
  *&v20[0] = v4;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v5 = *(v4 + 24);

  swift_beginAccess();
  if (*(v5 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19[-3] = 0;
    v19[-2] = 0;
    v19[-4] = v5;
    *&v20[0] = v5;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
    sub_2488A4A1C();
  }

  else
  {
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
  }

  v20[0] = v23;
  sub_2488A54EC();
  v7 = v21;
  swift_getKeyPath();
  *&v20[0] = v7;
  sub_2488A4A2C();

  v8 = *(v7 + 24);

  swift_beginAccess();
  if (*(v8 + 56))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    v19[-3] = 0;
    v19[-2] = 0;
    v19[-4] = v8;
    *&v20[0] = v8;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
    sub_2488A4A1C();
  }

  else
  {
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
  }

  v10 = sub_2488A58CC();
  v11 = v19[0];
  (*(*(v10 - 8) + 56))(v19[0], 1, 1, v10);
  sub_2488A58AC();
  sub_248851FE8(a1, v20);
  v12 = sub_2488A589C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = a1[5];
  *(v13 + 96) = a1[4];
  *(v13 + 112) = v15;
  *(v13 + 128) = a1[6];
  v16 = a1[1];
  *(v13 + 32) = *a1;
  *(v13 + 48) = v16;
  v17 = a1[3];
  *(v13 + 64) = a1[2];
  *(v13 + 80) = v17;
  sub_24889D734(0, 0, v11, &unk_2488A73C8, v13);
}

uint64_t sub_24884A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2488A58AC();
  v4[7] = sub_2488A589C();
  v6 = sub_2488A588C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_24884A0F4, v6, v5);
}

uint64_t sub_24884A0F4()
{
  *(v0 + 16) = **(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  *(v0 + 80) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_24884A1B4;

  return sub_2488462C4();
}

uint64_t sub_24884A1B4(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_248853F0C, v4, v3);
}

__n128 sub_24884A300@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2488A4F1C();
  sub_24884A39C(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  v4[71] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v4[64];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_24884A39C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2488A495C();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2488A49EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_2488A56BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = sub_2488A497C();
  MEMORY[0x28223BE20](v18 - 8);
  v35 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v17;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v21 = sub_2488A590C();
  if (!v21)
  {
    v21 = [objc_opt_self() mainBundle];
  }

  v22 = v21;
  sub_2488A49DC();
  (*(v12 + 16))(v14, v20, v11);
  (*(v5 + 16))(v7, v10, v4);
  v23 = [v22 bundleURL];
  v33 = v4;
  v34 = v11;
  v24 = v23;
  v25 = v36;
  sub_2488A49AC();

  (*(v37 + 104))(v25, *MEMORY[0x277CC9118], v38);
  sub_2488A498C();

  (*(v5 + 8))(v10, v33);
  (*(v12 + 8))(v20, v34);
  v26 = sub_2488A524C();
  v28 = v27;
  v41 = 1;
  v30 = v29 & 1;
  v40 = v29 & 1;
  v39 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v26;
  *(a1 + 24) = v27;
  *(a1 + 32) = v29 & 1;
  *(a1 + 40) = v31;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  sub_24883E418(v26, v27, v29 & 1);

  sub_24883E428(v26, v28, v30);
}

uint64_t sub_24884A7C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1668, &qword_2488A7390);
  sub_2488A4B5C();
  return sub_2488A4B6C();
}

uint64_t sub_24884A858@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2488A4F1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15B0, &qword_2488A7308);
  return sub_24884A8B0(a1, a2 + *(v4 + 44));
}

uint64_t sub_24884A8B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15B8, &qword_2488A7310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v15 - v8);
  *v9 = sub_2488A55FC();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15C0, &qword_2488A7318);
  sub_24884AA14(a1, v9 + *(v11 + 44));
  sub_2488527B8(v9, v6, &qword_27EEB15B8, &qword_2488A7310);
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15C8, &qword_2488A7320);
  sub_2488527B8(v6, a2 + *(v12 + 48), &qword_27EEB15B8, &qword_2488A7310);
  v13 = a2 + *(v12 + 64);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_2488532FC(v9, &qword_27EEB15B8, &qword_2488A7310);
  return sub_2488532FC(v6, &qword_27EEB15B8, &qword_2488A7310);
}

uint64_t sub_24884AA14@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15D0, &qword_2488A7328);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15D8, &qword_2488A7330);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = a1[5];
  v38 = a1[4];
  v39 = v17;
  v40 = a1[6];
  v18 = a1[1];
  v34 = *a1;
  v35 = v18;
  v19 = a1[3];
  v36 = a1[2];
  v37 = v19;
  sub_248847B8C(&v31 - v15);
  v20 = sub_2488A516C();
  sub_2488A4B4C();
  v21 = &v16[*(v11 + 44)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15E0, &qword_2488A7338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB15E8, &qword_2488A7340);
  sub_248852748(&qword_27EEB15F0, &qword_27EEB15E0, &qword_2488A7338, MEMORY[0x277CDF918]);
  sub_2488525F0();
  sub_2488A54CC();
  v31 = v13;
  sub_2488527B8(v16, v13, &qword_27EEB15D8, &qword_2488A7330);
  v26 = *(v4 + 16);
  v26(v6, v9, v3);
  v27 = v32;
  sub_2488527B8(v13, v32, &qword_27EEB15D8, &qword_2488A7330);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1630, &qword_2488A7360);
  v26((v27 + *(v28 + 48)), v6, v3);
  v29 = *(v4 + 8);
  v29(v9, v3);
  sub_2488532FC(v16, &qword_27EEB15D8, &qword_2488A7330);
  v29(v6, v3);
  return sub_2488532FC(v31, &qword_27EEB15D8, &qword_2488A7330);
}

void sub_24884AD58(uint64_t a1@<X8>)
{
  v2 = sub_2488A495C();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2488A49EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_2488A56BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = sub_2488A497C();
  MEMORY[0x28223BE20](v18 - 8);
  v41 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v17;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v21 = sub_2488A590C();
  if (!v21)
  {
    v21 = [objc_opt_self() mainBundle];
  }

  v22 = v21;
  sub_2488A49DC();
  (*(v12 + 16))(v14, v20, v11);
  (*(v5 + 16))(v7, v10, v4);
  v23 = [v22 bundleURL];
  v39 = v4;
  v40 = v11;
  v24 = v23;
  v25 = v42;
  sub_2488A49AC();

  (*(v43 + 104))(v25, *MEMORY[0x277CC9118], v44);
  sub_2488A498C();

  (*(v5 + 8))(v10, v39);
  (*(v12 + 8))(v20, v40);
  v26 = sub_2488A524C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = sub_2488A516C();
  sub_2488A4B4C();
  *a1 = v26;
  *(a1 + 8) = v28;
  *(a1 + 16) = v30 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  *(a1 + 40) = v34;
  *(a1 + 48) = v35;
  *(a1 + 56) = v36;
  *(a1 + 64) = v37;
  *(a1 + 72) = 0;
}

uint64_t sub_24884B160(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1638, &qword_2488A7368);
  MEMORY[0x28223BE20](v2);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1628, &qword_2488A7358);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v33[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v8 = v36;
  swift_getKeyPath();
  *&v33[0] = v8;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v9 = *(v8 + 24);

  swift_getKeyPath();
  *&v33[0] = v9;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);

  if (v10)
  {
    *&v33[0] = v11;
    *(&v33[0] + 1) = v10;
    sub_2488519D0(v12, v13, v14);
    v15 = sub_2488A525C();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_2488A55FC();
    sub_2488A4DCC();
    v22 = v19 & 1;
    v34 = v19 & 1;
    v23 = sub_2488A516C();
    sub_2488A4B4C();
    v35 = 0;
    *v4 = v15;
    *(v4 + 1) = v17;
    v4[16] = v22;
    *(v4 + 3) = v21;
    v24 = v33[5];
    *(v4 + 6) = v33[4];
    *(v4 + 7) = v24;
    *(v4 + 8) = v33[6];
    v25 = v33[1];
    *(v4 + 2) = v33[0];
    *(v4 + 3) = v25;
    v26 = v33[3];
    *(v4 + 4) = v33[2];
    *(v4 + 5) = v26;
    v4[144] = v23;
    *(v4 + 19) = v27;
    *(v4 + 20) = v28;
    *(v4 + 21) = v29;
    *(v4 + 22) = v30;
    v4[184] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1608, &qword_2488A7348);
    sub_24885269C();
    sub_24885302C(&qword_27EEB1620, &qword_27EEB1628, &qword_2488A7358, MEMORY[0x277CE1078]);
    return sub_2488A4FCC();
  }

  else
  {
    *&v33[0] = sub_2488A549C();
    v32 = MEMORY[0x277CE1078];
    sub_2488A531C();

    sub_2488527B8(v7, v4, &qword_27EEB1628, &qword_2488A7358);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1608, &qword_2488A7348);
    sub_24885269C();
    sub_24885302C(&qword_27EEB1620, &qword_27EEB1628, &qword_2488A7358, v32);
    sub_2488A4FCC();
    return sub_2488532FC(v7, &qword_27EEB1628, &qword_2488A7358);
  }
}

uint64_t FolderCustomizationView.body.getter@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[5];
  v16[4] = v9[4];
  v16[5] = v11;
  v16[6] = v9[6];
  v12 = v9[1];
  v16[0] = *v9;
  v16[1] = v12;
  v13 = v9[3];
  v16[2] = v9[2];
  v16[3] = v13;
  *a9 = sub_2488A4FAC();
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1200, &qword_2488A6A08);
  return sub_24884B640(v16, (a9 + *(v14 + 44)));
}

uint64_t sub_24884B640@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v136 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1368, &qword_2488A7100);
  v146 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v144 = &v113 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1370, &qword_2488A7108) - 8;
  MEMORY[0x28223BE20](v133);
  v145 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v140 = &v113 - v8;
  v9 = sub_2488A508C();
  v126 = *(v9 - 8);
  v127 = v9;
  MEMORY[0x28223BE20](v9);
  v125 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1378, &qword_2488A7110);
  MEMORY[0x28223BE20](v124);
  v123 = &v113 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1380, &qword_2488A7118) - 8;
  MEMORY[0x28223BE20](v128);
  v142 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v138 = &v113 - v14;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1388, &qword_2488A7120);
  MEMORY[0x28223BE20](v122);
  v121 = &v113 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1390, &qword_2488A7128);
  MEMORY[0x28223BE20](v16 - 8);
  v141 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v113 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1398, &qword_2488A7130);
  MEMORY[0x28223BE20](v20 - 8);
  v139 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v113 - v23;
  v143 = &v113 - v23;
  sub_2488A55FC();
  sub_2488A4BEC();
  v131 = v162;
  v132 = v160;
  v129 = v165;
  v130 = v164;
  v186 = 1;
  v185 = v161;
  v184 = v163;
  v25 = *(a1 + 5);
  v157 = *(a1 + 4);
  v158 = v25;
  v159 = *(a1 + 6);
  v26 = *(a1 + 1);
  v153 = *a1;
  v154 = v26;
  v27 = *(a1 + 3);
  v155 = *(a1 + 2);
  v156 = v27;
  sub_2488474EC(v24);
  v137 = a1;
  v181 = *a1;
  v153 = *a1;
  *(&v118 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v28 = v175;
  swift_getKeyPath();
  *&v153 = v28;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v29 = *(v28 + 24);

  swift_getKeyPath();
  *&v153 = v29;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v31 = *(v29 + 16);
  v30 = *(v29 + 24);

  *&v153 = v31;
  *(&v153 + 1) = v30;
  sub_2488519D0(v32, v33, v34);
  v35 = sub_2488A525C();
  v37 = v36;
  LOBYTE(v29) = v38;
  sub_2488A51CC();
  v39 = sub_2488A522C();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_24883E428(v35, v37, v29 & 1);

  *&v153 = v39;
  *(&v153 + 1) = v41;
  LOBYTE(v37) = v43 & 1;
  LOBYTE(v154) = v43 & 1;
  *(&v154 + 1) = v45;
  v46 = v121;
  sub_2488A536C();
  sub_24883E428(v39, v41, v37);

  KeyPath = swift_getKeyPath();
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13B0, &qword_2488A7170) + 36);
  *v48 = KeyPath;
  *(v48 + 8) = 1;
  v49 = (v46 + *(v122 + 36));
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13B8, &qword_2488A7178) + 28);
  v51 = *MEMORY[0x277CE0B28];
  v52 = sub_2488A521C();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = swift_getKeyPath();
  sub_248851AA0();
  sub_2488A533C();
  sub_2488532FC(v46, &qword_27EEB1388, &qword_2488A7120);
  v53 = v137;
  sub_2488A55FC();
  sub_2488A4BEC();
  v121 = v168;
  v122 = v166;
  v119 = v171;
  v120 = v170;
  v189 = 1;
  v188 = v167;
  v187 = v169;
  v153 = v181;
  sub_2488A54EC();
  v54 = *(v175 + 16);

  v175 = v54;
  type metadata accessor for TagModel(0);

  sub_2488A54DC();
  v55 = v153;
  v118 = v153;
  swift_getKeyPath();
  *&v153 = v54;
  sub_2488516B0(&qword_27EEB1350, type metadata accessor for TagModel, &unk_2488A77A0);
  sub_2488A4A2C();

  swift_beginAccess();
  v117 = *(v54 + 40);
  v56 = v117;

  v182[0] = v55;
  v182[1] = xmmword_2488A68E0;
  v183 = v56;
  v149 = v53;
  v150 = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13E8, &qword_2488A71B8);
  sub_248851C48();
  v57 = v123;
  sub_2488A55EC();
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1410, &qword_2488A71C8) + 36));
  v59 = *(sub_2488A4DBC() + 20);
  v60 = *MEMORY[0x277CE0118];
  v61 = sub_2488A4F4C();
  v62 = *(*(v61 - 8) + 104);
  v62(&v58[v59], v60, v61);
  __asm { FMOV            V0.2D, #26.0 }

  *v58 = _Q0;
  *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1418, &qword_2488A71D0) + 36)] = 256;
  sub_2488A55FC();
  sub_2488A4BEC();
  v68 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1420, &qword_2488A71D8) + 36));
  v69 = v173;
  *v68 = v172;
  v68[1] = v69;
  v68[2] = v174;
  v70 = swift_getKeyPath();
  v71 = v125;
  v72 = v57 + *(v124 + 36);
  *v72 = v70;
  *(v72 + 8) = 1;
  sub_2488A507C();
  sub_248851DA8();
  v73 = v138;
  sub_2488A532C();
  (*(v126 + 8))(v71, v127);
  sub_2488532FC(v57, &qword_27EEB1378, &qword_2488A7110);
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1468, &qword_2488A7218) + 36);
  v75 = v73;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1470, &qword_2488A7220);
  sub_2488A4DDC();
  v62(v74, v60, v61);
  *(v74 + *(v76 + 36)) = 0;
  LOBYTE(v74) = sub_2488A515C();
  sub_2488A4B4C();
  v77 = v75 + *(v128 + 44);
  *v77 = v74;
  *(v77 + 8) = v78;
  *(v77 + 16) = v79;
  *(v77 + 24) = v80;
  *(v77 + 32) = v81;
  *(v77 + 40) = 0;
  sub_2488A55FC();
  sub_2488A4BEC();
  v127 = v177;
  v128 = v175;
  v125 = v180;
  v126 = v179;
  v192 = 1;
  v191 = v176;
  v190 = v178;
  v82 = v140;
  sub_2488A553C();
  LOBYTE(v74) = sub_2488A515C();
  sub_2488A4B4C();
  v83 = v82 + *(v133 + 44);
  *v83 = v74;
  *(v83 + 8) = v84;
  *(v83 + 16) = v85;
  *(v83 + 24) = v86;
  *(v83 + 32) = v87;
  *(v83 + 40) = 0;
  v88 = swift_allocObject();
  v89 = v137;
  v90 = *(v137 + 5);
  v88[5] = *(v137 + 4);
  v88[6] = v90;
  v88[7] = *(v89 + 6);
  v91 = *(v89 + 1);
  v88[1] = *v89;
  v88[2] = v91;
  v92 = *(v89 + 3);
  v88[3] = *(v89 + 2);
  v88[4] = v92;
  v151 = sub_248851FE0;
  v152 = v88;
  sub_248851FE8(v89, &v153);
  sub_2488A4FAC();
  v148 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1478, &qword_2488A7228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1480, &qword_2488A7230);
  sub_24883E5F8(&qword_27EEB1488, &qword_27EEB1478, &qword_2488A7228, MEMORY[0x277CDDB40]);
  sub_248852028();
  v93 = v144;
  sub_2488A52AC();

  LOBYTE(v89) = v186;
  v113 = v185;
  LOBYTE(v39) = v184;
  v94 = v139;
  sub_2488527B8(v143, v139, &qword_27EEB1398, &qword_2488A7130);
  v95 = v141;
  sub_2488527B8(v147, v141, &qword_27EEB1390, &qword_2488A7128);
  v114 = v189;
  v115 = v188;
  v116 = v187;
  v96 = v142;
  sub_2488527B8(v75, v142, &qword_27EEB1380, &qword_2488A7118);
  LODWORD(v123) = v192;
  LODWORD(v124) = v191;
  LODWORD(v133) = v190;
  v97 = v82;
  v98 = v145;
  sub_2488527B8(v97, v145, &qword_27EEB1370, &qword_2488A7108);
  v137 = *(v146 + 16);
  v99 = v134;
  v100 = v93;
  v101 = v135;
  (v137)(v134, v100, v135);
  v102 = v136;
  *v136 = 0;
  *(v102 + 8) = v89;
  v102[2] = v132;
  *(v102 + 24) = v113;
  v103 = v130;
  v102[4] = v131;
  *(v102 + 40) = v39;
  v104 = v129;
  v102[6] = v103;
  v102[7] = v104;
  v105 = v102;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14B8, &qword_2488A7248);
  sub_2488527B8(v94, v105 + v106[12], &qword_27EEB1398, &qword_2488A7130);
  sub_2488527B8(v95, v105 + v106[16], &qword_27EEB1390, &qword_2488A7128);
  v107 = v105 + v106[20];
  *v107 = 0;
  *(v107 + 8) = v114;
  *(v107 + 16) = v122;
  *(v107 + 24) = v115;
  *(v107 + 32) = v121;
  *(v107 + 40) = v116;
  v108 = v119;
  *(v107 + 48) = v120;
  *(v107 + 56) = v108;
  sub_2488527B8(v96, v105 + v106[24], &qword_27EEB1380, &qword_2488A7118);
  v109 = v105 + v106[28];
  *v109 = 0;
  *(v109 + 8) = v123;
  *(v109 + 16) = v128;
  *(v109 + 24) = v124;
  *(v109 + 32) = v127;
  *(v109 + 40) = v133;
  v110 = v125;
  *(v109 + 48) = v126;
  *(v109 + 56) = v110;
  sub_2488527B8(v98, v105 + v106[32], &qword_27EEB1370, &qword_2488A7108);
  (v137)(v105 + v106[36], v99, v101);

  v111 = *(v146 + 8);
  v111(v144, v101);
  sub_2488532FC(v140, &qword_27EEB1370, &qword_2488A7108);
  sub_2488532FC(v138, &qword_27EEB1380, &qword_2488A7118);
  sub_2488532FC(v147, &qword_27EEB1390, &qword_2488A7128);
  sub_2488532FC(v143, &qword_27EEB1398, &qword_2488A7130);
  v111(v99, v101);
  sub_2488532FC(v145, &qword_27EEB1370, &qword_2488A7108);
  sub_2488532FC(v142, &qword_27EEB1380, &qword_2488A7118);
  sub_2488532FC(v141, &qword_27EEB1390, &qword_2488A7128);
  return sub_2488532FC(v139, &qword_27EEB1398, &qword_2488A7130);
}

uint64_t sub_24884C6A4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1400, &qword_2488A71C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17E8, &qword_2488A74F8);
  MEMORY[0x28223BE20](v10);
  v12 = &v31[-v11 - 8];
  v32 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v13 = v33;
  swift_getKeyPath();
  *&v32 = v13;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v13 + 40);

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 24))(ObjectType, v15);
    v30 = a3;
    *&v32 = v17;
    MEMORY[0x28223BE20](v17);
    *(&v30 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1800, &qword_2488A7510);
    v18 = sub_248853868();
    sub_248851540(v18, v19, v20);
    sub_2488A4C2C();
    (*(v7 + 16))(v12, v9, v6);
    swift_storeEnumTagMultiPayload();
    v21 = sub_24883E5F8(&qword_27EEB13F8, &qword_27EEB1400, &qword_2488A71C0, MEMORY[0x277CDD938]);
    sub_248851D00(v21, v22, v23);
    sub_2488A4FCC();
    swift_unknownObjectRelease();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    *&v32 = a2[1];
    v33 = a2[4];
    v25 = v33;
    v26 = *(a2 + 1);
    *v12 = *a2;
    *(v12 + 1) = v26;
    *(v12 + 4) = v25;
    swift_storeEnumTagMultiPayload();

    sub_2488527B8(&v32, v31, &unk_27EEB17F0, &unk_2488A7500);
    sub_2488527B8(&v33, v31, &qword_27EEB1120, &qword_2488A67A0);
    v27 = sub_24883E5F8(&qword_27EEB13F8, &qword_27EEB1400, &qword_2488A71C0, MEMORY[0x277CDD938]);
    sub_248851D00(v27, v28, v29);
    return sub_2488A4FCC();
  }
}

uint64_t sub_24884CA9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = a1[4];
  v8 = a1[1];
  v3 = v8;
  v7 = v4;
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 40) = 0x3FF3333333333333;

  sub_2488527B8(&v8, v6, &unk_27EEB17F0, &unk_2488A7500);
  return sub_2488527B8(&v7, v6, &qword_27EEB1120, &qword_2488A67A0);
}

uint64_t sub_24884CB20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1688, &qword_2488A73D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  sub_2488A514C();
  v10 = a2;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1690, &qword_2488A73D8);
  sub_248852994();
  sub_2488A4B9C();
  sub_24883E5F8(&qword_27EEB16D0, &qword_27EEB1688, &qword_2488A73D0, MEMORY[0x277CDD6E0]);
  sub_2488A533C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24884CCBC@<X0>(double *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v81 = a3;
  v80 = sub_2488A495C();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2488A49EC();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = v62 - v7;
  v84 = sub_2488A56BC();
  v71 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v68 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = v62 - v10;
  v75 = sub_2488A497C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = v62 - v13;
  v66 = sub_2488A4DAC();
  v14 = *(v66 - 8);
  v65 = *(v14 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2488A4FDC();
  MEMORY[0x28223BE20](v63);
  v62[1] = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[0] = sub_2488A55BC();
  v17 = *(v62[0] - 8);
  MEMORY[0x28223BE20](v62[0]);
  v19 = (v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16A8, &qword_2488A73E0);
  MEMORY[0x28223BE20](v83);
  v21 = v62 - v20;
  v88 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v22 = v89;
  swift_getKeyPath();
  *&v88 = v22;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v23 = *(v22 + 24);

  swift_getKeyPath();
  *&v88 = v23;
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v25 = *(v23 + 48);
  v24 = *(v23 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16D8, &qword_2488A73F8);
  sub_2488A55CC();
  *(swift_allocObject() + 16) = xmmword_2488A68F0;
  *v19 = vdupq_n_s64(0x4048800000000000uLL);
  (*(v17 + 104))(v19, *MEMORY[0x277CDF100], v62[0]);
  sub_2488A55DC();
  v85 = v25;
  v86 = v24;
  v87 = a1;
  sub_2488A4FAC();
  LODWORD(v88) = 0;
  sub_2488516B0(&qword_27EEB16E0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_2488A5B0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16E8, &qword_2488A7400);
  sub_248852BA0();
  sub_2488A562C();

  LOBYTE(v19) = sub_2488A515C();
  sub_2488A4B4C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB16B8, &qword_2488A73E8) + 36)];
  *v34 = v19;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v64;
  v36 = v66;
  (*(v14 + 16))(v64, v67, v66);
  v37 = (*(v14 + 80) + 128) & ~*(v14 + 80);
  v38 = swift_allocObject();
  v39 = *(a1 + 5);
  *(v38 + 5) = *(a1 + 4);
  *(v38 + 6) = v39;
  *(v38 + 7) = *(a1 + 6);
  v40 = *(a1 + 1);
  *(v38 + 1) = *a1;
  *(v38 + 2) = v40;
  v41 = *(a1 + 3);
  *(v38 + 3) = *(a1 + 2);
  *(v38 + 4) = v41;
  (*(v14 + 32))(&v38[v37], v35, v36);
  v42 = *(v83 + 36);
  v67 = v21;
  v43 = &v21[v42];
  *v43 = sub_2488532D0;
  v43[1] = v38;
  v43[2] = 0;
  v43[3] = 0;
  sub_248851FE8(a1, &v88);
  v44 = v82;
  sub_2488A56AC();
  sub_248853D5C(0, &qword_27EEB1590, 0x277CCA8D8);
  v45 = sub_2488A590C();
  if (!v45)
  {
    v45 = [objc_opt_self() mainBundle];
  }

  v46 = v45;
  v47 = v73;
  sub_2488A49DC();
  v48 = v71;
  (*(v71 + 16))(v68, v44, v84);
  v49 = v76;
  v50 = v79;
  (*(v76 + 16))(v72, v47, v79);
  v51 = [v46 bundleURL];
  v52 = v77;
  sub_2488A49AC();

  (*(v78 + 104))(v52, *MEMORY[0x277CC9118], v80);
  v53 = v70;
  sub_2488A499C();

  (*(v49 + 8))(v47, v50);
  (*(v48 + 8))(v82, v84);
  v54 = v74;
  v55 = v75;
  (*(v74 + 16))(v69, v53, v75);
  v56 = sub_2488A524C();
  v58 = v57;
  LOBYTE(v52) = v59;
  sub_248852A50();
  v60 = v67;
  sub_2488A52FC();
  sub_24883E428(v56, v58, v52 & 1);

  (*(v54 + 8))(v53, v55);
  return sub_2488532FC(v60, &qword_27EEB16A8, &qword_2488A73E0);
}

uint64_t sub_24884D828(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (qword_27EEB1098 != -1)
  {
    swift_once();
  }

  v12 = qword_27EEB1978;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[5];
  *(v6 + 96) = a3[4];
  *(v6 + 112) = v7;
  *(v6 + 128) = a3[6];
  v8 = a3[1];
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  v9 = a3[3];
  *(v6 + 64) = a3[2];
  *(v6 + 80) = v9;

  sub_248851FE8(a3, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17A8, &qword_2488A7480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1700, &qword_2488A7408);
  sub_24883E5F8(&qword_27EEB17B0, &qword_27EEB17A8, &qword_2488A7480, MEMORY[0x277D83980]);
  sub_2488516B0(&qword_27EEB17B8, type metadata accessor for SymbolGroup, &unk_2488A7B18);
  sub_248852C24();
  return sub_2488A554C();
}

uint64_t sub_24884D9F4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1710, &qword_2488A7410);
  MEMORY[0x28223BE20](v8);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_24884E410(a1, &v11[-v9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1790, &qword_2488A7450);
  sub_248852CBC();
  sub_2488530D4();
  return sub_2488A556C();
}

uint64_t sub_24884DB04(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v14[14] = *(a1 + *(type metadata accessor for SymbolGroup(0) + 24));
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a4[5];
  *(v7 + 96) = a4[4];
  *(v7 + 112) = v8;
  *(v7 + 128) = a4[6];
  v9 = a4[1];
  *(v7 + 32) = *a4;
  *(v7 + 48) = v9;
  v10 = a4[3];
  *(v7 + 64) = a4[2];
  *(v7 + 80) = v10;

  sub_248851FE8(a4, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17C8, &qword_2488A74D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17D0, &qword_2488A74E0);
  sub_24883E5F8(&qword_27EEB17D8, &qword_27EEB17C8, &qword_2488A74D8, MEMORY[0x277D83980]);
  sub_2488516B0(&qword_27EEB17E0, type metadata accessor for SymbolMetadata, &unk_2488A7B80);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1798, &unk_2488A7458);
  v12 = sub_24883E5F8(&qword_27EEB17A0, &qword_27EEB1798, &unk_2488A7458, MEMORY[0x277CE1148]);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_2488A554C();
}

uint64_t sub_24884DD1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v9 = type metadata accessor for SymbolMetadata(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v33 - v12);
  v14 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1798, &unk_2488A7458);
  MEMORY[0x28223BE20](v36);
  v18 = &v33 - v17;
  sub_248851594(a1, v13);
  v20 = *a1;
  v19 = a1[1];
  v33 = v19;
  if (a3)
  {
    if (v20 == a2 && v19 == a3)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_2488A5A8C();
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v13[1];
  *v16 = *v13;
  *(v16 + 1) = v22;
  sub_2488534E4(v13, &v16[*(v14 + 24)], type metadata accessor for SymbolMetadata);
  v16[16] = v21 & 1;
  sub_2488534E4(v16, v18, type metadata accessor for SymbolView);
  v23 = &v18[*(v36 + 52)];
  v24 = v33;
  *v23 = v20;
  *(v23 + 1) = v24;
  v25 = a1;
  v26 = v35;
  sub_248851594(v25, v35);
  v27 = (*(v34 + 80) + 128) & ~*(v34 + 80);
  v28 = swift_allocObject();
  v29 = a4[5];
  v28[5] = a4[4];
  v28[6] = v29;
  v28[7] = a4[6];
  v30 = a4[1];
  v28[1] = *a4;
  v28[2] = v30;
  v31 = a4[3];
  v28[3] = a4[2];
  v28[4] = v31;
  sub_2488534E4(v26, v28 + v27, type metadata accessor for SymbolMetadata);

  sub_248851FE8(a4, v38);
  sub_24883E5F8(&qword_27EEB17A0, &qword_27EEB1798, &unk_2488A7458, MEMORY[0x277CE1148]);
  sub_2488A52DC();

  return sub_2488532FC(v18, &qword_27EEB1798, &unk_2488A7458);
}

uint64_t sub_24884E068(__int128 *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5];
  v25 = *a1;
  v22[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  v7 = v24;
  swift_getKeyPath();
  *&v22[0] = v7;
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v8 = *(v7 + 24);

  swift_beginAccess();
  if (*(v8 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v21[-24] = 0;
    *&v21[-16] = 0;
    *&v21[-32] = v8;
    *&v22[0] = v8;
    sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
    sub_2488A4A1C();
  }

  else
  {
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
  }

  v22[0] = v25;
  sub_2488A54EC();
  v10 = v23;
  swift_getKeyPath();
  *&v22[0] = v10;
  sub_2488A4A2C();

  v11 = *a2;
  v12 = a2[1];

  sub_24883FE6C(v11, v12);

  v13 = sub_2488A58CC();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_2488A58AC();
  sub_248851FE8(a1, v22);
  v14 = sub_2488A589C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = a1[5];
  *(v15 + 96) = a1[4];
  *(v15 + 112) = v17;
  *(v15 + 128) = a1[6];
  v18 = a1[1];
  *(v15 + 32) = *a1;
  *(v15 + 48) = v18;
  v19 = a1[3];
  *(v15 + 64) = a1[2];
  *(v15 + 80) = v19;
  sub_24889D734(0, 0, v6, &unk_2488A74F0, v15);
}

uint64_t sub_24884E410@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_2488A497C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1760, &qword_2488A7438);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1750, &qword_2488A7430);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v61 = &v59 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1738, &qword_2488A7428);
  MEMORY[0x28223BE20](v66);
  v13 = &v59 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB17C0, &qword_2488A7488);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1730, &qword_2488A7420);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v63 = &v59 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1720, &qword_2488A7418) - 8;
  MEMORY[0x28223BE20](v65);
  v64 = &v59 - v18;
  v19 = type metadata accessor for SymbolGroup(0);
  (*(v4 + 16))(v6, &a1[*(v19 + 20)], v3);
  v20 = sub_2488A524C();
  v22 = v21;
  *&v72 = v20;
  *(&v72 + 1) = v21;
  v24 = v23 & 1;
  LOBYTE(v73) = v23 & 1;
  *(&v73 + 1) = v25;
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_2488A59EC();

  v70 = 0xD000000000000012;
  v71 = 0x80000002488AE570;
  MEMORY[0x24C1DB190](*a1, *(a1 + 1));
  v26 = v60;
  sub_2488A533C();

  sub_24883E428(v20, v22, v24);

  sub_2488A560C();
  sub_2488A4DCC();
  v27 = v61;
  sub_2488533E4(v26, v61, &qword_27EEB1760, &qword_2488A7438);
  v28 = (v27 + *(v10 + 44));
  v29 = v77;
  v28[4] = v76;
  v28[5] = v29;
  v28[6] = v78;
  v30 = v73;
  *v28 = v72;
  v28[1] = v30;
  v31 = v75;
  v28[2] = v74;
  v28[3] = v31;
  LODWORD(v3) = sub_2488A4FFC();
  sub_2488533E4(v27, v13, &qword_27EEB1750, &qword_2488A7430);
  *&v13[*(v66 + 36)] = v3;
  sub_2488A51EC();
  sub_248852EC8();
  v32 = v62;
  sub_2488A528C();
  sub_2488532FC(v13, &qword_27EEB1738, &qword_2488A7428);
  v33 = sub_2488A51BC();
  KeyPath = swift_getKeyPath();
  v35 = v63;
  (*(v67 + 32))(v63, v32, v68);
  v36 = (v35 + *(v16 + 44));
  *v36 = KeyPath;
  v36[1] = v33;
  LOBYTE(v16) = sub_2488A515C();
  sub_2488A4B4C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v64;
  sub_2488533E4(v35, v64, &qword_27EEB1730, &qword_2488A7420);
  v46 = v45 + *(v65 + 44);
  *v46 = v16;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  LOBYTE(v16) = sub_2488A517C();
  sub_2488A4B4C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v45;
  v56 = v69;
  sub_2488533E4(v55, v69, &qword_27EEB1720, &qword_2488A7418);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1710, &qword_2488A7410);
  v58 = v56 + *(result + 36);
  *v58 = v16;
  *(v58 + 8) = v48;
  *(v58 + 16) = v50;
  *(v58 + 24) = v52;
  *(v58 + 32) = v54;
  *(v58 + 40) = 0;
  return result;
}

uint64_t sub_24884EA48(__int128 *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB13A0, &qword_2488A7138);
  sub_2488A54EC();
  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB1348, type metadata accessor for FolderCustomizationModel, &unk_2488A6F9C);
  sub_2488A4A2C();

  v2 = *(v6 + 24);

  swift_getKeyPath();
  sub_2488516B0(&qword_27EEB11C8, type metadata accessor for DSFolderIconInfo, &protocol conformance descriptor for DSFolderIconInfo);
  sub_2488A4A2C();

  swift_beginAccess();
  v3 = *(v2 + 56);

  if (v3)
  {
    v5 = sub_2488A561C();
    MEMORY[0x28223BE20](v5);
    sub_2488A4C0C();
  }

  return result;
}

uint64_t sub_24884EC38@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_2488A4F9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14A8, &qword_2488A7240);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14C0, &qword_2488A7250);
  v10 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v32 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14A0, &qword_2488A7238);
  MEMORY[0x28223BE20](v32);
  v14 = &v32 - v13;
  *v9 = sub_2488A4F0C();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14C8, &qword_2488A7258);
  sub_248848928(a1, &v9[*(v15 + 44)]);
  sub_2488A4F8C();
  sub_24883E5F8(&qword_27EEB14B0, &qword_27EEB14A8, &qword_2488A7240, MEMORY[0x277CE1138]);
  sub_2488A530C();
  (*(v4 + 8))(v6, v3);
  sub_2488532FC(v9, &qword_27EEB14A8, &qword_2488A7240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB14D0, &qword_2488A7260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2488A6490;
  LOBYTE(v3) = sub_2488A51AC();
  *(inited + 32) = v3;
  v17 = sub_2488A518C();
  *(inited + 33) = v17;
  v18 = sub_2488A519C();
  sub_2488A519C();
  if (sub_2488A519C() != v3)
  {
    v18 = sub_2488A519C();
  }

  sub_2488A519C();
  if (sub_2488A519C() != v17)
  {
    v18 = sub_2488A519C();
  }

  (*(v10 + 32))(v14, v12, v33);
  v19 = &v14[*(v32 + 36)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_2488A515C();
  sub_2488A4B4C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v34;
  sub_2488533E4(v14, v34, &qword_27EEB14A0, &qword_2488A7238);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1480, &qword_2488A7230);
  v31 = v29 + *(result + 36);
  *v31 = v20;
  *(v31 + 8) = v22;
  *(v31 + 16) = v24;
  *(v31 + 24) = v26;
  *(v31 + 32) = v28;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_24884F034@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[5];
  v16[4] = v9[4];
  v16[5] = v11;
  v16[6] = v9[6];
  v12 = v9[1];
  v16[0] = *v9;
  v16[1] = v12;
  v13 = v9[3];
  v16[2] = v9[2];
  v16[3] = v13;
  *a9 = sub_2488A4FAC();
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1200, &qword_2488A6A08);
  return sub_24884B640(v16, (a9 + *(v14 + 44)));
}

id sub_24884F0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_24883EC18(a1, a2, a3);
  sub_2488A4EEC();
  result = v6;
  if (!v6)
  {
    result = [objc_opt_self() defaultStyleConfiguration];
  }

  *a4 = result;
  return result;
}

uint64_t sub_24884F120(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_24883EC18(a1, a2, a3);
  v4 = v3;
  return sub_2488A4EFC();
}

uint64_t sub_24884F17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_248851594(v13, v10);
        sub_248851594(v14, v6);
        v16 = *v10 == *v6 && v10[1] == v6[1];
        if (!v16 && (sub_2488A5A8C() & 1) == 0)
        {
          break;
        }

        v17 = MEMORY[0x24C1DA380](v10 + *(v4 + 20), v6 + *(v4 + 20));
        sub_2488515F8(v6);
        sub_2488515F8(v10);
        if (v17)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v17 & 1;
      }

      sub_2488515F8(v6);
      sub_2488515F8(v10);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24884F334(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2488A596C())
  {
    if (a2 >> 62)
    {
      result = sub_2488A596C();
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_54;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      break;
    }

    v4 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v21)
    {
      if (!v22)
      {
        goto LABEL_48;
      }

      v23 = *v4;
      v24 = *v20;
      swift_beginAccess();
      a2 = *(v23 + 16);
      v3 = *(v23 + 24);
      swift_beginAccess();
      v25 = a2 == *(v24 + 16) && v3 == *(v24 + 24);
      if (!v25 && (sub_2488A5A8C() & 1) == 0)
      {
        return 0;
      }

      --v22;
      --v21;
      ++v4;
      ++v20;
      if (!--i)
      {
        return 1;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v11 = a2 & 0xC000000000000001;
  for (j = 4; ; ++j)
  {
    v13 = j - 4;
    v14 = j - 3;
    if (__OFADD__(j - 4, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C1DB410](j - 4, v3);
      v4 = result;
      if (v11)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(v3 + 8 * j);

    if (v11)
    {
LABEL_23:
      v15 = MEMORY[0x24C1DB410](j - 4, a2);
      goto LABEL_28;
    }

LABEL_26:
    if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v15 = *(a2 + 8 * j);

LABEL_28:
    swift_beginAccess();
    v16 = v4[2];
    v17 = v4[3];
    swift_beginAccess();
    if (v16 == *(v15 + 16) && v17 == *(v15 + 24))
    {
    }

    else
    {
      v19 = sub_2488A5A8C();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (v14 == i)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

_OWORD *sub_24884F64C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24884F660(uint64_t a1, uint64_t a2)
{
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](a1);
  MEMORY[0x24C1DB500](a2);
  v4 = sub_2488A5AFC();

  return sub_24884FFD4(a1, a2, v4);
}

unint64_t sub_24884F6E0(uint64_t a1, uint64_t a2)
{
  sub_2488A5ADC();
  sub_2488A574C();
  v4 = sub_2488A5AFC();

  return sub_24885004C(a1, a2, v4, v5);
}

uint64_t sub_24884F758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1340, &qword_2488A6FB8);
  result = sub_2488A5A6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_2488A5ADC();
      MEMORY[0x24C1DB500](v29);
      MEMORY[0x24C1DB500](*(&v29 + 1));
      result = sub_2488A5AFC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24884F9F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB1880, &qword_2488A7568);
  v33 = v4;
  result = sub_2488A5A6C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24884F64C(v24, v34);
      }

      else
      {
        sub_24885055C(v24, v34);
      }

      sub_2488A5ADC();
      sub_2488A574C();
      result = sub_2488A5AFC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24884F64C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_24884FCB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24884F660(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24884F758(v16, a4 & 1);
      result = sub_24884F660(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2488A5ABC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_248850104();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}