void CA::Render::Context::set_object(CA::Render::Context *this, unint64_t a2, unsigned int a3, CA::Render::Object *a4)
{
  MEMORY[0x1EEE9AC00](this);
  v157[509] = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return;
  }

  v9 = v7;
  if (!v7)
  {
    return;
  }

  v10 = v6;
  v11 = v5;
  v12 = v4;
  if (*(v7 + 12) == 30)
  {
    v13 = v8;
    v151 = 0;
    v14 = CA::Render::Context::lookup_handle(v4, v5, v6, 1, &v151);
    if (v14)
    {
      v16 = v14;
      if (*(v14 + 2) != v9)
      {
        v17 = *(v9 + 12);
        if ((v17 & 0x200) != 0)
        {
          v18 = *(v9 + 120);
          if (v18)
          {
            CA::Render::Layer::set_mask(v9, 0);
            *(v9 + 12) &= ~0x200u;
            v19 = CA::Render::Context::lookup_object(*(v12 + 17), *(v12 + 37), v18, 0, 30, 0);
            if (v19)
            {
              v20 = v16;
              v14 = CA::Render::Layer::set_mask(v9, v19);
            }

            else
            {
              v20 = v16;
              if (x_log_get_render(void)::once[0] != -1)
              {
                dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
              }

              v22 = x_log_get_render(void)::log;
              v14 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
              if (v14)
              {
                LODWORD(v154) = 134217984;
                *(&v154 + 4) = v18;
                _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, "missing mask layer 0x%lx\n", &v154, 0xCu);
              }
            }
          }

          else
          {
            v20 = v14;
            *(v9 + 12) = v17 & 0xFFFFFDFF;
          }

          v16 = v20;
          if ((*(v9 + 13) & 0x20) == 0)
          {
            v23 = *(v9 + 112);
            if (v23)
            {
              v24 = *(v23 + 16);
              if (!v24)
              {
                CA::Render::Layer::set_sublayers(v9, 0);
                goto LABEL_46;
              }

              v147 = v16;
              v25 = v12;
              v149 = v24;
              if (v24 > 0x200)
              {
                v150 = malloc_type_malloc(8 * v24, 0x2004093837F09uLL);
                if (!v150)
                {
                  CA::Render::Layer::set_sublayers(v9, 0);
                  v16 = v147;
                  goto LABEL_46;
                }
              }

              else
              {
                MEMORY[0x1EEE9AC00](v14);
                v150 = (&v133 - ((v26 + 15) & 0xFFFFFFFF0));
                bzero(v150, v26);
              }

              v146 = v13;
              v28 = 0;
              v29 = (v23 + 24);
              *&v27 = 134217984;
              v145 = v27;
              v30 = v149;
              do
              {
                v31 = *v29;
                v32 = CA::Render::Context::lookup_object(*(v25 + 17), *(v25 + 37), *v29, 0, 30, 0);
                if (v32)
                {
                  v150[v28] = v32;
                  v28 = (v28 + 1);
                }

                else
                {
                  if (x_log_get_render(void)::once[0] != -1)
                  {
                    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                  }

                  v33 = x_log_get_render(void)::log;
                  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v154) = v145;
                    *(&v154 + 4) = v31;
                    _os_log_error_impl(&dword_183AA6000, v33, OS_LOG_TYPE_ERROR, "missing sublayer %p\n", &v154, 0xCu);
                  }
                }

                ++v29;
                v30 = (v30 - 1);
              }

              while (v30);
              if (v28 <= 1)
              {
                v13 = v146;
                if (v28 == 1)
                {
                  v35 = *v150;
                }

                else
                {
                  v35 = 0;
                }

                v12 = v25;
                CA::Render::Layer::set_single_sublayer(v9, v35);
              }

              else
              {
                v34 = CA::Render::Array::new_array(v28, v150, 1, 0);
                CA::Render::Layer::set_sublayers(v9, v34);
                v12 = v25;
                v13 = v146;
                if (v34 && atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v34 + 16))(v34);
                }
              }

              v16 = v147;
              if (v149 >= 0x201)
              {
                free(v150);
              }
            }
          }
        }

LABEL_46:
        if (v13)
        {
          v16[23] = 0;
        }

        v36 = *(v9 + 104);
        if (!v36)
        {
          goto LABEL_66;
        }

        v37 = *(v36 + 12);
        if (v37 != 45)
        {
          goto LABEL_66;
        }

        if (v37 >> 8 == 1)
        {
          if (v12)
          {
            v39 = CA::Render::Context::lookup_object(*(v12 + 17), *(v12 + 37), *(v36 + 16), 0, 0, 0);
            v38 = v39;
            if (v39 && !atomic_fetch_add((v39 + 8), 1u))
            {
              v38 = 0;
              atomic_fetch_add((v39 + 8), 0xFFFFFFFF);
            }

            goto LABEL_57;
          }
        }

        else if (!(v37 >> 8))
        {
          v38 = CA::Render::Context::copy_slot(*(v36 + 16));
LABEL_57:
          v37 = *(v36 + 12);
LABEL_59:
          v40 = *(v36 + 16);
          CA::Render::Layer::set_contents(v9, v38);
          if (v37 > 0xFF)
          {
            if (!v38)
            {
              goto LABEL_66;
            }
          }

          else
          {
            *(v9 + 12) |= 0x400u;
            v16[23] = v40;
            if (!v38)
            {
              goto LABEL_66;
            }

            if (*(v38 + 12) == 25)
            {
              *(*(*(v38 + 16) + 24) + 72) = *(v12 + 4);
            }
          }

          if (atomic_fetch_add((v38 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v38 + 16))(v38);
          }

LABEL_66:
          v41 = *(v16 + 2);
          if (v41 && v151 == v10)
          {
            CA::Render::Layer::copy_properties(v9, v41, v13, v15);
            if ((*(v16 + 106) & 8) == 0)
            {
              CA::Render::Layer::set_animations(v9, *(*(v16 + 2) + 144));
            }

            v41 = *(v16 + 2);
          }

          if (!v41 || (*(v16 + 106) & 8) != 0)
          {
            v42 = *(v16 + 6);
            if (!v42)
            {
              goto LABEL_90;
            }

            v43 = *(v12 + 3);
            v44 = -1;
            do
            {
              v45 = v44;
              v42 = *(v42 + 8);
              ++v44;
            }

            while (v42);
            if (v45 != -2 && (v46 = CA::Render::Array::new_array((v45 + 2), 0, 0, 0)) != 0)
            {
              v47 = v46;
              if ((v43 & 0x800) != 0)
              {
                v48 = -1;
              }

              else
              {
                v48 = 1;
              }

              v49 = *(v16 + 6);
              if (v49)
              {
                if ((v43 & 0x800) != 0)
                {
                  v50 = v44;
                }

                else
                {
                  v50 = 0;
                }

                do
                {
                  v51 = *v49;
                  if (*v49)
                  {
                    v52 = (v51 + 8);
                    if (!atomic_fetch_add((v51 + 8), 1u))
                    {
                      v51 = 0;
                      atomic_fetch_add(v52, 0xFFFFFFFF);
                    }
                  }

                  *&v46[8 * v50 + 24] = v51;
                  v50 += v48;
                  v49 = v49[1];
                }

                while (v49);
              }

              CA::Render::Layer::set_animations(v9, v46);
              if (atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v47 + 16))(v47);
              }
            }

            else
            {
LABEL_90:
              CA::Render::Layer::set_animations(v9, 0);
            }

            *(v16 + 13) &= ~0x80000uLL;
          }

          if ((v13 & 2) != 0)
          {
            v73 = *(v16 + 2);
            if (v73)
            {
              v74 = *(v73 + 112);
              if ((*(v73 + 13) & 0x20) != 0)
              {
                if (v74)
                {
                  v78 = *(v74 + 152);
                  if (v78)
                  {
                    if (*(v78 + 32) == v11)
                    {
                      *(v78 + 32) = 0;
                    }
                  }
                }
              }

              else if (v74)
              {
                v75 = *(v74 + 16);
                if (v75)
                {
                  v76 = v74 + 24;
                  do
                  {
                    v77 = *(*v76 + 152);
                    if (v77 && *(v77 + 32) == v11)
                    {
                      *(v77 + 32) = 0;
                    }

                    v76 += 8;
                    --v75;
                  }

                  while (v75);
                }
              }
            }

            v79 = *(v9 + 112);
            if ((*(v9 + 13) & 0x20) != 0)
            {
              if (v79)
              {
                v83 = *(v79 + 152);
                if (v83)
                {
                  *(v83 + 32) = v11;
                }
              }
            }

            else if (v79)
            {
              v80 = *(v79 + 16);
              if (v80)
              {
                v81 = v79 + 24;
                do
                {
                  v82 = *(*v81 + 152);
                  if (v82)
                  {
                    *(v82 + 32) = v11;
                  }

                  v81 += 8;
                  --v80;
                }

                while (v80);
              }
            }
          }

          if ((v13 & 4) != 0)
          {
            v53 = *(v16 + 2);
            if (v53)
            {
              v54 = *(v53 + 120);
              if (v54)
              {
                v55 = *(v54 + 152);
                if (*(v55 + 32) == v11)
                {
                  *(v55 + 32) = 0;
                }
              }
            }

            v56 = *(v9 + 120);
            if (v56)
            {
              *(*(v56 + 152) + 32) = v11;
            }
          }

          v57 = *(v16 + 5);
          if (v57)
          {
            *(v57 + 40) = 0;
            if (atomic_fetch_add((v57 + 16), 0xFFFFFFFF) == 1)
            {
              CA::Render::LayerNode::delete_node(v57, v41);
            }

            *(v16 + 5) = 0;
          }

          v58 = *(v9 + 136);
          if (v58 && *v58)
          {
            CA::Render::Layer::ensure_ext(v9);
          }

          v59 = 0x100000000004;
          v60 = v13 & 0x1FFFF9;
          if ((v13 & 0x1FFFF9) != 0)
          {
            v59 = 0x100000000007;
          }

          if (v60)
          {
            v61 = v13;
            if ((v13 & 1) == 0)
            {
              goto LABEL_159;
            }

            v62 = *(v9 + 104);
            if (v62)
            {
              v63 = (*(*v62 + 80))(v62);
              if (v63)
              {
                v64 = v63;
                v65 = *(v63 + 48);
                if (v60 == 1 && v65)
                {
                  v66 = v16;
                  v67 = *(v16 + 2);
                  if (v67)
                  {
                    v68 = *(v67 + 104);
                    if (v68)
                    {
                      v69 = (*(*v68 + 80))(v68);
                      if (v69)
                      {
                        v70 = *(v69 + 48);
                        if (v70)
                        {
                          v71 = CA::Shape::Union(*(v69 + 48), v65);
                          CA::Render::Texture::set_dirty_shape(v64, v71);
                          if ((CA::Shape::is_valid(v71) & 1) == 0)
                          {
                            v146 = v13;
                            if (x_log_get_render(void)::once[0] != -1)
                            {
                              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                            }

                            v72 = x_log_get_render(void)::log;
                            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_FAULT))
                            {
                              is_valid = CA::Shape::is_valid(v65);
                              v132 = CA::Shape::is_valid(v70);
                              LODWORD(v154) = 67109376;
                              DWORD1(v154) = is_valid;
                              WORD4(v154) = 1024;
                              *(&v154 + 10) = v132;
                              _os_log_fault_impl(&dword_183AA6000, v72, OS_LOG_TYPE_FAULT, "Shape union is bogus, new shape: %d, old shape: %d!", &v154, 0xEu);
                            }

                            CA::Render::Texture::set_dirty_shape(v64, &CA::Shape::_infinite_shape);
                            v13 = v146;
                          }

                          if (v71)
                          {
                            CA::Shape::unref(v71);
                          }
                        }
                      }
                    }
                  }

                  v61 = v13 & 0xFFE00006;
                  v59 = 0x100000000014;
                  v16 = v66;
LABEL_159:
                  if ((v61 & 0x5FE78) != 0)
                  {
                    v59 |= 8uLL;
                  }

                  if ((v13 & 4) != 0)
                  {
                    v59 |= 0xBuLL;
                  }

                  if ((v61 & 0xBF3D3) != 0)
                  {
                    v59 |= 0x10uLL;
                  }

                  if ((v61 & 0xFFFFB) != 0)
                  {
                    v84 = v59 | 0x10000000;
                  }

                  else
                  {
                    v84 = v59;
                  }

                  if ((v13 & 2) != 0)
                  {
                    v85 = v84 | 8;
                    v86 = *(v16 + 2);
                    if (v86)
                    {
                      if (*(v86 + 112))
                      {
                        v16[3] |= 0x4000u;
                      }

                      if ((~(v16[26] | v84) & 3) != 0)
                      {
                        v152 = 0;
                        v153 = 0;
                        v87 = *(v86 + 112);
                        v88 = *(v86 + 13);
                        v146 = v13;
                        v147 = v16;
                        if ((v88 & 0x20) != 0 || !v87)
                        {
                          v153 = v87;
                          v89 = v87 != 0;
                          if (v87)
                          {
                            v90 = &v153;
                          }

                          else
                          {
                            v90 = 0;
                          }
                        }

                        else
                        {
                          v89 = *(v87 + 16);
                          v90 = (v87 + 24);
                        }

                        goto LABEL_189;
                      }
                    }

                    else if ((~(v16[26] | v84) & 3) != 0)
                    {
                      v147 = v16;
                      v146 = v13;
                      v89 = 0;
                      v90 = 0;
                      v152 = 0;
                      v153 = 0;
LABEL_189:
                      v94 = *(v9 + 112);
                      if ((*(v9 + 13) & 0x20) != 0 || !v94)
                      {
                        v152 = *(v9 + 112);
                        v95 = v94 != 0;
                        if (v94)
                        {
                          v96 = &v152;
                        }

                        else
                        {
                          v96 = 0;
                        }
                      }

                      else
                      {
                        v95 = *(v94 + 16);
                        v96 = (v94 + 24);
                      }

                      v144 = v12;
                      if ((v95 + v89) >= 0x80)
                      {
                        v97 = 128;
                      }

                      else
                      {
                        v97 = v95 + v89;
                      }

                      v98 = 0;
                      if (v89 >= v95)
                      {
                        v99 = v95;
                      }

                      else
                      {
                        v99 = v89;
                      }

                      if (v99)
                      {
                        while (*(v90[v98] + 152) == *(v96[v98] + 152))
                        {
                          if (v99 == ++v98)
                          {
                            v98 = v99;
                            break;
                          }
                        }
                      }

                      if (v98 == v95)
                      {
                        v100 = v89 - 1;
                      }

                      else
                      {
                        v100 = v89 + 1;
                      }

                      if (v98 == v89)
                      {
                        v101 = v89 + 1;
                      }

                      else
                      {
                        v101 = v89 - 1;
                      }

                      if (v98 != v89 || v98 != v95)
                      {
                        if (v89 <= v95)
                        {
                          v102 = v95;
                        }

                        else
                        {
                          v102 = v89;
                        }

                        if (v102 < 0x401)
                        {
                          v142 = v97;
                          v135 = v84 | 8;
                          v139 = v84;
                          v140 = v61;
                          *(&v154 + 1) = 0;
                          v155 = v157;
                          v156 = xmmword_183E21150;
                          *&v154 = &v154 + 8;
                          v150 = ((16 * v102) | 8);
                          *&v145 = x_heap_malloc(&v154 + 1, v150);
                          v103 = x_heap_malloc(v154, v150);
                          v104 = v145;
                          *(v145 + 8 * v89) = v98;
                          v149 = v103;
                          v103[v89] = 0;
                          if (v95 + v89)
                          {
                            v105 = v142;
                            if (v142 <= 1)
                            {
                              v105 = 1;
                            }

                            v141 = v105;
                            v138 = -v89;
                            v134 = v96;
                            v137 = &v96[-v89];
                            v106 = 1;
                            v107 = 1;
                            v148 = v9;
                            while (1)
                            {
                              v143 = v107;
                              if (v101 <= v100)
                              {
                                break;
                              }

                              v108 = v101;
LABEL_246:
                              v101 = v108 - 1;
                              ++v100;
                              v107 = v143 + 1;
                              v106 = v143 < v142;
                              if (v143 == v141)
                              {
                                goto LABEL_257;
                              }
                            }

                            v136 = v106;
                            v150 = (v89 - v107);
                            *&v145 = v107 + v89;
                            v109 = v138 + v101;
                            v108 = v101;
                            v110 = &v137[v101];
                            while (1)
                            {
                              v111 = v104;
                              v112 = x_heap_malloc_small_(v154, 0x20uLL);
                              v104 = v111;
                              if (v101 == v150 || v101 != v145 && *(v111 + 8 * v101 + 8) >= *(v111 + 8 * v101 - 8))
                              {
                                v116 = v101 + 1;
                                v117 = *(v111 + 8 * (v101 + 1)) + 1;
                                v118 = 1;
                              }

                              else
                              {
                                v118 = 0;
                                v116 = v101 - 1;
                                v117 = *(v111 + 8 * (v101 - 1));
                              }

                              v9 = v148;
                              v119 = v149;
                              *v112 = v149[v116];
                              *(v112 + 8) = v118;
                              v120 = v117 + v101 - v89;
                              *(v112 + 16) = v117 - 1;
                              *(v112 + 24) = v120 - 1;
                              v119[v101] = v112;
                              if (v117 < v89 && v120 < v95)
                              {
                                do
                                {
                                  if (*(v90[v117] + 152) != *(v110[v117] + 152))
                                  {
                                    break;
                                  }

                                  if (++v117 >= v89)
                                  {
                                    break;
                                  }
                                }

                                while (v117 + v109 < v95);
                                v120 = v109 + v117;
                              }

                              *(v104 + 8 * v101) = v117;
                              if (v117 == v89 && v120 == v95)
                              {
                                break;
                              }

                              v122 = v101 + 2;
                              if (v117 == v89)
                              {
                                v108 = v101 + 2;
                              }

                              if (v120 == v95)
                              {
                                v100 = v101 - 2;
                              }

                              v109 += 2;
                              v110 += 2;
                              v101 += 2;
                              if (v122 > v100)
                              {
                                goto LABEL_246;
                              }
                            }

                            v123 = 0;
                            do
                            {
                              v124 = v112;
                              v112 = *v112;
                              *v124 = v123;
                              v123 = v124;
                            }

                            while (v112);
                            v125 = v147;
                            v126 = v134;
                            do
                            {
                              if (*(v124 + 8) == 1)
                              {
                                CA::Render::Context::invalidate(*(v125 + 3), (*(v90[*(v124 + 16)] + 152) + 120), v113, v114, v115);
                              }

                              else
                              {
                                v127 = *(v126[*(v124 + 24)] + 152);
                                if (v127)
                                {
                                  *(v127 + 104) |= 2uLL;
                                }
                              }

                              v124 = *v124;
                            }

                            while (v124);
                            LOBYTE(v106) = v136;
LABEL_257:
                            x_heap_free(v154);
                            v61 = v140;
                            v85 = v135;
                            if (!v106)
                            {
                              v85 = v139 | 0xB;
                            }
                          }

                          else
                          {
                            x_heap_free(v154);
                            v85 = v139 | 0xB;
                            v61 = v140;
                          }
                        }

                        else
                        {
                          v85 = v84 | 0xB;
                        }
                      }

                      v84 = v85;
                      v12 = v144;
                      v13 = v146;
                      v16 = v147;
                      if ((v61 & 0x20000000) != 0)
                      {
                        goto LABEL_261;
                      }

                      goto LABEL_179;
                    }

                    v84 |= 8uLL;
                  }

                  if ((v61 & 0x20000000) != 0)
                  {
LABEL_261:
                    v84 |= 0x2000000000000000uLL;
LABEL_262:
                    *(v16 + 13) |= v84;
                    v128 = *(v9 + 152);
                    if (v128 != v16)
                    {
                      if (v128 && atomic_fetch_add(v128 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v128 + 16))(v128);
                      }

                      v129 = v16;
                      if (!atomic_fetch_add(v16 + 2, 1u))
                      {
                        v129 = 0;
                        atomic_fetch_add(v16 + 2, 0xFFFFFFFF);
                      }

                      *(v9 + 152) = v129;
                    }

                    v130 = *(v9 + 136);
                    if (v130)
                    {
                      if (*v130)
                      {
                        (*(**v130 + 104))(*v130, v12, v9, v16, v13);
                      }
                    }

                    CA::Render::Handle::set_current_layer(v16, v9);
                    return;
                  }

LABEL_179:
                  if ((*(v16 + 13) & 1) != 0 && (v61 & 0x1FFFFF) != 0)
                  {
                    v91 = *(v16 + 3);
                    if (v91)
                    {
                      v92 = *(v91 + 448);
                      if (v92)
                      {
                        v93 = *(v92 + 40);
                        if (v93)
                        {
                          *(v93 + 104) |= 0x2000000000000000uLL;
                        }
                      }
                    }
                  }

                  goto LABEL_262;
                }

                if (v65)
                {
                  CA::Shape::unref(*(v63 + 48));
                  *(v64 + 6) = 0;
                }
              }
            }

            v59 = 0x100000000007;
          }

          v61 = v13;
          goto LABEL_159;
        }

        v38 = 0;
        goto LABEL_59;
      }
    }

    if (atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }
  }

  else
  {
    v21 = (v4 + 136);

    CA::Render::Context::ResourceTable::insert(v21, v5, v6, v7);
  }
}

