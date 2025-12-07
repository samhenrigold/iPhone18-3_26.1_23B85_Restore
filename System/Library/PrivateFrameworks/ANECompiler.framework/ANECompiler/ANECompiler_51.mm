BOOL operations_research::glop::UnconstrainedVariablePreprocessor::Run(operations_research::glop::UnconstrainedVariablePreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v175, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1827, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v175, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v175, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v175);
    return 0;
  }

  v2 = a2;
  v162 = *(*(this + 2) + 200);
  v4 = *(a2 + 6);
  v175[0] = 0xFFF0000000000000;
  std::vector<double>::assign(this + 6, v4, v175);
  std::vector<double>::assign(this + 9, v4, &operations_research::glop::kInfinity);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v2 + 8);
    v7 = *(v2 + 11);
    do
    {
      if (*(v6 + v5) == -INFINITY)
      {
        *(*(this + 9) + v5) = 0;
      }

      if (*(v7 + v5) == INFINITY)
      {
        *(*(this + 6) + v5) = 0;
      }

      v5 += 8;
    }

    while (8 * v4 != v5);
  }

  v8 = (*(v2 + 1) - *v2) >> 4;
  v9 = -1431655765 * v8;
  LOBYTE(v175[0]) = 0;
  v10 = 0xAAAAAAAB00000000 * v8;
  v11 = -1431655765 * v8;
  std::vector<BOOL>::assign(this + 120, v11, v175);
  LOBYTE(v175[0]) = 0;
  std::vector<BOOL>::assign(this + 96, v11, v175);
  v176 = 0u;
  v177 = 0u;
  *v175 = 0u;
  __p = 0;
  v173 = 0;
  v174 = 0;
  if (v10)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v9 <= 0)
  {
    v15 = *(&v177 + 1);
  }

  else
  {
    v12 = 0;
    v13 = v175[1];
    v14 = v176;
    v15 = *(&v177 + 1);
    v16 = v177;
    do
    {
      if (v14 == v13)
      {
        v17 = 0;
      }

      else
      {
        v17 = ((v14 - v13) << 7) - 1;
      }

      v18 = v15 + v16;
      if (v17 == v15 + v16)
      {
        std::deque<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::__add_back_capacity(v175);
        v13 = v175[1];
        v14 = v176;
        v15 = *(&v177 + 1);
        v16 = v177;
        v18 = v177 + *(&v177 + 1);
      }

      *(*&v13[(v18 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v18 & 0x3FF)) = v12;
      *(&v177 + 1) = ++v15;
      ++v12;
    }

    while (v9 != v12);
  }

  if (!v15 || (v168 = 5 * v9, 5 * v9 < 1))
  {
LABEL_214:
    if (*(this + 19) >= 1)
    {
      v133 = 0;
      v134 = *(this + 19) & 0x7FFFFFFFLL;
      do
      {
        if (v133 < *(this + 38) && ((*(*(this + 18) + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v133) & 1) != 0)
        {
          v135 = *(*(this + 21) + 8 * v133);
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(v2, v133);
          v137 = SparseColumn[1];
          if (v137 >= 1)
          {
            v138 = SparseColumn[3];
            v139 = SparseColumn[4];
            v140 = *(v2 + 8);
            v141 = *(v2 + 11);
            do
            {
              v142 = *v139++;
              v143 = v135 * v142;
              LODWORD(v142) = *v138++;
              v144 = 8 * SLODWORD(v142);
              *(v140 + v144) = *(v140 + v144) - v143;
              *(v141 + v144) = *(v141 + v144) - v143;
              --v137;
            }

            while (v137);
          }

          operations_research::glop::LinearProgram::SetObjectiveOffset(v2, *(v2 + 49) + *(*(v2 + 17) + 8 * v133) * v135);
        }

        ++v133;
      }

      while (v133 != v134);
    }

    operations_research::glop::LinearProgram::DeleteColumns(v2, this + 18);
    operations_research::glop::LinearProgram::DeleteRows(v2, this + 27);
    if (*(this + 19))
    {
      v145 = 1;
    }

    else
    {
      v145 = *(this + 28) != 0;
    }

    goto LABEL_226;
  }

  v19 = 0;
  v20 = 0;
  v169 = 0;
  v161 = -v162;
  v159 = v2;
  while (1)
  {
    v22 = *(*(v175[1] + ((v177 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v177 & 0x3FF));
    v171 = v22;
    *&v177 = v177 + 1;
    *(&v177 + 1) = v15 - 1;
    if (v177 >= 0x800)
    {
      operator delete(*v175[1]);
      v175[1] = v175[1] + 8;
      *&v177 = v177 - 1024;
      v22 = v171;
    }

    v23 = v22 >> 6;
    *(__p + v23) &= ~(1 << v22);
    if (v22 >= *(this + 38) || (*(*(this + 18) + 8 * v23) & (1 << v22)) == 0)
    {
      break;
    }

LABEL_24:
    ++v19;
    v15 = *(&v177 + 1);
    if (*(&v177 + 1))
    {
      v21 = v19 < v168;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_214;
    }
  }

  v24 = operations_research::glop::LinearProgram::GetSparseColumn(v2, v22);
  ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(v2, v171);
  v26 = v171;
  v27 = 8 * v171;
  v28 = *(*(v2 + 20) + v27);
  v29 = *(*(v2 + 23) + v27);
  v30 = (*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = ObjectiveCoefficientForMinimizationVersion + 0.0;
  }

  v32 = v24[1];
  if (v32 >= 1)
  {
    v33 = v24[3];
    v34 = v24[4];
    v35 = ObjectiveCoefficientForMinimizationVersion + 0.0 + 0.0 - (ObjectiveCoefficientForMinimizationVersion + 0.0);
    if ((*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v35 = 0.0;
    }

    v36 = v31;
    v37 = v35;
    v38 = (*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    while (1)
    {
      v40 = *v33++;
      v39 = v40;
      if (v40 >= *(this + 56) || ((*(*(this + 27) + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        v41 = -*v34;
        v42 = 8 * v39;
        if (*v34 <= 0.0)
        {
          if (COERCE__INT64(fabs(*(*(this + 6) + v42) * v41)) < 0x7FF0000000000000)
          {
            if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v46 = v35 + *(*(this + 6) + v42) * v41;
              v47 = v31 + v46;
              v35 = v46 + v31 - (v31 + v46);
              v31 = v47;
            }
          }

          else
          {
            ++v30;
          }

          v45 = *(*(this + 9) + v42) * v41;
          if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
LABEL_56:
            if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v48 = v37 + v45;
              v49 = v36 + v48;
              v37 = v48 + v36 - (v36 + v48);
              v36 = v49;
            }

            goto LABEL_41;
          }
        }

        else
        {
          if (COERCE__INT64(fabs(*(*(this + 9) + v42) * v41)) < 0x7FF0000000000000)
          {
            if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v43 = v35 + *(*(this + 9) + v42) * v41;
              v44 = v31 + v43;
              v35 = v43 + v31 - (v31 + v43);
              v31 = v44;
            }
          }

          else
          {
            ++v30;
          }

          v45 = *(*(this + 6) + v42) * v41;
          if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            goto LABEL_56;
          }
        }

        ++v38;
      }

LABEL_41:
      ++v34;
      if (!--v32)
      {
        goto LABEL_59;
      }
    }
  }

  v38 = (*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v36 = v31;
LABEL_59:
  if (v38 >= 1)
  {
    v50 = INFINITY;
  }

  else
  {
    v50 = v36;
  }

  if (v50 > v162)
  {
    v51 = v30 < 1;
    if (v30 >= 1)
    {
      v52 = -INFINITY;
    }

    else
    {
      v52 = v31;
    }

    if (v52 < v161)
    {
      goto LABEL_89;
    }

LABEL_67:
    v53 = v28;
    if (*(this + 24) == 1)
    {
      v54 = v20;
      v55 = v51;
      IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(v2, v26);
      v53 = v28;
      v51 = v55;
      v20 = v54;
      if (IsVariableInteger)
      {
        v53 = ceil(v28 + -0.0001);
      }
    }

    v57 = v31 >= 0.0001 && v51;
    v26 = v171;
    if (((*(*(this + 15) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
    {
      goto LABEL_174;
    }

LABEL_89:
    if (v28 != -INFINITY && v29 != INFINITY)
    {
      goto LABEL_24;
    }

    if (*(this + 24))
    {
      goto LABEL_24;
    }

    v60 = v24[1];
    if (v60 < 1)
    {
      goto LABEL_24;
    }

    v158 = v19;
    v61 = v24[3];
    v62 = v24[4];
    if (v38 <= 1)
    {
      v63 = v36;
    }

    else
    {
      v63 = INFINITY;
    }

    if (v30 <= 1)
    {
      v64 = v31;
    }

    else
    {
      v64 = -INFINITY;
    }

    v65 = v20;
    v160 = v51;
    while (1)
    {
      v67 = *v61++;
      v66 = v67;
      if (v67 < *(this + 56) && ((*(*(this + 27) + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) != 0)
      {
        goto LABEL_101;
      }

      v68 = *v62;
      v69 = -*v62;
      if (v29 != INFINITY)
      {
        goto LABEL_127;
      }

      if (v68 <= 0.0)
      {
        v81 = *(*(this + 9) + 8 * v66) * v69;
        v82 = fabs(v81);
        v83 = v36 - v81;
        v84 = INFINITY;
        if (v38 < 1)
        {
          v84 = v83;
        }

        v85 = v84 + v82 * 1.0e-12;
        if (*&v82 >= 0x7FF0000000000000)
        {
          v85 = v63;
        }

        v86 = v85 / v68;
        v87 = *(this + 6);
        if (v86 <= *(v87 + 8 * v66))
        {
          goto LABEL_127;
        }

        *(v87 + 8 * v66) = v86;
        *(*(this + 15) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 < v169)
        {
LABEL_126:
          *v65 = v66;
          v65 += 4;
LABEL_127:
          if (v28 != -INFINITY)
          {
            goto LABEL_101;
          }

          goto LABEL_128;
        }

        v77 = v65 - v20;
        v78 = (v65 - v20) >> 2;
        v106 = v78 + 1;
        __src = v20;
        if ((v78 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if ((v169 - v20) >> 1 > v106)
        {
          v106 = (v169 - v20) >> 1;
        }

        if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v80 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v106;
        }

        v163 = v61;
        if (v80)
        {
          if (!(v80 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }
      }

      else
      {
        v70 = *(*(this + 6) + 8 * v66) * v69;
        v71 = fabs(v70);
        v72 = v36 - v70;
        v73 = INFINITY;
        if (v38 < 1)
        {
          v73 = v72;
        }

        v74 = v73 + v71 * 1.0e-12;
        if (*&v71 >= 0x7FF0000000000000)
        {
          v74 = v63;
        }

        v75 = v74 / v68;
        v76 = *(this + 9);
        if (v75 >= *(v76 + 8 * v66))
        {
          goto LABEL_127;
        }

        *(v76 + 8 * v66) = v75;
        *(*(this + 15) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 < v169)
        {
          goto LABEL_126;
        }

        v77 = v65 - v20;
        v78 = (v65 - v20) >> 2;
        v79 = v78 + 1;
        __src = v20;
        if ((v78 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if ((v169 - v20) >> 1 > v79)
        {
          v79 = (v169 - v20) >> 1;
        }

        if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v80 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v79;
        }

        v163 = v61;
        if (v80)
        {
          if (!(v80 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }
      }

      v20 = 0;
      v108 = (4 * v78);
      v169 = 4 * v80;
      *v108 = v66;
      v65 = (v108 + 1);
      memcpy(0, __src, v77);
      v51 = v160;
      v61 = v163;
      if (v28 != -INFINITY)
      {
        goto LABEL_101;
      }

LABEL_128:
      if (v68 <= 0.0)
      {
        v99 = *(*(this + 6) + 8 * v66) * v69;
        v100 = fabs(v99);
        v101 = v31 - v99;
        v102 = -INFINITY;
        if (v51)
        {
          v102 = v101;
        }

        v103 = v102 + v100 * -1.0e-12;
        if (*&v100 >= 0x7FF0000000000000)
        {
          v103 = v64;
        }

        v104 = v103 / v68;
        v105 = *(this + 9);
        if (v104 >= *(v105 + 8 * v66))
        {
          goto LABEL_101;
        }

        *(v105 + 8 * v66) = v104;
        *(*(this + 12) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 >= v169)
        {
          v95 = v65 - v20;
          v96 = (v65 - v20) >> 2;
          v107 = v96 + 1;
          __srca = v20;
          if ((v96 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if ((v169 - v20) >> 1 > v107)
          {
            v107 = (v169 - v20) >> 1;
          }

          if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v98 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v98 = v107;
          }

          v164 = v61;
          if (v98)
          {
            if (!(v98 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          goto LABEL_171;
        }
      }

      else
      {
        v88 = *(*(this + 9) + 8 * v66) * v69;
        v89 = fabs(v88);
        v90 = v31 - v88;
        v91 = -INFINITY;
        if (v51)
        {
          v91 = v90;
        }

        v92 = v91 + v89 * -1.0e-12;
        if (*&v89 >= 0x7FF0000000000000)
        {
          v92 = v64;
        }

        v93 = v92 / v68;
        v94 = *(this + 6);
        if (v93 <= *(v94 + 8 * v66))
        {
          goto LABEL_101;
        }

        *(v94 + 8 * v66) = v93;
        *(*(this + 12) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 >= v169)
        {
          v95 = v65 - v20;
          v96 = (v65 - v20) >> 2;
          v97 = v96 + 1;
          __srca = v20;
          if ((v96 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if ((v169 - v20) >> 1 > v97)
          {
            v97 = (v169 - v20) >> 1;
          }

          if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v98 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v98 = v97;
          }

          v164 = v61;
          if (v98)
          {
            if (!(v98 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

LABEL_171:
          v20 = 0;
          v169 = 4 * v98;
          *(4 * v96) = v66;
          v65 = (4 * v96 + 4);
          memcpy(0, __srca, v95);
          v51 = v160;
          v61 = v164;
          goto LABEL_101;
        }
      }

      *v65 = v66;
      v65 += 4;
LABEL_101:
      ++v62;
      if (!--v60)
      {
        if (v20 == v65)
        {
          v2 = v159;
          v19 = v158;
        }

        else
        {
          TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(v159);
          __srcb = v20;
          v120 = v20;
          do
          {
            v121 = &(*TransposeSparseMatrix)[6 * *v120];
            v122 = *(v121 + 8);
            if (v122 >= 1)
            {
              v123 = *(v121 + 24);
              v124 = __p;
              do
              {
                v126 = *v123++;
                v125 = v126;
                v127 = v126 >> 6;
                v128 = 1 << v126;
                if (((1 << v126) & v124[v127]) == 0)
                {
                  v129 = v175[1];
                  if (v176 == v175[1])
                  {
                    v130 = 0;
                  }

                  else
                  {
                    v130 = ((v176 - v175[1]) << 7) - 1;
                  }

                  v131 = *(&v177 + 1);
                  v132 = *(&v177 + 1) + v177;
                  if (v130 == *(&v177 + 1) + v177)
                  {
                    std::deque<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::__add_back_capacity(v175);
                    v131 = *(&v177 + 1);
                    v129 = v175[1];
                    v132 = v177 + *(&v177 + 1);
                    v124 = __p;
                  }

                  *(*&v129[(v132 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v132 & 0x3FF)) = v125;
                  *(&v177 + 1) = v131 + 1;
                  v124[v127] |= v128;
                }

                --v122;
              }

              while (v122);
            }

            v120 += 4;
          }

          while (v120 != v65);
          v20 = __srcb;
          v2 = v159;
          v19 = v158;
        }

        goto LABEL_24;
      }
    }
  }

  v53 = v29;
  if (*(this + 24) == 1)
  {
    v53 = v29;
    if (operations_research::glop::LinearProgram::IsVariableInteger(v2, v171))
    {
      v53 = floor(v29 + 0.0001);
    }
  }

  v57 = v36 <= -0.0001 && v38 < 1;
  v26 = v171;
  v59 = (1 << v171) & *(*(this + 12) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v51 = v30 < 1;
  if (v30 >= 1)
  {
    v52 = -INFINITY;
  }

  else
  {
    v52 = v31;
  }

  if (v52 >= v161)
  {
    if (!v59 && (*&v53 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      goto LABEL_174;
    }

    goto LABEL_67;
  }

  if (v59)
  {
    goto LABEL_89;
  }

LABEL_174:
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v28 == v29)
    {
      v118 = 1;
    }

    else if (v53 == v28)
    {
      v118 = 2;
    }

    else if (v53 == v29)
    {
      v118 = 3;
    }

    else
    {
      v118 = 4;
    }

    operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 144, v26, v118, v53);
    goto LABEL_24;
  }

  if (!v57)
  {
    if (ObjectiveCoefficientForMinimizationVersion == 0.0)
    {
      v109 = v24[1];
      if (v109 < 1)
      {
LABEL_188:
        if ((*(this + 24) & 1) == 0)
        {
          operations_research::glop::UnconstrainedVariablePreprocessor::RemoveZeroCostUnconstrainedVariable(this, v26, v2, v53);
        }
      }

      else
      {
        v110 = v24[3];
        v111 = v24[4];
        while (1)
        {
          v112 = *v111;
          if (v53 != INFINITY)
          {
            v112 = -*v111;
          }

          v113 = *v110++;
          v114 = 8 * v113;
          v115 = v112 <= 0.0;
          if (v112 <= 0.0)
          {
            v116 = *(v2 + 8);
          }

          else
          {
            v116 = *(v2 + 11);
          }

          v117 = -INFINITY;
          if (!v115)
          {
            v117 = INFINITY;
          }

          if (*(v116 + v114) != v117)
          {
            break;
          }

          ++v111;
          if (!--v109)
          {
            goto LABEL_188;
          }
        }
      }
    }

    goto LABEL_24;
  }

  if (dword_27E25CE98 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::UnconstrainedVariablePreprocessor::Run(operations_research::glop::LinearProgram *)::$_0::operator() const(void)::site, dword_27E25CE98))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v170, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1942);
    v153 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v170, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v153, "Problem INFEASIBLE_OR_UNBOUNDED, variable ", 0x2AuLL);
    v154 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v153, &v171);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v154, " can move to ", 0xDuLL);
    v178[0] = v53;
    v155 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v154, v178);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v155, " and its reduced cost is in [", 0x1DuLL);
    v178[0] = v52;
    v156 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v155, v178);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v156, ", ", 2uLL);
    v178[0] = v50;
    v157 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v156, v178);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v157, "]", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v170);
  }

  v145 = 0;
  *(this + 8) = 3;
LABEL_226:
  if (__p)
  {
    operator delete(__p);
  }

  v146 = v175[1];
  v147 = v176;
  *(&v177 + 1) = 0;
  v148 = (v176 - v175[1]) >> 3;
  if (v148 >= 3)
  {
    do
    {
      operator delete(*v146);
      v147 = v176;
      v146 = (v175[1] + 8);
      v175[1] = v146;
      v148 = (v176 - v146) >> 3;
    }

    while (v148 > 2);
  }

  if (v148 == 1)
  {
    v149 = 512;
LABEL_235:
    *&v177 = v149;
  }

  else if (v148 == 2)
  {
    v149 = 1024;
    goto LABEL_235;
  }

  if (v146 != v147)
  {
    do
    {
      v150 = *v146++;
      operator delete(v150);
    }

    while (v146 != v147);
    v151 = v176;
    if (v176 != v175[1])
    {
      do
      {
        v151 -= 8;
      }

      while (v151 != v175[1]);
      *&v176 = v151;
    }
  }

  if (v175[0])
  {
    operator delete(v175[0]);
  }

  return v145;
}

void sub_23CBBC2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (v24)
  {
    operator delete(v24);
    v26 = __p;
    if (!__p)
    {
LABEL_3:
      std::deque<int>::~deque[abi:ne200100](va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  std::deque<int>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::UnconstrainedVariablePreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 144), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 216), a2);
    v5 = *(a2 + 5) - *(a2 + 4);
    if (((v5 << 29) & 0xFFFFFFFF00000000) != 0)
    {
      if (!((v5 >> 3) >> 62))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if ((v5 >> 3) >= 1)
    {
      v6 = 0;
      v7 = (this + 304);
      v8 = (v5 >> 3) & 0x7FFFFFFF;
      do
      {
        if (v6 < *(this + 56) && ((*(*(this + 27) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) != 0)
        {
          v9 = *(this + 36);
          if (v9 > 1)
          {
            v10 = 0;
            _X9 = *v7;
            __asm { PRFM            #4, [X9] }

            v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6));
            v4.n128_u64[0] = vdup_n_s8(v16 & 0x7F);
            v17 = ((v16 >> 7) ^ (*v7 >> 12)) & v9;
            v18 = *(*v7 + v17);
            v19 = vceq_s8(v18, v4.n128_u64[0]);
            if (!v19)
            {
              goto LABEL_16;
            }

LABEL_13:
            v20 = *(this + 39);
            while (1)
            {
              v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v9;
              if (v6 == *(v20 + 8 * v21))
              {
                break;
              }

              v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v19)
              {
LABEL_16:
                while (!*&vceq_s8(v18, 0x8080808080808080))
                {
                  v10 += 8;
                  v17 = (v10 + v17) & v9;
                  v18 = *(_X9 + v17);
                  v19 = vceq_s8(v18, v4.n128_u64[0]);
                  if (v19)
                  {
                    goto LABEL_13;
                  }
                }

LABEL_36:
                absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 230);
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v33);
              }
            }

            v22 = v20 + 8 * v21;
            if (!(_X9 + v21))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (*(this + 37) < 2uLL)
            {
              goto LABEL_36;
            }

            v22 = *v7;
            _ZF = v6 == v22;
            if (v6 == v22)
            {
              v22 = this + 304;
            }

            v24 = &absl::lts_20240722::container_internal::kSooControl;
            if (!_ZF)
            {
              v24 = 0;
            }

            if (!v24)
            {
              goto LABEL_36;
            }
          }

          v25 = *(this + 44) + *(v22 + 4);
          v26 = (*(*(this + 41) + 8 * (v25 / 0x55)) + 48 * (v25 % 0x55));
          v27 = v26[1];
          if (v27 >= 1)
          {
            v28 = v26[3];
            v29 = v26[4];
            v30 = -1;
            do
            {
              v32 = *v28++;
              v31 = v32;
              if ((*(*(this + 52) + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32))
              {
                v30 = v31;
              }

              v29 += 8;
              --v27;
            }

            while (v27);
            if (v30 != -1)
            {
              operator new();
            }
          }
        }

        ++v6;
      }

      while (v6 != v8);
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,false>(0, 0, 0, 1, v4);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2072, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v33);
  }
}

void sub_23CBBCB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, char a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::glop::FreeConstraintPreprocessor::Run(operations_research::glop::FreeConstraintPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*(*(a2 + 8) + 8 * i) == -INFINITY && *(*(a2 + 11) + 8 * i) == INFINITY)
        {
          if (i >= *(this + 14))
          {
            std::vector<BOOL>::resize(this + 48, i + 1, 0);
          }

          *(*(this + 6) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << i;
        }
      }
    }

    operations_research::glop::LinearProgram::DeleteRows(a2, this + 6);
    return *(this + 7) != 0;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2164, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v8);
    return 0;
  }
}

void operations_research::glop::FreeConstraintPreprocessor::RecoverSolution(operations_research::glop::FreeConstraintPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::RowDeletionHelper::RestoreDeletedRows(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2180, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

BOOL operations_research::glop::EmptyConstraintPreprocessor::Run(operations_research::glop::EmptyConstraintPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = v5 & 0x7FFFFFFF;
      do
      {
        SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v6);
        v9 = *(SparseColumn + 8);
        if (v9 >= 1)
        {
          v10 = *(SparseColumn + 24);
          do
          {
            v11 = *v10++;
            ++*(4 * v11);
            --v9;
          }

          while (v9);
        }

        ++v6;
      }

      while (v6 != v7);
    }

    v14 = 0;
    operations_research::glop::LinearProgram::DeleteRows(a2, this + 6);
    return *(this + 7) != 0;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2190, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v15);
    return 0;
  }
}

void operations_research::glop::EmptyConstraintPreprocessor::RecoverSolution(operations_research::glop::EmptyConstraintPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::RowDeletionHelper::RestoreDeletedRows(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2228, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

void operations_research::glop::SingletonUndo::Undo(uint64_t result, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = *result;
  if (*result > 1)
  {
    if (v5 == 2)
    {
      operations_research::glop::SingletonUndo::ZeroCostSingletonColumnUndo(result, a2, a4, a5);
      v10 = *(result + 8);
      *(a5[4] + 8 * v10) = *(result + 24) / *(result + 16) + *(a5[4] + 8 * v10);
      v11 = a5[10];
      if (!*(v11 + v10))
      {
        *(a5[7] + *(result + 12)) = 0;
        *(v11 + v10) = 1;
      }
    }

    else if (v5 == 3)
    {
      v6 = *(result + 8);
      v7 = a5[10];
      if (*(v7 + v6) == 1)
      {
        *(v7 + v6) = *(result + 64);
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {

      operations_research::glop::SingletonUndo::SingletonRowUndo(result, a3, a5);
    }
  }

  else
  {

    operations_research::glop::SingletonUndo::ZeroCostSingletonColumnUndo(result, a2, a4, a5);
  }
}

uint64_t operations_research::glop::SingletonUndo::SingletonRowUndo(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 12);
  v4 = a3[7];
  v5 = *(v4 + v3);
  if ((v5 & 0xFFFFFFFB) == 0)
  {
    return result;
  }

  v6 = *(result + 16);
  if (v6 >= 0.0)
  {
    v7 = *(result + 48) / v6;
  }

  else
  {
    v7 = *(result + 56) / v6;
  }

  if (v6 >= 0.0)
  {
    v8 = *(result + 56) / v6;
  }

  else
  {
    v8 = *(result + 48) / v6;
  }

  v9 = v5 != 2;
  v10 = *(result + 32);
  v11 = *(result + 40);
  v12 = v7 > v10;
  if (v7 > v10)
  {
    v9 = 1;
  }

  v13 = v5 != 3;
  if (v8 < v11)
  {
    v12 = 1;
    v13 = 1;
  }

  v14 = !v12 || !v9;
  if (v14 || !v13)
  {
    return result;
  }

  v16 = a2[1];
  if (v16 < 1)
  {
    v20 = 0.0;
  }

  else
  {
    v17 = a2[4];
    v18 = a3[4];
    if (v16 == 1)
    {
      v19 = 0;
      v20 = 0.0;
    }

    else
    {
      v19 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v21 = (v17 + 8);
      v20 = 0.0;
      v22 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v23 = a2[3];
      do
      {
        v24 = *v23++;
        v25 = vshrq_n_s64(vshll_n_s32(v24, 0x20uLL), 0x1DuLL);
        v20 = v20 + *(v18 + v25.i64[0]) * *(v21 - 1) + *(v18 + v25.i64[1]) * *v21;
        v21 += 2;
        v22 -= 2;
      }

      while (v22);
      if (v16 == v19)
      {
        goto LABEL_28;
      }
    }

    v26 = v16 - v19;
    v27 = (v17 + 8 * v19);
    v28 = (a2[3] + 4 * v19);
    do
    {
      v29 = *v28++;
      v30 = *(v18 + 8 * v29);
      v31 = *v27++;
      v20 = v20 + v30 * v31;
      --v26;
    }

    while (v26);
  }

LABEL_28:
  v32 = *(result + 24) - v20;
  v33 = -v32;
  if (!*(result + 4))
  {
    v33 = v32;
  }

  if (v5 == 1)
  {
    if (v7 <= v10 && v33 >= 0.0)
    {
      *(v4 + v3) = 2;
      return result;
    }

    if (v33 <= 0.0 && v8 >= v11)
    {
      *(v4 + v3) = 3;
      return result;
    }
  }

  *(a3[4] + 8 * *(result + 8)) = v32 / v6;
  v35 = result;
  result = operations_research::glop::VariableToConstraintStatus(v5);
  if (v8 >= v11)
  {
    v37 = 2;
  }

  else
  {
    v37 = result;
  }

  if (v7 <= v10)
  {
    v37 = 3;
  }

  if (v5 != 1)
  {
    v37 = result;
  }

  if (v37 == 3)
  {
    v38 = 2;
  }

  else
  {
    v38 = v37;
  }

  if (v37 == 2)
  {
    v38 = 3;
  }

  if (*(v35 + 16) >= 0.0)
  {
    v38 = v37;
  }

  v39 = *(v35 + 8);
  *(a3[7] + *(v35 + 12)) = 0;
  *(a3[10] + v39) = v38;
  return result;
}

double operations_research::glop::SingletonUndo::ZeroCostSingletonColumnUndo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (result == v5)
  {
    v6 = *(a1 + 12);
    *(a4[1] + 8 * v6) = v5;
    v7 = a4[7];
LABEL_3:
    v8 = 1;
LABEL_4:
    *(v7 + v6) = v8;
    return result;
  }

  v6 = *(a1 + 8);
  v7 = a4[10];
  v9 = *(v7 + v6);
  if (v9 == 1)
  {
    v10 = *(a4[4] + 8 * v6);
    if (*(a1 + 4))
    {
      v10 = -v10;
    }

    v6 = *(a1 + 12);
    v11 = a4[1];
    v12 = 8 * v6;
    if (v10 > 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

  if ((v9 & 0xFE) != 2)
  {
    v15 = a3[1];
    if (v15 < 1)
    {
      v19 = 0.0;
      goto LABEL_27;
    }

    v16 = a3[4];
    v17 = a4[1];
    if (v15 == 1)
    {
      v18 = 0;
      v19 = 0.0;
    }

    else
    {
      v18 = v15 & 0x7FFFFFFFFFFFFFFELL;
      v21 = (v16 + 8);
      v19 = 0.0;
      v22 = v15 & 0x7FFFFFFFFFFFFFFELL;
      v23 = a3[3];
      do
      {
        v24 = *v23++;
        v25 = vshrq_n_s64(vshll_n_s32(v24, 0x20uLL), 0x1DuLL);
        v19 = v19 + *(v17 + v25.i64[0]) * *(v21 - 1) + *(v17 + v25.i64[1]) * *v21;
        v21 += 2;
        v22 -= 2;
      }

      while (v22);
      if (v15 == v18)
      {
LABEL_27:
        v32 = *(a2 + 200);
        if (v5 == -INFINITY)
        {
          goto LABEL_40;
        }

        v33 = v19 + *(a1 + 16) * v5;
        v34 = *(a1 + 48);
        v35 = fabs(v33);
        if (v35 == INFINITY)
        {
          if (v34 > v33)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v36 = fabs(v34);
          if (v35 < v36)
          {
            v36 = v35;
          }

          if (v33 + v32 * fmax(v36, 1.0) < v34)
          {
            goto LABEL_40;
          }
        }

        v37 = *(a1 + 56);
        v38 = fabs(v37);
        if (v38 == INFINITY)
        {
          if (v33 > v37)
          {
            goto LABEL_40;
          }

LABEL_36:
          v6 = *(a1 + 12);
          v11 = a4[1];
          v12 = 8 * v6;
LABEL_9:
          *(v11 + v12) = v5;
          v7 = a4[7];
          v8 = 2;
          goto LABEL_4;
        }

        if (v38 < v35)
        {
          v35 = v38;
        }

        if (v37 + v32 * fmax(v35, 1.0) >= v33)
        {
          goto LABEL_36;
        }

LABEL_40:
        if (result == INFINITY)
        {
          v40 = *(a1 + 48);
          goto LABEL_56;
        }

        v39 = v19 + *(a1 + 16) * result;
        v40 = *(a1 + 48);
        v41 = fabs(v39);
        if (v41 == INFINITY)
        {
          if (v40 > v39)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v42 = fabs(v40);
          if (v41 < v42)
          {
            v42 = v41;
          }

          if (v39 + v32 * fmax(v42, 1.0) < v40)
          {
            goto LABEL_56;
          }
        }

        v43 = *(a1 + 56);
        v44 = fabs(v43);
        if (v44 == INFINITY)
        {
          if (v39 > v43)
          {
            goto LABEL_56;
          }

LABEL_50:
          v6 = *(a1 + 12);
          v11 = a4[1];
          v12 = 8 * v6;
LABEL_51:
          *(v11 + v12) = result;
          v7 = a4[7];
LABEL_52:
          v8 = 3;
          goto LABEL_4;
        }

        if (v44 < v41)
        {
          v41 = v44;
        }

        if (v43 + v32 * fmax(v41, 1.0) >= v39)
        {
          goto LABEL_50;
        }

LABEL_56:
        v45 = *(a1 + 56);
        if (v40 == -INFINITY)
        {
          result = INFINITY;
          if (v45 == INFINITY)
          {
            v6 = *(a1 + 12);
            *(a4[1] + 8 * v6) = 0;
            v7 = a4[7];
            v8 = 4;
            goto LABEL_4;
          }

          v49 = *(a1 + 12);
          v47 = v49 << 32;
          *(a4[7] + v49) = 0;
          if (v40 == v45)
          {
            goto LABEL_63;
          }

          result = *(a1 + 16);
          v50 = (v45 - v19) / result;
LABEL_71:
          *(a4[1] + (v47 >> 29)) = v50;
          goto LABEL_52;
        }

        v46 = *(a1 + 12);
        v47 = v46 << 32;
        *(a4[7] + v46) = 0;
        if (v40 == v45)
        {
LABEL_63:
          result = (v40 - v19) / *(a1 + 16);
          *(a4[1] + (v47 >> 29)) = result;
          goto LABEL_3;
        }

        if (v45 == INFINITY)
        {
          result = *(a1 + 16);
          v48 = (v40 - v19) / result;
        }

        else
        {
          v51 = *(a1 + 16);
          v48 = (v40 - v19) / v51;
          v50 = (v45 - v19) / v51;
          v52 = v5 - v48;
          if (v5 - v48 < v48 - result)
          {
            v52 = v48 - result;
          }

          v53 = v5 - v50;
          result = v50 - result;
          if (v53 >= result)
          {
            result = v53;
          }

          if (v52 >= result)
          {
            goto LABEL_71;
          }
        }

        *(a4[1] + 8 * v46) = v48;
        v8 = 2;
        goto LABEL_4;
      }
    }

    v26 = v15 - v18;
    v27 = (v16 + 8 * v18);
    v28 = (a3[3] + 4 * v18);
    do
    {
      v29 = *v28++;
      v30 = *(v17 + 8 * v29);
      v31 = *v27++;
      v19 = v19 + v30 * v31;
      --v26;
    }

    while (v26);
    goto LABEL_27;
  }

  v13 = *(a1 + 16);
  if (v9 == 3)
  {
    if (v13 > 0.0)
    {
LABEL_13:
      v14 = 2;
      result = *(a1 + 32);
      goto LABEL_19;
    }
  }

  else if (v13 < 0.0)
  {
    goto LABEL_13;
  }

  v14 = 3;
LABEL_19:
  v20 = *(a1 + 12);
  *(a4[1] + 8 * v20) = result;
  *(a4[7] + v20) = v14;
  result = *(a1 + 56);
  if (result == *(a1 + 48))
  {
    goto LABEL_3;
  }

  return result;
}

void operations_research::glop::SingletonPreprocessor::DeleteSingletonRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44[0] = a2;
  v44[1] = a3;
  v5 = *(a4 + 64);
  v6 = *(a4 + 88);
  if (*&a3 >= 0.0)
  {
    v7 = *(v6 + 8 * a2) / *&a3;
  }

  else
  {
    v7 = *(v5 + 8 * a2) / *&a3;
  }

  if (*&a3 >= 0.0)
  {
    v8 = *(v5 + 8 * a2) / *&a3;
  }

  else
  {
    v8 = *(v6 + 8 * a2) / *&a3;
  }

  v9 = *(a4 + 160);
  v10 = (a2 >> 29) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v9 + v10);
  v12 = *(a4 + 184);
  v13 = *(v12 + v10);
  v14 = *(a1 + 16);
  v15 = fabs(*(v14 + 200) / *&a3);
  if (v8 - v15 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v8;
  }

  if (v7 + v15 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v7;
  }

  if (v17 == -INFINITY || v16 == INFINITY)
  {
    if (dword_2810C01C0 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01B8, dword_2810C01C0))
    {
      goto LABEL_19;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v34, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2294);
    v32 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v34, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "Problem ProblemStatus::PRIMAL_INFEASIBLE, singleton row causes the bound of the variable ", 0x59uLL);
    v33 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v32, v44 + 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, " to go to infinity.", 0x13uLL);
    goto LABEL_41;
  }

  if (v17 < v16)
  {
    v20 = fabs(v17);
    if (v20 == INFINITY)
    {
      if (v16 <= v17)
      {
LABEL_23:
        if (v16 == v11)
        {
          v21 = v16;
        }

        else
        {
          v21 = v17;
        }

        if (v21 == v13)
        {
          v17 = v21;
        }

        else
        {
          v17 = v16;
        }

        v16 = v17;
        goto LABEL_30;
      }
    }

    else
    {
      v29 = fabs(v16);
      if (v20 >= v29)
      {
        v20 = v29;
      }

      if (v17 + *(v14 + 136) * fmax(v20, 1.0) >= v16)
      {
        goto LABEL_23;
      }
    }

    if (dword_2810C01D8 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01D0, dword_2810C01D8))
    {
LABEL_19:
      *(a1 + 8) = 1;
      return;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v34, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2304);
    v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v34, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "Problem ProblemStatus::PRIMAL_INFEASIBLE, singleton row causes the bound of the variable ", 0x59uLL);
    v31 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v30, v44 + 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, " to be infeasible by ", 0x15uLL);
    v45 = v16 - v17;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v31, &v45);
LABEL_41:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v34);
    goto LABEL_19;
  }

