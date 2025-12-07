void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v68 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v68 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v69 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v60 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v69 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v60 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v52 = v16;
  if (*(v4 + 58))
  {
    v67 = 0;
    v51 = 0;
    v59 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v51 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v59 = 0;
    v51 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v67 = 0;
  v51 = 0;
  v59 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v66 = 0;
    v50 = 0;
    v58 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v50 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v58 = 0;
    v50 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v65 = 0;
    v49 = 0;
    v57 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v66 = 0;
  v50 = 0;
  v58 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v49 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v49 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v57 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v57 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v65 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v65 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v52 >= 1)
  {
    v30 = 0;
    v56 = (**a3 + *(v4 + 40));
    v55 = (*(*a3 + 8) + *(v5 + 40));
    v54 = **a4 + *(v6 + 40);
    do
    {
      v53 = v30;
      if (v60 >= 1)
      {
        v31 = 0;
        v63 = v55;
        v64 = v56;
        v62 = v54;
        do
        {
          v61 = v31;
          if (v69 >= 1)
          {
            v32 = 0;
            v33 = v63;
            v34 = v64;
            v35 = v62;
            do
            {
              v70 = v32;
              v36 = v68;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v68 >= 1)
              {
                do
                {
                  _H0 = *v37;
                  __asm { FCVT            S0, H0 }

                  _H1 = v37[1];
                  __asm { FCVT            S1, H1 }

                  *v39 = __divsc3(_S0, _S1, *v38, v38[1]);
                  *(v39 + 4) = v48;
                  v39 += v29;
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v70 + 1;
              v35 += v65;
              v33 = (v33 + v66);
              v34 = (v34 + v67);
            }

            while (v70 + 1 != v69);
          }

          v31 = v61 + 1;
          v62 += v57;
          v63 = (v63 + v58);
          v64 = (v64 + v59);
        }

        while (v61 + 1 != v60);
      }

      v30 = v53 + 1;
      v54 += v49;
      v55 = (v55 + v50);
      v56 = (v56 + v51);
    }

    while (v53 + 1 != v52);
  }
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v64 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v63 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v63 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v63 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v63 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v62 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v62 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v62 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v62 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v64 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  _H0 = *v53;
                  __asm { FCVT            S0, H0 }

                  *v55 = _S0 / *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v62);
      v41 = (v41 + v63);
    }

    while (v40 != v64);
  }

  return result;
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v68 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v68 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v69 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v60 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v69 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v60 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v52 = v16;
  if (*(v4 + 58))
  {
    v67 = 0;
    v51 = 0;
    v59 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v51 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v59 = 0;
    v51 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v67 = 0;
  v51 = 0;
  v59 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v66 = 0;
    v50 = 0;
    v58 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v50 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v58 = 0;
    v50 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v65 = 0;
    v49 = 0;
    v57 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v66 = 0;
  v50 = 0;
  v58 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v49 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v49 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v57 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v57 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v65 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v65 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v52 >= 1)
  {
    v30 = 0;
    v56 = (**a3 + *(v4 + 40));
    v55 = (*(*a3 + 8) + *(v5 + 40));
    v54 = **a4 + *(v6 + 40);
    do
    {
      v53 = v30;
      if (v60 >= 1)
      {
        v31 = 0;
        v63 = v55;
        v64 = v56;
        v62 = v54;
        do
        {
          v61 = v31;
          if (v69 >= 1)
          {
            v32 = 0;
            v33 = v63;
            v34 = v64;
            v35 = v62;
            do
            {
              v70 = v32;
              v36 = v68;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v68 >= 1)
              {
                do
                {
                  _H2 = *v38;
                  __asm { FCVT            S2, H2 }

                  _H3 = v38[1];
                  __asm { FCVT            S3, H3 }

                  *v39 = __divsc3(*v37, v37[1], _S2, _S3);
                  *(v39 + 4) = v48;
                  v39 += v29;
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v70 + 1;
              v35 += v65;
              v33 = (v33 + v66);
              v34 = (v34 + v67);
            }

            while (v70 + 1 != v69);
          }

          v31 = v61 + 1;
          v62 += v57;
          v63 = (v63 + v58);
          v64 = (v64 + v59);
        }

        while (v61 + 1 != v60);
      }

      v30 = v53 + 1;
      v54 += v49;
      v55 = (v55 + v50);
      v56 = (v56 + v51);
    }

    while (v53 + 1 != v52);
  }
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v64 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v63 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v63 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v63 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v63 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v62 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v62 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v62 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v62 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v64 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  _H1 = *v54;
                  __asm { FCVT            S1, H1 }

                  *v55 = *v53 / _S1;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v62);
      v41 = (v41 + v63);
    }

    while (v40 != v64);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v37 > v30 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v37);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v55 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v36 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v36 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v38 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v38 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v39 = 0;
    v40 = (**a3 + *(v4 + 40));
    v41 = (*(*a3 + 8) + *(v5 + 40));
    v42 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v43 = 0;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        do
        {
          if (v13 >= 1)
          {
            v47 = 0;
            v48 = v44;
            v49 = v45;
            v50 = v46;
            do
            {
              v51 = v10;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              if (v10 >= 1)
              {
                do
                {
                  *v54 = COERCE_FLOAT(*v52 << 16) / *v53;
                  v54 = (v54 + v38);
                  v53 = (v53 + v34);
                  v52 = (v52 + v26);
                  --v51;
                }

                while (v51);
              }

              ++v47;
              v50 = (v50 + v35);
              v49 = (v49 + v27);
              v48 = (v48 + v20);
            }

            while (v47 != v13);
          }

          ++v43;
          v46 = (v46 + v36);
          v45 = (v45 + v28);
          v44 = (v44 + result);
        }

        while (v43 != v17);
      }

      ++v39;
      v42 = (v42 + v55);
      v41 = (v41 + v56);
      v40 = (v40 + v57);
    }

    while (v39 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v37 > v30 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v37);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v55 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v36 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v36 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v38 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v38 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v39 = 0;
    v40 = (**a3 + *(v4 + 40));
    v41 = (*(*a3 + 8) + *(v5 + 40));
    v42 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v43 = 0;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        do
        {
          if (v13 >= 1)
          {
            v47 = 0;
            v48 = v44;
            v49 = v45;
            v50 = v46;
            do
            {
              v51 = v10;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              if (v10 >= 1)
              {
                do
                {
                  *v54 = *v52 / COERCE_FLOAT(*v53 << 16);
                  v54 = (v54 + v38);
                  v53 = (v53 + v34);
                  v52 = (v52 + v26);
                  --v51;
                }

                while (v51);
              }

              ++v47;
              v50 = (v50 + v35);
              v49 = (v49 + v27);
              v48 = (v48 + v20);
            }

            while (v47 != v13);
          }

          ++v43;
          v46 = (v46 + v36);
          v45 = (v45 + v28);
          v44 = (v44 + result);
        }

        while (v43 != v17);
      }

      ++v39;
      v42 = (v42 + v55);
      v41 = (v41 + v56);
      v40 = (v40 + v57);
    }

    while (v39 != v58);
  }

  return result;
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v73 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v73 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v74 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v65 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v74 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v65 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v57 = v16;
  if (*(v4 + 58))
  {
    v72 = 0;
    v56 = 0;
    v64 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v56 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v64 = 0;
    v56 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v72 = 0;
  v56 = 0;
  v64 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v71 = 0;
    v55 = 0;
    v63 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v55 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v63 = 0;
    v55 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v71 = 0;
    }

    else
    {
      v71 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v70 = 0;
    v54 = 0;
    v62 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v71 = 0;
  v55 = 0;
  v63 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v54 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v62 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v62 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v70 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v70 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v57 >= 1)
  {
    v30 = 0;
    v61 = (**a3 + *(v4 + 40));
    v60 = (*(*a3 + 8) + *(v5 + 40));
    v59 = (**a4 + *(v6 + 40));
    do
    {
      v58 = v30;
      if (v65 >= 1)
      {
        v31 = 0;
        v68 = v60;
        v69 = v61;
        v67 = v59;
        do
        {
          v66 = v31;
          if (v74 >= 1)
          {
            v32 = 0;
            v33 = v68;
            v34 = v69;
            v35 = v67;
            do
            {
              v75 = v32;
              v36 = v73;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v73 >= 1)
              {
                do
                {
                  _H0 = *v37;
                  _H1 = v37[1];
                  _H2 = *v38;
                  _H3 = v38[1];
                  __asm
                  {
                    FCVT            S0, H0
                    FCVT            S1, H1
                    FCVT            S2, H2
                    FCVT            S3, H3
                  }

                  _S0 = __divsc3(_S0, _S1, _S2, _S3);
                  __asm
                  {
                    FCVT            H0, S0
                    FCVT            H1, S1
                  }

                  *v39 = LOWORD(_S0);
                  v39[1] = _S1;
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v75 + 1;
              v35 = (v35 + v70);
              v33 = (v33 + v71);
              v34 = (v34 + v72);
            }

            while (v75 + 1 != v74);
          }

          v31 = v66 + 1;
          v67 = (v67 + v62);
          v68 = (v68 + v63);
          v69 = (v69 + v64);
        }

        while (v66 + 1 != v65);
      }

      v30 = v58 + 1;
      v59 = (v59 + v54);
      v60 = (v60 + v55);
      v61 = (v61 + v56);
    }

    while (v58 + 1 != v57);
  }
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = *v53 / *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v59 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v59 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v57 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v57 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v56 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v56 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v56 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v55 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v56 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v59 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  v54 = COERCE_FLOAT(*v51 << 16) / COERCE_FLOAT(*v52 << 16);
                  *v53 = HIWORD(COERCE_UNSIGNED_INT(v54 + (COERCE_FLOAT(LODWORD(v54) & 0xFF800000) * 0.0039062)));
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v59);
      }

      ++v38;
      v41 = (v41 + v55);
      v40 = (v40 + v56);
      v39 = (v39 + v57);
    }

    while (v38 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 / *v52;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 / *v52;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 / *v52;
                  v53 = (v53 + v37);
                  v52 = (v52 + v33);
                  v51 = (v51 + v25);
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 = (v49 + v34);
              v48 = (v48 + v26);
              v47 = (v47 + v19);
            }

            while (v46 != v13);
          }

          ++v42;
          v45 = (v45 + v35);
          v44 = (v44 + v27);
          v43 = (v43 + result);
        }

        while (v42 != v57);
      }

      ++v38;
      v41 = (v41 + v54);
      v40 = (v40 + v55);
      v39 = (v39 + v56);
    }

    while (v38 != v18);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)3>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v57 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v17 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v17 = 0;
  v15 = v7 - 4;
  v18 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    result = 0;
    goto LABEL_38;
  }

  v21 = *(v4 + 16);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v22);
    }

    v23 = v21 - 3;
    goto LABEL_27;
  }

  if (v21 == 3)
  {
    v23 = 0;
    v56 = 0;
LABEL_27:
    if (v23 > v21 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v23);
    }

    v28 = v21 - 2;
    goto LABEL_32;
  }

  if (v21 >= 2)
  {
    v28 = 0;
    result = 0;
    v56 = 0;
LABEL_32:
    if (v28 > v21 - 1 || *(*(v4 + 24) + 8 * v28) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v28);
    }

    v24 = v21 - 1;
    goto LABEL_37;
  }

  v24 = 0;
  v19 = 0;
  v56 = 0;
  result = 0;
  v25 = 0;
  if (v21 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v24 > v21 - 1)
  {
LABEL_38:
    v25 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v26 = 0;
    v55 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v24) == 1)
  {
    v25 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(*(v4 + 64) + 8 * v24);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v29 = *(v5 + 16);
  v30 = v29 - 4;
  if (v29 >= 4)
  {
    if (v30 > v29 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v30);
    }

    v31 = v29 - 3;
    goto LABEL_57;
  }

  if (v29 == 3)
  {
    v31 = 0;
    v55 = 0;
LABEL_57:
    if (v31 > v29 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v31);
    }

    v36 = v29 - 2;
    goto LABEL_62;
  }

  if (v29 >= 2)
  {
    v36 = 0;
    v27 = 0;
    v55 = 0;
LABEL_62:
    if (v36 > v29 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v36);
    }

    v32 = v29 - 1;
