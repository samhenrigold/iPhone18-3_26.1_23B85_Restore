void *voucher_activity_create_with_location(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a1;
  v5[2] = a2;
  v5[1] = a3;
  v5[0] = a4;
  return voucher_activity_create_with_data(a1, a2, a3, v5, 8uLL);
}

uint64_t voucher_get_activity_id_and_creator(void *a1, void *a2, void *a3)
{
  v6 = a1;
  if (a1 == -3)
  {
    v6 = _dispatch_thread_getspecific(28);
  }

  if (v6)
  {
    if (a2)
    {
      *a2 = v6[7];
    }

    if (a3)
    {
      *a3 = v6[8];
    }

    return v6[6];
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }
}

void voucher_activity_flush(unsigned __int8 a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v5 = 1;
  if (_firehose_task_buffer)
  {
    v5 = *(_firehose_task_buffer + 1680) == -1;
  }

  if (!v5)
  {
    v11 = _firehose_task_buffer;
    v10 = (_firehose_task_buffer + (a1 << 7) + 640);
    v9 = *v10;
    if (BYTE4(*v10) && BYTE4(v9) != 255)
    {
      v24 = (_firehose_task_buffer + (BYTE4(v9) << 12));
      v23 = -1;
      v22 = a1;
      v21 = 0;
      v20 = 1;
      v19 = 0;
      v18 = 0;
      v17 = 24;
      i = 0;
      v15 = 0;
      v13 = (-1 - *(v24 + 1)) >> 48 == 0;
      v12 = v24;
      for (i = *v24; ; i = v2)
      {
        if (!i)
        {
          v25 = 0;
          goto LABEL_34;
        }

        if ((HIWORD(i) & 0x1FF) != v22)
        {
          v25 = 0;
          goto LABEL_34;
        }

        v15 = i;
        p_i = &i;
        v28 = v20 + v19 + 24;
        if (i + v28 <= WORD1(i) && v13)
        {
          if (v21 > BYTE5(v15))
          {
            BYTE5(v15) = v21;
          }

          if (((v20 + 24) & 7) != 0)
          {
            v4 = ((v20 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v4 = v20 + 24;
          }

          v15 += v4;
          v15 -= v19 << 16;
          v15 += 0x100000000;
          v27 = &v15;
          v26 = 40;
          if (v15 + 40 > WORD1(v15))
          {
            HIBYTE(v15) |= 1u;
          }

          v14 = 0;
        }

        else
        {
          HIBYTE(v15) |= 1u;
          v14 = 1;
        }

        v1 = i;
        v2 = i;
        atomic_compare_exchange_strong_explicit(v12, &v2, v15, memory_order_relaxed, memory_order_relaxed);
        if (v2 == v1)
        {
          break;
        }
      }

      if (v14)
      {
        if (BYTE4(v15))
        {
          v25 = 0;
        }

        else
        {
          v25 = -1;
        }
      }

      else
      {
        if (v18)
        {
          *v18 = v24 + WORD1(v15);
        }

        v25 = i;
      }

LABEL_34:
      v7 = v25;
      if (v25 < 0)
      {
        firehose_buffer_ring_enqueue(v11, BYTE4(v9));
      }

      if (v7 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v7;
        __break(1u);
        JUMPOUT(0x957A8);
      }

      v8 = v9;
      BYTE4(v8) = 0;
      v3 = v9;
      atomic_compare_exchange_strong_explicit(v10, &v3, v8, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(_firehose_task_buffer);
    }
  }
}

unint64_t voucher_activity_trace_v_2(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, unint64_t a6, int a7)
{
  v55 = a1;
  v54 = a2;
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v50 = a6;
  v49 = a7;
  v48 = a2;
  v47 = 24;
  v46 = 4080;
  v45 = (a7 & 1) == 0;
  v75 = &_firehose_task_buffer_pred;
  v74 = 0;
  v73 = _firehose_task_buffer_init;
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(v75, v74, v73);
  }

  v72 = _firehose_task_buffer;
  v34 = 1;
  if (_firehose_task_buffer)
  {
    v34 = *(v72 + 1680) == -1;
  }

  if (v34)
  {
    return 0;
  }

  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = v51;
  v38 = _dispatch_thread_getspecific(28);
  v37 = 0;
  v130 = v38;
  v129 = &v37;
  if (&v37)
  {
    if (v130)
    {
      v33 = *(v130 + 56);
    }

    else
    {
      v33 = 0;
    }

    *v129 = v33;
  }

  if (v130)
  {
    v32 = *(v130 + 48);
  }

  else
  {
    v32 = 0;
  }

  v43 = v32;
  if (v32)
  {
    WORD1(v48) |= 1u;
    v39 += 8;
  }

  if ((v48 & 0x100000) != 0)
  {
    if (v37)
    {
      v39 += 8;
    }

    else
    {
      WORD1(v48) &= ~0x10u;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v50)
  {
    WORD1(v48) |= 0x100u;
    v39 += 4;
  }

  if (v39 + v50 + 24 >= 0xFF1)
  {
    v36 = v39 + v50 + 24;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Log is too large";
    qword_E42C0 = v36;
    __break(1u);
    JUMPOUT(0x95B3CLL);
  }

  v123 = _firehose_task_buffer;
  v122 = v53;
  v121 = v55;
  v120 = v39;
  v119 = v50;
  v118 = &v41;
  v117 = v45;
  v116 = (_firehose_task_buffer + (v55 << 7) + 640);
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v107 = *v116;
  v108 = v107;
  v106 = v107;
  v115 = v107;
  do
  {
    while (1)
    {
      while (1)
      {
        v114 = v115;
        v109 = BYTE4(v115);
        v31 = 0;
        if (BYTE4(v115))
        {
          v31 = v109 != 255;
        }

        if (v31)
        {
          v137 = v123;
          v136 = v109;
          v113 = v123 + (v109 << 12);
          v155 = v113;
          v154 = v122;
          v153 = v121;
          v152 = 0;
          v151 = v120;
          v150 = v119;
          v149 = v118;
          v148 = 24;
          v147 = 0;
          v146 = 0;
          v145 = 0;
          v144 = 0;
          v144 = (v122 - *(v113 + 8)) >> 48 == 0;
          v143 = 0;
          v142 = v113;
          v147 = *v113;
          do
          {
            if (!v147)
            {
              v156 = 0;
              goto LABEL_56;
            }

            if ((HIWORD(v147) & 0x1FF) != v153)
            {
              v156 = 0;
              goto LABEL_56;
            }

            v146 = v147;
            v187 = &v147;
            v186 = v151 + v150 + 24;
            if (v147 + v186 <= WORD1(v147) && v144)
            {
              if (v152 > BYTE5(v146))
              {
                BYTE5(v146) = v152;
              }

              if (((v151 + 24) & 7) != 0)
              {
                v30 = ((v151 + 24) & 0x1FFF8) + 8;
              }

              else
              {
                v30 = v151 + 24;
              }

              v146 += v30;
              v146 -= v150 << 16;
              v146 += 0x100000000;
              v141 = 16;
              v185 = &v146;
              v184 = 40;
              if (v146 + 40 > WORD1(v146))
              {
                HIBYTE(v146) |= 1u;
              }

              v145 = 0;
            }

            else
            {
              HIBYTE(v146) |= 1u;
              v145 = 1;
            }

            v140 = v146;
            v7 = v147;
            v8 = v147;
            atomic_compare_exchange_strong_explicit(v142, &v8, v146, memory_order_relaxed, memory_order_relaxed);
            if (v8 != v7)
            {
              v147 = v8;
            }

            v139 = v8 == v7;
            v143 = v8 == v7;
          }

          while (v8 != v7);
          v138 = v143;
          if (v145)
          {
            if (BYTE4(v146))
            {
              v156 = 0;
            }

            else
            {
              v156 = -1;
            }
          }

          else
          {
            if (v149)
            {
              *v149 = v155 + WORD1(v146);
            }

            v156 = v147;
          }

LABEL_56:
          v110 = v156;
          if (v156 >= 1)
          {
            v105 = 0;
            StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v105 = *(StatusReg - 8);
            v164 = v113;
            v163 = v122;
            v162 = v120;
            v161 = v105;
            v160 = v110;
            v159 = (v113 + v110);
            v163 = v122 - *(v113 + 8);
            v163 |= v120 << 48;
            v158 = v163;
            *(v113 + v110 + 16) = v163;
            v159[1] = v161;
            v124 = v159;
            goto LABEL_95;
          }

          if (v110 < 0)
          {
            firehose_buffer_ring_enqueue(v123, BYTE4(v115));
          }

          BYTE4(v114) = 0;
        }

        if (v117 || ((v112 & 1) == 0 || (v115 & 0x400000000000) == 0) && !(BYTE5(v115) >> 7))
        {
          break;
        }

        if ((BYTE5(v115) & 0x3Fu) + 1 > 0x3E)
        {
          v29 = 63;
        }

        else
        {
          v29 = (BYTE5(v115) & 0x3F) + 1;
        }

        BYTE5(v114) = BYTE5(v114) & 0xC0 | v29 & 0x3F;
        v104 = v115;
        v103 = 0;
        v101 = v114;
        v100 = v114;
        v102 = v114;
        v9 = v115;
        v10 = v115;
        atomic_compare_exchange_strong_explicit(v116, &v10, v114, memory_order_relaxed, memory_order_relaxed);
        if (v10 != v9)
        {
          v104 = v10;
        }

        v99 = v10 == v9;
        v103 = v10 == v9;
        v115 = v104;
        v98 = v103;
        v111 = v10 == v9;
        if (v10 == v9)
        {
          v171 = v121;
          v170 = v109;
          v169 = v112 & 1;
          v168 = v115;
          v167 = v114;
          v166 = v121 | (v109 << 8);
          v165 = v112 & 1;
          v202 = 772145156;
          v201 = v166;
          v200 = v165;
          v199 = v115;
          v198 = v114;
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          v124 = 0;
          goto LABEL_95;
        }
      }

      if (!v115)
      {
        break;
      }

      if (v117)
      {
        LODWORD(v114) = v114 | 1;
      }

      else
      {
        LODWORD(v114) = v114 | 2;
      }

      v97 = v114 == v115;
      v28 = 1;
      if (v114 != v115)
      {
        v96 = v115;
        v95 = 0;
        v93 = v114;
        v92 = v114;
        v94 = v114;
        v11 = v115;
        v12 = v115;
        atomic_compare_exchange_strong_explicit(v116, &v12, v114, memory_order_relaxed, memory_order_relaxed);
        if (v12 != v11)
        {
          v96 = v12;
        }

        v91 = v12 == v11;
        v95 = v12 == v11;
        v115 = v96;
        v90 = v95;
        v28 = v12 == v11;
      }

      v111 = v28;
      if (v28)
      {
        v179 = v121;
        v178 = v109;
        v177 = v112 & 1;
        v176 = v115;
        v175 = v114;
        v174 = v117;
        v173 = v121 | (v109 << 8);
        v172 = v112 & 1 | (2 * v117);
        v197 = 772145160;
        v196 = v173;
        v195 = v172;
        v194 = v115;
        v193 = v114;
        if (MEMORY[0xFFFFFC100])
        {
          kdebug_trace();
        }

        _dispatch_firehose_gate_wait(v116, v114, 0x10000);
        v112 = 1;
        v88 = *v116;
        v89 = v88;
        v87 = v88;
        v115 = v88;
      }
    }

    v135 = _dispatch_thread_getspecific(3);
    LODWORD(v114) = v135 & 0xFFFFFFFC;
    v86 = v115;
    v85 = 0;
    v83 = v114;
    v82 = v114;
    v84 = v114;
    v13 = v115;
    v14 = v115;
    atomic_compare_exchange_strong_explicit(v116, &v14, v114, memory_order_relaxed, memory_order_relaxed);
    if (v14 != v13)
    {
      v86 = v14;
    }

    v81 = v14 == v13;
    v85 = v14 == v13;
    v115 = v86;
    v80 = v85;
    v111 = v14 == v13;
  }

  while (v14 != v13);
  HIBYTE(v79) = 0;
  v78 = v122;
  LOWORD(v79) = v120;
  WORD1(v79) = v119;
  WORD2(v79) = v121;
  BYTE6(v79) = ((1 << v121) & 0x93) != 0;
  BYTE6(v79) |= 2 * (*(v123 + 1697) & 1);
  BYTE6(v79) = BYTE6(v79) & 0xFB | (4 * v117);
  v183 = v122;
  v182 = v79;
  v181 = v115;
  v180 = v114;
  v192 = 772145164;
  v191 = v122;
  v190 = v79;
  v189 = v115;
  v188 = v114;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  v124 = firehose_buffer_tracepoint_reserve_slow(v123, &v78, v118);
LABEL_95:
  v44 = v124;
  if (!v124)
  {
    return 0;
  }

  v40 = v44 + 3;
  if (v43)
  {
    v71 = v40;
    v70 = &v43;
    v69 = 8;
    __memcpy_chk();
    v40 = &v71[v69 / 8];
  }

  if (v37)
  {
    v68 = v40;
    v67 = &v37;
    v66 = 8;
    __memcpy_chk();
    v40 = &v68[v66 / 8];
  }

  if (v50)
  {
    v134 = v44;
    v133 = v44 & 0xFFFFFFFFFFFFF000;
    v42 = v44 & 0xFFFFFFFFFFFFF000;
    v35[0] = v41 - (v44 & 0xF000);
    v35[1] = v50;
    v65 = v40;
    v64 = v35;
    v63 = 4;
    __memcpy_chk();
    v40 = (v65 + v63);
  }

  while (v51)
  {
    v15 = *v52;
    v16 = v52[1];
    v62 = v40;
    v61 = v15;
    v60 = v16;
    __memcpy_chk();
    v40 = (v62 + v60);
    v17 = v52[1];
    v18 = v51 >= v17;
    v19 = v51 - v17;
    v20 = !v18;
    v51 = v19;
    v77 = v20;
    if (v20)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
      JUMPOUT(0x968FCLL);
    }

    v52 += 2;
  }

  while (v50)
  {
    v21 = *v52;
    v22 = v52[1];
    v59 = v41;
    v58 = v21;
    v57 = v22;
    __memcpy_chk();
    v41 = v59 + v57;
    v23 = v52[1];
    v18 = v50 >= v23;
    v24 = v50 - v23;
    v25 = !v18;
    v50 = v24;
    v76 = v25;
    if (v25)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid arguments";
      __break(1u);
      JUMPOUT(0x969BCLL);
    }

    v52 += 2;
  }

  v128 = v48;
  v127 = _firehose_task_buffer;
  v126 = v44;
  v132 = v44;
  v131 = v44 & 0xFFFFFFFFFFFFF000;
  v125 = v44 & 0xFFFFFFFFFFFFF000;
  v209 = v48;
  v208 = (v44 & 0xFFFFFFFFFFFFF000);
  v207 = v44;
  v206 = 0;
  v205 = v48;
  atomic_store(v48, v44);
  v204 = 0x100000000;
  add_explicit = atomic_fetch_add_explicit(v208, 0xFFFFFFFF00000000, memory_order_relaxed);
  v206 = add_explicit;
  v27 = 0;
  if (BYTE4(add_explicit) == 1)
  {
    v27 = HIBYTE(v206) & 1;
  }

  if (v27)
  {
    v211 = v127;
    v210 = v125;
    firehose_buffer_ring_enqueue(v211, (v125 - v211) >> 12);
  }

  return v48;
}

unint64_t voucher_activity_trace(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a1;
  v6[5] = a2;
  v6[4] = a3;
  v6[3] = a4;
  v6[2] = a5;
  v6[0] = a4;
  v6[1] = a5;
  return voucher_activity_trace_v(a1, a2, a3, v6, a5, 0);
}

unint64_t format_recipe_detail(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const char *a5, unint64_t a6)
{
  v51 = a4;
  if (a5)
  {
    if (a3 > a4)
    {
      v38 = a3 - a4;
    }

    else
    {
      v38 = 0;
    }

    v48 = __snprintf_chk((a2 + a4), v38, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", a5);
    if (v48 < 0)
    {
      v37 = 0;
    }

    else
    {
      if (v48 > v38)
      {
        v36 = v38;
      }

      else
      {
        v36 = v48;
      }

      v37 = v36;
    }

    v51 += v37;
  }

  if (a3 > v51)
  {
    v35 = a3 - v51;
  }

  else
  {
    v35 = 0;
  }

  v47 = __snprintf_chk((a2 + v51), v35, 0, 0xFFFFFFFFFFFFFFFFLL, "Key: %u, ", *a1);
  if (v47 < 0)
  {
    v34 = 0;
  }

  else
  {
    if (v47 > v35)
    {
      v33 = v35;
    }

    else
    {
      v33 = v47;
    }

    v34 = v33;
  }

  v52 = v51 + v34;
  if (a3 > v52)
  {
    v32 = a3 - v52;
  }

  else
  {
    v32 = 0;
  }

  v46 = __snprintf_chk((a2 + v52), v32, 0, 0xFFFFFFFFFFFFFFFFLL, "Command: %u, ", *(a1 + 4));
  if (v46 < 0)
  {
    v31 = 0;
  }

  else
  {
    if (v46 > v32)
    {
      v30 = v32;
    }

    else
    {
      v30 = v46;
    }

    v31 = v30;
  }

  v53 = v52 + v31;
  if (a3 > v53)
  {
    v29 = a3 - v53;
  }

  else
  {
    v29 = 0;
  }

  v45 = __snprintf_chk((a2 + v53), v29, 0, 0xFFFFFFFFFFFFFFFFLL, "Previous voucher: 0x%x, ", *(a1 + 8));
  if (v45 < 0)
  {
    v28 = 0;
  }

  else
  {
    if (v45 > v29)
    {
      v27 = v29;
    }

    else
    {
      v27 = v45;
    }

    v28 = v27;
  }

  v54 = v53 + v28;
  if (a3 > v54)
  {
    v26 = a3 - v54;
  }

  else
  {
    v26 = 0;
  }

  v44 = __snprintf_chk((a2 + v54), v26, 0, 0xFFFFFFFFFFFFFFFFLL, "Content size: %u\n", *(a1 + 12));
  if (v44 < 0)
  {
    v25 = 0;
  }

  else
  {
    if (v44 > v26)
    {
      v24 = v26;
    }

    else
    {
      v24 = v44;
    }

    v25 = v24;
  }

  v55 = v54 + v25;
  if (*a1 == 2)
  {
    if (a5)
    {
      if (a3 > v55)
      {
        v23 = a3 - v55;
      }

      else
      {
        v23 = 0;
      }

      v43 = __snprintf_chk((a2 + v55), v23, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", a5);
      if (v43 < 0)
      {
        v22 = 0;
      }

      else
      {
        if (v43 > v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v43;
        }

        v22 = v21;
      }

      v55 += v22;
    }

    if (a3 > v55)
    {
      v20 = a3 - v55;
    }

    else
    {
      v20 = 0;
    }

    v42 = __snprintf_chk((a2 + v55), v20, 0, 0xFFFFFFFFFFFFFFFFLL, "IMPORTANCE INFO: %s", (a1 + 16));
    if (v42 < 0)
    {
      v19 = 0;
    }

    else
    {
      if (v42 > v20)
      {
        v18 = v20;
      }

      else
      {
        v18 = v42;
      }

      v19 = v18;
    }

    v56 = v55 + v19;
  }

  else if (*a1 == 3)
  {
    if (a5)
    {
      if (a3 > v55)
      {
        v17 = a3 - v55;
      }

      else
      {
        v17 = 0;
      }

      v41 = __snprintf_chk((a2 + v55), v17, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", a5);
      if (v41 < 0)
      {
        v16 = 0;
      }

      else
      {
        if (v41 > v17)
        {
          v15 = v17;
        }

        else
        {
          v15 = v41;
        }

        v16 = v15;
      }

      v55 += v16;
    }

    if (a3 > v55)
    {
      v14 = a3 - v55;
    }

    else
    {
      v14 = 0;
    }

    v40 = __snprintf_chk((a2 + v55), v14, 0, 0xFFFFFFFFFFFFFFFFLL, "RESOURCE ACCOUNTING INFO: %s", (a1 + 16));
    if (v40 < 0)
    {
      v13 = 0;
    }

    else
    {
      if (v40 <= v14)
      {
        v12 = v40;
      }

      else
      {
        v12 = v14;
      }

      v13 = v12;
    }

    v56 = v55 + v13;
  }

  else
  {
    v11 = a1 + 16;
    if (*(a1 + 12) >= a6)
    {
      v6 = format_hex_data(a5, "Recipe Contents", v11, a6, a2, a3, v55);
    }

    else
    {
      v6 = format_hex_data(a5, "Recipe Contents", v11, *(a1 + 12), a2, a3, v55);
    }

    v56 = v6;
  }

  if (*(a2 + v56 - 1) != 10)
  {
    if (a3 > v56)
    {
      v10 = a3 - v56;
    }

    else
    {
      v10 = 0;
    }

    v39 = __snprintf_chk((a2 + v56), v10, 0, 0xFFFFFFFFFFFFFFFFLL, "\n");
    if (v39 < 0)
    {
      v9 = 0;
    }

    else
    {
      if (v39 <= v10)
      {
        v8 = v39;
      }

      else
      {
        v8 = v10;
      }

      v9 = v8;
    }

    v56 += v9;
  }

  return v56;
}

uint64_t voucher_mach_msg_fill_aux(uint64_t a1, unsigned int a2)
{
  v5 = _dispatch_thread_getspecific(28);
  if (v5 && *(v5 + 48))
  {
    if (a2 >= 0x28uLL)
    {
      *a1 = 40;
      *(a1 + 4) = 0;
      *&v3 = 59821818;
      *(&v3 + 1) = *(v5 + 48);
      v4 = *(v5 + 56);
      *(a1 + 8) = v3;
      *(a1 + 24) = v4;
      return 40;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _voucher_activity_id_allocate_slow(uint64_t a1)
{
  v5 = a1;
  v4 = 0;
  activity_id = 0;
  v4 = mach_generate_activity_id(mach_task_self_, 1, &activity_id);
  if (v4)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Could not generate an activity ID";
    qword_E42C0 = v4;
    __break(1u);
    JUMPOUT(0x976BCLL);
  }

  activity_id *= 16;
  activity_id &= 0xFFFFFFFFFFFFFFuLL;
  if (!activity_id)
  {
    activity_id = 1;
  }

  if (v5)
  {
    return __swp(activity_id, &_voucher_aid_next);
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v1, activity_id + 1, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    return __swp(activity_id, &_voucher_aid_next);
  }

  else
  {
    return activity_id;
  }
}

uint64_t _firehose_task_buffer_init()
{
  v6 = 0;
  v5 = 0u;
  v4 = 0u;
  buffer = 0u;
  v0 = getpid();
  result = proc_pidinfo(v0, 17, 1uLL, &buffer, 56);
  if (result != 56)
  {
    if (!result)
    {
      v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      qword_E4290 = "BUG IN LIBDISPATCH: Unable to get the unique pid (error)";
      qword_E42C0 = v2;
      __break(1u);
      JUMPOUT(0x978E8);
    }

    qword_E4290 = "BUG IN LIBDISPATCH: Unable to get the unique pid (size)";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0x97924);
  }

  _voucher_unique_pid = v4;
  if (_voucher_libtrace_hooks)
  {
    result = (*(_voucher_libtrace_hooks + 8))();
    if (result)
    {
      result = firehose_buffer_create(result, _voucher_unique_pid, (_dispatch_memory_warn & 1) != 0);
      _firehose_task_buffer = result;
      if (*_voucher_libtrace_hooks >= 4)
      {
        if (*(_voucher_libtrace_hooks + 32))
        {
          return (*(_voucher_libtrace_hooks + 32))(_firehose_task_buffer + 2048, 2048);
        }
      }
    }
  }

  return result;
}

unint64_t format_hex_data(const char *a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v36 = a7;
  if (a2)
  {
    if (a6 > a7)
    {
      v26 = a6 - a7;
    }

    else
    {
      v26 = 0;
    }

    v33 = __snprintf_chk((a5 + a7), v26, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s:\n", a1, a2);
    if (v33 < 0)
    {
      v25 = 0;
    }

    else
    {
      if (v33 > v26)
      {
        v24 = v26;
      }

      else
      {
        v24 = v33;
      }

      v25 = v24;
    }

    v36 += v25;
  }

  v32 = -1;
  for (i = 0; i < a4; ++i)
  {
    v32 = i % 0x10;
    if (!(i % 0x10))
    {
      if (i)
      {
        if (a6 > v36)
        {
          v23 = a6 - v36;
        }

        else
        {
          v23 = 0;
        }

        v31 = __snprintf_chk((a5 + v36), v23, 0, 0xFFFFFFFFFFFFFFFFLL, "  %s\n", v41);
        if (v31 < 0)
        {
          v22 = 0;
        }

        else
        {
          if (v31 > v23)
          {
            v21 = v23;
          }

          else
          {
            v21 = v31;
          }

          v22 = v21;
        }

        v36 += v22;
      }

      if (a6 > v36)
      {
        v20 = a6 - v36;
      }

      else
      {
        v20 = 0;
      }

      v30 = __snprintf_chk((a5 + v36), v20, 0, 0xFFFFFFFFFFFFFFFFLL, "%s  %04lx ", a1, i);
      if (v30 < 0)
      {
        v19 = 0;
      }

      else
      {
        if (v30 > v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v30;
        }

        v19 = v18;
      }

      v36 += v19;
    }

    if (a6 > v36)
    {
      v17 = a6 - v36;
    }

    else
    {
      v17 = 0;
    }

    v29 = __snprintf_chk((a5 + v36), v17, 0, 0xFFFFFFFFFFFFFFFFLL, " %02x", *(a3 + i));
    if (v29 < 0)
    {
      v16 = 0;
    }

    else
    {
      if (v29 > v17)
      {
        v15 = v17;
      }

      else
      {
        v15 = v29;
      }

      v16 = v15;
    }

    v36 += v16;
    if (*(a3 + i) >= 0x20u && *(a3 + i) <= 0x7Eu)
    {
      v14 = *(a3 + i);
    }

    else
    {
      v14 = 46;
    }

    v41[v32] = v14;
  }

  v41[v32 + 1] = 0;
  if (i % 0x10)
  {
    while (i % 0x10)
    {
      if (a6 > v36)
      {
        v13 = a6 - v36;
      }

      else
      {
        v13 = 0;
      }

      v28 = __snprintf_chk((a5 + v36), v13, 0, 0xFFFFFFFFFFFFFFFFLL, "   ");
      if (v28 < 0)
      {
        v12 = 0;
      }

      else
      {
        if (v28 <= v13)
        {
          v11 = v28;
        }

        else
        {
          v11 = v13;
        }

        v12 = v11;
      }

      v36 += v12;
      ++i;
    }

    if (a6 > v36)
    {
      v10 = a6 - v36;
    }

    else
    {
      v10 = 0;
    }

    v27 = __snprintf_chk((a5 + v36), v10, 0, 0xFFFFFFFFFFFFFFFFLL, "  %s\n", v41);
    if (v27 < 0)
    {
      v9 = 0;
    }

    else
    {
      if (v27 <= v10)
      {
        v8 = v27;
      }

      else
      {
        v8 = v10;
      }

      v9 = v8;
    }

    v36 += v9;
  }

  return v36;
}

mach_port_context_t firehose_buffer_create(mach_port_name_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v8 = 0;
  address = vm_page_size;
  if (0x4000 % vm_page_size)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Invalid values for MADVISE_CHUNK_COUNT / CHUNK_SIZE";
    qword_E42C0 = 0x4000;
    __break(1u);
    JUMPOUT(0x9820CLL);
  }

  v6 = mach_vm_map(mach_task_self_, &address, 0x40000uLL, 0, 1308622851, 0, 0, 0, 3, 7, 2u);
  if (v6)
  {
    if (v6 != 3)
    {
      v15 = v6;
      v14 = 346;
      _dispatch_bug(v14, v15);
    }

    v20 = v12;
    v19 = mach_port_deallocate(mach_task_self_, v12);
    if (v19 == -301)
    {
      v18 = -301;
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x98324);
    }

    v17 = v19;
    v22 = v19;
    v21 = 91;
    if (v19)
    {
      _dispatch_bug(v21, v22);
    }

    v16 = v17;
    return 0;
  }

  else
  {
    v8 = address;
    v9 = address;
    *(address + 1676) = v12;
    *(v9 + 1672) = getpid();
    *(v9 + 1664) = v11;
    v30 = 49;
    v29 = 5;
    v28 = v8;
    name = 0;
    options.flags = 51;
    options.mpl.mpl_qlimit = 5;
    options.reserved[1] = 0;
    options.reserved[0] = 0;
    v25 = mach_port_construct(mach_task_self_, &options, v8, &name);
    if (v25)
    {
      if (v25 == -301)
      {
        v24 = -301;
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x98464);
      }

      v23 = v25;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
      qword_E42C0 = v25;
      __break(1u);
      JUMPOUT(0x98498);
    }

    *(v9 + 1688) = name;
    *(v9 + 264) = 20180226;
    *(v9 + 512) = v10;
    for (i = 0; i < 8; ++i)
    {
      if (i != 3)
      {
        *(v9 + (i << 7) + 644) = -1;
      }
    }

    firehose_buffer_update_limits_unlocked(v8);
    *(v9 + 520) = 31;
    for (j = 0; j <= 3u; ++j)
    {
      *(v9 + 2 * j) = j + 1;
    }

    *(v9 + 464) = 4;
    *(v9 + 320) = 4;
    *(v9 + 256) = 0x40000;
    return v8;
  }
}

uint64_t firehose_buffer_update_limits_unlocked(uint64_t result)
{
  v12 = *(result + 512);
  v11 = 0;
  v10 = 0;
  for (i = 0; i < 8; ++i)
  {
    if (*(result + 640 + (i << 7) + 4) != 255)
    {
      if (((1 << i) & 0x93) != 0)
      {
        ++v11;
      }

      else
      {
        ++v10;
      }
    }
  }

  if (v12)
  {
    if ((v12 & 2) != 0)
    {
      v8 = 4 * v10 + 1 + v11;
    }

    else
    {
      v8 = v10 + 3 + v11;
    }
  }

  else if ((v12 & 2) != 0)
  {
    v8 = 6 * v10 + 1 + 3 * v11;
  }

  else
  {
    v8 = 2 * (v10 + v11) + 1;
  }

  v6 = vm_page_size / 0x1000;
  if (v6 > 1u)
  {
    if (v8 % v6)
    {
      v4 = v8 + v6 - v8 % v6;
    }

    else
    {
      LOWORD(v4) = v8;
    }

    v8 = v4;
  }

  if (v8 <= 4u)
  {
    v3 = 4;
  }

  else
  {
    v3 = v8;
  }

  v9 = v3;
  if ((v12 & 1) == 0)
  {
    if (v3 <= 8u)
    {
      v2 = 8;
    }

    else
    {
      v2 = v3;
    }

    v9 = v2;
  }

  LOWORD(v5) = v9 - 1;
  if (3 * v9 / 8 <= 2 * v11)
  {
    LOWORD(v1) = 2 * v11;
  }

  else
  {
    v1 = 3 * v9 / 8;
  }

  WORD1(v5) = v1;
  HIDWORD(v5) = (v9 + 1);
  v13 = *(result + 528);
  *(result + 528) = v5;
  if (v13 != v5)
  {
    atomic_fetch_add_explicit((result + 448), v5 - v13, memory_order_relaxed);
  }

  return result;
}

mach_vm_address_t firehose_buffer_get_logging_prefs(int a1, mach_vm_size_t *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  size = 0;
  address = 0;
  v3 = 0;
  if (a1)
  {
    v3 = v11 != -1;
  }

  if (v3)
  {
    logging_prefs = firehose_send_get_logging_prefs(v11, &v9, &size);
    if (logging_prefs)
    {
      if (logging_prefs != 268435459)
      {
        if (logging_prefs == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x98A8CLL);
        }

        v18 = logging_prefs;
        v17 = 600;
        _dispatch_bug(v17, v18);
      }

      *v10 = 0;
      return 0;
    }

    else
    {
      v5 = mach_vm_map(mach_task_self_, &address, size, 0, 1, v9, 0, 0, 1, 1, 2u);
      if (v5 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x98B70);
      }

      v16 = v5;
      v15 = 611;
      if (v5)
      {
        _dispatch_bug(v15, v16);
        address = 0;
        size = 0;
      }

      v6 = mach_port_deallocate(mach_task_self_, v9);
      if (v6 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x98C2CLL);
      }

      v14 = v6;
      v13 = 617;
      if (v6)
      {
        _dispatch_bug(v13, v14);
      }

      *v10 = size;
      return address;
    }
  }

  else
  {
    *v10 = 0;
    return 0;
  }
}