void CA::Render::Context::ResourceTable::insert(CA::Render::Context::ResourceTable *this, CA::Render::Object *a2, unsigned int a3, CA::Render::Object *a4)
{
  v7 = a2 ^ 0x8000000000000000;
  v8 = ((a2 ^ 0x8000000000000000) + ~(a2 << 32)) ^ (((a2 ^ 0x8000000000000000) + ~(a2 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v10 ^ (v10 >> 31);
  v12 = *this + 8 * (v11 & *(this + 3));
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    if (*(v12 + 8) == v7)
    {
      CA::Render::Context::ResourceTable::release_value(*(v12 + 16), a2, a3);
      *(v12 + 16) = a4;
      *(v12 + 24) = a3;
      return;
    }
  }

  v13 = *(this + 3) + 1;
  *(this + 3) = v13;
  v14 = *(this + 2);
  if (v13 >= (4 * v14))
  {
    v15 = (2 * v14);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v16 = malloc_type_zone_calloc(malloc_zone, 1uLL, 8 * v15, 0x2004093837F09uLL);
    if (v16)
    {
      v17 = v16;
      v18 = *(this + 4) + 1;
      v19 = ~(-1 << v18);
      *(this + 3) = v19;
      *(this + 4) = v18;
      v20 = *(this + 2);
      if (v20)
      {
        for (i = 0; i < v20; ++i)
        {
          v22 = *(*this + 8 * i);
          if (v22)
          {
            do
            {
              v23 = *v22;
              v24 = v22[1] + ~(v22[1] << 32);
              v25 = (v24 ^ (v24 >> 22)) + ~((v24 ^ (v24 >> 22)) << 13);
              v26 = (9 * (v25 ^ (v25 >> 8))) ^ ((9 * (v25 ^ (v25 >> 8))) >> 15);
              LODWORD(v26) = v19 & (((v26 + ~(v26 << 27)) >> 31) ^ (v26 + ~(v26 << 27)));
              *v22 = v16[v26];
              v16[v26] = v22;
              v22 = v23;
            }

            while (v23);
          }
        }
      }

      v27 = *this;
      if (x_malloc_get_zone::once != -1)
      {
        v31 = *this;
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        v27 = v31;
      }

      malloc_zone_free(malloc_zone, v27);
      *this = v17;
      *(this + 2) = v15;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v28 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x10200402CFBC8ADuLL);
  v28[2] = a4;
  *(v28 + 6) = a3;
  v29 = *this;
  v30 = v11 & *(this + 3);
  *v28 = *(*this + 8 * v30);
  v28[1] = v7;
  *(v29 + 8 * v30) = v28;
}

atomic_uint *CA::Render::Layer::set_animations(uint64_t a1, atomic_uint *a2)
{
  result = *(a1 + 144);
  if (result != a2)
  {
    v4 = a2;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    if (v4)
    {
      v5 = v4 + 2;
      if (!atomic_fetch_add(v4 + 2, 1u))
      {
        v4 = 0;
        atomic_fetch_add(v5, 0xFFFFFFFF);
      }
    }

    *(a1 + 144) = v4;
  }

  return result;
}

float CA::Render::Layer::copy_properties(CA::Render::Layer *this, CA::Render::Layer *a2, int a3, __n128 a4)
{
  v6 = this;
  v100[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    this = CA::Render::Layer::set_contents(this, *(a2 + 13));
    if ((*(a2 + 13) & 4) != 0)
    {
      *(v6 + 3) |= 0x400u;
    }
  }

  if ((a3 & 4) == 0)
  {
    v7 = *(a2 + 15);
    if (v7)
    {
      v8 = *(v7 + 152);
      if (v8)
      {
        this = CA::Render::Layer::set_mask(v6, *(v8 + 16));
      }
    }

    *(v6 + 5) = *(v6 + 5) & 0xFFFFFDFFFFFFFFFFLL | (((*(a2 + 5) >> 41) & 1) << 41);
  }

  if ((a3 & 2) == 0)
  {
    v9 = *(a2 + 14);
    if ((*(a2 + 13) & 0x20) != 0)
    {
      if (v9)
      {
        v15 = *(v9 + 152);
        if (v15)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            v17 = (v16 + 8);
            if (!atomic_fetch_add((v16 + 8), 1u))
            {
              v16 = 0;
              atomic_fetch_add(v17, 0xFFFFFFFF);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = *(v6 + 14);
        if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v18 + 16))(v18, a4);
        }

        *(v6 + 14) = v16;
        *(v6 + 3) |= 0x2000u;
      }
    }

    else if (v9)
    {
      v10 = *(v9 + 16);
      if (!v10)
      {
        goto LABEL_30;
      }

      v11 = 0;
      v12 = v9 + 24;
      while (1)
      {
        v13 = *(v12 + 8 * v11);
        if (v13)
        {
          v14 = *(v13 + 152);
          if (!v14 || *(v14 + 16) != v13)
          {
            break;
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_30;
        }
      }

      if (v11 != v10)
      {
        if (v10 >= 0x201)
        {
          v88 = malloc_type_malloc(8 * v10, 0x6482ABCFuLL);
          if (!v88)
          {
            goto LABEL_31;
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](this);
          v88 = (v100 - ((v87 + 15) & 0xFFFFFFFF0));
          bzero(v88, v87);
        }

        v89 = 0;
        v90 = v10;
        do
        {
          if (*v12)
          {
            v91 = *(*v12 + 152);
            if (v91)
            {
              v92 = *(v91 + 16);
              if (v92)
              {
                v88[v89++] = v92;
              }
            }
          }

          v12 += 8;
          --v90;
        }

        while (v90);
        if (v89 < 2)
        {
          if (v89 == 1)
          {
            v96 = *v88;
            if (*v88)
            {
              v97 = (v96 + 8);
              if (!atomic_fetch_add((v96 + 8), 1u))
              {
                v96 = 0;
                atomic_fetch_add(v97, 0xFFFFFFFF);
              }
            }
          }

          else
          {
            v96 = 0;
          }

          v98 = *(v6 + 14);
          if (v98 && atomic_fetch_add(v98 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v98 + 16))(v98);
          }

          *(v6 + 14) = v96;
          v95 = *(v6 + 3) | 0x2000;
        }

        else
        {
          v93 = CA::Render::Array::new_array(v89, v88, 1, 0);
          v94 = *(v6 + 14);
          if (v94 && atomic_fetch_add(v94 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v94 + 16))(v94);
          }

          *(v6 + 14) = v93;
          v95 = *(v6 + 3) & 0xFFFFDFFF;
        }

        *(v6 + 3) = v95;
        if (v10 >= 0x201)
        {
          free(v88);
        }
      }

      else
      {
LABEL_30:
        CA::Render::Layer::set_sublayers(v6, v9);
      }
    }
  }

LABEL_31:
  if ((a3 & 8) == 0)
  {
    *(v6 + 36) = *(a2 + 36);
    *(v6 + 5) = *(v6 + 5) & 0xFFFFFBFFFFFFFFFFLL | (((*(a2 + 5) >> 42) & 1) << 42);
    a4 = *(a2 + 56);
    *(v6 + 56) = a4;
    v19 = *(a2 + 17);
    if (v19)
    {
      v20 = CA::Render::Layer::ensure_ext(v6);
      if (v20)
      {
        a4.n128_u64[0] = *(v19 + 192);
        v20[24] = a4.n128_u64[0];
      }
    }
  }

  if ((a3 & 0x10) == 0)
  {
    v21 = *(a2 + 38);
    *(v6 + 38) = v21;
    v22 = *(v6 + 5) & 0xFFFFFEFFFFFFFFFFLL | (((*(a2 + 5) >> 40) & 1) << 40);
    *(v6 + 5) = v22;
    v23 = v22 & 0xFFFFF7FFFFFFFFFFLL | (((*(a2 + 5) >> 43) & 1) << 43);
    *(v6 + 5) = v23;
    v24 = v23 & 0xFFFFDFFFFFFFFFFFLL | (((*(a2 + 5) >> 45) & 1) << 45);
    *(v6 + 5) = v24;
    v25 = v24 & 0xFFFFBFFFFFFFFFFFLL | (((*(a2 + 5) >> 46) & 1) << 46);
    *(v6 + 5) = v25;
    v26 = v25 & 0xFFFF7FFFFFFFFFFFLL | (((*(a2 + 5) >> 47) & 1) << 47);
    *(v6 + 5) = v26;
    *(v6 + 5) = v26 & 0xFFF7FFFFFFFFFFFFLL | (((*(a2 + 5) >> 51) & 1) << 51);
    v27 = *(a2 + 12) & 0x400000;
    *(v6 + 12) = *(v6 + 12) & 0xFFBFFFFF | v27;
    *(v6 + 72) = *(a2 + 72);
    a4 = *(a2 + 88);
    *(v6 + 88) = a4;
    v28 = *(a2 + 17);
    if (v28)
    {
      v29 = CA::Render::Layer::ensure_ext(v6);
      if (!v29)
      {
        goto LABEL_44;
      }

      a4 = *(v28 + 168);
      *(v29 + 21) = a4;
      a4.n128_u64[0] = *(v28 + 184);
      v29[23] = a4.n128_u64[0];
      a4.n128_u32[0] = *(v28 + 304);
    }

    else
    {
      v29 = *(v6 + 17);
      if (!v29)
      {
        goto LABEL_44;
      }

      a4.n128_u64[0] = 0;
      if (!v27)
      {
        a4.n128_f64[0] = 0.5;
      }

      v29[21] = a4.n128_u64[0];
      v29[22] = a4.n128_u64[0];
      a4.n128_f32[0] = v21;
    }

    *(v29 + 76) = a4.n128_u32[0];
  }

LABEL_44:
  v30 = *(a2 + 17);
  if (!v30)
  {
    goto LABEL_60;
  }

  if ((a3 & 0x20) != 0)
  {
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    CA::Render::Layer::set_transform(v6, *(v30 + 16));
    if ((a3 & 0x40) != 0)
    {
LABEL_47:
      if ((a3 & 0x80) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_102;
    }
  }

  CA::Render::Layer::set_sublayer_transform(v6, *(v30 + 24));
  if ((a3 & 0x80) != 0)
  {
LABEL_48:
    if ((a3 & 0x100) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  CA::Render::Layer::set_contents_transform(v6, *(v30 + 32));
  if ((a3 & 0x100) != 0)
  {
LABEL_49:
    if ((a3 & 0x20000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  CA::Render::Layer::set_contents_rect(v6, *(v30 + 40));
  if ((a3 & 0x20000) != 0)
  {
LABEL_50:
    if ((a3 & 0x80000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  CA::Render::Layer::set_contents_center(v6, *(v30 + 48));
  if ((a3 & 0x80000) != 0)
  {
LABEL_51:
    if ((a3 & 0x1000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  CA::Render::Layer::set_corner_contents(v6, *(v30 + 56));
  CA::Render::Layer::set_corner_contents_center(v6, *(v30 + 64));
  if ((a3 & 0x1000) != 0)
  {
LABEL_52:
    if ((a3 & 0x200) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  CA::Render::Layer::set_timing(v6, *(v30 + 8));
  if ((a3 & 0x200) != 0)
  {
LABEL_53:
    if ((a3 & 0x400) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_108;
  }

LABEL_107:
  CA::Render::Layer::set_filters(v6, *(v30 + 96));
  if ((a3 & 0x400) != 0)
  {
LABEL_54:
    if ((a3 & 0x800) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_109;
  }

LABEL_108:
  CA::Render::Layer::set_background_filters(v6, *(v30 + 104));
  if ((a3 & 0x800) != 0)
  {
LABEL_55:
    if ((a3 & 0x40000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_110;
  }

LABEL_109:
  CA::Render::Layer::set_compositing_filter(v6, *(v30 + 88));
  if ((a3 & 0x40000) != 0)
  {
LABEL_56:
    if ((a3 & 0x10000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_111;
  }

LABEL_110:
  CA::Render::Layer::set_mesh_transform(v6, *(v30 + 112));
  if ((a3 & 0x10000) != 0)
  {
LABEL_57:
    if ((a3 & 0x4000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_112;
  }

LABEL_111:
  CA::Render::Layer::set_subclass(v6, *v30);
  if ((a3 & 0x4000) != 0)
  {
LABEL_58:
    if ((a3 & 0x100000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_112:
  CA::Render::Layer::set_modifiers(v6, *(v30 + 136));
  if ((a3 & 0x100000) == 0)
  {
LABEL_59:
    CA::Render::Layer::set_identifiers(v6, *(v30 + 144));
  }

LABEL_60:
  if ((a3 & 0x8000) == 0)
  {
    v31 = *(v6 + 16);
    v32 = *(a2 + 16);
    if (v31 != v32)
    {
      if (v31)
      {
        if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v31 + 16))(v31, a4);
        }

        v32 = *(a2 + 16);
      }

      if (v32)
      {
        v33 = v32 + 2;
        if (!atomic_fetch_add(v32 + 2, 1u))
        {
          v32 = 0;
          atomic_fetch_add(v33, 0xFFFFFFFF);
        }
      }

      *(v6 + 16) = v32;
    }

    a4 = *(a2 + 1);
    *(v6 + 8) = *(a2 + 8);
    *(v6 + 1) = a4;
    v34 = *(a2 + 39);
    *(v6 + 39) = v34;
    v35 = *(v6 + 5) & 0xFFFFFFFFFFFFFFF0 | *(a2 + 5) & 0xFLL;
    *(v6 + 5) = v35;
    v36 = v35 & 0xFFFFFFFFFFFFFF0FLL | (16 * ((*(a2 + 5) >> 4) & 0xFLL));
    *(v6 + 5) = v36;
    v37 = v36 & 0xFFFFFFFFFFFFF0FFLL | (((*(a2 + 5) >> 8) & 0xFLL) << 8);
    *(v6 + 5) = v37;
    v38 = v37 & 0xFFFEFFFFFFFFFFFFLL | ((HIWORD(*(a2 + 5)) & 1) << 48);
    *(v6 + 5) = v38;
    v39 = v38 & 0xFFFBFFFFFFFFFFFFLL | (((*(a2 + 5) >> 50) & 1) << 50);
    *(v6 + 5) = v39;
    v40 = v39 & 0xFFFFFFFFFFFF0FFFLL | ((HIBYTE(*(a2 + 20)) >> 4) << 12);
    *(v6 + 5) = v40;
    v41 = v40 & 0xFFFFFFFFFFF0FFFFLL | (((*(a2 + 5) >> 16) & 0xFLL) << 16);
    *(v6 + 5) = v41;
    v42 = v41 & 0xFFFFFFFF800FFFFFLL | (((*(a2 + 5) >> 20) & 0x7FFLL) << 20);
    *(v6 + 5) = v42;
    v43 = v42 & 0xFFFFFFFCFFFFFFFFLL | ((HIDWORD(*(a2 + 5)) & 3) << 32);
    *(v6 + 5) = v43;
    v44 = v43 & 0xFFFFFFF3FFFFFFFFLL | (((*(a2 + 5) >> 34) & 3) << 34);
    *(v6 + 5) = v44;
    v45 = v44 & 0xFFFFEFFFFFFFFFFFLL | (((*(a2 + 5) >> 44) & 1) << 44);
    *(v6 + 5) = v45;
    v46 = v45 & 0xFFFDFFFFFFFFFFFFLL | (((*(a2 + 5) >> 49) & 1) << 49);
    *(v6 + 5) = v46;
    v47 = v46 & 0xFFEFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 52) & 1) << 52);
    *(v6 + 5) = v47;
    v48 = v47 & 0xFFDFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 53) & 1) << 53);
    *(v6 + 5) = v48;
    v49 = v48 & 0xFFBFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 54) & 1) << 54);
    *(v6 + 5) = v49;
    v50 = v49 & 0xFF7FFFFFFFFFFFFFLL | (((*(a2 + 5) >> 55) & 1) << 55);
    *(v6 + 5) = v50;
    v51 = v50 & 0xFEFFFFFFFFFFFFFFLL | ((HIBYTE(*(a2 + 5)) & 1) << 56);
    *(v6 + 5) = v51;
    v52 = v51 & 0xFDFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 57) & 1) << 57);
    *(v6 + 5) = v52;
    v53 = v52 & 0xFBFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 58) & 1) << 58);
    *(v6 + 5) = v53;
    v54 = v53 & 0xF7FFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 59) & 1) << 59);
    *(v6 + 5) = v54;
    v55 = v54 & 0xEFFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 60) & 1) << 60);
    *(v6 + 5) = v55;
    v56 = v55 & 0xDFFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 61) & 1) << 61);
    *(v6 + 5) = v56;
    v57 = *(a2 + 5) & 0x8000000000000000 | v56 & 0x7FFFFFFFFFFFFFFFLL;
    *(v6 + 5) = v57;
    LODWORD(v56) = *(v6 + 12) & 0xFFFFFFFE | *(a2 + 12) & 1;
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFFD | (2 * ((*(a2 + 12) >> 1) & 1));
    *(v6 + 12) = v56;
    v58 = v57 & 0xBFFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 62) & 1) << 62);
    *(v6 + 5) = v58;
    LODWORD(v56) = v56 & 0xFFFFFFFB | (4 * ((*(a2 + 12) >> 2) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFF7 | (8 * ((*(a2 + 12) >> 3) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFEF | (16 * ((*(a2 + 12) >> 4) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFDF | (32 * ((*(a2 + 12) >> 5) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFBF | (((*(a2 + 12) >> 6) & 1) << 6);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFBFFF | (((*(a2 + 12) >> 14) & 1) << 14);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFF7FFF | (((*(a2 + 12) >> 15) & 1) << 15);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFEFFFF | ((HIWORD(*(a2 + 12)) & 1) << 16);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFDFFFF | (((*(a2 + 12) >> 17) & 1) << 17);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFBFFFF | (((*(a2 + 12) >> 18) & 1) << 18);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFF7FFFF | (((*(a2 + 12) >> 19) & 1) << 19);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFEFFFFF | (((*(a2 + 12) >> 20) & 1) << 20);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFDFFFFF | (((*(a2 + 12) >> 21) & 1) << 21);
    *(v6 + 12) = v56;
    v59 = v58 & 0xFFFFFFCFFFFFFFFFLL | (((*(a2 + 5) >> 36) & 3) << 36);
    *(v6 + 5) = v59;
    *(v6 + 5) = v59 & 0xFFFFFF3FFFFFFFFFLL | (((*(a2 + 5) >> 38) & 3) << 38);
    *(v6 + 12) = v56 & 0xFF7FFFFF | (((*(a2 + 12) >> 23) & 1) << 23);
    v60 = *(a2 + 17);
    if (v60)
    {
      v61 = CA::Render::Layer::ensure_ext(v6);
      if (v61)
      {
        v62 = v61;
        *(v61 + 19) = *(v60 + 152);
        v63 = v61[10];
        v64 = *(v60 + 80);
        if (v63 != v64)
        {
          if (v63)
          {
            if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 16))(v63);
            }

            v64 = *(v60 + 80);
          }

          if (v64)
          {
            v65 = v64 + 2;
            if (!atomic_fetch_add(v64 + 2, 1u))
            {
              v64 = 0;
              atomic_fetch_add(v65, 0xFFFFFFFF);
            }
          }

          v62[10] = v64;
        }

        v62[39] = *(v60 + 312);
        *(v62 + 77) = *(v60 + 308);
        v66 = *(v60 + 244);
        *(v62 + 65) = *(v60 + 260);
        *(v62 + 244) = v66;
        v67 = v62[16];
        v68 = *(v60 + 128);
        if (v67 != v68)
        {
          if (v67)
          {
            if (atomic_fetch_add(v67 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v67 + 16))(v67);
            }

            v68 = *(v60 + 128);
          }

          if (v68)
          {
            v69 = v68 + 2;
            if (!atomic_fetch_add(v68 + 2, 1u))
            {
              v68 = 0;
              atomic_fetch_add(v69, 0xFFFFFFFF);
            }
          }

          v62[16] = v68;
        }

        *(v62 + 236) = *(v60 + 236);
        v70 = v62[9];
        v71 = *(v60 + 72);
        if (v70 != v71)
        {
          if (v70)
          {
            if (atomic_fetch_add(v70 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v70 + 16))(v70);
            }

            v71 = *(v60 + 72);
          }

          if (v71)
          {
            v72 = v71 + 2;
            if (!atomic_fetch_add(v71 + 2, 1u))
            {
              v71 = 0;
              atomic_fetch_add(v72, 0xFFFFFFFF);
            }
          }

          v62[9] = v71;
        }

        *(v62 + 58) = *(v60 + 232);
        *(v62 + 33) = *(v60 + 264);
        *(v62 + 70) = *(v60 + 280);
        a4 = *(v60 + 284);
        *(v62 + 75) = *(v60 + 300);
        *(v62 + 284) = a4;
        *(v62 + 348) = *(v62 + 348) & 0xFE | *(v60 + 348) & 1;
      }
    }

    else
    {
      v73 = *(v6 + 17);
      if (v73)
      {
        a4.n128_f32[0] = v34;
        *(v73 + 308) = v34;
      }
    }
  }

  if ((a3 & 0x2000) == 0)
  {
    *(v6 + 37) = *(a2 + 37);
    v74 = *(v6 + 12) & 0xFFFFFF7F | (((*(a2 + 12) >> 7) & 1) << 7);
    *(v6 + 12) = v74;
    v75 = v74 & 0xFFFFFEFF | (((*(a2 + 12) >> 8) & 1) << 8);
    *(v6 + 12) = v75;
    v76 = v75 & 0xFFFFFDFF | (((*(a2 + 12) >> 9) & 1) << 9);
    *(v6 + 12) = v76;
    v77 = v76 & 0xFFFFFBFF | (((*(a2 + 12) >> 10) & 1) << 10);
    *(v6 + 12) = v77;
    v78 = v77 & 0xFFFFF7FF | (((*(a2 + 12) >> 11) & 1) << 11);
    *(v6 + 12) = v78;
    v79 = v78 & 0xFFFFEFFF | (((*(a2 + 12) >> 12) & 1) << 12);
    *(v6 + 12) = v79;
    *(v6 + 12) = v79 & 0xFFFFDFFF | (((*(a2 + 12) >> 13) & 1) << 13);
    v80 = *(a2 + 17);
    if (v80)
    {
      v81 = CA::Render::Layer::ensure_ext(v6);
      if (v81)
      {
        v82 = v81;
        v83 = *(v80 + 200);
        *(v81 + 54) = *(v80 + 216);
        *(v81 + 25) = v83;
        *(v81 + 220) = *(v80 + 220);
        *(v81 + 57) = *(v80 + 228);
        v84 = v81[15];
        v85 = *(v80 + 120);
        if (v84 != v85)
        {
          if (v84)
          {
            if (atomic_fetch_add(v84 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v84 + 16))(v84);
            }

            v85 = *(v80 + 120);
          }

          if (v85)
          {
            v86 = v85 + 2;
            if (!atomic_fetch_add(v85 + 2, 1u))
            {
              v85 = 0;
              atomic_fetch_add(v86, 0xFFFFFFFF);
            }
          }

          v82[15] = v85;
        }

        a4 = *(v80 + 324);
        *(v82 + 85) = *(v80 + 340);
        *(v82 + 324) = a4;
        *(v82 + 80) = *(v80 + 320);
        a4.n128_u32[0] = *(v80 + 344);
        *(v82 + 86) = a4.n128_u32[0];
      }
    }
  }

  return a4.n128_f32[0];
}

CA::Render::LayerHost *CA::Render::LayerHost::LayerHost(CA::Render::LayerHost *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 31;
  ++dword_1ED4EAAB4;
  *v4 = &unk_1EF1F78A0;
  *(v4 + 2) = &unk_1EF1F57C8;
  *(v4 + 3) = 0;
  *(v4 + 16) = 257;
  *(this + 6) = CA::Render::Decoder::decode_port(a2, 17, v4 + 32);
  *(this + 7) = CA::Render::Decoder::decode_int32(a2);
  v5 = CA::Render::Decoder::decode_int8(a2);
  *(this + 56) = 0u;
  *(this + 33) = v5 != 0;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 10) = CA::Render::Decoder::decode_int64(a2);
  v6 = CA::Render::Decoder::decode_int32(a2);
  std::vector<unsigned long long>::resize(this + 7, v6);
  CA::Render::Decoder::decode_bytes(a2, *(this + 7), 8 * v6);
  v7 = *(this + 3);
  if (byte_1ED4E9809 == 1)
  {
    v7 &= ~0x400u;
    *(this + 3) = v7;
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v7 & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  if ((*(*(a2 + 9) + 584) & 0x200) == 0)
  {
    CA::Render::Decoder::set_fatal_error(a2, "Missing entitlement for system layer!");
    v7 = *(this + 3);
  }

LABEL_5:
  if ((v7 & 0x10000) != 0 && (*(*(a2 + 9) + 584) & 0x400) == 0)
  {
    CA::Render::Decoder::set_fatal_error(a2, "Missing entitlement for secure layer!");
  }

  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-layer-host.cpp", 1152);
  return this;
}

void std::vector<unsigned long long>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 8 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

void CA::Render::LayerHost::commit_layer(CA::Render::LayerHost *this, CA::Render::Context *a2, CA::Render::Layer *a3, CA::Render::Handle *a4, int a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = *(this + 5);
  if (v8 != a4)
  {
    v9 = a4;
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8, a2, a3);
    }

    if (v9)
    {
      v10 = (v9 + 8);
      if (!atomic_fetch_add(v9 + 2, 1u))
      {
        v9 = 0;
        atomic_fetch_add(v10, 0xFFFFFFFF);
      }
    }

    *(this + 5) = v9;
  }

  if ((a5 & 0x200000) != 0)
  {
    CA::Render::LayerHost::retain_hosted_context(v13, this, a2, 0);
    v11 = v13[0];
    if (v13[0] && atomic_fetch_add((v13[0] + 8), 0xFFFFFFFF) == 1)
    {
      v12 = *(*v11 + 16);

      v12();
    }
  }

  else
  {

    CA::Render::LayerHost::invalidate(this);
  }
}

uint64_t CA::Render::invalidate_context(CA::Render *this, CA::Render::Context *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 72));
  if ((*(this + 14) & 0x20) != 0)
  {
    if (byte_1ED4E9878 == 1)
    {
      if (x_log_get_zombie(void)::once != -1)
      {
        dispatch_once(&x_log_get_zombie(void)::once, &__block_literal_global_4431);
      }

      v9 = x_log_get_zombie(void)::log;
      if (os_log_type_enabled(x_log_get_zombie(void)::log, OS_LOG_TYPE_INFO))
      {
        v10 = *(this + 4);
        v11[0] = 67109120;
        v11[1] = v10;
        _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_INFO, "<ctx:%#x> host invalidated, destroying zombie", v11, 8u);
      }
    }

    if (!atomic_fetch_add(this + 2, 1u))
    {
      atomic_fetch_add(this + 2, 0xFFFFFFFF);
    }

    CA::Render::Server::add_callback(0, CA::Render::Context::schedule_destroy(void)::$_0::__invoke, this, 0.0);
  }

  v3 = CA::Render::Context::root_layer_handle(this);
  if (v3)
  {
    v7 = v3;
    CA::Render::Context::invalidate(this, v3 + 15, v4, v5, v6);
    *&v7[13] |= 0xBuLL;
  }

  return pthread_mutex_unlock((this + 72));
}

uint64_t CA::Render::Context::update_backdrop_namespaces_locked(uint64_t this, const CA::Render::Context *a2)
{
  if (*(this + 584))
  {
    v2 = this;
  }

  else
  {
    v2 = a2;
  }

  *(this + 576) = v2;
  v3 = *(this + 456);
  if (v3)
  {
    v4 = this;
    do
    {
      this = *(*v3 + 88);
      if (this)
      {
        this = CA::Render::Context::update_backdrop_namespaces_locked(this, *(v4 + 576));
      }

      v3 = v3[1];
    }

    while (v3);
  }

  return this;
}

void CA::Render::Context::set_visible_locked(CA::Render::Context *this, int a2)
{
  if (*(this + 88) == a2)
  {
    return;
  }

  *(this + 88) = a2;
  v4 = *(this + 57);
  if (!v4)
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_15;
    }

LABEL_8:
    os_unfair_lock_lock(&CA::Render::BackdropState::_list_lock);
    v6 = CA::Render::BackdropState::_list;
    v7 = qword_1EA84E8A0;
    if (CA::Render::BackdropState::_list != qword_1EA84E8A0)
    {
      do
      {
        v8 = *v6;
        if (*(*v6 + 8))
        {
          os_unfair_lock_lock((v8 + 52));
          if (*(v8 + 16) == this)
          {
            *(v8 + 153) = 1;
          }

          os_unfair_lock_unlock((v8 + 52));
        }

        v6 += 8;
      }

      while (v6 != v7);
    }

    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
    goto LABEL_15;
  }

  v5 = 0;
  do
  {
    v5 = x_list_prepend(v5, *v4);
    v4 = v4[1];
  }

  while (v4);
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
  os_unfair_lock_lock(&CA::Render::Context::_image_queues_lock);
  v10 = *(this + 45);
  v9 = *(this + 46);
  while (v10 != v9)
  {
    v11 = *v10++;
    CA::Render::ImageQueue::set_visible(v11, a2);
  }

  os_unfair_lock_unlock(&CA::Render::Context::_image_queues_lock);
  for (; v5; v5 = x_list_remove_head(v5))
  {
    v12 = *(*v5 + 88);
    if (v12)
    {
      CA::Render::Context::set_visible_locked(v12, a2);
    }
  }
}

void CA::Render::Context::set_display_mask(CA::Render::Context *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 160) != a2)
  {
    *(this + 160) = a2;
    if (*(this + 65))
    {
      *(this + 3) |= 0x1000u;
    }
  }

  if ((*(this + 13) & 0x10) != 0)
  {
    v3 = *(this + 65);
    v6 = *MEMORY[0x1E69E99E0];
    v7 = a2;
    *&v5.msgh_bits = 19;
    v5.msgh_voucher_port = 0;
    v5.msgh_id = 40400;
    v5.msgh_remote_port = v3;
    v5.msgh_local_port = 0;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v5);
    }

    v4 = mach_msg(&v5, 17, 0x24u, 0, 0, 0, 0);
    if ((v4 - 268435459) > 1)
    {
      if (!v4)
      {
        *(this + 3) &= ~0x1000u;
      }
    }

    else
    {
      if ((v5.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
      }

      mach_msg_destroy(&v5);
    }
  }
}

void CA::Render::Context::set_display_id(CA::Render::Context *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 161) != a2)
  {
    *(this + 161) = a2;
    if (*(this + 65))
    {
      *(this + 3) |= 0x1000000u;
    }
  }

  if (*(this + 15))
  {
    v3 = *(this + 65);
    v6 = *MEMORY[0x1E69E99E0];
    v7 = a2;
    *&v5.msgh_bits = 19;
    v5.msgh_voucher_port = 0;
    v5.msgh_id = 40401;
    v5.msgh_remote_port = v3;
    v5.msgh_local_port = 0;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v5);
    }

    v4 = mach_msg(&v5, 17, 0x24u, 0, 0, 0, 0);
    if ((v4 - 268435459) > 1)
    {
      if (!v4)
      {
        *(this + 3) &= ~0x1000000u;
      }
    }

    else
    {
      if ((v5.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
      }

      mach_msg_destroy(&v5);
    }
  }
}

uint64_t CA::Render::Layer::set_timing(uint64_t this, CA::Render::Timing *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[1];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[1] = v2;
    }
  }

  return this;
}

atomic_uint *CA::Render::Array::decode(CA::Render::Decoder *a1, uint64_t a2, int *a3, int a4)
{
  v8 = CA::Render::Decoder::decode_int32(a1);
  LODWORD(v9) = CA::Render::Decoder::decode_int32(a1);
  if (v9 > 0x100000)
  {
    CA::Render::Decoder::set_fatal_error(a1, "%s - suspiciously large array: %u");
    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, (8 * v9 + 24), 0xE426044uLL);
  v11 = v10;
  if (v10)
  {
    if ((v8 & 1) != a4)
    {
      CA::Render::Decoder::set_fatal_error(a1, "%s - array is %sretained, but %sretained is expected");
      return 0;
    }

    *(v10 + 2) = 1;
    ++dword_1ED4EAA3C;
    *v10 = &unk_1EF2031B0;
    *(v10 + 3) = (v8 << 8) | 1;
    *(v10 + 4) = v9;
    if (v8)
    {
      if (v9)
      {
        v17 = v9;
        v18 = 6;
        do
        {
          *&v11[v18] = CA::Render::Decoder::decode_size_t(a1);
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      goto LABEL_28;
    }

    if (!v9)
    {
      goto LABEL_20;
    }

    v13 = 0;
    v14 = (v10 + 24);
    v9 = v9;
    do
    {
      v15 = CA::Render::Decoder::decode_object(a1, 0);
      *v14++ = v15;
      v13 |= v15 == 0;
      --v9;
    }

    while (v9);
    if (v13)
    {
      v16 = 1;
    }

    else
    {
LABEL_20:
      if (CA::Render::Array::check_types(v11, a2, a3))
      {
LABEL_28:
        CA::Render::Decoder::decode_sanity_check(a1, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-array.cpp", 215);
        return v11;
      }

      v16 = 0;
    }

    if (a3)
    {
      v19 = *a3;
    }

    else
    {
      v19 = -1;
    }

    CA::Render::Decoder::set_fatal_error(a1, "%s - null_pointer? %d, n_types %zu, types[0] = %d", "decode", v16, a2, v19);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    v11 = 0;
    goto LABEL_28;
  }

  return v11;
}

uint64_t CA::Render::Layer::set_sublayer_transform(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[3];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[3] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::Layer::set_contents_center(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[6];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[6] = v2;
    }
  }

  return this;
}

CA::Render::Handle *CA::Render::Handle::set_current_layer(CA::Render::Handle *this, atomic_uint *a2)
{
  v2 = *(this + 2);
  if (v2 != a2)
  {
    *(this + 2) = a2;
    this = CA::Render::Handle::update_container_state(this, a2);
    a2 = v2;
  }

  if (a2 && atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    v3 = *(*a2 + 16);

    return v3(a2);
  }

  return this;
}

uint64_t CA::Render::Layer::set_corner_contents_center(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[8];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[8] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::Handle::update_container_state(uint64_t this, const double *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    if ((*(this + 13) & 1) != 0 || *(this + 56) || *(this + 64))
    {
      v3 = *(v2 + 12) | 0x1000;
    }

    else
    {
      v3 = *(v2 + 12) & 0xFFFFEFFF;
    }

    *(v2 + 12) = v3;
    if ((*(this + 13) & 0x40) != 0)
    {
      *(*(this + 16) + 12) |= 0x1000u;
      *(this + 12) &= ~0x4000u;
    }

    v4 = *(this + 16);
    v5 = *(v4 + 12);
    if ((v5 & 0x1000) != 0 || (this = CA::Render::Layer::is_containerable(*(this + 16), a2), !this))
    {
      v6 = v5 & 0xFFFFF7FF;
    }

    else
    {
      v6 = v5 | 0x800;
    }

    *(v4 + 12) = v6;
  }

  return this;
}

uint64_t CA::Render::Layer::set_background_filters(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 || *(result + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(result);
    result = v3[13];
    if (result != v2)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[13] = v2;
    }
  }

  return result;
}

BOOL CA::Render::Layer::sublayer_allows_containerization(CA::Render::Layer *this, CA::Render::Layer *a2)
{
  if ((*(a2 + 13) & 9) != 0)
  {
    return 0;
  }

  v4 = *(this + 5);
  if ((v4 & 0x10000000000) != 0)
  {
    if ((*(a2 + 45) & 1) == 0)
    {
      return 0;
    }

    v5 = *(a2 + 17);
    if (v5)
    {
      if (*(v5 + 16))
      {
        return 0;
      }

      v15 = *(v5 + 168);
    }

    else
    {
      v16 = 0.0;
      if ((*(a2 + 50) & 0x40) == 0)
      {
        v16 = 0.5;
      }

      v15 = vdupq_lane_s64(*&v16, 0);
    }

    v17 = *(a2 + 88);
    v18 = *(this + 88);
    v19 = vorrq_s8(vcltzq_f64(v17), vclezq_f64(v18));
    if ((vorrq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0] & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v20 = vmlsq_f64(*(a2 + 56), v17, v15);
    v21 = vandq_s8(vcgeq_f64(vaddq_f64(*(this + 72), v18), vaddq_f64(v20, v17)), vcgeq_f64(v20, *(this + 72)));
    if ((vandq_s8(vdupq_laneq_s64(v21, 1), v21).u64[0] & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a2 + 17);
  }

  if (!v5)
  {
LABEL_15:
    v10 = *(a2 + 18);
    if (!v10)
    {
      return 1;
    }

    v11 = *(v10 + 16);
    if (!v11)
    {
      return 1;
    }

    v12 = 8 * v11;
    v13 = v10 + 24;
    result = 1;
    while (1)
    {
      v14 = *(*v13 + 12);
      if ((v14 & 0x40000) != 0 || (v14 & 0x1000) != 0 && (v4 & 0x10000000000) != 0)
      {
        break;
      }

      v13 += 8;
      v12 -= 8;
      if (!v12)
      {
        return result;
      }
    }

    return 0;
  }

  if (*(v5 + 88) || *(v5 + 104))
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6 || ((v7 = *(v6 + 16), v8 = (v6 + 24), v7 >= 0x10) ? (v9 = v8) : (v9 = &CA::Mat4Impl::mat4_identity_double), result = CA::Mat4Impl::mat4_is_affine(v9, a2)))
  {
    if (*(v5 + 192) == 0.0 && *(v5 + 184) == 0.0)
    {
      goto LABEL_15;
    }

    return 0;
  }

  return result;
}

uint64_t CA::Render::Layer::set_mesh_transform(uint64_t this, os_unfair_lock_s *a2)
{
  v2 = this;
  if (a2 && (v3 = a2, this = CA::Render::MeshTransform::validate(a2), (this & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    if (!*(v2 + 17))
    {
      return this;
    }

    v3 = 0;
    v4 = 1;
  }

  v5 = CA::Render::Layer::ensure_ext(v2);
  this = v5[14];
  if (this != v3)
  {
    if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      this = (*(*this + 16))(this);
    }

    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v6 = &v3[2];
      if (!atomic_fetch_add(&v3[2], 1u))
      {
        v3 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    v5[14] = v3;
  }

  return this;
}

uint64_t CA::Render::Context::lookup_object(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int *a6)
{
  v6 = ((a3 ^ 0x8000000000000000) + ~(a3 << 32)) ^ (((a3 ^ 0x8000000000000000) + ~(a3 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = (a1 + 8 * (((v8 >> 31) ^ v8) & a2));
  do
  {
    v9 = *v9;
    if (!v9)
    {
      if (!a6)
      {
        return 0;
      }

      result = 0;
      v12 = 1;
      goto LABEL_23;
    }
  }

  while (v9[1] != (a3 ^ 0x8000000000000000));
  if (a4 && *(v9 + 6) != a4)
  {
    if (!a6)
    {
      return 0;
    }

    result = 0;
    v12 = 2;
    goto LABEL_23;
  }

  result = v9[2];
  if (!result)
  {
    if (!a6)
    {
      return 0;
    }

    result = 0;
    v12 = 3;
    goto LABEL_23;
  }

  v11 = *(result + 12);
  if (v11 != 22)
  {
    if (!a5 || v11 == a5)
    {
      return result;
    }

    if (!a6)
    {
      return 0;
    }

    result = 0;
    v12 = 5;
LABEL_23:
    *a6 = v12;
    return result;
  }

  if (!a5 || a5 == 30)
  {
    return *(result + 16);
  }

  if (a6)
  {
    result = 0;
    v12 = 4;
    goto LABEL_23;
  }

  return 0;
}

uint64_t CA::Render::Layer::set_identifiers(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 || *(result + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(result);
    result = v3[18];
    if (result != v2)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[18] = v2;
    }
  }

  return result;
}

void CA::Render::Context::add_begin_time(os_unfair_lock_s *this, double a2, double a3)
{
  os_unfair_lock_lock(this + 128);
  v6 = *&this[132]._os_unfair_lock_opaque;
  v7 = *&this[130]._os_unfair_lock_opaque;
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v7) < 0x21)
  {
    if (v7 != v6)
    {
      do
      {
        v8 = v7[1];
        v9 = COERCE_DOUBLE(atomic_load(&CA::Render::Context::_begin_time_threshold));
        if (v8 <= v9)
        {
          v11 = *&this[132]._os_unfair_lock_opaque;
          v12 = v11 - (v7 + 3);
          if (v11 != v7 + 3)
          {
            memmove(v7, v7 + 3, v11 - (v7 + 3));
          }

          v10 = (v7 + v12);
          *&this[132]._os_unfair_lock_opaque = v7 + v12;
        }

        else
        {
          v7 += 3;
          v10 = *&this[132]._os_unfair_lock_opaque;
        }
      }

      while (v7 != v10);
    }
  }

  else
  {
    *&this[132]._os_unfair_lock_opaque = v7;
  }

  v13 = mach_absolute_time();
  v14 = CATimeWithHostTime(v13);
  v15 = *&this[132]._os_unfair_lock_opaque;
  v16 = *&this[134]._os_unfair_lock_opaque;
  if (v15 >= v16)
  {
    v18 = *&this[130]._os_unfair_lock_opaque;
    v19 = v15 - v18;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v18) >> 3);
    v21 = v20 + 1;
    if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v18) >> 3);
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 >= 0x555555555555555)
    {
      v23 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v24 = 24 * v20;
    *v24 = a2;
    *(v24 + 8) = v14;
    *(v24 + 16) = a3;
    v17 = 24 * v20 + 24;
    v25 = 24 * v20 - v19;
    memcpy((v24 - v19), v18, v19);
    *&this[130]._os_unfair_lock_opaque = v25;
    *&this[132]._os_unfair_lock_opaque = v17;
    *&this[134]._os_unfair_lock_opaque = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = a2;
    v15[1] = v14;
    v17 = (v15 + 3);
    v15[2] = a3;
  }

  *&this[132]._os_unfair_lock_opaque = v17;

  os_unfair_lock_unlock(this + 128);
}

void CA::Render::Context::mark_changed(unint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[3] = *MEMORY[0x1E69E9840];
  ++*(a1 + 44);
  if ((*(a1 + 584) & 0x40) == 0)
  {
    v6[0] = a2;
    if (a2)
    {
      *&a4 = -1.0;
    }

    BYTE1(v6[0]) = a3;
    v6[1] = a4;
    v6[2] = a5;
    CA::Render::post_notification(0, a1, v6, 0);
  }
}

uint64_t CA::WindowServer::Server::context_changed(uint64_t this, CA::Render::Object *a2, double *a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(this + 448))
  {
    if (!a3 || (*a3 & 1) != 0 || (v6 = a3[1], v6 <= 0.0))
    {
      v10 = 0.0;
      v11 = vdupq_n_s64(4uLL);
    }

    else
    {
      if (*(a3 + 16) == 1)
      {
        v7 = (*(**(a2 + 12) + 776))(*(a2 + 12));
        v6 = a3[1] + ((*(**(a2 + 12) + 784))() + -0.25) * v7;
        a3[1] = v6;
      }

      v10 = v6;
      v11 = vdupq_n_s64(4uLL);
    }

    this = (*(*a2 + 176))(a2, &v10, 0.0);
    if ((BYTE7(xmmword_1ED4E97EC) & 1) == 0)
    {
      this = CA::WindowServer::Display::benchmark_mode(0, v8);
      if (a3)
      {
        if ((this & 1) == 0 && *a3 == 1)
        {
          if (BYTE8(xmmword_1ED4E97EC))
          {
            v9 = 0;
          }

          else
          {
            v9 = *(a3 + 1);
          }

          return (*(*a2 + 464))(a2, v9 & 1);
        }
      }
    }
  }

  return this;
}