LABEL_67:
    if (v32 <= v29 - 1)
    {
      if (*(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v33 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v34 = 0;
    v54 = 0;
    v35 = 0;
    goto LABEL_92;
  }

  v32 = 0;
  v26 = 0;
  v55 = 0;
  v27 = 0;
  v33 = 0;
  if (v29 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v54 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v54 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v35 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v35 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v34 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v34 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v37 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v37 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v38 = 0;
    v39 = (**a3 + *(v4 + 40));
    v40 = (*(*a3 + 8) + *(v5 + 40));
    v41 = (**a4 + *(v6 + 40));
    do
    {
      if (v57 >= 1)
      {
        v42 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        do
        {
          if (v13 >= 1)
          {
            v46 = 0;
            v47 = v43;
            v48 = v44;
            v49 = v45;
            do
            {
              v50 = v10;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if (v10 >= 1)
              {
                do
                {
                  *v53 = *v51 / *v52;
                  v53 += v37;
                  v52 += v33;
                  v51 += v25;
                  --v50;
                }

                while (v50);
              }

              ++v46;
              v49 += v34;
              v48 += v26;
              v47 += v19;
            }

            while (v46 != v13);
          }

          ++v42;
          v45 += v35;
          v44 += v27;
          v43 += result;
        }

        while (v42 != v57);
      }

      ++v38;
      v41 += v54;
      v40 += v55;
      v39 += v56;
    }

    while (v38 != v18);
  }

  return result;
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v71 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v71 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v72 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v63 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v72 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v63 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v55 = v16;
  if (*(v5 + 58))
  {
    v70 = 0;
    v54 = 0;
    v62 = 0;
    goto LABEL_38;
  }

  v17 = *(v5 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = *(*(v5 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v54 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v5 + 64) + 8 * v19);
    }

    v21 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v21 = 0;
    v62 = 0;
    v54 = 0;
LABEL_32:
    if (v21 > v17 - 1 || *(*(v5 + 24) + 8 * v21) == 1)
    {
      v70 = 0;
    }

    else
    {
      v70 = *(*(v5 + 64) + 8 * v21);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v70 = 0;
  v54 = 0;
  v62 = 0;
  v73 = 0;
  if (v17 != 1)
  {
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v73 = 0;
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v69 = 0;
    v53 = 0;
    v61 = 0;
    goto LABEL_68;
  }

  if (*(*(v5 + 24) + 8 * v20) == 1)
  {
    v73 = 0;
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v73 = *(*(v5 + 64) + 8 * v20);
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_57;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v53 = 0;
LABEL_57:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      v61 = 0;
    }

    else
    {
      v61 = *(*(v4 + 64) + 8 * v24);
    }

    v27 = v22 - 2;
    goto LABEL_62;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v61 = 0;
    v53 = 0;
LABEL_62:
    if (v27 > v22 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v69 = 0;
    }

    else
    {
      v69 = *(*(v4 + 64) + 8 * v27);
    }

    v25 = v22 - 1;
LABEL_67:
    if (v25 <= v22 - 1)
    {
      if (*(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v26 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v68 = 0;
    v52 = 0;
    v60 = 0;
    goto LABEL_92;
  }

  v25 = 0;
  v69 = 0;
  v53 = 0;
  v61 = 0;
  v26 = 0;
  if (v22 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v52 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v52 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v60 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v60 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v68 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v68 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v28 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v28 = 0;
LABEL_93:
  if (v55 >= 1)
  {
    v29 = 0;
    v59 = (**a3 + *(v5 + 40));
    v58 = (*(*a3 + 8) + *(v4 + 40));
    v57 = **a4 + *(v6 + 40);
    while (1)
    {
      v56 = v29;
      if (v63 >= 1)
      {
        break;
      }

LABEL_95:
      v29 = v56 + 1;
      v57 += v52;
      v58 = (v58 + v53);
      v59 = (v59 + v54);
      if (v56 + 1 == v55)
      {
        return;
      }
    }

    v30 = 0;
    v66 = v58;
    v67 = v59;
    v65 = v57;
    while (1)
    {
      v64 = v30;
      if (v72 >= 1)
      {
        break;
      }

LABEL_98:
      v30 = v64 + 1;
      v65 += v60;
      v66 = (v66 + v61);
      v67 = (v67 + v62);
      if (v64 + 1 == v63)
      {
        goto LABEL_95;
      }
    }

    v31 = 0;
    v33 = v66;
    v32 = v67;
    v34 = v65;
    while (1)
    {
      v35 = v71;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      if (v71 >= 1)
      {
        break;
      }

LABEL_101:
      ++v31;
      v34 += v68;
      v33 = (v33 + v69);
      v32 = (v32 + v70);
      if (v31 == v72)
      {
        goto LABEL_98;
      }
    }

    while (1)
    {
      v42 = *v36;
      v43 = v36[1];
      v44 = *v37;
      v45 = v37[1];
      v46 = hypotf(*v36, v43);
      v47 = logf(v46);
      v48 = atan2f(v43, v42);
      v49 = v44 * v48;
      v39 = (v44 * v47) - (v45 * v48);
      *v41.i32 = v49 + (v45 * v47);
      if (*v41.i32 == 0.0)
      {
        v74 = v41;
        v39 = expf(v39);
        v41.i64[0] = 0;
        v40.i64[0] = 0x8000000080000000;
        v40.i64[1] = 0x8000000080000000;
        v41.i32[0] = vbslq_s8(v40, v41, v74).u32[0];
      }

      else
      {
        if (fabsf(v39) == INFINITY)
        {
          if (v39 >= 0.0)
          {
            if (COERCE_UNSIGNED_INT(fabs(v49 + (v45 * v47))) >= 0x7F800000)
            {
              if (fabsf(*v41.i32) == INFINITY)
              {
                *v41.i32 = NAN;
              }

              goto LABEL_105;
            }
          }

          else if (COERCE_UNSIGNED_INT(fabs(v49 + (v45 * v47))) >= 0x7F800000)
          {
            *v41.i32 = 1.0;
          }
        }

        v75 = *v41.i32;
        v50 = expf(v39);
        v51 = __sincosf_stret(v75);
        v39 = v50 * v51.__cosval;
        *v41.i32 = v50 * v51.__sinval;
      }

LABEL_105:
      *v38 = v39;
      *(v38 + 4) = v41.i32[0];
      v38 += v28;
      v37 = (v37 + v26);
      v36 = (v36 + v73);
      if (!--v35)
      {
        goto LABEL_101;
      }
    }
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v59 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v59 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v60 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v51 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v60 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v51 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v43 = v16;
  if (*(v4 + 58))
  {
    v58 = 0;
    v42 = 0;
    v50 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v42 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v50 = 0;
    v42 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v58 = 0;
  v42 = 0;
  v50 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v57 = 0;
    v41 = 0;
    v49 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v41 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v49 = 0;
    v41 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v56 = 0;
    v40 = 0;
    v48 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v57 = 0;
  v41 = 0;
  v49 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v40 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v40 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v48 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v48 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v56 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v56 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v43 >= 1)
  {
    v30 = 0;
    v47 = (**a3 + *(v4 + 40));
    v46 = (*(*a3 + 8) + *(v5 + 40));
    v45 = (**a4 + *(v6 + 40));
    do
    {
      v44 = v30;
      if (v51 >= 1)
      {
        v31 = 0;
        v54 = v46;
        v55 = v47;
        v53 = v45;
        do
        {
          v52 = v31;
          if (v60 >= 1)
          {
            v32 = 0;
            v33 = v54;
            v34 = v55;
            v35 = v53;
            do
            {
              v61 = v32;
              v36 = v59;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v59 >= 1)
              {
                do
                {
                  *v39 = powf(*v37, *v38);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v61 + 1;
              v35 = (v35 + v56);
              v33 = (v33 + v57);
              v34 = (v34 + v58);
            }

            while (v61 + 1 != v60);
          }

          v31 = v52 + 1;
          v53 = (v53 + v48);
          v54 = (v54 + v49);
          v55 = (v55 + v50);
        }

        while (v52 + 1 != v51);
      }

      v30 = v44 + 1;
      v45 = (v45 + v40);
      v46 = (v46 + v41);
      v47 = (v47 + v42);
    }

    while (v44 + 1 != v43);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v77 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v77 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v78 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v69 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v78 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v69 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v61 = v16;
  if (*(v5 + 58))
  {
    v76 = 0;
    v60 = 0;
    v68 = 0;
    goto LABEL_38;
  }

  v17 = *(v5 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(*(v5 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v60 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(*(v5 + 64) + 8 * v19);
    }

    v21 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v21 = 0;
    v68 = 0;
    v60 = 0;
LABEL_32:
    if (v21 > v17 - 1 || *(*(v5 + 24) + 8 * v21) == 1)
    {
      v76 = 0;
    }

    else
    {
      v76 = *(*(v5 + 64) + 8 * v21);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v76 = 0;
  v60 = 0;
  v68 = 0;
  v79 = 0;
  if (v17 != 1)
  {
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v79 = 0;
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v75 = 0;
    v59 = 0;
    v67 = 0;
    goto LABEL_68;
  }

  if (*(*(v5 + 24) + 8 * v20) == 1)
  {
    v79 = 0;
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v79 = *(*(v5 + 64) + 8 * v20);
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_57;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v59 = 0;
LABEL_57:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(*(v4 + 64) + 8 * v24);
    }

    v27 = v22 - 2;
    goto LABEL_62;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v67 = 0;
    v59 = 0;
LABEL_62:
    if (v27 > v22 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v75 = 0;
    }

    else
    {
      v75 = *(*(v4 + 64) + 8 * v27);
    }

    v25 = v22 - 1;
LABEL_67:
    if (v25 <= v22 - 1)
    {
      if (*(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v26 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v74 = 0;
    v58 = 0;
    v66 = 0;
    goto LABEL_92;
  }

  v25 = 0;
  v75 = 0;
  v59 = 0;
  v67 = 0;
  v26 = 0;
  if (v22 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v58 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v58 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v66 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v66 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v74 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v74 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v28 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v28 = 0;
LABEL_93:
  if (v61 >= 1)
  {
    v29 = 0;
    v65 = (**a3 + *(v5 + 40));
    v64 = (*(*a3 + 8) + *(v4 + 40));
    v63 = **a4 + *(v6 + 40);
    while (1)
    {
      v62 = v29;
      if (v69 >= 1)
      {
        break;
      }

LABEL_95:
      v29 = v62 + 1;
      v63 += v58;
      v64 = (v64 + v59);
      v65 = (v65 + v60);
      if (v62 + 1 == v61)
      {
        return;
      }
    }

    v30 = 0;
    v72 = v64;
    v73 = v65;
    v71 = v63;
    while (1)
    {
      v70 = v30;
      if (v78 >= 1)
      {
        break;
      }

LABEL_98:
      v30 = v70 + 1;
      v71 += v66;
      v72 = (v72 + v67);
      v73 = (v73 + v68);
      if (v70 + 1 == v69)
      {
        goto LABEL_95;
      }
    }

    v31 = 0;
    v33 = v72;
    v32 = v73;
    v34 = v71;
    while (1)
    {
      v35 = v77;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      if (v77 >= 1)
      {
        break;
      }

LABEL_101:
      ++v31;
      v34 += v74;
      v33 = (v33 + v75);
      v32 = (v32 + v76);
      if (v31 == v78)
      {
        goto LABEL_98;
      }
    }

    while (1)
    {
      _H0 = *v36;
      __asm { FCVT            S11, H0 }

      _H0 = v36[1];
      __asm { FCVT            S12, H0 }

      v50 = *v37;
      v51 = v37[1];
      v52 = hypotf(_S11, _S12);
      v53 = logf(v52);
      v54 = atan2f(_S12, _S11);
      v55 = v50 * v54;
      v39 = (v50 * v53) - (v51 * v54);
      *v41.i32 = v55 + (v51 * v53);
      if (*v41.i32 == 0.0)
      {
        v80 = v41;
        v39 = expf(v39);
        v41.i64[0] = 0;
        v40.i64[0] = 0x8000000080000000;
        v40.i64[1] = 0x8000000080000000;
        v41.i32[0] = vbslq_s8(v40, v41, v80).u32[0];
      }

      else
      {
        if (fabsf(v39) == INFINITY)
        {
          if (v39 >= 0.0)
          {
            if (COERCE_UNSIGNED_INT(fabs(v55 + (v51 * v53))) >= 0x7F800000)
            {
              if (fabsf(*v41.i32) == INFINITY)
              {
                *v41.i32 = NAN;
              }

              goto LABEL_105;
            }
          }

          else if (COERCE_UNSIGNED_INT(fabs(v55 + (v51 * v53))) >= 0x7F800000)
          {
            *v41.i32 = 1.0;
          }
        }

        v81 = *v41.i32;
        v56 = expf(v39);
        v57 = __sincosf_stret(v81);
        v39 = v56 * v57.__cosval;
        *v41.i32 = v56 * v57.__sinval;
      }

LABEL_105:
      *v38 = v39;
      *(v38 + 4) = v41.i32[0];
      v38 += v28;
      v37 = (v37 + v26);
      v36 = (v36 + v79);
      if (!--v35)
      {
        goto LABEL_101;
      }
    }
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v65 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v65 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v66 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v57 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v66 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v49 = v16;
  if (*(v4 + 58))
  {
    v64 = 0;
    v48 = 0;
    v56 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v48 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v56 = 0;
    v48 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v64 = 0;
  v48 = 0;
  v56 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v63 = 0;
    v47 = 0;
    v55 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v47 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v55 = 0;
    v47 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v62 = 0;
    v46 = 0;
    v54 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v63 = 0;
  v47 = 0;
  v55 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v46 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v46 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v54 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v54 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v62 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v62 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v49 >= 1)
  {
    v30 = 0;
    v53 = (**a3 + *(v4 + 40));
    v52 = (*(*a3 + 8) + *(v5 + 40));
    v51 = (**a4 + *(v6 + 40));
    do
    {
      v50 = v30;
      if (v57 >= 1)
      {
        v31 = 0;
        v60 = v52;
        v61 = v53;
        v59 = v51;
        do
        {
          v58 = v31;
          if (v66 >= 1)
          {
            v32 = 0;
            v33 = v60;
            v34 = v61;
            v35 = v59;
            do
            {
              v67 = v32;
              v36 = v65;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v65 >= 1)
              {
                do
                {
                  _H0 = *v37;
                  __asm { FCVT            S0, H0; float }

                  *v39 = powf(_S0, *v38);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v67 + 1;
              v35 = (v35 + v62);
              v33 = (v33 + v63);
              v34 = (v34 + v64);
            }

            while (v67 + 1 != v66);
          }

          v31 = v58 + 1;
          v59 = (v59 + v54);
          v60 = (v60 + v55);
          v61 = (v61 + v56);
        }

        while (v58 + 1 != v57);
      }

      v30 = v50 + 1;
      v51 = (v51 + v46);
      v52 = (v52 + v47);
      v53 = (v53 + v48);
    }

    while (v50 + 1 != v49);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v77 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v77 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v78 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v69 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v78 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v69 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v61 = v16;
  if (*(v5 + 58))
  {
    v76 = 0;
    v60 = 0;
    v68 = 0;
    goto LABEL_38;
  }

  v17 = *(v5 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(*(v5 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v60 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(*(v5 + 64) + 8 * v19);
    }

    v21 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v21 = 0;
    v68 = 0;
    v60 = 0;
LABEL_32:
    if (v21 > v17 - 1 || *(*(v5 + 24) + 8 * v21) == 1)
    {
      v76 = 0;
    }

    else
    {
      v76 = *(*(v5 + 64) + 8 * v21);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v76 = 0;
  v60 = 0;
  v68 = 0;
  v79 = 0;
  if (v17 != 1)
  {
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v79 = 0;
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v75 = 0;
    v59 = 0;
    v67 = 0;
    goto LABEL_68;
  }

  if (*(*(v5 + 24) + 8 * v20) == 1)
  {
    v79 = 0;
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v79 = *(*(v5 + 64) + 8 * v20);
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_57;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v59 = 0;
LABEL_57:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(*(v4 + 64) + 8 * v24);
    }

    v27 = v22 - 2;
    goto LABEL_62;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v67 = 0;
    v59 = 0;
LABEL_62:
    if (v27 > v22 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v75 = 0;
    }

    else
    {
      v75 = *(*(v4 + 64) + 8 * v27);
    }

    v25 = v22 - 1;
LABEL_67:
    if (v25 <= v22 - 1)
    {
      if (*(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v26 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v74 = 0;
    v58 = 0;
    v66 = 0;
    goto LABEL_92;
  }

  v25 = 0;
  v75 = 0;
  v59 = 0;
  v67 = 0;
  v26 = 0;
  if (v22 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v58 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v58 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v66 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v66 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v74 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v74 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v28 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v28 = 0;
LABEL_93:
  if (v61 >= 1)
  {
    v29 = 0;
    v65 = (**a3 + *(v5 + 40));
    v64 = (*(*a3 + 8) + *(v4 + 40));
    v63 = **a4 + *(v6 + 40);
    while (1)
    {
      v62 = v29;
      if (v69 >= 1)
      {
        break;
      }

LABEL_95:
      v29 = v62 + 1;
      v63 += v58;
      v64 = (v64 + v59);
      v65 = (v65 + v60);
      if (v62 + 1 == v61)
      {
        return;
      }
    }

    v30 = 0;
    v72 = v64;
    v73 = v65;
    v71 = v63;
    while (1)
    {
      v70 = v30;
      if (v78 >= 1)
      {
        break;
      }

LABEL_98:
      v30 = v70 + 1;
      v71 += v66;
      v72 = (v72 + v67);
      v73 = (v73 + v68);
      if (v70 + 1 == v69)
      {
        goto LABEL_95;
      }
    }

    v31 = 0;
    v33 = v72;
    v32 = v73;
    v34 = v71;
    while (1)
    {
      v35 = v77;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      if (v77 >= 1)
      {
        break;
      }

LABEL_101:
      ++v31;
      v34 += v74;
      v33 = (v33 + v75);
      v32 = (v32 + v76);
      if (v31 == v78)
      {
        goto LABEL_98;
      }
    }

    while (1)
    {
      v42 = *v36;
      v43 = v36[1];
      _H0 = *v37;
      __asm { FCVT            S8, H0 }

      _H0 = v37[1];
      __asm { FCVT            S9, H0 }

      v52 = hypotf(*v36, v43);
      v53 = logf(v52);
      v54 = atan2f(v43, v42);
      v55 = v54 * _S8;
      v39 = (v53 * _S8) - (v54 * _S9);
      *v41.i32 = v55 + (v53 * _S9);
      if (*v41.i32 == 0.0)
      {
        v80 = v41;
        v39 = expf(v39);
        v41.i64[0] = 0;
        v40.i64[0] = 0x8000000080000000;
        v40.i64[1] = 0x8000000080000000;
        v41.i32[0] = vbslq_s8(v40, v41, v80).u32[0];
      }

      else
      {
        if (fabsf(v39) == INFINITY)
        {
          if (v39 >= 0.0)
          {
            if (COERCE_UNSIGNED_INT(fabs(v55 + (v53 * _S9))) >= 0x7F800000)
            {
              if (fabsf(*v41.i32) == INFINITY)
              {
                *v41.i32 = NAN;
              }

              goto LABEL_105;
            }
          }

          else if (COERCE_UNSIGNED_INT(fabs(v55 + (v53 * _S9))) >= 0x7F800000)
          {
            *v41.i32 = 1.0;
          }
        }

        v81 = *v41.i32;
        v56 = expf(v39);
        v57 = __sincosf_stret(v81);
        v39 = v56 * v57.__cosval;
        *v41.i32 = v56 * v57.__sinval;
      }

LABEL_105:
      *v38 = v39;
      *(v38 + 4) = v41.i32[0];
      v38 += v28;
      v37 = (v37 + v26);
      v36 = (v36 + v79);
      if (!--v35)
      {
        goto LABEL_101;
      }
    }
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v65 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v65 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v66 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v57 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v66 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v57 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v49 = v16;
  if (*(v4 + 58))
  {
    v64 = 0;
    v48 = 0;
    v56 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v48 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v56 = 0;
    v48 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v64 = 0;
  v48 = 0;
  v56 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v63 = 0;
    v47 = 0;
    v55 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v47 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v55 = 0;
    v47 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v62 = 0;
    v46 = 0;
    v54 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v63 = 0;
  v47 = 0;
  v55 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v46 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v46 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v54 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v54 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v62 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v62 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v49 >= 1)
  {
    v30 = 0;
    v53 = (**a3 + *(v4 + 40));
    v52 = (*(*a3 + 8) + *(v5 + 40));
    v51 = (**a4 + *(v6 + 40));
    do
    {
      v50 = v30;
      if (v57 >= 1)
      {
        v31 = 0;
        v60 = v52;
        v61 = v53;
        v59 = v51;
        do
        {
          v58 = v31;
          if (v66 >= 1)
          {
            v32 = 0;
            v33 = v60;
            v34 = v61;
            v35 = v59;
            do
            {
              v67 = v32;
              v36 = v65;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v65 >= 1)
              {
                do
                {
                  _H1 = *v38;
                  __asm { FCVT            S1, H1; float }

                  *v39 = powf(*v37, _S1);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v67 + 1;
              v35 = (v35 + v62);
              v33 = (v33 + v63);
              v34 = (v34 + v64);
            }

            while (v67 + 1 != v66);
          }

          v31 = v58 + 1;
          v59 = (v59 + v54);
          v60 = (v60 + v55);
          v61 = (v61 + v56);
        }

        while (v58 + 1 != v57);
      }

      v30 = v50 + 1;
      v51 = (v51 + v46);
      v52 = (v52 + v47);
      v53 = (v53 + v48);
    }

    while (v50 + 1 != v49);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v59 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v59 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v60 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v51 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v60 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v51 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v43 = v16;
  if (*(v4 + 58))
  {
    v58 = 0;
    v42 = 0;
    v50 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v42 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v50 = 0;
    v42 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v58 = 0;
  v42 = 0;
  v50 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v57 = 0;
    v41 = 0;
    v49 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v41 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v49 = 0;
    v41 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v56 = 0;
    v40 = 0;
    v48 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v57 = 0;
  v41 = 0;
  v49 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v40 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v40 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v48 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v48 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v56 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v56 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v43 >= 1)
  {
    v30 = 0;
    v47 = (**a3 + *(v4 + 40));
    v46 = (*(*a3 + 8) + *(v5 + 40));
    v45 = (**a4 + *(v6 + 40));
    do
    {
      v44 = v30;
      if (v51 >= 1)
      {
        v31 = 0;
        v54 = v46;
        v55 = v47;
        v53 = v45;
        do
        {
          v52 = v31;
          if (v60 >= 1)
          {
            v32 = 0;
            v33 = v54;
            v34 = v55;
            v35 = v53;
            do
            {
              v61 = v32;
              v36 = v59;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v59 >= 1)
              {
                do
                {
                  *v39 = powf(COERCE_FLOAT(*v37 << 16), *v38);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v61 + 1;
              v35 = (v35 + v56);
              v33 = (v33 + v57);
              v34 = (v34 + v58);
            }

            while (v61 + 1 != v60);
          }

          v31 = v52 + 1;
          v53 = (v53 + v48);
          v54 = (v54 + v49);
          v55 = (v55 + v50);
        }

        while (v52 + 1 != v51);
      }

      v30 = v44 + 1;
      v45 = (v45 + v40);
      v46 = (v46 + v41);
      v47 = (v47 + v42);
    }

    while (v44 + 1 != v43);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v59 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v59 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v60 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v51 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v60 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v51 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v43 = v16;
  if (*(v4 + 58))
  {
    v58 = 0;
    v42 = 0;
    v50 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v42 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v50 = 0;
    v42 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v58 = 0;
  v42 = 0;
  v50 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v57 = 0;
    v41 = 0;
    v49 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v41 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v49 = 0;
    v41 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v56 = 0;
    v40 = 0;
    v48 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v57 = 0;
  v41 = 0;
  v49 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v40 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v40 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v48 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v48 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v56 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v56 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v43 >= 1)
  {
    v30 = 0;
    v47 = (**a3 + *(v4 + 40));
    v46 = (*(*a3 + 8) + *(v5 + 40));
    v45 = (**a4 + *(v6 + 40));
    do
    {
      v44 = v30;
      if (v51 >= 1)
      {
        v31 = 0;
        v54 = v46;
        v55 = v47;
        v53 = v45;
        do
        {
          v52 = v31;
          if (v60 >= 1)
          {
            v32 = 0;
            v33 = v54;
            v34 = v55;
            v35 = v53;
            do
            {
              v61 = v32;
              v36 = v59;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v59 >= 1)
              {
                do
                {
                  *v39 = powf(*v37, COERCE_FLOAT(*v38 << 16));
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v61 + 1;
              v35 = (v35 + v56);
              v33 = (v33 + v57);
              v34 = (v34 + v58);
            }

            while (v61 + 1 != v60);
          }

          v31 = v52 + 1;
          v53 = (v53 + v48);
          v54 = (v54 + v49);
          v55 = (v55 + v50);
        }

        while (v52 + 1 != v51);
      }

      v30 = v44 + 1;
      v45 = (v45 + v40);
      v46 = (v46 + v41);
      v47 = (v47 + v42);
    }

    while (v44 + 1 != v43);
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v81 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v81 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v82 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v73 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v82 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v73 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v65 = v16;
  if (*(v5 + 58))
  {
    v80 = 0;
    v64 = 0;
    v72 = 0;
    goto LABEL_38;
  }

  v17 = *(v5 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v5 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v64 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
    {
      v72 = 0;
    }

    else
    {
      v72 = *(*(v5 + 64) + 8 * v19);
    }

    v21 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v21 = 0;
    v72 = 0;
    v64 = 0;
LABEL_32:
    if (v21 > v17 - 1 || *(*(v5 + 24) + 8 * v21) == 1)
    {
      v80 = 0;
    }

    else
    {
      v80 = *(*(v5 + 64) + 8 * v21);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v80 = 0;
  v64 = 0;
  v72 = 0;
  v83 = 0;
  if (v17 != 1)
  {
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v83 = 0;
    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v79 = 0;
    v63 = 0;
    v71 = 0;
    goto LABEL_68;
  }

  if (*(*(v5 + 24) + 8 * v20) == 1)
  {
    v83 = 0;
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v83 = *(*(v5 + 64) + 8 * v20);
    if (*(v4 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_57;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v63 = 0;
LABEL_57:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      v71 = 0;
    }

    else
    {
      v71 = *(*(v4 + 64) + 8 * v24);
    }

    v27 = v22 - 2;
    goto LABEL_62;
  }

  if (v22 >= 2)
  {
    v27 = 0;
    v71 = 0;
    v63 = 0;
LABEL_62:
    if (v27 > v22 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = *(*(v4 + 64) + 8 * v27);
    }

    v25 = v22 - 1;
LABEL_67:
    if (v25 <= v22 - 1)
    {
      if (*(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v26 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v78 = 0;
    v62 = 0;
    v70 = 0;
    goto LABEL_92;
  }

  v25 = 0;
  v79 = 0;
  v63 = 0;
  v71 = 0;
  v26 = 0;
  if (v22 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v62 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v62 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v70 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v70 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v78 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v78 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v28 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v28 = 0;
LABEL_93:
  if (v65 >= 1)
  {
    v29 = 0;
    v69 = (**a3 + *(v5 + 40));
    v68 = (*(*a3 + 8) + *(v4 + 40));
    v67 = (**a4 + *(v6 + 40));
    while (1)
    {
      v66 = v29;
      if (v73 >= 1)
      {
        break;
      }

LABEL_95:
      v29 = v66 + 1;
      v67 = (v67 + v62);
      v68 = (v68 + v63);
      v69 = (v69 + v64);
      if (v66 + 1 == v65)
      {
        return;
      }
    }

    v30 = 0;
    v76 = v68;
    v77 = v69;
    v75 = v67;
    while (1)
    {
      v74 = v30;
      if (v82 >= 1)
      {
        break;
      }

LABEL_98:
      v30 = v74 + 1;
      v75 = (v75 + v70);
      v76 = (v76 + v71);
      v77 = (v77 + v72);
      if (v74 + 1 == v73)
      {
        goto LABEL_95;
      }
    }

    v31 = 0;
    v33 = v76;
    v32 = v77;
    v34 = v75;
    while (1)
    {
      v35 = v81;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      if (v81 >= 1)
      {
        break;
      }

LABEL_101:
      ++v31;
      v34 = (v34 + v78);
      v33 = (v33 + v79);
      v32 = (v32 + v80);
      if (v31 == v82)
      {
        goto LABEL_98;
      }
    }

    while (1)
    {
      _H0 = *v36;
      _H1 = v36[1];
      _H2 = *v37;
      _H3 = v37[1];
      __asm
      {
        FCVT            S11, H0
        FCVT            S12, H1
        FCVT            S8, H2
        FCVT            S9, H3
      }

      v56 = hypotf(_S11, _S12);
      v57 = logf(v56);
      v58 = atan2f(_S12, _S11);
      v59 = v58 * _S8;
      _S0 = (v57 * _S8) - (v58 * _S9);
      *_Q1.i32 = v59 + (v57 * _S9);
      if (*_Q1.i32 == 0.0)
      {
        v84 = _Q1;
        _S0 = expf(_S0);
        _Q1.i64[0] = 0;
        v40.i64[0] = 0x8000000080000000;
        v40.i64[1] = 0x8000000080000000;
        _Q1.i32[0] = vbslq_s8(v40, _Q1, v84).u32[0];
      }

      else
      {
        if (fabsf(_S0) == INFINITY)
        {
          if (_S0 >= 0.0)
          {
            if (COERCE_UNSIGNED_INT(fabs(v59 + (v57 * _S9))) >= 0x7F800000)
            {
              if (fabsf(*_Q1.i32) == INFINITY)
              {
                *_Q1.i32 = NAN;
              }

              goto LABEL_105;
            }
          }

          else if (COERCE_UNSIGNED_INT(fabs(v59 + (v57 * _S9))) >= 0x7F800000)
          {
            *_Q1.i32 = 1.0;
          }
        }

        v85 = *_Q1.i32;
        v60 = expf(_S0);
        v61 = __sincosf_stret(v85);
        _S0 = v60 * v61.__cosval;
        *_Q1.i32 = v60 * v61.__sinval;
      }

LABEL_105:
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *v38 = _H0;
      v38[1] = _H1;
      v38 = (v38 + v28);
      v37 = (v37 + v26);
      v36 = (v36 + v83);
      if (!--v35)
      {
        goto LABEL_101;
      }
    }
  }
}

void mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)4>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v10 = v7 - 2;
    v68 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v68 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v7 - 3;
    v69 = 1;
    v12 = 1;
LABEL_6:
    v13 = v7 - 4;
    v14 = 1;
    v60 = 1;
    v15 = 1;
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  v10 = v7 - 2;
  v69 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v10 = 0;
    v12 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v7 - 3;
  v60 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v12 = 0;
    v11 = 0;
    v15 = 0;
    v13 = -1;
    v10 = 1;
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
  v12 = 0;
  v15 = 0;
  v13 = v7 - 4;
  v16 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v52 = v16;
  if (*(v4 + 58))
  {
    v67 = 0;
    v51 = 0;
    v59 = 0;
    goto LABEL_38;
  }

  v17 = *(v4 + 16);
  v18 = v17 - 4;
  if (v17 >= 4)
  {
    if (v18 > v17 - 1 || *(*(v4 + 24) + 8 * v18) == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = *(*(v4 + 64) + 8 * v18);
    }

    v19 = v17 - 3;
    goto LABEL_27;
  }

  if (v17 == 3)
  {
    v19 = 0;
    v51 = 0;
LABEL_27:
    if (v19 > v17 - 1 || *(*(v4 + 24) + 8 * v19) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v4 + 64) + 8 * v19);
    }

    v22 = v17 - 2;
    goto LABEL_32;
  }

  if (v17 >= 2)
  {
    v22 = 0;
    v59 = 0;
    v51 = 0;
LABEL_32:
    if (v22 > v17 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = *(*(v4 + 64) + 8 * v22);
    }

    v20 = v17 - 1;
    goto LABEL_37;
  }

  v20 = 0;
  v67 = 0;
  v51 = 0;
  v59 = 0;
  v21 = 0;
  if (v17 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v20 > v17 - 1)
  {
LABEL_38:
    v21 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v66 = 0;
    v50 = 0;
    v58 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v20) == 1)
  {
    v21 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = *(*(v4 + 64) + 8 * v20);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_57;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v50 = 0;
LABEL_57:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v5 + 64) + 8 * v25);
    }

    v28 = v23 - 2;
    goto LABEL_62;
  }

  if (v23 >= 2)
  {
    v28 = 0;
    v58 = 0;
    v50 = 0;
LABEL_62:
    if (v28 > v23 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(*(v5 + 64) + 8 * v28);
    }

    v26 = v23 - 1;
LABEL_67:
    if (v26 <= v23 - 1)
    {
      if (*(*(v5 + 24) + 8 * v26) == 1)
      {
        v27 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v27 = *(*(v5 + 64) + 8 * v26);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v65 = 0;
    v49 = 0;
    v57 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v66 = 0;
  v50 = 0;
  v58 = 0;
  v27 = 0;
  if (v23 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v14 & 1) != 0 || v13 > v7 - 1 || *(*(v6 + 24) + 8 * v13) == 1)
  {
    v49 = 0;
    if (v15)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v49 = *(*(v6 + 64) + 8 * v13);
    if (v15)
    {
      goto LABEL_84;
    }
  }

  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_84:
    v57 = 0;
    if (v12)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v57 = *(*(v6 + 64) + 8 * v11);
  if (v12)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v10 > v7 - 1 || *(*(v6 + 24) + 8 * v10) == 1)
  {
LABEL_87:
    v65 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v65 = *(*(v6 + 64) + 8 * v10);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v29 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v29 = 0;
LABEL_93:
  if (v52 >= 1)
  {
    v30 = 0;
    v56 = (**a3 + *(v4 + 40));
    v55 = (*(*a3 + 8) + *(v5 + 40));
    v54 = (**a4 + *(v6 + 40));
    do
    {
      v53 = v30;
      if (v60 >= 1)
      {
        v31 = 0;
        v63 = v55;
        v64 = v56;
        v62 = v54;
        do
        {
          v61 = v31;
          if (v69 >= 1)
          {
            v32 = 0;
            v33 = v63;
            v34 = v64;
            v35 = v62;
            do
            {
              v70 = v32;
              v36 = v68;
              v37 = v34;
              v38 = v33;
              v39 = v35;
              if (v68 >= 1)
              {
                do
                {
                  _H0 = *v37;
                  _H1 = *v38;
                  __asm
                  {
                    FCVT            S0, H0; float
                    FCVT            S1, H1; float
                  }

                  _S0 = powf(_S0, _S1);
                  __asm { FCVT            H0, S0 }

                  *v39 = LOWORD(_S0);
                  v39 = (v39 + v29);
                  v38 = (v38 + v27);
                  v37 = (v37 + v21);
                  --v36;
                }

                while (v36);
              }

              v32 = v70 + 1;
              v35 = (v35 + v65);
              v33 = (v33 + v66);
              v34 = (v34 + v67);
            }

            while (v70 + 1 != v69);
          }

          v31 = v61 + 1;
          v62 = (v62 + v57);
          v63 = (v63 + v58);
          v64 = (v64 + v59);
        }

        while (v61 + 1 != v60);
      }

      v30 = v53 + 1;
      v54 = (v54 + v49);
      v55 = (v55 + v50);
      v56 = (v56 + v51);
    }

    while (v53 + 1 != v52);
  }
}