LABEL_30:
  v22 = a2 << 32;
  if (a2 >= *(a1 + 128))
  {
    v23 = a2;
    v24 = a3;
    std::vector<BOOL>::resize(a1 + 120, (v22 + 0x100000000) >> 32, 0);
    LOBYTE(a2) = v23;
    a3 = v24;
    v9 = *(a4 + 160);
    v12 = *(a4 + 184);
    v5 = *(a4 + 64);
    v6 = *(a4 + 88);
  }

  *(*(a1 + 120) + (((v22 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  v34 = 1;
  v35 = *(a4 + 408);
  v36 = v44[0];
  v37 = a3;
  v25 = (v44[0] >> 29) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(*(a4 + 136) + v25);
  v39 = *(v9 + v25);
  v40 = *(v12 + v25);
  v26 = 8 * SLODWORD(v44[0]);
  v41 = *(v5 + v26);
  v42 = *(v6 + v26);
  v43 = 4;
  std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](a1 + 144, &v34);
  v27 = HIDWORD(v44[0]);
  SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a4, SHIDWORD(v44[0]));
  operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone((a1 + 240), v27, SparseColumn);
  operations_research::glop::LinearProgram::SetVariableBounds(a4, SHIDWORD(v44[0]), v16, v17);
}

void std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = v5;
    v8 = v3 + 72;
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = v3 - *a1;
  v11 = 0x8E38E38E38E38E39 * (v10 >> 3) + 1;
  if (v11 > 0x38E38E38E38E38ELL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = 0x8E38E38E38E38E39 * ((v4 - v9) >> 3);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x1C71C71C71C71C7)
  {
    v13 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v14 = 8 * (v10 >> 3);
  v15 = *(a2 + 48);
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = v15;
  *(v14 + 64) = *(a2 + 64);
  v16 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v16;
  v8 = v14 + 72;
  v17 = v14 - v10;
  memcpy((v14 - v10), v9, v10);
  *a1 = v17;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

BOOL operations_research::glop::SingletonPreprocessor::IntegerSingletonColumnIsRemovable(uint64_t a1, double *a2, uint64_t **this)
{
  TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(this);
  v7 = *a2;
  v8 = &(*TransposeSparseMatrix)[6 * *a2];
  v9 = v8[1];
  if (v9 < 1)
  {
LABEL_10:
    v18 = v7;
    if ((this[8][v18] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((v19 = *&this[8][v18] / a2[1], v20 = fabs(v19), v21 = vabdd_f64(v19, round(v19)), v20 != INFINITY) ? (v22 = v21 > *(*(a1 + 16) + 136)) : (v22 = 1), v22))
    {
      return 0;
    }

    else
    {
      v23 = *&this[11][v18];
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((v24 = v23 / a2[1], v25 = fabs(v24), v26 = vabdd_f64(v24, round(v24)), v25 != INFINITY) ? (v27 = v26 > *(*(a1 + 16) + 136)) : (v27 = 1), v27))
      {
        return 0;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    v10 = v8[3];
    v11 = v8[4];
    while (1)
    {
      v12 = *v10++;
      result = operations_research::glop::LinearProgram::IsVariableInteger(this, v12);
      if (!result)
      {
        break;
      }

      v14 = *v11 / a2[1];
      v15 = fabs(v14);
      v16 = vabdd_f64(v14, round(v14));
      if (v15 == INFINITY || v16 > *(*(a1 + 16) + 136))
      {
        return 0;
      }

      ++v11;
      if (!--v9)
      {
        v7 = *a2;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void operations_research::glop::SingletonPreprocessor::DeleteSingletonColumnInEquality(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v9 = a3;
  v10 = (*a2 + 48 * a3);
  v23 = 2;
  v24 = *(a5 + 408);
  v11 = (a3 >> 29) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(*(a5 + 136) + v11);
  v28 = *(*(a5 + 160) + v11);
  v29 = *(*(a5 + 184) + v11);
  v12 = 8 * a3;
  v30 = *(*(a5 + 64) + v12);
  v31 = *(*(a5 + 88) + v12);
  v32 = 4;
  std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](a1 + 144, &v23);
  operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone((a1 + 368), v9, v10);
  v13 = *(*(a5 + 136) + v11) / *&a4;
  operations_research::glop::LinearProgram::SetObjectiveOffset(a5, *(a5 + 392) + *(*(a5 + 88) + v12) * v13);
  v14 = v10[1];
  if (v14 >= 1)
  {
    v16 = v10[3];
    v15 = v10[4];
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (v19 >= *(a1 + 56) || ((*(*(a1 + 48) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        v17 = *(*(a5 + 136) + 8 * v18) - *v15 * v13;
        if (fabs(v17) < *(*(a1 + 16) + 200))
        {
          v17 = 0.0;
        }

        operations_research::glop::LinearProgram::SetObjectiveCoefficient(a5, v18, v17);
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  v20 = *(a5 + 160);
  v21 = -(*&a4 * *(v20 + v11));
  if (*&a4 >= 0.0)
  {
    v22 = -(*&a4 * *(*(a5 + 184) + v11));
  }

  else
  {
    v22 = -(*&a4 * *(v20 + v11));
  }

  if (*&a4 < 0.0)
  {
    v21 = -(*&a4 * *(*(a5 + 184) + v11));
  }

  operations_research::glop::LinearProgram::SetConstraintBounds(a5, v9, *(*(a5 + 64) + v12) + v22, v21 + *(*(a5 + 88) + v12));
  operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(a1 + 48, HIDWORD(a3), 4, 0.0);
}

BOOL operations_research::glop::SingletonPreprocessor::MakeConstraintAnEqualityIfPossible(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v110 = a3;
  *(&v110 + 1) = a4;
  v5 = 8 * a3;
  v6 = *(*(a5 + 64) + v5);
  v7 = *(*(a5 + 88) + v5);
  if (v6 == v7)
  {
    return 1;
  }

  if (v6 == -INFINITY && v7 == INFINITY)
  {
    return 0;
  }

  if (*(a1 + 24) == 1)
  {
    v12 = a2;
    v13 = a3;
    v14 = a4;
    IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(a5, SHIDWORD(a3));
    a4 = v14;
    a3 = v13;
    a2 = v12;
    if (IsVariableInteger)
    {
      return 0;
    }
  }

  v16 = *&a4;
  v17 = a3;
  if (a3 >= *(a1 + 176))
  {
    v18 = a3;
    v19 = a2;
    v20 = ((a3 << 32) + 0x100000000) >> 32;
    std::vector<BOOL>::resize(a1 + 168, v20, 0);
    v21 = *(a1 + 192);
    v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 200) - v21) >> 3);
    if (v20 <= v22)
    {
      if (v20 < v22)
      {
        *(a1 + 200) = v21 + 24 * v20;
      }
    }

    else
    {
      std::vector<operations_research::glop::SumWithOneMissing<false>>::__append(a1 + 192, v20 - v22);
    }

    v23 = *(a1 + 216);
    v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 224) - v23) >> 3);
    if (v20 <= v24)
    {
      a2 = v19;
      LODWORD(a3) = v18;
      if (v20 < v24)
      {
        *(a1 + 224) = v23 + 24 * v20;
      }
    }

    else
    {
      std::vector<operations_research::glop::SumWithOneMissing<false>>::__append(a1 + 216, v20 - v24);
      a2 = v19;
      LODWORD(a3) = v18;
    }
  }

  else if ((*(*(a1 + 168) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
  {
    goto LABEL_48;
  }

  *(*(a1 + 168) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
  v25 = *(a1 + 192);
  v26 = v25 + 24 * v17;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = *(v26 + 8);
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = v6 + *(v26 + 16);
      *(v26 + 8) = v27 + v28;
      *(v26 + 16) = v28 + v27 - (v27 + v28);
    }
  }

  else
  {
    ++*v26;
    LODWORD(v17) = v110;
    LODWORD(a3) = v110;
  }

  v29 = *(a1 + 216);
  v30 = v29 + 24 * v17;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v31 = *(v30 + 8);
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v32 = v7 + *(v30 + 16);
      *(v30 + 8) = v31 + v32;
      *(v30 + 16) = v32 + v31 - (v31 + v32);
    }
  }

  else
  {
    ++*v30;
    LODWORD(a3) = v110;
  }

  v33 = (*a2 + 48 * a3);
  v34 = v33[1];
  if (v34 >= 1)
  {
    v35 = v33[3];
    v36 = v33[4];
    v37 = *(a1 + 56);
    do
    {
      v39 = *v35++;
      v38 = v39;
      if (v39 >= v37 || ((*(*(a1 + 48) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        v40 = v110;
        v41 = v25 + 24 * v110;
        v42 = -*v36;
        v43 = 8 * v38;
        if (*v36 <= 0.0)
        {
          if (COERCE__INT64(fabs(*(*(a5 + 160) + v43) * v42)) < 0x7FF0000000000000)
          {
            v48 = *(v41 + 8);
            if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v49 = *(*(a5 + 160) + v43) * v42 + *(v41 + 16);
              *(v41 + 8) = v48 + v49;
              *(v41 + 16) = v49 + v48 - (v48 + v49);
              v42 = -*v36;
            }
          }

          else
          {
            ++*v41;
            v40 = v110;
          }

          v46 = v29 + 24 * v40;
          v47 = *(*(a5 + 184) + v43) * v42;
          if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
LABEL_46:
            v50 = *(v46 + 8);
            if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v51 = v47 + *(v46 + 16);
              *(v46 + 8) = v50 + v51;
              *(v46 + 16) = v51 + v50 - (v50 + v51);
            }

            goto LABEL_31;
          }
        }

        else
        {
          if (COERCE__INT64(fabs(*(*(a5 + 184) + v43) * v42)) < 0x7FF0000000000000)
          {
            v44 = *(v41 + 8);
            if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v45 = *(*(a5 + 184) + v43) * v42 + *(v41 + 16);
              *(v41 + 8) = v44 + v45;
              *(v41 + 16) = v45 + v44 - (v44 + v45);
              v42 = -*v36;
            }
          }

          else
          {
            ++*v41;
            v40 = v110;
          }

          v46 = v29 + 24 * v40;
          v47 = *(*(a5 + 160) + v43) * v42;
          if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            goto LABEL_46;
          }
        }

        ++*v46;
      }

LABEL_31:
      ++v36;
      --v34;
    }

    while (v34);
  }

LABEL_48:
  v52 = DWORD1(v110);
  v53 = v110;
  v54 = -v16;
  v55 = 8 * SDWORD1(v110);
  v56 = -(v16 * *(*(a5 + 184) + v55));
  v57 = fabs(v56);
  if (v16 <= 0.0)
  {
    v61 = *(a1 + 216) + 24 * v110;
    v62 = *v61;
    if (*&v57 < 0x7FF0000000000000)
    {
      if (v62 <= 0)
      {
        v64 = *(v61 + 8) - v56;
      }

      else
      {
        v64 = INFINITY;
      }

      v60 = v64 + v57 * 1.0e-12;
    }

    else if (v62 <= 1)
    {
      v60 = *(v61 + 8);
    }

    else
    {
      v60 = INFINITY;
    }

    v65 = *(a1 + 192) + 24 * v110;
    v72 = *(*(a5 + 160) + 8 * SDWORD1(v110)) * v54;
    v73 = *v65;
    if (COERCE__INT64(fabs(v72)) >= 0x7FF0000000000000)
    {
      if (v73 > 1)
      {
        v68 = -INFINITY;
        ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
        if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      goto LABEL_77;
    }

    v70 = fabs(v72);
    if (v73 <= 0)
    {
      v71 = *(v65 + 8) - v72;
    }

    else
    {
      v71 = -INFINITY;
    }

    v74 = -1.0e-12;
  }

  else
  {
    v58 = *(a1 + 192) + 24 * v110;
    v59 = *v58;
    if (*&v57 < 0x7FF0000000000000)
    {
      if (v59 <= 0)
      {
        v63 = *(v58 + 8) - v56;
      }

      else
      {
        v63 = -INFINITY;
      }

      v60 = v63 + v57 * -1.0e-12;
    }

    else if (v59 <= 1)
    {
      v60 = *(v58 + 8);
    }

    else
    {
      v60 = -INFINITY;
    }

    v65 = *(a1 + 216) + 24 * v110;
    v66 = *(*(a5 + 160) + 8 * SDWORD1(v110)) * v54;
    v67 = *v65;
    if (COERCE__INT64(fabs(v66)) >= 0x7FF0000000000000)
    {
      if (v67 > 1)
      {
        v68 = INFINITY;
        ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
        if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

LABEL_77:
      v68 = *(v65 + 8);
      ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
      if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }

    v70 = fabs(v66);
    if (v67 <= 0)
    {
      v71 = *(v65 + 8) - v66;
    }

    else
    {
      v71 = INFINITY;
    }

    v74 = 1.0e-12;
  }

  v68 = v71 + v70 * v74;
  ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
  if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
  {
    goto LABEL_86;
  }

LABEL_84:
  v75 = v68 / v16;
  v76 = *(*(a5 + 184) + 8 * SDWORD1(v110));
  v77 = fabs(v76);
  if (v77 == INFINITY)
  {
    if (v75 > v76)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v82 = fabs(v75);
    if (v77 >= v82)
    {
      v77 = v82;
    }

    if (v76 + *(*(a1 + 16) + 200) * fmax(v77, 1.0) < v75)
    {
LABEL_86:
      v78 = 1;
      if (ObjectiveCoefficientForMinimizationVersion <= 0.0)
      {
        goto LABEL_120;
      }

      goto LABEL_87;
    }
  }

  if (v16 <= 0.0)
  {
    if (v6 != -INFINITY)
    {
      v90 = ObjectiveCoefficientForMinimizationVersion;
      operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v6, v6);
      ObjectiveCoefficientForMinimizationVersion = v90;
      v78 = 2;
      if (*(a1 + 8) != 3)
      {
        goto LABEL_111;
      }

      goto LABEL_105;
    }

LABEL_104:
    *(a1 + 8) = 3;
    goto LABEL_105;
  }

  if (v7 == INFINITY)
  {
    goto LABEL_104;
  }

  v83 = ObjectiveCoefficientForMinimizationVersion;
  operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v7, v7);
  ObjectiveCoefficientForMinimizationVersion = v83;
  v78 = 3;
  if (*(a1 + 8) != 3)
  {
LABEL_111:
    v91 = ObjectiveCoefficientForMinimizationVersion;
    operations_research::glop::LinearProgram::SetVariableBounds(a5, SDWORD1(v110), *(*(a5 + 160) + 8 * SDWORD1(v110)), INFINITY);
    ObjectiveCoefficientForMinimizationVersion = v91;
    if (v91 <= 0.0)
    {
      goto LABEL_120;
    }

LABEL_87:
    v79 = v60 / v16;
    v80 = *(*(a5 + 160) + 8 * SDWORD1(v110));
    v81 = fabs(v60 / v16);
    if (v81 == INFINITY)
    {
      if (v80 > v79)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v84 = fabs(v80);
      if (v81 >= v84)
      {
        v81 = v84;
      }

      if (v79 + *(*(a1 + 16) + 200) * fmax(v81, 1.0) < v80)
      {
LABEL_120:
        v97 = *(a5 + 64);
        v98 = *(a5 + 88);
        if (*(v97 + 8 * v53) == *(v98 + 8 * v53))
        {
          v101 = 3;
          v102 = *(a5 + 408);
          v103 = v110;
          v99 = (v110 >> 29) & 0xFFFFFFFFFFFFFFF8;
          v104 = *(*(a5 + 136) + v99);
          v105 = *(*(a5 + 160) + v99);
          v106 = *(*(a5 + 184) + v99);
          v100 = 8 * v110;
          v107 = *(v97 + v100);
          v108 = *(v98 + v100);
          v109 = v78;
          std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](a1 + 144, &v101);
          return 1;
        }

        return 0;
      }
    }

    if (v16 <= 0.0)
    {
      if (v7 != INFINITY)
      {
        v92 = ObjectiveCoefficientForMinimizationVersion;
        operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v7, v7);
        ObjectiveCoefficientForMinimizationVersion = v92;
        v78 = 3;
LABEL_114:
        if (*(a1 + 8) != 3)
        {
          operations_research::glop::LinearProgram::SetVariableBounds(a5, v52, -INFINITY, *(*(a5 + 184) + v55));
          goto LABEL_120;
        }

        if (dword_2810C0208 >= 1)
        {
          v93 = ObjectiveCoefficientForMinimizationVersion;
          result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0200, dword_2810C0208);
          if (!result)
          {
            return result;
          }

          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2801);
          v94 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v101, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v94, "Problem ProblemStatus::INFEASIBLE_OR_UNBOUNDED, singleton variable ", 0x43uLL);
          v95 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v94, &v110 + 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v95, " has a cost (for minimization) of ", 0x22uLL);
          v111 = v93;
          v96 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v95, &v111);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v96, " and is unbounded towards -kInfinity.", 0x25uLL);
          goto LABEL_118;
        }

        return 0;
      }
    }

    else if (v6 != -INFINITY)
    {
      v85 = ObjectiveCoefficientForMinimizationVersion;
      operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v6, v6);
      ObjectiveCoefficientForMinimizationVersion = v85;
      v78 = 2;
      goto LABEL_114;
    }

    *(a1 + 8) = 3;
    goto LABEL_114;
  }

