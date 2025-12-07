unint64_t db_get_fields_generation(int *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      *buf = 136315650;
      v12 = "db_get_fields_generation";
      v13 = 1024;
      v14 = 291;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v5;
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 291, v10);
    free(v9);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v1 = *(a1 + 110);
  if ((a1[201] & 0x14) == 0)
  {
    return *(v1 + 56);
  }

  result = 0;
  if (v1)
  {
    v3 = *(v1 + 216);
    if (v3 > 842150449)
    {
      if (v3 == 1684300900)
      {
        return *(v1 + 224) - 1;
      }

      if (v3 == 842150450)
      {
        return (*(v1 + 220) - 1);
      }
    }

    else
    {
      if (v3 != -572662307)
      {
        if (v3 != -270471200)
        {
          return result;
        }

        return *(v1 + 224) - 1;
      }

      return data_map_double_count(v1);
    }
  }

  return result;
}

uint64_t db_eval_obj_with_options(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v144 = v1;
  v141 = v2;
  v142 = v3;
  v5 = v4;
  v7 = v6;
  v143 = v8;
  v152[6143] = *MEMORY[0x1E69E9840];
  memset(v146, 0, sizeof(v146));
  v145 = 0u;
  DWORD1(v145) = 4;
  if (v9)
  {
    LODWORD(v145) = 4;
  }

  bzero(v152, 0xBFF8uLL);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v151 = v5;
  v14 = "<>";
  if (!v143)
  {
    v14 = "<<anon store>>";
  }

  v140 = v14;
  v10.n128_u64[0] = 136315394;
  while (1)
  {
    v17 = &v152[3 * v13 - 1];
    if (v11 != 1)
    {
      if (!v11)
      {
        v18 = v5[8];
        if (v18)
        {
          if (v18 == v7[2])
          {
            v19 = (*(v5 + 28) >> 10) & 1;
            v17[2] = v19;
            v17[4] = 1;
            if (!v13)
            {
              break;
            }

            goto LABEL_25;
          }
        }
      }

      v20 = v5[6] & 0xFFF7;
      if (v20 > 3)
      {
        if (v20 != 4)
        {
          if (v20 == 16)
          {
LABEL_7:
            v17[2] = 0;
LABEL_8:
            v15 = 1;
LABEL_9:
            v17[4] = v15;
            goto LABEL_10;
          }

          if (v20 == 32)
          {
            v15 = 1;
            v17[2] = 1;
            goto LABEL_9;
          }

LABEL_44:
          v27 = *__error();
          v28 = _SILogForLogForCategory(1);
          v29 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v28, v29))
          {
            *buf = 136315394;
            v148 = v140;
            v149 = 2048;
            v150 = v5;
            _os_log_impl(&dword_1C278D000, v28, v29, "%s : node @ 0x%p looks trashed", buf, 0x16u);
          }

          *__error() = v27;
          goto LABEL_7;
        }

        v23 = v5[2];
        if ((*(v23 + 35) & 0x406) != 0)
        {
          v24 = 0;
        }

        else
        {
          v36 = *(v23 + 16);
          v24 = v144;
          if (v36)
          {
            v37 = v144 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = v5[2];
            v39 = v36(v143, v7);
            if (v39 < 2)
            {
LABEL_66:
              v17[2] = v39;
              goto LABEL_8;
            }

            v24 = 1;
            v23 = v38;
          }
        }

        v39 = compare_file_by_dbo(v143, v7, v23, (v5 + 4), v141, v142, v24, &v145, v10, 0);
        goto LABEL_66;
      }

      if (v20 == 1)
      {
        if ((v11 - 2) < 2)
        {
          if (v17[10] == 1)
          {
            v25 = v17[8];
            v17[2] = v25;
            if (v144 && (v25 & 0x80000001) != 0)
            {
              goto LABEL_8;
            }

            v22 = v13 + 1;
            if (v13 < v12)
            {
              goto LABEL_43;
            }

            v12 = v13 + 1;
            if (v13 < 2047)
            {
              goto LABEL_43;
            }

            v131 = __si_assert_copy_extra_332();
            v73 = v131;
            v139 = "";
            if (v131)
            {
              v139 = v131;
            }

            __message_assert_336(v131, v132, v133, v134, v135, v136, v137, v138, "core-query.c", 4634, "stack_depth < 2048", v139);
          }

          else
          {
            v65 = __si_assert_copy_extra_332();
            v73 = v65;
            v74 = "";
            if (v65)
            {
              v74 = v65;
            }

            __message_assert_336(v65, v66, v67, v68, v69, v70, v71, v72, "core-query.c", 4624, "parent_item->state == CompareStackItemStateComplete", v74);
          }

          goto LABEL_158;
        }

        if (!v11)
        {
          v30 = *v5;
          v31 = v5[1];
          v32 = v13 + 1;
          if (v13 < v12 || (v12 = v13 + 1, v13 < 2047))
          {
LABEL_53:
            v33 = &v152[3 * v32 - 1];
            *(v33 + 2) = 0;
            *(v33 + 4) = 0;
            if ((*(v30 + 52) <= *(v31 + 52) || (v34 = *(v30 + 64)) != 0 && v34 == v7[2]) && ((v35 = *(v31 + 64)) == 0 || v35 != v7[2]))
            {
              v15 = 2;
            }

            else
            {
              v15 = 3;
              v30 = v31;
            }

            *v33 = v30;
            v13 = v32;
            goto LABEL_9;
          }

          v112 = __si_assert_copy_extra_332();
          v92 = v112;
          v120 = "";
          if (v112)
          {
            v120 = v112;
          }

          __message_assert_336(v112, v113, v114, v115, v116, v117, v118, v119, "core-query.c", 4606, "stack_depth < 2048", v120);
LABEL_151:
          free(v92);
          if (__valid_fs(-1))
          {
            v130 = 2989;
          }

          else
          {
            v130 = 3072;
          }

          *v130 = -559038737;
          abort();
        }

        if (v17[10] != 1)
        {
          v84 = __si_assert_copy_extra_332();
          v92 = v84;
          v93 = "";
          if (v84)
          {
            v93 = v84;
          }

          __message_assert_336(v84, v85, v86, v87, v88, v89, v90, v91, "core-query.c", 4645, "parent_item->state == CompareStackItemStateComplete", v93);
          goto LABEL_151;
        }

        v40 = v17[8];
        v41 = v144 ^ 1;
        if ((v40 & 0x80000001) == 0)
        {
          v41 = 1;
        }

        if (v41 == 1)
        {
          v42 = v17[2];
          if (v42)
          {
            v43 = (v42 & 0x80000001) == 0;
          }

          else
          {
            v43 = 0;
          }

          if (v43)
          {
            if (!v40 || (v40 & 0x80000001) != 0)
            {
              if (v40)
              {
                v44 = v17[8];
              }

              else
              {
                v44 = v17[2];
              }
            }

            else
            {
              v44 = v42 ^ v40;
              v49 = v42 & v40;
              if ((v42 & v40) >= 2)
              {
                v50 = 0;
                do
                {
                  if ((v49 & 2) != 0)
                  {
                    v52 = db_eval_obj_qp_array_union_for_value(&v145, v50);
                    v53 = 2 << v50;
                    if (v50 >= 0x1E)
                    {
                      v53 = 0;
                    }

                    v54 = v53 | v44;
                    if (v52)
                    {
                      v44 = v54;
                    }
                  }

                  ++v50;
                  v51 = v49 > 3;
                  v49 >>= 1;
                }

                while (v51);
              }
            }
          }

          else if (v42)
          {
            v44 = v17[2];
          }

          else
          {
            v44 = v17[8];
          }
        }

        else
        {
          v44 = v17[8];
        }
      }

      else
      {
        if (v20 != 2)
        {
          goto LABEL_44;
        }

        if ((v11 - 2) < 2)
        {
          if (v17[10] == 1)
          {
            v21 = v17[8];
            v17[2] = v21;
            if (v144 && !v21)
            {
              goto LABEL_8;
            }

            v22 = v13 + 1;
            if (v13 >= v12)
            {
              v12 = v13 + 1;
              if (v13 >= 2047)
              {
                v121 = __si_assert_copy_extra_332();
                v92 = v121;
                v129 = "";
                if (v121)
                {
                  v129 = v121;
                }

                __message_assert_336(v121, v122, v123, v124, v125, v126, v127, v128, "core-query.c", 4692, "stack_depth < 2048", v129);
                goto LABEL_151;
              }
            }

LABEL_43:
            v26 = &v152[3 * v22 - 1];
            *v26 = v5[v11 == 2];
            *(v26 + 2) = 0;
            *(v26 + 4) = 0;
            v15 = 4;
            v13 = v22;
            goto LABEL_9;
          }

          v75 = __si_assert_copy_extra_332();
          v73 = v75;
          v83 = "";
          if (v75)
          {
            v83 = v75;
          }

          __message_assert_336(v75, v76, v77, v78, v79, v80, v81, v82, "core-query.c", 4682, "parent_item->state == CompareStackItemStateComplete", v83);
LABEL_158:
          free(v73);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        if (!v11)
        {
          v30 = *v5;
          v31 = v5[1];
          v32 = v13 + 1;
          if (v13 < v12)
          {
            goto LABEL_53;
          }

          v12 = v13 + 1;
          if (v13 < 2047)
          {
            goto LABEL_53;
          }

          v103 = __si_assert_copy_extra_332();
          v92 = v103;
          v111 = "";
          if (v103)
          {
            v111 = v103;
          }

          __message_assert_336(v103, v104, v105, v106, v107, v108, v109, v110, "core-query.c", 4664, "stack_depth < 2048", v111);
          goto LABEL_151;
        }

        if (v17[10] != 1)
        {
          v94 = __si_assert_copy_extra_332();
          v73 = v94;
          v102 = "";
          if (v94)
          {
            v102 = v94;
          }

          __message_assert_336(v94, v95, v96, v97, v98, v99, v100, v101, "core-query.c", 4703, "parent_item->state == CompareStackItemStateComplete", v102);
          goto LABEL_158;
        }

        v45 = v17[8];
        v46 = v17[2];
        if (v45)
        {
          v47 = v46 == 0;
        }

        else
        {
          v47 = 1;
        }

        if (v47)
        {
          v44 = 0;
        }

        else
        {
          v48 = v46 & 0x80000001;
          if ((v45 & 0x80000001) != 0)
          {
            if (v48)
            {
              v44 = 1;
            }

            else
            {
              v44 = v17[2];
            }
          }

          else
          {
            v44 = v17[8];
            if (!v48)
            {
              v44 = v46 ^ v45;
              v55 = v46 & v45;
              if ((v46 & v45) >= 2)
              {
                v56 = 0;
                do
                {
                  if ((v55 & 2) != 0)
                  {
                    v57 = db_eval_obj_qp_array_intersect_for_value(&v145, v56);
                    v58 = 2 << v56;
                    if (v56 >= 0x1E)
                    {
                      v58 = 0;
                    }

                    v59 = v58 | v44;
                    if (v57)
                    {
                      v44 = v59;
                    }
                  }

                  ++v56;
                  v51 = v55 > 3;
                  v55 >>= 1;
                }

                while (v51);
              }
            }
          }
        }
      }

      v17[2] = v44;
      goto LABEL_8;
    }

    v19 = v17[2];
    if ((v5[6] & 8) != 0)
    {
      v19 = v19 == 0;
      v17[2] = v19;
    }

    v5[8] = v7[2];
    *(v5 + 28) = v5[7] & 0xFBFF | ((v19 & 1) << 10);
    if (!v13)
    {
      break;
    }

LABEL_25:
    --v13;
LABEL_10:
    v16 = &v152[3 * v13 - 1];
    v5 = *v16;
    v11 = *(v16 + 4);
  }

  v60 = DWORD1(v145);
  if (DWORD1(v145) >= 5)
  {
    v61 = *&v146[0];
  }

  else
  {
    v61 = v146;
  }

  if (v145)
  {
    v62 = DWORD2(v145);
    if (DWORD2(v145))
    {
      v63 = v61 + 2;
      do
      {
        if (*(v63 - 2) >= 0x41u)
        {
          free(*v63);
          *(v63 - 1) = 0;
          *v63 = 0;
        }

        v63 += 3;
        --v62;
      }

      while (v62);
      v60 = DWORD1(v145);
    }
  }

  if (v60 >= 5)
  {
    free(v61);
  }

  return v19;
}

uint64_t compare_file_by_dbo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned __int8 *a8, __n128 q0_0, uint64_t a9)
{
  v78 = *MEMORY[0x1E69E9840];
  v70 = 0;
  v71 = 0;
  *v77 = 0;
  *&v77[8] = 0;
  *&v77[13] = 0;
  if (a8)
  {
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    goto LABEL_10;
  }

  v16 = *(a3 + 24);
  if (v16 >= 0xB && v16 != 15)
  {
    if (v16 > 12)
    {
      if (v16 == 13)
      {
        result = 0;
        v24 = 0;
      }

      else
      {
        result = 0;
        if (v16 != 14)
        {
          return result;
        }

        result = 1;
        v24 = 1;
      }

      if (*(a3 + 40) < 1)
      {
        return result;
      }

      v69 = 1;
    }

    else
    {
      if (v16 == 11)
      {
        result = 0;
        v24 = 0;
      }

      else
      {
        result = 0;
        if (v16 != 12)
        {
          return result;
        }

        result = 1;
        v24 = 1;
      }

      if (*(a3 + 40) != 2)
      {
        return v24;
      }

      v69 = 0;
    }

    v33 = *a3;
    v34 = *a2;
    if (!*a2)
    {
      v35 = result;
      (a2[1])(a1, a2);
      result = v35;
      v34 = *a2;
      if (!*a2)
      {
        return 0;
      }
    }

    v72 = 0;
    v73 = 0;
    if (*v33 == 42 && !v33[1])
    {
      if (*(v34 + 12) < 0x31u)
      {
        return 0;
      }

      v47 = (v34 + 48);
      if (v69)
      {
        if (a7)
        {
          while (1)
          {
            if ((v47[1] & 0x100) == 0)
            {
              if (db_fieldMatchCompare(a1, v47, a3, a5, a8, v24))
              {
                return 1;
              }

              v34 = *a2;
            }

            result = 0;
            v47 = (v47 + *(v47 + 2) + 13);
            if (v47 >= v34 + *(v34 + 12))
            {
              return result;
            }
          }
        }

        result = 0;
        do
        {
          if ((v47[1] & 0x100) == 0)
          {
            result = db_fieldMatchCompare(a1, v47, a3, a5, a8, v24);
            if (result)
            {
              v48 = *(v47 + 12);
              if (v48 != 7)
              {
                *(v47 + 12) = v48 + 1;
              }

              result = 1;
            }
          }

          v47 = (v47 + *(v47 + 2) + 13);
        }

        while (v47 < *a2 + *(*a2 + 12));
      }

      else
      {
        if (a7)
        {
          while (1)
          {
            if ((v47[1] & 0x100) == 0)
            {
              if (_db_rangeCompare(*v47, a3, *(v47 + 2), (v47 + 13), a8, v24, a9))
              {
                return 1;
              }

              v34 = *a2;
            }

            result = 0;
            v47 = (v47 + *(v47 + 2) + 13);
            if (v47 >= v34 + *(v34 + 12))
            {
              return result;
            }
          }
        }

        result = 0;
        do
        {
          if ((v47[1] & 0x100) == 0)
          {
            result = _db_rangeCompare(*v47, a3, *(v47 + 2), (v47 + 13), a8, v24, a9);
            if (result)
            {
              v67 = *(v47 + 12);
              if (v67 != 7)
              {
                *(v47 + 12) = v67 + 1;
              }

              result = 1;
            }
          }

          v47 = (v47 + *(v47 + 2) + 13);
        }

        while (v47 < *a2 + *(*a2 + 12));
      }

      return result;
    }

    v68 = v24;
    v24 = result;
    if (*a3)
    {
      v37 = (a3 + 144);
      v36 = *(a3 + 144);
      if (!v36 || v36 < db_get_fields_generation(a1))
      {
        os_unfair_lock_lock(&range_or_field_compare_lock);
        if (!*v37 || (v38 = *v37, v38 < db_get_fields_generation(a1)))
        {
          (*(*(a1 + 808) + 16))();
          v39 = db_copy_field_ids_with_buffer_locked(a1, *a3, 0, 0, (a3 + 144));
          __dmb(0xBu);
          *(a3 + 136) = v39;
        }

        os_unfair_lock_unlock(&range_or_field_compare_lock);
      }
    }

    memset(buf, 0, 20);
    if (db_get_field_by_id(a1, *a2, *(a3 + 136), &v73, &v72))
    {
      if (!*a3 || strcmp(*a3, "kMDItemAttributeChangeDate"))
      {
        return v24;
      }

      *buf = 12;
      v50 = *(a3 + 136);
      if (v50)
      {
        LODWORD(v50) = *v50;
      }

      *&buf[4] = v50;
      *&buf[8] = 8;
      *&buf[12] = -(*MEMORY[0x1E695E468] + *(*a2 + 16) * -0.000001);
      v72 = &buf[12];
      v73 = buf;
    }

    if (v69)
    {
      result = db_fieldMatchCompare(a1, v73, a3, a5, a8, v68);
    }

    else
    {
      result = _db_rangeCompare(*v73, a3, *(v73 + 2), v72, a8, v68, a9);
    }

    if (a7 || !result)
    {
      return result;
    }

    v51 = v73;
    goto LABEL_117;
  }

LABEL_10:
  if ((*(a3 + 32) & 0x80) != 0)
  {
    v23 = *(a3 + 8);

    return v23();
  }

  v18 = *(a3 + 72);
  v19 = *a3;
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_33;
    }

    if (*v19 == 42 && !v19[1])
    {
      v20 = *a2;
      if (*a2)
      {
        goto LABEL_18;
      }

      (a2[1])(a1, a2);
      v20 = *a2;
      if (!*a2)
      {
        return 0;
      }

      v18 = *(a3 + 72);
      if (v18)
      {
LABEL_18:
        if (*v18 == 42 && !v18[1] && (*(v20 + 40) & 5) == 0)
        {
          if (!a7)
          {
            v21 = v20 + 48;
            result = 1;
            do
            {
              v49 = *(v21 + 12);
              if (v49 != 7)
              {
                *(v21 + 12) = v49 + 1;
                v20 = *a2;
              }

              v21 += *(v21 + 8) + 13;
            }

            while (v21 < v20 + *(v20 + 12));
            return result;
          }

          return 1;
        }
      }

      v53 = *(a3 + 24);
      if (v53 <= 0xA)
      {
        v54 = *(a3 + 160);
        if ((v54 & 0x800) == 0)
        {
          *(a3 + 256) = v18;
          while (1)
          {
            v55 = *v18;
            if (!*v18)
            {
              break;
            }

            ++v18;
            v56 = v55 - 42;
            v57 = v56 > 0x32;
            v58 = (1 << v56) & 0x6000000200001;
            if (!v57 && v58 != 0)
            {
              *(a3 + 32) |= 1uLL;
              break;
            }
          }

          *(a3 + 160) = v54 | 0x800;
          v20 = *a2;
        }

        result = v53 == 5;
        if (*(v20 + 12) >= 0x31u)
        {
          v60 = (v20 + 48);
          while (1)
          {
            if ((v60[1] & 0x100) == 0)
            {
              v61 = result;
              v62 = *v60;
              if (v62 != 11 && (v63 = *(a3 + 256)) != 0 && (*v63 - 48) <= 9 && convert_value_to_type(v62, a3))
              {
                result = v61;
              }

              else
              {
                v64 = do_compare(q0_0);
                v65 = *(a3 + 24);
                if (v64)
                {
                  result = v61;
                  if (v65 != 5)
                  {
                    if (a7)
                    {
                      return 1;
                    }

                    v66 = *(v60 + 12);
                    if (v66 != 7)
                    {
                      *(v60 + 12) = v66 + 1;
                    }

                    result = 1;
                  }
                }

                else
                {
                  if (v65 == 5)
                  {
                    result = 0;
                  }

                  else
                  {
                    result = v61;
                  }

                  if (v65 == 5 && a7)
                  {
                    return 0;
                  }
                }
              }
            }

            v60 = (v60 + *(v60 + 2) + 13);
            if (v60 >= *a2 + *(*a2 + 12))
            {
              return result;
            }
          }
        }

        return result;
      }

      return 0;
    }
  }

  else if (!v19)
  {
    goto LABEL_33;
  }

  if (!strncmp(*a3, "SYS:mod", 7uLL))
  {
    v30 = *a2;
    if (!*a2)
    {
      (a2[1])(a1, a2);
      v30 = *a2;
      if (!*a2)
      {
        return 0;
      }
    }

    v70 = v77;
    *v77 = 8;
    *&v77[4] = 0x80000FFFFLL;
    *&v77[13] = *(v30 + 16);
    goto LABEL_50;
  }

LABEL_33:
  if (!a1)
  {
    return 0;
  }

  if (!*a2)
  {
    (a2[1])(a1, a2);
    if (!*a2)
    {
      return 0;
    }

    v19 = *a3;
  }

  if (v19)
  {
    v25 = (a3 + 144);
    v26 = *(a3 + 144);
    if (!v26 || v26 < db_get_fields_generation(a1))
    {
      os_unfair_lock_lock(&compare_file_by_dbo_lock);
      if (!*v25 || (v27 = *v25, v27 < db_get_fields_generation(a1)))
      {
        (*(*(a1 + 808) + 16))();
        v28 = db_copy_field_ids_with_buffer_locked(a1, *a3, 0, 0, (a3 + 144));
        __dmb(0xBu);
        *(a3 + 136) = v28;
      }

      os_unfair_lock_unlock(&compare_file_by_dbo_lock);
    }
  }

  v29 = *(a3 + 136);
  if (!v29 || db_get_field_by_id(a1, *a2, v29, &v70, &v71))
  {
    return (*(a3 + 24) - 5) < 2;
  }

LABEL_50:
  v31 = *(a3 + 24);
  if ((v31 - 1) > 1)
  {
    if ((v31 - 5) <= 1)
    {
      v40 = *(a3 + 72);
      if (v40)
      {
        if (*v40 == 42 && !v40[1])
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v32 = *(a3 + 72);
    if (v32 && *v32 == 42 && !v32[1])
    {
      return 1;
    }
  }

  if (!v70)
  {
    return 0;
  }

  if (convert_value_to_type(*v70, a3))
  {
    result = 0;
    if (v70 && dword_1EBF46AD0 >= 5)
    {
      v42 = *__error();
      v43 = _SILogForLogForCategory(1);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = "<>";
        v45 = *v70;
        if (!a1)
        {
          v44 = "<<anon store>>";
        }

        *buf = 136315650;
        *&buf[4] = v44;
        *&buf[12] = 2048;
        *&buf[14] = a3;
        v75 = 1024;
        v76 = v45;
        _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "%s : failed to convert qp @ 0x%p to type 0x%x", buf, 0x1Cu);
      }

      v46 = __error();
      result = 0;
      *v46 = v42;
    }

    return result;
  }

  LODWORD(result) = do_compare(v41);
  if (a7)
  {
    return result & 1;
  }

  if ((*(a3 + 35) & 6) != 0)
  {
    result = result;
  }

  else
  {
    result &= 1u;
  }

  if (result && (result == 1 || (result & 0x80000001) == 0))
  {
    v51 = v70;
LABEL_117:
    v52 = *(v51 + 12);
    if (v52 != 7)
    {
      *(v51 + 12) = v52 + 1;
    }
  }

  return result;
}

void si_livequery_release(void *a1)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v2 = a1[1];
    si_querypipe_release(a1[5]);
    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
    if (atomic_fetch_add((v2 + 584), 0xFFFFFFFF) == 1)
    {

      si_query_free(v2);
    }
  }
}