BOOL firehose_buffer_should_send_strings(mach_port_context_t a1)
{
  v6 = a1;
  v5 = *(a1 + 1680);
  should_send_strings = 0;
  v3 = 0;
  if (v5 != -1)
  {
    if (v5)
    {
      should_send_strings = firehose_send_should_send_strings(v5, &v3);
      if (!should_send_strings)
      {
        return v3 != 0;
      }

      if (should_send_strings != 268435459)
      {
        if (should_send_strings == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x98D78);
        }

        v11 = should_send_strings;
        v10 = 641;
        _dispatch_bug(v10, v11);
      }
    }

    v5 = firehose_client_reconnect(v6, v5, 0);
    v2 = 0;
    if (v5)
    {
      v2 = v5 != -1;
    }

    if (v2)
    {
      should_send_strings = firehose_send_should_send_strings(v5, &v3);
      if (!should_send_strings)
      {
        return v3 != 0;
      }

      if (should_send_strings != 268435459)
      {
        if (should_send_strings == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x98E9CLL);
        }

        v9 = should_send_strings;
        v8 = 653;
        _dispatch_bug(v8, v9);
      }
    }

    return 0;
  }

  return 0;
}

uint64_t firehose_client_reconnect(mach_port_context_t a1, int a2, unsigned __int8 a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  object_handle = 0;
  v16 = 0;
  v15 = 0;
  v14[4] = 0;
  *v14 = a2 != 0;
  v77 = *(a1 + 1676);
  v76 = 157;
  if (!v77)
  {
    _dispatch_abort(v76, 0);
  }

  v75 = *(v21 + 1688);
  v74 = 158;
  if (!v75)
  {
    _dispatch_abort(v74, 0);
  }

  v3 = *(v21 + 1664) != 0;
  v73 = *(v21 + 1664) != 0;
  v72 = 159;
  if (!v3)
  {
    _dispatch_abort(v72, v73);
  }

  v68 = (v21 + 1692);
  v85 = _dispatch_thread_getspecific(3);
  v67 = v85 & 0xFFFFFFFC;
  v66 = 0;
  v65 = 0;
  v63 = v85 & 0xFFFFFFFC;
  v62 = v85 & 0xFFFFFFFC;
  v64 = v85 & 0xFFFFFFFC;
  v4 = 0;
  atomic_compare_exchange_strong_explicit((v21 + 1692), &v4, v85 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v66 = v4;
  }

  v61 = v4 == 0;
  v65 = v4 == 0;
  v60 = v65;
  if (v4)
  {
    _dispatch_unfair_lock_lock_slow(v68, 0x10000);
  }

  v18 = *(v21 + 4 * v19 + 1680);
  if (v18 == v20 && v18 != -1)
  {
    if (v14[0])
    {
      for (i = 0; i <= 1; ++i)
      {
        v12 = *(v21 + 4 * i + 1680);
        v71 = v12;
        v70 = 171;
        if (!v12)
        {
          _dispatch_abort(v70, v71);
        }

        v84 = v12;
        v83 = v21;
        v82 = mach_port_destruct(mach_task_self_, v12, 0, v21);
        if (v82 == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x991D0);
        }

        name = v12;
        v48 = mach_port_deallocate(mach_task_self_, v12);
        if (v48 == -301)
        {
          v47 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x99234);
        }

        v46 = v48;
        v51 = v48;
        v50 = 91;
        if (v48)
        {
          _dispatch_bug(v50, v51);
        }

        v45 = v46;
        *(v21 + 4 * i + 1680) = 0;
      }
    }

    permission = 4194305;
    size = 0x40000;
    offset = v21;
    *&v14[1] = mach_make_memory_entry_64(mach_task_self_, &size, v21, 4194305, &object_handle, 0);
    if (!(size >> 18))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid size for the firehose buffer";
      qword_E42C0 = size;
      __break(1u);
      JUMPOUT(0x99328);
    }

    if (*&v14[1])
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
      qword_E42C0 = *&v14[1];
      __break(1u);
      JUMPOUT(0x99370);
    }

    if (v14[0])
    {
      if (*(_voucher_libtrace_hooks + 24))
      {
        *&v14[1] = (*(_voucher_libtrace_hooks + 24))(&offset, &size);
        if (!*&v14[1] && offset && size)
        {
          v15 = size;
          *&v14[1] = mach_make_memory_entry_64(mach_task_self_, &size, offset, permission, &v16, 0);
          if (*&v14[1])
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to make memory port";
            qword_E42C0 = *&v14[1];
            __break(1u);
            JUMPOUT(0x99454);
          }

          *&v14[1] = mach_vm_deallocate(mach_task_self_, offset, size);
          v23 = *&v14[1];
          v22 = 209;
          if (*&v14[1])
          {
            _dispatch_bug(v22, v23);
          }
        }
      }
    }

    for (j = 0; j <= 1; ++j)
    {
      v59 = 21;
      v58 = 1;
      context = v21;
      v56 = 0;
      options.flags = 23;
      options.mpl.mpl_qlimit = 1;
      options.reserved[1] = 0;
      options.reserved[0] = 0;
      v54 = mach_port_construct(mach_task_self_, &options, v21, &v56);
      if (v54)
      {
        if (v54 == -301)
        {
          v53 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x99598);
        }

        v52 = v54;
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate mach port";
        qword_E42C0 = v54;
        __break(1u);
        JUMPOUT(0x995CCLL);
      }

      v98[j] = v56;
    }

    v18 = v98[v19];
    *&v14[1] = firehose_send_register(*(v21 + 1676), object_handle, 0x40000, v98[0], v98[1], *(v21 + 1688), v16, v15);
    if (*&v14[1])
    {
      if (*&v14[1] != 268435459)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to register with logd";
        qword_E42C0 = *&v14[1];
        __break(1u);
        JUMPOUT(0x999A8);
      }

      for (k = 0; k <= 1; ++k)
      {
        v81 = v98[k];
        v80 = v21;
        v79 = 0;
        v79 = mach_port_destruct(mach_task_self_, v81, 0, v21);
        if (v79 == -301)
        {
          v78 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x99744);
        }

        v42 = v98[k];
        v41 = mach_port_deallocate(mach_task_self_, v42);
        if (v41 == -301)
        {
          v40 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x997B0);
        }

        v39 = v41;
        v44 = v41;
        v43 = 91;
        if (v41)
        {
          _dispatch_bug(v43, v44);
        }

        v38 = v39;
        *(v21 + 4 * k + 1680) = -1;
      }

      v18 = -1;
      v35 = object_handle;
      v34 = mach_port_deallocate(mach_task_self_, object_handle);
      if (v34 == -301)
      {
        v33 = -301;
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x99880);
      }

      v32 = v34;
      v37 = v34;
      v36 = 91;
      if (v34)
      {
        _dispatch_bug(v36, v37);
      }

      v31 = v32;
      if (v16)
      {
        v28 = v16;
        v27 = mach_port_deallocate(mach_task_self_, v16);
        if (v27 == -301)
        {
          v26 = -301;
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x9992CLL);
        }

        v25 = v27;
        v30 = v27;
        v29 = 91;
        if (v27)
        {
          _dispatch_bug(v29, v30);
        }

        v24 = v25;
      }
    }

    else
    {
      for (m = 0; m <= 1; ++m)
      {
        *(v21 + 4 * m + 1680) = v98[m];
      }
    }
  }

  v69 = v21 + 1692;
  v94 = (v21 + 1692);
  v93 = 0;
  v96 = _dispatch_thread_getspecific(3);
  v92 = v96 & 0xFFFFFFFC;
  v89 = 0;
  v88 = 0;
  v90 = 0;
  v87 = atomic_exchange_explicit(v94, 0, memory_order_release);
  v91 = v87;
  v86 = v87;
  v93 = v87;
  if (v87 == v92)
  {
    v95 = 0;
  }

  else
  {
    _dispatch_unfair_lock_unlock_slow(v94, v93);
    v97 = v93;
    v95 = (v93 & 2) != 0;
  }

  return v18;
}

void firehose_client_push_reply(uint64_t a1, int a2)
{
  qword_E4290 = "BUG IN LIBDISPATCH: firehose_push_reply should never be sent to the buffer receive port";
  qword_E42C0 = a2;
  __break(1u);
}

uint64_t firehose_client_push_notify_async(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  for (i = _dispatch_thread_getspecific(23); i; i = *i)
  {
    if (i[1] == "firehose")
    {
      v9 = i;
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_7:
  firehose_client_merge_updates(v9[2], 1, a2, a3, a4 != 0, 0);
  return 0;
}

void firehose_client_merge_updates(uint64_t a1, char a2, unint64_t a3, unint64_t a4, char a5, unint64_t *a6)
{
  v17 = 0;
  v16 = 0;
  if ((a5 & 1) != 0 && !*(a1 + 1696))
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 1696), &v6, 1u, memory_order_relaxed, memory_order_relaxed);
  }

  v15 = 0;
  v18 = *(a1 + 464);
  do
  {
    if (v18 >= a3)
    {
      break;
    }

    v7 = v18;
    v8 = v18;
    atomic_compare_exchange_strong_explicit((a1 + 464), &v8, a3, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v18)
    {
      v18 = v8;
    }

    v15 = v8 == v7;
  }

  while (v8 != v7);
  if (v15)
  {
    v16 = a3 - v18;
  }

  v14 = 0;
  v19 = *(a1 + 488);
  do
  {
    if (v19 >= a4)
    {
      break;
    }

    v9 = v19;
    v10 = v19;
    atomic_compare_exchange_strong_explicit((a1 + 488), &v10, a4, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v19)
    {
      v19 = v10;
    }

    v14 = v10 == v9;
  }

  while (v10 != v9);
  if (v14)
  {
    v17 = a4 - v19;
  }

  v11 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tclient side: mem: +%d->%llx, io: +%d->%llx", 544, v11, v16, a3, v17, a4);
  if (v16 || v17)
  {
    v21 = *(a1 + 256);
    do
    {
      v20 = v21;
      HIWORD(v20) = HIWORD(v21) + v17;
      WORD1(v20) = WORD1(v21) + v16;
      v12 = v21;
      v13 = v21;
      atomic_compare_exchange_strong_explicit((a1 + 256), &v13, v20, memory_order_relaxed, memory_order_relaxed);
      if (v13 != v12)
      {
        v21 = v13;
      }
    }

    while (v13 != v12);
    v22 = atomic_fetch_add_explicit((a1 + 448), (v17 << 16) | v16, memory_order_release) + ((v17 << 16) | v16);
    if (a6)
    {
      *a6 = v22;
    }

    if (a2)
    {
      if (v17)
      {
        atomic_fetch_add_explicit((a1 + 496), 1uLL, memory_order_relaxed);
      }

      if (v16)
      {
        atomic_fetch_add_explicit((a1 + 472), 1uLL, memory_order_relaxed);
      }
    }
  }

  else if (a6)
  {
    *a6 = *(a1 + 448);
  }
}

uint64_t firehose_buffer_update_limits(uint64_t a1)
{
  v3 = (a1 + 536);
  v6 = (a1 + 536);
  v5 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v6, &v1, v5, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(v6, 0x10000);
  }

  firehose_buffer_update_limits_unlocked(a1);
  result = _dispatch_thread_getspecific(3);
  v7 = atomic_exchange_explicit(v3, 0, memory_order_release);
  if (v7 != (result & 0xFFFFFFFC))
  {
    return _dispatch_unfair_lock_unlock_slow(v3, v7);
  }

  return result;
}

void firehose_buffer_ring_enqueue(mach_port_context_t a1, unsigned __int8 a2)
{
  v10 = ((HIBYTE(*(a1 + (a2 << 12))) >> 1) & 1) != 0;
  if ((HIBYTE(*(a1 + (a2 << 12))) >> 1))
  {
    v15 = a1 + 128;
    v14 = (a1 + 384);
  }

  else
  {
    v15 = a1;
    v14 = (a1 + 320);
  }

  v13 = *v14;
  while (1)
  {
    while (1)
    {
      v12 = v13 & 0xFFC0;
      v11 = v13 & 0x3F;
      _dispatch_thread_setspecific(122, v14);
      v2 = v13 & 0xFFC0;
      atomic_compare_exchange_strong_explicit((v15 + 2 * (v13 & 0x3F)), &v2, v13 & 0xFFC0 | a2, memory_order_relaxed, memory_order_relaxed);
      if ((v13 & 0xFFC0) == v2)
      {
        break;
      }

      _dispatch_thread_setspecific(122, 0);
      for (i = -1024; ; ++i)
      {
        v7 = v13;
        v13 = *v14;
        v6 = 1;
        if (*v14 == v7)
        {
          v6 = *(v15 + 2 * v11) == v12;
        }

        if (v6)
        {
          break;
        }

        v5 = i;
        if (v5 < 0)
        {
          __yield();
        }

        else
        {
          _pthread_yield_to_enqueuer_4dispatch();
        }
      }
    }

    v9 = v13;
    v3 = v13;
    v4 = v13;
    atomic_compare_exchange_strong_explicit(v14, &v4, v13 + 1, memory_order_release, memory_order_relaxed);
    if (v3 != v4)
    {
      v9 = v4;
    }

    v13 = v9;
    if (v3 == v4)
    {
      break;
    }

    *(v15 + 2 * v11) = v12;
    _dispatch_thread_setspecific(122, 0);
  }

  _dispatch_thread_setspecific(122, 0);
  firehose_client_send_push_async(a1, 0, v10);
}

void firehose_client_send_push_async(mach_port_context_t result, int a2, char a3)
{
  v10 = a3 & 1;
  v8 = *(result + 4 * (a3 & 1) + 1680);
  if (v8 == -1)
  {
    return;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v6 = firehose_send_push_async(v8, a2, 0);
  v5 = 1;
  if (v6)
  {
    v5 = v6 == 268435460;
  }

  if (!v5)
  {
    if (v6 != 268435459)
    {
      if (v6 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x9A808);
      }

      if (v6)
      {
        _dispatch_bug(476, v6);
      }
    }

LABEL_11:
    v9 = firehose_client_reconnect(result, v8, v10);
    v4 = 0;
    if (v9)
    {
      v4 = v9 != -1;
    }

    if (v4)
    {
      v7 = firehose_send_push_async(v9, a2, 0);
      v3 = 1;
      if (v7)
      {
        v3 = v7 == 268435460;
      }

      if (!v3 && v7 != 268435459)
      {
        if (v7 == -301)
        {
          qword_E4290 = "MIG_REPLY_MISMATCH";
          qword_E42C0 = -301;
          __break(1u);
          JUMPOUT(0x9A94CLL);
        }

        if (v7)
        {
          _dispatch_bug(488, v7);
        }
      }
    }
  }
}

mach_port_context_t firehose_buffer_force_connect(mach_port_context_t result)
{
  if (!*(result + 1680))
  {
    return firehose_client_reconnect(result, 0, 0);
  }

  return result;
}

char *firehose_buffer_tracepoint_reserve_slow(uint64_t a1, _BYTE *a2, void *a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a2[14] & 1;
  v22 = a1 + 448;
  v21 = 0;
  v19 = 0;
  firehose_drain_notifications_once(a1);
  v21 = *v22;
  v41 = v26;
  v40 = v23 != 0;
  v39 = &v21;
  v38 = 0;
  v37 = (v26 + 448);
  v36 = v21;
  v35 = 0;
  do
  {
    if (!*(&v36 + v40))
    {
      v42 = 0;
      goto LABEL_8;
    }

    v35 = v36;
    --*(&v35 + v40);
    v34 = v36;
    v33 = 0;
    v31 = v35;
    v30 = v35;
    v32 = v35;
    v3 = v36;
    v4 = v36;
    atomic_compare_exchange_strong_explicit(v37, &v4, v35, memory_order_acquire, memory_order_acquire);
    if (v4 != v3)
    {
      v34 = v4;
    }

    v29 = v4 == v3;
    v33 = v4 == v3;
    v36 = v34;
    v28 = v33;
    v38 = v4 == v3;
  }

  while (v4 != v3);
  *v39 = v35;
  v42 = 1;
LABEL_8:
  v20 = v42;
  if (v42)
  {
    while (!v19)
    {
      v76 = v26;
      v75 = 0;
      v74 = 0;
      v73 = 0;
      v72 = 0;
      v71 = 0;
      v70 = 0;
      v69 = 0;
      v68 = 0;
      v67 = 0;
      v66 = 0;
      v65 = (v26 + 256);
      v74 = *(v26 + 256);
      do
      {
        v75 = v74;
        if (v74 == WORD1(v74))
        {
          if (WORD2(v74) == HIWORD(v74))
          {
            v77 = 0;
            goto LABEL_32;
          }

          ++WORD2(v75);
        }

        else
        {
          LOWORD(v75) = v75 + 1;
        }

        v64 = v75;
        v5 = v74;
        v6 = v74;
        atomic_compare_exchange_strong_explicit(v65, &v6, v75, memory_order_relaxed, memory_order_relaxed);
        if (v6 != v5)
        {
          v74 = v6;
        }

        v63 = v6 == v5;
        v66 = v6 == v5;
      }

      while (v6 != v5);
      v62 = v66;
      v67 = WORD2(v75) != WORD2(v74);
      if (WORD2(v75) == WORD2(v74))
      {
        v73 = v76;
        v70 = v74 & 0x3F;
      }

      else
      {
        v73 = v76 + 128;
        v70 = BYTE4(v74) & 0x3F;
      }

      v61 = 0;
      option_time = -1024;
      while (1)
      {
        v71 = *(v73 + 2 * v70);
        v61 = v71 & 0x3F;
        if ((v71 & 0x3F) != 0)
        {
          break;
        }

        v7 = option_time++;
        if ((v7 & 0x80000000) != 0)
        {
          __yield();
        }

        else
        {
          thread_switch(0, 4, option_time);
        }
      }

      v59 = v61;
      v72 = (v71 & 0xFFC0) + 64;
      v69 = v71 & 0x3F;
      v79 = v76;
      v78 = v71 & 0x3F;
      v68 = v76 + ((v71 & 0x3F) << 12);
      if (!v67 && *(v68 + 6) == 3)
      {
        v57 = ~(1 << v69);
        v56 = v57;
        v58 = v57;
        v52 = v57;
        v51 = v57;
        v53 = v57;
        v50 = atomic_fetch_and_explicit((v76 + 456), v57, memory_order_relaxed);
        v54 = v50;
        v49 = v50;
        v55 = v50 & v58;
      }

      v48 = 0x100000000000000;
      v47 = 0x100000000000000;
      *v68 = 0x100000000000000;
      v46 = v48;
      v45 = v72;
      v44 = v72;
      *(v73 + 2 * v70) = v72;
      v43 = v45;
      v77 = v69;
LABEL_32:
      v19 = v77;
      if (!v77)
      {
        break;
      }

      if (v77 >= BYTE4(v21))
      {
        v85 = v26;
        v84 = v77;
        v83 = 0x4000;
        v82 = 15;
        v81 = (v26 + 536);
        v80 = 0;
        v94 = (v26 + 536);
        v145 = _dispatch_thread_getspecific(3);
        v93 = v145 & 0xFFFFFFFC;
        v92 = 0;
        v91 = 0;
        v89 = v145 & 0xFFFFFFFC;
        v88 = v145 & 0xFFFFFFFC;
        v90 = v145 & 0xFFFFFFFC;
        v8 = 0;
        atomic_compare_exchange_strong_explicit(v94, &v8, v145 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v8)
        {
          v92 = v8;
        }

        v87 = v8 == 0;
        v91 = v8 == 0;
        v86 = v91;
        if (v8)
        {
          _dispatch_unfair_lock_lock_slow(v94, 0x10000);
        }

        if (v84 >= *(v85 + 532))
        {
          v9 = *(v85 + 520) & ~(1 << v84);
          *(v85 + 520) = v9;
          v80 = v9;
          v84 &= 0xFCu;
          if ((v9 & (15 << v84)) == 0)
          {
            v97 = v85;
            v96 = v84;
            madvise((v85 + (v84 << 12)), 0x4000uLL, 5);
          }

          v84 = 0;
        }

        v95 = v81;
        v166 = v81;
        v165 = 0;
        v168 = _dispatch_thread_getspecific(3);
        v164 = v168 & 0xFFFFFFFC;
        v161 = 0;
        v160 = 0;
        v162 = 0;
        v159 = atomic_exchange_explicit(v166, 0, memory_order_release);
        v163 = v159;
        v158 = v159;
        v165 = v159;
        if (v159 == v164)
        {
          v167 = 0;
        }

        else
        {
          _dispatch_unfair_lock_unlock_slow(v166, v165);
          v169 = v165;
          v167 = (v165 & 2) != 0;
        }

        v19 = v84;
      }
    }

    if (!v19)
    {
      v101 = v22;
      v100 = BYTE4(v21);
      v99 = 0;
      v98 = 0;
      v110 = (v22 + 88);
      v146 = _dispatch_thread_getspecific(3);
      v109 = v146 & 0xFFFFFFFC;
      v108 = 0;
      v107 = 0;
      v105 = v146 & 0xFFFFFFFC;
      v104 = v146 & 0xFFFFFFFC;
      v106 = v146 & 0xFFFFFFFC;
      v10 = 0;
      atomic_compare_exchange_strong_explicit(v110, &v10, v146 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
      if (v10)
      {
        v108 = v10;
      }

      v103 = v10 == 0;
      v107 = v10 == 0;
      v102 = v107;
      if (v10)
      {
        _dispatch_unfair_lock_lock_slow(v110, 0x10000);
      }

      v98 = ~(*(v101 + 72) | (-1 << v100));
      if (v98)
      {
        v171 = v98;
        v173 = v98 != 0;
        v172 = 45;
        v99 = __clz(__rbit64(v98));
        *(v101 + 72) |= (1 << v99);
      }

      v111 = v101 + 88;
      v155 = (v101 + 88);
      v154 = 0;
      v157 = _dispatch_thread_getspecific(3);
      v153 = v157 & 0xFFFFFFFC;
      v150 = 0;
      v149 = 0;
      v151 = 0;
      v148 = atomic_exchange_explicit(v155, 0, memory_order_release);
      v152 = v148;
      v147 = v148;
      v154 = v148;
      if (v148 == v153)
      {
        v156 = 0;
      }

      else
      {
        _dispatch_unfair_lock_unlock_slow(v155, v154);
        v170 = v154;
        v156 = (v154 & 2) != 0;
      }

      v19 = v99;
    }
  }

  v18 = 1;
  if (!v19)
  {
    v18 = (v25[14] & 4) == 0;
  }

  if (v18)
  {
    if (!v19 && (v20 & 1) != 0)
    {
      v124 = v26;
      v123 = v23 != 0;
      v122 = v26 + 448;
      v120 = 1 << (16 * (v23 != 0));
      v119 = v120;
      v121 = v120;
      v115 = v120;
      v114 = v120;
      v116 = v120;
      add_explicit = atomic_fetch_add_explicit((v26 + 448), v120, memory_order_relaxed);
      v117 = add_explicit;
      v112 = add_explicit;
      v118 = add_explicit + v121;
    }

    return firehose_buffer_stream_chunk_install(v26, v25, v24, v19);
  }

  else
  {
    v11 = v25[12];
    v144 = v26;
    v143 = v11;
    v142 = 0;
    v141 = 0;
    v140 = (v26 + 640 + (v11 << 7));
    v138 = *v140;
    v139 = v138;
    v137 = v138;
    v142 = v138;
    if ((v138 & 0x400000000000) != 0)
    {
      v130 = 0;
      v129 = v140;
      v142 = *v140;
      do
      {
        LODWORD(v128) = v142 & 0xFFFFFFFD;
        BYTE4(v128) = BYTE4(v142);
        BYTE5(v128) = BYTE5(v128) & 0xC0 | BYTE5(v142) & 0x3F;
        BYTE5(v128) = BYTE5(v128) & 0xBF | 0x40;
        BYTE5(v128) = BYTE5(v128) & 0x7F | 0x80;
        HIWORD(v128) = HIWORD(v142);
        v141 = v128;
        v127 = v128;
        v14 = v142;
        v15 = v142;
        atomic_compare_exchange_strong_explicit(v129, &v15, v128, memory_order_relaxed, memory_order_relaxed);
        if (v15 != v14)
        {
          v142 = v15;
        }

        v126 = v15 == v14;
        v130 = v15 == v14;
      }

      while (v15 != v14);
      v125 = v130;
    }

    else
    {
      *(v140 + 1) = mach_continuous_time();
      v136 = 0;
      v135 = v140;
      v142 = *v140;
      do
      {
        LODWORD(v134) = v142 & 0xFFFFFFFD;
        BYTE4(v134) = BYTE4(v142);
        BYTE5(v134) = BYTE5(v134) & 0xC0 | BYTE5(v142) & 0x3F;
        BYTE5(v134) = BYTE5(v134) & 0xBF | 0x40;
        BYTE5(v134) = BYTE5(v134) & 0x7F | 0x80;
        HIWORD(v134) = HIWORD(v142);
        v141 = v134;
        v133 = v134;
        v12 = v142;
        v13 = v142;
        atomic_compare_exchange_strong_explicit(v135, &v13, v134, memory_order_release, memory_order_relaxed);
        if (v13 != v12)
        {
          v142 = v13;
        }

        v132 = v13 == v12;
        v136 = v13 == v12;
      }

      while (v13 != v12);
      v131 = v136;
    }

    v16 = *(v140 + 1);
    v177 = v143;
    v176 = v16;
    v175 = v142;
    v174 = v141;
    v182 = 772145168;
    v181 = v143;
    v180 = v16;
    v179 = v142;
    v178 = v141;
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }

    if ((v142 & 2) != 0)
    {
      _dispatch_gate_broadcast_slow(v140, v142);
    }

    v25[13] = v20 & 1;
    return firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(v26, v25, v24);
  }
}