LABEL_105:
  if (dword_2810C01F0 >= 1)
  {
    v86 = ObjectiveCoefficientForMinimizationVersion;
    result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01E8, dword_2810C01F0);
    if (!result)
    {
      return result;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2758);
    v87 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v101, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v87, "Problem ProblemStatus::INFEASIBLE_OR_UNBOUNDED, singleton variable ", 0x43uLL);
    v88 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v87, &v110 + 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v88, " has a cost (for minimization) of ", 0x22uLL);
    v111 = v86;
    v89 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v88, &v111);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v89, " and is unbounded towards kInfinity.", 0x24uLL);
LABEL_118:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v101);
  }

  return 0;
}

void sub_23CBBEC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBBEC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::SingletonPreprocessor::Run(operations_research::glop::SingletonPreprocessor *this, uint64_t **a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v85, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2824, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v85);
    return 0;
  }

  TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a2);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
  v5 = *(a2 + 6);
  v6 = 0xAAAAAAAB00000000 * ((a2[1] - *a2) >> 4);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 1)
  {
    v7 = 0;
    v80 = 0;
    v8 = 1;
    do
    {
      v9 = (*a2)[v8];
      *(8 * v7) = v9;
      if (v9 == 1)
      {
        v10 = v80;
        v11 = v80 >> 2;
        if (((v80 >> 2) + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v80 >> 2 != -1)
        {
          if (!(((v80 >> 2) + 1) >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v11) = v7;
        v80 = 4 * v11 + 4;
        memcpy(0, 0, v10);
      }

      ++v7;
      v8 += 6;
    }

    while ((v4 & 0x7FFFFFFF) != v7);
  }

  else
  {
    v80 = 0;
  }

  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = 0;
  v77 = 0;
  v13 = 0;
  if (*(this + 8) != 6)
  {
    return 0;
  }

  while (2)
  {
    if (v13 == v80 && v12 == v77)
    {
      operations_research::glop::LinearProgram::DeleteColumns(a2, this + 6);
      operations_research::glop::LinearProgram::DeleteRows(a2, this + 15);
      return 1;
    }

    if (v13 == v80)
    {
      v17 = 6;
      goto LABEL_80;
    }

    v17 = 6;
    __src = v13;
    v18 = v80;
    do
    {
      v19 = v13;
      v20 = *(v18 - 4);
      v80 = v18 - 4;
      v21 = (8 * v20);
      if (*v21 < 1)
      {
        v18 -= 4;
        continue;
      }

      v81 = v12;
      v22 = &(*a2)[6 * v20];
      v23 = v22[1];
      if (v23 < 1)
      {
LABEL_34:
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v85, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2946, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, "No unmarked entry in a column that is supposed to have one.", 0x3BuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v85);
        v29 = 0;
        *(this + 8) = 9;
        v30 = 0.0;
        v19 = __src;
      }

      else
      {
        v24 = v20 << 32;
        v26 = v22[3];
        v25 = v22[4];
        while (1)
        {
          v28 = *v26++;
          v27 = v28;
          if (v28 >= *(this + 32) || ((*(*(this + 15) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            break;
          }

          ++v25;
          if (!--v23)
          {
            goto LABEL_34;
          }
        }

        v30 = *v25;
        v29 = v24 | v27;
      }

      v83 = v29;
      v84 = v30;
      if (*(this + 24) == 1)
      {
        IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(a2, SHIDWORD(v29));
        v19 = __src;
        if (IsVariableInteger)
        {
          IsRemovable = operations_research::glop::SingletonPreprocessor::IntegerSingletonColumnIsRemovable(this, &v83, a2);
          v19 = __src;
          if (!IsRemovable)
          {
LABEL_43:
            v13 = v19;
            v17 = *(this + 8);
            v18 = v80;
            if (v17 != 6)
            {
              break;
            }

            continue;
          }
        }
      }

      v33 = a2[17];
      if (*(v21 + v33) == 0.0)
      {
        v34 = *(a2 + 408);
        v35 = (v29 >> 29) & 0xFFFFFFFFFFFFFFF8;
        v36 = *(v33 + v35);
        v37 = *(a2[20] + v35);
        v38 = *(a2[23] + v35);
        v39 = a2[8][v29];
        v40 = a2[11][v29];
        v41 = *(this + 19);
        v42 = *(this + 20);
        if (v41 >= v42)
        {
          v44 = *(this + 18);
          v45 = v41 - v44;
          v46 = 0x8E38E38E38E38E39 * ((v41 - v44) >> 3);
          v47 = v46 + 1;
          if (v46 + 1 > 0x38E38E38E38E38ELL)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v48 = 0x8E38E38E38E38E39 * ((v42 - v44) >> 3);
          if (2 * v48 > v47)
          {
            v47 = 2 * v48;
          }

          if (v48 >= 0x1C71C71C71C71C7)
          {
            v49 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            if (v49 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

LABEL_111:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v50 = 72 * v46;
          *v50 = 0;
          *(v50 + 4) = v34;
          *(v50 + 8) = v29;
          *(v50 + 16) = v30;
          *(v50 + 24) = v36;
          *(v50 + 32) = v37;
          *(v50 + 40) = v38;
          *(v50 + 48) = v39;
          *(v50 + 56) = v40;
          *(v50 + 64) = 4;
          v43 = 72 * v46 + 72;
          v51 = (72 * v46 - v45);
          memcpy(v51, v44, v45);
          *(this + 18) = v51;
          *(this + 19) = v43;
          *(this + 20) = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *v41 = 0;
          *(v41 + 4) = v34;
          *(v41 + 8) = v29;
          *(v41 + 16) = v30;
          *(v41 + 24) = v36;
          *(v41 + 32) = v37;
          *(v41 + 40) = v38;
          *(v41 + 48) = v39;
          *(v41 + 56) = v40;
          v43 = v41 + 72;
          *(v41 + 64) = 4;
        }

        *(this + 19) = v43;
        operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone(this + 46, v29, &(*TransposeSparseMatrix)[6 * v29]);
        v52 = -(v30 * *(a2[20] + v35));
        if (v30 >= 0.0)
        {
          v53 = -(v30 * *(a2[23] + v35));
        }

        else
        {
          v53 = -(v30 * *(a2[20] + v35));
        }

        if (v30 < 0.0)
        {
          v52 = -(v30 * *(a2[23] + v35));
        }

        operations_research::glop::LinearProgram::SetConstraintBounds(a2, v29, *&a2[8][v29] + v53, v52 + *&a2[11][v29]);
        operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 48, HIDWORD(v29), 4, 0.0);
      }

      else
      {
        if (fabs(v30) < *(*(this + 2) + 200))
        {
          goto LABEL_43;
        }

        if (!operations_research::glop::SingletonPreprocessor::MakeConstraintAnEqualityIfPossible(this, TransposeSparseMatrix, v29, *&v30, a2))
        {
LABEL_65:
          v13 = __src;
          v18 = v80;
          v12 = v81;
          v17 = *(this + 8);
          if (v17 != 6)
          {
            break;
          }

          continue;
        }

        operations_research::glop::SingletonPreprocessor::DeleteSingletonColumnInEquality(this, TransposeSparseMatrix, v29, *&v30, a2);
      }

      v54 = *(8 * v29) - 1;
      *(8 * v29) = v54;
      if (v54 != 1)
      {
        goto LABEL_65;
      }

      v55 = v77 - v81;
      v56 = (v77 - v81) >> 2;
      v57 = v56 + 1;
      if ((v56 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v81 >> 1 > v57)
      {
        v57 = -v81 >> 1;
      }

      if (-v81 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v58 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v58 = v57;
      }

      if (v58)
      {
        if (!(v58 >> 62))
        {
          operator new();
        }

        goto LABEL_111;
      }

      *(4 * v56) = v29;
      v77 = 4 * v56 + 4;
      memcpy(0, v81, v55);
      v12 = 0;
      v13 = __src;
      v17 = *(this + 8);
      v18 = v80;
      if (v17 != 6)
      {
        break;
      }
    }

    while (v13 != v18);
    if (v17 != 6)
    {
      v16 = v77;
      goto LABEL_21;
    }

LABEL_80:
    v16 = v77;
    v82 = v12;
    while (v12 != v16)
    {
      v60 = *(v16 - 4);
      v16 -= 4;
      v59 = v60;
      if (*(8 * v60) < 1)
      {
        continue;
      }

      v61 = v13;
      v62 = &(*TransposeSparseMatrix)[6 * v59];
      v63 = v62[1];
      if (v63 < 1)
      {
LABEL_89:
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v85, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2962, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, "No unmarked entry in a row that is supposed to have one.", 0x38uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v85);
        v68 = 0;
        v69 = 0;
        *(this + 8) = 9;
        v83 = 0;
        v84 = 0.0;
        LODWORD(v70) = 0;
        if (*(this + 24) != 1)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v64 = v62[3];
        v65 = v62[4];
        while (1)
        {
          v67 = *v64++;
          v66 = v67;
          if (v67 >= *(this + 14) || ((*(*(this + 6) + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
          {
            break;
          }

          ++v65;
          if (!--v63)
          {
            goto LABEL_89;
          }
        }

        v68 = *v65;
        v69 = v59 | (v66 << 32);
        v83 = v69;
        v84 = *&v68;
        v70 = HIDWORD(v69);
        if (*(this + 24) != 1)
        {
          goto LABEL_94;
        }
      }

      if (operations_research::glop::LinearProgram::IsVariableInteger(a2, v70) && !operations_research::glop::SingletonPreprocessor::IntegerSingletonColumnIsRemovable(this, &v83, a2))
      {
LABEL_95:
        v12 = v82;
        v13 = v61;
        v17 = *(this + 8);
        if (v17 != 6)
        {
          break;
        }

        continue;
      }

LABEL_94:
      operations_research::glop::SingletonPreprocessor::DeleteSingletonRow(this, v69, v68, a2);
      v71 = ((v69 >> 29) & 0xFFFFFFFFFFFFFFF8);
      v72 = *v71 - 1;
      *v71 = v72;
      if (v72 != 1)
      {
        goto LABEL_95;
      }

      v73 = v80 - v61;
      v74 = (v80 - v61) >> 2;
      v75 = v74 + 1;
      if ((v74 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v61 >> 1 > v75)
      {
        v75 = -v61 >> 1;
      }

      if (-v61 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v76 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v76 = v75;
      }

      if (v76)
      {
        if (!(v76 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = 0;
      *(4 * v74) = v70;
      v80 = 4 * v74 + 4;
      memcpy(0, v61, v73);
      v12 = v82;
      v17 = *(this + 8);
      if (v17 != 6)
      {
        break;
      }
    }

LABEL_21:
    v77 = v16;
    if (v17 == 6)
    {
      continue;
    }

    return 0;
  }
}

void sub_23CBBF868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    operator delete(v20);
    v24 = __p;
    if (!__p)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  if (!v22)
  {
LABEL_4:
    if (!v21)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v22);
  if (!v21)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v21);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::SingletonPreprocessor::RecoverSolution(operations_research::glop::SingletonPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 48), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 120), a2);
    v4 = 954437177 * ((*(this + 19) - *(this + 18)) >> 3) - 1;
    if ((v4 & 0x80000000) == 0)
    {
      v5 = (this + 304);
      v6 = (this + 432);
      while (1)
      {
        v8 = *(this + 18) + 72 * v4;
        v9 = *(v8 + 12);
        v10 = *(this + 36);
        if (v10 > 1)
        {
          break;
        }

        if (*(this + 37) >= 2uLL)
        {
          _ZF = *v5 == v9;
          if (*v5 == v9)
          {
            v9 = this + 304;
          }

          v40 = &absl::lts_20240722::container_internal::kSooControl;
          if (!_ZF)
          {
            v40 = 0;
          }

          v11 = (this + 240);
          if (!v40)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

LABEL_7:
        v11 = (this + 240);
LABEL_17:
        v26 = *(v8 + 8);
        v27 = *(this + 52);
        if (v27 > 1)
        {
          v29 = 0;
          _X10 = *v6;
          __asm { PRFM            #4, [X10] }

          v32 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v26) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v26));
          v33 = vdup_n_s8(v32 & 0x7F);
          v34 = ((v32 >> 7) ^ (*v6 >> 12)) & v27;
          v35 = *(*v6 + v34);
          v36 = vceq_s8(v35, v33);
          if (!v36)
          {
            goto LABEL_24;
          }

LABEL_21:
          v37 = *(this + 55);
          while (1)
          {
            v38 = (v34 + (__clz(__rbit64(v36)) >> 3)) & v27;
            if (*(v37 + 8 * v38) == v26)
            {
              break;
            }

            v36 &= ((v36 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v36)
            {
LABEL_24:
              while (!*&vceq_s8(v35, 0x8080808080808080))
              {
                v29 += 8;
                v34 = (v29 + v34) & v27;
                v35 = *(_X10 + v34);
                v36 = vceq_s8(v35, v33);
                if (v36)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_19;
            }
          }

          v26 = v37 + 8 * v38;
          v28 = (this + 368);
          if (_X10 + v38)
          {
            goto LABEL_40;
          }
        }

        else if (*(this + 53) >= 2uLL)
        {
          v41 = *v6 == v26;
          if (*v6 == v26)
          {
            v26 = this + 432;
          }

          v42 = &absl::lts_20240722::container_internal::kSooControl;
          if (!v41)
          {
            v42 = 0;
          }

          v28 = (this + 368);
          if (v42)
          {
LABEL_40:
            v43 = *(this + 60) + *(v26 + 4);
            v28 = (*(*(this + 57) + 8 * (v43 / 0x55)) + 48 * (v43 % 0x55));
          }
        }

        else
        {
LABEL_19:
          v28 = (this + 368);
        }

        operations_research::glop::SingletonUndo::Undo(v8, *(this + 2), v11, v28, a2);
        if (v4-- <= 0)
        {
          return;
        }
      }

      v12 = 0;
      _X10 = *v5;
      __asm { PRFM            #4, [X10] }

      v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9));
      v19 = vdup_n_s8(v18 & 0x7F);
      v20 = ((v18 >> 7) ^ (*v5 >> 12)) & v10;
      v21 = *(*v5 + v20);
      v22 = vceq_s8(v21, v19);
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_9:
      v23 = *(this + 39);
      while (1)
      {
        v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v10;
        if (*(v23 + 8 * v24) == v9)
        {
          break;
        }

        v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v22)
        {
LABEL_12:
          while (!*&vceq_s8(v21, 0x8080808080808080))
          {
            v12 += 8;
            v20 = (v12 + v20) & v10;
            v21 = *(_X10 + v20);
            v22 = vceq_s8(v21, v19);
            if (v22)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_7;
        }
      }

      v9 = v23 + 8 * v24;
      v11 = (this + 240);
      if (!(_X10 + v24))
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *(this + 44) + *(v9 + 4);
      v11 = (*(*(this + 41) + 8 * (v25 / 0x55)) + 48 * (v25 % 0x55));
      goto LABEL_17;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2914, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v44);
  }
}

BOOL operations_research::glop::SingletonColumnSignPreprocessor::Run(operations_research::glop::SingletonColumnSignPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v3 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    if (v3)
    {
      v5 = this + 48;
      *(this + 7) = *(this + 6);
      v18[0] = 0;
      if (v3 < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        do
        {
          MutableSparseColumn = operations_research::glop::LinearProgram::GetMutableSparseColumn(a2, v7);
          v9 = v18[0];
          if (*(MutableSparseColumn + 8) == 1)
          {
            ++v6;
            v10 = *(MutableSparseColumn + 32);
            if (*v10 < 0.0)
            {
              v11 = 8 * v18[0];
              v12 = *(*(a2 + 17) + v11);
              *v10 = -*v10;
              operations_research::glop::LinearProgram::SetVariableBounds(a2, v9, -*(*(a2 + 23) + v11), -*(*(a2 + 20) + v11));
              operations_research::glop::LinearProgram::SetObjectiveCoefficient(a2, v18[0], -v12);
              std::vector<int>::push_back[abi:ne200100](v5, v18);
              v9 = v18[0];
            }
          }

          v7 = v9 + 1;
          v18[0] = v9 + 1;
        }

        while (v9 + 1 < v3);
      }

      if (dword_2810C0220 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0218, dword_2810C0220))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2994);
        v14 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "Changed the sign of ", 0x14uLL);
        v19 = (*(this + 7) - *(this + 6)) >> 2;
        v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v14, &v19);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, " columns.", 9uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
      }

      if (dword_2810C0238 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0230, dword_2810C0238))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2995);
        v16 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v18, 1);
        LODWORD(v19) = v6;
        v17 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v16, &v19);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, " singleton columns left.", 0x18uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
      }

      return *(this + 6) != *(this + 7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2973, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
    return 0;
  }
}