void SIActivityJournalCSItem(uint64_t a1, CFStringRef theString, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v8 = a6;
  v10 = a4;
  v31 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  bzero(v28, 0x400uLL);
  if (Length && Length <= 255 && CFStringGetCString(theString, v28, 1024, 0x8000100u))
  {
    os_unfair_lock_lock((a1 + 32));
    if (*(a1 + 37) != v8)
    {
      *(a1 + 37) = v8;
      if (v8)
      {
        v15 = 26;
      }

      else
      {
        v15 = 27;
      }

      activityJournalWrite(a1, v15, 0, 0);
    }

    if (*(a1 + 12) != HIDWORD(a3))
    {
      *(a1 + 12) = HIDWORD(a3);
      v29 = 0u;
      v30 = 0u;
      if (a3 >> 39)
      {
        if (a3 >> 46)
        {
          if (a3 >> 53)
          {
            if (a3 >> 60)
            {
              LOBYTE(v29) = -16;
              *(&v29 + 1) = HIDWORD(a3);
              v16 = 5;
            }

            else
            {
              LOBYTE(v29) = HIBYTE(a3) | 0xE0;
              BYTE1(v29) = BYTE6(a3);
              BYTE2(v29) = BYTE5(a3);
              BYTE3(v29) = BYTE4(a3);
              v16 = 4;
            }
          }

          else
          {
            LOBYTE(v29) = BYTE6(a3) | 0xC0;
            BYTE1(v29) = BYTE5(a3);
            BYTE2(v29) = BYTE4(a3);
            v16 = 3;
          }
        }

        else
        {
          LOBYTE(v29) = BYTE5(a3) | 0x80;
          BYTE1(v29) = BYTE4(a3);
          v16 = 2;
        }
      }

      else
      {
        LOBYTE(v29) = BYTE4(a3);
        v16 = 1;
      }

      activityJournalWrite(a1, 10, &v29, v16);
    }

    if (*(a1 + 8) != v10)
    {
      *(a1 + 8) = v10;
      v29 = 0u;
      v30 = 0u;
      if (v10 > 0x7F)
      {
        if (v10 >> 14)
        {
          if (v10 >> 21)
          {
            if (v10 >> 28)
            {
              LOBYTE(v29) = -16;
              *(&v29 + 1) = v10;
              v18 = 5;
            }

            else
            {
              LOBYTE(v29) = HIBYTE(v10) | 0xE0;
              BYTE1(v29) = BYTE2(v10);
              BYTE2(v29) = BYTE1(v10);
              BYTE3(v29) = v10;
              v18 = 4;
            }
          }

          else
          {
            LOBYTE(v29) = BYTE2(v10) | 0xC0;
            BYTE1(v29) = BYTE1(v10);
            BYTE2(v29) = v10;
            v18 = 3;
          }
        }

        else
        {
          LOBYTE(v29) = BYTE1(v10) | 0x80;
          BYTE1(v29) = v10;
          v18 = 2;
        }
      }

      else
      {
        LOBYTE(v29) = v10;
        v18 = 1;
      }

      activityJournalWrite(a1, 9, &v29, v18);
    }

    if (*(a1 + 24) != a5)
    {
      *(a1 + 24) = a5;
      activityJournalWriteVInt64(a1, 32, a5);
    }

    if (Length <= 20)
    {
      if (Length < 1)
      {
LABEL_42:
        v21 = atol(v28);
        if (v21)
        {
          v29 = 0u;
          v30 = 0u;
          if (a7)
          {
            v22 = 31;
          }

          else
          {
            v22 = 29;
          }

          if (v21 > 0x7F)
          {
            if (v21 >> 14)
            {
              if (v21 >> 21)
              {
                if (v21 >> 28)
                {
                  if (v21 >> 35)
                  {
                    if (v21 >> 42)
                    {
                      if (v21 >> 49)
                      {
                        if (HIBYTE(v21))
                        {
                          LOBYTE(v29) = -1;
                          *(&v29 + 1) = v21;
                          v23 = 9;
                        }

                        else
                        {
                          LOBYTE(v29) = -2;
                          BYTE1(v29) = BYTE6(v21);
                          BYTE2(v29) = BYTE5(v21);
                          BYTE3(v29) = BYTE4(v21);
                          BYTE4(v29) = BYTE3(v21);
                          BYTE5(v29) = BYTE2(v21);
                          BYTE6(v29) = BYTE1(v21);
                          v23 = 8;
                          BYTE7(v29) = v21;
                        }
                      }

                      else
                      {
                        LOBYTE(v29) = BYTE6(v21) | 0xFC;
                        BYTE1(v29) = BYTE5(v21);
                        BYTE2(v29) = BYTE4(v21);
                        BYTE3(v29) = BYTE3(v21);
                        BYTE4(v29) = BYTE2(v21);
                        BYTE5(v29) = BYTE1(v21);
                        v23 = 7;
                        BYTE6(v29) = v21;
                      }
                    }

                    else
                    {
                      LOBYTE(v29) = BYTE5(v21) | 0xF8;
                      BYTE1(v29) = BYTE4(v21);
                      BYTE2(v29) = BYTE3(v21);
                      BYTE3(v29) = BYTE2(v21);
                      BYTE4(v29) = BYTE1(v21);
                      BYTE5(v29) = v21;
                      v23 = 6;
                    }
                  }

                  else
                  {
                    LOBYTE(v29) = BYTE4(v21) | 0xF0;
                    BYTE1(v29) = BYTE3(v21);
                    BYTE2(v29) = BYTE2(v21);
                    BYTE3(v29) = BYTE1(v21);
                    BYTE4(v29) = v21;
                    v23 = 5;
                  }
                }

                else
                {
                  LOBYTE(v29) = BYTE3(v21) | 0xE0;
                  BYTE1(v29) = BYTE2(v21);
                  BYTE2(v29) = BYTE1(v21);
                  BYTE3(v29) = v21;
                  v23 = 4;
                }
              }

              else
              {
                LOBYTE(v29) = BYTE2(v21) | 0xC0;
                BYTE1(v29) = BYTE1(v21);
                BYTE2(v29) = v21;
                v23 = 3;
              }
            }

            else
            {
              LOBYTE(v29) = BYTE1(v21) | 0x80;
              BYTE1(v29) = v21;
              v23 = 2;
            }
          }

          else
          {
            LOBYTE(v29) = v21;
            v23 = 1;
          }

          v26 = &v29;
          v27 = a1;
LABEL_68:
          activityJournalWrite(v27, v22, v26, v23);
          os_unfair_lock_unlock((a1 + 32));
          return;
        }
      }

      else
      {
        v19 = v28;
        while (1)
        {
          v20 = *v19++;
          if (v20 >= 0x3A)
          {
            break;
          }

          if (!--Length)
          {
            goto LABEL_42;
          }
        }
      }
    }

    if (a7)
    {
      v24 = 30;
    }

    else
    {
      v24 = 28;
    }

    v25 = strlen(v28);
    v26 = v28;
    v23 = v25 + 1;
    v27 = a1;
    v22 = v24;
    goto LABEL_68;
  }

  if (a7)
  {
    v17 = 13;
  }

  else
  {
    v17 = 11;
  }

  _SIActivityJournalAdd(a1, v17, a3, v10, a5, v8);
}

uint64_t cleanupPreProcContext(void *a1)
{
  if (a1[49] >= 1)
  {
    v2 = 0;
    do
    {
      CFRelease(*(a1[47] + 8 * v2));
      CFRelease(*(a1[48] + 8 * v2++));
    }

    while (v2 < a1[49]);
  }

  if (a1[55] >= 1)
  {
    v3 = 0;
    do
    {
      CFRelease(*(a1[53] + 8 * v3));
      CFRelease(*(a1[54] + 8 * v3++));
    }

    while (v3 < a1[55]);
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[2] = 0;
  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[1] = 0;
  v6 = a1[41];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[41] = 0;
  v7 = a1[42];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[42] = 0;
  v8 = a1[43];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[43] = 0;
  v9 = a1[44];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[44] = 0;
  v10 = a1[45];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[45] = 0;
  v11 = a1[6];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[6] = 0;
  v12 = a1[7];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[7] = 0;
  v13 = a1[40];
  if (v13)
  {
    CFRelease(v13);
  }

  a1[40] = 0;
  v14 = a1[39];
  if (v14)
  {
    CFRelease(v14);
  }

  a1[39] = 0;
  v15 = a1[51];
  if (v15)
  {
    CFRelease(v15);
  }

  a1[51] = 0;
  v16 = a1[52];
  if (v16)
  {
    CFRelease(v16);
  }

  a1[52] = 0;
  v17 = a1[57];
  if (v17)
  {
    CFRelease(v17);
  }

  a1[57] = 0;
  v18 = a1[58];
  if (v18)
  {
    CFRelease(v18);
  }

  a1[58] = 0;
  v19 = a1[59];
  if (v19)
  {
    CFRelease(v19);
  }

  a1[59] = 0;
  v20 = a1[60];
  if (v20)
  {
    CFRelease(v20);
  }

  a1[60] = 0;
  v21 = a1[67];
  if (v21)
  {
    CFRelease(v21);
  }

  a1[67] = 0;
  v22 = a1[66];
  if (v22)
  {
    CFRelease(v22);
  }

  a1[66] = 0;
  v23 = a1[71];
  if (v23)
  {
    CFRelease(v23);
  }

  a1[71] = 0;
  v24 = a1[73];
  if (v24)
  {
    CFRelease(v24);
  }

  a1[73] = 0;
  v25 = a1[75];
  if (v25)
  {
    CFRelease(v25);
  }

  a1[75] = 0;
  v26 = a1[23];
  if (v26)
  {
    CFRelease(v26);
  }

  a1[23] = 0;
  v27 = a1[22];
  if (v27)
  {
    CFRelease(v27);
  }

  a1[22] = 0;
  v28 = a1[25];
  if (v28)
  {
    CFRelease(v28);
  }

  a1[25] = 0;
  v29 = a1[26];
  if (v29)
  {
    CFRelease(v29);
  }

  a1[26] = 0;
  v30 = a1[24];
  if (v30)
  {
    CFRelease(v30);
  }

  a1[24] = 0;
  v31 = a1[27];
  if (v31)
  {
    CFRelease(v31);
  }

  a1[27] = 0;
  v32 = a1[31];
  if (v32)
  {
    CFRelease(v32);
  }

  a1[31] = 0;
  v33 = a1[32];
  if (v33)
  {
    CFRelease(v33);
  }

  a1[32] = 0;
  v34 = a1[33];
  if (v34)
  {
    CFRelease(v34);
  }

  a1[33] = 0;
  v35 = a1[28];
  if (v35)
  {
    CFRelease(v35);
  }

  a1[28] = 0;
  v36 = a1[29];
  if (v36)
  {
    CFRelease(v36);
  }

  a1[29] = 0;
  v37 = a1[37];
  if (v37)
  {
    CFRelease(v37);
  }

  a1[37] = 0;
  v38 = a1[38];
  if (v38)
  {
    CFRelease(v38);
  }

  a1[38] = 0;
  v39 = a1[30];
  if (v39)
  {
    CFRelease(v39);
  }

  a1[30] = 0;
  if (a1[34])
  {
    icu_ctx_release();
  }

  if (a1[35])
  {
    icu_ctx_release();
  }

  result = a1[36];
  if (result)
  {

    return icu_ctx_release();
  }

  return result;
}

uint64_t SIGetAccumulatedSizeForGroup(uint64_t a1, const void *a2, unsigned int a3)
{
  if (a2)
  {
    Value = CFDictionaryGetValue(*(a1 + 2088), a2);
    valuePtr = 0;
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
      {
        a3 = valuePtr;
      }
    }
  }

  if (a3 && (!*(a1 + 2072) ? (v6 = 22) : (v6 = 256), a3 < v6))
  {
    return *(a1 + 8 * a3 + 7040);
  }

  else
  {
    return 0;
  }
}

void logIndexingEventInCoreAnalyticsWithBundleId(const __CFString *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v4 = dictionaryFromIndexingEvent(a1, a2, a3, a4);
  analytics_send_event();

  xpc_release(v4);
}

xpc_object_t dictionaryFromIndexingEvent(const __CFString *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  empty = xpc_dictionary_create_empty();
  if (a1 && CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    xpc_dictionary_set_string(empty, "bundleid", buffer);
  }

  xpc_dictionary_set_int64(empty, "itemcount", a2);
  xpc_dictionary_set_int64(empty, "indexingtime", a4);
  xpc_dictionary_set_int64(empty, "aggregatedatasize", a3);
  return empty;
}

void bumpWorkTime(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = *(a1 + 2152);
    v4 = v3 + CFAbsoluteTimeGetCurrent() - a2;
    *(a1 + 2152) = v4;
    v5 = *(a1 + 2160);
    if (v5)
    {
      v6 = *(a1 + 2176);
      v7 = v3 >= v6 || v4 < v6;
      if (!v7 || ((v8 = *(a1 + 2184), v3 < v8) ? (v9 = v4 < v8) : (v9 = 1), !v9))
      {
        v10 = *(a1 + 2168);

        v5(v10);
      }
    }
  }
}

uint64_t __flush_updateset_locked_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, int a4, __int16 a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56);
  if ((*(v6 + 4) & 2) != 0)
  {
    v13 = *__error();
    v14 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136315650;
      *&buf[4] = "flush_updateset_locked_block_invoke";
      v72 = 1024;
      *v73 = 8091;
      *&v73[4] = 1024;
      *&v73[6] = v17;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Bad sdb in db_updateset_iterate at page %d", buf, 0x18u);
    }

    *__error() = v13;
    v15 = *(*(a1 + 56) + 800);
    if (v15)
    {
      return v15;
    }

    else
    {
      return 22;
    }
  }

  db_writer_yield_lock(v6 + 584);
  *v70 = 0;
  v11 = *(a3 + 4);
  if ((v11 & 0x80) != 0)
  {
    if (v11 >= 0xC0)
    {
      if (v11 >= 0xE0)
      {
        if (v11 >= 0xF0)
        {
          v18 = 6;
          v19 = 7;
          v20 = 8;
          if (v11 == 255)
          {
            v20 = 9;
          }

          if (v11 >= 0xFE)
          {
            v19 = v20;
          }

          if (v11 >= 0xFC)
          {
            v18 = v19;
          }

          if (v11 >= 0xF8)
          {
            v12 = v18;
          }

          else
          {
            v12 = 5;
          }
        }

        else
        {
          v12 = 4;
        }
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 1;
  }

  v21 = (a3 + 4 + v12);
  v22 = *v21;
  if (*v21 < 0)
  {
    if (v22 >= 0xC0)
    {
      if (v22 >= 0xE0)
      {
        v66 = __si_assert_copy_extra_3233(0, -1);
        v67 = v66;
        v68 = "";
        if (v66)
        {
          v68 = v66;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v68);
        free(v67);
        if (__valid_fs(-1))
        {
          v69 = 2989;
        }

        else
        {
          v69 = 3072;
        }

        *v69 = -559038737;
        abort();
      }

      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v22 = v21[v23];
  }

  v24 = *(a1 + 56);
  v25 = *(v24 + 804) & (v22 >> 5) & 1;
  v26 = *(v24 + 856);
  v27 = *(v26 + 8);
  if (!v27)
  {
    v40 = ++*(*(*(a1 + 32) + 8) + 24);
    v41 = *(a1 + 64);
    if (v40 >= v41)
    {
      return 0xFFFFFFFFLL;
    }

    v42 = !v40 || v41 == 0x7FFFFFFF;
    if (!v42 && (*(*(v24 + 992) + 56) + 16 * *(*(v24 + 992) + 48)) < 0x80000)
    {
      return 0xFFFFFFFFLL;
    }

    v44 = *(a1 + 68) & 0x4000;
    *buf = 0;
    v45 = _page_alloc_fetch(v24, buf, 0, &v70[1], v70, v44 | 4u);
    if (!v45)
    {
      free(*buf);
      v52 = v70[1];
      v24 = *(a1 + 56);
      goto LABEL_63;
    }

    v46 = v45;
    v47 = *__error();
    v48 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "flush_updateset_locked_block_invoke";
      v72 = 1024;
      *v73 = 8114;
      *&v73[4] = 2048;
      *&v73[6] = a2;
      *&v73[14] = 2048;
      *&v73[16] = a2;
      *&v73[24] = 2048;
      *&v73[26] = v25;
      v74 = 2048;
      v75 = v70[1];
      v76 = 1024;
      LODWORD(v77) = v46;
      _os_log_error_impl(&dword_1C278D000, v48, OS_LOG_TYPE_ERROR, "%s:%d: Failed page allocation, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", buf, 0x40u);
    }

    *__error() = v47;
    return v46;
  }

  v28 = *(v26 + 16);
  if (v28 < v27)
  {
    v29 = v26 + 16 * v28;
    v31 = *(v29 + 20);
    v30 = v29 + 20;
    if (v31 == a2)
    {
      v32 = *(v30 + 12);
      if (v25 == v32 >> 28)
      {
        goto LABEL_61;
      }
    }
  }

  v33 = v27;
  if (v27 < 1)
  {
    v43 = 0;
    v35 = 0;
    goto LABEL_57;
  }

  v34 = 0;
  while (1)
  {
    v35 = (v27 + v34) >> 1;
    v36 = v26 + 20 + 16 * v35;
    v37 = v25 - (*(v36 + 12) >> 28);
    if (!v37)
    {
      break;
    }

    v38 = v37;
    v39 = (v27 + v34) >> 1;
    if ((v38 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_36:
    v27 = v39;
    if (v34 >= v39)
    {
      v43 = v38 > 0;
      goto LABEL_57;
    }
  }

  v38 = a2 - *v36;
  v39 = (v27 + v34) >> 1;
  if (v38 < 0)
  {
    goto LABEL_36;
  }

LABEL_41:
  if (v38)
  {
    v34 = v35 + 1;
    v39 = v27;
    goto LABEL_36;
  }

  v43 = 0;
LABEL_57:
  v49 = v33 - 1 > v35 && v43;
  v50 = v35 + v49;
  v51 = v26 + 16 * v50;
  *(v26 + 16) = v50;
  v30 = v51 + 20;
  v32 = *(v51 + 32);
LABEL_61:
  v52 = *(v30 + 8);
  v70[0] = v32 & 0xFFFFFFF;
  v70[1] = v52;
  if (*(*(*(a1 + 40) + 8) + 24) != v52)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

LABEL_63:
  *(*(*(a1 + 40) + 8) + 24) = v52;
  ++*(*(*(a1 + 48) + 8) + 24);
  v53 = *(a1 + 68) & 0x4000;
  if (!a4)
  {
    v54 = v70[0];
    result = _real_page_insert_obj(v24, a3, v53, v52, v70[0]);
    if (result == 17)
    {
      if ((a5 & 8) == 0)
      {
        return 0;
      }

      result = _real_page_update_obj(*(a1 + 56), a3, a2, v25, *(a1 + 68) & 0x4000u | a5, v52, v54);
      if (!result)
      {
        return result;
      }

      v55 = result;
      v56 = *__error();
      v57 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "flush_updateset_locked_block_invoke";
        v72 = 1024;
        *v73 = 8150;
        *&v73[4] = 2048;
        *&v73[6] = a2;
        *&v73[14] = 2048;
        *&v73[16] = a2;
        *&v73[24] = 2048;
        *&v73[26] = v25;
        v74 = 2048;
        v75 = v52;
        v76 = 1024;
        LODWORD(v77) = v55;
        v58 = "%s:%d: Failed update, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d";
LABEL_88:
        _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x40u);
      }

LABEL_76:
      *__error() = v56;
LABEL_77:
      v59 = *__error();
      v60 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v65 = "add";
        *buf = 136316930;
        *&buf[4] = "flush_updateset_locked_block_invoke";
        *v73 = 8156;
        v72 = 1024;
        *&v73[4] = 2080;
        if (a4)
        {
          v65 = "update";
        }

        *&v73[6] = v65;
        *&v73[14] = 2048;
        *&v73[16] = a2;
        *&v73[24] = 2048;
        *&v73[26] = a2;
        v74 = 2048;
        v75 = v25;
        v76 = 2048;
        v77 = v52;
        v78 = 1024;
        v79 = v55;
        _os_log_error_impl(&dword_1C278D000, v60, OS_LOG_TYPE_ERROR, "%s:%d: Failed %s, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", buf, 0x4Au);
      }

      *__error() = v59;
      v61 = _page_delete_obj_by_oid_and_type(*(a1 + 56), a2, v25, v52, v54, *(a1 + 68) & 0x4000);
      v62 = db_updateset_delete_object(*(*(a1 + 56) + 992), a2, v25);
      if (v61 | v62)
      {
        v63 = v62;
        v64 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          *buf = 134219264;
          *&buf[4] = a2;
          v72 = 2048;
          *v73 = a2;
          *&v73[8] = 2048;
          *&v73[10] = v25;
          *&v73[18] = 2048;
          *&v73[20] = v52;
          *&v73[28] = 1024;
          *&v73[30] = v61;
          v74 = 1024;
          LODWORD(v75) = v63;
          _os_log_fault_impl(&dword_1C278D000, v64, OS_LOG_TYPE_FAULT, "Failed delete after failed add/update, oid:0x%llx(%lld), type:%ld, pgnum:%ld, pageRc:%d updateSetRc:%d", buf, 0x36u);
        }
      }

      return v55;
    }

LABEL_72:
    v55 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_77;
  }

  v54 = v70[0];
  result = _real_page_update_obj(v24, a3, a2, v25, v53 | a5, v52, v70[0]);
  if (result != 2)
  {
    goto LABEL_72;
  }

  if ((a5 & 8) == 0)
  {
    return 0;
  }

  result = _real_page_insert_obj(*(a1 + 56), a3, *(a1 + 68) & 0x4000, v52, v54);
  if (result)
  {
    v55 = result;
    v56 = *__error();
    v57 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "flush_updateset_locked_block_invoke";
      v72 = 1024;
      *v73 = 8138;
      *&v73[4] = 2048;
      *&v73[6] = a2;
      *&v73[14] = 2048;
      *&v73[16] = a2;
      *&v73[24] = 2048;
      *&v73[26] = v25;
      v74 = 2048;
      v75 = v52;
      v76 = 1024;
      LODWORD(v77) = v55;
      v58 = "%s:%d: Failed insert, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d";
      goto LABEL_88;
    }

    goto LABEL_76;
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t db_writer_yield_lock(uint64_t a1)
{
  HIDWORD(v3) = qos_class_self() - 9;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1C2BFF8F0[v2];
  }

  if (!*(a1 + 208) || pthread_mutex_lock(a1))
  {
    return 0;
  }

  v5 = 16 * v4 + 64;
  while (1)
  {
    v6 = *(a1 + v5);
    if (v6)
    {
      if (*(v6 + 48) == 4)
      {
        break;
      }
    }

    v5 += 16;
    if (v5 == 160)
    {
      pthread_mutex_unlock(a1);
      return 0;
    }
  }

  v7 = 1;
  *(a1 + 212) = 1;
  db_rwlock_wakeup(a1, 1, 1);
  pthread_mutex_unlock(a1);
  db_upgrade_lock(a1);
  return v7;
}

void std::__tree<unsigned int>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned int>::destroy(*a1);
    std::__tree<unsigned int>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

uint64_t flush_updateset_locked(uint64_t a1, int a2)
{
  v15[0] = 0;
  v15[1] = v15;
  v16 = 0;
  v15[2] = 0x2000000000;
  v13[0] = 0;
  v13[1] = v13;
  v14 = 0;
  v13[2] = 0x2000000000;
  v11[0] = 0;
  v11[1] = v11;
  v12 = 0;
  v11[2] = 0x2000000000;
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(7);
    v5 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v4, v5, "flush_updateset_locked: start callback", buf, 2u);
    }

    *__error() = v3;
    (*(a1 + 1008))(*(a1 + 1000), 0);
  }

  v6 = *(*(a1 + 992) + 16);
  v18[0] = 0;
  v18[1] = 0;
  *buf = v18;
  if (v6)
  {
    operator new();
  }

  std::__tree<unsigned int>::destroy(v18[0]);
  if (*(a1 + 1000) && *(a1 + 1008))
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(7);
    v9 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v8, v9, "flush_updateset_locked: end callback", buf, 2u);
    }

    *__error() = v7;
    (*(a1 + 1008))(*(a1 + 1000), 1);
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  return 0;
}