BOOL firehose_drain_notifications_once(uint64_t a1)
{
  v24 = a1;
  v23 = 67109126;
  v22 = 56;
  v21 = 36;
  v20 = 124;
  v15 = v9;
  bzero(v9, 0x7CuLL);
  v19 = v15;
  v18 = 0;
  v18 = mach_msg(v15, v23, 0, v20, *(v24 + 1688), 0, 0);
  if (v18)
  {
    if (v18 != 268451843)
    {
      v16 = v18;
      v8[4] = v1;
      v8[5] = v2;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: firehose_drain_notifications_once() failed";
      qword_E42C0 = v18;
      __break(1u);
      JUMPOUT(0x9BBCCLL);
    }
  }

  else
  {
    v17[0] = 0;
    v17[1] = "firehose";
    v17[2] = v24;
    v25 = v17;
    v12 = 23;
    v3 = _dispatch_thread_getspecific(23);
    v4 = v12;
    *v25 = v3;
    _dispatch_thread_setspecific(v4, v25);
    v13 = v9;
    v34 = firehoseReply_server;
    v33 = 36;
    v32 = v19;
    v14 = v8;
    bzero(v8, 0x24uLL);
    v31 = v14;
    v30 = 0;
    v29 = (v32->msgh_bits & 0x1F) == 18;
    v5 = v14;
    v28 = 0;
    v27 = 0uLL;
    v14[2] = 0;
    *v5 = 0uLL;
    if (v34(v32, v31))
    {
      if ((*(v31 + 3) & 0x80) != 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = *(v31 + 8);
      }
    }

    else
    {
      v30 = -303;
    }

    v11 = 0;
    if (!v30)
    {
      v11 = v29;
    }

    if (v11)
    {
      v26 = *(v31 + 5);
      qword_E4290 = "BUG IN LIBDISPATCH: firehose_mig_server doesn't handle replies";
      qword_E42C0 = v26;
      __break(1u);
      JUMPOUT(0x9BAC8);
    }

    v10 = 0;
    if (v30)
    {
      v10 = v30 != -305;
    }

    if (v10)
    {
      v32->msgh_remote_port = 0;
      mach_msg_destroy(v32);
    }

    v35 = v17;
    v6 = _dispatch_thread_getspecific(23) == v17;
    v37 = v6;
    v36 = 449;
    if (!v6)
    {
      _dispatch_abort(v36, v37);
    }

    _dispatch_thread_setspecific(23, *v35);
  }

  return v18 == 0;
}