CA::Render::PresentationModifier *CA::Render::PresentationModifier::PresentationModifier(CA::Render::PresentationModifier *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 44;
  ++dword_1ED4EAAE8;
  *v4 = &unk_1EF203050;
  *(this + 2) = CA::Render::Decoder::decode_object(a2, 52);
  *(this + 3) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 4) = CA::Render::Decoder::decode_keypath(a2);
  *(this + 10) = CA::Render::Decoder::decode_int32(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 3272);
  return this;
}

_DWORD *CA::Render::Shmem::decode(CA::Render::Shmem *this, CA::Render::Decoder *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  if ((v3 & 3) != 0)
  {
    v4 = CA::Render::Decoder::decode_size_t(this);
    CA::Render::Decoder::decode_size_t(this);
    v18[0] = 0;
    v5 = CA::Render::Decoder::decode_port(this, 17, v18);
    if (!v5)
    {
      CA::Render::Decoder::set_fatal_error(this, "Shmem port is MACH_PORT_NULL!");
      goto LABEL_12;
    }

    v6 = v5;
    v7 = v18[0];
    v8 = CA::Render::Shmem::new_shmem(v5, v4, v18[0], v3);
    if (!v8 && v7)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
LABEL_12:
      v8 = 0;
    }
  }

  else
  {
    v17 = 0;
    *v18 = 0;
    v16 = 0;
    v9 = CA::Render::Decoder::decode_data_async(this, v18, &v17, &v16);
    if (!v9)
    {
      CA::Render::Decoder::set_fatal_error(this, "Failed to decode shmem data");
      goto LABEL_12;
    }

    v11 = v9;
    v12 = v17;
    v13 = *v18;
    v14 = v16;
    v8 = CA::Render::Shmem::new_shmem(v9, *v18, v3, v17, v16, v10);
    if (!v8)
    {
      CA::Render::Decoder::set_fatal_error(this, "Failed to decode shmem from data ptr: %p, len: %zu", v11, v13);
      if (v12)
      {
        v12(v11, v14);
      }

      goto LABEL_12;
    }
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-shmem.cpp", 566);
  return v8;
}

uint64_t CA::Render::Animation::was_added(uint64_t this, Handle *a2)
{
  v2 = *(this + 12);
  if ((v2 & 0x1000) == 0)
  {
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_5:
    a2[13] = (a2[13] | 0x10);
    return this;
  }

  a2[13] = (a2[13] | 8);
  if ((*(this + 12) & 0x2000) != 0)
  {
    goto LABEL_5;
  }

  return this;
}

CA::Render::Encoder *CA::Render::encode_invalidation(CA::Render *this, const CA::Render::Object *a2, CA::Render *a3, void *a4)
{
  v5 = a2;
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  if (this)
  {
    v7 = (this + CA::Render::_render_id_slide);
  }

  else
  {
    v7 = 0;
  }

  return CA::Render::encode_delete_object(a3, v7, v5);
}

uint64_t CA::Render::Decoder::decode_keypath(CA::Render::Decoder *this)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if ((*(this + 18) & 1) == 0)
  {
    v2 = CA::Render::Decoder::decode_int16(this);
    v3 = v2;
    if (v2 >= 0x401)
    {
      v5 = malloc_type_malloc(4 * v2, 0xFAFB1BECuLL);
      if (!v5)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - atoms = NULL", "decode_keypath");
        v12[0] = 0;
        return v12[0];
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v2);
      v5 = (v12 - v4);
      bzero(v12 - v4, v6);
      if (!v3)
      {
        CA::Render::key_path_set_atoms(v12, v3, v5, v7);
        return v12[0];
      }
    }

    v8 = 0;
    do
    {
      if (CA::Render::Decoder::decode_int8(this))
      {
        v9 = CA::Render::Decoder::decode_int32(this) | 0x40000000;
      }

      else
      {
        v9 = CA::Render::Decoder::decode_atom(this);
      }

      v5[v8] = v9;
      v8 = (v8 + 1);
    }

    while (v3 != v8);
    CA::Render::key_path_set_atoms(v12, v3, v5, v10);
    if (v3 > 0x400)
    {
      free(v5);
    }
  }

  return v12[0];
}

uint64_t CA::Render::Decoder::decode_int16(CA::Render::Decoder *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  v3 = v1 + 1;
  if (v1 + 1 <= v2)
  {
    v4 = *v1;
    *(this + 4) = v3;
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - _buffer_point = %p, _buffer_end = %p", "decode_int16", v1, v2);
    return 0;
  }

  return v4;
}

CA::Render::Animation *CA::Render::Animation::Animation(CA::Render::Animation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *v4 = &unk_1EF202A30;
  *(v4 + 3) = 0;
  *(v4 + 8) = 0;
  *(this + 5) = CA::Render::Decoder::decode_object(a2, 58);
  *(this + 6) = CA::Render::Decoder::decode_object(a2, 62);
  CFStringGetTypeID();
  *(this + 7) = CA::Render::Decoder::decode_cfobject(a2);
  *(this + 8) = 0;
  *(this + 18) = CA::Render::Decoder::decode_int32(a2);
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 6) = CA::Render::Decoder::decode_int32(a2);
  *(this + 7) = CA::Render::Decoder::decode_int32(a2);
  *(this + 8) = CA::Render::Decoder::decode_int32(a2);
  *(this + 22) = CA::Render::Decoder::decode_int32(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2538);
  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = CFHash(v5);
  }

  return this;
}

UInt8 *CA::Render::Decoder::decode_atom(CA::Render::Decoder *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 18))
  {
    return 0;
  }

  v2 = CA::Render::Decoder::decode_int8(this);
  v3 = v2;
  if (v2 > 0xFD)
  {
    if (v2 == 254)
    {
      return CA::Render::Decoder::decode_int16(this);
    }

    numBytes = 0;
    v3 = CA::Render::Decoder::decode_data(this, v7, 0x100uLL, &numBytes, 0x400uLL);
    if (!v3)
    {
      CA::Render::Decoder::set_fatal_error(this, "%s - ptr = NULL", "decode_atom");
      return v3;
    }

    v4 = CFStringCreateWithBytes(*MEMORY[0x1E695E490], v3, numBytes, 0x8000100u, 1u);
    if (v3 != v7)
    {
      free(v3);
    }

    if (v4)
    {
      v3 = CAInternAtom(v4, 1);
      CFRelease(v4);
      return v3;
    }

    CA::Render::Decoder::set_fatal_error(this, "%s - string = NULL", "decode_atom");
    return 0;
  }

  return v3;
}

CA::Render::PropertyAnimation *CA::Render::PropertyAnimation::PropertyAnimation(CA::Render::PropertyAnimation *this, CA::Render::Decoder *a2)
{
  *CA::Render::Animation::Animation(this, a2) = &unk_1EF202AE0;
  *(this + 12) = CA::Render::Decoder::decode_keypath(a2);
  *(this + 13) = CA::Render::Decoder::decode_object(a2, 18);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2559);
  return this;
}

CA::Render::BasicAnimation0 *CA::Render::BasicAnimation0::BasicAnimation0(CA::Render::BasicAnimation0 *this, CA::Render::Decoder *a2)
{
  *CA::Render::PropertyAnimation::PropertyAnimation(this, a2) = &unk_1EF202BA8;
  *(this + 14) = CA::Render::Decoder::decode_object(a2, 0);
  *(this + 15) = CA::Render::Decoder::decode_object(a2, 0);
  *(this + 16) = CA::Render::Decoder::decode_object(a2, 0);
  *(this + 17) = CA::Render::Decoder::decode_int64(a2);
  *(this + 18) = CA::Render::Decoder::decode_int64(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2606);
  return this;
}

CA::Render::BasicAnimation *CA::Render::BasicAnimation::BasicAnimation(CA::Render::BasicAnimation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::BasicAnimation0::BasicAnimation0(this, a2);
  *(v4 + 12) = 5;
  ++dword_1ED4EAA4C;
  *v4 = &unk_1EF202EB8;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2620);
  return this;
}

CA::Render::Timing *CA::Render::Timing::Timing(CA::Render::Timing *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 58;
  ++dword_1ED4EAB20;
  *v4 = &unk_1EF2015A8;
  *(this + 4) = CA::Render::Decoder::decode_int32(a2);
  *(this + 3) = CA::Render::Decoder::decode_int64(a2);
  *(this + 4) = CA::Render::Decoder::decode_int64(a2);
  *(this + 5) = CA::Render::Decoder::decode_int64(a2);
  *(this + 6) = CA::Render::Decoder::decode_int64(a2);
  *(this + 7) = CA::Render::Decoder::decode_int64(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-timing.cpp", 402);
  return this;
}

_DWORD *CA::Render::Vector::decode(CA::Render::Vector *this, CA::Render::Decoder *a2)
{
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = 8 * v3;
  if (v3 < 0x7FFFE)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_type_zone_malloc(malloc_zone, v4 + 24, 0x249D216FuLL);
    v5 = v6;
    if (v6)
    {
      v6[2] = 1;
      v6[3] = 62;
      ++dword_1ED4EAB30;
      *v6 = &unk_1EF202890;
      v6[4] = v3;
      CA::Render::Decoder::decode_bytes(this, v6 + 6, v4);
      CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-vector.cpp", 287);
    }
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - suspiciously large vector size: %zu", "decode", v4 + 24);
    return 0;
  }

  return v5;
}

__CFArray *CA::Render::Decoder::decode_cfobject(CA::Render::Decoder *this)
{
  MEMORY[0x1EEE9AC00](this);
  v49 = *MEMORY[0x1E69E9840];
  if (*(v1 + 18))
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  switch(CA::Render::Decoder::decode_int8(v1))
  {
    case 1u:
      goto LABEL_55;
    case 2u:
      if (!CA::Render::Decoder::decode_int8(v4))
      {
        return 0;
      }

      bzero(&context, 0x1000uLL);
      length = 0;
      v5 = CA::Render::Decoder::decode_data(v4, &context, 0x1000uLL, &length, 0);
      if (!v5)
      {
        goto LABEL_76;
      }

      v6 = v5;
      v7 = length - 1;
      if ((length - 1) >= 0xFFF)
      {
        v7 = 4095;
      }

      if (length)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v5[v8] = 0;
      Mutable = CFStringCreateWithCString(*MEMORY[0x1E695E490], v5, 0x8000100u);
      if (v6 == &context)
      {
        goto LABEL_82;
      }

      v10 = v6;
      goto LABEL_17;
    case 3u:
      v25 = CA::Render::Decoder::decode_int8(v4);
      if (v25 == 1)
      {
        context.version = CA::Render::Decoder::decode_int64(v4);
        v26 = *MEMORY[0x1E695E490];
        v27 = kCFNumberLongLongType;
      }

      else
      {
        if (v25)
        {
          CA::Render::Decoder::set_fatal_error(v4, "%s - wrong type = %u");
          return 0;
        }

        context.version = CA::Render::Decoder::decode_int64(v4);
        v26 = *MEMORY[0x1E695E490];
        v27 = kCFNumberDoubleType;
      }

      v30 = CFNumberCreate(v26, v27, &context);
      goto LABEL_81;
    case 4u:
      v28 = CA::Render::Decoder::decode_int8(v4);
      v29 = MEMORY[0x1E695E4D0];
      if (!v28)
      {
        v29 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_56;
    case 5u:
      v46 = 0;
      length = 0;
      v45 = 0;
      v16 = CA::Render::Decoder::decode_data_async(v4, &length, &v46, &v45);
      v17 = length;
      if (length)
      {
        v18 = v16;
        if (!v16)
        {
          CA::Render::Decoder::set_fatal_error(v4, "%s - data = NULL, data_len = %zu");
          goto LABEL_76;
        }

        if (v46)
        {
          context.version = 0;
          memset(&context.retain, 0, 40);
          context.info = v45;
          context.deallocate = v46;
          context.preferredSize = 0;
          v19 = *MEMORY[0x1E695E480];
          v20 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
          Mutable = CFDataCreateWithBytesNoCopy(v19, v18, v17, v20);
          CFRelease(v20);
          goto LABEL_82;
        }

        v35 = *MEMORY[0x1E695E490];
        v36 = v18;
        v37 = length;
      }

      else
      {
        v35 = *MEMORY[0x1E695E490];
        v36 = 0;
        v37 = 0;
      }

      v30 = CFDataCreate(v35, v36, v37);
      goto LABEL_81;
    case 6u:
      v31 = CA::Render::Decoder::decode_size_t(v4);
      if (!v31)
      {
        v30 = CFArrayCreate(0, 0, 0, 0);
        goto LABEL_81;
      }

      v32 = v31;
      if (v31 > 0x8000)
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - array entries = %zu");
        return 0;
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      do
      {
        v39 = CA::Render::Decoder::decode_cfobject(v4);
        if (v39)
        {
          v40 = v39;
          CFArrayAppendValue(Mutable, v39);
          CFRelease(v40);
        }

        else
        {
          CA::Render::Decoder::set_fatal_error(v4, "%s - value = NULL", "decode_cfobject");
        }

        --v32;
      }

      while (v32);
      goto LABEL_82;
    case 7u:
      v33 = CA::Render::Decoder::decode_size_t(v4);
      if (!v33)
      {
        v30 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
LABEL_81:
        Mutable = v30;
        goto LABEL_82;
      }

      v34 = v33;
      if (v33 > 0x8000)
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - dicitionary entries = %zu");
        return 0;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      do
      {
        v41 = CA::Render::Decoder::decode_cfobject(v4);
        v42 = CA::Render::Decoder::decode_cfobject(v4);
        v43 = v42;
        if (v41)
        {
          v42 = v41;
          if (v43)
          {
            CFDictionarySetValue(Mutable, v41, v43);
            CFRelease(v41);
            CFRelease(v43);
            goto LABEL_71;
          }

LABEL_69:
          CFRelease(v42);
          CA::Render::Decoder::set_fatal_error(v4, "%s - key = %p, value = %p", "decode_cfobject", v41, v43);
          goto LABEL_71;
        }

        if (v42)
        {
          goto LABEL_69;
        }

        CA::Render::Decoder::set_fatal_error(v4, "%s - key = %p, value = %p", "decode_cfobject", 0, 0);
LABEL_71:
        --v34;
      }

      while (v34);
      if ((*(v4 + 18) & 1) == 0)
      {
        goto LABEL_82;
      }

LABEL_85:
      CFRelease(Mutable);
      return 0;
    case 8u:
      v30 = CA::Render::Decoder::decode_colorspace(v4);
      goto LABEL_81;
    case 9u:
      v22 = CA::Render::Decoder::decode_int8(v4);
      if (v22 == 23)
      {
        v21 = CA::Render::Decoder::decode_object(v4, 23);
        Mutable = CA::Render::Image::copy_cgimage(v21);
        if (!v21)
        {
          goto LABEL_82;
        }

        goto LABEL_47;
      }

      v23 = v22;
      if (v22 == 57)
      {
LABEL_26:
        v24 = CA::Render::Decoder::decode_object(v4, 57);
        v21 = v24;
        Mutable = *(v24 + 16);
        if (Mutable)
        {
          CFRetain(*(v24 + 16));
        }

LABEL_47:
        if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v21 + 16))(v21);
        }

        goto LABEL_82;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v38 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(context.version) = 67109120;
        HIDWORD(context.version) = v23;
        _os_log_error_impl(&dword_183AA6000, v38, OS_LOG_TYPE_ERROR, "decode kCACFTypeImage got unsupported type %d", &context, 8u);
      }

LABEL_55:
      v29 = MEMORY[0x1E695E738];
LABEL_56:
      Mutable = *v29;
      goto LABEL_82;
    case 0xAu:
      memset(&context, 0, 20);
      CA::Render::Decoder::decode_bytes(v4, &context, 0x14uLL);
      CAGetColorSpace(35);
      v30 = CGColorCreateWithContentHeadroom();
      goto LABEL_81;
    case 0xBu:
      goto LABEL_26;
    case 0xCu:
      v11 = CA::Render::Decoder::decode_int8(v4);
      if (v11 >= 8)
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - incorrect type %d");
        return 0;
      }

      v12 = off_1E6DEBBC0[v11];
      v13 = qword_183E21E28[v11];
      length = 0;
      v14 = CA::Render::Decoder::decode_data(v4, &context, 0xA0uLL, &length, 0xA0uLL);
      if (v14)
      {
        v15 = v14;
        if (v13 == length)
        {
          Mutable = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v14 objCType:v12];
          if (v15 != &context)
          {
            v10 = v15;
LABEL_17:
            free(v10);
          }

LABEL_82:
          if (v3 && Mutable && CFGetTypeID(Mutable) != v3)
          {
            goto LABEL_85;
          }

          return Mutable;
        }

        CA::Render::Decoder::set_fatal_error(v4, "%s - size mismatch %zu - %zu", "decode_ns_value", v13, length);
        if (v15 != &context)
        {
          free(v15);
        }
      }

      else
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - data ptr = NULL");
      }

LABEL_76:
      Mutable = 0;
      goto LABEL_82;
    case 0xDu:
      v21 = CA::Render::Decoder::decode_object(v4, 38);
      Mutable = CA::Render::Path::cg_path(v21);
      CGPathRetain(Mutable);
      if (!v21)
      {
        goto LABEL_82;
      }

      goto LABEL_47;
    default:
      return 0;
  }
}

void *CA::Render::Decoder::decode_data(CA::Render::Decoder *this, void *a2, size_t a3, unint64_t *a4, size_t a5)
{
  if (*(this + 18))
  {
    return 0;
  }

  v9 = a3 <= a5 ? a5 : a3;
  v10 = a5 ? v9 : -1;
  v11 = CA::Render::Decoder::decode_size_t(this);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (*(this + 64))
  {
    if (v11 == -1)
    {
LABEL_11:
      v13 = *(this + 6);
      if (!v13 || *(v13 + 8) != 1)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - _attach_list = %p, type = %u");
        return 0;
      }

      if (*(v13 + 24) > v10)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - max_size = %zu, size = %zu");
        return 0;
      }

      v15 = *(this + 7) - 1;
      *(this + 6) = *v13;
      *(this + 7) = v15;
      v16 = *(v13 + 24);
      *a4 = v16;
      v17 = *(v13 + 32);
      if (!v17 || v17 == CA::Render::release_free)
      {
        return *(v13 + 16);
      }

      if (v16 > a3)
      {
        a2 = malloc_type_malloc(v16, 0xC0B464FFuLL);
      }

      if (a2)
      {
        memcpy(a2, *(v13 + 16), *(v13 + 24));
      }

      else
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - buf = NULL", "decode_data");
      }

      (*(v13 + 32))(*(v13 + 16), *(v13 + 40));
      return a2;
    }
  }

  else if (v11 == 0xFFFFFFFF)
  {
    goto LABEL_11;
  }

  if (v11 > v10)
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - max_size = %zu, tag = %zu");
    return 0;
  }

  if (v11 > 0x10000000)
  {
    goto LABEL_23;
  }

  if (v11 > a3)
  {
    a2 = malloc_type_malloc(v11, 0x8694DA37uLL);
  }

  if (a2)
  {
    CA::Render::Decoder::decode_bytes(this, a2, v12);
  }

  else
  {
LABEL_23:
    CA::Render::Decoder::set_fatal_error(this, "%s - buf = NULL, size = %zu", "decode_data", v12);
    a2 = 0;
  }

  *a4 = v12;
  return a2;
}

void CA::Render::Context::add_animation(CA::Render::Context *this, CA::Render::Object *a2, CA::Render::Animation *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Context::lookup_handle(this, a2, 0, 1, 0);
  if (v4 && a3)
  {
    v5 = v4;
    v6 = (*(*a3 + 136))(a3, *(v4 + 2));
    v8 = (v5 + 48);
    v7 = *(v5 + 6);
    if (v7)
    {
      v9 = (v5 + 48);
      do
      {
        v10 = *v7;
        if (*v7 != a3 && (v11 = *(a3 + 7)) != 0 && (v12 = *(v10 + 56)) != 0 && *(a3 + 8) == *(v10 + 64) && CFEqual(v11, v12))
        {
          if (BYTE8(xmmword_1ED4E97DC) == 1)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            CA::Render::show_object(&v57, v10);
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            log = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v15 = mach_absolute_time();
              v16 = CATimeWithHostTime(v15);
              v17 = *(v5 + 3);
              if (v17)
              {
                v55 = *(v17 + 16);
              }

              else
              {
                v55 = 0;
              }

              v18 = *(v5 + 2);
              if (v18)
              {
                v19 = *(v18 + 128);
                if (v19)
                {
                  v20 = v19 + 28;
                }

                else
                {
                  v20 = 0;
                }

                v54 = v20;
              }

              else
              {
                v54 = 0;
              }

              v52 = *(v10 + 80);
              v53 = *(v10 + 84);
              v21 = x_stream_get(&v57);
              *buf = 134219778;
              v61 = v16;
              v62 = 1024;
              v63 = v55;
              v64 = 2080;
              v65 = v54;
              v66 = 2048;
              v67 = v5;
              v68 = 2048;
              v69 = v10;
              v70 = 1024;
              *v71 = v52;
              *&v71[4] = 1024;
              *&v71[6] = v53;
              v72 = 2080;
              v73 = v21;
              _os_log_impl(&dword_183AA6000, log, OS_LOG_TYPE_DEFAULT, "%f %x %s (%p): replacing %p (eval %u; frames %u):\n%s", buf, 0x46u);
            }

            if (v57)
            {
              free(v57);
            }
          }

          if (BYTE11(xmmword_1ED4E980C) == 1)
          {
            kdebug_trace();
          }

          CA::Render::invalidate_animation(v5, v10, v13);
          v14 = x_list_remove_head(v7);
          *v9 = v14;
          *(v5 + 13) |= 0x10080003uLL;
        }

        else
        {
          v14 = v7[1];
          v9 = v7 + 1;
        }

        v7 = v14;
      }

      while (v14);
    }

    if (!v6)
    {
      if (BYTE8(xmmword_1ED4E97DC) != 1)
      {
        return;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      CA::Render::show_object(&v57, a3);
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v28 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      v36 = mach_absolute_time();
      v37 = CATimeWithHostTime(v36);
      v38 = *(v5 + 3);
      if (v38)
      {
        v39 = *(v38 + 16);
      }

      else
      {
        v39 = 0;
      }

      v44 = *(v5 + 2);
      if (v44)
      {
        v45 = *(v44 + 128);
        if (v45)
        {
          v46 = v45 + 28;
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
      }

      v49 = x_stream_get(&v57);
      *buf = 134219266;
      v61 = v37;
      v62 = 1024;
      v63 = v39;
      v64 = 2080;
      v65 = v46;
      v66 = 2048;
      v67 = v5;
      v68 = 2048;
      v69 = a3;
      v70 = 2080;
      *v71 = v49;
      v48 = "%f %x %s (%p): not adding %p:\n%s";
      goto LABEL_79;
    }

    v22 = *v8;
    if (*v8)
    {
      v23 = *(a3 + 5);
      do
      {
        v24 = 0.0;
        v25 = 0.0;
        if (v23)
        {
          v25 = *(v23 + 40);
        }

        v26 = *(*v22 + 40);
        if (v26)
        {
          v24 = *(v26 + 40);
        }

        if (v25 < v24 || v25 <= v24 && *(a3 + 18) < *(*v22 + 72))
        {
          break;
        }

        v8 = (v22 + 1);
        v22 = v22[1];
      }

      while (v22);
    }

    v27 = a3;
    if (!atomic_fetch_add(a3 + 2, 1u))
    {
      v27 = 0;
      atomic_fetch_add(a3 + 2, 0xFFFFFFFF);
    }

    *v8 = x_list_prepend(v22, v27);
    *(v5 + 13) |= 0x80003uLL;
    (*(*a3 + 144))(a3, v5);
    if (BYTE11(xmmword_1ED4E980C) != 1)
    {
LABEL_46:
      if (BYTE8(xmmword_1ED4E97DC) != 1)
      {
        return;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      CA::Render::show_object(&v57, a3);
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v28 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      v29 = mach_absolute_time();
      v30 = CATimeWithHostTime(v29);
      v31 = *(v5 + 3);
      if (v31)
      {
        v32 = *(v31 + 16);
      }

      else
      {
        v32 = 0;
      }

      v41 = *(v5 + 2);
      if (v41)
      {
        v42 = *(v41 + 128);
        if (v42)
        {
          v43 = v42 + 28;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
      }

      v47 = x_stream_get(&v57);
      *buf = 134219266;
      v61 = v30;
      v62 = 1024;
      v63 = v32;
      v64 = 2080;
      v65 = v43;
      v66 = 2048;
      v67 = v5;
      v68 = 2048;
      v69 = a3;
      v70 = 2080;
      *v71 = v47;
      v48 = "%f %x %s (%p): adding %p:\n%s";
LABEL_79:
      _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_DEFAULT, v48, buf, 0x3Au);
LABEL_80:
      if (v57)
      {
        free(v57);
      }

      return;
    }

    v33 = *(v5 + 3);
    if (v33)
    {
      if (atomic_load((v33 + 228)))
      {
LABEL_89:
        kdebug_trace();
        goto LABEL_46;
      }

      if (*(v33 + 256))
      {
        v35 = 0;
      }

      else
      {
        v35 = getpid();
      }

      v50 = 0;
      v51 = v33 + 228;
    }

    else
    {
      if (atomic_load(0xE4))
      {
        goto LABEL_89;
      }

      if (MEMORY[0x100])
      {
        v35 = 0;
      }

      else
      {
        v35 = getpid();
      }

      v50 = 0;
      v51 = 228;
    }

    atomic_compare_exchange_strong(v51, &v50, v35);
    goto LABEL_89;
  }
}

CA::Render::BackdropLayer *CA::Render::BackdropLayer::BackdropLayer(CA::Render::BackdropLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 3;
  ++dword_1ED4EAA44;
  *v4 = &unk_1EF1FA150;
  *(this + 2) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 3) = CA::Render::Decoder::decode_object(a2, 54);
  *(this + 8) = CA::Render::Decoder::decode_int32(a2);
  *(this + 9) = CA::Render::Decoder::decode_int32(a2);
  *(this + 10) = CA::Render::Decoder::decode_int32(a2);
  *(this + 6) = COERCE_FLOAT(CA::Render::Decoder::decode_int32(a2));
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  CA::Render::Decoder::decode_bytes(a2, this + 56, 0x20uLL);
  v5 = CA::Render::Decoder::decode_int32(a2);
  *(this + 6) = 0u;
  *(this + 22) = v5;
  *(this + 7) = 0u;
  CA::Render::Decoder::decode_bytes(a2, this + 96, 0x20uLL);
  v6 = CA::Render::Decoder::decode_int8(a2);
  if (v6 >= 3)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v6, 3);
    LOBYTE(v6) = 0;
  }

  *(this + 128) = v6;
  *(this + 17) = 0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-backdrop-layer.cpp", 587);
  return this;
}

void CA::Render::BackdropGroup::retain_group_common(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t **a5, int a6, int a7, float a8)
{
  v13 = a3;
  v27[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v16 = *a5;
    v17 = a5[1];
    while (v16 != v17)
    {
      v18 = *v16;
      if (*(*v16 + 672) == a4)
      {
        if (a4)
        {
          if (a4 != 2)
          {
            if (a4 != 1)
            {
              goto LABEL_7;
            }

            v21 = *(a2 + 576);
            if (!v21)
            {
              v21 = a2;
            }

            if (*(v18 + 24) != v21)
            {
              goto LABEL_7;
            }
          }
        }

        else if (*(v18 + 16) != a2)
        {
          goto LABEL_7;
        }

        v19 = *(v18 + 32);
        if (v19)
        {
          v20 = *(v13 + 24);
          if (v20 == *(v19 + 24) && !memcmp((v13 + 28), (v19 + 28), v20) && *(v18 + 64) == a8)
          {
            if (atomic_fetch_add((v18 + 8), 1u))
            {
              *a1 = v18;
              return;
            }

            atomic_fetch_add((v18 + 8), 0xFFFFFFFF);
          }
        }
      }

LABEL_7:
      ++v16;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v22 = malloc_type_zone_malloc(malloc_zone, 0x2B8uLL, 0x165299FDuLL);
  v23 = v22;
  if (v22)
  {
    *(v22 + 2) = 1;
    *(v22 + 3) = 2;
    ++dword_1ED4EAA40;
    *v22 = &unk_1EF1FA258;
    if (a2)
    {
      v24 = a2;
      if (!atomic_fetch_add((a2 + 8), 1u))
      {
        v24 = 0;
        atomic_fetch_add((a2 + 8), 0xFFFFFFFF);
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 576);
    if (!v25)
    {
      v25 = a2;
    }

    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    if (v13)
    {
      v26 = (v13 + 8);
      if (!atomic_fetch_add((v13 + 8), 1u))
      {
        v13 = 0;
        atomic_fetch_add(v26, 0xFFFFFFFF);
      }
    }

    *(v22 + 4) = v13;
    *(v22 + 10) = 0;
    *(v22 + 3) = 0u;
    *(v22 + 16) = a8;
    *(v22 + 9) = v22 + 104;
    *(v22 + 10) = v22 + 104;
    *(v22 + 11) = v22 + 104;
    *(v22 + 12) = 2;
    *(v22 + 61) = 0;
    *(v22 + 124) = 0;
    *(v22 + 159) = 0;
    *(v22 + 620) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 33) = 0u;
    *(v22 + 34) = 0u;
    *(v22 + 35) = 0u;
    *(v22 + 36) = 0u;
    *(v22 + 37) = 0u;
    *(v22 + 76) = 0;
    v22[672] = a4;
    *(v22 + 344) = 0;
  }

  v27[0] = v22;
  *(v22 + 3) |= a6 << 8;
  X::small_vector_base<CA::Render::BackdropGroup *>::push_back(a5, v27);
  if (a7 && !atomic_fetch_add(v23 + 2, 1u))
  {
    atomic_fetch_add(v23 + 2, 0xFFFFFFFF);
  }

  *a1 = v27[0];
}

void X::small_vector_base<CA::Render::BackdropGroup *>::push_back(void *result, void *a2)
{
  v4 = result[1];
  v5 = ((v4 - *result) >> 3) + 1;
  if (result[3] < v5)
  {
    X::small_vector_base<CA::Render::BackdropGroup *>::grow(result, v5);
    v4 = result[1];
  }

  *v4 = *a2;
  result[1] += 8;
}

CA::Render::SpringAnimation *CA::Render::SpringAnimation::SpringAnimation(CA::Render::SpringAnimation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::BasicAnimation0::BasicAnimation0(this, a2);
  *(v4 + 12) = 53;
  ++dword_1ED4EAB0C;
  *v4 = &unk_1EF202C70;
  *(this + 19) = CA::Render::Decoder::decode_int64(a2);
  *(this + 20) = CA::Render::Decoder::decode_int64(a2);
  *(this + 21) = CA::Render::Decoder::decode_int64(a2);
  *(this + 22) = CA::Render::Decoder::decode_int64(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2642);
  return this;
}

BOOL CA::Render::SpringAnimation::validate(CA::Render::SpringAnimation *this, CA::Render::Layer *a2)
{
  v3 = CA::Render::BasicAnimation0::validate(this, a2);
  if (v3)
  {
    CA::Render::SpringAnimation::State::update(this + 192, *(this + 19), *(this + 20), *(this + 21), *(this + 22), *(this + 184));
  }

  return v3;
}

_DWORD *CA::Render::String::decode(CA::Render::String *this, CA::Render::Decoder *a2)
{
  v3 = CA::Render::Decoder::decode_int32(this);
  v5 = CA::Render::String::new_string(v3, 0, v4);
  v6 = v5;
  if (v5)
  {
    CA::Render::Decoder::decode_bytes(this, v5 + 7, v3);
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-string.cpp", 157);
  return v6;
}

BOOL CA::Render::BasicAnimation0::validate(CA::Render::BasicAnimation0 *this, CA::Render::Layer *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = (this + 96);
  v2 = *(this + 12);
  if (!v2 || (v2 & 1) == 0 && !*v2)
  {
    return 0;
  }

  if (*(this + 14) || *(this + 15))
  {
    return 1;
  }

  if (a2 && !*(this + 16))
  {
    v6 = *(this + 5);
    v7 = v6 ? *(v6 + 40) : 0;
    v23[1] = 0;
    v36 = 0u;
    v37 = 0u;
    v23[0] = v7;
    v24 = a2;
    *&v36 = 0x10000000000;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v31 = _Q0;
    v35 = _Q0;
    BYTE8(v36) = 1;
    CA::Render::AnimationEvaluator::first_pass(v23, 0);
    CA::Render::AnimationEvaluator::second_pass(v23);
    v15 = v26 ? v26 : v24;
    if (CA::Render::Layer::keypath_is_object(v15, v3, v13, v14))
    {
      keypath_object = CA::Render::Layer::get_keypath_object(v15, v3, v16);
      CA::Render::BasicAnimation0::set_from(this, keypath_object);
    }

    else
    {
      memset(v38, 0, sizeof(v38));
      v22 = 0;
      keypath_value = CA::Render::Layer::get_keypath_value(v15, v3, 0x18uLL, v38, &v22);
      if (keypath_value)
      {
        v20 = CA::Render::Vector::new_vector(keypath_value, v22, v19);
        CA::Render::BasicAnimation0::set_from(this, v20);
        if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v20 + 16))(v20);
        }

        if (v22 != v38)
        {
          free(v22);
        }
      }
    }

    v21 = v26;
    if (v26 && atomic_fetch_add((v26 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v21 + 16))(v21);
    }

    if (*(this + 14) || *(this + 15))
    {
      return 1;
    }
  }

  return *(this + 16) != 0;
}