uint64_t _page_update_obj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v95 = *MEMORY[0x1E69E9840];
  __dst = 0;
  value_out = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  result = _page_fetch_with_fd(a1, &value_out, a3, a4, a5 & 0x4000, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    return result;
  }

  if ((*(value_out + 12) & 0xF0) != 0)
  {
    v70 = *__error();
    v71 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v90 = "_page_update_obj";
      v91 = 1024;
      v92 = 5392;
      v93 = 1024;
      LODWORD(v94) = a3;
      _os_log_error_impl(&dword_1C278D000, v71, OS_LOG_TYPE_ERROR, "%s:%d: page_update_obj: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v70;
    v72 = __si_assert_copy_extra_3233(0, -1);
    v73 = v72;
    v74 = "";
    if (v72)
    {
      v74 = v72;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5393, v74);
LABEL_139:
    free(v73);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v11 = *(a2 + 4);
  if (*(a2 + 4) < 0)
  {
    v13 = *(a2 + 4);
    if (v13 > 0xBF)
    {
      if (v13 > 0xDF)
      {
        if (v13 > 0xEF)
        {
          if (v13 > 0xF7)
          {
            if (v13 > 0xFB)
            {
              if (v13 > 0xFD)
              {
                if (v13 == 255)
                {
                  v11 = *(a2 + 5);
                  v12 = 9;
                }

                else
                {
                  v11 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8) | *(a2 + 11);
                  v12 = 8;
                }
              }

              else
              {
                v11 = ((v11 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8) | *(a2 + 10);
                v12 = 7;
              }
            }

            else
            {
              v11 = ((v11 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8) | *(a2 + 9);
              v12 = 6;
            }
          }

          else
          {
            v11 = ((v11 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8) | *(a2 + 8);
            v12 = 5;
          }
        }

        else
        {
          v11 = ((v11 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8) | *(a2 + 7);
          v12 = 4;
        }
      }

      else
      {
        v11 = ((v11 & 0x1F) << 16) | (*(a2 + 5) << 8) | *(a2 + 6);
        v12 = 3;
      }
    }

    else
    {
      v12 = 2;
      v11 = *(a2 + 5) | ((v11 & 0x3F) << 8);
    }
  }

  else
  {
    v12 = 1;
  }

  v14 = (a2 + 4 + v12);
  v15 = *v14;
  if (*v14 < 0)
  {
    if (v15 >= 0xC0)
    {
      if (v15 >= 0xE0)
      {
        goto LABEL_115;
      }

      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v15 = v14[v16];
  }

  v17 = *(a1 + 804) & (v15 >> 5);
  v86 = value_out + *(value_out + 2);
  slot_for_oid_and_type = find_slot_for_oid_and_type(a1, value_out, v11, v17 & 1, &__dst, 0, 1);
  if (slot_for_oid_and_type)
  {
    v19 = slot_for_oid_and_type;
    page_release(a1, value_out, a3, 0, 0);
    return v19;
  }

  v82 = a2;
  if ((a5 & 2) != 0)
  {
    v20 = __dst + 4;
    if (*(__dst + 4) < 0)
    {
      v22 = *(__dst + 4);
      if (v22 >= 0xC0)
      {
        if (v22 >= 0xE0)
        {
          if (v22 >= 0xF0)
          {
            if (v22 >= 0xF8)
            {
              if (v22 >= 0xFC)
              {
                if (v22 >= 0xFE)
                {
                  v57 = v22 == 255;
                  v21 = 8;
                  if (v57)
                  {
                    v21 = 9;
                  }
                }

                else
                {
                  v21 = 7;
                }
              }

              else
              {
                v21 = 6;
              }
            }

            else
            {
              v21 = 5;
            }
          }

          else
          {
            v21 = 4;
          }
        }

        else
        {
          v21 = 3;
        }
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {
      v21 = 1;
    }

    if ((v20[v21] & 0x80000000) == 0)
    {
      v23 = 1;
      goto LABEL_52;
    }

    v24 = v20[v21];
    if (v24 < 0xC0)
    {
      v23 = 2;
      goto LABEL_52;
    }

    if (v24 < 0xE0)
    {
      v23 = 3;
LABEL_52:
      v25 = v21 + v23;
      v26 = &v20[v25];
      v27 = v20[v25];
      v28 = v20[v25];
      if (v27 < 0)
      {
        v29 = v25 + 1;
        if (v27 > 0xBFu)
        {
          if (v27 > 0xDFu)
          {
            if (v27 > 0xEFu)
            {
              if (v27 > 0xF7u)
              {
                if (v27 > 0xFBu)
                {
                  if (v27 > 0xFDu)
                  {
                    if (v27 == 255)
                    {
                      v28 = *&v20[v29];
                      goto LABEL_69;
                    }

                    v30 = (v20[v29] << 48) | (v26[2] << 40) | (v26[3] << 32) | (v26[4] << 24) | (v26[5] << 16) | (v26[6] << 8);
                    v31 = v26[7];
                  }

                  else
                  {
                    v30 = ((v28 & 1) << 48) | (v20[v29] << 40) | (v26[2] << 32) | (v26[3] << 24) | (v26[4] << 16) | (v26[5] << 8);
                    v31 = v26[6];
                  }
                }

                else
                {
                  v30 = ((v28 & 3) << 40) | (v20[v29] << 32) | (v26[2] << 24) | (v26[3] << 16) | (v26[4] << 8);
                  v31 = v26[5];
                }
              }

              else
              {
                v30 = ((v28 & 7) << 32) | (v20[v29] << 24) | (v26[2] << 16) | (v26[3] << 8);
                v31 = v26[4];
              }
            }

            else
            {
              v30 = ((v28 & 0xF) << 24) | (v20[v29] << 16) | (v26[2] << 8);
              v31 = v26[3];
            }
          }

          else
          {
            v30 = ((v28 & 0x1F) << 16) | (v20[v29] << 8);
            v31 = v26[2];
          }

          v28 = v30 | v31;
          goto LABEL_69;
        }

        v28 = v20[v29] | ((v28 & 0x3F) << 8);
      }

LABEL_69:
      ldb_update_indexid(&v82, v28);
      goto LABEL_70;
    }

LABEL_115:
    v62 = __si_assert_copy_extra_3233(0, -1);
    v63 = v62;
    v64 = "";
    if (v62)
    {
      v64 = v62;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v64);
    free(v63);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

LABEL_70:
  v32 = value_out;
  v33 = *(value_out + 3);
  if ((v33 & 8) != 0)
  {
    v75 = *__error();
    v76 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v90 = "_page_update_obj";
      v91 = 1024;
      v92 = 5437;
      v93 = 1024;
      LODWORD(v94) = a3;
      _os_log_error_impl(&dword_1C278D000, v76, OS_LOG_TYPE_ERROR, "%s:%d: page_update_obj: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v75;
    v77 = __si_assert_copy_extra_3233(0, -1);
    v73 = v77;
    v78 = "";
    if (v77)
    {
      v78 = v77;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5438, v78);
    goto LABEL_139;
  }

  v34 = v82;
  v35 = *v82;
  if (a4 - 20 <= (*v82 + 4))
  {
    v36 = test_compress_obj(a1, a4, v82);
    v32 = value_out;
    if (v36)
    {
      v37 = v36;
      page_release(a1, value_out, a3, 0, 0);
      if (v34 != a2)
      {
        free(v34);
      }

      return v37;
    }

    v33 = *(value_out + 3) | 4;
    *(value_out + 3) = v33;
    v35 = *v34;
  }

  v38 = v35 - *__dst;
  v39 = v32[1];
  v40 = v32[2] + v38;
  if (v40 > v39)
  {
    if ((v33 & 0xC) == 0)
    {
      goto LABEL_91;
    }

    if (a3)
    {
      v41 = *(a1 + 928);
      v42 = v41[13].n128_u32[3];
      if (v42 < 1)
      {
LABEL_84:
        atomic_fetch_add(&v41[14].n128_i32[1], 1u);
      }

      else
      {
        v43 = 0;
        while (v41[15].n128_u32[v43 + 3] != a3)
        {
          if (v42 == ++v43)
          {
            goto LABEL_84;
          }
        }

        atomic_fetch_add(&v41[13].n128_i32[2], 1u);
        v52 = &v41[3 * v43];
        v53 = v52[18].n128_u32[0];
        v81 = v52[17];
        db_cache_mru(v41, v43);
        if (v53)
        {
          v57 = v81.n128_u64[1] == 0;
        }

        else
        {
          v57 = 0;
        }

        if (v57 || (*(v81.n128_u64[0] + 12) & 4) == 0 || *(v81.n128_u64[0] + 4) <= *(v81.n128_u64[0] + 16))
        {
          v58 = *(value_out + 2);
          v34 = v82;
          v59 = (*(a1 + 804) & 2) != 0 ? 114688 : 196608;
          if (v58 + *v82 + 4 <= v59 && !page_resize(a1, &value_out, 0, v58 + v38, &__dst, v54, v55, v56, &v86))
          {
            v60 = (*__dst + 4);
            v44 = __dst + v60;
            v85 = __dst + v60;
            if (__dst + v60 <= v86)
            {
              v80 = v39;
              v61 = malloc_type_malloc(v60, 0x100004052888210uLL);
              if (v61)
              {
                __src = v61;
                memcpy(v61, __dst, (*__dst + 4));
                v45 = v86;
LABEL_88:
                memmove(&v44[v38], v44, v45 - v44);
                memcpy(__dst, v34, (*v34 + 4));
                v46 = value_out;
                *(value_out + 2) += v38;
                if (v40 > v80)
                {
                  if (page_compress(a1, v46, &v83, &v84, (*(a1 + 804) & 2) != 0))
                  {
                    memmove(v44, &v44[v38], v86 - v44);
                    memcpy(__dst, __src, (*__src + 4));
                    *(value_out + 2) -= v38;
                    free(__src);
LABEL_91:
                    page_release(a1, value_out, a3, 0, 0);
                    result = page_split(a1, v34, a3, a4, a5 & 0x4000);
                    if (v34 != a2)
                    {
                      v50 = result;
                      free(v34);
                      return v50;
                    }

                    return result;
                  }

                  page_resize(a1, &value_out, 0, v84, &__dst, v47, v48, v49, &v86);
                  v46 = value_out;
                }

                set_offset_hint(a1, v46, __dst);
                if (dword_1EBF46AE8 >= 5)
                {
                  v68 = *__error();
                  v69 = _SILogForLogForCategory(7);
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v90 = (a1 + 324);
                    v91 = 1024;
                    v92 = a3;
                    _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "%s : update pgnum %d\n", buf, 0x12u);
                  }

                  *__error() = v68;
                  v51 = __src;
                  if (!__src)
                  {
                    goto LABEL_98;
                  }
                }

                else
                {
                  v51 = __src;
                  if (!__src)
                  {
LABEL_98:
                    page_release_dirty_compressed(a1, value_out, v83, a3, a5 & 0x4000);
                    if (v34 != a2)
                    {
                      free(v34);
                    }

                    return 0;
                  }
                }

                free(v51);
                goto LABEL_98;
              }
            }

            goto LABEL_119;
          }
        }
      }
    }

    v34 = v82;
    goto LABEL_91;
  }

  v80 = v32[1];
  v44 = __dst + (*__dst + 4);
  v85 = v44;
  v45 = v86;
  if (v44 <= v86)
  {
    __src = 0;
    goto LABEL_88;
  }

LABEL_119:
  v65 = *__error();
  v66 = _SILogForLogForCategory(7);
  v67 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v66, v67))
  {
    *buf = 136315650;
    v90 = (a1 + 324);
    v91 = 1024;
    v92 = a3;
    v93 = 2048;
    v94 = __dst - value_out;
    _os_log_impl(&dword_1C278D000, v66, v67, "%s : page_update_obj: ERR: page at num 0x%x has a bad object pgnum %p\n", buf, 0x1Cu);
  }

  *__error() = v65;
  if (v34 != a2)
  {
    free(v34);
  }

  page_release(a1, value_out, a3, 0, 0);
  return 22;
}

uint64_t _real_page_update_obj(uint64_t a1, _DWORD *a2, unint64_t a3, int a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  result = _page_update_obj(a1, a2, a6, a7, a5);
  if (result == 2)
  {
    if ((*(a1 + 804) & 1) == 0)
    {
      return 2;
    }

    v55 = a2;
    v15 = a4 != 1;
    v16 = *(a1 + 856);
    v17 = *(v16 + 8);
    if (!v17)
    {
      return 2;
    }

    v18 = *(v16 + 16);
    if (v18 < v17)
    {
      v19 = v16 + 16 * v18;
      v21 = *(v19 + 20);
      v20 = v19 + 20;
      if (v21 == a3)
      {
        v22 = *(v20 + 12);
        if (v15 == v22 >> 28)
        {
          goto LABEL_23;
        }
      }
    }

    v23 = v17;
    if (v17 < 1)
    {
      v30 = 0;
      v25 = 0;
      goto LABEL_19;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v17 + v24) >> 1;
      v26 = v16 + 20 + 16 * v25;
      v27 = v15 - (*(v26 + 12) >> 28);
      if (v27)
      {
        v28 = v27;
        v29 = (v17 + v24) >> 1;
        if (v28 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v28 = a3 - *v26;
        v29 = (v17 + v24) >> 1;
        if (v28 < 0)
        {
          goto LABEL_9;
        }
      }

      if (!v28)
      {
        v30 = 0;
LABEL_19:
        v31 = v23 - 1 > v25 && v30;
        v32 = v25 + v31;
        v33 = v16 + 16 * v32;
        *(v16 + 16) = v32;
        v20 = v33 + 20;
        v22 = *(v33 + 32);
LABEL_23:
        v34 = *(v20 + 8);
        v54 = 0;
        if (page_find_oid_with_flags(a1, v34, v22 & 0xFFFFFFF, a3, v15, &v54, 0, 0))
        {
          return 2;
        }

        v35 = v54 + 4;
        v36 = *(v54 + 4);
        if (*(v54 + 4) < 0)
        {
          v38 = *(v54 + 4);
          if (v38 > 0xBF)
          {
            if (v38 > 0xDF)
            {
              if (v38 > 0xEF)
              {
                if (v38 > 0xF7)
                {
                  if (v38 > 0xFB)
                  {
                    if (v38 > 0xFD)
                    {
                      if (v38 == 255)
                      {
                        v36 = *(v54 + 5);
                        v37 = 9;
                      }

                      else
                      {
                        v36 = (*(v54 + 5) << 48) | (*(v54 + 6) << 40) | (*(v54 + 7) << 32) | (*(v54 + 8) << 24) | (*(v54 + 9) << 16) | (*(v54 + 10) << 8) | *(v54 + 11);
                        v37 = 8;
                      }
                    }

                    else
                    {
                      v36 = ((v36 & 1) << 48) | (*(v54 + 5) << 40) | (*(v54 + 6) << 32) | (*(v54 + 7) << 24) | (*(v54 + 8) << 16) | (*(v54 + 9) << 8) | *(v54 + 10);
                      v37 = 7;
                    }
                  }

                  else
                  {
                    v36 = ((v36 & 3) << 40) | (*(v54 + 5) << 32) | (*(v54 + 6) << 24) | (*(v54 + 7) << 16) | (*(v54 + 8) << 8) | *(v54 + 9);
                    v37 = 6;
                  }
                }

                else
                {
                  v36 = ((v36 & 7) << 32) | (*(v54 + 5) << 24) | (*(v54 + 6) << 16) | (*(v54 + 7) << 8) | *(v54 + 8);
                  v37 = 5;
                }
              }

              else
              {
                v36 = ((v36 & 0xF) << 24) | (*(v54 + 5) << 16) | (*(v54 + 6) << 8) | *(v54 + 7);
                v37 = 4;
              }
            }

            else
            {
              v36 = ((v36 & 0x1F) << 16) | (*(v54 + 5) << 8) | *(v54 + 6);
              v37 = 3;
            }
          }

          else
          {
            v37 = 2;
            v36 = *(v54 + 5) | ((v36 & 0x3F) << 8);
          }
        }

        else
        {
          v37 = 1;
        }

        v39 = v37 + 1;
        v40 = *(v35 + v37);
        if (*(v35 + v37) < 0)
        {
          if (v40 > 0xBF)
          {
            if (v40 >= 0xE0)
            {
              v51 = __si_assert_copy_extra_3233(0, -1);
              v52 = v51;
              v53 = "";
              if (v51)
              {
                v53 = v51;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v53);
              free(v52);
              if (__valid_fs(-1))
              {
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              MEMORY[0xC00] = -559038737;
              abort();
            }

            v41 = (v35 + v37 + 2);
            v42 = 3;
          }

          else
          {
            v41 = (v35 + v39);
            v42 = 2;
          }

          v40 = *v41;
          v39 = v37 + v42;
        }

        v43 = (v35 + v39);
        v44 = *(v35 + v39);
        v45 = *(v35 + v39);
        if (v44 < 0)
        {
          v46 = v39 + 1;
          if (v44 <= 0xBFu)
          {
            v45 = *(v35 + v46) | ((v45 & 0x3F) << 8);
            goto LABEL_66;
          }

          if (v44 <= 0xDFu)
          {
            v47 = ((v45 & 0x1F) << 16) | (*(v35 + v46) << 8);
            v48 = v43[2];
            goto LABEL_65;
          }

          if (v44 <= 0xEFu)
          {
            v47 = ((v45 & 0xF) << 24) | (*(v35 + v46) << 16) | (v43[2] << 8);
            v48 = v43[3];
            goto LABEL_65;
          }

          if (v44 <= 0xF7u)
          {
            v47 = ((v45 & 7) << 32) | (*(v35 + v46) << 24) | (v43[2] << 16) | (v43[3] << 8);
            v48 = v43[4];
            goto LABEL_65;
          }

          if (v44 <= 0xFBu)
          {
            v47 = ((v45 & 3) << 40) | (*(v35 + v46) << 32) | (v43[2] << 24) | (v43[3] << 16) | (v43[4] << 8);
            v48 = v43[5];
            goto LABEL_65;
          }

          if (v44 <= 0xFDu)
          {
            v47 = ((v45 & 1) << 48) | (*(v35 + v46) << 40) | (v43[2] << 32) | (v43[3] << 24) | (v43[4] << 16) | (v43[5] << 8);
            v48 = v43[6];
            goto LABEL_65;
          }

          if (v44 == 255)
          {
            v45 = *(v35 + v46);
          }

          else
          {
            v47 = (*(v35 + v46) << 48) | (v43[2] << 40) | (v43[3] << 32) | (v43[4] << 24) | (v43[5] << 16) | (v43[6] << 8);
            v48 = v43[7];
LABEL_65:
            v45 = v47 | v48;
          }
        }

LABEL_66:
        v49 = a2;
        if ((a5 & 2) != 0)
        {
          ldb_update_indexid(&v55, v45);
          v49 = v55;
        }

        if (_page_delete_obj_by_oid_and_type(a1, v36, *(a1 + 804) & (v40 >> 5) & 1, v34, v22 & 0xFFFFFFF, a5 & 0x4000))
        {
          result = 2;
          if (v49 == a2)
          {
            return result;
          }
        }

        else
        {
          result = _real_page_insert_obj(a1, v49, a5, a6, a7);
          if (v49 == a2)
          {
            return result;
          }
        }

        v50 = result;
        free(v49);
        return v50;
      }

      v24 = v25 + 1;
      v29 = v17;
LABEL_9:
      v17 = v29;
      if (v24 >= v29)
      {
        v30 = v28 > 0;
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t page_release_dirty_compressed(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = a2;
  if (a2)
  {
    if (a3)
    {
      v7 = *(a1 + 928);
      *buf = 0;
      *&buf[8] = 0;
      v8 = atomic_load((v7 + 248));
      if (v8 > a4)
      {
        *&buf[8] = 0;
        *buf = *v7;
        *&buf[8] = a4;
        v9 = a4;
        v10 = a2;
        v11 = a5;
        _cache_remove(buf);
        a5 = v11;
        a2 = v10;
        LODWORD(a4) = v9;
      }

      v12 = *(a1 + 928);
      v13 = v12[55];
      if (v13 < 1)
      {
LABEL_10:
        v18 = 4;
        if ((a2[3] & 4) == 0)
        {
          v18 = 1;
        }

        v19 = a2[v18];
        v20 = a4;
        _add_dirty_chunk(a1, a4, v19, (a5 >> 14) & 1);
        page_cache_add(*(a1 + 928), &v32, v20, 0);
        if (sdb_pwrite(*(a1 + 848), a3, v19, v20 << *(a1 + 12)) == v19)
        {
          free(v32);
          free(a3);
          return 0;
        }

        else
        {
          *(a1 + 4) |= 2u;
          v24 = *__error();
          v25 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "page_release_dirty_compressed";
            *&buf[12] = 1024;
            *&buf[14] = 3537;
            _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: Failed writing page", buf, 0x12u);
          }

          *__error() = v24;
          if (!*__error())
          {
            *__error() = 22;
          }

          *(a1 + 800) = *__error();
          return *__error();
        }
      }

      else
      {
        v14 = (v12 + 63);
        v15 = v12 + 72;
        while (1)
        {
          v17 = *v14++;
          v16 = v17;
          if (*(v15 - 2) == a2)
          {
            break;
          }

          if (v16 == a4)
          {
            v26 = __si_assert_copy_extra_332();
            v27 = v26;
            v28 = "";
            if (v26)
            {
              v28 = v26;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1089, "cache->cache_pgnum[i] != pgnum", v28);
            goto LABEL_30;
          }

          v15 += 12;
          if (!--v13)
          {
            goto LABEL_10;
          }
        }

        if (v16 != a4)
        {
          v30 = __si_assert_copy_extra_332();
          v27 = v30;
          v31 = "";
          if (v30)
          {
            v31 = v30;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "page-cache.c", 1081, "cache->cache_pgnum[i] == pgnum", v31);
LABEL_30:
          free(v27);
          if (__valid_fs(-1))
          {
            v29 = 2989;
          }

          else
          {
            v29 = 3072;
          }

          *v29 = -559038737;
          abort();
        }

        free(*(v15 - 1));
        result = 0;
        *(v15 - 1) = a3;
        *v15 = 1;
      }
    }

    else
    {

      return page_release(a1, a2, a4, 1u, 0);
    }
  }

  else
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "page_release_dirty_compressed";
      *&buf[12] = 1024;
      *&buf[14] = 3498;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: Failed releasing null page", buf, 0x12u);
    }

    *__error() = v22;
    return 22;
  }

  return result;
}

uint64_t _flush_cache_entry(uint64_t a1, unsigned int **a2, unsigned int *a3, unsigned int a4)
{
  v154 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (!*a3 || (v8 = (a3 + 2), (v7 = *(a3 + 1)) == 0) || !a3[6])
  {
    if (!a2)
    {
      return 0;
    }

    v17 = *(a3 + 1);
    if (!v17)
    {
      return 0;
    }

    v18 = 0;
    *a2 = v17;
    *(a3 + 1) = 0;
    return v18;
  }

  if ((*(a1 + 804) & 8) != 0)
  {
    v113 = __si_assert_copy_extra_3233(0, -1);
    v114 = v113;
    v115 = "";
    if (v113)
    {
      v115 = v113;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 7910, "(dst->const_flags & 0x8) == 0", v115);
LABEL_161:
    free(v114);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v10 = 16;
  if ((*(v7 + 12) & 4) == 0)
  {
    v10 = 4;
  }

  v11 = *(v7 + v10);
  v12 = *(a1 + 928);
  *buf = 0;
  *&buf[8] = 0;
  v13 = atomic_load((v12 + 248));
  if (v13 > v6)
  {
    *&buf[8] = 0;
    *buf = *v12;
    *&buf[8] = v6;
    v14 = a4;
    _cache_remove(buf);
    a4 = v14;
  }

  v15 = (a3 + 4);
  if (*(a3 + 2))
  {
    v16 = *a3;
    goto LABEL_116;
  }

  v19 = (*v8)[3];
  if ((v19 & 0xC) == 0 || (*(a1 + 804) & 8) != 0 || !*a3 || (v19 & 4) == 0 || !a3[6])
  {
    goto LABEL_115;
  }

  v20 = a4 & 0x4000;
  v132 = (*v8)[4];
  v133 = a4;
  v134 = v11;
  for (i = v20; ; v20 = i)
  {
LABEL_22:
    v21 = (*(a1 + 804) >> 1) & 1;
    v22 = *v8;
    v23 = (*v8)[2];
    if (v23 >= 21)
    {
      v24 = (*(v22 + 20) + 4);
      if (v22 + 20 + v24 >= v22 + v23 && v132 - 20 < v24)
      {
        LOBYTE(v21) = ((*(a1 + 804) & 2) != 0) | 2;
      }
    }

    v26 = page_compress(a1, v22, v15, 0, v21);
    if (v26 != 7)
    {
      v18 = v26;
      a4 = v133;
      if (v26)
      {
        v95 = *__error();
        v96 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          v128 = *a3;
          v129 = *(*(a3 + 1) + 8);
          *buf = 136316418;
          *&buf[4] = "db_compress_cache";
          *&buf[12] = 1024;
          *&buf[14] = 8305;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          v148 = 1024;
          v149 = v128;
          v150 = 1024;
          v151 = v129;
          v152 = 1024;
          v153 = v132;
          _os_log_error_impl(&dword_1C278D000, v96, OS_LOG_TYPE_ERROR, "%s:%d: ERR: page compression error %d with page %d used_bytes %d disk page size %d\n", buf, 0x2Au);
        }

        *__error() = v95;
        a4 = v133;
        if (v18)
        {
          goto LABEL_155;
        }
      }

LABEL_115:
      v16 = *a3;
      if (!*(a3 + 2))
      {
        _add_dirty_chunk(a1, v16, v11, (a4 >> 14) & 1);
        if ((*(a1 + 4) & 0x80) != 0)
        {
          db2_swap_page(*v8);
        }

        v97 = sdb_pwrite(*(a1 + 848), *(a3 + 1), v11, *a3 << *(a1 + 12));
        if ((*(a1 + 4) & 0x80) != 0)
        {
          v101 = v97;
          db2_swap_page(*v8);
          v97 = v101;
        }

        goto LABEL_117;
      }

LABEL_116:
      _add_dirty_chunk(a1, v16, v11, (a4 >> 14) & 1);
      v97 = sdb_pwrite(*(a1 + 848), *(a3 + 2), v11, *a3 << *(a1 + 12));
LABEL_117:
      if (v97 == v11)
      {
        if (*v15)
        {
          free(*v15);
          *v15 = 0;
        }

        v18 = 0;
        if (a2)
        {
          *a2 = *v8;
          *v8 = 0;
        }

        else
        {
          a3[6] = 0;
        }
      }

      else
      {
        *(a1 + 4) |= 2u;
        if (!*__error())
        {
          *__error() = 22;
        }

        v98 = *__error();
        v99 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v102 = *a3;
          *buf = 136315650;
          *&buf[4] = "_flush_cache_entry";
          *&buf[12] = 1024;
          *&buf[14] = 7972;
          *&buf[18] = 1024;
          *&buf[20] = v102;
          _os_log_error_impl(&dword_1C278D000, v99, OS_LOG_TYPE_ERROR, "%s:%d: Failed compressing/splitting page %d", buf, 0x18u);
        }

        *__error() = v98;
        *(a1 + 800) = *__error();
        return *__error();
      }

      return v18;
    }

    v145 = 0;
    value_out = 0;
    v142 = *v8;
    if (((*v8)[3] & 4) == 0)
    {
      v103 = *__error();
      v104 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_136;
      }

      v105 = *a3;
      *buf = 136315650;
      *&buf[4] = "db_split_page";
      *&buf[12] = 1024;
      *&buf[14] = 8343;
      *&buf[18] = 1024;
      *&buf[20] = v105;
      v106 = "%s:%d: Failed splitting compressed page %d";
      v107 = v104;
      v108 = 24;
      goto LABEL_165;
    }

    if (*v15)
    {
      v103 = *__error();
      v109 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_136;
      }

      *buf = 136315394;
      *&buf[4] = "db_split_page";
      *&buf[12] = 1024;
      *&buf[14] = 8349;
      v106 = "%s:%d: should not need to split a compressed cache";
      v107 = v109;
      v108 = 18;
LABEL_165:
      _os_log_error_impl(&dword_1C278D000, v107, OS_LOG_TYPE_ERROR, v106, buf, v108);
LABEL_136:
      *__error() = v103;
LABEL_137:
      v18 = 22;
      goto LABEL_152;
    }

    v144 = 0;
    *buf = 0;
    v27 = _page_alloc_fetch(a1, buf, 0, &v144 + 1, &v144, v20 | 4);
    if (v27)
    {
      break;
    }

    free(*buf);
    v28 = HIDWORD(v144);
    v29 = _page_fetch_with_fd(a1, &value_out, HIDWORD(v144), v144, v20 | 3, buf, 0xFFFFFFFFLL, 0);
    if (v29)
    {
      v18 = v29;
      v118 = *__error();
      v110 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_151;
      }

      v112 = *a3;
      *buf = 136315650;
      *&buf[4] = "db_split_page";
      *&buf[12] = 1024;
      *&buf[14] = 8367;
      *&buf[18] = 1024;
      *&buf[20] = v112;
      v92 = "%s:%d: Failed page_fetch for %d";
      goto LABEL_142;
    }

    v137 = v28;
    v33 = *v8;
    v34 = (*v8)[2];
    if (v34 >= 21)
    {
      v35 = 0;
      v136 = 0;
      v36 = v33 + v34;
      v37 = (v33 + 5);
      v38 = (v34 + 1) >> 1;
      v39 = 20;
      v40 = 2;
      v140 = v33 + v34;
      while (2)
      {
        v41 = v34 - v39;
        if (v34 - v39 > v38 - 8)
        {
          v42 = (*v37 + 4);
          v43 = &v37[v42];
          if (&v37[v42] < v36)
          {
            v44 = v37;
            while (1)
            {
              v37 = v43;
              v45 = v44 + 4;
              v35 = v44[4];
              if (v44[4] < 0)
              {
                v47 = v44[4];
                if (v47 > 0xBF)
                {
                  if (v47 > 0xDF)
                  {
                    if (v47 > 0xEF)
                    {
                      if (v47 > 0xF7)
                      {
                        if (v47 > 0xFB)
                        {
                          if (v47 > 0xFD)
                          {
                            if (v47 == 255)
                            {
                              v35 = *(v44 + 5);
                              v46 = 9;
                            }

                            else
                            {
                              v35 = (v44[5] << 48) | (v44[6] << 40) | (v44[7] << 32) | (v44[8] << 24) | (v44[9] << 16) | (v44[10] << 8) | v44[11];
                              v46 = 8;
                            }
                          }

                          else
                          {
                            v35 = ((v35 & 1) << 48) | (v44[5] << 40) | (v44[6] << 32) | (v44[7] << 24) | (v44[8] << 16) | (v44[9] << 8) | v44[10];
                            v46 = 7;
                          }
                        }

                        else
                        {
                          v35 = ((v35 & 3) << 40) | (v44[5] << 32) | (v44[6] << 24) | (v44[7] << 16) | (v44[8] << 8) | v44[9];
                          v46 = 6;
                        }
                      }

                      else
                      {
                        v35 = ((v35 & 7) << 32) | (v44[5] << 24) | (v44[6] << 16) | (v44[7] << 8) | v44[8];
                        v46 = 5;
                      }
                    }

                    else
                    {
                      v35 = ((v35 & 0xF) << 24) | (v44[5] << 16) | (v44[6] << 8) | v44[7];
                      v46 = 4;
                    }
                  }

                  else
                  {
                    v35 = ((v35 & 0x1F) << 16) | (v44[5] << 8) | v44[6];
                    v46 = 3;
                  }
                }

                else
                {
                  v48 = v44[5] | ((v35 & 0x3F) << 8);
                  v46 = 2;
                  v35 = v48;
                }
              }

              else
              {
                v46 = 1;
              }

              v49 = v45 + v46;
              v50 = *v49;
              if (*v49 < 0)
              {
                if (v50 >= 0xC0)
                {
                  if (v50 >= 0xE0)
                  {
                    v130 = __si_assert_copy_extra_3233(0, -1);
                    v114 = v130;
                    v131 = "";
                    if (v130)
                    {
                      v131 = v130;
                    }

                    __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v131);
                    goto LABEL_161;
                  }

                  v51 = 2;
                }

                else
                {
                  v51 = 1;
                }

                v50 = v49[v51];
              }

              v39 += v42;
              v41 = v34 - v39;
              if (v34 - v39 > v38 - 8)
              {
                v42 = (*v37 + 4);
                v43 = &v37[v42];
                v44 = v37;
                if (&v37[v42] < v36)
                {
                  continue;
                }
              }

              v136 = *(a1 + 804) & (v50 >> 5) & 1;
              break;
            }
          }
        }

        if (v142 != v33)
        {
          v116 = __si_assert_copy_extra_3233(0, -1);
          v114 = v116;
          v117 = "";
          if (v116)
          {
            v117 = v116;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 8404, "in_cached==entry->cache_dbps", v117);
          goto LABEL_161;
        }

        if (v39 < 21)
        {
          goto LABEL_94;
        }

        v141 = v40;
        v143 = v38;
        v52 = *(a1 + 804);
        v53 = page_resize(a1, &value_out, 1, *(value_out + 2) + v41, 0, v30, v31, v32, 0);
        if (v53)
        {
          v18 = v53;
          page_release(a1, value_out, v137, i, 0);
          v118 = *__error();
          v90 = _SILogForLogForCategory(7);
          if (!os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          v91 = *(value_out + 2);
          *buf = 136316418;
          *&buf[4] = "db_split_page";
          *&buf[12] = 1024;
          *&buf[14] = 8413;
          *&buf[18] = 1024;
          *&buf[20] = v18;
          v148 = 1024;
          v149 = v137;
          v150 = 1024;
          v151 = v91;
          v152 = 1024;
          v153 = v91 + v41;
          v92 = "%s:%d: ERR: page_resize error %d with page %d used_bytes %d new page size %d\n";
          v93 = v90;
          v94 = 42;
          goto LABEL_143;
        }

        v54 = (v52 >> 1) & 1;
        memcpy(value_out + *(value_out + 2), *v8 + v39, v41);
        v55 = value_out;
        v56 = *(value_out + 2) + v41;
        *(value_out + 2) = v56;
        if (v56 < 21)
        {
          goto LABEL_74;
        }

        v57 = v55 + v56;
        v58 = (v55[5] + 4);
        v59 = 4;
        if ((v55[3] & 4) == 0)
        {
          v59 = 1;
        }

        if (v55[v59] - 20 < v58 && v55 + v58 + 20 >= v57)
        {
          v61 = *v8;
          v62 = (*v8)[3] & 4;
          v64 = v143;
        }

        else
        {
LABEL_74:
          v61 = *v8;
          v62 = (*v8)[3] & 4;
          v63 = 4;
          if (!v62)
          {
            v63 = 1;
          }

          v64 = v143;
          if (v143 > v61[v63])
          {
LABEL_80:
            v65 = v62 == 0;
            v66 = 4;
            if (v65)
            {
              v66 = 1;
            }

            if (v64 <= v61[v66] / 2)
            {
              v138 = *__error();
              v67 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = *a3;
                v69 = *(*(a3 + 1) + 8);
                *buf = 67109632;
                *&buf[4] = v68;
                *&buf[8] = 1024;
                *&buf[10] = v69;
                *&buf[14] = 1024;
                *&buf[16] = v143;
                _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "Forced to split page %d used_bytes %d into pieces of size %d", buf, 0x14u);
              }

              *__error() = v138;
              v55 = value_out;
            }

            v70 = page_compress(a1, v55, &v145, 0, v54);
            v33 = *v8;
            if (!v70)
            {
              v80 = v33[1];
              v33[2] -= v41;
              page_resize(a1, a3 + 1, 1, v80 - v41, 0, v30, v31, v32, 0);
              if (dword_1EBF46AE8 >= 5)
              {
                v82 = *__error();
                v83 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = *a3;
                  *buf = 67109888;
                  *&buf[4] = v84;
                  *&buf[8] = 1024;
                  *&buf[10] = v137;
                  *&buf[14] = 2048;
                  *&buf[16] = v35;
                  v148 = 1024;
                  v149 = v136;
                  _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "splitting map page %x, new page %x max_oid %llx type %d\n", buf, 0x1Eu);
                }

                *__error() = v82;
              }

              map_split(a1, a3, v35, v136, value_out, v137);
              v20 = i;
              v81 = page_release_dirty_compressed(a1, value_out, v145, v137, i);
              v15 = (a3 + 4);
              v11 = v134;
              if (!v81)
              {
                goto LABEL_22;
              }

              v18 = v81;
              v118 = *__error();
              v119 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "db_split_page";
                *&buf[12] = 1024;
                *&buf[14] = 8482;
                *&buf[18] = 1024;
                *&buf[20] = v137;
                v148 = 1024;
                v149 = v18;
                v92 = "%s:%d: Failed releasing dity compressed cache page %d with error %d";
                v93 = v119;
                v94 = 30;
                goto LABEL_143;
              }

              goto LABEL_151;
            }

            v71 = 4;
            if ((v33[3] & 4) == 0)
            {
              v71 = 1;
            }

            v38 = v143;
            if (v143 <= v33[v71] / 2)
            {
              v139 = v70;
              v72 = *__error();
              v73 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = "db_split_page";
                *&buf[12] = 1024;
                *&buf[14] = 8441;
                *&buf[18] = 1024;
                *&buf[20] = v139;
                v148 = 1024;
                v149 = v41;
                v150 = 1024;
                v151 = v143;
                _os_log_error_impl(&dword_1C278D000, v73, OS_LOG_TYPE_ERROR, "%s:%d: Page compress failed with error %d at %d/%d", buf, 0x24u);
              }

              *__error() = v72;
              v33 = *v8;
              v38 = v143;
            }

            *(value_out + 2) -= v41;
            v36 = v140;
            v40 = v141;
LABEL_94:
            v74 = 4;
            if ((v33[3] & 4) == 0)
            {
              v74 = 1;
            }

            if (v38 <= v33[v74] / 2)
            {
              v85 = v38;
              v86 = *__error();
              v87 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                v88 = *a3;
                v89 = *(*(a3 + 1) + 8);
                *buf = 67109632;
                *&buf[4] = v88;
                *&buf[8] = 1024;
                *&buf[10] = v89;
                *&buf[14] = 1024;
                *&buf[16] = v85;
                _os_log_impl(&dword_1C278D000, v87, OS_LOG_TYPE_DEFAULT, "Failure to split page %d used_bytes %d into pieces of size %d", buf, 0x14u);
              }

              *__error() = v86;
              page_release(a1, value_out, v137, 0, 0);
              goto LABEL_137;
            }

            LODWORD(v34) = v33[2];
            v38 = (v34 + v40) / (v40 + 1);
            ++v40;
            if (v37 >= v36)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        break;
      }

      LOBYTE(v54) = ((v52 & 2) != 0) | 2;
      goto LABEL_80;
    }