char *firehose_buffer_stream_chunk_install(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v114 = a1;
  v113 = a2;
  v112 = a3;
  v111 = a4;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = a1;
  v105 = (a1 + 640 + (*(a2 + 12) << 7));
  if (a4)
  {
    v104 = 0;
    v103 = 0;
    v116 = v114;
    v115 = v111;
    v102 = (v114 + (v111 << 12));
    v100 = *v102;
    v101 = v100;
    v99 = v100;
    if (v100)
    {
      __memset_chk();
    }

    if (*(v113 + 12) == 3)
    {
      v97 = 1 << v111;
      v96 = 1 << v111;
      v98 = 1 << v111;
      v92 = 1 << v111;
      v91 = 1 << v111;
      v93 = 1 << v111;
      v90 = atomic_fetch_or_explicit((v106 + 456), 1 << v111, memory_order_relaxed);
      v94 = v90;
      v89 = v90;
      v95 = v90 | (1 << v111);
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v104 = *(StatusReg - 8);
    v87 = *v105;
    v88 = v87;
    v86 = v87;
    v110 = v87;
    if ((v87 & 0x3F0000000000) == 0)
    {
      v154 = v102;
      v153 = v113;
      v152 = v112;
      v151 = v104;
      v150 = 0;
      v149 = 0;
      v148 = 0;
      v147 = 0;
      v146 = 24;
      v145 = 16;
      v144 = 4096;
      v159 = *v113;
      if (v159 > 0x1000000000)
      {
        v36 = v159 - 0x1000000000;
      }

      else
      {
        v36 = 0;
      }

      *(v154 + 1) = v36;
      v148 = v154 + 16;
      if ((*(v153 + 8) + 24) % 8)
      {
        v35 = *(v153 + 8) + 24 + 8 - (*(v153 + 8) + 24) % 8;
      }

      else
      {
        v35 = *(v153 + 8) + 24;
      }

      v145 += v35;
      v144 -= *(v153 + 10);
      v147 = *v153 - *(v154 + 1);
      v147 |= *(v153 + 8) << 48;
      v143 = v147;
      v142 = v147;
      *(v148 + 2) = v147;
      v141 = v143;
      *(v148 + 1) = v151;
      __src[0] = v145;
      __src[1] = v144;
      __src[2] = 1;
      LOBYTE(__src[3]) = *(v153 + 12);
      HIBYTE(__src[3]) &= ~1u;
      HIBYTE(__src[3]) = HIBYTE(__src[3]) & 0xFD | (2 * (*(v153 + 14) & 1));
      HIBYTE(__src[3]) = HIBYTE(__src[3]) & 0xFB | (4 * ((*(v153 + 14) & 2) != 0));
      HIBYTE(__src[3]) &= 7u;
      memcpy(v154, __src, 8uLL);
      if (v152)
      {
        *v152 = &v154[v144];
      }

      v108 = v148;
      v85 = 0;
      v84 = v105;
      v110 = *v105;
      do
      {
        if ((v110 & 0x3F0000000000) != 0)
        {
          break;
        }

        LODWORD(v83) = 0;
        WORD2(v83) = __PAIR16__(BYTE5(v83), v111) & 0xC0FF;
        BYTE5(v83) &= 0x3Fu;
        HIWORD(v83) = HIWORD(v110) + 1;
        v109 = v83;
        v82 = v83;
        v4 = v110;
        v5 = v110;
        atomic_compare_exchange_strong_explicit(v84, &v5, v83, memory_order_release, memory_order_relaxed);
        v33 = v5;
        v34 = v5 == v4;
        if (v5 != v4)
        {
          v110 = v33;
        }

        v81 = v34;
        v85 = v34;
      }

      while (!v34);
      v80 = v85;
      v103 = v85 != 0;
    }

    if (!v103)
    {
      v79 = 0;
      v78 = 0;
      explicit = atomic_load_explicit(v105, memory_order_acquire);
      v77 = explicit;
      v75 = explicit;
      v79 = *(v105 + 1);
      *(v105 + 1) = 0;
      v78 = mach_continuous_time();
      __dst = v102;
      v138 = v113;
      v137 = v112;
      v136 = v104;
      v135 = &v107;
      v134 = v79;
      v133 = 0;
      v132 = 0;
      v131 = 24;
      v130 = 16;
      v129 = 4096;
      if (&v17 == -608)
      {
        v161 = *v138;
        if (v161 > 0x1000000000)
        {
          v29 = v161 - 0x1000000000;
        }

        else
        {
          v29 = 0;
        }

        *(__dst + 1) = v29;
        v133 = __dst + 16;
      }

      else
      {
        v128 = 24;
        v127 = 0;
        v126 = 0;
        v125 = 0;
        if (*v138 >= v134)
        {
          v32 = v134;
        }

        else
        {
          v32 = *v138;
        }

        v126 = v32;
        v160 = v32;
        if (v32 > 0x1000000000)
        {
          v31 = v160 - 0x1000000000;
        }

        else
        {
          v31 = 0;
        }

        *(__dst + 1) = v31;
        v6 = *v138;
        v165 = __dst;
        v164 = v6;
        if ((v6 - *(__dst + 1)) >> 48)
        {
          *(__dst + 1) = *v138 - 0x1000000000;
        }

        *v135 = (__dst + 16);
        v163 = __dst;
        v162 = v134;
        if ((v134 - *(__dst + 1)) >> 48)
        {
          v30 = *v138;
        }

        else
        {
          v30 = v134;
        }

        v127 = v30;
        v132 = (v30 - *(__dst + 1)) | 0x18000000000000;
        v124 = v132;
        v7 = *v135;
        v123 = v132;
        v7[2] = v132;
        v122 = v124;
        (*v135)[1] = v136;
        v125 = 48;
        v130 += 48;
        v133 = __dst + 64;
      }

      if ((*(v138 + 8) + 24) % 8)
      {
        v28 = *(v138 + 8) + 24 + 8 - (*(v138 + 8) + 24) % 8;
      }

      else
      {
        v28 = *(v138 + 8) + 24;
      }

      v130 += v28;
      v129 -= *(v138 + 10);
      v132 = *v138 - *(__dst + 1);
      v132 |= *(v138 + 8) << 48;
      v121 = v132;
      v120 = v132;
      *(v133 + 2) = v132;
      v119 = v121;
      *(v133 + 1) = v136;
      v118[0] = v130;
      v118[1] = v129;
      v118[2] = 1;
      LOBYTE(v118[3]) = *(v138 + 12);
      HIBYTE(v118[3]) &= ~1u;
      HIBYTE(v118[3]) = HIBYTE(v118[3]) & 0xFD | (2 * (*(v138 + 14) & 1));
      HIBYTE(v118[3]) = HIBYTE(v118[3]) & 0xFB | (4 * ((*(v138 + 14) & 2) != 0));
      HIBYTE(v118[3]) &= 7u;
      memcpy(__dst, v118, 8uLL);
      if (v137)
      {
        *v137 = __dst + v129;
      }

      v108 = v133;
      v74 = 0;
      v73 = v105;
      v110 = *v105;
      do
      {
        LODWORD(v72) = 0;
        WORD2(v72) = __PAIR16__(BYTE5(v72), v111) & 0xC0FF;
        BYTE5(v72) &= ~0x40u;
        BYTE5(v72) &= ~0x80u;
        HIWORD(v72) = HIWORD(v110) + 1;
        v109 = v72;
        v71 = v72;
        v8 = v110;
        v9 = v110;
        atomic_compare_exchange_strong_explicit(v73, &v9, v72, memory_order_release, memory_order_relaxed);
        v26 = v9;
        v27 = v9 == v8;
        if (v9 != v8)
        {
          v110 = v26;
        }

        v70 = v27;
        v74 = v27;
      }

      while (!v27);
      v69 = v74;
      v66 = v79;
      v67 = v78;
      v68 = BYTE5(v110) & 0x3F;
      __memcpy_chk();
      v65 = 7;
      HIDWORD(v65) = *(v113 + 12);
      v64 = v65;
      v63 = v65;
      atomic_store(v65, v107);
      v62 = v64;
    }
  }

  else
  {
    v60 = *v105;
    v61 = v60;
    v59 = v60;
    v110 = v60;
    if ((v60 & 0x400000000000) != 0)
    {
      v52 = 0;
      v51 = v105;
      v110 = *v105;
      do
      {
        LODWORD(v50) = 0;
        BYTE4(v50) = 0;
        if ((BYTE5(v110) & 0x3Fu) + 1 >= 0x3F)
        {
          v22 = 63;
        }

        else
        {
          v22 = (BYTE5(v110) & 0x3F) + 1;
        }

        BYTE5(v50) = v22 & 0x3F | 0x40;
        HIWORD(v50) = HIWORD(v110);
        v109 = v50;
        v49 = v50;
        v12 = v110;
        v13 = v110;
        atomic_compare_exchange_strong_explicit(v51, &v13, v50, memory_order_relaxed, memory_order_relaxed);
        v20 = v13;
        v21 = v13 == v12;
        if (v13 != v12)
        {
          v110 = v20;
        }

        v48 = v21;
        v52 = v21;
      }

      while (!v21);
      v47 = v52;
    }

    else
    {
      *(v105 + 1) = mach_continuous_time();
      v58 = 0;
      v57 = v105;
      v110 = *v105;
      do
      {
        LODWORD(v56) = 0;
        BYTE4(v56) = 0;
        if ((BYTE5(v110) & 0x3Fu) + 1 >= 0x3F)
        {
          v25 = 63;
        }

        else
        {
          v25 = (BYTE5(v110) & 0x3F) + 1;
        }

        BYTE5(v56) = v25 & 0x3F | 0x40;
        HIWORD(v56) = HIWORD(v110);
        v109 = v56;
        v55 = v56;
        v10 = v110;
        v11 = v110;
        atomic_compare_exchange_strong_explicit(v57, &v11, v56, memory_order_release, memory_order_relaxed);
        v23 = v11;
        v24 = v11 == v10;
        if (v11 != v10)
        {
          v110 = v23;
        }

        v54 = v24;
        v58 = v24;
      }

      while (!v24);
      v53 = v58;
    }
  }

  v14 = *(v113 + 8);
  v158 = *v113;
  v157 = v14;
  v156 = v110;
  v155 = v109;
  v170 = 772145172;
  v169 = v158;
  v168 = v14;
  v167 = v110;
  v166 = v109;
  if (MEMORY[0xFFFFFC100])
  {
    kdebug_trace();
  }

  if ((v110 & 3) != 0)
  {
    _dispatch_gate_broadcast_slow(v105, v110);
  }

  if (BYTE4(v110) == 255)
  {
    firehose_buffer_update_limits(v114);
  }

  v45 = *(v106 + 1696);
  v46 = v45;
  v44 = v45;
  if (v45 == 1)
  {
    v43 = 1;
    v42 = 0;
    v40 = 2;
    v39 = 2;
    v41 = 2;
    v15 = 1;
    atomic_compare_exchange_strong_explicit((v106 + 1696), &v15, 2u, memory_order_relaxed, memory_order_relaxed);
    v18 = v15;
    v19 = v15 == 1;
    if (1 != v15)
    {
      v43 = v18;
    }

    v38 = v19;
    v42 = v19;
    v37 = v42;
    if (v19)
    {
      firehose_client_start_quarantine(v114);
    }
  }

  return v108;
}

char *firehose_buffer_tracepoint_reserve_wait_for_chunks_from_logd(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = *(a2 + 14) & 1;
  v19 = v20 & 1;
  v18 = a1 + 448;
  v17 = 0;
  v14 = 5;
  do
  {
    v3 = v14--;
    v13 = 0;
    if (v3)
    {
      v13 = firehose_drain_notifications_once(v23);
    }
  }

  while (v13);
  if (*(v22 + 13))
  {
    v15 = *(v18 + 4);
    goto LABEL_23;
  }

  v17 = *v18;
  while (1)
  {
    v38 = v23;
    v37 = v20 & 1;
    v36 = &v17;
    v35 = 0;
    v34 = (v23 + 448);
    v33 = v17;
    v32 = 0;
    do
    {
      if (!*(&v33 + (v37 & 1)))
      {
        v39 = 0;
        goto LABEL_14;
      }

      v32 = v33;
      --*(&v32 + (v37 & 1));
      v31 = v33;
      v30 = 0;
      v28 = v32;
      v27 = v32;
      v29 = v32;
      v4 = v33;
      v5 = v33;
      atomic_compare_exchange_strong_explicit(v34, &v5, v32, memory_order_acquire, memory_order_acquire);
      if (v5 != v4)
      {
        v31 = v5;
      }

      v26 = v5 == v4;
      v30 = v5 == v4;
      v33 = v31;
      v25 = v30;
      v35 = v5 == v4;
    }

    while (v5 != v4);
    *v36 = v32;
    v39 = 1;
LABEL_14:
    if (v39)
    {
      break;
    }

    if ((*(v22 + 14) & 2) != 0)
    {
      __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(v23, v20 & 1, &v17);
    }

    else
    {
      firehose_client_send_push_and_wait(v23, v20 & 1, &v17);
    }

    if (*(v23 + 1680 + 4 * v19) == -1)
    {
      return 0;
    }
  }

  v15 = BYTE4(v17);
  do
  {
LABEL_23:
    while (1)
    {
      v73 = v23;
      v72 = 0;
      v71 = 0;
      v70 = 0;
      v69 = 0;
      v68 = 0;
      v67 = 0;
      v66 = 0;
      v65 = 0;
      v64 = 0;
      v63 = 0;
      v62 = (v23 + 256);
      v71 = *(v23 + 256);
      do
      {
        v72 = v71;
        if (v71 == WORD1(v71))
        {
          if (WORD2(v71) == HIWORD(v71))
          {
            v74 = 0;
            goto LABEL_45;
          }

          ++WORD2(v72);
        }

        else
        {
          LOWORD(v72) = v72 + 1;
        }

        v61 = v72;
        v6 = v71;
        v7 = v71;
        atomic_compare_exchange_strong_explicit(v62, &v7, v72, memory_order_relaxed, memory_order_relaxed);
        if (v7 != v6)
        {
          v71 = v7;
        }

        v60 = v7 == v6;
        v63 = v7 == v6;
      }

      while (v7 != v6);
      v59 = v63;
      v64 = WORD2(v72) != WORD2(v71);
      if (WORD2(v72) == WORD2(v71))
      {
        v70 = v73;
        v67 = v71 & 0x3F;
      }

      else
      {
        v70 = v73 + 128;
        v67 = BYTE4(v71) & 0x3F;
      }

      v58 = 0;
      option_time = -1024;
      while (1)
      {
        v68 = *(v70 + 2 * v67);
        v58 = v68 & 0x3F;
        if ((v68 & 0x3F) != 0)
        {
          break;
        }

        v8 = option_time++;
        if ((v8 & 0x80000000) != 0)
        {
          __yield();
        }

        else
        {
          thread_switch(0, 4, option_time);
        }
      }

      v56 = v58;
      v69 = (v68 & 0xFFC0) + 64;
      v66 = v68 & 0x3F;
      v76 = v73;
      v75 = v68 & 0x3F;
      v65 = v73 + ((v68 & 0x3F) << 12);
      if (!v64 && *(v65 + 6) == 3)
      {
        v54 = ~(1 << v66);
        v53 = v54;
        v55 = v54;
        v49 = v54;
        v48 = v54;
        v50 = v54;
        v47 = atomic_fetch_and_explicit((v73 + 456), v54, memory_order_relaxed);
        v51 = v47;
        v46 = v47;
        v52 = v47 & v55;
      }

      v45 = 0x100000000000000;
      v44 = 0x100000000000000;
      *v65 = 0x100000000000000;
      v43 = v45;
      v42 = v69;
      v41 = v69;
      *(v70 + 2 * v67) = v69;
      v40 = v42;
      v74 = v66;
LABEL_45:
      v16 = v74;
      if (!v74)
      {
        break;
      }

      if (v74 >= v15)
      {
        v82 = v23;
        v81 = v74;
        v80 = 0x4000;
        v79 = 15;
        v78 = (v23 + 536);
        v77 = 0;
        v91 = (v23 + 536);
        v109 = _dispatch_thread_getspecific(3);
        v90 = v109 & 0xFFFFFFFC;
        v89 = 0;
        v88 = 0;
        v86 = v109 & 0xFFFFFFFC;
        v85 = v109 & 0xFFFFFFFC;
        v87 = v109 & 0xFFFFFFFC;
        v9 = 0;
        atomic_compare_exchange_strong_explicit(v91, &v9, v109 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
        if (v9)
        {
          v89 = v9;
        }

        v84 = v9 == 0;
        v88 = v9 == 0;
        v83 = v88;
        if (v9)
        {
          _dispatch_unfair_lock_lock_slow(v91, 0x10000);
        }

        if (v81 >= *(v82 + 532))
        {
          v10 = *(v82 + 520) & ~(1 << v81);
          *(v82 + 520) = v10;
          v77 = v10;
          v81 &= 0xFCu;
          if ((v10 & (15 << v81)) == 0)
          {
            v94 = v82;
            v93 = v81;
            madvise((v82 + (v81 << 12)), 0x4000uLL, 5);
          }

          v81 = 0;
        }

        v92 = v78;
        v130 = v78;
        v129 = 0;
        v132 = _dispatch_thread_getspecific(3);
        v128 = v132 & 0xFFFFFFFC;
        v125 = 0;
        v124 = 0;
        v126 = 0;
        v123 = atomic_exchange_explicit(v130, 0, memory_order_release);
        v127 = v123;
        v122 = v123;
        v129 = v123;
        if (v123 == v128)
        {
          v131 = 0;
        }

        else
        {
          _dispatch_unfair_lock_unlock_slow(v130, v129);
          v133 = v129;
          v131 = (v129 & 2) != 0;
        }

        v16 = v81;
        if (!v81)
        {
          continue;
        }
      }

      return firehose_buffer_stream_chunk_install(v23, v22, v21, v16);
    }

    v98 = v18;
    v97 = v15;
    v96 = 0;
    v95 = 0;
    v107 = (v18 + 88);
    v110 = _dispatch_thread_getspecific(3);
    v106 = v110 & 0xFFFFFFFC;
    v105 = 0;
    v104 = 0;
    v102 = v110 & 0xFFFFFFFC;
    v101 = v110 & 0xFFFFFFFC;
    v103 = v110 & 0xFFFFFFFC;
    v11 = 0;
    atomic_compare_exchange_strong_explicit(v107, &v11, v110 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      v105 = v11;
    }

    v100 = v11 == 0;
    v104 = v11 == 0;
    v99 = v104;
    if (v11)
    {
      _dispatch_unfair_lock_lock_slow(v107, 0x10000);
    }

    v95 = ~(*(v98 + 72) | (-1 << v97));
    if (v95)
    {
      v135 = v95;
      v137 = v95 != 0;
      v136 = 45;
      v96 = __clz(__rbit64(v95));
      *(v98 + 72) |= (1 << v96);
    }

    v108 = v98 + 88;
    v119 = (v98 + 88);
    v118 = 0;
    v121 = _dispatch_thread_getspecific(3);
    v117 = v121 & 0xFFFFFFFC;
    v114 = 0;
    v113 = 0;
    v115 = 0;
    v112 = atomic_exchange_explicit(v119, 0, memory_order_release);
    v116 = v112;
    v111 = v112;
    v118 = v112;
    if (v112 == v117)
    {
      v120 = 0;
    }

    else
    {
      _dispatch_unfair_lock_unlock_slow(v119, v118);
      v134 = v118;
      v120 = (v118 & 2) != 0;
    }

    v16 = v96;
    if (v96)
    {
      break;
    }

    if ((*(v22 + 14) & 2) != 0)
    {
      __FIREHOSE_CLIENT_THROTTLED_DUE_TO_HEAVY_LOGGING__(v23, v20 & 1, 0);
    }

    else
    {
      firehose_client_send_push_and_wait(v23, v20 & 1, 0);
    }
  }

  while (*(v23 + 1680 + 4 * v19) != -1);
  return firehose_buffer_stream_chunk_install(v23, v22, v21, v16);
}

void firehose_client_start_quarantine(mach_port_context_t result)
{
  if (*_voucher_libtrace_hooks > 4 && *(_voucher_libtrace_hooks + 40))
  {
    (*(_voucher_libtrace_hooks + 40))();
    *(result + 1697) = 1;
    v22 = *(result + 768);
    if (BYTE4(v22) && BYTE4(*(result + 768)) != 255)
    {
      v34 = (result + (BYTE4(v22) << 12));
      v33 = -1;
      v32 = 1;
      v31 = 0;
      v30 = 1;
      v29 = 0;
      v28 = 0;
      v27 = 24;
      i = 0;
      v25 = 0;
      v23 = (-1 - v34[1]) >> 48 == 0;
      for (i = *v34; ; i = v2)
      {
        if (!i)
        {
          v35 = 0;
          goto LABEL_31;
        }

        if ((HIWORD(i) & 0x1FF) != v32)
        {
          v35 = 0;
          goto LABEL_31;
        }

        v25 = i;
        p_i = &i;
        v84 = v30 + v29 + 24;
        if (i + v84 <= WORD1(i) && v23)
        {
          if (v31 > BYTE5(v25))
          {
            BYTE5(v25) = v31;
          }

          if (((v30 + 24) & 7) != 0)
          {
            v12 = ((v30 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v12 = v30 + 24;
          }

          v25 += v12;
          v25 -= v29 << 16;
          v25 += 0x100000000;
          v83 = &v25;
          v82 = 40;
          if (v25 + 40 > WORD1(v25))
          {
            HIBYTE(v25) |= 1u;
          }

          v24 = 0;
        }

        else
        {
          HIBYTE(v25) |= 1u;
          v24 = 1;
        }

        v1 = i;
        v2 = i;
        atomic_compare_exchange_strong_explicit((result + (BYTE4(v22) << 12)), &v2, v25, memory_order_relaxed, memory_order_relaxed);
        if (v2 == v1)
        {
          break;
        }
      }

      if (v24)
      {
        if (BYTE4(v25))
        {
          v35 = 0;
        }

        else
        {
          v35 = -1;
        }
      }

      else
      {
        if (v28)
        {
          *v28 = v34 + WORD1(v25);
        }

        v35 = i;
      }

LABEL_31:
      v20 = v35;
      if (v35 < 0)
      {
        firehose_buffer_ring_enqueue(result, BYTE4(v22));
      }

      if (v20 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v20;
        __break(1u);
        JUMPOUT(0x9DD74);
      }

      v21 = v22;
      BYTE4(v21) = 0;
      v3 = v22;
      atomic_compare_exchange_strong_explicit((result + 768), &v3, v21, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(result);
    }

    v19 = *(result + 640);
    if (BYTE4(v19) && BYTE4(*(result + 640)) != 255)
    {
      v53 = result + (BYTE4(v19) << 12);
      v52 = -1;
      v51 = 0;
      v50 = 0;
      v49 = 1;
      v48 = 0;
      v47 = 0;
      v46 = 24;
      v45 = 0;
      v44 = 0;
      v43 = 0;
      v42 = 0;
      v42 = (-1 - *(v53 + 8)) >> 48 == 0;
      v41 = 0;
      v40 = v53;
      v45 = *v53;
      do
      {
        if (!v45)
        {
          v54 = 0;
          goto LABEL_65;
        }

        if ((HIWORD(v45) & 0x1FF) != v51)
        {
          v54 = 0;
          goto LABEL_65;
        }

        v44 = v45;
        v81 = &v45;
        v80 = v49 + v48 + 24;
        if (v45 + v80 <= WORD1(v45) && v42)
        {
          if (v50 > BYTE5(v44))
          {
            BYTE5(v44) = v50;
          }

          if (((v49 + 24) & 7) != 0)
          {
            v11 = ((v49 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v11 = v49 + 24;
          }

          v44 += v11;
          v44 -= v48 << 16;
          v44 += 0x100000000;
          v39 = 16;
          v79 = &v44;
          v78 = 40;
          if (v44 + 40 > WORD1(v44))
          {
            HIBYTE(v44) |= 1u;
          }

          v43 = 0;
        }

        else
        {
          HIBYTE(v44) |= 1u;
          v43 = 1;
        }

        v38 = v44;
        v4 = v45;
        v5 = v45;
        atomic_compare_exchange_strong_explicit(v40, &v5, v44, memory_order_relaxed, memory_order_relaxed);
        if (v5 != v4)
        {
          v45 = v5;
        }

        v37 = v5 == v4;
        v41 = v5 == v4;
      }

      while (v5 != v4);
      v36 = v41;
      if (v43)
      {
        if (BYTE4(v44))
        {
          v54 = 0;
        }

        else
        {
          v54 = -1;
        }
      }

      else
      {
        if (v47)
        {
          *v47 = v53 + WORD1(v44);
        }

        v54 = v45;
      }

LABEL_65:
      v17 = v54;
      if (v54 < 0)
      {
        firehose_buffer_ring_enqueue(result, BYTE4(v19));
      }

      if (v17 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v17;
        __break(1u);
        JUMPOUT(0x9E208);
      }

      v18 = v19;
      BYTE4(v18) = 0;
      v6 = v19;
      atomic_compare_exchange_strong_explicit((result + 640), &v6, v18, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(result);
    }

    v16 = *(result + 896);
    if (BYTE4(v16) && BYTE4(*(result + 896)) != 255)
    {
      v72 = result + (BYTE4(v16) << 12);
      v71 = -1;
      v70 = 2;
      v69 = 0;
      v68 = 1;
      v67 = 0;
      v66 = 0;
      v65 = 24;
      v64 = 0;
      v63 = 0;
      v62 = 0;
      v61 = 0;
      v61 = (-1 - *(v72 + 8)) >> 48 == 0;
      v60 = 0;
      v59 = v72;
      v64 = *v72;
      do
      {
        if (!v64)
        {
          v73 = 0;
          goto LABEL_99;
        }

        if ((HIWORD(v64) & 0x1FF) != v70)
        {
          v73 = 0;
          goto LABEL_99;
        }

        v63 = v64;
        v77 = &v64;
        v76 = v68 + v67 + 24;
        if (v64 + v76 <= WORD1(v64) && v61)
        {
          if (v69 > BYTE5(v63))
          {
            BYTE5(v63) = v69;
          }

          if (((v68 + 24) & 7) != 0)
          {
            v10 = ((v68 + 24) & 0x1FFF8) + 8;
          }

          else
          {
            v10 = v68 + 24;
          }

          v63 += v10;
          v63 -= v67 << 16;
          v63 += 0x100000000;
          v58 = 16;
          v75 = &v63;
          v74 = 40;
          if (v63 + 40 > WORD1(v63))
          {
            HIBYTE(v63) |= 1u;
          }

          v62 = 0;
        }

        else
        {
          HIBYTE(v63) |= 1u;
          v62 = 1;
        }

        v57 = v63;
        v7 = v64;
        v8 = v64;
        atomic_compare_exchange_strong_explicit(v59, &v8, v63, memory_order_relaxed, memory_order_relaxed);
        if (v8 != v7)
        {
          v64 = v8;
        }

        v56 = v8 == v7;
        v60 = v8 == v7;
      }

      while (v8 != v7);
      v55 = v60;
      if (v62)
      {
        if (BYTE4(v63))
        {
          v73 = 0;
        }

        else
        {
          v73 = -1;
        }
      }

      else
      {
        if (v66)
        {
          *v66 = v72 + WORD1(v63);
        }

        v73 = v64;
      }

LABEL_99:
      v14 = v73;
      if (v73 < 0)
      {
        firehose_buffer_ring_enqueue(result, BYTE4(v16));
      }

      if (v14 >= 1)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Allocation should always fail";
        qword_E42C0 = v14;
        __break(1u);
        JUMPOUT(0x9E6A0);
      }

      v15 = v16;
      BYTE4(v15) = 0;
      v9 = v16;
      atomic_compare_exchange_strong_explicit((result + 896), &v9, v15, memory_order_relaxed, memory_order_relaxed);
    }

    else
    {
      firehose_buffer_force_connect(result);
    }
  }
}

void firehose_client_send_push_and_wait(uint64_t result, char a2, unint64_t *a3)
{
  v16 = result;
  v15 = a2;
  v14 = a3;
  v13 = a2 & 1;
  v12 = *(result + 4 * (a2 & 1) + 1680);
  __s1 = 0uLL;
  v10 = 0;
  v9 = 0;
  if (v12 == -1)
  {
    return;
  }

  if (v12)
  {
    v9 = firehose_send_push_and_wait(v12, &__s1, &v10);
    if (!v9)
    {
      goto LABEL_23;
    }

    if (v9 != 268435459)
    {
      if (v9 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x9E880);
      }

      v8 = v9;
      v20 = v9;
      v19 = 680;
      _dispatch_bug(v19, v20);
      v7 = v8;
    }
  }

  v12 = firehose_client_reconnect(v16, v12, v13);
  v3 = 0;
  if (v12)
  {
    v3 = v12 != -1;
  }

  if (!v3)
  {
    goto LABEL_20;
  }

  v9 = firehose_send_push_and_wait(v12, &__s1, &v10);
  if (v9)
  {
    if (v9 != 268435459)
    {
      if (v9 == -301)
      {
        qword_E4290 = "MIG_REPLY_MISMATCH";
        qword_E42C0 = -301;
        __break(1u);
        JUMPOUT(0x9E994);
      }

      v6 = v9;
      v18 = v9;
      v17 = 692;
      _dispatch_bug(v17, v18);
      v5 = v6;
    }

LABEL_20:
    if (v14)
    {
      *v14 = *(v16 + 448);
    }

    return;
  }

LABEL_23:
  __s2[0] = -1;
  __s2[1] = -1;
  if (!memcmp(&__s1, __s2, 0x10uLL))
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Memory corruption in the logging buffers";
    __break(1u);
    JUMPOUT(0x9EA68);
  }

  if (v15)
  {
    atomic_fetch_add_explicit((v16 + 504), 1uLL, memory_order_relaxed);
  }

  else
  {
    atomic_fetch_add_explicit((v16 + 480), 1uLL, memory_order_relaxed);
  }

  firehose_client_merge_updates(v16, 0, __s1, *(&__s1 + 1), v10 != 0, v14);
}

uint64_t _dispatch_iocntl(uint64_t result, uint64_t a2)
{
  switch(result)
  {
    case 1:
      dispatch_io_defaults = a2 * vm_page_size;
      break;
    case 2:
      qword_E4270 = a2;
      break;
    case 3:
      byte_E4280 = a2 != 0;
      break;
    case 4:
      qword_E4278 = a2;
      break;
  }

  return result;
}

void _dispatch_io_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_io_dispose");
  if (*(a1 + 112) && (*(a1 + 120) & 3) == 0)
  {
    if (*(*(a1 + 112) + 8))
    {
      **(*(a1 + 112) + 8) = 0;
    }

    _dispatch_fd_entry_release(*(a1 + 112));
  }

  if (*(a1 + 48))
  {
    dispatch_release(*(a1 + 48));
  }

  if (*(a1 + 56))
  {
    dispatch_release(*(a1 + 56));
  }

  if (*(a1 + 64))
  {
    dispatch_release(*(a1 + 64));
  }
}

dispatch_io_t dispatch_io_create(dispatch_io_type_t type, dispatch_fd_t fd, dispatch_queue_t queue, void *cleanup_handler)
{
  v28 = type;
  v27 = fd;
  v26 = queue;
  v25 = cleanup_handler;
  if (type && v28 != 1)
  {
    return 0;
  }

  v24 = _dispatch_io_create(v28);
  *(v24 + 31) = v27;
  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: create", 363, v4, v24);
  *(v24 + 32) = v27;
  v23 = v24[6];
  dispatch_suspend(v23);
  v22 = v26;
  _dispatch_retain(v26);
  v21 = v24;
  _dispatch_retain(v24);
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = 0;
  v15 = __dispatch_io_create_block_invoke;
  v16 = &__block_descriptor_tmp_2;
  v18 = v24;
  v19 = v28;
  v20 = v26;
  v17 = v25;
  _dispatch_fd_entry_init_async(v27, &v12);
  _dispatch_object_debug(v24, "%s", v5, v6, v7, v8, v9, v10, "dispatch_io_create");
  return v24;
}

void *_dispatch_io_create(uint64_t a1)
{
  v2 = _dispatch_object_alloc(_OS_dispatch_io_vtable, 0x98uLL);
  v2[2] = -1985229329;
  v2[3] = &off_E0680;
  v2[9] = a1;
  v2[11] = -1;
  v2[10] = qword_E4270 * dispatch_io_defaults;
  v2[6] = dispatch_queue_create("com.apple.libdispatch-io.channelq", 0);
  return v2;
}

void _dispatch_fd_entry_init_async(int a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v13 = &_dispatch_io_init_pred;
  v12 = 0;
  v11 = _dispatch_io_queues_init;
  if (_dispatch_io_init_pred != -1)
  {
    dispatch_once_f(v13, v12, v11);
  }

  block = _NSConcreteStackBlock;
  v3 = 1107296256;
  v4 = 0;
  v5 = ___dispatch_fd_entry_init_async_block_invoke;
  v6 = &__block_descriptor_tmp_175;
  v8 = v10;
  v7 = v9;
  dispatch_channel_async(_dispatch_io_fds_lockq, &block);
}

void __dispatch_io_create_block_invoke(void *a1, uint64_t a2)
{
  v11 = *(a2 + 24);
  if (!v11)
  {
    v11 = _dispatch_io_validate_type(a1[5], *(a2 + 36));
  }

  if (!v11 && a1[6] == 1)
  {
    do
    {
      v10 = lseek(*a2, 0, 1);
      if (v10 == -1)
      {
        v8 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v8 = 0;
      }

      v11 = v8;
      if (!v8)
      {
        *(a1[5] + 136) = v10;
        goto LABEL_13;
      }
    }

    while (v8 == 4);
    _dispatch_bug(389, v8);
  }

LABEL_13:
  *(a1[5] + 144) = v11;
  _dispatch_fd_entry_retain(a2);
  _dispatch_io_init(a1[5], a2, a1[7], v11, a1[4]);
  dispatch_resume(*(a1[5] + 48));
  _dispatch_object_debug(a1[5], "%s", v2, v3, v4, v5, v6, v7, "dispatch_io_create_block_invoke");
  _dispatch_release(a1[5]);
  _dispatch_release(a1[7]);
}

uint64_t _dispatch_io_validate_type(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if ((a2 & 0xF000) == 0x4000)
  {
    return 21;
  }

  else if (*(a1 + 72) == 1 && ((a2 & 0xF000) == 0x1000 || (a2 & 0xF000) == 0xC000))
  {
    return 29;
  }

  return v3;
}

void _dispatch_io_init(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  if (a5)
  {
    v16 = v19;
    _dispatch_retain(v19);
    if (v18)
    {
      queue = v21[6];
    }

    else
    {
      queue = *(v20 + 64);
    }

    block = _NSConcreteStackBlock;
    v8 = 1107296256;
    v9 = 0;
    v10 = ___dispatch_io_init_block_invoke;
    v11 = &__block_descriptor_tmp_105;
    v13 = v19;
    v14 = v21;
    v15 = v18;
    v12 = v17;
    dispatch_channel_async(queue, &block);
  }

  if (v20)
  {
    v21[14] = v20;
    dispatch_retain(*(v20 + 72));
    dispatch_retain(*(v20 + 80));
    v21[7] = *(v20 + 72);
    v21[8] = *(v20 + 80);
  }

  else
  {
    v5 = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
    v21[7] = v5;
    v21[8] = dispatch_group_create();
  }
}

dispatch_io_t dispatch_io_create_f(dispatch_io_type_t a1, dispatch_fd_t a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  if (!a5)
  {
    return dispatch_io_create(a1, a2, a3, 0);
  }

  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_create_f_block_invoke;
  v10 = &__block_descriptor_tmp_4;
  v11 = v13;
  v12 = v14;
  return dispatch_io_create(a1, a2, a3, &v6);
}

dispatch_io_t dispatch_io_create_with_path(dispatch_io_type_t type, const char *path, int oflag, mode_t mode, dispatch_queue_t queue, void *cleanup_handler)
{
  v34 = type;
  v33 = path;
  v32 = oflag;
  v31 = mode;
  v30 = queue;
  v29 = cleanup_handler;
  if (type && v34 != 1)
  {
    return 0;
  }

  if (*v33 != 47)
  {
    return 0;
  }

  v28 = strlen(v33);
  v27 = malloc_type_malloc();
  if (!v27)
  {
    return 0;
  }

  v26 = _dispatch_io_create(v34);
  *(v26 + 31) = -1;
  v6 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: create with path %s", 444, v6, v26, v33);
  *(v26 + 32) = -1;
  *v27 = v26;
  *(v27 + 8) = v32;
  *(v27 + 12) = v31;
  *(v27 + 16) = v28;
  __memcpy_chk();
  v25 = v30;
  _dispatch_retain(v30);
  v24 = v26;
  _dispatch_retain(v26);
  v7 = v26[6];
  block = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = 0;
  v18 = __dispatch_io_create_with_path_block_invoke;
  v19 = &__block_descriptor_tmp_12;
  v21 = v27;
  v22 = v26;
  v23 = v30;
  v20 = v29;
  dispatch_channel_async(v7, &block);
  _dispatch_object_debug(v26, "%s", v8, v9, v10, v11, v12, v13, "dispatch_io_create_with_path");
  return v26;
}

void __dispatch_io_create_with_path_block_invoke(uint64_t a1)
{
  v23 = a1;
  v22 = a1;
  v21 = 0;
  memset(&__b, 0, sizeof(__b));
  do
  {
    if ((*(*(a1 + 40) + 8) & 0x100) == 0x100 || (*(*(a1 + 40) + 8) & 0x200000) == 0x200000)
    {
      v3 = lstat((*(a1 + 40) + 24), &__b);
    }

    else
    {
      v3 = stat((*(a1 + 40) + 24), &__b);
    }

    if (v3 == -1)
    {
      v29 = 1;
      v32 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v2 = **(StatusReg + 8);
    }

    else
    {
      v2 = 0;
    }

    v21 = v2;
    if (!v2)
    {
      v21 = _dispatch_io_validate_type(*(a1 + 48), __b.st_mode);
      goto LABEL_31;
    }
  }

  while (v2 == 4);
  if ((*(*(a1 + 40) + 8) & 0x200) != 0 && *(*(a1 + 40) + 24 + *(*(a1 + 40) + 16) - 1) != 47)
  {
    v19 = 0;
    for (i = *(*(a1 + 40) + 16) - 1; (i & 0x8000000000000000) == 0; --i)
    {
      if (*(*(a1 + 40) + 24 + i) == 47)
      {
        v19 = (*(a1 + 40) + 24 + i);
        break;
      }
    }

    v25 = v19;
    v24 = 480;
    if (!v19)
    {
      _dispatch_abort(v24, 0);
    }

    *v19 = 0;
    v17 = 0;
    while (1)
    {
      if (stat((*(a1 + 40) + 24), &__b) == -1)
      {
        v30 = 1;
        v31 = 1;
        v34 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v1 = **(v34 + 8);
      }

      else
      {
        v1 = 0;
      }

      v17 = v1;
      if (!v1)
      {
        break;
      }

      if (v1 != 4)
      {
        goto LABEL_30;
      }
    }

    __b.st_mode = 0x8000;
    v21 = 0;
LABEL_30:
    *v19 = 47;
  }

LABEL_31:
  *(*(a1 + 48) + 144) = v21;
  if (v21)
  {
    free(*(a1 + 40));
    _dispatch_io_init(*(a1 + 48), 0, *(a1 + 56), v21, *(a1 + 32));
    v16 = *(a1 + 48);
    _dispatch_release(v16);
    _dispatch_release(*(a1 + 56));
  }

  else
  {
    object = *(*(a1 + 48) + 48);
    dispatch_suspend(object);
    v28 = &_dispatch_io_init_pred;
    v27 = 0;
    v26 = _dispatch_io_queues_init;
    if (_dispatch_io_init_pred != -1)
    {
      dispatch_once_f(v28, v27, v26);
    }

    v5 = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = 0;
    v8 = __dispatch_io_create_with_path_block_invoke_2;
    v9 = &__block_descriptor_tmp_9_0;
    v11 = *(a1 + 40);
    memcpy(v12, &__b, sizeof(v12));
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v10 = *(a1 + 32);
    dispatch_channel_async(_dispatch_io_devs_lockq, &v5);
  }
}

dispatch_queue_t _dispatch_io_queues_init()
{
  _dispatch_io_fds_lockq = dispatch_queue_create("com.apple.libdispatch-io.fd_lockq", 0);
  result = dispatch_queue_create("com.apple.libdispatch-io.dev_lockq", 0);
  _dispatch_io_devs_lockq = result;
  return result;
}

void __dispatch_io_create_with_path_block_invoke_2(uint64_t a1)
{
  v8 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 48), *(a1 + 52));
  _dispatch_io_init(*(a1 + 192), v8, *(a1 + 200), 0, *(a1 + 32));
  dispatch_resume(*(*(a1 + 192) + 48));
  _dispatch_object_debug(*(a1 + 192), "%s", v1, v2, v3, v4, v5, v6, "dispatch_io_create_with_path_block_invoke_2");
  _dispatch_release(*(a1 + 192));
  _dispatch_release(*(a1 + 200));
}

_DWORD *_dispatch_fd_entry_create_with_path(uint64_t a1, int a2, __int16 a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = _dispatch_fd_entry_create(*(*a1 + 48));
  v3 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: create: path %s", 1588, v3, v19, (v22 + 24));
  if ((v20 & 0xF000) == 0x8000)
  {
    _dispatch_disk_init(v19, HIBYTE(v21));
  }

  else
  {
    _dispatch_stream_init(v19, &off_E0600);
  }

  *v19 = -1;
  *(v19 + 4) = -1;
  v19[1] = v22;
  *(v19 + 8) = v21;
  *(v19 + 18) = v20;
  v19[9] = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
  v19[10] = dispatch_group_create();
  v4 = v19[8];
  block = _NSConcreteStackBlock;
  v14 = 0x40000000;
  v15 = 0;
  v16 = ___dispatch_fd_entry_create_with_path_block_invoke;
  v17 = &__block_descriptor_tmp_191;
  v18 = v19;
  dispatch_channel_async(v4, &block);
  v5 = v19[8];
  v7 = _NSConcreteStackBlock;
  v8 = 0x40000000;
  v9 = 0;
  v10 = ___dispatch_fd_entry_create_with_path_block_invoke_2;
  v11 = &__block_descriptor_tmp_192;
  v12 = v19;
  dispatch_channel_async(v5, &v7);
  return v19;
}

dispatch_io_t dispatch_io_create_with_path_f(dispatch_io_type_t a1, const char *a2, int a3, mode_t a4, dispatch_queue_s *a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  if (!a7)
  {
    return dispatch_io_create_with_path(a1, a2, a3, a4, a5, 0);
  }

  v8 = _NSConcreteStackBlock;
  v9 = 0x40000000;
  v10 = 0;
  v11 = __dispatch_io_create_with_path_f_block_invoke;
  v12 = &__block_descriptor_tmp_13;
  v13 = v15;
  v14 = v16;
  return dispatch_io_create_with_path(a1, a2, a3, a4, a5, &v8);
}

dispatch_io_t dispatch_io_create_with_io(dispatch_io_type_t type, dispatch_io_t io, dispatch_queue_t queue, void *cleanup_handler)
{
  v31 = type;
  v30 = io;
  v29 = queue;
  v28 = cleanup_handler;
  if (type && v31 != 1)
  {
    return 0;
  }

  v27 = _dispatch_io_create(v31);
  v4 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: create with channel %p", 544, v4, v27, v30);
  v26 = v27[6];
  dispatch_suspend(v26);
  v25 = v29;
  _dispatch_retain(v29);
  v24 = v27;
  _dispatch_retain(v27);
  v23 = v30;
  _dispatch_retain(v30);
  v5 = *(v30 + 6);
  block = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = 0;
  v16 = __dispatch_io_create_with_io_block_invoke;
  v17 = &__block_descriptor_tmp_23;
  v19 = v30;
  v20 = v27;
  v21 = v29;
  v18 = v28;
  v22 = v31;
  dispatch_channel_async(v5, &block);
  _dispatch_object_debug(v27, "%s", v6, v7, v8, v9, v10, v11, "dispatch_io_create_with_io");
  return v27;
}

void __dispatch_io_create_with_io_block_invoke(uint64_t *a1)
{
  v18 = a1;
  v17 = a1;
  error = _dispatch_io_get_error(0, a1[5], 0);
  if (error)
  {
    *(a1[6] + 144) = error;
    _dispatch_io_init(a1[6], 0, a1[7], error, a1[4]);
    v15 = *(a1[6] + 48);
    dispatch_resume(v15);
    v14 = a1[6];
    _dispatch_release(v14);
    v13 = a1[5];
    _dispatch_release(v13);
    _dispatch_release(a1[7]);
  }

  else
  {
    v1 = *(a1[5] + 56);
    block = _NSConcreteStackBlock;
    v4 = 1107296256;
    v5 = 0;
    v6 = __dispatch_io_create_with_io_block_invoke_2;
    v7 = &__block_descriptor_tmp_20;
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[8];
    v12 = a1[7];
    v8 = a1[4];
    dispatch_channel_async(v1, &block);
  }
}

uint64_t _dispatch_io_get_error(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    a2 = *(a1 + 136);
  }

  if ((*(a2 + 120) & 3) != 0)
  {
    if ((a3 & 1) != 0 && (*(a2 + 120) & 2) == 0)
    {
      return 0;
    }

    else
    {
      return 89;
    }
  }

  else if (a1)
  {
    return *(*(a1 + 144) + 24);
  }

  else
  {
    return *(a2 + 144);
  }
}

void __dispatch_io_create_with_io_block_invoke_2(uint64_t *a1)
{
  v33 = a1;
  v32 = a1;
  error = _dispatch_io_get_error(0, a1[5], 0);
  if (!error)
  {
    error = *(a1[5] + 144);
    if (!error)
    {
      error = *(*(a1[5] + 112) + 24);
    }
  }

  if (!error)
  {
    error = _dispatch_io_validate_type(a1[6], *(*(a1[5] + 112) + 36));
  }

  if (!error && a1[7] == 1 && *(a1[5] + 124) != -1)
  {
    v30 = 0;
    do
    {
      v30 = lseek(**(a1[5] + 112), 0, 1);
      if (v30 == -1)
      {
        v36 = 1;
        v37 = 1;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = **(StatusReg + 8);
      }

      else
      {
        v7 = 0;
      }

      error = v7;
      if (!v7)
      {
        *(a1[6] + 136) = v30;
        goto LABEL_20;
      }
    }

    while (v7 == 4);
    v29 = error;
    v35 = error;
    v34 = 590;
    if (error)
    {
      _dispatch_bug(v34, v35);
    }

    v28 = v29;
  }

LABEL_20:
  *(a1[6] + 144) = error;
  if (error)
  {
    _dispatch_io_init(a1[6], 0, a1[8], error, a1[4]);
    v27 = *(a1[6] + 48);
    dispatch_resume(v27);
    v26 = a1[6];
    _dispatch_release(v26);
    v25 = a1[5];
    _dispatch_release(v25);
    _dispatch_release(a1[8]);
  }

  else
  {
    if (*(a1[5] + 124) == -1)
    {
      *(a1[6] + 124) = -1;
      *(a1[6] + 128) = -1;
      v24 = *(*(a1[5] + 112) + 36);
      v23 = *(*(a1[5] + 112) + 32);
      v22 = *(*(*(a1[5] + 112) + 8) + 16) + 25;
      v21 = malloc_type_malloc();
      __memcpy_chk();
      *v21 = a1[6];
      block = _NSConcreteStackBlock;
      v11 = 1107296256;
      v12 = 0;
      v13 = __dispatch_io_create_with_io_block_invoke_3;
      v14 = &__block_descriptor_tmp_17;
      v16 = v21;
      v19 = v23;
      v20 = v24;
      v17 = a1[6];
      v18 = a1[8];
      v15 = a1[4];
      dispatch_channel_async(_dispatch_io_devs_lockq, &block);
    }

    else
    {
      v9 = *(a1[5] + 112);
      *(a1[6] + 124) = *(a1[5] + 124);
      *(a1[6] + 128) = *(a1[5] + 128);
      _dispatch_fd_entry_retain(v9);
      _dispatch_io_init(a1[6], v9, a1[8], 0, a1[4]);
      dispatch_resume(*(a1[6] + 48));
      _dispatch_release(a1[6]);
      _dispatch_release(a1[8]);
    }

    _dispatch_release(a1[5]);
    _dispatch_object_debug(a1[6], "%s", v1, v2, v3, v4, v5, v6, "dispatch_io_create_with_io_block_invoke");
  }
}

void __dispatch_io_create_with_io_block_invoke_3(uint64_t a1)
{
  v2 = _dispatch_fd_entry_create_with_path(*(a1 + 40), *(a1 + 64), *(a1 + 68));
  _dispatch_io_init(*(a1 + 48), v2, *(a1 + 56), 0, *(a1 + 32));
  dispatch_resume(*(*(a1 + 48) + 48));
  _dispatch_release(*(a1 + 48));
  _dispatch_release(*(a1 + 56));
}

dispatch_io_t dispatch_io_create_with_io_f(dispatch_io_type_t a1, dispatch_io_s *a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  if (!a5)
  {
    return dispatch_io_create_with_io(a1, a2, a3, 0);
  }

  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_create_with_io_f_block_invoke;
  v10 = &__block_descriptor_tmp_24;
  v11 = v13;
  v12 = v14;
  return dispatch_io_create_with_io(a1, a2, a3, &v6);
}

void dispatch_io_set_high_water(dispatch_io_t channel, size_t high_water)
{
  v12 = channel;
  v11 = high_water;
  v10 = channel;
  _dispatch_retain(channel);
  v2 = *(v12 + 6);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_set_high_water_block_invoke;
  v7 = &__block_descriptor_tmp_26;
  v8 = v12;
  v9 = v11;
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_set_high_water_block_invoke(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: set high water: %zu", 662, v1, *(a1 + 32), *(a1 + 40));
  if (*(*(a1 + 32) + 80) > *(a1 + 40))
  {
    *(*(a1 + 32) + 80) = *(a1 + 40);
  }

  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 1;
  }

  *(*(a1 + 32) + 88) = v2;
  _dispatch_release(*(a1 + 32));
}

void dispatch_io_set_low_water(dispatch_io_t channel, size_t low_water)
{
  v12 = channel;
  v11 = low_water;
  v10 = channel;
  _dispatch_retain(channel);
  v2 = *(v12 + 6);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_set_low_water_block_invoke;
  v7 = &__block_descriptor_tmp_28;
  v8 = v12;
  v9 = v11;
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_set_low_water_block_invoke(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: set low water: %zu", 676, v1, *(a1 + 32), *(a1 + 40));
  if (*(*(a1 + 32) + 88) < *(a1 + 40))
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 40);
    }

    else
    {
      v2 = 1;
    }

    *(*(a1 + 32) + 88) = v2;
  }

  *(*(a1 + 32) + 80) = *(a1 + 40);
  _dispatch_release(*(a1 + 32));
}