BOOL CA::Render::Array::check_types(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2 == 1 && !*a3)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 24;
  do
  {
    v6 = 0;
    while (a3[v6] != *(*(v5 + 8 * v4) + 12))
    {
      if (a2 == ++v6)
      {
        return 0;
      }
    }

    result = v6 != a2;
    if (v6 == a2)
    {
      break;
    }

    ++v4;
  }

  while (v4 != v3);
  return result;
}

uint64_t CA::WindowServer::Display::benchmark_mode(CA::WindowServer::Display *this, float *a2)
{
  if ((CA::WindowServer::Display::benchmark_mode(float *)const::initialized & 1) == 0)
  {
    v3 = getenv("CA_BENCHMARK");
    if (v3 || (v3 = getenv("LK_BENCHMARK")) != 0)
    {
      v4 = atoi(v3);
      CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_mode = v4 != 0;
      if (v4 >= 61)
      {
        v5 = 1.0 / v4;
LABEL_8:
        CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_rate = LODWORD(v5);
        CA::WindowServer::Display::benchmark_mode(float *)const::initialized = 1;
        goto LABEL_9;
      }
    }

    else
    {
      CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_mode = 0;
    }

    v5 = 0.002;
    goto LABEL_8;
  }

LABEL_9:
  if (this)
  {
    *this = CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_rate;
  }

  return CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_mode;
}

CA::Render::Filter *CA::Render::Filter::decode(CA::Render::Filter *this, CA::Render::Decoder *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  if ((v3 & 0x100) != 0)
  {
    v10 = CA::Render::Decoder::decode_atom(this);
    v11 = CA::Render::Filter::shared_filter(v10);
    v12 = v11;
    if (v11 && !atomic_fetch_add(v11 + 2, 1u))
    {
      v12 = 0;
      atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
    }
  }

  else
  {
    v4 = v3;
    if (CA::Render::Decoder::decode_int8(this) == 1)
    {
      v5 = CA::Render::Decoder::decode_atom(this);
      v6 = CA::Render::Decoder::decode_object(this, 54);
      v15 = 29;
      v7 = CA::Render::Decoder::decode_array_object(this, 1, &v15, 0);
      if (v7)
      {
        v8 = v7 + 2;
        v9 = v7;
        if (!atomic_fetch_add(v7 + 2, 1u))
        {
          v9 = 0;
          atomic_fetch_add(v8, 0xFFFFFFFF);
        }

        if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
        {
          (*(*v7 + 16))(v7);
        }
      }

      else
      {
        v9 = 0;
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
      v12 = v13;
      if (v13)
      {
        CA::Render::Filter::Filter(v13, v5, v6, v9);
      }

      *(v12 + 3) |= v4 << 8;
      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v9 + 16))(v9);
      }

      if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-filter.cpp", 984);
  return v12;
}

CA::Render::KeyValue *CA::Render::KeyValue::KeyValue(CA::Render::KeyValue *this, CA::Render::Decoder *a2)
{
  *(this + 2) = 1;
  *(this + 3) = 29;
  ++dword_1ED4EAAAC;
  *this = &unk_1EF203140;
  *(this + 4) = CA::Render::Decoder::decode_atom(a2);
  *(this + 3) = CA::Render::Decoder::decode_object(a2, 0);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-key-value.cpp", 51);
  return this;
}

atomic_uint *CA::Render::Image::decode(CA::Render::Image *this, CA::Render::Decoder *a2)
{
  v44[33] = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = CA::Render::Decoder::decode_int8(this);
  v5 = CA::Render::Decoder::decode_int8(this);
  v6 = CA::Render::Decoder::decode_int32(this);
  v7 = CA::Render::Decoder::decode_int32(this);
  v33 = 0;
  memset(v44, 0, 256);
  if (v5 > 0x20)
  {
    goto LABEL_42;
  }

  v8 = v7;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v44[i] = CA::Render::Decoder::decode_size_t(this);
    }

    v10 = v44[0];
    if (!is_mul_ok(v44[0], v8) || (v11 = v44[0] * v8) == 0)
    {
LABEL_17:
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v18 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134218496;
        *(buf + 4) = v10;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v5;
        WORD1(buf[1]) = 1024;
        DWORD1(buf[1]) = v8;
        _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "Failed to validate rowbytes: %zu, levels: %u height: %u", buf, 0x18u);
      }

      goto LABEL_42;
    }

    v12 = 1;
    LODWORD(v13) = v8;
    while (v5 != v12)
    {
      v14 = v12;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v13 >> 1;
      }

      v15 = v44[v12];
      if (is_mul_ok(v15, v13))
      {
        v16 = v15 * v13;
        if (v15 * v13)
        {
          v12 = v14 + 1;
          v17 = __CFADD__(v11, v16);
          v11 += v16;
          if (!v17)
          {
            continue;
          }
        }
      }

      if (v14 >= v5)
      {
        break;
      }

      goto LABEL_17;
    }
  }

  if (!CA::Render::Decoder::decode_int8(this))
  {
    v31 = 0;
    v32 = 0;
    v23 = CA::Render::Decoder::decode_data_async(this, &v33, &v31, &v32);
    if (v23)
    {
      v24 = v23;
      v25 = v31;
      v26 = v32;
      v22 = CA::Render::Image::new_image(v4, v6, v8, v5, 0, v23, v44, v31, v32, v30);
      if (v22 || !v25)
      {
        goto LABEL_38;
      }

      v25(v24, v26);
    }

    else
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v27 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v33;
        _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, "Failed to decode_data_async, size: %zu", buf, 0xCu);
      }
    }

    v22 = 0;
    goto LABEL_38;
  }

  v19 = CA::Render::Decoder::decode_object(this, 52);
  if (!v19)
  {
    CA::Render::Decoder::set_fatal_error(this, "Failed to decode shmem.");
    goto LABEL_42;
  }

  v21 = v19;
  v33 = *(v19 + 2);
  v22 = CA::Render::Image::new_image(v4, v6, v8, v5, 0, v19, v44, v20);
  if ((*(v21 + 13) & 8) != 0 && *(v21 + 2) >= 0x24uLL)
  {
    atomic_fetch_add(*(v21 + 3), 0xFFFFFFFF);
  }

  if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v21 + 16))(v21);
  }

LABEL_38:
  if (v22)
  {
    v28 = CA::Render::Image::data_size(v22);
    if (v28 <= v33)
    {
      v22[3] |= (v3 << 8) & 0xFDFFFFFF;
      CA::Render::Texture::decode(v22, this);
      goto LABEL_45;
    }

    CA::Render::Decoder::set_fatal_error(this, "Failed to re-create data_size, encoded: %zu,calculated: %zu", v33, v28);
    if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v22 + 16))(v22);
    }
  }

LABEL_42:
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *space = 0u;
  v36 = 0u;
  memset(buf, 0, sizeof(buf));
  CA::Render::Texture::Texture(buf, 0, 0);
  BYTE12(buf[0]) = 23;
  ++dword_1ED4EAA94;
  *&buf[0] = &unk_1EF1F4BB8;
  DWORD1(v42) = 0;
  WORD4(v42) = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  if (space[1])
  {
    CGColorSpaceRelease(space[1]);
    space[1] = CGColorSpaceRetain(0);
  }

  DWORD1(v42) = 1;
  CA::Render::Texture::decode(buf, this);
  CA::Render::Decoder::set_fatal_error(this, "Image failed to decode!");
  CA::Render::Image::~Image(buf);
  v22 = 0;
LABEL_45:
  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-image.cpp", 514);
  return v22;
}

CA::Render::CompressedImage *CA::Render::CompressedImage::decode(CA::Render::CompressedImage *this, CA::Render::Decoder *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = CA::Render::Decoder::decode_int32(this);
  v5 = CA::Render::Decoder::decode_int32(this);
  v6 = CA::Render::Decoder::decode_int32(this);
  v7 = v6;
  if (v6 < 0x41)
  {
    v41 = v5;
    v42 = v4;
    v43 = v3;
    v9 = 8 * v6;
    MEMORY[0x1EEE9AC00](v6);
    v10 = (v9 + 15) & 0xFFFFFFF0;
    v11 = &v38[-v10];
    bzero(&v38[-v10], 8 * v7);
    MEMORY[0x1EEE9AC00](v12);
    v13 = &v38[-v10];
    bzero(&v38[-v10], 8 * v7);
    MEMORY[0x1EEE9AC00](v14);
    v15 = &v38[-v10];
    bzero(&v38[-v10], 8 * v7);
    if (v7)
    {
      v16 = &v38[-v10];
      v17 = &v38[-v10];
      v18 = v15;
      v19 = v7;
      do
      {
        *v16++ = CA::Render::Decoder::decode_size_t(this);
        *v17++ = CA::Render::Decoder::decode_size_t(this);
        *v18++ = CA::Render::Decoder::decode_size_t(this);
        --v19;
      }

      while (v19);
    }

    v20 = CA::Render::Decoder::decode_int32(this);
    v21 = CA::Render::Decoder::decode_int32(this);
    v22 = CA::Render::Decoder::decode_int8(this);
    v23 = CA::Render::Decoder::decode_size_t(this);
    v45 = 0;
    v24 = CA::Render::Decoder::decode_port(this, 17, &v45);
    if (v24)
    {
      v25 = v24;
      v39 = v20;
      v40 = v22;
      address = 0;
      v26 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, v23, *MEMORY[0x1E69E9AB8], 856686593, v24, 0, 0, 1, 1, 2u);
      v27 = address;
      if (v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = address == 0;
      }

      if (!v28)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v34 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC8uLL, 0xDEEC3011uLL);
        v8 = v34;
        if (v34)
        {
          v35 = CA::Render::CompressedImage::CompressedImage(v34, v42, v41, v39, v27, v23, v11, v13, v15, v7, CA::Render::release_deallocate, 0);
          v28 = v40 == 0;
          *(v8 + 46) = v21;
          v36 = *(v8 + 3) & 0xFF7FFFFF | ((v21 == 2) << 23);
          v37 = *(v8 + 192) & 0xFE;
          if (!v28)
          {
            ++v37;
          }

          *(v8 + 192) = v37;
          *(v8 + 3) = v36 | (v43 << 8);
          CA::Render::Texture::decode(v35, this);
        }

        else
        {
          CA::Render::Decoder::set_fatal_error(this, "Failed to decode CompressedImage from data ptr: %p, len: %ld", v27, v23);
          mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, v23);
        }

        if (v45)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], v25);
        }

        goto LABEL_22;
      }

      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      v29 = CADeviceHasInternalBuild::internal;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v30 = x_log_get_render(void)::log;
      v31 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          LODWORD(buf[0]) = 134218752;
          *(buf + 4) = v23;
          WORD6(buf[0]) = 1024;
          *(buf + 14) = v25;
          WORD1(buf[1]) = 1024;
          DWORD1(buf[1]) = 1;
          WORD4(buf[1]) = 1024;
          *(&buf[1] + 10) = v26;
          _os_log_error_impl(&dword_183AA6000, v30, OS_LOG_TYPE_ERROR, "CoreAnimation: Failed to map %ld bytes with port = %u, protection = %u, err = 0x%x\n", buf, 0x1Eu);
        }

        abort();
      }

      if (v31)
      {
        LODWORD(buf[0]) = 134218752;
        *(buf + 4) = v23;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v25;
        WORD1(buf[1]) = 1024;
        DWORD1(buf[1]) = 1;
        WORD4(buf[1]) = 1024;
        *(&buf[1] + 10) = v26;
        _os_log_error_impl(&dword_183AA6000, v30, OS_LOG_TYPE_ERROR, "Failed to map %ld bytes with port = %u, protection = %u, err = 0x%x\n", buf, 0x1Eu);
      }

      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(buf, 0, sizeof(buf));
      v32 = CA::Render::Texture::Texture(buf, 0, 0);
      ++dword_1ED4EAA5C;
      *&buf[0] = &unk_1EF1FF910;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      *&v51 = 0;
      *(&v51 + 1) = 2;
      HIDWORD(buf[0]) = HIDWORD(buf[0]) & 0xFF7FFF00 | 0x800009;
      CA::Render::Texture::decode(v32, this);
      CA::Render::Decoder::set_fatal_error(this, "%s - data = NULL", "decode");
      CA::Render::CompressedImage::~CompressedImage(buf);
    }

    else
    {
      CA::Render::Decoder::set_fatal_error(this, "CompressedImage port is MACH_PORT_NULL!");
    }

    v8 = 0;
LABEL_22:
    CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-image-compressed.mm", 868);
    return v8;
  }

  CA::Render::Decoder::set_fatal_error(this, "Incorrect CompressedImage levels: %u", v6);
  return 0;
}

void CA::Render::BackdropGroup::retain_group(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  os_unfair_lock_lock(&CA::Render::BackdropGroup::_list_lock);
  CA::Render::BackdropGroup::retain_group_common(a1, a2, a3, a4, &CA::Render::BackdropGroup::_list, 1, 0, a5);

  os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
}

uint64_t CA::Render::BackdropLayer::commit_layer(uint64_t this, CA::Render::Context *a2, CA::Render::Layer *a3, CA::Render::Handle *a4, int a5)
{
  v7 = this;
  v19[1] = *MEMORY[0x1E69E9840];
  if (!*(this + 136))
  {
    v10 = *(this + 16);
    v9 = *(this + 24);
    v11 = *(this + 128);
    v12 = *(this + 32);
    os_unfair_lock_lock(&CA::Render::BackdropState::_list_lock);
    v13 = CA::Render::BackdropState::_list;
    v14 = qword_1EA84E8A0;
    while (v13 != v14)
    {
      v15 = *v13;
      if (*(*v13 + 24) == v10 && v15[2] == a2 && *(v15 + 136) == v11 && *(v15 + 12) == v12 && (*(v15 + 13) & 2) == 0)
      {
        if (v9)
        {
          v16 = *(v15[7] + 32);
          if (v16)
          {
            v17 = *(v9 + 24);
            if (v17 == *(v16 + 24) && !memcmp((v9 + 28), (v16 + 28), v17))
            {
              if (atomic_fetch_add(v15 + 2, 1u))
              {
                goto LABEL_26;
              }

              atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
            }
          }
        }
      }

      v13 += 8;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v18 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    v15 = v18;
    if (v18)
    {
      *(v18 + 2) = 1;
      *(v18 + 3) = 4;
      ++dword_1ED4EAA48;
      *v18 = &unk_1EF1FA2C8;
      v18[2] = a2;
      v18[3] = v10;
      v18[4] = 0;
      v18[5] = 0;
      *(v18 + 12) = v12;
      *(v18 + 13) = 0;
      CA::Render::BackdropGroup::retain_group(v18 + 7, a2, v9, v11, v12);
      *(v15 + 28) = 0;
      *(v15 + 5) = 0u;
      *(v15 + 6) = 0u;
      *(v15 + 4) = 0u;
      *(v15 + 136) = v11;
      v15[18] = 0;
      *(v15 + 76) = 0;
    }

    v19[0] = v15;
    *(v15 + 3) |= 0x100u;
    X::small_vector_base<CA::Render::BackdropState *>::push_back(v19);
LABEL_26:
    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
    this = *(v7 + 136);
    *(v7 + 136) = v15;
    if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      this = (*(*this + 16))(this);
    }
  }

  if ((a5 & 0x5FE78) != 0)
  {
    *(a4 + 13) |= 0x10uLL;
  }

  if ((a5 & 0x200000) == 0)
  {
    *(*(v7 + 136) + 153) = 1;
  }

  return this;
}

CGColorSpaceRef CA::Render::Decoder::decode_colorspace(CA::Render::Decoder *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(this + 18))
  {
    return 0;
  }

  if (CA::Render::Decoder::decode_colorspace(void)::once[0] != -1)
  {
    dispatch_once(CA::Render::Decoder::decode_colorspace(void)::once, &__block_literal_global_33);
  }

  v2 = CA::Render::Decoder::decode_int8(this);
  if (v2 <= 1)
  {
    if (!v2)
    {
      return 0;
    }

    if (v2 == 1)
    {
      v6 = CA::Render::Decoder::decode_int8(this);
      if (v6 >= 0x27)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - enum %u out of range of %u", "decode_int8_enum", v6, 39);
        v6 = 0;
      }

      v7 = CAGetColorSpace(v6);
      v5 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      return v5;
    }

    goto LABEL_24;
  }

  switch(v2)
  {
    case 2:
      v8 = CA::Render::Decoder::decode_cfobject(this);
      if (v8)
      {
        v5 = v8;
        v9 = CFGetTypeID(v8);
        v10 = v9;
        v11 = 0;
        while (v9 != CA::Render::Decoder::decode_colorspace(void)::types[v11])
        {
          if (++v11 == 3)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v14 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v17 = v10;
              _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "decoded cfobject of unexpected type: %lu", buf, 0xCu);
            }

            CFRelease(v5);
            goto LABEL_33;
          }
        }
      }

      else
      {
LABEL_33:
        v5 = *MEMORY[0x1E695E738];
      }

      if (!v5)
      {
        return v5;
      }

      v15 = CGColorSpaceCreateWithPropertyList(v5);
      CFRelease(v5);
      return v15;
    case 3:
      v12 = *(*(this + 9) + 480);

      return CGColorSpaceRetain(v12);
    case 4:
      CFStringGetTypeID();
      v3 = CA::Render::Decoder::decode_cfobject(this);
      if (v3)
      {
        v4 = v3;
        v5 = CGColorSpaceCreateWithName(v3);
        CFRelease(v4);
        return v5;
      }

      return 0;
    default:
LABEL_24:
      CA::Render::Decoder::set_fatal_error(this, "%s - code = %d", "decode_colorspace", v2);
      return 0;
  }
}

void CA::Render::Texture::decode(CA::Render::Texture *this, CA::Render::Decoder *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  CGColorSpaceRelease(*(this + 7));
  *(this + 7) = CA::Render::Decoder::decode_colorspace(a2);
  *(this + 8) = CA::Render::Decoder::decode_int32(a2);
  *(this + 12) = CA::Render::Decoder::decode_int16(a2);
  *(this + 13) = CA::Render::Decoder::decode_int16(a2);
  *(this + 14) = CA::Render::Decoder::decode_int16(a2);
  *(this + 15) = CA::Render::Decoder::decode_int16(a2);
  if (*(a2 + 18))
  {
    v6 = 0;
    goto LABEL_12;
  }

  v4 = CA::Render::Decoder::decode_int32(a2);
  if (v4 == -2)
  {
    LODWORD(__dst) = CA::Render::Decoder::decode_int32(a2);
    DWORD1(__dst) = CA::Render::Decoder::decode_int32(a2);
    DWORD2(__dst) = CA::Render::Decoder::decode_int32(a2);
    HIDWORD(__dst) = CA::Render::Decoder::decode_int32(a2);
    v6 = CA::Shape::new_shape(&__dst, v7);
    goto LABEL_11;
  }

  v5 = v4;
  if (!v4)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (v4 != -1)
  {
    if ((v4 - 131073) > 0xFFFE000B)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v12 = malloc_type_zone_malloc(malloc_zone, (4 * v5), 0x100004052888210uLL);
      v6 = v12;
      if (v12)
      {
        *v12 = 1;
        v12[1] = v5;
        v12[2] = v5;
        CA::Render::Decoder::decode_bytes(a2, v12 + 3, 4 * (v5 - 3));
      }

      else
      {
        CA::Render::Decoder::set_fatal_error(a2, "%s - failed shape allocation for size %d", "decode_shape", v5);
      }

      goto LABEL_11;
    }

    CA::Render::Decoder::set_fatal_error(a2, "%s - size = %d", "decode_shape", v4);
    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 1811);
LABEL_12:
  v8 = *(this + 6);
  *(this + 6) = v6;
  if (v8)
  {
    CA::Shape::unref(v8);
  }

  *(this + 16) = CA::Render::Decoder::decode_int32(a2);
  *(this + 17) = CA::Render::Decoder::decode_int32(a2);
  if ((*(this + 14) & 0x10) != 0)
  {
    __dst = 0uLL;
    v14 = 0;
    CA::Render::Decoder::decode_bytes(a2, &__dst, 0x14uLL);
    *(this + 72) = __dst;
    *(this + 22) = v14;
  }

  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-texture.cpp", 185);
  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = atomic_load((v9 + 228));
    if (!v10)
    {
      if (*(v9 + 256))
      {
        v11 = 0;
      }

      else
      {
        v11 = getpid();
      }

      v10 = 0;
      atomic_compare_exchange_strong((v9 + 228), &v10, v11);
      if (!v10)
      {
        v10 = v11;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *(this + 10) = v10;
}

atomic_uint *CA::Render::Layer::set_single_sublayer(CA::Render::Layer *this, atomic_uint *a2)
{
  v2 = a2;
  v4 = *(this + 3);
  result = *(this + 14);
  if ((v4 & 0x2000) != 0)
  {
    if (result == a2)
    {
      return result;
    }

    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    v4 = *(this + 3);
  }

  *(this + 14) = 0;
  *(this + 3) = v4 | 0x2000;
  if (v2)
  {
LABEL_13:
    v6 = (v2 + 8);
    if (!atomic_fetch_add(v2 + 2, 1u))
    {
      v2 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }

LABEL_15:
    *(this + 14) = v2;
  }

  return result;
}

uint64_t x_list_remove_head(void *ptr)
{
  if (!ptr)
  {
    return 0;
  }

  v2 = ptr[1];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, ptr);
  return v2;
}

void run_animation_callbacks(void *a1)
{
  while (1)
  {
    v2 = a1[2];
    if (!v2)
    {
      break;
    }

    a1[2] = *v2;
    free_non_deferred_animation(v2, 1);
  }

  for (i = a1[1]; i; i = i[1])
  {
    v4 = *i;
    [objc_msgSend(*i "delegate")];
    CFRelease(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    do
    {
      v6 = *v5;
      [objc_msgSend(*v5 "delegate")];
      CFRelease(v6);
      v5 = v5[1];
    }

    while (v5);
  }

  v7 = a1[1];
  if (v7)
  {
    do
    {
      v8 = v7[1];
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  if (*a1)
  {
    do
    {
      v10 = v9[1];
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  JUMPOUT(0x1865EA9A0);
}

CA::Render::Surface *CA::Render::Surface::decode(CA::Render::Surface *this, CA::Render::Decoder *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int8(this);
  v4 = CA::Render::Decoder::decode_int32(this);
  if (v3)
  {
    v5 = CA::Render::Decoder::decode_object(this, 57);
    if (v5)
    {
      v6 = v5;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
      v8 = v7;
      if (v7)
      {
        CA::Render::Surface::Surface(v7, v6, v4);
      }

      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v8 = 0;
    if ((v4 & 0x200000) != 0)
    {
LABEL_19:
      if (CA::Render::Decoder::decode_int8(this))
      {
        v30 = 0;
        v17 = CA::Render::Decoder::decode_port(this, 17, &v30);
        if (v17)
        {
          if (v30)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], v17);
          }
        }
      }
    }

LABEL_24:
    v18 = 0;
    goto LABEL_25;
  }

  v9 = CA::Render::Decoder::decode_int32(this);
  v10 = CA::Render::Decoder::decode_int8(this);
  if ((v10 | 2) != 3 || (v11 = v10, v31 = 0, (v12 = CA::Render::Decoder::decode_port(this, 17, &v31)) == 0))
  {
    v8 = 0;
    goto LABEL_24;
  }

  v13 = v12;
  v14 = IOSurfaceLookupFromMachPort(v12);
  if (v14)
  {
    v15 = v14;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v16 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
    v8 = v16;
    if (v16)
    {
      CA::Render::Surface::Surface(v16, v15, v9, 0, v4, 0, 0);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v31)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v13);
  }

  v18 = v11 == 3;
LABEL_25:
  v19 = CA::Render::Decoder::decode_int8(this);
  v20 = CA::Render::Decoder::decode_int8(this);
  v21 = CA::Render::Decoder::decode_int8(this);
  v22 = CA::Render::Decoder::decode_int8(this);
  v23 = CA::Render::Decoder::decode_int8(this);
  v24 = CA::Render::Decoder::decode_int8(this);
  v25 = CA::Render::Decoder::decode_int8(this);
  if (v8)
  {
    v26 = v25 != 0;
    CA::Render::Texture::decode(v8, this);
    v27 = (16 * (v19 != 0)) | (32 * (v20 != 0)) | *(v8 + 184) & 0xFC0F;
    *(v8 + 360) = v21;
    *(v8 + 184) = ((v22 != 0) << 9) | ((v23 != 0) << 7) | ((v24 != 0) << 8) | (v26 << 6) | v27;
    if (v18)
    {
      CA::Render::Surface::reload_iosurface_color_attributes(v8, 0x7E);
    }
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v28 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
    v8 = v28;
    if (v28)
    {
      v28 = CA::Render::Surface::Surface(v28, 0, 0, 0, 0x10000, 0, 0);
    }

    CA::Render::Texture::decode(v28, this);
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-surface.cpp", 1042);
  return v8;
}

void ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_2_19(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 8)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 56), 1u, -1);
    v9 = *(*(*(a1 + 48) + 8) + 40);

    dispatch_release(v9);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24);
    if (!v7)
    {
      __assert_rtn("commit_transaction_block_invoke_2", "CAContextInternal.mm", 4020, "pending_count > 0");
    }

    v8 = v7 - 1;
    *(v6 + 24) = v8;
    if (!v8)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
      dispatch_mach_cancel();
    }
  }
}

void X::small_vector_base<CA::Render::BackdropState *>::push_back(void *a1)
{
  v3 = CA::Render::BackdropState::_list;
  v2 = qword_1EA84E8A0;
  v4 = qword_1EA84E8A0 - CA::Render::BackdropState::_list;
  v5 = ((qword_1EA84E8A0 - CA::Render::BackdropState::_list) >> 3) + 1;
  if (qword_1EA84E8B0 < v5)
  {
    v6 = off_1EA84E8A8;
    v7 = (qword_1EA84E8B0 + 1) | ((qword_1EA84E8B0 + 1) >> 1) | (((qword_1EA84E8B0 + 1) | ((qword_1EA84E8B0 + 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | (v8 >> 16) | ((v8 | (v8 >> 16)) >> 32);
    if (v9 + 1 > v5)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = ((qword_1EA84E8A0 - CA::Render::BackdropState::_list) >> 3) + 1;
    }

    v11 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
    v12 = v11;
    v13 = CA::Render::BackdropState::_list;
    v14 = qword_1EA84E8A0;
    if (CA::Render::BackdropState::_list != qword_1EA84E8A0)
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15 = v16;
        v15 += 8;
      }

      while (v13 != v14);
    }

    if (v3 != v6)
    {
      free(CA::Render::BackdropState::_list);
    }

    v2 = &v12[v4];
    CA::Render::BackdropState::_list = v12;
    qword_1EA84E8A0 = &v12[v4];
    qword_1EA84E8B0 = v10;
  }

  *v2 = *a1;
  qword_1EA84E8A0 += 8;
}

atomic_uint **CA::Render::Image::new_image(CA::Render::Image *this, unsigned int a2, unsigned int a3, unsigned int a4, CGColorSpace *a5, CGColorSpace **a6, CA::Render::Shmem *a7, const unint64_t *a8)
{
  v8 = a6;
  if ((*(a6 + 13) & 8) != 0)
  {

    return CA::Render::Shmem::copy_image(a6, a5);
  }

  else
  {
    v9 = CA::Render::Image::new_image(this, a2, a3, a4, a5, a6[3], a7, 0, 0, v14);
    v10 = v9;
    if (v9)
    {
      v11 = v9[17];
      if (v11 != v8)
      {
        if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v11 + 16))(v11);
        }

        v12 = (v8 + 1);
        if (!atomic_fetch_add(v8 + 2, 1u))
        {
          v8 = 0;
          atomic_fetch_add(v12, 0xFFFFFFFF);
        }

        v10[17] = v8;
      }
    }

    return v10;
  }
}

uint64_t ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_16(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    do
    {
      (*(*v2 + 16))();
      _Block_release(*v2);
      v2 = *(v2 + 8);
      ++v3;
    }

    while (v2);
    v4 = *(a1 + 32);
    if (v4)
    {
      do
      {
        v5 = v4[1];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }
  }

  return kdebug_trace();
}

void std::vector<std::unordered_set<unsigned long long>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::erase(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void CA::Render::Handle::~Handle(atomic_uint **this)
{
  *this = &unk_1EF1FBDA0;
  CA::Render::Handle::set_current_layer(this, 0);
  v4 = this[6];
  if (v4)
  {
    do
    {
      CA::Render::invalidate_animation(this, *v4, v3);
      v4 = *(v4 + 1);
    }

    while (v4);
    v5 = this[6];
    if (v5)
    {
      do
      {
        v6 = *(v5 + 1);
        free(v5);
        v5 = v6;
      }

      while (v6);
    }
  }

  v7 = this[5];
  if (v7)
  {
    *(v7 + 5) = 0;
    if (atomic_fetch_add(v7 + 4, 0xFFFFFFFF) == 1)
    {
      CA::Render::LayerNode::delete_node(v7, v2);
    }
  }

  v8 = this[2];
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 16))(v8);
  }

  --dword_1ED4EAA90;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v2);
  }
}