LABEL_98:
    v75 = *__error();
    v76 = _SILogForLogForCategory(7);
    v77 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v76, v77))
    {
      v78 = *a3;
      v79 = *(*(a3 + 1) + 8);
      *buf = 67109376;
      *&buf[4] = v78;
      *&buf[8] = 1024;
      *&buf[10] = v79;
      _os_log_impl(&dword_1C278D000, v76, v77, "Nothing found on page %d used_bytes %d", buf, 0xEu);
    }

    *__error() = v75;
    page_release(a1, value_out, v137, 0, 0);
    v15 = (a3 + 4);
    v11 = v134;
  }

  v18 = v27;
  v118 = *__error();
  v110 = _SILogForLogForCategory(7);
  if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_151;
  }

  v111 = *a3;
  *buf = 136315650;
  *&buf[4] = "db_split_page";
  *&buf[12] = 1024;
  *&buf[14] = 8362;
  *&buf[18] = 1024;
  *&buf[20] = v111;
  v92 = "%s:%d: Failed page_alloc for %d";
LABEL_142:
  v93 = v110;
  v94 = 24;
LABEL_143:
  _os_log_error_impl(&dword_1C278D000, v93, OS_LOG_TYPE_ERROR, v92, buf, v94);
LABEL_151:
  *__error() = v118;
LABEL_152:
  v121 = *__error();
  v122 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
  {
    v126 = *a3;
    v127 = *(*(a3 + 1) + 8);
    *buf = 136316418;
    *&buf[4] = "db_compress_cache";
    *&buf[12] = 1024;
    *&buf[14] = 8313;
    *&buf[18] = 1024;
    *&buf[20] = v18;
    v148 = 1024;
    v149 = v126;
    v150 = 1024;
    v151 = v127;
    v152 = 1024;
    v153 = v132;
    _os_log_error_impl(&dword_1C278D000, v122, OS_LOG_TYPE_ERROR, "%s:%d: ERR: db_split_page error %d with page %d used_bytes %d disk page size %d\n", buf, 0x2Au);
  }

  *__error() = v121;
LABEL_155:
  *(a1 + 4) |= 2u;
  v123 = *__error();
  v124 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
  {
    v125 = *a3;
    *buf = 136315906;
    *&buf[4] = "_flush_cache_entry";
    *&buf[12] = 1024;
    *&buf[14] = 7933;
    *&buf[18] = 1024;
    *&buf[20] = v125;
    v148 = 1024;
    v149 = v18;
    _os_log_error_impl(&dword_1C278D000, v124, OS_LOG_TYPE_ERROR, "%s:%d: Failed compressing/splitting page %d error %d", buf, 0x1Eu);
  }

  *__error() = v123;
  a3[6] = 0;
  *(a1 + 800) = v18;
  return v18;
}

uint64_t db_get_obj(_DWORD *a1, unint64_t a2, void **a3, uint64_t a4)
{
  if (*a1 != 1685287992)
  {
    v6 = __si_assert_copy_extra_332();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 314, v8);
    free(v7);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_get_obj_callback(a1, a2, a3, a4, 0, 0, 0);
}

uint64_t db_iterate_objects_in_range(int *a1, int64_t a2, int64_t a3, int a4, uint64_t a5)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v74 = *__error();
    v75 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = *a1;
      *buf = 136315650;
      v90 = "db_iterate_objects_in_range";
      v91 = 1024;
      *v92 = 432;
      *&v92[4] = 1024;
      *&v92[6] = v76;
      _os_log_error_impl(&dword_1C278D000, v75, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v74;
    v77 = __si_assert_copy_extra_332();
    v78 = v77;
    if (v77)
    {
      v79 = v77;
    }

    else
    {
      v79 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 432, v79);
    free(v78);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (db_read_lock((a1 + 146)))
  {
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15535);
  }

  v10 = *(a1 + 107);
  v11 = *(v10 + 8);
  if (v11 < 1)
  {
    v19 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v12 = 0;
  v13 = *(v10 + 8);
  while (1)
  {
    v14 = (v13 + v12) >> 1;
    v15 = v10 + 20 + 16 * v14;
    v16 = *(v15 + 12);
    if (a4 == v16 >> 28)
    {
      v17 = a2 - *v15;
    }

    else
    {
      v17 = (a4 - (v16 >> 28));
    }

    v18 = (v13 + v12) >> 1;
    if (v17 < 0)
    {
      goto LABEL_11;
    }

    if (!v17)
    {
      break;
    }

    v12 = v14 + 1;
    v18 = v13;
LABEL_11:
    v13 = v18;
    if (v12 >= v18)
    {
      v19 = v17 > 0;
      goto LABEL_15;
    }
  }

  v19 = 0;
LABEL_15:
  v20 = v11 - 1;
  if (v20 <= v14)
  {
    v19 = 0;
  }

  v21 = v10 + 20;
  v22 = v14 + v19;
  v23 = (v21 + 16 * v22);
  if (v22 && v11 > v22)
  {
    v24 = *(v23 + 3);
    if (a4 == v24 >> 28)
    {
      v25 = a3 - *v23;
    }

    else
    {
      v25 = (a4 - (v24 >> 28));
    }

    if (v25 <= 0)
    {
      v54 = v21 + 16 * (v22 - 1);
      v55 = *(v54 + 12);
      v56 = a4 == v55 >> 28 ? a3 - *v54 : (a4 - (v55 >> 28));
      v33 = v23;
      if (v56 > 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v11 < 1)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_35;
  }

  v28 = 0;
  while (2)
  {
    v27 = (v11 + v28) >> 1;
    v29 = v21 + 16 * v27;
    v30 = *(v29 + 12);
    if (a4 == v30 >> 28)
    {
      v31 = a3 - *v29;
    }

    else
    {
      v31 = (a4 - (v30 >> 28));
    }

    v32 = (v11 + v28) >> 1;
    if (v31 < 0)
    {
LABEL_32:
      v11 = v32;
      if (v28 >= v32)
      {
        v26 = v31 > 0;
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  if (v31)
  {
    v28 = v27 + 1;
    v32 = v11;
    goto LABEL_32;
  }

  v26 = 0;
LABEL_35:
  if (v20 <= v27)
  {
    v26 = 0;
  }

  v33 = (v21 + 16 * (v27 + v26));
LABEL_38:
  if (dword_1EBF46AE8 >= 5)
  {
    v64 = *__error();
    v65 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = *v23;
      v67 = *(v23 + 2);
      v68 = *v33;
      v69 = *(v33 + 2);
      *buf = 134219008;
      v90 = a1;
      v91 = 2048;
      *v92 = v66;
      *&v92[8] = 1024;
      *v93 = v67;
      *&v93[4] = 2048;
      *&v93[6] = v68;
      v94 = 1024;
      v95 = v69;
      _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "%p iterate: (%llx @%x, %llx @%x)", buf, 0x2Cu);
    }

    *__error() = v64;
  }

  if (v23 > v33)
  {
    goto LABEL_96;
  }

  while (2)
  {
    value_out = 0;
    v34 = *(v23 + 2);
    v35 = *(v23 + 3);
    if (dword_1EBF46AE8 >= 5)
    {
      v85 = a5;
      v50 = *__error();
      v51 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = *v23;
        v53 = *(v23 + 2);
        *buf = 134218496;
        v90 = a1;
        v91 = 2048;
        *v92 = v52;
        *&v92[8] = 1024;
        *v93 = v53;
        _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx %x", buf, 0x1Cu);
      }

      *__error() = v50;
      a5 = v85;
    }

    if (_page_fetch_with_fd(a1, &value_out, v34, v35, 11, buf, 0xFFFFFFFFLL, 0) || (v36 = value_out, *value_out != 1684172850) || (*(value_out + 12) & 0xF0) != 0)
    {
LABEL_87:
      v23 += 2;
      if (v23 > v33)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  v37 = *(value_out + 2);
  if (v37 < 21)
  {
LABEL_86:
    page_release(a1, v36, v34, 0x10u, v36[1]);
    goto LABEL_87;
  }

  v84 = a5;
  v38 = value_out + v37;
  v39 = value_out + 20;
  v86 = value_out + v37;
  while (1)
  {
    if (*v39 == -4)
    {
LABEL_85:
      v36 = value_out;
      a5 = v84;
      goto LABEL_86;
    }

    v40 = v39[4];
    if (v39[4] < 0)
    {
      v41 = v39[4];
      if (v41 <= 0xBF)
      {
        v40 = v39[5] | ((v40 & 0x3F) << 8);
        goto LABEL_64;
      }

      if (v41 > 0xDF)
      {
        if (v41 > 0xEF)
        {
          if (v41 > 0xF7)
          {
            if (v41 > 0xFB)
            {
              if (v41 > 0xFD)
              {
                if (v41 == 255)
                {
                  v40 = *(v39 + 5);
                  goto LABEL_64;
                }

                v42 = (v39[5] << 48) | (v39[6] << 40) | (v39[7] << 32) | (v39[8] << 24) | (v39[9] << 16) | (v39[10] << 8);
                v43 = v39[11];
              }

              else
              {
                v42 = ((v40 & 1) << 48) | (v39[5] << 40) | (v39[6] << 32) | (v39[7] << 24) | (v39[8] << 16) | (v39[9] << 8);
                v43 = v39[10];
              }
            }

            else
            {
              v42 = ((v40 & 3) << 40) | (v39[5] << 32) | (v39[6] << 24) | (v39[7] << 16) | (v39[8] << 8);
              v43 = v39[9];
            }
          }

          else
          {
            v42 = ((v40 & 7) << 32) | (v39[5] << 24) | (v39[6] << 16) | (v39[7] << 8);
            v43 = v39[8];
          }
        }

        else
        {
          v42 = ((v40 & 0xF) << 24) | (v39[5] << 16) | (v39[6] << 8);
          v43 = v39[7];
        }
      }

      else
      {
        v42 = ((v40 & 0x1F) << 16) | (v39[5] << 8);
        v43 = v39[6];
      }

      v40 = v42 | v43;
    }

LABEL_64:
    if (dword_1EBF46AE8 >= 5)
    {
      v82 = *__error();
      v47 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *v23;
        v49 = *(v23 + 2);
        *buf = 134218752;
        v90 = a1;
        v91 = 2048;
        *v92 = v40;
        *&v92[8] = 2048;
        *v93 = v48;
        *&v93[8] = 1024;
        *&v93[10] = v49;
        _os_log_impl(&dword_1C278D000, v47, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx (%llx @%x)", buf, 0x26u);
      }

      *__error() = v82;
      v38 = v86;
    }

    if (v40 >= a3)
    {
      break;
    }

    if (v40 >= a2)
    {
      v87 = 0;
      _inflateDBO(a1, v39, &v87, 0, 0, 0);
      v45 = v87;
      if (*(v87 + 3) <= 0x2Fu)
      {
        v60 = __si_assert_copy_extra_3233(0, -1);
        v61 = v60;
        v62 = "";
        if (v60)
        {
          v62 = v60;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 13531, "dbo->used_bytes >= sizeof(external_db_obj)", v62);
        free(v61);
        if (__valid_fs(-1))
        {
          v63 = 2989;
        }

        else
        {
          v63 = 3072;
        }

        *v63 = -559038737;
        abort();
      }

      if (dword_1EBF46AE8 >= 5)
      {
        v83 = *__error();
        log = _SILogForLogForCategory(7);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v90 = a1;
          v91 = 2048;
          *v92 = v40;
          *&v92[8] = 2048;
          *v93 = a2;
          _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx >= %llx", buf, 0x20u);
        }

        *__error() = v83;
      }

      if ((v45[40] & 5) != 0)
      {
        free(v45);
      }

      else
      {
        v46 = (*(v84 + 16))(v84, v45);
        free(v45);
        if ((v46 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_76;
    }

    if (dword_1EBF46AE8 >= 5)
    {
      v81 = *__error();
      v44 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v90 = a1;
        v91 = 2048;
        *v92 = v40;
        *&v92[8] = 2048;
        *v93 = a2;
        _os_log_impl(&dword_1C278D000, v44, OS_LOG_TYPE_DEFAULT, "%p iterate: %llx < %llx", buf, 0x20u);
      }

      *__error() = v81;
LABEL_76:
      v38 = v86;
    }

    v39 += (*v39 + 4);
    if (v39 >= v38)
    {
      goto LABEL_85;
    }
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v70 = *__error();
    v71 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *v23;
      v73 = *(v23 + 2);
      *buf = 134218752;
      v90 = a1;
      v91 = 2048;
      *v92 = v40;
      *&v92[8] = 2048;
      *v93 = v72;
      *&v93[8] = 1024;
      *&v93[10] = v73;
      _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "%p iterate: bail %llx (%llx @%x)", buf, 0x26u);
    }

    *__error() = v70;
  }

LABEL_95:
  page_release(a1, value_out, v34, 0x10u, *(value_out + 1));
LABEL_96:
  v57 = pthread_mutex_lock((a1 + 146));
  v58 = a1[195] - 1;
  a1[195] = v58;
  if (!v58)
  {
    db_rwlock_wakeup((a1 + 146), 0, 0);
  }

  result = pthread_mutex_unlock((a1 + 146));
  if (v57)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 15602);
  }

  return result;
}