void dispatch_io_set_interval(dispatch_io_t channel, uint64_t interval, dispatch_io_interval_flags_t flags)
{
  v15 = channel;
  v14 = interval;
  v13 = flags;
  v12 = channel;
  _dispatch_retain(channel);
  v3 = *(v15 + 6);
  block = _NSConcreteStackBlock;
  v5 = 0x40000000;
  v6 = 0;
  v7 = __dispatch_io_set_interval_block_invoke;
  v8 = &__block_descriptor_tmp_30;
  v9 = v15;
  v10 = v14;
  v11 = v13;
  dispatch_channel_async(v3, &block);
}

void __dispatch_io_set_interval_block_invoke(uint64_t *a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: set interval: %llu", 692, v1, a1[4], a1[5]);
  if (a1[5] >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = a1[5];
  }

  *(a1[4] + 96) = v2;
  *(a1[4] + 104) = a1[6];
  _dispatch_release(a1[4]);
}

void _dispatch_io_set_target_queue(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = a2;
  _dispatch_retain(a2);
  v10 = v13;
  _dispatch_retain(v13);
  v2 = *(v13 + 48);
  v3 = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = ___dispatch_io_set_target_queue_block_invoke;
  v7 = &__block_descriptor_tmp_31;
  v8 = v13;
  v9 = v12;
  dispatch_channel_async(v2, &v3);
}

void ___dispatch_io_set_target_queue_block_invoke(uint64_t a1)
{
  v8 = *(*(a1 + 32) + 24);
  *(*(a1 + 32) + 24) = *(a1 + 40);
  _dispatch_release(v8);
  _dispatch_object_debug(*(a1 + 32), "%s", v1, v2, v3, v4, v5, v6, "_dispatch_io_set_target_queue_block_invoke");
  _dispatch_release(*(a1 + 32));
}

dispatch_fd_t dispatch_io_get_descriptor(dispatch_io_t channel)
{
  if ((*(channel + 30) & 3) != 0)
  {
    return -1;
  }

  if (*(channel + 32) == -1 && !_dispatch_io_get_error(0, channel, 0))
  {
    for (i = _dispatch_thread_getspecific(23); i; i = *i)
    {
      if (i[1] == "io")
      {
        v5 = i;
        goto LABEL_11;
      }
    }

    v5 = 0;
LABEL_11:
    if (v5 && v5[2] == channel)
    {
      _dispatch_fd_entry_open(*(channel + 14), channel);
    }
  }

  return *(channel + 32);
}

uint64_t _dispatch_fd_entry_open(uint64_t a1, uint64_t a2)
{
  if (*a1 == -1 && *(a1 + 8))
  {
    if (*(a1 + 24))
    {
      return *(a1 + 24);
    }

    else
    {
      if (*(a1 + 56))
      {
        v11 = *(*(a1 + 8) + 8) & 0xFFFFFFFB;
      }

      else
      {
        v11 = *(*(a1 + 8) + 8) | 4;
      }

      while (1)
      {
        v13 = _dispatch_fd_entry_guarded_open(a1, *(a1 + 8) + 24, v11, *(*(a1 + 8) + 12));
        if (v13 != -1)
        {
          break;
        }

        v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (v12 != 4)
        {
          v8 = 0;
          atomic_compare_exchange_strong_explicit((a1 + 24), &v8, v12, memory_order_relaxed, memory_order_relaxed);
          return v12;
        }
      }

      v9 = -1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v13, memory_order_relaxed, memory_order_relaxed);
      if (v9 == -1)
      {
        *(a2 + 128) = v13;
      }

      else
      {
        _dispatch_fd_entry_guarded_close(a1, v13);
      }

      _dispatch_object_debug(a2, "%s", v2, v3, v4, v5, v6, v7, "_dispatch_fd_entry_open");
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void dispatch_io_close(dispatch_io_t channel, dispatch_io_close_flags_t flags)
{
  v11 = channel;
  v10 = flags;
  if (flags)
  {
    if ((*(v11 + 30) & 2) == 0)
    {
      _dispatch_io_stop(v11);
    }
  }

  else if ((*(v11 + 30) & 3) == 0)
  {
    v9 = v11;
    _dispatch_retain(v11);
    v2 = *(v11 + 6);
    v3 = _NSConcreteStackBlock;
    v4 = 0x40000000;
    v5 = 0;
    v6 = __dispatch_io_close_block_invoke;
    v7 = &__block_descriptor_tmp_35;
    v8 = v11;
    dispatch_channel_async(v2, &v3);
  }
}

void _dispatch_io_stop(char *a1)
{
  v20 = a1;
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: stop", 736, v1, v20);
  v18 = 2;
  v17 = 2;
  v19 = 2;
  v13 = 2;
  v12 = 2;
  v14 = 2;
  v11 = atomic_fetch_or_explicit((v20 + 120), 2u, memory_order_relaxed);
  v15 = v11;
  v10 = v11;
  v16 = v11 | 2;
  v9 = v20;
  _dispatch_retain(v20);
  v2 = *(v20 + 6);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = ___dispatch_io_stop_block_invoke;
  v7 = &__block_descriptor_tmp_116;
  v8 = v20;
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_close_block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 56);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_close_block_invoke_2;
  v7 = &__block_descriptor_tmp_34;
  v8 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_close_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(*(a1 + 32), "%s", a3, a4, a5, a6, a7, a8, "dispatch_io_close_block_invoke_2");
  v8 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: close", 794, v8, *(a1 + 32));
  if ((*(*(a1 + 32) + 120) & 3) == 0)
  {
    atomic_fetch_or_explicit((*(a1 + 32) + 120), 1u, memory_order_relaxed);
    v10 = *(*(a1 + 32) + 112);
    if (v10)
    {
      if (*(v10 + 8))
      {
        **(v10 + 8) = 0;
      }

      *(*(a1 + 32) + 112) = 0;
      _dispatch_fd_entry_release(v10);
    }
  }

  _dispatch_release(*(a1 + 32));
}

void dispatch_io_barrier(dispatch_io_t channel, dispatch_block_t barrier)
{
  v12 = channel;
  v11 = barrier;
  v10 = channel;
  _dispatch_retain(channel);
  v2 = *(v12 + 6);
  block = _NSConcreteStackBlock;
  v4 = 1107296256;
  v5 = 0;
  v6 = __dispatch_io_barrier_block_invoke;
  v7 = &__block_descriptor_tmp_44;
  v9 = v12;
  v8 = v11;
  dispatch_channel_async(v2, &block);
}

void __dispatch_io_barrier_block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v13 = *(*(a1 + 40) + 24);
  v12 = *(*(a1 + 40) + 56);
  v11 = *(*(a1 + 40) + 64);
  v1 = _NSConcreteStackBlock;
  v2 = 1107296256;
  v3 = 0;
  v4 = __dispatch_io_barrier_block_invoke_2;
  v5 = &__block_descriptor_tmp_41;
  v7 = v12;
  v8 = v11;
  v9 = v13;
  v10 = *(a1 + 40);
  v6 = *(a1 + 32);
  dispatch_channel_async(v12, &v1);
}

void __dispatch_io_barrier_block_invoke_2(void *a1)
{
  v14 = a1;
  v13 = a1;
  v12 = a1[5];
  dispatch_suspend(v12);
  v1 = a1[6];
  v2 = a1[7];
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_io_barrier_block_invoke_3;
  v8 = &__block_descriptor_tmp_38;
  v10 = a1[8];
  v9 = a1[4];
  v11 = a1[5];
  dispatch_group_notify(v1, v2, &block);
}

void __dispatch_io_barrier_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v12 = a1;
  v11 = 0;
  v10[0] = 0;
  v10[1] = "io";
  v11 = *(a1 + 40);
  _dispatch_object_debug(*(a1 + 40), "%s", a3, a4, a5, a6, a7, a8, "dispatch_io_barrier_block_invoke_3");
  v14 = v10;
  v10[0] = _dispatch_thread_getspecific(23);
  _dispatch_thread_setspecific(23, v14);
  (*(*(a1 + 32) + 16))();
  v15 = v10;
  v8 = _dispatch_thread_getspecific(23) == v10;
  v17 = v8;
  v16 = 449;
  if (!v8)
  {
    _dispatch_abort(v16, v17);
  }

  _dispatch_thread_setspecific(23, *v15);
  dispatch_resume(*(a1 + 48));
  _dispatch_release(*(a1 + 40));
}

void dispatch_io_barrier_f(dispatch_io_s *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  barrier = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = __dispatch_io_barrier_f_block_invoke;
  v7 = &__block_descriptor_tmp_45;
  v8 = a3;
  v9 = a2;
  dispatch_io_barrier(a1, &barrier);
}

void dispatch_io_read(dispatch_io_t channel, off_t offset, size_t length, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  v22 = channel;
  v21 = offset;
  v20 = length;
  v19 = queue;
  v18 = io_handler;
  v17 = channel;
  _dispatch_retain(channel);
  v16 = v19;
  _dispatch_retain(v19);
  v5 = *(v22 + 6);
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = 0;
  v9 = __dispatch_io_read_block_invoke;
  v10 = &__block_descriptor_tmp_49;
  v12 = v22;
  v13 = v21;
  v14 = v20;
  v15 = v19;
  v11 = v18;
  dispatch_channel_async(v5, &v6);
}

void __dispatch_io_read_block_invoke(void *a1)
{
  v11 = a1;
  v10 = a1;
  v9 = 0;
  v9 = _dispatch_operation_create(0, a1[5], a1[6], a1[7], &_dispatch_data_empty, a1[8], a1[4]);
  if (v9)
  {
    v8 = *(a1[5] + 56);
    block = _NSConcreteStackBlock;
    v3 = 0x40000000;
    v4 = 0;
    v5 = __dispatch_io_read_block_invoke_2;
    v6 = &__block_descriptor_tmp_46;
    v7 = v9;
    dispatch_channel_async(v8, &block);
  }

  _dispatch_release(a1[5]);
  _dispatch_release(a1[8]);
}

void *_dispatch_operation_create(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, dispatch_object_s *a5, dispatch_queue_s *a6, const void *a7)
{
  v39 = a1;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v42 = a1 < 2;
  v41 = 1064;
  if (a1 >= 2)
  {
    _dispatch_abort(v41, v42);
  }

  error = _dispatch_io_get_error(0, v38, 0);
  if (!error && v36)
  {
    v17 = _dispatch_object_alloc(_OS_dispatch_operation_vtable, 0x110uLL);
    v8 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tchannel[%p]: operation create: %p", 1092, v8, v38, v17);
    v17[2] = -1985229329;
    *(v17 + 3) = 0;
    v17[6] = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.opq", 0, v34);
    *(v17 + 160) = 0;
    *(v17 + 14) = v39;
    v17[13] = v37 + v38[17];
    v17[14] = v36;
    v17[16] = _dispatch_Block_copy(v33);
    _dispatch_retain(v38);
    v17[17] = v38;
    memcpy(v17 + 8, v38 + 9, 0x28uLL);
      ;
    }

    v17[3] = i;
    _dispatch_object_debug(v17, "%s", v9, v10, v11, v12, v13, v14, "_dispatch_operation_create");
    return v17;
  }

  else
  {
    v31 = v35;
    dispatch_retain(v35);
    v30 = v34;
    _dispatch_retain(v34);
    v29 = v38;
    _dispatch_retain(v38);
    v7 = v38[7];
    block = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = 0;
    v21 = ___dispatch_operation_create_block_invoke;
    v22 = &__block_descriptor_tmp_130;
    v24 = v34;
    v25 = v35;
    v27 = v39;
    v28 = error;
    v26 = v38;
    v23 = v33;
    dispatch_channel_async(v7, &block);
    return 0;
  }
}

void _dispatch_operation_enqueue(void *a1, unsigned int a2, dispatch_object_s *a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = a3;
  dispatch_retain(a3);
  error = _dispatch_io_get_error(0, v40[17], 0);
  if (error)
  {
    v35 = v40[16];
    v3 = v40[6];
    block = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = 0;
    v29 = ___dispatch_operation_enqueue_block_invoke;
    v30 = &__block_descriptor_tmp_135;
    v32 = v38;
    v33 = v39;
    v34 = error;
    v31 = v35;
    dispatch_channel_async(v3, &block);
    v4 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\top[%p]: release -> %d, err %d", 1175, v4, v40, *(v40 + 2), error);
    v25 = v40;
    _dispatch_release(v40);
  }

  else
  {
    v40[18] = *(v40[17] + 112);
    _dispatch_fd_entry_retain(v40[18]);
    dispatch_group_enter(*(v40[18] + 80));
    v24 = *(v40[18] + 56);
    if (v24)
    {
      v6 = *(v24 + 72);
      v7 = _NSConcreteStackBlock;
      v8 = 0x40000000;
      v9 = 0;
      v10 = ___dispatch_operation_enqueue_block_invoke_2;
      v11 = &__block_descriptor_tmp_139;
      v12 = v24;
      v13 = v40;
      v14 = v38;
      dispatch_channel_async(v6, &v7);
    }

    else
    {
      v23 = *(v40[18] + 40 + 8 * v39);
      v5 = *v23;
      v15 = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = 0;
      v18 = ___dispatch_operation_enqueue_block_invoke_137;
      v19 = &__block_descriptor_tmp_138;
      v20 = v23;
      v21 = v40;
      v22 = v38;
      dispatch_channel_async(v5, &v15);
    }
  }
}

void dispatch_io_read_f(dispatch_io_s *a1, off_t a2, size_t a3, dispatch_queue_s *a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_read_f_block_invoke;
  v10 = &__block_descriptor_tmp_51;
  v11 = a6;
  v12 = a5;
  dispatch_io_read(a1, a2, a3, a4, &v6);
}

void dispatch_io_write(dispatch_io_t channel, off_t offset, dispatch_data_t data, dispatch_queue_t queue, dispatch_io_handler_t io_handler)
{
  v23 = channel;
  v22 = offset;
  v21 = data;
  v20 = queue;
  v19 = io_handler;
  v18 = data;
  dispatch_retain(data);
  v17 = v23;
  _dispatch_retain(v23);
  v16 = v20;
  _dispatch_retain(v20);
  v5 = *(v23 + 6);
  block = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = 0;
  v9 = __dispatch_io_write_block_invoke;
  v10 = &__block_descriptor_tmp_55;
  v12 = v23;
  v13 = v22;
  v14 = v21;
  v15 = v20;
  v11 = v19;
  dispatch_channel_async(v5, &block);
}

void __dispatch_io_write_block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v13 = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  size = dispatch_data_get_size(*(a1 + 56));
  v13 = _dispatch_operation_create(1u, v2, v3, size, *(a1 + 56), *(a1 + 64), *(a1 + 32));
  if (v13)
  {
    v12 = *(*(a1 + 40) + 56);
    block = _NSConcreteStackBlock;
    v6 = 0x40000000;
    v7 = 0;
    v8 = __dispatch_io_write_block_invoke_2;
    v9 = &__block_descriptor_tmp_52;
    v10 = v13;
    v11 = *(a1 + 56);
    dispatch_channel_async(v12, &block);
  }

  else
  {
    dispatch_release(*(a1 + 56));
  }

  _dispatch_release(*(a1 + 40));
  _dispatch_release(*(a1 + 64));
}

void dispatch_io_write_f(dispatch_io_s *a1, off_t a2, dispatch_data_s *a3, dispatch_queue_s *a4, uint64_t a5, uint64_t a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = 0;
  v9 = __dispatch_io_write_f_block_invoke;
  v10 = &__block_descriptor_tmp_56;
  v11 = a6;
  v12 = a5;
  dispatch_io_write(a1, a2, a3, a4, &v6);
}

void dispatch_read(dispatch_fd_t fd, size_t length, dispatch_queue_t queue, void *handler)
{
  v17 = fd;
  v16 = length;
  v15 = queue;
  v14 = handler;
  v13 = queue;
  _dispatch_retain(queue);
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_read_block_invoke;
  v8 = &__block_descriptor_tmp_71;
  v10 = v15;
  v12 = v17;
  v9 = v14;
  v11 = v16;
  _dispatch_fd_entry_init_async(v17, &v4);
}

void __dispatch_read_block_invoke(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v45 = a2;
  v44 = a1;
  if (*(a2 + 24))
  {
    v43 = *(v45 + 24);
    v2 = *(a1 + 40);
    block = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = 0;
    v38 = __dispatch_read_block_invoke_2;
    v39 = &__block_descriptor_tmp_60;
    v41 = *(a1 + 56);
    v40 = *(a1 + 32);
    v42 = v43;
    dispatch_channel_async(v2, &block);
    _dispatch_release(*(a1 + 40));
  }

  else
  {
    v34 = *(v45 + 88);
    if (!v34)
    {
      v34 = _dispatch_io_create(0);
      *(v34 + 31) = *(a1 + 56);
      *(v34 + 32) = *(a1 + 56);
      v34[14] = v45;
      v33 = *(v45 + 72);
      dispatch_retain(v33);
      v32 = *(v45 + 80);
      dispatch_retain(v32);
      v34[7] = *(v45 + 72);
      v34[8] = *(v45 + 80);
      *(v45 + 88) = v34;
    }

    v28[0] = 0;
    v28[1] = v28;
    v29 = 0;
    v30 = 32;
    v31 = &_dispatch_data_empty;
    v24[0] = 0;
    v24[1] = v24;
    v25 = 0;
    v26 = 32;
    v27 = 0;
    v3 = *(v45 + 64);
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = 0;
    v17 = __dispatch_read_block_invoke_61;
    v18 = &__block_descriptor_tmp_66;
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);
    v19 = *(a1 + 32);
    v20 = v28;
    v21 = v24;
    dispatch_channel_async(v3, &v14);
    v4 = *(a1 + 48);
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = 0;
    v9 = __dispatch_read_block_invoke_67;
    v10 = &__block_descriptor_tmp_68;
    v11 = v28;
    v12 = v24;
    v13 = _dispatch_operation_create(0, v34, 0, v4, &_dispatch_data_empty, &off_E0600, &v6);
    if (v13)
    {
      _dispatch_operation_enqueue(v13, 0, &_dispatch_data_empty);
    }

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v28, 8);
  }
}

uint64_t __dispatch_read_block_invoke_2(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", 925, v1, *(a1 + 40));
  return (*(*(a1 + 32) + 16))();
}

void __dispatch_read_block_invoke_61(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v2 = *(a1 + 56);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_read_block_invoke_2_62;
  v8 = &__block_descriptor_tmp_63;
  v12 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 56));
}

void __dispatch_read_block_invoke_2_62(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", 948, v1, *(a1 + 56));
  (*(*(a1 + 32) + 16))();
  dispatch_release(*(*(*(a1 + 40) + 8) + 24));
}

void __copy_helper_block_8_32b40r48r(uint64_t a1, const void **a2)
{
  _Block_object_assign((a1 + 32), a2[4], 7);
  _Block_object_assign((a1 + 40), a2[5], 8);
  _Block_object_assign((a1 + 48), a2[6], 8);
}

void __destroy_helper_block_8_32b40r48r(const void **a1)
{
  _Block_object_dispose(a1[6], 8);
  _Block_object_dispose(a1[5], 8);
  _Block_object_dispose(a1[4], 7);
}

void __dispatch_read_block_invoke_67(uint64_t a1, char a2, dispatch_data_s *a3, int a4)
{
  if (a3)
  {
    concat = dispatch_data_create_concat(*(*(*(a1 + 32) + 8) + 24), a3);
    dispatch_release(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = concat;
  }

  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void dispatch_read_f(dispatch_fd_t a1, size_t a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  handler = _NSConcreteStackBlock;
  v6 = 0x40000000;
  v7 = 0;
  v8 = __dispatch_read_f_block_invoke;
  v9 = &__block_descriptor_tmp_73;
  v10 = a5;
  v11 = a4;
  dispatch_read(a1, a2, a3, &handler);
}

void dispatch_write(dispatch_fd_t fd, dispatch_data_t data, dispatch_queue_t queue, void *handler)
{
  v18 = fd;
  v17 = data;
  v16 = queue;
  v15 = handler;
  v14 = data;
  dispatch_retain(data);
  v13 = v16;
  _dispatch_retain(v16);
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_write_block_invoke;
  v8 = &__block_descriptor_tmp_91;
  v10 = v16;
  v12 = v18;
  v9 = v15;
  v11 = v17;
  _dispatch_fd_entry_init_async(v18, &v4);
}

void __dispatch_write_block_invoke(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v47 = a2;
  v46 = a1;
  if (*(a2 + 24))
  {
    v45 = *(v47 + 24);
    v2 = *(a1 + 40);
    block = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = 0;
    v40 = __dispatch_write_block_invoke_2;
    v41 = &__block_descriptor_tmp_76;
    v43 = *(a1 + 56);
    v42 = *(a1 + 32);
    v44 = v45;
    dispatch_channel_async(v2, &block);
    _dispatch_release(*(a1 + 40));
  }

  else
  {
    v36 = *(v47 + 88);
    if (!v36)
    {
      v36 = _dispatch_io_create(0);
      *(v36 + 31) = *(a1 + 56);
      *(v36 + 32) = *(a1 + 56);
      v36[14] = v47;
      v35 = *(v47 + 72);
      dispatch_retain(v35);
      v34 = *(v47 + 80);
      dispatch_retain(v34);
      v36[7] = *(v47 + 72);
      v36[8] = *(v47 + 80);
      *(v47 + 88) = v36;
    }

    v30[0] = 0;
    v30[1] = v30;
    v31 = 0;
    v32 = 32;
    v33 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v27 = 0;
    v28 = 32;
    v29 = 0;
    v3 = *(v47 + 64);
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = 0;
    v19 = __dispatch_write_block_invoke_77;
    v20 = &__block_descriptor_tmp_84;
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = v30;
    v23 = v26;
    dispatch_channel_async(v3, &v16);
    v6 = v36;
    size = dispatch_data_get_size(*(a1 + 48));
    v5 = *(a1 + 48);
    v8 = _NSConcreteStackBlock;
    v9 = 1107296256;
    v10 = 0;
    v11 = __dispatch_write_block_invoke_85;
    v12 = &__block_descriptor_tmp_88;
    v13 = v30;
    v14 = v26;
    v15 = _dispatch_operation_create(1u, v6, 0, size, v5, &off_E0600, &v8);
    if (v15)
    {
      _dispatch_operation_enqueue(v15, 1u, *(a1 + 48));
    }

    dispatch_release(*(a1 + 48));
    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v30, 8);
  }
}

uint64_t __dispatch_write_block_invoke_2(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", 994, v1, *(a1 + 40));
  return (*(*(a1 + 32) + 16))();
}

void __dispatch_write_block_invoke_77(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v2 = *(a1 + 56);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = __dispatch_write_block_invoke_2_78;
  v8 = &__block_descriptor_tmp_81;
  v12 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 56));
}