{
  CA::Render::Handle::~Handle(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::BackdropState::~BackdropState(CA::Render::BackdropState *this, const CA::Render::Object *a2)
{
  CA::Render::BackdropState::~BackdropState(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FA2C8;
  if (*(this + 13))
  {
    os_unfair_lock_lock(&CA::Render::BackdropState::_list_lock);
    v3 = CA::Render::BackdropState::_list;
    if (CA::Render::BackdropState::_list != qword_1EA84E8A0)
    {
      while (*v3 != this)
      {
        if (++v3 == qword_1EA84E8A0)
        {
          v3 = qword_1EA84E8A0;
          break;
        }
      }
    }

    *v3 = *(qword_1EA84E8A0 - 8);
    if (qword_1EA84E8A0 <= CA::Render::BackdropState::_list)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1EA84E8A0 -= 8;
    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
  }

  v4 = *(this + 18);
  if (v4)
  {
    do
    {
      v5 = *v4;
      v6 = v4[4];
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6, a2);
      }

      MEMORY[0x1865EA9A0](v4, 0x1020C400F943929);
      v4 = v5;
    }

    while (v5);
  }

  v7 = *(this + 7);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7, a2);
  }

  --dword_1ED4EAA48;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::Render::BackdropGroup::~BackdropGroup(CA::Render::BackdropGroup *this, const CA::Render::Object *a2)
{
  CA::Render::BackdropGroup::~BackdropGroup(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FA258;
  if (*(this + 13))
  {
    os_unfair_lock_lock(&CA::Render::BackdropGroup::_list_lock);
    v3 = CA::Render::BackdropGroup::_list;
    if (CA::Render::BackdropGroup::_list != qword_1EA84E8E0)
    {
      while (*v3 != this)
      {
        if (++v3 == qword_1EA84E8E0)
        {
          v3 = qword_1EA84E8E0;
          break;
        }
      }
    }

    *v3 = *(qword_1EA84E8E0 - 8);
    if (qword_1EA84E8E0 <= CA::Render::BackdropGroup::_list)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1EA84E8E0 -= 8;
    os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
  }

  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  v5 = *(this + 68);
  if (v5)
  {
    CA::Shape::unref(v5);
  }

  v6 = *(this + 73);
  if (v6)
  {
    CA::Shape::unref(v6);
  }

  v7 = *(this + 74);
  if (v7)
  {
    CA::Shape::unref(v7);
  }

  v8 = *(this + 75);
  if (v8)
  {
    CA::Shape::unref(v8);
  }

  v9 = *(this + 76);
  if (v9)
  {
    CA::Shape::unref(v9);
  }

  v10 = *(this + 79);
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 16))(v10, a2);
  }

  v11 = *(this + 78);
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11, a2);
    }

    *(this + 78) = 0;
  }

  v12 = *(this + 9);
  if (v12 != *(this + 11))
  {
    free(v12);
  }

  v13 = *(this + 4);
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
  }

  v14 = *(this + 2);
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v14 + 16))(v14);
  }

  --dword_1ED4EAA40;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::Render::VelocityState::init_scale(CA::Render::VelocityState *this, const CA::Render::Layer *a2, uint64_t a3, double *a4)
{
  if (*(this + 157) == 1)
  {
    *(this + 157) = 0;
    v5 = *(a2 + 17);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v6 + 16);
        v8 = (v6 + 24);
        if (v7 >= 0x10)
        {
          v9 = v8;
        }

        else
        {
          v9 = &CA::Mat4Impl::mat4_identity_double;
        }

        if (v9[1].f64[0] != 0.0 || v9[1].f64[1] != 0.0 || v9[3].f64[0] != 0.0 || v9[3].f64[1] != 0.0 || v9[4].f64[0] != 0.0 || v9[4].f64[1] != 0.0 || v9[5].f64[1] != 0.0 || v9[7].f64[1] != 1.0)
        {
          if ((*(this + 153) & 0x10) == 0)
          {
            *(this + 156) = 2;
          }

          v10 = 4096;
          goto LABEL_23;
        }

        CA::Mat4Impl::mat4_get_scale(v9, this + 9, this + 10, a4);
        if (fabs(v9[1].f64[0]) >= 0.000001 || fabs(v9[3].f64[0]) >= 0.000001 || fabs(v9[5].f64[0] + -1.0) >= 0.000001 || fabs(v9[7].f64[0]) >= 0.000001)
        {
          v10 = *(this + 38) | 0x400;
LABEL_23:
          *(this + 38) = v10;
        }
      }
    }
  }
}

uint64_t CA::Render::VelocityState::set_keypath_velocity(uint64_t this, unint64_t a2, CA::Render::Function *a3, int a4, unint64_t a5, CA::Mat4Impl *a6, double *a7, int a8)
{
  v14 = this;
  v126[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2)
    {
      if (HIDWORD(a2))
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = *a2;
      if (v15 >= 4)
      {
        if ((*(this + 153) & 0x10) == 0)
        {
          *(this + 156) = 1;
        }

        v16 = 4096;
        goto LABEL_279;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = (v126 + 4);
  LODWORD(v126[1]) = 0;
  v126[0] = 0;
  this = CA::Render::key_path_atoms(a2, v126, a3);
  v20 = v15 == 1 && LODWORD(v126[0]) == 716;
  if (a5 != 16 || !v20)
  {
    if (!a5)
    {
      return this;
    }

    v23 = a5;
    for (i = a6; *i == 0.0; ++i)
    {
      if (!--v23)
      {
        return this;
      }
    }
  }

  if (a3)
  {
    if (!v20)
    {
      LODWORD(v126[0]) = 0;
      goto LABEL_55;
    }

    v21 = (*(*a3 + 120))(a3);
    v15 = 1;
    if (v21 > 0xC)
    {
      if (v21 == -1)
      {
        LODWORD(v126[0]) = 0;
        v15 = 1;
      }
    }

    else
    {
      if (((1 << v21) & 0x1F8) != 0)
      {
        v22 = 621;
      }

      else if (((1 << v21) & 0x1E00) != 0)
      {
        v22 = 720;
      }

      else
      {
        v22 = 616;
      }

      HIDWORD(v126[0]) = v22;
      v15 = 2;
      v17 = &v126[1];
    }

    this = (*(*a3 + 120))(a3);
    if (this <= 5)
    {
      if (this > 2)
      {
        if (this == 3)
        {
LABEL_51:
          ++v15;
          v25 = 759;
          goto LABEL_54;
        }

        if (this == 4)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if (!this)
      {
        goto LABEL_53;
      }

      if (this == 1)
      {
        goto LABEL_50;
      }

      if (this != 2)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (this <= 9)
      {
        if ((this - 7) >= 3)
        {
          if (this != 6)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (this != 12)
      {
        if (this != 11)
        {
          if (this != 10)
          {
            goto LABEL_55;
          }

LABEL_53:
          ++v15;
          v25 = 756;
          goto LABEL_54;
        }

LABEL_50:
        ++v15;
        v25 = 760;
LABEL_54:
        *v17 = v25;
        goto LABEL_55;
      }
    }

LABEL_52:
    ++v15;
    v25 = 762;
    goto LABEL_54;
  }

LABEL_55:
  if (SLODWORD(v126[0]) > 692)
  {
    if (LODWORD(v126[0]) == 693)
    {
      if (v15 == 1 && a5 == 16 && !a8)
      {
        this = CA::Mat4Impl::mat4_is_velocity_affine_with_z_transform(a6, v18);
        if (!this || *(a6 + 1) != 0.0 || *(a6 + 4) != 0.0)
        {
          goto LABEL_277;
        }

        if (*(a6 + 12) == 0.0 && *(a6 + 13) == 0.0 && *(a6 + 10) == 0.0 && *(a6 + 14) == 0.0)
        {
          v115 = *a6;
          if (*a6 != 0.0 || *(a6 + 5) != 0.0)
          {
            v116 = *a7;
            v117 = *(v14 + 136);
            v118 = *(v14 + 144);
            v119 = *(v14 + 128);
            v120 = v117 * v115 + *(v14 + 120) * *a7;
            v121 = v117 * *a7;
            if (a4)
            {
              v116 = v121;
            }

            *(v14 + 136) = v116;
            if (a4)
            {
              v115 = v120;
            }

            *(v14 + 120) = v115;
            v122 = a7[5];
            v123 = *(a6 + 5);
            v124 = v118 * v122;
            if (!a4)
            {
              v124 = a7[5];
            }

            *(v14 + 144) = v124;
            v125 = v118 * v123 + v119 * v122;
            if (!a4)
            {
              v125 = v123;
            }

            *(v14 + 128) = v125;
            v48 = 2048;
            goto LABEL_278;
          }

          goto LABEL_277;
        }
      }

      if ((*(v14 + 153) & 0x10) != 0)
      {
        goto LABEL_220;
      }

      v29 = 11;
LABEL_219:
      *(v14 + 156) = v29;
      goto LABEL_220;
    }

    if (LODWORD(v126[0]) != 716)
    {
      if (LODWORD(v126[0]) == 764)
      {
        if (a4)
        {
          v26 = *a6 + *(v14 + 104);
        }

        else
        {
          v26 = *a6;
        }

        *(v14 + 104) = v26;
        v48 = 128;
        goto LABEL_278;
      }

LABEL_217:
      if ((*(v14 + 153) & 0x10) == 0)
      {
        v29 = 1;
        goto LABEL_219;
      }

LABEL_220:
      v48 = 0;
      v101 = 4096;
LABEL_221:
      *(v14 + 152) = v101;
      goto LABEL_278;
    }

    if (v15 == 3)
    {
      if (HIDWORD(v126[0]) == 720)
      {
        if (LODWORD(v126[1]) == 760)
        {
          if ((a4 & 1) == 0)
          {
            v102 = *a6;
            goto LABEL_249;
          }

          v85 = *(v14 + 96);
          v86 = *a6;
          goto LABEL_229;
        }

        if (LODWORD(v126[1]) != 756)
        {
          goto LABEL_217;
        }

        if (a4)
        {
          v82 = *a6 + *(v14 + 88);
        }

        else
        {
          v82 = *a6;
        }

        *(v14 + 88) = v82;
LABEL_250:
        v48 = 64;
        goto LABEL_278;
      }

      if (HIDWORD(v126[0]) == 621)
      {
        if (SLODWORD(v126[1]) > 759)
        {
          if (LODWORD(v126[1]) == 760)
          {
            v109 = *a7;
            v110 = *a6;
            v111 = *(v14 + 80);
            v112 = *(v14 + 64);
            v113 = v111 * *a7;
            if (!a4)
            {
              v113 = *a7;
            }

            *(v14 + 80) = v113;
            v114 = v111 * v110 + v112 * v109;
            if (!a4)
            {
              v114 = v110;
            }

            *(v14 + 64) = v114;
            v48 = 32;
            goto LABEL_278;
          }

          if (LODWORD(v126[1]) != 762)
          {
            goto LABEL_217;
          }

          v48 = 0;
LABEL_261:
          v101 = *(v14 + 152) | 0x400;
          goto LABEL_221;
        }

        if (LODWORD(v126[1]) == 756)
        {
          v103 = *a7;
          v104 = *a6;
          v105 = *(v14 + 72);
          v106 = *(v14 + 56);
          v107 = v105 * *a7;
          if (!a4)
          {
            v107 = *a7;
          }

          *(v14 + 72) = v107;
          v108 = v105 * v104 + v106 * v103;
          if (!a4)
          {
            v108 = v104;
          }

          *(v14 + 56) = v108;
          v48 = 16;
          goto LABEL_278;
        }

        if (LODWORD(v126[1]) != 759)
        {
          goto LABEL_217;
        }

        goto LABEL_121;
      }

      v48 = 0;
      if (HIDWORD(v126[0]) != 616 || LODWORD(v126[1]) != 762)
      {
        goto LABEL_278;
      }
    }

    else
    {
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          if (a8)
          {
            v30 = *a7;
            v31 = *a6;
            v32 = *(v14 + 72);
            v33 = *(v14 + 80);
            v34 = *(v14 + 64);
            v35 = v32 * *a6 + *(v14 + 56) * *a7;
            v36 = v32 * *a7;
            if (a4)
            {
              v30 = v36;
            }

            *(v14 + 72) = v30;
            if (a4)
            {
              v37 = v35;
            }

            else
            {
              v37 = v31;
            }

            *(v14 + 56) = v37;
            v38 = a7[1];
            v39 = *(a6 + 1);
            v40 = v33 * v38;
            if (!a4)
            {
              v40 = a7[1];
            }

            *(v14 + 80) = v40;
            v41 = v33 * v39 + v34 * v38;
            if (!a4)
            {
              v41 = v39;
            }

            *(v14 + 64) = v41;
            if (a4)
            {
              v42 = *(v14 + 96);
              *(v14 + 88) = *(a6 + 2) + *(v14 + 88);
              *(v14 + 96) = *(a6 + 3) + v42;
              v43 = *(a6 + 4) + *(v14 + 112);
            }

            else
            {
              *(v14 + 88) = *(a6 + 2);
              *(v14 + 96) = *(a6 + 3);
              v43 = *(a6 + 4);
            }

            *(v14 + 112) = v43;
            v48 = 368;
            goto LABEL_278;
          }

          if (a5 == 16)
          {
            this = CA::Mat4Impl::mat4_is_velocity_affine_with_z_transform(a6, v18);
            if (this && *(a6 + 1) == 0.0 && *(a6 + 4) == 0.0)
            {
              v67 = *a6;
              if (*a6 == 0.0 && *(a6 + 5) == 0.0)
              {
                v48 = 0;
              }

              else
              {
                v68 = *a7;
                v69 = *(v14 + 72);
                v70 = *(v14 + 80);
                v71 = *(v14 + 64);
                v72 = v69 * v67 + *(v14 + 56) * *a7;
                v73 = v69 * *a7;
                if (a4)
                {
                  v68 = v73;
                }

                *(v14 + 72) = v68;
                if (a4)
                {
                  v67 = v72;
                }

                *(v14 + 56) = v67;
                v74 = a7[5];
                v75 = *(a6 + 5);
                v76 = v70 * v74;
                if (!a4)
                {
                  v76 = a7[5];
                }

                *(v14 + 80) = v76;
                v77 = v70 * v75 + v71 * v74;
                if (!a4)
                {
                  v77 = v75;
                }

                *(v14 + 64) = v77;
                v48 = 48;
              }

              v78 = *(a6 + 12);
              if (v78 != 0.0 || *(a6 + 13) != 0.0)
              {
                if (a4)
                {
                  v79 = *(v14 + 96);
                  *(v14 + 88) = *(v14 + 88) + v78;
                  v80 = *(a6 + 13) + v79;
                }

                else
                {
                  *(v14 + 88) = v78;
                  v80 = *(a6 + 13);
                }

                *(v14 + 96) = v80;
                v48 |= 0x40u;
              }

              if (*(a6 + 10) == 0.0 && *(a6 + 14) == 0.0)
              {
                goto LABEL_278;
              }

              goto LABEL_261;
            }

            goto LABEL_204;
          }

          if (a5 == 6)
          {
            if (*(a6 + 1) == 0.0 && *(a6 + 2) == 0.0)
            {
              v87 = *a6;
              if (*a6 == 0.0 && *(a6 + 3) == 0.0)
              {
                v48 = 0;
              }

              else
              {
                v88 = *a7;
                v89 = *(v14 + 72);
                v90 = *(v14 + 80);
                v91 = *(v14 + 64);
                v92 = v89 * v87 + *(v14 + 56) * *a7;
                v93 = v89 * *a7;
                if (a4)
                {
                  v88 = v93;
                }

                *(v14 + 72) = v88;
                if (a4)
                {
                  v87 = v92;
                }

                *(v14 + 56) = v87;
                v94 = a7[3];
                v95 = *(a6 + 3);
                v96 = v90 * v94;
                if (!a4)
                {
                  v96 = a7[3];
                }

                *(v14 + 80) = v96;
                v97 = v90 * v95 + v91 * v94;
                if (!a4)
                {
                  v97 = v95;
                }

                *(v14 + 64) = v97;
                v48 = 48;
              }

              v98 = *(a6 + 4);
              if (v98 != 0.0 || *(a6 + 5) != 0.0)
              {
                if (a4)
                {
                  v99 = *(v14 + 96);
                  *(v14 + 88) = *(v14 + 88) + v98;
                  v100 = *(a6 + 5) + v99;
                }

                else
                {
                  *(v14 + 88) = v98;
                  v100 = *(a6 + 5);
                }

                *(v14 + 96) = v100;
                v48 |= 0x40u;
              }

              goto LABEL_278;
            }

LABEL_204:
            if ((*(v14 + 153) & 0x10) != 0)
            {
              goto LABEL_220;
            }

            v29 = 3;
            goto LABEL_219;
          }
        }

        goto LABEL_277;
      }

      if (HIDWORD(v126[0]) != 616)
      {
        if (HIDWORD(v126[0]) != 720)
        {
          if (HIDWORD(v126[0]) != 621)
          {
            goto LABEL_277;
          }

LABEL_121:
          v52 = *a7;
          v53 = *a6;
          v54 = *(v14 + 72);
          v55 = *(v14 + 80);
          v56 = *(v14 + 64);
          v57 = v54 * *a6 + *(v14 + 56) * *a7;
          v58 = v54 * *a7;
          if (a4)
          {
            v52 = v58;
          }

          *(v14 + 72) = v52;
          if (a4)
          {
            v59 = v57;
          }

          else
          {
            v59 = v53;
          }

          *(v14 + 56) = v59;
          v60 = *a7;
          v61 = *a6;
          v62 = v55 * *a7;
          if (!a4)
          {
            v62 = *a7;
          }

          *(v14 + 80) = v62;
          v63 = v55 * v61 + v56 * v60;
          if (!a4)
          {
            v63 = v61;
          }

          *(v14 + 64) = v63;
          v48 = 48;
          goto LABEL_278;
        }

        if (a4)
        {
          *(v14 + 88) = *a6 + *(v14 + 88);
          if (a5 > 1)
          {
            v85 = *(v14 + 96);
            v86 = *(a6 + 1);
LABEL_229:
            v102 = v86 + v85;
            goto LABEL_249;
          }
        }

        else
        {
          *(v14 + 88) = *a6;
          if (a5 >= 2)
          {
            v102 = *(a6 + 1);
LABEL_249:
            *(v14 + 96) = v102;
            goto LABEL_250;
          }
        }

        goto LABEL_250;
      }
    }

    if (a4)
    {
      v84 = *a6 + *(v14 + 112);
    }

    else
    {
      v84 = *a6;
    }

    *(v14 + 112) = v84;
    v48 = 256;
    goto LABEL_278;
  }

  if (LODWORD(v126[0]) == 82)
  {
    if (v15 == 3)
    {
      if (HIDWORD(v126[0]) != 654)
      {
        if (HIDWORD(v126[0]) != 547)
        {
          goto LABEL_277;
        }

        if (LODWORD(v126[1]) != 760)
        {
          if (LODWORD(v126[1]) == 756)
          {
            if (a4)
            {
              v64 = *a6 + *(v14 + 24);
            }

            else
            {
              v64 = *a6;
            }

            *(v14 + 24) = v64;
          }

          goto LABEL_183;
        }

        if (a4)
        {
          v51 = *a6 + *(v14 + 32);
        }

        else
        {
          v51 = *a6;
        }

LABEL_182:
        *(v14 + 32) = v51;
LABEL_183:
        v48 = 4;
        goto LABEL_278;
      }

      if (LODWORD(v126[1]) != 295)
      {
        if (LODWORD(v126[1]) == 753)
        {
          if (a4)
          {
            v83 = *a6 + *(v14 + 40);
          }

          else
          {
            v83 = *a6;
          }

          *(v14 + 40) = v83;
        }

        goto LABEL_256;
      }

      if (a4)
      {
        v66 = *a6 + *(v14 + 48);
      }

      else
      {
        v66 = *a6;
      }
    }

    else
    {
      if (v15 != 2)
      {
        if (v15 == 1 && a5 >= 4)
        {
          if (a4)
          {
            v44 = *(v14 + 32);
            *(v14 + 24) = *a6 + *(v14 + 24);
            *(v14 + 32) = *(a6 + 1) + v44;
            v45 = *(v14 + 48);
            *(v14 + 40) = *(a6 + 2) + *(v14 + 40) - *a6;
            v46 = *(a6 + 1);
            v47 = *(a6 + 3) + v45;
          }

          else
          {
            *(v14 + 24) = *a6;
            *(v14 + 32) = *(a6 + 1);
            *(v14 + 40) = *(a6 + 2) - *a6;
            v47 = *(a6 + 3);
            v46 = *(a6 + 1);
          }

          *(v14 + 48) = v47 - v46;
          v48 = 12;
          goto LABEL_278;
        }

        goto LABEL_277;
      }

      if (a5 >= 2 && HIDWORD(v126[0]) == 547)
      {
        if (a4)
        {
          v50 = *(v14 + 32);
          *(v14 + 24) = *a6 + *(v14 + 24);
          v51 = *(a6 + 1) + v50;
        }

        else
        {
          *(v14 + 24) = *a6;
          v51 = *(a6 + 1);
        }

        goto LABEL_182;
      }

      v48 = 0;
      if (a5 < 2 || HIDWORD(v126[0]) != 654)
      {
        goto LABEL_278;
      }

      if (a4)
      {
        v65 = *(v14 + 48);
        *(v14 + 40) = *a6 + *(v14 + 40);
        v66 = *(a6 + 1) + v65;
      }

      else
      {
        *(v14 + 40) = *a6;
        v66 = *(a6 + 1);
      }
    }

    *(v14 + 48) = v66;
LABEL_256:
    v48 = 8;
    goto LABEL_278;
  }

  if (LODWORD(v126[0]) != 569)
  {
    goto LABEL_217;
  }

  if (v15 == 2)
  {
    if (HIDWORD(v126[0]) == 760)
    {
      if (a4)
      {
        v81 = *a6 + *(v14 + 16);
      }

      else
      {
        v81 = *a6;
      }

      *(v14 + 16) = v81;
      v48 = 2;
      goto LABEL_278;
    }

    if (HIDWORD(v126[0]) == 756)
    {
      if (a4)
      {
        v49 = *a6 + *(v14 + 8);
      }

      else
      {
        v49 = *a6;
      }

      *(v14 + 8) = v49;
      v48 = 1;
      goto LABEL_278;
    }

    goto LABEL_277;
  }

  if (v15 != 1 || a5 < 2)
  {
LABEL_277:
    v48 = 0;
    goto LABEL_278;
  }

  if (a4)
  {
    v27 = *(v14 + 16);
    *(v14 + 8) = *a6 + *(v14 + 8);
    *(v14 + 16) = *(a6 + 1) + v27;
    if (a5 != 2)
    {
      v28 = *(a6 + 2) + *(v14 + 104);
LABEL_223:
      *(v14 + 104) = v28;
      v48 = 131;
      goto LABEL_278;
    }
  }

  else
  {
    *(v14 + 8) = *a6;
    *(v14 + 16) = *(a6 + 1);
    if (a5 != 2)
    {
      v28 = *(a6 + 2);
      goto LABEL_223;
    }
  }

  v48 = 3;
LABEL_278:
  v16 = *(v14 + 152) | v48;
LABEL_279:
  *(v14 + 152) = v16;
  return this;
}

void CA::Render::LayerNode::update_z_range(CA::Render *this, CA::Render::LayerNode *a2)
{
  v2 = *(this + 3);
  if ((v2 & 4) != 0)
  {
    *(this + 3) = v2 & 0xFFFFFFFFFFFFFFF3;
    v3 = *(this + 7);
    if (v3)
    {
      if (!*(this + 18))
      {
        v5 = *(this + 4);
        v6 = v5[9];
        v7 = v5[10];
        v8 = v5[11];
        v9 = v5[12];
        v10 = xmmword_183E21220;
        for (i = -1; ; ++i)
        {
          v12 = i + 1;
          v13 = i >= 2 ? 0.0 : v8;
          v14 = v13 + v6;
          v15 = v12 >= 2 ? v9 : 0.0;
          v16 = v15 + v7;
          v17 = v3[15] + v3[3] * v14 + v3[7] * v16;
          if (v17 <= 0.0)
          {
            break;
          }

          v18 = v3[14] + v3[2] * v14 + v3[6] * v16;
          if (v17 != 1.0)
          {
            v18 = v18 / v17;
          }

          *&v19.f64[1] = v10.i64[1];
          v19.f64[0] = v18;
          *&v20.f64[0] = v10.i64[0];
          v20.f64[1] = v18;
          v10 = vbslq_s8(vcgtq_f64(v20, v19), vdupq_lane_s64(*&v18, 0), v10);
          if (v12 == 3)
          {
            *(this + 15) = v10;
            return;
          }
        }
      }

      CA::Render::update_z_range_clip(this, a2);
    }

    else
    {
      v4 = *(this + 10);
      *(this + 30) = v4;
      *(this + 31) = v4;
    }
  }
}

uint64_t CA::Render::clip_layer(CA::Render *this, CA::Render::LayerNode *a2, double *a3, double *a4, double *a5)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v9 = *(this + 18);
  if (v9)
  {
    v10 = (32 * (*(v9 + 2) + 5)) | 0xF;
  }

  else
  {
    v10 = 175;
  }

  MEMORY[0x1EEE9AC00](this);
  v11 = (v10 + 15) & 0x3FFFFFFFF0;
  v12 = v75 - v11;
  bzero(v75 - v11, v10);
  v13 = (&v75[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  bzero(v75 - v11, v10);
  v15 = 0;
  v16 = *(this + 4);
  v17 = v16[9];
  v18 = v16[10];
  v19 = v16[11];
  v20 = v16[12];
  v21 = CA::Render::compute_occlusion_data(CA::Render::occlusion_closure *,CA::Render::LayerNode *)::my;
  v22 = CA::Render::compute_occlusion_data(CA::Render::occlusion_closure *,CA::Render::LayerNode *)::mx;
  do
  {
    v23 = *v22++;
    v24 = v13 + v15;
    *v24 = v17 + v23 * v19;
    v25 = *v21++;
    *(v24 + 8) = v18 + v25 * v20;
    *(v24 + 16) = xmmword_183E20E60;
    v15 += 32;
  }

  while (v15 != 128);
  v26 = (&v75[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF0;
  v27 = *(this + 7);
  if (v27)
  {
    v28 = (v13 + 16);
    v29 = 4;
    do
    {
      v30 = *(v28 - 2);
      v31 = *(v28 - 1);
      v32 = *v28;
      v33 = v28[1];
      *(v28 - 2) = *v27 * v30 + v27[4] * v31 + v27[8] * *v28 + v27[12] * v33;
      *(v28 - 1) = v27[1] * v30 + v27[5] * v31 + v27[9] * v32 + v27[13] * v33;
      *v28 = v27[2] * v30 + v27[6] * v31 + v27[10] * v32 + v27[14] * v33;
      v28[1] = v27[3] * v30 + v27[7] * v31 + v27[11] * v32 + v27[15] * v33;
      v28 += 4;
      --v29;
    }

    while (v29);
  }

  else
  {
    v34 = (v13 + 16);
    v35 = 4;
    do
    {
      v36 = *(v34 - 1);
      *(v34 - 2) = *(v34 - 2) + *(this + 8);
      *(v34 - 1) = v36 + *(this + 9);
      *v34 = *v34 + *(this + 10);
      v34 += 4;
      --v35;
    }

    while (v35);
  }

  v37 = 0;
  for (i = 24; i != 152; i += 32)
  {
    if (*(v13 + i) < 0.0001)
    {
      ++v37;
    }
  }

  if (!v37)
  {
    result = 4;
    v13 = (&v75[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF0;
    v26 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    goto LABEL_32;
  }

  if (v37 == 4)
  {
    return 0;
  }

  v39 = 0;
  v40 = 0;
  result = 0;
  v42 = v13 + 96;
  v43 = *(((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x78) + -0.0001;
  while (1)
  {
    v44 = v42;
    v45 = v43;
    v42 = v13 + v39;
    v43 = *(v13 + v39 + 24) + -0.0001;
    if (v45 >= 0.0)
    {
      v49 = 4 * result;
      if (v43 >= 0.0)
      {
        *(v26 + 8 * v49) = *(v13 + v39);
        *(v26 + 8 * ((4 * result) | 1u)) = *(v13 + v39 + 8);
        *(v26 + 8 * ((4 * result) | 2u)) = *(v13 + v39 + 16);
        *(v26 + 8 * ((4 * result) | 3u)) = *(v42 + 24);
      }

      else
      {
        v50 = v45 / (v45 - v43);
        v51 = (v26 + 8 * v49);
        v52 = vmlaq_n_f64(v44[1], vsubq_f64(*(v42 + 16), v44[1]), v50);
        *v51 = vmlaq_n_f64(*v44, vsubq_f64(*v42, *v44), v50);
        v51[1] = v52;
      }

      result = (result + 1);
      goto LABEL_27;
    }

    if (v43 >= 0.0)
    {
      break;
    }

LABEL_27:
    v39 += 32;
    if (v39 == 128)
    {
      goto LABEL_31;
    }
  }

  if (!v40)
  {
    v46 = v45 / (v45 - v43);
    v47 = (v26 + 8 * (4 * result));
    v48 = vmlaq_n_f64(v44[1], vsubq_f64(*(v13 + v39 + 16), v44[1]), v46);
    *v47 = vmlaq_n_f64(*v44, vsubq_f64(*(v13 + v39), *v44), v46);
    v47[1] = v48;
    *(v26 + 8 * (4 * result + 4)) = *(v13 + v39);
    *(v26 + 8 * (4 * result + 5)) = *(v13 + v39 + 8);
    *(v26 + 8 * (4 * result + 6)) = *(v13 + v39 + 16);
    *(v26 + 8 * (4 * result + 7)) = *(v42 + 24);
    result = (result + 2);
    v40 = 1;
    goto LABEL_27;
  }

  result = 0;
LABEL_31:
  v9 = *(this + 18);
LABEL_32:
  if (result >= 3 && v9)
  {
    do
    {
      v53 = 0;
      v54 = 0;
      v55 = v13;
      v13 = v26;
      v56 = v26 + 8 * (4 * result - 4);
      v57 = vaddvq_f64(vmlaq_f64(vmulq_f64(*(v56 + 16), *(v9 + 2)), *(v9 + 1), *v56));
      v58 = result;
      result = 0;
      do
      {
        v59 = v56;
        v60 = v57;
        v56 = v13 + 8 * (v53 & 0xFFFFFFFC);
        v61 = *v56;
        v62 = *(v56 + 16);
        v57 = vaddvq_f64(vmlaq_f64(vmulq_f64(*(v9 + 2), v62), *v56, *(v9 + 1)));
        if (v60 >= 0.0)
        {
          if (v57 >= 0.0)
          {
            *(v55 + 8 * (4 * result)) = v61.f64[0];
            *(v55 + 8 * ((4 * result) | 1u)) = *(v56 + 8);
            *(v55 + 8 * ((4 * result) | 2u)) = *(v56 + 16);
            *(v55 + 8 * ((4 * result) | 3u)) = *(v56 + 24);
          }

          else
          {
            v66 = v60 / (v60 - v57);
            v67 = (v55 + 8 * (4 * result));
            v68 = vmlaq_n_f64(v59[1], vsubq_f64(v62, v59[1]), v66);
            *v67 = vmlaq_n_f64(*v59, vsubq_f64(v61, *v59), v66);
            v67[1] = v68;
          }

          result = (result + 1);
        }

        else if (v57 >= 0.0)
        {
          if (v54)
          {
            return 0;
          }

          v63 = v60 / (v60 - v57);
          v64 = (v55 + 8 * (4 * result));
          v65 = vmlaq_n_f64(v59[1], vsubq_f64(v62, v59[1]), v63);
          *v64 = vmlaq_n_f64(*v59, vsubq_f64(v61, *v59), v63);
          v64[1] = v65;
          *(v55 + 8 * (4 * result + 4)) = *v56;
          *(v55 + 8 * (4 * result + 5)) = *(v56 + 8);
          *(v55 + 8 * (4 * result + 6)) = *(v56 + 16);
          *(v55 + 8 * (4 * result + 7)) = *(v56 + 24);
          result = (result + 2);
          v54 = 1;
        }

        v53 += 4;
        --v58;
      }

      while (v58);
      if (result < 3)
      {
        break;
      }

      v9 = *v9;
      v26 = v55;
    }

    while (v9);
  }

  else
  {
    v55 = v26;
  }

  if (result < 3)
  {
    return 0;
  }

  v69 = 0;
  v70 = a2;
  v71 = a3;
  v72 = a4;
  do
  {
    v73 = *(v55 + 8 * (v69 + 3));
    if (v73 <= 0.0)
    {
      v74 = INFINITY;
    }

    else
    {
      v74 = 1.0 / v73;
    }

    if (a2)
    {
      *v70 = *(v55 + 8 * v69) * v74;
    }

    if (a3)
    {
      *v71 = *(v55 + 8 * (v69 + 1)) * v74;
    }

    if (a4)
    {
      *v72 = *(v55 + 8 * (v69 + 2)) * v74;
    }

    v69 += 4;
    ++v72;
    ++v71;
    ++v70;
  }

  while (4 * result != v69);
  return result;
}

int8x16_t CA::Render::update_z_range_clip(CA::Render *this, CA::Render::LayerNode *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFF0));
  bzero(v4, v3);
  v6 = CA::Render::clip_layer(this, 0, 0, v4, v5);
  if (v6)
  {
    v7 = v6;
    result = xmmword_183E21220;
    do
    {
      v9 = *v4++;
      *&v10.f64[1] = result.i64[1];
      v10.f64[0] = v9;
      *&v11.f64[0] = result.i64[0];
      v11.f64[1] = v9;
      result = vbslq_s8(vcgtq_f64(v11, v10), vdupq_lane_s64(*&v9, 0), result);
      --v7;
    }

    while (v7);
    *(this + 15) = result;
  }

  else
  {
    result = vdupq_n_s64(0xFFF0000000000000);
    *(this + 15) = result;
    *(this + 3) |= 8uLL;
  }

  return result;
}

double CA::Render::GainMapLayer::get_bounds(CA::Render::GainMapLayer *this, const CA::Render::Layer *a2, Rect *a3, Rect *a4)
{
  if ((*(*this + 200))(this))
  {
    v8 = *(a2 + 72);
    *&a3->top = v8;
    v7 = *(a2 + 88);
    *&a3[2].top = v7;
    if (*&v7 <= *(&v7 + 1))
    {
      v9 = *(&v7 + 1);
    }

    else
    {
      v9 = *&v7;
    }

    if (v9 < 1.79769313e308)
    {
      v10 = *&v7 >= *(&v7 + 1) ? *(&v7 + 1) : *&v7;
      if (v10 > 0.0)
      {
        __asm { FMOV            V3.2D, #-2.0 }

        *&a3->top = vaddq_f64(v8, _Q3);
        _Q3.f64[0] = *&v7 + 4.0;
        *&v7 = *(&v7 + 1) + 4.0;
        a3[2] = *&_Q3.f64[0];
        *&a3[3] = *(&v7 + 1) + 4.0;
        if (_Q3.f64[0] <= 0.0 || *&v7 <= 0.0)
        {
          a3[2] = 0;
          a3[3] = 0;
        }
      }
    }

    if (a4)
    {
      *&v7 = 0;
      *&a4->top = 0u;
      *&a4[2].top = 0u;
    }
  }

  return *&v7;
}

uint64_t CA::Render::GainMapLayer::bounds_are_visible(CA::Render::GainMapLayer *this)
{
  v1 = 1;
  if (*(this + 16) != 3 && (byte_1ED4E985C & 1) == 0)
  {
    if (CADeviceSupportsHWGainMap::once != -1)
    {
      dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
    }

    v1 = CADeviceSupportsHWGainMap::supports_gain_map ^ 1;
  }

  return v1 & 1;
}

uint64_t CA::Render::GainMapLayer::has_background(CA::Render::GainMapLayer *this, const CA::Render::Layer *a2, BOOL *a3)
{
  *a3 = 0;
  v3 = 1;
  if (*(this + 16) != 3 && (byte_1ED4E985C & 1) == 0)
  {
    if (CADeviceSupportsHWGainMap::once != -1)
    {
      dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
    }

    v3 = CADeviceSupportsHWGainMap::supports_gain_map ^ 1;
  }

  return v3 & 1;
}

void add_non_visible_animating_layer(void *value)
{
  Mutable = non_visible_animating_layers;
  if (!non_visible_animating_layers)
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    non_visible_animating_layers = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

uint64_t CA::Render::KeyValueArray::get_color_key(CA::Render::KeyValueArray *this, int a2, uint64_t a3)
{
  named_object = CA::Render::KeyValueArray::find_named_object_(this, a2);
  if ((named_object & 0x80000000) == 0)
  {
    v6 = *(*(this + named_object + 3) + 24);
    if (v6)
    {
      if (*(v6 + 12) == 62 && *(v6 + 16) >= 4u)
      {
        v7 = (*(v6 + 24) * 255.0 + 0.5);
        v8 = v7 & ~(v7 >> 31);
        v9 = (*(v6 + 48) * 255.0 + 0.5) & ~((*(v6 + 48) * 255.0 + 0.5) >> 31);
        if (v8 >= 255)
        {
          v8 = 255;
        }

        if (v9 >= 255)
        {
          v9 = 255;
        }

        __asm { FMOV            V2.2D, #0.5 }

        v15 = vshl_u32(vmin_s32(vmax_s32(vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x406FE00000000000uLL), *(v6 + 32)))), 0), 0xFF000000FFLL), 0x800000010);
        return v15.i32[0] | (v8 << 24) | v9 | v15.i32[1];
      }
    }
  }

  return a3;
}

void X::small_vector_base<CA::Render::BackdropGroup::Item>::resize(uint64_t a1, unint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = &v4[-*a1];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 6);
  if (v7 <= a2)
  {
    if (v7 >= a2)
    {
      return;
    }

    v9 = *(a1 + 24);
    if (v9 >= a2)
    {
      v16 = *a1;
    }

    else
    {
      v10 = *(a1 + 16);
      v11 = (v9 + 1) | ((v9 + 1) >> 1) | (((v9 + 1) | ((v9 + 1) >> 1)) >> 2);
      v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
      v13 = v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32);
      if (v13 + 1 > a2)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = a2;
      }

      v15 = malloc_type_malloc(192 * v14, 0x10200405BFFB86AuLL);
      v16 = v15;
      v17 = *a1;
      v18 = *(a1 + 8);
      if (*a1 != v18)
      {
        v19 = v15;
        do
        {
          v20 = v17[1];
          *v19 = *v17;
          v19[1] = v20;
          v19[2] = v17[2];
          v19[3] = v17[3];
          v19[4] = v17[4];
          v19[5] = v17[5];
          v19[6] = v17[6];
          v19[7] = v17[7];
          v21 = v17[8];
          v22 = v17[9];
          v23 = v17[10];
          *(v19 + 172) = *(v17 + 172);
          v19[9] = v22;
          v19[10] = v23;
          v19[8] = v21;
          v19 += 12;
          v17 += 12;
        }

        while (v17 != v18);
      }

      if (v5 != v10)
      {
        free(*a1);
      }

      *a1 = v16;
      v4 = v16 + v6;
      *(a1 + 24) = v14;
    }

    for (i = &v16[12 * a2]; v4 != i; v4 += 192)
    {
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *(v4 + 90) = 0;
      *(v4 + 46) = 0;
      *(v4 + 8) = 0uLL;
      *(v4 + 9) = 0uLL;
      *(v4 + 2) = 0uLL;
      *(v4 + 3) = 0uLL;
    }
  }

  else
  {
    i = &v5[12 * a2];
  }

  *(a1 + 8) = i;
}

float CA::OGL::copy_gstate(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v2 = *(a2 + 80) | (*(a1 + 81) << 8);
  *(a1 + 80) = v2;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  v4 = *(a2 + 80) & 0x100 | v2 & 0xFEFF;
  *(a1 + 80) = v4;
  *(a1 + 80) = v4 & 0xFBFF | *(a2 + 80) & 0x400;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

void *CA::OGL::MetalContext::test_fence(CA::OGL::MetalContext *this, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(this + 417, a2);
  if (result)
  {
    v4 = atomic_load(this + 594);
    return (v4 >= result[3]);
  }

  return result;
}

void CA::Render::SDFLayer::~SDFLayer(CA::Render::SDFLayer *this, const CA::Render::Object *a2)
{
  CA::Render::SDFLayer::~SDFLayer(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FE9C0;
  v3 = *(this + 20);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      CA::Render::SDFState::remove_copy(v4, this);
      v5 = *(this + 20);
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v6)
      {
        if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
        }
      }
    }

    CA::Render::SDFState::remove_copy(*(this + 20), this);
  }

  if (*(this + 136) == 3)
  {
    v7 = *(this + 3);
    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7, a2);
    }

    v8 = *(this + 4);
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8, a2);
    }
  }

  v9 = *(this + 20);
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9, a2);
  }

  --dword_1ED4EAAF8;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t CA::OGL::GaussianBlurFilter::get_edge_info(uint64_t a1, CA::Render::KeyValueArray **a2, const CA::Render::Layer *a3, uint64_t a4, Rect *a5, float32x2_t *a6, BOOL *a7)
{
  v12 = *(*(a4 + 656) + 24);
  if ((*(v12 + 144) & 0x10) != 0)
  {
    v13 = vaddvq_f64(vmulq_f64(*v12, *v12));
    v14 = vaddvq_f64(vmulq_f64(*(v12 + 32), *(v12 + 32)));
    v15 = *(v12 + 120);
    if (v15 != 1.0)
    {
      v16 = 1.0 / (v15 * v15);
      v13 = v16 * v13;
      v14 = v16 * v14;
    }

    v17 = v13 != 1.0;
    if (v14 != 1.0)
    {
      v17 = 1;
    }

    v18 = sqrt(v13);
    v19 = sqrt(v14);
    if (v17)
    {
      v14 = v19;
      v13 = v18;
    }

    v25 = v14;
    v26 = v13;
  }

  else
  {
    v26 = *(v12 + 128);
    v25 = v26;
  }

  v20 = a2[5];
  v21 = CA::Render::KeyValueArray::get_float_key(v20, 400, 0.0) * 2.79999995;
  v22.f64[0] = v26;
  v22.f64[1] = v25;
  *a6 = vmul_n_f32(vcvt_f32_f64(v22), v21);
  int_key = CA::Render::KeyValueArray::get_int_key(v20, 392, 0);
  *a7 = int_key != 0;

  return CA::OGL::GaussianBlurFilter::get_bounds(int_key, a2, a3, a5);
}