uint64_t page_compress(uint64_t a1, uint64_t a2, int8x16_t **a3, __int32 *a4, char a5)
{
  v81 = *MEMORY[0x1E69E9840];
  result = 22;
  if (!a2 || !a3)
  {
    return result;
  }

  destLen = 0;
  v7 = *(a2 + 12);
  v8 = 16;
  if ((v7 & 4) == 0)
  {
    v8 = 4;
  }

  v9 = *(a2 + v8);
  if ((v7 & 0xC) != 0)
  {
    if ((v7 & 8) == 0)
    {
      v12 = a1;
      v72 = a4;
      v73 = a3;
      v13 = malloc_type_valloc(v9 + 16, 0x22901C7EuLL);
      if (!v13)
      {
        *v73 = 0;
        return 12;
      }

      v14 = v13;
      v15 = v9 - 20;
      destLen = v15;
      v16 = a2;
      v17 = *(a2 + 8);
      v18 = v17 - 20;
      v19 = v12;
      v20 = a5;
      if ((*(v12 + 4) & 0x80) == 0 || (v21 = *a2, *a2 != 1684172850) && v21 != 846226020)
      {
LABEL_31:
        if (v20)
        {
          v34 = fast_compress_limitedOutput((v16 + 20), &v14[1].u8[4], v18, v15);
          destLen = v34;
          if (!v34)
          {
            destLen = v15;
            v19 = v12;
            if ((a5 & 2) == 0)
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v36 = 7;
              v35 = 8;
              v16 = a2;
              goto LABEL_75;
            }

            if ((*(v12 + 804) & 4) != 0)
            {
              v39 = compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
              if (v39 <= 0xFA00)
              {
                if (v39)
                {
                  MEMORY[0x1EEE9AC00](v40);
                  v44 = &v68 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
                  bzero(v44, v43);
                }

                else
                {
                  v44 = 0;
                }

                v42 = compression_encode_buffer(&v14[1].u8[4], v15, (a2 + 20), v18, v44, COMPRESSION_LZFSE);
                destLen = v42;
              }

              else
              {
                v41 = malloc_type_malloc(v39, 0x4B55B2A0uLL);
                v42 = compression_encode_buffer(&v14[1].u8[4], v15, (a2 + 20), v18, v41, COMPRESSION_LZFSE);
                destLen = v42;
                free(v41);
              }

              v45 = v42 == 0;
              v33 = v42 != 0;
              if (v45)
              {
                v38 = -5;
              }

              else
              {
                v38 = 0;
              }
            }

            else
            {
              v38 = compress2(&v14[1].u8[4], &destLen, (a2 + 20), v18, 3);
              v33 = 0;
            }

            v37 = 1;
            goto LABEL_59;
          }

          v32 = 0;
          v33 = 0;
          v35 = 4104;
        }

        else
        {
          if ((v20 & 2) == 0 && v18 > 12 * v15)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
LABEL_71:
            v36 = 7;
            v35 = 8;
            goto LABEL_75;
          }

          v37 = v20 & 2;
          v38 = compress2(&v14[1].u8[4], &destLen, (v16 + 20), v18, 3);
          if (!dword_1EBF46AE8)
          {
            goto LABEL_42;
          }

          if (v38)
          {
            atomic_fetch_add(&page_compress_failedCompressed, 1uLL);
            if (dword_1EBF46AE8 >= 5)
            {
              v71 = v38;
              v64 = *__error();
              v65 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v76 = *&v18;
                _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "Zip Failed compressing %ld bytes\n", buf, 0xCu);
              }

              v33 = 0;
              *__error() = v64;
              v38 = v71;
              goto LABEL_59;
            }

LABEL_42:
            v33 = 0;
LABEL_59:
            if (v37)
            {
              v45 = v38 == -5;
            }

            else
            {
              v45 = 0;
            }

            v32 = v45;
            if (v45)
            {
              destLen = v15;
              v38 = compress2(&v14[1].u8[4], &destLen, (a2 + 20), v18, 9);
            }

            v31 = v38 == 0;
            v16 = a2;
            if (v38 == -4)
            {
              v36 = 12;
              v35 = 8;
              v19 = v12;
              goto LABEL_75;
            }

            v19 = v12;
            if (v38 == -5)
            {
              v31 = 0;
              goto LABEL_71;
            }

            v35 = 8;
            if (v38)
            {
              v31 = 0;
              v36 = 22;
              goto LABEL_75;
            }

            goto LABEL_38;
          }

          atomic_fetch_add(&page_compress_totalUncompressed, v18);
          atomic_fetch_add(&page_compress_totalCompressed, destLen);
          atomic_fetch_add(&page_compress_successCompressed, 1uLL);
          if (dword_1EBF46AE8 < 5)
          {
            v19 = v12;
            v16 = a2;
            v32 = 0;
            v33 = 0;
            v35 = 8;
            goto LABEL_38;
          }

          v66 = *__error();
          v67 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v76 = page_compress_totalUncompressed / page_compress_totalCompressed;
            v77 = 2048;
            v78 = page_compress_successCompressed;
            v79 = 2048;
            v80 = page_compress_failedCompressed;
            _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "Zip Compression ratio: %f good:%lld bad:%lld\n", buf, 0x20u);
          }

          v32 = 0;
          v33 = 0;
          *__error() = v66;
          v35 = 8;
        }

        v19 = v12;
        v16 = a2;
LABEL_38:
        v36 = 0;
        v31 = 1;
LABEL_75:
        if ((*(v19 + 4) & 0x80) == 0 || (v46 = *v16, *v16 != 1684172850) && v46 != 846226020)
        {
LABEL_90:
          if (v31)
          {
            v14->i32[0] = 1684172850;
            v14->i32[1] = v9;
            v54 = destLen;
            v14->i32[2] = destLen + 20;
            v55 = *(v16 + 12) & 0xFFFFEFF3 | v35 | 0x2000;
            if (!v33)
            {
              v55 = *(v16 + 12) & 0xFFFFCFF3 | v35 & 0xFFFFDFFB;
            }

            v14->i32[3] = v55;
            v14[1].i32[0] = *(v16 + 8);
            bzero(v14[1].i64 + v54 + 4, v15 - v54);
            v56 = v73;
            if (v72)
            {
              v57 = *(a2 + 8);
              if ((v32 & 1) == 0)
              {
                v57 += 4 * (v14->i32[1] - v14->i32[2]);
              }

              *v72 = v57;
            }

            if ((*(v12 + 4) & 0x80) != 0)
            {
              *v14 = vrev32q_s8(*v14);
              v14[1].i32[0] = bswap32(v14[1].u32[0]);
            }

            result = 0;
            *v56 = v14;
          }

          else
          {
            v58 = v36;
            v59 = v14;
            v60 = v16;
            free(v59);
            result = v58;
            *v73 = 0;
            if (*(v60 + 8) <= v9)
            {
              result = 0;
              if (v72)
              {
                *v72 = v9;
              }
            }
          }

          return result;
        }

        v47 = *(v16 + 12);
        if (v46 == 846226020)
        {
          v48 = *(v16 + 8);
          if (!(v47 >> 28))
          {
            v46 = 846226020;
LABEL_89:
            v53 = bswap32(*(v16 + 4));
            *v16 = bswap32(v46);
            *(v16 + 4) = v53;
            *(v16 + 8) = bswap32(v48);
            *(v16 + 12) = bswap32(v47);
            *(v16 + 16) = bswap32(*(v16 + 16));
            goto LABEL_90;
          }

          v49 = bswap32(v48);
        }

        else
        {
          v48 = *(v16 + 8);
          v49 = v48;
          if ((v47 & 0xF0) == 0)
          {
            goto LABEL_89;
          }
        }

        if (v49 >= 0x21)
        {
          v69 = v15;
          v70 = v33;
          v71 = v36;
          v50 = v16 + 32;
          for (i = 32; i < v49; i += v52)
          {
            *v50 = bswap32(*v50);
            v52 = strlen((v50 + 4)) + 4;
            v50 += v52;
          }

          v16 = a2;
          v46 = *a2;
          v48 = *(a2 + 8);
          v47 = *(a2 + 12);
          v33 = v70;
          v36 = v71;
          v15 = v69;
        }

        *(v16 + 20) = bswap32(*(v16 + 20));
        goto LABEL_89;
      }

      v22 = *(a2 + 12);
      if (v21 == 846226020)
      {
        if (!(v22 >> 28))
        {
          v21 = 846226020;
LABEL_30:
          v30 = bswap32(*(v16 + 4));
          *v16 = bswap32(v21);
          *(v16 + 4) = v30;
          *(v16 + 8) = bswap32(v17);
          *(v16 + 12) = bswap32(v22);
          *(v16 + 16) = bswap32(*(v16 + 16));
          goto LABEL_31;
        }

        v26 = bswap32(v17);
      }

      else
      {
        v26 = *(a2 + 8);
        if ((v22 & 0xF0) == 0)
        {
          goto LABEL_30;
        }
      }

      if (v26 >= 0x21)
      {
        v27 = a2 + 32;
        for (j = 32; j < v26; j += v29)
        {
          *v27 = bswap32(*v27);
          v29 = strlen((v27 + 4)) + 4;
          v27 += v29;
        }

        v16 = a2;
        v21 = *a2;
        LODWORD(v17) = *(a2 + 8);
        v22 = *(a2 + 12);
        v19 = v12;
        v20 = a5;
        v15 = v9 - 20;
      }

      *(v16 + 20) = bswap32(*(v16 + 20));
      goto LABEL_30;
    }

    v23 = *__error();
    v24 = _SILogForLogForCategory(7);
    v25 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v24, v25, "page_compress: ERR: page is already compressed!\n", buf, 2u);
    }

    *__error() = v23;
    return 22;
  }

  else
  {
    if (a4)
    {
      *a4 = v9;
    }

    if (*(a2 + 8) > v9)
    {
      v61 = __si_assert_copy_extra_3233(0, -1);
      v62 = v61;
      v63 = "";
      if (v61)
      {
        v63 = v61;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 3021, "(size_t)dbp->used_bytes <= sz", v63);
      free(v62);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t db2_delete_obj_with_flags(uint64_t a1, unint64_t *a2, char a3)
{
  v106 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 804) & 8) != 0)
  {
    return 13;
  }

  v6 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v6 = __THREAD_SLOT_KEY[0];
  }

  v7 = pthread_getspecific(v6);
  HIDWORD(v9) = qos_class_self() - 9;
  LODWORD(v9) = HIDWORD(v9);
  v8 = v9 >> 2;
  if (v8 > 6)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_1C2BFF8F0[v8];
  }

  v12 = pthread_mutex_lock((a1 + 584));
  if (*(a1 + 768) || *(a1 + 780) || (*(a1 + 796) & 1) != 0)
  {
LABEL_11:
    db_rwlock_wait(a1 + 584, v10, 2);
    goto LABEL_12;
  }

  if (v10 <= 5)
  {
    v56 = v10 - 6;
    v57 = (a1 + 16 * v10 + 648);
    while (!*v57)
    {
      v57 += 2;
      if (__CFADD__(v56++, 1))
      {
        goto LABEL_80;
      }
    }

    goto LABEL_11;
  }

LABEL_80:
  *(a1 + 768) = pthread_self();
LABEL_12:
  pthread_mutex_unlock((a1 + 584));
  if (v12)
  {
    v90 = *__error();
    v91 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v92 = 136315650;
      v93 = "db2_delete_obj_with_flags";
      v94 = 1024;
      v95 = 11862;
      v96 = 1024;
      LODWORD(v97) = v12;
      _os_log_error_impl(&dword_1C278D000, v91, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", &v92, 0x18u);
    }

    *__error() = v90;
    sdb2_die(a1, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11862);
  }

  if (v7)
  {
    v13 = CIOnThreadCleanUpPush(v7 - 1, db_write_unlock, a1 + 584);
  }

  else
  {
    v13 = -1;
  }

  v14 = *a2;
  if (*(a1 + 804))
  {
    v15 = (*(a2 + 10) >> 5) & 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 804) & 1;
  v17 = *(a1 + 992);
  v18 = *(v17 + 8);
  if (!*&v18)
  {
LABEL_55:
    if (a3)
    {
      goto LABEL_36;
    }

    goto LABEL_56;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = *a2;
    if (v14 >= *&v18)
    {
      v20 = v14 % *&v18;
    }
  }

  else
  {
    v20 = (*&v18 - 1) & v14;
  }

  v21 = *(*v17 + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_35:
    v18.i32[0] = 0;
    if (a3)
    {
      goto LABEL_36;
    }

LABEL_56:
    if (v18.i8[0])
    {
      goto LABEL_109;
    }

    v39 = *(a1 + 856);
    v40 = *(v39 + 8);
    if (!v40)
    {
      v53 = pthread_mutex_lock((a1 + 584));
      *(a1 + 788) = 0;
      v54 = *(a1 + 760);
      *(a1 + 760) = 0u;
      v55 = *(a1 + 780) != 0;
      *(a1 + 796) = 0;
      db_rwlock_wakeup(a1 + 584, v55, 0);
      pthread_mutex_unlock((a1 + 584));
      if (v54)
      {
        pthread_override_qos_class_end_np(v54);
      }

      if (v53)
      {
        sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11897);
      }

      goto LABEL_131;
    }

    v41 = *(v39 + 16);
    if (v41 < v40)
    {
      v42 = v39 + 16 * v41;
      v44 = *(v42 + 20);
      v43 = v42 + 20;
      if (v44 == v14)
      {
        v45 = *(v43 + 12);
        if (v15 == v45 >> 28)
        {
          goto LABEL_107;
        }
      }
    }

    v46 = v40;
    if (v40 < 1)
    {
      v62 = 0;
      v50 = 0;
      goto LABEL_103;
    }

    v47 = 0;
    while (1)
    {
      v50 = (v40 + v47) >> 1;
      v51 = v39 + 20 + 16 * v50;
      v52 = v15 - (*(v51 + 12) >> 28);
      if (v52)
      {
        v48 = v52;
        v49 = (v40 + v47) >> 1;
        if (v48 < 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v48 = v14 - *v51;
        v49 = (v40 + v47) >> 1;
        if (v48 < 0)
        {
          goto LABEL_66;
        }
      }

      if (!v48)
      {
        v62 = 0;
LABEL_103:
        v70 = v46 - 1 > v50 && v62;
        v71 = v50 + v70;
        v72 = v39 + 16 * v71;
        *(v39 + 16) = v71;
        v43 = v72 + 20;
        v45 = *(v72 + 32);
LABEL_107:
        if (_page_obj_exists_by_oid_and_type(a1, v14, v15, *(v43 + 8), v45 & 0xFFFFFFF))
        {
          v17 = *(a1 + 992);
          v14 = *a2;
          v16 = *(a1 + 804) & 1;
LABEL_109:
          if (v16)
          {
            if (db_updateset_delete_object(v17, v14, (*(a2 + 10) >> 5) & 1))
            {
LABEL_111:
              v73 = *__error();
              v74 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v92 = 136315394;
                v93 = "db2_delete_obj_with_flags";
                v94 = 1024;
                v95 = 11913;
                _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: Delete failed", &v92, 0x12u);
              }

              *__error() = v73;
              v11 = 22;
              goto LABEL_121;
            }
          }

          else if (db_updateset_delete_object(v17, v14, 0))
          {
            goto LABEL_111;
          }

          if ((*(*(a1 + 992) + 56) + 16 * *(*(a1 + 992) + 48)) >= 0x80000 && (v75 = flush_updateset_locked(a1, 0)) != 0)
          {
            v76 = v75;
            v77 = *__error();
            v78 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              v92 = 136315650;
              v93 = "db2_delete_obj_with_flags";
              v94 = 1024;
              v95 = 11907;
              v96 = 1024;
              LODWORD(v97) = v76;
              _os_log_error_impl(&dword_1C278D000, v78, OS_LOG_TYPE_ERROR, "%s:%d: Error %d from flush_updateset_locked", &v92, 0x18u);
            }

            v11 = 0;
            *__error() = v77;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_121;
        }

        v87 = pthread_mutex_lock((a1 + 584));
        *(a1 + 788) = 0;
        v88 = *(a1 + 760);
        *(a1 + 760) = 0u;
        v89 = *(a1 + 780) != 0;
        *(a1 + 796) = 0;
        db_rwlock_wakeup(a1 + 584, v89, 0);
        pthread_mutex_unlock((a1 + 584));
        if (v88)
        {
          pthread_override_qos_class_end_np(v88);
        }

        if (v87)
        {
          sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11892);
        }

LABEL_131:
        v11 = 2;
        if (v7)
        {
          goto LABEL_125;
        }

        return v11;
      }

      v47 = v50 + 1;
      v49 = v40;
LABEL_66:
      v40 = v49;
      if (v47 >= v49)
      {
        v62 = v48 > 0;
        goto LABEL_103;
      }
    }
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 != v14)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *&v18)
        {
          v23 %= *&v18;
        }
      }

      else
      {
        v23 &= *&v18 - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    if (v22[2] == v14)
    {
      break;
    }

LABEL_28:
    v22 = *v22;
    if (!v22)
    {
      v18.i32[0] = 0;
      goto LABEL_55;
    }
  }

  v59 = *(v22 + 6);
  v18.i32[0] = v59 != 3 && v59 != 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_36:
  if (v18.i32[0])
  {
    if (v16)
    {
      v24 = (*(a2 + 10) >> 5) & 1;
    }

    else
    {
      v24 = 0;
    }

    v11 = db_updateset_delete_object(v17, v14, v24);
    goto LABEL_121;
  }

  v25 = *(a1 + 856);
  v26 = *(v25 + 8);
  if (!v26)
  {
    v11 = 2;
    goto LABEL_121;
  }

  v27 = *(v25 + 16);
  if (v27 < v26)
  {
    v28 = v25 + 16 * v27;
    v30 = *(v28 + 20);
    v29 = v28 + 20;
    if (v30 == v14)
    {
      v31 = *(v29 + 12);
      if (v15 == v31 >> 28)
      {
        goto LABEL_98;
      }
    }
  }

  v32 = v26;
  if (v26 < 1)
  {
    v61 = 0;
    v36 = 0;
    goto LABEL_94;
  }

  v33 = 0;
  while (2)
  {
    v36 = (v26 + v33) >> 1;
    v37 = v25 + 20 + 16 * v36;
    v38 = v15 - (*(v37 + 12) >> 28);
    if (v38)
    {
      v34 = v38;
      v35 = (v26 + v33) >> 1;
      if (v34 < 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v34 = v14 - *v37;
      v35 = (v26 + v33) >> 1;
      if (v34 < 0)
      {
LABEL_48:
        v26 = v35;
        if (v33 >= v35)
        {
          v61 = v34 > 0;
          goto LABEL_94;
        }

        continue;
      }
    }

    break;
  }

  if (v34)
  {
    v33 = v36 + 1;
    v35 = v26;
    goto LABEL_48;
  }

  v61 = 0;
LABEL_94:
  v63 = v32 - 1 > v36 && v61;
  v64 = v36 + v63;
  v65 = v25 + 16 * v64;
  *(v25 + 16) = v64;
  v29 = v65 + 20;
  v31 = *(v65 + 32);
LABEL_98:
  v66 = *(v29 + 8);
  v67 = v14;
  v11 = _page_delete_obj_by_oid_and_type(a1, v14, v15, v66, v31 & 0xFFFFFFF, 0);
  if ((v11 & 0xFFFFFFFD) != 0)
  {
    v68 = *__error();
    v69 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v92 = 136316674;
      v93 = "db2_delete_obj_with_flags";
      v94 = 1024;
      v95 = 11880;
      v96 = 2048;
      v97 = v67;
      v98 = 2048;
      v99 = v67;
      v100 = 2048;
      v101 = v15;
      v102 = 2048;
      v103 = v66;
      v104 = 1024;
      v105 = v11;
      _os_log_error_impl(&dword_1C278D000, v69, OS_LOG_TYPE_ERROR, "%s:%d: Failed delete, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", &v92, 0x40u);
    }

    *__error() = v68;
  }

LABEL_121:
  v79 = pthread_mutex_lock((a1 + 584));
  *(a1 + 788) = 0;
  v80 = *(a1 + 760);
  *(a1 + 760) = 0u;
  v81 = *(a1 + 780) != 0;
  *(a1 + 796) = 0;
  db_rwlock_wakeup(a1 + 584, v81, 0);
  pthread_mutex_unlock((a1 + 584));
  if (v80)
  {
    pthread_override_qos_class_end_np(v80);
  }

  if (v79)
  {
    sdb2_die(a1, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 11916);
  }

  if (v7)
  {
LABEL_125:
    CIOnThreadCleanUpClearItem(v7 - 1, v13);
    v82 = &threadData[9 * (v7 - 1)];
    v85 = *(v82 + 14);
    v83 = v82 + 7;
    v84 = v85;
    if (v13 + 1 == v85)
    {
      *v83 = v84 - 1;
    }
  }

  return v11;
}

uint64_t db_delete_obj(int *a1, unint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      *buf = 136315650;
      v11 = "db_delete_obj";
      v12 = 1024;
      v13 = 330;
      v14 = 1024;
      v15 = v6;
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v4;
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 330, v9);
    free(v8);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return db2_delete_obj_with_flags(a1, a2, 0);
}

