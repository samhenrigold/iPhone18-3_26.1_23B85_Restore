uint64_t btree_node_largest_key_len(uint64_t a1)
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

uint64_t bt_shift_or_split(void *a1, void *a2, unsigned int a3, void *a4, int a5, void *a6, uint64_t a7, unsigned int a8, __int16 *a9, __int16 *a10, unsigned __int16 a11, unint64_t a12, uint64_t a13, uint64_t *a14)
{
  v265 = a6;
  v20 = a1;
  v21 = a13;
  v300 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v267 = &v257[-v22];
  bzero(&v257[-v22], v23);
  LODWORD(v290) = 0;
  memset(v299, 0, sizeof(v299));
  v297 = 0;
  v298 = 0;
  v295 = 0;
  v296 = 0;
  v294 = 0;
  v292 = 0;
  v293 = 0;
  if ((*(a4[7] + 32) & 4) != 0)
  {
    LODWORD(v290) = (a4[50] & 4) == 0;
  }

  *a14 = 0;
  v281 = a8;
  v263 = a14;
  if (a2 && *(a2[7] + 36) - 1 > a3)
  {
    if (btree_node_child_val(a2, (a3 + 1), v267) || btree_node_get(v20, v267, a12, 3u, *(a2[7] + 34) - 1, a13, &v298) || !v298)
    {
      v298 = 0;
      v24 = 1;
    }

    else
    {
      if ((v20[50] & 0x10) != 0 && v298[14] != *v267)
      {
        btree_node_child_id_update(a2, (a3 + 1), v298 + 14, a13);
      }

      v24 = 0;
    }

    a8 = v281;
  }

  else
  {
    v24 = 1;
  }

  *(v299 + 8) = *(v20 + 25);
  *(&v299[1] + 1) = a4[52];
  LODWORD(v299[0]) = 2123139;
  v25 = a4[7];
  WORD2(v299[0]) = *(v25 + 32) & 0x1A;
  WORD3(v299[0]) = *(v25 + 34);
  if (a8)
  {
    v26 = 0;
    v29 = a8;
    do
    {
      v31 = *a9++;
      v30 = v31;
      if ((a4[50] & 0x40) != 0)
      {
        v32 = *a10;
      }

      else
      {
        v30 = (v30 + 7) & 0xFFF8;
        v32 = (*a10 + 7) & 0xFFF8;
      }

      v26 += v30 + v32;
      ++a10;
      --v29;
    }

    while (v29);
    v33 = v26;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v25 + 36);
  LODWORD(v285) = a5;
  if (v34 <= a5)
  {
    v261 = a7;
    v264 = a3;
    v277 = 0;
    HIDWORD(v285) = 0;
    v37 = 0;
    v275 = 0;
  }

  else
  {
    v35 = btree_node_key_ptr(a4, a5, &v295, &v292 + 1);
    if (v35)
    {
      return v35;
    }

    v36 = v20[1];
    if (!v36)
    {
      v36 = *(*v20 + 392);
    }

    v35 = (v20[52])(v36, v265, a7, v295, HIWORD(v292), &v293);
    if (v35)
    {
      return v35;
    }

    v264 = a3;
    v261 = a7;
    if (v293)
    {
      v277 = 0;
      HIDWORD(v285) = 0;
      v37 = 0;
      v275 = 0;
      a5 = v285;
    }

    else
    {
      a5 = v285;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        v115 = btree_node_val_len(a4, v285);
        if (v115 == 65534)
        {
          v116 = 0;
        }

        else
        {
          v116 = v115;
        }

        LOWORD(v292) = v116;
        if ((a4[50] & 0x40) != 0)
        {
          v117 = HIWORD(v292);
        }

        else
        {
          v117 = (HIWORD(v292) + 7) & 0xFFFFFFF8;
        }

        if ((a4[50] & 0x40) == 0)
        {
          v116 = (v116 + 7) & 0x1FFF8;
        }

        v277 = v117 + v116;
        HIDWORD(v285) = 1;
        v37 = 1;
        v275 = 1;
      }

      else
      {
        v277 = 0;
        HIDWORD(v285) = 0;
        v275 = 0;
        v37 = 1;
      }
    }
  }

  v278 = v20;
  v276 = a13;
  v291 = a4;
  v268 = a2;
  if (v24)
  {
    v38 = obj_flags(a4);
    v39 = v20[1];
    if (!v39)
    {
      v39 = *(*v20 + 392);
    }

    v40 = obj_subtype(a4);
    v35 = btree_node_create(v39, v38 & 0xFFFFFC00, v40, v299, a13, &v298);
    if (v35)
    {
      return v35;
    }

    atomic_fetch_add_explicit((v20[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, a13, 0);
    a5 = v285;
    if ((v20[50] & 2) != 0 || v20[54] == a4[14])
    {
      v42 = a4[7];
      if (*(v42 + 36) == v285)
      {
        v43 = 0;
        v44 = v285 + ((*(v42 + 32) >> 1) & 1) - 1;
        v45 = 1;
        v24 = 1;
        goto LABEL_143;
      }
    }
  }

  v46 = a4[7];
  v47 = *(v46 + 32);
  v272 = btree_node_toc_required_capacity(a4, 0);
  if ((v47 & 4) != 0)
  {
    v48 = 2;
  }

  else
  {
    v48 = 3;
  }

  v44 = *(v46 + 36);
  if (((v44 - 1) & 0x8000) != 0)
  {
    v288 = v281;
    LODWORD(v53) = v275;
LABEL_122:
    v275 = v53;
    v43 = 0;
    v114 = v288;
LABEL_141:
    v45 = v114 == 0;
    a2 = v268;
LABEL_142:
    a5 = v285;
LABEL_143:
    if (!a2 && (v43 != 0) | v24 & 1)
    {
      v118 = v44;
      v119 = obj_flags(a4);
      v120 = v278[1];
      if (!v120)
      {
        v120 = *(*v278 + 392);
      }

      v121 = obj_subtype(a4);
      v122 = btree_node_create(v120, v119 & 0xFFFFFC00, v121, v299, v21, &v297);
      if (v122)
      {
        v41 = v122;
        v286 = 0;
        v287 = v24;
        v289 = 0;
        v290 = 0;
        v123 = 0;
        LOWORD(v124) = 0;
        v125 = 0;
        v285 = 0;
        v288 = 0;
        LODWORD(v284) = 0;
        v126 = 0;
        v268 = 0;
        goto LABEL_149;
      }

      v128 = v278;
      atomic_fetch_add_explicit((v278[49] + 32), 1uLL, memory_order_relaxed);
      obj_dirty(v128, v21, 0);
      a5 = v285;
      LOWORD(v44) = v118;
    }

    v129 = v44;
    if (a5 >= v44)
    {
      v130 = v275;
    }

    else
    {
      v130 = 0;
    }

    v131 = a4[7];
    if (v130 != 1)
    {
      v288 = v130;
      v138 = 0;
      v139 = 0;
      LOWORD(v132) = 0;
      HIDWORD(v285) = 0;
LABEL_160:
      v140 = (*(v131 + 36) - v129);
      v286 = v139;
      v289 = v138;
      v290 = v140;
      if (v140 < 1)
      {
        v146 = v45;
        LODWORD(v285) = 0;
LABEL_170:
        v148 = 0;
        v147 = v264;
        goto LABEL_171;
      }

      v141 = v298;
      v142 = bt_move_entries(a4, v298, v140, v276);
      if (v142)
      {
        v41 = v142;
        v287 = v24;
        v127 = v278;
        v143 = v278[1];
        v144 = v261;
        if (v143)
        {
          v145 = (v143 + 4040);
        }

        else
        {
          v145 = (*(*(*v278 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3068, v145, v290, v142);
        v290 = 0;
        LOWORD(v124) = 0;
        v125 = 0;
        LODWORD(v285) = 0;
        LODWORD(v284) = 0;
        v126 = 0;
        v147 = v264;
        goto LABEL_214;
      }

      v144 = v261;
      if ((v24 & 1) == 0)
      {
        v170 = btree_node_key_ptr(v141, 0, &v295, &v292 + 1);
        if (v170 || (v170 = btree_node_entry_update(a2, (v264 + 1), v295, HIWORD(v292), 0, 0, v276), v170))
        {
          v41 = v170;
          v127 = v278;
          v171 = v278[1];
          v123 = v132;
          if (v171)
          {
            v172 = (v171 + 4040);
          }

          else
          {
            v172 = (*(*(*v278 + 392) + 384) + 212);
          }

          log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3076, v172, v170);
          v287 = 0;
          LOWORD(v124) = 0;
          v125 = 0;
          LODWORD(v285) = 0;
          LODWORD(v284) = 0;
          v126 = 0;
          goto LABEL_374;
        }
      }

      LODWORD(v285) = v24 ^ 1;
      if (!a2 || *(a4[7] + 36))
      {
        v146 = v45;
        goto LABEL_170;
      }

      v147 = v264;
      v220 = btree_node_entry_update(a2, v264, v265, v144, 0, 0, v276);
      if (!v220)
      {
        v146 = v45;
        v148 = 1;
LABEL_171:
        v149 = v297;
        LODWORD(v284) = v148;
        if (v297)
        {
          v287 = v24;
          v264 = v147;
          v150 = a4[7];
          v151 = *(v150 + 36);
          v152 = a4;
          v153 = a4;
          v154 = v276;
          v155 = bt_move_entries(v297, v152, -*(v150 + 36), v276);
          if (v155)
          {
            v41 = v155;
            v127 = v278;
            v156 = v278[1];
            if (v156)
            {
              v157 = (v156 + 4040);
            }

            else
            {
              v157 = (*(*(*v278 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3103, v157, -v151, v155);
            LOWORD(v124) = 0;
            v125 = 0;
            v126 = 0;
            v147 = v264;
            goto LABEL_213;
          }

          v283 = v151;
          btree_node_reinit_root(v153, (*(*(v153 + 56) + 34) + 1), v154);
          if (*(*(v149 + 56) + 36))
          {
            v173 = btree_node_key_ptr(v149, 0, &v295, &v292 + 1);
            v147 = v264;
            v174 = v291;
            v24 = v287;
            if (v173)
            {
              v41 = v173;
              v123 = v132;
LABEL_307:
              v127 = v278;
              v226 = v278[1];
              v144 = v261;
              LOWORD(v124) = v283;
              if (v226)
              {
                v227 = (v226 + 4040);
              }

              else
              {
                v227 = (*(*(*v278 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3126, v227, v41);
              v125 = 0;
              goto LABEL_311;
            }

            v159 = v146;
            v215 = v295;
            v216 = HIWORD(v292);
          }

          else
          {
            v215 = v265;
            v295 = v265;
            v216 = v261;
            HIWORD(v292) = v261;
            v147 = v264;
            v174 = v291;
            v24 = v287;
            v159 = v146;
          }

          v123 = v132;
          v224 = v267;
          *v267 = *(v149 + 112);
          v225 = btree_node_insert(v174, v215, v216, v224, (*(v174 + 407) & 0x7Fu) + 8, v276, 0, 0);
          if (v225)
          {
            v41 = v225;
            goto LABEL_307;
          }

          v268 = v174;
          v124 = v283;
          if ((v24 & 1) == 0)
          {
LABEL_313:
            v126 = 0;
            if (v43)
            {
LABEL_314:
              v264 = v147;
              if (v149)
              {
                v228 = v149;
              }

              else
              {
                v228 = v291;
              }

              v229 = *(*(v228 + 56) + 32);
              v287 = v24;
              if ((v229 & 2) != 0)
              {
                v125 = 0;
                v234 = v265;
                v295 = v265;
                v144 = v261;
                HIWORD(v292) = v261;
                v235 = v261;
                v230 = v296;
                v127 = v278;
              }

              else
              {
                v230 = v296;
                v231 = bt_move_entries(v228, v296, 1, v276);
                v127 = v278;
                v144 = v261;
                if (v231)
                {
                  v41 = v231;
                  v232 = v278[1];
                  if (v232)
                  {
                    v233 = (v232 + 4040);
                  }

                  else
                  {
                    v233 = (*(*(*v278 + 392) + 384) + 212);
                  }

                  log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3169, v233, 1, v231);
LABEL_373:
                  v125 = 0;
LABEL_374:
                  v147 = v264;
                  goto LABEL_215;
                }

                v251 = btree_node_key_ptr(v230, 0, &v295, &v292 + 1);
                if (v251)
                {
                  v41 = v251;
                  v252 = v127[1];
                  if (v252)
                  {
                    v253 = (v252 + 4040);
                  }

                  else
                  {
                    v253 = (*(*(*v127 + 392) + 384) + 212);
                  }

                  log_err("%s:%d: %s failed to get newnode minkey: %d\n", "bt_shift_or_split", 3174, v253, v251);
                  goto LABEL_373;
                }

                v234 = v295;
                v125 = 1;
                v235 = HIWORD(v292);
              }

              v236 = v267;
              *v267 = *(v230 + 112);
              v237 = btree_node_insert(v268, v234, v235, v236, (*(v268 + 407) & 0x7Fu) + 8, v276, 0, 0);
              if (v237)
              {
                v41 = v237;
                v238 = v127[1];
                if (v238)
                {
                  v239 = (v238 + 4040);
                }

                else
                {
                  v239 = (*(*(*v127 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3186, v239, v237);
                goto LABEL_374;
              }

              v240 = v298;
              v298 = v230;
              v241 = v291;
              v242 = v268;
              v243 = v289;
              v244 = v286;
LABEL_355:
              bt_update_last_leaf(v127, v242, v241);
LABEL_356:
              if (v243)
              {
                _apfs_free(v243, v244);
              }

              if (v240)
              {
                obj_unlock(v240, 2);
                obj_release(v240);
              }

              v254 = v297;
              v255 = v298;
              if (v297 && v298 != v297)
              {
                obj_unlock(v297, 2);
                obj_release(v254);
              }

              v41 = 0;
              *v263 = v255;
              return v41;
            }

            goto LABEL_349;
          }
        }

        else
        {
          v124 = 0;
          v159 = v146;
          v123 = v132;
          if ((v24 & 1) == 0)
          {
            goto LABEL_313;
          }
        }

        v160 = v147;
        v161 = v298;
        if (v298)
        {
          v162 = v298[7];
          if (*(v162 + 36))
          {
            v283 = v124;
            v163 = btree_node_key_ptr(v298, 0, &v295, &v292 + 1);
            if (v163 || (v164 = v267, *v267 = v161[14], v163 = btree_node_insert(v268, v295, HIWORD(v292), v164, (*(v268 + 407) & 0x7Fu) + 8, v276, 0, 0), v163))
            {
              v41 = v163;
              v147 = v160;
              v127 = v278;
              v165 = v278[1];
              v144 = v261;
              LOWORD(v124) = v283;
              if (v165)
              {
                v166 = (v165 + 4040);
              }

              else
              {
                v166 = (*(*(*v278 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3142, v166, v163);
              v125 = 0;
              v126 = 0;
              v287 = 1;
              goto LABEL_215;
            }

            v126 = 1;
            v147 = v160;
            LOWORD(v124) = v283;
            if (v43)
            {
              goto LABEL_314;
            }

            goto LABEL_349;
          }

          if ((*(v162 + 32) & 2) != 0)
          {
            v296 = v298;
            v43 = 1;
          }

          else
          {
            atomic_fetch_add_explicit((v278[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
            obj_delete_and_free(v161, v276);
            obj_unlock(v161, 2);
            obj_release(v161);
          }

          v126 = 0;
          v298 = 0;
        }

        else
        {
          v126 = 0;
        }

        v147 = v160;
        if (v43)
        {
          goto LABEL_314;
        }

LABEL_349:
        if (v159)
        {
          v240 = 0;
          v127 = v278;
          v241 = v291;
          v242 = v268;
          v243 = v289;
          v244 = v286;
        }

        else
        {
          v240 = v298;
          v127 = v278;
          v241 = v291;
          v242 = v268;
          v243 = v289;
          v244 = v286;
          if (v149)
          {
            v298 = v149;
          }

          else
          {
            v298 = 0;
          }
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_356;
        }

        goto LABEL_355;
      }

      v41 = v220;
      v287 = v24;
      v127 = v278;
      v221 = v278[1];
      v123 = v132;
      if (v221)
      {
        v222 = (v221 + 4040);
      }

      else
      {
        v222 = (*(*(*v278 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3087, v222, v220);
      LOWORD(v124) = 0;
      v125 = 0;
LABEL_295:
      LODWORD(v284) = 0;
LABEL_311:
      v126 = 0;
      goto LABEL_215;
    }

    v132 = *(v131 + 36) + ~a5;
    v133 = (*(v131 + 36) + ~a5);
    if (v133 < 1)
    {
      HIDWORD(v285) = 0;
      v147 = v264;
LABEL_178:
      v158 = btree_node_val_ptr(a4, a5, &v294, &v292);
      if (v158)
      {
        v41 = v158;
        v286 = 0;
        v287 = v24;
        v289 = 0;
        v290 = 0;
        LOWORD(v124) = 0;
        v125 = 0;
        v288 = 0;
        LODWORD(v285) = 0;
        LODWORD(v284) = 0;
        v126 = 0;
LABEL_180:
        v127 = v278;
LABEL_213:
        v144 = v261;
LABEL_214:
        v123 = v132;
        goto LABEL_215;
      }

      v288 = 1;
      v138 = 0;
      v139 = v292;
      if (v292 && v292 != 65534)
      {
        v167 = _apfs_malloc_typed(v292, 0xC5E0E89uLL);
        if (!v167)
        {
          v286 = 0;
          v287 = v24;
          v289 = 0;
          v290 = 0;
          LOWORD(v124) = 0;
          v125 = 0;
          v288 = 0;
          LODWORD(v285) = 0;
          LODWORD(v284) = 0;
          v126 = 0;
          v41 = 12;
          goto LABEL_180;
        }

        v138 = v167;
        memcpy(v167, v294, v292);
        v139 = v292;
      }

      v264 = v147;
      v168 = v276;
      btree_node_remove(a4, v285, v276);
      v169 = v278;
      atomic_fetch_add_explicit((v278[49] + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_dirty(v169, v168, 0);
      v131 = a4[7];
      goto LABEL_160;
    }

    v134 = v298;
    v135 = bt_move_entries(a4, v298, v133, v276);
    if (v135)
    {
      v41 = v135;
      v287 = v24;
      v127 = v278;
      v136 = v278[1];
      if (v136)
      {
        v137 = (v136 + 4040);
      }

      else
      {
        v137 = (*(*(*v278 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3023, v137, 0, v135);
      v289 = 0;
      v290 = 0;
      v285 = 0;
      v286 = 0;
      v123 = 0;
      LOWORD(v124) = 0;
      v125 = 0;
      v288 = 0;
      LODWORD(v284) = 0;
      v126 = 0;
      goto LABEL_197;
    }

    if (v24)
    {
      HIDWORD(v285) = 0;
      v147 = v264;
LABEL_177:
      a5 = v285;
      goto LABEL_178;
    }

    v175 = btree_node_key_ptr(v134, 0, &v295, &v292 + 1);
    if (v175)
    {
      v41 = v175;
      v147 = v264;
    }

    else
    {
      v147 = v264;
      v217 = btree_node_entry_update(a2, (v264 + 1), v295, HIWORD(v292), 0, 0, v276);
      if (!v217)
      {
        HIDWORD(v285) = 1;
        goto LABEL_177;
      }

      v41 = v217;
    }

    v127 = v278;
    v218 = v278[1];
    v144 = v261;
    v123 = v132;
    if (v218)
    {
      v219 = (v218 + 4040);
    }

    else
    {
      v219 = (*(*(*v278 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3031, v219, v41);
    v286 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    LOWORD(v124) = 0;
    v125 = 0;
    v285 = 0;
    v288 = 0;
    goto LABEL_295;
  }

  v262 = v33;
  v49 = v33 + a11;
  v260 = v37 + a5;
  v50 = (v44 - 1);
  v51 = v298;
  v280 = btree_node_free_space_total(v298);
  v284 = v51;
  v52 = btree_node_toc_required_capacity(v51, 0);
  v286 = v48;
  v279 = v52 << v48;
  v271 = btree_node_free_space_total(a4);
  LOWORD(v48) = 0;
  v283 = 0;
  LODWORD(v289) = 0;
  v53 = v275;
  v266 = v275 ^ 1;
  v259 = v49;
  v288 = v281;
  v258 = v49;
  v282 = v49;
  v54 = HIDWORD(v285);
  while (1)
  {
    v55 = v20;
    v56 = v24;
    v57 = v21;
    v273 = v44;
    v58 = v288;
    v59 = v288 - v54;
    v60 = btree_node_toc_required_capacity(a4, (v288 - v54));
    v61 = v271 + v277 + ((v272 - v60) << v286);
    v274 = (v271 + v277 + ((v272 - v60) << v286) - v282);
    if (((v61 >= v282) & v290) == 1)
    {
      v62 = *(a4[7] + 36) - v54 + v58;
      v63 = v62 >= btree_node_toc_required_capacity(v291, 0);
      a4 = v291;
      if (v63)
      {
        goto LABEL_48;
      }
    }

    else if (v61 < v282)
    {
LABEL_48:
      v21 = v57;
      v24 = v56;
      v20 = v55;
      v64 = v286;
      v65 = v283;
      goto LABEL_57;
    }

    v21 = v57;
    v24 = v56;
    if ((v56 & 1) == 0)
    {
      goto LABEL_140;
    }

    v20 = v55;
    if ((v55[50] & 2) != 0 || v55[54] == a4[14])
    {
      v64 = v286;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        goto LABEL_140;
      }

      if (!v50)
      {
        goto LABEL_140;
      }

      v65 = v283;
      if ((v283 + *(*(v284 + 56) + 36)) > 1u)
      {
        goto LABEL_140;
      }

      v66 = btree_node_toc_required_capacity(v284, v283);
      v67 = v280 + v279 + v48 - (v66 << v64);
      if (v274 >= (v67 + ((v67 >> 29) & 3)) >> 2)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v64 = v286;
      if (v290)
      {
        if (!v50)
        {
          goto LABEL_140;
        }

        v85 = v59 + *(a4[7] + 36);
        v65 = v283;
        v53 = v275;
        if (v85 <= (v283 + *(*(v284 + 56) + 36)))
        {
          goto LABEL_140;
        }
      }

      else
      {
        v65 = v283;
        v113 = btree_node_toc_required_capacity(v284, v283);
        if (!v50)
        {
          goto LABEL_140;
        }

        v53 = v275;
        if (v274 >= (v280 + v279 + v48 - (v113 << v64)))
        {
          goto LABEL_140;
        }
      }
    }

LABEL_57:
    HIDWORD(v285) = v54;
    v287 = v24;
    v68 = v50;
    v69 = a4[7];
    v70 = *(v69 + 32);
    if ((v70 & 2) == 0 || v266 + v50 != v285)
    {
      goto LABEL_82;
    }

    v269 = *(v69 + 32);
    v270 = v69;
    v71 = v281;
    v72 = (v65 + v281);
    v73 = v284;
    v74 = btree_node_toc_required_capacity(v284, v72);
    v75 = (v74 << v64) - v279;
    v76 = v262 + v289 + ((v74 << v64) - v279);
    if (((v76 <= v280) & v290) == 1)
    {
      v77 = v71 + v65 + *(*(v73 + 56) + 36);
      v63 = v77 >= btree_node_toc_required_capacity(v73, 0);
      v20 = v278;
      if (v63)
      {
        goto LABEL_62;
      }
    }

    else if (v76 > v280)
    {
LABEL_62:
      if ((v287 & 1) == 0)
      {
        a4 = v291;
        v78 = obj_flags(v291);
        v79 = v284;
        obj_unlock(v284, 2);
        obj_release(v79);
        v298 = 0;
        v80 = v20[1];
        v81 = v275;
        if (!v80)
        {
          v80 = *(*v20 + 392);
        }

        v82 = obj_subtype(a4);
        v35 = btree_node_create(v80, v78 & 0xFFFFFC00, v82, v299, v21, &v298);
        v54 = HIDWORD(v285);
        if (v35)
        {
          return v35;
        }

        v24 = 1;
        atomic_fetch_add_explicit((v20[49] + 32), 1uLL, memory_order_relaxed);
        obj_dirty(v20, v21, 0);
        v83 = v298;
        v84 = btree_node_toc_required_capacity(v298, 0);
        v279 = v84 << v286;
        v284 = v83;
        v280 = btree_node_free_space_total(v83);
        goto LABEL_109;
      }

      if (v275)
      {
        LOWORD(v50) = v273 - 2;
      }

      a4 = v291;
      if (v274 < 0)
      {
        LOWORD(v44) = v50 + 1;
        v45 = v288 == 0;
        v43 = 2843;
        goto LABEL_300;
      }

      v24 = 1;
LABEL_140:
      v114 = v288;
      v43 = 0;
      LOWORD(v44) = v50 + 1;
      goto LABEL_141;
    }

    v288 -= v281;
    v69 = v270;
    if ((v287 & 1) == 0)
    {
      v24 = 0;
      if (v275)
      {
        LOWORD(v50) = v273 - 2;
      }

LABEL_139:
      a4 = v291;
      goto LABEL_140;
    }

    if ((v20[50] & 2) != 0 || v20[54] == v291[14])
    {
LABEL_123:
      if (v275)
      {
        LOWORD(v50) = v273 - 2;
      }

      v24 = 1;
      goto LABEL_139;
    }

    v68 = v50;
    v282 -= v258;
    LODWORD(v289) = v289 + v258;
    if (v290)
    {
      if (!v50 || (v288 - WORD2(v285) + *(v270 + 36)) <= (v72 + *(*(v284 + 56) + 36)))
      {
        goto LABEL_123;
      }
    }

    else if (!v50 || v274 >= (v280 - v289 - v75))
    {
      goto LABEL_123;
    }

    v65 = v72;
    a4 = v291;
    v70 = v269;
    v53 = v275;
LABEL_82:
    v283 = v65;
    if ((v70 & 4) != 0)
    {
      v87 = a4;
      v88 = a4[50];
      v86 = (v88 >> 9) & 0x3FFF;
    }

    else
    {
      v86 = *(a4[47] + 8 * v50 + 2);
      v87 = a4;
      v88 = a4[50];
    }

    HIWORD(v292) = v86;
    v89 = btree_node_val_len(v87, v50);
    v90 = v89 == 65534 ? 0 : v89;
    LOWORD(v292) = v90;
    v91 = (v86 + 7) & 0x1FFF8;
    if ((v88 & 0x40) != 0)
    {
      v91 = v86;
    }

    else
    {
      v90 = (v90 + 7) & 0x1FFF8;
    }

    v92 = v50 == v285 ? v53 : 0;
    if ((v92 & 1) == 0)
    {
      break;
    }

    v50 = v285;
    v20 = v278;
    a4 = v291;
    v24 = v287;
    v54 = HIDWORD(v285);
LABEL_116:
    v44 = v50;
    LODWORD(v48) = -v289;
    v112 = v50 - 1;
    v50 = (v50 - 1);
    if (v112 < 0)
    {
      goto LABEL_122;
    }
  }

  v269 = v70;
  v270 = v69;
  v81 = v53;
  v93 = v21;
  v94 = v91 + v90;
  if (v288 != 0 && v260 > v68)
  {
    v95 = v281;
  }

  else
  {
    v95 = 0;
  }

  if (v288 != 0 && v260 > v68)
  {
    v96 = v259;
  }

  else
  {
    v96 = 0;
  }

  v97 = v283;
  v98 = (v283 + v95 + 1);
  v99 = v284;
  v100 = btree_node_toc_required_capacity(v284, v98);
  v101 = v96 + v289 + v94 + ((v100 << v64) - v279);
  if (((v101 <= v280) & v290) == 1)
  {
    v102 = v95 + v97 + *(*(v99 + 56) + 36) + 1;
    v103 = btree_node_toc_required_capacity(v99, 0);
    v21 = v276;
    v104 = v282;
    if (v102 >= v103)
    {
      goto LABEL_104;
    }

LABEL_111:
    LODWORD(v289) = v289 + v96 + v94;
    v288 -= v95;
    if (v95)
    {
      v111 = v96;
    }

    else
    {
      v111 = 0;
    }

    v282 = v104 - v111;
    v54 = HIDWORD(v285) + 1;
    v277 += v94;
    v283 = v98;
    v20 = v278;
    a4 = v291;
    v24 = v287;
LABEL_115:
    v53 = v81;
    goto LABEL_116;
  }

  v21 = v93;
  v104 = v282;
  if (v101 <= v280)
  {
    goto LABEL_111;
  }

LABEL_104:
  LODWORD(v53) = v81;
  if ((v287 & 1) == 0)
  {
    a4 = v291;
    v105 = obj_flags(v291);
    v106 = v284;
    obj_unlock(v284, 2);
    obj_release(v106);
    v298 = 0;
    v20 = v278;
    v107 = v278[1];
    if (!v107)
    {
      v107 = *(*v278 + 392);
    }

    v108 = obj_subtype(a4);
    v35 = btree_node_create(v107, v105 & 0xFFFFFC00, v108, v299, v21, &v298);
    v54 = HIDWORD(v285);
    if (v35)
    {
      return v35;
    }

    atomic_fetch_add_explicit((v20[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v20, v21, 0);
    v109 = v298;
    v110 = btree_node_toc_required_capacity(v298, 0);
    v279 = v110 << v286;
    v284 = v109;
    v280 = btree_node_free_space_total(v109);
    v24 = 1;
LABEL_109:
    v50 = v273;
    goto LABEL_115;
  }

  a4 = v291;
  if ((v274 & 0x80000000) == 0)
  {
    v24 = 1;
    LOWORD(v44) = v273;
    goto LABEL_122;
  }

  v45 = v288 == 0;
  LOWORD(v44) = v273;
  v43 = 2917;
  if (v273 > 1)
  {
LABEL_300:
    a2 = v268;
    v223 = v284;
    goto LABEL_301;
  }

  a2 = v268;
  v223 = v284;
  if ((v269 & 2) == 0)
  {
    v43 = 0;
    v24 = 1;
    goto LABEL_142;
  }

LABEL_301:
  if (*(v270 + 36) == v44 && v223)
  {
    v24 = 0;
    v296 = v223;
    v298 = 0;
    goto LABEL_142;
  }

  v245 = v45;
  v246 = v44;
  v247 = obj_flags(a4);
  v248 = v278[1];
  if (!v248)
  {
    v248 = *(*v278 + 392);
  }

  v249 = obj_subtype(a4);
  v250 = btree_node_create(v248, v247 & 0xFFFFFC00, v249, v299, v21, &v296);
  if (!v250)
  {
    v256 = v278;
    atomic_fetch_add_explicit((v278[49] + 32), 1uLL, memory_order_relaxed);
    obj_dirty(v256, v21, 0);
    v24 = 1;
    a2 = v268;
    a5 = v285;
    LOWORD(v44) = v246;
    v45 = v245;
    goto LABEL_143;
  }

  v41 = v250;
  v289 = 0;
  v290 = 0;
  v285 = 0;
  v286 = 0;
  v123 = 0;
  LOWORD(v124) = 0;
  v125 = 0;
  v288 = 0;
  LODWORD(v284) = 0;
  v126 = 0;
  v287 = 1;
LABEL_149:
  v127 = v278;
LABEL_197:
  v147 = v264;
  v144 = v261;
LABEL_215:
  v176 = v127[1];
  if (v176)
  {
    v177 = (v176 + 4040);
  }

  else
  {
    v177 = (*(*(*v127 + 392) + 384) + 212);
  }

  log_err("%s:%d: %s reverting on error: %d\n", "bt_shift_or_split", 3222, v177, v41);
  if (v126)
  {
    btree_node_remove(v268, (v147 + 1), v276);
  }

  v178 = v291;
  if (v125)
  {
    v179 = bt_move_entries(v291, v296, -1, v276);
    v41 = v179;
    if (v179)
    {
      v180 = v127[1];
      if (v180)
      {
        v181 = (v180 + 4040);
      }

      else
      {
        v181 = (*(*(*v127 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3229, v181, -1, v179);
    }
  }

  v182 = v147;
  v183 = v124;
  v184 = v268;
  if (v183 >= 1)
  {
    v185 = v276;
    btree_node_reinit_root(v178, (*(v178[7] + 34) - 1), v276);
    v186 = bt_move_entries(v297, v178, v183, v185);
    if (v186)
    {
      v187 = v127[1];
      if (v187)
      {
        v188 = (v187 + 4040);
      }

      else
      {
        v188 = (*(*(*v127 + 392) + 384) + 212);
      }

      v178 = v291;
      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3239, v188, v186, v41);
      v184 = 0;
    }

    else
    {
      v184 = 0;
      v178 = v291;
    }
  }

  if (v290 >= 1)
  {
    v189 = v298;
    v190 = bt_move_entries(v178, v298, -v290, v276);
    if (v190)
    {
      v191 = v127[1];
      if (v191)
      {
        v192 = (v191 + 4040);
      }

      else
      {
        v192 = (*(*(*v127 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3246, v192, v190, v41);
    }

    if (!(v287 & 1 | ((v285 & 1) == 0)))
    {
      v193 = btree_node_key_ptr(v189, 0, &v295, &v292 + 1);
      if (v193 || (v193 = btree_node_entry_update(v184, (v182 + 1), v295, HIWORD(v292), 0, 0, v276)) != 0)
      {
        v194 = v127[1];
        if (v194)
        {
          v195 = (v194 + 4040);
        }

        else
        {
          v195 = (*(*(*v127 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3254, v195, v193, v41);
      }
    }

    if (v284)
    {
      v196 = btree_node_key_ptr(v178, 0, &v295, &v292 + 1);
      if (v196 || (v196 = btree_node_entry_update(v184, v182, v295, HIWORD(v292), 0, 0, v276)) != 0)
      {
        v197 = v127[1];
        if (v197)
        {
          v198 = (v197 + 4040);
        }

        else
        {
          v198 = (*(*(*v127 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3263, v198, v196, v41);
      }
    }
  }

  v199 = v289;
  if (v288)
  {
    v200 = btree_node_insert(v178, v265, v144, v289, v286, v276, 0, 0);
    if (v200)
    {
      v201 = v127[1];
      if (v201)
      {
        v202 = (v201 + 4040);
      }

      else
      {
        v202 = (*(*(*v127 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_insert() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3270, v202, v200, v41);
    }

    if (v199)
    {
      _apfs_free(v199, v286);
    }
  }

  v203 = v276;
  if (v123 >= 1)
  {
    v204 = v298;
    v205 = bt_move_entries(v291, v298, -v123, v276);
    if (v205)
    {
      v206 = v127[1];
      if (v206)
      {
        v207 = (v206 + 4040);
      }

      else
      {
        v207 = (*(*(*v127 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3279, v207, v205, v41);
    }

    if (!(v287 & 1 | ((v285 & 0x100000000) == 0)))
    {
      v208 = btree_node_key_ptr(v204, 0, &v295, &v292 + 1);
      if (v208 || (v208 = btree_node_entry_update(v184, (v182 + 1), v295, HIWORD(v292), 0, 0, v203)) != 0)
      {
        v209 = v127[1];
        if (v209)
        {
          v210 = (v209 + 4040);
        }

        else
        {
          v210 = (*(*(*v127 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3287, v210, v208, v41);
      }
    }
  }

  v211 = v298;
  if (v298)
  {
    if (!*(v298[7] + 36))
    {
      atomic_fetch_add_explicit((v127[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_delete_and_free(v211, v203);
    }

    obj_unlock(v211, 2);
    obj_release(v211);
  }

  v212 = v296;
  if (v296)
  {
    atomic_fetch_add_explicit((v127[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v212, v203);
    obj_unlock(v212, 2);
    obj_release(v212);
  }

  v213 = v297;
  if (v297)
  {
    atomic_fetch_add_explicit((v127[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    obj_delete_and_free(v213, v203);
    obj_unlock(v213, 2);
    obj_release(v213);
  }

  return v41;
}

uint64_t btree_node_insert(void *a1, unint64_t *a2, size_t a3, unint64_t *a4, unsigned int a5, uint64_t a6, unsigned __int16 *a7, _BYTE *a8)
{
  v26 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v17 = &v23[-v16];
  bzero(&v23[-v16], v18);
  v25 = 0;
  v24 = 0;
  result = bt_search_node_insert(a1, a2, a3, &v25, &v24);
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
      if (v24)
      {
        return btree_node_entry_update(a1, v25, a2, a3, a4, a5, a6);
      }

      else
      {
        return btree_node_insert_internal(a1, v25, a2, a3, a4, a5, a6);
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
  v51[1] = *MEMORY[0x277D85DE8];
  v15 = a1[50];
  MEMORY[0x28223BE20](a1);
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
  v51[0] = 0;
  v48 = 0;
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
        if (v24 != obj_oid(a1) && !btree_node_get(a1, v17, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, a7, v51))
        {
          v25 = v51[0];
          if ((*(*(v51[0] + 56) + 32) & 2) != 0 && !bt_search_node(v51[0], v44, a4, &v49, &v48) && v48)
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

      v30 = bt_search_node_insert(v25, v44, a4, &v49, &v48);
      if (v30)
      {
        goto LABEL_57;
      }

      v31 = v49;
      if (!v48 && v49)
      {
        v31 = --v49;
      }

      v30 = btree_node_child_val(v25, v31, v17);
      if (v30 || (v30 = btree_node_get(a1, v17, a2, 3u, *(*v27 + 34) - 1, a7, &v50), v30))
      {
LABEL_57:
        v20 = v30;
        v51[0] = v25;
        goto LABEL_62;
      }

      if ((a1[50] & 0x10) != 0 && v50[14] != *v17)
      {
        btree_node_child_id_update(v25, v31, v50 + 14, a7);
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

    v51[0] = 0;
    goto LABEL_60;
  }

  v28 = 0;
  v25 = a1;
LABEL_40:
  v51[0] = v25;
  if ((*(v25[7] + 32) & 2) == 0)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v20 = bt_search_node(v25, v44, a4, &v49, &v48);
  if (!v20)
  {
    if (!v48)
    {
LABEL_60:
      v20 = 2;
      goto LABEL_61;
    }

LABEL_45:
    v47 = 0;
    v46 = 0;
    v45 = 0;
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

    v20 = btree_node_entry_update(v25, v32, v44, a4, v35, a6, a7);
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
  v25 = v51[0];
  if (v51[0])
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

uint64_t btree_node_entry_update_via_callback(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
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

  result = btree_node_key_range_validate(a1, v20, v23);
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

  LODWORD(result) = btree_node_val_range_validate(a1, v22, v24);
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

uint64_t bt_remove_internal(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, void *a6, unsigned int *a7, void *a8, unsigned int *a9, unint64_t a10)
{
  v15 = a3;
  v125 = *MEMORY[0x277D85DE8];
  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  v121 = 0;
  MEMORY[0x28223BE20](a1);
  v19 = (&v98 - v18);
  bzero(&v98 - v18, v20);
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v117 = a5;
  v116 = 0;
  v115 = 0;
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
  *&v122 = a1;
  obj_retain(a1);
  v26 = btri_search_node(a1, v15, 1, a4, &v117, a5, &v122 + 4, (&v122 | 0xA));
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
      v30 = v123;
      if (!v123)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v30 = v123;
      if (BYTE10(v122) == 1 && WORD4(v122) == 0)
      {
        v103 = WORD4(v123);
        v110 = 1;
        v27 = v122;
        v107 = v123;
        if (!v123)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v110 = 0;
        if (!v123)
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
    if (BYTE10(v122) == 1)
    {
      v32 = btree_node_key_ptr(v30, WORD4(v123), &v120, &v115);
      if (v32)
      {
        goto LABEL_97;
      }

      v33 = v106;
      if ((*(v123 + 400) & 0x40) == 0)
      {
        v33 = v102;
      }

      v34 = v115;
      if ((*(v123 + 400) & 0x40) == 0)
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

    v113 = btree_node_largest_key_len(v122);
    v37 = v123;
    v112 = (*(v122 + 407) & 0x7F) + 8;
    if (btree_node_has_room(v123, 1u, &v113, &v112, v36, 0, 0))
    {
      goto LABEL_43;
    }

    v32 = bt_shift_or_split(a1, v124, WORD4(v124), v37, (WORD4(v123) + ((BYTE10(v123) & 1) == 0)), v108, v117, 1u, &v113, &v112, v36, v111, v109, &v114);
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

    v39 = v123;
    v100 = v123;
    if (v124)
    {
      ++WORD4(v124);
      if (v123)
      {
        if (v107 == v123 || v123 == v27)
        {
          v99 = v123;
          goto LABEL_64;
        }

        obj_unlock(v123, 2);
        obj_release(v39);
      }
    }

    else
    {
      *&v124 = v123;
      if (*(*(v114 + 56) + 36))
      {
        v32 = btree_node_key_ptr(v114, 0, &v120, &v115);
        if (v32)
        {
          goto LABEL_97;
        }

        v43 = bt_search_node(v124, v120, v115, &v124 + 4, &v124 + 10);
      }

      else
      {
        v43 = btri_search_node(v123, v15, 0, v108, &v117, a5, &v124 + 4, &v124 + 10);
      }

      v24 = v43;
      if (v43)
      {
        goto LABEL_98;
      }
    }

    v99 = 0;
LABEL_64:
    v44 = v107 != v124 || v107 == 0;
    v45 = v103;
    if (!v44)
    {
      v45 = WORD4(v124);
    }

    v103 = v45;
    *&v123 = v38;
    v32 = btri_search_node(v38, v15, 0, v108, &v117, a5, &v123 + 4, &v123 + 10);
    if (v32)
    {
      goto LABEL_97;
    }

    v46 = v122;
    obj_unlock(v122, 2);
    obj_release(v46);
    *&v122 = 0;
    v32 = btree_node_child_val(v123, WORD4(v123), v19);
    if (v32)
    {
      goto LABEL_97;
    }

    v32 = btree_node_get(a1, v19, v111, 3u, *(*(v123 + 56) + 34) - 1, v109, &v122);
    if (v32)
    {
      goto LABEL_97;
    }

    v47 = v122;
    if ((*(a1 + 400) & 0x10) != 0)
    {
      a4 = v108;
      if (*(v122 + 112) != *v19)
      {
        btree_node_child_id_update(v123, WORD4(v123), (v122 + 112), v109);
        v47 = v122;
      }
    }

    else
    {
      a4 = v108;
    }

    v32 = btri_search_node(v47, v15, 1, a4, &v117, a5, &v122 + 4, (&v122 | 0xA));
    if (v32)
    {
LABEL_97:
      v24 = v32;
LABEL_98:
      v121 = v27;
LABEL_99:
      v28 = v107;
      goto LABEL_100;
    }

    if (v107 == v100)
    {
      v50 = WORD4(v123);
      v48 = v99;
      if (v107 == a1 && !WORD4(v123))
      {
        v27 = v123;
        goto LABEL_44;
      }

      v49 = v110;
      if (WORD4(v123))
      {
        goto LABEL_92;
      }

      v103 = WORD4(v124);
      goto LABEL_88;
    }

    v48 = v99;
    if (v110)
    {
      v49 = 1;
      goto LABEL_93;
    }

    v50 = WORD4(v123);
    if (BYTE10(v123) == 1 && !WORD4(v123))
    {
      v103 = WORD4(v124);
      v49 = 1;
LABEL_88:
      v107 = v124;
      v27 = v123;
      goto LABEL_93;
    }

    v49 = 0;
    if (BYTE10(v122) == 1 && !WORD4(v122))
    {
      v49 = 1;
LABEL_92:
      v107 = v123;
      v27 = v122;
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
    if ((*(*(v122 + 56) + 32) & 2) != 0)
    {
      break;
    }

    v40 = v124;
    if (v124 && v124 != v107 && v124 != v27)
    {
      obj_unlock(v124, 2);
      obj_release(v40);
    }

    v41 = v123;
    v123 = v122;
    v124 = v41;
    *&v122 = 0;
    v32 = btree_node_child_val(v123, WORD4(v123), v19);
    if (!v32)
    {
      v32 = btree_node_get(a1, v19, v111, 3u, *(*(v123 + 56) + 34) - 1, v109, &v122);
      if (!v32)
      {
        v42 = v122;
        if ((*(a1 + 400) & 0x10) != 0)
        {
          a4 = v108;
          if (*(v122 + 112) != *v19)
          {
            btree_node_child_id_update(v123, WORD4(v123), (v122 + 112), v109);
            v42 = v122;
          }
        }

        else
        {
          a4 = v108;
        }

        v32 = btri_search_node(v42, v15, 1, a4, &v117, a5, &v122 + 4, (&v122 | 0xA));
        v29 = v110;
        if (!v32)
        {
          continue;
        }
      }
    }

    goto LABEL_97;
  }

  v121 = v27;
  v55 = btri_search_node(v122, v15, 1, a4, &v117, a5, &v122 + 4, (&v122 | 0xA));
  if (v55)
  {
LABEL_127:
    v24 = v55;
    goto LABEL_99;
  }

  if (BYTE10(v122) != 1)
  {
    v24 = 2;
    goto LABEL_99;
  }

  if (a6)
  {
    v55 = btree_node_key_ptr(v122, 0, &v119, &v116 + 1);
    if (v55)
    {
      goto LABEL_127;
    }

    v56 = HIWORD(v116);
    v57 = *a7;
    if (*a7 >= HIWORD(v116))
    {
      v58 = HIWORD(v116);
    }

    else
    {
      v58 = v57;
    }

    memcpy(a6, v119, v58);
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
    v59 = btree_node_val_ptr(v122, 0, &v118, &v116);
    if (v59)
    {
      goto LABEL_139;
    }

    v60 = v116;
    v61 = v116 == 65534 ? 0 : v116;
    v62 = v101;
    v63 = *v101;
    v64 = *v101 >= v61 ? v61 : v63;
    memcpy(v105, v118, v64);
    *v62 = v60;
    if (v63 < v61)
    {
      v24 = 34;
      goto LABEL_100;
    }
  }

  v65 = v109;
  btree_node_remove(v122, WORD4(v122), v109);
  atomic_fetch_add_explicit((*(a1 + 392) + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  obj_dirty(a1, v65, 0);
  if (WORD4(v122))
  {
    v24 = 0;
    goto LABEL_160;
  }

  v24 = 0;
  if (*(*(v122 + 56) + 36) && v123)
  {
    v66 = btree_node_key_ptr(v122, 0, &v120, &v115);
    if (v66)
    {
      v24 = v66;
      goto LABEL_155;
    }

    v24 = btree_node_entry_update(v123, WORD4(v123), v120, v115, 0, 0, v109);
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
  is_underused = btree_node_is_underused(a1, v122);
  v70 = v124;
  v71 = v110;
  if (v124)
  {
    if (v124 != v28 && v124 != v27)
    {
      obj_unlock(v124, 2);
      obj_release(v70);
      v71 = v110;
    }

    *&v124 = 0;
  }

  v72 = v123;
  if (v123)
  {
    if (v123 != v28 && v123 != v27)
    {
      obj_unlock(v123, 2);
      obj_release(v72);
      v71 = v110;
    }

    *&v123 = 0;
  }

  if (v71 && *(*(v122 + 56) + 36))
  {
    v59 = btree_node_key_ptr(v122, 0, &v120, &v115);
    if (v59)
    {
LABEL_139:
      v24 = v59;
      goto LABEL_100;
    }

    if (v28)
    {
      v73 = btree_node_entry_update(v107, v103, v120, v115, 0, 0, v109);
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

      if (v107 != v124 && v107 != v123 && v107 != v122)
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

    v77 = v121;
    v78 = v121 + 56;
    v79 = v108;
    if ((*(*(v121 + 56) + 32) & 2) == 0)
    {
      v80 = v117;
      v81 = v120;
      while (1)
      {
        LOWORD(v114) = 0;
        LOBYTE(v113) = 0;
        v27 = v77;
        v82 = bt_search_node(v77, v79, v80, &v114, &v113);
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
        v84 = btree_node_entry_update(v27, v114, v81, v115, 0, 0, v109);
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
        v121 = 0;
        if (!v24)
        {
          v24 = btree_node_get(a1, v19, v111, 3u, v87 - 1, v109, &v121);
        }

        v79 = v108;
        if (v27 != v124 && v27 != v123 && v27 != v122)
        {
          obj_unlock(v27, 2);
          obj_release(v27);
        }

        if (!v24)
        {
          v77 = v121;
          v78 = v121 + 56;
          if ((*(*(v121 + 56) + 32) & 2) == 0)
          {
            continue;
          }
        }

        goto LABEL_213;
      }

      v24 = 0;
    }
  }

  else if (v28 && v28 != v124 && v28 != v122)
  {
    obj_unlock(v28, 2);
    obj_release(v28);
  }

LABEL_213:
  v92 = v121;
  if (v121)
  {
    if (v121 != v124 && v121 != v123 && v121 != v122)
    {
      obj_unlock(v121, 2);
      obj_release(v92);
    }

    v121 = 0;
  }

  if (!is_underused)
  {
    v93 = 0;
    v95 = 0;
    goto LABEL_226;
  }

  if (WORD4(v122) || !*(*(v122 + 56) + 36))
  {
    v93 = 0;
    v94 = 0;
    goto LABEL_222;
  }

  v26 = btree_node_key_ptr(v122, 0, &v120, &v115);
  if (v26)
  {
    goto LABEL_10;
  }

  v94 = v115;
  v97 = _apfs_malloc_typed(v115, 0x144C515AuLL);
  v93 = v97;
  if (v97)
  {
    memcpy(v97, v120, v115);
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
    v95 = v117;
  }

LABEL_226:
  v96 = v122;
  obj_unlock(v122, 2);
  obj_release(v96);
  *&v122 = 0;
  if (is_underused)
  {
    bt_merge_up(a1, v111, v93, v95, v109);
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
  v51 = v124;
  if (v124)
  {
    if (v124 != v28 && v124 != v27)
    {
      obj_unlock(v124, 2);
      obj_release(v51);
    }

    *&v124 = 0;
  }

  v53 = v123;
  if (v123)
  {
    if (v123 != v28 && v123 != v27)
    {
      obj_unlock(v123, 2);
      obj_release(v53);
    }

    *&v123 = 0;
  }

  v54 = v122;
  if (v122)
  {
    if (v122 != v28 && v122 != v27)
    {
      obj_unlock(v122, 2);
      obj_release(v54);
    }

    *&v122 = 0;
  }

  if (v28 && v28 != v124 && v28 != v123)
  {
    obj_unlock(v28, 2);
    obj_release(v28);
    v27 = v121;
  }

  if (v27 && v27 != v124 && v27 != v123 && v27 != v122)
  {
    obj_unlock(v27, 2);
    obj_release(v27);
  }

  return v24;
}

uint64_t btri_search_node(uint64_t a1, char a2, int a3, unint64_t *a4, _WORD *a5, unsigned int a6, _WORD *a7, BOOL *a8)
{
  if ((a2 & 1) == 0)
  {
    v13 = bt_search_node_insert(a1, a4, *a5, a7, a8);
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

  __src = 0;
  v16 = 0;
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

void btree_node_remove(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v16 = btree_node_key_range_validate(a1, v13, v15);
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
    v26 = btree_node_val_range_validate(a1, v23, v25);
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
    btree_node_toc_shift(a1, v4, -1);
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

BOOL btree_node_is_underused(uint64_t a1, uint64_t a2)
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

    v7 = (v9 + v8) >> 1 >= btree_node_free_space_total(a2);
  }

  else
  {
    v7 = v4 >= *(v2 + 42) >> 3;
  }

  return !v7;
}

void bt_merge_up(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v48 = a2;
  v56 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v10 = (&v45 - v9);
  bzero(&v45 - v9, v11);
  v12 = *(a1 + 56);
  if (!v12)
  {
    return;
  }

  memset(v55, 0, sizeof(v55));
  v13 = *(v12 + 34);
  if (v13 >= 6)
  {
    v14 = v13 + 11;
    v17 = (v13 + 11);
    v16 = _apfs_malloc_typed(8 * v17, 0x2004093837F09uLL);
    v15 = _apfs_malloc_typed(2 * v17, 0x1000040BDFB0063uLL);
  }

  else
  {
    v14 = 8;
    v15 = v54;
    v16 = v55;
  }

  obj_lock(a1, 2);
  if (obj_modify(a1, (*(a1 + 400) >> 3) & 2, a5))
  {

    obj_unlock(a1, 2);
    return;
  }

  v54[0] = 0;
  v54[1] = 0;
  v50 = 0;
  v51 = 0;
  *v16 = a1;
  obj_retain(a1);
  LOWORD(v18) = 0;
  v19 = *v16;
  if ((*(*(*v16 + 56) + 32) & 2) == 0)
  {
    v46 = v14;
    v47 = a5;
    v20 = 0;
    v18 = 0;
    v52 = 0;
    v53 = 0;
    v49 = 0;
    v21 = v14;
    if ((v14 & 0xFFFE) == 0)
    {
      v21 = 1;
    }

    v22 = (v21 - 1);
    v23 = v16 + 1;
    while (!bt_search_node_insert(v19, a3, a4, &v15[v20], &v49))
    {
      if (!v49 && v15[v18])
      {
        --v15[v18];
      }

      if (v22 == v18)
      {
        LOWORD(v14) = v46;
        LOWORD(v18) = v46 - 1;
        goto LABEL_67;
      }

      *v10 = 0;
      if (btree_node_child_val(*(v23 - 1), v15[v18], v10) || btree_node_get(a1, v10, v48, 3u, *(*(*(v23 - 1) + 56) + 34) - 1, v47, v23))
      {
        break;
      }

      v19 = *v23;
      if ((*(a1 + 400) & 0x10) != 0 && *(v19 + 112) != *v10)
      {
        btree_node_child_id_update(*(v23 - 1), v15[v18], (v19 + 112), v47);
        v19 = *v23;
      }

      ++v20;
      ++v23;
      ++v18;
      if ((*(*(v19 + 56) + 32) & 2) != 0)
      {
        v24 = v18;
        v25 = v47;
        while (1)
        {
          v26 = v24;
          v27 = (v24 - 1);
          if (v24 < 1)
          {
            break;
          }

          if (v18 <= v24)
          {
            v28 = 0;
          }

          else
          {
            v28 = v16[v24 + 1];
          }

          bt_merge_nodes(a1, v16[v27], v15[v27], v16[v24], v15[v24], v28, v48, v25);
          v29 = *(*(v16[v24--] + 56) + 36);
          if (v26 == 1 || v29)
          {
            if (v29)
            {
              if (btree_node_key_ptr(v16[v27], v15[v27], &v52, &v50))
              {
                goto LABEL_66;
              }

              v51 = 0;
              if (btree_node_key_ptr(v16[v26], 0, &v53, &v50 + 1))
              {
                goto LABEL_66;
              }

              v38 = *(a1 + 8);
              if (!v38)
              {
                v38 = *(*a1 + 392);
              }

              v39 = v53;
              v40 = (*(a1 + 416))(v38, v53, HIWORD(v50), v52, v50, &v51);
              if (!v40 && v51)
              {
                v40 = btree_node_entry_update(v16[v27], v15[v27], v39, HIWORD(v50), 0, 0, v25);
              }

              if (v40)
              {
                goto LABEL_66;
              }
            }
          }

          else if (!v15[v27])
          {
            if (v27)
            {
              v30 = v16[v27];
              if (*(*(v30 + 56) + 36))
              {
                v31 = &v15[v27];
                v32 = v27 - 1;
                v33 = v26 - 1;
                while (1)
                {
                  if (*v31--)
                  {
                    goto LABEL_29;
                  }

                  v35 = btree_node_key_ptr(v30, 0, &v53, &v50 + 1);
                  if (v35)
                  {
                    goto LABEL_62;
                  }

                  v51 = 0;
                  v35 = btree_node_key_ptr(v16[v32], v15[v32], &v52, &v50);
                  if (v35)
                  {
                    goto LABEL_62;
                  }

                  v36 = *(a1 + 8);
                  if (!v36)
                  {
                    v36 = *(*a1 + 392);
                  }

                  v37 = v53;
                  v35 = (*(a1 + 416))(v36, v53, HIWORD(v50), v52, v50, &v51);
                  if (!v35 && v51)
                  {
                    v35 = btree_node_entry_update(v16[v32], v15[v32], v37, HIWORD(v50), 0, 0, v47);
                  }

                  if (v35)
                  {
LABEL_62:
                    v41 = *(a1 + 8);
                    if (v41)
                    {
                      v42 = (v41 + 4040);
                    }

                    else
                    {
                      v42 = (*(*(*a1 + 392) + 384) + 212);
                    }

                    log_err("%s:%d: %s updating grandparent failed w/%d\n", "bt_merge_up", 4631, v42, v35);
                    goto LABEL_66;
                  }

                  if (--v33)
                  {
                    v30 = v16[v33];
                    --v32;
                    if (*(*(v30 + 56) + 36))
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
          if (!btree_node_is_underused(a1, v16[v24]))
          {
            goto LABEL_66;
          }
        }

        bt_merge_nodes(a1, 0, 0, *v16, *v15, v16[1], v48, v25);
LABEL_29:
        if ((v27 & 0x8000) != 0)
        {
          break;
        }

        v24 = v27;
        v25 = v47;
        goto LABEL_59;
      }
    }

LABEL_66:
    LOWORD(v14) = v46;
  }

LABEL_67:
  v43 = 0;
  do
  {
    v44 = v16[v43];
    obj_unlock(v44, 2);
    obj_release(v44);
    ++v43;
  }

  while (v18 >= v43);
  if (v14 >= 9u)
  {
    _apfs_free(v16, 8 * v14);
    _apfs_free(v15, 2 * v14);
  }
}

uint64_t bt_remove_first(uint64_t a1, unint64_t a2, void *a3, unsigned int *a4, void *a5, unsigned int *a6, unint64_t a7)
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
  v33[1] = *MEMORY[0x277D85DE8];
  v12 = a1[50];
  MEMORY[0x28223BE20](a1);
  v14 = &v29[-v13];
  bzero(&v29[-v13], v15);
  v33[0] = 0;
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

  v30 = 0;
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
      v32 = 0;
      v21 = btree_node_key_ptr(v19, 0, &v32, &v30 + 1);
      if (v21 || (v31 = 0, v21 = btree_node_val_ptr(v19, 0, &v31, &v30), v21))
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

        v25 = HIWORD(v30);
        if (*a4 >= HIWORD(v30))
        {
          v26 = HIWORD(v30);
        }

        else
        {
          v26 = *a4;
        }

        if (*a4 >= HIWORD(v30) && *a6 >= v24)
        {
          v20 = 0;
        }

        else
        {
          v20 = 34;
        }

        memcpy(a3, v32, v26);
        if (*a6 >= v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = *a6;
        }

        memcpy(a5, v31, v28);
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
        v20 = btree_node_get(a1, v14, a2, 2u, *(*v18 + 34) - 1, 0, v33);
      }

      obj_unlock(v19, 1);
      obj_release(v19);
      if (v20)
      {
        break;
      }

      v19 = v33[0];
      v18 = (v33[0] + 56);
      v17 = *(v33[0] + 56);
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

  v25 = 0;
  v24 = 0;
  v20 = bt_lookup_internal(a1, a2, a3, v19, a8, a9, 0, a10, &v25, &v24);
  if (!v20)
  {
    v22 = v25;
    v23 = bt_lookup_copy_out(a1, v25, v24, a3, a4, v13, a6, a7, v10);
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

uint64_t bt_lookup_internal(atomic_ullong *a1, unint64_t a2, unint64_t *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, unint64_t *a8, uint64_t *a9, unsigned __int16 *a10)
{
  v41 = a7;
  v42 = a6;
  v45 = a4;
  v43 = a2;
  v44 = a3;
  v37 = a9;
  v49[1] = *MEMORY[0x277D85DE8];
  v13 = a1[50];
  MEMORY[0x28223BE20](a1);
  v15 = (&v37 - v14);
  bzero(&v37 - v14, v16);
  v48 = 0;
  v49[0] = 0;
  v47 = 0;
  v46 = 0;
  if (!a8)
  {
    goto LABEL_10;
  }

  v17 = *a8;
  if (!*a8)
  {
    goto LABEL_10;
  }

  if (a8[1] != a1)
  {
    goto LABEL_10;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_10;
  }

  *v15 = v17;
  if (v17 == obj_oid(a1) || btree_node_get(a1, v15, v43, v42 & 0x200 | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, 0, v49))
  {
    goto LABEL_10;
  }

  v18 = v49[0];
  if ((*(v49[0][7] + 32) & 2) == 0 || bt_search_node_insert(v49[0], v44, v45, &v47, &v46))
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
  v49[0] = a1;
  obj_retain(a1);
  v39 = a5;
  v40 = 0;
  v21 = v42 & 0x200;
  for (i = a1; ; i = v49[0])
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

        v26 = bt_search_node_insert(i, v44, v45, &v47, &v46);
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

        v25 = v49[0];
        obj_retain(v49[0]);
        v40 = v20 - v19 + v27;
LABEL_26:
        v29 = v49[0];
        if ((v42 & 0x100) != 0)
        {
          v30 = v49[0][7];
          if (*(v30 + 34) == 1 && *(v30 + 36) - 1 > v27 && !btree_node_child_val(v49[0], (v27 + 1), v15))
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
        v49[0] = v48;
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
    v26 = bt_search_node_insert(i, v44, v45, &v47, &v46);
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
      v18 = v49[0];
      v35 = v37;
      if (!v49[0])
      {
        goto LABEL_61;
      }

LABEL_60:
      btree_node_release(v18, v18 != v25);
      goto LABEL_61;
    }

    btree_node_release(i, i != v25);
    v33 = btree_node_child_val(v25, v40, v15);
    if (v33 || (v33 = btree_node_get(a1, v15, v43, v21 | 2u, *(v25[7] + 34) - 1, 0, v49), v33))
    {
      v34 = v33;
      v49[0] = 0;
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

  v18 = v49[0];
  if (!v34)
  {
LABEL_87:
    v34 = 0;
    *v35 = v18;
    *a10 = v47;
    return v34;
  }

  if (v49[0])
  {
    goto LABEL_60;
  }

LABEL_61:
  *v35 = 0;
  return v34;
}

uint64_t bt_lookup_copy_out(uint64_t a1, void *a2, unsigned __int16 a3, void *a4, _DWORD *a5, unsigned int a6, void *a7, unsigned int *a8, int a9)
{
  __src = 0;
  v29 = 0;
  v30 = 0;
  if (a9 | a6)
  {
    v17 = btree_node_key_ptr(a2, a3, &__src, &v29 + 1);
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

    v21 = (*(a1 + 416))(v20, __src, HIWORD(v29), a4, *a5, &v30);
    if (v21)
    {
      return v21;
    }

    if (a9 == 2 && (v30 & 0x80000000) == 0 || a9 == 1 && v30 > 0 || a9 == 3 && v30 < 0 || a9 == 4 && v30 <= 0)
    {
      v18 = nx_corruption_detected_int(*(*a1 + 392));
      goto LABEL_19;
    }
  }

  else
  {
    __src = 0;
    HIWORD(v29) = 0;
  }

LABEL_22:
  v31 = 0;
  v21 = btree_node_val_ptr(a2, a3, &v31, &v29);
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
  if (*a8 < v23 || (v18 = 0, a6) && HIWORD(v29) > a6)
  {
    v18 = 34;
  }

  if (a6)
  {
    v25 = HIWORD(v29);
    if (HIWORD(v29) >= a6)
    {
      v26 = a6;
    }

    else
    {
      v26 = HIWORD(v29);
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

  memcpy(a7, v31, v27);
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

uint64_t btree_create_extended(uint64_t *a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7, uint64_t *a8)
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
    v13 = *(*(*(*a1 + 392) + 376) + 36);
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

  result = btree_node_create(a1, v17, *(a6 + 4), &v26, a7, a8);
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

uint64_t btree_node_create(pthread_mutex_t **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = btree_node_desc;
  DWORD2(v18) = (*(a4 + 8) >> 27) & 0x1F000;
  v11 = *(a4 + 4);
  if (v11)
  {
    LODWORD(v18) = 2;
  }

  v19 = 0;
  DWORD1(v18) = a3;
  if ((v11 & 0x10) != 0)
  {
    v12 = 536870916;
  }

  else
  {
    v12 = 4;
  }

  v13 = *a1;
  if (obj_type(a1) == 13)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = obj_create(v13, v12 | a2, 0, &v18, a4, v14, a5, &v19);
  if (!v15)
  {
    v16 = v19;
    *a6 = v19;
    obj_dirty(v16, a5, 0);
  }

  return v15;
}

uint64_t btree_create(uint64_t *a1, unint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v19 = *MEMORY[0x277D85DE8];
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
  v39 = a7;
  v40 = a8;
  v42[1] = *MEMORY[0x277D85DE8];
  v14 = *(a6 + 28);
  if (v14 >= 0x40)
  {
    v15 = 96;
  }

  else
  {
    v15 = v14 + 32;
  }

  MEMORY[0x28223BE20](a1);
  v17 = &v39 - v16;
  bzero(&v39 - v16, v15);
  v42[0] = 0;
  v41 = btree_node_desc;
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
  v23 = *(v17 + 1) & 0xFFFFF07FFFFFFE00 | v21 | (((*(*(*(*a1 + 392) + 376) + 36) >> 12) & 0x1F) << 39);
  *(v17 + 1) = v23;
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

  v32 = *(a6 + 24);
  if (v32 > 0xFFF)
  {
    return 22;
  }

  v33 = v23 & 0x80000FFFFFFFFFFFLL | ((*&v32 & 0x7FFFFLL) << 44);
  v34 = *(a6 + 28);
  *(v17 + 1) = v33 | ((v34 & 0x7F) << 56);
  if (v34 > 0x7F)
  {
    return 22;
  }

  if (v34 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = v34;
  }

  memcpy(v17 + 32, (a6 + 32), v35);
  v22 = *a1;
LABEL_14:
  v24 = v20 | 0x20000000;
  if (v21 < 0x100)
  {
    v24 = v20;
  }

  v25 = *(a6 + 16);
  LODWORD(v41) = v24 & 0xFFFF0000 | 2;
  DWORD1(v41) = v25;
  v26 = 3;
  if ((v24 & 0x40000000) == 0)
  {
    v26 = 1;
  }

  if ((a5 & 1) == 0)
  {
    v26 = 0;
  }

  v27 = v24 | v26;
  if ((a5 & 2) != 0)
  {
    v27 |= 4uLL;
  }

  if ((a5 & 4) != 0)
  {
    v27 |= 0x20uLL;
  }

  v28 = v27 | ((a5 & 0x200) << 23);
  if (obj_type(a1) == 13)
  {
    v29 = a1;
  }

  else
  {
    v29 = 0;
  }

  result = obj_get(v22, v28, a3, &v41, v17, v29, a4, v39, v42);
  if ((a5 & 4) == 0 || result)
  {
    v31 = v42[0];
    if (result)
    {
      v36 = 0;
    }

    else
    {
      v36 = v42[0];
    }

    *v40 = v36;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v31 = v42[0];
    if ((*(v42[0] + 16) & 0x10) == 0)
    {
      *v40 = v42[0];
LABEL_44:
      v37 = *(a6 + 8);
      result = 0;
      if (v37)
      {
        *(v31 + 424) = v37;
      }

      return result;
    }

    if (a5)
    {
      v38 = 2;
    }

    else
    {
      v38 = 1;
    }

    btree_node_release(v42[0], v38 & (a5 << 30 >> 31));
    *v40 = 0;
    return 2;
  }

  return result;
}

uint64_t btree_get(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v19 = *MEMORY[0x277D85DE8];
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
  v101 = a5;
  v102 = a6;
  v103 = a4;
  v100 = a2;
  v113 = *MEMORY[0x277D85DE8];
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  MEMORY[0x28223BE20](a1);
  v9 = (&v85 - v8);
  bzero(&v85 - v8, v10);
  v99 = a3 & 0x180;
  v11 = v99 != 0;
  if (a3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  obj_lock(a1, v12);
  v13 = *(a1 + 56);
  if (!v13)
  {
    obj_unlock(a1, v12);
    return 22;
  }

  v14 = *(v13 + 34);
  v15 = v14 + 1;
  v98 = v14;
  if (v14 < 8)
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v16 = &v105;
    v105 = 0u;
    v106 = 0u;
  }

  else
  {
    v16 = _apfs_calloc_typed(v14 + 1, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v16)
    {
      obj_unlock(a1, v12);
      return 12;
    }
  }

  *v16 = a1;
  *(v16 + 4) = 0;
  obj_retain(a1);
  if (a3)
  {
    v17 = obj_modify(a1, 2, v102);
    if (v17)
    {
      goto LABEL_13;
    }

    if ((*(a1 + 400) & 0x80) != 0)
    {
      obj_dirty(a1, v102, 0);
    }
  }

  v17 = 0;
LABEL_13:
  v18 = a3 & 0x20;
  v96 = &v85;
  v95 = v15;
  if (!v103 || v17 | v18)
  {
    v19 = v101;
    if (v17)
    {
      goto LABEL_99;
    }

    goto LABEL_21;
  }

  v19 = v101;
  if ((a3 & 0x10) == 0 || *(*(a1 + 56) + 34))
  {
    v17 = (v103)(a1, v101);
  }

  if (!v17)
  {
LABEL_21:
    v20 = 0;
    v88 = a3 & 0xFFFFFE4F;
    v21 = a3 & 0xFFFFFE4D | 2;
    if (v99)
    {
      v21 = a3 & 0xFFFFFE4C;
    }

    v22 = v18 == 0;
    if (v103)
    {
      v23 = v18 != 0;
    }

    else
    {
      v23 = 0;
    }

    v87 = v11 << 7;
    v97 = (v11 << 7) | v21;
    v90 = a3 & 0xFFFFFE4C;
    v89 = a3 & 0xFFFFFE4C | 0x100;
    if (v103)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v92 = v24;
    v94 = v16;
    v93 = v23;
    do
    {
      v25 = &v16[v20];
      v26 = *v25;
      v27 = *(*v25 + 56);
      if ((*(v27 + 32) & 2) != 0 || (v28 = v25[4], *(v27 + 36) <= v28) || (a3 & 0x10) != 0 && *(v27 + 34) == 1)
      {
        if (v23)
        {
          v17 = v103();
          v26 = *v25;
        }

        else
        {
          v17 = 0;
        }

        btree_node_release(v26, v12);
        *v25 = 0;
        --v20;
        if (v17)
        {
          break;
        }

        continue;
      }

      *v9 = 0;
      v29 = btree_node_child_val(v26, v28, v9);
      if (v29)
      {
        v17 = v29;
        v54 = *(a1 + 8);
        if (v54)
        {
          v55 = (v54 + 4040);
        }

        else
        {
          v55 = (*(*(*a1 + 392) + 384) + 212);
        }

        v60 = *(*(*v25 + 56) + 34);
        v61 = obj_oid(*v25);
        log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child oid: %d\n", "btree_iterate_nodes", 6433, v55, v60, v61, v25[4], v17);
        break;
      }

      ++v25[4];
      if (v98 < ++v20)
      {
        v56 = *(a1 + 8);
        if (v56)
        {
          v57 = (v56 + 4040);
        }

        else
        {
          v57 = (*(*(*a1 + 392) + 384) + 212);
        }

        v62 = &v16[v20];
        v63 = *(v62 - 2);
        v64 = *(*(v63 + 56) + 34);
        v65 = obj_oid(v63);
        log_err("%s:%d: %s level %d node 0x%llx index %d: more levels than expected\n", "btree_iterate_nodes", 6440, v57, v64, v65, *(v62 - 4) - 1);
        v17 = 22;
        break;
      }

      v30 = &v16[v20];
      *(v30 + 4) = 0;
      v31 = (v30 - 1);
      v32 = btree_node_get(a1, v9, v100, v97, *(*(*(v30 - 2) + 56) + 34) - 1, v102, v30);
      v17 = v32;
      if (v32)
      {
        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 + 4040);
          v35 = *(*(*v31 + 56) + 34);
          v36 = obj_oid(*v31);
          v32 = log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v34, v35, v36, *(v30 - 4) - 1, *v9, v97, v17);
        }

        else
        {
          v37 = (*(*(*a1 + 392) + 384) + 212);
          v38 = *(*(*v31 + 56) + 34);
          v39 = obj_oid(*v31);
          v32 = log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v37, v38, v39, *(v30 - 4) - 1, *v9, v97, v17);
        }

        v19 = v101;
        if (!v99)
        {
          goto LABEL_95;
        }
      }

      else if (!v99)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (*(*(*(v30 - 2) + 56) + 36) > *(v30 - 4))
      {
        v91 = &v85;
        MEMORY[0x28223BE20](v32);
        v41 = (&v85 - v40);
        bzero(&v85 - v40, v42);
        v43 = *(v30 - 4);
        if (*(*(*v31 + 56) + 36) > v43)
        {
          v44 = btree_node_child_val(*v31, v43, v41);
          if (v44 || (v44 = btree_node_get(a1, v41, v100, v89, *(*(*v31 + 56) + 34) - 1, v102, &v104), v44))
          {
            v86 = v44;
            v45 = *(a1 + 8);
            if (v45)
            {
              v85 = (v45 + 4040);
            }

            else
            {
              v85 = (*(*(*a1 + 392) + 384) + 212);
            }

            v46 = *(*(*v31 + 56) + 34);
            v47 = obj_oid(*v31);
            log_err("%s:%d: %s level %d node 0x%llx: error prefetching index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6474, v85, v46, v47, *(v30 - 4), *v41, v89, v86);
            v19 = v101;
          }
        }
      }

      if (v17)
      {
        if (v17 != 45 && v17 != 16)
        {
          goto LABEL_95;
        }

        v49 = btree_node_get(a1, v9, v100, v90, *(*(*v31 + 56) + 34) - 1, v102, v30);
        if (v49)
        {
          v17 = v49;
LABEL_95:
          v76 = *(a1 + 8);
          if (v76)
          {
            v77 = (v76 + 4040);
          }

          else
          {
            v77 = (*(*(*a1 + 392) + 384) + 212);
          }

          v78 = *(*(*v31 + 56) + 34);
          v79 = obj_oid(*v31);
          log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child flags 0x%x: %d\n", "btree_iterate_nodes", 6510, v77, v78, v79, *(v30 - 4) - 1, v88 | v87 | 2, v17);
          v16 = v94;
          break;
        }
      }

      else
      {
        v50 = obj_async_wait(*v30);
        if (v50)
        {
          v17 = v50;
          v66 = *(a1 + 8);
          if (v66)
          {
            v67 = (v66 + 4040);
          }

          else
          {
            v67 = (*(*(*a1 + 392) + 384) + 212);
          }

          v72 = *(*(*v30 + 56) + 34);
          v73 = obj_oid(*v31);
          v74 = *(v30 - 4) - 1;
          v75 = obj_oid(*v30);
          log_err("%s:%d: %s level %d node 0x%llx: error ON WAIT getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6487, v67, v72, v73, v74, v75, v97, v17);
          obj_release(*v30);
          goto LABEL_94;
        }
      }

      obj_lock(*v30, v12);
      if ((a3 & 1) == 0)
      {
        goto LABEL_71;
      }

      v51 = *v30;
      v52 = obj_type_and_flags(*v30);
      v53 = obj_modify(v51, (v52 >> 29) & 2, v102);
      if (v53)
      {
        v17 = v53;
        v58 = *(a1 + 8);
        if (v58)
        {
          v59 = (v58 + 4040);
        }

        else
        {
          v59 = (*(*(*a1 + 392) + 384) + 212);
        }

        v68 = *(*(*v30 + 56) + 34);
        v69 = obj_oid(*v31);
        v70 = *(v30 - 4) - 1;
        v71 = obj_oid(*v30);
        log_err("%s:%d: %s level %d node 0x%llx: error MODIFYING index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6501, v59, v68, v69, v70, v71, v97, v17);
        btree_node_release(*v30, 2);
LABEL_94:
        *v30 = 0;
        goto LABEL_95;
      }

LABEL_69:
      if (obj_oid(*v30) != *v9)
      {
        btree_node_child_id_update(*(v30 - 2), (*(v30 - 4) - 1), (*v30 + 112), v102);
      }

LABEL_71:
      if (v92)
      {
        v17 = (v103)(*v30, v19);
      }

      else
      {
        v17 = 0;
      }

      v16 = v94;
      v23 = v93;
      if (v17)
      {
        break;
      }
    }

    while ((v20 & 0x8000) == 0);
  }

LABEL_99:
  v80 = v95;
  if (((v95 - 1) & 0x8000) == 0)
  {
    v81 = v98 + 1;
    v82 = &v16[v98];
    do
    {
      if (*v82)
      {
        btree_node_release(*v82, v12);
      }

      v82 -= 2;
    }

    while (v81-- > 1);
  }

  if (v16 != &v105)
  {
    _apfs_free(v16, (16 * v80));
  }

  return v17;
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
  v22[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v11 = (v22 - v10);
  bzero(v22 - v10, v12);
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
    v22[0] = 0;
    while (v18 < *(*(a4 + 56) + 36))
    {
      *v11 = 0;
      v19 = btree_node_child_val(a4, v18, v11);
      if (v19)
      {
        return v19;
      }

      v19 = btree_node_get(a3, v11, 0, 2u, *(*(a4 + 56) + 34) - 1, 0, v22);
      if (v19)
      {
        return v19;
      }

      v20 = v22[0];
      v17 = btree_node_checkpoint_traverse(a1, a2, a3, v22[0], a5);
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

uint64_t btree_node_copy(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v47[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
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

  v43 = 0;
  v21 = obj_subtype(a2);
  v22 = btree_node_create(v20, a3, v21, v45, a5, a7);
  inserted = v22;
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

      btree_node_init_ext(v30, v45, 0);
      inserted = 0;
      goto LABEL_28;
    }

    return inserted;
  }

  v41 = a7;
  v32 = 0;
  v47[0] = 0;
  v44 = 0;
  v42 = (a3 >> 23) & 0x200;
  while (1)
  {
    if (v32 >= *(*(a2 + 56) + 36))
    {
      inserted = 0;
      goto LABEL_27;
    }

    *v15 = 0;
    v33 = btree_node_child_val(a2, v32, v15);
    if (v33 || (v33 = btree_node_get(a1, v15, 0, v42 | 2u, *(*(a2 + 56) + 34) - 1, 0, v47), v33))
    {
      inserted = v33;
      goto LABEL_27;
    }

    v34 = v47[0];
    v35 = btree_node_copy(a1, v47[0], a3, v17, a5, a6, &v46);
    if (v35)
    {
      break;
    }

    v36 = btree_node_key_ptr(a2, v32, &v44, &v43);
    if (v36)
    {
      inserted = v36;
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

      log_err("%s:%d: %s btree_node_insert_internal failed: %d\n", "btree_node_copy", 6692, v38, inserted);
      goto LABEL_21;
    }

    *v15 = *(v46 + 112);
    inserted = btree_node_insert_internal(*v41, v32, v44, v43, v15, (*(*v41 + 407) & 0x7Fu) + 8, a5);
    if (inserted)
    {
      goto LABEL_17;
    }

LABEL_21:
    obj_release(v46);
    obj_unlock(v34, 1);
    obj_release(v34);
    v46 = 0;
    ++v32;
    if (inserted)
    {
      goto LABEL_27;
    }
  }

  inserted = v35;
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
  return inserted;
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
      v14 = nx_reaper_add(v10, v11, v12, v7, v13, a2, 0, a3);
    }

    else
    {
      v14 = nx_reaper_add_sub_object(v10, v11, v12, v7, v13, a2, 0);
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
  v14[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v7 = (v14 - v6);
  bzero(v14 - v6, v8);
  if ((*(a2[7] + 32) & 2) == 0)
  {
    v9 = 0;
    v14[0] = 0;
    while (v9 < *(a2[7] + 36))
    {
      *v7 = 0;
      v10 = btree_node_child_val(a2, v9, v7);
      if (v10 || (v10 = btree_node_get(a1, v7, 0, 0, *(a2[7] + 34) - 1, 0, v14), v10))
      {
        v12 = v10;
        goto LABEL_10;
      }

      v11 = v14[0];
      obj_lock(v14[0], 2);
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

uint64_t btree_node_init_ext(uint64_t a1, uint64_t a2, int a3)
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

uint64_t btree_node_free_space_total(uint64_t a1)
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

uint64_t btree_node_space_free_list_search(uint64_t result, int a2, unsigned __int16 a3, __int16 *a4, unsigned __int16 *a5)
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

uint64_t btree_node_compact(uint64_t a1, __int16 a2, uint64_t a3)
{
  v53 = 0;
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

  v47 = btree_node_desc;
  v48 = 2123139;
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v49 = v7;
  v50 = *(v6 + 34);
  v8 = *(a1 + 40);
  LODWORD(v47) = *(a1 + 36);
  DWORD1(v47) = v8;
  DWORD2(v47) = (*(a1 + 400) >> 27) & 0x1F000;
  v9 = obj_create(*a1, 2281701376, 0, &v47, &v48, *(a1 + 8), a3, &v53);
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

    btree_node_init_ext(a1, &v48, 0);
    btree_node_init_ext(v53, &v48, 0);
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

    btree_node_toc_resize(a1, (v25 << v26) & 0xFFFC);
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
          inserted = btree_node_key_range_validate(v27, v37, v36);
          if (inserted)
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
          inserted = btree_node_val_range_validate(v27, v40, v41);
          if (inserted)
          {
            break;
          }

          v44 = (v53[49] - v40);
        }

        inserted = btree_node_insert_internal(a1, v32, v43, v36, v44, v41, a3);
        if (inserted)
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

      v10 = inserted;
      if (v7)
      {
        memcpy((*(a1 + 56) + 32), (v53[7] + 32), v53[49] - v53[7] - 32);
        v45 = a1;
      }

      else
      {
        obj_exchange_phys(a1, v53);
        btree_node_init_ext(a1, 0, 0);
        v45 = v53;
      }

      btree_node_init_ext(v45, 0, 0);
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

uint64_t btree_node_space_free_list_alloc(uint64_t a1, int a2, unsigned __int16 a3, int a4, int a5)
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

uint64_t btree_node_space_alloc(uint64_t a1, int a2, unsigned __int16 a3, _WORD *a4)
{
  v14 = -1;
  v13 = -1;
  btree_node_space_free_list_search(a1, a2, a3, &v13, &v14);
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
    result = btree_node_space_free_list_alloc(a1, a2, a3, v13, v14);
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

void btree_node_toc_resize(uint64_t a1, unsigned int a2)
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

void *btree_node_toc_shift(uint64_t a1, int a2, int a3)
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

uint64_t btree_node_child_id_update_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  if (a8 != 8)
  {
    return 22;
  }

  result = 0;
  *a5 = *a7;
  return result;
}

uint64_t bt_move_entries(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    btree_node_toc_resize(v10, v13);
    goto LABEL_19;
  }

  v15 = btree_node_compact(v10, v8, a4);
  if (!v15)
  {
LABEL_19:
    v59 = 0;
    memset(__n, 0, sizeof(__n));
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
        v36 = btree_node_key_ptr(a2, 0, &v59, __n + 1);
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
            inserted = btree_node_val_ptr(a2, v38, &__n[1], __n);
            if (inserted)
            {
              break;
            }

            inserted = btree_node_insert_internal(a1, *(*(a1 + 56) + 36), v59, HIWORD(__n[0]), *&__n[1], LOWORD(__n[0]), a4);
            if (inserted)
            {
              break;
            }

            v40 = *(a2 + 56);
            v41 = *(a2 + 376);
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v42 = HIWORD(__n[0]);
            }

            else
            {
              v42 = (HIWORD(__n[0]) + 7) & 0xFFF8;
            }

            v43 = (v42 + 7) & 0xFFF8;
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v43 = HIWORD(__n[0]);
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
            v47 = __n[0];
            if (LOWORD(__n[0]) && LOWORD(__n[0]) != 65534)
            {
              if ((*(a2 + 400) & 0x40) != 0)
              {
                v48 = __n[0];
              }

              else
              {
                v48 = (LOWORD(__n[0]) + 7) & 0xFFF8;
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

            inserted = btree_node_key_ptr(a2, v38, &v59, __n + 1);
          }

          while (!inserted);
          v15 = inserted;
          v37 = v38;
        }
      }

      btree_node_toc_shift(a2, 0, -v37);
      *(*(a2 + 56) + 36) -= v38;
    }

    else if (v8 < 1)
    {
      v15 = 0;
    }

    else
    {
      btree_node_toc_shift(a2, 0, v8);
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
        v21 = btree_node_key_ptr(a1, (v20 - 1), &v59, __n + 1);
        if (v21)
        {
          break;
        }

        v21 = btree_node_val_ptr(a1, (*(*(a1 + 56) + 36) - 1), &__n[1], __n);
        if (v21)
        {
          break;
        }

        v21 = btree_node_entry_update(a2, (v8 + ~v19), v59, HIWORD(__n[0]), *&__n[1], LOWORD(__n[0]), a4);
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
          v24 = HIWORD(__n[0]);
        }

        else
        {
          v24 = (HIWORD(__n[0]) + 7) & 0xFFF8;
        }

        v25 = (v24 + 7) & 0xFFF8;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v25 = HIWORD(__n[0]);
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
        v29 = __n[0];
        if (LOWORD(__n[0]) && LOWORD(__n[0]) != 65534)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v30 = __n[0];
          }

          else
          {
            v30 = (LOWORD(__n[0]) + 7) & 0xFFF8;
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
      btree_node_toc_shift(a2, 0, (v19 - v8));
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
      btree_node_toc_resize(v9, (v56 * v55));
    }

    goto LABEL_96;
  }

  return v15;
}

void btree_node_reinit_root(uint64_t a1, int a2, uint64_t a3)
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
  btree_node_init_phys(v7, v8, &v9);
  btree_node_init_ext(a1, &v9, 0);
  obj_dirty(a1, a3, 0);
}

void *bt_update_last_leaf(void *result, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
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
      MEMORY[0x28223BE20](result);
      v7 = (v12 - v6);
      bzero(v12 - v6, v8);
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

void bt_merge_nodes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = a6;
  v71[1] = *MEMORY[0x277D85DE8];
  v71[0] = a6;
  MEMORY[0x28223BE20](a1);
  v17 = (&v62 - v16);
  bzero(&v62 - v16, v18);
  v69 = 0;
  v68 = 0;
  v19 = *(a4 + 56);
  if (!a2)
  {
    if ((*(v19 + 32) & 2) != 0 || *(v19 + 36) != 1)
    {
      return;
    }

    if (a5 || v10 && (*(v10 + 16) & 0x10) != 0)
    {
      if (btree_node_child_val(a4, 0, v17) || btree_node_get(a1, v17, a7, 3u, *(*(a4 + 56) + 34) - 1, a8, v71))
      {
        return;
      }

      v10 = v71[0];
      if ((*(a1 + 400) & 0x10) != 0 && *(v71[0] + 112) != *v17)
      {
        btree_node_child_id_update(a4, 0, (v71[0] + 112), a8);
      }

      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    if (btree_node_free_space_total(v10) > 0x27)
    {
      v46 = *(v10 + 56);
      if (*(v46 + 46) > 0x27u || ((*(v46 + 32) & 4) == 0 || (*(v10 + 400) & 4) != 0) && (btree_node_compact(v10, 0, a8), *(*(v10 + 56) + 46) > 0x27u))
      {
        btree_node_remove(a4, 0, a8);
        btree_node_reinit_root(a4, (*(*(a4 + 56) + 34) - 1), a8);
        v47 = bt_move_entries(a4, v10, -*(*(v10 + 56) + 36), a8);
        if (!v47)
        {
          bt_update_last_leaf(a1, a4, v10);
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
        bt_move_entries(a4, v10, *(*(a4 + 56) + 36), a8);
        btree_node_reinit_root(a4, (*(*(a4 + 56) + 34) + 1), a8);
        if (!btree_node_key_ptr(v10, 0, &v69, &v68))
        {
          *v17 = *(v10 + 112);
          btree_node_insert_internal(a4, 0, v69, v68, v17, (*(a4 + 407) & 0x7F) + 8, a8);
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
        v70 = 0;
        if (!btree_node_get(a1, v17, a7, 3u, *(*(a2 + 56) + 34) - 1, a8, &v70))
        {
          if ((*(a1 + 400) & 0x10) != 0 && v70[14] != *v17)
          {
            btree_node_child_id_update(a2, v20, v70 + 14, a8);
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
            v23 = btree_node_free_space_total(a4);
            v24 = v70;
            v25 = btree_node_free_space_total(v70);
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

              has_room = btree_node_has_room(a2, 0, 0, 0, v53 - v52, 0, 0);
              LOWORD(v29) = v67;
              if (!has_room)
              {
                goto LABEL_105;
              }
            }
          }

          if (v29 && !bt_move_entries(a4, v24, -v29, a8))
          {
            if (*(v24[7] + 36))
            {
              v58 = btree_node_key_ptr(v24, 0, &v69, &v68);
              if (v58 || (v58 = btree_node_entry_update(a2, v20, v69, v68, 0, 0, a8)) != 0)
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
              btree_node_remove(a2, v20, a8);
              bt_update_last_leaf(a1, a2, v24);
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
    btree_node_remove(a2, a3, a8);
    v45 = *(a2 + 56);
    if ((*(v45 + 32) & 1) != 0 && !*(v45 + 36))
    {
      btree_node_reinit_root(a2, 0, a8);
    }

    bt_update_last_leaf(a1, a2, a4);
    obj_delete_and_free(a4, a8);
    atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);

    obj_dirty(a1, a8, 0);
  }
}

uint64_t spaceman_metazone_init(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    log_debug("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  v2 = spaceman_get(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    obj_release(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!spaceman_metazone_get_size(a2, v11, v12, v13, &v29, &v28))
    {
      v14 = v8 + 104 * v5;
      v15 = v28 + v29 / v11;
      spaceman_metazone_get_partitions(v11, v29, v28, v15, &v27, 0);
      v16 = v28;
      *(v14 + 1016) = v28;
      *(v14 + 1032) = v16;
      v17 = v27;
      *(v14 + 1024) = v27;
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27;
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v28)
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v28 / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void spaceman_handle_metazone_freed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t spaceman_update_metazone_alloc_index(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t spaceman_get_metazone_alloc_index(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4040);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t spaceman_allocation_init(void *a1)
{
  v18 = 0;
  v2 = spaceman_get(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4040);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      log_debug("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      log_warn("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  spaceman_free_queue_trim_list_init(a1, v18);
  v2 = spaceman_metazone_init(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    spaceman_sanitize_datazone(v18);
    v14 = 1;
    while (1)
    {
      v15 = spaceman_datazone_init(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = spaceman_free_extent_cache_setup(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    log_err("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    obj_release(v18);
  }

  return v16;
}

const char *spaceman_sanitize_datazone(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 47);
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = *(v1 + 1);
                if (v12)
                {
                  v13 = (v12 + 4040);
                }

                else
                {
                  v13 = (*(*(*v1 + 392) + 384) + 212);
                }

                result = log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = *(v1 + 1);
                  if (v21)
                  {
                    v22 = (v21 + 4040);
                  }

                  else
                  {
                    v22 = (*(*(*v1 + 392) + 384) + 212);
                  }

                  log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = *(v1 + 1);
              if (v19)
              {
                v20 = (v19 + 4040);
              }

              else
              {
                v20 = (*(*(*v1 + 392) + 384) + 212);
              }

              log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = *(v1 + 1);
              if (v23)
              {
                v24 = (v23 + 4040);
              }

              else
              {
                v24 = (*(*(*v1 + 392) + 384) + 212);
              }

              result = log_warn("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t spaceman_datazone_init(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = spaceman_get(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = spaceman_initialize_allocation_zone_from_disk(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    log_err("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    obj_release(v12);
  }

  return v4;
}

uint64_t spaceman_initialize_allocation_zone_from_disk(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          *(v7 + 16) = v19;
          updated = spaceman_update_allocation_zone_boundaries(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = updated;
          if (updated)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4040);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, updated);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      *(v7 + 16) = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void spaceman_datazone_destroy(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = 0;
    v4 = result + 1224;
    v5 = result + 1250;
    v6 = 1;
    do
    {
      v7 = v6;
      if (*(v4 + 136 * v3 + 128) == 1)
      {
        v8 = (v5 + 136 * v3);
        v9 = 4;
        do
        {
          if (*(v8 - 2) == 1 && *v8 == 1)
          {
            v10 = *(v8 - 10);
            if (v10)
            {
              *(v8 - 2) = 0;
              _apfs_free(v10, 136);
              *(v8 - 10) = 0;
            }
          }

          v8 += 32;
          --v9;
        }

        while (v9);
      }

      v6 = 0;
      v3 = 1;
    }

    while ((v7 & 1) != 0);
  }
}

uint64_t spaceman_update_allocation_zone_boundaries(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = _apfs_calloc_typed(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t spaceman_get_number_of_disabled_allocation_zones(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_evaluate_chunk_for_disabled_allocation_zones(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  updated = spaceman_update_allocation_zone_boundaries(a1, a2, v8, a3);
  v17 = a1[1];
  if (updated)
  {
    v14 = updated;
    if (v17)
    {
      v18 = (v17 + 4040);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4040);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t spaceman_get_new_chunk_for_allocation_zone(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        v76 = 0;
        v77 = 0;
        v74 = 0;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          updated = spaceman_update_allocation_zone_boundaries(v5, v6, a4, v21);
          if (updated)
          {
            v4 = updated;
            log_err("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = get_timestamp();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v70 = 0;
            v32 = 0;
            v67 = v31;
            v68 = (v26 / v27);
            v64 = v26;
            v65 = v5 + 896;
            v63 = v5;
            v33 = v5 + 1496;
            v69 = -1;
            v21 = -1;
            do
            {
              v34 = (v68 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v69;
                v38 = v70;
                if (v34 / v35 != v69 || v70 == 0)
                {
                  v40 = *(*(v65 + 8 * v9) + 8 * v36);
                  if (v73)
                  {
                    obj_release(v73);
                    v73 = 0;
                  }

                  v76 = v8;
                  v77 = __PAIR64__(v36, a3);
                  v41 = obj_get(*(a1 + 392), 0x40000000, v40, &sm_cab_desc, &v76, 0, 0, 0, &v73);
                  if (v41)
                  {
                    v4 = v41;
                    log_err("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = *(v73 + 56);
                  v35 = v8[11];
                  v37 = v36;
                }

                v69 = v37;
                v70 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v65 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v74 = v8;
              v75 = __PAIR64__(v34, v6);
              v44 = obj_get(*(a1 + 392), 0x40000000, v43, &sm_cib_desc, &v74, 0, 0, 0, &v72);
              if (v44)
              {
                v4 = v44;
                log_err("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v64 % v8[10] + 1;
              }

              v31 = v67;
              v46 = *(v72 + 56);
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              obj_release(v72);
              v72 = 0;
              ++v30;
              v14 = v67[4];
            }

            while (v30 < v14);
            v5 = v63;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v73)
        {
          obj_release(v73);
        }

        if (v72)
        {
          obj_release(v72);
        }
      }
    }
  }

  return v4;
}

BOOL spaceman_should_avoid_data_allocation_at_block(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL spaceman_clip_extent(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = calc_overlap_range(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t spaceman_clip_extent_to_zones(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && spaceman_clip_extent(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = spaceman_clip_extent(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (spaceman_clip_extent(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && spaceman_clip_extent(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

uint64_t utf8_normalizeOptCaseFoldAndHash(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
{
  v7 = a3;
  v20[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = a1;
  v20[0] = 0;
  v20[1] = 0;
  v8 = &a1[a2];
  v15 = 0;
  v14 = 1;
  do
  {
    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    v13 = 0;
    v12 = 0;
    v9 = nextBaseAndAnyMarks(&v17, v8, v7, v20, &v16 + 4, &v16, &v15, v19, v18, &v13, &v12, &v14);
    if (v9)
    {
      break;
    }

    v10 = v13;
    if (v13 >= 1)
    {
      if (v12 == 1)
      {
        doReorder(v19, v18, v13);
      }

      a4(v19, 4 * v10, a5);
    }
  }

  while (v17 < v8 || v16 > 0);
  return v9;
}

uint64_t nextBaseAndAnyMarks(unsigned __int8 **a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
{
  v17 = *a6;
  v18 = *a7;
  if (*a6 >= 1 && v18 < v17)
  {
    v65 = 0;
    *a11 = 0;
    *a10 = 0;
    v18 = *a7;
    while (1)
    {
      if (v65 >= 1 && *(a5 + v18) && *(a5 + v18) < *(a9 - 1 + v65))
      {
        *a11 = 1;
      }

      *(a8 + 4 * v65) = a4[v18];
      v66 = *a7;
      *a7 = v66 + 1;
      LOBYTE(v66) = *(a5 + v66);
      v67 = *a10;
      *a10 = v67 + 1;
      *(a9 + v67) = v66;
      v18 = *a7;
      v17 = *a6;
      if (*a7 >= *a6 || !*(a5 + v18))
      {
        break;
      }

      v65 = *a10;
    }
  }

  if (v18 >= v17)
  {
    *a6 = 0;
    *a7 = 0;
    v20 = *a1;
    if (*a1 < a2)
    {
      v21 = a4 - 1;
      do
      {
        v23 = v20 + 1;
        *a1 = v20 + 1;
        v24 = *v20;
        result = 92;
        if (!*v20 || v24 == 47)
        {
          return result;
        }

        if ((v24 & 0x80) == 0)
        {
          result = 0;
          if (v24 - 91 < 0xFFFFFFE6)
          {
            v68 = 1;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v69 = *v20;
          }

          else
          {
            v69 = v24 | 0x20;
          }

          *a4 = v69;
          *a6 = 1;
          *a5 = 0;
          goto LABEL_143;
        }

        if (v24 - 225 > 0xB)
        {
          if (v24 - 194 <= 0x1D && v23 < a2)
          {
            v30 = *v23 ^ 0x80;
            if (v30 <= 0x3F)
            {
              v28 = ((v24 & 0x1F) << 6) | v30;
              v23 = v20 + 2;
              goto LABEL_44;
            }
          }
        }

        else if ((v20 + 2) < a2)
        {
          v26 = *v23 ^ 0x80;
          if (v26 <= 0x3F)
          {
            v27 = v20[2] ^ 0x80;
            if (v27 <= 0x3F)
            {
              v28 = ((v24 & 0xF) << 12) | (v26 << 6) | v27;
              v23 = v20 + 3;
              goto LABEL_44;
            }
          }
        }

        if (v24 > 0xEF)
        {
          if (v24 > 0xFD)
          {
            v33 = 0;
            goto LABEL_33;
          }

          if (v24 <= 0xF7)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          v32 = v24 > 0xFB;
        }

        else
        {
          v31 = v24 > 0xDF;
          v32 = v24 > 0xBF;
        }

        if (v32)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = v31;
        }

LABEL_33:
        v28 = -1;
        if (&v23[v33] <= a2)
        {
          v34 = v24 & ~(-1 << (6 - v33));
          if (v33 == 1 || (v33 == 2 || v33 == 3 && (v23 = v20 + 2, v35 = v20[1] ^ 0x80, v28 = -1, v35 <= 0x3F) && (v34 = v35 | (v34 << 6), v34 <= 0x10F)) && (v36 = *v23, ++v23, v37 = v36 ^ 0x80, v28 = -1, (v36 ^ 0x80u) <= 0x3F) && (v34 = v37 | (v34 << 6), (v34 & 0xFFE0) != 0x360))
          {
            v38 = *v23++;
            v39 = v38 ^ 0x80;
            if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < utf8_minLegal[v33]))
            {
              v28 = -1;
            }
          }
        }

LABEL_44:
        *a1 = v23;
        if (v28 < 1)
        {
          return result;
        }

        *a5 = 0;
        if (v28 >= 0xF0000)
        {
          if ((~v28 & 0xFFFE) == 0)
          {
            goto LABEL_144;
          }

LABEL_47:
          *a4 = v28;
          goto LABEL_55;
        }

        v40 = v28;
        if (v28 >> 10 >= 0xC9)
        {
          if ((v28 - 918016) < 0xFFFFFE00)
          {
            goto LABEL_144;
          }

          v40 = v28 - 711680;
        }

        v41 = nfTrieHi[v40 >> 8];
        if (!nfTrieHi[v40 >> 8])
        {
          goto LABEL_54;
        }

        if (v41 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v41 & 0xFF00) == 0xAD00)
        {
LABEL_54:
          *a4 = v28;
          *a5 = v41;
          goto LABEL_55;
        }

        if (((v40 >> 8) - 172) <= 0x2A)
        {
          goto LABEL_69;
        }

        v50 = nfTrieMid[16 * (v41 & 0xFFF) + (v40 >> 4)];
        if (!v50)
        {
LABEL_75:
          *a4 = v28;
          *a5 = v50;
          goto LABEL_76;
        }

        if (v50 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v50 & 0xFF00) == 0xAE00)
        {
          if ((nfU16InvMasks[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = nfBasicCF[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = nfTrieLo[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
        {
LABEL_69:
          v45 = v28 - 44032;
          v46 = v45 / 28;
          v47 = v45 / 588;
          v48 = (49933 * (v45 / 28)) >> 16;
          *(a5 + 1) = 0;
          v49 = v45 % 28;
          *a4 = v47 + 4352;
          a4[1] = (v46 - 21 * ((v48 >> 4) + ((v48 & 0x8000) >> 15)) + 4449);
          if (v49)
          {
            a4[2] = v49 + 4519;
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          goto LABEL_56;
        }

        if (v52 == 0xFFFF)
        {
LABEL_144:
          v54 = -1;
LABEL_145:
          *a6 = v54;
          return result;
        }

        if (((v52 + 1792) >> 8) <= 0xB6u)
        {
          if (!v52 || (v52 & 0xFF00) == 0xAD00)
          {
            *a4 = v28;
            *a5 = v52;
          }

          else
          {
            *a4 = v52;
          }

LABEL_76:
          if ((a3 & 1) == 0)
          {
            v51 = *a4;
            if (v51 <= 1279)
            {
              v28 = nfBasicCF[v51];
              goto LABEL_47;
            }
          }

LABEL_55:
          v42 = 1;
LABEL_56:
          *a6 = v42;
          goto LABEL_57;
        }

        v53 = (v52 - 45056) >> 12;
        v54 = -1;
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v53 != 1)
            {
              goto LABEL_145;
            }

            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &nfU16Seq3 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &nfU16Seq2 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&nfU16SeqMisc + 2 * (v52 & 0x3FF));
            v59 = *v58;
            v55 = (v58 + 1);
            v57 = v59;
            goto LABEL_109;
          }

          if (v53 != 3)
          {
            if (v53 != 4)
            {
              goto LABEL_145;
            }

            v55 = 0;
            v56 = (&nfU32SeqMisc + 4 * (v52 & 0x3FF));
            v57 = *v56;
            v70 = v56 + 1;
LABEL_109:
            v42 = v57 & 0xF;
            *a5 = v57 >> 4;
            if (v42 - 5 < 0xFFFFFFFC)
            {
              v54 = 0;
              goto LABEL_145;
            }

            goto LABEL_110;
          }

          if ((v52 & 0x800) != 0 && a3)
          {
            goto LABEL_47;
          }

          v55 = 0;
          v70 = (&nfU32Char + 4 * (v52 & 0x7FF));
          v42 = 1;
        }

LABEL_110:
        v60 = 0;
        v74 = a3;
        v72 = a12;
        v73 = a2;
        v71 = v21;
        do
        {
          if (v55)
          {
            v62 = *v55;
            v55 += 2;
            v61 = v62;
          }

          else
          {
            v61 = *v70++;
          }

          a4[v60] = v61;
          if (v60)
          {
            v75 = v60;
            v76 = v55;
            CombClassU32Char = getCombClassU32Char(v61);
            v60 = v75;
            v55 = v76;
            *(a5 + v75) = CombClassU32Char;
          }

          ++v60;
          a3 = v74;
          a12 = v72;
          a2 = v73;
          v21 = v71;
        }

        while (v42 != v60);
        if ((v74 & 1) == 0)
        {
          v64 = *a4;
          if (v64 <= 1279)
          {
            *a4 = nfBasicCF[v64];
          }

          if (v42 < 2)
          {
            goto LABEL_55;
          }

          if (v71[v42] == 837)
          {
            v71[v42] = 953;
          }
        }

        *a6 = v42;
        if (v42 < 1)
        {
          return 92;
        }

LABEL_57:
        if (!*a5 || *a12 == 1)
        {
          result = 0;
LABEL_143:
          *a12 = 0;
          return result;
        }

        v43 = *a10;
        if ((v42 + *a10) > 32)
        {
          return 92;
        }

        v44 = 0;
        do
        {
          if (v43 >= 1 && *(a5 + v44) && *(a5 + v44) < *(a9 - 1 + v43))
          {
            *a11 = 1;
          }

          *(a8 + 4 * v43) = a4[v44];
          *(a9 + *a10) = *(a5 + v44++);
          v43 = *a10 + 1;
          *a10 = v43;
        }

        while (v44 < *a6);
        *a6 = 0;
        v20 = *a1;
      }

      while (*a1 < a2);
    }
  }

  return 0;
}

uint64_t doReorder(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = a3 - 1;
      do
      {
        v5 = *(a2 + v4);
        if (v5 < *(a2 + v4 - 1))
        {
          v6 = *(result + 4 * v4);
          *(result + 4 * v4) = *(result + 4 * (v4 - 1));
          *(a2 + v4) = *(a2 + v4 - 1);
          *(result + 4 * (v4 - 1)) = v6;
          *(a2 + v4 - 1) = v5;
        }

        --v4;
      }

      while (v4 > v3);
      ++v3;
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t getCombClassU32Char(int a1)
{
  if (a1 >= 983040)
  {
    return 0;
  }

  if (a1 == 953)
  {
    return 240;
  }

  v2 = a1 - 711680;
  if (a1 <= 205823)
  {
    v2 = a1;
  }

  LOWORD(v3) = nfTrieHi[v2 >> 8];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 44288;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v3;
  }

  v3 = nfTrieMid[16 * (v3 & 0xFFF) + (v2 >> 4)];
  if (!v3)
  {
    return v3;
  }

  if ((v3 & 0xFF00) == 0xAE00)
  {
    return 0;
  }

  if ((v3 & 0xFF00) == 0xAD00)
  {
    return v3;
  }

  v5 = nfTrieLo[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t spaceman_init_phys(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *a3;
  v4 = *(*a3 + 16);
  if (!v4)
  {
    return 22;
  }

  v5 = *(v3 + 128);
  if (!v5)
  {
    return 22;
  }

  v6 = a3[2] | 1;
  *(a1 + 336) = 0x9D800000001;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 36) = vmovn_s64(*(v3 + 80));
  *(a1 + 44) = *(v3 + 96);
  v7 = *(v3 + 24);
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 72) = v4;
  v10 = *(v3 + 48);
  *(a1 + 96) = v10;
  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  *(a1 + 112) = v11;
  *(a1 + 116) = v12;
  *(a1 + 120) = v10;
  *(a1 + 152) = *(v3 + 104);
  v13 = *(v3 + 120);
  *(a1 + 144) = v6;
  *(a1 + 148) = v13;
  v14 = *(v3 + 152);
  *(a1 + 224) = *(v3 + 144);
  v15 = *(v3 + 112);
  *(a1 + 160) = v15;
  *(a1 + 164) = v5;
  *(a1 + 264) = v14;
  *(a1 + 304) = *(v3 + 160);
  *(a1 + 324) = 2520;
  v16 = 8 * v15 + 2520;
  *(a1 + 328) = v16;
  v17 = ((2 * v15 + 6) & 0xFFFFFFF8) + v16;
  *(a1 + 332) = v17;
  *(a1 + 322) = v5 - 1;
  *(a1 + 320) = 0;
  v18 = (v5 & 0x7FFFFFFF) - 1;
  if ((v5 & 0x7FFFFFFF) == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = (v18 + 7) & 0x1FFFFFFF8;
    v20 = vdupq_n_s64(v18 - 1);
    v21 = (v17 + a1 + 8);
    v22 = xmmword_23D298E70;
    v23 = xmmword_23D298E80;
    v24 = xmmword_23D298E90;
    v25 = xmmword_23D298EA0;
    v26 = vdupq_n_s64(1uLL);
    v27 = vdupq_n_s64(8uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v20, v25));
      v29 = vaddq_s64(v25, v26);
      if (vuzp1_s8(vuzp1_s16(v28, *v20.i8), *v20.i8).u8[0])
      {
        *(v21 - 4) = v29.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v28, *&v20), *&v20).i8[1])
      {
        *(v21 - 3) = v29.i16[4];
      }

      v30 = vaddq_s64(v24, v26);
      if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v24))), *&v20).i8[2])
      {
        *(v21 - 2) = v30.i16[0];
        *(v21 - 1) = v30.i16[4];
      }

      v31 = vaddq_s64(v23, v26);
      v32 = vmovn_s64(vcgeq_u64(v20, v23));
      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i32[1])
      {
        *v21 = v31.i16[0];
      }

      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i8[5])
      {
        v21[1] = v31.i16[4];
      }

      v33 = vaddq_s64(v22, v26);
      if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v22)))).i8[6])
      {
        v21[2] = v33.i16[0];
        v21[3] = v33.i16[4];
      }

      v23 = vaddq_s64(v23, v27);
      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v21 += 8;
      v22 = vaddq_s64(v22, v27);
      v19 -= 8;
    }

    while (v19);
  }

  *(a1 + v17 + 2 * v18) = -1;
  v35 = v17 + ((2 * v5 + 6) & 0xFFFFFFF8);
  *(a1 + 80) = v35;
  if (v9)
  {
    v8 = v9;
  }

  v36 = (v35 + 8 * v8);
  *(a1 + 128) = v36;
  if (v12)
  {
    v37 = v12;
  }

  else
  {
    v37 = v11;
  }

  if (8 * v37 + v36 <= a2)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t spaceman_init(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*a1 + 392);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v4 = *(v2 + 32);
  v5 = *(v3 + 376);
  v6 = *(v5 + 36);
  if (*(v3 + 624))
  {
    if (v4 == v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = v3;
    goto LABEL_10;
  }

  if (*(v2 + 96) + *(v2 + 48) != *(v5 + 40) || v4 != v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 336;
  if (*(v2 + 144))
  {
    if (*(v2 + 336))
    {
      v12 = 2520;
    }

    else
    {
      v12 = 336;
    }

    v13 = *(v2 + 340);
    if (*(v2 + 336))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 <= v12)
    {
      v7 = v12;
    }

    else
    {
      v7 = *(v2 + 340);
    }

    if (v13 >= v12)
    {
      v8 = *(v2 + 336) == 0;
    }

    else
    {
      v8 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *(a1 + 48);
  v16 = nx_calculate_metadata_parameters(v4, *(v2 + 48), *(v5 + 180), &v69);
  if (v16)
  {
    return v16;
  }

  if (v7 < v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  if (*(v2 + 36) != v74)
  {
    ++v17;
  }

  if (*(v2 + 40) != DWORD2(v74))
  {
    ++v17;
  }

  if (*(v2 + 44) != v75)
  {
    ++v17;
  }

  v18 = *(v2 + 48);
  if (*(v2 + 56) == *(&v70 + 1))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 1;
  }

  v20 = *(v2 + 64);
  v21 = *(v2 + 68);
  if (v20 != v71)
  {
    ++v19;
  }

  if (v21 != DWORD2(v71) && *(&v71 + 1) + v21 != 1)
  {
    ++v19;
  }

  if (*(v2 + 104) == *(&v72 + 1))
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + 1;
  }

  v24 = *(v2 + 112);
  v25 = *(v2 + 116);
  if (v24 != v73)
  {
    ++v23;
  }

  if (v25 != DWORD2(v73) && *(&v73 + 1) + v25 != 1)
  {
    ++v23;
  }

  if ((*(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL) != *(&v75 + 1))
  {
    ++v23;
  }

  v27 = *(v2 + 160);
  if (v27 != v76)
  {
    ++v23;
  }

  v28 = *(v2 + 164) & 0x7FFFFFFF;
  if (v28 > 0xFFFE)
  {
    ++v23;
  }

  if (*(v2 + 148) < 4u)
  {
    ++v23;
  }

  if (v28 / v27 < 4)
  {
    ++v23;
  }

  if (*(v2 + 224) != v78)
  {
    ++v23;
  }

  if (*(v2 + 264) != DWORD2(v78))
  {
    ++v23;
  }

  if (*(v2 + 304) != v79)
  {
    ++v23;
  }

  v29 = *(v2 + 324);
  if (v29 < v7)
  {
    ++v23;
  }

  v30 = *(v2 + 328);
  if (v29 + 8 * v27 > v30)
  {
    ++v23;
  }

  v31 = *(v2 + 332);
  if (v30 + 2 * ((v27 + 3) & 0xFFFFFFFC) > v31)
  {
    ++v23;
  }

  v32 = *(v2 + 80);
  if (v31 + 2 * ((v28 + 3) & 0xFFFFFFFC) > v32)
  {
    ++v23;
  }

  v33 = *(v2 + 128);
  if (v21)
  {
    v20 = *(v2 + 68);
  }

  if (v32 + 8 * v20 <= v33)
  {
    v34 = v23;
  }

  else
  {
    v34 = v23 + 1;
  }

  if (v25)
  {
    v24 = *(v2 + 116);
  }

  if (v33 + 8 * v24 > *(a1 + 48))
  {
    ++v34;
  }

  if (*(v2 + 72) > v18)
  {
    ++v34;
  }

  v35 = *(v2 + 240);
  if (v35 < v18)
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 + 1;
  }

  if (v35 && !*(v2 + 248))
  {
    ++v36;
  }

  v37 = *(v2 + 256);
  if (v37 <= obj_xid(a1))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = *(v2 + 96);
  v40 = *(v2 + 120);
  v41 = *(v2 + 280);
  if (v39)
  {
    if (v40 > v39)
    {
      ++v38;
    }

    if (v41 < v39)
    {
      v42 = v38;
    }

    else
    {
      v42 = v38 + 1;
    }

    if (v41 && !*(v2 + 288))
    {
      ++v42;
    }

    v43 = *(v2 + 296);
    v44 = v43 > obj_xid(a1);
  }

  else
  {
    if (v40)
    {
      ++v38;
    }

    if (v41)
    {
      v45 = v38 + 1;
    }

    else
    {
      v45 = v38;
    }

    if (*(v2 + 288))
    {
      v42 = v45 + 1;
    }

    else
    {
      v42 = v45;
    }

    v44 = *(v2 + 296) != 0;
  }

  v46 = v42 + v44;
  v47 = *(v2 + 320);
  v48 = *(v2 + 164) & 0x7FFFFFFF;
  if (v47 != 0xFFFF && v48 <= v47)
  {
    ++v46;
  }

  v50 = *(v2 + 322);
  if (v50 != 0xFFFF && v48 <= v50)
  {
    ++v46;
  }

  if (!(v46 | (*(v2 + 192) > *(v2 + 184))))
  {
LABEL_130:
    *(a1 + 376) = v2;
    *(a1 + 872) = v2 + *(v2 + 324);
    *(a1 + 880) = v2 + *(v2 + 328);
    *(a1 + 888) = v2 + *(v2 + 332);
    v52 = *(v2 + 80);
    v53 = *(v2 + 128);
    *(a1 + 1000) = 0u;
    v54 = *(v2 + 48);
    *(a1 + 896) = v2 + v52;
    *(a1 + 904) = v2 + v53;
    *(a1 + 912) = 0;
    *(a1 + 1536) = 8;
    *(a1 + 1520) = v54 >> 5;
    *(a1 + 1528) = *(v2 + 96) >> 5;
    if (*(v3 + 625) == 1)
    {
      *(a1 + 1536) = 0;
    }

    else if (*(v3 + 628) == 1)
    {
      *(a1 + 1536) = 32;
    }

    else
    {
      LODWORD(v69) = 0;
      dev_features(*(v3 + 384));
      if ((v69 & 2) != 0)
      {
        *(a1 + 1536) = 2;
        v55 = 0x40000000u / *(v2 + 32);
        if (*(a1 + 1520) > v55)
        {
          *(a1 + 1520) = v55;
        }

        if (*(a1 + 1528) > v55)
        {
          *(a1 + 1528) = v55;
        }
      }
    }

    if ((*(a1 + 16) & 0x40) != 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = obj_xid(a1);
    }

    v57 = 0;
    v58 = a1 + 1496;
    *(a1 + 920) = v56;
    v59 = 1;
    do
    {
      v60 = v59;
      v61 = v2 + 48 + 48 * v57;
      v64 = *(v61 + 8);
      v63 = (v61 + 8);
      v62 = v64;
      if (v64)
      {
        v65 = _apfs_calloc_typed(v62, 4uLL, 0x100004052888210uLL);
        *(v58 + 8 * v57) = v65;
        if (v65 && *v63)
        {
          v66 = 0;
          do
          {
            v67 = *(v58 + 8 * v57) + 4 * v66;
            *v67 = *(v2 + 36) & 0xFFFFFF | (*(v67 + 3) << 24);
            *(*(v58 + 8 * v57) + 4 * v66++ + 3) = 3;
          }

          while (v66 < *v63);
        }
      }

      else
      {
        *(v58 + 8 * v57) = 0;
      }

      v59 = 0;
      v57 = 1;
    }

    while ((v60 & 1) != 0);
    v11 = new_lock((a1 + 384));
    if (v11)
    {
      goto LABEL_164;
    }

    v11 = new_lock((a1 + 448));
    if (!v11)
    {
      v11 = new_lock((a1 + 512));
      if (!v11)
      {
        v11 = new_lock((a1 + 576));
        if (!v11)
        {
          v11 = new_lock((a1 + 640));
          if (!v11)
          {
            v11 = new_lock((a1 + 704));
            if (!v11)
            {
              v11 = new_cv((a1 + 768));
              if (!v11)
              {
LABEL_164:
                *(a1 + 1592) = _apfs_calloc_typed(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v11;
              }

              free_lock((a1 + 704));
            }

            free_lock((a1 + 640));
          }

          free_lock((a1 + 576));
        }

        free_lock((a1 + 512));
      }

      free_lock((a1 + 448));
    }

    free_lock((a1 + 384));
    goto LABEL_164;
  }

  v10 = v3;
LABEL_10:
  v11 = nx_corruption_detected_int(v10);
  if (!v11)
  {
    goto LABEL_130;
  }

  return v11;
}

uint64_t spaceman_destroy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _apfs_free(*(a1 + 1496), 4 * *(*(a1 + 376) + 56));
  _apfs_free(*(a1 + 1504), 4 * *(*(a1 + 376) + 104));
  v6 = *(a1 + 1608);
  if (v6)
  {
    _apfs_free(v6, 16 * *(a1 + 1600));
  }

  v7 = *(a1 + 1592);
  if (v7)
  {
    _apfs_free(v7, 248);
  }

  v8 = *(a1 + 1544);
  if (v8)
  {
    _apfs_free(v8, 16 * *(a1 + 1538));
  }

  spaceman_datazone_destroy(a1, v4, v5);
  v9 = *(a1 + 1576);
  if (v9)
  {
    spaceman_free_extent_cache_destroy(v9);
    _apfs_free(*(a1 + 1576), 1368);
  }

  v10 = *(a1 + 1584);
  if (v10)
  {
    spaceman_free_extent_cache_destroy(v10);
    _apfs_free(*(a1 + 1584), 1368);
  }

  free_lock((a1 + 384));
  free_lock((a1 + 448));
  free_lock((a1 + 512));
  free_lock((a1 + 576));
  free_lock((a1 + 640));
  free_lock((a1 + 704));
  free_cv((a1 + 768));
  return 0;
}

uint64_t spaceman_cab_sanity_check(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (!a2)
  {
    goto LABEL_11;
  }

  v9 = *a2;
  v10 = *(a2 + 3);
  if (v5 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(v4 + 32) != v10)
  {
    v8 = v11;
  }

  v12 = v9 + 48 * *(a2 + 2);
  v13 = v10 == *(v12 + 68) - 1 ? *(v12 + 64) - *(v9 + 44) * v10 : *(v9 + 44);
  if (*(v4 + 36) == v13)
  {
LABEL_11:
    if (!v8)
    {
      return 0;
    }
  }

  return nx_corruption_detected_int(v6);
}

uint64_t spaceman_cib_sanity_check(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (a2)
  {
    v9 = *a2;
    v10 = *(a2 + 3);
    if (v5 == v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (*(v4 + 32) != v10)
    {
      v8 = v11;
    }

    v12 = v9 + 48 * *(a2 + 2);
    if (v10 == *(v12 + 64) - 1)
    {
      if (*(v4 + 36) != *(v12 + 56) - *(v9 + 40) * v10)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 36) != *(v9 + 40))
    {
      goto LABEL_12;
    }
  }

  if (!v8)
  {
    return 0;
  }

LABEL_12:

  return nx_corruption_detected_int(v6);
}

uint64_t spaceman_ip_bm_block_alloc(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 320);
  if (v6 == 0xFFFF)
  {
    return 28;
  }

  if ((*(v5 + 164) & 0x7FFFFFFFu) <= v6)
  {

    return nx_corruption_detected_int(a1);
  }

  else
  {
    if (*(v5 + 322) == v6)
    {
      *(v5 + 322) = -1;
    }

    v10 = *(a2 + 888);
    *(v5 + 320) = *(v10 + 2 * v6);
    *(v10 + 2 * v6) = -1;
    obj_dirty(a2, a3, 0);
    *a5 = v6;

    return spaceman_ip_bm_block_address(a1, v5, v6, a4);
  }
}

uint64_t spaceman_ip_block_alloc(uint64_t *a1, pthread_mutex_t *a2, unint64_t a3, unint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *&a2[5].__opaque[48];
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  if (!xid_is_current_tx(a1, a3))
  {
    return 22;
  }

  v8 = 8 * *(v7 + 32);
  if (!v8)
  {
    return 22;
  }

  v34 = a4;
  pthread_mutex_lock(v5 + 7);
  v9 = v8;
  v37 = v5;
  v38 = v6;
  v35 = v8;
  v36 = v8;
LABEL_4:
  v10 = 0;
  v11 = *&v5[14].__opaque[8];
  v42 = 0;
  while (1)
  {
    v12 = *(v7 + 160);
    if (v10 > v12)
    {
LABEL_34:
      if (spaceman_free_completed(v6, v5, 0, 1, 0, a3))
      {
        goto LABEL_4;
      }

      log_err("%s:%d: %s unable to find free IP block or to free pending free IP blocks\n", "spaceman_ip_block_alloc", 5413, (v6[48] + 212));
      v31 = 28;
      goto LABEL_38;
    }

    v13 = v11 / v9;
    v40 = v10;
    if (v10 == v12)
    {
      v14 = *&v5[14].__opaque[8] % v9;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v14) = v13 == v12 - 1 ? *(v7 + 152) - (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) / v9 * v9 : v35;
    }

    v15 = *(*&v5[13].__opaque[40] + 2 * v13);
    v16 = v7;
    v17 = spaceman_ip_bm_block_address(v6, v7, v15, &v44);
    if (v17 || (v17 = obj_get(v6[49], 1073741825, v44, &sm_bm_desc, 0, 0, 0, a3, &v46), v17))
    {
      v31 = v17;
      pthread_mutex_unlock(v5 + 7);
      return v31;
    }

    v18 = v11;
    v19 = v11 % v9;
    v20 = *(v46 + 56);
    if (bitmap_range_find_first(0, v20, v19, v14 - v19, &v45))
    {
      break;
    }

    v26 = v9 - v19 + v18;
    v7 = v16;
    if (v26 >= (*(v16 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = 0;
    }

    else
    {
      v11 = v26;
    }

    v5 = v37;
    v6 = v38;
LABEL_32:
    obj_release(v46);
    v10 = v40 + 1;
    if (v42)
    {
      v31 = 0;
LABEL_38:
      pthread_mutex_unlock(v5 + 7);
      *v34 = v42;
      return v31;
    }
  }

  v21 = v45;
  v22 = v45 + v13 * v9;
  v23 = *(v16 + 152);
  if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) <= v22)
  {
    v31 = 22;
    goto LABEL_42;
  }

  v24 = v18;
  v7 = v16;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = *(v16 + 176) + v22;
    v42 = v25;
LABEL_24:
    bitmap_set_range(v20, v21, 1, v25);
    v5 = v37;
    v28 = a3;
    if (*(*&v37[13].__opaque[32] + 8 * v13) != a3)
    {
      v41 = 0;
      v29 = spaceman_ip_bm_block_alloc(v38, v37, a3, &v43, &v41);
      if (v29 || (v29 = spaceman_ip_bm_block_free(v38, v37, v15, a3), v29))
      {
        v31 = v29;
        v32 = v37 + 7;
        goto LABEL_43;
      }

      v44 = v43;
      *(*&v37[13].__opaque[40] + 2 * v13) = v41;
      *(*&v37[13].__opaque[32] + 8 * v13) = a3;
      v7 = v16;
      v28 = a3;
    }

    v6 = v38;
    obj_dirty(v46, v28, v44);
    v30 = v24 - v19 + v45;
    if (v30 + 1 < (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = v30 + 1;
    }

    else
    {
      v11 = 0;
    }

    *&v37[14].__opaque[8] = v11;
    v9 = v36;
    goto LABEL_32;
  }

  v27 = nx_metadata_fragmented_block_address_lookup(v38, *(v16 + 176), v22, &v42, 0);
  if (!v27)
  {
    v21 = v45;
    v7 = v16;
    goto LABEL_24;
  }

  v31 = v27;
LABEL_42:
  v32 = v37 + 7;
LABEL_43:
  pthread_mutex_unlock(v32);
  obj_release(v46);
  return v31;
}