float16x4_t *CA::OGL::MetalContext::clear_region(float16x4_t *result, uint64_t a2, uint64_t *a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = result[84];
  if (!*&v3)
  {
    __assert_rtn("clear_region", "ogl-metal.mm", 4420, "surf != nullptr");
  }

  if (*a3 || *&v3 == *&result[85] || (v4 = *(*&v3 + 144), v4 < 0))
  {
    v5[0] = *a3;
    return CA::OGL::Context::paint_region(result, a2, v5, 0);
  }

  else
  {
    *(*&v3 + 144) = v4 | 0x20000000;
  }

  return result;
}

void CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(uint64_t a1)
{
  v245 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *(*(v1 + 24) + 136);
  if (v2 && (v3 = *v2) != 0)
  {
    if (*(v3 + 12) == 3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*(v4 + 13) & 0x10) == 0)
  {
    v5 = *(*(v1 + 16) + 256);
    if (v5)
    {
      v6 = *(a1 + 8);
      os_unfair_lock_lock((v5 + 52));
      v7 = *(v5 + 56);
      if (!v7)
      {
LABEL_17:
        os_unfair_lock_unlock((v5 + 52));
        return;
      }

      os_unfair_lock_lock((v7 + 40));
      v9 = *(v7 + 72);
      v8 = *(v7 + 80);
      if (v9 == v8)
      {
LABEL_16:
        os_unfair_lock_unlock((v7 + 40));
        goto LABEL_17;
      }

      v10 = *v6;
      while (*v9 != *(v5 + 24) || *(v5 + 32) != *(v9 + 8) || *(v9 + 16) != *(v5 + 40))
      {
        v9 += 192;
        if (v9 == v8)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v10 + 82);
      v207 = *(v9 + 32);
      v208 = *(v9 + 48);
      v217 = 0u;
      v218 = 0u;
      CA::Render::BackdropLayer::get_backdrop_bounds(v4, *(v1 + 24), &v217);
      v14 = v218;
      v15 = vclezq_f64(v218);
      v16 = vdupq_laneq_s64(v15, 1);
      v17 = vorrq_s8(v16, v15);
      if ((*&v17.f64[0] & 0x8000000000000000) == 0)
      {
        v13 = v208;
        v18 = vclezq_f64(v208);
        v16 = vdupq_laneq_s64(v18, 1);
        if ((vorrq_s8(v16, v18).u64[0] & 0x8000000000000000) != 0 || (v17 = vmaxnmq_f64(v217, v207), v14 = vsubq_f64(vminnmq_f64(vaddq_f64(v217, v218), vaddq_f64(v207, v208)), v17), v19 = vclezq_f64(v14), v13 = vdupq_laneq_s64(v19, 1), v16 = vorrq_s8(v13, v19), v16.i64[0] < 0))
        {
          v218 = 0uLL;
          v17.f64[1] = 0.0;
          *cf = 0u;
          goto LABEL_25;
        }

        v217 = v17;
        v218 = v14;
      }

      *cf = v14;
LABEL_25:
      v20 = *(v11 + 24);
      v17.f64[0] = 1.0;
      v16.i64[0] = 1.0;
      v21 = CA::OGL::transform_filter_bits(v20, v12, v17, v16, v13);
      v22.i64[0] = 1.0;
      v209 = v217;
      v206 = CA::OGL::rect_filter_bits(v20, v21, v217, *cf, v22, 1.0, v23);
      v221 = 0u;
      v222 = 0u;
      v203 = *(v11 + 36);
      v202 = *(v11 + 32);
      v204 = *(v11 + 38);
      if (*(v9 + 180) != 1 || !(*(*v10 + 232))(v10, 27))
      {
        v49 = *(v7 + 48);
        if (!v49)
        {
          goto LABEL_129;
        }

        if (*(v49 + 8) != v10)
        {
          goto LABEL_129;
        }

        v210 = *(v49 + 32);
        if (!v210)
        {
          goto LABEL_129;
        }

        v201 = v11;
        LODWORD(v25) = *(v49 + 28);
        v50 = &v221;
        v51 = 16;
        *cfa = v25;
        do
        {
          *v50 = *(v9 + 8 * v51);
          CA::Transform::apply_to_point2((v49 + 72), v50, v24);
          v52 = *cfa;
          *v50 = vmul_n_f32(*v50, *cfa);
          ++v50;
          ++v51;
        }

        while (v51 != 20);
        if (*(v49 + 48))
        {
          v53 = 0;
          v54 = *(v49 + 48);
          goto LABEL_126;
        }

        v53 = 0;
        LODWORD(v52) = *(v49 + 24);
LABEL_125:
        v54 = v210;
        if (v210)
        {
LABEL_126:
          *cfc = v52;
          v140 = v54[9];
          if (((*(*v10 + 144))(v10) & *&v140) == *&v140)
          {
            v141 = *(v1 + 24);
            v142 = *(v141 + 40);
            if ((v142 & 0xFu) > 0xAuLL)
            {
              v143 = 1;
            }

            else
            {
              v143 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v142 & 0xF];
            }

            v144 = v142 >> 4;
            if (v144 > 0xA)
            {
              v145 = 1;
            }

            else
            {
              v145 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v144];
            }

            if ((*(v1 + 40) & 0x10) != 0)
            {
              v150 = *(v141 + 136);
              if (v150)
              {
                v151 = *(v150 + 112);
              }

              else
              {
                v151 = 0;
              }

              CA::OGL::fill_surface_mesh(v10, v151, (v141 + 72), v54, v143, v145, 1, *cfc, 0.0);
              goto LABEL_16;
            }

            v146 = 0.0;
            CA::OGL::Context::bind_surface(v10, v54, 0, v143, v145, 0.0);
            v147 = *(v10 + 2);
            *(v147 + 12) = (v202 | (v203 << 32)) >> 32;
            *(v147 + 8) = v202;
            *(v147 + 14) = v204;
            v148 = *(v10 + 2);
            v148[13] = vmla_f32(v148[13], vcvt_f32_s32(vneg_s32(v54[6])), v148[12]);
            v149 = *(*(v1 + 24) + 136);
            if (v149)
            {
              v146 = *(v149 + 232);
            }

            if (v204 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v152 = v54[18].i16[2];
              if ((v206 & 9) != 0)
              {
                v153 = 0;
                v154 = 1;
                if ((*(v1 + 41) & 0xF) != 0 || (v152 & 0x10) == 0)
                {
                  goto LABEL_155;
                }

                goto LABEL_148;
              }

              if ((v152 & 0x10) != 0)
              {
LABEL_148:
                v155 = v148[62].u8[0];
                if (v155 > 3)
                {
                  v153 = 0;
                }

                else
                {
                  v153 = dword_183E219A0[v155];
                }

                v154 = v146 != 0.0;
                if (v146 == 0.0 && v149)
                {
                  v154 = *(v149 + 72) != 0;
                }

LABEL_155:
                v156 = v148[62].u8[0];
                if (v156 >= 2 && (v156 != 3 || v154))
                {
                  v148[62].i8[1] |= 1u;
                }

                v157 = vsubq_f64(v217, v207);
                v158 = vcvt_f32_f64(vdivq_f64(v157, v208));
                v159 = vdivq_f64(vaddq_f64(v157, v218), v208);
                v160 = vcvt_hight_f32_f64(v158, v159);
                v233 = v160;
                if ((v53 & 1) == 0)
                {
                  v160.i32[0] = *(v4 + 40);
                  if (v160.f32[0] != 0.0)
                  {
                    v161 = vdup_lane_s32(*v160.f32, 0);
                    *v233.f32 = vsub_f32(v158, v161);
                    *&v233.u32[2] = vadd_f32(v161, vcvt_f32_f64(v159));
                  }

                  v162 = *(v10 + 2);
                  v163 = v162[12];
                  v164 = v54[7];
                  v165.i64[0] = v164.i32[0];
                  v165.i64[1] = v164.i32[1];
                  __asm { FMOV            V3.2D, #-0.5 }

                  v162[2].i8[3] = 5;
                  v171 = *(v10 + 2);
                  v171[48] = vmul_f32(v163, 0x3F0000003F000000);
                  v171[49] = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v165), _Q3), vcvtq_f64_f32(v163)));
                }

                v172 = *(v1 + 41);
                v173 = *(v201 + 24);
                v238 = &v217;
                *&v239 = v173;
                DWORD2(v239) = v153 | v206;
                HIDWORD(v239) = v172;
                *&v241 = 0;
                *(&v241 + 1) = &v221;
                v174 = *(v1 + 24);
                v175 = *(v174 + 136);
                if (v175)
                {
                  v176 = *(v175 + 72);
                  if (v176)
                  {
                    CA::OGL::fill_uneven_round_rect_tex(v10, &v238, (v176 + 24), &v233, *(v174 + 44) & 3);
                    goto LABEL_174;
                  }

                  v177 = *(v175 + 56);
                  if (v177)
                  {
                    v178 = (*(*v177 + 80))(v177);
                    v179 = *(v1 + 24);
                    v180 = *(v179 + 136);
                    if (v180 && (v181 = *(v180 + 64)) != 0)
                    {
                      if (*(v181 + 16) > 3u)
                      {
                        v183 = vsubq_f64(*(v181 + 40), *(v181 + 24));
                        v227 = *(v181 + 24);
                        v228 = v183;
                      }

                      else
                      {
                        v227 = 0u;
                        v228 = 0u;
                      }
                    }

                    else
                    {
                      __asm { FMOV            V0.2D, #0.5 }

                      v227 = _Q0;
                      v228 = 0uLL;
                    }

                    CA::OGL::fill_corner_rect_tex(v10, &v238, v178, &v227, *(*(v1 + 16) + 24) & 1, HIWORD(*(v179 + 48)) & 1, &v233, *(v179 + 42) & 0xF, v146, v146, 0);
                    goto LABEL_174;
                  }
                }

                CA::OGL::fill_round_rect_tex(v10, &v238, &v233, *(v174 + 42) & 0xF, *(v174 + 44) & 3, 0, v146, v146);
LABEL_174:
                *(*(v10 + 2) + 497) &= ~1u;
                CA::OGL::Context::unbind_surface(v10, v54, 0);
                if (v53)
                {
                  CA::OGL::Context::release_surface(v10, v54);
                }

                *(*(v10 + 2) + 19) = 0;
                goto LABEL_16;
              }
            }

            v153 = 0;
            v154 = 1;
            goto LABEL_155;
          }
        }

LABEL_129:
        *(v6 + 100) = 1;
        goto LABEL_16;
      }

      v201 = v11;
      v205 = v10;
      v216[0] = v209;
      v216[1] = *cf;
      v26 = *v6;
      if (!*(*(*v6 + 672) + 8))
      {
        v87 = *(v7 + 624);
        if (v87)
        {
          v88 = *(v87 + 16);
          if (v88)
          {
            v89 = *(v87 + 24);
            if ((*(v89 + 13) & 1) != 0 && v88 == 1)
            {
              v90 = *(v26 + 656);
              if (*(v90 + 80) == 3 && *(*(v1 + 24) + 28) == 0.0 && *(v89 + 24) == 113)
              {
                v91 = *(v26 + 600);
                if (!v91 || (*(*(v6 + 1) + 1376) & 1) != 0 || (LOBYTE(v238) = 0, (*(*v91 + 80))(v91, CA::OGL::render_in_place_backdrop_with_color_matrix(CA::OGL::Renderer &,CA::OGL::Layer const*,CA::Render::BackdropGroup *,CA::Rect)::$_0::__invoke, &v238), (v238 & 1) == 0))
                {
                  *(&v243 + 1) = 0;
                  v244 = 0;
                  v236 = 0u;
                  v237 = 0u;
                  v234 = 0u;
                  v235 = 0u;
                  v233 = 0u;
                  v92 = *(v89 + 40);
                  CA::OGL::get_filter_color_matrix(v92, &v233);
                  v238 = __PAIR64__(DWORD1(v234), v233.u32[0]);
                  *&v239 = __PAIR64__(HIDWORD(v236), DWORD2(v235));
                  *(&v239 + 1) = __PAIR64__(DWORD2(v234), v233.u32[1]);
                  *&v240 = __PAIR64__(v237, HIDWORD(v235));
                  *(&v240 + 1) = __PAIR64__(HIDWORD(v234), v233.u32[2]);
                  *&v241 = __PAIR64__(DWORD1(v237), v236);
                  *(&v241 + 1) = __PAIR64__(v235, v233.u32[3]);
                  *&v242 = __PAIR64__(DWORD2(v237), DWORD1(v236));
                  *(&v242 + 1) = __PAIR64__(DWORD1(v235), v234);
                  *&v243 = __PAIR64__(HIDWORD(v237), DWORD2(v236));
                  float_key = CA::Render::KeyValueArray::get_float_key(v92, 358, 0.0);
                  if (initialized[0] != -1)
                  {
                    dispatch_once_f(initialized, 0, init_debug);
                  }

                  v94 = *&dword_1ED4E9760;
                  if (*&dword_1ED4E9760 == 0.0)
                  {
                    v94 = float_key;
                  }

                  v95 = powf(v94, 1.0 / *(v26 + 576));
                  int_key = CA::Render::KeyValueArray::get_int_key(*(v89 + 40), 359, 0);
                  if (BYTE14(xmmword_1ED4E98AC) == 1)
                  {
                    int_key = 1;
                  }

                  *(&v243 + 2) = v95;
                  *(&v243 + 3) = int_key;
                  v244 = 0;
                  v232 = 0;
                  v230 = 0u;
                  v231 = 0u;
                  v228 = 0u;
                  v229 = 0u;
                  v227 = 0u;
                  CA::OGL::copy_gstate(&v227, v90);
                  *(&v230 + 1) = &v238;
                  LOBYTE(v232) = 43;
                  *&v227 = CA::OGL::Context::set_gstate(v26, &v227);
                  *(*(v26 + 16) + 8) = v229;
                  v97 = *(v26 + 16);
                  if (*(v97 + 496) >= 2u)
                  {
                    *(v97 + 497) |= 1u;
                  }

                  v98 = *(v1 + 41);
                  v223 = v216;
                  v224 = v228.f64[1];
                  LODWORD(v225) = 0;
                  DWORD1(v225) = v98;
                  *(&v225 + 1) = 0;
                  v226 = 0uLL;
                  v99 = *(v1 + 24);
                  v100 = *(v99 + 136);
                  v101 = 0.0;
                  if (v100)
                  {
                    v102 = *(v100 + 56);
                    if (v102)
                    {
                      v103 = (*(*v102 + 80))(v102, 0.0);
                      v104 = *(v1 + 24);
                      v105 = *(v104 + 136);
                      if (v105)
                      {
                        v106 = *(v105 + 64);
                        if (v106)
                        {
                          if (*(v106 + 16) > 3u)
                          {
                            v187 = vsubq_f64(*(v106 + 40), *(v106 + 24));
                            v219 = *(v106 + 24);
                            v220 = v187;
                          }

                          else
                          {
                            v219 = 0u;
                            v220 = 0u;
                          }
                        }

                        else
                        {
                          __asm { FMOV            V0.2D, #0.5 }

                          v219 = _Q0;
                          v220 = 0uLL;
                        }

                        v185 = *(v105 + 232);
                      }

                      else
                      {
                        __asm { FMOV            V0.2D, #0.5 }

                        v219 = _Q0;
                        v220 = 0uLL;
                        v185 = 0.0;
                      }

                      CA::OGL::fill_corner_rect(v26, &v223, v103, v219.i64, *(*(v1 + 16) + 24) & 1, HIWORD(*(v104 + 48)) & 1, 15, v185, v185);
                      goto LABEL_184;
                    }

                    v101 = *(v100 + 232);
                  }

                  CA::OGL::fill_round_rect(v26, &v223, (*(v99 + 42) & 0xF), *(v99 + 44) & 3, v101, v101);
LABEL_184:
                  *(*(v26 + 16) + 497) &= ~1u;
                  CA::OGL::Context::set_gstate(v26, **(v26 + 656));
                  goto LABEL_16;
                }
              }
            }
          }
        }
      }

      v27 = 0;
      v28 = vcvt_f32_f64(*(v9 + 32));
      v29 = vadd_f32(vcvt_f32_f64(*(v9 + 48)), v28);
      *&v221 = v28;
      *(&v221 + 1) = __PAIR64__(v28.u32[1], v29.u32[0]);
      v28.i32[1] = v29.i32[1];
      *&v222 = v29;
      *(&v222 + 1) = v28;
      v30 = *(v201 + 24);
      do
      {
        CA::Transform::apply_to_point2(v30, (&v221 + v27), v24);
        v27 += 8;
      }

      while (v27 != 32);
      v33 = vbsl_s8(vcgt_f32(*(&v221 + 8), *&v221), *&v221, *(&v221 + 8));
      v34 = vbsl_s8(vcgt_f32(*(&v222 + 8), *&v222), *&v222, *(&v222 + 8));
      v35 = vbsl_s8(vcgt_f32(v34, v33), v33, v34);
      v36 = vbsl_s8(vcgt_f32(*&v221, *(&v221 + 8)), *&v221, *(&v221 + 8));
      *v31.i8 = vbsl_s8(vcgt_f32(*&v222, *(&v222 + 8)), *&v222, *(&v222 + 8));
      *v32.i8 = vcgt_f32(v36, *v31.i8);
      v37 = vsub_f32(vbsl_s8(*v32.i8, v36, *v31.i8), v35);
      v31.i32[0] = COERCE_UNSIGNED_INT(vaddv_f32(v37)) & 0x7FFFFFFF;
      v32.i32[0] = 2139095040;
      v38 = vdupq_lane_s32(*&vcgtq_s32(v32, v31), 0);
      v39 = vbslq_s8(v38, vcvtq_f64_f32(v37), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
      v40 = vceqzq_f64(v39);
      if ((vorrq_s8(vdupq_laneq_s64(v40, 1), v40).u64[0] & 0x8000000000000000) != 0 || (v41 = vceqq_f64(v39, v39), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v41), 1), v41).u64[0] & 0x8000000000000000) != 0))
      {
        v216[0] = 0uLL;
        v48 = 0;
        v47 = -1;
      }

      else
      {
        v42 = vbslq_s8(v38, vcvtq_f64_f32(v35), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL));
        v43 = vmaxnmq_f64(v42, vdupq_n_s64(0xC1BFFFFFFF000000));
        v44 = vminnmq_f64(vaddq_f64(v42, v39), vdupq_n_s64(0x41C0000000000000uLL));
        v45 = vcvtmq_s64_f64(v43);
        v46 = vsubq_s64(vcvtpq_s64_f64(v44), v45);
        v216[0] = vuzp1q_s32(v45, v46);
        v47 = vadd_s32(vmovn_s64(v45), -1);
        v48 = vmovn_s64(v46);
      }

      v10 = v205;
      if ((v206 & 9) != 0)
      {
        v55 = v48.i32[0];
        if (v48.i32[0] <= v48.i32[1])
        {
          v56 = v48.i32[1];
        }

        else
        {
          v56 = v48.i32[0];
        }

        if (v48.i32[0] >= v48.i32[1])
        {
          v55 = v48.i32[1];
        }

        if (v56 <= 1073741822 && v55 >= 1)
        {
          v58 = vadd_s32(v48, 0x200000002);
          v59 = vclez_s32(v58);
          if (vorr_s8(v59, vdup_lane_s32(v59, 1)).u8[0])
          {
            v60 = -1;
          }

          else
          {
            v60 = 0;
          }

          *&v216[0] = v47;
          *(&v216[0] + 1) = vbic_s8(v58, vdup_n_s32(v60));
        }
      }

      v215 = 0uLL;
      CA::Shape::get_bounds(*(*(v205 + 82) + 8), &v215);
      v61 = *(v205 + 84);
      if (v61)
      {
        v62 = v61 + 6;
      }

      else
      {
        v62 = (v205 + 608);
      }

      v63 = *(&v215 + 8);
      v64 = vclez_s32(*(&v215 + 8));
      if ((vpmax_u32(v64, v64).u32[0] & 0x80000000) == 0)
      {
        v65 = v62[1];
        v66 = vclez_s32(v65);
        if ((vpmax_u32(v66, v66).u32[0] & 0x80000000) != 0 || (*&v67 = vmax_s32(*&v215, *v62), v68 = vsub_s32(vmin_s32(vadd_s32(*&v215, *(&v215 + 8)), vadd_s32(*v62, v65)), *&v67), v69 = vclez_s32(v68), (vpmax_u32(v69, v69).u32[0] & 0x80000000) != 0))
        {
          v63 = 0;
          *(&v215 + 1) = 0;
        }

        else
        {
          *(&v67 + 1) = v68;
          v215 = v67;
          v63 = v68;
        }
      }

      v70 = vclez_s32(*(v216 + 8));
      if ((vpmax_u32(v70, v70).u32[0] & 0x80000000) == 0)
      {
        v71 = vclez_s32(v63);
        if ((vpmax_u32(v71, v71).u32[0] & 0x80000000) != 0 || (v72 = vadd_s32(*&v215, v63), *&v73 = vmax_s32(*&v216[0], *&v215), v74 = vsub_s32(vmin_s32(vadd_s32(*&v216[0], *(v216 + 8)), v72), *&v73), v75 = vclez_s32(v74), (vpmax_u32(v75, v75).u32[0] & 0x80000000) != 0))
        {
          *(&v216[0] + 1) = 0;
        }

        else
        {
          *(&v73 + 1) = v74;
          v216[0] = v73;
        }
      }

      v76 = (*(*v205 + 696))(v205, 1, v216, 2063, @"image-render-backdrop");
      v210 = v76;
      if (!v76)
      {
LABEL_124:
        LODWORD(v52) = 1.0;
        v53 = 1;
        goto LABEL_125;
      }

      v77 = v76;
      if (v1 && (v78 = *(v1 + 24)) != 0)
      {
        v80 = CA::Render::Layer::process_id(*(v78 + 152));
        v81 = *(v1 + 24);
        if (v81)
        {
          layer_resource_text = CA::Render::create_layer_resource_text(v81, v79);
LABEL_75:
          cfb = layer_resource_text;
          (*(*v205 + 888))(v205, v77, 0, v80, @"image-render-backdrop", layer_resource_text);
          v83 = *(*(v205 + 2) + 496);
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          CA::Shape::operator=(&v233, v216);
          v240 = 0u;
          v241 = 0u;
          v242 = 0u;
          v243 = 0u;
          v239 = 0u;
          v84 = *(v205 + 82);
          *(&v240 + 1) = 0x3C003C003C003C00;
          v241 = 0uLL;
          *&v242 = 0;
          WORD4(v243) = 1;
          v238 = 0;
          if (v84)
          {
            v239 = *(v84 + 8);
            *&v240 = *(v84 + 24);
            v85 = *(v84 + 64);
            WORD4(v243) = *(v84 + 80) & 0x100 | 1;
            v86 = WORD4(v243) | *(v84 + 80) & 0x400;
          }

          else
          {
            *(&v239 + 1) = 0;
            *&v240 = 0;
            v86 = 1025;
            v85 = 1.0;
          }

          *(&v242 + 2) = v85;
          WORD4(v243) = v86;
          *&v239 = &v233;
          v238 = CA::OGL::Context::set_gstate(v205, &v238);
          CA::OGL::Context::push_surface(v205, v77, 0, 8, 0);
          CA::OGL::capture_in_place_backdrop(v6, 0);
          v107 = *(v1 + 24);
          v108 = v107[2].f32[0];
          v223 = vcvt_f16_f32(v107[1]);
          CA::OGL::colormatched_layer_color(&v227, v6, v1, &v223, v108);
          v115 = v227;
          if (v227 | (WORD1(v227) << 16) | (WORD2(v227) << 32) & 0xFFFFFFFFFFFFLL | (WORD3(v227) << 48))
          {
            v198 = WORD2(v227) << 32;
            v199 = WORD3(v227) << 48;
            v197 = WORD1(v227) << 16;
            *(*(v205 + 2) + 16) = 0;
            *(*(v205 + 2) + 497) |= 1u;
            *(*(v205 + 2) + 496) = 3;
            v200 = v83;
            v116 = v216[0];
            v117 = DWORD1(v216[0]);
            v119 = DWORD2(v216[0]);
            v118 = HIDWORD(v216[0]);
            *(v205 + 18) = 0;
            *(v205 + 14) = v205 + 1386;
            *(v205 + 120) = xmmword_183E20E50;
            CA::OGL::Context::array_check(v205, 1);
            v120 = v116;
            v121 = v117;
            v122 = v119 + v116;
            v77 = v210;
            v123 = v122;
            v124 = v118 + v117;
            v83 = v200;
            v10 = v205;
            CA::OGL::Context::array_rect(v205, v120, v121, v123, v124);
            v125 = *(v10 + 17) + 48 * *(v10 + 18);
            v126 = v199 | v198 | v197 | v115;
            *(v125 - 160) = v126;
            *(v125 - 112) = v126;
            *(v125 - 64) = v126;
            *(v125 - 16) = v126;
            CA::OGL::Context::array_flush(v205);
          }

          *(*(v10 + 2) + 496) = v83;
          v127 = *(v7 + 624);
          if (v127)
          {
            v128 = *(v127 + 16);
            if (v128)
            {
              if (*(*(v127 + 24) + 13))
              {
LABEL_111:
                v219.i32[0] = 0;
                v131 = CA::OGL::prepare_filters(v6, v1, v127, 1, v219.i32, 1, 0);
                if (v131)
                {
                  v133 = v131;
                  v134 = v131;
                  do
                  {
                    v227 = v77;
                    v223 = 0x3F8000003F800000;
                    v132.n128_u32[0] = 1.0;
                    CA::OGL::emit_filter(v6, v134, v1, &v227, &v223, 0, 0, 0, v132, 0, 0, 0);
                    v135 = *(v77 + 148);
                    if ((v135 & 0x10) != 0 && (v136 = v133[6]) != 0)
                    {
                      if (CA::ColorMatrix::is_opaque_identity(v136))
                      {
                        v137 = 16;
                      }

                      else
                      {
                        v137 = 0;
                      }
                    }

                    else
                    {
                      v137 = 0;
                    }

                    v138 = v135 & 0xFFEF | v137;
                    v77 = v210;
                    v210[18].i16[2] = v138;
                    v134 = *v134;
                  }

                  while (v134);
                  do
                  {
                    v139 = *v133;
                    CA::OGL::finalize_filter(v133);
                    v133 = v139;
                  }

                  while (v139);
                }
              }

              else
              {
                v129 = 0;
                while (v128 - 1 != v129)
                {
                  v130 = *(v127 + 32 + 8 * v129++);
                  if (*(v130 + 13))
                  {
                    if (v129 >= v128)
                    {
                      break;
                    }

                    goto LABEL_111;
                  }
                }
              }
            }
          }

          if (BYTE1(xmmword_1ED4E97DC) == 1)
          {
            v232 = 0;
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v227 = 0u;
            CA::OGL::copy_gstate(&v227, *(v10 + 82));
            *&v228.f64[1] = &CA::identity_transform;
            *&v227 = CA::OGL::Context::set_gstate(v10, &v227);
            if ((*(v77 + 92) & 0x800) != 0)
            {
              v190 = 8388736;
            }

            else
            {
              v190 = 2155872384;
            }

            if (SDWORD2(v216[0]) <= SHIDWORD(v216[0]))
            {
              v191 = HIDWORD(v216[0]);
            }

            else
            {
              v191 = DWORD2(v216[0]);
            }

            v188.i32[0] = 1073741822;
            v189.i32[0] = v191;
            v192 = vdupq_lane_s32(*&vcgtq_s32(v189, v188), 0);
            v193.i64[0] = SLODWORD(v216[0]);
            v193.i64[1] = SDWORD1(v216[0]);
            v195 = vcvtq_f64_s64(v193);
            v194 = vbslq_s8(v192, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v195);
            *v195.i64 = SDWORD2(v216[0]);
            v196 = SHIDWORD(v216[0]);
            if (v191 > 1073741822)
            {
              *v195.i64 = 1.79769313e308;
              v196 = 1.79769313e308;
            }

            v219 = v194;
            *&v220.f64[0] = v195.i64[0];
            v220.f64[1] = v196;
            v223 = &v219;
            v224 = v228.f64[1];
            v225 = 0u;
            v226 = 0u;
            CA::OGL::fill_color_rect(v10, &v223, v190, 0.0, v195);
            CA::OGL::Context::set_gstate(v10, **(v10 + 82));
          }

          CA::OGL::Context::pop_surface(v10, v109, v127, v110, v111, v112, v113, v114);
          CA::OGL::Context::set_gstate(v10, **(v10 + 82));
          if (cfb)
          {
            CFRelease(cfb);
          }

          goto LABEL_124;
        }
      }

      else
      {
        v80 = 0;
      }

      layer_resource_text = 0;
      goto LABEL_75;
    }
  }
}