void sub_23CBBFF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBBFF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBBFF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::SingletonColumnSignPreprocessor::RecoverSolution(operations_research::glop::SingletonColumnSignPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = *(this + 6);
    v3 = *(this + 7) - v2;
    if (v3)
    {
      v4 = 0;
      v5 = v3 >> 2;
      v6 = *(a2 + 1);
      v7 = *(a2 + 7);
      v8 = 1;
      do
      {
        v10 = *(v2 + 4 * v4);
        *(v6 + 8 * v10) = -*(v6 + 8 * v10);
        v11 = *(v7 + v10);
        if (v11 == 3)
        {
          v9 = 2;
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_6;
          }

          v9 = 3;
        }

        *(v7 + v10) = v9;
LABEL_6:
        v4 = v8++;
      }

      while (v5 > v4);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3002, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v12);
  }
}

BOOL operations_research::glop::DoubletonEqualityRowPreprocessor::Run(char **this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = (a2 + 64);
    v5 = this + 21;
    if (v5 != (a2 + 64))
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v5, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
    }

    if (this + 24 != (a2 + 88))
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 24, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
    }

    if (this + 43 != (a2 + 136))
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 43, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 3);
    }

    TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a2);
    v6 = *(a2 + 6);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 3;
      do
      {
        if ((*TransposeSparseMatrix)[v8 - 2] == 2 && *(*v4 + 8 * v7) == *(*(a2 + 11) + 8 * v7))
        {
          v9 = (*TransposeSparseMatrix)[v8];
          operations_research::glop::LinearProgram::GetSparseColumn(a2, *v9);
          operations_research::glop::LinearProgram::GetSparseColumn(a2, v9[1]);
          operator new();
        }

        ++v7;
        v8 += 6;
      }

      while (v6 != v7);
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(0, 0, &v13, 0, 1);
    if (*(this + 8) == 6)
    {
      operations_research::glop::LinearProgram::DeleteColumns(a2, this + 6);
      operations_research::glop::LinearProgram::DeleteRows(a2, this + 15);
      return this[7] != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3021, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v13, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v13, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v13);
    return 0;
  }
}

void sub_23CBC0858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::glop::DoubletonEqualityRowPreprocessor::RestoreInfo>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    *(v3 + 64) = v8;
    v11 = v3 + 120;
LABEL_3:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *a1;
  v13 = v3 - *a1;
  v14 = 0xEEEEEEEEEEEEEEEFLL * (v13 >> 3) + 1;
  if (v14 > 0x222222222222222)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v12) >> 3);
  if (2 * v15 > v14)
  {
    v14 = 2 * v15;
  }

  if (v15 >= 0x111111111111111)
  {
    v16 = 0x222222222222222;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    if (v16 <= 0x222222222222222)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v17 = a2[5];
  v18 = 8 * (v13 >> 3);
  *(v18 + 64) = a2[4];
  *(v18 + 80) = v17;
  *(v18 + 96) = a2[6];
  *(v18 + 112) = *(a2 + 14);
  v19 = a2[1];
  *v18 = *a2;
  *(v18 + 16) = v19;
  v20 = a2[3];
  v11 = v18 + 120;
  v21 = v18 - v13;
  *(v18 + 32) = a2[2];
  *(v18 + 48) = v20;
  memcpy((v18 - v13), v12, v13);
  *a1 = v21;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v11;
}