BOOL _page_obj_exists_by_oid_and_type(uint64_t a1, int64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  value_out = 0;
  v9 = _page_fetch_with_fd(a1, &value_out, a4, a5, 0, buf, 0xFFFFFFFFLL, 0);
  result = 0;
  if (v9)
  {
    return result;
  }

  v11 = *(value_out + 3);
  if ((v11 & 0xF0) != 0)
  {
    v24 = *__error();
    v25 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_page_obj_exists_by_oid_and_type";
      v36 = 1024;
      v37 = 5603;
      v38 = 1024;
      v39 = a4;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v24;
    v26 = __si_assert_copy_extra_3233(0, -1);
    v27 = v26;
    v28 = "";
    if (v26)
    {
      v28 = v26;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5604, v28);
LABEL_55:
    free(v27);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((v11 & 8) != 0)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_page_obj_exists_by_oid_and_type";
      v36 = 1024;
      v37 = 5609;
      v38 = 1024;
      v39 = a4;
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v29;
    v31 = __si_assert_copy_extra_3233(0, -1);
    v27 = v31;
    v32 = "";
    if (v31)
    {
      v32 = v31;
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5610, v32);
    goto LABEL_55;
  }

  *buf = 0;
  if (find_slot_for_oid_and_type(a1, value_out, a2, a3, buf, &v33, 1) == 2)
  {
    page_release(a1, value_out, a4, 0, 0);
    return 0;
  }

  else
  {
    v12 = *(*buf + 4);
    if (*(*buf + 4) < 0)
    {
      v14 = *(*buf + 4);
      if (v14 > 0xBF)
      {
        if (v14 > 0xDF)
        {
          if (v14 > 0xEF)
          {
            if (v14 > 0xF7)
            {
              if (v14 > 0xFB)
              {
                if (v14 > 0xFD)
                {
                  if (v14 == 255)
                  {
                    v12 = *(*buf + 5);
                    v13 = 9;
                  }

                  else
                  {
                    v12 = (*(*buf + 5) << 48) | (*(*buf + 6) << 40) | (*(*buf + 7) << 32) | (*(*buf + 8) << 24) | (*(*buf + 9) << 16) | (*(*buf + 10) << 8) | *(*buf + 11);
                    v13 = 8;
                  }
                }

                else
                {
                  v12 = ((v12 & 1) << 48) | (*(*buf + 5) << 40) | (*(*buf + 6) << 32) | (*(*buf + 7) << 24) | (*(*buf + 8) << 16) | (*(*buf + 9) << 8) | *(*buf + 10);
                  v13 = 7;
                }
              }

              else
              {
                v12 = ((v12 & 3) << 40) | (*(*buf + 5) << 32) | (*(*buf + 6) << 24) | (*(*buf + 7) << 16) | (*(*buf + 8) << 8) | *(*buf + 9);
                v13 = 6;
              }
            }

            else
            {
              v12 = ((v12 & 7) << 32) | (*(*buf + 5) << 24) | (*(*buf + 6) << 16) | (*(*buf + 7) << 8) | *(*buf + 8);
              v13 = 5;
            }
          }

          else
          {
            v12 = ((v12 & 0xF) << 24) | (*(*buf + 5) << 16) | (*(*buf + 6) << 8) | *(*buf + 7);
            v13 = 4;
          }
        }

        else
        {
          v12 = ((v12 & 0x1F) << 16) | (*(*buf + 5) << 8) | *(*buf + 6);
          v13 = 3;
        }
      }

      else
      {
        v13 = 2;
        v12 = *(*buf + 5) | ((v12 & 0x3F) << 8);
      }
    }

    else
    {
      v13 = 1;
    }

    v15 = (*buf + 4 + v13);
    v16 = *v15;
    if (*v15 < 0)
    {
      if (v16 >= 0xC0)
      {
        if (v16 >= 0xE0)
        {
          v21 = __si_assert_copy_extra_3233(0, -1);
          v22 = v21;
          v23 = "";
          if (v21)
          {
            v23 = v21;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v23);
          free(v22);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v16 = v15[v17];
    }

    v20 = (*(a1 + 804) & (v16 >> 5) & 1) == a3 && v12 == a2 && *buf < value_out + *(value_out + 2);
    page_release(a1, value_out, a4, 0, 0);
    return v20;
  }
}

uint64_t db_updateset_delete_object(float *a1, unint64_t a2, int a3)
{
  v6 = std::__hash_table<long,std::hash<long>,std::equal_to<long>,std::allocator<long>>::find<long>(a1, a2);
  if (v6)
  {
    v7 = *(v6 + 6);
    if (v7 == 3)
    {
      return 2;
    }

    v8 = v6[4];
    if (v7 == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__erase_unique<unsigned long long>(a1, a2);
      --*(a1 + 5);
      v9 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v12 = a2;
  v13 = &v12;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,value_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,value_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,value_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a1, a2, &v13);
  v10[3] = 3;
  *(v10 + 8) = a3;
  *(v10 + 9) = 0;
  ++*(a1 + 6);
  v9 = v7 != 0;
LABEL_7:
  result = 0;
  if (v9)
  {
    if (v8)
    {
      *(a1 + 7) -= (*v8 + 4);
      free(v8);
      return 0;
    }
  }

  return result;
}

uint64_t db_lock_datastore(int *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a1;
      *buf = 136315650;
      v16 = "db_lock_datastore";
      v17 = 1024;
      v18 = 264;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v9;
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 264, v14);
    free(v13);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  HIDWORD(v3) = qos_class_self() - 9;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 2;
  if (v2 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1C2BFF8F0[v2];
  }

  pthread_mutex_lock((a1 + 146));
  if (*(a1 + 96) || a1[195] || (a1[199] & 1) != 0)
  {
LABEL_8:
    db_rwlock_wait((a1 + 146), v4, 2);
    goto LABEL_9;
  }

  if (v4 <= 5)
  {
    v6 = v4 - 6;
    v7 = &a1[4 * v4 + 162];
    while (!*v7)
    {
      v7 += 4;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_17;
      }
    }

    goto LABEL_8;
  }

LABEL_17:
  *(a1 + 96) = pthread_self();
LABEL_9:

  return pthread_mutex_unlock((a1 + 146));
}

uint64_t db_flush_datastore(int *a1, _DWORD *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v29 = *__error();
    v30 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *a1;
      *buf = 136315650;
      *v40 = "db_flush_datastore";
      *&v40[8] = 1024;
      *v41 = 268;
      *&v41[4] = 1024;
      LODWORD(v42) = v31;
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v29;
    v32 = __si_assert_copy_extra_332();
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 268, v34);
    free(v33);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (dword_1EBF46AE8 >= 5)
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v40 = CFAbsoluteTimeGetCurrent();
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "Flush starting at %f", buf, 0xCu);
    }

    *__error() = v23;
  }

  v4 = *(a1 + 115);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = 0;
  v6 = *(v4 + 216);
  if (v6 > 842150449)
  {
    if (v6 != 1684300900)
    {
      if (v6 == 842150450)
      {
        v5 = (*(v4 + 220) - 1);
      }

      goto LABEL_14;
    }

LABEL_12:
    v5 = *(v4 + 224) - 1;
    goto LABEL_14;
  }

  if (v6 == -572662307)
  {
    v5 = data_map_double_count(v4);
    goto LABEL_14;
  }

  if (v6 == -270471200)
  {
    goto LABEL_12;
  }

LABEL_14:
  if (dword_1EBF46AE8 >= 5)
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v40 = v5;
      _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Flush at vector count %zu", buf, 0xCu);
    }

    *__error() = v25;
  }

  *a2 = 0;
  if ((a1[201] & 8) == 0)
  {
    if ((a1[1] & 2) != 0)
    {
      v9 = *__error();
      v12 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v40 = "db2_flush_datastore";
        *&v40[8] = 1024;
        *v41 = 8564;
        *&v41[4] = 2080;
        v42 = a1 + 81;
        _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: !WARNING! prior write-errors invalidate sync.\n", buf, 0x1Cu);
      }

      v8 = 22;
      goto LABEL_24;
    }

    v7 = _db2_flush_all_cache(a1, 1);
    if (v7)
    {
      v8 = v7;
      v9 = *__error();
      v10 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *v40 = "db2_flush_datastore";
        *&v40[8] = 1024;
        *v41 = 8579;
        *&v41[4] = 2080;
        v42 = a1 + 81;
        v43 = 1024;
        v44 = v8;
        v11 = "%s:%d: %s : db2_sync_datastore: !WARNING! write-errors flushing cache. %d\n";
LABEL_29:
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x22u);
      }
    }

    else
    {
      v14 = *(*(a1 + 107) + 12);
      v15 = map_write(a1);
      if (!v15)
      {
        for (i = 0; i != 6; ++i)
        {
          v17 = &a1[2 * i];
          v18 = *(v17 + 110);
          if (i == 5 || (a1[201] & 0x14) != 0)
          {
            data_map_flush(v18);
          }

          else
          {
            v19 = *(v18 + 1);
            if (v19)
            {
              page_release(a1, v19, *v18, 5u, 0);
              if (dword_1EBF46AE8 >= 5)
              {
                v37 = *__error();
                log = _SILogForLogForCategory(7);
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = *(v17 + 110);
                  v21 = *v20;
                  LODWORD(v20) = v20[14];
                  *buf = 67109632;
                  *v40 = v21;
                  *&v40[4] = 1024;
                  *&v40[6] = i;
                  *v41 = 1024;
                  *&v41[2] = v20;
                  _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Push dirty string page %d to disk (%d). %d strings", buf, 0x14u);
                }

                *__error() = v37;
              }

              *(*(v17 + 110) + 8) = 0;
              **(v17 + 110) = -1;
            }

            else if (dword_1EBF46AE8 >= 5)
            {
              v38 = *__error();
              loga = _SILogForLogForCategory(7);
              if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
              {
                v22 = *(*(v17 + 110) + 56);
                *buf = 67109376;
                *v40 = i;
                *&v40[4] = 1024;
                *&v40[6] = v22;
                _os_log_impl(&dword_1C278D000, loga, OS_LOG_TYPE_DEFAULT, "No dirty string page for %d. %d strings", buf, 0xEu);
              }

              *__error() = v38;
            }
          }
        }

        if ((a1[1] & 1) != 0 && (v14 & 1) == 0)
        {
          return 0;
        }

        *a2 = 1;
        fd_sync(*(a1 + 106), 0);
        if (dword_1EBF46AE8 < 5)
        {
          return 0;
        }

        v9 = *__error();
        v27 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          Current = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          *v40 = Current;
          _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Flush ending at %f", buf, 0xCu);
        }

        v8 = 0;
        goto LABEL_24;
      }

      v8 = v15;
      v9 = *__error();
      v10 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *v40 = "db2_flush_datastore";
        *&v40[8] = 1024;
        *v41 = 8590;
        *&v41[4] = 2080;
        v42 = a1 + 81;
        v43 = 1024;
        v44 = v8;
        v11 = "%s:%d: %s : db2_sync_datastore: !WARNING! write-errors writing map. %d\n";
        goto LABEL_29;
      }
    }

LABEL_24:
    *__error() = v9;
    return v8;
  }

  return 13;
}

uint64_t __flush_updateset_locked_block_invoke_144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if ((*(v4 + 4) & 2) != 0)
  {
    v22 = *__error();
    v23 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v33 = *(*(*(a1 + 32) + 8) + 24);
      v34 = 136315650;
      v35 = "flush_updateset_locked_block_invoke";
      v36 = 1024;
      v37 = 8167;
      v38 = 1024;
      LODWORD(v39) = v33;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: Bad sdb in db_updateset_iterate (delete) at page %d", &v34, 0x18u);
    }

    v24 = 22;
    goto LABEL_32;
  }

  db_writer_yield_lock(v4 + 584);
  v7 = *(a1 + 56);
  v8 = *(v7 + 856);
  v9 = *(v8 + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v8 + 16);
  if (v10 < v9)
  {
    v11 = v8 + 16 * v10;
    v13 = *(v11 + 20);
    v12 = v11 + 20;
    if (v13 == a2)
    {
      v14 = *(v12 + 12);
      if (a3 == v14 >> 28)
      {
        goto LABEL_25;
      }
    }
  }

  v15 = v9;
  if (v9 < 1)
  {
    v25 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  v16 = 0;
  while (1)
  {
    v17 = (v9 + v16) >> 1;
    v18 = v8 + 20 + 16 * v17;
    v19 = a3 - (*(v18 + 12) >> 28);
    if (!v19)
    {
      break;
    }

    v20 = v19;
    v21 = (v9 + v16) >> 1;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v9 = v21;
    if (v16 >= v21)
    {
      v25 = v20 > 0;
      goto LABEL_21;
    }
  }

  v20 = a2 - *v18;
  v21 = (v9 + v16) >> 1;
  if (v20 < 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v20)
  {
    v16 = v17 + 1;
    v21 = v9;
    goto LABEL_8;
  }

  v25 = 0;
LABEL_21:
  v26 = v15 - 1 > v17 && v25;
  v27 = v17 + v26;
  v28 = v8 + 16 * v27;
  *(v8 + 16) = v27;
  v12 = v28 + 20;
  v14 = *(v28 + 32);
LABEL_25:
  v29 = *(v12 + 8);
  if (*(*(*(a1 + 40) + 8) + 24) == v29 || (++*(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 32) + 8) + 24) < *(a1 + 64)) || *(*(*(a1 + 48) + 8) + 24) <= 256)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 24) = v29;
    v30 = _page_delete_obj_by_oid_and_type(v7, a2, a3, v29, v14 & 0xFFFFFFF, *(a1 + 68) & 0x4000);
    if ((v30 & 0xFFFFFFFD) != 0)
    {
      v24 = v30;
      v22 = *__error();
      v31 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v34 = 136316674;
        v35 = "flush_updateset_locked_block_invoke";
        v36 = 1024;
        v37 = 8189;
        v38 = 2048;
        v39 = a2;
        v40 = 2048;
        v41 = a2;
        v42 = 2048;
        v43 = a3;
        v44 = 2048;
        v45 = v29;
        v46 = 1024;
        v47 = v24;
        _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: Failed delete, oid:0x%llx(%lld), type:%ld, pgnum:%ld, rc:%d", &v34, 0x40u);
      }

LABEL_32:
      *__error() = v22;
      return v24;
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _page_delete_obj_by_oid_and_type(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v9 = a3;
  v79 = *MEMORY[0x1E69E9840];
  __dst = 0;
  value_out = 0;
  v70 = 0;
  v71 = 0;
  result = _page_fetch_with_fd(a1, &value_out, a4, a5, a6 & 0x4000, buf, 0xFFFFFFFFLL, 0);
  if (!result)
  {
    v13 = *(value_out + 3);
    if ((v13 & 0xF0) != 0)
    {
      v61 = *__error();
      v62 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "_page_delete_obj_by_oid_and_type";
        v75 = 1024;
        v76 = 5711;
        v77 = 1024;
        LODWORD(v78) = a4;
        _os_log_error_impl(&dword_1C278D000, v62, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
      }

      *__error() = v61;
      v63 = __si_assert_copy_extra_3233(0, -1);
      v64 = v63;
      v65 = "";
      if (v63)
      {
        v65 = v63;
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5712, v65);
    }

    else
    {
      if ((v13 & 8) == 0)
      {
        result = find_slot_for_oid_and_type(a1, value_out, a2, v9, &__dst, &v71, 1);
        v14 = *(value_out + 2);
        v15 = value_out + v14;
        v70 = value_out + v14;
        if (result == 2)
        {
          return result;
        }

        v16 = __dst;
        v17 = *(__dst + 4);
        if (*(__dst + 4) < 0)
        {
          v19 = *(__dst + 4);
          if (v19 > 0xBF)
          {
            if (v19 > 0xDF)
            {
              if (v19 > 0xEF)
              {
                if (v19 > 0xF7)
                {
                  if (v19 > 0xFB)
                  {
                    if (v19 > 0xFD)
                    {
                      if (v19 == 255)
                      {
                        v17 = *(__dst + 5);
                        v18 = 9;
                      }

                      else
                      {
                        v17 = (*(__dst + 5) << 48) | (*(__dst + 6) << 40) | (*(__dst + 7) << 32) | (*(__dst + 8) << 24) | (*(__dst + 9) << 16) | (*(__dst + 10) << 8) | *(__dst + 11);
                        v18 = 8;
                      }
                    }

                    else
                    {
                      v17 = ((v17 & 1) << 48) | (*(__dst + 5) << 40) | (*(__dst + 6) << 32) | (*(__dst + 7) << 24) | (*(__dst + 8) << 16) | (*(__dst + 9) << 8) | *(__dst + 10);
                      v18 = 7;
                    }
                  }

                  else
                  {
                    v17 = ((v17 & 3) << 40) | (*(__dst + 5) << 32) | (*(__dst + 6) << 24) | (*(__dst + 7) << 16) | (*(__dst + 8) << 8) | *(__dst + 9);
                    v18 = 6;
                  }
                }

                else
                {
                  v17 = ((v17 & 7) << 32) | (*(__dst + 5) << 24) | (*(__dst + 6) << 16) | (*(__dst + 7) << 8) | *(__dst + 8);
                  v18 = 5;
                }
              }

              else
              {
                v17 = ((v17 & 0xF) << 24) | (*(__dst + 5) << 16) | (*(__dst + 6) << 8) | *(__dst + 7);
                v18 = 4;
              }
            }

            else
            {
              v17 = ((v17 & 0x1F) << 16) | (*(__dst + 5) << 8) | *(__dst + 6);
              v18 = 3;
            }
          }

          else
          {
            v18 = 2;
            v17 = *(__dst + 5) | ((v17 & 0x3F) << 8);
          }
        }

        else
        {
          v18 = 1;
        }

        v20 = __dst + v18 + 4;
        v21 = *v20;
        if (*v20 < 0)
        {
          if (v21 >= 0xC0)
          {
            if (v21 >= 0xE0)
            {
              v55 = __si_assert_copy_extra_3233(0, -1);
              v56 = v55;
              v57 = "";
              if (v55)
              {
                v57 = v55;
              }

              __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v57);
              free(v56);
              if (__valid_fs(-1))
              {
                MEMORY[0xBAD] = -559038737;
                abort();
              }

              MEMORY[0xC00] = -559038737;
              abort();
            }

            v22 = 2;
          }

          else
          {
            v22 = 1;
          }

          v21 = v20[v22];
        }

        if (__dst >= v15 || (*(a1 + 804) & (v21 >> 5) & 1) != v9 || v17 != a2)
        {
          page_release(a1, value_out, a4, 0, 0);
          return 2;
        }

        v25 = (*__dst + 4);
        v26 = __dst + v25;
        v27 = *(value_out + 1);
        *(value_out + 2) = v14 - v25;
        memmove(v16, v16 + (*v16 + 4), v15 - (v16 + (*v16 + 4)));
        set_offset_hint(a1, value_out, v71);
        v31 = value_out;
        if (v26 == v15)
        {
          v32 = *(a1 + 928);
          if (value_out)
          {
            v33 = *(v32 + 220);
            if (v33 < 1)
            {
              goto LABEL_45;
            }

            v34 = 0;
            v35 = (v32 + 272);
            while (*v35 != value_out)
            {
              ++v34;
              v35 += 6;
              if (v33 == v34)
              {
                goto LABEL_45;
              }
            }
          }

          else
          {
            LODWORD(v34) = 4;
          }

          *(v32 + 224) = v34;
        }

LABEL_45:
        if ((v31[3] & 0xC) != 0)
        {
          page_resize(a1, &value_out, 0, v27 - v25, &__dst, v28, v29, v30, &v70);
          v31 = value_out;
        }

        v36 = v31[2];
        if (v26 == v15)
        {
          if (v36 == 20)
          {
            *buf = 0;
            map_delete(a1, a2, v9);
            page_free(a1, a4, buf, a6 & 0x4000);
            v37 = *buf == 0;
            goto LABEL_53;
          }

          v38 = v71;
          if (v71)
          {
            goto LABEL_61;
          }

          v39 = v31 + 5;
          __dst = v31 + 5;
          v70 = v31 + v36;
          if (v36 < 21)
          {
            v40 = 0;
          }

          else
          {
            do
            {
              v40 = v39;
              v39 = (v39 + (*v39 + 4));
            }

            while (v39 < (v31 + v36));
            v71 = v40;
            __dst = v39;
          }

          set_offset_hint(a1, v31, v40);
          v38 = v71;
          if (v71)
          {
LABEL_61:
            v41 = v38 + 4;
            v42 = *(v38 + 4);
            if (*(v38 + 4) < 0)
            {
              v44 = *(v38 + 4);
              if (v44 > 0xBF)
              {
                if (v44 > 0xDF)
                {
                  if (v44 > 0xEF)
                  {
                    if (v44 > 0xF7)
                    {
                      if (v44 > 0xFB)
                      {
                        if (v44 > 0xFD)
                        {
                          if (v44 == 255)
                          {
                            v42 = *(v38 + 5);
                            v43 = 9;
                          }

                          else
                          {
                            v42 = (*(v38 + 5) << 48) | (*(v38 + 6) << 40) | (*(v38 + 7) << 32) | (*(v38 + 8) << 24) | (*(v38 + 9) << 16) | (*(v38 + 10) << 8) | *(v38 + 11);
                            v43 = 8;
                          }
                        }

                        else
                        {
                          v42 = ((v42 & 1) << 48) | (*(v38 + 5) << 40) | (*(v38 + 6) << 32) | (*(v38 + 7) << 24) | (*(v38 + 8) << 16) | (*(v38 + 9) << 8) | *(v38 + 10);
                          v43 = 7;
                        }
                      }

                      else
                      {
                        v42 = ((v42 & 3) << 40) | (*(v38 + 5) << 32) | (*(v38 + 6) << 24) | (*(v38 + 7) << 16) | (*(v38 + 8) << 8) | *(v38 + 9);
                        v43 = 6;
                      }
                    }

                    else
                    {
                      v42 = ((v42 & 7) << 32) | (*(v38 + 5) << 24) | (*(v38 + 6) << 16) | (*(v38 + 7) << 8) | *(v38 + 8);
                      v43 = 5;
                    }
                  }

                  else
                  {
                    v42 = ((v42 & 0xF) << 24) | (*(v38 + 5) << 16) | (*(v38 + 6) << 8) | *(v38 + 7);
                    v43 = 4;
                  }
                }

                else
                {
                  v42 = ((v42 & 0x1F) << 16) | (*(v38 + 5) << 8) | *(v38 + 6);
                  v43 = 3;
                }
              }

              else
              {
                v45 = *(v38 + 5) | ((v42 & 0x3F) << 8);
                v43 = 2;
                v42 = v45;
              }
            }

            else
            {
              v43 = 1;
            }

            *buf = v43;
            VInt16 = ldb_readVInt16(v41, buf);
            v47 = map_update(a1, a4, a5, a2, v42, v9, *(a1 + 804) & (VInt16 >> 5) & 1, 0);
            if (v47)
            {
              v48 = v47;
              page_release(a1, value_out, a4, 1u, 0);
              return v48;
            }

            goto LABEL_50;
          }

          v58 = __si_assert_copy_extra_3233(0, -1);
          v59 = v58;
          v60 = "";
          if (v58)
          {
            v60 = v58;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 5830, "prev", v60);
          free(v59);
          if (__valid_fs(-1))
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (v36 != 20)
          {
            if (dword_1EBF46AE8 >= 5)
            {
              v53 = *__error();
              v54 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = a1 + 324;
                v75 = 1024;
                v76 = a4;
                v77 = 2048;
                v78 = a2;
                _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "%s : no map update for deleting at pgnum %d (%.16llx)\n", buf, 0x1Cu);
              }

              *__error() = v53;
            }

LABEL_50:
            v37 = 1;
LABEL_53:
            *(*(a1 + 928) + 224) = 4;
            page_release(a1, value_out, a4, v37, 0);
            result = 0;
            --*(a1 + 20);
            return result;
          }

          v49 = __si_assert_copy_extra_3233(*(a1 + 848), -1);
          v50 = v49;
          v51 = "";
          if (v49)
          {
            v51 = v49;
          }

          __message_assert("%s:%u: failed assertion '%s' %s Unexpected", "sdb2.c", 5857, "dbp->used_bytes != sizeof(db_page)", v51);
          free(v50);
          if (__valid_fsp(*(a1 + 848)))
          {
            goto LABEL_83;
          }
        }

        v52 = 3072;
LABEL_96:
        *v52 = -559038737;
        abort();
      }

      v66 = *__error();
      v67 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "_page_delete_obj_by_oid_and_type";
        v75 = 1024;
        v76 = 5717;
        v77 = 1024;
        LODWORD(v78) = a4;
        _os_log_error_impl(&dword_1C278D000, v67, OS_LOG_TYPE_ERROR, "%s:%d: page_delete_obj: ERR: page is still compressed! pgnum 0x%x\n", buf, 0x18u);
      }

      *__error() = v66;
      v68 = __si_assert_copy_extra_3233(0, -1);
      v64 = v68;
      v69 = "";
      if (v68)
      {
        v69 = v68;
      }

      __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 5718, v69);
    }

    free(v64);
LABEL_83:
    v52 = 2989;
    goto LABEL_96;
  }

  return result;
}

uint64_t page_resize(uint64_t a1, void **a2, char a3, int a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    return 22;
  }

  v10 = *a2;
  if (!*a2)
  {
    return 22;
  }

  v12 = a3 ^ 1;
  result = 22;
  if (a4 <= 0x1000000)
  {
    v12 = 0;
  }

  if ((v12 & 1) == 0 && v10[2] <= a4)
  {
    v16 = malloc_size(v10);
    v17 = a4;
    v18 = v16;
    v19 = *a2;
    if (v16 >= v17)
    {
      result = 0;
      v19[1] = v18;
    }

    else
    {
      v20 = 4;
      if ((v19[3] & 4) == 0)
      {
        v20 = 1;
      }

      v21 = v19[v20];
      if (v21 <= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v21;
      }

      do
      {
        v22 *= 2;
      }

      while (v22 < v17);
      v23 = v19[1];
      v24 = v22;
      v25 = malloc_type_realloc(*a2, v22, 0xF9C06CB4uLL);
      *a2 = v25;
      if (v25)
      {
        v26 = v25;
        v25[1] = v22;
        if (v25 != v19)
        {
          v27 = *(a1 + 928);
          if (*(v27 + 220) >= 1)
          {
            v28 = 0;
            v29 = v27 + 272;
            v30 = (v27 + 252);
            while (1)
            {
              if (*v29 == v26)
              {
                *v29 = 0;
                *v30 = 0;
                free(*(v29 + 8));
                *(v29 + 8) = 0;
                *(v29 + 24) = 0;
                *(v29 + 32) = 0;
                *(v29 + 40) = 0;
                if (*v29 == v19)
                {
                  goto LABEL_24;
                }
              }

              else if (*v29 == v19)
              {
LABEL_24:
                *v29 = v26;
                free(*(v29 + 8));
                *(v29 + 8) = 0;
                *(v29 + 24) = 0;
                *(v29 + 32) = 0;
                *(v29 + 40) = 0;
              }

              ++v28;
              ++v30;
              v29 += 48;
              if (v28 >= *(v27 + 220))
              {
                v26 = *a2;
                v24 = *(*a2 + 1);
                break;
              }
            }
          }
        }

        if (malloc_size(v26) < v24)
        {
          v35 = __si_assert_copy_extra_3233(0, -1);
          v36 = v35;
          v37 = "";
          if (v35)
          {
            v37 = v35;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 2728, "(size_t)(*dbpp)->size <= malloc_size(*dbpp)", v37);
          free(v36);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v38 = &a9;
        if (a5)
        {
          do
          {
            v32 = *a5;
            if (*a5)
            {
              v33 = v32 >= v19;
            }

            else
            {
              v33 = 0;
            }

            if (v33 && v32 <= v19 + v23)
            {
              *a5 = *a2 + v32 - v19;
            }

            v31 = v38++;
            a5 = *v31;
          }

          while (*v31);
        }

        return 0;
      }

      else
      {
        *a2 = v19;
        return 12;
      }
    }
  }

  return result;
}

