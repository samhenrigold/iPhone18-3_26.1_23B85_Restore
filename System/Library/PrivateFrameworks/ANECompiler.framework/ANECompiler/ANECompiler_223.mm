unint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)12>(unint64_t result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v61 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = v20 | v22;
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v56 = *(v4 + 16), v57 = v56 - 1, v56 < 1) || v57 > v56 - 1 || *(*(v4 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_48:
            v59 = 0;
          }

          else
          {
            v58 = *(*(v4 + 64) + 8 * v57);
            if (v32)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_48;
            }

            v59 = *(*(v5 + 64) + 8 * v7);
          }

          v60 = 1.0 / COERCE_FLOAT(*&v52[v58 * v51 + v53] << 16);
          result = v55 + v59 * v51;
          *(v54 + result) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

unint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)12>(unint64_t result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v61 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = v20 | v22;
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v61;
      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v61);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v63;
        v38 = v63 + v35 * v19;
        v39 = v36 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v56 = *(v4 + 16), v57 = v56 - 1, v56 < 1) || v57 > v56 - 1 || *(*(v4 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_48:
            v59 = 0;
          }

          else
          {
            v58 = *(*(v4 + 64) + 8 * v57);
            if (v32)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_48;
            }

            v59 = *(*(v5 + 64) + 8 * v7);
          }

          v60 = 1.0 / *&v52[v58 * v51 + v53];
          result = v55 + v59 * v51;
          *(v54 + result) = HIWORD(COERCE_UNSIGNED_INT(v60 + (COERCE_FLOAT(LODWORD(v60) & 0xFF800000) * 0.0039062)));
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)12>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    v14 = *(v4 + 58);
    result = *(v5 + 58);
    while (1)
    {
      if ((v14 & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
      {
        v17 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v17 = *(*(v4 + 64) + 8 * v16);
        if (result)
        {
          break;
        }
      }

      v18 = *(v5 + 16);
      v19 = v18 - 4;
      if (v18 < 4 || v19 > v18 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
      {
        break;
      }

      v20 = *(*(v5 + 64) + 8 * v19);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v20 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v21 = 0;
    v22 = v6 + v17 * v13;
    v23 = v7 + v20 * v13;
    while (1)
    {
      if ((v14 & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 3, v24 < 3) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if (result)
        {
          break;
        }
      }

      v27 = *(v5 + 16);
      v28 = v27 - 3;
      if (v27 < 3 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
      {
        break;
      }

      v29 = *(*(v5 + 64) + 8 * v28);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v21 == v12)
      {
        goto LABEL_11;
      }
    }

    v29 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v30 = 0;
    v31 = v22 + v26 * v21;
    v32 = v23 + v29 * v21;
    while (1)
    {
      if ((v14 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 2, v33 < 2) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (result)
        {
          break;
        }
      }

      v36 = *(v5 + 16);
      v37 = v36 - 2;
      if (v36 < 2 || v37 > v36 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
      {
        break;
      }

      v38 = *(*(v5 + 64) + 8 * v37);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v30 == v11)
      {
        goto LABEL_25;
      }
    }

    v38 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v39 = 0;
    v40 = v31 + v35 * v30;
    v41 = *(v4 + 40);
    v42 = *(v5 + 40);
    v43 = v32 + v38 * v30;
    while (1)
    {
      if ((v14 & 1) != 0 || (v44 = *(v4 + 16), v45 = v44 - 1, v44 < 1) || v45 > v44 - 1 || *(*(v4 + 24) + 8 * v45) == 1)
      {
        v46 = 0;
        if (result)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v46 = *(*(v4 + 64) + 8 * v45);
        if (result)
        {
          goto LABEL_63;
        }
      }

      v47 = *(v5 + 16);
      v48 = v47 - 1;
      if (v47 < 1 || v48 > v47 - 1 || *(*(v5 + 24) + 8 * v48) == 1)
      {
LABEL_63:
        v49 = 0;
        goto LABEL_64;
      }

      v49 = *(*(v5 + 64) + 8 * v48);
LABEL_64:
      v50 = v43 + v49 * v39;
      v51 = *(v40 + v46 * v39 + v41);
      if ((v51 + 1) >= 3)
      {
        v51 = 0;
      }

      *(v50 + v42) = v51;
      if (v10 == ++v39)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)12>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v14 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    v22 = v17 | v21;
    v23 = v6 - 1;
    v63 = result;
    v24 = v15 | v21;
    v25 = v11 > v23;
    v26 = v13 | v21;
    v27 = v19 | v21;
    v28 = v10 > v23;
    v29 = v7 > v23;
    v30 = v22 | (result > v23);
    v31 = v24 | v25;
    v32 = v26 | v28;
    v33 = v27 | v29;
    while (1)
    {
      if ((v20 & 1) != 0 || (v34 = *(v4 + 16), v35 = v34 - 4, v34 < 4) || v35 > v34 - 1 || *(*(v4 + 24) + 8 * v35) == 1)
      {
        v36 = 0;
        if (v30)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v36 = *(*(v4 + 64) + 8 * v35);
        if (v30)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v63) != 1)
      {
        v37 = *(*(v5 + 64) + 8 * v63);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v38 = 0;
        result = v65;
        v39 = v36 * v18 + v65;
        v40 = v37 * v18 + v64;
        while (2)
        {
          if ((v20 & 1) != 0 || (v41 = *(v4 + 16), v42 = v41 - 3, v41 < 3) || v42 > v41 - 1 || *(*(v4 + 24) + 8 * v42) == 1)
          {
            v43 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v43 = *(*(v4 + 64) + 8 * v42);
          if (v31)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v44 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v44 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v38 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v45 = 0;
        v46 = v39 + v43 * v38;
        v47 = v40 + v44 * v38;
        while (2)
        {
          if ((v20 & 1) != 0 || (v48 = *(v4 + 16), v49 = v48 - 2, v48 < 2) || v49 > v48 - 1 || *(*(v4 + 24) + 8 * v49) == 1)
          {
            v50 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v50 = *(*(v4 + 64) + 8 * v49);
          if (v32)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v51 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v51 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v45 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v52 = 0;
        v53 = v46 + v50 * v45;
        v54 = *(v4 + 40);
        v55 = *(v5 + 40);
        v56 = v47 + v51 * v45;
        while (2)
        {
          if ((v20 & 1) != 0 || (v60 = *(v4 + 16), v61 = v60 - 1, v60 < 1) || v61 > v60 - 1 || *(*(v4 + 24) + 8 * v61) == 1)
          {
            v62 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v57 = 0;
          }

          else
          {
            v62 = *(*(v4 + 64) + 8 * v61);
            if (v33)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v57 = *(*(v5 + 64) + 8 * v7);
          }

          v58 = v56 + v57 * v52;
          v59 = *(v53 + v62 * v52 + v54);
          result = (v59 + 1);
          if (result >= 3)
          {
            v59 = 0;
          }

          *(v58 + v55) = v59;
          if (v9 == ++v52)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v37 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v14)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v14 = *(v8 + 8 * (v6 - 4));
  if (v14 >= 1)
  {
    result = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)12>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v14 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    v22 = v17 | v21;
    v23 = v6 - 1;
    v63 = result;
    v24 = v15 | v21;
    v25 = v11 > v23;
    v26 = v13 | v21;
    v27 = v19 | v21;
    v28 = v10 > v23;
    v29 = v7 > v23;
    v30 = v22 | (result > v23);
    v31 = v24 | v25;
    v32 = v26 | v28;
    v33 = v27 | v29;
    while (1)
    {
      if ((v20 & 1) != 0 || (v34 = *(v4 + 16), v35 = v34 - 4, v34 < 4) || v35 > v34 - 1 || *(*(v4 + 24) + 8 * v35) == 1)
      {
        v36 = 0;
        if (v30)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v36 = *(*(v4 + 64) + 8 * v35);
        if (v30)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v63) != 1)
      {
        v37 = *(*(v5 + 64) + 8 * v63);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v38 = 0;
        result = v65;
        v39 = v36 * v18 + v65;
        v40 = v37 * v18 + v64;
        while (2)
        {
          if ((v20 & 1) != 0 || (v41 = *(v4 + 16), v42 = v41 - 3, v41 < 3) || v42 > v41 - 1 || *(*(v4 + 24) + 8 * v42) == 1)
          {
            v43 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v43 = *(*(v4 + 64) + 8 * v42);
          if (v31)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v44 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v44 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v38 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v45 = 0;
        v46 = v39 + v43 * v38;
        v47 = v40 + v44 * v38;
        while (2)
        {
          if ((v20 & 1) != 0 || (v48 = *(v4 + 16), v49 = v48 - 2, v48 < 2) || v49 > v48 - 1 || *(*(v4 + 24) + 8 * v49) == 1)
          {
            v50 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v50 = *(*(v4 + 64) + 8 * v49);
          if (v32)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v51 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v51 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v45 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v52 = 0;
        v53 = v46 + v50 * v45;
        v54 = *(v4 + 40);
        v55 = *(v5 + 40);
        v56 = v47 + v51 * v45;
        while (2)
        {
          if ((v20 & 1) != 0 || (v60 = *(v4 + 16), v61 = v60 - 1, v60 < 1) || v61 > v60 - 1 || *(*(v4 + 24) + 8 * v61) == 1)
          {
            v62 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v57 = 0;
          }

          else
          {
            v62 = *(*(v4 + 64) + 8 * v61);
            if (v33)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v57 = *(*(v5 + 64) + 8 * v7);
          }

          v58 = v56 + v57 * v52;
          v59 = *(v53 + v62 * v52 + v54);
          result = (v59 + 1);
          if (result >= 3)
          {
            v59 = 0;
          }

          *(v58 + v55) = v59;
          if (v9 == ++v52)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v37 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v14)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v14 = *(v8 + 8 * (v6 - 4));
  if (v14 >= 1)
  {
    result = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)12>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v16 = *(v5 + 16);
      v17 = v16 - 4;
      if (v16 < 4 || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
      {
        break;
      }

      v18 = *(*(v5 + 64) + 8 * v17);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v18 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    result = (v6 + result * v13);
    v20 = v7 + v18 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v21 = *(v4 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
      {
        v23 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v23 = *(*(v4 + 64) + 8 * v22);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v24 = *(v5 + 16);
      v25 = v24 - 3;
      if (v24 < 3 || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
      {
        break;
      }

      v26 = *(*(v5 + 64) + 8 * v25);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v19 == v12)
      {
        goto LABEL_11;
      }
    }

    v26 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v27 = 0;
    v28 = result + v23 * v19;
    v29 = v20 + v26 * v19;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v30 = *(v4 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v4 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v32 = *(*(v4 + 64) + 8 * v31);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v33 = *(v5 + 16);
      v34 = v33 - 2;
      if (v33 < 2 || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
      {
        break;
      }

      v35 = *(*(v5 + 64) + 8 * v34);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v27 == v11)
      {
        goto LABEL_25;
      }
    }

    v35 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v36 = 0;
    v37 = &v28[v32 * v27];
    v38 = v29 + v35 * v27;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
      {
        v41 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v41 = *(*(v4 + 64) + 8 * v40);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v42 = *(v5 + 16);
      v43 = v42 - 1;
      if (v42 < 1 || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
LABEL_63:
        v44 = 0;
        goto LABEL_64;
      }

      v44 = *(*(v5 + 64) + 8 * v43);
LABEL_64:
      v45 = v38 + v44 * v36;
      v46 = v37[v41 * v36 + *(v4 + 40)];
      if ((v46 + 1) >= 3)
      {
        v46 = 0;
      }

      *(v45 + *(v5 + 40)) = v46;
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v16 = *(v5 + 16);
      v17 = v16 - 4;
      if (v16 < 4 || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
      {
        break;
      }

      v18 = *(*(v5 + 64) + 8 * v17);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v18 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    result = (v6 + result * v13);
    v20 = v7 + v18 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v21 = *(v4 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
      {
        v23 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v23 = *(*(v4 + 64) + 8 * v22);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v24 = *(v5 + 16);
      v25 = v24 - 3;
      if (v24 < 3 || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
      {
        break;
      }

      v26 = *(*(v5 + 64) + 8 * v25);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v19 == v12)
      {
        goto LABEL_11;
      }
    }

    v26 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v27 = 0;
    v28 = result + v23 * v19;
    v29 = v20 + v26 * v19;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v30 = *(v4 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v4 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v32 = *(*(v4 + 64) + 8 * v31);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v33 = *(v5 + 16);
      v34 = v33 - 2;
      if (v33 < 2 || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
      {
        break;
      }

      v35 = *(*(v5 + 64) + 8 * v34);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v27 == v11)
      {
        goto LABEL_25;
      }
    }

    v35 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v36 = 0;
    v37 = &v28[v32 * v27];
    v38 = v29 + v35 * v27;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
      {
        v41 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v41 = *(*(v4 + 64) + 8 * v40);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v42 = *(v5 + 16);
      v43 = v42 - 1;
      if (v42 < 1 || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
LABEL_63:
        v44 = 0;
        goto LABEL_64;
      }

      v44 = *(*(v5 + 64) + 8 * v43);
LABEL_64:
      *(v38 + v44 * v36 + *(v5 + 40)) = *&v37[v41 * v36 + *(v4 + 40)];
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v63;
        v41 = v38 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55);
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4, float16x4_t a5)
{
  v5 = **result;
  v6 = **a2;
  v7 = **a3;
  v8 = **a4;
  v9 = *(v6 + 16);
  if (v9 < 1)
  {
    v9 = 1;
    v12 = 1;
    v11 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v10 = *(v6 + 24) + 8 * v9;
  v11 = *(v10 - 8);
  if (v9 == 1)
  {
    v12 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v12 = *(v10 - 16);
  if (v9 < 3)
  {
    v9 = 1;
    v13 = 1;
    goto LABEL_10;
  }

  v13 = *(v10 - 24);
  if (v9 == 3)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v9 = *(v10 - 32);
  if (v9 >= 1)
  {
LABEL_10:
    v14 = 0;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v15 = *(v5 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v5 + 24) + 8 * v16) == 1)
      {
        result = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v5 + 64) + 8 * v16);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v17 = *(v6 + 16);
      v18 = v17 - 4;
      if (v17 < 4 || v18 > v17 - 1 || *(*(v6 + 24) + 8 * v18) == 1)
      {
        break;
      }

      v19 = *(*(v6 + 64) + 8 * v18);
      if (v13 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v14 == v9)
      {
        return result;
      }
    }

    v19 = 0;
    if (v13 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v20 = 0;
    result = (v7 + result * v14);
    v21 = v8 + v19 * v14;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v22 = *(v5 + 16), v23 = v22 - 3, v22 < 3) || v23 > v22 - 1 || *(*(v5 + 24) + 8 * v23) == 1)
      {
        v24 = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        v24 = *(*(v5 + 64) + 8 * v23);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v25 = *(v6 + 16);
      v26 = v25 - 3;
      if (v25 < 3 || v26 > v25 - 1 || *(*(v6 + 24) + 8 * v26) == 1)
      {
        break;
      }

      v27 = *(*(v6 + 64) + 8 * v26);
      if (v12 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v20 == v13)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    if (v12 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v28 = 0;
    v29 = result + v24 * v20;
    v30 = v21 + v27 * v20;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v31 = *(v5 + 16), v32 = v31 - 2, v31 < 2) || v32 > v31 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if (*(v6 + 58))
        {
          break;
        }
      }

      else
      {
        v33 = *(*(v5 + 64) + 8 * v32);
        if (*(v6 + 58))
        {
          break;
        }
      }

      v34 = *(v6 + 16);
      v35 = v34 - 2;
      if (v34 < 2 || v35 > v34 - 1 || *(*(v6 + 24) + 8 * v35) == 1)
      {
        break;
      }

      v36 = *(*(v6 + 64) + 8 * v35);
      if (v11 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v28 == v12)
      {
        goto LABEL_25;
      }
    }

    v36 = 0;
    if (v11 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v37 = 0;
    v38 = &v29[v33 * v28];
    v39 = v30 + v36 * v28;
    while (1)
    {
      if ((*(v5 + 58) & 1) != 0 || (v40 = *(v5 + 16), v41 = v40 - 1, v40 < 1) || v41 > v40 - 1 || *(*(v5 + 24) + 8 * v41) == 1)
      {
        v42 = 0;
        if (*(v6 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v42 = *(*(v5 + 64) + 8 * v41);
        if (*(v6 + 58))
        {
          goto LABEL_63;
        }
      }

      v43 = *(v6 + 16);
      v44 = v43 - 1;
      if (v43 < 1 || v44 > v43 - 1 || *(*(v6 + 24) + 8 * v44) == 1)
      {
LABEL_63:
        v45 = 0;
        goto LABEL_64;
      }

      v45 = *(*(v6 + 64) + 8 * v44);
LABEL_64:
      a5.i32[0] = *&v38[v42 * v37 + *(v5 + 40)];
      a5 = vcvtq_f32_f16(a5).u64[0];
      *(v39 + v45 * v37++ + *(v6 + 40)) = a5;
      if (v11 == v37)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v68 = **a4;
  v69 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v69;
        v41 = v38 * v19 + v68;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v65 = *(v4 + 16), v66 = v65 - 1, v65 < 1) || v66 > v65 - 1 || *(*(v4 + 24) + 8 * v66) == 1)
          {
            v67 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v67 = *(*(v4 + 64) + 8 * v66);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _H0 = *(v54 + v67 * v53 + v55);
          __asm { FCVT            S0, H0 }

          *(v57 + v58 * v53++ + v56) = _S0;
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v16 = *(v5 + 16);
      v17 = v16 - 4;
      if (v16 < 4 || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
      {
        break;
      }

      v18 = *(*(v5 + 64) + 8 * v17);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v18 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    result = (v6 + result * v13);
    v20 = v7 + v18 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v21 = *(v4 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
      {
        v23 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v23 = *(*(v4 + 64) + 8 * v22);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v24 = *(v5 + 16);
      v25 = v24 - 3;
      if (v24 < 3 || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
      {
        break;
      }

      v26 = *(*(v5 + 64) + 8 * v25);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v19 == v12)
      {
        goto LABEL_11;
      }
    }

    v26 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v27 = 0;
    v28 = result + v23 * v19;
    v29 = v20 + v26 * v19;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v30 = *(v4 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v4 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v32 = *(*(v4 + 64) + 8 * v31);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v33 = *(v5 + 16);
      v34 = v33 - 2;
      if (v33 < 2 || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
      {
        break;
      }

      v35 = *(*(v5 + 64) + 8 * v34);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v27 == v11)
      {
        goto LABEL_25;
      }
    }

    v35 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v36 = 0;
    v37 = &v28[v32 * v27];
    v38 = v29 + v35 * v27;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
      {
        v41 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v41 = *(*(v4 + 64) + 8 * v40);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v42 = *(v5 + 16);
      v43 = v42 - 1;
      if (v42 < 1 || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
LABEL_63:
        v44 = 0;
        goto LABEL_64;
      }

      v44 = *(*(v5 + 64) + 8 * v43);
LABEL_64:
      *(v38 + v44 * v36 + *(v5 + 40)) = *&v37[v41 * v36 + *(v4 + 40)];
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v63;
        v41 = v38 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55);
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v16 = *(v5 + 16);
      v17 = v16 - 4;
      if (v16 < 4 || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
      {
        break;
      }

      v18 = *(*(v5 + 64) + 8 * v17);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v18 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    result = (v6 + result * v13);
    v20 = v7 + v18 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v21 = *(v4 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
      {
        v23 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v23 = *(*(v4 + 64) + 8 * v22);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v24 = *(v5 + 16);
      v25 = v24 - 3;
      if (v24 < 3 || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
      {
        break;
      }

      v26 = *(*(v5 + 64) + 8 * v25);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v19 == v12)
      {
        goto LABEL_11;
      }
    }

    v26 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v27 = 0;
    v28 = result + v23 * v19;
    v29 = v20 + v26 * v19;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v30 = *(v4 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v4 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v32 = *(*(v4 + 64) + 8 * v31);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v33 = *(v5 + 16);
      v34 = v33 - 2;
      if (v33 < 2 || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
      {
        break;
      }

      v35 = *(*(v5 + 64) + 8 * v34);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v27 == v11)
      {
        goto LABEL_25;
      }
    }

    v35 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v36 = 0;
    v37 = &v28[v32 * v27];
    v38 = v29 + v35 * v27;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
      {
        v41 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v41 = *(*(v4 + 64) + 8 * v40);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v42 = *(v5 + 16);
      v43 = v42 - 1;
      if (v42 < 1 || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
LABEL_63:
        v44 = 0;
        goto LABEL_64;
      }

      v44 = *(*(v5 + 64) + 8 * v43);
LABEL_64:
      v45 = &v37[v41 * v36 + *(v4 + 40)];
      v46 = (v38 + v44 * v36 + *(v5 + 40));
      _S0 = *v45;
      _S1 = *(v45 + 1);
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *v46 = _S0;
      v46[1] = _S1;
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v67 = **a4;
  v68 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v68;
        v41 = v38 * v19 + v67;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v64 = *(v4 + 16), v65 = v64 - 1, v64 < 1) || v65 > v64 - 1 || *(*(v4 + 24) + 8 * v65) == 1)
          {
            v66 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v66 = *(*(v4 + 64) + 8 * v65);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _S0 = *(v54 + v66 * v53 + v55);
          __asm { FCVT            H0, S0 }

          *(v57 + v58 * v53++ + v56) = _S0;
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)13>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v63;
        v41 = v38 * v19 + v62;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v59 = *(v4 + 16), v60 = v59 - 1, v59 < 1) || v60 > v59 - 1 || *(*(v4 + 24) + 8 * v60) == 1)
          {
            v61 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v61 = *(*(v4 + 64) + 8 * v60);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          *(v57 + v58 * v53 + v56) = *(v54 + v61 * v53 + v55) << 16;
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

unint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)13>(unint64_t result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v61 = **a4;
  v62 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v60 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = v20 | v22;
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v60;
      if (*(*(v5 + 24) + 8 * v60) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v60);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v62;
        v38 = v62 + v35 * v19;
        v39 = v36 * v19 + v61;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v56 = *(v4 + 16), v57 = v56 - 1, v56 < 1) || v57 > v56 - 1 || *(*(v4 + 24) + 8 * v57) == 1)
          {
            v58 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_48:
            v59 = 0;
          }

          else
          {
            v58 = *(*(v4 + 64) + 8 * v57);
            if (v32)
            {
              goto LABEL_48;
            }

LABEL_47:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_48;
            }

            v59 = *(*(v5 + 64) + 8 * v7);
          }

          result = v55 + v59 * v51;
          *(v54 + result) = HIWORD(COERCE_UNSIGNED_INT(*&v52[v58 * v51 + v53] + (COERCE_FLOAT(*&v52[v58 * v51 + v53] & 0xFF800000) * 0.0039062)));
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    v14 = *(v4 + 58);
    result = *(v5 + 58);
    while (1)
    {
      if ((v14 & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
      {
        v17 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v17 = *(*(v4 + 64) + 8 * v16);
        if (result)
        {
          break;
        }
      }

      v18 = *(v5 + 16);
      v19 = v18 - 4;
      if (v18 < 4 || v19 > v18 - 1 || *(*(v5 + 24) + 8 * v19) == 1)
      {
        break;
      }

      v20 = *(*(v5 + 64) + 8 * v19);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v20 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v21 = 0;
    v22 = v6 + v17 * v13;
    v23 = v7 + v20 * v13;
    while (1)
    {
      if ((v14 & 1) != 0 || (v24 = *(v4 + 16), v25 = v24 - 3, v24 < 3) || v25 > v24 - 1 || *(*(v4 + 24) + 8 * v25) == 1)
      {
        v26 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v26 = *(*(v4 + 64) + 8 * v25);
        if (result)
        {
          break;
        }
      }

      v27 = *(v5 + 16);
      v28 = v27 - 3;
      if (v27 < 3 || v28 > v27 - 1 || *(*(v5 + 24) + 8 * v28) == 1)
      {
        break;
      }

      v29 = *(*(v5 + 64) + 8 * v28);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v21 == v12)
      {
        goto LABEL_11;
      }
    }

    v29 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v30 = 0;
    v31 = v22 + v26 * v21;
    v32 = v23 + v29 * v21;
    while (1)
    {
      if ((v14 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 2, v33 < 2) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (result)
        {
          break;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (result)
        {
          break;
        }
      }

      v36 = *(v5 + 16);
      v37 = v36 - 2;
      if (v36 < 2 || v37 > v36 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
      {
        break;
      }

      v38 = *(*(v5 + 64) + 8 * v37);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v30 == v11)
      {
        goto LABEL_25;
      }
    }

    v38 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v39 = 0;
    v40 = v31 + v35 * v30;
    v41 = *(v4 + 40);
    v42 = *(v5 + 40);
    v43 = v32 + v38 * v30;
    while (1)
    {
      if ((v14 & 1) != 0 || (v44 = *(v4 + 16), v45 = v44 - 1, v44 < 1) || v45 > v44 - 1 || *(*(v4 + 24) + 8 * v45) == 1)
      {
        v46 = 0;
        if (result)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v46 = *(*(v4 + 64) + 8 * v45);
        if (result)
        {
          goto LABEL_63;
        }
      }

      v47 = *(v5 + 16);
      v48 = v47 - 1;
      if (v47 < 1 || v48 > v47 - 1 || *(*(v5 + 24) + 8 * v48) == 1)
      {
LABEL_63:
        v49 = 0;
        goto LABEL_64;
      }

      v49 = *(*(v5 + 64) + 8 * v48);
LABEL_64:
      *(v43 + v49 * v39 + v42) = *(v40 + v46 * v39 + v41);
      if (v10 == ++v39)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    v14 = vneg_f32(0x80000000800000);
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v15 = *(v4 + 16), v16 = v15 - 4, v15 < 4) || v16 > v15 - 1 || *(*(v4 + 24) + 8 * v16) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v16);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v17 = *(v5 + 16);
      v18 = v17 - 4;
      if (v17 < 4 || v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
      {
        break;
      }

      v19 = *(*(v5 + 64) + 8 * v18);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v19 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v20 = 0;
    result = (v6 + result * v13);
    v21 = v7 + v19 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v22 = *(v4 + 16), v23 = v22 - 3, v22 < 3) || v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
      {
        v24 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v24 = *(*(v4 + 64) + 8 * v23);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v25 = *(v5 + 16);
      v26 = v25 - 3;
      if (v25 < 3 || v26 > v25 - 1 || *(*(v5 + 24) + 8 * v26) == 1)
      {
        break;
      }

      v27 = *(*(v5 + 64) + 8 * v26);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v20 == v12)
      {
        goto LABEL_11;
      }
    }

    v27 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v28 = 0;
    v29 = result + v24 * v20;
    v30 = v21 + v27 * v20;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v31 = *(v4 + 16), v32 = v31 - 2, v31 < 2) || v32 > v31 - 1 || *(*(v4 + 24) + 8 * v32) == 1)
      {
        v33 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v33 = *(*(v4 + 64) + 8 * v32);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v34 = *(v5 + 16);
      v35 = v34 - 2;
      if (v34 < 2 || v35 > v34 - 1 || *(*(v5 + 24) + 8 * v35) == 1)
      {
        break;
      }

      v36 = *(*(v5 + 64) + 8 * v35);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v28 == v11)
      {
        goto LABEL_25;
      }
    }

    v36 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v37 = 0;
    v38 = &v29[v33 * v28];
    v39 = v30 + v36 * v28;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 1, v40 < 1) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
      {
        v42 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v42 = *(*(v4 + 64) + 8 * v41);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v43 = *(v5 + 16);
      v44 = v43 - 1;
      if (v43 < 1 || v44 > v43 - 1 || *(*(v5 + 24) + 8 * v44) == 1)
      {
LABEL_63:
        v45 = 0;
        goto LABEL_64;
      }

      v45 = *(*(v5 + 64) + 8 * v44);
LABEL_64:
      v46 = *&v38[v42 * v37 + *(v4 + 40)];
      *(v39 + v45 * v37++ + *(v5 + 40)) = vmaxnm_f32(vbsl_s8(vcgt_f32(v46, v14), v14, v46), 0x80000000800000);
      if (v10 == v37)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

unint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)14>(unint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v62 = **a4;
  v63 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v64 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    result = v17 | v21;
    v22 = v6 - 1;
    v61 = v14;
    v23 = v11 > v22;
    v24 = v13 | v21;
    v25 = v19 | v21;
    v26 = v10 > v22;
    v27 = v7 > v22;
    v28 = result | (v14 > v22);
    v29 = v15 | v21 | v23;
    v30 = v24 | v26;
    v31 = v25 | v27;
    while (1)
    {
      if ((v20 & 1) != 0 || (v32 = *(v4 + 16), v33 = v32 - 4, v32 < 4) || v33 > v32 - 1 || *(*(v4 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (v28)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v34 = *(*(v4 + 64) + 8 * v33);
        if (v28)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v61) != 1)
      {
        v35 = *(*(v5 + 64) + 8 * v61);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v36 = 0;
        v37 = v34 * v18 + v63;
        v38 = v35 * v18 + v62;
        while (2)
        {
          if ((v20 & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 3, v39 < 3) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
          {
            v41 = 0;
            if ((v29 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v41 = *(*(v4 + 64) + 8 * v40);
          if (v29)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v42 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v42 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v36 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v43 = 0;
        v44 = v37 + v41 * v36;
        v45 = v38 + v42 * v36;
        while (2)
        {
          if ((v20 & 1) != 0 || (v46 = *(v4 + 16), v47 = v46 - 2, v46 < 2) || v47 > v46 - 1 || *(*(v4 + 24) + 8 * v47) == 1)
          {
            v48 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v48 = *(*(v4 + 64) + 8 * v47);
          if (v30)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v49 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v49 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v43 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v50 = 0;
        v51 = v44 + v48 * v43;
        v52 = *(v4 + 40);
        v53 = *(v5 + 40);
        v54 = v45 + v49 * v43;
        while (2)
        {
          if ((v20 & 1) != 0 || (v58 = *(v4 + 16), v59 = v58 - 1, v58 < 1) || v59 > v58 - 1 || *(*(v4 + 24) + 8 * v59) == 1)
          {
            v60 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v55 = 0;
          }

          else
          {
            v60 = *(*(v4 + 64) + 8 * v59);
            if (v31)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v55 = *(*(v5 + 64) + 8 * v7);
          }

          result = v51 + v60 * v50;
          v56 = v54 + v55 * v50;
          v57 = *(result + v52);
          if (v57 > 3.4028e38)
          {
            v57 = 3.4028e38;
          }

          *(v56 + v53) = fmaxf(v57, -3.4028e38);
          if (v9 == ++v50)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v35 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v64)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v64 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v64 = *(v8 + 8 * (v6 - 4));
  if (v64 >= 1)
  {
    v14 = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4, double a5, float16x4_t a6)
{
  v6 = **result;
  v7 = **a2;
  v8 = **a3;
  v9 = **a4;
  v10 = *(v7 + 16);
  if (v10 < 1)
  {
    v10 = 1;
    v13 = 1;
    v12 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  v11 = *(v7 + 24) + 8 * v10;
  v12 = *(v11 - 8);
  if (v10 == 1)
  {
    v13 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  v13 = *(v11 - 16);
  if (v10 < 3)
  {
    v10 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  v14 = *(v11 - 24);
  if (v10 == 3)
  {
    v10 = 1;
    goto LABEL_10;
  }

  v10 = *(v11 - 32);
  if (v10 >= 1)
  {
LABEL_10:
    v15 = 0;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v16 = *(v6 + 16), v17 = v16 - 4, v16 < 4) || v17 > v16 - 1 || *(*(v6 + 24) + 8 * v17) == 1)
      {
        result = 0;
        if (*(v7 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v6 + 64) + 8 * v17);
        if (*(v7 + 58))
        {
          break;
        }
      }

      v18 = *(v7 + 16);
      v19 = v18 - 4;
      if (v18 < 4 || v19 > v18 - 1 || *(*(v7 + 24) + 8 * v19) == 1)
      {
        break;
      }

      v20 = *(*(v7 + 64) + 8 * v19);
      if (v14 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v15 == v10)
      {
        return result;
      }
    }

    v20 = 0;
    if (v14 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v21 = 0;
    result = (v8 + result * v15);
    v22 = v9 + v20 * v15;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v23 = *(v6 + 16), v24 = v23 - 3, v23 < 3) || v24 > v23 - 1 || *(*(v6 + 24) + 8 * v24) == 1)
      {
        v25 = 0;
        if (*(v7 + 58))
        {
          break;
        }
      }

      else
      {
        v25 = *(*(v6 + 64) + 8 * v24);
        if (*(v7 + 58))
        {
          break;
        }
      }

      v26 = *(v7 + 16);
      v27 = v26 - 3;
      if (v26 < 3 || v27 > v26 - 1 || *(*(v7 + 24) + 8 * v27) == 1)
      {
        break;
      }

      v28 = *(*(v7 + 64) + 8 * v27);
      if (v13 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v21 == v14)
      {
        goto LABEL_11;
      }
    }

    v28 = 0;
    if (v13 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v29 = 0;
    v30 = result + v25 * v21;
    v31 = v22 + v28 * v21;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v32 = *(v6 + 16), v33 = v32 - 2, v32 < 2) || v33 > v32 - 1 || *(*(v6 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (*(v7 + 58))
        {
          break;
        }
      }

      else
      {
        v34 = *(*(v6 + 64) + 8 * v33);
        if (*(v7 + 58))
        {
          break;
        }
      }

      v35 = *(v7 + 16);
      v36 = v35 - 2;
      if (v35 < 2 || v36 > v35 - 1 || *(*(v7 + 24) + 8 * v36) == 1)
      {
        break;
      }

      v37 = *(*(v7 + 64) + 8 * v36);
      if (v12 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v29 == v13)
      {
        goto LABEL_25;
      }
    }

    v37 = 0;
    if (v12 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v38 = 0;
    v39 = &v30[v34 * v29];
    v40 = v31 + v37 * v29;
    while (1)
    {
      if ((*(v6 + 58) & 1) != 0 || (v41 = *(v6 + 16), v42 = v41 - 1, v41 < 1) || v42 > v41 - 1 || *(*(v6 + 24) + 8 * v42) == 1)
      {
        v43 = 0;
        if (*(v7 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v43 = *(*(v6 + 64) + 8 * v42);
        if (*(v7 + 58))
        {
          goto LABEL_63;
        }
      }

      v44 = *(v7 + 16);
      v45 = v44 - 1;
      if (v44 < 1 || v45 > v44 - 1 || *(*(v7 + 24) + 8 * v45) == 1)
      {
LABEL_63:
        v46 = 0;
        goto LABEL_64;
      }

      v46 = *(*(v7 + 64) + 8 * v45);
LABEL_64:
      a6.i32[0] = *&v39[v43 * v38 + *(v6 + 40)];
      a6 = vcvtq_f32_f16(vmaxnm_f16(a6, 0xFC00FC00FC00FC00)).u64[0];
      *(v40 + v46 * v38++ + *(v7 + 40)) = a6;
      if (v12 == v38)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)14>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v68 = **a4;
  v69 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v69;
        v41 = v38 * v19 + v68;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v65 = *(v4 + 16), v66 = v65 - 1, v65 < 1) || v66 > v65 - 1 || *(*(v4 + 24) + 8 * v66) == 1)
          {
            v67 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v67 = *(*(v4 + 64) + 8 * v66);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_49:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          _H1 = fmaxl(*(v54 + v67 * v53 + v55), COERCE_SHORT_FLOAT(-1024));
          __asm { FCVT            S1, H1 }

          *(v57 + v58 * v53++ + v56) = _S1;
          if (v9 == v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t **mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t **result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        result = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        result = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v16 = *(v5 + 16);
      v17 = v16 - 4;
      if (v16 < 4 || v17 > v16 - 1 || *(*(v5 + 24) + 8 * v17) == 1)
      {
        break;
      }

      v18 = *(*(v5 + 64) + 8 * v17);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v18 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v19 = 0;
    result = (v6 + result * v13);
    v20 = v7 + v18 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v21 = *(v4 + 16), v22 = v21 - 3, v21 < 3) || v22 > v21 - 1 || *(*(v4 + 24) + 8 * v22) == 1)
      {
        v23 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v23 = *(*(v4 + 64) + 8 * v22);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v24 = *(v5 + 16);
      v25 = v24 - 3;
      if (v24 < 3 || v25 > v24 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
      {
        break;
      }

      v26 = *(*(v5 + 64) + 8 * v25);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v19 == v12)
      {
        goto LABEL_11;
      }
    }

    v26 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v27 = 0;
    v28 = result + v23 * v19;
    v29 = v20 + v26 * v19;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v30 = *(v4 + 16), v31 = v30 - 2, v30 < 2) || v31 > v30 - 1 || *(*(v4 + 24) + 8 * v31) == 1)
      {
        v32 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v32 = *(*(v4 + 64) + 8 * v31);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v33 = *(v5 + 16);
      v34 = v33 - 2;
      if (v33 < 2 || v34 > v33 - 1 || *(*(v5 + 24) + 8 * v34) == 1)
      {
        break;
      }

      v35 = *(*(v5 + 64) + 8 * v34);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v27 == v11)
      {
        goto LABEL_25;
      }
    }

    v35 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v36 = 0;
    v37 = &v28[v32 * v27];
    v38 = v29 + v35 * v27;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 1, v39 < 1) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
      {
        v41 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v41 = *(*(v4 + 64) + 8 * v40);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v42 = *(v5 + 16);
      v43 = v42 - 1;
      if (v42 < 1 || v43 > v42 - 1 || *(*(v5 + 24) + 8 * v43) == 1)
      {
LABEL_63:
        v44 = 0;
        goto LABEL_64;
      }

      v44 = *(*(v5 + 64) + 8 * v43);
LABEL_64:
      v45 = &v37[v41 * v36 + *(v4 + 40)];
      v46 = (v38 + v44 * v36 + *(v5 + 40));
      v47 = *v45;
      v48 = v45[1];
      if (*v45 > COERCE_SHORT_FLOAT(31743))
      {
        v47 = COERCE_SHORT_FLOAT(31743);
      }

      v49 = fmaxl(v47, COERCE_SHORT_FLOAT(-1025));
      if (v48 > COERCE_SHORT_FLOAT(31743))
      {
        v48 = COERCE_SHORT_FLOAT(31743);
      }

      *v46 = v49;
      v46[1] = fmaxl(v48, COERCE_SHORT_FLOAT(-1025));
      if (v10 == ++v36)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)14>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **a1;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    v28 = v20 | v22;
    v29 = v10 > v24;
    v30 = v7 > v24;
    v31 = v23 | (result > v24);
    v32 = v25 | v26;
    v33 = v27 | v29;
    v34 = v28 | v30;
    while (1)
    {
      if ((v21 & 1) != 0 || (v35 = *(v4 + 16), v36 = v35 - 4, v35 < 4) || v36 > v35 - 1 || *(*(v4 + 24) + 8 * v36) == 1)
      {
        v37 = 0;
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v37 = *(*(v4 + 64) + 8 * v36);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * result) != 1)
      {
        v38 = *(*(v5 + 64) + 8 * result);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v39 = 0;
        v40 = v37 * v19 + v65;
        v41 = v38 * v19 + v64;
        while (2)
        {
          if ((v21 & 1) != 0 || (v42 = *(v4 + 16), v43 = v42 - 3, v42 < 3) || v43 > v42 - 1 || *(*(v4 + 24) + 8 * v43) == 1)
          {
            v44 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v44 = *(*(v4 + 64) + 8 * v43);
          if (v32)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v45 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v45 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v39 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v46 = 0;
        v47 = v40 + v44 * v39;
        v48 = v41 + v45 * v39;
        while (2)
        {
          if ((v21 & 1) != 0 || (v49 = *(v4 + 16), v50 = v49 - 2, v49 < 2) || v50 > v49 - 1 || *(*(v4 + 24) + 8 * v50) == 1)
          {
            v51 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v51 = *(*(v4 + 64) + 8 * v50);
          if (v33)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v52 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v52 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v46 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v53 = 0;
        v54 = v47 + v51 * v46;
        v55 = *(v4 + 40);
        v56 = *(v5 + 40);
        v57 = v48 + v52 * v46;
        while (2)
        {
          if ((v21 & 1) != 0 || (v61 = *(v4 + 16), v62 = v61 - 1, v61 < 1) || v62 > v61 - 1 || *(*(v4 + 24) + 8 * v62) == 1)
          {
            v63 = 0;
            if ((v34 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v58 = 0;
          }

          else
          {
            v63 = *(*(v4 + 64) + 8 * v62);
            if (v34)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v58 = *(*(v5 + 64) + 8 * v7);
          }

          v59 = v57 + v58 * v53;
          v60 = *(v54 + v63 * v53 + v55);
          if (v60 > COERCE_SHORT_FLOAT(31743))
          {
            v60 = COERCE_SHORT_FLOAT(31743);
          }

          *(v59 + v56) = fmaxl(v60, COERCE_SHORT_FLOAT(-1025));
          if (v9 == ++v53)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v38 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  result = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v6 = **a3;
  v7 = **a4;
  v8 = *(v5 + 16);
  if (v8 < 1)
  {
    v8 = 1;
    v11 = 1;
    v10 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v9 = *(v5 + 24) + 8 * v8;
  v10 = *(v9 - 8);
  if (v8 == 1)
  {
    v11 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v11 = *(v9 - 16);
  if (v8 < 3)
  {
    v8 = 1;
    v12 = 1;
    goto LABEL_10;
  }

  v12 = *(v9 - 24);
  if (v8 == 3)
  {
    v8 = 1;
    goto LABEL_10;
  }

  v8 = *(v9 - 32);
  if (v8 >= 1)
  {
LABEL_10:
    v13 = 0;
    result = 3347046400;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v14 = *(v4 + 16), v15 = v14 - 4, v14 < 4) || v15 > v14 - 1 || *(*(v4 + 24) + 8 * v15) == 1)
      {
        v16 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v16 = *(*(v4 + 64) + 8 * v15);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v17 = *(v5 + 16);
      v18 = v17 - 4;
      if (v17 < 4 || v18 > v17 - 1 || *(*(v5 + 24) + 8 * v18) == 1)
      {
        break;
      }

      v19 = *(*(v5 + 64) + 8 * v18);
      if (v12 >= 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (++v13 == v8)
      {
        return result;
      }
    }

    v19 = 0;
    if (v12 < 1)
    {
      goto LABEL_11;
    }

LABEL_24:
    v20 = 0;
    v21 = v6 + v16 * v13;
    v22 = v7 + v19 * v13;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v23 = *(v4 + 16), v24 = v23 - 3, v23 < 3) || v24 > v23 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
      {
        v25 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v25 = *(*(v4 + 64) + 8 * v24);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v26 = *(v5 + 16);
      v27 = v26 - 3;
      if (v26 < 3 || v27 > v26 - 1 || *(*(v5 + 24) + 8 * v27) == 1)
      {
        break;
      }

      v28 = *(*(v5 + 64) + 8 * v27);
      if (v11 >= 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if (++v20 == v12)
      {
        goto LABEL_11;
      }
    }

    v28 = 0;
    if (v11 < 1)
    {
      goto LABEL_25;
    }

LABEL_38:
    v29 = 0;
    v30 = v21 + v25 * v20;
    v31 = v22 + v28 * v20;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v32 = *(v4 + 16), v33 = v32 - 2, v32 < 2) || v33 > v32 - 1 || *(*(v4 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (*(v5 + 58))
        {
          break;
        }
      }

      else
      {
        v34 = *(*(v4 + 64) + 8 * v33);
        if (*(v5 + 58))
        {
          break;
        }
      }

      v35 = *(v5 + 16);
      v36 = v35 - 2;
      if (v35 < 2 || v36 > v35 - 1 || *(*(v5 + 24) + 8 * v36) == 1)
      {
        break;
      }

      v37 = *(*(v5 + 64) + 8 * v36);
      if (v10 >= 1)
      {
        goto LABEL_52;
      }

LABEL_39:
      if (++v29 == v11)
      {
        goto LABEL_25;
      }
    }

    v37 = 0;
    if (v10 < 1)
    {
      goto LABEL_39;
    }

LABEL_52:
    v38 = 0;
    v39 = v30 + v34 * v29;
    v40 = v31 + v37 * v29;
    while (1)
    {
      if ((*(v4 + 58) & 1) != 0 || (v41 = *(v4 + 16), v42 = v41 - 1, v41 < 1) || v42 > v41 - 1 || *(*(v4 + 24) + 8 * v42) == 1)
      {
        v43 = 0;
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v43 = *(*(v4 + 64) + 8 * v42);
        if (*(v5 + 58))
        {
          goto LABEL_63;
        }
      }

      v44 = *(v5 + 16);
      v45 = v44 - 1;
      if (v44 < 1 || v45 > v44 - 1 || *(*(v5 + 24) + 8 * v45) == 1)
      {
LABEL_63:
        v46 = 0;
        goto LABEL_64;
      }

      v46 = *(*(v5 + 64) + 8 * v45);
LABEL_64:
      v47 = (v39 + v43 * v38 + *(v4 + 40));
      v48 = (v40 + v46 * v38 + *(v5 + 40));
      v49 = *v47;
      v50 = v47[1];
      if (*v47 > 65504.0)
      {
        v49 = 65504.0;
      }

      _S0 = fmaxf(v49, -65504.0);
      if (v50 > 65504.0)
      {
        v50 = 65504.0;
      }

      _S1 = fmaxf(v50, -65504.0);
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S1
      }

      *v48 = _H0;
      v48[1] = LOWORD(_S1);
      if (v10 == ++v38)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

unint64_t mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)14>(unint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v67 = **a4;
  v68 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v69 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    result = v17 | v21;
    v22 = v6 - 1;
    v66 = v14;
    v23 = v11 > v22;
    v24 = v13 | v21;
    v25 = v19 | v21;
    v26 = v10 > v22;
    v27 = v7 > v22;
    v28 = result | (v14 > v22);
    v29 = v15 | v21 | v23;
    v30 = v24 | v26;
    v31 = v25 | v27;
    while (1)
    {
      if ((v20 & 1) != 0 || (v32 = *(v4 + 16), v33 = v32 - 4, v32 < 4) || v33 > v32 - 1 || *(*(v4 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if (v28)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v34 = *(*(v4 + 64) + 8 * v33);
        if (v28)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v66) != 1)
      {
        v35 = *(*(v5 + 64) + 8 * v66);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v36 = 0;
        v37 = v34 * v18 + v68;
        v38 = v35 * v18 + v67;
        while (2)
        {
          if ((v20 & 1) != 0 || (v39 = *(v4 + 16), v40 = v39 - 3, v39 < 3) || v40 > v39 - 1 || *(*(v4 + 24) + 8 * v40) == 1)
          {
            v41 = 0;
            if ((v29 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v41 = *(*(v4 + 64) + 8 * v40);
          if (v29)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v42 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v42 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v36 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v43 = 0;
        v44 = v37 + v41 * v36;
        v45 = v38 + v42 * v36;
        while (2)
        {
          if ((v20 & 1) != 0 || (v46 = *(v4 + 16), v47 = v46 - 2, v46 < 2) || v47 > v46 - 1 || *(*(v4 + 24) + 8 * v47) == 1)
          {
            v48 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v48 = *(*(v4 + 64) + 8 * v47);
          if (v30)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v49 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v49 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v43 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v50 = 0;
        v51 = v44 + v48 * v43;
        v52 = *(v4 + 40);
        v53 = *(v5 + 40);
        v54 = v45 + v49 * v43;
        while (2)
        {
          if ((v20 & 1) != 0 || (v63 = *(v4 + 16), v64 = v63 - 1, v63 < 1) || v64 > v63 - 1 || *(*(v4 + 24) + 8 * v64) == 1)
          {
            v65 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_42:
            v55 = 0;
          }

          else
          {
            v65 = *(*(v4 + 64) + 8 * v64);
            if (v31)
            {
              goto LABEL_42;
            }

LABEL_51:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v55 = *(*(v5 + 64) + 8 * v7);
          }

          result = v51 + v65 * v50;
          v56 = v54 + v55 * v50;
          v57 = *(result + v52);
          if (v57 > 65504.0)
          {
            v57 = 65504.0;
          }

          _S0 = fmaxf(v57, -65504.0);
          __asm { FCVT            H0, S0 }

          *(v56 + v53) = LOWORD(_S0);
          if (v9 == ++v50)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v35 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v69)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v69 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v69 = *(v8 + 8 * (v6 - 4));
  if (v69 >= 1)
  {
    v14 = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

unint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)14>(unint64_t result, uint64_t **a2, uint64_t ****a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = *(v5 + 58);
    v23 = v18 | v22;
    v24 = v6 - 1;
    v63 = v14;
    v25 = v16 | v22;
    v26 = v11 > v24;
    v27 = v13 | v22;
    result = v20 | v22;
    LOBYTE(v22) = v10 > v24;
    v28 = v7 > v24;
    v29 = v23 | (v14 > v24);
    v30 = v25 | v26;
    v31 = v27 | v22;
    v32 = result | v28;
    while (1)
    {
      if ((v21 & 1) != 0 || (v33 = *(v4 + 16), v34 = v33 - 4, v33 < 4) || v34 > v33 - 1 || *(*(v4 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(*(v4 + 64) + 8 * v34);
        if (v29)
        {
          goto LABEL_16;
        }
      }

      result = v63;
      if (*(*(v5 + 24) + 8 * v63) != 1)
      {
        v36 = *(*(v5 + 64) + 8 * v63);
        if (v17 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v37 = 0;
        result = v65;
        v38 = v65 + v35 * v19;
        v39 = v36 * v19 + v64;
        while (2)
        {
          if ((v21 & 1) != 0 || (v40 = *(v4 + 16), v41 = v40 - 3, v40 < 3) || v41 > v40 - 1 || *(*(v4 + 24) + 8 * v41) == 1)
          {
            v42 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v42 = *(*(v4 + 64) + 8 * v41);
          if (v30)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v43 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v43 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v37 == v17)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = &v38[v42 * v37];
        v46 = v39 + v43 * v37;
        while (2)
        {
          if ((v21 & 1) != 0 || (v47 = *(v4 + 16), v48 = v47 - 2, v47 < 2) || v48 > v47 - 1 || *(*(v4 + 24) + 8 * v48) == 1)
          {
            v49 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v49 = *(*(v4 + 64) + 8 * v48);
          if (v31)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v50 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v50 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v44 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v51 = 0;
        v52 = &v45[v49 * v44];
        v53 = *(v4 + 40);
        v54 = *(v5 + 40);
        v55 = v46 + v50 * v44;
        while (2)
        {
          if ((v21 & 1) != 0 || (v60 = *(v4 + 16), v61 = v60 - 1, v60 < 1) || v61 > v60 - 1 || *(*(v4 + 24) + 8 * v61) == 1)
          {
            v62 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_42:
            v56 = 0;
          }

          else
          {
            v62 = *(*(v4 + 64) + 8 * v61);
            if (v32)
            {
              goto LABEL_42;
            }

LABEL_53:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v56 = *(*(v5 + 64) + 8 * v7);
          }

          result = v55 + v56 * v51;
          LODWORD(v57) = *&v52[v62 * v51 + v53] << 16;
          v58 = v57;
          v59 = -INFINITY;
          if (v57 < -INFINITY)
          {
            v59 = v57;
          }

          if (v57 <= -INFINITY)
          {
            v58 = v59;
          }

          *(result + v54) = v58;
          if (v9 == ++v51)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v36 = 0;
      if (v17 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v14 = v6 - 4;
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)14>(uint64_t result, uint64_t **a2, uint64_t **a3, uint64_t **a4)
{
  v4 = **result;
  v5 = **a2;
  v64 = **a4;
  v65 = **a3;
  v6 = *(v5 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v5 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    result = v6 - 4;
    v14 = 1;
    v15 = 1;
    v16 = 1;
LABEL_7:
    v17 = 1;
LABEL_8:
    v18 = 0;
    v19 = v6 < 1;
    v20 = *(v4 + 58);
    v21 = *(v5 + 58);
    v22 = v17 | v21;
    v23 = v6 - 1;
    v63 = result;
    v24 = v15 | v21;
    v25 = v11 > v23;
    v26 = v13 | v21;
    v27 = v19 | v21;
    v28 = v10 > v23;
    v29 = v7 > v23;
    v30 = v22 | (result > v23);
    v31 = v24 | v25;
    v32 = v26 | v28;
    v33 = v27 | v29;
    while (1)
    {
      if ((v20 & 1) != 0 || (v34 = *(v4 + 16), v35 = v34 - 4, v34 < 4) || v35 > v34 - 1 || *(*(v4 + 24) + 8 * v35) == 1)
      {
        v36 = 0;
        if (v30)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v36 = *(*(v4 + 64) + 8 * v35);
        if (v30)
        {
          goto LABEL_16;
        }
      }

      if (*(*(v5 + 24) + 8 * v63) != 1)
      {
        v37 = *(*(v5 + 64) + 8 * v63);
        if (v16 < 1)
        {
          goto LABEL_9;
        }

LABEL_19:
        v38 = 0;
        result = v65;
        v39 = v36 * v18 + v65;
        v40 = v37 * v18 + v64;
        while (2)
        {
          if ((v20 & 1) != 0 || (v41 = *(v4 + 16), v42 = v41 - 3, v41 < 3) || v42 > v41 - 1 || *(*(v4 + 24) + 8 * v42) == 1)
          {
            v43 = 0;
            if ((v31 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          v43 = *(*(v4 + 64) + 8 * v42);
          if (v31)
          {
            goto LABEL_27;
          }

LABEL_26:
          if (*(*(v5 + 24) + 8 * v11) == 1)
          {
LABEL_27:
            v44 = 0;
            if (v12 >= 1)
            {
              break;
            }

            goto LABEL_20;
          }

          v44 = *(*(v5 + 64) + 8 * v11);
          if (v12 < 1)
          {
LABEL_20:
            if (++v38 == v16)
            {
              goto LABEL_9;
            }

            continue;
          }

          break;
        }

        v45 = 0;
        v46 = v39 + v43 * v38;
        v47 = v40 + v44 * v38;
        while (2)
        {
          if ((v20 & 1) != 0 || (v48 = *(v4 + 16), v49 = v48 - 2, v48 < 2) || v49 > v48 - 1 || *(*(v4 + 24) + 8 * v49) == 1)
          {
            v50 = 0;
            if ((v32 & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_38;
          }

          v50 = *(*(v4 + 64) + 8 * v49);
          if (v32)
          {
            goto LABEL_38;
          }

LABEL_37:
          if (*(*(v5 + 24) + 8 * v10) == 1)
          {
LABEL_38:
            v51 = 0;
            if (v9 >= 1)
            {
              break;
            }

            goto LABEL_31;
          }

          v51 = *(*(v5 + 64) + 8 * v10);
          if (v9 < 1)
          {
LABEL_31:
            if (++v45 == v12)
            {
              goto LABEL_20;
            }

            continue;
          }

          break;
        }

        v52 = 0;
        v53 = v46 + v50 * v45;
        v54 = *(v4 + 40);
        v55 = *(v5 + 40);
        v56 = v47 + v51 * v45;
        while (2)
        {
          if ((v20 & 1) != 0 || (v60 = *(v4 + 16), v61 = v60 - 1, v60 < 1) || v61 > v60 - 1 || *(*(v4 + 24) + 8 * v61) == 1)
          {
            v62 = 0;
            if ((v33 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_42:
            v57 = 0;
          }

          else
          {
            v62 = *(*(v4 + 64) + 8 * v61);
            if (v33)
            {
              goto LABEL_42;
            }

LABEL_53:
            if (*(*(v5 + 24) + 8 * v7) == 1)
            {
              goto LABEL_42;
            }

            v57 = *(*(v5 + 64) + 8 * v7);
          }

          v58 = v56 + v57 * v52;
          v59 = *(v53 + v62 * v52 + v54);
          if (COERCE_FLOAT(v59 << 16) > 0.0)
          {
            v59 = 0;
          }

          result = (v59 << 16);
          if (COERCE_FLOAT(v59 << 16) <= 0.0)
          {
            LOWORD(v59) = 0;
          }

          *(v58 + v55) = v59;
          if (v9 == ++v52)
          {
            goto LABEL_31;
          }

          continue;
        }
      }

LABEL_16:
      v37 = 0;
      if (v16 >= 1)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (++v18 == v14)
      {
        return result;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v16 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v15 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 1;
    result = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v14 = *(v8 + 8 * (v6 - 4));
  if (v14 >= 1)
  {
    result = v6 - 4;
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  return result;
}

void mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)14>(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = **a2;
  v5 = **a4;
  v6 = *(v4 + 16);
  v7 = v6 - 1;
  if (v6 <= 0)
  {
    v10 = v6 - 2;
    v9 = 1;
    goto LABEL_5;
  }

  v8 = *(v4 + 24);
  v9 = *(v8 + 8 * v7);
  if (v6 == 1)
  {
    v10 = -1;
LABEL_5:
    v11 = v6 - 3;
    v12 = 1;
    v13 = 1;
LABEL_6:
    v14 = v6 - 4;
    v15 = 1;
    v16 = 1;
    v17 = 1;
LABEL_7:
    v18 = 1;
LABEL_8:
    v19 = 0;
    v20 = v6 < 1;
    v21 = *(v4 + 58);
    v22 = v18 | v21;
    v23 = v6 - 1;
    v24 = v16 | v21;
    v25 = v11 > v23;
    v26 = v13 | v21;
    v27 = v20 | v21;
    v28 = v10 > v23;
    v29 = v7 > v23;
    v30 = v22 | (v14 > v23);
    v31 = v24 | v25;
    v32 = v26 | v28;
    v33 = v27 | v29;
    while ((v30 & 1) != 0 || *(*(v4 + 24) + 8 * v14) == 1)
    {
      v34 = 0;
      if (v17 >= 1)
      {
        goto LABEL_15;
      }

LABEL_9:
      if (++v19 == v15)
      {
        return;
      }
    }

    v34 = *(*(v4 + 64) + 8 * v14);
    if (v17 < 1)
    {
      goto LABEL_9;
    }

LABEL_15:
    v35 = 0;
    v36 = v34 * v19 + v5;
    while ((v31 & 1) != 0 || *(*(v4 + 24) + 8 * v11) == 1)
    {
      v37 = 0;
      if (v12 >= 1)
      {
        goto LABEL_22;
      }

LABEL_16:
      if (++v35 == v17)
      {
        goto LABEL_9;
      }
    }

    v37 = *(*(v4 + 64) + 8 * v11);
    if (v12 < 1)
    {
      goto LABEL_16;
    }

LABEL_22:
    v38 = 0;
    v39 = v36 + v37 * v35;
    while (1)
    {
      if ((v32 & 1) != 0 || *(*(v4 + 24) + 8 * v10) == 1)
      {
        v40 = 0;
        if (v9 >= 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v40 = *(*(v4 + 64) + 8 * v10);
        if (v9 >= 1)
        {
LABEL_29:
          v41 = 0;
          v42 = v39 + v40 * v38;
          v43 = *(v4 + 40);
          do
          {
            if ((v33 & 1) != 0 || *(*(v4 + 24) + 8 * v7) == 1)
            {
              v44 = 0;
            }

            else
            {
              v44 = *(*(v4 + 64) + 8 * v7);
            }

            *(v42 + v44 * v41++ + v43) = 0;
          }

          while (v9 != v41);
        }
      }

      if (++v38 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = v6 - 2;
  v12 = *(v8 + 8 * (v6 - 2));
  if (v6 <= 2)
  {
    v10 = 0;
    v13 = 0;
    v11 = -1;
    goto LABEL_6;
  }

  v11 = v6 - 3;
  v17 = *(v8 + 8 * (v6 - 3));
  if (v6 == 3)
  {
    v16 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 1;
    v14 = -1;
    v10 = 1;
    goto LABEL_7;
  }

  v14 = v6 - 4;
  v15 = *(v8 + 8 * (v6 - 4));
  if (v15 >= 1)
  {
    v16 = 0;
    v13 = 0;
    v18 = 0;
    goto LABEL_8;
  }
}

uint64_t llvm::SmallVectorImpl<int>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
LABEL_19:
      *v6 = 0;
      return result;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v11 = result;
        memmove(*result, *a2, 4 * v7);
        result = v11;
      }

      *(result + 8) = v7;
      goto LABEL_19;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v12 = a2;
        memmove(*result, *a2, 4 * v8);
        a2 = v12;
LABEL_16:
        v13 = *v6 - v8;
        if (v13)
        {
          memcpy((*v10 + 4 * v8), *a2 + 4 * v8, 4 * v13);
        }

        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_19;
      }

      v10 = result;
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 4);
      a2 = v9;
    }

    v8 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t mlir::getBroadcastIndices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72[4] = *MEMORY[0x1E69E9840];
  v65[0] = a1;
  v65[1] = a2;
  v64[0] = a3;
  v64[1] = a4;
  mlir::ShapedType::getShape(v65);
  if (!v6)
  {
    return 1;
  }

  mlir::ShapedType::getShape(v64);
  if (!v7)
  {
    return 1;
  }

  mlir::ShapedType::getShape(v65);
  v9 = v8;
  Shape = mlir::ShapedType::getShape(v64);
  if (v9 == 1)
  {
    if (v11)
    {
      v12 = Shape;
      v13 = 0;
      v14 = 0;
      v15 = 8 * v11;
      do
      {
        if ((v13 & 1) == 0 && (v16 = *(v12 + 8 * v14), v16 == *mlir::ShapedType::getShape(v65)))
        {
          v13 = 1;
        }

        else
        {
          v17 = *(a5 + 8);
          if (v17 >= *(a5 + 12))
          {
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a5, v14);
          }

          else
          {
            *(*a5 + 8 * v17) = v14;
            *(a5 + 8) = v17 + 1;
          }
        }

        ++v14;
        v15 -= 8;
      }

      while (v15);
    }

    return 1;
  }

  if (v11 == 1)
  {
    v18 = mlir::ShapedType::getShape(v65);
    if (v19)
    {
      v20 = v18;
      v21 = 0;
      v22 = 0;
      v23 = 8 * v19;
      do
      {
        if ((v21 & 1) == 0 && (v24 = *(v20 + 8 * v22), v24 == *mlir::ShapedType::getShape(v64)))
        {
          v21 = 1;
        }

        else
        {
          v25 = *(a5 + 8);
          if (v25 >= *(a5 + 12))
          {
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a5, v22);
          }

          else
          {
            *(*a5 + 8 * v25) = v22;
            *(a5 + 8) = v25 + 1;
          }
        }

        ++v22;
        v23 -= 8;
      }

      while (v23);
    }

    return 1;
  }

  v27 = mlir::ShapedType::getShape(v65);
  v28 = mlir::ShapedType::getShape(v65);
  v30 = (v28 + 8 * v29);
  v70 = v72;
  v71 = 0x400000000;
  v31 = (v30 - v27) >> 3;
  if (v31 < 5)
  {
    v32 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v31, 8);
    v32 = v71;
  }

  if (v30 != v27)
  {
    memcpy(v70 + 8 * v32, v27, v30 - v27);
    v32 = v71;
  }

  LODWORD(v71) = v32 + ((v30 - v27) >> 3);
  v33 = mlir::ShapedType::getShape(v64);
  v34 = mlir::ShapedType::getShape(v64);
  v36 = (v34 + 8 * v35);
  v67 = v69;
  v68 = 0x400000000;
  v37 = (v36 - v33) >> 3;
  if (v37 < 5)
  {
    v38 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v37, 8);
    v38 = v68;
  }

  if (v36 != v33)
  {
    memcpy(v67 + 8 * v38, v33, v36 - v33);
    v38 = v68;
  }

  LODWORD(v68) = v38 + ((v36 - v33) >> 3);
  v39 = mlir::ShapedType::getShape(v65);
  v41 = v40;
  v42 = mlir::ShapedType::getShape(v64);
  v44 = v41 == 0;
  v45 = v43 == 0;
  if (v41 | v43)
  {
    v46 = v42;
    v47 = v39 + 8 * v41;
    v48 = v42 + 8 * v43;
    do
    {
      if (v44)
      {
        if (!v45)
        {
          v49 = v70;
          v66 = 1;
          v50 = &v70;
LABEL_41:
          llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(v50, v49, &v66);
        }
      }

      else if (v45)
      {
        v49 = v67;
        v66 = 1;
        v50 = &v67;
        goto LABEL_41;
      }

      if (v44)
      {
        v47 = v39;
      }

      else
      {
        v47 -= 8;
      }

      if (v45)
      {
        v48 = v46;
      }

      else
      {
        v48 -= 8;
      }

      v45 = v48 == v46;
      v44 = v47 == v39;
    }

    while (v47 != v39 || v48 != v46);
  }

  v51 = mlir::OpTrait::util::staticallyKnownBroadcastable(v70, v71, v67, v68);
  v52 = v67;
  if (v51)
  {
    v53 = 1;
    if (v71 && v68)
    {
      v54 = 0;
      v55 = v70;
      v56 = 8 * v71 - 8;
      v57 = 8 * v68 - 8;
      do
      {
        v58 = v55[v54];
        v59 = v52[v54];
        if (v58 != v59 && (v58 == 1 || v59 == 1))
        {
          v61 = *(a5 + 8);
          if (v61 >= *(a5 + 12))
          {
            v63 = v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v61 + 1, 8);
            v52 = v63;
            v61 = *(a5 + 8);
          }

          *(*a5 + 8 * v61) = v54;
          ++*(a5 + 8);
        }

        if (!v56)
        {
          break;
        }

        ++v54;
        v56 -= 8;
        v62 = v57;
        v57 -= 8;
      }

      while (v62);
      v53 = 1;
      v52 = v67;
      if (v67 == v69)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v53 = 0;
  }

  if (v67 != v69)
  {
LABEL_68:
    free(v52);
  }

LABEL_69:
  if (v70 != v72)
  {
    free(v70);
  }

  return v53;
}

unint64_t mlir::tryGetPositiveAxis(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v70 = *MEMORY[0x1E69E9840];
  v54 = a1;
  v5 = -a2;
  if (-a2 > a1 || a2 <= a1)
  {
    if (a5)
    {
      v52[0] = "invalid axis ";
      v53 = 259;
      mlir::Operation::emitOpError(a5, v52, &v58);
      if (v58)
      {
        LODWORD(v55) = 2;
        v56 = a1;
        v9 = &v55;
        v10 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v55 && v60 + 24 * v61 > &v55)
          {
            v47 = &v55 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v10 = v60;
            v9 = (v60 + v47);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v9 = &v55;
            v10 = v60;
          }
        }

        v11 = &v10[24 * v61];
        v12 = *v9;
        *(v11 + 2) = v9[2];
        *v11 = v12;
        v13 = ++v61;
        if (v58)
        {
          LODWORD(v55) = 3;
          v56 = " is outside of the range [";
          v57 = 26;
          v14 = &v55;
          v15 = v60;
          if (v13 >= v62)
          {
            if (v60 <= &v55 && v60 + 24 * v13 > &v55)
            {
              v50 = &v55 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v13 + 1, 24);
              v15 = v60;
              v14 = (v60 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v13 + 1, 24);
              v14 = &v55;
              v15 = v60;
            }
          }

          v16 = &v15[24 * v61];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          v18 = ++v61;
          if (v58)
          {
            LODWORD(v55) = 2;
            v56 = v5;
            v19 = &v55;
            v20 = v60;
            if (v18 >= v62)
            {
              if (v60 <= &v55 && v60 + 24 * v18 > &v55)
              {
                v51 = &v55 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v18 + 1, 24);
                v20 = v60;
                v19 = (v60 + v51);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v18 + 1, 24);
                v19 = &v55;
                v20 = v60;
              }
            }

            v21 = &v20[24 * v61];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v61;
          }
        }
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v58, ", ");
      if (*v23)
      {
        v24 = *(v23 + 24);
        LODWORD(v55) = 2;
        v56 = (a2 - 1);
        v25 = *(v23 + 32);
        v26 = &v55;
        if (v25 >= *(v23 + 36))
        {
          if (v24 <= &v55 && v24 + 24 * v25 > &v55)
          {
            v48 = &v55 - v24;
            v49 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, (v23 + 40), v25 + 1, 24);
            v23 = v49;
            v24 = *(v49 + 24);
            v26 = &v48[v24];
          }

          else
          {
            v46 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, (v23 + 40), v25 + 1, 24);
            v23 = v46;
            v24 = *(v46 + 24);
            v26 = &v55;
          }
        }

        v27 = v24 + 24 * *(v23 + 32);
        v28 = *v26;
        *(v27 + 16) = v26[2];
        *v27 = v28;
        ++*(v23 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "].");
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }

      if (v69 != 1)
      {
        goto LABEL_56;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v67;
        v31 = __p;
        if (v67 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v67 = v29;
        operator delete(v31);
      }

      v32 = v64;
      if (!v64)
      {
LABEL_54:
        if (v60 != v63)
        {
          free(v60);
        }

LABEL_56:
        v38 = 0;
        v37 = 0;
        return v37 | v38;
      }

      v33 = v65;
      v34 = v64;
      if (v65 == v64)
      {
LABEL_53:
        v65 = v32;
        operator delete(v34);
        goto LABEL_54;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
    }

    else
    {
      v52[0] = -a2;
      v55 = (a2 - 1);
      if ((a4 & 1) == 0)
      {
        goto LABEL_56;
      }

      mlir::emitError(a3, &v58);
      if (v58)
      {
        mlir::Diagnostic::append<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(&v59, "invalid axis ", &v54, " is outside of the range [", v52, ", ", &v55, "]");
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v58);
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }

      if (v69 != 1)
      {
        goto LABEL_56;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v67;
        v41 = __p;
        if (v67 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v67 = v39;
        operator delete(v41);
      }

      v32 = v64;
      if (!v64)
      {
        goto LABEL_54;
      }

      v42 = v65;
      v34 = v64;
      if (v65 == v64)
      {
        goto LABEL_53;
      }

      do
      {
        v44 = *--v42;
        v43 = v44;
        *v42 = 0;
        if (v44)
        {
          MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
        }
      }

      while (v42 != v32);
    }

    v34 = v64;
    goto LABEL_53;
  }

  v37 = ((a2 & (a1 >> 63)) + a1) & 0xFFFFFFFFFFFFFF00;
  v38 = ((a2 & (a1 >> 63)) + a1);
  return v37 | v38;
}

BOOL mlir::getPositiveAxes(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v62[6] = *MEMORY[0x1E69E9840];
  v60 = v62;
  v61 = 0x600000000;
  if (!a2)
  {
    goto LABEL_34;
  }

  v13 = 8 * a2;
  do
  {
    v17 = *a1;
    PositiveAxis = mlir::tryGetPositiveAxis(*a1, a3, 0, 0, a7);
    if (v18)
    {
      v14 = a4[2];
      if (v14 >= a4[3])
      {
        v19 = PositiveAxis;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 4, v14 + 1, 8);
        PositiveAxis = v19;
        v14 = a4[2];
      }

      v15 = a4;
    }

    else
    {
      v14 = v61;
      v15 = &v60;
      if (v61 >= HIDWORD(v61))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 8);
        v14 = v61;
      }

      PositiveAxis = v17;
    }

    *(*v15 + 8 * v14) = PositiveAxis;
    ++v15[2];
    ++a1;
    v13 -= 8;
  }

  while (v13);
  if (v61)
  {
    if (a6)
    {
      v46 = "invalid axes: ";
      v48 = 259;
      mlir::emitError(a5, &v46, v49);
      v20 = v61;
      if (v61)
      {
        v21 = v60;
        if (v49[0])
        {
          v22 = *v60;
          LODWORD(v46) = 2;
          v47 = v22;
          v23 = &v46;
          v24 = v50;
          if (v51 >= v52)
          {
            if (v50 <= &v46 && v50 + 24 * v51 > &v46)
            {
              v45 = &v46 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v24 = v50;
              v23 = (v50 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v23 = &v46;
              v24 = v50;
            }
          }

          v25 = &v24[24 * v51];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          ++v51;
        }

        if (v20 != 1)
        {
          v36 = (v21 + 8);
          v37 = 8 * v20 - 8;
          do
          {
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v49, ", ");
            if (v49[0])
            {
              v41 = *v36;
              LODWORD(v46) = 2;
              v47 = v41;
              v42 = v50;
              if (v51 < v52)
              {
                v38 = &v46;
              }

              else if (v50 <= &v46 && v50 + 24 * v51 > &v46)
              {
                v43 = &v46 - v50;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                v42 = v50;
                v38 = (v50 + v43);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
                v38 = &v46;
                v42 = v50;
              }

              v39 = &v42[24 * v51];
              v40 = *v38;
              *(v39 + 2) = v38[2];
              *v39 = v40;
              ++v51;
            }

            ++v36;
            v37 -= 8;
          }

          while (v37);
        }
      }

      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
      }

      if (v59 == 1)
      {
        if (v58 != &v59)
        {
          free(v58);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v57;
          v30 = __p;
          if (v57 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v57 = v28;
          operator delete(v30);
        }

        v31 = v54;
        if (v54)
        {
          v32 = v55;
          v33 = v54;
          if (v55 != v54)
          {
            do
            {
              v35 = *--v32;
              v34 = v35;
              *v32 = 0;
              if (v35)
              {
                MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
              }
            }

            while (v32 != v31);
            v33 = v54;
          }

          v55 = v31;
          operator delete(v33);
        }

        if (v50 != v53)
        {
          free(v50);
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
LABEL_34:
    v27 = 1;
  }

  if (v60 != v62)
  {
    free(v60);
  }

  return v27;
}

BOOL mlir::getPositiveAxes(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  ShapedType = mlir::ElementsAttr::getShapedType(&v15);
  v18 = v12;
  if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a5, a6, "attribute is not integer type");
  }

  ShapedType = v19;
  v18 = 0x600000000;
  mlir::getIntValues<long long>(v15, v16, &ShapedType, 1);
  result = mlir::getPositiveAxes(ShapedType, v18, a3, a4, a5, a6, a7);
  if (ShapedType != v19)
  {
    v14 = result;
    free(ShapedType);
    return v14;
  }

  return result;
}

BOOL mlir::getPositiveAxes(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, char a5, uint64_t *a6)
{
  v14 = 0;
  v15 = 0;
  v13 = &v14;
  v16 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v16);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v13, DefiningOp) & 1) != 0)
  {
    return mlir::getPositiveAxes(v14, v15, a2, a3, a4, a5, a6);
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[41]>(a4, a5, "axes is not a constant");
  }
}

BOOL mlir::getPositivePromotedAxes(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5, char a6)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v19 = a1;
  v20 = a2;
  ShapedType = mlir::ElementsAttr::getShapedType(&v19);
  v22 = v10;
  if (*(*mlir::ElementsAttr::isSplat(&ShapedType) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::emitOptionalError<char const(&)[41]>(a5, a6, "attribute is not integer type");
  }

  ShapedType = v23;
  v22 = 0x600000000;
  mlir::getIntValues<long long>(v19, v20, &ShapedType, 1);
  if (mlir::getPositiveAxes(ShapedType, v22, a3, a4, a5, a6, 0))
  {
    v12 = a4[2];
    if (v12)
    {
      v13 = *a4;
      v14 = 8 * v12;
      do
      {
        v15 = *v13;
        if (*v13 == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = *v13;
        }

        if (v15)
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        if (a3 == 2)
        {
          v15 = v17;
        }

        if (a3 == 3)
        {
          v15 = v16;
        }

        if (a3 < 2)
        {
          v15 = 3;
        }

        *v13++ = v15;
        v14 -= 8;
      }

      while (v14);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  if (ShapedType != v23)
  {
    v18 = result;
    free(ShapedType);
    return v18;
  }

  return result;
}

uint64_t mlir::getPositivePromotedAxes(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned int *a4, uint64_t a5, char a6)
{
  if (!mlir::getPositiveAxes(a1, a2, a3, a4, a5, a6, 0))
  {
    return 0;
  }

  v8 = a4[2];
  if (v8)
  {
    v9 = *a4;
    v10 = 8 * v8;
    do
    {
      v11 = *v9;
      if (*v9 == 2)
      {
        v12 = 3;
      }

      else
      {
        v12 = *v9;
      }

      if (v11)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      if (a3 == 2)
      {
        v11 = v13;
      }

      if (a3 == 3)
      {
        v11 = v12;
      }

      if (a3 < 2)
      {
        v11 = 3;
      }

      *v9++ = v11;
      v10 -= 8;
    }

    while (v10);
  }

  return 1;
}

BOOL mlir::getPositivePromotedAxes(void *a1, unint64_t a2, unsigned int *a3, uint64_t a4, char a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a1 + 8);
    a1 = v9;
  }

  else
  {
    v10 = 0;
  }

  return mlir::getPositivePromotedAxes(a1, v10, a2, a3, a4, a5);
}

unint64_t mlir::getSortedUniquePromotedPositiveAxesAttr(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  v59[6] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v54 = &v47;
  v57 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v57);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, DefiningOp) & 1) == 0)
  {
    mlir::emitOptionalError<char const(&)[41]>(a3, a4, "axes is not a constant");
    return 0;
  }

  v57 = v59;
  v58 = 0x600000000;
  v9 = 0;
  v10 = 0;
  if (mlir::getPositiveAxes(v47, v48, a2, &v57, a3, a4, 0))
  {
    v54 = v56;
    v55 = 0x600000000;
    v9 = 0;
    v10 = 0;
    if (!mlir::getPositiveAxes(v57, v58, a2, &v54, a3, a4, 0))
    {
LABEL_48:
      if (v54 != v56)
      {
        free(v54);
      }

      goto LABEL_50;
    }

    std::__sort<std::__less<long long,long long> &,long long *>();
    v11 = v54;
    v12 = v54 + 8 * v55;
    if (v55)
    {
      v13 = 8 * v55 - 16;
      v14 = v54;
      while (1)
      {
        v15 = v14;
        v14 += 8;
        if (v14 == v12)
        {
          break;
        }

        v16 = v13;
        v17 = *v15;
        v13 -= 8;
        if (*v15 == v15[1])
        {
          if (v15 + 2 != v12)
          {
            v18 = 8;
            do
            {
              v20 = v17;
              v17 = *&v14[v18];
              if (v20 != v17)
              {
                v15[1] = v17;
                ++v15;
              }

              v18 += 8;
              v16 -= 8;
            }

            while (v16);
          }

          v12 = (v15 + 1);
          break;
        }
      }
    }

    v21 = (v12 - v11) >> 3;
    LODWORD(v55) = v21;
    if (v21)
    {
      v22 = 8 * v21;
      v23 = v11;
      do
      {
        v24 = *v23;
        if (*v23 == 2)
        {
          v25 = 3;
        }

        else
        {
          v25 = *v23;
        }

        if (v24)
        {
          v26 = 3;
        }

        else
        {
          v26 = 1;
        }

        if (a2 == 2)
        {
          v24 = v26;
        }

        if (a2 == 3)
        {
          v24 = v25;
        }

        if (a2 < 2)
        {
          v24 = 3;
        }

        *v23++ = v24;
        v22 -= 8;
      }

      while (v22);
    }

    v51 = v53;
    v52 = 0x600000000;
    if (v21 < 7uLL)
    {
      v27 = 0;
      if (!v21)
      {
        goto LABEL_42;
      }

      v28 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v21, 8);
      v27 = v52;
      v28 = v52;
    }

    v29 = v51 + 8 * v28;
    v30 = (v21 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v30 >= 7)
    {
      v32 = v51 + 8 * v28;
      v31 = v11;
      if ((v32 - v11) >= 0x20)
      {
        v33 = v30 + 1;
        v34 = 8 * (v33 & 0x3FFFFFFFFFFFFFFCLL);
        v29 = (v29 + v34);
        v31 = &v11[v34];
        v35 = (v11 + 16);
        v36 = v32 + 16;
        v37 = v33 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v38 = *v35;
          *(v36 - 1) = *(v35 - 1);
          *v36 = v38;
          v35 += 2;
          v36 += 2;
          v37 -= 4;
        }

        while (v37);
        if (v33 == (v33 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_42:
          LODWORD(v52) = v27 + v21;
          v50 = v55;
          v49 = a1[1] & 0xFFFFFFFFFFFFFFF8;
          Context = mlir::Attribute::getContext(&v49);
          v41 = mlir::IntegerType::get(Context, 0x40u, 2u);
          v42 = mlir::RankedTensorType::get(&v50, 1, v41, 0);
          if (v42)
          {
            v43 = v42;
            v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
            v42 = v43;
          }

          else
          {
            v44 = 0;
          }

          v45 = mlir::DenseElementsAttr::getFromRawBuffer(v42, v44, v51, 8 * v52);
          v46 = v45;
          v10 = v45 & 0xFFFFFFFFFFFFFF00;
          if (v51 != v53)
          {
            free(v51);
          }

          v9 = v46;
          goto LABEL_48;
        }
      }
    }

    else
    {
      v31 = v11;
    }

    do
    {
      v39 = *v31;
      v31 += 8;
      *v29++ = v39;
    }

    while (v31 != &v11[8 * v21]);
    goto LABEL_42;
  }

LABEL_50:
  if (v57 != v59)
  {
    free(v57);
  }

  return v10 | v9;
}

uint64_t mlir::getMostDefinedTypeForCPU(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = a1;
  v18 = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = (*(mlir::ValueRange::dereference_iterator(&v17, v3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    *&v15 = v4;
    *(&v15 + 1) = v5;
    if (!v16 || (Shape = mlir::ShapedType::getShape(&v15), NumElements = mlir::ShapedType::getNumElements(Shape, v7), v9 = mlir::ShapedType::getShape(&v16), NumElements > mlir::ShapedType::getNumElements(v9, v10)) || (mlir::ShapedType::getShape(&v15), v12 = v11, mlir::ShapedType::getShape(&v16), v12 > v13))
    {
      v16 = v15;
    }

    v3 = v18 + 1;
    v18 = v3;
  }

  while (v3 != a2);
  return v16;
}

void mlir::getRankPromotionShapeForANE(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t **a4@<X8>)
{
  v52[0] = a1;
  v52[1] = a2;
  Shape = mlir::ShapedType::getShape(v52);
  v7 = mlir::ShapedType::getShape(v52);
  v9 = v7 + 8 * v8;
  *a4 = (a4 + 2);
  a4[1] = 0x500000000;
  v10 = (v9 - Shape) >> 3;
  if (v10 < 6)
  {
    v11 = 0;
    if (v9 == Shape)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, v10, 8);
  v11 = *(a4 + 2);
  if (v9 != Shape)
  {
LABEL_5:
    v7 = memcpy(&(*a4)[v11], Shape, v9 - Shape);
    v11 = *(a4 + 2);
  }

LABEL_6:
  *(a4 + 2) = v11 + ((v9 - Shape) >> 3);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v7);
  Context = mlir::Attribute::getContext(v52);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, Context);
  if (Properties)
  {
    v15 = *Properties;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 2);
  if (a3)
  {
    if (v16 <= 1)
    {
      if (!v16)
      {
        *(a4 + 2) = 0;
        if (*(a4 + 3) > 4u)
        {
          v43 = 0;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 5uLL, 8);
          v43 = *(a4 + 2);
        }

        v50 = &(*a4)[v43];
        *v50 = xmmword_1A75EBCB0;
        *(v50 + 1) = unk_1A75EBCC0;
        v50[4] = 1;
        goto LABEL_72;
      }

      if (v16 != 1)
      {
        return;
      }

      v30 = *a4;
      v20 = **a4;
      *(a4 + 2) = 0;
      if (*(a4 + 3) > 4u)
      {
        v31 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 5uLL, 8);
        v31 = *(a4 + 2);
        v30 = *a4;
      }

      v48 = v30 + 8 * v31;
      *v48 = 1;
      *(v48 + 8) = vdupq_n_s64(1uLL);
    }

    else
    {
      switch(v16)
      {
        case 2:
          v36 = *a4;
          v37 = **a4;
          v20 = (*a4)[1];
          *(a4 + 2) = 0;
          if (*(a4 + 3) > 4u)
          {
            v38 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 5uLL, 8);
            v38 = *(a4 + 2);
            v36 = *a4;
          }

          v48 = v36 + 8 * v38;
          *v48 = 1;
          break;
        case 3:
          v39 = *a4;
          v40 = **a4;
          v37 = (*a4)[1];
          v20 = (*a4)[2];
          *(a4 + 2) = 0;
          v41 = *(a4 + 3);
          if (v15)
          {
            if (v41 > 4)
            {
              v42 = 0;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 5uLL, 8);
              v42 = *(a4 + 2);
              v39 = *a4;
            }

            v48 = v39 + 8 * v42;
            *v48 = 1;
            *(v48 + 8) = 1;
            *(v48 + 16) = v40;
            *(v48 + 24) = v37;
            goto LABEL_71;
          }

          if (v41 > 4)
          {
            v49 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 5uLL, 8);
            v49 = *(a4 + 2);
            v39 = *a4;
          }

          v48 = v39 + 8 * v49;
          *v48 = v40;
          break;
        case 4:
          v17 = *a4;
          v18 = **a4;
          v19 = *(*a4 + 1);
          v20 = (*a4)[3];
          *(a4 + 2) = 0;
          if (*(a4 + 3) > 4u)
          {
            v21 = 0;
          }

          else
          {
            v51 = v19;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 5uLL, 8);
            v19 = v51;
            v21 = *(a4 + 2);
            v17 = *a4;
          }

          v48 = v17 + 8 * v21;
          *v48 = v18;
          *(v48 + 8) = 1;
          *(v48 + 16) = v19;
          goto LABEL_71;
        default:
          return;
      }

      *(v48 + 8) = 1;
      *(v48 + 16) = v37;
    }

    *(v48 + 24) = 1;
LABEL_71:
    *(v48 + 32) = v20;
LABEL_72:
    v47 = 5;
    goto LABEL_73;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      *(a4 + 2) = 0;
      if (*(a4 + 3) > 3u)
      {
        v32 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 4uLL, 8);
        v32 = *(a4 + 2);
      }

      v46 = &(*a4)[v32];
      *v46 = xmmword_1A75EBC90;
      *(v46 + 1) = unk_1A75EBCA0;
      v47 = 4;
      goto LABEL_73;
    }

    if (v16 != 1)
    {
      return;
    }

    v22 = *a4;
    v23 = **a4;
    *(a4 + 2) = 0;
    if (*(a4 + 3) > 3u)
    {
      v24 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 4uLL, 8);
      v24 = *(a4 + 2);
      v22 = *a4;
    }

    v44 = v22 + 8 * v24;
    *v44 = 1;
    *(v44 + 8) = vdupq_n_s64(1uLL);
    goto LABEL_64;
  }

  if (v16 == 2)
  {
    v33 = *a4;
    v34 = **a4;
    v23 = (*a4)[1];
    *(a4 + 2) = 0;
    if (*(a4 + 3) > 3u)
    {
      v35 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 4uLL, 8);
      v35 = *(a4 + 2);
      v33 = *a4;
    }

    v44 = v33 + 8 * v35;
    *v44 = 1;
    *(v44 + 8) = v34;
  }

  else
  {
    if (v16 != 3)
    {
      return;
    }

    v25 = *a4;
    v27 = **a4;
    v26 = (*a4)[1];
    v23 = (*a4)[2];
    *(a4 + 2) = 0;
    v28 = *(a4 + 3);
    if (v15)
    {
      if (v28 > 3)
      {
        v29 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 4uLL, 8);
        v29 = *(a4 + 2);
        v25 = *a4;
      }

      v44 = v25 + 8 * v29;
      *v44 = 1;
      *(v44 + 8) = v27;
      *(v44 + 16) = v26;
      goto LABEL_64;
    }

    if (v28 > 3)
    {
      v45 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, 4uLL, 8);
      v45 = *(a4 + 2);
      v25 = *a4;
    }

    v44 = v25 + 8 * v45;
    *v44 = v27;
    *(v44 + 8) = v26;
  }

  *(v44 + 16) = 1;
LABEL_64:
  *(v44 + 24) = v23;
  v47 = 4;
LABEL_73:
  *(a4 + 2) += v47;
}

void *mlir::getRankPromotionTypeForANE(void *a1, uint64_t a2)
{
  v95[5] = *MEMORY[0x1E69E9840];
  v83 = a1;
  v84 = a2;
  if (!mlir::ElementsAttr::getShapedType(&v83))
  {
    return v83;
  }

  Shape = mlir::ShapedType::getShape(&v83);
  if (v3)
  {
    v4 = 8 * v3;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    return v83;
  }

LABEL_6:
  if ((mlir::ElementsAttr::getShapedType(&v83) & 1) == 0)
  {
    return v83;
  }

  mlir::getRankPromotionShapeForANE(v83, v84, 0, &v93);
  v5 = mlir::ShapedType::getShape(&v83);
  v6 = v94;
  if (v7 == v94 && !memcmp(v5, v93, 8 * v94))
  {
    result = v83;
  }

  else
  {
    v8 = v83;
    if (*(*v83 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v8 = 0;
    }

    v82 = v8;
    if (v8)
    {
      *&v91 = mlir::DenseElementsAttr::getRawStringData(&v82);
      *(&v91 + 1) = v9;
      if (mlir::ElementsAttr::isSplat(&v91))
      {
        v10 = v93;
        v11 = v94;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v82);
        MemorySpace = mlir::MemRefType::getMemorySpace(&v82);
        result = mlir::MemRefType::get(v10, v11, RHS, 0, MemorySpace);
        if (result)
        {
          v15 = result;
          mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
          result = v15;
        }
      }

      else
      {
        mlir::ArrayAttr::getValue(&v82);
        v19 = v18;
        *&v91 = mlir::DenseElementsAttr::getRawStringData(&v82);
        *(&v91 + 1) = v20;
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&v91);
        *&v91 = v92;
        *(&v91 + 1) = 0x300000000;
        v88 = &v90;
        v89 = 0x100000000;
        Results = mlir::AffineMap::getResults(&FunctionType);
        v22 = *Results;
        if (*Results && (v85 = *Results, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v85, v23);
        v80 = v85;
        LHS = mlir::AffineBinaryOpExpr::getLHS(&v80);
        if (LHS && (v25 = LHS, v85 = LHS, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v85, v26);
        v27 = v85;
        v28 = mlir::AffineBinaryOpExpr::getRHS(&v80);
        if (v28 && (v29 = v28, v85 = v28, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v85, v30);
        v79 = v85;
        if (v85 && mlir::arith::FastMathFlagsAttr::getValue(&v79) == 2)
        {
          v31 = mlir::AffineBinaryOpExpr::getRHS(&v79);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v88, v31);
          v80 = v27;
        }

        if (v19 - 1 >= 1)
        {
          do
          {
            v32 = mlir::AffineBinaryOpExpr::getLHS(&v80);
            if (v32 && (v33 = v32, v85 = v32, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v85, v34);
            v35 = v85;
            v36 = mlir::AffineBinaryOpExpr::getRHS(&v80);
            if (v36 && (v37 = v36, v85 = v36, mlir::arith::FastMathFlagsAttr::getValue(&v85) < 5))
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v85, v38);
            v79 = v85;
            if (v85 && mlir::arith::FastMathFlagsAttr::getValue(&v79) == 1)
            {
              AffineConstantExpr = mlir::AffineBinaryOpExpr::getRHS(&v79);
            }

            else
            {
              Context = mlir::Attribute::getContext(&v82);
              AffineConstantExpr = mlir::getAffineConstantExpr(1, Context, v41);
            }

            v42 = DWORD2(v91);
            if (DWORD2(v91) >= HIDWORD(v91))
            {
              v43 = AffineConstantExpr;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v92, DWORD2(v91) + 1, 8);
              AffineConstantExpr = v43;
              v42 = DWORD2(v91);
            }

            *(v91 + 8 * v42) = AffineConstantExpr;
            ++DWORD2(v91);
            v80 = v35;
            --v19;
          }

          while (v19 > 1);
        }

        v44 = mlir::AffineBinaryOpExpr::getRHS(&v80);
        v45 = DWORD2(v91);
        if (DWORD2(v91) >= HIDWORD(v91))
        {
          v74 = v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v92, DWORD2(v91) + 1, 8);
          v44 = v74;
          v45 = DWORD2(v91);
        }

        *(v91 + 8 * v45) = v44;
        ++DWORD2(v91);
        if (v89 == 1)
        {
          v85 = llvm::dyn_cast_if_present<mlir::AffineConstantExpr,mlir::AffineExpr>(v88);
          v46 = mlir::AffineBinaryOpExpr::getLHS(&v85);
        }

        else
        {
          v46 = 1;
        }

        v85 = &v87;
        v86 = 0x100000000;
        v47 = mlir::Attribute::getContext(&v82);
        AffineDimExpr = mlir::getAffineDimExpr(0, v47, v48);
        v77 = mlir::AffineExpr::operator*(&AffineDimExpr, *(v91 + 16));
        Value = mlir::ArrayAttr::getValue(&v82);
        v78 = mlir::AffineExpr::operator*(&v77, *(Value + 8) / v46);
        v50 = mlir::Attribute::getContext(&v82);
        v77 = mlir::getAffineDimExpr(1, v50, v51);
        if (v89 == 1)
        {
          v77 = mlir::AffineExpr::floorDiv(&v77, *v88);
        }

        v52 = mlir::AffineExpr::operator*(&v77, *(v91 + 16));
        v78 = mlir::AffineExpr::operator+(&v78, v52);
        v53 = mlir::Attribute::getContext(&v82);
        AffineDimExpr = mlir::getAffineDimExpr(2, v53, v54);
        v55 = mlir::AffineExpr::operator*(&AffineDimExpr, *(v91 + 8));
        v78 = mlir::AffineExpr::operator+(&v78, v55);
        v56 = mlir::Attribute::getContext(&v82);
        AffineDimExpr = mlir::getAffineDimExpr(3, v56, v57);
        v58 = mlir::AffineExpr::operator*(&AffineDimExpr, *v91);
        v59 = mlir::AffineExpr::operator+(&v78, v58);
        v78 = v59;
        if (v89 == 1)
        {
          v60 = mlir::Attribute::getContext(&v82);
          AffineDimExpr = mlir::getAffineDimExpr(1, v60, v61);
          v62 = mlir::AffineExpr::operator%(&AffineDimExpr, *v88);
          v59 = mlir::AffineExpr::operator+(&v78, v62);
          v78 = v59;
        }

        v63 = v86;
        if (v86 >= HIDWORD(v86))
        {
          v75 = v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, &v87, v86 + 1, 8);
          v59 = v75;
          v63 = v86;
        }

        *(v85 + v63) = v59;
        LODWORD(v86) = v86 + 1;
        v64 = v86;
        v65 = v85;
        v66 = mlir::Attribute::getContext(&v82);
        v67 = mlir::AffineMap::get(4, 0, v65, v64, v66);
        v68 = mlir::ArrayAttr::getValue(&v82);
        v70 = v69;
        v71 = mlir::AffineBinaryOpExpr::getRHS(&v82);
        result = mlir::MemRefType::get(v68, v70, v71, v67, 0);
        v72 = result;
        if (result)
        {
          mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
          result = v72;
        }

        if (v85 != &v87)
        {
          free(v85);
          result = v72;
        }

        if (v88 != &v90)
        {
          free(v88);
          result = v72;
        }

        if (v91 != v92)
        {
          free(v91);
          result = v72;
        }
      }
    }

    else
    {
      v16 = v93;
      isSplat = mlir::ElementsAttr::isSplat(&v83);
      *&v91 = v16;
      *(&v91 + 1) = v6;
      v92[0] = 1;
      result = mlir::ShapedType::cloneWith(&v83, &v91, isSplat);
    }
  }

  if (v93 != v95)
  {
    v73 = result;
    free(v93);
    return v73;
  }

  return result;
}

unint64_t mlir::calculateANEStridesFromAffineMap(uint64_t a1, uint64_t a2)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v56 = a1;
  *(a2 + 8) = 0;
  mlir::ArrayAttr::getValue(&v56);
  v4 = *(a2 + 8);
  if (v3 != v4)
  {
    if (v3 >= v4)
    {
      if (v3 > *(a2 + 12))
      {
        v5 = v3;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v3, 8);
        v3 = v5;
        v4 = *(a2 + 8);
      }

      if (v3 != v4)
      {
        v6 = v3;
        bzero((*a2 + 8 * v4), 8 * (v3 - v4));
        LODWORD(v3) = v6;
      }
    }

    *(a2 + 8) = v3;
    v4 = v3;
  }

  *(*a2 + 8 * v4 - 8) = 1;
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v56);
  v62 = v7;
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&RawStringData);
  v8 = mlir::AffineMap::getResult(&FunctionType, 0);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  RawStringData = v63;
  v62 = 0x400000000;
  v57 = v8;
  FunctionType = v60;
  v59 = 0x200000000;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v57) >= 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v10);
  v55 = v57;
  if (!v57)
  {
LABEL_36:
    v23 = 0;
    goto LABEL_38;
  }

  while (!mlir::arith::FastMathFlagsAttr::getValue(&v55))
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v55);
    v57 = RHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v57) >= 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = RHS;
    }

    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v14);
    v54 = v57;
    if (!v57)
    {
      v18 = mlir::AffineBinaryOpExpr::getRHS(&v55);
      v57 = v18;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v57) == 6)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v19);
      v20 = v57;
      if (!v57)
      {
        goto LABEL_34;
      }

      v21 = v59;
      if (v59 >= HIDWORD(v59))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&FunctionType, v60, v59 + 1, 8);
        v21 = v59;
      }

      *(FunctionType + v21) = v20;
      v17 = &v59;
      goto LABEL_33;
    }

    if (mlir::arith::FastMathFlagsAttr::getValue(&v54) == 1)
    {
      v15 = v54;
      v16 = v62;
      if (v62 >= HIDWORD(v62))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, v63, v62 + 1, 8);
        v16 = v62;
      }

      *(RawStringData + v16) = v15;
      v17 = &v62;
LABEL_33:
      ++*v17;
    }

LABEL_34:
    LHS = mlir::AffineBinaryOpExpr::getLHS(&v55);
    v57 = LHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v57) < 5)
    {
      v12 = LHS;
    }

    else
    {
      v12 = 0;
    }

    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v12);
    v55 = v57;
    if (!v57)
    {
      goto LABEL_36;
    }
  }

  v23 = v55;
LABEL_38:
  v24 = v62;
  if (v62 >= HIDWORD(v62))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&RawStringData, v63, v62 + 1, 8);
    v24 = v62;
  }

  *(RawStringData + v24) = v23;
  LODWORD(v62) = v62 + 1;
  v57 = mlir::AffineBinaryOpExpr::getRHS(&v56);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v57);
  mlir::ArrayAttr::getValue(&v56);
  if (v26)
  {
    v27 = IntOrFloatBitWidth;
    v28 = v26 - 1;
    v29 = IntOrFloatBitWidth >> 3;
    if (v62)
    {
      v30 = RawStringData;
      v31 = 8 * v62;
      while (1)
      {
        v32 = mlir::AffineBinaryOpExpr::getLHS(v30);
        v57 = v32;
        if (mlir::arith::FastMathFlagsAttr::getValue(&v57) == 6)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v33);
        v54 = v57;
        if (!v57)
        {
          v57 = v32;
          if (mlir::arith::FastMathFlagsAttr::getValue(&v57) >= 5)
          {
            v34 = 0;
          }

          else
          {
            v34 = v32;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v34);
          v53 = v57;
          v35 = mlir::AffineBinaryOpExpr::getLHS(&v53);
          v57 = v35;
          if (mlir::arith::FastMathFlagsAttr::getValue(&v57) == 6)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }

          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v36);
          v54 = v57;
        }

        v37 = mlir::AffineBinaryOpExpr::getRHS(v30);
        v57 = v37;
        v38 = mlir::arith::FastMathFlagsAttr::getValue(&v57) == 5 ? v37 : 0;
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v57, v38);
        v53 = v57;
        if (!v54 || !v57)
        {
          break;
        }

        v39 = mlir::AffineBinaryOpExpr::getLHS(&v53);
        *(*a2 + 8 * mlir::AffineDimExpr::getPosition(&v54)) = v39;
        if (v28 != mlir::AffineDimExpr::getPosition(&v54))
        {
          Position = mlir::AffineDimExpr::getPosition(&v54);
          v41 = *(*a2 + 8 * Position);
          v42 = v41 * v29;
          v43 = v41 >> 1;
          if (v27 != 4)
          {
            v43 = v42;
          }

          *(*a2 + 8 * Position) = v43;
        }

        v30 = (v30 + 8);
        v31 -= 8;
        if (!v31)
        {
          goto LABEL_64;
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_64:
      if (v59)
      {
        v44 = FunctionType;
        v45 = 8 * v59;
        do
        {
          *(*a2 + 8 * mlir::AffineDimExpr::getPosition(v44)) = 1;
          if (v28 != mlir::AffineDimExpr::getPosition(v44))
          {
            v46 = mlir::AffineDimExpr::getPosition(v44);
            v47 = *(*a2 + 8 * v46);
            v48 = v47 * v29;
            v49 = v47 >> 1;
            if (v27 != 4)
            {
              v49 = v48;
            }

            *(*a2 + 8 * v46) = v49;
          }

          v44 = (v44 + 8);
          v45 -= 8;
        }

        while (v45);
      }

      v11 = 1;
    }

    if (FunctionType != v60)
    {
      free(FunctionType);
    }

    if (RawStringData != v63)
    {
      free(RawStringData);
    }

    return v11;
  }

  else
  {
    v51 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::getIndexFromDim(v51, v52);
  }
}

unint64_t mlir::anec::getIndexFromDim(int a1, unint64_t a2)
{
  if (a1 <= 1)
  {
    v2 = a2 - 3;
    v6 = (a2 - 3) & 0xFFFFFFFFFFFFFF00;
    if (a2 < 3)
    {
      v2 = 0;
      v6 = 0;
    }

    if (a1 == 1)
    {
      v7 = v6;
    }

    else
    {
      v2 = 0;
      v7 = 0;
    }

    if (a1)
    {
      v3 = v7;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0;
    v2 = a2 > 4;
  }

  else
  {
    v2 = a2 - 2;
    v3 = (a2 - 2) & 0xFFFFFFFFFFFFFF00;
    if (a2 < 2)
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = a2 - 1;
    v5 = (a2 - 1) & 0xFFFFFFFFFFFFFF00;
    if (!a2)
    {
      v4 = 0;
      v5 = 0;
    }

    if (a1 != 4)
    {
      v4 = 0;
      v5 = 0;
    }

    if (a1 != 3)
    {
      v2 = v4;
      v3 = v5;
    }
  }

  return v3 | v2;
}