void __dispatch_write_block_invoke_2_78(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd[0x%x]: convenience handler invoke", 1017, v1, *(a1 + 56));
  (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    dispatch_release(*(*(*(a1 + 40) + 8) + 24));
  }
}

void __dispatch_write_block_invoke_85(uint64_t a1, char a2, dispatch_object_s *a3, int a4)
{
  if (a2)
  {
    if (a3)
    {
      dispatch_retain(a3);
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }

    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void dispatch_write_f(dispatch_fd_t a1, dispatch_data_s *a2, dispatch_queue_s *a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  handler = _NSConcreteStackBlock;
  v6 = 0x40000000;
  v7 = 0;
  v8 = __dispatch_write_f_block_invoke;
  v9 = &__block_descriptor_tmp_92;
  v10 = a5;
  v11 = a4;
  dispatch_write(a1, a2, a3, &handler);
}

void _dispatch_operation_dispose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_operation_dispose");
  v8 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: dispose", 1121, v8, a1);
  if (*(a1 + 144))
  {
    _dispatch_operation_deliver_data(a1, 2, v9, v10, v11, v12, v13, v14);
    dispatch_group_leave(*(*(a1 + 144) + 80));
    _dispatch_fd_entry_release(*(a1 + 144));
  }

  if (*(a1 + 136))
  {
    _dispatch_release(*(a1 + 136));
  }

  if (*(a1 + 152))
  {
    dispatch_release(*(a1 + 152));
  }

  if (*(a1 + 176) && !*(a1 + 56))
  {
    free(*(a1 + 176));
  }

  if (*(a1 + 224))
  {
    dispatch_release(*(a1 + 224));
  }

  if (*(a1 + 232))
  {
    dispatch_release(*(a1 + 232));
  }

  if (*(a1 + 48))
  {
    dispatch_release(*(a1 + 48));
  }

  _Block_release(*(a1 + 128));
  v15 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: disposed", 1152, v15, a1);
}

void _dispatch_operation_deliver_data(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a1;
  v46 = a2;
  subrange = 0;
  v44 = 0;
  v43 = v47[26] + v47[25];
  v14 = 1;
  if ((a2 & 3) == 0)
  {
    v14 = (v47[23] & 1) != 0;
  }

  v42 = v14;
  *(v47 + 46) = 0;
  if (v42)
  {
    v44 = *(v47 + 30);
    if (!v44 && (*(v47[17] + 120) & 2) != 0)
    {
      v44 = 89;
      *(v47 + 30) = 89;
    }
  }

  else if (v43 < v47[9])
  {
    if (v47[25] < v47[24])
    {
      v8 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: buffer data: undelivered %zu", 2622, v8, v47, v43);
      return;
    }
  }

  else
  {
    v42 = 1;
  }

  if (!*(v47 + 14))
  {
    if (v47[25])
    {
      v41 = v47[22];
      subrange = dispatch_data_create(v41, v47[25], 0, &__block_literal_global);
      v47[22] = 0;
      v47[25] = 0;
      concat = dispatch_data_create_concat(v47[29], subrange);
      v39 = v47[29];
      dispatch_release(v39);
      v38 = subrange;
      dispatch_release(subrange);
      subrange = concat;
    }

    else
    {
      subrange = v47[29];
    }

    if (v42)
    {
      v13 = &_dispatch_data_empty;
    }

    else
    {
      v13 = subrange;
    }

    v47[29] = v13;
LABEL_33:
    if ((v42 & 1) != 0 && ((v46 & 8) == 0 || dispatch_data_get_size(subrange)))
    {
      v47[26] = 0;
      v33 = v47;
      _dispatch_object_debug(v47, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_operation_deliver_data");
      v11 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: deliver data", 2687, v11, v47);
      v32 = *(v47 + 14);
      v31 = v47[16];
      v30 = v47[18];
      _dispatch_fd_entry_retain(v30);
      v29 = v47[17];
      v28 = v29;
      _dispatch_retain(v29);
      v12 = v47[6];
      block = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = 0;
      v18 = ___dispatch_operation_deliver_data_block_invoke;
      v19 = &__block_descriptor_tmp_199;
      v25 = v46;
      v21 = subrange;
      v26 = v32;
      v27 = v44;
      v22 = v47;
      v20 = v31;
      v23 = v29;
      v24 = v30;
      dispatch_channel_async(v12, &block);
    }

    else
    {
      v47[26] = v43;
      v10 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: buffer data: undelivered %zu", 2682, v10, v47, v43);
    }

    return;
  }

  if (*(v47 + 14) == 1)
  {
    if (v42)
    {
      subrange = dispatch_data_create_subrange(v47[29], v47[25], v47[14]);
    }

    if (v47[28] && v47[25] == v47[24])
    {
      v37 = v47[28];
      dispatch_release(v37);
      v47[28] = 0;
      v47[22] = 0;
      v47[25] = 0;
      v36 = 0;
      if (v42)
      {
        v35 = subrange;
        dispatch_retain(subrange);
        v36 = subrange;
      }

      else
      {
        v36 = dispatch_data_create_subrange(v47[29], v47[24], v47[14]);
      }

      v34 = v47[29];
      dispatch_release(v34);
      v47[29] = v36;
    }

    goto LABEL_33;
  }

  v9 = *(v47 + 14) < 2u;
  v49 = v9;
  v48 = 2677;
  if (!v9)
  {
    _dispatch_abort(v48, v49);
  }
}

void _dispatch_disk_dispose(uint64_t a1)
{
  if (*(a1 + 112))
  {
    *(*(a1 + 112) + 120) = *(a1 + 120);
  }

  **(a1 + 120) = *(a1 + 112);
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  if (*(a1 + 48))
  {
    _dispatch_abort(1792, *(a1 + 48) == 0);
  }

  for (i = 0; i < *(a1 + 128); ++i)
  {
    if (*(a1 + 136 + 8 * i))
    {
      _dispatch_abort(1795, *(a1 + 136 + 8 * i) == 0);
    }
  }

  dispatch_release(*(a1 + 72));
}

void ___dispatch_io_init_block_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v2 = *(a1 + 40);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = ___dispatch_io_init_block_invoke_2;
  v8 = &__block_descriptor_tmp_102;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v9 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 40));
}

uint64_t ___dispatch_io_init_block_invoke_2(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: cleanup handler invoke: err %d", 270, v1, *(a1 + 40), *(a1 + 48));
  return (*(*(a1 + 32) + 16))();
}

void ___dispatch_io_stop_block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 56);
  block = _NSConcreteStackBlock;
  v4 = 0x40000000;
  v5 = 0;
  v6 = ___dispatch_io_stop_block_invoke_2;
  v7 = &__block_descriptor_tmp_115;
  v8 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
}

void ___dispatch_io_stop_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v19 = a1;
  v18 = *(a1 + 32);
  _dispatch_object_debug(v18, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_io_stop_block_invoke_2");
  v17 = *(*(a1 + 32) + 112);
  if (v17)
  {
    v8 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tchannel[%p]: stop cleanup", 744, v8, *(a1 + 32));
    _dispatch_fd_entry_cleanup_operations(v17, *(a1 + 32));
    if ((*(*(a1 + 32) + 120) & 1) == 0)
    {
      if (*(v17 + 8))
      {
        **(v17 + 8) = 0;
      }

      *(*(a1 + 32) + 112) = 0;
      _dispatch_fd_entry_release(v17);
    }
  }

  else if (*(*(a1 + 32) + 124) != -1)
  {
    v16 = *(a1 + 32);
    _dispatch_retain(v16);
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = 0;
    v13 = ___dispatch_io_stop_block_invoke_3;
    v14 = &__block_descriptor_tmp_114;
    v15 = *(a1 + 32);
    dispatch_channel_async(_dispatch_io_fds_lockq, &block);
  }

  _dispatch_release(*(a1 + 32));
}

void _dispatch_fd_entry_cleanup_operations(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  if (*(a1 + 56))
  {
    if (v23)
    {
      v22 = v23;
      _dispatch_retain(v23);
    }

    _dispatch_fd_entry_retain(v24);
    v2 = *(*(v24 + 56) + 72);
    block = _NSConcreteStackBlock;
    v16 = 0x40000000;
    v17 = 0;
    v18 = ___dispatch_fd_entry_cleanup_operations_block_invoke;
    v19 = &__block_descriptor_tmp_117;
    v20 = v24;
    v21 = v23;
    dispatch_channel_async(v2, &block);
  }

  else
  {
    for (i = 0; i < 2; ++i)
    {
      v13 = *(v24 + 40 + 8 * i);
      if (v13)
      {
        if (v23)
        {
          v12 = v23;
          _dispatch_retain(v23);
        }

        _dispatch_fd_entry_retain(v24);
        v3 = *v13;
        v4 = _NSConcreteStackBlock;
        v5 = 0x40000000;
        v6 = 0;
        v7 = ___dispatch_fd_entry_cleanup_operations_block_invoke_2;
        v8 = &__block_descriptor_tmp_118;
        v9 = v13;
        v10 = v23;
        v11 = v24;
        dispatch_channel_async(v3, &v4);
      }
    }
  }
}

void ___dispatch_io_stop_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(*(a1 + 32), "%s", a3, a4, a5, a6, a7, a8, "_dispatch_io_stop_block_invoke_3");
  v8 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: stop cleanup after close", 759, v8, *(a1 + 32));
  for (i = _dispatch_io_fds[*(*(a1 + 32) + 124) & 0x3FLL]; i; i = *(i + 112))
  {
    if (*i == *(*(a1 + 32) + 124))
    {
      _dispatch_fd_entry_cleanup_operations(i, *(a1 + 32));
      break;
    }
  }

  _dispatch_release(*(a1 + 32));
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke(uint64_t a1)
{
  _dispatch_disk_cleanup_inactive_operations(*(*(a1 + 32) + 56), *(a1 + 40));
  _dispatch_fd_entry_release(*(a1 + 32));
  if (*(a1 + 40))
  {
    _dispatch_release(*(a1 + 40));
  }
}

void ___dispatch_fd_entry_cleanup_operations_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_stream_cleanup_operations(a1[4], a1[5], a3, a4, a5, a6, a7, a8);
  _dispatch_fd_entry_release(a1[6]);
  if (a1[5])
  {
    _dispatch_release(a1[5]);
  }
}

void _dispatch_stream_cleanup_operations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  for (i = *(a1 + 48); ; i = v10)
  {
    v9 = 0;
    if (i)
    {
      v10 = *(i + 240);
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    if (!a2 || *(i + 136) == a2)
    {
      _dispatch_stream_complete_operation(a1, i, a3, a4, a5, a6, a7, a8);
    }
  }

  for (j = *(a1 + 32); ; j = v10)
  {
    v8 = 0;
    if (j)
    {
      v10 = *(j + 240);
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      break;
    }

    if (!a2 || *(j + 136) == a2)
    {
      _dispatch_stream_complete_operation(a1, j, a3, a4, a5, a6, a7, a8);
    }
  }

  if ((*(a1 + 24) & 1) != 0 && !_dispatch_stream_operation_avail(a1))
  {
    dispatch_suspend(*(a1 + 8));
    *(a1 + 24) = 0;
  }
}

void _dispatch_disk_cleanup_specified_operations(void *result, uint64_t a2, char a3)
{
  v11 = 0;
  for (i = result[6]; ; i = v11)
  {
    v10 = 0;
    if (i)
    {
      v11 = *(i + 240);
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      break;
    }

    if (((a3 & 1) == 0 || (*(i + 160) & 1) == 0) && (!a2 || *(i + 136) == a2))
    {
      v3 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: cleanup: disk %p", 1985, v3, i, result);
      _dispatch_disk_complete_operation(result, i, v4, v5, v6, v7, v8, v9);
    }
  }
}

void _dispatch_disk_complete_operation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a2, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_disk_complete_operation");
  v8 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: complete: disk %p", 1869, v8, a2, a1);
  if (a1[8] == a2)
  {
    a1[8] = **(*(a2 + 248) + 8);
  }

  if (!*(a2 + 64))
  {
    v10 = *(a2 + 256);
    if (v10)
    {
      *(*(a2 + 256) + 264) = *(a2 + 264);
    }

    else
    {
      *(*(a2 + 144) + 104) = *(a2 + 264);
    }

    **(a2 + 264) = *(a2 + 256);
    *(a2 + 256) = -1;
    *(a2 + 264) = -1;
    if (v10)
    {
      *(v10 + 240) = 0;
      *(v10 + 248) = a1[7];
      *a1[7] = v10;
      a1[7] = v10 + 240;
    }
  }

  if (*(a2 + 240))
  {
    *(*(a2 + 240) + 248) = *(a2 + 248);
  }

  else
  {
    a1[7] = *(a2 + 248);
  }

  **(a2 + 248) = *(a2 + 240);
  *(a2 + 240) = -1;
  *(a2 + 248) = -1;
  if (*(a2 + 152))
  {
    dispatch_source_cancel(*(a2 + 152));
  }

  v9 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: release -> %d (disk complete)", 1888, v9, a2, *(a2 + 8));
  _dispatch_release(a2);
}

void _dispatch_stream_complete_operation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _dispatch_object_debug(a2, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_stream_complete_operation");
  v8 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: complete: stream %p", 1851, v8, a2, a1);
  if (*(a2 + 240))
  {
    *(*(a2 + 240) + 248) = *(a2 + 248);
  }

  else
  {
    a1[2 * *(a2 + 64) + 5] = *(a2 + 248);
  }

  **(a2 + 248) = *(a2 + 240);
  *(a2 + 240) = -1;
  *(a2 + 248) = -1;
  if (a2 == a1[2])
  {
    a1[2] = 0;
  }

  if (*(a2 + 152))
  {
    dispatch_source_cancel(*(a2 + 152));
  }

  v9 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: release -> %d (stream complete)", 1860, v9, a2, *(a2 + 8));
  _dispatch_release(a2);
}

BOOL _dispatch_stream_operation_avail(uint64_t a1)
{
  v2 = 1;
  if (!*(a1 + 48))
  {
    return *(a1 + 32) != 0;
  }

  return v2;
}

void ___dispatch_operation_create_block_invoke(uint64_t a1)
{
  v15 = a1;
  v14 = a1;
  v2 = *(a1 + 40);
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = ___dispatch_operation_create_block_invoke_2;
  v8 = &__block_descriptor_tmp_127;
  v10 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = *(a1 + 68);
  v11 = *(a1 + 56);
  v9 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
  _dispatch_release(*(a1 + 40));
}

void ___dispatch_operation_create_block_invoke_2(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tchannel[%p]: IO handler invoke: err %d", 1081, v1, *(a1 + 48), *(a1 + 60));
  (*(*(a1 + 32) + 16))();
  _dispatch_release(*(a1 + 48));
  dispatch_release(*(a1 + 40));
}

void _dispatch_stream_enqueue_operation(dispatch_queue_t *a1, void *a2, dispatch_object_s *a3)
{
  if (_dispatch_operation_should_enqueue(a2, *a1, a3))
  {
    _dispatch_object_debug(a2, "%s", v3, v4, v5, v6, v7, v8, "_dispatch_stream_enqueue_operation");
    v9 = !_dispatch_stream_operation_avail(a1);
    a2[30] = 0;
    a2[31] = a1[2 * a2[8] + 5];
    *a1[2 * a2[8] + 5] = a2;
    a1[2 * a2[8] + 5] = (a2 + 30);
    if (v9)
    {
      dispatch_channel_async_f(*a1, *a1, _dispatch_stream_queue_handler);
    }
  }
}

void _dispatch_disk_enqueue_operation(uint64_t a1, uint64_t *a2, dispatch_object_s *a3)
{
  if (_dispatch_operation_should_enqueue(a2, *(a1 + 72), a3))
  {
    _dispatch_object_debug(a2, "%s", v3, v4, v5, v6, v7, v8, "_dispatch_disk_enqueue_operation");
    if (a2[8])
    {
      a2[30] = 0;
      a2[31] = *(a1 + 56);
      **(a1 + 56) = a2;
      *(a1 + 56) = a2 + 30;
    }

    else
    {
      if (!*(a2[18] + 96))
      {
        a2[30] = 0;
        a2[31] = *(a1 + 56);
        **(a1 + 56) = a2;
        *(a1 + 56) = a2 + 30;
      }

      a2[32] = 0;
      a2[33] = *(a2[18] + 104);
      **(a2[18] + 104) = a2;
      *(a2[18] + 104) = a2 + 32;
    }

    _dispatch_disk_handler(a1);
  }
}

uint64_t _dispatch_operation_should_enqueue(uint64_t a1, dispatch_queue_s *a2, dispatch_object_s *a3)
{
  v3 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: enqueue", 1203, v3, a1);
  dispatch_retain(a3);
  *(a1 + 232) = a3;
  error = _dispatch_io_get_error(a1, 0, 1);
  if (error)
  {
    *(a1 + 120) = error;
    v4 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\top[%p]: release -> %d, err %d", 1210, v4, a1, *(a1 + 8), error);
    _dispatch_release(a1);
    v11 = 0;
  }

  else
  {
    if (*(a1 + 88))
    {
      object = _dispatch_operation_timer(a2, a1);
      dispatch_resume(object);
    }

    v11 = 1;
  }

  return v11 & 1;
}

void _dispatch_stream_queue_handler(dispatch_object_s *a1)
{
  context = dispatch_get_context(a1);
  if (context)
  {
    _dispatch_stream_handler(context);
  }
}

uint64_t _dispatch_operation_timer(dispatch_queue_s *a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  if (!*(a2 + 152))
  {
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v13);
    v2 = dispatch_time(0, *(v12 + 88));
    dispatch_source_set_timer(v11, v2, *(v12 + 88), 0);
    handler = _NSConcreteStackBlock;
    v5 = 0x40000000;
    v6 = 0;
    v7 = ___dispatch_operation_timer_block_invoke;
    v8 = &__block_descriptor_tmp_141;
    v9 = v11;
    v10 = v12;
    dispatch_source_set_event_handler(v11, &handler);
    *(v12 + 152) = v11;
  }

  return *(v12 + 152);
}

void ___dispatch_operation_timer_block_invoke(uint64_t a1)
{
  if (!dispatch_source_testcancel(*(a1 + 32)))
  {
    v8 = (*(*(a1 + 40) + 96) & 1) != 0;
    if (*(*(a1 + 40) + 160) & 1) != 0 && (*(*(a1 + 40) + 96))
    {
      *(*(a1 + 40) + 184) = v8;
    }

    else
    {
      _dispatch_operation_deliver_data(*(a1 + 40), v8, v1, v2, v3, v4, v5, v6);
    }
  }
}

void _dispatch_stream_handler(void *a1)
{
  v37 = a1;
  v36 = a1;
  for (i = 0; ; _dispatch_stream_complete_operation(v36, i, v2, v3, v4, v5, v6, v7))
  {
    i = _dispatch_stream_pick_next_operation(v36, v36[2]);
    if (!i)
    {
      v1 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tno operation found: stream %p", 2072, v1, v36);
      return;
    }

    error = _dispatch_io_get_error(i, 0, 1);
    if (!error)
    {
      break;
    }

    *(i + 30) = error;
  }

  v36[2] = i;
  v8 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: stream handler", 2082, v8, i);
  v33 = i[18];
  _dispatch_fd_entry_retain(v33);
  if (!i[27] && (byte_E4280 & 1) != 0)
  {
    v9 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\top[%p]: initial delivery", 2088, v9, i);
    _dispatch_operation_deliver_data(i, 1, v10, v11, v12, v13, v14, v15);
  }

  v32 = _dispatch_operation_perform(i);
  v31 = -1;
  switch(v32)
  {
    case 1:
      goto LABEL_22;
    case 2:
      v31 = 0;
      goto LABEL_18;
    case 3:
LABEL_18:
      if (v31)
      {
        v22 = 9;
      }

      else
      {
        v22 = 0;
      }

      v31 = v22;
      _dispatch_operation_deliver_data(i, v22, v16, v17, v18, v19, v20, v21);
LABEL_22:
      if (v31)
      {
        _dispatch_stream_complete_operation(v36, i, v16, v17, v18, v19, v20, v21);
      }

      if (_dispatch_stream_operation_avail(v36))
      {
        dispatch_channel_async_f(*v36, *v36, _dispatch_stream_queue_handler);
      }

      break;
    case 4:
      _dispatch_stream_complete_operation(v36, i, v16, v17, v18, v19, v20, v21);
LABEL_28:
      if (_dispatch_stream_operation_avail(v36))
      {
        *(v36 + 24) = 1;
        v30 = _dispatch_stream_source(v36, i);
        dispatch_resume(v30);
      }

      break;
    case 5:
      goto LABEL_28;
    case 6:
      _dispatch_stream_cleanup_operations(v36, i[17], v16, v17, v18, v19, v20, v21);
      break;
    case 7:
      _dispatch_fd_entry_retain(v33);
      v23 = *(v33 + 72);
      block = _NSConcreteStackBlock;
      v25 = 0x40000000;
      v26 = 0;
      v27 = ___dispatch_stream_handler_block_invoke;
      v28 = &__block_descriptor_tmp_145;
      v29 = v33;
      dispatch_channel_async(v23, &block);
      break;
  }

  _dispatch_fd_entry_release(v33);
}

uint64_t _dispatch_stream_pick_next_operation(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    if (*(a2 + 64))
    {
      if (*(a2 + 64) == 1)
      {
        v4 = *(a2 + 240);
        if (!v4)
        {
          return *(a1 + 48);
        }

        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return a2;
    }
  }

  else if (_dispatch_stream_operation_avail(a1))
  {
    if (*(a1 + 32))
    {
      return *(a1 + 32);
    }

    if (*(a1 + 48))
    {
      return *(a1 + 48);
    }

    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_operation_perform(char *a1)
{
  v30 = a1;
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: perform", 2328, v1, v30);
  error = _dispatch_io_get_error(v30, 0, 1);
  if (error)
  {
    goto LABEL_44;
  }

  v28 = v30;
  _dispatch_object_debug(v30, "%s", v2, v3, v4, v5, v6, v7, "_dispatch_operation_perform");
  if (!v30[22])
  {
    v27 = v30[10];
    v26 = dispatch_io_defaults;
    if (*(v30 + 14))
    {
      if (*(v30 + 14) == 1)
      {
        if (v26 > v27)
        {
          v26 = v27;
        }

        v30[24] = 0;
        v9 = v30[29];
        applier = _NSConcreteStackBlock;
        v19 = 0x40000000;
        v20 = 0;
        v21 = ___dispatch_operation_perform_block_invoke;
        v22 = &__block_descriptor_tmp_149;
        v23 = v30;
        v24 = v26;
        dispatch_data_apply(v9, &applier);
        if (v30[24] > v27)
        {
          v30[24] = v27;
        }

        data = dispatch_data_create_subrange(v30[29], 0, v30[24]);
        v30[28] = dispatch_data_create_map(data, v30 + 22, 0);
        dispatch_release(data);
        v10 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: buffer mapped", 2396, v10, v30);
      }
    }

    else
    {
      size = dispatch_data_get_size(v30[29]);
      if (size)
      {
        v35 = size < v27;
        v34 = 2342;
        if (size >= v27)
        {
          _dispatch_abort(v34, 0);
        }

        v27 -= size;
      }

      if (v27 > v26)
      {
        v27 = v26;
      }

      if (v30[14] == -1)
      {
        v30[24] = v27;
      }

      else
      {
        v30[24] = v30[14] - v30[27];
        if (v30[24] > v27)
        {
          v30[24] = v27;
        }
      }

      error = malloc_type_posix_memalign();
      if (error)
      {
        goto LABEL_44;
      }

      v8 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: buffer allocated", 2370, v8, v30);
    }
  }

  if (*v30[18] == -1)
  {
    error = _dispatch_fd_entry_open(v30[18], v30[17]);
    if (error)
    {
LABEL_44:
      if (error == 35)
      {
        v33 = *(v30[18] + 56) == 0;
        v32 = 2583;
        if (!v33)
        {
          _dispatch_abort(v32, 0);
        }

        v12 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: performed: EAGAIN/EWOULDBLOCK", 2584, v12, v30);
        if (!*(v30 + 14) && v30[27] && v30[17] == *(v30[18] + 88))
        {
          return 4;
        }

        else
        {
          return 5;
        }
      }

      else
      {
        v13 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: performed: err %d", 2592, v13, v30, error);
        *(v30 + 30) = error;
        if (error == 9)
        {
          v14 = 0;
          atomic_compare_exchange_strong_explicit((v30[18] + 24), &v14, 9u, memory_order_relaxed, memory_order_relaxed);
          return 7;
        }

        else if (error == 89)
        {
          return 6;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  NOCANCEL = -1;
  while (1)
  {
    if (*(v30 + 14))
    {
      if (*(v30 + 14) == 1)
      {
        if (v30[8])
        {
          if (v30[8] == 1)
          {
            NOCANCEL = pwrite_NOCANCEL();
          }
        }

        else
        {
          NOCANCEL = write_NOCANCEL();
        }
      }
    }

    else if (v30[8])
    {
      if (v30[8] == 1)
      {
        NOCANCEL = pread_NOCANCEL();
      }
    }

    else
    {
      NOCANCEL = read_NOCANCEL();
    }

    if (NOCANCEL != -1)
    {
      break;
    }

    v36 = 1;
    v37 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    error = **(StatusReg + 8);
    if (error != 4)
    {
      goto LABEL_44;
    }
  }

  if (NOCANCEL)
  {
    v30[25] += NOCANCEL;
    v30[27] += NOCANCEL;
    if (v30[27] == v30[14])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v11 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\top[%p]: performed: EOF", 2568, v11, v30);
    return 3;
  }
}

dispatch_queue_t _dispatch_stream_source(dispatch_queue_t *a1, _DWORD **a2)
{
  v17 = a1;
  v16 = a2;
  if (a1[1])
  {
    return v17[1];
  }

  v15 = *v16[18];
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: stream source create", 2015, v2, v16);
  v14 = 0;
  if (!*(v16 + 14))
  {
    v14 = dispatch_source_create(&_dispatch_source_type_read, v15, 0, *v17);
LABEL_10:
    v13 = v14;
    dispatch_set_context(v14, v17);
    dispatch_source_set_event_handler_f(v14, _dispatch_stream_source_handler);
    v12 = *(v16[18] + 8);
    v5 = _NSConcreteStackBlock;
    v6 = 0x40000000;
    v7 = 0;
    v8 = ___dispatch_stream_source_block_invoke;
    v9 = &__block_descriptor_tmp_156;
    v10 = v16;
    v11 = v12;
    dispatch_source_set_mandatory_cancel_handler(v14, &v5);
    v17[1] = v14;
    return v17[1];
  }

  if (*(v16 + 14) == 1)
  {
    v14 = dispatch_source_create(&_dispatch_source_type_write, v15, 0, *v17);
    goto LABEL_10;
  }

  v3 = *(v16 + 14) < 2u;
  v20 = v3;
  v19 = 2024;
  if (!v3)
  {
    _dispatch_abort(v19, v20);
  }

  return 0;
}

BOOL ___dispatch_operation_perform_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 32) + 192) + a5;
  if (!*(*(a1 + 32) + 192) || v6 <= *(a1 + 40))
  {
    *(*(a1 + 32) + 192) = v6;
  }

  return v6 < *(a1 + 40);
}

void _dispatch_stream_source_handler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 8));
  *(a1 + 24) = 0;
  _dispatch_stream_handler(a1);
}

