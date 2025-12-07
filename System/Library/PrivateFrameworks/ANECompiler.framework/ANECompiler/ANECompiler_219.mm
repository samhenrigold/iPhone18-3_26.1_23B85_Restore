uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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

                  if (*v54 < _S0)
                  {
                    _S0 = *v54;
                  }

                  *v55 = _S0;
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

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v69 = 1;
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
  v69 = *(v9 + 8 * (v7 - 3));
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
  v66 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v65 = 0;
    v68 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v65 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v68 = 0;
    v65 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v65 = 0;
  v68 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v64 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v64 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v64 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v63 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v64 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v63 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v63 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v67 = v37;
      if (v69 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 32));
                  _H2 = *v51;
                  __asm { FCVT            S2, H2 }

                  _H3 = v51[1];
                  __asm { FCVT            S3, H3 }

                  v61 = v50[1] < _S3;
                  if (*v50 != _S2)
                  {
                    v61 = *v50 < _S2;
                  }

                  if (v61)
                  {
                    v62 = *v50 | (*(v50 + 1) << 32);
                  }

                  else
                  {
                    v62 = LODWORD(_S2) | (LODWORD(_S3) << 32);
                  }

                  *v52 = v62;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v68);
        }

        while (v41 != v69);
      }

      ++v37;
      v40 = (v40 + v63);
      v39 = (v39 + v64);
      v38 = (v38 + v65);
    }

    while (v67 + 1 != v66);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v65 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v64 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v64 = 0;
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
    v64 = 0;
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
  v64 = 0;
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
    v63 = 0;
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
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v63 = 0;
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
    v63 = 0;
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
  v63 = 0;
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
  if (v65 >= 1)
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
                  v56 = *v53;
                  _H1 = *v54;
                  __asm { FCVT            S1, H1 }

                  if (*v53 > _S1)
                  {
                    v56 = _S1;
                  }

                  *v55 = v56;
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
      v42 = (v42 + v63);
      v41 = (v41 + v64);
    }

    while (v40 != v65);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
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
    v58 = 0;
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
  v58 = 0;
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
    v57 = 0;
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
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
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
    v57 = 0;
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
    v56 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v57 = 0;
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
    v56 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v56 = *(*(v6 + 64) + 8 * v15);
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
  if (v59 >= 1)
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
                  LODWORD(v55) = *v52 << 16;
                  if (*v53 < v55)
                  {
                    v55 = *v53;
                  }

                  *v54 = v55;
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
      v42 = (v42 + v56);
      v41 = (v41 + v57);
      v40 = (v40 + v58);
    }

    while (v39 != v59);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
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
    v58 = 0;
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
  v58 = 0;
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
    v57 = 0;
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
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
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
    v57 = 0;
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
    v56 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v57 = 0;
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
    v56 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v56 = *(*(v6 + 64) + 8 * v15);
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
  if (v59 >= 1)
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
                  v55 = *v52;
                  if (*v52 > COERCE_FLOAT(*v53 << 16))
                  {
                    v55 = *v53 << 16;
                  }

                  *v54 = v55;
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
      v42 = (v42 + v56);
      v41 = (v41 + v57);
      v40 = (v40 + v58);
    }

    while (v39 != v59);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)15>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v61 = 1;
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
  v61 = *(v9 + 8 * (v7 - 3));
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
    v60 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v57 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v60 = 0;
    v57 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v57 = 0;
  v60 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v56 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v56 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v56 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v55 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v56 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v59 = v37;
      if (v61 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 16));
                  v53 = v50[1] < v51[1];
                  if (*v50 != *v51)
                  {
                    v53 = *v50 < *v51;
                  }

                  if (v53)
                  {
                    v54 = *v50 | (*(v50 + 1) << 16);
                  }

                  else
                  {
                    v54 = *v51 | (*(v51 + 1) << 16);
                  }

                  *v52 = v54;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v60);
        }

        while (v41 != v61);
      }

      ++v37;
      v40 = (v40 + v55);
      v39 = (v39 + v56);
      v38 = (v38 + v57);
    }

    while (v59 + 1 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
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
    v58 = 0;
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
  v58 = 0;
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
    v57 = 0;
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
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
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
    v57 = 0;
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
  v57 = 0;
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
  if (v59 >= 1)
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
                  v56 = *v53;
                  if (*v54 < *v53)
                  {
                    v56 = *v54;
                  }

                  *v55 = v56;
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
      v42 = (v42 + v57);
      v41 = (v41 + v58);
    }

    while (v40 != v59);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)15>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
  v57 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    v58 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v56 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v58 = 0;
    v56 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v56 = 0;
  v58 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v55 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v55 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v55 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v54 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v55 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      if (v59 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  v53 = *v50;
                  result = (v53 << 16);
                  if (COERCE_FLOAT(*v51 << 16) < COERCE_FLOAT(v53 << 16))
                  {
                    LOWORD(v53) = *v51;
                  }

                  *v52 = v53;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v58);
        }

        while (v41 != v59);
      }

      ++v37;
      v40 = (v40 + v54);
      v39 = (v39 + v55);
      v38 = (v38 + v56);
    }

    while (v37 != v57);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  if (v18 >= 1)
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
                  v54 = *v52;
                  if (*v52 >= *v51)
                  {
                    v54 = *v51;
                  }

                  *v53 = v54;
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

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  if (v18 >= 1)
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
                  v54 = *v52;
                  if (*v52 >= *v51)
                  {
                    v54 = *v51;
                  }

                  *v53 = v54;
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

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  if (v18 >= 1)
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
                  v54 = *v52;
                  if (v54 >= *v51)
                  {
                    LOWORD(v54) = *v51;
                  }

                  *v53 = v54;
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

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)15>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  if (v18 >= 1)
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
                  v54 = *v52;
                  if (v54 >= *v51)
                  {
                    LOBYTE(v54) = *v51;
                  }

                  *v53 = v54;
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

        while (v42 != v59);
      }

      ++v38;
      v41 += v55;
      v40 += v56;
      v39 += v57;
    }

    while (v38 != v58);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v61 = 1;
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
  v61 = *(v9 + 8 * (v7 - 3));
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
    v60 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v57 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v60 = 0;
    v57 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v57 = 0;
  v60 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v56 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v56 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v56 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v55 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v56 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v59 = v37;
      if (v61 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 32));
                  v53 = v50[1] > v51[1];
                  if (*v50 != *v51)
                  {
                    v53 = *v50 > *v51;
                  }

                  if (v53)
                  {
                    v54 = *v50 | (*(v50 + 1) << 32);
                  }

                  else
                  {
                    v54 = *v51 | (*(v51 + 1) << 32);
                  }

                  *v52 = v54;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v60);
        }

        while (v41 != v61);
      }

      ++v37;
      v40 = (v40 + v55);
      v39 = (v39 + v56);
      v38 = (v38 + v57);
    }

    while (v59 + 1 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)16>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
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
    v58 = 0;
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
  v58 = 0;
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
    v57 = 0;
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
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
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
    v57 = 0;
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
  v57 = 0;
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
  if (v59 >= 1)
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
                  v56 = *v53;
                  if (*v53 < *v54)
                  {
                    v56 = *v54;
                  }

                  *v55 = v56;
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
      v42 = (v42 + v57);
      v41 = (v41 + v58);
    }

    while (v40 != v59);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v69 = 1;
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
  v69 = *(v9 + 8 * (v7 - 3));
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
  v66 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v65 = 0;
    v68 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v65 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v68 = 0;
    v65 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v65 = 0;
  v68 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v64 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v64 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v64 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v63 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v64 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v63 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v63 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v67 = v37;
      if (v69 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  _H0 = *v50;
                  __asm { FCVT            S0, H0 }

                  _H1 = v50[1];
                  __asm { FCVT            S1, H1 }

                  result = (*v51 | (*(v51 + 1) << 32));
                  v61 = v51[1] < _S1;
                  if (*v51 != _S0)
                  {
                    v61 = *v51 < _S0;
                  }

                  if (v61)
                  {
                    v62 = LODWORD(_S0) | (LODWORD(_S1) << 32);
                  }

                  else
                  {
                    v62 = *v51 | (*(v51 + 1) << 32);
                  }

                  *v52 = v62;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v68);
        }

        while (v41 != v69);
      }

      ++v37;
      v40 = (v40 + v63);
      v39 = (v39 + v64);
      v38 = (v38 + v65);
    }

    while (v67 + 1 != v66);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)16>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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

                  if (*v54 > _S0)
                  {
                    _S0 = *v54;
                  }

                  *v55 = _S0;
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

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v69 = 1;
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
  v69 = *(v9 + 8 * (v7 - 3));
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
  v66 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v65 = 0;
    v68 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v65 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v68 = 0;
    v65 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v65 = 0;
  v68 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v64 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v64 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v64 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v63 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v64 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v63 = 0;
    if (v17)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v63 = *(*(v6 + 64) + 8 * v15);
    if (v17)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v67 = v37;
      if (v69 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 32));
                  _H2 = *v51;
                  __asm { FCVT            S2, H2 }

                  _H3 = v51[1];
                  __asm { FCVT            S3, H3 }

                  v61 = v50[1] > _S3;
                  if (*v50 != _S2)
                  {
                    v61 = *v50 > _S2;
                  }

                  if (v61)
                  {
                    v62 = *v50 | (*(v50 + 1) << 32);
                  }

                  else
                  {
                    v62 = LODWORD(_S2) | (LODWORD(_S3) << 32);
                  }

                  *v52 = v62;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v68);
        }

        while (v41 != v69);
      }

      ++v37;
      v40 = (v40 + v63);
      v39 = (v39 + v64);
      v38 = (v38 + v65);
    }

    while (v67 + 1 != v66);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)16>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v65 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v64 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v64 = 0;
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
    v64 = 0;
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
  v64 = 0;
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
    v63 = 0;
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
      v63 = 0;
    }

    else
    {
      v63 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v63 = 0;
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
    v63 = 0;
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
  v63 = 0;
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
  if (v65 >= 1)
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
                  v56 = *v53;
                  _H1 = *v54;
                  __asm { FCVT            S1, H1 }

                  if (*v53 < _S1)
                  {
                    v56 = _S1;
                  }

                  *v55 = v56;
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
      v42 = (v42 + v63);
      v41 = (v41 + v64);
    }

    while (v40 != v65);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)16>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
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
    v58 = 0;
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
  v58 = 0;
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
    v57 = 0;
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
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
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
    v57 = 0;
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
    v56 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v57 = 0;
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
    v56 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v56 = *(*(v6 + 64) + 8 * v15);
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
  if (v59 >= 1)
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
                  LODWORD(v55) = *v52 << 16;
                  if (*v53 > v55)
                  {
                    v55 = *v53;
                  }

                  *v54 = v55;
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
      v42 = (v42 + v56);
      v41 = (v41 + v57);
      v40 = (v40 + v58);
    }

    while (v39 != v59);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)16>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
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
    v58 = 0;
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
  v58 = 0;
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
    v57 = 0;
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
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
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
    v57 = 0;
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
    v56 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v57 = 0;
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
    v56 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v56 = *(*(v6 + 64) + 8 * v15);
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
  if (v59 >= 1)
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
                  v55 = *v52;
                  if (*v52 < COERCE_FLOAT(*v53 << 16))
                  {
                    v55 = *v53 << 16;
                  }

                  *v54 = v55;
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
      v42 = (v42 + v56);
      v41 = (v41 + v57);
      v40 = (v40 + v58);
    }

    while (v39 != v59);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)16>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
    v61 = 1;
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
  v61 = *(v9 + 8 * (v7 - 3));
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
    v60 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v57 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v60 = 0;
    v57 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v57 = 0;
  v60 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v56 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v56 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v56 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v55 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v56 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      v59 = v37;
      if (v61 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  result = (*v50 | (*(v50 + 1) << 16));
                  v53 = v50[1] > v51[1];
                  if (*v50 != *v51)
                  {
                    v53 = *v50 > *v51;
                  }

                  if (v53)
                  {
                    v54 = *v50 | (*(v50 + 1) << 16);
                  }

                  else
                  {
                    v54 = *v51 | (*(v51 + 1) << 16);
                  }

                  *v52 = v54;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v60);
        }

        while (v41 != v61);
      }

      ++v37;
      v40 = (v40 + v55);
      v39 = (v39 + v56);
      v38 = (v38 + v57);
    }

    while (v59 + 1 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)16>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
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
  v59 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v58 = 0;
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
    v58 = 0;
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
  v58 = 0;
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
    v57 = 0;
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
      v57 = 0;
    }

    else
    {
      v57 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v57 = 0;
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
    v57 = 0;
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
  v57 = 0;
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
  if (v59 >= 1)
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
                  v56 = *v53;
                  if (*v53 < *v54)
                  {
                    v56 = *v54;
                  }

                  *v55 = v56;
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
      v42 = (v42 + v57);
      v41 = (v41 + v58);
    }

    while (v40 != v59);
  }

  return result;
}