BOOL CA::OGL::PingPongState::create_surface(CA::OGL::PingPongState *this, unsigned int a2, const CA::Bounds *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = this + 88;
  v7 = *(this + a2 + 11);
  if (v7)
  {
    v8 = *(a3 + 2);
    if (v8 <= *(v7 + 40))
    {
      v9 = *(a3 + 3);
      v10 = v9 < 1 || v8 < 1;
      if (!v10 && v9 <= *(v7 + 44))
      {
        v14 = *this;
        v15 = *a3;
        v16 = v8;
        v17 = v9;
        (*(*v14 + 752))(v14);
        v12 = *&v6[8 * a2];
        return v12 != 0;
      }
    }

    CA::OGL::Context::release_surface(*this, v7);
    *&v6[8 * a2] = 0;
  }

  v12 = (*(**this + 696))(*this, 1, a3, *(this + 9), @"ping-pong-blur");
  *&v6[8 * a2] = v12;
  return v12 != 0;
}

uint64_t CA::OGL::BlurState::in_place_color_matrix(CA::OGL **this, const CA::ColorMatrix *a2, char a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v8 = *this;
      v9 = *this + 16;
      *(*v9 + 17) = 42;
      v10 = *(v8 + 84);
      CA::OGL::color_matrix_function(v8, a2, 0, 0, 1);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v25[0] = *(*v9 + 8);
      CA::OGL::PingPongState::render_pass_final_dest(*this, v11, v12, 0, v25);
LABEL_6:
      *(*v9 + 16) = 0;
      *(*v9 + 17) = 0;
      return 1;
    }

    if ((this[4] & 0x80000000) == 0)
    {
      v13 = *this;
      v9 = *this + 16;
      *(*v9 + 17) = 42;
      v14 = this[(this[4] & 1) + 11];
      CA::OGL::Context::push_surface(v13, v14, 0, 64, 0);
      CA::OGL::color_matrix_function(v13, a2, 0, 0, 1);
      *(v13 + 144) = 0;
      *(v13 + 112) = v13 + 1386;
      *(v13 + 120) = xmmword_183E20E50;
      v15 = *(v14 + 12);
      v16 = *(v14 + 13);
      v25[0] = *(*v9 + 8);
      CA::OGL::PingPongState::render_pass(this, v15, v16, 1, v25, 1.0, 1.0, 0.0, 0.0);
      CA::OGL::Context::array_flush(v13);
      CA::OGL::Context::pop_surface(v13, v17, v18, v19, v20, v21, v22, v23);
      goto LABEL_6;
    }
  }

  return 0;
}

float32x2_t CA::Transform::apply_to_point2(float64x2_t *this, double *a2, float *a3)
{
  v3 = LOBYTE(this[9].f64[0]);
  if ((v3 & 0x10) != 0)
  {
    return CA::Mat4Impl::mat4_apply_to_point2(this, a2, a3);
  }

  if ((LOBYTE(this[9].f64[0]) & 8) == 0)
  {
    v4.i32[0] = *a2;
    if ((LOBYTE(this[9].f64[0]) & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a2), this[8].f64[0]));
  *a2 = *&v4;
  v3 = LOBYTE(this[9].f64[0]);
  if ((v3 & 4) != 0)
  {
LABEL_7:
    v6 = *(a2 + 1);
    *(a2 + 1) = v4.i32[0];
    v4.f32[0] = -v6;
    *a2 = -v6;
    v3 = LOBYTE(this[9].f64[0]);
  }

LABEL_8:
  if ((v3 & 2) != 0)
  {
    v4.f32[0] = -v4.f32[0];
    *a2 = v4.i32[0];
    v3 = LOBYTE(this[9].f64[0]);
  }

  v7 = *(a2 + 1);
  if (v3)
  {
    v7 = -v7;
  }

  v4.f32[1] = v7;
  result = vcvt_f32_f64(vaddq_f64(this[6], vcvtq_f64_f32(v4)));
  *a2 = *&result;
  return result;
}

float32x2_t CA::OGL::anonymous namespace::BackdropRectState::map(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a1 + 48);
    v5 = a3 + 2;
    do
    {
      v6 = v5;
      result = vld1_dup_f32(v6++);
      v8 = vmla_f32(*v4, result, vsub_f32(v4[1], *v4));
      *v5 = vmla_n_f32(v8, vmla_f32(vsub_f32(v4[3], v8), result, vsub_f32(v4[2], v4[3])), *v6);
      v5 += 6;
      --a4;
    }

    while (a4);
  }

  return result;
}

void CA::OGL::anonymous namespace::BackdropRectState::post_map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (a2 + 8);
    do
    {
      v4 = v3[1];
      if (v4 != 1.0)
      {
        v5 = 1.0 / v4;
        *(v3 - 1) = vmul_n_f32(*(v3 - 2), v5);
        *v3 = *v3 * v5;
        v3[1] = 1.0;
      }

      v3 += 12;
      --a3;
    }

    while (a3);
  }
}

void CA::OGL::anonymous namespace::clear_backdrop_edges(CA::OGL::_anonymous_namespace_ *this, CA::OGL::Context *a2, const CA::Shape *a3, const CA::Shape *a4, float a5)
{
  v18[3] = *MEMORY[0x1E69E9840];
  *(*(this + 2) + 16) = 0;
  *(this + 18) = 0;
  v8 = this + 1386;
  *(this + 14) = this + 1386;
  *(this + 120) = xmmword_183E20E50;
  v9 = CA::Shape::dilate(a2, (16.0 / a5 + 1.0), (16.0 / a5 + 1.0));
  v12 = CA::Shape::subtract(v9, a3, v10, v11);
  v16 = 0;
  v17 = 0;
  v18[1] = 0;
  v18[2] = 0;
  v18[0] = v12;
  while (CA::ShapeIterator::iterate(v18, &v16))
  {
    if (*(this + 27))
    {
      v13 = 6;
    }

    else
    {
      v13 = 4;
    }

    if ((*(this + 18) + 4) > *(this + 19) || (v14 = *(this + 16)) != 0 && *(this + 15) + v13 > v14)
    {
      *(this + 692) |= 0x20u;
      CA::OGL::Context::array_flush(this);
      *(this + 18) = 0;
      *(this + 14) = v8;
      *(this + 120) = xmmword_183E20E50;
    }

    CA::OGL::Context::array_rect(this, floorf(v16 * a5), floorf(SHIDWORD(v16) * a5), ceilf((v17 + v16) * a5), ceilf((HIDWORD(v17) + HIDWORD(v16)) * a5));
    v15 = *(this + 17) + 48 * *(this + 18);
    *(v15 - 160) = 0;
    *(v15 - 112) = 0;
    *(v15 - 64) = 0;
    *(v15 - 16) = 0;
  }

  CA::OGL::Context::array_flush(this);
  if (v12)
  {
    CA::Shape::unref(v12);
  }

  if (v9)
  {

    CA::Shape::unref(v9);
  }
}