void ___dispatch_stream_source_block_invoke(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: stream source cancel", 2034, v1, *(a1 + 32));
  dispatch_resume(*(a1 + 40));
}

void _dispatch_disk_handler(uint64_t a1)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tdisk[%p]: disk handler", 2146, v1, a1);
    v19 = *(a1 + 80);
    v18 = *(a1 + 88);
    if (v18 <= v19)
    {
      v18 += *(a1 + 128);
    }

    while (v19 <= v18)
    {
      if (*(a1 + 136 + 8 * (v19 % *(a1 + 128))))
      {
        break;
      }

      operation = _dispatch_disk_pick_next_operation(a1);
      if (!operation)
      {
        break;
      }

      error = _dispatch_io_get_error(operation, 0, 1);
      if (error)
      {
        *(operation + 120) = error;
        _dispatch_disk_complete_operation(a1, operation, v2, v3, v4, v5, v6, v7);
      }

      else
      {
        _dispatch_retain(operation);
        v8 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: retain -> %d", 2162, v8, operation, *(operation + 8));
        *(a1 + 136 + 8 * (v19 % *(a1 + 128))) = operation;
        *(operation + 160) = 1;
        v9 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: activate: disk %p", 2165, v9, operation, a1);
        _dispatch_object_debug(operation, "%s", v10, v11, v12, v13, v14, v15, "_dispatch_disk_handler");
        ++v19;
      }
    }

    *(a1 + 80) = v19 % *(a1 + 128);
    v21 = *(a1 + 136 + 8 * *(a1 + 88));
    if (v21)
    {
      *(a1 + 108) = 1;
      v16 = _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\top[%p]: async perform: disk %p", 2177, v16, v21, a1);
      dispatch_channel_async_f(v21[3], a1, _dispatch_disk_perform);
    }
  }
}

uint64_t _dispatch_disk_pick_next_operation(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    v3 = *(a1 + 64);
    do
    {
      v3 = *(v3 + 240);
      if (!v3)
      {
        v3 = *(a1 + 48);
      }

      v2 = 0;
      if (*(v3 + 160))
      {
        v2 = v3 != *(a1 + 64);
      }
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (*(v3 + 160))
  {
    return 0;
  }

  *(a1 + 64) = v3;
  return v3;
}

void _dispatch_disk_perform(void *a1)
{
  v26 = a1;
  v25 = a1;
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tdisk[%p]: disk perform", 2186, v1, v25);
  v24 = dispatch_io_defaults;
  v23 = 0;
  v22 = v25[12];
  v21 = v25[10];
  if (v21 <= v22)
  {
    v21 += v25[16];
  }

  while (1)
  {
    v23 = v25[v22 % v25[16] + 17];
    if (!v23)
    {
      break;
    }

    if (*(v23 + 14) != 1 && (*v23[18] != -1 || !_dispatch_fd_entry_open(v23[18], v23[17])))
    {
      if (!v23[27] && (byte_E4280 & 1) != 0)
      {
        v3 = _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\top[%p]: initial delivery", 2211, v3, v23);
        _dispatch_operation_deliver_data(v23, 1, v4, v5, v6, v7, v8, v9);
      }

      if (v21 - v22 == 1 && !v25[v25[10] + 17] && !v23[21])
      {
        v24 *= 2;
      }

      _dispatch_operation_advise(v23, v24);
    }

    if (++v22 >= v21)
    {
      goto LABEL_19;
    }
  }

  v2 = v22 % v25[16] == v25[10];
  v28 = v2;
  v27 = 2197;
  if (!v2)
  {
    _dispatch_abort(v27, v28);
  }

LABEL_19:
  v25[12] = v22 % v25[16];
  v23 = v25[v25[11] + 17];
  v20 = _dispatch_operation_perform(v23);
  v25[v25[11] + 17] = 0;
  v25[11] = (v25[11] + 1) % v25[16];
  v10 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: async perform completion: disk %p", 2227, v10, v23, v25);
  v11 = v25[9];
  block = _NSConcreteStackBlock;
  v13 = 0x40000000;
  v14 = 0;
  v15 = ___dispatch_disk_perform_block_invoke;
  v16 = &__block_descriptor_tmp_166;
  v17 = v23;
  v19 = v20;
  v18 = v25;
  dispatch_channel_async(v11, &block);
}

void _dispatch_operation_advise(uint64_t *a1, uint64_t a2)
{
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: advise", 2270, v2, a1);
  if (!_dispatch_io_get_error(a1, 0, 1) && a1[21] <= (a1[13] + a1[27] + a2 + vm_page_size))
  {
    _dispatch_object_debug(a1, "%s", v3, v4, v5, v6, v7, v8, "_dispatch_operation_advise");
    v12 = a2;
    if (!a1[21])
    {
      a1[21] = a1[13];
      v11 = (a1[13] + a2) % vm_page_size;
      if (v11)
      {
        v10 = vm_page_size - v11;
      }

      else
      {
        v10 = 0;
      }

      v12 = a2 + v10;
    }

    a1[21] += v12;
    while (1)
    {
      v9 = fcntl_NOCANCEL() == -1 ? **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) : 0;
      if (!v9)
      {
        break;
      }

      if (v9 != 4)
      {
        if (v9 != 27 && v9 != 45)
        {
          _dispatch_bug(2308, v9);
        }

        return;
      }
    }
  }
}

void ___dispatch_disk_perform_block_invoke(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: perform completion", 2229, v1, *(a1 + 32));
  v16 = *(a1 + 48);
  switch(v16)
  {
    case 1:
      _dispatch_disk_complete_operation(*(a1 + 40), *(a1 + 32), v2, v3, v4, v5, v6, v7);
      break;
    case 2:
      _dispatch_operation_deliver_data(*(a1 + 32), 0, v2, v3, v4, v5, v6, v7);
      break;
    case 3:
      _dispatch_operation_deliver_data(*(a1 + 32), 9, v2, v3, v4, v5, v6, v7);
      _dispatch_disk_complete_operation(*(a1 + 40), *(a1 + 32), v8, v9, v10, v11, v12, v13);
      break;
    case 6:
      _dispatch_disk_cleanup_operations(*(a1 + 40), *(*(a1 + 32) + 136));
      break;
    case 7:
      _dispatch_disk_cleanup_operations(*(a1 + 40), 0);
      break;
    default:
      if (!*(a1 + 48))
      {
        _dispatch_abort(2248, *(a1 + 48));
      }

      break;
  }

  v14 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: deactivate: disk %p", 2251, v14, *(a1 + 32), *(a1 + 40));
  *(*(a1 + 32) + 160) = 0;
  *(*(a1 + 40) + 108) = 0;
  _dispatch_disk_handler(*(a1 + 40));
  v15 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: release -> %d (disk perform complete)", 2259, v15, *(a1 + 32), *(*(a1 + 32) + 8));
  _dispatch_release(*(a1 + 32));
}

void ___dispatch_fd_entry_init_async_block_invoke(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  i = 0;
  v11 = *(a1 + 40) & 0x3FLL;
  for (i = _dispatch_io_fds[v11]; i; i = i[14])
  {
    if (*i == *(a1 + 40))
    {
      _dispatch_fd_entry_retain(i);
      break;
    }
  }

  if (!i)
  {
    i = _dispatch_fd_entry_create_with_fd(*(a1 + 40), v11);
  }

  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: init", 1400, v1, i);
  v2 = i[9];
  block = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = ___dispatch_fd_entry_init_async_block_invoke_2;
  v8 = &__block_descriptor_tmp_172;
  v10 = i;
  v9 = *(a1 + 32);
  dispatch_channel_async(v2, &block);
}

void *_dispatch_fd_entry_create_with_fd(int a1, uint64_t a2)
{
  v30 = a1;
  v29 = a2;
  v28 = _dispatch_fd_entry_create(_dispatch_io_fds_lockq);
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: create: fd %d", 1431, v2, v28, v30);
  *v28 = v30;
  v3 = _dispatch_io_fds[v29];
  v28[14] = v3;
  if (v3)
  {
    *(_dispatch_io_fds[v29] + 120) = v28 + 14;
  }

  _dispatch_io_fds[v29] = v28;
  v28[15] = &_dispatch_io_fds[v29];
  v28[9] = dispatch_queue_create("com.apple.libdispatch-io.barrierq", 0);
  v28[10] = dispatch_group_create();
  v4 = v28[9];
  block = _NSConcreteStackBlock;
  v22 = 0x40000000;
  v23 = 0;
  v24 = ___dispatch_fd_entry_create_with_fd_block_invoke;
  v25 = &__block_descriptor_tmp_179;
  v26 = v28;
  v27 = v30;
  dispatch_channel_async(v4, &block);
  v5 = v28[8];
  v15 = _NSConcreteStackBlock;
  v16 = 0x40000000;
  v17 = 0;
  v18 = ___dispatch_fd_entry_create_with_fd_block_invoke_3;
  v19 = &__block_descriptor_tmp_182;
  v20 = v28;
  dispatch_channel_async(v5, &v15);
  v6 = v28[8];
  v8 = _NSConcreteStackBlock;
  v9 = 0x40000000;
  v10 = 0;
  v11 = ___dispatch_fd_entry_create_with_fd_block_invoke_5;
  v12 = &__block_descriptor_tmp_186;
  v13 = v28;
  v14 = v30;
  dispatch_channel_async(v6, &v8);
  return v28;
}

void ___dispatch_fd_entry_init_async_block_invoke_2(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: init completion", 1402, v1, *(a1 + 40));
  (*(*(a1 + 32) + 16))();
  _dispatch_fd_entry_release(*(a1 + 40));
}

uint64_t _dispatch_fd_entry_create(dispatch_queue_s *a1)
{
  v2 = _dispatch_calloc_typed(1, 128, 0x10A00401D52844BLL);
  *(v2 + 64) = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.closeq", 0, a1);
  _dispatch_fd_entry_retain(v2);
  return v2;
}

void ___dispatch_fd_entry_create_with_fd_block_invoke(uint64_t a1)
{
  v31 = a1;
  v30 = a1;
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: stat", 1459, v1, *(a1 + 32));
  v29 = 0;
  v28 = 0;
  v27 = -1;
  memset(&__b, 0, sizeof(__b));
  while (1)
  {
    if (fstat(*(a1 + 40), &__b) == -1)
    {
      v45 = 1;
      v56 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = **(StatusReg + 8);
    }

    else
    {
      v7 = 0;
    }

    v29 = v7;
    if (!v7)
    {
      break;
    }

    if (v7 != 4)
    {
      *(*(a1 + 32) + 24) = v29;
      return;
    }
  }

  *(*(a1 + 32) + 32) = __b.st_dev;
  *(*(a1 + 32) + 36) = __b.st_mode;
  _dispatch_object_finalize();
  while (1)
  {
    v28 = fcntl_NOCANCEL();
    if (v28 == -1)
    {
      v46 = 1;
      v55 = 1;
      v58 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = **(v58 + 8);
    }

    else
    {
      v6 = 0;
    }

    v29 = v6;
    if (!v6)
    {
      break;
    }

    if (v6 != 4)
    {
      v25 = v29;
      v41 = v29;
      v40 = 1471;
      if (v29)
      {
        _dispatch_bug(v40, v41);
      }

      v24 = v25;
      break;
    }
  }

  if ((__b.st_mode & 0xF000) == 0x1000)
  {
    while (1)
    {
      v27 = fcntl_NOCANCEL();
      if (v27 == -1)
      {
        v47 = 1;
        v54 = 1;
        v59 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v5 = **(v59 + 8);
      }

      else
      {
        v5 = 0;
      }

      v29 = v5;
      if (!v5)
      {
        break;
      }

      if (v5 != 4)
      {
        v23 = v29;
        v39 = v29;
        v38 = 1477;
        if (v29)
        {
          _dispatch_bug(v38, v39);
        }

        v22 = v23;
        break;
      }
    }

    if (v27 != -1)
    {
      while (1)
      {
        v27 = fcntl_NOCANCEL();
        if (v27 == -1)
        {
          v48 = 1;
          v53 = 1;
          v60 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v4 = **(v60 + 8);
        }

        else
        {
          v4 = 0;
        }

        v29 = v4;
        if (!v4)
        {
          break;
        }

        if (v4 != 4)
        {
          v27 = -1;
          v21 = v29;
          v37 = v29;
          v36 = 1484;
          if (v29)
          {
            _dispatch_bug(v36, v37);
          }

          v20 = v21;
          break;
        }
      }
    }
  }

  if ((__b.st_mode & 0xF000) == 0x8000)
  {
    if (v28 != -1)
    {
      while (1)
      {
        if (fcntl_NOCANCEL() == -1)
        {
          v49 = 1;
          v52 = 1;
          v61 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v3 = **(v61 + 8);
        }

        else
        {
          v3 = 0;
        }

        v29 = v3;
        if (!v3)
        {
          break;
        }

        if (v3 != 4)
        {
          v28 = -1;
          v19 = v29;
          v35 = v29;
          v34 = 1496;
          if (v29)
          {
            _dispatch_bug(v34, v35);
          }

          v18 = v19;
          break;
        }
      }
    }

    st_dev_high = HIBYTE(__b.st_dev);
    object = *(*(a1 + 32) + 72);
    dispatch_suspend(object);
    v44 = &_dispatch_io_init_pred;
    v43 = 0;
    v42 = _dispatch_io_queues_init;
    if (_dispatch_io_init_pred != -1)
    {
      dispatch_once_f(v44, v43, v42);
    }

    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = 0;
    v12 = ___dispatch_fd_entry_create_with_fd_block_invoke_2;
    v13 = &__block_descriptor_tmp_178;
    v14 = *(a1 + 32);
    v15 = st_dev_high;
    dispatch_channel_async(_dispatch_io_devs_lockq, &block);
  }

  else
  {
    if (v28 != -1)
    {
      while (1)
      {
        if (fcntl_NOCANCEL() == -1)
        {
          v50 = 1;
          v51 = 1;
          v62 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v2 = **(v62 + 8);
        }

        else
        {
          v2 = 0;
        }

        v29 = v2;
        if (!v2)
        {
          break;
        }

        if (v2 != 4)
        {
          v28 = -1;
          v33 = v29;
          v32 = 1516;
          if (v29)
          {
            _dispatch_bug(v32, v33);
          }

          break;
        }
      }
    }

    _dispatch_stream_init(*(a1 + 32), &off_E0600);
  }

  *(*(a1 + 32) + 16) = v28;
  *(*(a1 + 32) + 20) = v27;
}

uint64_t _dispatch_disk_init(void *a1, int a2)
{
  v5 = a2 & 0x3F;
  for (i = _dispatch_io_devs[v5]; i; i = i[14])
  {
    if (*(i + 26) == a2)
    {
      result = _dispatch_retain(i);
      goto LABEL_9;
    }
  }

  v4 = qword_E4278;
  i = _dispatch_object_alloc(_OS_dispatch_disk_vtable, 8 * qword_E4278 + 136);
  i[2] = -1985229329;
  *(i + 3) = 0;
  i[16] = v4;
  i[3] = &off_E0600;
  *(i + 26) = a2;
  i[6] = 0;
  i[7] = i + 6;
  i[8] = i[6];
  __snprintf_chk(v9, 0x2DuLL, 0, 0x2DuLL, "com.apple.libdispatch-io.deviceq.%d", a2);
  result = dispatch_queue_create(v9, 0);
  i[9] = result;
  v3 = _dispatch_io_devs[v5];
  i[14] = v3;
  if (v3)
  {
    *(_dispatch_io_devs[v5] + 120) = i + 14;
  }

  _dispatch_io_devs[v5] = i;
  i[15] = &_dispatch_io_devs[v5];
LABEL_9:
  a1[7] = i;
  a1[12] = 0;
  a1[13] = a1 + 12;
  return result;
}

void _dispatch_stream_init(uint64_t a1, dispatch_queue_s *a2)
{
  for (i = 0; i < 2; ++i)
  {
    context = _dispatch_calloc_typed(1, 64, 0x10A0040C5C49CBALL);
    *context = dispatch_queue_create_with_target_V2("com.apple.libdispatch-io.streamq", 0, a2);
    dispatch_set_context(*context, context);
    context[6] = 0;
    context[7] = (context + 6);
    context[4] = 0;
    context[5] = (context + 4);
    *(a1 + 40 + 8 * i) = context;
  }
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_3(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  if (*(*(a1 + 32) + 56))
  {
    v9 = *(*(a1 + 32) + 56);
    block = _NSConcreteStackBlock;
    v4 = 0x40000000;
    v5 = 0;
    v6 = ___dispatch_fd_entry_create_with_fd_block_invoke_4;
    v7 = &__block_descriptor_tmp_181;
    v8 = v9;
    dispatch_channel_async(_dispatch_io_devs_lockq, &block);
  }

  else
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tfd_entry[%p]: close queue cleanup", 1533, v1, *(a1 + 32));
    for (i = 0; i < 2; ++i)
    {
      _dispatch_stream_dispose(*(a1 + 32), i);
    }
  }

  if (*(*(a1 + 32) + 112))
  {
    *(*(*(a1 + 32) + 112) + 120) = *(*(a1 + 32) + 120);
  }

  **(*(a1 + 32) + 120) = *(*(a1 + 32) + 112);
  *(*(a1 + 32) + 112) = -1;
  *(*(a1 + 32) + 120) = -1;
}

void _dispatch_stream_dispose(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40 + 8 * a2);
  if (v2)
  {
    if (*(v2 + 4))
    {
      _dispatch_abort(1739, *(v2 + 4) == 0);
    }

    if (*(v2 + 6))
    {
      _dispatch_abort(1740, *(v2 + 6) == 0);
    }

    if (*(v2 + 1))
    {
      _dispatch_fd_entry_retain(a1);
      dispatch_source_cancel(*(v2 + 1));
      dispatch_resume(*(v2 + 1));
      dispatch_release(*(v2 + 1));
    }

    dispatch_set_context(*v2, 0);
    dispatch_release(*v2);
    free(v2);
  }
}

void ___dispatch_fd_entry_create_with_fd_block_invoke_5(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: close queue release", 1551, v1, *(a1 + 32));
  dispatch_release(*(*(a1 + 32) + 64));
  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: barrier queue release", 1553, v2, *(a1 + 32));
  dispatch_release(*(*(a1 + 32) + 72));
  v3 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: barrier group release", 1555, v3, *(a1 + 32));
  dispatch_release(*(*(a1 + 32) + 80));
  if (*(*(a1 + 32) + 16) != -1)
  {
    do
    {
      if (fcntl_NOCANCEL() == -1)
      {
        v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v5 = 0;
      }
    }

    while (v5 == 4);
  }

  if (*(*(a1 + 32) + 20) != -1)
  {
    do
    {
      if (fcntl_NOCANCEL() == -1)
      {
        v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      }

      else
      {
        v4 = 0;
      }
    }

    while (v4 == 4);
  }

  _dispatch_object_finalize();
  if (*(*(a1 + 32) + 88))
  {
    *(*(*(a1 + 32) + 88) + 112) = 0;
    dispatch_release(*(*(a1 + 32) + 88));
  }

  free(*(a1 + 32));
}

void ___dispatch_fd_entry_create_with_path_block_invoke(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: close queue cleanup", 1611, v1, *(a1 + 32));
  if (!*(*(a1 + 32) + 56))
  {
    for (i = 0; i < 2; ++i)
    {
      _dispatch_stream_dispose(*(a1 + 32), i);
    }
  }

  if (**(a1 + 32) != -1)
  {
    _dispatch_fd_entry_guarded_close(*(a1 + 32), **(a1 + 32));
  }

  if (**(*(a1 + 32) + 8))
  {
    *(**(*(a1 + 32) + 8) + 112) = 0;
  }
}

uint64_t _dispatch_fd_entry_guarded_close(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 28))
  {
    return guarded_close_np();
  }

  else
  {
    return close_NOCANCEL();
  }
}

void ___dispatch_fd_entry_create_with_path_block_invoke_2(uint64_t a1)
{
  v1 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tfd_entry[%p]: close queue release", 1630, v1, *(a1 + 32));
  dispatch_release(*(*(a1 + 32) + 64));
  dispatch_release(*(*(a1 + 32) + 72));
  dispatch_release(*(*(a1 + 32) + 80));
  free(*(*(a1 + 32) + 8));
  free(*(a1 + 32));
}

uint64_t _dispatch_fd_entry_guarded_open(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = guarded_open_np();
  if (v5 == -1)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 0;
    return open_NOCANCEL();
  }

  else
  {
    *(a1 + 28) = 15;
    return v5;
  }
}

void ___dispatch_operation_deliver_data_block_invoke(uint64_t a1)
{
  if ((*(a1 + 72) & 2) != 0 && !*(a1 + 76) && *(a1 + 80) && dispatch_data_get_size(*(a1 + 40)))
  {
    v1 = _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\top[%p]: IO handler invoke", 2701, v1, *(a1 + 48));
    (*(*(a1 + 32) + 16))();
  }

  v2 = _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\top[%p]: IO handler invoke: err %d", 2709, v2, *(a1 + 48), *(a1 + 80));
  (*(*(a1 + 32) + 16))();
  _dispatch_release(*(a1 + 56));
  _dispatch_fd_entry_release(*(a1 + 64));
  dispatch_release(*(a1 + 40));
}

void _dispatch_data_destroy_buffer(void *a1, mach_vm_size_t a2, dispatch_queue_s *a3, Block_layout *a4)
{
  v4 = a3;
  if (a4 == &__block_literal_global)
  {
    free(a1);
  }

  else if (a4 != &__block_literal_global_4154)
  {
    if (a4 == &__block_literal_global_4158)
    {
      mach_vm_deallocate(mach_task_self_, a1, a2);
    }

    else
    {
      if (!a3)
      {
        v4 = &off_E0600;
      }

      dispatch_channel_async_f(v4, a4, _dispatch_call_block_and_release);
    }
  }
}