void operations_research::glop::DoubletonEqualityRowPreprocessor::RecoverSolution(operations_research::glop::DoubletonEqualityRowPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 48), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 120), a2);
    v5 = *(a2 + 7);
    v4 = *(a2 + 8);
    if ((v4 - v5) << 32)
    {
      if (((v4 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v102 = v4 - v5;
    v7 = *(this + 18);
    v6 = *(this + 19);
    if (v6 != v7)
    {
      v8 = *(a2 + 7);
      while (1)
      {
        v9 = *(v8 + *(v6 - 25));
        if (v9 <= 1)
        {
          break;
        }

        if (v9 - 2 < 2)
        {
          if (v9 == 2)
          {
            v10 = 11;
          }

          else
          {
            v10 = 13;
          }

          v11 = &v6[v10];
          v12 = *(v6 + (*(v11 - 30) == 0) - 26);
          v13 = *(v6 + *(v11 - 30) - 26);
          *(v8 + v13) = *(v11 - 116);
          *(*(a2 + 1) + 8 * v13) = *(v11 - 14);
          *(v8 + v12) = 0;
          *((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v12;
          goto LABEL_19;
        }

        if (v9 == 4)
        {
          goto LABEL_18;
        }

LABEL_19:
        v15 = *(v6 - 26);
        if (!*(v8 + v15))
        {
          *(*(a2 + 1) + 8 * v15) = (*(v6 - 14) - *(*(a2 + 1) + 8 * *(v6 - 25)) * *(v6 - 11)) / *(v6 - 12);
        }

        v6 -= 15;
        *(*(a2 + 10) + *v6) = 1;
        if (v6 == v7)
        {
          goto LABEL_21;
        }
      }

      if (*(v8 + *(v6 - 25)))
      {
        if (v9 == 1)
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3250, 2);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "FIXED variable produced by DoubletonPreprocessor!", 0x31uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
          v8 = *(a2 + 7);
        }

        goto LABEL_19;
      }

LABEL_18:
      v14 = *(v6 - 26);
      *(v8 + v14) = 0;
      *((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v14;
      goto LABEL_19;
    }

LABEL_21:
    __p = 0;
    v105 = 0;
    v106 = 0;
    p_p = &__p;
    v108 = 0;
    v16 = *(this + 18);
    if (*(this + 19) != v16)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = v16 + 120 * v17;
        v20 = *(__p + 3 * *(v19 + 20) + 1);
        if (!v20)
        {
LABEL_30:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v21 = v20;
            v22 = *(v20 + 28);
            if (v18 >= v22)
            {
              break;
            }

            v20 = *v21;
            if (!*v21)
            {
              goto LABEL_30;
            }
          }

          if (v22 >= v18)
          {
            break;
          }

          v20 = v21[1];
          if (!v20)
          {
            goto LABEL_30;
          }
        }

        v23 = *(__p + 3 * *(v19 + 16) + 1);
        if (!v23)
        {
LABEL_37:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v24 = v23;
            v25 = *(v23 + 28);
            if (v18 >= v25)
            {
              break;
            }

            v23 = *v24;
            if (!*v24)
            {
              goto LABEL_37;
            }
          }

          if (v25 >= v18)
          {
            break;
          }

          v23 = v24[1];
          if (!v23)
          {
            goto LABEL_37;
          }
        }

        v17 = ++v18;
        v16 = *(this + 18);
      }

      while (0xEEEEEEEEEEEEEEEFLL * ((*(this + 19) - v16) >> 3) > v18);
    }

    if (v102 >= 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 16;
      do
      {
        if (((*((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v26) & 1) != 0 && *(__p + v28) == 1)
        {
          v29 = v27;
          v30 = v27 >> 2;
          if (((v27 >> 2) + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v27 >> 2 != -1)
          {
            if (!(((v27 >> 2) + 1) >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v30) = v26;
          v27 = 4 * v30 + 4;
          memcpy(0, 0, v29);
        }

        ++v26;
        v28 += 24;
      }

      while ((v102 & 0x7FFFFFFF) != v26);
      if (v27)
      {
        v103 = (this + 280);
        v31 = v27;
        do
        {
          v32 = *(v31 - 4);
          v31 -= 4;
          v33 = v32;
          if ((*((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v32))
          {
            v34 = __p;
            v35 = *(__p + 3 * v33 + 2);
            if (v35)
            {
              if (v35 != 1)
              {
                absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v35, 1, "col_to_index[col].size() == 1");
              }

              v36 = *(*(__p + 3 * v33) + 28);
              v37 = (*(this + 18) + 120 * v36);
              v38 = v37 + 4;
              v39 = *(a2 + 4);
              v40 = *(v39 + 8 * *v37);
              if (v40 != 0.0)
              {
                absl::lts_20240722::log_internal::MakeCheckOpString<double,double>("solution->dual_values[r.row] == 0.0", v40, 0.0);
              }

              v41 = v37[5];
              v42 = v41 == v33;
              v43 = v38[v42];
              v44 = *(this + 33);
              if (v44 > 1)
              {
                v45 = 0;
                _X15 = *v103;
                __asm { PRFM            #4, [X15] }

                v52 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43));
                v53 = vdup_n_s8(v52 & 0x7F);
                v54 = ((v52 >> 7) ^ (*v103 >> 12)) & v44;
                v55 = *(*v103 + v54);
                v56 = vceq_s8(v55, v53);
                if (!v56)
                {
                  goto LABEL_63;
                }

LABEL_60:
                v57 = *(this + 36);
                while (1)
                {
                  v58 = (v54 + (__clz(__rbit64(v56)) >> 3)) & v44;
                  if (*(v57 + 8 * v58) == v43)
                  {
                    break;
                  }

                  v56 &= ((v56 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v56)
                  {
LABEL_63:
                    while (!*&vceq_s8(v55, 0x8080808080808080))
                    {
                      v45 += 8;
                      v54 = (v45 + v54) & v44;
                      v55 = *(_X15 + v54);
                      v56 = vceq_s8(v55, v53);
                      if (v56)
                      {
                        goto LABEL_60;
                      }
                    }

LABEL_140:
                    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&p_p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 230);
                    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&p_p);
                  }
                }

                v59 = (v57 + 8 * v58);
                if (!(_X15 + v58))
                {
                  goto LABEL_140;
                }
              }

              else
              {
                if (*(this + 34) < 2uLL)
                {
                  goto LABEL_140;
                }

                if (*v103 == v43)
                {
                  v59 = this + 280;
                }

                else
                {
                  v59 = __p;
                }

                v60 = &absl::lts_20240722::container_internal::kSooControl;
                if (*v103 != v43)
                {
                  v60 = 0;
                }

                if (!v60)
                {
                  goto LABEL_140;
                }
              }

              v61 = *(this + 41) + *(v59 + 1);
              v62 = (*(*(this + 38) + 8 * (v61 / 0x55)) + 48 * (v61 % 0x55));
              v63 = v62[1];
              if (v63 < 1)
              {
                v72 = 0.0;
              }

              else
              {
                v64 = v62[3];
                v65 = v62[4];
                v66 = 0.0;
                v67 = 0.0;
                do
                {
                  v68 = *v64++;
                  v69 = 8 * v68;
                  v70 = *v65++;
                  v71 = v67 + *(v39 + v69) * v70;
                  v72 = v66 + v71;
                  v67 = v71 + v66 - (v66 + v71);
                  v66 = v72;
                  --v63;
                }

                while (v63);
              }

              *(v39 + 8 * *v37) = (*(*(this + 43) + 8 * v43) - v72) / *&v37[2 * v42 + 6];
              v73 = &v34[3 * v37[4]];
              v74 = v73[1];
              if (v74)
              {
                v75 = v73 + 1;
                v76 = v73[1];
                do
                {
                  if (*(v76 + 28) >= v36)
                  {
                    v75 = v76;
                  }

                  v76 = *(v76 + 8 * (*(v76 + 28) < v36));
                }

                while (v76);
                if (v75 != v73 + 1 && v36 >= *(v75 + 7))
                {
                  v77 = v75[1];
                  v78 = v75;
                  if (v77)
                  {
                    do
                    {
                      v79 = v77;
                      v77 = *v77;
                    }

                    while (v77);
                  }

                  else
                  {
                    do
                    {
                      v79 = v78[2];
                      _ZF = *v79 == v78;
                      v78 = v79;
                    }

                    while (!_ZF);
                  }

                  if (*v73 == v75)
                  {
                    *v73 = v79;
                  }

                  --v73[2];
                  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v74, v75);
                  operator delete(v75);
                  v41 = v37[5];
                  v34 = __p;
                }
              }

              v80 = &v34[3 * v41];
              v81 = v80[1];
              if (v81)
              {
                v82 = v80 + 1;
                v83 = v80[1];
                do
                {
                  if (*(v83 + 28) >= v36)
                  {
                    v82 = v83;
                  }

                  v83 = *(v83 + 8 * (*(v83 + 28) < v36));
                }

                while (v83);
                if (v82 != v80 + 1 && v36 >= *(v82 + 7))
                {
                  v84 = v82[1];
                  v85 = v82;
                  if (v84)
                  {
                    do
                    {
                      v86 = v84;
                      v84 = *v84;
                    }

                    while (v84);
                  }

                  else
                  {
                    do
                    {
                      v86 = v85[2];
                      _ZF = *v86 == v85;
                      v85 = v86;
                    }

                    while (!_ZF);
                  }

                  if (*v80 == v82)
                  {
                    *v80 = v86;
                  }

                  --v80[2];
                  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v81, v82);
                  operator delete(v82);
                  v34 = __p;
                }
              }

              if (v34[3 * *v38 + 2] == 1)
              {
                v89 = v31 >> 2;
                if (((v31 >> 2) + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                if (v31 >> 2 != -1)
                {
                  if (!(((v31 >> 2) + 1) >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                *(4 * v89) = *v38;
                v87 = 4 * v89 + 4;
                memcpy(0, 0, v31);
                v88 = v37[5];
                if (*(__p + 3 * v88 + 2) == 1)
                {
LABEL_117:
                  v90 = v87 >> 2;
                  if (((v87 >> 2) + 1) >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  if (v87 >> 2 != -1)
                  {
                    if (!(((v87 >> 2) + 1) >> 62))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *(4 * v90) = v88;
                  v31 = 4 * v90 + 4;
                  memcpy(0, 0, v87);
                  continue;
                }
              }

              else
              {
                v87 = v31;
                v88 = v37[5];
                if (*(__p + 3 * v88 + 2) == 1)
                {
                  goto LABEL_117;
                }
              }

              v31 = v87;
            }
          }
        }

        while (v31);
      }
    }

    v91 = *(a2 + 10);
    v92 = *(a2 + 11) - v91;
    if (v92 >= 1)
    {
      v93 = 0;
      v94 = *(this + 21);
      v95 = *(this + 24);
      v96 = v92 & 0x7FFFFFFF;
      do
      {
        if (*(v91 + v93) == 1 && *(v94 + 8 * v93) != *(v95 + 8 * v93))
        {
          if (*(*(a2 + 4) + 8 * v93) <= 0.0)
          {
            v97 = 3;
          }

          else
          {
            v97 = 2;
          }

          *(v91 + v93) = v97;
        }

        ++v93;
      }

      while (v96 != v93);
    }

    v98 = __p;
    if (__p)
    {
      v99 = v105;
      v100 = __p;
      if (v105 != __p)
      {
        do
        {
          v101 = v99 - 24;
          std::__tree<int>::destroy((v99 - 24), *(v99 - 2));
          v99 = v101;
        }

        while (v101 != v98);
        v100 = __p;
      }

      v105 = v98;
      operator delete(v100);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3240, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
  }
}

void sub_23CBC1710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,std::set<int>>::~StrictITIVector(&a14);
  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

char **operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,std::set<int>>::~StrictITIVector(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 24;
        std::__tree<int>::destroy((v3 - 24), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::glop::DualizerPreprocessor::Run(operations_research::glop::DualizerPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v3 = *(this + 2);
    if (*(v3 + 144) == 1)
    {
      return 0;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
    *(this + 25) = v6;
    v7 = *(a2 + 6);
    *(this + 24) = v7;
    *(this + 104) = *(a2 + 408);
    if (*(v3 + 144) == 2 && *(v3 + 128) * v6 > v7)
    {
      return 0;
    }

    else
    {
      v74[0] = 0;
      std::vector<double>::assign(this + 6, v6, v74);
      v74[0] = 0;
      std::vector<double>::assign(this + 9, v6, v74);
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v6 & 0x7FFFFFFF;
        do
        {
          v10 = 8 * v8;
          v11 = *(*(a2 + 20) + v10);
          v12 = *(*(a2 + 23) + v10);
          *(*(this + 6) + v10) = v11;
          *(*(this + 9) + v10) = v12;
          if (fabs(v11) >= fabs(v12))
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }

          if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v14 = 0.0;
          }

          else
          {
            v14 = v13;
          }

          if (v14 != 0.0)
          {
            operations_research::glop::LinearProgram::SetVariableBounds(a2, v8, v11 - v14, v12 - v14);
            SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v8);
            v16 = SparseColumn[1];
            if (v16 >= 1)
            {
              v17 = SparseColumn[3];
              v18 = SparseColumn[4];
              v19 = *(a2 + 8);
              v20 = *(a2 + 11);
              do
              {
                v21 = *v18++;
                v22 = v14 * v21;
                LODWORD(v21) = *v17++;
                v23 = 8 * SLODWORD(v21);
                *(v19 + v23) = *(v19 + v23) - v22;
                *(v20 + v23) = *(v20 + v23) - v22;
                --v16;
              }

              while (v16);
            }

            operations_research::glop::LinearProgram::SetObjectiveOffset(a2, *(a2 + 49) + *(*(a2 + 17) + 8 * v8) * v14);
          }

          ++v8;
        }

        while (v8 != v9);
      }

      *(this + 18) = *(this + 17);
      if (*(this + 24) >= 1)
      {
        v24 = 0;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v25 = *(*(a2 + 8) + 8 * v24);
              v26 = *(*(a2 + 11) + 8 * v24);
              if (v25 != v26)
              {
                break;
              }

              v28 = *(this + 18);
              v27 = *(this + 19);
              if (v28 >= v27)
              {
                v31 = *(this + 17);
                v32 = (v28 - v31);
                v33 = v28 - v31 + 1;
                if (v33 < 0)
                {
                  goto LABEL_110;
                }

                v34 = v27 - v31;
                if (2 * v34 > v33)
                {
                  v33 = 2 * v34;
                }

                if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v35 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  operator new();
                }

                v41 = v28 - v31;
                *v32 = 1;
                v42 = v32 + 1;
                memcpy(0, v31, v41);
                *(this + 17) = 0;
                *(this + 18) = v32 + 1;
                *(this + 19) = 0;
                if (!v31)
                {
                  goto LABEL_53;
                }

LABEL_52:
                operator delete(v31);
LABEL_53:
                *(this + 18) = v42;
                if (++v24 >= *(this + 24))
                {
                  goto LABEL_68;
                }
              }

              else
              {
                *v28 = 1;
                *(this + 18) = v28 + 1;
                if (++v24 >= *(this + 24))
                {
                  goto LABEL_68;
                }
              }
            }

            if (v26 == INFINITY)
            {
              break;
            }

            v30 = *(this + 18);
            v29 = *(this + 19);
            if (v30 >= v29)
            {
              v31 = *(this + 17);
              v38 = v30 - v31 + 1;
              if (v38 < 0)
              {
                goto LABEL_110;
              }

              v39 = v29 - v31;
              if (2 * v39 > v38)
              {
                v38 = 2 * v39;
              }

              if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v40 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v40 = v38;
              }

              if (v40)
              {
                operator new();
              }

              v46 = v30 - v31;
              v47 = (v30 - v31);
              v48 = 3;
              goto LABEL_65;
            }

            *v30 = 3;
            *(this + 18) = v30 + 1;
            if (++v24 >= *(this + 24))
            {
              goto LABEL_68;
            }
          }

          if (v25 == -INFINITY)
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3477, 2);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "There should be no free constraint in this lp.", 0x2EuLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
            if (++v24 >= *(this + 24))
            {
              break;
            }
          }

          else
          {
            v37 = *(this + 18);
            v36 = *(this + 19);
            if (v37 >= v36)
            {
              v31 = *(this + 17);
              v43 = v37 - v31 + 1;
              if (v43 < 0)
              {
LABEL_110:
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v44 = v36 - v31;
              if (2 * v44 > v43)
              {
                v43 = 2 * v44;
              }

              if (v44 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v45 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v43;
              }

              if (v45)
              {
                operator new();
              }

              v46 = v37 - v31;
              v47 = (v37 - v31);
              v48 = 2;
LABEL_65:
              *v47 = v48;
              v42 = v47 + 1;
              memcpy(0, v31, v46);
              *(this + 17) = 0;
              *(this + 18) = v42;
              *(this + 19) = 0;
              if (!v31)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

            *v37 = 2;
            *(this + 18) = v37 + 1;
            if (++v24 >= *(this + 24))
            {
              break;
            }
          }
        }
      }

LABEL_68:
      *(this + 21) = *(this + 20);
      LODWORD(v74[0]) = 0;
      v49 = *(this + 25);
      if (v49 > 0)
      {
        for (i = 0; i < v49; LODWORD(v74[0]) = i)
        {
          v52 = *(*(a2 + 20) + 8 * i);
          if (v52 != -INFINITY)
          {
            if (*(*(a2 + 23) + 8 * i) == v52)
            {
              v53 = 1;
            }

            else
            {
              v53 = 2;
            }

            v55 = *(this + 18);
            v54 = *(this + 19);
            if (v55 < v54)
            {
              *v55 = v53;
              v51 = v55 + 1;
            }

            else
            {
              v56 = *(this + 17);
              v57 = (v55 - v56);
              v58 = v55 - v56 + 1;
              if (v58 < 0)
              {
                goto LABEL_110;
              }

              v59 = v54 - v56;
              if (2 * v59 > v58)
              {
                v58 = 2 * v59;
              }

              if (v59 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v60 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v58;
              }

              if (v60)
              {
                operator new();
              }

              v61 = v55 - v56;
              *v57 = v53;
              v51 = v57 + 1;
              memcpy(0, v56, v61);
              *(this + 17) = 0;
              *(this + 18) = v57 + 1;
              *(this + 19) = 0;
              if (v56)
              {
                operator delete(v56);
              }
            }

            *(this + 18) = v51;
            std::vector<int>::push_back[abi:ne200100](this + 160, v74);
            i = v74[0];
            v49 = *(this + 25);
          }

          ++i;
        }

        LODWORD(v74[0]) = 0;
        if (v49 >= 1)
        {
          for (j = 0; j < v49; LODWORD(v74[0]) = ++j)
          {
            v64 = *(*(a2 + 23) + 8 * j);
            if (v64 != INFINITY)
            {
              if (v64 == *(*(a2 + 20) + 8 * j))
              {
                v65 = 1;
              }

              else
              {
                v65 = 3;
              }

              v67 = *(this + 18);
              v66 = *(this + 19);
              if (v67 < v66)
              {
                *v67 = v65;
                v63 = v67 + 1;
              }

              else
              {
                v68 = *(this + 17);
                v69 = (v67 - v68);
                v70 = v67 - v68 + 1;
                if (v70 < 0)
                {
                  goto LABEL_110;
                }

                v71 = v66 - v68;
                if (2 * v71 > v70)
                {
                  v70 = 2 * v71;
                }

                if (v71 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v72 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v72 = v70;
                }

                if (v72)
                {
                  operator new();
                }

                v73 = v67 - v68;
                *v69 = v65;
                v63 = v69 + 1;
                memcpy(0, v68, v73);
                *(this + 17) = 0;
                *(this + 18) = v69 + 1;
                *(this + 19) = 0;
                if (v68)
                {
                  operator delete(v68);
                }
              }

              *(this + 18) = v63;
              std::vector<int>::push_back[abi:ne200100](this + 160, v74);
              j = v74[0];
              v49 = *(this + 25);
            }
          }
        }
      }

      operations_research::glop::LinearProgram::LinearProgram(v74);
      operations_research::glop::LinearProgram::PopulateFromDual(v74, a2, (this + 112));
      operations_research::glop::LinearProgram::Swap(v74, a2);
      operations_research::glop::LinearProgram::~LinearProgram(v74);
      return 1;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3406, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    return 0;
  }
}

void sub_23CBC1F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  operations_research::glop::LinearProgram::~LinearProgram(va);
  _Unwind_Resume(a1);
}

void sub_23CBC1FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBC1FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::DualizerPreprocessor::RecoverSolution(operations_research::glop::DualizerPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v4 = *(this + 25);
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = *(this + 24);
    v6 = *(this + 17);
    v7 = *(this + 18) - v6;
    if (v5 < v7)
    {
      v8 = 0;
      v9 = *(a2 + 7);
      v10 = *(this + 24);
      do
      {
        if (!*(v9 + v10))
        {
          v11 = *(v6 + v10);
          v12 = *(*(this + 20) + (v8 >> 30));
          *v12 = v11;
          v13 = (8 * v12);
          if ((v11 & 0xFFFFFFFD) == 1)
          {
            v14 = 72;
          }

          else
          {
            v14 = 48;
          }

          *v13 = *(v13 + *(this + v14));
        }

        ++v10;
        v8 += 0x100000000;
      }

      while (v10 < v7);
    }

    if (v5)
    {
      if ((v5 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v15 = *a2;
    v16 = 0x708020405020102uLL >> (8 * ((*a2 - 1) & 0x1Fu));
    if (((0xDBu >> (*a2 - 1)) & 1) == 0)
    {
      LOBYTE(v16) = *a2;
    }

    if ((v15 - 1) <= 7u)
    {
      LOBYTE(v15) = v16;
    }

    *a2 = v15;
    v17 = *(a2 + 1);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    v18 = *(a2 + 4);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    v19 = *(a2 + 7);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    v20 = *(a2 + 10);
    *(a2 + 9) = 0;
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    if (v20)
    {
      operator delete(v20);
    }

    if (v18)
    {
      operator delete(v18);
    }

    if (v19)
    {
      operator delete(v19);
    }

    if (v17)
    {

      operator delete(v17);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3522, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
  }
}

void sub_23CBC2880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v13);
  if (v12)
  {
    operator delete(v12);
  }

  if (!v11)
  {
    _Unwind_Resume(a1);
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

BOOL operations_research::glop::ShiftVariableBoundsPreprocessor::Run(uint64_t **this, operations_research::glop::LinearProgram *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3655, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    return 0;
  }

  v4 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  v74[0] = 0;
  std::vector<double>::assign(this + 9, v4, v74);
  v74[0] = 0;
  std::vector<double>::assign(this + 12, v4, v74);
  if (v4 >= 1)
  {
    v5 = *(a2 + 20);
    v6 = this[9];
    v7 = *(a2 + 23);
    v8 = v4 & 0x7FFFFFFF;
    v9 = 1;
    v10 = this[12];
    do
    {
      v11 = *v5++;
      *v6 = v11;
      v12 = *v7++;
      v13 = v12;
      *v10++ = v12;
      v14 = *v6++;
      v15 = v14 <= 0.0;
      if (v13 < 0.0)
      {
        v15 = 0;
      }

      v9 &= v15;
      --v8;
    }

    while (v8);
    v16 = dword_2810C0250;
    if (dword_2810C0250 < 1)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

  v9 = 1;
  v16 = dword_2810C0250;
  if (dword_2810C0250 >= 1)
  {
LABEL_42:
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0248, v16))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3669);
      v44 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v74, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, "Maximum variable bounds magnitude (before shift): ", 0x32uLL);
      v45 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      v46 = 0.0;
      if (v45 >= 1)
      {
        v47 = *(a2 + 20);
        v48 = *(a2 + 23);
        v49 = v45 & 0x7FFFFFFF;
        do
        {
          v50 = *v47++;
          v51 = fabs(v50);
          v52 = v50;
          v53 = *v48++;
          v54 = fabs(v53);
          v55 = v53;
          if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v56 = 0.0;
          }

          else
          {
            v56 = v51;
          }

          if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v57 = 0.0;
          }

          else
          {
            v57 = v54;
          }

          if (v56 < v57)
          {
            v56 = v57;
          }

          if (v46 < v56)
          {
            v46 = v56;
          }

          --v49;
        }

        while (v49);
      }

      v75 = v46;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v44, &v75);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    }
  }

LABEL_10:
  if (v9)
  {
    return 0;
  }

  v18 = *(a2 + 6);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v74[0] = 0;
  std::vector<double>::assign(this + 6, v4, v74);
  if (v4 < 1)
  {
    v20 = 0;
    v22 = 0.0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = v4 & 0x7FFFFFFF;
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      v25 = this[9];
      v26 = v19;
      v27 = *&v25[v26];
      v28 = this[12];
      v29 = *&v28[v26];
      if (v27 > 0.0 || v29 < 0.0)
      {
        if (fabs(v27) >= fabs(v29))
        {
          v27 = *&v28[v19];
        }

        if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = v27;
        }

        if (*(this + 24) == 1)
        {
          IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(a2, v19);
          v32 = trunc(v30);
          if (IsVariableInteger)
          {
            v30 = v32;
          }

          v25 = this[9];
          v28 = this[12];
        }

        *&this[6][v19] = v30;
        operations_research::glop::LinearProgram::SetVariableBounds(a2, v19, *&v25[v19] - v30, *&v28[v19] - v30);
        SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v19);
        v34 = SparseColumn[1];
        if (v34 >= 1)
        {
          v35 = SparseColumn[3];
          v36 = SparseColumn[4];
          do
          {
            v37 = *v35++;
            v38 = (16 * v37);
            v39 = *v36++;
            v40 = v30 * v39 + v38[1];
            v41 = v40 + *v38;
            v42 = v40 + *v38 - v41;
            *v38 = v41;
            v38[1] = v42;
            --v34;
          }

          while (v34);
        }

        v24 = v23 + v30 * *(*(a2 + 17) + 8 * v19);
        v23 = v24 + v22 - (v22 + v24);
        ++v20;
        v22 = v22 + v24;
      }

      ++v19;
    }

    while (v19 != v21);
  }

  if (dword_2810C0268 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0260, dword_2810C0268))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3708);
    v58 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v74, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v58, "Maximum variable bounds magnitude (after ", 0x29uLL);
    LODWORD(v75) = v20;
    v59 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v58, &v75);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v59, " shifts): ", 0xAuLL);
    v60 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    v61 = 0.0;
    if (v60 >= 1)
    {
      v62 = *(a2 + 20);
      v63 = *(a2 + 23);
      v64 = v60 & 0x7FFFFFFF;
      do
      {
        v65 = *v62++;
        v66 = fabs(v65);
        v67 = v65;
        v68 = *v63++;
        v69 = fabs(v68);
        v70 = v68;
        if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v71 = 0.0;
        }

        else
        {
          v71 = v66;
        }

        if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v72 = 0.0;
        }

        else
        {
          v72 = v69;
        }

        if (v71 < v72)
        {
          v71 = v72;
        }

        if (v61 < v71)
        {
          v61 = v71;
        }

        --v64;
      }

      while (v64);
    }

    v75 = v61;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v59, &v75);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
  }

  LODWORD(v75) = 0;
  v17 = (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (dword_2810C0298 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0290, dword_2810C0298))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v74, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3727);
      v73 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v74, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v73, "Shifting variable bounds causes a floating point overflow for the objective.", 0x4CuLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v74);
    }

    *(this + 8) = 10;
  }

  else
  {
    operations_research::glop::LinearProgram::SetObjectiveOffset(a2, v22 + *(a2 + 49));
  }

  return v17;
}