void CA::OGL::Context::blur_surface(uint64_t a1, const CA::Bounds *a2, float32x2_t *a3, _DWORD *a4, float a5, float a6, double a7, double a8, float64x2_t a9)
{
  v442 = *MEMORY[0x1E69E9840];
  if (BYTE6(xmmword_1ED4E97EC) == 1)
  {
    PerfHud = CA::OGL::GetPerfHud(a1);
    if (PerfHud)
    {
      ++*(PerfHud + 520);
    }
  }

  if (*(a2 + 10) && *(a2 + 11) && (a3->i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (a3->i32[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((a3[9].i8[0] & 8) != 0)
    {
      v16 = (*(a2 + 23) & 0x30) != 0;
      v15 = (*(*(a1 + 672) + 92) & 0x30) == 0;
      v393 = (*(*(a1 + 672) + 92) & 0x30) != 0;
      v17 = a3[4];
      if ((*(a2 + 23) & 0x30) == 0)
      {
        v400 = 1;
        v402 = (*(*a1 + 736))(a1, a2, 1);
        v16 = 0;
LABEL_11:
        v413 = 0uLL;
        v18 = a3[3];
        v404 = a4;
        v390 = a2;
        if (!*&v18)
        {
          v37 = 0;
          v38 = a3[9].u8[0];
          goto LABEL_43;
        }

        v19 = **&v18;
        v20 = *(*&v18 + 16);
        if (a6 != 1.0)
        {
          v21 = a6;
          a9.f64[0] = 1.79769313e308;
          v22 = vdupq_lane_s64(vcgtq_f64(a9, v20).i64[0], 0);
          v23.i64[1] = *(*&v18 + 8);
          *v23.i64 = a6 * v19.f64[0];
          v19 = vbslq_s8(v22, v23, v19);
          v23.i64[1] = *(*&v18 + 24);
          *v23.i64 = a6 * v20.f64[0];
          v20 = vbslq_s8(v22, v23, v20);
          if (v20.f64[1] < 1.79769313e308)
          {
            v19.f64[1] = vmuld_lane_f64(v21, v19, 1);
            v20.f64[1] = v20.f64[1] * v21;
          }
        }

        v24 = vceqzq_f64(v20);
        if ((vorrq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) != 0 || (v25 = vceqq_f64(v20, v20), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v25), 1), v25).u64[0] & 0x8000000000000000) != 0))
        {
          v30 = 0;
        }

        else
        {
          v26 = vmaxnmq_f64(v19, vdupq_n_s64(0xC1BFFFFFFF000000));
          v27 = vminnmq_f64(vaddq_f64(v19, v20), vdupq_n_s64(0x41C0000000000000uLL));
          v28 = vcvtmq_s64_f64(v26);
          v29 = vsubq_s64(vcvtpq_s64_f64(v27), v28);
          v413 = vuzp1q_s32(v28, v29);
          v30 = vmovn_s64(v29);
        }

        if (v17)
        {
          __dst[0] = 0uLL;
          CA::Shape::get_bounds(*&v17, __dst);
          v30 = v413.u64[1];
          v31 = *(__dst + 8);
          v32 = vclez_s32(v413.u64[1]);
          v33 = vpmax_u32(v32, v32).u32[0];
          v34 = vclez_s32(*(__dst + 8));
          v35 = vpmax_u32(v34, v34).u32[0];
          if ((v33 & 0x80000000) != 0)
          {
            if ((v35 & 0x80000000) == 0)
            {
              v36 = *&__dst[0];
              goto LABEL_27;
            }
          }

          else if ((v35 & 0x80000000) == 0)
          {
            v36 = vmin_s32(*v413.i8, *&__dst[0]);
            v31 = vsub_s32(vmax_s32(vadd_s32(*v413.i8, v413.u64[1]), vadd_s32(*&__dst[0], *(__dst + 8))), v36);
LABEL_27:
            *v413.i8 = v36;
            v413.u64[1] = v31;
            v30 = v31;
          }
        }

        v38 = a3[9].u8[0];
        if ((v38 & 1) == 0)
        {
          v39 = v30.i32[1];
          if (v30.i32[0] <= v30.i32[1])
          {
            v40 = v30.i32[1];
          }

          else
          {
            v40 = v30.i32[0];
          }

          if (v30.i32[0] < v30.i32[1])
          {
            v39 = v30.i32[0];
          }

          if (v40 <= 1073741822 && v39 >= 1)
          {
            v41 = vadd_s32(*v413.i8, 0x100000001);
            v42 = vadd_s32(v30, 0x100000001);
            v43 = vclez_s32(v42);
            if (vorr_s8(v43, vdup_lane_s32(v43, 1)).u8[0])
            {
              v44 = -1;
            }

            else
            {
              v44 = 0;
            }

            *v413.i8 = v41;
            v413.u64[1] = vbic_s8(v42, vdup_n_s32(v44));
          }
        }

        if (a3[3])
        {
          v37 = &v413;
        }

        else
        {
          v37 = 0;
        }

LABEL_43:
        v437 = 0u;
        v438 = 0u;
        v435 = 0u;
        v436 = 0u;
        v433 = 0u;
        v434 = 0u;
        v45 = a3[5];
        v46 = ((v38 & 4) << 15) ^ 0x20000 | a3[6].i32[1];
        v430 = a1;
        v431 = v402;
        v432 = *(v402 + 3);
        LOWORD(v433) = -1;
        BYTE2(v433) = 1;
        DWORD1(v433) = v46;
        __asm { FMOV            V0.2S, #1.0 }

        v436 = _D0;
        *&v437 = 0;
        if (v17)
        {
          *(&v433 + 1) = CA::Shape::ref(*&v17, a2);
          v38 = a3[9].u8[0];
        }

        DWORD2(v437) = a3[6].i32[0];
        *&v438 = v45;
        if (v400)
        {
          v51 = 2;
        }

        else
        {
          v51 = 0;
        }

        if (v15)
        {
          v52 = 4;
        }

        else
        {
          v52 = 0;
        }

        if (v37)
        {
          ++v51;
        }

        BYTE8(v438) = v51 | (v38 >> 1) & 8 | v52;
        if (v400)
        {
          DWORD1(v433) = v46 | 0x80;
        }

        __dst[0] = 0uLL;
        CA::Shape::get_bounds(*(*(a1 + 656) + 8), __dst);
        v55 = *(a1 + 672);
        if (v55)
        {
          v56 = v55 + 6;
        }

        else
        {
          v56 = (a1 + 608);
        }

        v57 = *(__dst + 8);
        v58 = vclez_s32(*(__dst + 8));
        *v53.i8 = vpmax_u32(v58, v58);
        if ((v53.i32[0] & 0x80000000) == 0)
        {
          *v53.i8 = v56[1];
          v59 = vclez_s32(*v53.i8);
          *v54.i8 = vpmax_u32(v59, v59);
          if (v54.i32[0] < 0 || (v60 = vadd_s32(*v56, *v53.i8), *v53.i8 = vmax_s32(*&__dst[0], *v56), v57 = vsub_s32(vmin_s32(vadd_s32(*&__dst[0], *(__dst + 8)), v60), *v53.i8), v61 = vclez_s32(v57), *v54.i8 = vpmax_u32(v61, v61), v54.i32[0] < 0))
          {
            v57 = 0;
          }

          else
          {
            v53.u64[1] = v57;
            __dst[0] = v53;
          }
        }

        v62 = v57.i32[1];
        if (v57.i32[0] > v57.i32[1])
        {
          v62 = v57.i32[0];
        }

        v53.i32[0] = v62;
        v54.i32[0] = 1073741822;
        v63.i64[0] = SLODWORD(__dst[0]);
        v63.i64[1] = SDWORD1(__dst[0]);
        v64 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v53, v54), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v63));
        v63.i64[0] = v57.i32[0];
        v63.i64[1] = v57.i32[1];
        v65 = vcvtq_f64_s64(v63);
        v66 = vdup_n_s32(v62 > 1073741822);
        v63.i64[0] = v66.u32[0];
        v63.i64[1] = v66.u32[1];
        v67 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v63, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v65);
        v68 = vsubq_f64(v64, vcvtq_f64_f32(a3[1]));
        v69 = a6 / a5;
        v70 = (a6 / a5);
        _ZF = *v67.i64 >= 1.79769313e308 || v69 == 1.0;
        v72.i64[1] = v68.i64[1];
        v73.i64[1] = v67.i64[1];
        if (_ZF)
        {
          v74 = 0;
        }

        else
        {
          v74 = -1;
        }

        v75 = vdupq_n_s64(v74);
        *v73.i64 = v70 * *v67.i64;
        v76 = vbslq_s8(v75, v73, v67);
        *v72.i64 = v70 * *v68.i64;
        v77 = vbslq_s8(v75, v72, v68);
        if (v69 != 1.0 && v76.f64[1] < 1.79769313e308)
        {
          v77.f64[1] = vmuld_lane_f64(v70, v77, 1);
          v76.f64[1] = v76.f64[1] * v70;
        }

        v78 = vceqzq_f64(v76);
        if ((vorrq_s8(vdupq_laneq_s64(v78, 1), v78).u64[0] & 0x8000000000000000) != 0 || (v79 = vceqq_f64(v76, v76), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v79), 1), v79).u64[0] & 0x8000000000000000) != 0))
        {
          __dst[0] = 0uLL;
          v84 = 0;
          v83 = 0;
          v85 = 0;
        }

        else
        {
          v80 = vcvtmq_s64_f64(vmaxnmq_f64(v77, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v81 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v77, v76), vdupq_n_s64(0x41C0000000000000uLL))), v80);
          v82 = vuzp1q_s32(v80, v81);
          __dst[0] = v82;
          v83 = vmovn_s64(v81);
          v83.i32[0] = v82.i32[2];
          v84 = v82.u64[1];
          v85 = vmovn_s64(v80);
          v85.i32[0] = v80.i32[0];
        }

        v86 = v83.i32[1];
        if (v83.i32[0] <= v83.i32[1])
        {
          v87 = v83.i32[1];
        }

        else
        {
          v87 = v83.i32[0];
        }

        if (v83.i32[0] < v83.i32[1])
        {
          v86 = v83.i32[0];
        }

        if (v87 <= 1073741822 && v86 >= 1)
        {
          v88 = vcvt_s32_f32(vneg_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*a3), vdupq_n_s64(0x4006666666666666uLL))))));
          v89 = vadd_s32(v85, v88);
          v90 = vsub_s32(v83, vadd_s32(v88, v88));
          v91 = vclez_s32(v90);
          *&__dst[0] = v89;
          *(&__dst[0] + 1) = v90;
          v84 = vand_s8(v90, vdup_lane_s32(vmvn_s8(vorr_s8(v91, vdup_lane_s32(v91, 1))), 0));
        }

        if (BYTE8(v438))
        {
          v92 = vclez_s32(v84);
          if ((vpmax_u32(v92, v92).u32[0] & 0x80000000) == 0)
          {
            v93 = v37[1];
            v94 = vclez_s32(v93);
            if ((vpmax_u32(v94, v94).u32[0] & 0x80000000) != 0 || (v95 = vadd_s32(*&__dst[0], v84), *&v96 = vmax_s32(*&__dst[0], *v37), v97 = vsub_s32(vmin_s32(v95, vadd_s32(*v37, v93)), *&v96), v98 = vclez_s32(v97), (vpmax_u32(v98, v98).u32[0] & 0x80000000) != 0))
            {
              v84 = 0;
            }

            else
            {
              *(&v96 + 1) = v97;
              __dst[0] = v96;
              v84 = v97;
            }
          }
        }

        v99 = v404;
        v100 = *(&v432 + 8);
        v101 = vclez_s32(*(&v432 + 8));
        if ((vpmax_u32(v101, v101).u32[0] & 0x80000000) != 0)
        {
          v104 = *(&v432 + 8);
        }

        else
        {
          v102 = vclez_s32(v84);
          if ((vpmax_u32(v102, v102).u32[0] & 0x80000000) != 0 || (*&v103 = vmax_s32(*&v432, *&__dst[0]), v104 = vsub_s32(vmin_s32(vadd_s32(*&v432, *(&v432 + 8)), vadd_s32(*&__dst[0], v84)), *&v103), v105 = vclez_s32(v104), (vpmax_u32(v105, v105).u32[0] & 0x80000000) != 0))
          {
            v100 = 0;
            *(&v432 + 1) = 0;
            v104 = 0;
          }

          else
          {
            *(&v103 + 1) = v104;
            v432 = v103;
            v100 = v104;
          }
        }

        v106 = v104.i32[0];
        if (v104.i32[0] >= v104.i32[1])
        {
          v107 = v104.i32[1];
        }

        else
        {
          v107 = v104.i32[0];
        }

        if (!v404 && v107 < 1)
        {
          goto LABEL_460;
        }

        v406 = v100;
        v385 = a3 + 1;
        DWORD1(v433) |= *(v402 + 23) & 0x30;
        v412.i64[0] = v432;
        v412.u64[1] = v104;
        if (v104.i32[0] <= v104.i32[1])
        {
          v106 = v104.i32[1];
        }

        if (v106 <= 1073741822 && v107 >= 1)
        {
          v108.i64[0] = v432;
          v108.u64[1] = v104;
          v412 = vaddq_s32(v108, xmmword_183E20FD0);
          v109 = vclez_s32(*&vextq_s8(v412, v412, 8uLL));
          if (vorr_s8(v109, vdup_lane_s32(v109, 1)).u8[0])
          {
            v412.i64[1] = 0;
          }
        }

        memset(__dst, 0, 504);
        v110 = *(a1 + 16);
        v397 = v432;
        memcpy(__dst, v110, 0x1F8uLL);
        *&__dst[0] = v110;
        *(a1 + 16) = __dst;
        *v111.i8 = v397;
        v111.u64[1] = vadd_s32(v406, v397);
        v434 = vcvtq_f32_s32(v111);
        v112 = 0uLL;
        if (v16)
        {
          v113 = v430;
          memset(&v439[8], 0, 80);
          v114 = *(v430 + 82);
          *&v439[32] = 0x3C003C003C003C00;
          memset(&v439[40], 0, 24);
          *&v439[80] = 1;
          *v439 = 0;
          if (v114)
          {
            *&v439[8] = *(v114 + 8);
            *&v439[24] = *(v114 + 24);
            v115 = *(v114 + 64);
            *&v439[80] = *(v114 + 80) & 0x100 | 1;
            v116 = *&v439[80] | *(v114 + 80) & 0x400;
          }

          else
          {
            memset(&v439[8], 0, 24);
            v116 = 1025;
            v115 = 1.0;
          }

          *&v439[64] = v115;
          *&v439[80] = v116;
          if (v438)
          {
            *&v439[8] = v438;
          }

          *v439 = CA::OGL::Context::set_gstate(v430, v439);
          *(*(v113 + 2) + 16) = 97;
          *(*(v113 + 2) + 17) = 42;
          *(*(v113 + 2) + 497) &= ~1u;
          CA::OGL::Context::push_surface(v113, v431, 0, 64, 0);
          if (v438)
          {
            v414 = 0uLL;
            CA::Shape::get_bounds(*(*(v113 + 82) + 8), &v414);
            v119 = *(v113 + 84);
            if (v119)
            {
              v120 = v119 + 6;
            }

            else
            {
              v120 = (v113 + 608);
            }

            v121 = v414.u64[1];
            v122 = vclez_s32(v414.u64[1]);
            *v117.i8 = vpmax_u32(v122, v122);
            if ((v117.i32[0] & 0x80000000) == 0)
            {
              *v117.i8 = v120[1];
              v123 = vclez_s32(*v117.i8);
              *v118.i8 = vpmax_u32(v123, v123);
              if (v118.i32[0] < 0 || (v124 = vadd_s32(*v120, *v117.i8), *v117.i8 = vmax_s32(*v414.i8, *v120), v121 = vsub_s32(vmin_s32(vadd_s32(*v414.i8, v414.u64[1]), v124), *v117.i8), v125 = vclez_s32(v121), *v118.i8 = vpmax_u32(v125, v125), v118.i32[0] < 0))
              {
                v121 = 0;
              }

              else
              {
                v117.u64[1] = v121;
                v414 = v117;
              }
            }

            v135 = v121.i32[0];
            if (v121.i32[0] <= v121.i32[1])
            {
              v135 = v121.i32[1];
            }

            v117.i32[0] = v135;
            v118.i32[0] = 1073741822;
            v136.i64[0] = v414.i32[0];
            v136.i64[1] = v414.i32[1];
            v137 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v117, v118), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v136));
            v136.i64[0] = v121.i32[0];
            v136.i64[1] = v121.i32[1];
            v138 = vcvtq_f64_s64(v136);
            v139 = vdup_n_s32(v135 > 1073741822);
            v136.i64[0] = v139.u32[0];
            v136.i64[1] = v139.u32[1];
            v420 = v137;
            v421 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v136, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v138);
            v425 = &v420;
            *v426 = &CA::identity_transform;
            memset(&v426[8], 0, 32);
            CA::OGL::emit_one_part_rect(v113, &v425, 0, 0, 0);
          }

          else
          {
            *(v113 + 18) = 0;
            *(v113 + 14) = v113 + 1386;
            *(v113 + 120) = xmmword_183E20E50;
            v126 = *(v431 + 12);
            v127 = *(v431 + 13);
            v425 = 0;
            CA::OGL::PingPongState::render_pass(&v430, v126, v127, 0, &v425, 1.0, 1.0, 0.0, 0.0);
            CA::OGL::Context::array_flush(v113);
          }

          CA::OGL::Context::pop_surface(v113, v128, v129, v130, v131, v132, v133, v134);
          *(*(v113 + 2) + 17) = 0;
          *(*(v113 + 2) + 16) = 0;
          CA::OGL::Context::set_gstate(v113, **(v113 + 82));
          v112 = 0uLL;
        }

        *&v426[32] = v112;
        v427 = v112;
        v428 = v112;
        *v426 = v112;
        *&v426[16] = v112;
        v140 = *(a1 + 656);
        *&v426[24] = 0x3C003C003C003C00;
        *&v426[40] = 0;
        *&v426[32] = 0;
        *&v427 = 0;
        WORD4(v428) = 1;
        v425 = 0;
        if (v140)
        {
          v141 = *(v140 + 64);
          WORD4(v428) = *(v140 + 80) & 0x100 | 1;
          v142 = WORD4(v428) | *(v140 + 80) & 0x400;
        }

        else
        {
          v142 = 1025;
          v141 = 1.0;
        }

        *(&v427 + 2) = v141;
        WORD4(v428) = v142;
        *&v426[16] = &CA::identity_transform;
        memset(v424, 0, 48);
        CA::Shape::operator=(v424, v412.i32);
        if (v17)
        {
          v143 = v17;
        }

        else
        {
          v143 = v424;
        }

        *v426 = v143;
        *&v426[8] = 0;
        v425 = CA::OGL::Context::set_gstate(a1, &v425);
        v387 = *(a1 + 64);
        *(*(a1 + 16) + 497) &= ~1u;
        *(a1 + 64) = 0;
        *(*(a1 + 16) + 16) = 0;
        v398 = a3;
        if (a3[3])
        {
          if ((a3[9].i8[0] & 1) == 0)
          {
            if (*(v402 + 6) != v413.i64[0] || (v145 = *(v402 + 14), v145 != v413.i32[2]) || (v146 = *(v402 + 15), v146 != v413.i32[3]) || *(v402 + 10) != v145 || *(v402 + 11) != v146)
            {
              v147 = a3[6].i32[0] ? 16.0 : 32.0;
              v148 = v430;
              if (CA::OGL::PingPongState::attach_dest(&v430, 1, v147))
              {
                v149 = &v436 + (v433 & 1) + 1;
                if ((v433 & 0x8000u) != 0)
                {
                  v149 = &v431;
                }

                v150 = *v149;
                v152 = *(*v149 + 52);
                v420.i32[0] = *(*v149 + 48);
                v151 = v420.i32[0];
                v420.i32[1] = v152;
                CA::OGL::Context::bind_surface(v430, v150, 0, 1u, 1, 0.0);
                *&v439[80] = 0;
                memset(&v439[16], 0, 64);
                *v439 = 0u;
                v153 = *(v148 + 82);
                *&v439[8] = *(v153 + 8);
                v154 = *(v153 + 24);
                v155 = *(v153 + 32);
                *&v439[40] = *(v153 + 40);
                v156 = *(v153 + 56);
                *&v439[32] = v155;
                *&v439[56] = v156;
                LOWORD(v155) = *(v153 + 80);
                *&v439[80] = v155;
                v157 = *(v153 + 64);
                *&v439[80] = *(v153 + 80) & 0x100 | v155;
                LOWORD(v155) = *&v439[80] | *(v153 + 80) & 0x400;
                *&v439[64] = v157;
                *&v439[80] = v155;
                *&v439[72] = *(v153 + 72);
                *&v439[24] = v154;
                *&v439[8] = &CA::Shape::_infinite_shape;
                *v439 = CA::OGL::Context::set_gstate(v148, v439);
                CA::OGL::BlurState::process_edges(&v430, v147, 1.0, 1.0, v420.i32);
                *(*(v148 + 2) + 16) = 1;
                *(v148 + 18) = 0;
                *(v148 + 14) = v148 + 1386;
                *(v148 + 120) = xmmword_183E20E50;
                v414.i64[0] = 0;
                CA::OGL::PingPongState::render_pass(&v430, v151, v152, 0, v414.i64, 1.0, 1.0, 0.0, 0.0);
                CA::OGL::Context::array_flush(v148);
                v158 = &v436 + (v433 & 1) + 1;
                if ((v433 & 0x8000u) != 0)
                {
                  v158 = &v431;
                }

                CA::OGL::Context::unbind_surface(v430, *v158, 0);
                CA::OGL::Context::pop_surface(v430, v159, v160, v161, v162, v163, v164, v165);
                LOWORD(v433) = v433 + 1;
                *(*(v148 + 2) + 16) = 0;
                CA::OGL::Context::set_gstate(v148, **(v148 + 82));
              }
            }
          }
        }

        v388 = a5;
        if (DWORD2(v437) == 2)
        {
          LODWORD(v144) = 1.0;
          CA::OGL::PingPongState::scale_and_dilate(&v430, v144, 1.0, 1u, 1u);
        }

        v166 = a3[9].i8[0];
        v167 = fminf(a3->f32[0] * a3->f32[0], 100000000.0);
        v168 = fminf(a3->f32[1] * a3->f32[1], 100000000.0);
        v169 = (*(*a1 + 232))(a1, 15);
        if (v169 >= 27)
        {
          v170 = 27;
        }

        else
        {
          v170 = v169;
        }

        if (v170 <= 15)
        {
          v171 = 15;
        }

        else
        {
          v171 = v170;
        }

        if (v169 <= 26)
        {
          v172 = 5.25;
          if (v169 <= 22)
          {
            v172 = 4.35;
            if (v169 <= 18)
            {
              v172 = 3.5;
            }
          }
        }

        else
        {
          v172 = 6.1;
        }

        v173 = v167;
        v174 = v168;
        v389 = v17;
        v386 = v172;
        if ((v166 & 4) != 0)
        {
          v181 = (v166 & 2) == 0;
          v182 = fmax(v173, v174) > 100.0;
          v183 = v181 && v182;
          if (v181 && v182)
          {
            v184 = 7.5;
          }

          else
          {
            v184 = 3.5;
          }

          if ((*(*a1 + 232))(a1, 13))
          {
LABEL_180:
            v187 = v174 * 0.0625 + -1.1025;
            while (1)
            {
              v188 = v173 * 0.0625 + -1.1025;
              if (v188 < v184)
              {
                break;
              }

              _Q0.n128_u32[0] = 0.25;
              CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 1.0, 4u, 0);
              CA::OGL::BlurState::downsample_blur_4(&v430, 4.0, 1.0, flt_183E22A28, v189);
              v173 = v173 * 0.0625 + -1.1025;
              if (v187 >= v184)
              {
LABEL_185:
                _Q0.n128_u32[0] = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 0.25, 0, 4u);
                v174 = v174 * 0.0625 + -1.1025;
                v173 = v188;
                goto LABEL_180;
              }
            }

            v188 = v173;
            if (v187 >= v184)
            {
              goto LABEL_185;
            }
          }

          _Q0.n128_u32[1] = 1076396032;
          if (v183)
          {
            v191 = 56.25;
          }

          else
          {
            v191 = 12.25;
          }

          v192 = v174 > v191;
          v193 = v173 > v191;
          if (v173 <= v191 && v174 <= v191)
          {
            v195 = v398;
          }

          else
          {
            v195 = v398;
            do
            {
              if (v193)
              {
                _Q0.n128_u32[0] = 0.5;
                CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 1.0, 2u, 0);
                CA::OGL::BlurState::downsample_blur_2(&v430, 2.0, 1.0, flt_183E22A7C, v196);
                v173 = v173 * 0.25 + -2.56;
              }

              if (v192)
              {
                _Q0.n128_u32[0] = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 0.5, 0, 2u);
                v174 = v174 * 0.25 + -2.56;
              }

              v192 = v174 > v191;
              v193 = v173 > v191;
            }

            while (v173 > v191 || v174 > v191);
          }
        }

        else
        {
          if ((v166 & 2) != 0)
          {
            v180 = 20.0;
            v394 = 5.5;
            v383 = 3.5;
          }

          else
          {
            v175 = fmax(v173, v174);
            v176 = 5.5;
            if (v175 <= 100.0)
            {
              v177 = 3.5;
            }

            else
            {
              v177 = 5.5;
            }

            if (v175 > 100.0)
            {
              v176 = 9.5;
            }

            v178 = v177 + 1.0;
            v179 = v176 + 1.0;
            if (v175 > 3600.0)
            {
              v180 = 21.0;
            }

            else
            {
              v178 = v177;
              v179 = v176;
              v180 = 20.0;
            }

            if (v175 <= 10000.0)
            {
              v394 = v179;
              v383 = v178;
            }

            else
            {
              v383 = v178 + 1.0;
              v394 = v179 + 1.0;
              v180 = v180 + 1.0;
            }
          }

          if ((*(*a1 + 232))(a1, 14))
          {
            v199 = v180 * v180;
            if (v180 * v180 < v173 && v199 < v174)
            {
              _Q0.n128_u32[1] = 0;
              do
              {
                _Q0.n128_u32[0] = 0.125;
                CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 0.125, 0, 0);
                if ((CA::OGL::BlurState::tile_downsample(&v430, 8) & 1) == 0)
                {
                  v200 = v430;
                  v201 = (BYTE8(v438) & 1) != 0 ? 16 : 32;
                  if (CA::OGL::PingPongState::attach_dest(&v430, 1, v201))
                  {
                    v202 = &v436 + (v433 & 1) + 1;
                    if ((v433 & 0x8000u) != 0)
                    {
                      v202 = &v431;
                    }

                    v203 = *v202;
                    v204 = *(*v202 + 48);
                    v205 = *(*v202 + 52);
                    *v439 = v204;
                    *&v439[4] = v205;
                    CA::OGL::Context::bind_surface(v430, v203, 0, 1u, 1, 0.0);
                    v206 = 16.0;
                    if ((BYTE8(v438) & 1) == 0)
                    {
                      v206 = 32.0;
                    }

                    CA::OGL::BlurState::process_edges(&v430, v206, 8.0, 8.0, v439);
                    *(*(v200 + 2) + 16) = 29;
                    v207 = *(v200 + 2);
                    v208 = *(v207 + 96);
                    v209 = *(v207 + 100);
                    *(v200 + 40) = v208;
                    *(v200 + 41) = v209;
                    *(v200 + 42) = v208;
                    *(v200 + 43) = v209 * 3.0;
                    *(v200 + 44) = v208 * 3.0;
                    *(v200 + 45) = v209;
                    *(v200 + 46) = v208 * 3.0;
                    *(v200 + 47) = v209 * 3.0;
                    *(v200 + 18) = 0;
                    *(v200 + 14) = v200 + 1386;
                    *(v200 + 120) = xmmword_183E20E50;
                    v420.i64[0] = 0;
                    CA::OGL::PingPongState::render_pass(&v430, v204, v205, 0, v420.i64, 8.0, 8.0, 0.0, 0.0);
                    CA::OGL::Context::array_flush(v200);
                    v210 = &v436 + (v433 & 1) + 1;
                    if ((v433 & 0x8000u) != 0)
                    {
                      v210 = &v431;
                    }

                    CA::OGL::Context::unbind_surface(v430, *v210, 0);
                    *(*(v200 + 2) + 16) = 0;
                    CA::OGL::Context::pop_surface(v430, v211, v212, v213, v214, v215, v216, v217);
                    LOWORD(v433) = v433 + 1;
                  }
                }

                v173 = v173 * 0.015625 + -0.140625;
                v174 = v174 * 0.015625 + -0.140625;
              }

              while (v173 > v199 && v174 > v199);
            }
          }

          v219 = v394 * v394;
          if (v173 > v394 * v394 && v174 > v219)
          {
            __asm { FMOV            V0.4S, #-1.0 }

            v384 = vnegq_f64(_Q0);
            _Q0.n128_u32[1] = 0;
            do
            {
              _Q0.n128_u32[0] = 0.25;
              CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 0.25, 0, 0);
              if ((CA::OGL::BlurState::tile_downsample(&v430, 4) & 1) == 0)
              {
                v221 = v430;
                v222 = (BYTE8(v438) & 1) != 0 ? 16 : 32;
                if (CA::OGL::PingPongState::attach_dest(&v430, 1, v222))
                {
                  v223 = &v436 + (v433 & 1) + 1;
                  if ((v433 & 0x8000u) != 0)
                  {
                    v223 = &v431;
                  }

                  v224 = *v223;
                  v226 = *(*v223 + 48);
                  v225 = *(*v223 + 52);
                  *v439 = v226;
                  *&v439[4] = v225;
                  CA::OGL::Context::bind_surface(v430, v224, 0, 1u, 1, 0.0);
                  if (BYTE8(v438))
                  {
                    v227 = 16.0;
                  }

                  else
                  {
                    v227 = 32.0;
                  }

                  CA::OGL::BlurState::process_edges(&v430, v227, 4.0, 4.0, v439);
                  *(*(v221 + 2) + 16) = 27;
                  v228 = *(v221 + 2);
                  v395 = *(v228 + 96);
                  v392 = *(v228 + 100);
                  if ((*(*v221 + 1072))(v221))
                  {
                    v229 = vmulq_n_f32(xmmword_183E20FE0, v392);
                    v230 = vmulq_n_f32(v384, v395);
                    *(v221 + 10) = vzip1q_s32(v230, v229);
                    *(v221 + 11) = vzip2q_s32(v230, v229);
                    *(v221 + 15) = CA::OGL::BlurState::downsample_box_4(void)::weight;
                    *(v221 + 18) = 0;
                    *(v221 + 14) = v221 + 1386;
                    *(v221 + 120) = xmmword_183E20E50;
                    v420.i64[0] = 0;
                    CA::OGL::PingPongState::render_pass(&v430, v226, v225, 0, v420.i64, 4.0, 4.0, 0.0, 0.0);
                    CA::OGL::Context::array_flush(v221);
                  }

                  else
                  {
                    *(*(v221 + 2) + 16) = 3;
                    *(*(v221 + 2) + 496) = 12;
                    *(v221 + 18) = 0;
                    v231 = v221 + 1386;
                    *(v221 + 14) = v221 + 1386;
                    *(v221 + 120) = xmmword_183E20E50;
                    v232 = &unk_183E229F8;
                    v233 = 4;
                    do
                    {
                      if (*(v221 + 27))
                      {
                        v234 = 6;
                      }

                      else
                      {
                        v234 = 4;
                      }

                      if ((*(v221 + 18) + 4) > *(v221 + 19) || (v235 = *(v221 + 16)) != 0 && *(v221 + 15) + v234 > v235)
                      {
                        *(v221 + 692) |= 0x20u;
                        CA::OGL::Context::array_flush(v221);
                        *(v221 + 18) = 0;
                        *(v221 + 14) = v231;
                        *(v221 + 120) = xmmword_183E20E50;
                      }

                      v420.i64[0] = 0x3400340034003400;
                      CA::OGL::PingPongState::render_pass(&v430, v226, v225, 1, v420.i64, 4.0, 4.0, *(v232 - 1), *v232);
                      if (v233 == 4)
                      {
                        CA::OGL::Context::array_flush(v221);
                        *(*(v221 + 2) + 497) |= 1u;
                        *(v221 + 18) = 0;
                        *(v221 + 14) = v231;
                        *(v221 + 120) = xmmword_183E20E50;
                      }

                      v232 += 2;
                      --v233;
                    }

                    while (v233);
                    CA::OGL::Context::array_flush(v221);
                    *(*(v221 + 2) + 497) &= ~1u;
                    v17 = v389;
                  }

                  v236 = &v436 + (v433 & 1) + 1;
                  if ((v433 & 0x8000u) != 0)
                  {
                    v236 = &v431;
                  }

                  CA::OGL::Context::unbind_surface(v430, *v236, 0);
                  *(*(v221 + 2) + 16) = 0;
                  CA::OGL::Context::pop_surface(v430, v237, v238, v239, v240, v241, v242, v243);
                  LOWORD(v433) = v433 + 1;
                }
              }

              v173 = v173 * 0.0625 + -0.47265625;
              v174 = v174 * 0.0625 + -0.47265625;
            }

            while (v173 > v219 && v174 > v219);
          }

          _Q0.n128_f64[0] = v383;
          v245 = _Q0.n128_f64[0] * _Q0.n128_f64[0];
          v246 = v173 <= _Q0.n128_f64[0] * _Q0.n128_f64[0] || v174 <= v245;
          v171 = v171;
          if (v246)
          {
            v195 = a3;
            v99 = v404;
          }

          else
          {
            v195 = a3;
            v99 = v404;
            do
            {
              _Q0.n128_u32[0] = 0.5;
              CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 0.5, 0, 0);
              if ((CA::OGL::BlurState::tile_downsample(&v430, 2) & 1) == 0)
              {
                CA::OGL::BlurState::downsample_box_2(&v430, 2.0, 2.0);
              }

              v173 = v173 * 0.25 + -0.765625;
              v174 = v174 * 0.25 + -0.765625;
            }

            while (v173 > v245 && v174 > v245);
          }

          v248 = v174 > v245;
          for (i = v173 > v245; v173 > v245 || v174 > v245; i = v173 > v245)
          {
            if (i)
            {
              _Q0.n128_u32[0] = 0.5;
              CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 1.0, 0, 0);
              CA::OGL::BlurState::downsample_box_2(&v430, 2.0, 1.0);
              v173 = v173 * 0.25 + -0.765625;
            }

            if (v248)
            {
              _Q0.n128_u32[0] = 1.0;
              CA::OGL::PingPongState::scale_and_dilate(&v430, _Q0.n128_f64[0], 0.5, 0, 0);
              CA::OGL::BlurState::downsample_box_2(&v430, 1.0, 2.0);
              v174 = v174 * 0.25 + -0.765625;
            }

            v248 = v174 > v245;
          }
        }

        if (v173 <= v174)
        {
          v252 = v174;
        }

        else
        {
          v252 = v173;
        }

        _Q0.n128_u32[0] = v436;
        v253 = 0;
        if (*&v436 == *(&v436 + 1))
        {
          v254 = *&v436 != 1.0 && v99 == 0;
          v255 = !v254;
          if (*&v17 && v255)
          {
            v253 = (*(*a1 + 1160))(a1, _Q0) ^ 1;
          }
        }

        if (v252 <= 0.6 && (*(*a1 + 1080))(a1, 45))
        {
          LODWORD(v256) = 1.0;
          CA::OGL::PingPongState::scale_and_dilate(&v430, v256, 1.0, 1u, 1u);
          if (v253)
          {
            CA::OGL::Context::set_gstate(a1, **(a1 + 656));
            *(a1 + 16) = *&__dst[0];
            *&__dst[0] = 0;
            v420.i64[0] = 0;
            memset(v439, 0, 88);
            CA::OGL::copy_gstate(v439, *(a1 + 656));
            LODWORD(v257) = v436;
            *v439 = CA::OGL::Context::set_gstate(a1, v439);
            v263 = v173;
            v264 = v174;
            CA::OGL::BlurState::single_pass_blur(&v430, v263, v264, 1);
            if (v393)
            {
              CA::OGL::BlurState::convert_linear_to_srgb(&v430, 1);
            }

            CA::OGL::BlurState::in_place_color_matrix(&v430, *&v195[2], 1, v265, v266, v267);
            CA::OGL::Context::set_gstate(a1, **(a1 + 656));
            v271 = v388;
            if (v420.i64[0])
            {
              CA::Shape::unref(v420.i64[0]);
            }

            v253 = 1;
          }

          else
          {
            v342 = v173;
            v343 = v174;
            CA::OGL::BlurState::single_pass_blur(&v430, v342, v343, 0);
            v271 = v388;
          }
        }

        else
        {
          if (v253)
          {
            goto LABEL_322;
          }

          if ((*(*a1 + 232))(a1, 38))
          {
            v273 = DWORD2(v437) == 1;
          }

          else
          {
            v273 = 1;
          }

          v274 = !v273 && *(&v433 + 1) == 0;
          v275 = v400;
          if (!v274)
          {
            v275 = 1;
          }

          if (v275)
          {
LABEL_322:
            v276 = vcvtpd_s64_f64(v173 / (v386 * v386));
            memset(v419, 0, sizeof(v419));
            v423 = 0;
            v421 = 0u;
            v422 = 0u;
            v420 = 0u;
            memset(v418, 0, sizeof(v418));
            v417 = 0;
            v415 = 0u;
            v416 = 0u;
            v414 = 0u;
            v277 = v173 / (v276 & ~(v276 >> 31));
            v279 = v171 - 8;
            v407 = ((v171 - 8) & 0xFFFFFFFC) + 11;
            v280 = ((v171 - 8) & 0xFFFFFFFC) + 4;
            v281 = 3;
            v282 = 2;
            v271 = v388;
            while (*&v419[0].i32[v282] != 0.0)
            {
              v281 += 2;
              ++v282;
              v280 -= 4;
              if (!v280)
              {
                v396 = ((v171 - 8) & 0xFFFFFFFC) + 11;
                v281 = ((v279 >> 1) & 0x7FFFFFFE) + 5;
                goto LABEL_327;
              }
            }

            v396 = v282 * 4 - 1;
LABEL_327:
            v283 = vcvtpd_s64_f64(v174 / (v386 * v386));
            v284 = v283 & ~(v283 >> 31);
            v285 = v174 / v284;
            v287 = (v279 & 0xFFFFFFFC) + 4;
            v288 = 3;
            v289 = 8;
            while (*(v418 + v289) != 0.0)
            {
              v288 += 2;
              v289 += 4;
              v287 -= 4;
              if (!v287)
              {
                v288 = ((v279 >> 1) & 0x7FFFFFFE) + 5;
                goto LABEL_332;
              }
            }

            v407 = v289 - 1;
LABEL_332:
            v290 = v283 > 0;
            v291 = v284 >= v276 && v283 > 0;
            v253 &= v291;
            v292 = v276 > 0;
            if (v276 > 0 || v283 >= 1)
            {
              v293 = 1;
              do
              {
                v294 = v293;
                if ((BYTE8(v438) & (DWORD2(v437) != 1)) != 0)
                {
                  v295 = 1;
                }

                else
                {
                  v295 = v281;
                }

                if ((BYTE8(v438) & (DWORD2(v437) != 1)) != 0)
                {
                  v296 = 1;
                }

                else
                {
                  v296 = v288;
                }

                if (v292)
                {
                  v297 = v295;
                }

                else
                {
                  v297 = 1;
                }

                if (v290)
                {
                  v298 = v296;
                }

                else
                {
                  v298 = 1;
                }

                LODWORD(v286) = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v430, v286, 1.0, v297, v298);
                if (v292)
                {
                  CA::OGL::BlurState::narrow_blur(&v430, v396, v420.i32, v419, 0);
                }

                if (v290)
                {
                  if (v284 == v294)
                  {
                    v299 = v253;
                  }

                  else
                  {
                    v299 = 0;
                  }

                  if (v299 == 1)
                  {
                    CA::OGL::Context::set_gstate(a1, **(a1 + 656));
                    *(a1 + 16) = *&__dst[0];
                    *&__dst[0] = 0;
                    v411 = 0;
                    *&v439[80] = 0;
                    memset(&v439[16], 0, 64);
                    *v439 = 0u;
                    v300 = *(a1 + 656);
                    *&v439[8] = *(v300 + 8);
                    v301 = *(v300 + 32);
                    *&v439[24] = *(v300 + 24);
                    *&v439[32] = v301;
                    *&v439[40] = *(v300 + 40);
                    *&v439[56] = *(v300 + 56);
                    v302 = *(v300 + 80);
                    *&v439[80] = v302;
                    *&v439[64] = *(v300 + 64);
                    *&v439[80] = *(v300 + 80) & 0x100 | v302;
                    *&v439[80] |= *(v300 + 80) & 0x400;
                    *&v439[72] = *(v300 + 72);
                    *v439 = CA::OGL::Context::set_gstate(a1, v439);
                    CA::OGL::BlurState::narrow_blur(&v430, v407, v414.i32, v418, 1);
                    if (v393)
                    {
                      CA::OGL::BlurState::convert_linear_to_srgb(&v430, 1);
                    }

                    CA::OGL::BlurState::in_place_color_matrix(&v430, *&v398[2], 1, v308, v309, v310);
                    CA::OGL::Context::set_gstate(a1, **(a1 + 656));
                    if (v411)
                    {
                      CA::Shape::unref(v411);
                    }
                  }

                  else
                  {
                    CA::OGL::BlurState::narrow_blur(&v430, v407, v414.i32, v418, 0);
                  }
                }

                v290 = v294 < v283;
                v293 = v294 + 1;
                v292 = v294 < v276;
              }

              while (v294 < v276 || v294 < v283);
            }
          }

          else
          {
            v414.i32[0] = 0;
            v311 = vcvtpd_s64_f64(v173 / (v386 * v386));
            v419[0].i32[0] = 0;
            v312 = v173 / (v311 & ~(v311 >> 31));
            v313 = vcvtpd_s64_f64(v174 / (v386 * v386));
            v314 = v174 / (v313 & ~(v313 >> 31));
            v317 = v313 > 0;
            v318 = v311 > 0;
            v271 = v388;
            if (v311 > 0 || v313 >= 1)
            {
              v319 = v414.i32[0];
              v320 = 1;
              v321 = v419[0].i32[0];
              do
              {
                v322 = v320;
                if (BYTE8(v438))
                {
                  v323 = 1;
                }

                else
                {
                  v323 = v319;
                }

                if (BYTE8(v438))
                {
                  v324 = 1;
                }

                else
                {
                  v324 = v321;
                }

                if (v318)
                {
                  v325 = v323;
                }

                else
                {
                  v325 = 1;
                }

                if (v317)
                {
                  v326 = v324;
                }

                else
                {
                  v326 = 1;
                }

                LODWORD(v316) = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v430, v316, 1.0, v325, v326);
                if (v318)
                {
                  CA::OGL::BlurState::tile_simd_blur(&v430, v319, v439);
                }

                if (v317)
                {
                  CA::OGL::BlurState::tile_simd_blur(&v430, v321, v420.i32);
                }

                v317 = v322 < v313;
                v320 = v322 + 1;
                v318 = v322 < v311;
              }

              while (v322 < v311 || v322 < v313);
            }

            v253 = 0;
          }

          v195 = v398;
          v99 = v404;
        }

        if (v400)
        {
          (*(*a1 + 744))(a1, v390, v402);
          CA::OGL::Context::release_surface(a1, v402);
        }

        if (v387)
        {
          *(a1 + 64) = 1;
        }

        if (v253)
        {
          if (v99)
          {
            *v99 = v436;
          }

          goto LABEL_459;
        }

        if ((v195[9].i8[0] & 8) != 0 && (BYTE4(v433) & 0x30) != 0)
        {
          CA::OGL::BlurState::convert_linear_to_srgb(&v430, 0);
        }

        if (DWORD2(v437) == 2)
        {
          v327 = 0;
        }

        else
        {
          v327 = CA::OGL::BlurState::in_place_color_matrix(&v430, *&v195[2], 0, v268, v269, v270);
        }

        CA::OGL::Context::set_gstate(a1, **(a1 + 656));
        *(a1 + 16) = *&__dst[0];
        *&__dst[0] = 0;
        if (v195[9].i8[0] < 0)
        {
          *v439 = *v195[7].f32;
          CA::OGL::BlurState::upsample_resolve_sdf(&v430, v385, v439, (v271 / a6));
LABEL_459:
          if (*&__dst[0])
          {
            __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
          }

LABEL_460:
          CA::OGL::PingPongState::~PingPongState(&v430);
          return;
        }

        *&v408 = (v271 / a6);
        v403 = v195[9].u8[0];
        if (v327)
        {
          v328 = 0;
        }

        else
        {
          v328 = v195[2];
        }

        v329 = v430;
        v330 = BYTE8(v438);
        if ((BYTE8(v438) & 8) != 0 && (v433 & 0x80000000) == 0)
        {
          *(*(&v436 + (v433 & 1) + 1) + 148) |= 2u;
        }

        v419[0] = 0;
        CA::OGL::PingPongState::bind_source(&v430, v419, ((v330 >> 1) & 1));
        if (v403 >= 0x40)
        {
          CA::OGL::Context::bind_surface(v430, v431, 1u, 0, 0, 0.0);
        }

        v332 = vcvt_f32_s32(v419[0]);
        v333 = vdupq_lane_s64(v408, 0);
        _Q0 = vdivq_f64(v333, vcvtq_f64_f32(*&v436));
        v334 = vcvt_f32_f64(_Q0);
        _Q0.f64[0] = *v385;
        v409 = *v385;
        v336 = v434;
        v337 = *(v329 + 2);
        v338 = *(v337 + 16);
        if (v328)
        {
          if (v338 == 3)
          {
            v339 = DWORD2(v437) == 2;
            LOWORD(_Q0.f64[0]) = *(v337 + 8);
            _H1 = *(v337 + 14);
            __asm
            {
              FCVT            S2, H1
              FCMP            H1, #0
            }

            LODWORD(v333.f64[0]) = 0;
            if (!(_NF ^ _VF | _ZF))
            {
              *v333.f64 = 1.0 / _S2;
            }

            __asm { FCVT            S0, H0 }

            *_Q0.f64 = *v333.f64 * *_Q0.f64;
            v331.i32[0] = *(v337 + 10);
            *v439 = *v328;
            *&v439[16] = *(v328 + 1);
            *&v439[32] = *(v328 + 2);
            *&v439[48] = *(v328 + 3);
            *&v439[64] = *(v328 + 4);
            *&v333.f64[0] = vmul_n_f32(*&vcvtq_f32_f16(v331), *v333.f64);
            v348 = vmulq_n_f32(*v439, *_Q0.f64);
            v349 = vzip1q_s32(_Q0, v333);
            *v439 = v348;
            *&v439[16] = vmulq_f32(*&v439[16], vzip1q_s32(v349, vdupq_lane_s32(*v349.i8, 1)));
            v350 = vmulq_f32(*&v439[32], vzip1q_s32(v333, v333));
            *&v333.f64[0] = vdup_lane_s32(*&v333.f64[0], 1);
            v351 = v333;
            *&v351.i32[1] = _S2;
            v352 = vzip1q_s32(v351, v351);
            v352.i32[2] = LODWORD(v333.f64[0]);
            *&v439[32] = v350;
            *&v439[48] = vmulq_f32(*&v439[48], v352);
            *&v439[64] = vmulq_n_f32(*&v439[64], _S2);
            v341 = v439;
            v340 = v329;
          }

          else
          {
            if (v338 != 1)
            {
              goto LABEL_426;
            }

            v339 = DWORD2(v437) == 2;
            v340 = v329;
            v341 = v328;
          }

          CA::OGL::color_matrix_function(v340, v341, v339, 0, 1);
        }

        else
        {
          if (DWORD2(v437) != 2)
          {
            goto LABEL_426;
          }

          if (v338 == 3)
          {
            v344 = 4;
          }

          else
          {
            if (v338 != 1)
            {
              goto LABEL_426;
            }

            v344 = 2;
          }

          *(v337 + 16) = v344;
        }

LABEL_426:
        v401 = vsub_f32(*v336.f32, v332);
        v405 = vmla_f32(v409, v334, *v336.f32);
        v399 = vsub_f32(*&v336.u32[2], v332);
        v410 = vmla_f32(v409, v334, *&v336.u32[2]);
        v353 = *(v329 + 84);
        if (v353)
        {
          v354 = v353[12];
          v355 = v353[13];
          v357 = v353[14];
          v356 = v353[15];
        }

        else
        {
          v356 = 0;
          v357 = 0;
          v355 = 0;
          v354 = 0;
        }

        _ZF = v353 == 0;
        v391 = *(v329 + 64);
        *(v329 + 64) = 1;
        v414 = 0uLL;
        v358 = *(*(v329 + 82) + 8);
        v421.i64[0] = 0;
        v420 = v358;
        v360 = !_ZF && *&v389 != 0;
        v361 = v354 + v357;
        v362 = v355 + v356;
        while (CA::ShapeIterator::iterate(&v420, &v414))
        {
          v363 = v414.i32[0];
          if (v360)
          {
            if (v414.i32[0] == v354)
            {
              v414.i32[0] = v354 - 1;
              ++v414.i32[2];
              v363 = v354 - 1;
            }

            v364 = v414.i32[1];
            if (v414.i32[1] == v355)
            {
              v414.i32[1] = v355 - 1;
              ++v414.i32[3];
              v364 = v355 - 1;
            }

            v365 = v414.i32[2];
            if (v414.i32[2] + v363 == v361)
            {
              v365 = ++v414.i32[2];
            }

            v366 = v414.i32[3];
            if (v414.i32[3] + v364 == v362)
            {
              v366 = ++v414.i32[3];
            }
          }

          else
          {
            v364 = v414.i32[1];
            v365 = v414.i32[2];
            v366 = v414.i32[3];
          }

          *(v329 + 18) = 0;
          *(v329 + 14) = v329 + 1386;
          *(v329 + 120) = xmmword_183E20E50;
          *(v329 + 8) = v363;
          *(v329 + 9) = v364;
          *(v329 + 10) = v365;
          *(v329 + 11) = v366;
          CA::OGL::Context::array_rect(v329, v405.f32[0], v405.f32[1], v410.f32[0], v410.f32[1]);
          v367 = *(*(v329 + 2) + 8);
          v368 = *(v329 + 17) + 48 * *(v329 + 18);
          *(v368 - 160) = v367;
          *(v368 - 112) = v367;
          *(v368 - 64) = v367;
          *(v368 - 16) = v367;
          v369 = *(v329 + 17) + 48 * *(v329 + 18);
          *(v369 - 176) = v401;
          *(v369 - 128) = v399.i32[0];
          *(v369 - 124) = v401.i32[1];
          *(v369 - 80) = v399;
          *(v369 - 32) = __PAIR64__(v399.u32[1], v401.u32[0]);
          if (v403 >= 0x40)
          {
            *(*(v329 + 2) + 16) = 14;
            v370 = *(v431 + 12);
            v371 = v405.f32[0] - v370;
            v372 = *(v431 + 13);
            v373 = v405.f32[1] - v372;
            v374 = v410.f32[0] - v370;
            v375 = v410.f32[1] - v372;
            v376 = *(v329 + 17) + 48 * *(v329 + 18);
            *(v376 - 168) = v371;
            *(v376 - 164) = v373;
            *(v376 - 120) = v374;
            *(v376 - 116) = v373;
            *(v376 - 72) = v374;
            *(v376 - 68) = v375;
            *(v376 - 24) = v371;
            *(v376 - 20) = v375;
          }

          CA::OGL::Context::array_flush(v329);
        }

        if ((v391 & 1) == 0)
        {
          *(v329 + 64) = 0;
        }

        v377 = &v436 + (v433 & 1) + 1;
        if ((v433 & 0x8000u) != 0)
        {
          v377 = &v431;
        }

        CA::OGL::Context::unbind_surface(v430, *v377, 0);
        if (v403 >= 0x40)
        {
          CA::OGL::Context::unbind_surface(v430, v431, 1);
        }

        v378 = *(v329 + 2);
        if (*(v378 + 16) == 12)
        {
          v379 = vcvtq_f64_f32(v405);
          *v439 = v379;
          *&v439[16] = xmmword_183E20E60;
          v380 = vcvtq_f64_f32(v410);
          *&v381 = v380.f64[0];
          *(&v381 + 1) = *&v379.f64[1];
          *&v439[32] = v381;
          *&v439[48] = xmmword_183E20E60;
          *&v439[64] = v380;
          *&v439[80] = xmmword_183E20E60;
          v379.f64[1] = v380.f64[1];
          v440 = v379;
          v441 = xmmword_183E20E60;
          *&v418[0] = *(v378 + 8);
          CA::OGL::emit_quad_surround(v329, v439, v418);
          v378 = *(v329 + 2);
        }

        *(v378 + 16) = v338;
        goto LABEL_459;
      }

      v400 = 0;
    }

    else
    {
      v393 = 0;
      v15 = 0;
      v400 = 0;
      v16 = 0;
      v17 = a3[4];
    }

    v402 = a2;
    goto LABEL_11;
  }
}