uint64_t ldb_readVInt16(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 + 1;
  v4 = (a1 + *a2);
  v5 = *v4;
  if (*v4 < 0)
  {
    if (v5 > 0xBF)
    {
      if (v5 >= 0xE0)
      {
        v8 = __si_assert_copy_extra_3233(0, -1);
        v9 = v8;
        v10 = "";
        if (v8)
        {
          v10 = v8;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v10);
        free(v9);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      LOWORD(v5) = v4[2] | (*(a1 + v3) << 8);
      v3 = v2 + 3;
    }

    else
    {
      v6 = *(a1 + v3) | ((v5 & 0x3F) << 8);
      v3 = v2 + 2;
      LOWORD(v5) = v6;
    }
  }

  *a2 = v3;
  return v5;
}

uint64_t map_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 856);
  v9 = v8[2];
  if (!v9)
  {
    return 2;
  }

  v10 = a7;
  v13 = v8[4];
  if (v13 >= v9 || (v14 = &v8[4 * v13], v16 = *(v14 + 5), v15 = (v14 + 5), v16 != a4) || a6 != *(v15 + 12) >> 28)
  {
    v17 = v9;
    if (v9 >= 1)
    {
      v18 = 0;
      while (1)
      {
        v20 = (v9 + v18) >> 1;
        v21 = &v8[4 * v20 + 5];
        v22 = a6 - (*(v21 + 12) >> 28);
        if (v22)
        {
          v23 = v22;
          v19 = (v9 + v18) >> 1;
          if ((v23 & 0x8000000000000000) == 0)
          {
LABEL_13:
            if (!v23)
            {
              v24 = 0;
              goto LABEL_18;
            }

            v18 = v20 + 1;
            v19 = v9;
          }
        }

        else
        {
          v23 = a4 - *v21;
          v19 = (v9 + v18) >> 1;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }
        }

        v9 = v19;
        if (v18 >= v19)
        {
          v24 = v23 > 0;
          goto LABEL_18;
        }
      }
    }

    v24 = 0;
    v20 = 0;
LABEL_18:
    v26 = v17 - 1 > v20 && v24;
    v13 = v20 + v26;
    v8[4] = v20 + v26;
    v15 = &v8[4 * v20 + 5 + 4 * v26];
  }

  if (*(v15 + 8) == a2)
  {
    if (*v15 == a4)
    {
LABEL_28:
      if (dword_1EBF46AE8 >= 5)
      {
        v46 = a4;
        v47 = a2;
        v48 = *__error();
        v49 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 136315906;
          v51 = (a1 + 324);
          v52 = 1024;
          *v53 = v47;
          *&v53[4] = 2048;
          *&v53[6] = v46;
          *&v53[14] = 2048;
          *&v53[16] = a5;
          _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "%s : map_update: update pgnum %d oid (%.16llx) to(%.16llx)\n", &v50, 0x26u);
        }

        *__error() = v48;
      }

      result = 0;
      *v15 = a5;
      *(v15 + 12) = *(v15 + 12) & 0xFFFFFFF | (v10 << 28);
      v8[3] |= 1u;
      return result;
    }

    v27 = a4;
    v28 = a2;
    if (a8)
    {
      v29 = *__error();
      v30 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *v15;
        v50 = 136315906;
        v51 = (a1 + 324);
        v52 = 2048;
        *v53 = v27;
        *&v53[8] = 2048;
        *&v53[10] = v31;
        *&v53[18] = 2048;
        *&v53[20] = a5;
        _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "%s : map_update: update end old oid %.16llx (%.16llx) to (%.16llx)\n", &v50, 0x2Au);
      }

      *__error() = v29;
      LODWORD(a2) = v28;
      a4 = v27;
      goto LABEL_28;
    }

    v36 = *__error();
    v37 = _SILogForLogForCategory(7);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v13 < 1)
    {
      if (v38)
      {
        v45 = *v15;
        v50 = 136316674;
        v51 = "map_update";
        v52 = 1024;
        *v53 = 1761;
        *&v53[4] = 2080;
        *&v53[6] = a1 + 324;
        *&v53[14] = 2048;
        *&v53[16] = v27;
        *&v53[24] = 2048;
        *&v53[26] = v45;
        v54 = 2048;
        v55 = a5;
        v56 = 1024;
        v57 = v28;
        v41 = "%s:%d: %s : ERR: map_update: did not find old oid %.16llx (%.16llx) dropping update to (%.16llx), pgnum: 0x%x\n";
        v42 = v37;
        v43 = 64;
        goto LABEL_39;
      }
    }

    else if (v38)
    {
      v39 = *v15;
      v40 = *(*(a1 + 856) + 16 * (v13 - 1) + 20);
      v50 = 136316930;
      v51 = "map_update";
      v52 = 1024;
      *v53 = 1759;
      *&v53[4] = 2080;
      *&v53[6] = a1 + 324;
      *&v53[14] = 2048;
      *&v53[16] = v27;
      *&v53[24] = 2048;
      *&v53[26] = v39;
      v54 = 2048;
      v55 = a5;
      v56 = 1024;
      v57 = v28;
      v58 = 2048;
      v59 = v40;
      v41 = "%s:%d: %s : ERR: map_update: did not find old oid %.16llx (%.16llx) dropping update to (%.16llx), pgnum: 0x%x\n, prev key %.16llx";
      v42 = v37;
      v43 = 74;
LABEL_39:
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, v41, &v50, v43);
    }

    *__error() = v36;
    return 2;
  }

  v32 = a3;
  v33 = a2;
  v34 = *__error();
  v35 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v44 = *(v15 + 8);
    v50 = 136316162;
    v51 = "map_update";
    v52 = 1024;
    *v53 = 1746;
    *&v53[4] = 2080;
    *&v53[6] = a1 + 324;
    *&v53[14] = 1024;
    *&v53[16] = v44;
    *&v53[20] = 1024;
    *&v53[22] = v33;
    _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: map_update: page offset doesn't match! 0x%x != 0x%x\n", &v50, 0x28u);
  }

  *__error() = v34;
  rebuild_map_locked(a1);
  return map_force(a1, v33, v32, a5, v10);
}

uint64_t SIGetLockedJournalingState(uint64_t result)
{
  if (result)
  {
    return *(result + 6964);
  }

  return result;
}

CFMutableDictionaryRef si_get_clientstates_dict(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 72), @"clientStates");
  if (Value)
  {
    Mutable = Value;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9D8];
    v10 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = CFDictionaryCreateMutable(v8, 1, v9, v10);
    CFDictionarySetValue(Mutable, a2, v7);
    CFDictionarySetValue(*(a1 + 72), @"clientStates", Mutable);
    CFRelease(v7);
    CFRelease(Mutable);
    if (v7)
    {
      return v7;
    }
  }

  v6 = CFDictionaryGetValue(Mutable, a2);
  if (v6)
  {
    return v6;
  }

  v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, a2, v7);
  CFRelease(v7);
  return v7;
}

uint64_t checkSumCFData(CFDataRef theData, _DWORD *a2, _DWORD *a3)
{
  v4 = theData;
  if (!theData)
  {
    goto LABEL_6;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    LODWORD(v4) = 0;
    goto LABEL_6;
  }

  v7 = BytePtr;
  Length = CFDataGetLength(v4);
  if (Length <= 0x7FFFFFFF)
  {
    LODWORD(v4) = Length;
    *a2 = adler32(*a2, v7, Length);
LABEL_6:
    *a3 = v4;
    return 1;
  }

  return 0;
}

uint64_t bundleIdHash(uint64_t a1, unsigned int a2)
{
  v2 = -1759636613;
  if ((a2 & 0x80000000) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFC));
  if (a2 + 3 >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = v8 * *&v4[4 * v7];
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a2 & 3) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a2)) ^ ((-2048144789 * (v2 ^ a2)) >> 13));
  return v16 & 0x7FFFFFFF ^ HIWORD(v16);
}

uint64_t fd_name_ptr(uint64_t a1)
{
  if (*a1 != -50529037)
  {
    v4 = __si_assert_copy_extra_661(-1);
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "fd_obj.c", 1263, "obj->_magic==(0xFCFCFCF3)", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      v7 = 2989;
    }

    else
    {
      v7 = 3072;
    }

    *v7 = -559038737;
    abort();
  }

  os_unfair_lock_lock(&g_name_lock);
  v2 = *(a1 + 72);
  os_unfair_lock_unlock(&g_name_lock);
  return v2;
}

uint64_t SIPersistClientStateAndMeta(uint64_t a1, char a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2072) != 1 || (*(a1 + 829) & 0x10) != 0)
  {
    return 1;
  }

  if (a2 & 1) != 0 || ((v3 = *(a1 + 60), (v3) ? (v4 = 3) : (v4 = v3 >> 1), (result = 1, v6 = v4 > 7, v7 = (1 << v4) & 0x86, !v6) ? (v8 = v7 == 0) : (v8 = 1), !v8))
  {
    error = 0;
    v9 = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(a1 + 72), kCFPropertyListXMLFormat_v1_0, 0, &error);
    v10 = v9;
    if (error || !v9 || !CFDataGetBytePtr(v9) || !CFDataGetLength(v10))
    {
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "SIPersistClientStateAndMeta";
        v33 = 1024;
        v34 = 5301;
        v35 = 2112;
        v36 = error;
        _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: client state meta convert to CFData failed: %@", buf, 0x1Cu);
      }

      *__error() = v21;
      CFRelease(error);
      if (v10)
      {
        CFRelease(v10);
      }

      return 0;
    }

    v11 = fd_create_protected(*(a1 + 32), "clientstatesmetafile.tmp", 536872450, 3u);
    if (v11)
    {
      v12 = v11;
      Length = CFDataGetLength(v10);
      BytePtr = CFDataGetBytePtr(v10);
      v15 = fd_write(v12, BytePtr, Length);
      CFRelease(v10);
      if (v15 != Length)
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v28 = __error();
          v29 = strerror(*v28);
          *buf = 136315650;
          v32 = "SIPersistClientStateAndMeta";
          v33 = 1024;
          v34 = 5314;
          v35 = 2080;
          v36 = v29;
          v20 = "%s:%d: write client state meta tmp file failed: %s";
          goto LABEL_34;
        }

LABEL_29:
        *__error() = v16;
        fd_release(v12);
        return 0;
      }

      if (fd_rename(v12, "clientstatesmetafile"))
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = __error();
          v19 = strerror(*v18);
          *buf = 136315650;
          v32 = "SIPersistClientStateAndMeta";
          v33 = 1024;
          v34 = 5320;
          v35 = 2080;
          v36 = v19;
          v20 = "%s:%d: rename client state meta tmp file failed: %s";
LABEL_34:
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, v20, buf, 0x1Cu);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      fd_release(v12);
      return 1;
    }

    CFRelease(v10);
    v23 = *__error();
    v24 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = __error();
      v27 = strerror(*v26);
      *buf = 136315650;
      v32 = "SIPersistClientStateAndMeta";
      v33 = 1024;
      v34 = 5330;
      v35 = 2080;
      v36 = v27;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: open client state meta tmp file failed: %s", buf, 0x1Cu);
    }

    v25 = __error();
    result = 0;
    *v25 = v23;
  }

  return result;
}

void _mobile_journal_update_toc(uint64_t result, __int128 *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 56))
    {
      if (*(result + 64))
      {
        if (*(result + 72))
        {
          if (*(result + 40) >= 1)
          {
            v11[0] = *a2;
            v11[1] = a2[1];
            v6 = fd_lseek(*(result + 80), 0, 2);
            if (v6 != -1)
            {
              v7 = v6;
              if (fd_write(*(result + 80), v11, 0x20uLL) == -1)
              {
                v8 = *__error();
                v9 = _SILogForLogForCategory(0);
                if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                {
                  v10 = *__error();
                  *buf = 136315650;
                  v13 = "_mobile_journal_update_toc";
                  v14 = 1024;
                  v15 = 19815;
                  v16 = 1024;
                  v17 = v10;
                  _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: journal TOC write error : %d", buf, 0x18u);
                }

                *__error() = v8;
              }

              else
              {
                *(result + 88) = v7 + 32;
                _mobile_journal_notify_toc_event(result, *a2, *(a2 + 7), v7, a3);
              }
            }
          }
        }
      }
    }
  }
}

void enqueueForProcessing(const void *a1, uint64_t *a2, uint64_t a3, char a4, _OWORD *a5, uint64_t a6, unsigned int a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v14 = si_mobile_set_attr_ctx_create(a6, a1);
  v28 = v14;
  v15 = a5[1];
  *(v14 + 1) = *a5;
  *(v14 + 3) = v15;
  v14[7] = a1;
  v16 = *(a5 + 2);
  add_explicit = atomic_fetch_add_explicit(&gEnqueuedSize, v16, memory_order_relaxed);
  if ((a4 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  v18 = add_explicit + v16;
  if ((add_explicit + v16) >= 0x40000)
  {
    if (!*a2)
    {
      goto LABEL_11;
    }

    v27 = *__error();
    v19 = _SILogForLogForCategory(0);
    v20 = 2 * (gSILogLevels[0] < 4);
    log = v19;
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 134218498;
      v30 = v16;
      v31 = 2048;
      v32 = v18;
      v33 = 2112;
      v34 = a1;
      _os_log_impl(&dword_1C278D000, log, v20, "#index too much enqueued (%lld/%lld), bundleID:%@ - deferring callback", buf, 0x20u);
    }

    *__error() = v27;
    v21 = *a2;
    goto LABEL_10;
  }

  if ((gSIBadThermals & 1) != 0 || gMemoryPressureCritical == 1)
  {
    v21 = *a2;
    if (*a2)
    {
LABEL_10:
      v14[5] = v21;
      v14[6] = a3;
      *a2 = 0;
    }
  }

LABEL_11:
  *(v14 + 8) = CFAbsoluteTimeGetCurrent();
  v22 = si_backtrace_routine_resolve(*v14, v14[9], setCSAttributes2, v14, &v28);
  v23 = qos_class_self();
  if (v23 >= QOS_CLASS_UTILITY)
  {
    v24 = 17;
  }

  else
  {
    v24 = v23;
  }

  if ((a4 & 8) != 0)
  {
    v25 = 9;
  }

  else
  {
    v25 = v24;
  }

  si_enqueue_work_bulk_with_qos(*(a6 + 8 * a7 + 1008), v25, v22, &v28, a1, 1);
}

void *si_mobile_set_attr_ctx_create(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040A35325E4uLL);
  *v4 = a1;
  if (a2)
  {
    v4[9] = CFRetain(a2);
  }

  return v4;
}

void si_enqueue_work_bulk_with_qos(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *a1;
  if (!*a1)
  {
    v7 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_6:
    a2 = *(a1 + 24);
    goto LABEL_4;
  }

  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = *(a1 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __si_enqueue_work_bulk_with_qos_block_invoke;
  v9[3] = &__block_descriptor_tmp_1408;
  v9[4] = a1;
  v9[5] = a5;
  v12 = a6;
  v9[6] = 0;
  v9[7] = v7;
  v10 = 1;
  v11 = a2;
  v9[8] = a3;
  v9[9] = a4;
  dispatch_sync(v8, v9);
}

void __si_enqueue_work_bulk_with_qos_block_invoke(uint64_t a1)
{
  si_push_tag_locked(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80));
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 84);
  v5 = *(a1 + 64);
  v6 = **(a1 + 72);
  if (*(a1 + 48))
  {
    if (*(a1 + 88))
    {
      si_enqueue_barrier_inner_with_qos(v2, v3, v4, v5, v6);
    }

    else
    {
      si_enqueue_work_inner_with_qos(v2, v3, v4, v5, v6);
    }

    if (*(a1 + 80) >= 2u)
    {
      v7 = 1;
      do
      {
        si_enqueue_work_inner_with_qos(*(a1 + 56), *(a1 + 32), *(a1 + 84), *(a1 + 64), *(*(a1 + 72) + 8 * v7++));
      }

      while (v7 < *(a1 + 80));
    }
  }

  else
  {
    if (*(a1 + 88))
    {
      si_enqueue_barrier_inner_with_qos(v2, v3, v4, v5, v6);
    }

    else
    {
      si_enqueue_work_inner_with_qos(v2, v3, v4, v5, v6);
    }

    if (*(a1 + 80) >= 2u)
    {
      v8 = 1;
      do
      {
        si_enqueue_work_inner_with_qos(*(a1 + 56), *(a1 + 32), *(a1 + 84), *(a1 + 64), *(*(a1 + 72) + 8 * v8++));
      }

      while (v8 < *(a1 + 80));
    }
  }
}

void si_push_tag_locked(uint64_t a1, void *key, const void **a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46ADC >= 5)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 72);
      v17 = 134218240;
      v18 = key;
      v19 = 2048;
      v20 = v14;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Push %p to tags %p", &v17, 0x16u);
    }

    *__error() = v12;
  }

  Mutable = *(a1 + 72);
  if (!Mutable)
  {
    if (*(a1 + 33))
    {
      v9 = MEMORY[0x1E695E9D8];
    }

    else
    {
      v9 = &kUInt64DictionaryKeyCallBacks;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, v9, MEMORY[0x1E695E9E8]);
    *(a1 + 72) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (Value || (Value = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, &kUint64BagCallbacks), CFDictionarySetValue(*(a1 + 72), key, Value), CFRelease(Value), dword_1EBF46ADC < 5))
  {
    if (a3)
    {
LABEL_10:
      while (a4)
      {
        v11 = *a3++;
        CFBagAddValue(Value, v11);
        --a4;
      }

      return;
    }
  }

  else
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = key;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Created tag bag for %p", &v17, 0xCu);
    }

    *__error() = v15;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  for (; a4; --a4)
  {
    CFBagAddValue(Value, 0);
  }
}

uint64_t UInt64RefHashCallback(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 - 8;
  v2 = (a1 - (HIDWORD(a1) - a1) - 1640531527) ^ (v1 << 8);
  v3 = (16 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  return (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
}

void si_routine_protectionClassB(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void setCSAttributes2(unsigned __int8 *a1, int a2)
{
  v207 = *MEMORY[0x1E69E9840];
  v201 = a2;
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v7.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  if (!a2)
  {
    v8 = *a1;
    if (*(*a1 + 1288) == 1)
    {
      v9 = *__error();
      v10 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v202 = 0;
        _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "setCSAttributes2 failed: index is read-only", v202, 2u);
      }

      *__error() = v9;
      goto LABEL_37;
    }

    v11 = v7.n128_f64[0];
    v12 = dispatch_group_create();
    v150 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v14 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
    v199 = HIDWORD(v14);
    v200 = v14;
    v198 = v15;
    v197 = v16;
    v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
    *(v17 + 216) = 0;
    v18 = *(v17 + 312);
    v19 = *(v17 + 224);
    v20 = v17;
    if (v19)
    {
      v19(*(v17 + 288));
    }

    v196 = v200;
    v195 = v199;
    v194 = v198;
    v193 = v197;
    if (_setjmp(v20))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v202 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v202, 2u);
      }

      v20[78] = v18;
      CIOnThreadCleanUpReset(v193);
      dropThreadId(v196, 1, add_explicit + 1);
      CICleanUpReset(v196, v194);
LABEL_36:
      bumpWorkTime(v8, v11);
      dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v12);
LABEL_37:
      v6 = v8;
      goto LABEL_38;
    }

    v152 = v18;
    base = si_mobile_journal_get_base(*(a1 + 1), v5, v4);
    v22 = base;
    v153 = v12;
    if (!base || v4 <= 0x23)
    {
      v26 = add_explicit;
      v27 = *__error();
      v28 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *v202 = 136316162;
        *&v202[4] = "setCSAttributes2";
        *&v202[12] = 1024;
        *&v202[14] = 32490;
        *&v202[18] = 2048;
        *&v202[20] = v22;
        *&v202[28] = 2048;
        *&v202[30] = v5;
        *&v202[38] = 2048;
        v203 = v4;
        _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, diskRecord:%p, journalEntryOffset:%lld, journalEntrySize:%ld", v202, 0x30u);
      }

      *__error() = v27;
      goto LABEL_32;
    }

    v23 = *base;
    v24 = v23;
    v154 = add_explicit;
    if (v23 > -262275348)
    {
      if (v23 == -262275347)
      {
        goto LABEL_23;
      }

      v25 = -260112659;
    }

    else
    {
      if (v23 == -263323923)
      {
        goto LABEL_23;
      }

      v25 = -263258387;
    }

    if (v23 != v25)
    {
      v33 = *__error();
      v37 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        *__error() = v33;
        v26 = v154;
LABEL_32:
        v38 = v152;
LABEL_33:
        v39 = threadData[9 * v196 + 1] + 320 * v195;
        *(v39 + 312) = v38;
        v40 = *(v39 + 232);
        if (v40)
        {
          v40(*(v39 + 288));
        }

        dropThreadId(v196, 0, v26 + 1);
        v12 = v153;
        goto LABEL_36;
      }

      *v202 = 136316162;
      *&v202[4] = "setCSAttributes2";
      *&v202[12] = 1024;
      *&v202[14] = 32496;
      *&v202[18] = 2048;
      *&v202[20] = v24;
      *&v202[28] = 2048;
      *&v202[30] = v5;
      *&v202[38] = 2048;
      v203 = v4;
      v35 = "%s:%d: Invalid journal entry, magic:0x%08lx, journalEntryOffset:%lld, journalEntrySize:%ld";
      v36 = v37;
LABEL_93:
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, v35, v202, 0x30u);
      goto LABEL_31;
    }