void operations_research::glop::ShiftVariableBoundsPreprocessor::RecoverSolution(operations_research::glop::ShiftVariableBoundsPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v24, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3739, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v24);
    return;
  }

  v2 = *(a2 + 7);
  v3 = *(a2 + 8) - v2;
  if (v3 < 1)
  {
    return;
  }

  if ((*(this + 24) & 1) == 0)
  {
    v14 = 0;
    v15 = v3 & 0x7FFFFFFF;
    while (1)
    {
      v18 = *(v2 + v14);
      if ((v18 - 1) < 2)
      {
        break;
      }

      if (*(v2 + v14))
      {
        if (v18 != 3)
        {
          goto LABEL_17;
        }

        v19 = *(this + 12);
        goto LABEL_23;
      }

      v16 = *(a2 + 1);
      v17 = *(*(this + 6) + 8 * v14) + *(v16 + 8 * v14);
LABEL_16:
      *(v16 + 8 * v14) = v17;
LABEL_17:
      if (v15 == ++v14)
      {
        return;
      }
    }

    v19 = *(this + 9);
LABEL_23:
    v17 = *(v19 + 8 * v14);
    v16 = *(a2 + 1);
    goto LABEL_16;
  }

  v4 = *(this + 6);
  v5 = *(a2 + 1);
  v6 = v3 & 0x7FFFFFFF;
  if (v6 < 4 || (v5 < v4 + 8 * v6 ? (v7 = v4 >= v5 + 8 * v6) : (v7 = 1), !v7))
  {
    v9 = 0;
LABEL_25:
    v20 = (v5 + 8 * v9);
    v21 = (v4 + 8 * v9);
    v22 = v6 - v9;
    do
    {
      v23 = *v21++;
      *v20 = v23 + *v20;
      ++v20;
      --v22;
    }

    while (v22);
    return;
  }

  v8 = v3 & 3;
  v9 = v6 - v8;
  v10 = (v5 + 16);
  v11 = (v4 + 16);
  v12 = v6 - v8;
  do
  {
    v13 = vaddq_f64(*v11, *v10);
    v10[-1] = vaddq_f64(v11[-1], v10[-1]);
    *v10 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8)
  {
    goto LABEL_25;
  }
}

uint64_t operations_research::glop::ScalingPreprocessor::Run(operations_research::glop::ScalingPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    if (*(*(this + 2) + 184) != 1)
    {
      return 0;
    }

    v4 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    v27[0] = 0;
    std::vector<double>::assign(this + 6, v4, v27);
    v27[0] = 0;
    std::vector<double>::assign(this + 9, v4, v27);
    if (v4 < 1)
    {
      goto LABEL_17;
    }

    v5 = *(a2 + 20);
    v6 = *(this + 6);
    v7 = *(a2 + 23);
    v8 = *(this + 9);
    v9 = v4 & 0x7FFFFFFF;
    if (v9 > 0xD)
    {
      v10 = 0;
      if ((v8 - v6) >= 0x20 && (v6 - v5) >= 0x20 && (v7 - v6) >= 0x20 && (v8 - v5) >= 0x20 && (v8 - v7) >= 0x20)
      {
        v10 = v9 - (v4 & 3);
        v12 = (v8 + 16);
        v13 = (v7 + 16);
        v14 = (v6 + 16);
        v15 = (v5 + 16);
        v16 = v10;
        do
        {
          v17 = *v15;
          *(v14 - 1) = *(v15 - 1);
          *v14 = v17;
          v18 = *v13;
          *(v12 - 1) = *(v13 - 1);
          *v12 = v18;
          v12 += 2;
          v13 += 2;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if ((v4 & 3) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v19 = (v8 + 8 * v10);
    v20 = (v7 + 8 * v10);
    v21 = (v6 + 8 * v10);
    v22 = (v5 + 8 * v10);
    v23 = v9 - v10;
    do
    {
      v24 = *v22++;
      *v21++ = v24;
      v25 = *v20++;
      *v19++ = v25;
      --v23;
    }

    while (v23);
LABEL_17:
    operations_research::glop::Scale(a2, (this + 112), *(*(this + 2) + 252));
    operations_research::glop::LinearProgram::ScaleObjective(a2, *(*(this + 2) + 292));
    *(this + 12) = v26;
    *(this + 13) = operations_research::glop::LinearProgram::ScaleBounds(a2);
    return 1;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v27, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3770, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, "lp", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, " == NULL", 8uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v27);
  return 0;
}

void operations_research::glop::ScalingPreprocessor::RecoverSolution(operations_research::glop::ScalingPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 3793, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v40);
    return;
  }

  v4 = (this + 112);
  operations_research::glop::SparseMatrixScaler::ScaleRowVector(this + 112, 0, a2 + 1);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2) - v5;
  if ((v6 >> 3) >= 1)
  {
    v7 = (this + 104);
    v8 = (v6 >> 3) & 0x7FFFFFFF;
    if (v8 <= 3 || v5 < v4 && v7 < &v5->f64[v8])
    {
      v9 = 0;
LABEL_7:
      v10 = &v5->f64[v9];
      v11 = v9 - v8;
      do
      {
        *v10 = *v7 * *v10;
        ++v10;
        v12 = __CFADD__(v11++, 1);
      }

      while (!v12);
      goto LABEL_10;
    }

    v30 = (v6 >> 3) & 3;
    v9 = v8 - v30;
    v31 = vld1q_dup_f64(v7);
    v32 = v5 + 1;
    v33 = v8 - v30;
    do
    {
      v34 = vmulq_f64(v31, *v32);
      v32[-1] = vmulq_f64(v31, v32[-1]);
      *v32 = v34;
      v32 += 2;
      v33 -= 4;
    }

    while (v33);
    if (v30)
    {
      goto LABEL_7;
    }
  }

LABEL_10:
  operations_research::glop::SparseMatrixScaler::ScaleColumnVector(v4, 0, a2 + 4);
  v13 = *(a2 + 4);
  v14 = *(a2 + 5) - v13;
  if ((v14 >> 3) < 1)
  {
    goto LABEL_18;
  }

  v15 = (this + 96);
  v16 = (v14 >> 3) & 0x7FFFFFFF;
  if (v16 <= 3 || v13 < (this + 104) && v15 < &v13->f64[v16])
  {
    v17 = 0;
LABEL_15:
    v18 = &v13->f64[v17];
    v19 = v17 - v16;
    do
    {
      *v18 = *v15 * *v18;
      ++v18;
      v12 = __CFADD__(v19++, 1);
    }

    while (!v12);
    goto LABEL_18;
  }

  v35 = (v14 >> 3) & 3;
  v17 = v16 - v35;
  v36 = vld1q_dup_f64(v15);
  v37 = v13 + 1;
  v38 = v16 - v35;
  do
  {
    v39 = vmulq_f64(v36, *v37);
    v37[-1] = vmulq_f64(v36, v37[-1]);
    *v37 = v39;
    v37 += 2;
    v38 -= 4;
  }

  while (v38);
  if (v35)
  {
    goto LABEL_15;
  }

LABEL_18:
  v20 = *(a2 + 1);
  v21 = *(a2 + 2) - v20;
  if ((v21 >> 3) >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = *(a2 + 7);
    for (i = (v21 >> 3) & 0x7FFFFFFF; i; --i)
    {
      v29 = *v24++;
      v28 = v29;
      if (v29 != 3)
      {
        if (v28 == 2)
        {
          v27 = 8 * v23;
          v26 = (*(this + 6) + 8 * v23);
          goto LABEL_21;
        }

        if (v28 != 1)
        {
          goto LABEL_22;
        }
      }

      v26 = (*(this + 9) + v22);
      v27 = v22;
LABEL_21:
      *(v20 + v27) = *v26;
LABEL_22:
      ++v23;
      v22 += 8;
    }
  }
}

void operations_research::glop::EmptyColumnPreprocessor::~EmptyColumnPreprocessor(operations_research::glop::EmptyColumnPreprocessor *this)
{
  operations_research::glop::EmptyColumnPreprocessor::~EmptyColumnPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    operator delete(v4);
  }

  *this = &unk_284F414E8;
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    v6 = *(v5 + 40);
    if (v6)
    {
      *(v5 + 48) = v6;
      operator delete(v6);
    }

    MEMORY[0x23EED9460](v5, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ProportionalColumnPreprocessor::~ProportionalColumnPreprocessor(operations_research::glop::ProportionalColumnPreprocessor *this)
{
  operations_research::glop::ProportionalColumnPreprocessor::~ProportionalColumnPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 30);
  if (v2)
  {
    *(this + 31) = v2;
    operator delete(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    *(this + 16) = v7;
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    *(this + 7) = v10;
    operator delete(v10);
  }

  *this = &unk_284F414E8;
  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      *(v11 + 48) = v12;
      operator delete(v12);
    }

    MEMORY[0x23EED9460](v11, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ProportionalColumnPreprocessor::UseInMipContext(operations_research::glop::ProportionalColumnPreprocessor *this)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.h", 306);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v1, "Not implemented.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v1);
}

void operations_research::glop::ProportionalRowPreprocessor::~ProportionalRowPreprocessor(operations_research::glop::ProportionalRowPreprocessor *this)
{
  operations_research::glop::ProportionalRowPreprocessor::~ProportionalRowPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 16);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  *this = &unk_284F414E8;
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      *(v6 + 48) = v7;
      operator delete(v7);
    }

    MEMORY[0x23EED9460](v6, 0x1030C4094DBD242);
  }
}

void operations_research::glop::SingletonPreprocessor::~SingletonPreprocessor(operations_research::glop::SingletonPreprocessor *this)
{
  operations_research::glop::SingletonPreprocessor::~SingletonPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 448);
  if (*(this + 52) >= 2uLL)
  {
    operator delete((*(this + 54) - (*(this + 53) & 1) - 8));
  }

  v2 = *(this + 46);
  *(this + 46) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8077774924);
  }

  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 320);
  if (*(this + 36) >= 2uLL)
  {
    operator delete((*(this + 38) - (*(this + 37) & 1) - 8));
  }

  v3 = *(this + 30);
  *(this + 30) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8077774924);
  }

  v4 = *(this + 27);
  if (v4)
  {
    *(this + 28) = v4;
    operator delete(v4);
  }

  v5 = *(this + 24);
  if (v5)
  {
    *(this + 25) = v5;
    operator delete(v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    *(this + 19) = v7;
    operator delete(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    *(this + 10) = v10;
    operator delete(v10);
  }

  v11 = *(this + 6);
  if (v11)
  {
    operator delete(v11);
  }

  *this = &unk_284F414E8;
  v12 = *(this + 4);
  *(this + 4) = 0;
  if (v12)
  {
    v13 = *(v12 + 40);
    if (v13)
    {
      *(v12 + 48) = v13;
      operator delete(v13);
    }

    MEMORY[0x23EED9460](v12, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::~ForcingAndImpliedFreeConstraintPreprocessor(operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor *this)
{
  operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::~ForcingAndImpliedFreeConstraintPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 280);
  if (*(this + 31) >= 2uLL)
  {
    operator delete((*(this + 33) - (*(this + 32) & 1) - 8));
  }

  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8077774924);
  }

  v3 = *(this + 22);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    *(this + 17) = v5;
    operator delete(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    *(this + 8) = v8;
    operator delete(v8);
  }

  *this = &unk_284F414E8;
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    v10 = *(v9 + 40);
    if (v10)
    {
      *(v9 + 48) = v10;
      operator delete(v10);
    }

    MEMORY[0x23EED9460](v9, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ImpliedFreePreprocessor::~ImpliedFreePreprocessor(operations_research::glop::ImpliedFreePreprocessor *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_284F414E8;
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      *(v4 + 48) = v5;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v4, 0x1030C4094DBD242);
  }
}

{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_284F414E8;
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      *(v4 + 48) = v5;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v4, 0x1030C4094DBD242);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::DoubletonFreeColumnPreprocessor::~DoubletonFreeColumnPreprocessor(operations_research::glop::DoubletonFreeColumnPreprocessor *this)
{
  operations_research::glop::DoubletonFreeColumnPreprocessor::~DoubletonFreeColumnPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 9);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 7);
    v5 = *(this + 6);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 48);
        *(v4 - 48) = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v6, 0x1000C8077774924);
        }

        v4 -= 88;
      }

      while (v4 != v3);
      v5 = *(this + 6);
    }

    *(this + 7) = v3;
    operator delete(v5);
  }

  *this = &unk_284F414E8;
  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    v8 = *(v7 + 40);
    if (v8)
    {
      *(v7 + 48) = v8;
      operator delete(v8);
    }

    MEMORY[0x23EED9460](v7, 0x1030C4094DBD242);
  }
}

void operations_research::glop::UnconstrainedVariablePreprocessor::~UnconstrainedVariablePreprocessor(operations_research::glop::UnconstrainedVariablePreprocessor *this)
{
  operations_research::glop::UnconstrainedVariablePreprocessor::~UnconstrainedVariablePreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 52);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 49);
  if (v3)
  {
    *(this + 50) = v3;
    operator delete(v3);
  }

  v4 = *(this + 46);
  if (v4)
  {
    *(this + 47) = v4;
    operator delete(v4);
  }

  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 320);
  if (*(this + 36) >= 2uLL)
  {
    operator delete((*(this + 38) - (*(this + 37) & 1) - 8));
  }

  v5 = *(this + 30);
  *(this + 30) = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8077774924);
  }

  v6 = *(this + 27);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 24);
  if (v7)
  {
    *(this + 25) = v7;
    operator delete(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    *(this + 22) = v8;
    operator delete(v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 12);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 9);
  if (v12)
  {
    *(this + 10) = v12;
    operator delete(v12);
  }

  v13 = *(this + 6);
  if (v13)
  {
    *(this + 7) = v13;
    operator delete(v13);
  }

  *this = &unk_284F414E8;
  v14 = *(this + 4);
  *(this + 4) = 0;
  if (v14)
  {
    v15 = *(v14 + 40);
    if (v15)
    {
      *(v14 + 48) = v15;
      operator delete(v15);
    }

    MEMORY[0x23EED9460](v14, 0x1030C4094DBD242);
  }
}

void operations_research::glop::FreeConstraintPreprocessor::~FreeConstraintPreprocessor(operations_research::glop::FreeConstraintPreprocessor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }
}

{
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::SingletonColumnSignPreprocessor::~SingletonColumnSignPreprocessor(operations_research::glop::SingletonColumnSignPreprocessor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }
}

{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_284F414E8;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 48) = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v3, 0x1030C4094DBD242);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::DoubletonEqualityRowPreprocessor::~DoubletonEqualityRowPreprocessor(operations_research::glop::DoubletonEqualityRowPreprocessor *this)
{
  operations_research::glop::DoubletonEqualityRowPreprocessor::~DoubletonEqualityRowPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](this + 296);
  if (*(this + 33) >= 2uLL)
  {
    operator delete((*(this + 35) - (*(this + 34) & 1) - 8));
  }

  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8077774924);
  }

  v4 = *(this + 24);
  if (v4)
  {
    *(this + 25) = v4;
    operator delete(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    *(this + 13) = v8;
    operator delete(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    operator delete(v10);
  }

  *this = &unk_284F414E8;
  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      *(v11 + 48) = v12;
      operator delete(v12);
    }

    MEMORY[0x23EED9460](v11, 0x1030C4094DBD242);
  }
}

void operations_research::glop::DualizerPreprocessor::~DualizerPreprocessor(operations_research::glop::DualizerPreprocessor *this)
{
  operations_research::glop::DualizerPreprocessor::~DualizerPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  *this = &unk_284F414E8;
  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    v8 = *(v7 + 40);
    if (v8)
    {
      *(v7 + 48) = v8;
      operator delete(v8);
    }

    MEMORY[0x23EED9460](v7, 0x1030C4094DBD242);
  }
}

void operations_research::glop::DualizerPreprocessor::UseInMipContext(operations_research::glop::DualizerPreprocessor *this)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.h", 917);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v1, "In the presence of integer variables, ", 0x26uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v1, "there is no notion of a dual problem.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v1);
}

void operations_research::glop::ShiftVariableBoundsPreprocessor::~ShiftVariableBoundsPreprocessor(operations_research::glop::ShiftVariableBoundsPreprocessor *this)
{
  operations_research::glop::ShiftVariableBoundsPreprocessor::~ShiftVariableBoundsPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  *this = &unk_284F414E8;
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    v6 = *(v5 + 40);
    if (v6)
    {
      *(v5 + 48) = v6;
      operator delete(v6);
    }

    MEMORY[0x23EED9460](v5, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ScalingPreprocessor::~ScalingPreprocessor(operations_research::glop::ScalingPreprocessor *this)
{
  operations_research::glop::ScalingPreprocessor::~ScalingPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

{
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  *this = &unk_284F414E8;
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      *(v6 + 48) = v7;
      operator delete(v7);
    }

    MEMORY[0x23EED9460](v6, 0x1030C4094DBD242);
  }
}

void operations_research::glop::ScalingPreprocessor::UseInMipContext(operations_research::glop::ScalingPreprocessor *this)
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v1, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.h", 1004);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v1, "Not implemented.");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v1);
}

uint64_t std::deque<operations_research::glop::SparseColumn>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x55];
    v6 = *v5;
    v7 = *v5 + 48 * (v4 % 0x55);
    v8 = v2[(*(a1 + 40) + v4) / 0x55] + 48 * ((*(a1 + 40) + v4) % 0x55);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          MEMORY[0x23EED9440](v9, 0x1000C8077774924);
          v6 = *v5;
        }

        v7 += 48;
        if (v7 - v6 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 42;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 85;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      do
      {
        v14 -= 8;
      }

      while (v14 != v15);
      *(a1 + 16) = v14;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 8 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 8 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 8 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (*(result + 4) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 4)) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 4)))) & 0x7F;
  }

  else
  {
    v6 = 0x80;
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,4ul>(&v7, a1, v6);
}

void std::deque<operations_research::glop::SparseColumn>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v10);
}