uint64_t **mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)16>(uint64_t **result, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **result;
  v5 = (*result)[1];
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
  v57 = v18;
  if (*(v4 + 58))
  {
    v19 = 0;
    v56 = 0;
    v58 = 0;
    goto LABEL_38;
  }

  v20 = *(v4 + 16);
  v21 = v20 - 4;
  if (v20 >= 4)
  {
    if (v21 > v20 - 1 || *(*(v4 + 24) + 8 * v21) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v4 + 64) + 8 * v21);
    }

    v22 = v20 - 3;
    goto LABEL_27;
  }

  if (v20 == 3)
  {
    v22 = 0;
    v56 = 0;
LABEL_27:
    if (v22 > v20 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v4 + 64) + 8 * v22);
    }

    v27 = v20 - 2;
    goto LABEL_32;
  }

  if (v20 >= 2)
  {
    v27 = 0;
    v58 = 0;
    v56 = 0;
LABEL_32:
    if (v27 > v20 - 1 || *(*(v4 + 24) + 8 * v27) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v4 + 64) + 8 * v27);
    }

    v23 = v20 - 1;
    goto LABEL_37;
  }

  v23 = 0;
  v19 = 0;
  v56 = 0;
  v58 = 0;
  v24 = 0;
  if (v20 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v23 > v20 - 1)
  {
LABEL_38:
    v24 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v25 = 0;
    v55 = 0;
    v26 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v23) == 1)
  {
    v24 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *(*(v4 + 64) + 8 * v23);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v28 = *(v5 + 16);
  v29 = v28 - 4;
  if (v28 >= 4)
  {
    if (v29 > v28 - 1 || *(*(v5 + 24) + 8 * v29) == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = *(*(v5 + 64) + 8 * v29);
    }

    v30 = v28 - 3;
    goto LABEL_57;
  }

  if (v28 == 3)
  {
    v30 = 0;
    v55 = 0;
LABEL_57:
    if (v30 > v28 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(*(v5 + 64) + 8 * v30);
    }

    v35 = v28 - 2;
    goto LABEL_62;
  }

  if (v28 >= 2)
  {
    v35 = 0;
    v26 = 0;
    v55 = 0;
LABEL_62:
    if (v35 > v28 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(*(v5 + 64) + 8 * v35);
    }

    v31 = v28 - 1;
LABEL_67:
    if (v31 <= v28 - 1)
    {
      if (*(*(v5 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v32 = *(*(v5 + 64) + 8 * v31);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v32 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v33 = 0;
    v54 = 0;
    v34 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v25 = 0;
  v55 = 0;
  v26 = 0;
  v32 = 0;
  if (v28 == 1)
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
    v34 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v34 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v33 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v33 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v36 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v36 = 0;
LABEL_93:
  if (v18 >= 1)
  {
    v37 = 0;
    v38 = (**a3 + *(v4 + 40));
    v39 = (*(*a3 + 8) + *(v5 + 40));
    v40 = (**a4 + *(v6 + 40));
    do
    {
      if (v59 >= 1)
      {
        v41 = 0;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        do
        {
          if (v13 >= 1)
          {
            v45 = 0;
            v46 = v42;
            v47 = v43;
            v48 = v44;
            do
            {
              v49 = v10;
              v50 = v46;
              v51 = v47;
              v52 = v48;
              if (v10 >= 1)
              {
                do
                {
                  v53 = *v51;
                  result = (v53 << 16);
                  if (COERCE_FLOAT(*v50 << 16) >= COERCE_FLOAT(v53 << 16))
                  {
                    LOWORD(v53) = *v50;
                  }

                  *v52 = v53;
                  v52 = (v52 + v36);
                  v51 = (v51 + v32);
                  v50 = (v50 + v24);
                  --v49;
                }

                while (v49);
              }

              ++v45;
              v48 = (v48 + v33);
              v47 = (v47 + v25);
              v46 = (v46 + v19);
            }

            while (v45 != v13);
          }

          ++v41;
          v44 = (v44 + v34);
          v43 = (v43 + v26);
          v42 = (v42 + v58);
        }

        while (v41 != v59);
      }

      ++v37;
      v40 = (v40 + v54);
      v39 = (v39 + v55);
      v38 = (v38 + v56);
    }

    while (v37 != v57);
  }

  return result;
}