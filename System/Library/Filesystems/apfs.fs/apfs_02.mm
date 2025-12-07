uint64_t sub_100018B08(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  v21 = -1431655766;
  v10 = *(*(a1 + 56) + 36) - 1;
  v20 = -21846;
  if ((*(a1 + 400) & 1) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      v23 = 0xAAAAAAAAAAAAAAAALL;
      while (1)
      {
        v12 = (v10 + v11) / 2;
        result = btree_node_key_ptr(a1, v12, &v23, &v20);
        if (result)
        {
          return result;
        }

        v14 = *(a1 + 8);
        if (!v14)
        {
          v14 = *(*a1 + 392);
        }

        result = (*(a1 + 416))(v14, a2, a3, v23, v20, &v21);
        if (result)
        {
          return result;
        }

        v15 = v21 == 0;
        if (!v21)
        {
          v11 = (v10 + v11) / 2;
          goto LABEL_34;
        }

        if (v21 < 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v11 = v12 + 1;
        }

        if (v11 > v10)
        {
          goto LABEL_34;
        }
      }
    }

    v15 = 0;
    LOWORD(v11) = 0;
LABEL_34:
    result = 0;
    *a4 = v11;
LABEL_37:
    *a5 = v15;
    return result;
  }

  if (a3 != 8)
  {
    return 22;
  }

  if (v10 < 0)
  {
    v15 = 0;
    LOWORD(v16) = 0;
LABEL_36:
    result = 0;
    *a4 = v16;
    goto LABEL_37;
  }

  v16 = 0;
  v17 = *a2;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v22 = -21846;
  while (1)
  {
    v18 = (v16 + v10) / 2;
    LODWORD(result) = btree_node_key_ptr(a1, v18, &v23, &v22);
    v19 = v22 != 8 && result == 0;
    result = v19 ? 22 : result;
    if (result)
    {
      return result;
    }

    v15 = *v23 == v17;
    if (*v23 == v17)
    {
      v16 = (v16 + v10) / 2;
      goto LABEL_36;
    }

    if (*v23 > v17)
    {
      v10 = v18 - 1;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 > v10)
    {
      goto LABEL_36;
    }
  }
}

uint64_t sub_100018CDC(uint64_t a1, unsigned int a2, void *__src, size_t __n, void *a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v9 = __n;
  v10 = __src;
  v11 = a2;
  v101 = -21846;
  v100 = -21846;
  v99 = -21846;
  v98 = -21846;
  v13 = *(a1 + 56);
  v14 = *(v13 + 32);
  if (a6 == 65534)
  {
    v15 = 0;
  }

  else
  {
    v15 = a6;
  }

  v97 = *(v13 + 32);
  if (*(v13 + 36) <= a2)
  {
    v24 = 0;
    v23 = 0;
    LOWORD(v25) = 0;
    v94 = 0;
    v18 = 0xFFFF;
    v20 = 0xFFFF;
  }

  else
  {
    v16 = *(a1 + 376);
    if ((v14 & 4) != 0)
    {
      v17 = (v16 + 4 * a2);
    }

    else
    {
      v17 = (v16 + 8 * a2);
    }

    v18 = *v17;
    v19 = (v16 + 4 * a2 + 2);
    if ((v14 & 4) == 0)
    {
      v19 = (v16 + 8 * a2 + 4);
    }

    v20 = *v19;
    v21 = __n;
    v22 = v15;
    if (v18 == 0xFFFF)
    {
      v23 = 0;
    }

    else if ((v14 & 4) != 0)
    {
      v23 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v23 = *(v16 + 8 * a2 + 2);
    }

    if (v20 > 0xFFFD)
    {
      v25 = 0;
    }

    else
    {
      v35 = v23;
      v36 = btree_node_val_len(a1, a2);
      v23 = v35;
      v25 = v36;
    }

    v94 = v23 != 0;
    if (v23)
    {
      v37 = v23;
      v38 = sub_100016954(a1, v18, v23);
      v23 = v37;
      if (v38)
      {
        return v38;
      }
    }

    if (v25)
    {
      v90 = v11;
      v39 = v23;
      v38 = sub_100016A80(a1, v20, v25);
      if (v38)
      {
        return v38;
      }

      v24 = 1;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v23 = v39;
      v11 = v90;
      v10 = __src;
    }

    else
    {
      v24 = 0;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v10 = __src;
    }
  }

  v101 = v18;
  v100 = v20;
  v26 = v9 - v23;
  if (!v10)
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = v15 - v25;
  if (!v8)
  {
    v28 = 0;
  }

  v29 = v28;
  if (v26 | v28)
  {
    if (v10)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v30 = v9;
      }

      else
      {
        v30 = (v9 + 7) & 0xFFF8;
      }

      v31 = (v23 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v31 = v23;
      }

      v32 = (v30 - v31);
    }

    else
    {
      v32 = 0;
    }

    v88 = v24;
    v89 = v18;
    v87 = v8;
    v93 = v29;
    v91 = v27;
    v41 = v23;
    if (v8)
    {
      v42 = v7;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v43 = v15;
      }

      else
      {
        v43 = (v15 + 7) & 0xFFF8;
      }

      v44 = (v25 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v44 = v25;
      }

      v45 = (v43 - v44);
    }

    else
    {
      v42 = v7;
      v45 = 0;
    }

    if (v45 + v32 > sub_100020CF0(a1))
    {
      return 28;
    }

    v46 = 0;
    v98 = -1;
    v99 = -1;
    v47 = v42;
    if (v9)
    {
      v29 = v93;
      v48 = v89;
      v27 = v91;
      v23 = v41;
      if (!v91)
      {
LABEL_61:
        if (v15 && v29)
        {
          v49 = v46;
          sub_100020D70(a1, 2, v15, &v98, &v100);
          if (v100 == -1)
          {
            v29 = v93;
            v48 = v89;
            v27 = v91;
            v23 = v41;
            v46 = v49;
            if (v93 < 0)
            {
              v100 = v20;
              v98 = -1;
            }

            else
            {
              if ((*(a1 + 400) & 0x40) != 0)
              {
                v50 = v15;
              }

              else
              {
                v50 = (v15 + 7) & 0xFFF8;
              }

              v46 = v50 + v49;
            }
          }

          else
          {
            v29 = v93;
            v48 = v89;
            v27 = v91;
            v23 = v41;
            v46 = v49;
          }
        }

        v51 = *(a1 + 56);
        v52 = *(v51 + 46);
        if (v27)
        {
          v53 = v94;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v54 = v23;
          }

          else
          {
            v54 = (v23 + 7) & 0xFFF8;
          }

          v55 = (v54 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v55 = v23;
          }

          if (v55 >= 4u)
          {
            v56 = (*(a1 + 384) + v48);
            v56[1] = v55;
            *v56 = *(v51 + 48);
            *(v51 + 48) = v48;
          }

          *(v51 + 50) += v55;
          if (v101 != 0xFFFF && v99 == 0xFFFF && v101 != v48 && *(v51 + 48) == v48)
          {
            v99 = v48;
          }
        }

        if (v29)
        {
          v57 = v88;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v58 = v25;
          }

          else
          {
            v58 = (v25 + 7) & 0xFFF8;
          }

          v59 = (v58 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v59 = v25;
          }

          if (v59 >= 4u)
          {
            v60 = (*(a1 + 392) - v20);
            v60[1] = v59;
            *v60 = *(v51 + 52);
            *(v51 + 52) = v20;
          }

          *(v51 + 54) += v59;
          if (v100 != 0xFFFF && v98 == 0xFFFF && v100 != v20 && *(v51 + 52) == v20)
          {
            v98 = v20;
          }
        }

        if (v52 < v46)
        {
          if ((v97 & 0x8000) == 0)
          {
            *(v51 + 32) |= 0x8000u;
          }

          if (*(v51 + 36) > v11)
          {
            v61 = *(v51 + 32);
            v62 = *(a1 + 376);
            if ((v61 & 4) != 0)
            {
              if (v53)
              {
                *(v62 + 4 * v11) = -1;
              }

              if (v57)
              {
                *(v62 + 4 * v11 + 2) = -1;
              }
            }

            else
            {
              if (v53)
              {
                *(v62 + 8 * v11) = 0xFFFF;
              }

              if (v57)
              {
                *(v62 + 8 * v11 + 4) = 0xFFFF;
              }
            }
          }

          v95 = v57;
          v63 = sub_100020F90(a1, 0, v47);
          if (v63)
          {
            v40 = v63;
            if (v53)
            {
              v64 = (*(a1 + 400) & 0x40) != 0 ? v9 : (v9 + 7) & 0xFFF8;
              v65 = sub_100021374(a1, 1, v64, 0xFFFF, v89);
              if (v65)
              {
                v66 = *(a1 + 8);
                if (v66)
                {
                  v67 = (v66 + 4040);
                }

                else
                {
                  v67 = (*(*(*a1 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s unable to reclaim just-freed key space on error path: %d\n", "btree_node_entry_update", 1772, v67, v65);
              }
            }

            if (v95)
            {
              if ((*(a1 + 400) & 0x40) != 0)
              {
                v86 = v25;
              }

              else
              {
                v86 = (v25 + 7) & 0xFFF8;
              }

              if (sub_100021374(a1, 2, v86, 0xFFFF, v20))
              {
                log_err("%s:%d: %s unable to reclaim just-freed val space on error path: %d\n");
              }
            }

            return v40;
          }

          v98 = -1;
          v99 = -1;
          v101 = -1;
          v100 = -1;
          v29 = v93;
          v27 = v91;
          v23 = v41;
        }

        v68 = v10;
        v69 = v47;
        if (v27)
        {
          v8 = v87;
          if (v101 == 0xFFFF)
          {
            v70 = sub_100021464(a1, 1, v9, &v101);
          }

          else
          {
            v70 = sub_100021374(a1, 1, v9, v99, v101);
          }

          v40 = v70;
          v29 = v93;
          v27 = v91;
          v23 = v41;
          if (v70)
          {
            goto LABEL_179;
          }
        }

        else
        {
          v71 = *(a1 + 376);
          v72 = (v71 + 4 * v11);
          v73 = (v71 + 8 * v11);
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v74 = v72;
          }

          else
          {
            v74 = v73;
          }

          v101 = *v74;
          v8 = v87;
        }

        if (!v29)
        {
          v76 = *(a1 + 376);
          v77 = v76 + 4 * v11 + 2;
          v78 = v76 + 8 * v11 + 4;
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v79 = v77;
          }

          else
          {
            v79 = v78;
          }

          LOWORD(v20) = *v79;
          v100 = *v79;
          goto LABEL_149;
        }

        v7 = v69;
        if (!v15)
        {
          if (a6 == 65534)
          {
            LOWORD(v20) = -2;
          }

          else
          {
            LOWORD(v20) = -1;
          }

          v100 = v20;
          goto LABEL_150;
        }

        if (v100 == 0xFFFF)
        {
          v75 = sub_100021464(a1, 2, v15, &v100);
        }

        else
        {
          v75 = sub_100021374(a1, 2, v15, v98, v100);
        }

        v40 = v75;
        v29 = v93;
        v27 = v91;
        if (!v75)
        {
          v23 = v41;
          LOWORD(v20) = v100;
LABEL_149:
          v7 = v69;
LABEL_150:
          v10 = v68;
          goto LABEL_151;
        }

LABEL_179:
        log_err("%s:%d: %s unable allocate space that should be there: %d\n");
        return v40;
      }

      sub_100020D70(a1, 1, v9, &v99, &v101);
      if (v101 == -1)
      {
        v48 = v89;
        v27 = v91;
        if (v91 < 0)
        {
          v46 = 0;
          v101 = v89;
          v99 = -1;
        }

        else if ((*(a1 + 400) & 0x40) != 0)
        {
          v46 = v9;
        }

        else
        {
          v46 = (v9 + 7) & 0xFFF8;
        }

        v29 = v93;
        goto LABEL_60;
      }

      v46 = 0;
    }

    v29 = v93;
    v48 = v89;
    v27 = v91;
LABEL_60:
    v23 = v41;
    goto LABEL_61;
  }

LABEL_151:
  if (a6 == 65534 && v20 != 65534)
  {
    LOWORD(v20) = -2;
    v100 = -2;
    v29 = 1;
  }

  v80 = *(a1 + 56);
  v81 = *(a1 + 376);
  if ((*(v80 + 32) & 4) != 0)
  {
    if (v27)
    {
      *(v81 + 4 * v11) = v101;
    }

    if (v29)
    {
      *(v81 + 4 * v11 + 2) = v20;
    }
  }

  else
  {
    v82 = (v81 + 8 * v11);
    if (v27)
    {
      *v82 = v101;
      v82[1] = v9;
    }

    if (v29)
    {
      v82[2] = v20;
      v82[3] = a6;
    }
  }

  if ((v97 & 0x8000) == 0)
  {
    *(v80 + 32) &= ~0x8000u;
  }

  v83 = *(a1 + 440);
  if (!*(a1 + 440) || (v84 = v9, v83 >= v9))
  {
    if (v9 >= v23 || v83 > v23)
    {
      goto LABEL_171;
    }

    v84 = 0;
  }

  *(a1 + 440) = v84;
LABEL_171:
  if (v10 && v9)
  {
    memcpy((*(a1 + 384) + v101), v10, v9);
  }

  if (v8 && v15)
  {
    memcpy((*(a1 + 392) - v100), v8, v15);
  }

  obj_dirty(a1, v7, 0);
  return 0;
}

uint64_t sub_100019640(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v9 = a2;
  v48 = a4;
  if (a6 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a6;
  }

  v42 = v11;
  if (a3)
  {
    v12 = a4;
    if (a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    if (a5)
    {
      goto LABEL_9;
    }

LABEL_13:
    v11 = 0;
    v14 = 0;
    v42 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v48 = 0;
  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v11)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v47 = -21846;
  v46 = -21846;
  v45 = -21846;
  v44 = -21846;
  v43 = -21846;
  if (!sub_100019BD4(a1, 1u, &v48, &v42, 0, 0, &v47))
  {
    return 28;
  }

  v43 = -1;
  v44 = -1;
  v45 = -1;
  v46 = -1;
  if (v13)
  {
    sub_100020D70(a1, 1, v12, &v46, &v45);
  }

  if (v14)
  {
    sub_100020D70(a1, 2, v11, &v44, &v43);
  }

  if (v45 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = (v12 + 7) & 0xFFF8;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v43 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = (v11 + 7) & 0xFFF8;
    }

    v15 += v17;
  }

  v18 = v47 + v15;
  v19 = *(a1 + 56);
  if (v18 <= *(v19 + 46))
  {
    if (v47)
    {
      memmove((*(a1 + 384) + v47), *(a1 + 384), *(v19 + 44));
      bzero(*(a1 + 384), v47);
      v20 = v47;
      *(a1 + 384) += v47;
      v21 = *(a1 + 56);
      *(v21 + 46) -= v20;
      *(v21 + 42) += v20;
    }
  }

  else
  {
    v16 = sub_100020F90(a1, 1, a7);
    if (v16)
    {
      return v16;
    }

    v43 = -1;
    v45 = -1;
    v47 = 0;
  }

  if (!v13)
  {
LABEL_38:
    if (!v14)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  if (v45 != 0xFFFF)
  {
    v16 = sub_100021374(a1, 1, v12, v46, v45);
    if (!v16)
    {
      goto LABEL_38;
    }

LABEL_47:
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 + 4040);
    }

    else
    {
      v26 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2193, v26, v16);
    return v16;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v22 = v12;
  }

  else
  {
    v22 = (v12 + 7) & 0xFFF8;
  }

  v23 = *(a1 + 56);
  v24 = *(v23 + 46);
  if (v24 < v22)
  {
    v16 = 28;
    goto LABEL_47;
  }

  v32 = *(v23 + 44);
  *(v23 + 44) = v32 + v22;
  *(v23 + 46) = v24 - v22;
  v45 = v32;
  if (!v14)
  {
    goto LABEL_62;
  }

LABEL_39:
  if (v43 != 0xFFFF)
  {
    v16 = sub_100021374(a1, 2, v11, v44, v43);
    if (!v16)
    {
      goto LABEL_62;
    }

LABEL_53:
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 + 4040);
    }

    else
    {
      v31 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2205, v31, v16);
    return v16;
  }

  v27 = (v11 + 7) & 0xFFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v27 = v11;
  }

  v28 = *(a1 + 56);
  v29 = *(v28 + 46);
  if (v29 < v27)
  {
    v16 = 28;
    goto LABEL_53;
  }

  v33 = v29 - v27;
  *(v28 + 46) = v33;
  v43 = *(a1 + 392) - (v33 + *(a1 + 384) + *(v28 + 44));
LABEL_62:
  if (!v11)
  {
    if (a6 == 65534)
    {
      v34 = -2;
    }

    else
    {
      v34 = -1;
    }

    v43 = v34;
  }

  v35 = *(a1 + 56);
  v36 = *(v35 + 36);
  if (v36 > v9)
  {
    sub_100021624(a1, v9, 1);
    v35 = *(a1 + 56);
    v36 = *(v35 + 36);
  }

  *(v35 + 36) = v36 + 1;
  v37 = v43;
  v38 = *(a1 + 376);
  if ((*(v35 + 32) & 4) != 0)
  {
    v40 = (v38 + 4 * v9);
    *v40 = v45;
    v40[1] = v37;
  }

  else
  {
    v39 = (v38 + 8 * v9);
    *v39 = v45;
    v39[1] = v12;
    v39[2] = v37;
    v39[3] = a6;
  }

  if (*(a1 + 440) && *(a1 + 440) < v12)
  {
    *(a1 + 440) = v12;
  }

  if (v13)
  {
    memcpy((*(a1 + 384) + v45), v13, v12);
  }

  if (v14)
  {
    memcpy((*(a1 + 392) - v43), v14, v11);
  }

  obj_dirty(a1, a7, 0);
  return 0;
}

uint64_t sub_100019AB8(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  result = sub_100018B08(a1, a2, a3, a4, a5);
  if (!result && !*a5)
  {
    if (*a4)
    {
      --*a4;
    }
  }

  return result;
}