void sub_23CBC520C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(uint64_t *a1, uint64_t a2)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (*(a2 + 16) >= 1)
  {
    operator new[]();
  }

  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    memmove(a1[3], *(a2 + 24), 4 * v4);
    memmove(a1[4], *(a2 + 32), 8 * *(a2 + 8));
    v4 = *(a2 + 8);
  }

  a1[1] = v4;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_23CBC5374(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v145 = &a2[-1].n128_f64[1];
  j = a1;
  while (1)
  {
    a1 = j;
    v11 = a2 - j;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return result;
        case 4:
          v61 = a2[-1].n128_i32[1];
          v62 = j[2].n128_i32[1];
          if (v61 == v62)
          {
            result.n128_u64[0] = a2[-1].n128_u64[1];
            v63 = j[2].n128_f64[1];
            if (result.n128_f64[0] == v63)
            {
              if (v9->n128_u32[0] >= j[2].n128_u32[0])
              {
                return result;
              }
            }

            else if (result.n128_f64[0] >= v63)
            {
              return result;
            }
          }

          else if (v61 >= v62)
          {
            return result;
          }

          v151 = j[2];
          j[2] = *v9;
          result = v151;
          *v9 = v151;
          v137 = j[2].n128_i32[1];
          v138 = j[1].n128_i32[1];
          v139 = v137 < v138;
          if (v137 != v138)
          {
            goto LABEL_277;
          }

          result.n128_u64[0] = j[2].n128_u64[1];
          v140 = j[1].n128_f64[1];
          if (result.n128_f64[0] == v140)
          {
            v139 = j[2].n128_u32[0] < j[1].n128_u32[0];
LABEL_277:
            if (!v139)
            {
              return result;
            }
          }

          else if (result.n128_f64[0] >= v140)
          {
            return result;
          }

          v152 = j[1];
          j[1] = j[2];
          result = v152;
          j[2] = v152;
          v141 = j[1].n128_i32[1];
          v142 = j->n128_i32[1];
          v143 = v141 < v142;
          if (v141 == v142)
          {
            result.n128_u64[0] = j[1].n128_u64[1];
            v144 = j->n128_f64[1];
            if (result.n128_f64[0] == v144)
            {
              v143 = j[1].n128_u32[0] < j->n128_u32[0];
              goto LABEL_282;
            }

            if (result.n128_f64[0] >= v144)
            {
              return result;
            }
          }

          else
          {
LABEL_282:
            if (!v143)
            {
              return result;
            }
          }

          v153 = *j;
          *j = j[1];
          result = v153;
          j[1] = v153;
          return result;
        case 5:

          return result;
      }

      goto LABEL_9;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v64 = j + 1;
      v66 = j == a2 || v64 == a2;
      if (a4)
      {
        if (v66)
        {
          return result;
        }

        v67 = 0;
        v68 = j;
LABEL_156:
        v70 = v68;
        v68 = v64;
        v71 = v70[1].n128_i32[1];
        v72 = v70->n128_i32[1];
        if (v71 == v72)
        {
          result.n128_u64[0] = v70[1].n128_u64[1];
          v73 = v70->n128_f64[1];
          if (result.n128_f64[0] == v73)
          {
            if (v68->n128_u32[0] >= v70->n128_u32[0])
            {
              goto LABEL_155;
            }
          }

          else if (result.n128_f64[0] >= v73)
          {
            goto LABEL_155;
          }
        }

        else
        {
          if (v71 >= v72)
          {
            goto LABEL_155;
          }

          result.n128_u64[0] = v70[1].n128_u64[1];
        }

        v74 = v70[1].n128_i32[0];
        *v68 = *v70;
        v69 = j;
        if (v70 == j)
        {
          goto LABEL_154;
        }

        v75 = v67;
        while (1)
        {
          v76 = (j->n128_f64 + v75);
          v77 = (&j[-1] + v75);
          v78 = *(&j->n128_i32[-3] + v75);
          if (v71 == v78)
          {
            v79 = *(v76 - 1);
            if (result.n128_f64[0] == v79)
            {
              if (v74 >= *v77)
              {
LABEL_173:
                v69 = v70;
LABEL_154:
                v69->n128_u32[0] = v74;
                v69->n128_u32[1] = v71;
                v69->n128_u64[1] = result.n128_u64[0];
LABEL_155:
                v64 = v68 + 1;
                v67 += 16;
                if (&v68[1] == a2)
                {
                  return result;
                }

                goto LABEL_156;
              }
            }

            else if (result.n128_f64[0] >= v79)
            {
              v69 = (j + v75);
              goto LABEL_154;
            }
          }

          else if (v71 >= v78)
          {
            goto LABEL_173;
          }

          --v70;
          *v76 = *v77;
          v75 -= 16;
          if (!v75)
          {
            v69 = j;
            goto LABEL_154;
          }
        }
      }

      if (v66)
      {
        return result;
      }

      while (1)
      {
        v129 = a1;
        a1 = v64;
        v130 = v129[1].n128_i32[1];
        v131 = v129->n128_i32[1];
        if (v130 == v131)
        {
          result.n128_u64[0] = v129[1].n128_u64[1];
          v132 = v129->n128_f64[1];
          if (result.n128_f64[0] == v132)
          {
            if (a1->n128_u32[0] < v129->n128_u32[0])
            {
              goto LABEL_263;
            }
          }

          else if (result.n128_f64[0] < v132)
          {
            goto LABEL_263;
          }
        }

        else if (v130 < v131)
        {
          result.n128_u64[0] = v129[1].n128_u64[1];
LABEL_263:
          v133 = a1->n128_u32[0];
          do
          {
            while (1)
            {
              while (1)
              {
                v134 = v129;
                v129[1] = *v129;
                --v129;
                v135 = v134[-1].n128_i32[1];
                if (v130 == v135)
                {
                  break;
                }

                if (v130 >= v135)
                {
                  goto LABEL_254;
                }
              }

              v136 = v134[-1].n128_f64[1];
              if (result.n128_f64[0] != v136)
              {
                break;
              }

              if (v133 >= v129->n128_u32[0])
              {
                goto LABEL_254;
              }
            }
          }

          while (result.n128_f64[0] < v136);
LABEL_254:
          v134->n128_u32[0] = v133;
          v134->n128_u32[1] = v130;
          v134->n128_u64[1] = result.n128_u64[0];
        }

        v64 = a1 + 1;
        if (&a1[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (j == a2)
      {
        return result;
      }

      v80 = (v11 - 2) >> 1;
      v81 = v80;
LABEL_179:
      v83 = v81;
      v84 = 16 * v81;
      if (v80 < (16 * v81) >> 4)
      {
        goto LABEL_178;
      }

      v85 = (v84 >> 3) | 1;
      v82 = &j[v85];
      if ((v84 >> 3) + 2 >= v11)
      {
        goto LABEL_187;
      }

      v86 = v82->n128_i32[1];
      v87 = v82[1].n128_i32[1];
      v88 = v86 < v87;
      if (v86 == v87)
      {
        v89 = v82->n128_f64[1];
        v90 = v82[1].n128_f64[1];
        if (v89 != v90)
        {
          if (v89 >= v90)
          {
            goto LABEL_187;
          }

LABEL_186:
          ++v82;
          v85 = (v84 >> 3) + 2;
LABEL_187:
          v91 = &j[v84 / 0x10];
          v92 = v82->n128_i32[1];
          v93 = j[v84 / 0x10].n128_i32[1];
          if (v92 == v93)
          {
            v94 = v82->n128_f64[1];
            v95 = v91->n128_f64[1];
            if (v94 == v95)
            {
              if (v82->n128_u32[0] < v91->n128_u32[0])
              {
                goto LABEL_178;
              }
            }

            else if (v94 < v95)
            {
              goto LABEL_178;
            }
          }

          else
          {
            if (v92 < v93)
            {
              goto LABEL_178;
            }

            v95 = v91->n128_f64[1];
          }

          v96 = v91->n128_u32[0];
          while (1)
          {
            *v91 = *v82;
            if (v80 < v85)
            {
              goto LABEL_177;
            }

            v91 = v82;
            v97 = 2 * v85;
            v85 = (2 * v85) | 1;
            v82 = &j[v85];
            v98 = v97 + 2;
            if (v98 >= v11)
            {
              goto LABEL_204;
            }

            v99 = v82->n128_i32[1];
            v100 = v82[1].n128_i32[1];
            v101 = v99 < v100;
            if (v99 != v100)
            {
              goto LABEL_201;
            }

            v102 = v82->n128_f64[1];
            v103 = v82[1].n128_f64[1];
            if (v102 == v103)
            {
              break;
            }

            if (v102 >= v103)
            {
              goto LABEL_204;
            }

LABEL_203:
            ++v82;
            v85 = v98;
LABEL_204:
            v104 = v82->n128_i32[1];
            if (v104 == v93)
            {
              v105 = v82->n128_f64[1];
              if (v105 == v95)
              {
                if (v82->n128_u32[0] < v96)
                {
                  goto LABEL_176;
                }
              }

              else if (v105 < v95)
              {
LABEL_176:
                v82 = v91;
LABEL_177:
                v82->n128_u32[0] = v96;
                v82->n128_u32[1] = v93;
                v82->n128_f64[1] = v95;
LABEL_178:
                v81 = v83 - 1;
                if (v83)
                {
                  goto LABEL_179;
                }

                while (2)
                {
                  v106 = 0;
                  v149 = *j;
                  v107 = j;
LABEL_219:
                  v108 = v107;
                  v109 = &v107[v106];
                  v107 = v109 + 1;
                  v110 = 2 * v106;
                  v106 = (2 * v106) | 1;
                  v111 = v110 + 2;
                  if (v111 >= v11)
                  {
                    goto LABEL_218;
                  }

                  v112 = v109[1].n128_i32[1];
                  v113 = v109[2].n128_i32[1];
                  v114 = v112 < v113;
                  if (v112 != v113)
                  {
                    goto LABEL_223;
                  }

                  v115 = v109[1].n128_f64[1];
                  v116 = v109[2].n128_f64[1];
                  if (v115 == v116)
                  {
                    v114 = v107->n128_u32[0] < v109[2].n128_u32[0];
LABEL_223:
                    if (!v114)
                    {
LABEL_218:
                      *v108 = *v107;
                      if (v106 > ((v11 - 2) >> 1))
                      {
                        if (v107 == --a2)
                        {
                          result = v149;
                          *v107 = v149;
                          goto LABEL_215;
                        }

                        *v107 = *a2;
                        result = v149;
                        *a2 = v149;
                        v117 = (v107 - j + 16) >> 4;
                        v118 = v117 - 2;
                        if (v117 >= 2)
                        {
                          v119 = v118 >> 1;
                          v120 = &j[v118 >> 1];
                          v121 = v120->n128_i32[1];
                          v122 = v107->n128_i32[1];
                          if (v121 == v122)
                          {
                            v123 = v120->n128_f64[1];
                            result.n128_u64[0] = v107->n128_u64[1];
                            if (v123 == result.n128_f64[0])
                            {
                              if (v120->n128_u32[0] < v107->n128_u32[0])
                              {
                                goto LABEL_237;
                              }

                              goto LABEL_215;
                            }

                            if (v123 >= result.n128_f64[0])
                            {
                              goto LABEL_215;
                            }

LABEL_237:
                            v124 = v107->n128_u32[0];
                            *v107 = *v120;
                            if (v118 >= 2)
                            {
                              do
                              {
LABEL_241:
                                v125 = v120;
                                v126 = v119 - 1;
                                v119 = (v119 - 1) >> 1;
                                v120 = &j[v119];
                                v127 = v120->n128_i32[1];
                                if (v127 == v122)
                                {
                                  v128 = v120->n128_f64[1];
                                  if (v128 == result.n128_f64[0])
                                  {
                                    if (v120->n128_u32[0] >= v124)
                                    {
                                      goto LABEL_246;
                                    }
                                  }

                                  else if (v128 >= result.n128_f64[0])
                                  {
LABEL_246:
                                    v120 = v125;
                                    break;
                                  }
                                }

                                else if (v127 >= v122)
                                {
                                  goto LABEL_246;
                                }

                                *v125 = *v120;
                              }

                              while (v126 > 1);
                            }
                          }

                          else
                          {
                            if (v121 >= v122)
                            {
                              goto LABEL_215;
                            }

                            result.n128_u64[0] = v107->n128_u64[1];
                            v124 = v107->n128_u32[0];
                            *v107 = *v120;
                            if (v118 >= 2)
                            {
                              goto LABEL_241;
                            }
                          }

                          v120->n128_u32[0] = v124;
                          v120->n128_u32[1] = v122;
                          v120->n128_u64[1] = result.n128_u64[0];
                        }

LABEL_215:
                        v24 = v11-- <= 2;
                        if (v24)
                        {
                          return result;
                        }

                        continue;
                      }

                      goto LABEL_219;
                    }
                  }

                  else if (v115 >= v116)
                  {
                    goto LABEL_218;
                  }

                  break;
                }

                v107 = v109 + 2;
                v106 = v111;
                goto LABEL_218;
              }
            }

            else if (v104 < v93)
            {
              goto LABEL_176;
            }
          }

          v101 = v82->n128_u32[0] < v82[1].n128_u32[0];
LABEL_201:
          if (!v101)
          {
            goto LABEL_204;
          }

          goto LABEL_203;
        }

        v88 = v82->n128_u32[0] < v82[1].n128_u32[0];
      }

      if (!v88)
      {
        goto LABEL_187;
      }

      goto LABEL_186;
    }

    v12 = v11 >> 1;
    v13 = &j[v11 >> 1];
    if (v11 < 0x81)
    {
      --a3;
      if (a4)
      {
LABEL_18:
        v19 = a1->n128_i32[1];
        goto LABEL_23;
      }
    }

    else
    {
      v15 = v12;
      v16 = &a1[v12 - 1];
      v146 = *a1;
      *a1 = *v13;
      result.n128_u64[1] = v146.n128_u64[1];
      *v13 = v146;
      --a3;
      if (a4)
      {
        goto LABEL_18;
      }
    }

    v19 = a1[-1].n128_i32[1];
    v20 = a1->n128_i32[1];
    if (v19 == v20)
    {
      v21 = a1[-1].n128_f64[1];
      result.n128_u64[0] = a1->n128_u64[1];
      if (v21 == result.n128_f64[0])
      {
        if (a1[-1].n128_u32[0] >= a1->n128_u32[0])
        {
          goto LABEL_77;
        }

        goto LABEL_23;
      }

      if (v21 >= result.n128_f64[0])
      {
        goto LABEL_77;
      }

LABEL_23:
      v22 = 0;
      v23 = a1->n128_u32[0];
      result.n128_u64[0] = a1->n128_u64[1];
      while (1)
      {
        v25 = &a1[v22];
        v26 = a1[v22 + 1].n128_i32[1];
        v24 = v26 < v19;
        if (v26 == v19)
        {
          break;
        }

LABEL_25:
        if (!v24)
        {
          goto LABEL_31;
        }

LABEL_27:
        ++v22;
      }

      v27 = v25[1].n128_f64[1];
      if (v27 == result.n128_f64[0])
      {
        v24 = v25[1].n128_u32[0] < v23;
        goto LABEL_25;
      }

      if (v27 < result.n128_f64[0])
      {
        goto LABEL_27;
      }

LABEL_31:
      v28 = &a1[v22 + 1];
      i = a2 - 1;
      if (v22 * 16)
      {
        while (1)
        {
          v30 = i->n128_i32[1];
          if (v30 == v19)
          {
            v31 = i->n128_f64[1];
            if (v31 == result.n128_f64[0])
            {
              if (i->n128_u32[0] < v23)
              {
                goto LABEL_41;
              }
            }

            else if (v31 < result.n128_f64[0])
            {
              goto LABEL_41;
            }
          }

          else if (v30 < v19)
          {
            goto LABEL_41;
          }

          --i;
        }
      }

      i = a2;
      if (v28 < a2)
      {
        for (i = a2 - 1; ; --i)
        {
          v40 = i->n128_i32[1];
          if (v40 == v19)
          {
            v41 = i->n128_f64[1];
            if (v41 == result.n128_f64[0])
            {
              if (v28 >= i || i->n128_u32[0] < v23)
              {
                break;
              }
            }

            else if (v28 >= i || v41 < result.n128_f64[0])
            {
              break;
            }
          }

          else if (v40 < v19 || v28 >= i)
          {
            break;
          }
        }
      }

LABEL_41:
      j = v28;
      if (v28 < i)
      {
        v32 = i;
        do
        {
          v147 = *j;
          *j = *v32;
          *v32 = v147;
          do
          {
            while (1)
            {
              ++j;
              v34 = j->n128_i32[1];
              v33 = v34 < v19;
              if (v34 != v19)
              {
                goto LABEL_46;
              }

              v35 = j->n128_f64[1];
              if (v35 != result.n128_f64[0])
              {
                break;
              }

              v33 = j->n128_u32[0] < v23;
LABEL_46:
              if (!v33)
              {
                goto LABEL_54;
              }
            }
          }

          while (v35 < result.n128_f64[0]);
          do
          {
            while (1)
            {
LABEL_54:
              --v32;
              v37 = v32->n128_i32[1];
              v36 = v37 < v19;
              if (v37 != v19)
              {
                goto LABEL_53;
              }

              v38 = v32->n128_f64[1];
              if (v38 != result.n128_f64[0])
              {
                break;
              }

              v36 = v32->n128_u32[0] < v23;
LABEL_53:
              if (v36)
              {
                goto LABEL_43;
              }
            }
          }

          while (v38 >= result.n128_f64[0]);
LABEL_43:
          ;
        }

        while (j < v32);
      }

      if (&j[-1] != a1)
      {
        *a1 = j[-1];
      }

      j[-1].n128_u32[0] = v23;
      j[-1].n128_u32[1] = v19;
      j[-1].n128_u64[1] = result.n128_u64[0];
      if (v28 < i)
      {
LABEL_76:
        a4 = 0;
      }

      else
      {
        {
          a2 = j - 1;
          if (v42)
          {
            return result;
          }

          goto LABEL_1;
        }

        if ((v42 & 1) == 0)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v19 < v20)
      {
        v19 = a1->n128_i32[1];
        goto LABEL_23;
      }

      result.n128_u64[0] = a1->n128_u64[1];
LABEL_77:
      v44 = a1->n128_u32[0];
      v45 = a2[-1].n128_i32[1];
      if (v20 == v45)
      {
        if (result.n128_f64[0] == *v145)
        {
          if (v44 < v9->n128_u32[0])
          {
            goto LABEL_91;
          }
        }

        else if (result.n128_f64[0] < *v145)
        {
LABEL_91:
          for (j = a1 + 1; ; ++j)
          {
            v48 = j->n128_i32[1];
            if (v20 == v48)
            {
              v49 = j->n128_f64[1];
              if (result.n128_f64[0] == v49)
              {
                if (v44 < j->n128_u32[0])
                {
                  goto LABEL_99;
                }
              }

              else if (result.n128_f64[0] < v49)
              {
                goto LABEL_99;
              }
            }

            else if (v20 < v48)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v20 < v45)
      {
        goto LABEL_91;
      }

      for (j = a1 + 1; j < a2; ++j)
      {
        v46 = j->n128_i32[1];
        if (v20 == v46)
        {
          v47 = j->n128_f64[1];
          if (result.n128_f64[0] == v47)
          {
            if (v44 < j->n128_u32[0])
            {
              break;
            }
          }

          else if (result.n128_f64[0] < v47)
          {
            break;
          }
        }

        else if (v20 < v46)
        {
          break;
        }
      }

LABEL_99:
      v50 = a2;
      if (j >= a2)
      {
        goto LABEL_122;
      }

      for (k = &a2[-1].n128_f64[1]; ; k -= 2)
      {
        if (v20 != v45)
        {
          if (v20 >= v45)
          {
            goto LABEL_108;
          }

          goto LABEL_102;
        }

        if (result.n128_f64[0] != *k)
        {
          break;
        }

        if (v44 >= *(k - 2))
        {
          goto LABEL_108;
        }

LABEL_102:
        v45 = *(k - 5);
      }

      if (result.n128_f64[0] < *k)
      {
        goto LABEL_102;
      }

LABEL_108:
      v50 = (k - 1);
LABEL_122:
      if (j < v50)
      {
        v148 = *j;
        *j = *v50;
        *v50 = v148;
        while (1)
        {
          ++j;
          v53 = j->n128_i32[1];
          v52 = v20 < v53;
          if (v20 != v53)
          {
            goto LABEL_111;
          }

          v54 = j->n128_f64[1];
          if (result.n128_f64[0] == v54)
          {
            v52 = v44 < j->n128_u32[0];
LABEL_111:
            if (v52)
            {
              goto LABEL_119;
            }
          }

          else if (result.n128_f64[0] < v54)
          {
            while (1)
            {
LABEL_119:
              --v50;
              v56 = v50->n128_i32[1];
              v55 = v20 < v56;
              if (v20 != v56)
              {
                goto LABEL_117;
              }

              v57 = v50->n128_f64[1];
              if (result.n128_f64[0] == v57)
              {
                v55 = v44 < v50->n128_u32[0];
LABEL_117:
                if (!v55)
                {
                  goto LABEL_122;
                }
              }

              else if (result.n128_f64[0] >= v57)
              {
                goto LABEL_122;
              }
            }
          }
        }
      }

      if (&j[-1] != a1)
      {
        *a1 = j[-1];
      }

      a4 = 0;
      j[-1].n128_u32[0] = v44;
      j[-1].n128_u32[1] = v20;
      j[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  v58 = a2[-1].n128_i32[1];
  v59 = j->n128_i32[1];
  if (v58 == v59)
  {
    result.n128_u64[0] = a2[-1].n128_u64[1];
    v60 = j->n128_f64[1];
    if (result.n128_f64[0] == v60)
    {
      if (v9->n128_u32[0] >= j->n128_u32[0])
      {
        return result;
      }
    }

    else if (result.n128_f64[0] >= v60)
    {
      return result;
    }

LABEL_272:
    v150 = *j;
    *j = *v9;
    result = v150;
    *v9 = v150;
    return result;
  }

  if (v58 < v59)
  {
    goto LABEL_272;
  }

  return result;
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 result)
{
  v4 = a2->n128_i32[1];
  v5 = a1->n128_i32[1];
  v6 = v4 < v5;
  if (v4 == v5)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v7 = a1->n128_f64[1];
    if (result.n128_f64[0] != v7)
    {
      if (result.n128_f64[0] >= v7)
      {
        goto LABEL_13;
      }

LABEL_6:
      v8 = a3->n128_i32[1];
      v9 = v8 < v4;
      if (v8 == v4)
      {
        v10 = a3->n128_f64[1];
        v11 = a2->n128_f64[1];
        if (v10 != v11)
        {
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        v9 = a3->n128_u32[0] < a2->n128_u32[0];
      }

      if (!v9)
      {
LABEL_20:
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v14 = a3->n128_i32[1];
        v15 = a2->n128_i32[1];
        v16 = v14 < v15;
        if (v14 == v15)
        {
          result.n128_u64[0] = a3->n128_u64[1];
          v17 = a2->n128_f64[1];
          if (result.n128_f64[0] != v17)
          {
            if (result.n128_f64[0] >= v17)
            {
              return result;
            }

            goto LABEL_25;
          }

          v16 = a3->n128_u32[0] < a2->n128_u32[0];
        }

        if (!v16)
        {
          return result;
        }

LABEL_25:
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        return result;
      }

LABEL_11:
      result = *a1;
      *a1 = *a3;
      *a3 = result;
      return result;
    }

    v6 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_13:
  v12 = a3->n128_i32[1];
  if (v12 == v4)
  {
    result.n128_u64[0] = a3->n128_u64[1];
    v13 = a2->n128_f64[1];
    if (result.n128_f64[0] == v13)
    {
      if (a3->n128_u32[0] >= a2->n128_u32[0])
      {
        return result;
      }
    }

    else if (result.n128_f64[0] >= v13)
    {
      return result;
    }
  }

  else if (v12 >= v4)
  {
    return result;
  }

  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v18 = a2->n128_i32[1];
  v19 = a1->n128_i32[1];
  v20 = v18 < v19;
  if (v18 == v19)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v21 = a1->n128_f64[1];
    if (result.n128_f64[0] != v21)
    {
      if (result.n128_f64[0] >= v21)
      {
        return result;
      }

LABEL_32:
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      return result;
    }

    v20 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v20)
  {
    goto LABEL_32;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  v12 = a4->n128_i32[1];
  v13 = a3->n128_i32[1];
  v14 = v12 < v13;
  if (v12 == v13)
  {
    result.n128_u64[0] = a4->n128_u64[1];
    v15 = a3->n128_f64[1];
    if (result.n128_f64[0] != v15)
    {
      if (result.n128_f64[0] >= v15)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

    v14 = a4->n128_u32[0] < a3->n128_u32[0];
  }

  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_6:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v16 = a3->n128_i32[1];
  v17 = a2->n128_i32[1];
  v18 = v16 < v17;
  if (v16 == v17)
  {
    result.n128_u64[0] = a3->n128_u64[1];
    v19 = a2->n128_f64[1];
    if (result.n128_f64[0] != v19)
    {
      if (result.n128_f64[0] >= v19)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    v18 = a3->n128_u32[0] < a2->n128_u32[0];
  }

  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_11:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v20 = a2->n128_i32[1];
  v21 = a1->n128_i32[1];
  v22 = v20 < v21;
  if (v20 == v21)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v23 = a1->n128_f64[1];
    if (result.n128_f64[0] != v23)
    {
      if (result.n128_f64[0] >= v23)
      {
        goto LABEL_22;
      }

LABEL_16:
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      goto LABEL_22;
    }

    v22 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_22:
  v24 = a5->n128_i32[1];
  v25 = a4->n128_i32[1];
  if (v24 == v25)
  {
    result.n128_u64[0] = a5->n128_u64[1];
    v26 = a4->n128_f64[1];
    if (result.n128_f64[0] == v26)
    {
      if (a5->n128_u32[0] >= a4->n128_u32[0])
      {
        return result;
      }
    }

    else if (result.n128_f64[0] >= v26)
    {
      return result;
    }
  }

  else if (v24 >= v25)
  {
    return result;
  }

  result = *a4;
  *a4 = *a5;
  *a5 = result;
  v27 = a4->n128_i32[1];
  v28 = a3->n128_i32[1];
  v29 = v27 < v28;
  if (v27 == v28)
  {
    result.n128_u64[0] = a4->n128_u64[1];
    v30 = a3->n128_f64[1];
    if (result.n128_f64[0] != v30)
    {
      if (result.n128_f64[0] >= v30)
      {
        return result;
      }

      goto LABEL_34;
    }

    v29 = a4->n128_u32[0] < a3->n128_u32[0];
  }

  if (!v29)
  {
    return result;
  }

LABEL_34:
  result = *a3;
  *a3 = *a4;
  *a4 = result;
  v31 = a3->n128_i32[1];
  v32 = a2->n128_i32[1];
  v33 = v31 < v32;
  if (v31 == v32)
  {
    result.n128_u64[0] = a3->n128_u64[1];
    v34 = a2->n128_f64[1];
    if (result.n128_f64[0] != v34)
    {
      if (result.n128_f64[0] >= v34)
      {
        return result;
      }

      goto LABEL_39;
    }

    v33 = a3->n128_u32[0] < a2->n128_u32[0];
  }

  if (!v33)
  {
    return result;
  }

LABEL_39:
  result = *a2;
  *a2 = *a3;
  *a3 = result;
  v35 = a2->n128_i32[1];
  v36 = a1->n128_i32[1];
  v37 = v35 < v36;
  if (v35 == v36)
  {
    result.n128_u64[0] = a2->n128_u64[1];
    v38 = a1->n128_f64[1];
    if (result.n128_f64[0] != v38)
    {
      if (result.n128_f64[0] >= v38)
      {
        return result;
      }

LABEL_44:
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      return result;
    }

    v37 = a2->n128_u32[0] < a1->n128_u32[0];
  }

  if (v37)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::ColumnWithRepresentativeAndScaledCost *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = a2 - 1;
      v5 = a2[-1].n128_i32[1];
      v6 = a1->n128_i32[1];
      if (v5 == v6)
      {
        v7 = a2[-1].n128_f64[1];
        v8 = a1->n128_f64[1];
        if (v7 == v8)
        {
          if (v4->n128_u32[0] < a1->n128_u32[0])
          {
            goto LABEL_48;
          }
        }

        else if (v7 < v8)
        {
LABEL_48:
          v35 = *a1;
          *a1 = *v4;
          *v4 = v35;
        }
      }

      else if (v5 < v6)
      {
        goto LABEL_48;
      }

      return 1;
    }

    goto LABEL_13;
  }

  switch(v3)
  {
    case 3:
      return 1;
    case 4:
      v26 = a2 - 1;
      v29 = a2[-1].n128_i32[1];
      v30 = a1[2].n128_i32[1];
      if (v29 == v30)
      {
        v31 = a2[-1].n128_f64[1];
        v32 = a1[2].n128_f64[1];
        if (v31 == v32)
        {
          if (v26->n128_u32[0] >= a1[2].n128_u32[0])
          {
            return 1;
          }
        }

        else if (v31 >= v32)
        {
          return 1;
        }
      }

      else if (v29 >= v30)
      {
        return 1;
      }

      v36 = a1[2];
      a1[2] = *v26;
      *v26 = v36;
      v37 = a1[2].n128_i32[1];
      v38 = a1[1].n128_i32[1];
      v39 = v37 < v38;
      if (v37 == v38)
      {
        v40 = a1[2].n128_f64[1];
        v41 = a1[1].n128_f64[1];
        if (v40 != v41)
        {
          if (v40 >= v41)
          {
            return 1;
          }

LABEL_55:
          v42 = a1[1];
          a1[1] = a1[2];
          a1[2] = v42;
          v43 = a1[1].n128_i32[1];
          v44 = a1->n128_i32[1];
          v45 = v43 < v44;
          if (v43 == v44)
          {
            v46 = a1[1].n128_f64[1];
            v47 = a1->n128_f64[1];
            if (v46 != v47)
            {
              if (v46 >= v47)
              {
                return 1;
              }

              goto LABEL_60;
            }

            v45 = a1[1].n128_u32[0] < a1->n128_u32[0];
          }

          if (!v45)
          {
            return 1;
          }

LABEL_60:
          v48 = *a1;
          *a1 = a1[1];
          a1[1] = v48;
          return 1;
        }

        v39 = a1[2].n128_u32[0] < a1[1].n128_u32[0];
      }

      if (!v39)
      {
        return 1;
      }

      goto LABEL_55;
    case 5:
      return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v13 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_40:
    v33 = 1;
    return (v33 | v12) & 1;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = v13->n128_i32[1];
    v18 = v9->n128_i32[1];
    if (v17 == v18)
    {
      v19 = v13->n128_f64[1];
      v20 = v9->n128_f64[1];
      if (v19 == v20)
      {
        if (v13->n128_u32[0] >= v9->n128_u32[0])
        {
          goto LABEL_17;
        }
      }

      else if (v19 >= v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v17 >= v18)
      {
        goto LABEL_17;
      }

      v19 = v13->n128_f64[1];
    }

    v21 = v13->n128_u32[0];
    *v13 = *v9;
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_16;
    }

    v22 = v14;
    while (1)
    {
      v23 = (a1->n128_f64 + v22);
      v24 = *(&a1[1].n128_i32[1] + v22);
      if (v17 != v24)
      {
        if (v17 >= v24)
        {
          v16 = (a1 + v22 + 32);
          goto LABEL_16;
        }

        goto LABEL_29;
      }

      v25 = v23[3];
      if (v19 != v25)
      {
        break;
      }

      if (v21 >= *(v23 + 4))
      {
        goto LABEL_35;
      }

LABEL_29:
      --v9;
      *(v23 + 2) = *(v23 + 1);
      v22 -= 16;
      if (v22 == -32)
      {
        v16 = a1;
        goto LABEL_16;
      }
    }

    if (v19 < v25)
    {
      goto LABEL_29;
    }

LABEL_35:
    v16 = v9;
LABEL_16:
    v16->n128_u32[0] = v21;
    v16->n128_u32[1] = v17;
    v16->n128_f64[1] = v19;
    if (++v15 != 8)
    {
LABEL_17:
      v9 = v13;
      v14 += 16;
      if (++v13 == a2)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v33 = 0;
  v12 = &v13[1] == a2;
  return (v33 | v12) & 1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), a2 - 2);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, (v9 + 16), (v9 + 32));
        v26 = *(a2 - 2);
        v27 = *(v9 + 32);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return result;
          }

          v29 = *(a2 - 2);
          v28 = *(v9 + 40);
          if (v29 >= v28)
          {
            return result;
          }
        }

        else
        {
          v28 = *(v9 + 40);
          v29 = *(a2 - 2);
        }

        *(v9 + 32) = v26;
        *(a2 - 2) = v27;
        *(v9 + 40) = v29;
        *(a2 - 2) = v28;
        v30 = *(v9 + 32);
        v31 = *(v9 + 16);
        if (v30 >= v31)
        {
          if (v31 < v30)
          {
            return result;
          }

          v33 = *(v9 + 40);
          v32 = *(v9 + 24);
          if (v33 >= v32)
          {
            return result;
          }
        }

        else
        {
          v32 = *(v9 + 24);
          v33 = *(v9 + 40);
        }

        *(v9 + 16) = v30;
        *(v9 + 32) = v31;
        *(v9 + 24) = v33;
        *(v9 + 40) = v32;
        v34 = *v9;
        if (v30 >= *v9)
        {
          if (v34 < v30)
          {
            return result;
          }

          v35 = *(v9 + 8);
          if (v33 >= v35)
          {
            return result;
          }
        }

        else
        {
          v35 = *(v9 + 8);
        }

        *v9 = v30;
        *(v9 + 16) = v34;
        *(v9 + 8) = v33;
        *(v9 + 24) = v35;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v36 = (v9 + 16);
      v38 = v9 == a2 || v36 == a2;
      if (a5)
      {
        if (v38)
        {
          return result;
        }

        v39 = 0;
        v40 = v9;
LABEL_56:
        v42 = v40;
        v40 = v36;
        v43 = *(v42 + 16);
        v44 = *v42;
        if (v43 >= *v42)
        {
          if (v44 < v43)
          {
            goto LABEL_55;
          }

          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
          if (v45 >= v46)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
        }

        *(v42 + 16) = v44;
        *(v40 + 8) = v46;
        v41 = v9;
        if (v42 == v9)
        {
          goto LABEL_54;
        }

        v47 = v39;
        while (1)
        {
          v50 = *(v9 + v47 - 16);
          if (v43 < v50)
          {
            v48 = *(v9 + v47 - 8);
          }

          else
          {
            if (v50 < v43)
            {
              v41 = v9 + v47;
LABEL_54:
              *v41 = v43;
              *(v41 + 8) = v45;
LABEL_55:
              v36 = (v40 + 16);
              v39 += 16;
              if ((v40 + 16) == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v48 = *(v9 + v47 - 8);
            if (v45 >= v48)
            {
              v41 = v42;
              goto LABEL_54;
            }
          }

          v42 -= 16;
          v49 = v9 + v47;
          *v49 = v50;
          *(v49 + 8) = v48;
          v47 -= 16;
          if (!v47)
          {
            v41 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v38)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v56 = v8;
        v8 = v36;
        v57 = *(v56 + 16);
        v58 = *v56;
        if (v57 < *v56)
        {
          break;
        }

        if (v58 >= v57)
        {
          v59 = *(v56 + 24);
          if (v59 < *(v56 + 8))
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v36 = (v8 + 16);
        if ((v8 + 16) == a2)
        {
          return result;
        }
      }

      v59 = *(v56 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v58;
        *(j + 16) = *j;
        v58 = *(j - 24);
        if (v57 >= v58 && (v58 < v57 || v59 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v57;
      *j = v59;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v51 = (v12 - 2) >> 1;
        v52 = v51 + 1;
        v53 = (v9 + 16 * v51);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *>(v9, a3, (a2 - v9) >> 4, v53);
          v53 -= 2;
          --v52;
        }

        while (v52);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<long long,int> *>(v9, a2, a3, v12);
          a2 -= 2;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 16 * (v12 >> 1)), v8, a2 - 2);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v8, (v8 + 16 * (v12 >> 1)), a2 - 2);
      v15 = 16 * v13;
      v16 = (16 * v13 + v8 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 16), v16, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>((v8 + 32), (v8 + 16 + v15), a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,0>(v16, v14, (v8 + 16 + v15));
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      LODWORD(v17) = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v17;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v18 = *(v8 - 16);
    if (v18 >= *v8 && (*v8 < v18 || *(v8 - 8) >= *(v8 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<long long,int> *,std::__less<void,void> &>(v8, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>(v8, v19);
    v9 = (v19 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *>((v19 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(v8, v19, a3, -v11, a5 & 1);
      v9 = (v19 + 2);
      goto LABEL_25;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v22 = *(a2 - 2);
  v23 = *v9;
  if (v22 < *v9)
  {
    v24 = *(v9 + 8);
    v25 = *(a2 - 2);
LABEL_30:
    *v9 = v22;
    *(a2 - 2) = v23;
    *(v9 + 8) = v25;
    *(a2 - 2) = v24;
    return result;
  }

  if (v23 >= v22)
  {
    v25 = *(a2 - 2);
    v24 = *(v9 + 8);
    if (v25 < v24)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 2);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 2);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 2) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = *(v15 + 16);
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 8);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 8) = v20;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

uint64_t operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::AddMultipleToSparseVectorInternal(void *a1, int a2, int a3, uint64_t *a4, double a5, double a6)
{
  v8 = a1[1];
  v9 = a4[1];
  v10 = -2;
  if (!a2)
  {
    v10 = 0;
  }

  if (v8 + v10 + v9 >= 1)
  {
    operator new[]();
  }

  result = 0;
  if (v8 >= 1 && v9 >= 1)
  {
    v27 = a1[3];
    v28 = a4[3];
    v13 = 0;
    v12 = 0;
    v11 = 0;
    if (a2)
    {
      while (1)
      {
        v29 = *(v27 + 4 * v11);
        v30 = *(v28 + 4 * v12);
        if (v29 == v30)
        {
          if (v29 != a3)
          {
            v31 = *(a1[4] + 8 * v11) * a5 + *(a4[4] + 8 * v12);
            if (fabs(v31) > a6)
            {
              *(4 * v13) = v29;
              *(8 * v13++) = v31;
            }
          }

          ++v11;
          ++v12;
          if (v11 >= v8)
          {
            goto LABEL_6;
          }
        }

        else if (v29 >= v30)
        {
          *(4 * v13) = v30;
          *(8 * v13++) = *(a4[4] + 8 * v12++);
          if (v11 >= v8)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = *(a1[4] + 8 * v11) * a5;
          if (fabs(v32) > a6)
          {
            *(4 * v13) = v29;
            *(8 * v13++) = v32;
          }

          if (++v11 >= v8)
          {
            goto LABEL_6;
          }
        }

        if (v12 >= v9)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v33 = *(v27 + 4 * v11);
      v34 = *(v28 + 4 * v12);
      if (v33 == v34)
      {
        break;
      }

      if (v33 >= v34)
      {
        *(4 * v13) = v34;
        *(8 * v13++) = *(a4[4] + 8 * v12++);
        if (v11 >= v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v36 = *(a1[4] + 8 * v11) * a5;
        if (fabs(v36) > a6)
        {
          *(4 * v13) = v33;
          *(8 * v13++) = v36;
        }

        if (++v11 >= v8)
        {
          goto LABEL_6;
        }
      }

LABEL_52:
      if (v12 >= v9)
      {
        goto LABEL_6;
      }
    }

    if (v33 == a3)
    {
      *(4 * v13) = a3;
      v35 = *(a4[4] + 8 * v12);
    }

    else
    {
      v35 = *(a1[4] + 8 * v11) * a5 + *(a4[4] + 8 * v12);
      if (fabs(v35) <= a6)
      {
        goto LABEL_49;
      }

      *(4 * v13) = v33;
    }

    *(8 * v13++) = v35;
LABEL_49:
    ++v11;
    ++v12;
    if (v11 >= v8)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_6:
  if (v11 < v8)
  {
    v14 = a1[4];
    do
    {
      v15 = *(v14 + 8 * v11) * a5;
      if (fabs(v15) > a6)
      {
        *(4 * v13) = *(a1[3] + 4 * v11);
        *(8 * v13++) = v15;
      }

      ++v11;
    }

    while (v8 != v11);
  }

  v16 = v9 - v12;
  if (v9 > v12)
  {
    v18 = a4[3];
    v17 = a4[4];
    if (v16 <= 0xB)
    {
      goto LABEL_13;
    }

    v37 = 4 * v13;
    v38 = 4 * v12;
    if ((4 * v13 - 4 * v12 - v18) < 0x20)
    {
      goto LABEL_13;
    }

    v39 = 8 * v13;
    v40 = 8 * v12;
    if ((8 * v13 - 8 * v12 - v17) < 0x40)
    {
      goto LABEL_13;
    }

    v13 += v16 & 0xFFFFFFFFFFFFFFF8;
    v12 += v16 & 0xFFFFFFFFFFFFFFF8;
    v41 = (v39 + 32);
    v42 = (v38 + v18 + 16);
    v43 = (v37 + 16);
    v44 = (v40 + v17 + 32);
    v45 = v16 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v47 = *(v44 - 2);
      v46 = *(v44 - 1);
      v49 = *v44;
      v48 = v44[1];
      v44 += 4;
      *(v41 - 2) = v47;
      *(v41 - 1) = v46;
      v50 = *(v42 - 1);
      v51 = *v42;
      *v41 = v49;
      v41[1] = v48;
      v41 += 4;
      v42 += 2;
      *(v43 - 1) = v50;
      *v43 = v51;
      v43 += 2;
      v45 -= 8;
    }

    while (v45);
    if (v16 != (v16 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_13:
      v19 = (v18 + 4 * v12);
      v20 = v9 - v12;
      v21 = (v17 + 8 * v12);
      do
      {
        v22 = *v19++;
        *(4 * v13) = v22;
        v23 = *v21++;
        *(8 * v13++) = v23;
        --v20;
      }

      while (v20);
    }
  }

  v24 = *a4;
  *a4 = 0;
  a4[1] = v13;
  *(a4 + 40) = 0;
  a4[2] = 0;
  a4[3] = 0;
  a4[4] = 0;
  if (v24)
  {

    JUMPOUT(0x23EED9440);
  }

  return result;
}

uint64_t std::vector<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::__emplace_back_slow_path<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v20 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v6;
  *(v20 + 32) = *(a2 + 32);
  operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector((88 * v2 + 40), a2 + 40);
  v7 = 88 * v2 + 88;
  v8 = *a1;
  v9 = a1[1];
  v10 = v20 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v20 + *a1 - v9;
    do
    {
      v13 = *v11;
      v14 = *(v11 + 1);
      *(v12 + 32) = v11[4];
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = v11[5];
      v11[5] = 0;
      *(v12 + 40) = v15;
      v16 = *(v11 + 3);
      v17 = *(v11 + 4);
      *(v12 + 80) = *(v11 + 80);
      *(v12 + 48) = v16;
      *(v12 + 64) = v17;
      v11 += 11;
      v12 += 88;
    }

    while (v11 != v9);
    do
    {
      v18 = v8[5];
      v8[5] = 0;
      if (v18)
      {
        MEMORY[0x23EED9440](v18, 0x1000C8077774924);
      }

      v8 += 11;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}