LABEL_23:
    v29 = *(base + 1);
    if (v29 <= 0xFFFFFFF3 && v4 >= (v29 + 12))
    {
      v30 = *(base + 6);
      v31 = *(base + 7) & 0x7FFF;
      if (v23 == -263258387 || v23 == -263323923)
      {
        v32 = 2 * *(base + 4);
      }

      else
      {
        v32 = *(base + 4);
      }

      v49 = v32;
      v50 = *(base + 6);
      v129 = *(base + 7) & 0x7FFF;
      v51 = *(base + 5);
      v52 = *(base + 6);
      v53 = *(base + 7);
      v54 = *(base + 8);
      v55 = a1[32];
      v149 = base + 36;
      v146 = v54;
      v147 = v53;
      v141 = v49;
      v138 = v52;
      v139 = v51;
      v137 = v30;
      v121 = base + 36;
      if (v55 == 1)
      {
        *v202 = 0;
        VInt64 = v2_readVInt64(base + 36, v202);
        v52 = v138;
        v51 = v139;
        v49 = v141;
        v54 = v146;
        v53 = v147;
        v57 = *v202;
        v58 = VInt64;
      }

      else
      {
        v58 = 0;
        v57 = 0;
      }

      v151 = v58;
      v59 = v50 >> 10;
      v60 = v57 + (v50 & 0x3FF);
      v61 = v60 + (v50 >> 10) + v31 + v51 + (v49 >> 1) + v52 + v53 + v54 + 24;
      if (v29 == v61)
      {
        v124 = v60;
        v125 = v59;
        v143 = v57;
        v62 = *(v22 + 2);
        v63 = adler32(0, v121, v29 - 24);
        if (v62 == v63)
        {
          v64 = *MEMORY[0x1E695E480];
          v65 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &v149[v143], 0x8000100u);
          if (v65)
          {
            v66 = v65;
            v68 = CFEqual(v65, @"com.apple.CloudDocs.iCloudDriveFileProvider") || CFEqual(v66, @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") || CFEqual(v66, @"com.apple.CloudDocs.MobileDocumentsFileProvider") || CFStringHasPrefix(v66, @"com.apple.FileProvider");
            v133 = v68;
            v148 = v66;
            v69 = v124;
            if (v137 >= 0x400)
            {
              v78 = CFStringCreateWithCString(v64, &v149[v124], 0x8000100u);
              v69 = v124;
              v70 = v78;
            }

            else
            {
              v70 = 0;
            }

            v145 = v70;
            v79 = v69 + v125;
            v80 = *(a1 + 20);
            v132 = gSIBadThermals;
            v140 = v64;
            if (v129)
            {
              v81 = CFStringCreateWithCString(v64, &v149[v79], 0x8000100u);
            }

            else
            {
              v81 = 0;
            }

            v82 = v146;
            v84 = v138;
            v83 = v139;
            v144 = v81;
            v85 = v139;
            v142 = v80 & 0x10;
            v86 = v79 + v129;
            v87 = v86;
            v134 = v129;
            v131 = v139;
            if (v141 >= 2)
            {
              memset(v202, 0, 24);
              _MDPlistGetRootPlistObjectFromBytes();
              v87 = v86 + (v141 >> 1);
              v205 = *v202;
              v206 = *&v202[16];
              Count = _MDPlistArrayGetCount();
              v185[0] = MEMORY[0x1E69E9820];
              v185[1] = 0x40000000;
              v185[2] = __setCSAttributes2_block_invoke;
              v185[3] = &__block_descriptor_tmp_1910;
              v191 = v132;
              v190 = Count;
              v186 = *v202;
              v185[4] = a1;
              v187 = *&v202[16];
              v188 = v148;
              v189 = v8;
              v192 = v142 >> 4;
              si_indexingWatchdogPerform(v8, v148, Count, 6u, v185);
              v89 = SIGetAccumulatedSizeForGroup(v8, v148, 0);
              v90 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              logDeleteEventInCoreAnalyticsWithBundleId(v148, Count, v89, v90 - v150);
              v85 = v131;
              v84 = v138;
              v83 = v139;
              v82 = v146;
            }

            v136 = v84;
            v135 = v82;
            if (v85)
            {
              v91 = v83;
              v92 = v84;
              memset(v202, 0, 24);
              v205 = 0uLL;
              v206 = 0;
              _MDPlistGetRootPlistObjectFromBytes();
              v93 = v87 + v91;
              v127 = v92;
              if (v92 && (v183 = 0uLL, v184 = 0, _MDPlistGetRootPlistObjectFromBytes(), v181 = 0uLL, v182 = 0, _MDPlistGetPlistObjectType() == 240))
              {
                v181 = v183;
                v182 = v184;
                if (_MDPlistArrayGetCount() == 2)
                {
                  _MDPlistArrayGetPlistObjectAtIndex();
                  v181 = *v202;
                  v182 = *&v202[16];
                  v94 = _MDPlistGetPlistObjectType() == 241;
                }

                else
                {
                  v94 = 0;
                }

                v95 = v153;
                v96 = v147;
                v97 = v137;
              }

              else
              {
                v94 = 0;
                v95 = v153;
                v96 = v147;
                v97 = v137;
              }

              v122 = v97;
              v123 = v96;
              v183 = v205;
              v184 = v206;
              if (_MDPlistGetPlistObjectType() == 240)
              {
                v183 = v205;
                v184 = v206;
                v100 = _MDPlistArrayGetCount();
              }

              else
              {
                v100 = 0;
              }

              v101 = v100;
              v102 = *(v8 + 2360);
              v99 = v93;
              v103 = *(v102 + 120);
              v104 = *(v102 + 144);
              v98 = v101;
              v155 = MEMORY[0x1E69E9820];
              v156 = 0x40000000;
              v157 = __setCSAttributes2_block_invoke_1911;
              v158 = &__block_descriptor_tmp_1918;
              v159 = v8;
              v160 = v148;
              v170 = v101;
              v161 = a1;
              v171 = v133;
              v172 = v132;
              v163 = v206;
              v162 = v205;
              v173 = v94;
              v164 = *v202;
              v75 = v151;
              v165 = *&v202[16];
              v166 = v151;
              v167 = v145;
              v168 = v95;
              v169 = &v201;
              v174 = v122;
              v175 = v134;
              v176 = v141;
              v177 = v131;
              v178 = v127;
              v179 = v123;
              v180 = v135;
              v103(v104);
              v26 = v154;
            }

            else
            {
              v98 = 0;
              v99 = v87;
              v26 = v154;
              v75 = v151;
            }

            v126 = v99;
            v130 = v98;
            MEMORY[0x1EEE9AC00](v67);
            bzero(v118, 0x1000uLL);
            v105 = _SIStackAllocatorCreate(v118, 4096, indexingZone);
            v38 = v152;
            if (v144)
            {
              v106 = v105;
              if (!v118[3])
              {
                v118[1] = (v118[0] + 55) & 0xFFFFFFFFFFFFFFF0;
              }

              Mutable = _MDPlistContainerCreateMutable();
              if (Mutable)
              {
                v128 = v106;
                v108 = Mutable;
                _MDPlistContainerBeginContainer();
                _MDPlistContainerBeginDictionary();
                _MDPlistContainerAddCString();
                _MDPlistContainerAddCString();
                _MDPlistContainerAddCString();
                _MDPlistContainerAddCString();
                v109 = v144;
                HasPrefix = CFStringHasPrefix(v144, @"_kMDItemStateInfo_");
                v119 = v108;
                if (HasPrefix)
                {
                  v111 = CFRetain(v109);
                }

                else
                {
                  v111 = CFStringCreateWithFormat(v140, 0, @"_kMDItemStateInfo_%@", v109);
                }

                v112 = v111;
                bzero(v202, 0x400uLL);
                v120 = v112;
                CString = CFStringGetCString(v112, v202, 1024, 0x8000100u);
                v114 = v119;
                if (CString)
                {
                  strlen(v202);
                  _MDPlistContainerAddCString();
                  if (v135)
                  {
                    _MDPlistContainerAddDataValue();
                  }

                  else
                  {
                    _MDPlistContainerAddNullValue();
                  }
                }

                CFRelease(v120);
                _MDPlistContainerEndDictionary();
                _MDPlistContainerEndContainer();
                _MDPlistGetRootPlistObjectFromPlist();
                processOne(v8, v75, @"com.apple.searchd", v145, &v205, v142 | 0x20000, v128, 0, 0, &v201);
                CFRelease(v114);
              }
            }

            v115 = v148;
            v116 = SIGetAccumulatedSizeForGroup(v8, v148, 0);
            v117 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
            logIndexingEventInCoreAnalyticsWithBundleId(v115, v130, v116, v117 - v150);
            CFRelease(v115);
            if (v145)
            {
              CFRelease(v145);
            }

            if (v144)
            {
              CFRelease(v144);
            }

            goto LABEL_73;
          }

          v76 = *__error();
          v77 = _SILogForLogForCategory(0);
          v38 = v152;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            *v202 = 136316162;
            *&v202[4] = "setCSAttributes2";
            *&v202[12] = 1024;
            *&v202[14] = 32560;
            *&v202[18] = 2048;
            *&v202[20] = 0;
            *&v202[28] = 2048;
            *&v202[30] = v5;
            *&v202[38] = 2048;
            v203 = v4;
            _os_log_error_impl(&dword_1C278D000, v77, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, bundleID:%p, journalEntryOffset:%lld, journalEntrySize:%ld", v202, 0x30u);
          }

          *__error() = v76;
          v26 = v154;
LABEL_72:
          v75 = v151;
LABEL_73:
          if (v75 && !v201)
          {
            *(v8 + 2136) = v75;
          }

          goto LABEL_33;
        }

        v73 = *__error();
        v74 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *v202 = 136316418;
          *&v202[4] = "setCSAttributes2";
          *&v202[12] = 1024;
          *&v202[14] = 32553;
          *&v202[18] = 2048;
          *&v202[20] = v63;
          *&v202[28] = 2048;
          *&v202[30] = v62;
          *&v202[38] = 2048;
          v203 = v5;
          LOWORD(v204) = 2048;
          *(&v204 + 2) = v4;
          _os_log_error_impl(&dword_1C278D000, v74, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, checkSum:0x%08lx, storedCheckSum:0x%08lx, journalEntryOffset:%lld, journalEntrySize:%ld", v202, 0x3Au);
        }

        *__error() = v73;
      }

      else
      {
        v71 = *__error();
        v72 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *v202 = 136316418;
          *&v202[4] = "setCSAttributes2";
          *&v202[12] = 1024;
          *&v202[14] = 32542;
          *&v202[18] = 2048;
          *&v202[20] = v29;
          *&v202[28] = 2048;
          *&v202[30] = v61;
          *&v202[38] = 2048;
          v203 = v5;
          LOWORD(v204) = 2048;
          *(&v204 + 2) = v4;
          _os_log_error_impl(&dword_1C278D000, v72, OS_LOG_TYPE_ERROR, "%s:%d: Invalid journal entry, size:%ld, extraSize:%ld, journalEntryOffset:%lld, journalEntrySize:%ld", v202, 0x3Au);
        }

        *__error() = v71;
      }

      v26 = v154;
      v38 = v152;
      goto LABEL_72;
    }

    v33 = *__error();
    v34 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *v202 = 136316162;
    *&v202[4] = "setCSAttributes2";
    *&v202[12] = 1024;
    *&v202[14] = 32505;
    *&v202[18] = 2048;
    *&v202[20] = v29;
    *&v202[28] = 2048;
    *&v202[30] = v5;
    *&v202[38] = 2048;
    v203 = v4;
    v35 = "%s:%d: Invalid journal entry, size:%ld, journalEntryOffset:%lld, journalEntrySize:%ld";
    v36 = v34;
    goto LABEL_93;
  }

LABEL_38:
  v41 = v6;
  if (v4)
  {
    atomic_fetch_add_explicit(&gEnqueuedSize, -v4, memory_order_relaxed);
  }

  v42 = *(a1 + 5);
  v43 = v201;
  if (v42)
  {
    v42(*(a1 + 6), v201, v7);
    v43 = v201;
  }

  if (!v43)
  {
    v44 = *(a1 + 7);
    if (v44)
    {
      *&v205 = 0;
      v45 = *(v41 + 1048);
      v46 = *(v45 + 8);
      *v202 = MEMORY[0x1E69E9820];
      *&v202[8] = 0x40000000;
      *&v202[16] = __si_pop_queue_block_invoke;
      *&v202[24] = &__block_descriptor_tmp_42_1565;
      *&v202[32] = v45;
      v203 = v44;
      *&v204 = 1;
      *(&v204 + 1) = &v205;
      dispatch_sync(v46, v202);
    }
  }

  v47 = *(a1 + 1);
  if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v47, 1);
  }

  v48 = *(a1 + 9);
  if (v48)
  {
    CFRelease(v48);
  }

  free(a1);
}

void ___mobile_journal_notify_toc_event_block_invoke(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v4 = *(a1 + 32);
  *(v4 + 108) = 0;
  if (a3 < 0 || (uint64 = xpc_dictionary_get_uint64(xdict, "toc_p"), v4 = *(a1 + 32), (*(v4 + 96) = uint64) == 0))
  {
    v6 = 0;
  }

  else if (uint64 >= *(v4 + 88))
  {
    v6 = 0;
  }

  else
  {
    v6 = uint64;
  }

  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___mobile_journal_notify_toc_event_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_1903;
  v8[4] = v6;
  v8[5] = v4;
  v9 = *(a1 + 48);
  v8[6] = v7;
  dispatch_async(v7, v8);
}

void ___mobile_journal_notify_toc_event_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _mobile_journal_notify_toc_event(*(a1 + 40), 0, *(a1 + 56), v2, *(a1 + 48));
  }

  v3 = *(a1 + 40);
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    _si_mobile_journal_finalize(v3, 1);
  }

  v4 = *(a1 + 48);

  dispatch_release(v4);
}

uint64_t db_delete_fields_with_flags(int *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 136315650;
      v18 = "db_delete_fields_with_flags";
      v19 = 1024;
      v20 = 363;
      v21 = 1024;
      v22 = v13;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v11;
    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 363, v16);
    free(v15);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if ((a1[201] & 8) != 0)
  {
    return 13;
  }

  if (a2)
  {
    v4 = *(a2 + 12);
    if (v4 < 0x31)
    {
      return 0;
    }

    v5 = a2 + v4;
    v6 = a2 + 48;
    while (1)
    {
      v7 = v6 + *(v6 + 8);
      if (v7 > v5)
      {
        break;
      }

      v8 = (v7 + 13);
      if ((*(v6 + 2) & 0x200) != 0)
      {
        v9 = v6 - v8;
        memmove(v6, v8, v5 - v8);
        LODWORD(v4) = *(a2 + 12) + v9;
        *(a2 + 12) = v4;
      }

      else
      {
        v6 = v7 + 13;
      }

      v5 = a2 + v4;
      if (v6 >= v5)
      {
        return 0;
      }
    }

    *(a2 + 12) = v6 - a2;
  }

  return 2;
}

void _mobile_journal_notify_toc_event(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, NSObject *a5)
{
  if (a1 && *(a1 + 56) && *(a1 + 64) && *(a1 + 72) && *(a1 + 40) >= 1 && (*(a1 + 108) & 1) == 0)
  {
    *(a1 + 108) = 1;
    message = _si_mobile_journal_create_message(a1, 3u);
    xpc_dictionary_set_uint64(message, "jsn", a2);
    xpc_dictionary_set_uint64(message, "toc_o", a4);
    xpc_dictionary_set_uint64(message, "toc_f", a3);
    atomic_fetch_add(a1, 1u);
    dispatch_retain(a5);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___mobile_journal_notify_toc_event_block_invoke;
    v14[3] = &__block_descriptor_tmp_1904;
    v14[4] = a1;
    v14[5] = a5;
    v15 = a3;
    if ((si_xpc_send_client_msg(message, v14) & 1) == 0)
    {
      v11 = *__error();
      v12 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "### skg journal_add message NOT sent", v13, 2u);
      }

      *__error() = v11;
      if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
      {
        _si_mobile_journal_finalize(a1, 1);
      }
    }

    if (message)
    {
      CFRelease(message);
    }
  }
}

void __setCSAttributes2_block_invoke_2(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v100 = *MEMORY[0x1E69E9840];
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo(-1, sJournalCtxExceptionCallbacks, *(v1 + 32), 0x40000000, add_explicit + 1);
  v92 = v4;
  v5 = threadData[9 * v4 + 1] + 320 * HIDWORD(v4);
  v91 = HIDWORD(v4);
  v90 = __PAIR64__(v6, v7);
  *(v5 + 216) = 0;
  v8 = *(v5 + 312);
  v9 = *(v5 + 224);
  if (v9)
  {
    v9(*(v5 + 288));
  }

  v89 = v92;
  v88 = v91;
  v87 = v90;
  if (_setjmp(v5))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    *(v5 + 312) = v8;
    CIOnThreadCleanUpReset(v87);
    dropThreadId(v89, 1, add_explicit + 1);
    CICleanUpReset(v89, HIDWORD(v87));
    return;
  }

  v59 = v8;
  if (gDuplicateOidsCheckSuspendState_block_invoke_4_once != -1)
  {
    dispatch_once(&gDuplicateOidsCheckSuspendState_block_invoke_4_once, &__block_literal_global_1914);
  }

  v10 = &unk_1C2BF9000;
  if (*(v2 + 140) & 1) != 0 || (*(v2 + 141))
  {
    goto LABEL_11;
  }

  if (*(v2 + 136) < 2u)
  {
    goto LABEL_81;
  }

  if (!CFEqual(*(v2 + 40), @"com.apple.MobileSMS"))
  {
    if (CFEqual(*(v2 + 40), @"com.apple.mobilenotes"))
    {
      v45 = *(v2 + 136);
      buf = *(v2 + 48);
      v98 = *(v2 + 64);
      if (forceProcessCSSerialForNotes(v45, &buf))
      {
        goto LABEL_11;
      }
    }

LABEL_81:
    LODWORD(v46) = gCPUCount;
    if (gCPUCount <= 1)
    {
      LODWORD(v46) = 1;
    }

    v47 = *(v2 + 136);
    if (v46 >= v47)
    {
      v46 = v47;
    }

    else
    {
      v46 = v46;
    }

    v48 = v46;
    if (v46 < 2)
    {
      goto LABEL_94;
    }

    os_unfair_lock_lock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
    if (gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool <= v48)
    {
      if (gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool < 2)
      {
        v48 = 1;
        goto LABEL_93;
      }

      v48 = gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool - 1;
      v49 = 1;
    }

    else
    {
      v49 = gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool - v48;
    }

    gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool = v49;
LABEL_93:
    os_unfair_lock_unlock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
LABEL_94:
    v81 = 0;
    v82 = &v81;
    v83 = v10[330];
    v84 = 0;
    if (v48 == 1)
    {
      goto LABEL_12;
    }

    *&buf = 0;
    v50 = *(v2 + 32);
    if (v48)
    {
      v51 = *(*v50 + 32);
    }

    else
    {
      v51 = -1;
    }

    v27 = v59;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    v62 = *(v2 + 48);
    v64 = *(v2 + 72);
    v52 = *(v2 + 112);
    v66 = *(v2 + 96);
    block[2] = __setCSAttributes2_block_invoke_4;
    block[3] = &unk_1E81924C8;
    block[5] = v50;
    block[6] = &buf;
    v53 = *(v2 + 136);
    v70 = v51;
    v71 = v53;
    v63 = *(v2 + 64);
    v72 = *(v2 + 142);
    v65 = *(v2 + 88);
    v67 = *(v2 + 40);
    v68 = v52;
    block[4] = &v81;
    v69 = *(v2 + 128);
    dispatch_apply(v48, 0, block);
    os_unfair_lock_lock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
    gDuplicateOidsCheckSuspendState_block_invoke_4_indexingPool += v48;
    os_unfair_lock_unlock(&gDuplicateOidsCheckSuspendState_block_invoke_4_poolLock);
    goto LABEL_36;
  }

  v31 = *(v2 + 136);
  v85 = *(v2 + 48);
  v86 = *(v2 + 64);
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = 0;
  v33 = 0;
  allocator = *MEMORY[0x1E695E480];
  v56 = v31;
  v34 = v31;
  do
  {
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v93 = 0uLL;
    v94 = 0;
    LODWORD(v79) = 0;
    buf = v85;
    v98 = v86;
    if (getCSInfoAtIndex(&buf, v32, &v81, &v79, &v93))
    {
      buf = v93;
      v98 = v94;
      if (attrsKeyValueMatchesString(&buf, "_kMDItemDomainIdentifier", 24, "attachmentDomain", 0x10uLL))
      {
        v95 = v93;
        v96 = v94;
        buf = 0uLL;
        v98 = 0;
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          v95 = buf;
          v96 = v98;
          if (_MDPlistGetPlistObjectType() == 244 || (v95 = buf, v96 = v98, _MDPlistGetPlistObjectType() == 245))
          {
            v95 = buf;
            v96 = v98;
            v35 = _MDPlistContainerCopyCSObject();
            if (v35)
            {
              v36 = v35;
              if (CFStringGetLength(v35))
              {
                Mutable = v33;
                if (!v33)
                {
                  Mutable = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
                }

                v33 = Mutable;
                CFSetAddValue(Mutable, v36);
              }

              CFRelease(v36);
            }
          }
        }
      }
    }

    v38 = v33;
    v32 = (v32 + 1);
  }

  while (v34 != v32);
  v10 = &unk_1C2BF9000;
  if (!v33)
  {
    goto LABEL_81;
  }

  if (CFSetGetCount(v33) >= v56)
  {
    CFRelease(v33);
    goto LABEL_81;
  }

  v39 = 1;
  do
  {
    v40 = 0;
    v41 = v39;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v93 = 0uLL;
    v94 = 0;
    LODWORD(v79) = 0;
    buf = v85;
    v98 = v86;
    if (getCSInfoAtIndex(&buf, (v39 - 1), &v81, &v79, &v93))
    {
      buf = v93;
      v98 = v94;
      if (attrsKeyValueMatchesString(&buf, "_kMDItemDomainIdentifier", 24, "attachmentDomain", 0x10uLL))
      {
        goto LABEL_72;
      }

      v95 = v93;
      v96 = v94;
      buf = 0uLL;
      v98 = 0;
      if (!_MDPlistDictionaryGetPlistObjectForKey())
      {
        goto LABEL_72;
      }

      v95 = buf;
      v96 = v98;
      if (_MDPlistGetPlistObjectType() != 244)
      {
        v95 = buf;
        v96 = v98;
        if (_MDPlistGetPlistObjectType() != 245)
        {
          goto LABEL_72;
        }
      }

      v95 = buf;
      v96 = v98;
      v42 = _MDPlistContainerCopyCSObject();
      if (!v42)
      {
        goto LABEL_72;
      }

      v43 = v42;
      if (!CFStringGetLength(v42))
      {
        CFRelease(v43);
LABEL_72:
        v40 = 0;
        goto LABEL_73;
      }

      v44 = CFSetContainsValue(v38, v43) != 0;
      CFRelease(v43);
      v40 = v44;
    }

LABEL_73:
    if (v40)
    {
      break;
    }

    v39 = v41 + 1;
  }

  while (v41 < v56);
  CFRelease(v38);
  v10 = &unk_1C2BF9000;
  if (!v40)
  {
    goto LABEL_81;
  }

LABEL_11:
  v81 = 0;
  v82 = &v81;
  v83 = v10[330];
  v84 = 0;
LABEL_12:
  bzero(&buf, 0x1000uLL);
  v11 = _SIStackAllocatorCreate(&buf, 4096, indexingZone);
  if (*(v2 + 136))
  {
    v58 = v11;
    v12 = 0;
    v60 = add_explicit;
    do
    {
      if (!v99)
      {
        *(&buf + 1) = (buf + 55) & 0xFFFFFFFFFFFFFFF0;
      }

      v93 = 0uLL;
      v94 = 0;
      v95 = *(v2 + 48);
      v96 = *(v2 + 64);
      _MDPlistArrayGetPlistObjectAtIndex();
      v95 = v93;
      v96 = v94;
      if (_MDPlistGetPlistObjectType() == 246)
      {
        *&v85 = 0;
        v95 = v93;
        v96 = v94;
        _MDPlistDataGetBytePtr();
        _MDPlistGetRootPlistObjectFromBytes();
        v93 = v95;
        v94 = v96;
      }

      v95 = v93;
      v96 = v94;
      if (_MDPlistGetPlistObjectType() != 240)
      {
        goto LABEL_34;
      }

      v95 = v93;
      v96 = v94;
      Count = _MDPlistArrayGetCount();
      if ((Count - 3) > 1)
      {
        goto LABEL_34;
      }

      v14 = Count;
      v85 = v93;
      v86 = v94;
      _MDPlistArrayGetPlistObjectAtIndex();
      IntValue = _MDPlistNumberGetIntValue();
      if ((IntValue & 2) != 0)
      {
        goto LABEL_34;
      }

      v16 = IntValue;
      v55 = *(*(v2 + 32) + 80);
      v85 = 0uLL;
      v86 = 0;
      v95 = v93;
      v96 = v94;
      _MDPlistArrayGetPlistObjectAtIndex();
      v79 = 0uLL;
      v80 = 0;
      v95 = v85;
      v96 = v86;
      if (!_MDPlistDictionaryGetPlistObjectForKey())
      {
        goto LABEL_34;
      }

      v95 = v93;
      v96 = v94;
      PlistObjectSize = _MDPlistGetPlistObjectSize();
      v95 = v79;
      v96 = v80;
      v17 = _MDPlistContainerCopyCSObject();
      if (!v17)
      {
        goto LABEL_34;
      }

      v18 = v17;
      if (CFStringGetLength(v17))
      {
        v77 = 0uLL;
        v78 = 0;
        if (v14 == 4)
        {
          v95 = v93;
          v96 = v94;
          _MDPlistArrayGetPlistObjectAtIndex();
        }

        if (*(v2 + 142) == 1)
        {
          bzero(&v95, 0x400uLL);
          v19 = 0;
          if (CFStringGetCString(v18, &v95, 1024, 0x8000100u))
          {
            v75 = 0uLL;
            v76 = 0;
            v73 = *(v2 + 72);
            v74 = *(v2 + 88);
            if (_MDPlistDictionaryGetPlistObjectForKey())
            {
              v73 = v75;
              v74 = v76;
              v19 = _MDPlistContainerCopyCSObject();
            }
          }
        }

        else
        {
          v19 = 0;
        }

        v21 = *(v2 + 96);
        v22 = *(v2 + 104);
        v23 = *(v2 + 40);
        v24 = *(v2 + 112);
        v25 = *(v2 + 120);
        v26 = *(v2 + 128);
        v95 = v85;
        v96 = v86;
        v75 = v77;
        v76 = v78;
        processOneCS(v21, v22, v23, v24, (v16 << 16) & 0x100000 | ((v16 & 1) << 17) | (v16 << 28 >> 31) & 0xA0000 | v55, &v95, &v75, v19, v77, PlistObjectSize, v58, 0, v25, v82 + 24, v26);
        CFRelease(v18);
        v20 = v19;
        add_explicit = v60;
        if (!v19)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = v18;
        add_explicit = v60;
      }

      CFRelease(v20);
LABEL_34:
      ++v12;
    }

    while (v12 < *(v2 + 136));
  }

  v27 = v59;
LABEL_36:
  if (*(v82 + 24) == 1)
  {
    if (*(v2 + 147) >= 2u)
    {
      v28 = "com.apple.spotlight.SyndicatedContentDeleted";
    }

    else
    {
      v28 = "com.apple.spotlight.SyndicatedContentRefreshed";
    }

    notify_post(v28);
  }

  v29 = threadData[9 * v89 + 1] + 320 * v88;
  *(v29 + 312) = v27;
  v30 = *(v29 + 232);
  if (v30)
  {
    v30(*(v29 + 288));
  }

  dropThreadId(v89, 0, add_explicit + 1);
  _Block_object_dispose(&v81, 8);
}