dispatch_data_t dispatch_data_create(const void *buffer, size_t size, dispatch_queue_t queue, dispatch_block_t destructor)
{
  v11 = buffer;
  if (buffer && size)
  {
    if (destructor)
    {
      if (destructor == &__block_literal_global_4162)
      {
        if (size < 0xFFFFFFFFFFFFFFB0)
        {
          v16[8] = 0;
          if (is_mul_ok(0, 0x18uLL))
          {
            *v16 = (0 * 0x18uLL) >> 64 != 0;
            v17 = _dispatch_object_alloc(_OS_dispatch_data_vtable, size + 80 + *&v16[1]);
            *(v17 + 9) = 0;
            *(v17 + 3) = &off_E0600;
            *(v17 + 2) = -1985229329;
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v6 = v18;
        v11 = __memcpy_chk();
        v8 = &__block_literal_global_4154;
      }

      else
      {
        v13[8] = 0;
        if (is_mul_ok(0, 0x18uLL))
        {
          *v13 = (0 * 0x18uLL) >> 64 != 0;
          v14 = _dispatch_object_alloc(_OS_dispatch_data_vtable, *&v13[1] + 80);
          *(v14 + 9) = 0;
          *(v14 + 3) = &off_E0600;
          *(v14 + 2) = -1985229329;
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v6 = v15;
        v8 = _dispatch_Block_copy(destructor);
      }
    }

    else
    {
      if (!malloc_type_malloc())
      {
        return 0;
      }

      v11 = __memcpy_chk();
      v19[8] = 0;
      if (is_mul_ok(0, 0x18uLL))
      {
        *v19 = (0 * 0x18uLL) >> 64 != 0;
        v20 = _dispatch_object_alloc(_OS_dispatch_data_vtable, *&v19[1] + 80);
        *(v20 + 9) = 0;
        *(v20 + 3) = &off_E0600;
        *(v20 + 2) = -1985229329;
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v6 = v21;
      v8 = &__block_literal_global;
    }

    *(v6 + 6) = v11;
    *(v6 + 8) = size;
    *(v6 + 7) = v8;
    if (queue)
    {
      _dispatch_retain(queue);
      *(v6 + 3) = queue;
    }

    return v6;
  }

  else
  {
    if (destructor)
    {
      v4 = _dispatch_Block_copy(destructor);
      _dispatch_data_destroy_buffer(v11, size, queue, v4);
    }

    return &_dispatch_data_empty;
  }
}

dispatch_data_t dispatch_data_create_f(const void *a1, size_t a2, dispatch_queue_s *a3, Block_layout *a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v5 = 0;
  if (a4)
  {
    v5 = a4;
  }

  v13 = v5;
  if (v5 && v13 != &__block_literal_global && v13 != &__block_literal_global_4154 && v13 != &__block_literal_global_4158 && v13 != &__block_literal_global_4162)
  {
    v6 = _NSConcreteStackBlock;
    v7 = 0x40000000;
    v8 = 0;
    v9 = __dispatch_data_create_f_block_invoke;
    v10 = &__block_descriptor_tmp_0;
    v11 = v14;
    v12 = v17;
    v13 = &v6;
  }

  return dispatch_data_create(v17, v16, v15, v13);
}

dispatch_data_s *dispatch_data_create_alloc(unint64_t a1, void *a2)
{
  v4 = &_dispatch_data_empty;
  v3 = 0;
  if (a1)
  {
    if (a1 < 0xFFFFFFFFFFFFFFB0)
    {
      if (is_mul_ok(0, 0x18uLL))
      {
        v7 = _dispatch_object_alloc(_OS_dispatch_data_vtable, a1 + 80);
        *(v7 + 9) = 0;
        *(v7 + 3) = &off_E0600;
        *(v7 + 2) = -1985229329;
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v4 = v8;
    v3 = (v8 + 80);
    *(v8 + 6) = v8 + 80;
    *(v8 + 8) = a1;
    *(v8 + 7) = &__block_literal_global_4154;
  }

  if (a2)
  {
    *a2 = v3;
  }

  return v4;
}

void _dispatch_data_dispose(uint64_t a1)
{
  if (*(a1 + 72))
  {
    for (i = 0; ; ++i)
    {
      v1 = *(a1 + 72) ? *(a1 + 72) : 1;
      if (i >= v1)
      {
        break;
      }

      dispatch_release(*(a1 + 80 + 24 * i));
    }

    free(*(a1 + 48));
  }

  else
  {
    _dispatch_data_destroy_buffer(*(a1 + 48), *(a1 + 64), *(a1 + 24), *(a1 + 56));
  }
}

dispatch_data_t dispatch_data_create_concat(dispatch_data_t data1, dispatch_data_t data2)
{
  if (*(data1 + 8))
  {
    if (*(data2 + 8))
    {
      if (*(data1 + 9))
      {
        v9 = *(data1 + 9);
      }

      else
      {
        v9 = 1;
      }

      if (*(data2 + 9))
      {
        v8 = *(data2 + 9);
      }

      else
      {
        v8 = 1;
      }

      v2 = __CFADD__(v9, v8);
      v11 = v9 + v8;
      if (v2)
      {
        return 0;
      }

      else
      {
        if ((v11 * 0x18uLL) >> 64 != 0 || (24 * v11) >= 0xFFFFFFFFFFFFFFB0)
        {
          v16 = 0;
        }

        else
        {
          v15 = _dispatch_object_alloc(_OS_dispatch_data_vtable, 24 * v11 + 80);
          *(v15 + 9) = v11;
          *(v15 + 3) = &off_E0600;
          *(v15 + 2) = -1985229329;
          v16 = v15;
        }

        *(v16 + 8) = *(data1 + 8) + *(data2 + 8);
        if (*(data1 + 9))
        {
          __memcpy_chk();
        }

        else
        {
          *(v16 + 11) = 0;
          *(v16 + 12) = *(data1 + 8);
          *(v16 + 10) = data1;
        }

        if (*(data2 + 9))
        {
          __memcpy_chk();
        }

        else
        {
          if (*(data1 + 9))
          {
            v7 = *(data1 + 9);
          }

          else
          {
            v7 = 1;
          }

          *(v16 + 3 * v7 + 11) = 0;
          if (*(data1 + 9))
          {
            v6 = *(data1 + 9);
          }

          else
          {
            v6 = 1;
          }

          *(v16 + 3 * v6 + 12) = *(data2 + 8);
          if (*(data1 + 9))
          {
            v5 = *(data1 + 9);
          }

          else
          {
            v5 = 1;
          }

          *(v16 + 3 * v5 + 10) = data2;
        }

        for (i = 0; ; ++i)
        {
          v4 = *(v16 + 9) ? *(v16 + 9) : 1;
          if (i >= v4)
          {
            break;
          }

          dispatch_retain(*(v16 + 3 * i + 10));
        }

        return v16;
      }
    }

    else
    {
      dispatch_retain(data1);
      return data1;
    }
  }

  else
  {
    dispatch_retain(data2);
    return data2;
  }
}

dispatch_data_t dispatch_data_create_subrange(dispatch_data_t data, size_t offset, size_t length)
{
  v15 = offset;
  lengtha = length;
  if (offset >= *(data + 8) || !length)
  {
    return &_dispatch_data_empty;
  }

  if (length <= *(data + 8) - offset)
  {
    if (length == *(data + 8))
    {
      dispatch_retain(data);
      return data;
    }
  }

  else
  {
    lengtha = *(data + 8) - offset;
  }

  if (*(data + 9))
  {
    v7 = *(data + 9);
    v13 = offset + lengtha == *(data + 8);
    for (i = 0; ; ++i)
    {
      v6 = 0;
      if (i < v7)
      {
        v6 = v15 >= *(data + 3 * i + 12);
      }

      if (!v6)
      {
        break;
      }

      v3 = data + 24 * i;
      v15 -= *(v3 + 12);
    }

    if (i >= v7)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
      qword_E42C0 = i;
      __break(1u);
      JUMPOUT(0xAAD5CLL);
    }

    if (v15 + lengtha > *(data + 3 * i + 12))
    {
      v9 = 0;
      if (offset + lengtha == *(data + 8))
      {
        v10 = v7 - i;
      }

      else
      {
        v9 = lengtha + v15 - *(data + 3 * i + 12);
        v10 = 1;
        while (i + v10 < v7)
        {
          v4 = 24 * (i + v10++);
          v8 = *(data + v4 + 96);
          if (v9 <= v8)
          {
            break;
          }

          v9 -= v8;
          if (i + v10 >= v7)
          {
            qword_E4290 = "BUG IN LIBDISPATCH: dispatch_data_create_subrange out of bounds";
            qword_E42C0 = i + v10;
            __break(1u);
            JUMPOUT(0xAAEF4);
          }
        }
      }

      if (!is_mul_ok(v10, 0x18uLL) || 24 * v10 >= 0xFFFFFFFFFFFFFFB0)
      {
        v19 = 0;
      }

      else
      {
        v18 = _dispatch_object_alloc(_OS_dispatch_data_vtable, 24 * v10 + 80);
        *(v18 + 9) = v10;
        *(v18 + 3) = &off_E0600;
        *(v18 + 2) = -1985229329;
        v19 = v18;
      }

      *(v19 + 8) = lengtha;
      __memcpy_chk();
      if (v15)
      {
        *(v19 + 11) += v15;
        *(v19 + 12) -= v15;
      }

      if (!v13)
      {
        *(v19 + 3 * v10 + 9) = v9;
      }

      for (j = 0; j < v10; ++j)
      {
        dispatch_retain(*(v19 + 3 * j + 10));
      }

      return v19;
    }

    else
    {
      return dispatch_data_create_subrange(*(data + 3 * i + 10), *(data + 3 * i + 11) + v15, lengtha);
    }
  }

  else
  {
    if (is_mul_ok(1uLL, 0x18uLL))
    {
      v20 = _dispatch_object_alloc(_OS_dispatch_data_vtable, 0x68uLL);
      *(v20 + 9) = 1;
      *(v20 + 3) = &off_E0600;
      *(v20 + 2) = -1985229329;
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    *(v21 + 8) = lengtha;
    *(v21 + 11) = v15;
    *(v21 + 12) = lengtha;
    *(v21 + 10) = data;
    dispatch_retain(data);
    return v21;
  }
}

dispatch_data_t dispatch_data_create_map(dispatch_data_t data, const void **buffer_ptr, size_t *size_ptr)
{
  v6 = 0;
  buffer = 0;
  size = *(data + 8);
  if (size)
  {
    v12 = data;
    v11 = 0;
    if (*(data + 9) == 1)
    {
      v11 = *(data + 11);
      v12 = *(data + 10);
    }

    if (*(v12 + 9))
    {
      v10 = *(v12 + 6);
      if (v10)
      {
        v10 += v11;
      }
    }

    else
    {
      v10 = (*(v12 + 6) + v11);
    }

    buffer = v10;
    if (v10)
    {
      dispatch_retain(data);
      v6 = data;
    }

    else
    {
      buffer = _dispatch_data_flatten(data);
      if (buffer)
      {
        v6 = dispatch_data_create(buffer, size, 0, &__block_literal_global);
      }

      else
      {
        size = 0;
      }
    }
  }

  else
  {
    v6 = &_dispatch_data_empty;
  }

  if (buffer_ptr)
  {
    *buffer_ptr = buffer;
  }

  if (size_ptr)
  {
    *size_ptr = size;
  }

  return v6;
}

uint64_t _dispatch_data_flatten(dispatch_data_s *a1)
{
  v9 = a1;
  v8 = malloc_type_malloc();
  if (v8)
  {
    applier = _NSConcreteStackBlock;
    v3 = 0x40000000;
    v4 = 0;
    v5 = ___dispatch_data_flatten_block_invoke;
    v6 = &__block_descriptor_tmp_11;
    v7 = v8;
    dispatch_data_apply(v9, &applier);
  }

  return v8;
}

char *dispatch_data_get_flattened_bytes_4libxpc(uint64_t a1)
{
  v8 = a1;
  v7 = 0;
  v6 = 0;
  if (!*(a1 + 64))
  {
    return 0;
  }

  v17 = v8;
  v16 = 0;
  v15 = &v8;
  v14 = &v6;
  v13 = 0;
  v22 = *(v8 + 8);
  v21 = 131;
  if (!v22)
  {
    _dispatch_abort(v21, 0);
  }

  v19 = v17;
  if (*(v17 + 9))
  {
    v20 = v17;
    v3 = *(v17 + 9) ? *(v17 + 9) : 1;
    if (v3 == 1)
    {
      v16 += *(v17 + 11);
      v17 = *(v17 + 10);
    }
  }

  v18 = v17;
  if (*(v17 + 9))
  {
    v11 = *(v17 + 6);
    v12 = v11;
    v10 = v11;
    v13 = v11;
    if (v11)
    {
      v13 += v16;
    }
  }

  else
  {
    v13 = (*(v17 + 6) + v16);
  }

  if (v15)
  {
    *v15 = v17;
  }

  if (v14)
  {
    *v14 = v16;
  }

  v7 = v13;
  if (v13)
  {
    return v7;
  }

  v5 = _dispatch_data_flatten(v8);
  if (!v5)
  {
    return 0;
  }

  v4 = 0;
  v1 = 0;
  atomic_compare_exchange_strong_explicit((v8 + 48), &v1, v5, memory_order_release, memory_order_relaxed);
  if (v1)
  {
    v4 = v1;
  }

  v7 = v4;
  if (v1)
  {
    free(v5);
  }

  else
  {
    v7 = v5;
  }

  return &v7[v6];
}

uint64_t dispatch_data_apply_f(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1[8])
  {
    v4 = _dispatch_data_apply(a1, 0, 0, a1[8], a2, a3) & 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t _dispatch_data_apply(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a2;
  v10 = 1;
  v18 = a1;
  v17 = 0;
  if (!a1[8])
  {
    _dispatch_abort(131, 0);
  }

  if (a1[9] == 1)
  {
    v17 = a1[11];
    v18 = a1[10];
  }

  if (v18[9])
  {
    v16 = v18[6];
    if (v16)
    {
      v16 += v17;
    }
  }

  else
  {
    v16 = v18[6] + v17;
  }

  if (v16)
  {
    v15 = _dispatch_data_apply_client_callout(a5, a1, a2, v16 + a3, a4, a6) & 1;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v8 = a1[9] ? a1[9] : 1;
      v7 = 0;
      if (i < v8)
      {
        v7 = v10;
      }

      if ((v7 & 1) == 0)
      {
        break;
      }

      v10 = _dispatch_data_apply(a1[3 * i + 10], v13, a1[3 * i + 11], a1[3 * i + 12], a5, a6);
      v13 += a1[3 * i + 12];
    }

    v15 = v10 & 1;
  }

  return v15 & 1;
}

BOOL dispatch_data_apply(dispatch_data_t data, dispatch_data_applier_t applier)
{
  if (!*(data + 8))
  {
    return 1;
  }

  v4 = *(data + 8);
  v5 = _Block_get_invoke_fn(applier);
  v6 = 0;
  if (v5)
  {
    v6 = v5;
  }

  v3 = 0;
  if (v6)
  {
    v3 = v6;
  }

  return _dispatch_data_apply(data, 0, 0, v4, applier, v3) & 1;
}

dispatch_data_t dispatch_data_copy_region(dispatch_data_t data, size_t location, size_t *offset_ptr)
{
  if (location < *(data + 8))
  {
    *offset_ptr = 0;
    return _dispatch_data_copy_region(data, 0, *(data + 8), location, offset_ptr);
  }

  else
  {
    *offset_ptr = *(data + 8);
    return &_dispatch_data_empty;
  }
}

dispatch_object_s *_dispatch_data_copy_region(dispatch_object_s *a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v17 = a1;
  v16 = a2;
  v14 = 0;
  v13 = 0;
  if (!a2 && a3 == *(v17 + 8))
  {
    v14 = v17;
  }

  v41 = v17;
  v40 = v16;
  v39 = &v17;
  v38 = &v16;
  v37 = 0;
  v46 = *(v17 + 8);
  v45 = 131;
  if (!v46)
  {
    _dispatch_abort(v45, 0);
  }

  v43 = v41;
  if (*(v41 + 9))
  {
    v44 = v41;
    v8 = *(v41 + 9) ? *(v41 + 9) : 1;
    if (v8 == 1)
    {
      v40 += *(v41 + 11);
      v41 = *(v41 + 10);
    }
  }

  v42 = v41;
  if (*(v41 + 9))
  {
    v35 = *(v41 + 6);
    v36 = v35;
    v34 = v35;
    v37 = v35;
    if (v35)
    {
      v37 += v40;
    }
  }

  else
  {
    v37 = *(v41 + 6) + v40;
  }

  if (v39)
  {
    *v39 = v41;
  }

  if (v38)
  {
    *v38 = v40;
  }

  if (!v37)
  {
    for (i = 0; ; ++i)
    {
      v29 = v17;
      if (*(v17 + 9))
      {
        v7 = *(v17 + 9);
      }

      else
      {
        v7 = 1;
      }

      if (i >= v7)
      {
        v5 = *a5 + v13;
        qword_E4290 = "BUG IN LIBDISPATCH: dispatch_data_copy_region out of bounds";
        qword_E42C0 = v5;
        __break(1u);
        JUMPOUT(0xAC288);
      }

      v9 = *(v17 + 3 * i + 12);
      if (v16 < v9)
      {
        v10 = v9 - v16;
        if (a4 < v13 + v10)
        {
          v16 += *(v17 + 3 * i + 11);
          v17 = *(v17 + 3 * i + 10);
          *a5 += v13;
          return _dispatch_data_copy_region(v17, v16, v10, a4 - v13, a5);
        }

        v13 += v10;
        v16 = 0;
      }

      else
      {
        v16 -= v9;
      }
    }
  }

  if (v14)
  {
    dispatch_retain(v14);
    return v14;
  }

  else
  {
    dispatch_retain(v17);
    if (v16 || a3 != *(v17 + 8))
    {
      v27 = 1;
      v26 = 0;
      v25 = 0;
      v23 = 80;
      v33 = 0;
      v22 = 24;
      v32 = !is_mul_ok(1uLL, 0x18uLL);
      v21 = v32;
      v24 = 104;
      v31 = 0;
      v20 = 0;
      v19 = v32;
      v30 = v32;
      if (v32)
      {
        v28 = 0;
      }

      else
      {
        v25 = _dispatch_object_alloc(_OS_dispatch_data_vtable, v24);
        v25[9] = v27;
        v25[3] = &off_E0600;
        v25[2] = -1985229329;
        v28 = v25;
      }

      v12 = v28;
      v28[8] = a3;
      v12[11] = v16;
      v12[12] = a3;
      v12[10] = v17;
      return v12;
    }

    else
    {
      return v17;
    }
  }
}

uint64_t dispatch_data_make_memory_entry(uint64_t a1)
{
  v18 = a1;
  object_handle = 0;
  v16 = 0;
  size = *(a1 + 64);
  address = 0;
  permission = 0;
  memory_entry_64 = 0;
  for (i = *(a1 + 56) != &__block_literal_global_4158; ; i = 1)
  {
    if (i)
    {
      address = vm_page_size;
      memory_entry_64 = mach_vm_allocate(mach_task_self_, &address, size, 1);
      if (memory_entry_64)
      {
        if (memory_entry_64 != 3)
        {
          v10 = memory_entry_64;
          v27 = memory_entry_64;
          v26 = 704;
          if (memory_entry_64)
          {
            _dispatch_bug(v26, v27);
          }

          v9 = v10;
        }

        return object_handle;
      }

      applier = _NSConcreteStackBlock;
      v4 = 0x40000000;
      v5 = 0;
      v6 = __dispatch_data_make_memory_entry_block_invoke;
      v7 = &__block_descriptor_tmp_9;
      v8 = address;
      dispatch_data_apply(v18, &applier);
    }

    else
    {
      address = *(v18 + 6);
    }

    permission = 2097219;
    v16 = size;
    memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &v16, address, 2097219, &object_handle, 0);
    if (memory_entry_64 == 18)
    {
      permission &= ~0x200000u;
      memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &v16, address, permission, &object_handle, 0);
    }

    v2 = memory_entry_64;
    v25 = memory_entry_64;
    v24 = 726;
    if (memory_entry_64)
    {
      _dispatch_bug(v24, v25);
    }

    if (v2)
    {
      object_handle = 0;
      goto LABEL_23;
    }

    if (v16 >= size)
    {
      goto LABEL_23;
    }

    memory_entry_64 = mach_port_deallocate(mach_task_self_, object_handle);
    v23 = memory_entry_64;
    v22 = 731;
    if (memory_entry_64)
    {
      _dispatch_bug(v22, v23);
    }

    if (i)
    {
      break;
    }
  }

  object_handle = 0;
LABEL_23:
  if (i)
  {
    memory_entry_64 = mach_vm_deallocate(mach_task_self_, address, size);
    v21 = memory_entry_64;
    v20 = 740;
    if (memory_entry_64)
    {
      _dispatch_bug(v20, v21);
    }
  }

  return object_handle;
}

dispatch_data_s *dispatch_data_create_with_transform(dispatch_data_s *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (*a2 == 16)
  {
    v7 = _dispatch_transform_detect_utf(a1);
    if (!v7)
    {
      return 0;
    }
  }

  if ((*v7 & ~*(a3 + 8)) != 0)
  {
    return 0;
  }

  if ((*a3 & ~v7[2]) != 0)
  {
    return 0;
  }

  if (!dispatch_data_get_size(a1))
  {
    return a1;
  }

  if (v7[3])
  {
    v5 = (v7[3])(a1);
  }

  else
  {
    dispatch_retain(a1);
    v5 = a1;
  }

  if (!v5)
  {
    return 0;
  }

  if (*(a3 + 32))
  {
    v4 = (*(a3 + 32))(v5);
  }

  else
  {
    dispatch_retain(v5);
    v4 = v5;
  }

  dispatch_release(v5);
  return v4;
}

void *_dispatch_transform_detect_utf(dispatch_data_s *a1)
{
  v4[1] = a1;
  v4[0] = 0;
  v3 = _dispatch_data_subrange_map(a1, v4, 0, 2uLL);
  if (!v3)
  {
    return 0;
  }

  v2 = &_dispatch_data_format_type_utf8;
  if (*v4[0] == 65279)
  {
    v2 = &_dispatch_data_format_type_utf16le;
  }

  else if (*v4[0] == 65534)
  {
    v2 = &_dispatch_data_format_type_utf16be;
  }

  dispatch_release(v3);
  return v2;
}

uint64_t _dispatch_transform_from_base64(dispatch_data_s *a1)
{
  v29 = a1;
  v25[0] = 0;
  v25[1] = v25;
  v26 = 0;
  v27 = 32;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v22 = 0;
  v23 = 32;
  v24 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v18 = 0;
  v19 = 32;
  v20 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0;
  v15 = 32;
  v16 = &_dispatch_data_empty;
  applier = _NSConcreteStackBlock;
  v3 = 1107296256;
  v4 = 0;
  v5 = ___dispatch_transform_from_base64_block_invoke;
  v6 = &__block_descriptor_tmp_4_0;
  v7 = v21;
  v8 = v17;
  v9 = v25;
  v10 = &v12;
  if (dispatch_data_apply(a1, &applier))
  {
    v30 = v13[3];
  }

  else
  {
    dispatch_release(v13[3]);
    v30 = 0;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v25, 8);
  return v30;
}

dispatch_data_t _dispatch_transform_to_base64(dispatch_data_s *a1)
{
  v26 = a1;
  size = dispatch_data_get_size(a1);
  v24 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v21 = 0;
  v22 = 32;
  v23 = 0;
  if (size % 3)
  {
    v3 = size / 3 + 1;
  }

  else
  {
    v3 = size / 3;
  }

  v24 = v3;
  if (v3 > 0x3FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
    v19 = 1;
  }

  else
  {
    v24 *= 4;
    v1 = malloc_type_malloc();
    v18 = v1;
    if (v1)
    {
      v14[0] = 0;
      v14[1] = v14;
      v15 = 0;
      v16 = 32;
      v17 = v18;
      applier = _NSConcreteStackBlock;
      v5 = 1107296256;
      v6 = 0;
      v7 = ___dispatch_transform_to_base64_block_invoke;
      v8 = &__block_descriptor_tmp_7;
      v9 = v20;
      v11 = v26;
      v10 = v14;
      v12 = size;
      if (dispatch_data_apply(v26, &applier))
      {
        v27 = dispatch_data_create(v18, v24, 0, &__block_literal_global);
      }

      else
      {
        free(v18);
        v27 = 0;
      }

      v19 = 1;
      _Block_object_dispose(v14, 8);
    }

    else
    {
      v27 = 0;
      v19 = 1;
    }
  }

  _Block_object_dispose(v20, 8);
  return v27;
}

dispatch_data_t _dispatch_transform_to_utf8_without_bom(dispatch_data_s *a1)
{
  v7 = a1;
  v6 = 0;
  v5 = _dispatch_data_subrange_map(a1, &v6, 0, 3uLL);
  v4 = 0;
  if (v5)
  {
    v4 = memcmp(v6, &_dispatch_transform_to_utf8_without_bom_utf8_bom, 3uLL) == 0;
    dispatch_release(v5);
  }

  if (v4)
  {
    data = v7;
    size = dispatch_data_get_size(v7);
    return dispatch_data_create_subrange(data, 3uLL, size - 3);
  }

  else
  {
    dispatch_retain(v7);
    return v7;
  }
}

dispatch_data_t _dispatch_data_subrange_map(dispatch_data_s *a1, const void **a2, size_t a3, size_t a4)
{
  map = 0;
  data = dispatch_data_create_subrange(a1, a3, a4);
  if (dispatch_data_get_size(data) == a4)
  {
    map = dispatch_data_create_map(data, a2, 0);
  }

  dispatch_release(data);
  return map;
}

uint64_t _dispatch_transform_from_base32_with_table(dispatch_data_s *a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v29[0] = 0;
  v29[1] = v29;
  v30 = 0;
  v31 = 32;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v26 = 0;
  v27 = 32;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v22 = 0;
  v23 = 32;
  v24 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0;
  v19 = 32;
  v20 = &_dispatch_data_empty;
  applier = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = ___dispatch_transform_from_base32_with_table_block_invoke;
  v8 = &__block_descriptor_tmp_3;
  v13 = a3;
  v14 = a2;
  v9 = v25;
  v10 = v21;
  v11 = v29;
  v12 = &v16;
  if (dispatch_data_apply(a1, &applier))
  {
    v36 = v17[3];
  }

  else
  {
    dispatch_release(v17[3]);
    v36 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v29, 8);
  return v36;
}

uint64_t ___dispatch_transform_from_base32_with_table_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = malloc_type_malloc();
  v14 = v15;
  if (v15)
  {
    for (i = 0; i < a5; ++i)
    {
      if (*(a4 + i) != 10 && *(a4 + i) != 9 && *(a4 + i) != 32)
      {
        v13 = *(a4 + i);
        if (v13 >= a1[8] || *(a1[9] + v13) == -1)
        {
          free(v15);
          v19 = 0;
          return v19 & 1;
        }

        ++*(*(a1[4] + 8) + 24);
        v12 = *(a1[9] + v13);
        if (v12 == -2)
        {
          v12 = 0;
          ++*(*(a1[5] + 8) + 24);
        }

        *(*(a1[6] + 8) + 24) *= 32;
        *(*(a1[6] + 8) + 24) += v12;
        if ((*(*(a1[4] + 8) + 24) & 7) == 0)
        {
          *v14 = BYTE4(*(*(a1[6] + 8) + 24));
          v14[1] = BYTE3(*(*(a1[6] + 8) + 24));
          v14[2] = BYTE2(*(*(a1[6] + 8) + 24));
          v14[3] = BYTE1(*(*(a1[6] + 8) + 24));
          v5 = v14 + 4;
          v14 += 5;
          *v5 = *(*(a1[6] + 8) + 24);
        }
      }
    }

    size = v14 - v15;
    v7 = *(*(a1[5] + 8) + 24);
    switch(v7)
    {
      case 1:
        --size;
        break;
      case 3:
        size -= 2;
        break;
      case 4:
        size -= 3;
        break;
      case 6:
        size -= 4;
        break;
    }

    data2 = dispatch_data_create(v15, size, 0, &__block_literal_global);
    concat = dispatch_data_create_concat(*(*(a1[7] + 8) + 24), data2);
    dispatch_release(data2);
    dispatch_release(*(*(a1[7] + 8) + 24));
    *(*(a1[7] + 8) + 24) = concat;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void __copy_helper_block_8_32r40r48r56r(uint64_t a1, const void **a2)
{
  _Block_object_assign((a1 + 32), a2[4], 8);
  _Block_object_assign((a1 + 40), a2[5], 8);
  _Block_object_assign((a1 + 48), a2[6], 8);
  _Block_object_assign((a1 + 56), a2[7], 8);
}

void __destroy_helper_block_8_32r40r48r56r(const void **a1)
{
  _Block_object_dispose(a1[7], 8);
  _Block_object_dispose(a1[6], 8);
  _Block_object_dispose(a1[5], 8);
  _Block_object_dispose(a1[4], 8);
}

dispatch_data_t _dispatch_transform_to_base32_with_table(dispatch_data_s *a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  size = dispatch_data_get_size(a1);
  v26 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v23 = 0;
  v24 = 32;
  v25 = 0;
  if (size % 5)
  {
    v4 = size / 5 + 1;
  }

  else
  {
    v4 = size / 5;
  }

  v26 = v4;
  if (v4 > 0x1FFFFFFFFFFFFFFFLL)
  {
    v30 = 0;
    v21 = 1;
  }

  else
  {
    v26 *= 8;
    v2 = malloc_type_malloc();
    v20 = v2;
    if (v2)
    {
      v16[0] = 0;
      v16[1] = v16;
      v17 = 0;
      v18 = 32;
      v19 = v20;
      applier = _NSConcreteStackBlock;
      v6 = 1107296256;
      v7 = 0;
      v8 = ___dispatch_transform_to_base32_with_table_block_invoke;
      v9 = &__block_descriptor_tmp_1;
      v10 = v22;
      v12 = v29;
      v11 = v16;
      v13 = v28;
      v14 = size;
      if (dispatch_data_apply(v29, &applier))
      {
        v30 = dispatch_data_create(v20, v26, 0, &__block_literal_global);
      }

      else
      {
        free(v20);
        v30 = 0;
      }

      v21 = 1;
      _Block_object_dispose(v16, 8);
    }

    else
    {
      v30 = 0;
      v21 = 1;
    }
  }

  _Block_object_dispose(v22, 8);
  return v30;
}