uint64_t sub_100019AFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(*(a1 + 56) + 32);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) != 0)
    {
      v8 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v8 = *(*(a1 + 376) + 8 * a2 + 2);
    }

    return sub_10001C5E8(a1, a2, 0, v8, v5, 8, 0, a4, sub_100021694, 0);
  }

  v7 = *(a1 + 408);
  if (*a3 > v7)
  {
    v12 = *a3 - v7;
    v5 = &v12;
    goto LABEL_4;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = (v10 + 4040);
  }

  else
  {
    v11 = (*(*(*a1 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_child_id_update", 1961, v11, *a3, v7);
  return 22;
}

BOOL sub_100019BD4(uint64_t a1, unsigned int a2, __int16 *a3, __int16 *a4, __int16 a5, __int16 a6, _WORD *a7)
{
  v12 = *(a1 + 56);
  v13 = v12[16];
  v14 = v12[18];
  v15 = v12[21];
  if ((v13 & 4) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v39 = v16;
  if ((v13 & 4) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v18 = btree_node_toc_required_capacity(a1, 0);
  if ((v13 & 4) == 0 || (*(a1 + 400) & 4) != 0 || v14 + a2 <= v18)
  {
    v20 = v18;
    v21 = btree_node_toc_required_capacity(a1, a2);
    if (a7)
    {
      if ((v13 & 4) != 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      v23 = v21 << v22;
      v24 = v23 >= v15;
      v25 = v23 - v15;
      if (v25 == 0 || !v24)
      {
        LOWORD(v25) = 0;
      }

      *a7 = v25;
    }

    v26 = v15 >> v17;
    v27 = 0;
    if (a2)
    {
      v28 = a2;
      do
      {
        v30 = *a3++;
        v29 = v30;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v31 = *a4;
        }

        else
        {
          v29 = (v29 + 7) & 0xFFF8;
          v31 = (*a4 + 7) & 0xFFF8;
        }

        v27 += v29 + v31;
        ++a4;
        --v28;
      }

      while (v28);
    }

    v32 = a6 + a5 + v27;
    if ((v13 & 4) != 0)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    v34 = ((v21 - v20) << v33) & 0xFFFC;
    if (v21 <= v20)
    {
      v34 = 0;
    }

    v35 = v26 > v20;
    v36 = (v26 - v20) << v39;
    if (!v35)
    {
      LOWORD(v36) = 0;
    }

    return v34 + v32 <= (v12[23] + v36 + v12[25] + v12[27]);
  }

  else
  {
    result = 0;
    if (a7)
    {
      *a7 = -1;
    }
  }

  return result;
}

uint64_t sub_100019D60(uint64_t a1)
{
  v1 = (*(a1 + 400) >> 9) & 0x3FFF;
  if (!v1)
  {
    LOWORD(v1) = *(a1 + 440);
    if (!v1)
    {
      v2 = *(a1 + 56);
      v3 = *(v2 + 36);
      if (v3)
      {
        v4 = 0;
        LOWORD(v1) = 0;
        v5 = *(v2 + 32);
        do
        {
          if ((v5 & 4) == 0)
          {
            v6 = *(*(a1 + 376) + 8 * v4 + 2);
            v7 = v1;
            if (v6 > v1)
            {
              v7 = *(*(a1 + 376) + 8 * v4 + 2);
            }

            if (v6 != 0xFFFF)
            {
              LOWORD(v1) = v7;
            }
          }

          ++v4;
        }

        while (v3 != v4);
      }

      else
      {
        LOWORD(v1) = 0;
      }

      *(a1 + 440) = v1;
    }
  }

  return v1;
}

uint64_t sub_100019DDC(void *a1, void *a2, unsigned int a3, void *a4, unsigned int a5, unint64_t *a6, size_t a7, unsigned int a8, __int16 *a9, __int16 *a10, unsigned __int16 a11, unint64_t a12, uint64_t a13, uint64_t *a14)
{
  v269 = a8;
  v20 = a13;
  v276 = a1;
  __chkstk_darwin(a1);
  v22 = &v246[-v21];
  bzero(&v246[-v21], v23);
  memset(v283, 0, sizeof(v283));
  v281 = 0;
  v282 = 0;
  v280 = 0;
  memset(v279, 170, sizeof(v279));
  v278 = -21846;
  v277 = -21846;
  LODWORD(v272) = (*(a4[7] + 32) & 4) != 0 && (a4[50] & 4) == 0;
  *a14 = 0;
  LODWORD(v271) = a5;
  v250 = a14;
  v251 = v22;
  if (a2 && *(a2[7] + 36) - 1 > a3)
  {
    if (btree_node_child_val(a2, (a3 + 1), v22) || btree_node_get(v276, v22, a12, 3u, *(a2[7] + 34) - 1, a13, &v282) || !v282)
    {
      v282 = 0;
      v24 = 1;
    }

    else
    {
      if ((v276[50] & 0x10) != 0 && *(v282 + 112) != *v22)
      {
        sub_100019AFC(a2, (a3 + 1), (v282 + 112), a13);
      }

      v24 = 0;
    }

    a5 = v271;
  }

  else
  {
    v24 = 1;
  }

  v25 = v269;
  *(v283 + 8) = *(v276 + 25);
  *(&v283[1] + 1) = a4[52];
  LODWORD(v283[0]) = 2123139;
  v26 = a4[7];
  WORD2(v283[0]) = *(v26 + 32) & 0x1A;
  WORD3(v283[0]) = *(v26 + 34);
  if (v269)
  {
    v27 = 0;
    v30 = v269;
    do
    {
      v32 = *a9++;
      v31 = v32;
      if ((a4[50] & 0x40) != 0)
      {
        v33 = *a10;
      }

      else
      {
        v31 = (v31 + 7) & 0xFFF8;
        v33 = (*a10 + 7) & 0xFFF8;
      }

      v27 += v31 + v33;
      ++a10;
      --v30;
    }

    while (v30);
    v259 = v27;
  }

  else
  {
    v259 = 0;
  }

  v34 = *(v26 + 36);
  v255 = a3;
  v253 = a6;
  if (v34 > a5)
  {
    v35 = btree_node_key_ptr(a4, a5, &v279[3], &v278);
    if (v35)
    {
      return v35;
    }

    v36 = v276[1];
    if (!v36)
    {
      v36 = *(*v276 + 392);
    }

    v35 = (v276[52])(v36, a6, a7, *&v279[3], v278, v279);
    if (v35)
    {
      return v35;
    }

    if (v279[0])
    {
      v263 = 0;
      v270 = 0;
      v37 = 0;
      v260 = 0;
      v25 = v269;
    }

    else
    {
      v25 = v269;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        v105 = btree_node_val_len(a4, v271);
        if (v105 == 65534)
        {
          v106 = 0;
        }

        else
        {
          v106 = v105;
        }

        v277 = v106;
        if ((a4[50] & 0x40) != 0)
        {
          v107 = v278;
        }

        else
        {
          v107 = (v278 + 7) & 0xFFFFFFF8;
        }

        if ((a4[50] & 0x40) == 0)
        {
          v106 = (v106 + 7) & 0x1FFF8;
        }

        v263 = v107 + v106;
        v270 = 1;
        v37 = 1;
        v260 = 1;
      }

      else
      {
        v263 = 0;
        v270 = 0;
        v260 = 0;
        v37 = 1;
      }
    }
  }

  else
  {
    v263 = 0;
    v270 = 0;
    v37 = 0;
    v260 = 0;
  }

  v265 = a13;
  v268 = a4;
  v256 = a2;
  v252 = a7;
  if (v24)
  {
    v38 = obj_flags(a4);
    v39 = v276[1];
    if (!v39)
    {
      v39 = *(*v276 + 392);
    }

    v40 = obj_subtype(a4);
    v35 = sub_10001F2E0(v39, v38 & 0xFFFFFC00, v40, v283, a13, &v282);
    if (v35)
    {
      return v35;
    }

    v42 = v276;
    atomic_fetch_add_explicit((v276[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v42, a13, 0);
    v25 = v269;
    if ((v42[50] & 2) != 0 || v276[54] == a4[14])
    {
      v43 = a4[7];
      if (*(v43 + 36) == v271)
      {
        v44 = 0;
        v45 = v271;
        v46 = v271 + ((*(v43 + 32) >> 1) & 1) - 1;
        v270 = 1;
        v273 = 1;
        goto LABEL_142;
      }
    }
  }

  v47 = a4[7];
  v48 = *(v47 + 32);
  v258 = btree_node_toc_required_capacity(a4, 0);
  if ((v48 & 4) != 0)
  {
    v49 = 2;
  }

  else
  {
    v49 = 3;
  }

  v46 = *(v47 + 36);
  if (((v46 - 1) & 0x8000) != 0)
  {
    v275 = v25;
LABEL_121:
    v273 = v24;
    v44 = 0;
LABEL_141:
    v270 = v275 == 0;
    a2 = v256;
    a7 = v252;
    v45 = v271;
    goto LABEL_142;
  }

  v50 = v259 + a11;
  v249 = v37 + v271;
  v51 = (v46 - 1);
  v52 = v25;
  v53 = v282;
  LODWORD(v267) = sub_100020CF0(v282);
  v54 = btree_node_toc_required_capacity(v53, 0);
  *(&v271 + 1) = v49;
  v264 = v54 << v49;
  v257 = sub_100020CF0(a4);
  LOWORD(v49) = 0;
  LODWORD(v266) = 0;
  DWORD1(v271) = 0;
  v254 = v260 ^ 1;
  v248 = v50;
  v275 = v52;
  v247 = v50;
  LODWORD(v274) = v50;
  v55 = v270;
  while (1)
  {
    v56 = v20;
    v261 = v46;
    v57 = v275;
    v58 = v275 - v55;
    v59 = btree_node_toc_required_capacity(a4, (v275 - v55));
    v60 = v257 + v263 + ((v258 - v59) << SBYTE8(v271));
    v61 = v274;
    v262 = (v257 + v263 + ((v258 - v59) << SBYTE8(v271)) - v274);
    v273 = v24;
    v270 = v55;
    if (((v60 >= v274) & v272) == 1)
    {
      v62 = *(a4[7] + 36) - v55 + v57;
      if (v62 >= btree_node_toc_required_capacity(a4, 0))
      {
        goto LABEL_48;
      }
    }

    else if (v60 < v274)
    {
LABEL_48:
      v63 = v266;
      goto LABEL_57;
    }

    if ((v24 & 1) == 0)
    {
      v20 = v56;
LABEL_140:
      v44 = 0;
      LOWORD(v46) = v51 + 1;
      goto LABEL_141;
    }

    v20 = v56;
    v63 = v266;
    if ((v276[50] & 2) != 0 || v276[54] == a4[14])
    {
      if ((*(a4[7] + 32) & 2) != 0)
      {
        goto LABEL_140;
      }

      if (!v51)
      {
        goto LABEL_140;
      }

      if ((v266 + *(v53[7] + 36)) > 1u)
      {
        goto LABEL_140;
      }

      v64 = btree_node_toc_required_capacity(v53, v266);
      v65 = v267 + v264 + v49 - (v64 << SBYTE8(v271));
      if (v262 >= (v65 + ((v65 >> 29) & 3)) >> 2)
      {
        goto LABEL_140;
      }
    }

    else if (v272)
    {
      if (!v51 || (v58 + *(a4[7] + 36)) <= (v266 + *(v53[7] + 36)))
      {
        goto LABEL_140;
      }
    }

    else
    {
      v104 = btree_node_toc_required_capacity(v53, v266);
      if (!v51 || v262 >= (v267 + v264 + v49 - (v104 << SBYTE8(v271))))
      {
        goto LABEL_140;
      }
    }

LABEL_57:
    v66 = a4[7];
    v67 = *(v66 + 32);
    if ((v67 & 2) == 0 || v254 + v51 != v271)
    {
      v266 = a4[7];
      v81 = v275;
      goto LABEL_83;
    }

    v68 = v269;
    v69 = v63 + v269;
    v70 = btree_node_toc_required_capacity(v53, (v63 + v269));
    v71 = (v70 << SBYTE8(v271)) - v264;
    v72 = v259 + WORD2(v271) + ((v70 << SBYTE8(v271)) - v264);
    if (((v72 <= v267) & v272) == 1)
    {
      v73 = v68 + v63 + *(v53[7] + 36);
      v74 = v73 >= btree_node_toc_required_capacity(v53, 0);
      a4 = v268;
      if (v74)
      {
        goto LABEL_62;
      }
    }

    else if (v72 > v267)
    {
LABEL_62:
      if ((v273 & 1) == 0)
      {
        v75 = obj_flags(a4);
        obj_unlock(v53, 2);
        obj_release(v53);
        v282 = 0;
        v76 = v276[1];
        if (!v76)
        {
          v76 = *(*v276 + 392);
        }

        v77 = obj_subtype(a4);
        v78 = v76;
        v20 = v265;
        v35 = sub_10001F2E0(v78, v75 & 0xFFFFFC00, v77, v283, v265, &v282);
        v55 = v270;
        v79 = BYTE8(v271);
        if (v35)
        {
          return v35;
        }

        v80 = v276;
        v24 = 1;
        atomic_fetch_add_explicit((v276[49] + 32), 1uLL, memory_order_relaxed);
        obj_dirty(v80, v20, 0);
        v53 = v282;
        v264 = btree_node_toc_required_capacity(v282, 0) << v79;
        LODWORD(v267) = sub_100020CF0(v53);
        goto LABEL_109;
      }

      if (v260)
      {
        v51 = v261 - 2;
      }

      if (v262 < 0)
      {
        v46 = v51 + 1;
        v209 = v275 == 0;
        v44 = 2843;
        a2 = v256;
        a7 = v252;
        v45 = v271;
        goto LABEL_280;
      }

LABEL_124:
      v273 = 1;
      goto LABEL_139;
    }

    v266 = v66;
    v81 = v275 - v269;
    if ((v273 & 1) == 0)
    {
      v275 -= v269;
      v273 = 0;
      if (v260)
      {
        LOWORD(v51) = v261 - 2;
      }

LABEL_139:
      v20 = v265;
      goto LABEL_140;
    }

    if ((v276[50] & 2) != 0 || v276[54] == a4[14])
    {
LABEL_122:
      v275 -= v269;
      if (v260)
      {
        LOWORD(v51) = v261 - 2;
      }

      goto LABEL_124;
    }

    LODWORD(v274) = v274 - v247;
    DWORD1(v271) += v247;
    if (v272)
    {
      if (!v51 || (v81 - v270 + *(v266 + 36)) <= (v69 + *(v53[7] + 36)))
      {
        goto LABEL_122;
      }
    }

    else if (!v51 || v262 >= (v267 - WORD2(v271) - v71))
    {
      goto LABEL_122;
    }

    v63 = (v63 + v68);
    v61 = v274;
LABEL_83:
    LODWORD(v274) = v61;
    if ((v67 & 4) != 0)
    {
      v84 = a4[50];
      v82 = a4;
      v83 = (v84 >> 9) & 0x3FFF;
    }

    else
    {
      v82 = a4;
      v83 = *(a4[47] + 8 * v51 + 2);
      v84 = v82[50];
    }

    v278 = v83;
    v85 = btree_node_val_len(v82, v51);
    if (v85 == 65534)
    {
      v86 = 0;
    }

    else
    {
      v86 = v85;
    }

    v277 = v86;
    v87 = (v83 + 7) & 0x1FFF8;
    if ((v84 & 0x40) != 0)
    {
      v87 = v83;
    }

    else
    {
      v86 = (v86 + 7) & 0x1FFF8;
    }

    v88 = v260;
    if (v51 != v271)
    {
      v88 = 0;
    }

    if ((v88 & 1) == 0)
    {
      break;
    }

    LODWORD(v266) = v63;
    v275 = v81;
    v51 = v271;
    v20 = v265;
    a4 = v268;
    v24 = v273;
    v55 = v270;
LABEL_115:
    v46 = v51;
    LODWORD(v49) = -DWORD1(v271);
    v103 = v51 - 1;
    v51 = (v51 - 1);
    if (v103 < 0)
    {
      goto LABEL_121;
    }
  }

  v89 = v87 + v86;
  if (v81 != 0 && v249 > v51)
  {
    v90 = v269;
  }

  else
  {
    v90 = 0;
  }

  if (v81 != 0 && v249 > v51)
  {
    v91 = v248;
  }

  else
  {
    v91 = 0;
  }

  v92 = (v63 + v90 + 1);
  v93 = btree_node_toc_required_capacity(v53, v92);
  v94 = v91 + WORD2(v271) + v89 + ((v93 << SBYTE8(v271)) - v264);
  if (((v94 <= v267) & v272) == 1)
  {
    v95 = v90 + v63 + *(v53[7] + 36) + 1;
    if (v95 < btree_node_toc_required_capacity(v53, 0))
    {
      goto LABEL_111;
    }
  }

  else if (v94 <= v267)
  {
LABEL_111:
    DWORD1(v271) += v91 + v89;
    v275 = v81 - v90;
    if (v90)
    {
      v102 = v91;
    }

    else
    {
      v102 = 0;
    }

    LODWORD(v274) = v274 - v102;
    v55 = v270 + 1;
    v263 += v89;
    LODWORD(v266) = v92;
    v20 = v265;
    a4 = v268;
    v24 = v273;
    goto LABEL_115;
  }

  v275 = v81;
  if ((v273 & 1) == 0)
  {
    LODWORD(v266) = v63;
    a4 = v268;
    v96 = obj_flags(v268);
    obj_unlock(v53, 2);
    obj_release(v53);
    v282 = 0;
    v97 = v276[1];
    v98 = BYTE8(v271);
    if (!v97)
    {
      v97 = *(*v276 + 392);
    }

    v99 = obj_subtype(a4);
    v100 = v97;
    v20 = v265;
    v35 = sub_10001F2E0(v100, v96 & 0xFFFFFC00, v99, v283, v265, &v282);
    v55 = v270;
    if (v35)
    {
      return v35;
    }

    v101 = v276;
    atomic_fetch_add_explicit((v276[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v101, v20, 0);
    v53 = v282;
    v264 = btree_node_toc_required_capacity(v282, 0) << v98;
    LODWORD(v267) = sub_100020CF0(v53);
    v24 = 1;
LABEL_109:
    v51 = v261;
    goto LABEL_115;
  }

  a4 = v268;
  if ((v262 & 0x80000000) == 0)
  {
    v24 = 1;
    v20 = v265;
    LOWORD(v46) = v261;
    goto LABEL_121;
  }

  v209 = v81 == 0;
  v46 = v261;
  v44 = 2917;
  if (v261 > 1)
  {
    a2 = v256;
    a7 = v252;
    v45 = v271;
    v66 = v266;
LABEL_280:
    v270 = v209;
    if (*(v66 + 36) == v46 && v53)
    {
      v273 = 0;
      v280 = v53;
      v282 = 0;
      goto LABEL_312;
    }

    v261 = v46;
    v217 = obj_flags(a4);
    v218 = v276[1];
    v20 = v265;
    if (!v218)
    {
      v218 = *(*v276 + 392);
    }

    v219 = obj_subtype(a4);
    v220 = sub_10001F2E0(v218, v217 & 0xFFFFFC00, v219, v283, v20, &v280);
    if (!v220)
    {
      v245 = v276;
      atomic_fetch_add_explicit((v276[49] + 32), 1uLL, memory_order_relaxed);
      obj_dirty(v245, v20, 0);
      v273 = 1;
      v45 = v271;
      a2 = v256;
      a7 = v252;
      LOWORD(v46) = v261;
      goto LABEL_142;
    }

    v41 = v220;
    v274 = 0;
    v272 = 0;
    *(&v271 + 4) = 0;
    LODWORD(v114) = 0;
    LOWORD(v115) = 0;
    v116 = 0;
    v275 = 0;
    v117 = 0;
    LODWORD(v271) = 0;
    v118 = 0;
    v159 = 1;
    goto LABEL_296;
  }

  a2 = v256;
  a7 = v252;
  v45 = v271;
  v66 = v266;
  if ((v67 & 2) != 0)
  {
    goto LABEL_280;
  }

  v270 = v209;
  v44 = 0;
  v273 = 1;
LABEL_312:
  v20 = v265;
LABEL_142:
  if (!a2 && (v44 != 0) | v273 & 1)
  {
    v108 = v44;
    v109 = v46;
    v110 = obj_flags(a4);
    v111 = v276[1];
    if (!v111)
    {
      v111 = *(*v276 + 392);
    }

    v112 = obj_subtype(a4);
    v113 = sub_10001F2E0(v111, v110 & 0xFFFFFC00, v112, v283, v20, &v281);
    if (v113)
    {
      v41 = v113;
      v274 = 0;
      v272 = 0;
      *(&v271 + 4) = 0;
      LODWORD(v114) = 0;
      LOWORD(v115) = 0;
      v116 = 0;
      v275 = 0;
      v117 = 0;
      LODWORD(v271) = 0;
      v118 = 0;
      v256 = 0;
      goto LABEL_195;
    }

    v119 = v276;
    atomic_fetch_add_explicit((v276[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v119, v20, 0);
    LOWORD(v46) = v109;
    v44 = v108;
  }

  v120 = v46;
  if (v45 >= v46)
  {
    v121 = v260;
  }

  else
  {
    v121 = 0;
  }

  v122 = a4[7];
  v275 = v121;
  if (v121 != 1)
  {
    v274 = 0;
    v130 = 0;
    v124 = 0;
    DWORD1(v271) = 0;
    goto LABEL_158;
  }

  v123 = *(v122 + 36);
  v124 = v123 + ~v45;
  v125 = (v123 + ~v45);
  if (v125 < 1)
  {
    goto LABEL_175;
  }

  v126 = v282;
  v127 = sub_1000216B4(a4, v282, v125, v20);
  if (!v127)
  {
    if ((v273 & 1) == 0)
    {
      v208 = btree_node_key_ptr(v126, 0, &v279[3], &v278);
      if (v208)
      {
        v41 = v208;
        DWORD2(v271) = v124;
        v137 = v255;
      }

      else
      {
        v137 = v255;
        v214 = sub_100018CDC(a2, (v255 + 1), *&v279[3], v278, 0, 0, v20);
        if (!v214)
        {
          DWORD1(v271) = 1;
          goto LABEL_176;
        }

        v41 = v214;
        DWORD2(v271) = v124;
      }

      v215 = v276[1];
      if (v215)
      {
        v216 = (v215 + 4040);
      }

      else
      {
        v216 = (*(*(*v276 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3031, v216, v41);
      v159 = 0;
      v274 = 0;
      v272 = 0;
      LODWORD(v114) = 0;
      LOWORD(v115) = 0;
      v116 = 0;
      *&v271 = 0;
      v275 = 0;
      v117 = 0;
      goto LABEL_305;
    }

LABEL_175:
    DWORD1(v271) = 0;
    v137 = v255;
LABEL_176:
    v149 = btree_node_val_ptr(a4, v45, &v279[1], &v277);
    if (v149)
    {
      v41 = v149;
      DWORD2(v271) = v124;
      v274 = 0;
      v272 = 0;
      LODWORD(v114) = 0;
      LOWORD(v115) = 0;
      v116 = 0;
      v275 = 0;
      v117 = 0;
      LODWORD(v271) = 0;
      v118 = 0;
      goto LABEL_196;
    }

    v274 = 0;
    if (v277)
    {
      v130 = v277;
      if (v277 != 65534)
      {
        v158 = _apfs_malloc_typed(v277, 0xC5E0E89uLL);
        if (!v158)
        {
          DWORD2(v271) = v124;
          v274 = 0;
          v272 = 0;
          LODWORD(v114) = 0;
          LOWORD(v115) = 0;
          v116 = 0;
          v275 = 0;
          v117 = 0;
          LODWORD(v271) = 0;
          v118 = 0;
          v41 = 12;
          goto LABEL_196;
        }

        v274 = v158;
        memcpy(v158, *&v279[1], v277);
        v130 = v277;
      }
    }

    else
    {
      v130 = 0;
    }

    sub_10001D83C(a4, v271, v20);
    v210 = v276;
    atomic_fetch_add_explicit((v276[49] + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_dirty(v210, v20, 0);
    v122 = a4[7];
LABEL_158:
    v272 = v130;
    v131 = *(v122 + 36) - v120;
    v114 = v131;
    DWORD2(v271) = v124;
    if (v114 < 1)
    {
      v269 = 0;
    }

    else
    {
      v132 = v282;
      v133 = sub_1000216B4(v268, v282, v131, v20);
      if (v133)
      {
        v41 = v133;
        v134 = v276[1];
        if (v134)
        {
          v135 = (v134 + 4040);
        }

        else
        {
          v135 = (*(*(*v276 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3068, v135, v114, v133);
        LODWORD(v114) = 0;
        LOWORD(v115) = 0;
        v116 = 0;
        goto LABEL_194;
      }

      v144 = v253;
      v145 = v273;
      if ((v273 & 1) == 0)
      {
        v202 = btree_node_key_ptr(v132, 0, &v279[3], &v278);
        if (v202 || (v202 = sub_100018CDC(a2, (v255 + 1), *&v279[3], v278, 0, 0, v20), v145 = v273, v202))
        {
          v41 = v202;
          v203 = v276[1];
          if (v203)
          {
            v204 = (v203 + 4040);
          }

          else
          {
            v204 = (*(*(*v276 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3076, v204, v202);
          v159 = 0;
          LOWORD(v115) = 0;
          v116 = 0;
          v117 = 0;
          LODWORD(v271) = 0;
          v118 = 0;
LABEL_296:
          v137 = v255;
          goto LABEL_197;
        }
      }

      v269 = v145 ^ 1;
      if (a2 && !*(v268[7] + 36))
      {
        v137 = v255;
        v146 = sub_100018CDC(a2, v255, v144, a7, 0, 0, v20);
        if (v146)
        {
          v41 = v146;
          v147 = v276[1];
          if (v147)
          {
            v148 = (v147 + 4040);
          }

          else
          {
            v148 = (*(*(*v276 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3087, v148, v146);
          LOWORD(v115) = 0;
          v116 = 0;
          LODWORD(v271) = 0;
          v118 = 0;
          goto LABEL_370;
        }

        v136 = 1;
LABEL_164:
        v138 = v281;
        LODWORD(v271) = v136;
        if (v281)
        {
          v267 = v114;
          v139 = v268;
          v140 = v268[7];
          v115 = *(v140 + 36);
          v141 = sub_1000216B4(v281, v268, -*(v140 + 36), v20);
          if (v141)
          {
            v41 = v141;
            v142 = v276[1];
            if (v142)
            {
              v143 = (v142 + 4040);
            }

            else
            {
              v143 = (*(*(*v276 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3103, v143, -v115, v141);
            LOWORD(v115) = 0;
            v116 = 0;
            v118 = 0;
            v159 = v273;
            LODWORD(v114) = v267;
            goto LABEL_371;
          }

          sub_100021C1C(v139, (*(v139[7] + 34) + 1), v20);
          if (*(*(v138 + 56) + 36))
          {
            v205 = btree_node_key_ptr(v138, 0, &v279[3], &v278);
            if (v205)
            {
LABEL_291:
              v41 = v205;
              v212 = v276[1];
              v159 = v273;
              LODWORD(v114) = v267;
              v117 = v269;
              if (v212)
              {
                v213 = (v212 + 4040);
              }

              else
              {
                v213 = (*(*(*v276 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3126, v213, v205);
              v116 = 0;
LABEL_305:
              v118 = 0;
              goto LABEL_197;
            }

            v206 = *&v279[3];
            v207 = v278;
          }

          else
          {
            v206 = v253;
            *&v279[3] = v253;
            v207 = v252;
            v278 = v252;
          }

          v211 = v251;
          *v251 = *(v138 + 112);
          v114 = v268;
          v205 = sub_10001BEC4(v268, v206, v207, v211, (*(v268 + 407) & 0x7Fu) + 8, v20, 0, 0);
          if (v205)
          {
            goto LABEL_291;
          }

          v256 = v114;
          LODWORD(v114) = v267;
        }

        else
        {
          LOWORD(v115) = 0;
        }

        if (v273)
        {
          v150 = v114;
          v151 = v137;
          v152 = v282;
          if (v282)
          {
            v153 = *(v282 + 56);
            if (*(v153 + 36))
            {
              v154 = btree_node_key_ptr(v282, 0, &v279[3], &v278);
              if (v154 || (v155 = v251, *v251 = v152[14], v154 = sub_10001BEC4(v256, *&v279[3], v278, v155, (*(v256 + 407) & 0x7Fu) + 8, v20, 0, 0), v154))
              {
                v41 = v154;
                v137 = v151;
                v156 = v276[1];
                LODWORD(v114) = v150;
                v117 = v269;
                if (v156)
                {
                  v157 = (v156 + 4040);
                }

                else
                {
                  v157 = (*(*(*v276 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3142, v157, v154);
                v116 = 0;
                v118 = 0;
                v159 = 1;
                goto LABEL_197;
              }

              v118 = 1;
            }

            else
            {
              if ((*(v153 + 32) & 2) != 0)
              {
                v280 = v282;
                v44 = 1;
              }

              else
              {
                atomic_fetch_add_explicit((v276[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
                obj_delete_and_free(v152, v20);
                obj_unlock(v152, 2);
                obj_release(v152);
              }

              v118 = 0;
              v282 = 0;
            }
          }

          else
          {
            v118 = 0;
          }

          v137 = v151;
          LODWORD(v114) = v150;
        }

        else
        {
          v118 = 0;
        }

        if (v44)
        {
          v221 = v137;
          if (v138)
          {
            v222 = v138;
          }

          else
          {
            v222 = v268;
          }

          if ((*(v222[7] + 32) & 2) != 0)
          {
            v116 = 0;
            *&v279[3] = v253;
            v234 = v252;
            v278 = v252;
            v235 = v253;
            v223 = v280;
          }

          else
          {
            v223 = v280;
            v224 = sub_1000216B4(v222, v280, 1, v20);
            if (v224)
            {
              v41 = v224;
              v225 = v276[1];
              if (v225)
              {
                v226 = (v225 + 4040);
              }

              else
              {
                v226 = (*(*(*v276 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3169, v226, 1, v224);
LABEL_368:
              v116 = 0;
LABEL_369:
              v137 = v221;
LABEL_370:
              v159 = v273;
LABEL_371:
              v117 = v269;
              goto LABEL_197;
            }

            v240 = btree_node_key_ptr(v223, 0, &v279[3], &v278);
            if (v240)
            {
              v41 = v240;
              v241 = v276[1];
              if (v241)
              {
                v242 = (v241 + 4040);
              }

              else
              {
                v242 = (*(*(*v276 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s failed to get newnode minkey: %d\n", "bt_shift_or_split", 3174, v242, v240);
              goto LABEL_368;
            }

            v235 = *&v279[3];
            v116 = 1;
            v234 = v278;
          }

          v236 = v251;
          *v251 = *(v223 + 112);
          v237 = sub_10001BEC4(v256, v235, v234, v236, (*(v256 + 407) & 0x7Fu) + 8, v265, 0, 0);
          if (v237)
          {
            v41 = v237;
            v238 = v276[1];
            if (v238)
            {
              v239 = (v238 + 4040);
            }

            else
            {
              v239 = (*(*(*v276 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3186, v239, v237);
            goto LABEL_369;
          }

          v227 = v282;
          v282 = v223;
          v228 = v276;
          v229 = v268;
          v230 = v256;
          v233 = v250;
          v232 = v272;
        }

        else
        {
          if (v270)
          {
            v227 = 0;
            v228 = v276;
            v229 = v268;
            v230 = v256;
            v232 = v272;
            v231 = v273;
            v233 = v250;
          }

          else
          {
            v227 = v282;
            v228 = v276;
            v229 = v268;
            v230 = v256;
            v232 = v272;
            v231 = v273;
            v233 = v250;
            if (v138)
            {
              v282 = v138;
            }

            else
            {
              v282 = 0;
            }
          }

          if ((v231 & 1) == 0)
          {
            goto LABEL_351;
          }
        }

        sub_100021CE0(v228, v230, v229);
LABEL_351:
        if (v274)
        {
          _apfs_free(v274, v232);
        }

        if (v227)
        {
          obj_unlock(v227, 2);
          obj_release(v227);
        }

        v243 = v281;
        v244 = v282;
        if (v281 && v282 != v281)
        {
          obj_unlock(v281, 2);
          obj_release(v243);
        }

        v41 = 0;
        *v233 = v244;
        return v41;
      }
    }

    v136 = 0;
    v137 = v255;
    goto LABEL_164;
  }

  v41 = v127;
  v128 = v276[1];
  if (v128)
  {
    v129 = (v128 + 4040);
  }

  else
  {
    v129 = (*(*(*v276 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3023, v129, 0, v127);
  v274 = 0;
  v272 = 0;
  *(&v271 + 4) = 0;
  LODWORD(v114) = 0;
  LOWORD(v115) = 0;
  v116 = 0;
  v275 = 0;
LABEL_194:
  v117 = 0;
  LODWORD(v271) = 0;
  v118 = 0;
LABEL_195:
  v137 = v255;
LABEL_196:
  v159 = v273;
LABEL_197:
  v160 = v276[1];
  if (v160)
  {
    v161 = (v160 + 4040);
  }

  else
  {
    v161 = (*(*(*v276 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s reverting on error: %d\n", "bt_shift_or_split", 3222, v161, v41);
  if (v118)
  {
    sub_10001D83C(v256, (v137 + 1), v265);
  }

  v162 = v274;
  if (v116)
  {
    v163 = sub_1000216B4(v268, v280, -1, v265);
    v41 = v163;
    if (v163)
    {
      v164 = v276[1];
      if (v164)
      {
        v165 = (v164 + 4040);
      }

      else
      {
        v165 = (*(*(*v276 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3229, v165, -1, v163);
    }
  }

  v166 = v115;
  v167 = v265;
  v168 = v256;
  if (v166 >= 1)
  {
    v169 = v117;
    v170 = v114;
    v171 = v268;
    sub_100021C1C(v268, (*(v268[7] + 34) - 1), v265);
    v172 = sub_1000216B4(v281, v171, v166, v167);
    if (v172)
    {
      v173 = v276[1];
      if (v173)
      {
        v174 = (v173 + 4040);
      }

      else
      {
        v174 = (*(*(*v276 + 392) + 384) + 212);
      }

      LODWORD(v114) = v170;
      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3239, v174, v172, v41);
      v168 = 0;
    }

    else
    {
      v168 = 0;
      LODWORD(v114) = v170;
    }

    v117 = v169;
  }

  if (v114 >= 1)
  {
    v175 = v282;
    v176 = sub_1000216B4(v268, v282, -v114, v167);
    if (v176)
    {
      v177 = v276[1];
      if (v177)
      {
        v178 = (v177 + 4040);
      }

      else
      {
        v178 = (*(*(*v276 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3246, v178, v176, v41);
    }

    if (!(v159 & 1 | ((v117 & 1) == 0)))
    {
      v179 = btree_node_key_ptr(v175, 0, &v279[3], &v278);
      if (v179 || (v179 = sub_100018CDC(v168, (v255 + 1), *&v279[3], v278, 0, 0, v167)) != 0)
      {
        v180 = v276[1];
        if (v180)
        {
          v181 = (v180 + 4040);
        }

        else
        {
          v181 = (*(*(*v276 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3254, v181, v179, v41);
      }
    }

    if (v271)
    {
      v182 = btree_node_key_ptr(v268, 0, &v279[3], &v278);
      if (v182 || (v182 = sub_100018CDC(v168, v255, *&v279[3], v278, 0, 0, v167)) != 0)
      {
        v183 = v276[1];
        if (v183)
        {
          v184 = (v183 + 4040);
        }

        else
        {
          v184 = (*(*(*v276 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3263, v184, v182, v41);
      }
    }
  }

  v185 = v268;
  v186 = v272;
  if (v275)
  {
    v187 = sub_10001BEC4(v268, v253, v252, v162, v272, v167, 0, 0);
    if (v187)
    {
      v188 = v276[1];
      if (v188)
      {
        v189 = (v188 + 4040);
      }

      else
      {
        v189 = (*(*(*v276 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_insert() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3270, v189, v187, v41);
    }

    if (v162)
    {
      _apfs_free(v162, v186);
    }
  }

  v190 = v276;
  if (SWORD4(v271) >= 1)
  {
    v191 = v282;
    v192 = sub_1000216B4(v185, v282, -WORD4(v271), v167);
    if (v192)
    {
      v193 = v190[1];
      if (v193)
      {
        v194 = (v193 + 4040);
      }

      else
      {
        v194 = (*(*(*v190 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3279, v194, v192, v41);
    }

    if (!(v159 & 1 | ((BYTE4(v271) & 1) == 0)))
    {
      v195 = btree_node_key_ptr(v191, 0, &v279[3], &v278);
      if (v195 || (v195 = sub_100018CDC(v168, (v255 + 1), *&v279[3], v278, 0, 0, v167)) != 0)
      {
        v196 = v190[1];
        if (v196)
        {
          v197 = (v196 + 4040);
        }

        else
        {
          v197 = (*(*(*v190 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3287, v197, v195, v41);
      }
    }
  }

  v198 = v282;
  if (v282)
  {
    if (!*(*(v282 + 56) + 36))
    {
      atomic_fetch_add_explicit((v190[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_delete_and_free(v198, v167);
    }

    obj_unlock(v198, 2);
    obj_release(v198);
  }

  v199 = v280;
  if (v280)
  {
    atomic_fetch_add_explicit((v190[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v199, v167);
    obj_unlock(v199, 2);
    obj_release(v199);
  }

  v200 = v281;
  if (v281)
  {
    atomic_fetch_add_explicit((v190[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v200, v167);
    obj_unlock(v200, 2);
    obj_release(v200);
  }

  return v41;
}

uint64_t sub_10001BEC4(void *a1, unint64_t *a2, size_t a3, unint64_t *a4, unsigned int a5, uint64_t a6, unsigned __int16 *a7, char *a8)
{
  __chkstk_darwin(a1);
  v17 = &v23[-v16];
  bzero(&v23[-v16], v18);
  v25 = -21846;
  v24 = -86;
  result = sub_100018B08(a1, a2, a3, &v25, &v24);
  if (!result)
  {
    if (a8)
    {
      *a8 = v24;
    }

    if (a7)
    {
      *a7 = v25;
    }

    if ((*(a1[7] + 32) & 0xA) != 8)
    {
      goto LABEL_9;
    }

    v20 = a1[51];
    if (*a4 > v20)
    {
      *v17 = *a4 - v20;
      a4 = v17;
LABEL_9:
      if (v24 == 1)
      {
        return sub_100018CDC(a1, v25, a2, a3, a4, a5, a6);
      }

      else
      {
        return sub_100019640(a1, v25, a2, a3, a4, a5, a6);
      }
    }

    v21 = a1[1];
    if (v21)
    {
      v22 = (v21 + 4040);
    }

    else
    {
      v22 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_insert", 2273, v22, *a4, v20);
    return 22;
  }

  return result;
}

uint64_t bt_update_with_hint(atomic_ullong *a1, unint64_t a2, unint64_t *a3, uint64_t a4, void *a5, unsigned int a6, unint64_t a7, uint64_t *a8)
{
  v44 = a3;
  v15 = a1[50];
  __chkstk_darwin(a1);
  v17 = (&v41 - v16);
  bzero(&v41 - v16, v18);
  v50 = 0;
  v49 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v19 = btree_entry_size_check(a1, a4, a6);
  if (v19)
  {
    return v19;
  }

  v19 = obj_modify(a1, (v15 >> 3) & 2, a7);
  if (v19)
  {
    return v19;
  }

  v22 = a1[49];
  v23 = *(v22 + 16) < a4 || *(v22 + 20) < a6;
  v43 = v23;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v48 = -86;
  v41 = a5;
  v42 = a8;
  if (a8)
  {
    v24 = *a8;
    if (*a8)
    {
      if (a8[1] == a1 && ((v43 | ((a1[50] & 0x10) >> 4)) & 1) == 0)
      {
        *v17 = v24;
        if (v24 != obj_oid(a1) && !btree_node_get(a1, v17, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, a7, &v51))
        {
          v25 = v51;
          if (*(v51[7] + 32) & 2) != 0 && !sub_100019AB8(v51, v44, a4, &v49, &v48) && (v48)
          {
            if ((*(v25[7] + 32) & 2) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_45;
          }

          obj_unlock(v25, 2);
          obj_release(v25);
        }
      }
    }
  }

  v20 = 2;
  obj_lock(a1, 2);
  obj_retain(a1);
  v27 = a1 + 7;
  v26 = a1[7];
  if ((*(v26 + 32) & 2) == 0)
  {
    v28 = 0;
    v29 = 2;
    v25 = a1;
    while (1)
    {
      if (!*(v26 + 36))
      {
        v20 = v29;
        goto LABEL_40;
      }

      v30 = sub_100018B08(v25, v44, a4, &v49, &v48);
      if (v30)
      {
        goto LABEL_57;
      }

      v31 = v49;
      if ((v48 & 1) == 0 && v49)
      {
        v31 = --v49;
      }

      v30 = btree_node_child_val(v25, v31, v17);
      if (v30 || (v30 = btree_node_get(a1, v17, a2, 3u, *(*v27 + 34) - 1, a7, &v50), v30))
      {
LABEL_57:
        v20 = v30;
        v51 = v25;
        goto LABEL_62;
      }

      if ((a1[50] & 0x10) != 0 && v50[14] != *v17)
      {
        sub_100019AFC(v25, v31, v50 + 14, a7);
      }

      if (v25 != a1 || !v43)
      {
        obj_unlock(v25, 2);
        obj_release(v25);
      }

      v25 = v50;
      if (!v50)
      {
        break;
      }

      v29 = 0;
      v20 = 0;
      v27 = v50 + 7;
      v26 = v50[7];
      v28 = 1;
      if ((*(v26 + 32) & 2) != 0)
      {
        goto LABEL_40;
      }
    }

    v51 = 0;
    goto LABEL_60;
  }

  v28 = 0;
  v25 = a1;
LABEL_40:
  v51 = v25;
  if ((*(v25[7] + 32) & 2) == 0)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v20 = sub_100019AB8(v25, v44, a4, &v49, &v48);
  if (!v20)
  {
    if (v48 != 1)
    {
LABEL_60:
      v20 = 2;
      goto LABEL_61;
    }

LABEL_45:
    v47 = 0xAAAAAAAAAAAAAAAALL;
    v46 = 0;
    v45 = -21846;
    v32 = v49;
    v33 = btree_node_key_ptr(v25, v49, &v47, &v45);
    v35 = v41;
    v34 = v42;
    if (!v33)
    {
      v36 = v47;
      v37 = a1[1];
      if (!v37)
      {
        v37 = *(*a1 + 392);
      }

      if (!(a1[52])(v37, v47, v45, v44, a4, &v46) && v46)
      {
        panic("you can't change a key here!  (ekey %p eklen %d; key %p klen %d; n %p bt %p)\n", v36, v45, v44, a4, v25, a1);
      }
    }

    v20 = sub_100018CDC(v25, v32, v44, a4, v35, a6, a7);
    if (v20)
    {
      goto LABEL_61;
    }

    v38 = a1[49];
    v39 = *(v38 + 16);
    if (v39 < a4)
    {
      *(v38 + 16) = a4;
    }

    if (*(v38 + 20) >= a6)
    {
      if (v39 >= a4 && (a1[50] & 0x80) == 0)
      {
LABEL_69:
        if (v34)
        {
          *v34 = obj_oid(v25);
          v34[1] = a1;
        }

        goto LABEL_61;
      }
    }

    else
    {
      *(v38 + 20) = a6;
    }

    obj_dirty(a1, a7, 0);
    goto LABEL_69;
  }

LABEL_61:
  v25 = v51;
  if (v51)
  {
LABEL_62:
    obj_unlock(v25, 2);
    obj_release(v25);
  }

  v40 = !v43;
  if (v25 == a1)
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    obj_unlock(a1, 2);
    obj_release(a1);
  }

  return v20;
}

uint64_t sub_10001C5E8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v10 = *(a1 + 56);
  if (*(v10 + 36) <= a2)
  {
    return 22;
  }

  v17 = *(v10 + 32);
  v18 = *(a1 + 376);
  if ((v17 & 4) != 0)
  {
    v19 = (v18 + 4 * a2);
  }

  else
  {
    v19 = (v18 + 8 * a2);
  }

  v20 = *v19;
  v21 = (v18 + 4 * a2 + 2);
  if ((v17 & 4) == 0)
  {
    v21 = (v18 + 8 * a2 + 4);
  }

  v22 = *v21;
  if (v20 == 0xFFFF)
  {
    v23 = 0;
  }

  else if ((v17 & 4) != 0)
  {
    v23 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v23 = *(v18 + 8 * a2 + 2);
  }

  if (v22 > 0xFFFD)
  {
    v24 = 0;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v24 = btree_node_val_len(a1, a2);
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  result = sub_100016954(a1, v20, v23);
  if (result)
  {
    return result;
  }

LABEL_17:
  if (!v24)
  {
    if (v20 != 0xFFFF)
    {
LABEL_27:
      if (v24 >= a6)
      {
        v28 = 1;
      }

      else
      {
        v28 = a7;
      }

      result = 22;
      if (v23 == a4 && v28)
      {
        result = a9(*(a1 + 384) + v20, v23, a3, a4, *(a1 + 392) - v22, v24, a5, a6, a10);
        if (!result)
        {
          obj_dirty(a1, a8, 0);
          return 0;
        }
      }

      return result;
    }

    return 22;
  }

  LODWORD(result) = sub_100016A80(a1, v22, v24);
  v26 = result;
  if (result)
  {
    result = result;
  }

  else
  {
    result = 22;
  }

  if (v20 != 0xFFFF && v26 == 0)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t bt_remove_internal(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, void *a6, unsigned int *a7, void *a8, unsigned int *a9, unint64_t a10)
{
  v15 = a3;
  v122 = 0u;
  v123 = 0u;
  v121 = 0u;
  v120 = 0;
  __chkstk_darwin(a1);
  v19 = (&v98 - v18);
  bzero(&v98 - v18, v20);
  memset(v119, 170, sizeof(v119));
  v118 = a5;
  v117 = -21846;
  v116 = -21846;
  v115 = -21846;
  if (!*(a1 + 416))
  {
    return 22;
  }

  v21 = *(a1 + 400);
  v22 = (v21 >> 9) & 0x3FFF;
  if (!v22)
  {
    if ((((((v21 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72 >= a5)
    {
      goto LABEL_4;
    }

    return 22;
  }

  if (v22 != a5)
  {
    return 22;
  }

LABEL_4:
  v106 = *(*(a1 + 392) + 16);
  v105 = a8;
  v111 = a2;
  obj_lock(a1, 2);
  v23 = obj_modify(a1, (*(a1 + 400) >> 3) & 2, a10);
  if (v23)
  {
    v24 = v23;
    obj_unlock(a1, 2);
    return v24;
  }

  v109 = a10;
  v104 = &v98;
  *&v121 = a1;
  obj_retain(a1);
  v26 = sub_10001D740(v121, v15, 1, a4, &v118, a5, &v121 + 4, (&v121 | 0xA));
  if (v26)
  {
LABEL_10:
    v24 = v26;
    goto LABEL_11;
  }

  v27 = 0;
  v107 = 0;
  v103 = 0;
  v29 = 0;
  v101 = a9;
  v102 = (v106 + 7) & 0x1FFF8;
  v108 = a4;
  while (1)
  {
    if (v29)
    {
      v110 = 1;
      v30 = v122;
      if (!v122)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v30 = v122;
      if (BYTE10(v121) == 1 && WORD4(v121) == 0)
      {
        v103 = WORD4(v122);
        v110 = 1;
        v27 = v121;
        v107 = v122;
        if (!v122)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v110 = 0;
        if (!v122)
        {
          goto LABEL_44;
        }
      }
    }

    if ((*(a1 + 401) & 0x7FFE) != 0)
    {
      goto LABEL_44;
    }

    v114 = 0;
    if (BYTE10(v121) == 1)
    {
      v32 = btree_node_key_ptr(v30, WORD4(v122), &v119[2], &v115);
      if (v32)
      {
        goto LABEL_97;
      }

      v33 = v106;
      if ((*(v122 + 400) & 0x40) == 0)
      {
        v33 = v102;
      }

      v34 = v115;
      if ((*(v122 + 400) & 0x40) == 0)
      {
        v34 = (v115 + 7) & 0xFFF8;
      }

      v35 = v33 - v34;
      if (v35 < 0)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }
    }

    else
    {
      v36 = 0;
    }

    v113 = sub_100019D60(v121);
    v37 = v122;
    v112 = (*(v121 + 407) & 0x7F) + 8;
    if (sub_100019BD4(v122, 1u, &v113, &v112, v36, 0, 0))
    {
      goto LABEL_43;
    }

    v32 = sub_100019DDC(a1, v123, WORD4(v123), v37, (WORD4(v122) + ((BYTE10(v122) & 1) == 0)), v108, v118, 1u, &v113, &v112, v36, v111, v109, &v114);
    if (v32)
    {
      goto LABEL_97;
    }

    v38 = v114;
    if (!v114)
    {
LABEL_43:
      a4 = v108;
      goto LABEL_44;
    }

    v39 = v122;
    v100 = v122;
    if (v123)
    {
      ++WORD4(v123);
      if (v122)
      {
        if (v107 == v122 || v122 == v27)
        {
          v99 = v122;
          goto LABEL_64;
        }

        obj_unlock(v122, 2);
        obj_release(v39);
      }
    }

    else
    {
      *&v123 = v122;
      if (*(*(v114 + 56) + 36))
      {
        v32 = btree_node_key_ptr(v114, 0, &v119[2], &v115);
        if (v32)
        {
          goto LABEL_97;
        }

        v43 = sub_100019AB8(v123, v119[2], v115, &v123 + 4, &v123 + 10);
      }

      else
      {
        v43 = sub_10001D740(v122, v15, 0, v108, &v118, a5, &v123 + 4, &v123 + 10);
      }

      v24 = v43;
      if (v43)
      {
        goto LABEL_98;
      }
    }

    v99 = 0;
LABEL_64:
    v44 = v107 != v123 || v107 == 0;
    v45 = v103;
    if (!v44)
    {
      v45 = WORD4(v123);
    }

    v103 = v45;
    *&v122 = v38;
    v32 = sub_10001D740(v38, v15, 0, v108, &v118, a5, &v122 + 4, &v122 + 10);
    if (v32)
    {
      goto LABEL_97;
    }

    v46 = v121;
    obj_unlock(v121, 2);
    obj_release(v46);
    *&v121 = 0;
    v32 = btree_node_child_val(v122, WORD4(v122), v19);
    if (v32)
    {
      goto LABEL_97;
    }

    v32 = btree_node_get(a1, v19, v111, 3u, *(*(v122 + 56) + 34) - 1, v109, &v121);
    if (v32)
    {
      goto LABEL_97;
    }

    v47 = v121;
    if ((*(a1 + 400) & 0x10) != 0)
    {
      a4 = v108;
      if (*(v121 + 112) != *v19)
      {
        sub_100019AFC(v122, WORD4(v122), (v121 + 112), v109);
        v47 = v121;
      }
    }

    else
    {
      a4 = v108;
    }

    v32 = sub_10001D740(v47, v15, 1, a4, &v118, a5, &v121 + 4, (&v121 | 0xA));
    if (v32)
    {
LABEL_97:
      v24 = v32;
LABEL_98:
      v120 = v27;
LABEL_99:
      v28 = v107;
      goto LABEL_100;
    }

    if (v107 == v100)
    {
      v50 = WORD4(v122);
      v48 = v99;
      if (v107 == a1 && !WORD4(v122))
      {
        v27 = v122;
        goto LABEL_44;
      }

      v49 = v110;
      if (WORD4(v122))
      {
        goto LABEL_92;
      }

      v103 = WORD4(v123);
      goto LABEL_88;
    }

    v48 = v99;
    if (v110)
    {
      v49 = 1;
      goto LABEL_93;
    }

    v50 = WORD4(v122);
    if (BYTE10(v122) == 1 && !WORD4(v122))
    {
      v103 = WORD4(v123);
      v49 = 1;
LABEL_88:
      v107 = v123;
      v27 = v122;
      goto LABEL_93;
    }

    v49 = 0;
    if (BYTE10(v121) == 1 && !WORD4(v121))
    {
      v49 = 1;
LABEL_92:
      v107 = v122;
      v27 = v121;
      v103 = v50;
    }

LABEL_93:
    v110 = v49;
    if (v48 && v48 != v107 && v48 != v27)
    {
      obj_unlock(v48, 2);
      obj_release(v48);
    }

LABEL_44:
    if ((*(*(v121 + 56) + 32) & 2) != 0)
    {
      break;
    }

    v40 = v123;
    if (v123 && v123 != v107 && v123 != v27)
    {
      obj_unlock(v123, 2);
      obj_release(v40);
    }

    v41 = v122;
    v122 = v121;
    v123 = v41;
    *&v121 = 0;
    v32 = btree_node_child_val(v122, WORD4(v122), v19);
    if (!v32)
    {
      v32 = btree_node_get(a1, v19, v111, 3u, *(*(v122 + 56) + 34) - 1, v109, &v121);
      if (!v32)
      {
        v42 = v121;
        if ((*(a1 + 400) & 0x10) != 0)
        {
          a4 = v108;
          if (*(v121 + 112) != *v19)
          {
            sub_100019AFC(v122, WORD4(v122), (v121 + 112), v109);
            v42 = v121;
          }
        }

        else
        {
          a4 = v108;
        }

        v32 = sub_10001D740(v42, v15, 1, a4, &v118, a5, &v121 + 4, (&v121 | 0xA));
        v29 = v110;
        if (!v32)
        {
          continue;
        }
      }
    }

    goto LABEL_97;
  }

  v120 = v27;
  v55 = sub_10001D740(v121, v15, 1, a4, &v118, a5, &v121 + 4, (&v121 | 0xA));
  if (v55)
  {
LABEL_127:
    v24 = v55;
    goto LABEL_99;
  }

  if (BYTE10(v121) != 1)
  {
    v24 = 2;
    goto LABEL_99;
  }

  if (a6)
  {
    v55 = btree_node_key_ptr(v121, 0, &v119[1], &v117);
    if (v55)
    {
      goto LABEL_127;
    }

    v56 = v117;
    v57 = *a7;
    if (*a7 >= v117)
    {
      v58 = v117;
    }

    else
    {
      v58 = v57;
    }

    memcpy(a6, v119[1], v58);
    *a7 = v56;
    if (v57 < v56)
    {
      v24 = 34;
      goto LABEL_99;
    }
  }

  v28 = v107;
  if (v105)
  {
    v59 = btree_node_val_ptr(v121, 0, v119, &v116);
    if (v59)
    {
      goto LABEL_139;
    }

    v60 = v116;
    v61 = v116 == 65534 ? 0 : v116;
    v62 = v101;
    v63 = *v101;
    v64 = *v101 >= v61 ? v61 : v63;
    memcpy(v105, v119[0], v64);
    *v62 = v60;
    if (v63 < v61)
    {
      v24 = 34;
      goto LABEL_100;
    }
  }

  v65 = v109;
  sub_10001D83C(v121, WORD4(v121), v109);
  atomic_fetch_add_explicit((*(a1 + 392) + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  obj_dirty(a1, v65, 0);
  if (WORD4(v121))
  {
    v24 = 0;
    goto LABEL_160;
  }

  v24 = 0;
  if (*(*(v121 + 56) + 36) && v122)
  {
    v66 = btree_node_key_ptr(v121, 0, &v119[2], &v115);
    if (v66)
    {
      v24 = v66;
      goto LABEL_155;
    }

    v24 = sub_100018CDC(v122, WORD4(v122), v119[2], v115, 0, 0, v109);
    if (v24)
    {
LABEL_155:
      v67 = *(a1 + 8);
      if (v67)
      {
        v68 = (v67 + 4040);
      }

      else
      {
        v68 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5068, v68, v24);
    }

    v28 = v107;
  }

LABEL_160:
  v69 = sub_10001DB10(a1, v121);
  v70 = v123;
  v71 = v110;
  if (v123)
  {
    if (v123 != v28 && v123 != v27)
    {
      obj_unlock(v123, 2);
      obj_release(v70);
      v71 = v110;
    }

    *&v123 = 0;
  }

  v72 = v122;
  if (v122)
  {
    if (v122 != v28 && v122 != v27)
    {
      obj_unlock(v122, 2);
      obj_release(v72);
      v71 = v110;
    }

    *&v122 = 0;
  }

  if (v71 && *(*(v121 + 56) + 36))
  {
    v59 = btree_node_key_ptr(v121, 0, &v119[2], &v115);
    if (v59)
    {
LABEL_139:
      v24 = v59;
      goto LABEL_100;
    }

    if (v28)
    {
      v73 = sub_100018CDC(v107, v103, v119[2], v115, 0, 0, v109);
      v24 = v73;
      if (v73)
      {
        v74 = *(a1 + 8);
        if (v74)
        {
          v75 = (v74 + 4040);
        }

        else
        {
          v75 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5094, v75, v73);
      }

      if (v107 != v123 && v107 != v122 && v107 != v121)
      {
        v76 = v107;
        obj_unlock(v107, 2);
        obj_release(v76);
      }
    }

    else
    {
      v24 = 0;
    }

    v77 = v120;
    v78 = v120 + 7;
    v79 = v108;
    if ((*(v120[7] + 32) & 2) == 0)
    {
      v80 = v118;
      v81 = v119[2];
      while (1)
      {
        LOWORD(v114) = -21846;
        LOBYTE(v113) = -86;
        v27 = v77;
        v82 = sub_100019AB8(v77, v79, v80, &v114, &v113);
        if (v82)
        {
          v24 = v82;
          goto LABEL_12;
        }

        if (v113 != 1)
        {
          break;
        }

        if (*(*v78 + 34) == 1)
        {
          v88 = *(a1 + 8);
          if (v88)
          {
            v89 = (v88 + 4040);
          }

          else
          {
            v89 = (*(*(*a1 + 392) + 384) + 212);
          }

          v90 = obj_oid(v27);
          v91 = obj_subtype(v27);
          log_err("%s:%d: %s minkey update traversal unexpectedly found the removed key in level 1 node; oid %llu subtype 0x%x level %d\n", "bt_remove_internal", 5117, v89, v90, v91, *(*v78 + 34));
          break;
        }

        v83 = v114;
        v84 = sub_100018CDC(v27, v114, v81, v115, 0, 0, v109);
        if (v84)
        {
          v85 = *(a1 + 8);
          if (v85)
          {
            v86 = (v85 + 4040);
          }

          else
          {
            v86 = (*(*(*a1 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5123, v86, v84);
        }

        v24 = btree_node_child_val(v27, v83, v19);
        v87 = *(*v78 + 34);
        v120 = 0;
        if (!v24)
        {
          v24 = btree_node_get(a1, v19, v111, 3u, v87 - 1, v109, &v120);
        }

        v79 = v108;
        if (v27 != v123 && v27 != v122 && v27 != v121)
        {
          obj_unlock(v27, 2);
          obj_release(v27);
        }

        if (!v24)
        {
          v77 = v120;
          v78 = v120 + 7;
          if ((*(v120[7] + 32) & 2) == 0)
          {
            continue;
          }
        }

        goto LABEL_213;
      }

      v24 = 0;
    }
  }

  else if (v28 && v28 != v123 && v28 != v121)
  {
    obj_unlock(v28, 2);
    obj_release(v28);
  }

LABEL_213:
  v92 = v120;
  if (v120)
  {
    if (v120 != v123 && v120 != v122 && v120 != v121)
    {
      obj_unlock(v120, 2);
      obj_release(v92);
    }

    v120 = 0;
  }

  if (!v69)
  {
    v93 = 0;
    v95 = 0;
    goto LABEL_226;
  }

  if (WORD4(v121) || !*(*(v121 + 56) + 36))
  {
    v93 = 0;
    v94 = 0;
    goto LABEL_222;
  }

  v26 = btree_node_key_ptr(v121, 0, &v119[2], &v115);
  if (v26)
  {
    goto LABEL_10;
  }

  v94 = v115;
  v97 = _apfs_malloc_typed(v115, 0x144C515AuLL);
  v93 = v97;
  if (v97)
  {
    memcpy(v97, v119[2], v115);
  }

  v24 = 0;
LABEL_222:
  if (v93)
  {
    v95 = v94;
  }

  else
  {
    v93 = v108;
    v95 = v118;
  }

LABEL_226:
  v96 = v121;
  obj_unlock(v121, 2);
  obj_release(v96);
  *&v121 = 0;
  if (v69)
  {
    sub_10001DBBC(a1, v111, v93, v95, v109);
    if (v93 != v108)
    {
      _apfs_free(v93, v95);
    }
  }

LABEL_11:
  v27 = 0;
LABEL_12:
  v28 = 0;
LABEL_100:
  v51 = v123;
  if (v123)
  {
    if (v123 != v28 && v123 != v27)
    {
      obj_unlock(v123, 2);
      obj_release(v51);
    }

    *&v123 = 0;
  }

  v53 = v122;
  if (v122)
  {
    if (v122 != v28 && v122 != v27)
    {
      obj_unlock(v122, 2);
      obj_release(v53);
    }

    *&v122 = 0;
  }

  v54 = v121;
  if (v121)
  {
    if (v121 != v28 && v121 != v27)
    {
      obj_unlock(v121, 2);
      obj_release(v54);
    }

    *&v121 = 0;
  }

  if (v28 && v28 != v123 && v28 != v122)
  {
    obj_unlock(v28, 2);
    obj_release(v28);
    v27 = v120;
  }

  if (v27 && v27 != v123 && v27 != v122 && v27 != v121)
  {
    obj_unlock(v27, 2);
    obj_release(v27);
  }

  return v24;
}

uint64_t sub_10001D740(uint64_t a1, char a2, int a3, unint64_t *a4, _WORD *a5, unsigned int a6, _WORD *a7, BOOL *a8)
{
  if ((a2 & 1) == 0)
  {
    v13 = sub_100018B08(a1, a4, *a5, a7, a8);
    if (v13)
    {
      return v13;
    }

    if (!*a8 && *a7)
    {
      v13 = 0;
      --*a7;
      return v13;
    }

    return 0;
  }

  if (!*(*(a1 + 56) + 36))
  {
    return 2;
  }

  *a7 = 0;
  *a8 = 1;
  if (!a3)
  {
    return 0;
  }

  __src = 0xAAAAAAAAAAAAAAAALL;
  v16 = -21846;
  v13 = btree_node_key_ptr(a1, 0, &__src, &v16);
  if (!v13)
  {
    if (v16 >= a6)
    {
      v14 = a6;
    }

    else
    {
      v14 = v16;
    }

    *a5 = v14;
    memcpy(a4, __src, v14);
  }

  return v13;
}

void sub_10001D83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 56);
  v7 = *(v6 + 32) & 4;
  if (v7)
  {
    v8 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v8 = *(*(a1 + 376) + 8 * a2 + 2);
  }

  if (*(a1 + 440) <= v8)
  {
    *(a1 + 440) = 0;
    v7 = *(v6 + 32) & 4;
  }

  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  v11 = (v9 + 8 * a2);
  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *v12;
  v14 = *(a1 + 400);
  if ((v14 & 0x40) != 0)
  {
    v15 = v8;
  }

  else
  {
    v15 = (v8 + 7) & 0xFFF8;
  }

  if (v13 != 0xFFFF)
  {
    v16 = sub_100016954(a1, v13, v15);
    v6 = *(a1 + 56);
    v14 = *(a1 + 400);
    if (!v16)
    {
      v17 = (v15 + 7) & 0xFFF8;
      if ((v14 & 0x40) != 0)
      {
        v17 = v15;
      }

      if (v17 >= 4u)
      {
        v18 = (*(a1 + 384) + v13);
        v18[1] = v17;
        *v18 = *(v6 + 48);
        *(v6 + 48) = v13;
      }

      *(v6 + 50) += v17;
      v14 = *(a1 + 400);
    }
  }

  v19 = *(a1 + 376);
  v20 = v19 + 4 * v4 + 2;
  v21 = v19 + 8 * v4 + 4;
  if ((*(v6 + 32) & 4) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *v22;
  v24 = btree_node_val_len(a1, v4);
  if ((v14 & 0x40) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = (v24 + 7) & 0xFFF8;
  }

  if (v23 <= 0xFFFD)
  {
    v26 = sub_100016A80(a1, v23, v25);
    v6 = *(a1 + 56);
    if (!v26)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = (v25 + 7) & 0xFFF8;
      }

      if (v27 >= 4u)
      {
        v28 = (*(a1 + 392) - v23);
        v28[1] = v27;
        *v28 = *(v6 + 52);
        *(v6 + 52) = v23;
      }

      *(v6 + 54) += v27;
    }
  }

  v29 = *(v6 + 36) - 1;
  if (v29 > v4)
  {
    sub_100021624(a1, v4, -1);
    v6 = *(a1 + 56);
    v29 = *(v6 + 36) - 1;
  }

  *(v6 + 36) = v29;
  v30 = *(v6 + 32);
  if ((v30 & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      goto LABEL_49;
    }

    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  v32 = *(v6 + 42) / v31;
  if (v32 - v29 >= 0x10)
  {
    v33 = 8;
    if ((v30 & 4) == 0 || ((v34 = *(a1 + 400), (v30 & 2) != 0) ? (v35 = v34 >> 23) : (LOWORD(v35) = (HIBYTE(v34) & 0x7F) + 8), (v36 = ((((v34 >> 27) & 0x1F000) - 56) / (((v34 >> 9) & 0x3FFF) + v35 + 4)) & 0xFFFE, (v32 - 8) >= v36) ? (v33 = 8) : (v33 = v32 - v36), v32 > v36))
    {
      v37 = v33 * v31;
      memmove((*(a1 + 384) - (v33 * v31)), *(a1 + 384), *(v6 + 44));
      *(a1 + 384) -= v37;
      v38 = *(a1 + 56);
      *(v38 + 42) -= v37;
      *(v38 + 46) += v37;
    }
  }

LABEL_49:

  obj_dirty(a1, a3, 0);
}

BOOL sub_10001DB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(v2 + 32);
  if ((~v3 & 3) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 36);
  if (!v4)
  {
    return 1;
  }

  if (*(a1 + 432) == *(a2 + 112))
  {
    return 0;
  }

  if ((v3 & 4) == 0 || (*(a2 + 400) & 4) != 0)
  {
    v8 = obj_size_phys(a2);
    if (*(*(a2 + 56) + 32))
    {
      v9 = -96;
    }

    else
    {
      v9 = -56;
    }

    v7 = (v9 + v8) >> 1 >= sub_100020CF0(a2);
  }

  else
  {
    v7 = v4 >= *(v2 + 42) >> 3;
  }

  return !v7;
}

void sub_10001DBBC(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v49 = a2;
  __chkstk_darwin(a1);
  v10 = (&v46 - v9);
  bzero(&v46 - v9, v11);
  v56[0] = 0xAAAAAAAAAAAAAAAALL;
  v56[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a1 + 56);
  if (!v12)
  {
    return;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57[2] = v13;
  v57[3] = v13;
  v57[0] = v13;
  v57[1] = v13;
  v53 = -1431655766;
  v52 = -21846;
  v51 = -21846;
  v14 = *(v12 + 34);
  if (v14 >= 6)
  {
    v15 = v14 + 11;
    v18 = (v14 + 11);
    v17 = _apfs_malloc_typed(8 * v18, 0x2004093837F09uLL);
    v16 = _apfs_malloc_typed(2 * v18, 0x1000040BDFB0063uLL);
  }

  else
  {
    v15 = 8;
    v16 = v56;
    v17 = v57;
  }

  obj_lock(a1, 2);
  if (obj_modify(a1, (*(a1 + 400) >> 3) & 2, a5))
  {

    obj_unlock(a1, 2);
    return;
  }

  *v17 = a1;
  obj_retain(a1);
  v19 = *v17;
  if ((*(*(*v17 + 56) + 32) & 2) != 0)
  {
    LOWORD(v21) = 0;
  }

  else
  {
    v47 = v15;
    v48 = a5;
    v20 = 0;
    v21 = 0;
    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    v50 = -86;
    v22 = v15;
    if ((v15 & 0xFFFE) == 0)
    {
      v22 = 1;
    }

    v23 = (v22 - 1);
    v24 = v17 + 1;
    while (!sub_100018B08(v19, a3, a4, &v16[v20], &v50))
    {
      if ((v50 & 1) == 0 && v16[v21])
      {
        --v16[v21];
      }

      if (v23 == v21)
      {
        LOWORD(v15) = v47;
        LOWORD(v21) = v47 - 1;
        goto LABEL_68;
      }

      *v10 = 0;
      if (btree_node_child_val(*(v24 - 1), v16[v21], v10) || btree_node_get(a1, v10, v49, 3u, *(*(*(v24 - 1) + 56) + 34) - 1, v48, v24))
      {
        break;
      }

      v19 = *v24;
      if ((*(a1 + 400) & 0x10) != 0 && *(v19 + 112) != *v10)
      {
        sub_100019AFC(*(v24 - 1), v16[v21], (v19 + 112), v48);
        v19 = *v24;
      }

      ++v20;
      ++v24;
      ++v21;
      if ((*(*(v19 + 56) + 32) & 2) != 0)
      {
        v25 = v21;
        v26 = v48;
        while (1)
        {
          v27 = v25;
          v28 = (v25 - 1);
          if (v25 < 1)
          {
            break;
          }

          if (v21 <= v25)
          {
            v29 = 0;
          }

          else
          {
            v29 = v17[v25 + 1];
          }

          sub_100021E40(a1, v17[v28], v16[v28], v17[v25], v16[v25], v29, v49, v26);
          v30 = *(*(v17[v25--] + 56) + 36);
          if (v27 == 1 || v30)
          {
            if (v30)
            {
              if (btree_node_key_ptr(v17[v28], v16[v28], &v54, &v51))
              {
                goto LABEL_67;
              }

              v53 = 0;
              if (btree_node_key_ptr(v17[v27], 0, &v55, &v52))
              {
                goto LABEL_67;
              }

              v39 = *(a1 + 8);
              if (!v39)
              {
                v39 = *(*a1 + 392);
              }

              v40 = v55;
              v41 = (*(a1 + 416))(v39, v55, v52, v54, v51, &v53);
              if (!v41 && v53)
              {
                v41 = sub_100018CDC(v17[v28], v16[v28], v40, v52, 0, 0, v26);
              }

              if (v41)
              {
                goto LABEL_67;
              }
            }
          }

          else if (!v16[v28])
          {
            if (v28)
            {
              v31 = v17[v28];
              if (*(*(v31 + 56) + 36))
              {
                v32 = &v16[v28];
                v33 = v28 - 1;
                v34 = v27 - 1;
                while (1)
                {
                  if (*v32--)
                  {
                    goto LABEL_29;
                  }

                  v36 = btree_node_key_ptr(v31, 0, &v55, &v52);
                  if (v36)
                  {
                    goto LABEL_63;
                  }

                  v53 = 0;
                  v36 = btree_node_key_ptr(v17[v33], v16[v33], &v54, &v51);
                  if (v36)
                  {
                    goto LABEL_63;
                  }

                  v37 = *(a1 + 8);
                  if (!v37)
                  {
                    v37 = *(*a1 + 392);
                  }

                  v38 = v55;
                  v36 = (*(a1 + 416))(v37, v55, v52, v54, v51, &v53);
                  if (!v36 && v53)
                  {
                    v36 = sub_100018CDC(v17[v33], v16[v33], v38, v52, 0, 0, v48);
                  }

                  if (v36)
                  {
LABEL_63:
                    v42 = *(a1 + 8);
                    if (v42)
                    {
                      v43 = (v42 + 4040);
                    }

                    else
                    {
                      v43 = (*(*(*a1 + 392) + 384) + 212);
                    }

                    log_err("%s:%d: %s updating grandparent failed w/%d\n", "bt_merge_up", 4631, v43, v36);
                    goto LABEL_67;
                  }

                  if (--v34)
                  {
                    v31 = v17[v34];
                    --v33;
                    if (*(*(v31 + 56) + 36))
                    {
                      continue;
                    }
                  }

                  goto LABEL_29;
                }
              }
            }
          }

LABEL_59:
          if (!sub_10001DB10(a1, v17[v25]))
          {
            goto LABEL_67;
          }
        }

        sub_100021E40(a1, 0, 0, *v17, *v16, v17[1], v49, v26);
LABEL_29:
        if ((v28 & 0x8000) != 0)
        {
          break;
        }

        v25 = v28;
        v26 = v48;
        goto LABEL_59;
      }
    }

LABEL_67:
    LOWORD(v15) = v47;
  }

LABEL_68:
  v44 = 0;
  do
  {
    v45 = v17[v44];
    obj_unlock(v45, 2);
    obj_release(v45);
    ++v44;
  }

  while (v21 >= v44);
  if (v15 >= 9u)
  {
    _apfs_free(v17, 8 * v15);
    _apfs_free(v16, 2 * v15);
  }
}

uint64_t bt_remove_first(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, void *a5, unsigned int *a6, unint64_t a7)
{
  v14 = *(*(a1 + 392) + 16);
  v15 = _apfs_malloc_typed(v14, 0xE12C8675uLL);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  v17 = bt_remove_internal(a1, a2, 1, v15, v14, a3, a4, a5, a6, a7);
  _apfs_free(v16, v14);
  return v17;
}

uint64_t bt_lookup_first(atomic_ullong *a1, unint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6)
{
  v12 = a1[50];
  __chkstk_darwin(a1);
  v14 = &v29[-v13];
  bzero(&v29[-v13], v15);
  v34 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v16 = (v12 >> 9) & 0x3FFF;
  if (v16)
  {
    if (*a4 != v16)
    {
      return 22;
    }
  }

  if ((v12 >> 23) && *a6 != (v12 >> 23))
  {
    return 22;
  }

  v31 = -21846;
  v30 = -21846;
  obj_lock(a1, 1);
  obj_retain(a1);
  v18 = a1 + 7;
  v17 = a1[7];
  if ((*(v17 + 32) & 2) != 0)
  {
    v19 = a1;
LABEL_15:
    if (*(v17 + 36))
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v21 = btree_node_key_ptr(v19, 0, &v33, &v31);
      if (v21 || (v32 = 0xAAAAAAAAAAAAAAAALL, v21 = btree_node_val_ptr(v19, 0, &v32, &v30), v21))
      {
        v20 = v21;
      }

      else
      {
        v23 = v30;
        if (v30 == 65534)
        {
          v24 = 0;
        }

        else
        {
          v24 = v30;
        }

        v25 = v31;
        if (*a4 >= v31)
        {
          v26 = v31;
        }

        else
        {
          v26 = *a4;
        }

        if (*a4 >= v31 && *a6 >= v24)
        {
          v20 = 0;
        }

        else
        {
          v20 = 34;
        }

        memcpy(a3, v33, v26);
        if (*a6 >= v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = *a6;
        }

        memcpy(a5, v32, v28);
        *a4 = v25;
        *a6 = v23;
      }
    }

    else
    {
      v20 = 2;
    }

    obj_unlock(v19, 1);
    obj_release(v19);
  }

  else
  {
    v19 = a1;
    while (1)
    {
      *v14 = 0;
      v20 = btree_node_child_val(v19, 0, v14);
      if (!v20)
      {
        v20 = btree_node_get(a1, v14, a2, 2u, *(*v18 + 34) - 1, 0, &v34);
      }

      obj_unlock(v19, 1);
      obj_release(v19);
      if (v20)
      {
        break;
      }

      v19 = v34;
      v18 = v34 + 7;
      v17 = v34[7];
      if ((*(v17 + 32) & 2) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  return v20;
}

uint64_t bt_lookup_variant(atomic_ullong *a1, unint64_t a2, unint64_t *a3, unsigned int *a4, uint64_t a5, void *a6, unsigned int *a7, uint64_t a8, int a9, uint64_t *a10)
{
  if (!a1[52])
  {
    return 22;
  }

  v10 = a8;
  v13 = a5;
  v17 = a1[50];
  v18 = (v17 >> 9) & 0x3FFF;
  if (v18)
  {
    if (*a4 != v18)
    {
      return 22;
    }
  }

  if ((v17 >> 23) && *a7 != (v17 >> 23))
  {
    return 22;
  }

  v19 = *a4;
  if ((v17 & 0x7FFE00) == 0 && v19 > (((((v17 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72)
  {
    return 22;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24 = -21846;
  v20 = sub_10001E69C(a1, a2, a3, v19, a8, a9, 0, a10, &v25, &v24);
  if (!v20)
  {
    v22 = v25;
    v23 = sub_10001ECCC(a1, v25, v24, a3, a4, v13, a6, a7, v10);
    v20 = v23;
    if (a10 && !v23)
    {
      *a10 = obj_oid(v22);
      a10[1] = a1;
    }

    obj_unlock(v22, 1);
    obj_release(v22);
  }

  return v20;
}

uint64_t sub_10001E69C(atomic_ullong *a1, unint64_t a2, unint64_t *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, unint64_t *a8, uint64_t *a9, unsigned __int16 *a10)
{
  v41 = a7;
  v42 = a6;
  v45 = a4;
  v43 = a2;
  v44 = a3;
  v37 = a9;
  v13 = a1[50];
  __chkstk_darwin(a1);
  v15 = (&v37 - v14);
  bzero(&v37 - v14, v16);
  v48 = 0;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v47 = -21846;
  v46 = -86;
  if (!a8)
  {
    goto LABEL_10;
  }

  v17 = *a8;
  if (!*a8)
  {
    goto LABEL_10;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_10;
  }

  if (a8[1] != a1)
  {
    goto LABEL_10;
  }

  *v15 = v17;
  if (v17 == obj_oid(a1) || btree_node_get(a1, v15, v43, v42 & 0x200 | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, 0, &v49))
  {
    goto LABEL_10;
  }

  v18 = v49;
  if ((*(v49[7] + 32) & 2) == 0 || sub_100018B08(v49, v44, v45, &v47, &v46))
  {
    goto LABEL_9;
  }

  if (v46 == 1)
  {
    if (a5 == 4)
    {
      if (*(v18[7] + 36) > ++v47)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    }

    if (a5 == 2)
    {
      if (v47)
      {
        --v47;
        goto LABEL_86;
      }

LABEL_89:
      v46 = 0;
      goto LABEL_9;
    }

LABEL_86:
    v35 = v37;
    goto LABEL_87;
  }

  if (!a5)
  {
    if (v47 && *(v18[7] + 36) > v47)
    {
      v25 = 0;
      v34 = 2;
      v35 = v37;
      goto LABEL_60;
    }

    goto LABEL_9;
  }

  if (a5 - 3 <= 1 && v47 && *(v18[7] + 36) > v47)
  {
    goto LABEL_86;
  }

LABEL_9:
  obj_unlock(v18, 1);
  obj_release(v18);
LABEL_10:
  v19 = a5 == 2;
  v38 = a5 - 3;
  v20 = a5 - 3 < 2;
  obj_lock(a1, 1);
  v49 = a1;
  obj_retain(a1);
  v39 = a5;
  v40 = 0;
  v21 = v42 & 0x200;
  for (i = a1; ; i = v49)
  {
    v46 = 0;
    v24 = i + 7;
    v23 = i[7];
    if ((*(v23 + 32) & 2) == 0)
    {
      v25 = 0;
      while (1)
      {
        if (*(v23 + 34) <= v41)
        {
          goto LABEL_36;
        }

        v26 = sub_100018B08(i, v44, v45, &v47, &v46);
        if (v26)
        {
          goto LABEL_55;
        }

        v27 = v47;
        if ((v46 & 1) == 0)
        {
          if (!v47)
          {
            v28 = 0;
            if (!v20)
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          v27 = --v47;
        }

        v28 = v27;
        if (!v19 || v27 == 0)
        {
          if (!v20)
          {
            goto LABEL_26;
          }

LABEL_22:
          if (*(*v24 + 36) - 1 <= v28)
          {
            goto LABEL_26;
          }
        }

        if (v25)
        {
          obj_unlock(v25, 1);
          obj_release(v25);
          v27 = v47;
        }

        v25 = v49;
        obj_retain(v49);
        v40 = v20 - v19 + v27;
LABEL_26:
        v29 = v49;
        if ((v42 & 0x100) != 0)
        {
          v30 = v49[7];
          if (*(v30 + 34) == 1 && *(v30 + 36) - 1 > v27 && !btree_node_child_val(v49, (v27 + 1), v15))
          {
            btree_node_get(a1, v15, v43, v42 & 0x300, *(v29[7] + 34) - 1, 0, &v48);
          }
        }

        v26 = btree_node_child_val(v29, v27, v15);
        if (v26)
        {
          goto LABEL_55;
        }

        v26 = btree_node_get(a1, v15, v43, v21 | 2u, *(v29[7] + 34) - 1, 0, &v48);
        if (v26)
        {
          goto LABEL_55;
        }

        btree_node_release(v29, v29 != v25);
        i = v48;
        v49 = v48;
        v24 = v48 + 7;
        v23 = v48[7];
        if ((*(v23 + 32) & 2) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    v25 = 0;
LABEL_36:
    v26 = sub_100018B08(i, v44, v45, &v47, &v46);
    if (v26)
    {
LABEL_55:
      v34 = v26;
      goto LABEL_56;
    }

    v31 = v46;
    if (v46 != 1)
    {
      goto LABEL_44;
    }

    if (v39 == 2)
    {
      LOWORD(v32) = v47;
      if (!v47)
      {
        v46 = 0;
        goto LABEL_46;
      }

      v34 = 0;
LABEL_71:
      v47 = v32 - 1;
      goto LABEL_56;
    }

    if (v39 != 4)
    {
      break;
    }

    if (*(*v24 + 36) > ++v47)
    {
      break;
    }

    v46 = 0;
    v32 = v47;
LABEL_49:
    if (*(*v24 + 36) > v32)
    {
      v34 = 0;
      v46 = 1;
      goto LABEL_56;
    }

LABEL_50:
    if (!v25)
    {
      v34 = 2;
      v18 = v49;
      v35 = v37;
      if (!v49)
      {
        goto LABEL_61;
      }

LABEL_60:
      btree_node_release(v18, v18 != v25);
      goto LABEL_61;
    }

    btree_node_release(i, i != v25);
    v33 = btree_node_child_val(v25, v40, v15);
    if (v33 || (v33 = btree_node_get(a1, v15, v43, v21 | 2u, *(v25[7] + 34) - 1, 0, &v49), v33))
    {
      v34 = v33;
      v49 = 0;
      v35 = v37;
      goto LABEL_57;
    }

    obj_unlock(v25, 1);
    obj_release(v25);
    v19 = 0;
    v20 = 0;
  }

  v31 = 1;
LABEL_44:
  if ((v31 & 1) == 0 && v39)
  {
LABEL_46:
    v32 = v47;
    if (v39 > 2 || !v47)
    {
      if (v38 > 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v34 = 0;
    v46 = 1;
    goto LABEL_71;
  }

  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

LABEL_56:
  v35 = v37;
  if (v25)
  {
LABEL_57:
    obj_unlock(v25, 1);
    obj_release(v25);
  }

  v18 = v49;
  if (!v34)
  {
LABEL_87:
    v34 = 0;
    *v35 = v18;
    *a10 = v47;
    return v34;
  }

  if (v49)
  {
    goto LABEL_60;
  }

LABEL_61:
  *v35 = 0;
  return v34;
}

uint64_t sub_10001ECCC(uint64_t a1, void *a2, unsigned __int16 a3, void *a4, _DWORD *a5, unsigned int a6, void *a7, unsigned int *a8, int a9)
{
  __src = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0;
  v30 = -21846;
  v29 = -21846;
  if (a9 | a6)
  {
    v17 = btree_node_key_ptr(a2, a3, &__src, &v30);
    v18 = v17;
    if (a9)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_19:
      if (v18)
      {
        return v18;
      }

      goto LABEL_22;
    }

    v20 = *(a1 + 8);
    if (!v20)
    {
      v20 = *(*a1 + 392);
    }

    v21 = (*(a1 + 416))(v20, __src, v30, a4, *a5, &v31);
    if (v21)
    {
      return v21;
    }

    if (a9 == 2 && (v31 & 0x80000000) == 0 || a9 == 1 && v31 > 0 || a9 == 3 && v31 < 0 || a9 == 4 && v31 <= 0)
    {
      v18 = nx_corruption_detected_int(*(*a1 + 392));
      goto LABEL_19;
    }
  }

  else
  {
    __src = 0;
    v30 = 0;
  }

LABEL_22:
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v21 = btree_node_val_ptr(a2, a3, &v32, &v29);
  if (v21)
  {
    return v21;
  }

  v22 = v29;
  if (v29 == 65534)
  {
    v23 = 0;
  }

  else
  {
    v23 = v29;
  }

  v24 = *a8;
  if (*a8 < v23 || (v18 = 0, a6) && v30 > a6)
  {
    v18 = 34;
  }

  if (a6)
  {
    v25 = v30;
    if (v30 >= a6)
    {
      v26 = a6;
    }

    else
    {
      v26 = v30;
    }

    memcpy(a4, __src, v26);
    *a5 = v25;
    v24 = *a8;
  }

  if (v24 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v24;
  }

  memcpy(a7, v32, v27);
  *a8 = v22;
  return v18;
}

__n128 bt_iterator_init_with_hint(uint64_t a1, atomic_ullong *a2, unint64_t a3, int a4, unint64_t *a5, int a6, uint64_t a7, void *a8, unsigned int a9, _OWORD *a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v16 = a4 & 0x380;
  *(a1 + 16) = a4;
  *(a1 + 20) = a7;
  *(a1 + 32) = a5;
  *(a1 + 40) = a8;
  *(a1 + 24) = a9;
  v17 = (a1 + 56);
  if (a10)
  {
    *v17 = *a10;
  }

  else
  {
    *v17 = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a6;
  *(a1 + 52) = a9;
  if ((a4 & 4) != 0)
  {
    v18 = 4;
    goto LABEL_8;
  }

  if ((a4 & 2) == 0)
  {
    v18 = 3;
LABEL_8:
    v19 = bt_lookup_variant(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), v18, v16, v17);
    goto LABEL_9;
  }

  v21 = a4 & 0x380;
  v19 = bt_lookup_variant(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), 1, v16, (a1 + 56));
  if (v19 == 2)
  {
    v18 = 3;
    v16 = v21;
    goto LABEL_8;
  }

LABEL_9:
  if (v19)
  {
    *(a1 + 16) |= 1u;
    if (v19 != 2)
    {
      *(a1 + 28) = v19;
    }
  }

  else if (a10)
  {
    result = *v17;
    *a10 = *v17;
  }

  return result;
}

uint64_t bt_iterator_ended(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    return *(a1 + 16) & 1;
  }

  return result;
}

uint64_t bt_iterator_next(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    v3 = *(a1 + 16);
    result = 2;
    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 20);
      *(a1 + 52) = *(a1 + 24);
      if ((v3 & 8) != 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 4;
      }

      result = bt_lookup_variant(*a1, *(a1 + 8), *(a1 + 32), (a1 + 48), v4, *(a1 + 40), (a1 + 52), v5, v3 & 0x380, (a1 + 56));
      if (result == 2)
      {
        result = 0;
        *(a1 + 16) |= 1u;
      }

      *(a1 + 28) = result;
    }
  }

  return result;
}

uint64_t btree_create_extended(pthread_mutex_t **a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v28 = 0;
  v15 = *(a6 + 5);
  v16 = (v15 << 28) & 0x80000000 | (((v15 >> 4) & 1) << 30) | (((v15 >> 5) & 1) << 27) | a2;
  if ((v15 & 0x18) == 0)
  {
    v16 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = v16;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v18 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v15;
  }

  else
  {
    v18 = v15;
  }

  if (!a3)
  {
    v13 = *(*(*(*a1)[6].__opaque + 376) + 36);
  }

  if (v13 - 65537 < 0xFFFF0060 || a4 != 8 && (v18 & 1) != 0 || a4 > (((v13 - 160) >> 2) - 72) || a5 + a4 > btree_entry_max_size(v18, v13, a4, a5) || v18 > 0x1FF)
  {
    return 22;
  }

  v19 = ((v12 & 0x3FFF) << 9) | ((v13 >> 12) << 39) | (v11 << 23) | v18;
  v20 = *a6;
  v27 = v19;
  v29 = v20;
  v26 = 0x300086583;
  if ((v18 & 0x80) != 0)
  {
    if (!authapfs_valid_hash_type(*(a6 + 6)))
    {
      v24 = *(a6 + 6);
      if (v24 <= 0xFFF)
      {
        v25 = *(a6 + 7);
        v27 = v19 & 0xFF000FFFFFFFFFFFLL | (v24 << 44) | ((v25 & 0x7F) << 56);
        if (v25 <= 0x7F)
        {
          WORD2(v26) = 11;
          v21 = 27;
          goto LABEL_19;
        }
      }
    }

    return 22;
  }

  v21 = 19;
LABEL_19:
  if (v18 >= 0x100)
  {
    WORD2(v26) = v21;
  }

  result = sub_10001F2E0(a1, v17, *(a6 + 4), &v26, a7, a8);
  if (!result)
  {
    atomic_fetch_add_explicit((*(*a8 + 392) + 32), 1uLL, memory_order_relaxed);
    v23 = a6[1];
    if (v23)
    {
      *(*a8 + 424) = v23;
    }

    obj_unlock(*a8, 2);
    return 0;
  }

  return result;
}

uint64_t sub_10001F2E0(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v11 = (*(a4 + 8) >> 27) & 0x1F000;
  v19[0] = 3;
  v19[2] = v11;
  v19[3] = 448;
  v12 = *(a4 + 4);
  if (v12)
  {
    v19[0] = 2;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = a3;
  if ((v12 & 0x10) != 0)
  {
    v13 = 536870916;
  }

  else
  {
    v13 = 4;
  }

  v14 = *a1;
  if (obj_type(a1) == 13)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = obj_create(v14, v13 | a2, 0, v19, a4, v15, a5, &v20);
  if (!v16)
  {
    v17 = v20;
    *a6 = v20;
    obj_dirty(v17, a5, 0);
  }

  return v16;
}

uint64_t btree_create(pthread_mutex_t **a1, unint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a4;
  v13 = a3;
  return btree_create_extended(a1, a2, a5, a6, a7, v11, a9, a10);
}

uint64_t btree_get_extended(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v38 = a7;
  v39 = a8;
  v14 = *(a6 + 28);
  if (v14 >= 0x40)
  {
    v15 = 96;
  }

  else
  {
    v15 = v14 + 32;
  }

  __chkstk_darwin(a1);
  v17 = &v38 - v16;
  bzero(&v38 - v16, v15);
  v42 = 0;
  v41 = 0x1C000000000;
  v18 = *(a6 + 20);
  v19 = (v18 << 28) & 0x80000000 | (((v18 >> 4) & 1) << 30) | (((v18 >> 5) & 1) << 27) | a2;
  if ((v18 & 0x18) == 0)
  {
    v19 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = v19;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v21 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v18;
  }

  else
  {
    v21 = v18;
  }

  *v17 = 25987;
  *(v17 + 1) = v15;
  if (v21 > 0x1FF)
  {
    return 22;
  }

  v22 = *a1;
  *(v17 + 1) = *(v17 + 1) & 0xFFFFF07FFFFFFE00 | v21 | (((*(*(*(*a1 + 392) + 376) + 36) >> 12) & 0x1F) << 39);
  *(v17 + 3) = *a6;
  *(v17 + 1) = -267452416;
  if ((v21 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  if (authapfs_valid_hash_type(*(a6 + 24)))
  {
    return 22;
  }

  v31 = *(a6 + 24);
  if (v31 > 0xFFF)
  {
    return 22;
  }

  v32 = *(v17 + 1) & 0x80000FFFFFFFFFFFLL | ((*&v31 & 0x7FFFFLL) << 44);
  v33 = *(a6 + 28);
  *(v17 + 1) = v32 | ((v33 & 0x7F) << 56);
  if (v33 > 0x7F)
  {
    return 22;
  }

  if (v33 >= 0x40)
  {
    v34 = 64;
  }

  else
  {
    v34 = v33;
  }

  memcpy(v17 + 32, (a6 + 32), v34);
  v22 = *a1;
LABEL_14:
  v23 = v20 | 0x20000000;
  if (v21 < 0x100)
  {
    v23 = v20;
  }

  v24 = *(a6 + 16);
  v40[0] = v23 & 0xFFFF0000 | 2;
  v40[1] = v24;
  v25 = 3;
  if ((v23 & 0x40000000) == 0)
  {
    v25 = 1;
  }

  if ((a5 & 1) == 0)
  {
    v25 = 0;
  }

  v26 = v23 | v25;
  if ((a5 & 2) != 0)
  {
    v26 |= 4uLL;
  }

  if ((a5 & 4) != 0)
  {
    v26 |= 0x20uLL;
  }

  v27 = v26 | ((a5 & 0x200) << 23);
  if (obj_type(a1) == 13)
  {
    v28 = a1;
  }

  else
  {
    v28 = 0;
  }

  result = obj_get(v22, v27, a3, v40, v17, v28, a4, v38, &v42);
  if ((a5 & 4) == 0 || result)
  {
    v30 = v42;
    if (result)
    {
      v35 = 0;
    }

    else
    {
      v35 = v42;
    }

    *v39 = v35;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v30 = v42;
    if ((v42[2] & 0x10) == 0)
    {
      *v39 = v42;
LABEL_44:
      v36 = *(a6 + 8);
      result = 0;
      if (v36)
      {
        v30[53] = v36;
      }

      return result;
    }

    if (a5)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    btree_node_release(v42, v37 & (a5 << 30 >> 31));
    *v39 = 0;
    return 2;
  }

  return result;
}

uint64_t btree_get(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a7;
  v13 = a5;
  return btree_get_extended(a1, a2, a3, a4, a6, v11, a9, a10);
}

uint64_t btree_iterate_nodes(uint64_t a1, unint64_t a2, int a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v102 = a5;
  v103 = a6;
  v104 = a4;
  v101 = a2;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112 = v8;
  v113 = v8;
  v110 = v8;
  v111 = v8;
  v108 = v8;
  v109 = v8;
  v106 = v8;
  v107 = v8;
  __chkstk_darwin(a1);
  v10 = (&v86 - v9);
  bzero(&v86 - v9, v11);
  v100 = a3 & 0x180;
  v12 = v100 != 0;
  if (a3)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  obj_lock(a1, v13);
  v14 = *(a1 + 56);
  if (!v14)
  {
    obj_unlock(a1, v13);
    return 22;
  }

  v15 = *(v14 + 34);
  v16 = v15 + 1;
  v99 = v15;
  if (v15 < 8)
  {
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v17 = &v106;
    v106 = 0u;
    v107 = 0u;
  }

  else
  {
    v17 = _apfs_calloc_typed(v15 + 1, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v17)
    {
      obj_unlock(a1, v13);
      return 12;
    }
  }

  *v17 = a1;
  *(v17 + 4) = 0;
  obj_retain(a1);
  if (a3)
  {
    v18 = obj_modify(a1, 2, v103);
    if (v18)
    {
      goto LABEL_13;
    }

    if ((*(a1 + 400) & 0x80) != 0)
    {
      obj_dirty(a1, v103, 0);
    }
  }

  v18 = 0;
LABEL_13:
  v19 = a3 & 0x20;
  v97 = &v86;
  v96 = v16;
  if (!v104 || v18 | v19)
  {
    v20 = v102;
    if (v18)
    {
      goto LABEL_99;
    }

    goto LABEL_21;
  }

  v20 = v102;
  if ((a3 & 0x10) == 0 || *(*(a1 + 56) + 34))
  {
    v18 = (v104)(a1, v102);
  }

  if (!v18)
  {
LABEL_21:
    v21 = 0;
    v89 = a3 & 0xFFFFFE4F;
    v22 = a3 & 0xFFFFFE4D | 2;
    v91 = a3 & 0xFFFFFE4C;
    if (v100)
    {
      v22 = a3 & 0xFFFFFE4C;
    }

    v23 = v19 == 0;
    if (v104)
    {
      v24 = v19 != 0;
    }

    else
    {
      v24 = 0;
    }

    v88 = v12 << 7;
    v98 = (v12 << 7) | v22;
    v90 = v22 | 0x100;
    if (v104)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v93 = v25;
    v95 = v17;
    v94 = v24;
    do
    {
      v26 = &v17[v21];
      v27 = *v26;
      v28 = *(*v26 + 56);
      if ((*(v28 + 32) & 2) != 0 || (v29 = v26[4], *(v28 + 36) <= v29) || (a3 & 0x10) != 0 && *(v28 + 34) == 1)
      {
        if (v24)
        {
          v18 = v104();
          v27 = *v26;
        }

        else
        {
          v18 = 0;
        }

        btree_node_release(v27, v13);
        *v26 = 0;
        --v21;
        if (v18)
        {
          break;
        }

        continue;
      }

      *v10 = 0;
      v30 = btree_node_child_val(v27, v29, v10);
      if (v30)
      {
        v18 = v30;
        v55 = *(a1 + 8);
        if (v55)
        {
          v56 = (v55 + 4040);
        }

        else
        {
          v56 = (*(*(*a1 + 392) + 384) + 212);
        }

        v61 = *(*(*v26 + 56) + 34);
        v62 = obj_oid(*v26);
        log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child oid: %d\n", "btree_iterate_nodes", 6433, v56, v61, v62, v26[4], v18);
        break;
      }

      ++v26[4];
      if (v99 < ++v21)
      {
        v57 = *(a1 + 8);
        if (v57)
        {
          v58 = (v57 + 4040);
        }

        else
        {
          v58 = (*(*(*a1 + 392) + 384) + 212);
        }

        v63 = &v17[v21];
        v64 = *(v63 - 2);
        v65 = *(*(v64 + 56) + 34);
        v66 = obj_oid(v64);
        log_err("%s:%d: %s level %d node 0x%llx index %d: more levels than expected\n", "btree_iterate_nodes", 6440, v58, v65, v66, *(v63 - 4) - 1);
        v18 = 22;
        break;
      }

      v31 = &v17[v21];
      *(v31 + 4) = 0;
      v32 = (v31 - 1);
      v33 = btree_node_get(a1, v10, v101, v98, *(*(*(v31 - 2) + 56) + 34) - 1, v103, v31);
      v18 = v33;
      if (v33)
      {
        v34 = *(a1 + 8);
        if (v34)
        {
          v35 = (v34 + 4040);
          v36 = *(*(*v32 + 56) + 34);
          v37 = obj_oid(*v32);
          v33 = log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v35, v36, v37, *(v31 - 4) - 1, *v10, v98, v18);
        }

        else
        {
          v38 = (*(*(*a1 + 392) + 384) + 212);
          v39 = *(*(*v32 + 56) + 34);
          v40 = obj_oid(*v32);
          v33 = log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v38, v39, v40, *(v31 - 4) - 1, *v10, v98, v18);
        }

        v20 = v102;
        if (!v100)
        {
          goto LABEL_95;
        }
      }

      else if (!v100)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (*(*(*(v31 - 2) + 56) + 36) > *(v31 - 4))
      {
        v92 = &v86;
        __chkstk_darwin(v33);
        v42 = (&v86 - v41);
        bzero(&v86 - v41, v43);
        v44 = *(v31 - 4);
        if (*(*(*v32 + 56) + 36) > v44)
        {
          v45 = btree_node_child_val(*v32, v44, v42);
          if (v45 || (v45 = btree_node_get(a1, v42, v101, v90, *(*(*v32 + 56) + 34) - 1, v103, &v105), v45))
          {
            v87 = v45;
            v46 = *(a1 + 8);
            if (v46)
            {
              v86 = (v46 + 4040);
            }

            else
            {
              v86 = (*(*(*a1 + 392) + 384) + 212);
            }

            v47 = *(*(*v32 + 56) + 34);
            v48 = obj_oid(*v32);
            log_err("%s:%d: %s level %d node 0x%llx: error prefetching index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6474, v86, v47, v48, *(v31 - 4), *v42, v90, v87);
            v20 = v102;
          }
        }
      }

      if (v18)
      {
        if (v18 != 45 && v18 != 16)
        {
          goto LABEL_95;
        }

        v50 = btree_node_get(a1, v10, v101, v91, *(*(*v32 + 56) + 34) - 1, v103, v31);
        if (v50)
        {
          v18 = v50;
LABEL_95:
          v77 = *(a1 + 8);
          if (v77)
          {
            v78 = (v77 + 4040);
          }

          else
          {
            v78 = (*(*(*a1 + 392) + 384) + 212);
          }

          v79 = *(*(*v32 + 56) + 34);
          v80 = obj_oid(*v32);
          log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child flags 0x%x: %d\n", "btree_iterate_nodes", 6510, v78, v79, v80, *(v31 - 4) - 1, v89 | v88 | 2, v18);
          v17 = v95;
          break;
        }
      }

      else
      {
        v51 = obj_async_wait(*v31);
        if (v51)
        {
          v18 = v51;
          v67 = *(a1 + 8);
          if (v67)
          {
            v68 = (v67 + 4040);
          }

          else
          {
            v68 = (*(*(*a1 + 392) + 384) + 212);
          }

          v73 = *(*(*v31 + 56) + 34);
          v74 = obj_oid(*v32);
          v75 = *(v31 - 4) - 1;
          v76 = obj_oid(*v31);
          log_err("%s:%d: %s level %d node 0x%llx: error ON WAIT getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6487, v68, v73, v74, v75, v76, v98, v18);
          obj_release(*v31);
          goto LABEL_94;
        }
      }

      obj_lock(*v31, v13);
      if ((a3 & 1) == 0)
      {
        goto LABEL_71;
      }

      v52 = *v31;
      v53 = obj_type_and_flags(*v31);
      v54 = obj_modify(v52, (v53 >> 29) & 2, v103);
      if (v54)
      {
        v18 = v54;
        v59 = *(a1 + 8);
        if (v59)
        {
          v60 = (v59 + 4040);
        }

        else
        {
          v60 = (*(*(*a1 + 392) + 384) + 212);
        }

        v69 = *(*(*v31 + 56) + 34);
        v70 = obj_oid(*v32);
        v71 = *(v31 - 4) - 1;
        v72 = obj_oid(*v31);
        log_err("%s:%d: %s level %d node 0x%llx: error MODIFYING index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6501, v60, v69, v70, v71, v72, v98, v18);
        btree_node_release(*v31, 2);
LABEL_94:
        *v31 = 0;
        goto LABEL_95;
      }

LABEL_69:
      if (obj_oid(*v31) != *v10)
      {
        sub_100019AFC(*(v31 - 2), (*(v31 - 4) - 1), (*v31 + 112), v103);
      }

LABEL_71:
      if (v93)
      {
        v18 = (v104)(*v31, v20);
      }

      else
      {
        v18 = 0;
      }

      v17 = v95;
      v24 = v94;
      if (v18)
      {
        break;
      }
    }

    while ((v21 & 0x8000) == 0);
  }

LABEL_99:
  v81 = v96;
  if (((v96 - 1) & 0x8000) == 0)
  {
    v82 = v99 + 1;
    v83 = &v17[v99];
    do
    {
      if (*v83)
      {
        btree_node_release(*v83, v13);
      }

      --v83;
    }

    while (v82-- > 1);
  }

  if (v17 != &v106)
  {
    _apfs_free(v17, (16 * v81));
  }

  return v18;
}

uint64_t btree_level_count(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(v2 + 34) + 1;
  return result;
}

uint64_t btree_node_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __chkstk_darwin(a1);
  v11 = (&v22 - v10);
  bzero(&v22 - v10, v12);
  if (a5 == 2)
  {
    if (obj_type(a1) == 13)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    *(a4 + 8) = v14;
    v15 = obj_subtype(a4);
    v16 = tree_key_compare_function_for_type(v15);
    if (!v16)
    {
      return 22;
    }

    *(a4 + 416) = v16;
    if (a4 != a3)
    {
      *(a4 + 400) = *(a3 + 400);
    }

    v13 = obj_checkpoint_known(a4);
    goto LABEL_11;
  }

  if (a5 == 1)
  {
    v13 = obj_checkpoint_start(a4);
LABEL_11:
    v17 = v13;
    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:
  if (!(*(*(a4 + 56) + 32) & 2 | v17))
  {
    v18 = 0;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    while (v18 < *(*(a4 + 56) + 36))
    {
      *v11 = 0;
      v19 = btree_node_child_val(a4, v18, v11);
      if (v19)
      {
        return v19;
      }

      v19 = btree_node_get(a3, v11, 0, 2u, *(*(a4 + 56) + 34) - 1, 0, &v22);
      if (v19)
      {
        return v19;
      }

      v20 = v22;
      v17 = btree_node_checkpoint_traverse(a1, a2, a3, v22, a5);
      obj_unlock(v20, 1);
      obj_release(v20);
      ++v18;
      if (v17)
      {
        return v17;
      }
    }

    return 0;
  }

  return v17;
}

uint64_t btree_node_copy(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  __chkstk_darwin(a1);
  v15 = (&v40 - v14);
  bzero(&v40 - v14, v16);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v17 = (a3 >> 26) & 0x10 | a4 | (8 * (a3 >> 31)) | (a3 >> 22) & 0x20;
  LODWORD(v45[0]) = 2123139;
  *(v45 + 8) = *(a2 + 400);
  v18 = *(a2 + 416);
  *(&v45[0] + 1) = *(&v45[0] + 1) & 0xFFFFFFFFFFFFFE00 | BYTE8(v45[0]) & 0x47 | v17 & 0x1B8;
  *(&v45[1] + 1) = v18;
  v19 = *(a2 + 56);
  WORD2(v45[0]) = *(v19 + 32) & 0x1B;
  WORD3(v45[0]) = *(v19 + 34);
  v20 = *(a2 + 8);
  if (!v20)
  {
    v20 = *(*a2 + 392);
  }

  v43 = -21846;
  v21 = obj_subtype(a2);
  v22 = sub_10001F2E0(v20, a3, v21, v45, a5, a7);
  v23 = v22;
  if (!a6 || *(*(a2 + 56) + 32) & 2 | v22)
  {
    if (!v22)
    {
      v24 = a7;
      v25 = *(*a7 + 56);
      v26 = *(a2 + 56);
      v27 = obj_size_phys(a2) - 32;
      v28 = (v25 + 32);
      v29 = v24;
      memcpy(v28, (v26 + 32), v27);
      v30 = *v24;
      if (*(*(a2 + 56) + 32))
      {
        v31 = *(v30 + 392);
        *v31 = WORD4(v45[0]) & 0x1FF;
        v31[1] = (*(&v45[0] + 1) >> 27) & 0x1F000;
        v31[2] = (DWORD2(v45[0]) >> 9) & 0x3FFF;
        v31[3] = (*(&v45[0] + 1) >> 23);
      }

      sub_100020BF4(v30, v45, 0);
      v23 = 0;
      goto LABEL_28;
    }

    return v23;
  }

  v41 = a7;
  v32 = 0;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v42 = (a3 >> 23) & 0x200;
  while (1)
  {
    if (v32 >= *(*(a2 + 56) + 36))
    {
      v23 = 0;
      goto LABEL_27;
    }

    *v15 = 0;
    v33 = btree_node_child_val(a2, v32, v15);
    if (v33 || (v33 = btree_node_get(a1, v15, 0, v42 | 2u, *(*(a2 + 56) + 34) - 1, 0, &v47), v33))
    {
      v23 = v33;
      goto LABEL_27;
    }

    v34 = v47;
    v35 = btree_node_copy(a1, v47, a3, v17, a5, a6, &v46);
    if (v35)
    {
      break;
    }

    v36 = btree_node_key_ptr(a2, v32, &v44, &v43);
    if (v36)
    {
      v23 = v36;
LABEL_17:
      v37 = a1[1];
      if (v37)
      {
        v38 = (v37 + 4040);
      }

      else
      {
        v38 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_insert_internal failed: %d\n", "btree_node_copy", 6692, v38, v23);
      goto LABEL_21;
    }

    *v15 = v46[14];
    v23 = sub_100019640(*v41, v32, v44, v43, v15, (*(*v41 + 407) & 0x7Fu) + 8, a5);
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_21:
    obj_release(v46);
    obj_unlock(v34, 1);
    obj_release(v34);
    v46 = 0;
    ++v32;
    if (v23)
    {
      goto LABEL_27;
    }
  }

  v23 = v35;
  obj_unlock(v34, 1);
  obj_release(v34);
  if (v46)
  {
    obj_release(v46);
  }

LABEL_27:
  v29 = v41;
  obj_dirty(*v41, a5, 0);
LABEL_28:
  obj_unlock(*v29, 2);
  return v23;
}

uint64_t btree_delete(uint64_t a1, unint64_t a2, void *a3)
{
  obj_lock(a1, 2);
  if ((*(a1 + 19) & 0x80) != 0 || (*(a1 + 400) & 0x80) != 0)
  {
    v8 = btree_delete_node(a1, a1, a2);
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = obj_oid(v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = *(*a1 + 392);
    v11 = obj_type_and_flags(a1);
    v12 = obj_size_phys(a1);
    v13 = obj_oid(a1);
    if (a3)
    {
      v14 = sub_100005FA0(v10, v11, v12, v7, v13, a2, 0, a3);
    }

    else
    {
      v14 = sub_100005FC4(v10, v11, v12, v7, v13, a2, 0);
    }

    v8 = v14;
    if (v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = (v15 + 4040);
      }

      else
      {
        v16 = (*(*(*a1 + 392) + 384) + 212);
      }

      v17 = obj_oid(a1);
      v18 = obj_type_and_flags(a1);
      log_err("%s:%d: %s error adding btree 0x%llx type 0x%x to reap list: %d\n", "btree_delete", 6818, v16, v17, v18, v8);
    }
  }

  obj_unlock(a1, 2);
  return v8;
}

uint64_t btree_delete_node(void *a1, uint64_t *a2, uint64_t a3)
{
  __chkstk_darwin(a1);
  v7 = (&v14 - v6);
  bzero(&v14 - v6, v8);
  if ((*(a2[7] + 32) & 2) == 0)
  {
    v9 = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    while (v9 < *(a2[7] + 36))
    {
      *v7 = 0;
      v10 = btree_node_child_val(a2, v9, v7);
      if (v10 || (v10 = btree_node_get(a1, v7, 0, 0, *(a2[7] + 34) - 1, 0, &v14), v10))
      {
        v12 = v10;
        goto LABEL_10;
      }

      v11 = v14;
      obj_lock(v14, 2);
      v12 = btree_delete_node(a1, v11, a3);
      obj_unlock(v11, 2);
      obj_release(v11);
      ++v9;
      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = 0;
LABEL_10:
  obj_delete_and_free(a2, a3);
  return v12;
}

uint64_t btree_node_count(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (obj_type(a1) != 2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(*(a1 + 392) + 32);
  return result;
}

uint64_t sub_100020BF4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 56);
  result = btree_node_sanity_check(a1, a2);
  if (!result)
  {
    if (a2)
    {
      *(a1 + 400) = *(a2 + 8);
      *(a1 + 416) = *(a2 + 24);
    }

    v8 = v6 + 56 + *(v6 + 42);
    *(a1 + 376) = v6 + 56;
    *(a1 + 384) = v8;
    v9 = obj_size_phys(a1);
    v10 = *(v6 + 32);
    v11 = -40;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = v6 + v9 + v11;
    *(a1 + 392) = v12;
    if (v10)
    {
      v13 = *(a1 + 400) & 0xFFFFFFFFFFFFFE00 | *v12 & 0x1FF;
      *(a1 + 400) = v13;
      v14 = v13 & 0xFFFFF07FFFFFFFFFLL | (((*(v12 + 4) >> 12) & 0x1F) << 39);
      *(a1 + 400) = v14;
      v15 = v14 & 0xFFFFFFFFFF8001FFLL | ((*(v12 + 8) & 0x3FFFLL) << 9);
      *(a1 + 400) = v15;
      *(a1 + 400) = v15 & 0xFFFFFF80007FFFFFLL | (*(v12 + 12) << 23);
      *(a1 + 408) = obj_oid(a1);
    }

    if (a3)
    {

      return authapfs_validate_node(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100020CF0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1[16] & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      v3 = 0;
      return (v1[23] + v3 + v1[25] + v1[27]);
    }

    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  v4 = v1[21];
  v5 = btree_node_toc_required_capacity(a1, 0);
  v3 = v4 - v5 * v2;
  if (v4 < (v5 * v2))
  {
    v3 = 0;
  }

  return (v1[23] + v3 + v1[25] + v1[27]);
}

uint64_t sub_100020D70(uint64_t result, int a2, unsigned __int16 a3, __int16 *a4, unsigned __int16 *a5)
{
  if ((*(result + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 48;
  if (a2 != 1)
  {
    v6 = 52;
  }

  v7 = 392;
  if (a2 == 1)
  {
    v7 = 384;
  }

  v8 = *(*(result + 56) + v6);
  v9 = -1;
  if (v8 == 0xFFFF)
  {
    v13 = -1;
    if (a4)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v11 = result;
  v24 = a4;
  v25 = a5;
  v12 = *(result + v7);
  v13 = -1;
  do
  {
    v9 = v8;
    v14 = v8;
    if (a2 == 1)
    {
      v15 = *(*(v11 + 56) + 44);
      v16 = v15 >= v9;
      v17 = v15 - v9;
      if (v17 != 0 && v16 && v17 >= 4)
      {
        v20 = *(*(v11 + 384) + v14 + 2);
        if (v20 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v20 = (v20 + 7) & 0x1FFF8;
          }

          if (v20 <= v17)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      result = obj_size_phys(v11);
      v18 = *(v11 + 56);
      if (*(v18 + 32))
      {
        v19 = -96;
      }

      else
      {
        v19 = -56;
      }

      if (v9 <= (result - *(v18 + 42) + v19 - (*(v18 + 46) + *(v18 + 44))) && v9 >= 4u)
      {
        v21 = *(*(v11 + 392) - v14 + 2);
        if (v21 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v21 = (v21 + 7) & 0x1FFF8;
          }

          if (v21 <= v9)
          {
            goto LABEL_33;
          }
        }
      }
    }

    result = nx_corruption_detected_int(*(*v11 + 392));
    if (result)
    {
      break;
    }

LABEL_33:
    if (a2 == 1)
    {
      v22 = v14;
    }

    else
    {
      v22 = -v14;
    }

    v23 = (v12 + v22);
    if (v23[1] >= v5)
    {
      goto LABEL_39;
    }

    v8 = *v23;
    v13 = v9;
  }

  while (v8 != 0xFFFF);
  v9 = -1;
  v13 = -1;
LABEL_39:
  a4 = v24;
  a5 = v25;
  if (v24)
  {
LABEL_40:
    *a4 = v13;
  }

LABEL_41:
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_100020F90(uint64_t a1, __int16 a2, uint64_t a3)
{
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(a1 + 56);
  v7 = *(v6 + 32);
  if (v7)
  {
    v10 = btree_node_copy(0, a1, 0x88000000uLL, (16 * v7) & 0x180, a3, 0, &v53);
    if (v10)
    {
      return v10;
    }

    v11 = *(a1 + 56);
    *(v11 + 36) = 0;
    *(v11 + 44) = 0;
    v12 = *(a1 + 376);
    v13 = *(a1 + 392) - *(a1 + 384);
    *(v11 + 46) = v13;
    *(v11 + 48) = 0xFFFF0000FFFFLL;
    bzero(v12, *(v11 + 42) + v13);
    v14 = v53;
    v15 = v53[7];
    goto LABEL_11;
  }

  v48 = 2123139;
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v49 = v7;
  v50 = *(v6 + 34);
  v8 = *(a1 + 40);
  v47[0] = *(a1 + 36);
  v47[1] = v8;
  v47[2] = (*(a1 + 400) >> 27) & 0x1F000;
  v47[3] = 448;
  v9 = obj_create(*a1, 2281701376, 0, v47, &v48, *(a1 + 8), a3, &v53);
  if (!v9)
  {
    v16 = v53;
    v17 = v53[7];
    v18 = *(a1 + 56);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = obj_exchange_phys(a1, v16);
    if (v20)
    {
      v10 = v20;
      v21 = *(a1 + 8);
      if (v21)
      {
        v22 = (v21 + 4040);
      }

      else
      {
        v22 = (*(*(*a1 + 392) + 384) + 212);
      }

      v23 = obj_oid(a1);
      v24 = obj_oid(v53);
      log_err("%s:%d: %s obj_exchange_phys (%llx, %llx) with xid %llu failed: %d\n", "btree_node_compact", 1572, v22, v23, v24, a3, v10);
LABEL_38:
      obj_free(v53);
      obj_release(v53);
      obj_dirty(a1, a3, 0);
      return v10;
    }

    sub_100020BF4(a1, &v48, 0);
    sub_100020BF4(v53, &v48, 0);
    v14 = v53;
    v15 = v53[7];
    *(*(a1 + 56) + 32) |= *(v15 + 32) & 0x8000;
LABEL_11:
    v25 = btree_node_toc_required_capacity(v14, a2);
    v26 = 2;
    if ((*(v15 + 32) & 4) == 0)
    {
      v26 = 3;
    }

    sub_100021570(a1, (v25 << v26) & 0xFFFC);
    v27 = v53;
    v28 = v53[7];
    if (*(v28 + 36))
    {
      v29 = 0;
      while (1)
      {
        v30 = *(v28 + 32);
        v31 = v27[47];
        v32 = v29;
        v33 = (v31 + 4 * v29);
        v34 = (v31 + 8 * v29);
        if ((v30 & 4) == 0)
        {
          v33 = v34;
        }

        v35 = v31 + 8 * v32;
        if ((v30 & 4) != 0)
        {
          v36 = (*(v27 + 100) >> 9) & 0x3FFF;
        }

        else
        {
          v36 = *(v35 + 2);
        }

        v37 = *v33;
        v38 = v31 + 4 * v32 + 2;
        v39 = (v35 + 4);
        if ((v30 & 4) != 0)
        {
          v39 = v38;
        }

        v40 = *v39;
        v41 = btree_node_val_len(v27, v32);
        if (v37 == 0xFFFF)
        {
          v43 = 0;
        }

        else
        {
          v42 = sub_100016954(v27, v37, v36);
          if (v42)
          {
            break;
          }

          v27 = v53;
          v43 = (v53[48] + v37);
        }

        if (v40 > 0xFFFD)
        {
          v44 = 0;
        }

        else
        {
          v42 = sub_100016A80(v27, v40, v41);
          if (v42)
          {
            break;
          }

          v44 = (v53[49] - v40);
        }

        v42 = sub_100019640(a1, v32, v43, v36, v44, v41, a3);
        if (v42)
        {
          break;
        }

        v29 = v32 + 1;
        v27 = v53;
        v28 = v53[7];
        if (*(v28 + 36) <= (v32 + 1))
        {
          goto LABEL_32;
        }
      }

      v10 = v42;
      if (v7)
      {
        memcpy((*(a1 + 56) + 32), (v53[7] + 32), v53[49] - v53[7] - 32);
        v45 = a1;
      }

      else
      {
        obj_exchange_phys(a1, v53);
        sub_100020BF4(a1, 0, 0);
        v45 = v53;
      }

      sub_100020BF4(v45, 0, 0);
    }

    else
    {
LABEL_32:
      v10 = 0;
    }

    goto LABEL_38;
  }

  return v9;
}

uint64_t sub_100021374(uint64_t a1, int a2, unsigned __int16 a3, int a4, int a5)
{
  if (a5 == 0xFFFF)
  {
    return 22;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 52;
  if (a2 == 1)
  {
    v6 = 48;
  }

  v7 = 384;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = 392;
    v8 = -1;
  }

  v9 = (*(a1 + 56) + v6);
  v10 = *(a1 + v7);
  v9[1] -= v5;
  if (a4 != 0xFFFF || (result = 0, *v9 == a5))
  {
    v12 = v5;
    v13 = v8;
    v14 = (v10 + a5 * v8);
    v15 = v14[1] - v12;
    if (v15 < 5u)
    {
      v17 = (v10 + v8 * a4);
      if (a4 == 0xFFFF)
      {
        v17 = v9;
      }
    }

    else
    {
      if (a4 != 0xFFFF)
      {
        v9 = (v10 + v8 * a4);
      }

      v16 = v8 * v12 + a5;
      *v9 = v16;
      v17 = (v10 + v13 * v16);
      v17[1] = v15;
    }

    result = 0;
    *v17 = *v14;
  }

  return result;
}

uint64_t sub_100021464(uint64_t a1, int a2, unsigned __int16 a3, _WORD *a4)
{
  v14 = -1;
  v13 = -1;
  sub_100020D70(a1, a2, a3, &v13, &v14);
  if (v14 == 0xFFFF)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = (a3 + 7) & 0xFFF8;
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 46);
    if (v12 < v10)
    {
      return 28;
    }

    if (a2 == 1)
    {
      LOWORD(v9) = *(v11 + 44);
      *(v11 + 44) = v9 + v10;
      *(v11 + 46) = v12 - v10;
    }

    else
    {
      *(v11 + 46) = v12 - v10;
      if (a2 == 2)
      {
        v9 = *(a1 + 392) - *(v11 + 44) - (*(a1 + 384) + (v12 - v10));
      }

      else
      {
        LOWORD(v9) = -1;
      }
    }
  }

  else
  {
    result = sub_100021374(a1, a2, a3, v13, v14);
    if (result)
    {
      return result;
    }

    LOWORD(v9) = v14;
  }

  result = 0;
  *a4 = v9;
  return result;
}

void sub_100021570(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 42);
  v5 = v4 - a2;
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    memmove((*(a1 + 384) - v5), *(a1 + 384), *(v3 + 44));
    *(a1 + 384) -= v5;
    v7 = *(a1 + 56);
    *(v7 + 46) += v5;
    v8 = *(v7 + 42) - v5;
  }

  else
  {
    v6 = a2 - v4;
    memmove((*(a1 + 384) + (a2 - v4)), *(a1 + 384), *(v3 + 44));
    bzero(*(a1 + 384), v6);
    *(a1 + 384) += v6;
    v7 = *(a1 + 56);
    *(v7 + 46) -= v6;
    v8 = *(v7 + 42) + v6;
  }

  *(v7 + 42) = v8;
}

void *sub_100021624(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = (a3 + a2) << v5;
  v7 = a2 + -a3;
  if ((v4 & 4) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = v7 << v8;
  if (a3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v6 = a2 << v8;
  }

  if (a3 >= 0)
  {
    v8 = v5;
    v9 = (a2 << v5);
  }

  return memmove((*(a1 + 376) + v6), (*(a1 + 376) + v9), ((*(v3 + 36) - v7) << v8) & 0xFFFC);
}

uint64_t sub_100021694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  if (a8 != 8)
  {
    return 22;
  }

  result = 0;
  *a5 = *a7;
  return result;
}

uint64_t sub_1000216B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 0)
  {
    LOWORD(v7) = a3;
  }

  else
  {
    v7 = -a3;
  }

  v8 = v7;
  if (a3 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (a3 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  v11 = *(v10 + 56);
  if ((v11[16] & 4) != 0)
  {
    if ((*(v10 + 400) & 4) == 0)
    {
      goto LABEL_19;
    }

    v12 = 4;
  }

  else
  {
    v12 = 8;
  }

  v13 = btree_node_toc_required_capacity(v10, v7) * v12;
  v14 = v11[21];
  if (v14 >= v13)
  {
    goto LABEL_19;
  }

  if (v13 - v14 <= v11[23])
  {
    sub_100021570(v10, v13);
    goto LABEL_19;
  }

  v15 = sub_100020F90(v10, v8, a4);
  if (!v15)
  {
LABEL_19:
    memset(__n, 170, sizeof(__n));
    v58 = -21846;
    if (v9 == a2)
    {
      if (v8 < 1)
      {
        v37 = 0;
        v38 = 0;
LABEL_60:
        v15 = 0;
      }

      else
      {
        v36 = btree_node_key_ptr(a2, 0, &__n[10], __n);
        if (v36)
        {
          v15 = v36;
          v37 = 0;
          v38 = 0;
        }

        else
        {
          v38 = 0;
          do
          {
            v39 = btree_node_val_ptr(a2, v38, &__n[2], &v58);
            if (v39)
            {
              break;
            }

            v39 = sub_100019640(a1, *(*(a1 + 56) + 36), *&__n[10], *__n, *&__n[2], v58, a4);
            if (v39)
            {
              break;
            }

            v40 = *(a2 + 56);
            v41 = *(a2 + 376);
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v42 = *__n;
            }

            else
            {
              v42 = (*__n + 7) & 0xFFF8;
            }

            v43 = (v42 + 7) & 0xFFF8;
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v43 = *__n;
            }

            if (v43 >= 4u)
            {
              if ((v40[16] & 4) != 0)
              {
                v44 = (v41 + 4 * v38);
              }

              else
              {
                v44 = (v41 + 8 * v38);
              }

              v45 = *v44;
              v46 = (*(a2 + 384) + v45);
              v46[1] = v43;
              *v46 = v40[24];
              v40[24] = v45;
            }

            v40[25] += v43;
            v47 = v58;
            if (v58 && v58 != 65534)
            {
              if ((*(a2 + 400) & 0x40) != 0)
              {
                v48 = v58;
              }

              else
              {
                v48 = (v58 + 7) & 0xFFF8;
              }

              v49 = (v48 + 7) & 0xFFF8;
              if ((*(a2 + 400) & 0x40) == 0)
              {
                v47 = v49;
              }

              if (v47 >= 4u)
              {
                v50 = v41 + 8 * v38 + 4;
                v51 = (v41 + 4 * v38 + 2);
                if ((v40[16] & 4) == 0)
                {
                  v51 = v50;
                }

                v52 = *v51;
                v53 = (*(a2 + 392) - v52);
                v53[1] = v47;
                *v53 = v40[26];
                v40[26] = v52;
              }

              v40[27] += v47;
            }

            v37 = ++v38;
            if (v38 >= v8)
            {
              goto LABEL_60;
            }

            v39 = btree_node_key_ptr(a2, v38, &__n[10], __n);
          }

          while (!v39);
          v15 = v39;
          v37 = v38;
        }
      }

      sub_100021624(a2, 0, -v37);
      *(*(a2 + 56) + 36) -= v38;
    }

    else if (v8 < 1)
    {
      v15 = 0;
    }

    else
    {
      sub_100021624(a2, 0, v8);
      v16 = 0;
      v17 = *(a2 + 56);
      *(v17 + 36) += v8;
      *(v17 + 32) |= 0x8000u;
      v18 = *(a2 + 376);
      do
      {
        if ((*(v17 + 32) & 4) != 0)
        {
          *(v18 + 4 * v16) = -1;
        }

        else
        {
          *(v18 + 8 * v16) = 0xFFFF0000FFFFLL;
        }

        ++v16;
      }

      while (v8 > v16);
      LOWORD(v19) = 0;
      v20 = *(*(a1 + 56) + 36);
      while (1)
      {
        v21 = btree_node_key_ptr(a1, (v20 - 1), &__n[10], __n);
        if (v21)
        {
          break;
        }

        v21 = btree_node_val_ptr(a1, (*(*(a1 + 56) + 36) - 1), &__n[2], &v58);
        if (v21)
        {
          break;
        }

        v21 = sub_100018CDC(a2, (v8 + ~v19), *&__n[10], *__n, *&__n[2], v58, a4);
        if (v21)
        {
          break;
        }

        v22 = *(a1 + 56);
        v20 = *(v22 + 36) - 1;
        *(v22 + 36) = v20;
        v23 = *(a1 + 376);
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v24 = *__n;
        }

        else
        {
          v24 = (*__n + 7) & 0xFFF8;
        }

        v25 = (v24 + 7) & 0xFFF8;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v25 = *__n;
        }

        if (v25 >= 4u)
        {
          if ((*(v22 + 32) & 4) != 0)
          {
            v26 = (v23 + 4 * v20);
          }

          else
          {
            v26 = (v23 + 8 * v20);
          }

          v27 = *v26;
          v28 = (*(a1 + 384) + v27);
          v28[1] = v25;
          *v28 = *(v22 + 48);
          *(v22 + 48) = v27;
        }

        *(v22 + 50) += v25;
        v29 = v58;
        if (v58 && v58 != 65534)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v30 = v58;
          }

          else
          {
            v30 = (v58 + 7) & 0xFFF8;
          }

          v31 = (v30 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) == 0)
          {
            v29 = v31;
          }

          if (v29 >= 4u)
          {
            v32 = v23 + 8 * v20 + 4;
            v33 = (v23 + 4 * v20 + 2);
            if ((*(v22 + 32) & 4) == 0)
            {
              v33 = v32;
            }

            v34 = *v33;
            v35 = (*(a1 + 392) - v34);
            v35[1] = v29;
            *v35 = *(v22 + 52);
            *(v22 + 52) = v34;
          }

          *(v22 + 54) += v29;
        }

        v19 = (v19 + 1);
        if (v19 >= v8)
        {
          v15 = 0;
          *(*(a2 + 56) + 32) &= ~0x8000u;
          goto LABEL_90;
        }
      }

      v15 = v21;
      *(*(a2 + 56) + 32) &= ~0x8000u;
      sub_100021624(a2, 0, (v19 - v8));
    }

LABEL_90:
    v54 = *(v9 + 56);
    if ((*(v54 + 32) & 4) != 0)
    {
      if ((*(v9 + 400) & 4) == 0)
      {
LABEL_96:
        *(v9 + 440) = 0;
        obj_dirty(a1, a4, 0);
        obj_dirty(a2, a4, 0);
        return v15;
      }

      v55 = 4;
    }

    else
    {
      v55 = 8;
    }

    v56 = btree_node_toc_required_capacity(v9, 8);
    if (*(v54 + 42) > (v56 * v55))
    {
      sub_100021570(v9, (v56 * v55));
    }

    goto LABEL_96;
  }

  return v15;
}

void sub_100021C1C(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 2123139;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = *(a1 + 56);
  v10 = *(v6 + 32) & 0x18 | v5;
  v11 = a2;
  v12 = *(a1 + 400);
  v13 = *(a1 + 416);
  bzero((v6 + 32), ((*(a1 + 400) >> 27) & 0x1F000) - 72);
  v7 = *(a1 + 56);
  v8 = obj_size_phys(a1);
  sub_1000160CC(v7, v8, &v9);
  sub_100020BF4(a1, &v9, 0);
  obj_dirty(a1, a3, 0);
}

void *sub_100021CE0(void *result, uint64_t a2, uint64_t a3)
{
  if (result[54] == *(a3 + 112))
  {
    v4 = result;
    v5 = *(a2 + 56);
    if ((*(v5 + 32) & 2) != 0 || !*(v5 + 36))
    {
      result[54] = *(a2 + 112);
    }

    else
    {
      __chkstk_darwin(result);
      v7 = (&v12 - v6);
      bzero(&v12 - v6, v8);
      result = btree_node_child_val(a2, (*(*(a2 + 56) + 36) - 1), v7);
      if (result)
      {
        v9 = v4[1];
        if (v9)
        {
          v10 = (v9 + 4040);
        }

        else
        {
          v10 = (*(*(*v4 + 392) + 384) + 212);
        }

        result = log_err("%s:%d: %s failed to update rightmost leaf field: %d\n", "bt_update_last_leaf", 2521, v10, result);
        v11 = 0;
      }

      else
      {
        v11 = *v7;
      }

      v4[54] = v11;
    }
  }

  return result;
}

void sub_100021E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = a6;
  v71 = a6;
  __chkstk_darwin(a1);
  v17 = (&v62 - v16);
  bzero(&v62 - v16, v18);
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v68 = -21846;
  v19 = *(a4 + 56);
  if (!a2)
  {
    if ((*(v19 + 32) & 2) != 0 || *(v19 + 36) != 1)
    {
      return;
    }

    if (a5 || v10 && (*(v10 + 16) & 0x10) != 0)
    {
      if (btree_node_child_val(a4, 0, v17) || btree_node_get(a1, v17, a7, 3u, *(*(a4 + 56) + 34) - 1, a8, &v71))
      {
        return;
      }

      v10 = v71;
      if ((*(a1 + 400) & 0x10) != 0 && *(v71 + 112) != *v17)
      {
        sub_100019AFC(a4, 0, (v71 + 112), a8);
      }

      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    if (sub_100020CF0(v10) > 0x27)
    {
      v46 = *(v10 + 56);
      if (*(v46 + 46) > 0x27u || ((*(v46 + 32) & 4) == 0 || (*(v10 + 400) & 4) != 0) && (sub_100020F90(v10, 0, a8), *(*(v10 + 56) + 46) > 0x27u))
      {
        sub_10001D83C(a4, 0, a8);
        sub_100021C1C(a4, (*(*(a4 + 56) + 34) - 1), a8);
        v47 = sub_1000216B4(a4, v10, -*(*(v10 + 56) + 36), a8);
        if (!v47)
        {
          sub_100021CE0(a1, a4, v10);
          obj_delete_and_free(v10, a8);
          if (v44)
          {
            obj_unlock(v10, 2);
            obj_release(v10);
          }

          atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
          obj_dirty(a1, a8, 0);
          return;
        }

        v48 = *(a1 + 8);
        if (v48)
        {
          v49 = (v48 + 4040);
        }

        else
        {
          v49 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s failed to move all entries: %d\n", "bt_merge_nodes", 4374, v49, v47);
        sub_1000216B4(a4, v10, *(*(a4 + 56) + 36), a8);
        sub_100021C1C(a4, (*(*(a4 + 56) + 34) + 1), a8);
        if (!btree_node_key_ptr(v10, 0, &v69, &v68))
        {
          *v17 = *(v10 + 112);
          sub_100019640(a4, 0, v69, v68, v17, (*(a4 + 407) & 0x7F) + 8, a8);
        }
      }
    }

    if (!v44)
    {
      return;
    }

    obj_unlock(v10, 2);
    v61 = v10;
    goto LABEL_106;
  }

  if (*(v19 + 36))
  {
    if (*(*(a2 + 56) + 36) - 1 > a3)
    {
      v20 = (a3 + 1);
      if (!btree_node_child_val(a2, v20, v17))
      {
        v70 = 0xAAAAAAAAAAAAAAAALL;
        if (!btree_node_get(a1, v17, a7, 3u, *(*(a2 + 56) + 34) - 1, a8, &v70))
        {
          if ((*(a1 + 400) & 0x10) != 0 && v70[14] != *v17)
          {
            sub_100019AFC(a2, v20, v70 + 14, a8);
          }

          v21 = *(a4 + 56);
          if ((*(v21 + 32) & 4) != 0)
          {
            v50 = *(v21 + 36);
            v24 = v70;
            v66 = v70[7];
            v43 = *(v66 + 36);
            v51 = v43 + v50;
            if (v43 + v50 <= btree_node_toc_required_capacity(a4, 0))
            {
              v67 = 0;
              LOWORD(v29) = v43;
            }

            else
            {
              if (v50 >= (v51 >> 1))
              {
                v29 = 0;
              }

              else
              {
                v29 = (v51 >> 1) - v50;
              }

              v67 = v29;
            }
          }

          else
          {
            v63 = v20;
            v22 = 8 * btree_node_toc_required_capacity(a4, 0);
            v23 = sub_100020CF0(a4);
            v24 = v70;
            v25 = sub_100020CF0(v70);
            v26 = 0;
            v27 = 0;
            v66 = v24[7];
            v67 = 0;
            v28 = *(v66 + 36);
            v64 = v23 - ((v25 + v23) >> 1);
            v65 = v28;
            do
            {
              LOWORD(v29) = v26;
              if (v65 <= v26)
              {
                break;
              }

              if (v26 && !v67)
              {
                v30 = 8 * (btree_node_toc_required_capacity(a4, v26) & 0x1FFF);
                v31 = v30 >= v22;
                v32 = v30 - v22;
                if (!v31)
                {
                  v32 = 0;
                }

                if ((v32 + v27) <= v64)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = v26;
                }

                v67 = v33;
              }

              v34 = v24[50];
              v35 = *(v66 + 32);
              if ((v34 & 0x40) != 0)
              {
                if ((v35 & 4) != 0)
                {
                  v37 = (v34 >> 9) & 0x3FFF;
                }

                else
                {
                  v37 = *(v24[47] + 8 * v29 + 2);
                }
              }

              else
              {
                if ((v35 & 4) != 0)
                {
                  v36 = (v34 >> 9) & 0x3FFF;
                }

                else
                {
                  v36 = *(v24[47] + 8 * v29 + 2);
                }

                v37 = (v36 + 7) & 0x1FFF8;
              }

              v38 = v37 + v27;
              v39 = btree_node_val_len(v24, v29);
              if (v39 == 65534)
              {
                v40 = 0;
              }

              else
              {
                v40 = v39;
              }

              if ((v34 & 0x40) == 0)
              {
                v40 = (v40 + 7) & 0x1FFF8;
              }

              v27 = v38 + v40;
              v26 = (v29 + 1);
              v41 = 8 * (btree_node_toc_required_capacity(a4, v26) & 0x1FFF);
              v31 = v41 >= v22;
              v42 = v41 - v22;
              if (!v31)
              {
                v42 = 0;
              }
            }

            while (v42 + v27 <= v23);
            LOWORD(v20) = v63;
            v43 = v65;
          }

          if (v43 != v29)
          {
            if ((*(*(a2 + 56) + 32) & 4) != 0)
            {
              v52 = (*(a2 + 400) >> 9) & 0x3FFF;
            }

            else
            {
              v52 = *(*(a2 + 376) + 8 * v20 + 2);
            }

            if ((*(v66 + 32) & 4) != 0)
            {
              v53 = (*(v24 + 100) >> 9) & 0x3FFF;
            }

            else
            {
              v53 = *(v24[47] + 8 * v67 + 2);
            }

            v68 = v53;
            v54 = *(a2 + 400);
            if ((v54 & 0x40) != 0)
            {
              v55 = v52;
            }

            else
            {
              v55 = (v52 + 7) & 0x1FFF8;
            }

            v56 = (v53 + 7) & 0x1FFF8;
            if ((v54 & 0x40) != 0)
            {
              v56 = v53;
            }

            if (v55 >= v56)
            {
              LOWORD(v29) = v67;
            }

            else
            {
              if ((v54 & 0x40) == 0)
              {
                LOWORD(v53) = (v53 + 7) & 0xFFF8;
                LOWORD(v52) = (v52 + 7) & 0xFFF8;
              }

              v57 = sub_100019BD4(a2, 0, 0, 0, v53 - v52, 0, 0);
              LOWORD(v29) = v67;
              if (!v57)
              {
                goto LABEL_105;
              }
            }
          }

          if (v29 && !sub_1000216B4(a4, v24, -v29, a8))
          {
            if (*(v24[7] + 36))
            {
              v58 = btree_node_key_ptr(v24, 0, &v69, &v68);
              if (v58 || (v58 = sub_100018CDC(a2, v20, v69, v68, 0, 0, a8)) != 0)
              {
                v59 = *(a1 + 8);
                if (v59)
                {
                  v60 = (v59 + 4040);
                }

                else
                {
                  v60 = (*(*(*a1 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_merge_nodes", 4515, v60, v58);
              }
            }

            else
            {
              sub_10001D83C(a2, v20, a8);
              sub_100021CE0(a1, a2, v24);
              obj_delete_and_free(v24, a8);
              atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
              obj_dirty(a1, a8, 0);
            }
          }

LABEL_105:
          obj_unlock(v24, 2);
          v61 = v24;
LABEL_106:
          obj_release(v61);
        }
      }
    }
  }

  else
  {
    sub_10001D83C(a2, a3, a8);
    v45 = *(a2 + 56);
    if ((*(v45 + 32) & 1) != 0 && !*(v45 + 36))
    {
      sub_100021C1C(a2, 0, a8);
    }

    sub_100021CE0(a1, a2, a4);
    obj_delete_and_free(a4, a8);
    atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);

    obj_dirty(a1, a8, 0);
  }
}

uint64_t btree_node_space_stats(void *a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v5 = a1[7];
  *a2 = (a1[50] >> 27) & 0x1F000;
  LODWORD(v5) = v5[25] + v5[23] + v5[27];
  *a3 = v5;
  v6 = *a2 >= v5;
  v7 = *a2 - v5;
  if (v6)
  {
    result = 0;
  }

  else
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v11 + 4040);
    }

    else
    {
      v12 = (*(*(*a1 + 392) + 384) + 212);
    }

    v14 = obj_oid(a1);
    log_err("%s:%d: %s oid 0x%llx (level %d): freespace %u larger than nodespace %u\n", "btree_node_space_stats", 52, v12, v14, *(a1[7] + 34), *a3, *a2);
    v7 = 0;
    result = 22;
  }

  *a4 = v7;
  return result;
}

uint64_t btree_node_debug_stats(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = a2[7];
  if ((*(v7 + 32) & 2) != 0)
  {
    ++*(a4 + 4);
    *(a4 + 16) += *(v7 + 36);
  }

  else
  {
    ++*a4;
    *(a4 + 12) += *(v7 + 36);
  }

  if (*(a4 + 8) < a3)
  {
    *(a4 + 8) = a3;
  }

  v8 = *(v7 + 34);
  if (v8 <= 0xF)
  {
    ++*(a4 + 4 * v8 + 216);
  }

  v9 = btree_node_sanity_check(a2, 0);
  if (!v9)
  {
    v32 = -1431655766;
    v33 = -1431655766;
    v31 = -1431655766;
    v9 = btree_node_space_stats(a2, &v33, &v32, &v31);
    v10 = v31;
    v11 = v33;
    v12 = 5 * v31 / v33;
    ++*(a4 + 4 * v12 + 20);
    v13 = *(a4 + 56) + v10;
    *(a4 + 48) += v11;
    *(a4 + 56) = v13;
    if ((*(a2[7] + 32) & 2) != 0)
    {
      ++*(a4 + 4 * v12 + 104);
      v15 = *(a4 + 136);
      *(a4 + 128) += v11;
      *(a4 + 136) = v15 + v10;
      if (*(v7 + 36))
      {
        v16 = 0;
        do
        {
          v17 = btree_node_key_len(a2, v16);
          v18 = btree_node_val_len(a2, v16);
          v19 = *(a1 + 392);
          if (*(v19 + 16) < v17)
          {
            if (v9)
            {
              v9 = v9;
            }

            else
            {
              v9 = 22;
            }

            v20 = a2[1];
            if (v20)
            {
              v21 = (v20 + 4040);
            }

            else
            {
              v21 = (*(*(*a2 + 392) + 384) + 212);
            }

            v22 = obj_oid(a2);
            log_err("%s:%d: %s oid 0x%llx (level %d): index %d key length %d longer than tree longest %d\n", "btree_node_debug_stats", 110, v21, v22, *(a2[7] + 34), v16, v17, *(*(a1 + 392) + 16));
            v19 = *(a1 + 392);
            v17 = *(v19 + 16);
          }

          if (v18 == 65534 || *(v19 + 20) < v18 && (v9 ? (v9 = v9) : (v9 = 22), (v23 = a2[1]) == 0 ? (v24 = (*(*(*a2 + 392) + 384) + 212)) : (v24 = (v23 + 4040)), v25 = obj_oid(a2), log_err("%s:%d: %s oid 0x%llx (level %d): index %d val length %d longer than tree longest %d\n", "btree_node_debug_stats", 115, v24, v25, *(a2[7] + 34), v16, v18, *(*(a1 + 392) + 20)), v19 = *(a1 + 392), v18 = *(v19 + 20), v18 == 65534))
          {
            v18 = 0;
          }

          if (*(a4 + 208) < v17)
          {
            *(a4 + 208) = v17;
          }

          if (*(a4 + 212) < v18)
          {
            *(a4 + 212) = v18;
          }

          *(a4 + 144) += v17;
          v26 = *(v19 + 16);
          v27 = (a4 + 180);
          if (v26)
          {
            v27 = (a4 + 160 + 4 * (5 * v17 / v26));
          }

          ++*v27;
          *(a4 + 152) += v18;
          v28 = *(v19 + 20);
          v29 = (a4 + 204);
          if (v28)
          {
            v29 = (a4 + 184 + 4 * (5 * v18 / v28));
          }

          ++*v29;
          ++v16;
        }

        while (v16 < *(v7 + 36));
      }
    }

    else
    {
      ++*(a4 + 4 * v12 + 64);
      v14 = *(a4 + 96) + v10;
      *(a4 + 88) += v11;
      *(a4 + 96) = v14;
    }
  }

  return v9;
}

uint64_t btree_node_check(void *a1, unint64_t a2, _BYTE *a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  if (!a5 || (v12 = a5[7]) == 0)
  {
    v19 = a5[1];
    if (v19)
    {
      v20 = (v19 + 4040);
    }

    else
    {
      v20 = (*(*(*a5 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s btree_node is null\n", "btree_node_check", 152, v20);
    return 22;
  }

  v15 = a6;
  v16 = a1;
  v284 = a2;
  v285 = a4;
  v287 = a3;
  v17 = a5[1];
  if (!v17)
  {
    v17 = *(*a5 + 392);
  }

  v286 = v17;
  if (a9)
  {
    a1 = btree_node_debug_stats(a1, a5, a6, a9);
    v18 = a1;
    if (a1)
    {
      return v18;
    }
  }

  if (!v16 && (a5[4] & 1) == 0)
  {
    return 0;
  }

  v282 = a9;
  v281 = a11;
  v283 = v15;
  if (a11)
  {
LABEL_17:
    v294 = 0;
    v295 = 0xAAAAAAAAAAAAAAAALL;
    v293 = -21846;
    v292 = 0;
    v291 = 0;
    v22 = a5[7];
    v23 = v287;
    v24 = v285;
    if (v287 && *(v22 + 36))
    {
      v25 = btree_node_key_ptr(v287, v285, &v295, &v293);
      if (v25)
      {
        v18 = v25;
        obj_oid(v287);
LABEL_249:
        log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n");
        return v18;
      }

      v33 = btree_node_key_ptr(a5, 0, &v294, &v292);
      if (v33)
      {
        v18 = v33;
        obj_oid(a5);
        goto LABEL_249;
      }

      a1 = (a5[52])(v286, v295, v293, v294, v292, &v291);
      if (a1)
      {
        v18 = a1;
        obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey compare error: %d\n");
        return v18;
      }

      if (v291 >= 1)
      {
        obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey not correct\n");
        return 22;
      }

      if (v291)
      {
        obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey not in sync\n");
        return 22;
      }

      v22 = a5[7];
      v23 = v287;
      v24 = v285;
    }

    v81 = *(v22 + 36);
    if (v81 >= 2)
    {
      v279 = a7;
      v280 = a8;
      v18 = 0;
      for (i = 1; i < v81; ++i)
      {
        a1 = btree_node_key_off(a5, (i - 1));
        if (a1 != 0xFFFF)
        {
          a1 = btree_node_key_off(a5, i);
          if (a1 != 0xFFFF)
          {
            v83 = btree_node_key_ptr(a5, (i - 1), &v295, &v293);
            if (v83)
            {
              v84 = v83;
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = v83;
              }

              v85 = a5[1];
              if (v85)
              {
                v86 = (v85 + 4040);
              }

              else
              {
                v86 = (*(*(*a5 + 392) + 384) + 212);
              }

              v87 = obj_oid(a5);
              a1 = log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 536, v86, v87, *(a5[7] + 34), i - 1, v84);
            }

            else
            {
              a1 = btree_node_key_ptr(a5, i, &v294, &v292);
              if (a1)
              {
                v88 = a1;
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = a1;
                }

                v89 = a5[1];
                if (v89)
                {
                  v90 = (v89 + 4040);
                }

                else
                {
                  v90 = (*(*(*a5 + 392) + 384) + 212);
                }

                v91 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 543, v90, v91, *(a5[7] + 34), i, v88);
              }
            }

            if (!v18)
            {
              a1 = (a5[52])(v286, v295, v293, v294, v292, &v291);
              if (a1)
              {
                v18 = a1;
                v92 = a5[1];
                if (v92)
                {
                  v93 = (v92 + 4040);
                }

                else
                {
                  v93 = (*(*(*a5 + 392) + 384) + 212);
                }

                v94 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n", "btree_node_check", 547, v93, v94, *(a5[7] + 34), i, v18);
              }

              else if (v291 < 0)
              {
                v18 = 0;
              }

              else
              {
                v95 = a5[1];
                if (v95)
                {
                  v96 = (v95 + 4040);
                }

                else
                {
                  v96 = (*(*(*a5 + 392) + 384) + 212);
                }

                v97 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): keys out of order: %d\n", "btree_node_check", 550, v96, v97, *(a5[7] + 34), i);
                v18 = 22;
              }
            }
          }
        }

        v81 = *(a5[7] + 36);
      }

      a8 = v280;
      a7 = v279;
      v15 = v283;
      if (v18)
      {
        return v18;
      }

      v23 = v287;
      v24 = v285;
    }

    if (!v23)
    {
      goto LABEL_203;
    }

    a1 = btree_node_key_ptr(a5, (v81 - 1), &v295, &v293);
    if (a1)
    {
      v98 = a1;
      v99 = a5[1];
      if (v99)
      {
        v100 = (v99 + 4040);
      }

      else
      {
        v100 = (*(*(*a5 + 392) + 384) + 212);
      }

      v101 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 559, v100, v101, *(a5[7] + 34), *(a5[7] + 36) - 1, v98);
      return 22;
    }

    if (*(*(v23 + 56) + 36) - 1 <= v24)
    {
      v294 = a7;
      v292 = a8;
      v102 = a8;
      v103 = a7;
    }

    else
    {
      a1 = btree_node_key_ptr(v23, (v24 + 1), &v294, &v292);
      if (a1)
      {
        v18 = a1;
        obj_oid(v287);
        goto LABEL_249;
      }

      v103 = v294;
      v102 = v292;
    }

    if (!v103 || !v102 || !v293)
    {
      goto LABEL_203;
    }

    a1 = (a5[52])(v286, v295);
    if (a1)
    {
      v18 = a1;
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n");
      return v18;
    }

    if (v291 < 0)
    {
LABEL_203:
      if (v16)
      {
        v104 = a5[7];
        if ((*(v104 + 32) & 2) != 0 || *(v104 + 36))
        {
          v18 = 0;
        }

        else
        {
          v122 = a5[1];
          if (v122)
          {
            v123 = (v122 + 4040);
          }

          else
          {
            v123 = (*(*(*a5 + 392) + 384) + 212);
          }

          v124 = obj_oid(a5);
          a1 = log_err("%s:%d: %s oid 0x%llx (level %d): non-leaf node has no children?\n", "btree_node_check", 595, v123, v124, *(a5[7] + 34));
          v18 = 22;
        }

        if ((*(a5[7] + 32) & 2) == 0 && (a10 & 1) == 0)
        {
          v287 = v268;
          __chkstk_darwin(a1);
          v106 = &v268[-v105];
          bzero(&v268[-v105], v107);
          if (*(a5[7] + 36))
          {
            v280 = a8;
            v108 = v15;
            v109 = 0;
            LODWORD(v286) = v108 + 1;
            while (1)
            {
              if (btree_node_key_off(a5, v109) != 0xFFFF && btree_node_val_off(a5, v109) != 0xFFFF)
              {
                v110 = btree_node_child_val(a5, v109, v106);
                if (v110)
                {
                  v111 = v110;
                  v112 = a7;
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  v113 = a5[1];
                  if (v113)
                  {
                    v114 = (v113 + 4040);
                  }

                  else
                  {
                    v114 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v115 = obj_oid(a5);
                  log_err("%s:%d: %s oid 0x%llx (level %d): can't get child %d oid: %d\n", "btree_node_check", 606, v114, v115, *(a5[7] + 34), v109, v111);
                  a7 = v112;
                }

                else if (*v106)
                {
                  v289 = a7;
                  v290 = 0xAAAAAAAAAAAAAAAALL;
                  v288 = v280;
                  v116 = a5[7];
                  if (v109 < *(v116 + 36) - 1)
                  {
                    v117 = btree_node_key_ptr(a5, (v109 + 1), &v289, &v288);
                    if (v117)
                    {
                      v137 = v117;
                      if (v18)
                      {
                        v18 = v18;
                      }

                      else
                      {
                        v18 = 22;
                      }

                      v138 = a5[1];
                      if (v138)
                      {
                        v139 = (v138 + 4040);
                      }

                      else
                      {
                        v139 = (*(*(*a5 + 392) + 384) + 212);
                      }

                      v159 = obj_oid(a5);
                      log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 625, v139, v159, *(a5[7] + 34), v109 + 1, v137);
                      return v18;
                    }

                    v116 = a5[7];
                  }

                  v118 = v284;
                  if (btree_node_get(v16, v106, v284, 0x202u, *(v116 + 34) - 1, 0, &v290))
                  {
                    v119 = 1;
                  }

                  else
                  {
                    v119 = v290 == 0;
                  }

                  if (v119)
                  {
                    if (v18)
                    {
                      v18 = v18;
                    }

                    else
                    {
                      v18 = 22;
                    }

                    obj_oid(a5);
                    log_err("%s:%d: %s oid 0x%llx (level %d): can't get child: 0x%llx\n");
                  }

                  else
                  {
                    v120 = btree_node_check(v16, v118, a5, v109, v290, v286, v289, v288, v282, 0, v281);
                    if (v18)
                    {
                      v121 = 1;
                    }

                    else
                    {
                      v121 = v120 == 0;
                    }

                    if (v121)
                    {
                      v18 = v18;
                    }

                    else
                    {
                      v18 = v120;
                    }

                    obj_unlock(v290, 1);
                    obj_release(v290);
                  }
                }

                else
                {
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  obj_oid(a5);
                  log_err("%s:%d: %s oid 0x%llx (level %d): invalid child oid: 0x%llx\n");
                }
              }

              if (++v109 >= *(a5[7] + 36))
              {
                return v18;
              }
            }
          }
        }

        return v18;
      }

      return 0;
    }

    obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): node's max key is not less than next sibling's entry in parent\n");
    return 22;
  }

  v18 = 0;
  if (v287 && (*(v12 + 32) & 1) != 0)
  {
    v26 = a5[1];
    if (v26)
    {
      v27 = (v26 + 4040);
    }

    else
    {
      v27 = (*(*(*a5 + 392) + 384) + 212);
    }

    v28 = obj_oid(a5);
    v29 = *(a5[7] + 34);
    v30 = obj_oid(v287);
    log_err("%s:%d: %s oid 0x%llx (level %d): root node has a parent 0x%llx (level %d)\n", "btree_node_check", 183, v27, v28, v29, v30, *(*(v287 + 7) + 34));
    v18 = 22;
    v15 = v283;
  }

  if ((*(v12 + 32) & 2) != 0 && *(v12 + 34))
  {
    v31 = a5[1];
    if (v31)
    {
      v32 = (v31 + 4040);
    }

    else
    {
      v32 = (*(*(*a5 + 392) + 384) + 212);
    }

    v34 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): leaf node has non-zero level\n", "btree_node_check", 186, v32, v34, *(v12 + 34));
    v18 = 22;
  }

  if (v16)
  {
    if (*(a5[7] + 34) > *(v16[7] + 34))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v35 = a5[1];
      if (v35)
      {
        v36 = (v35 + 4040);
      }

      else
      {
        v36 = (*(*(*a5 + 392) + 384) + 212);
      }

      v37 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): node level greater than root level %d\n", "btree_node_check", 189, v36, v37, *(v12 + 34), *(v16[7] + 34));
    }

    v38 = v15 - 1;
    if (*(v16[7] + 34) - (v15 - 1) != *(a5[7] + 34))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v39 = a5[1];
      if (v39)
      {
        v40 = (v39 + 4040);
      }

      else
      {
        v40 = (*(*(*a5 + 392) + 384) + 212);
      }

      v41 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): node level should be %d\n", "btree_node_check", 192, v40, v41, *(v12 + 34), *(v16[7] + 34) - v38);
    }
  }

  if (*(v12 + 32))
  {
    v42 = -96;
  }

  else
  {
    v42 = -56;
  }

  v43 = v42 + ((a5[50] >> 27) & 0xF000);
  if (*(v12 + 40))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v44 = a5[1];
    if (v44)
    {
      v45 = (v44 + 4040);
    }

    else
    {
      v45 = (*(*(*a5 + 392) + 384) + 212);
    }

    v46 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid table space offset\n", "btree_node_check", 203, v45, v46, *(a5[7] + 34));
  }

  if (*(v12 + 42) > v43)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v47 = a5[1];
    if (v47)
    {
      v48 = (v47 + 4040);
    }

    else
    {
      v48 = (*(*(*a5 + 392) + 384) + 212);
    }

    v49 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): table space length larger than available data space\n", "btree_node_check", 206, v48, v49, *(a5[7] + 34));
  }

  if ((*(v12 + 32) & 4) == 0)
  {
    v50 = *(v12 + 42);
    if (v50 < 8 * btree_node_toc_entry_size(a5))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): table space length smaller than minimum\n");
      return v18;
    }
  }

  if (v18)
  {
    return v18;
  }

  v51 = (v43 - *(v12 + 42));
  if (*(v12 + 44) <= (v43 - *(v12 + 42)))
  {
    v18 = 0;
  }

  else
  {
    v52 = a5[1];
    if (v52)
    {
      v53 = (v52 + 4040);
    }

    else
    {
      v53 = (*(*(*a5 + 392) + 384) + 212);
    }

    v54 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): free space offset too large\n", "btree_node_check", 218, v53, v54, *(a5[7] + 34));
    v18 = 22;
  }

  if (*(v12 + 46) + *(v12 + 44) > v51)
  {
    v55 = a5[1];
    if (v55)
    {
      v56 = (v55 + 4040);
    }

    else
    {
      v56 = (*(*(*a5 + 392) + 384) + 212);
    }

    v57 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): free space extends beyond end of node\n", "btree_node_check", 221, v56, v57, *(a5[7] + 34));
    v18 = 22;
  }

  v278 = *(v12 + 44);
  v58 = *(v12 + 46);
  if (*(v12 + 36) > v51)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v59 = a5[1];
    if (v59)
    {
      v60 = (v59 + 4040);
    }

    else
    {
      v60 = (*(*(*a5 + 392) + 384) + 212);
    }

    v61 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than possible\n", "btree_node_check", 228, v60, v61, *(a5[7] + 34));
  }

  v62 = *(v12 + 36);
  v277 = v51;
  if (v62 > v278 && (*(v12 + 32) & 0x80000000) == 0)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v63 = a5[1];
    if (v63)
    {
      v64 = (v63 + 4040);
    }

    else
    {
      v64 = (*(*(*a5 + 392) + 384) + 212);
    }

    v65 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than gross key space\n", "btree_node_check", 231, v64, v65, *(a5[7] + 34));
  }

  v66 = *(v12 + 36);
  v67 = *(v12 + 42);
  if (v66 > v67 / btree_node_toc_entry_size(a5))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than TOC space\n");
    return v18;
  }

  if (v18)
  {
    return v18;
  }

  if (a5[47] == v12 + 56)
  {
    v18 = 0;
  }

  else
  {
    v68 = a5[1];
    if (v68)
    {
      v69 = (v68 + 4040);
    }

    else
    {
      v69 = (*(*(*a5 + 392) + 384) + 212);
    }

    v70 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid TOC[] pointer\n", "btree_node_check", 242, v69, v70, *(a5[7] + 34));
    v18 = 22;
  }

  if (a5[48] != v12 + 56 + *(v12 + 42))
  {
    v71 = a5[1];
    if (v71)
    {
      v72 = (v71 + 4040);
    }

    else
    {
      v72 = (*(*(*a5 + 392) + 384) + 212);
    }

    v73 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid keys[] pointer\n", "btree_node_check", 245, v72, v73, *(a5[7] + 34));
    v18 = 22;
  }

  if ((*(v12 + 32) & 1) != 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000) - 40)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v74 = a5[1];
    if (v74)
    {
      v75 = (v74 + 4040);
    }

    else
    {
      v75 = (*(*(*a5 + 392) + 384) + 212);
    }

    v76 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n", "btree_node_check", 248, v75, v76, *(a5[7] + 34));
  }

  if ((*(v12 + 32) & 1) == 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n");
    return v18;
  }

  if (v18)
  {
    return v18;
  }

  v77 = v278 + v58;
  if (*(v12 + 50) <= v278)
  {
    v18 = 0;
    v80 = v277;
  }

  else
  {
    v78 = a5[1];
    if (v78)
    {
      v79 = (v78 + 4040);
    }

    else
    {
      v79 = (*(*(*a5 + 392) + 384) + 212);
    }

    v80 = v277;
    v125 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key free list space larger than key space available\n", "btree_node_check", 259, v79, v125, *(a5[7] + 34));
    v18 = 22;
  }

  v126 = v80 - v77;
  v127 = *(v12 + 48);
  if (v127 != 0xFFFF && v278 - 4 < v127)
  {
    v128 = a5[1];
    if (v128)
    {
      v129 = (v128 + 4040);
    }

    else
    {
      v129 = (*(*(*a5 + 392) + 384) + 212);
    }

    v130 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key free list head beyond key space available\n", "btree_node_check", 263, v129, v130, *(a5[7] + 34));
    v18 = 22;
  }

  if (*(v12 + 54) > v126)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v131 = a5[1];
    if (v131)
    {
      v132 = (v131 + 4040);
    }

    else
    {
      v132 = (*(*(*a5 + 392) + 384) + 212);
    }

    v133 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): val free list space larger than val space available\n", "btree_node_check", 266, v132, v133, *(a5[7] + 34));
  }

  v134 = *(v12 + 52);
  if (v134 != 0xFFFF)
  {
    if (v134 > v126)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v135 = a5[1];
      if (v135)
      {
        v136 = (v135 + 4040);
      }

      else
      {
        v136 = (*(*(*a5 + 392) + 384) + 212);
      }

      v140 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list head beyond val space available\n", "btree_node_check", 270, v136, v140, *(a5[7] + 34));
      v134 = *(v12 + 52);
    }

    if (v134 <= 3)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list head beyond end of node\n");
      return v18;
    }
  }

  if (v18)
  {
    return v18;
  }

  v276 = v278 - 4;
  v141 = _apfs_calloc_typed((v277 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
  v142 = _apfs_calloc_typed((v277 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
  v274 = (v277 + 63) >> 6;
  v275 = v142;
  if (!v141 || !v142)
  {
    v156 = a5[1];
    if (v156)
    {
      v157 = (v156 + 4040);
    }

    else
    {
      v157 = (*(*(*a5 + 392) + 384) + 212);
    }

    v158 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): couldn't allocate bitmap to check btree node space usage\n", "btree_node_check", 286, v157, v158, *(a5[7] + 34));
    v18 = 12;
    goto LABEL_343;
  }

  v273 = v126;
  v279 = a7;
  v280 = a8;
  bitmap_set_range(v141, *(v12 + 44), *(v12 + 46), v143);
  v144 = 0;
  LOWORD(v145) = *(v12 + 48);
  v146 = v141;
  while (1)
  {
    v147 = v145;
    if (v145 == 0xFFFF)
    {
      break;
    }

    if (v145 >= v278 || v276 < v145)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry starts beyond key space available\n");
LABEL_341:
      v18 = 22;
      goto LABEL_342;
    }

    v148 = (a5[48] + v145);
    v149 = v148[1];
    if (v149 <= 3)
    {
LABEL_339:
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry len value too small\n");
      goto LABEL_341;
    }

    v150 = v149 + v145;
    if (v150 > v278)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry extends beyond key space available\n");
      goto LABEL_341;
    }

    if (!bitmap_range_is_clear(v141, v147, v149, v150))
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry overlaps with other free space\n");
      goto LABEL_341;
    }

    bitmap_set_range(v141, v147, v148[1], v151);
    v144 += v148[1];
    v152 = *(v12 + 50);
    if (v144 <= v152)
    {
      v18 = 0;
    }

    else
    {
      v153 = a5[1];
      if (v153)
      {
        v154 = (v153 + 4040);
      }

      else
      {
        v154 = (*(*(*a5 + 392) + 384) + 212);
      }

      v155 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entries total space exceeds free list space\n", "btree_node_check", 326, v154, v155, *(a5[7] + 34));
      v18 = 22;
    }

    v145 = *v148;
    if (v147 == v145)
    {
LABEL_340:
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry points to itself\n");
      goto LABEL_341;
    }

    v141 = v146;
    if (v144 > v152)
    {
      goto LABEL_343;
    }
  }

  v160 = 0;
  LOWORD(v161) = *(v12 + 52);
  while (1)
  {
    v162 = v161;
    if (v161 == 0xFFFF)
    {
      break;
    }

    if (v161 <= 3u)
    {
      v163 = a5[1];
      if (v163)
      {
        v164 = (v163 + 4040);
      }

      else
      {
        v164 = (*(*(*a5 + 392) + 384) + 212);
      }

      v165 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry beyond end of node\n", "btree_node_check", 342, v164, v165, *(a5[7] + 34));
      v18 = 22;
    }

    else
    {
      v18 = 0;
    }

    if (v162 > v273)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry starts beyond val space available\n");
      goto LABEL_341;
    }

    v141 = v146;
    if (v162 < 4)
    {
      goto LABEL_343;
    }

    v166 = (a5[49] - v162);
    v167 = v166[1];
    if (v167 <= 3)
    {
      goto LABEL_339;
    }

    if (v162 < v167)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry extends beyond val space available\n");
      goto LABEL_341;
    }

    v168 = v277 - v162;
    v169 = v168;
    if (!bitmap_range_is_clear(v146, v168, v167, v168))
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry overlaps with other free space\n");
      goto LABEL_341;
    }

    bitmap_set_range(v146, v169, v166[1], v170);
    v160 += v166[1];
    v171 = *(v12 + 54);
    if (v160 <= v171)
    {
      v18 = 0;
    }

    else
    {
      v172 = a5[1];
      if (v172)
      {
        v173 = (v172 + 4040);
      }

      else
      {
        v173 = (*(*(*a5 + 392) + 384) + 212);
      }

      v174 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entries total space exceeds free list space\n", "btree_node_check", 372, v173, v174, *(a5[7] + 34));
      v18 = 22;
    }

    v161 = *v166;
    if (v162 == v161)
    {
      goto LABEL_340;
    }

    v141 = v146;
    if (v160 > v171)
    {
      goto LABEL_343;
    }
  }

  if ((*(v12 + 32) & 4) != 0 && (*(a5 + 401) & 0x7FFE) == 0)
  {
    v177 = a5[1];
    if (v177)
    {
      v178 = (v177 + 4040);
    }

    else
    {
      v178 = (*(*(*a5 + 392) + 384) + 212);
    }

    v179 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says key size is variable\n", "btree_node_check", 387, v178, v179, *(a5[7] + 34));
    v18 = 22;
  }

  else
  {
    v18 = 0;
  }

  if ((*(a5[7] + 32) & 2) == 0 && (*(a5 + 401) & 0x7FFE) != 0 && (*(v12 + 32) & 4) == 0)
  {
    v175 = a5[1];
    if (v175)
    {
      v176 = (v175 + 4040);
    }

    else
    {
      v176 = (*(*(*a5 + 392) + 384) + 212);
    }

    v180 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): tree says key size is fixed, but node says kv size is variable\n", "btree_node_check", 390, v176, v180, *(a5[7] + 34));
    v18 = 22;
  }

  if ((*(v12 + 32) & 4) != 0 && (*(a5[7] + 32) & 2) != 0 && (*(a5 + 401) & 0x7FFF8000) == 0)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v181 = a5[1];
    if (v181)
    {
      v182 = (v181 + 4040);
    }

    else
    {
      v182 = (*(*(*a5 + 392) + 384) + 212);
    }

    v183 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says val size is variable\n", "btree_node_check", 393, v182, v183, *(a5[7] + 34));
  }

  v184 = a5[7];
  v185 = *(v184 + 32);
  if ((v185 & 2) != 0)
  {
    v229 = a5[50];
    if ((v229 & 0x7FFF800000) != 0 && (v229 & 4) == 0 && (v229 & 0x7FFE00) != 0 && (*(v12 + 32) & 4) == 0)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): tree says kv sizes are fixed, but leaf says kv size is variable\n");
      goto LABEL_342;
    }
  }

  v141 = v146;
  if (v18)
  {
    goto LABEL_343;
  }

  v186 = a5[47];
  if ((*(v12 + 32) & 4) == 0)
  {
    if (*(v184 + 36))
    {
      v187 = 0;
      v188 = (v186 + 4);
      while (1)
      {
        v189 = *(v188 - 2);
        v276 = *v188;
        v190 = v188[1];
        if (v189 == 0xFFFF)
        {
          if ((*(v12 + 32) & 0x80000000) == 0)
          {
            obj_oid(a5);
            goto LABEL_577;
          }

          v18 = 0;
        }

        else
        {
          v191 = *(v188 - 1);
          v192 = *(v184 + 32);
          if ((v192 & 2) != 0 && (v16 && *(v16[49] + 16) < v191 || (v192 & 1) != 0 && *(a5[49] + 16) < v191))
          {
            v193 = a5[1];
            if (v193)
            {
              v194 = (v193 + 4040);
            }

            else
            {
              v194 = (*(*(*a5 + 392) + 384) + 212);
            }

            v195 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 475, v194, v195, *(a5[7] + 34));
            v18 = 22;
          }

          else
          {
            v18 = 0;
          }

          if (v189 >= v278)
          {
            v196 = a5[1];
            if (v196)
            {
              v197 = (v196 + 4040);
            }

            else
            {
              v197 = (*(*(*a5 + 392) + 384) + 212);
            }

            v198 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 475, v197, v198, *(a5[7] + 34));
            v18 = 22;
          }

          v199 = (v191 + v189);
          if (v199 <= v278)
          {
            if (!v18)
            {
              if (bitmap_range_is_clear(v146, v189, v191, v199))
              {
                v18 = 0;
              }

              else
              {
                v204 = a5[1];
                if (v204)
                {
                  v205 = (v204 + 4040);
                }

                else
                {
                  v205 = (*(*(*a5 + 392) + 384) + 212);
                }

                v206 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 475, v205, v206, *(a5[7] + 34));
                v18 = 22;
              }

              if (!bitmap_range_is_clear(v275, v189, v191, v202))
              {
                v207 = a5[1];
                if (v207)
                {
                  v208 = (v207 + 4040);
                }

                else
                {
                  v208 = (*(*(*a5 + 392) + 384) + 212);
                }

                v209 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 475, v208, v209, *(a5[7] + 34));
                v18 = 22;
              }

              v210 = a5[50];
              if ((v210 & 0x40) != 0)
              {
                v211 = v191;
              }

              else
              {
                v211 = (v191 + 7) & 0x1FFF8;
              }

              bitmap_set_range(v275, v189, v211, v210);
            }
          }

          else
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v200 = a5[1];
            if (v200)
            {
              v201 = (v200 + 4040);
            }

            else
            {
              v201 = (*(*(*a5 + 392) + 384) + 212);
            }

            v203 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 475, v201, v203, *(a5[7] + 34));
          }
        }

        if (v276 > 0xFFFD)
        {
          if (v190 && v190 != 65534)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): invalid val offset has non-zero length\n");
            goto LABEL_342;
          }
        }

        else
        {
          v212 = *(a5[7] + 32);
          if ((v212 & 2) != 0 && (v16 && *(v16[49] + 20) < v190 || (v212 & 1) != 0 && *(a5[49] + 20) < v190))
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v213 = a5[1];
            if (v213)
            {
              v214 = (v213 + 4040);
            }

            else
            {
              v214 = (*(*(*a5 + 392) + 384) + 212);
            }

            v215 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 478, v214, v215, *(a5[7] + 34));
          }

          if (v276 > v273)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v216 = a5[1];
            if (v216)
            {
              v217 = (v216 + 4040);
            }

            else
            {
              v217 = (*(*(*a5 + 392) + 384) + 212);
            }

            v218 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 478, v217, v218, *(a5[7] + 34));
          }

          if (v276 < v190)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            obj_oid(a5);
            goto LABEL_576;
          }

          v141 = v146;
          if (v18)
          {
            goto LABEL_343;
          }

          v219 = v277 - v276;
          if (bitmap_range_is_clear(v146, v277 - v276, v190, v277))
          {
            v18 = 0;
          }

          else
          {
            v221 = a5[1];
            if (v221)
            {
              v222 = (v221 + 4040);
            }

            else
            {
              v222 = (*(*(*a5 + 392) + 384) + 212);
            }

            v223 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 478, v222, v223, *(a5[7] + 34));
            v18 = 22;
          }

          if (!bitmap_range_is_clear(v275, v219, v190, v220))
          {
            v224 = a5[1];
            if (v224)
            {
              v225 = (v224 + 4040);
            }

            else
            {
              v225 = (*(*(*a5 + 392) + 384) + 212);
            }

            v226 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 478, v225, v226, *(a5[7] + 34));
            v18 = 22;
          }

          v227 = a5[50];
          if ((v227 & 0x40) != 0)
          {
            v228 = v190;
          }

          else
          {
            v228 = (v190 + 7) & 0x1FFF8;
          }

          bitmap_set_range(v275, v219, v228, v227);
        }

        v141 = v146;
        if (v18)
        {
          goto LABEL_343;
        }

        v188 += 4;
        ++v187;
        v184 = a5[7];
        if (v187 >= *(v184 + 36))
        {
          goto LABEL_561;
        }
      }
    }

    goto LABEL_561;
  }

  v230 = a5[50];
  if ((v185 & 2) != 0)
  {
    v231 = v230 >> 23;
  }

  else
  {
    v231 = 8;
  }

  if (!*(v184 + 36))
  {
LABEL_561:
    _apfs_free(v146, 8 * v274);
    _apfs_free(v275, 8 * v274);
    a8 = v280;
    a7 = v279;
    v15 = v283;
    goto LABEL_17;
  }

  v232 = 0;
  v272 = (v230 >> 9) & 0x3FFF;
  v269 = (v272 + 7) & 0x7FF8;
  v271 = v231;
  v270 = (v231 + 7) & 0x1FFF8;
  v233 = (v186 + 2);
  while (1)
  {
    v234 = *(v233 - 1);
    v276 = *v233;
    if (v234 == 0xFFFF)
    {
      if ((*(v12 + 32) & 0x80000000) == 0)
      {
        obj_oid(a5);
LABEL_577:
        log_err("%s:%d: %s oid 0x%llx (level %d): invalid key offset\n");
        goto LABEL_341;
      }

      v18 = 0;
    }

    else
    {
      v235 = *(v184 + 32);
      if ((v235 & 2) != 0 && (v16 && *(v16[49] + 16) < v272 || (v235 & 1) != 0 && *(a5[49] + 16) < v272))
      {
        v236 = a5[1];
        if (v236)
        {
          v237 = (v236 + 4040);
        }

        else
        {
          v237 = (*(*(*a5 + 392) + 384) + 212);
        }

        v238 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 452, v237, v238, *(a5[7] + 34));
        v18 = 22;
      }

      else
      {
        v18 = 0;
      }

      if (v234 >= v278)
      {
        v239 = a5[1];
        if (v239)
        {
          v240 = (v239 + 4040);
        }

        else
        {
          v240 = (*(*(*a5 + 392) + 384) + 212);
        }

        v241 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 452, v240, v241, *(a5[7] + 34));
        v18 = 22;
      }

      if (v272 + v234 <= v278)
      {
        if (!v18)
        {
          if (bitmap_range_is_clear(v146, v234, v272, &v296))
          {
            v18 = 0;
          }

          else
          {
            v245 = a5[1];
            if (v245)
            {
              v246 = (v245 + 4040);
            }

            else
            {
              v246 = (*(*(*a5 + 392) + 384) + 212);
            }

            v247 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 452, v246, v247, *(a5[7] + 34));
            v18 = 22;
          }

          if (!bitmap_range_is_clear(v275, v234, v272, &v296))
          {
            v248 = a5[1];
            if (v248)
            {
              v249 = (v248 + 4040);
            }

            else
            {
              v249 = (*(*(*a5 + 392) + 384) + 212);
            }

            v250 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 452, v249, v250, *(a5[7] + 34));
            v18 = 22;
          }

          if ((a5[50] & 0x40) != 0)
          {
            v251 = v272;
          }

          else
          {
            v251 = v269;
          }

          bitmap_set_range(v275, v234, v251, v269);
        }
      }

      else
      {
        v18 = v18 ? v18 : 22;
        v242 = a5[1];
        v243 = (v242 ? v242 + 4040 : *(*(*a5 + 392) + 384) + 212);
        v244 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 452, v243, v244, *(a5[7] + 34));
      }
    }

    if (v276 <= 0xFFFD)
    {
      break;
    }

LABEL_559:
    v141 = v146;
    if (v18)
    {
      goto LABEL_343;
    }

    v233 += 2;
    ++v232;
    v184 = a5[7];
    if (v232 >= *(v184 + 36))
    {
      goto LABEL_561;
    }
  }

  v252 = *(a5[7] + 32);
  if ((v252 & 2) != 0 && (v16 && *(v16[49] + 20) < v271 || (v252 & 1) != 0 && *(a5[49] + 20) < v271))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v253 = a5[1];
    if (v253)
    {
      v254 = (v253 + 4040);
    }

    else
    {
      v254 = (*(*(*a5 + 392) + 384) + 212);
    }

    v255 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 455, v254, v255, *(a5[7] + 34));
  }

  if (v276 > v273)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v256 = a5[1];
    if (v256)
    {
      v257 = (v256 + 4040);
    }

    else
    {
      v257 = (*(*(*a5 + 392) + 384) + 212);
    }

    v258 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 455, v257, v258, *(a5[7] + 34));
  }

  if (v276 >= v231)
  {
    v141 = v146;
    if (v18)
    {
      goto LABEL_343;
    }

    v259 = v277 - v276;
    if (bitmap_range_is_clear(v146, v277 - v276, v231, v277))
    {
      v18 = 0;
    }

    else
    {
      v261 = a5[1];
      if (v261)
      {
        v262 = (v261 + 4040);
      }

      else
      {
        v262 = (*(*(*a5 + 392) + 384) + 212);
      }

      v263 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 455, v262, v263, *(a5[7] + 34));
      v18 = 22;
    }

    if (!bitmap_range_is_clear(v275, v259, v231, v260))
    {
      v264 = a5[1];
      if (v264)
      {
        v265 = (v264 + 4040);
      }

      else
      {
        v265 = (*(*(*a5 + 392) + 384) + 212);
      }

      v266 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 455, v265, v266, *(a5[7] + 34));
      v18 = 22;
    }

    if ((a5[50] & 0x40) != 0)
    {
      v267 = v271;
    }

    else
    {
      v267 = v270;
    }

    bitmap_set_range(v275, v259, v267, v271);
    goto LABEL_559;
  }

  if (v18)
  {
    v18 = v18;
  }

  else
  {
    v18 = 22;
  }

  obj_oid(a5);
LABEL_576:
  log_err("%s:%d: %s oid 0x%llx (level %d): val location extends beyond val space\n");
LABEL_342:
  v141 = v146;
LABEL_343:
  if (v141)
  {
    _apfs_free(v141, (8 * v274));
  }

  if (v275)
  {
    _apfs_free(v275, (8 * v274));
  }

  return v18;
}