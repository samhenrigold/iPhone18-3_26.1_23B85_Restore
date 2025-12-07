uint64_t operations_research::sat::CombinedDisjunctive<true>::CombinedDisjunctive(uint64_t a1, void *a2)
{
  *a1 = &unk_284F40FA0;
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::AllIntervalsHelper>(a2);
  *(a1 + 64) = 0u;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  if (0xAAAAAAAB00000000 * ((*(v4 + 11) - *(v4 + 10)) >> 3))
  {
    std::vector<std::vector<int>>::__append(a1 + 16, (-1431655765 * ((*(v4 + 11) - *(v4 + 10)) >> 3)));
  }

  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a2);
  v6 = operations_research::sat::GenericLiteralWatcher::Register(v5, a1);
  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(*(a1 + 8), v6, v5, 1, 0);
  operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(v5, v6);
  return a1;
}

void sub_23CB8527C(_Unwind_Exception *a1)
{
  v5 = v1[11];
  if (v5)
  {
    v1[12] = v5;
    operator delete(v5);
    std::vector<operations_research::sat::TaskSet>::~vector[abi:ne200100](v3);
    v6 = v1[5];
    if (!v6)
    {
LABEL_3:
      std::vector<std::vector<int>>::~vector[abi:ne200100](v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<operations_research::sat::TaskSet>::~vector[abi:ne200100](v3);
    v6 = v1[5];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  operator delete(v6);
  std::vector<std::vector<int>>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

operations_research::sat::AllIntervalsHelper *operations_research::sat::Model::GetOrCreate<operations_research::sat::AllIntervalsHelper>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::AllIntervalsHelper>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::AllIntervalsHelper>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::AllIntervalsHelper>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::AllIntervalsHelper>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::AllIntervalsHelper>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

char **std::vector<operations_research::sat::TaskSet>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 4);
        v5 -= 32;
        v6 = v7;
        if (v7)
        {
          *(v3 - 3) = v6;
          operator delete(v6);
        }

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

void operations_research::sat::CombinedDisjunctive<true>::~CombinedDisjunctive(void *a1)
{
  operations_research::sat::CombinedDisjunctive<true>::~CombinedDisjunctive(a1);

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::CombinedDisjunctive<true>::Propagate(uint64_t a1)
{
  v1 = a1;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1);
  if (!result)
  {
    return result;
  }

  v4 = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingEndMin(*(v1 + 8), v3);
  v6 = v5;
  started = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingStartMax(*(v1 + 8), v7);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  if (v9 != v8)
  {
    v10 = v8 - v9 - 32;
    v11 = *(v1 + 64);
    if (v10 <= 0x1F)
    {
      goto LABEL_144;
    }

    v12 = (v10 >> 5) + 1;
    v11 = v9 + 32 * (v12 & 0xFFFFFFFFFFFFFFELL);
    v13 = (v9 + 32);
    v14 = v12 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      v15 = *v13;
      *(v13 - 3) = *(v13 - 4);
      v13[1] = v15;
      *(v13 - 2) = 0;
      *(v13 + 6) = 0;
      v13 += 8;
      v14 -= 2;
    }

    while (v14);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_144:
      do
      {
        *(v11 + 8) = *v11;
        *(v11 + 24) = 0;
        v11 += 32;
      }

      while (v11 != v8);
    }
  }

  std::vector<long long>::assign((v1 + 88), (*(v1 + 96) - *(v1 + 88)) >> 3, &operations_research::sat::kMinIntegerValue);
  v16 = -1431655765 * ((*(*(v1 + 8) + 88) - *(*(v1 + 8) + 80)) >> 3);
  v147 = (v1 + 88);
  LOBYTE(v156) = 0;
  v140 = (v1 + 40);
  std::vector<BOOL>::assign(v1 + 40, v16, &v156);
  if ((v6 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v17 = 0x8000000000000002;
  LODWORD(v18) = v16 - 1;
  v141 = &v4[4 * v6];
  v148 = v1;
  v19 = (v1 + 88);
  while (2)
  {
    v20 = *v4;
    v142 = v4;
    v144 = *(v4 + 1);
    v21 = *(v1 + 8);
    v22 = *(*(v21 + 19) + 4 * *v4);
    if (v22 != -1 && ((*(*(*(v21 + 3) + 24) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v22 & 0x3F ^ 1)) & 1) != 0)
    {
      goto LABEL_12;
    }

    v146 = *v4;
    if ((v18 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v18 = v18;
    do
    {
      v23 = (started + 16 * v18);
      v21 = *(v1 + 8);
      if (v144 <= *(v23 + 1))
      {
        goto LABEL_53;
      }

      v24 = *v23;
      v25 = *(*(v21 + 19) + 4 * *v23);
      v145 = v18;
      if (v25 == -1 || ((*(*(*(v21 + 3) + 24) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) != 0)
      {
        *(*(v1 + 40) + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v26 = *(v1 + 16) + 24 * v24;
        v28 = *v26;
        v27 = *(v26 + 8);
        if (*v26 != v27)
        {
          v29 = *(*(v21 + 34) + 8 * v24);
          v30 = *(*(v21 + 29) + 8 * v24);
          v31 = *(v1 + 64);
          v151 = v30;
          v152 = v24;
          v149 = *(v26 + 8);
          do
          {
            v32 = *v28;
            v33 = v31 + 32 * v32;
            v35 = *v33;
            v34 = *(v33 + 8);
            v36 = v34 - *v33;
            v37 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3);
            v38 = *(v33 + 16);
            if (v34 >= v38)
            {
              v39 = v37 + 1;
              if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v40 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v35) >> 3);
              if (2 * v40 > v39)
              {
                v39 = 2 * v40;
              }

              if (v40 >= 0x555555555555555)
              {
                v41 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v41 = v39;
              }

              if (v41)
              {
                if (v41 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v42 = v17;
              v43 = 8 * (v36 >> 3);
              *v43 = v24;
              *(v43 + 8) = v29;
              *(v43 + 16) = v30;
              v44 = v43 + 24;
              v45 = v43 - v36;
              memcpy((v43 - v36), v35, v36);
              *v33 = v45;
              *(v33 + 8) = v44;
              *(v33 + 16) = 0;
              if (v35)
              {
                operator delete(v35);
              }

              v19 = v147;
              v1 = v148;
              v17 = v42;
              v30 = v151;
              v24 = v152;
              v27 = v149;
              *(v33 + 8) = v44;
              if (v37 >= 1)
              {
LABEL_41:
                v37 &= 0x7FFFFFFFu;
                v46 = 24 * v37;
                while (1)
                {
                  v47 = *v33 + v46;
                  if (*(v47 - 16) <= v29)
                  {
                    break;
                  }

                  --v37;
                  *v47 = *(v47 - 24);
                  *(v47 + 16) = *(v47 - 8);
                  v46 -= 24;
                  if (v37 + 1 <= 1)
                  {
                    LODWORD(v37) = 0;
                    break;
                  }
                }
              }
            }

            else
            {
              *v34 = v24;
              *(v34 + 8) = v29;
              *(v34 + 16) = v30;
              *(v33 + 8) = v34 + 24;
              if (v37 >= 1)
              {
                goto LABEL_41;
              }
            }

            v48 = *v33 + 24 * v37;
            *v48 = v24;
            *(v48 + 8) = v29;
            *(v48 + 16) = v30;
            if (v37 <= *(v33 + 24))
            {
              *(v33 + 24) = 0;
            }

            v31 = *(v1 + 64);
            v49 = v31 + 32 * v32;
            v50 = 0xAAAAAAAAAAAAAAABLL * ((*(v49 + 8) - *v49) >> 3);
            v51 = *(v49 + 24);
            v52 = 0x8000000000000002;
            if (v51 < v50)
            {
              v53 = v50 - v51;
              v54 = (*v49 + 24 * v51 + 16);
              v52 = 0x8000000000000002;
              do
              {
                v56 = *(v54 - 1);
                if (v56 >= v52)
                {
                  *(v49 + 24) = v51;
                  v52 = v56;
                }

                v55 = *v54;
                v54 += 3;
                v52 += v55;
                ++v51;
                --v53;
              }

              while (v53);
            }

            *(*v19 + 8 * v32) = v52;
            if (v17 <= v52)
            {
              v17 = v52;
            }

            ++v28;
          }

          while (v28 != v27);
        }
      }

      v20 = v146;
      v18 = v145 - 1;
    }

    while (v145 > 0);
    v21 = *(v1 + 8);
    LODWORD(v18) = -1;
LABEL_53:
    v57 = v20;
    v58 = *(*(v21 + 30) + 8 * v20);
    v155 = v58;
    if (v58 >= v17)
    {
      goto LABEL_11;
    }

    v59 = *(v1 + 16) + 24 * v20;
    v60 = *v59;
    v61 = *(v59 + 8);
    if ((*(*(v1 + 40) + 8 * (v20 >> 6)) & (1 << v20)) != 0)
    {
      if (v60 != v61)
      {
        v150 = v17;
        v62 = 0;
        v63 = *v19;
        v64 = -1;
        do
        {
          v65 = *v60;
          if (v58 < *(v63 + 8 * *v60))
          {
            v66 = *(v1 + 64) + 32 * v65;
            v67 = *v66;
            v68 = 0xAAAAAAAAAAAAAAABLL * ((*(v66 + 8) - *v66) >> 3);
            v69 = *(v66 + 24);
            if (v69 + 1 == v68 && *(v67 + 24 * v69) == v20)
            {
              v69 = 0;
              *(v66 + 24) = 0;
            }

            if (v69 >= v68)
            {
              v70 = 0;
              v74 = 0x8000000000000002;
            }

            else
            {
              v70 = 0;
              v71 = 0;
              v72 = v68 - v69;
              v73 = (v67 + 24 * v69 + 16);
              v74 = 0x8000000000000002;
              do
              {
                while (*(v73 - 4) == v20)
                {
                  v71 = 1;
                  ++v69;
                  v73 += 3;
                  if (!--v72)
                  {
                    goto LABEL_73;
                  }
                }

                v76 = *(v73 - 1);
                if (v76 >= v74)
                {
                  if ((v71 & 1) == 0)
                  {
                    *(v66 + 24) = v69;
                  }

                  v70 = v69;
                  v74 = v76;
                }

                v75 = *v73;
                v73 += 3;
                v74 += v75;
                ++v69;
                --v72;
              }

              while (v72);
            }

LABEL_73:
            if (v74 > v58)
            {
              v155 = v74;
              v58 = v74;
              v62 = v70;
              v64 = v65;
            }
          }

          ++v60;
        }

        while (v60 != v61);
        goto LABEL_97;
      }

LABEL_11:
      v1 = v148;
LABEL_12:
      v4 = v142 + 4;
      if (v142 + 4 != v141)
      {
        continue;
      }

      return 1;
    }

    else
    {
      if (v60 == v61)
      {
        goto LABEL_11;
      }

      v77 = *v19;
      v64 = -1;
      do
      {
        v78 = *v60;
        v79 = *(v77 + 8 * v78);
        if (v79 > v58)
        {
          v155 = *(v77 + 8 * v78);
          v58 = v79;
          v64 = v78;
        }

        ++v60;
      }

      while (v60 != v61);
      if (v64 == -1)
      {
        goto LABEL_11;
      }

      v80 = *(v1 + 64) + 32 * v64;
      v81 = *v80;
      v82 = 0xAAAAAAAAAAAAAAABLL * ((*(v80 + 8) - *v80) >> 3);
      v83 = *(v80 + 24);
      if (v83 + 1 == v82 && *(v81 + 24 * v83) == v20)
      {
        v83 = 0;
        *(v80 + 24) = 0;
      }

      if (v83 >= v82)
      {
        v62 = 0;
        v87 = 0x8000000000000002;
      }

      else
      {
        v62 = 0;
        v84 = 0;
        v85 = v82 - v83;
        v86 = (v81 + 24 * v83 + 16);
        v87 = 0x8000000000000002;
        do
        {
          while (*(v86 - 4) == v20)
          {
            v84 = 1;
            ++v83;
            v86 += 3;
            if (!--v85)
            {
              goto LABEL_95;
            }
          }

          v89 = *(v86 - 1);
          if (v89 >= v87)
          {
            if ((v84 & 1) == 0)
            {
              *(v80 + 24) = v83;
            }

            v62 = v83;
            v87 = v89;
          }

          v88 = *v86;
          v86 += 3;
          v87 += v88;
          ++v83;
          --v85;
        }

        while (v85);
      }

LABEL_95:
      v154 = v87;
      if (v87 != v58)
      {
        operations_research::sat::CombinedDisjunctive<true>::Propagate(&v154, &v155, &v156);
      }

      v150 = v17;
LABEL_97:
      if (v64 == -1)
      {
        v17 = v150;
        goto LABEL_11;
      }

      operations_research::sat::SchedulingConstraintHelper::ClearReason(v21);
      v90 = (*(v1 + 64) + 32 * v64);
      v91 = v62;
      v93 = *v90;
      v92 = v90[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v92 - *v90) >> 3) > v62)
      {
        v153 = *(v93 + 24 * v62 + 8);
        v94 = v62 + 1;
        do
        {
          v98 = *(v93 + 24 * v91);
          if (v98 != v146)
          {
            v99 = *(v1 + 8);
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v99, *(v93 + 24 * v91));
            v100 = *(*(v99 + 19) + 4 * v98);
            if (v100 != -1)
            {
              LODWORD(v156) = v100 ^ 1;
              std::vector<int>::push_back[abi:ne200100](v99 + 496, &v156);
            }

            operations_research::sat::SchedulingConstraintHelper::AddEnergyAfterReason(*(v1 + 8), v98, *(*v90 + 24 * v91 + 16), v153);
            v101 = *(v1 + 8);
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v101, v98);
            v102 = *(v101 + 10);
            v103 = *(v101 + 13);
            v104 = *(v101 + 16) + 24 * v98;
            if (*v104 == -1)
            {
              v95 = 0;
              v96 = -1;
            }

            else
            {
              v105 = *(v104 + 8);
              v96 = *v104 ^ (v105 >> 63) ^ 1;
              if (v105 >= 0)
              {
                v95 = *(v104 + 8);
              }

              else
              {
                v95 = -v105;
              }
            }

            v97 = *(v104 + 16);
            LODWORD(v156) = v96;
            *(&v156 + 1) = v95;
            v157 = -v97;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v101, (v102 + 24 * v98), v144 - 1, (v103 + 24 * v98), &v156);
            v93 = *v90;
            v92 = v90[1];
          }

          v91 = v94++;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v92 - v93) >> 3) > v91);
      }

      v106 = *(v1 + 8);
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v106, v146);
      v107 = *(v106 + 25);
      v108 = *(v106 + 22);
      v109 = *(v106 + 16) + 24 * v57;
      if (*v109 == -1)
      {
        v112 = 0;
        v111 = -1;
      }

      else
      {
        v110 = *(v109 + 8);
        v111 = *v109 ^ (v110 >> 63) ^ 1;
        if (v110 >= 0)
        {
          v112 = *(v109 + 8);
        }

        else
        {
          v112 = -v110;
        }
      }

      v113 = *(v109 + 16);
      LODWORD(v156) = v111;
      *(&v156 + 1) = v112;
      v157 = -v113;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v106, (v107 + 24 * v57), -v144, (v108 + 24 * v57), &v156);
      if (operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(*(v1 + 8), v146, v58))
      {
        if ((*(*v140 + 8 * (v57 >> 6)) & (1 << v57)) != 0)
        {
          v114 = *(v1 + 16) + 24 * v57;
          v115 = *v114;
          v116 = *(v114 + 8);
          v19 = v147;
          v17 = v150;
          if (*v114 != v116)
          {
            v117 = *(v1 + 8);
            v118 = *(*(v117 + 272) + 8 * v57);
            v119 = v1;
            v120 = *(*(v117 + 232) + 8 * v57);
            v121 = *(v119 + 64);
            do
            {
              v122 = *v115;
              v123 = v121 + 32 * v122;
              LODWORD(v156) = v146;
              *(&v156 + 1) = v118;
              v157 = v120;
              v124 = *v123;
              v125 = *(v123 + 8);
              v126 = -1431655765 * ((v125 - *v123) >> 3);
              if (v126)
              {
                v127 = 0;
                while (1)
                {
                  v128 = v127;
                  if (*(v124 + 24 * v127) == v146)
                  {
                    break;
                  }

                  ++v127;
                  if (v126 == v128 + 1)
                  {
                    goto LABEL_130;
                  }
                }

                v129 = v17;
                v130 = v124 + 24 * v127;
                v131 = v125 - (v130 + 24);
                if (v125 != v130 + 24)
                {
                  memmove((v124 + 24 * v127), (v130 + 24), v125 - (v130 + 24));
                  v124 = *v123;
                }

                *(v123 + 8) = v130 + v131;
                *(v123 + 24) = -1431655765 * ((v130 + v131 - v124) >> 3);
                std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](v123, &v156);
                v19 = v147;
                v121 = *(v148 + 64);
                v17 = v129;
              }

LABEL_130:
              v132 = v121 + 32 * v122;
              v133 = 0xAAAAAAAAAAAAAAABLL * ((*(v132 + 8) - *v132) >> 3);
              v134 = *(v132 + 24);
              v135 = 0x8000000000000002;
              if (v134 < v133)
              {
                v136 = v133 - v134;
                v137 = (*v132 + 24 * v134 + 16);
                v135 = 0x8000000000000002;
                do
                {
                  v139 = *(v137 - 1);
                  if (v139 >= v135)
                  {
                    *(v132 + 24) = v134;
                    v135 = v139;
                  }

                  v138 = *v137;
                  v137 += 3;
                  v135 += v138;
                  ++v134;
                  --v136;
                }

                while (v136);
              }

              *(*v19 + 8 * v122) = v135;
              if (v17 <= v135)
              {
                v17 = v135;
              }

              ++v115;
            }

            while (v115 != v116);
          }
        }

        else
        {
          v19 = v147;
          v17 = v150;
        }

        goto LABEL_11;
      }

      return 0;
    }
  }
}

void operations_research::sat::AllIntervalsHelper::AllIntervalsHelper(operations_research::sat::AllIntervalsHelper *this, operations_research::sat::Model *a2)
{
  v2 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(a2);
  memset(__p, 0, sizeof(__p));
  if ((-1431655765 * ((*(v2 + 72) - *(v2 + 64)) >> 3)) >= 1)
  {
    operator new();
  }

  operations_research::sat::SchedulingConstraintHelper::SchedulingConstraintHelper(this, __p, a2);
}

void sub_23CB863F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AllIntervalsHelper::~AllIntervalsHelper(operations_research::sat::AllIntervalsHelper *this)
{
  operations_research::sat::SchedulingConstraintHelper::~SchedulingConstraintHelper(this);

  JUMPOUT(0x23EED9460);
}

void non-virtual thunk tooperations_research::sat::AllIntervalsHelper::~AllIntervalsHelper(operations_research::sat::AllIntervalsHelper *this)
{
  operations_research::sat::SchedulingConstraintHelper::~SchedulingConstraintHelper((this - 8));
}

{
  operations_research::sat::SchedulingConstraintHelper::~SchedulingConstraintHelper((this - 8));

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::AllIntervalsHelper>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F41060;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::AllIntervalsHelper>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F41060;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::CombinedDisjunctive<true>::~CombinedDisjunctive(void *a1)
{
  *a1 = &unk_284F40FA0;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    v4 = a1[9];
    v5 = a1[8];
    if (v4 != v3)
    {
      v6 = a1[9];
      do
      {
        v8 = *(v6 - 32);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 24) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[8];
    }

    a1[9] = v3;
    operator delete(v5);
  }

  v9 = a1[5];
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    v11 = a1[3];
    v12 = a1[2];
    if (v11 != v10)
    {
      v13 = a1[3];
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 16) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = a1[2];
    }

    a1[3] = v10;
    operator delete(v12);
  }

  return a1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::CombinedDisjunctive<true>>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F41098;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CombinedDisjunctive<true>>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F41098;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

unint64_t std::vector<operations_research::sat::TaskSet>::__emplace_back_slow_path<unsigned long>(void ***a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  v8 = *a2;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 24) = 0;
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = (v7 + *a1 - v10);
    do
    {
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = *v12;
      *(v13 + 2) = *(v12 + 2);
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *(v13 + 6) = *(v12 + 6);
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      v14 = *v9;
      if (*v9)
      {
        *(v9 + 1) = v14;
        operator delete(v14);
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (v7 + 32);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 32;
}

void sub_23CB86980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  std::__split_buffer<operations_research::sat::TaskSet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::TaskSet>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 32;
        v4 = *(v2 - 32);
        *(a1 + 16) = v2 - 32;
        if (!v4)
        {
          break;
        }

        *(v2 - 24) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 32;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t operations_research::sat::CombinedDisjunctive<false>::CombinedDisjunctive(uint64_t a1, void *a2)
{
  *a1 = &unk_284F410D0;
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::AllIntervalsHelper>(a2);
  *(a1 + 64) = 0u;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  if (0xAAAAAAAB00000000 * ((*(v4 + 11) - *(v4 + 10)) >> 3))
  {
    std::vector<std::vector<int>>::__append(a1 + 16, (-1431655765 * ((*(v4 + 11) - *(v4 + 10)) >> 3)));
  }

  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a2);
  v6 = operations_research::sat::GenericLiteralWatcher::Register(v5, a1);
  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(*(a1 + 8), v6, v5, 1, 0);
  operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(v5, v6);
  return a1;
}

void sub_23CB86C30(_Unwind_Exception *a1)
{
  v5 = v1[11];
  if (v5)
  {
    v1[12] = v5;
    operator delete(v5);
    std::vector<operations_research::sat::TaskSet>::~vector[abi:ne200100](v3);
    v6 = v1[5];
    if (!v6)
    {
LABEL_3:
      std::vector<std::vector<int>>::~vector[abi:ne200100](v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<operations_research::sat::TaskSet>::~vector[abi:ne200100](v3);
    v6 = v1[5];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  operator delete(v6);
  std::vector<std::vector<int>>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void operations_research::sat::CombinedDisjunctive<false>::~CombinedDisjunctive(void *a1)
{
  operations_research::sat::CombinedDisjunctive<false>::~CombinedDisjunctive(a1);

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::CombinedDisjunctive<false>::Propagate(uint64_t a1)
{
  v1 = a1;
  v2 = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 0);
  result = 0;
  if (!v2)
  {
    return result;
  }

  v5 = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingEndMin(*(v1 + 8), v3);
  v7 = v6;
  started = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingStartMax(*(v1 + 8), v8);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  if (v10 != v9)
  {
    v11 = v9 - v10 - 32;
    v12 = *(v1 + 64);
    if (v11 <= 0x1F)
    {
      goto LABEL_144;
    }

    v13 = (v11 >> 5) + 1;
    v12 = v10 + 32 * (v13 & 0xFFFFFFFFFFFFFFELL);
    v14 = (v10 + 32);
    v15 = v13 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      v16 = *v14;
      *(v14 - 3) = *(v14 - 4);
      v14[1] = v16;
      *(v14 - 2) = 0;
      *(v14 + 6) = 0;
      v14 += 8;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_144:
      do
      {
        *(v12 + 8) = *v12;
        *(v12 + 24) = 0;
        v12 += 32;
      }

      while (v12 != v9);
    }
  }

  std::vector<long long>::assign((v1 + 88), (*(v1 + 96) - *(v1 + 88)) >> 3, &operations_research::sat::kMinIntegerValue);
  v17 = -1431655765 * ((*(*(v1 + 8) + 88) - *(*(v1 + 8) + 80)) >> 3);
  v148 = (v1 + 88);
  LOBYTE(v157) = 0;
  v141 = (v1 + 40);
  std::vector<BOOL>::assign(v1 + 40, v17, &v157);
  if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v18 = 0x8000000000000002;
  LODWORD(v19) = v17 - 1;
  v142 = &v5[4 * v7];
  v149 = v1;
  v20 = (v1 + 88);
  while (2)
  {
    v21 = *v5;
    v143 = v5;
    v145 = *(v5 + 1);
    v22 = *(v1 + 8);
    v23 = *(*(v22 + 19) + 4 * *v5);
    if (v23 != -1 && ((*(*(*(v22 + 3) + 24) + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v23 & 0x3F ^ 1)) & 1) != 0)
    {
      goto LABEL_12;
    }

    v147 = *v5;
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v19 = v19;
    do
    {
      v24 = (started + 16 * v19);
      v22 = *(v1 + 8);
      if (v145 <= *(v24 + 1))
      {
        goto LABEL_53;
      }

      v25 = *v24;
      v26 = *(*(v22 + 19) + 4 * *v24);
      v146 = v19;
      if (v26 == -1 || ((*(*(*(v22 + 3) + 24) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) != 0)
      {
        *(*(v1 + 40) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v27 = *(v1 + 16) + 24 * v25;
        v29 = *v27;
        v28 = *(v27 + 8);
        if (*v27 != v28)
        {
          v30 = *(*(v22 + 34) + 8 * v25);
          v31 = *(*(v22 + 29) + 8 * v25);
          v32 = *(v1 + 64);
          v152 = v31;
          v153 = v25;
          v150 = *(v27 + 8);
          do
          {
            v33 = *v29;
            v34 = v32 + 32 * v33;
            v36 = *v34;
            v35 = *(v34 + 8);
            v37 = v35 - *v34;
            v38 = 0xAAAAAAAAAAAAAAABLL * (v37 >> 3);
            v39 = *(v34 + 16);
            if (v35 >= v39)
            {
              v40 = v38 + 1;
              if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v41 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v36) >> 3);
              if (2 * v41 > v40)
              {
                v40 = 2 * v41;
              }

              if (v41 >= 0x555555555555555)
              {
                v42 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v42 = v40;
              }

              if (v42)
              {
                if (v42 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v43 = v18;
              v44 = 8 * (v37 >> 3);
              *v44 = v25;
              *(v44 + 8) = v30;
              *(v44 + 16) = v31;
              v45 = v44 + 24;
              v46 = v44 - v37;
              memcpy((v44 - v37), v36, v37);
              *v34 = v46;
              *(v34 + 8) = v45;
              *(v34 + 16) = 0;
              if (v36)
              {
                operator delete(v36);
              }

              v20 = v148;
              v1 = v149;
              v18 = v43;
              v31 = v152;
              v25 = v153;
              v28 = v150;
              *(v34 + 8) = v45;
              if (v38 >= 1)
              {
LABEL_41:
                v38 &= 0x7FFFFFFFu;
                v47 = 24 * v38;
                while (1)
                {
                  v48 = *v34 + v47;
                  if (*(v48 - 16) <= v30)
                  {
                    break;
                  }

                  --v38;
                  *v48 = *(v48 - 24);
                  *(v48 + 16) = *(v48 - 8);
                  v47 -= 24;
                  if (v38 + 1 <= 1)
                  {
                    LODWORD(v38) = 0;
                    break;
                  }
                }
              }
            }

            else
            {
              *v35 = v25;
              *(v35 + 8) = v30;
              *(v35 + 16) = v31;
              *(v34 + 8) = v35 + 24;
              if (v38 >= 1)
              {
                goto LABEL_41;
              }
            }

            v49 = *v34 + 24 * v38;
            *v49 = v25;
            *(v49 + 8) = v30;
            *(v49 + 16) = v31;
            if (v38 <= *(v34 + 24))
            {
              *(v34 + 24) = 0;
            }

            v32 = *(v1 + 64);
            v50 = v32 + 32 * v33;
            v51 = 0xAAAAAAAAAAAAAAABLL * ((*(v50 + 8) - *v50) >> 3);
            v52 = *(v50 + 24);
            v53 = 0x8000000000000002;
            if (v52 < v51)
            {
              v54 = v51 - v52;
              v55 = (*v50 + 24 * v52 + 16);
              v53 = 0x8000000000000002;
              do
              {
                v57 = *(v55 - 1);
                if (v57 >= v53)
                {
                  *(v50 + 24) = v52;
                  v53 = v57;
                }

                v56 = *v55;
                v55 += 3;
                v53 += v56;
                ++v52;
                --v54;
              }

              while (v54);
            }

            *(*v20 + 8 * v33) = v53;
            if (v18 <= v53)
            {
              v18 = v53;
            }

            ++v29;
          }

          while (v29 != v28);
        }
      }

      v21 = v147;
      v19 = v146 - 1;
    }

    while (v146 > 0);
    v22 = *(v1 + 8);
    LODWORD(v19) = -1;
LABEL_53:
    v58 = v21;
    v59 = *(*(v22 + 30) + 8 * v21);
    v156 = v59;
    if (v59 >= v18)
    {
      goto LABEL_11;
    }

    v60 = *(v1 + 16) + 24 * v21;
    v61 = *v60;
    v62 = *(v60 + 8);
    if ((*(*(v1 + 40) + 8 * (v21 >> 6)) & (1 << v21)) != 0)
    {
      if (v61 != v62)
      {
        v151 = v18;
        v63 = 0;
        v64 = *v20;
        v65 = -1;
        do
        {
          v66 = *v61;
          if (v59 < *(v64 + 8 * *v61))
          {
            v67 = *(v1 + 64) + 32 * v66;
            v68 = *v67;
            v69 = 0xAAAAAAAAAAAAAAABLL * ((*(v67 + 8) - *v67) >> 3);
            v70 = *(v67 + 24);
            if (v70 + 1 == v69 && *(v68 + 24 * v70) == v21)
            {
              v70 = 0;
              *(v67 + 24) = 0;
            }

            if (v70 >= v69)
            {
              v71 = 0;
              v75 = 0x8000000000000002;
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = v69 - v70;
              v74 = (v68 + 24 * v70 + 16);
              v75 = 0x8000000000000002;
              do
              {
                while (*(v74 - 4) == v21)
                {
                  v72 = 1;
                  ++v70;
                  v74 += 3;
                  if (!--v73)
                  {
                    goto LABEL_73;
                  }
                }

                v77 = *(v74 - 1);
                if (v77 >= v75)
                {
                  if ((v72 & 1) == 0)
                  {
                    *(v67 + 24) = v70;
                  }

                  v71 = v70;
                  v75 = v77;
                }

                v76 = *v74;
                v74 += 3;
                v75 += v76;
                ++v70;
                --v73;
              }

              while (v73);
            }

LABEL_73:
            if (v75 > v59)
            {
              v156 = v75;
              v59 = v75;
              v63 = v71;
              v65 = v66;
            }
          }

          ++v61;
        }

        while (v61 != v62);
        goto LABEL_97;
      }

LABEL_11:
      v1 = v149;
LABEL_12:
      v5 = v143 + 4;
      if (v143 + 4 != v142)
      {
        continue;
      }

      return 1;
    }

    else
    {
      if (v61 == v62)
      {
        goto LABEL_11;
      }

      v78 = *v20;
      v65 = -1;
      do
      {
        v79 = *v61;
        v80 = *(v78 + 8 * v79);
        if (v80 > v59)
        {
          v156 = *(v78 + 8 * v79);
          v59 = v80;
          v65 = v79;
        }

        ++v61;
      }

      while (v61 != v62);
      if (v65 == -1)
      {
        goto LABEL_11;
      }

      v81 = *(v1 + 64) + 32 * v65;
      v82 = *v81;
      v83 = 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 8) - *v81) >> 3);
      v84 = *(v81 + 24);
      if (v84 + 1 == v83 && *(v82 + 24 * v84) == v21)
      {
        v84 = 0;
        *(v81 + 24) = 0;
      }

      if (v84 >= v83)
      {
        v63 = 0;
        v88 = 0x8000000000000002;
      }

      else
      {
        v63 = 0;
        v85 = 0;
        v86 = v83 - v84;
        v87 = (v82 + 24 * v84 + 16);
        v88 = 0x8000000000000002;
        do
        {
          while (*(v87 - 4) == v21)
          {
            v85 = 1;
            ++v84;
            v87 += 3;
            if (!--v86)
            {
              goto LABEL_95;
            }
          }

          v90 = *(v87 - 1);
          if (v90 >= v88)
          {
            if ((v85 & 1) == 0)
            {
              *(v81 + 24) = v84;
            }

            v63 = v84;
            v88 = v90;
          }

          v89 = *v87;
          v87 += 3;
          v88 += v89;
          ++v84;
          --v86;
        }

        while (v86);
      }

LABEL_95:
      v155 = v88;
      if (v88 != v59)
      {
        operations_research::sat::CombinedDisjunctive<true>::Propagate(&v155, &v156, &v157);
      }

      v151 = v18;
LABEL_97:
      if (v65 == -1)
      {
        v18 = v151;
        goto LABEL_11;
      }

      operations_research::sat::SchedulingConstraintHelper::ClearReason(v22);
      v91 = (*(v1 + 64) + 32 * v65);
      v92 = v63;
      v94 = *v91;
      v93 = v91[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v93 - *v91) >> 3) > v63)
      {
        v154 = *(v94 + 24 * v63 + 8);
        v95 = v63 + 1;
        do
        {
          v99 = *(v94 + 24 * v92);
          if (v99 != v147)
          {
            v100 = *(v1 + 8);
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v100, *(v94 + 24 * v92));
            v101 = *(*(v100 + 19) + 4 * v99);
            if (v101 != -1)
            {
              LODWORD(v157) = v101 ^ 1;
              std::vector<int>::push_back[abi:ne200100](v100 + 496, &v157);
            }

            operations_research::sat::SchedulingConstraintHelper::AddEnergyAfterReason(*(v1 + 8), v99, *(*v91 + 24 * v92 + 16), v154);
            v102 = *(v1 + 8);
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v102, v99);
            v103 = *(v102 + 10);
            v104 = *(v102 + 13);
            v105 = *(v102 + 16) + 24 * v99;
            if (*v105 == -1)
            {
              v96 = 0;
              v97 = -1;
            }

            else
            {
              v106 = *(v105 + 8);
              v97 = *v105 ^ (v106 >> 63) ^ 1;
              if (v106 >= 0)
              {
                v96 = *(v105 + 8);
              }

              else
              {
                v96 = -v106;
              }
            }

            v98 = *(v105 + 16);
            LODWORD(v157) = v97;
            *(&v157 + 1) = v96;
            v158 = -v98;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v102, (v103 + 24 * v99), v145 - 1, (v104 + 24 * v99), &v157);
            v94 = *v91;
            v93 = v91[1];
          }

          v92 = v95++;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v93 - v94) >> 3) > v92);
      }

      v107 = *(v1 + 8);
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v107, v147);
      v108 = *(v107 + 25);
      v109 = *(v107 + 22);
      v110 = *(v107 + 16) + 24 * v58;
      if (*v110 == -1)
      {
        v113 = 0;
        v112 = -1;
      }

      else
      {
        v111 = *(v110 + 8);
        v112 = *v110 ^ (v111 >> 63) ^ 1;
        if (v111 >= 0)
        {
          v113 = *(v110 + 8);
        }

        else
        {
          v113 = -v111;
        }
      }

      v114 = *(v110 + 16);
      LODWORD(v157) = v112;
      *(&v157 + 1) = v113;
      v158 = -v114;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v107, (v108 + 24 * v58), -v145, (v109 + 24 * v58), &v157);
      if (operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(*(v1 + 8), v147, v59))
      {
        if ((*(*v141 + 8 * (v58 >> 6)) & (1 << v58)) != 0)
        {
          v115 = *(v1 + 16) + 24 * v58;
          v116 = *v115;
          v117 = *(v115 + 8);
          v20 = v148;
          v18 = v151;
          if (*v115 != v117)
          {
            v118 = *(v1 + 8);
            v119 = *(*(v118 + 272) + 8 * v58);
            v120 = v1;
            v121 = *(*(v118 + 232) + 8 * v58);
            v122 = *(v120 + 64);
            do
            {
              v123 = *v116;
              v124 = v122 + 32 * v123;
              LODWORD(v157) = v147;
              *(&v157 + 1) = v119;
              v158 = v121;
              v125 = *v124;
              v126 = *(v124 + 8);
              v127 = -1431655765 * ((v126 - *v124) >> 3);
              if (v127)
              {
                v128 = 0;
                while (1)
                {
                  v129 = v128;
                  if (*(v125 + 24 * v128) == v147)
                  {
                    break;
                  }

                  ++v128;
                  if (v127 == v129 + 1)
                  {
                    goto LABEL_130;
                  }
                }

                v130 = v18;
                v131 = v125 + 24 * v128;
                v132 = v126 - (v131 + 24);
                if (v126 != v131 + 24)
                {
                  memmove((v125 + 24 * v128), (v131 + 24), v126 - (v131 + 24));
                  v125 = *v124;
                }

                *(v124 + 8) = v131 + v132;
                *(v124 + 24) = -1431655765 * ((v131 + v132 - v125) >> 3);
                std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](v124, &v157);
                v20 = v148;
                v122 = *(v149 + 64);
                v18 = v130;
              }

LABEL_130:
              v133 = v122 + 32 * v123;
              v134 = 0xAAAAAAAAAAAAAAABLL * ((*(v133 + 8) - *v133) >> 3);
              v135 = *(v133 + 24);
              v136 = 0x8000000000000002;
              if (v135 < v134)
              {
                v137 = v134 - v135;
                v138 = (*v133 + 24 * v135 + 16);
                v136 = 0x8000000000000002;
                do
                {
                  v140 = *(v138 - 1);
                  if (v140 >= v136)
                  {
                    *(v133 + 24) = v135;
                    v136 = v140;
                  }

                  v139 = *v138;
                  v138 += 3;
                  v136 += v139;
                  ++v135;
                  --v137;
                }

                while (v137);
              }

              *(*v20 + 8 * v123) = v136;
              if (v18 <= v136)
              {
                v18 = v136;
              }

              ++v116;
            }

            while (v116 != v117);
          }
        }

        else
        {
          v20 = v148;
          v18 = v151;
        }

        goto LABEL_11;
      }

      return 0;
    }
  }
}

void *operations_research::sat::CombinedDisjunctive<false>::~CombinedDisjunctive(void *a1)
{
  *a1 = &unk_284F410D0;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    v4 = a1[9];
    v5 = a1[8];
    if (v4 != v3)
    {
      v6 = a1[9];
      do
      {
        v8 = *(v6 - 32);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 24) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[8];
    }

    a1[9] = v3;
    operator delete(v5);
  }

  v9 = a1[5];
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    v11 = a1[3];
    v12 = a1[2];
    if (v11 != v10)
    {
      v13 = a1[3];
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 16) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = a1[2];
    }

    a1[3] = v10;
    operator delete(v12);
  }

  return a1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::CombinedDisjunctive<false>>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F41118;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CombinedDisjunctive<false>>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F41118;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveWithTwoItems>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F41150;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveWithTwoItems>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F41150;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveOverloadChecker>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F41188;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveOverloadChecker>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F41188;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveDetectablePrecedences>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F411C0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveDetectablePrecedences>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F411C0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveNotLast>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F411F8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveNotLast>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F411F8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveEdgeFinding>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F41230;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DisjunctiveEdgeFinding>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F41230;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::DisjunctivePrecedences>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F41268;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::DisjunctivePrecedences>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F41268;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(void *result, void *a2, uint64_t a3, unint64_t a4, __int128 *a5, int64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 1) < result[1])
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = &result[2 * (a4 >> 1)];
      v20 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v28 = a5;
        v29.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(result, &result[2 * (a4 >> 1)], a3, a4 >> 1, a5, a7);
        v30 = &v28[v18];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(v19, a2, a3, v20, v30, v29);
        v31 = &v28[a4];
        if ((a4 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v32 = v30;
          v33 = result;
          while (v32 != v31)
          {
            if (*(v32 + 8) >= *(v28 + 1))
            {
              v34 = *v28++;
              *v33++ = v34;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v35 = *v32;
              v32 += 16;
              *v33++ = v35;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }
          }

          while (v28 != v30)
          {
            v36 = *v28++;
            *v33++ = v36;
          }
        }

        else
        {
          v32 = v30;
          v33 = result;
LABEL_34:
          while (v32 != v31)
          {
            v37 = *v32;
            v32 += 16;
            *v33++ = v37;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(result, &result[2 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(v19, a2, a3, v20, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(result, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 2;
      if (result + 2 != a2)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v12 = v10[1];
          v13 = v10[3];
          v10 = v8;
          if (v13 < v12)
          {
            v14 = *v8;
            v15 = v9;
            do
            {
              *(result + v15 + 16) = *(result + v15);
              if (!v15)
              {
                v11 = result;
                goto LABEL_11;
              }

              v16 = *(result + v15 - 8);
              v15 -= 16;
            }

            while (v13 < v16);
            v11 = (result + v15 + 16);
LABEL_11:
            *v11 = v14;
            v11[1] = v13;
          }

          v8 = v10 + 2;
          v9 += 16;
        }

        while (v10 + 2 != a2);
      }
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = (a2 - 2);
      if (*(a2 - 1) >= a1[1])
      {
        *a5 = *a1;
        a6 = *v6;
      }

      else
      {
        *a5 = *v6;
        a6 = *a1;
      }

      *(a5 + 16) = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 2 * (a4 >> 1);
      v16 = &a1[v15];
      v17 = a1;
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(a1, &a1[v15], a3, v14, a5, v14);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(v16, a2, a3, a4 - v14, (a5 + v15 * 8), a4 - v14);
      if (v15 * 8)
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
        v25 = v17;
        while (v22 != a2)
        {
          if (v22[1] >= v25[1])
          {
            v26 = *v25;
            v25 += 2;
            a6.n128_u64[0] = v26;
            *v23++ = v26;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v27 = *v22;
            v22 += 2;
            a6.n128_u64[0] = v27;
            *v23++ = v27;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }
        }

        while (v25 != v16)
        {
          v28 = *v25;
          v25 += 2;
          a6.n128_u64[0] = v28;
          *v23++ = v28;
        }
      }

      else
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
LABEL_32:
        while (v22 != v24)
        {
          v29 = *v22;
          v22 += 2;
          a6.n128_u64[0] = v29;
          *v23++ = v29;
        }
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v7 = a1 + 2;
      if (a1 + 2 != a2)
      {
        v8 = 0;
        v9 = a5;
        do
        {
          v10 = a1;
          v11 = v9;
          a1 = v7;
          v12 = ++v9;
          if (v10[3] < *(v11 + 1))
          {
            *v9 = *v11;
            v12 = a5;
            if (v11 != a5)
            {
              v13 = v8;
              while (1)
              {
                v12 = (a5 + v13);
                if (v10[3] >= *(a5 + v13 - 8))
                {
                  break;
                }

                *v12 = *(v12 - 1);
                v13 -= 16;
                if (!v13)
                {
                  v12 = a5;
                  break;
                }
              }
            }
          }

          a6 = *a1;
          *v12 = *a1;
          v7 = a1 + 2;
          v8 += 16;
        }

        while (a1 + 2 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v10 = result;
    while (a6 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v11 = 0;
      v12 = -a5;
      while (1)
      {
        v13 = &v11[v10];
        if (*(a2 + 1) < *&v11[v10 + 8])
        {
          break;
        }

        v11 += 16;
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v15 = -v12;
      v50 = a3;
      v51 = a7;
      v49 = a8;
      if (-v12 >= a6)
      {
        if (v12 == -1)
        {
          v53 = *&v11[v10];
          *&v11[v10] = *a2;
          *a2 = v53;
          return result;
        }

        v24 = v15 / 2;
        v25 = &v10[16 * (v15 / 2)];
        v17 = a2;
        if (a2 != a3)
        {
          v26 = (a3 - a2) >> 4;
          v17 = a2;
          do
          {
            v27 = v26 >> 1;
            v28 = &v17[16 * (v26 >> 1)];
            v29 = *(v28 + 1);
            v30 = v28 + 16;
            v26 += ~(v26 >> 1);
            if (v29 < *&v11[v25 + 8])
            {
              v17 = v30;
            }

            else
            {
              v26 = v27;
            }
          }

          while (v26);
        }

        v16 = (v17 - a2) >> 4;
        v18 = &v11[v25];
      }

      else
      {
        v16 = a6 / 2;
        v17 = &a2[16 * (a6 / 2)];
        v18 = a2;
        if ((a2 - v10) != v11)
        {
          v19 = (a2 - v10 - v11) >> 4;
          v18 = &v11[v10];
          do
          {
            v20 = v19 >> 1;
            v21 = &v18[16 * (v19 >> 1)];
            v22 = *(v21 + 1);
            v23 = v21 + 16;
            v19 += ~(v19 >> 1);
            if (*(v17 + 1) < v22)
            {
              v19 = v20;
            }

            else
            {
              v18 = v23;
            }
          }

          while (v19);
        }

        v24 = (v18 - v10 - v11) >> 4;
      }

      a5 = -(v24 + v12);
      v48 = a6 - v16;
      v31 = a6;
      v32 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::TaskTime *>,std::__wrap_iter<operations_research::sat::TaskTime *>>(v18, a2, v17);
      v33 = v24;
      v34 = v32;
      if (v33 + v16 >= v31 - (v33 + v16) - v12)
      {
        a7 = v51;
        v35 = v33;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(v32, v17, v50, a4, a5, v48, v51, v49);
        a8 = v49;
        a5 = v35;
        a3 = v34;
        a6 = v16;
        v10 = v13;
        a2 = v18;
        if (!v16)
        {
          return result;
        }
      }

      else
      {
        a7 = v51;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(&v11[v10], v18, v32, a4, v33, v16, v51, v49);
        a8 = v49;
        a3 = v50;
        a6 = v48;
        v10 = v34;
        a2 = v17;
        if (!v48)
        {
          return result;
        }
      }
    }

    if (a5 <= a6)
    {
      if (a2 != v10)
      {
        v42 = 0;
        v43 = -a7;
        do
        {
          *(a7 + v42) = *&v10[v42];
          v43 -= 16;
          v42 += 16;
        }

        while (&v10[v42] != a2);
        if (v42)
        {
          v44 = (a7 + v42);
          while (a2 != a3)
          {
            if (*(a2 + 1) >= *(a7 + 8))
            {
              v45 = *a7;
              a7 += 16;
              *v10 = v45;
              v10 += 16;
              if (v44 == a7)
              {
                return result;
              }
            }

            else
            {
              v46 = *a2;
              a2 += 16;
              *v10 = v46;
              v10 += 16;
              if (v44 == a7)
              {
                return result;
              }
            }
          }

          return memmove(v10, a7, -(a7 + v43));
        }
      }
    }

    else if (a2 != a3)
    {
      v36 = 0;
      do
      {
        *(a7 + v36) = *&a2[v36];
        v36 += 16;
      }

      while (&a2[v36] != a3);
      if (v36)
      {
        v37 = (a7 + v36);
        while (a2 != v10)
        {
          v38 = *(a2 - 1);
          v39 = *(v37 - 1);
          v40 = v39 < v38;
          if (v39 >= v38)
          {
            v41 = v37 - 16;
          }

          else
          {
            v41 = a2 - 16;
          }

          *(a3 - 1) = *v41;
          a3 -= 16;
          if (v40)
          {
            a2 -= 16;
          }

          else
          {
            v37 -= 16;
          }

          if (v37 == a7)
          {
            return result;
          }
        }

        if (v37 != a7)
        {
          v47 = -16;
          do
          {
            *&a3[v47] = *(v37 - 1);
            v47 -= 16;
            v37 -= 16;
          }

          while (v37 != a7);
        }
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::TaskTime *>,std::__wrap_iter<operations_research::sat::TaskTime *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  v5 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v28 = *__src;
      v7 = __src;
      memmove(__src, __src + 16, v6);
      v4 = &v7[v6];
      *v4 = v28;
    }

    else if (a2 + 16 == a3)
    {
      v4 = __src + 16;
      v29 = *(a3 - 1);
      v8 = a3 - 16 - __src;
      if (a3 - 16 != __src)
      {
        v9 = __src;
        memmove(__src + 16, __src, v8);
        __src = v9;
      }

      *__src = v29;
    }

    else
    {
      v10 = v5 >> 4;
      v11 = v6 >> 4;
      if (v5 >> 4 == v6 >> 4)
      {
        v12 = __src + 16;
        v13 = a2 + 16;
        do
        {
          v14 = *(v12 - 1);
          *(v12 - 1) = *(v13 - 1);
          *(v13 - 1) = v14;
          if (v12 == a2)
          {
            break;
          }

          v12 += 16;
          v15 = v13 == a3;
          v13 += 16;
        }

        while (!v15);
        return a2;
      }

      else
      {
        v16 = v5 >> 4;
        do
        {
          v17 = v16;
          v16 = v11;
          v11 = v17 % v11;
        }

        while (v11);
        v18 = &__src[16 * v16];
        do
        {
          v19 = *(v18 - 1);
          v18 -= 16;
          v20 = &v18[v5];
          v21 = v18;
          do
          {
            v22 = v20;
            *v21 = *v20;
            v23 = (a3 - v20) >> 4;
            v24 = __OFSUB__(v10, v23);
            v26 = v10 - v23;
            v25 = (v26 < 0) ^ v24;
            v20 = &__src[16 * v26];
            if (v25)
            {
              v20 = &v22[16 * v10];
            }

            v21 = v22;
          }

          while (v20 != v18);
          *v22 = v19;
        }

        while (v18 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

void operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::less<operations_research::sat::TaskTime>>(int a1, __n128 *a2, __n128 *a3, int a4, __n128 a5)
{
  if (a3 - a2 >= 17)
  {
    v6 = a3 - 1;
    if (&a3[-1] != a2)
    {
      v24 = a3 - 2;
      v25 = a3 - 1;
      do
      {
        if (v25->n128_u64[1] < v24->n128_u64[1])
        {
          a5 = *v25;
          *v25 = *v24;
          *v24 = a5;
          v6 = v25;
        }

        --v25;
        --v24;
      }

      while (v25 != a2);
    }

    v7 = v6 + 1;
    if (&v6[1] != a3 && a1 >= 1)
    {
      v8 = v6 - 1;
      do
      {
        v10 = v7->n128_u64[0];
        v9 = v7->n128_i64[1];
        --a1;
        if (v9 >= v7[-1].n128_u64[1])
        {
          v7->n128_u64[0] = v10;
          v7->n128_u64[1] = v9;
          if (++v7 == a3)
          {
            break;
          }
        }

        else
        {
          v11 = v7 - 1;
          v12 = v8;
          v13 = v7;
          do
          {
            a5 = *v11;
            *v13-- = *v11;
            --a1;
            v11 = v12;
            v14 = v12->n128_i64[1];
            --v12;
          }

          while (v9 < v14);
          v13->n128_u64[0] = v10;
          v13->n128_u64[1] = v9;
          if (++v7 == a3)
          {
            break;
          }
        }

        ++v8;
      }

      while (a1 > 0);
    }

    if (v7 != a3)
    {
      v15 = a3 - v6;
      if (a4)
      {
        if (v15 < 129)
        {
          v23 = 0;
          v19 = 0;
        }

        else
        {
          v17 = v6;
          v18 = MEMORY[0x277D826F0];
          v19 = a3 - v6;
          while (1)
          {
            v20 = operator new(16 * v19, v18);
            if (v20)
            {
              break;
            }

            v21 = v19 >> 1;
            v22 = v19 > 1;
            v19 >>= 1;
            if (!v22)
            {
              v23 = 0;
              v19 = v21;
              goto LABEL_31;
            }
          }

          v23 = v20;
LABEL_31:
          v6 = v17;
        }

        std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v6, a3, &v28, v15, v23, v19, a5);
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        v26 = 126 - 2 * __clz(v15);
        if (v6 == a3)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(v6, a3, &v28, v27, 1, a5);
      }
    }
  }
}

void sub_23CB88C1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(char *result, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 1) < *(result + 1))
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = &result[16 * (a4 >> 1)];
      v20 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v28 = a5;
        v29.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(result, &result[16 * (a4 >> 1)], a3, a4 >> 1, a5, a7);
        v30 = v28 + 16 * v18;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v19, a2, a3, v20, v30, v29);
        v31 = v28 + 16 * a4;
        if ((a4 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v32 = v30;
          v33 = result;
          while (v32 != v31)
          {
            if (*(v32 + 8) >= *(v28 + 8))
            {
              v34 = *v28;
              v28 += 16;
              *v33 = v34;
              v33 += 16;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v35 = *v32;
              v32 += 16;
              *v33 = v35;
              v33 += 16;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }
          }

          while (v28 != v30)
          {
            v36 = *v28;
            v28 += 16;
            *v33 = v36;
            v33 += 16;
          }
        }

        else
        {
          v32 = v30;
          v33 = result;
LABEL_34:
          while (v32 != v31)
          {
            v37 = *v32;
            v32 += 16;
            *v33 = v37;
            v33 += 16;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(result, &result[16 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v19, a2, a3, v20, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(result, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 16;
      if (result + 16 != a2)
      {
        v9 = 0;
        v10 = result;
        do
        {
          v12 = *(v10 + 1);
          v13 = *(v10 + 3);
          v10 = v8;
          if (v13 < v12)
          {
            v14 = *v8;
            v15 = v9;
            do
            {
              *&result[v15 + 16] = *&result[v15];
              if (!v15)
              {
                v11 = result;
                goto LABEL_11;
              }

              v16 = *&result[v15 - 8];
              v15 -= 16;
            }

            while (v13 < v16);
            v11 = &result[v15 + 16];
LABEL_11:
            *v11 = v14;
            *(v11 + 1) = v13;
          }

          v8 = v10 + 16;
          v9 += 16;
        }

        while (v10 + 16 != a2);
      }
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(char *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = (a2 - 16);
      if (*(a2 - 1) >= *(a1 + 1))
      {
        *a5 = *a1;
        a6 = *v6;
      }

      else
      {
        *a5 = *v6;
        a6 = *a1;
      }

      *(a5 + 16) = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 16 * (a4 >> 1);
      v16 = &a1[v15];
      v17 = a1;
      std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(a1, &a1[v15], a3, v14, a5, v14);
      std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v16, a2, a3, a4 - v14, a5 + v15, a4 - v14);
      if (v15)
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
        v25 = v17;
        while (v22 != a2)
        {
          if (*(v22 + 1) >= *(v25 + 1))
          {
            v26 = *v25;
            v25 += 16;
            a6.n128_u64[0] = v26;
            *v23++ = v26;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v27 = *v22;
            v22 += 16;
            a6.n128_u64[0] = v27;
            *v23++ = v27;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }
        }

        while (v25 != v16)
        {
          v28 = *v25;
          v25 += 16;
          a6.n128_u64[0] = v28;
          *v23++ = v28;
        }
      }

      else
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
LABEL_32:
        while (v22 != v24)
        {
          v29 = *v22;
          v22 += 16;
          a6.n128_u64[0] = v29;
          *v23++ = v29;
        }
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v7 = a1 + 16;
      if (a1 + 16 != a2)
      {
        v8 = 0;
        v9 = a5;
        do
        {
          v10 = a1;
          v11 = v9;
          a1 = v7;
          v12 = ++v9;
          if (*(v10 + 3) < *(v11 + 1))
          {
            *v9 = *v11;
            v12 = a5;
            if (v11 != a5)
            {
              v13 = v8;
              while (1)
              {
                v12 = (a5 + v13);
                if (*(v10 + 3) >= *(a5 + v13 - 8))
                {
                  break;
                }

                *v12 = *(v12 - 1);
                v13 -= 16;
                if (!v13)
                {
                  v12 = a5;
                  break;
                }
              }
            }
          }

          a6 = *a1;
          *v12 = *a1;
          v7 = a1 + 16;
          v8 += 16;
        }

        while (a1 + 16 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

uint64_t operations_research::sat::DratChecker::ClauseHash::operator()(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 8) + 56 * a2);
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = (*(v2 + 80) + 4 * *v3);
  v8 = 4 * v4;
  do
  {
    v9 = *v7++;
    v10 = (v5 + 0x1F73E299748A907ELL + v9) ^ (result >> 43);
    v11 = (v5 - v10 - 0x1F73E299748A907ELL) ^ (v10 << 9);
    v12 = (result - v10 - v11) ^ (v11 >> 8);
    v13 = (v10 - v11 - v12) ^ (v12 >> 38);
    v14 = (v11 - v12 - v13) ^ (v13 << 23);
    v15 = (v12 - v13 - v14) ^ (v14 >> 5);
    v16 = (v13 - v14 - v15) ^ (v15 >> 35);
    v17 = (v14 - v15 - v16) ^ (v16 << 49);
    v18 = (v15 - v16 - v17) ^ (v17 >> 11);
    v19 = (v16 - v17 - v18) ^ (v18 >> 12);
    result = (v18 - v19 - ((v17 - v18 - v19) ^ (v19 << 18))) ^ (((v17 - v18 - v19) ^ (v19 << 18)) >> 22);
    v5 = -result;
    v8 -= 4;
  }

  while (v8);
  return result;
}

uint64_t operations_research::sat::DratChecker::AddClause(uint64_t a1, char *__src, uint64_t a3)
{
  v6 = *(a1 + 88);
  v7 = (a1 + 80);
  v8 = &v6[-*(a1 + 80)];
  std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(a1 + 80, v6, __src, &__src[4 * a3], (4 * a3) >> 2);
  v9 = v8 << 30 >> 30;
  v10 = v7[1];
  v11 = v9 + *v7;
  v12 = 126 - 2 * __clz((v10 - v11) >> 2);
  if (v10 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v11, v10, &v32, v13, 1);
  v14 = *v7;
  v15 = v7[1];
  v16 = v9 + *v7;
  if (v16 != v15)
  {
    v22 = (v16 + 4);
    while (v22 != v15)
    {
      v23 = *(v22 - 1);
      v24 = *v22++;
      if (v23 == v24)
      {
        v25 = v22 - 2;
        if (v22 - 2 != v15)
        {
          while (v22 != v15)
          {
            v26 = v23;
            v23 = *v22;
            if (v26 != *v22)
            {
              v25[1] = v23;
              ++v25;
            }

            ++v22;
          }

          if (v25 + 1 != v15)
          {
            v15 = v25 + 1;
            *(a1 + 88) = v25 + 1;
          }
        }

        break;
      }
    }
  }

  v17 = (v15 - v14) >> 2;
  for (i = v8 >> 2; v17 > i + 1; ++i)
  {
    v19 = *(v14 + 4 * (i + 1)) ^ *(v14 + 4 * i);
    if (v19 == 1)
    {
      operations_research::sat::DratChecker::AddClause(&v32);
    }
  }

  LODWORD(v32) = v8 >> 2;
  DWORD1(v32) = v17 - v32;
  *(&v32 + 1) = 0x1FFFFFFFFLL;
  v33 = 0x7FFFFFFF;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v37 = 0;
  v20 = *(a1 + 16);
  if (v20 >= *(a1 + 24))
  {
    v27 = std::vector<operations_research::sat::DratChecker::Clause>::__emplace_back_slow_path<operations_research::sat::DratChecker::Clause>((a1 + 8), &v32);
    v28 = __p;
    *(a1 + 16) = v27;
    if (v28)
    {
      v35 = v28;
      operator delete(v28);
    }
  }

  else
  {
    v21 = v32;
    *(v20 + 16) = v33;
    *v20 = v21;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    *(a1 + 16) = v20 + 56;
  }

  if (a3)
  {
    v29 = *(*(a1 + 88) - 4) >> 1;
    if (*(a1 + 104) <= v29 + 1)
    {
      v30 = v29 + 1;
    }

    else
    {
      v30 = *(a1 + 104);
    }

    *(a1 + 104) = v30;
  }

  return -1227133513 * ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
}

void sub_23CB893EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(uint64_t *a1, int *a2)
{
  if (*a1 > 1)
  {
    _X8 = a1[2];
    __asm { PRFM            #4, [X8] }

    v22 = operations_research::sat::DratChecker::ClauseHash::operator()(a1 + 4, *a2);

    return absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(a1, a2, v22);
  }

  else
  {
    if (a1[1] < 2)
    {
      return 0;
    }

    v2 = a1[5];
    v3 = *(v2 + 8);
    v4 = (v3 + 56 * *(a1 + 4));
    v5 = v4[1];
    v6 = (v3 + 56 * *a2);
    v7 = v6[1];
    if (v5 != v7)
    {
      return 0;
    }

    v8 = *(v2 + 80);
    v9 = (v8 + 4 * *v4);
    v10 = (v8 + 4 * *v6);
    if ((v5 & 0x3FFFFFFFFFFFFFFFLL) != 0 && (v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = 4 * v5 - 4;
      v24 = 4 * v7 - 4;
      v25 = v9;
      v26 = v10;
      while (*v25 == *v26)
      {
        ++v25;
        ++v26;
        if (v23)
        {
          v23 -= 4;
          v27 = v24;
          v24 -= 4;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      return 0;
    }

    v26 = (v8 + 4 * *v6);
    v25 = v9;
LABEL_10:
    v12 = &v10[v7];
    if (v25 == &v9[v5])
    {
      v13 = &absl::lts_20240722::container_internal::kSooControl;
    }

    else
    {
      v13 = 0;
    }

    if (v26 == v12)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

void operations_research::sat::DratChecker::AddInferedClause(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = operations_research::sat::DratChecker::AddClause(a1, a2, a3);
  v22 = v6;
  if (*a1 == -1)
  {
    *a1 = v6;
    if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), &v22))
    {
      goto LABEL_3;
    }

LABEL_11:
    if (a3)
    {
      v17 = *a2;
    }

    else
    {
      v17 = -1;
    }

    *(*(a1 + 8) + 56 * v22 + 8) = v17;
    if (*(a1 + 32) > 1uLL)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), &v22, v19);
      if (v20 != 1)
      {
        return;
      }
    }

    else
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(a1 + 32, &v22, v19);
      if (v20 != 1)
      {
        return;
      }
    }

    *v19[1] = v22;
    return;
  }

  if (!absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), &v22))
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = *(a1 + 8);
  ++*(v8 + 56 * *v7 + 12);
  if (*v7 >= *a1 && a3 != 0)
  {
    v10 = v8 + 56 * *v7;
    v21 = *a2;
    v12 = *(v10 + 8);
    v11 = (v10 + 8);
    if (v12 != v21)
    {
      operations_research::sat::DratChecker::AddInferedClause(v11, &v21, v19);
    }
  }

  v13 = *(a1 + 80);
  v14 = *(a1 + 16);
  v15 = *(v14 - 56);
  v16 = (*(a1 + 88) - v13) >> 2;
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(a1 + 88) = v13 + 4 * v15;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 80), v15 - v16);
    v14 = *(a1 + 16);
  }

  v18 = *(v14 - 32);
  if (v18)
  {
    *(v14 - 24) = v18;
    operator delete(v18);
  }

  *(a1 + 16) = v14 - 56;
}

void operations_research::sat::DratChecker::DeleteClause(uint64_t a1, char *a2, uint64_t a3)
{
  v17[0] = operations_research::sat::DratChecker::AddClause(a1, a2, a3);
  v4 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), v17);
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = v6 + 56 * *v5;
    v8 = *(v7 + 12) - 1;
    *(v7 + 12) = v8;
    if (!v8)
    {
      v9 = *(a1 + 16);
      v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v6) >> 3);
      *(v7 + 16) = v10 - 1;
      if (*(v9 - 52) >= 2)
      {
        v11 = v4;
        std::vector<int>::push_back[abi:ne200100](v6 + 56 * (v10 - 2) + 24, v5);
        v4 = v11;
      }

      if (*(a1 + 32) > 1uLL)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 32), v4 - *(a1 + 48));
      }

      else
      {
        *(a1 + 40) = 0;
      }
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/drat_checker.cc", 141);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Couldn't find deleted clause", 0x1CuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 16);
  v14 = *(v13 - 56);
  v15 = (*(a1 + 88) - v12) >> 2;
  if (v14 <= v15)
  {
    if (v14 < v15)
    {
      *(a1 + 88) = v12 + 4 * v14;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 80), v14 - v15);
    v13 = *(a1 + 16);
  }

  v16 = *(v13 - 32);
  if (v16)
  {
    *(v13 - 24) = v16;
    operator delete(v16);
  }

  *(a1 + 16) = v13 - 56;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *a1 < 2uLL && v5 > 1;
  if (v7)
  {
    v8 = operations_research::sat::DratChecker::ClauseHash::operator()((a1 + 32), *(a1 + 16)) & 0x7F;
  }

  else
  {
    v8 = 0x80;
  }

  v10 = v4;
  v11 = v5 & 1;
  v12 = v4 < 2;
  v13 = v7;
  v9 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,4ul,true,true,4ul>(&v9, a1, v8);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(uint64_t *a1, int *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a1[2];
  v5 = *a1;
  v6 = vdup_n_s8(a3 & 0x7F);
  v7 = *a2;
  v8 = ((v4 >> 12) ^ (a3 >> 7)) & *a1;
  v9 = *(v4 + v8);
  v10 = vceq_s8(v9, v6);
  if (v10)
  {
LABEL_2:
    v11 = a1[3];
    v12 = a1[5];
    v13 = *(v12 + 8);
    v14 = (v13 + 56 * v7);
    v15 = v14[1];
    if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = *(v12 + 80);
      v17 = v16 + 4 * *v14;
      while (1)
      {
        v18 = (v8 + (__clz(__rbit64(v10)) >> 3)) & v5;
        v19 = (v13 + 56 * *(v11 + 4 * v18));
        v20 = v19[1];
        if (v20 == v15)
        {
          if ((v20 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v21 = 0;
            v22 = v16 + 4 * *v19;
            while (*(v22 + v21) == *(v17 + v21))
            {
              v23 = v21 + 4;
              if (4 * v20 - 4 != v21)
              {
                v24 = 4 * v15 - 4 == v21;
                v21 += 4;
                if (!v24)
                {
                  continue;
                }
              }

              if (v23 == 4 * v20 && 4 * v15 == v23)
              {
                return v4 + v18;
              }

              break;
            }
          }

          else if (!v15)
          {
            return v4 + v18;
          }
        }

        v10 &= ((v10 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v10)
        {
          goto LABEL_16;
        }
      }
    }

    v25 = v13 + 4;
    while (1)
    {
      v18 = (v8 + (__clz(__rbit64(v10)) >> 3)) & v5;
      if (!(*(v25 + 56 * *(v11 + 4 * v18)) | v15))
      {
        return v4 + v18;
      }

      v10 &= ((v10 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v10)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    while (!*&vceq_s8(v9, 0x8080808080808080))
    {
      v3 += 8;
      v8 = (v3 + v8) & v5;
      v9 = *(v4 + v8);
      v10 = vceq_s8(v9, v6);
      if (v10)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 8) > 1uLL)
  {
    v4 = *(result + 40);
    v5 = *(v4 + 8);
    v6 = (v5 + 56 * *(result + 16));
    v7 = v6[1];
    v8 = (v5 + 56 * *a2);
    v9 = v8[1];
    if (v7 == v9)
    {
      v10 = *(v4 + 80);
      v11 = (v10 + 4 * *v6);
      v12 = (v10 + 4 * *v8);
      if ((v7 & 0x3FFFFFFFFFFFFFFFLL) == 0 || (v9 & 0x3FFFFFFFFFFFFFFFLL) == 0)
      {
        v17 = (v10 + 4 * *v8);
        v16 = v11;
LABEL_11:
        if (v17 == &v12[v9] && v16 == &v11[v7])
        {
          v3 = 0;
          goto LABEL_3;
        }
      }

      else
      {
        v14 = 4 * v7 - 4;
        v15 = 4 * v9 - 4;
        v16 = v11;
        v17 = v12;
        while (*v16 == *v17)
        {
          ++v16;
          ++v17;
          if (v14)
          {
            v14 -= 4;
            v18 = v15;
            v15 -= 4;
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_11;
        }
      }
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::resize_impl(result, 3);
  }

  *(result + 8) = 2;
  v3 = 1;
LABEL_3:
  *a3 = &absl::lts_20240722::container_internal::kSooControl;
  *(a3 + 8) = result + 16;
  *(a3 + 16) = v3;
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  _X21 = a1[2];
  __asm { PRFM            #4, [X21] }

  v11 = *a2;
  result = operations_research::sat::DratChecker::ClauseHash::operator()(a1 + 4, *a2);
  v13 = result;
  v14 = 0;
  v15 = *a1;
  v16 = vdup_n_s8(result & 0x7F);
  v17 = ((result >> 7) ^ (_X21 >> 12)) & *a1;
  v18 = *(_X21 + v17);
  v19 = vceq_s8(v18, v16);
  if (v19)
  {
LABEL_2:
    v20 = a1[3];
    v21 = a1[5];
    v22 = *(v21 + 8);
    v23 = (v22 + 56 * v11);
    v24 = v23[1];
    v25 = v24;
    if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = *(v21 + 80);
      v27 = (v26 + 4 * *v23);
      v28 = &v27[v24];
      result = 4 * v25 - 4;
      while (1)
      {
        v29 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v15;
        v30 = (v22 + 56 * *(v20 + 4 * v29));
        v31 = v30[1];
        if (v31 == v25)
        {
          v32 = (v26 + 4 * *v30);
          if ((v31 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v33 = 4 * v31 - 4;
            v34 = 4 * v25 - 4;
            v35 = v32;
            v36 = v27;
            while (*v35 == *v36)
            {
              ++v35;
              ++v36;
              if (v33)
              {
                v33 -= 4;
                v37 = v34;
                v34 -= 4;
                if (v37)
                {
                  continue;
                }
              }

              goto LABEL_12;
            }
          }

          else
          {
            v36 = v27;
            v35 = v32;
LABEL_12:
            if (v36 == v28 && v35 == &v32[v31])
            {
              goto LABEL_21;
            }
          }
        }

        v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v19)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
      v29 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v15;
      if (!(*(v22 + 56 * *(v20 + 4 * v29) + 4) | v24))
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    v39 = 0;
    v40 = v20 + 4 * v29;
    v41 = _X21 + v29;
  }

  else
  {
LABEL_15:
    while (1)
    {
      v38 = vceq_s8(v18, 0x8080808080808080);
      if (v38)
      {
        break;
      }

      v14 += 8;
      v17 = (v14 + v17) & v15;
      v18 = *(_X21 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v13, (v17 + (__clz(__rbit64(v38)) >> 3)) & v15, v14, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::GetPolicyFunctions(void)::value);
    v41 = a1[2] + result;
    v40 = a1[3] + 4 * result;
    v39 = 1;
  }

  *a3 = v41;
  *(a3 + 8) = v40;
  *(a3 + 16) = v39;
  return result;
}

uint64_t std::vector<operations_research::sat::DratChecker::Clause>::__emplace_back_slow_path<operations_research::sat::DratChecker::Clause>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 48) = *(a2 + 48);
  v7 = 56 * v2 + 56;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 4);
      *v12 = v13;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = *(v11 + 3);
      *(v12 + 40) = v11[5];
      v11[3] = 0;
      v11[4] = 0;
      v11[5] = 0;
      *(v12 + 48) = *(v11 + 24);
      v11 += 7;
      v12 += 56;
    }

    while (v11 != v9);
    do
    {
      v14 = v8[3];
      if (v14)
      {
        v8[4] = v14;
        operator delete(v14);
      }

      v8 += 7;
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

void operations_research::sat::DratProofHandler::AddOneVariable(operations_research::sat::DratProofHandler *this)
{
  v1 = (*this)++;
  v2 = v1;
  std::vector<int>::push_back[abi:ne200100](this + 32, &v2);
}

uint64_t operations_research::sat::DratProofHandler::AddClause(uint64_t a1, int *a2, uint64_t a3)
{
  operations_research::sat::DratProofHandler::MapClause(a1, a2, a3);
  v4 = *(a1 + 56);
  if (v4)
  {
    operations_research::sat::DratChecker::AddInferedClause(v4, *(a1 + 8), (*(a1 + 16) - *(a1 + 8)) >> 2);
  }

  result = *(a1 + 64);
  if (result)
  {

    return operations_research::sat::DratWriter::AddClause();
  }

  return result;
}

uint64_t operations_research::sat::DratProofHandler::MapClause(void *a1, int *a2, uint64_t a3)
{
  v5 = a1 + 1;
  v4 = a1[1];
  a1[2] = v4;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = 4 * a3;
    do
    {
      v8 = *a2;
      v9 = *a2 >> 1;
      v17 = v9;
      v10 = a1[4];
      v11 = (a1[5] - v10) >> 2;
      if (v9 >= v11)
      {
        operations_research::sat::DratProofHandler::MapClause(&v17, v11, v16);
      }

      v16[0] = 0;
      v16[0] = v8 & 1 | (2 * *(v10 + 4 * v9));
      std::vector<int>::push_back[abi:ne200100](v5, v16);
      ++a2;
      v7 -= 4;
    }

    while (v7);
    v12 = a1[1];
    v4 = a1[2];
  }

  else
  {
    v12 = v4;
  }

  v13 = 126 - 2 * __clz((v4 - v12) >> 2);
  if (v4 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,false>(v12, v4, v14, 1);
}

void operations_research::sat::DratProofHandler::DeleteClause(uint64_t a1, int *a2, uint64_t a3)
{
  operations_research::sat::DratProofHandler::MapClause(a1, a2, a3);
  v4 = *(a1 + 56);
  if (v4)
  {
    operations_research::sat::DratChecker::DeleteClause(v4, *(a1 + 8), (*(a1 + 16) - *(a1 + 8)) >> 2);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = (*(a1 + 16) - v6) >> 2;

    operations_research::sat::DratWriter::DeleteClause(v5, v6, v7);
  }
}

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> const&,unsigned long long>(unsigned int *a1, uint64_t a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED9180](&v6, *a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91C0](v5, a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CB8A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,false>(uint64_t result, int8x8_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        v7 = v8;
        v9 = (a2 - v8) >> 2;
        if (v9 > 2)
        {
          switch(v9)
          {
            case 3:
              v140 = *v8;
              v141 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v8, 0x100000001)), vsra_n_s32(0x100000001, *v8, 1uLL), vmvn_s8(vshr_n_s32(*v8, 1uLL))));
              v142 = a2[-1].i32[1];
              if (v142)
              {
                v143 = ~(v142 >> 1);
              }

              else
              {
                v143 = (v142 >> 1) + 1;
              }

              if (v143 < 0)
              {
                v143 = -v143;
              }

              if (v141.i32[1] <= v141.i32[0])
              {
                if (v143 > v141.i32[1])
                {
                  v8->i32[1] = v142;
                  a2[-1].i32[1] = v140.i32[1];
                  v200 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v8, 0x100000001)), vsra_n_s32(0x100000001, *v8, 1uLL), vmvn_s8(vshr_n_s32(*v8, 1uLL))));
                  if (vcgt_u32(vdup_lane_s32(v200, 1), v200).u8[0])
                  {
                    *v8 = vrev64_s32(*v8);
                  }
                }
              }

              else if (v143 <= v141.i32[1])
              {
                *v8 = vrev64_s32(v140);
                v206 = a2[-1].i32[1];
                if (v206)
                {
                  v207 = ~(v206 >> 1);
                }

                else
                {
                  v207 = (v206 >> 1) + 1;
                }

                if (v207 < 0)
                {
                  v207 = -v207;
                }

                if (v207 > v141.i32[0])
                {
                  v8->i32[1] = v206;
                  a2[-1].i32[1] = v140.i32[0];
                }
              }

              else
              {
                v8->i32[0] = v142;
                a2[-1].i32[1] = v140.i32[0];
              }

              return result;
            case 4:

              return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(v8, v8 + 1, &v8[1], &a2[-1] + 1);
            case 5:

              return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(v8, v8 + 1, &v8[1], &v8[1] + 1, &a2[-1] + 1);
          }
        }

        else
        {
          if (v9 < 2)
          {
            return result;
          }

          if (v9 == 2)
          {
            v136 = a2[-1].i32[1];
            v137 = v8->i32[0];
            if (v136)
            {
              v138 = ~(v136 >> 1);
            }

            else
            {
              v138 = (v136 >> 1) + 1;
            }

            if (v138 < 0)
            {
              v138 = -v138;
            }

            if (v137)
            {
              v139 = ~(v137 >> 1);
            }

            else
            {
              v139 = (v137 >> 1) + 1;
            }

            if (v139 < 0)
            {
              v139 = -v139;
            }

            if (v138 > v139)
            {
              v8->i32[0] = v136;
              a2[-1].i32[1] = v137;
            }

            return result;
          }
        }

        if (v9 <= 23)
        {
          v144 = (v8 + 4);
          v146 = v8 == a2 || v144 == a2;
          if (a4)
          {
            if (!v146)
            {
              v147 = 0;
              v148 = v8;
              do
              {
                v150 = *v148;
                v148 = v144;
                v151 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(v150, 0x100000001)), vsra_n_s32(0x100000001, v150, 1uLL), vmvn_s8(vshr_n_s32(v150, 1uLL))));
                if (v151.i32[1] > v151.i32[0])
                {
                  v152 = v150.i32[0];
                  v153 = v147;
                  do
                  {
                    *(&v8->i32[1] + v153) = v152;
                    if (!v153)
                    {
                      v149 = v8;
                      goto LABEL_335;
                    }

                    v152 = *(&v8->i32[-1] + v153);
                    if (v152)
                    {
                      v154 = ~(v152 >> 1);
                    }

                    else
                    {
                      v154 = (v152 >> 1) + 1;
                    }

                    if (v154 < 0)
                    {
                      v154 = -v154;
                    }

                    v153 -= 4;
                  }

                  while (v151.i32[1] > v154);
                  v149 = (v8 + v153 + 4);
LABEL_335:
                  v149->i32[0] = v150.i32[1];
                }

                v144 = (v148 + 4);
                v147 += 4;
              }

              while (&v148->u8[4] != a2);
            }
          }

          else if (!v146)
          {
            do
            {
              v201 = *v7;
              v7 = v144;
              v202 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(v201, 0x100000001)), vsra_n_s32(0x100000001, v201, 1uLL), vmvn_s8(vshr_n_s32(v201, 1uLL))));
              if (v202.i32[1] > v202.i32[0])
              {
                v203 = v201.i32[0];
                v204 = v7;
                do
                {
                  *v204 = v203;
                  v203 = *(v204 - 2);
                  if (v203)
                  {
                    v205 = ~(v203 >> 1);
                  }

                  else
                  {
                    v205 = (v203 >> 1) + 1;
                  }

                  if (v205 < 0)
                  {
                    v205 = -v205;
                  }

                  --v204;
                }

                while (v202.i32[1] > v205);
                *v204 = v201.i32[1];
              }

              v144 = (v7 + 4);
            }

            while ((v7 + 4) != a2);
          }

          return result;
        }

        if (!a3)
        {
          if (v8 != a2)
          {
            v155 = (v9 - 2) >> 1;
            v156 = v155;
            do
            {
              v157 = v156;
              v158 = 4 * v156;
              if (v155 >= (4 * v156) >> 2)
              {
                v159 = (v158 >> 1) | 1;
                v160 = v8 + v159;
                v161 = *v160;
                if ((v158 >> 1) + 2 < v9)
                {
                  v162 = v160[1];
                  if (v161)
                  {
                    LODWORD(result) = ~(v161 >> 1);
                  }

                  else
                  {
                    LODWORD(result) = (v161 >> 1) + 1;
                  }

                  if (result >= 0)
                  {
                    result = result;
                  }

                  else
                  {
                    result = -result;
                  }

                  if (v162)
                  {
                    v163 = ~(v162 >> 1);
                  }

                  else
                  {
                    v163 = (v162 >> 1) + 1;
                  }

                  if (v163 < 0)
                  {
                    v163 = -v163;
                  }

                  if (result > v163)
                  {
                    v161 = v160[1];
                    ++v160;
                    v159 = (v158 >> 1) + 2;
                  }
                }

                v164 = (v8 + v158);
                v165 = v8->i32[v158 / 4];
                v166 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(__PAIR64__(v165, v161), 0x100000001)), vsra_n_s32(0x100000001, __PAIR64__(v165, v161), 1uLL), vmvn_s8(vshr_n_s32(__PAIR64__(v165, v161), 1uLL))));
                if (v166.i32[0] <= v166.i32[1])
                {
                  do
                  {
                    v171 = v160;
                    *v164 = v161;
                    if (v155 < v159)
                    {
                      break;
                    }

                    v172 = (2 * v159) | 1;
                    v160 = v8 + v172;
                    v159 = 2 * v159 + 2;
                    v161 = *v160;
                    if (v159 < v9)
                    {
                      v167 = v160[1];
                      if (v161)
                      {
                        v168 = ~(v161 >> 1);
                      }

                      else
                      {
                        v168 = (v161 >> 1) + 1;
                      }

                      if (v168 < 0)
                      {
                        v168 = -v168;
                      }

                      if (v167)
                      {
                        v169 = ~(v167 >> 1);
                      }

                      else
                      {
                        v169 = (v167 >> 1) + 1;
                      }

                      if (v169 < 0)
                      {
                        v169 = -v169;
                      }

                      if (v168 <= v169)
                      {
                        v159 = v172;
                      }

                      else
                      {
                        v161 = v160[1];
                        ++v160;
                      }
                    }

                    else
                    {
                      v159 = v172;
                    }

                    v170 = (v161 & 1) != 0 ? ~(v161 >> 1) : (v161 >> 1) + 1;
                    result = v170 >= 0 ? v170 : -v170;
                    v164 = v171;
                  }

                  while (result <= v166.i32[1]);
                  *v171 = v165;
                }
              }

              v156 = v157 - 1;
            }

            while (v157);
            do
            {
              v174 = 0;
              v175 = v8->i32[0];
              v176 = (v9 - 2) >> 1;
              v177 = v8;
              do
              {
                while (1)
                {
                  v184 = v177 + v174;
                  v183 = (v184 + 1);
                  v182 = v184[1];
                  v185 = (2 * v174) | 1;
                  v174 = 2 * v174 + 2;
                  if (v174 < v9)
                  {
                    break;
                  }

                  v174 = v185;
                  v177->i32[0] = v182;
                  v177 = (v184 + 1);
                  if (v185 > v176)
                  {
                    goto LABEL_411;
                  }
                }

                v180 = v184[2];
                v178 = (v184 + 2);
                v179 = v180;
                if (v182)
                {
                  LODWORD(result) = ~(v182 >> 1);
                }

                else
                {
                  LODWORD(result) = (v182 >> 1) + 1;
                }

                if (result >= 0)
                {
                  result = result;
                }

                else
                {
                  result = -result;
                }

                if (v179)
                {
                  v181 = ~(v179 >> 1);
                }

                else
                {
                  v181 = (v179 >> 1) + 1;
                }

                if (v181 < 0)
                {
                  v181 = -v181;
                }

                if (result <= v181)
                {
                  v174 = v185;
                }

                else
                {
                  v182 = v179;
                  v183 = v178;
                }

                v177->i32[0] = v182;
                v177 = v183;
              }

              while (v174 <= v176);
LABEL_411:
              a2 = (a2 - 4);
              if (v183 == a2)
              {
                v183->i32[0] = v175;
              }

              else
              {
                v183->i32[0] = a2->i32[0];
                a2->i32[0] = v175;
                v186 = (v183 - v8 + 4) >> 2;
                v173 = v186 < 2;
                v187 = v186 - 2;
                if (!v173)
                {
                  v188 = v187 >> 1;
                  v189 = v8 + v188;
                  v190 = *v189;
                  v191 = v183->i32[0];
                  v192 = *v189 >> 1;
                  if (*v189)
                  {
                    v193 = ~v192;
                  }

                  else
                  {
                    v193 = v192 + 1;
                  }

                  if (v193 >= 0)
                  {
                    v194 = v193;
                  }

                  else
                  {
                    v194 = -v193;
                  }

                  if (v191)
                  {
                    v195 = ~(v191 >> 1);
                  }

                  else
                  {
                    v195 = (v191 >> 1) + 1;
                  }

                  if (v195 < 0)
                  {
                    v195 = -v195;
                  }

                  if (v194 > v195)
                  {
                    do
                    {
                      v196 = v189;
                      v183->i32[0] = v190;
                      if (!v188)
                      {
                        break;
                      }

                      v188 = (v188 - 1) >> 1;
                      v189 = v8 + v188;
                      v190 = *v189;
                      v197 = *v189 >> 1;
                      v198 = (*v189 & 1) != 0 ? ~v197 : v197 + 1;
                      v199 = v198 >= 0 ? v198 : -v198;
                      v183 = v196;
                    }

                    while (v199 > v195);
                    v196->i32[0] = v191;
                  }
                }
              }

              v173 = v9-- <= 2;
            }

            while (!v173);
          }

          return result;
        }

        v10 = (v8 + 4 * (v9 >> 1));
        v11 = v10;
        v12 = a2[-1].i32[1];
        if (v12)
        {
          v13 = ~(v12 >> 1);
        }

        else
        {
          v13 = (v12 >> 1) + 1;
        }

        if ((v13 & 0x80000000) != 0)
        {
          v13 = -v13;
        }

        if (v9 < 0x81)
        {
          v20 = v8->i32[0];
          v21 = v11->i32[0];
          v22 = v8->i32[0] >> 1;
          if (v8->i32[0])
          {
            v23 = ~v22;
          }

          else
          {
            v23 = v22 + 1;
          }

          if (v23 >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = -v23;
          }

          if (v21)
          {
            v25 = ~(v21 >> 1);
          }

          else
          {
            v25 = (v21 >> 1) + 1;
          }

          if (v25 < 0)
          {
            v25 = -v25;
          }

          if (v24 <= v25)
          {
            if (v13 > v24)
            {
              v8->i32[0] = v12;
              a2[-1].i32[1] = v20;
              v30 = v11->i32[0];
              v31 = v8->i32[0] >> 1;
              if (v8->i32[0])
              {
                v32 = ~v31;
              }

              else
              {
                v32 = v31 + 1;
              }

              if (v32 < 0)
              {
                v32 = -v32;
              }

              if (v30)
              {
                v33 = ~(v30 >> 1);
              }

              else
              {
                v33 = (v30 >> 1) + 1;
              }

              if (v33 < 0)
              {
                v33 = -v33;
              }

              if (v32 > v33)
              {
                v11->i32[0] = v8->i32[0];
                v8->i32[0] = v30;
                --a3;
                v34 = v30;
                v35 = v30 >> 1;
                if (a4)
                {
                  goto LABEL_122;
                }

                goto LABEL_185;
              }
            }

            goto LABEL_121;
          }

          if (v13 <= v24)
          {
            v11->i32[0] = v20;
            v8->i32[0] = v21;
            v50 = a2[-1].i32[1];
            if (v50)
            {
              v51 = ~(v50 >> 1);
            }

            else
            {
              v51 = (v50 >> 1) + 1;
            }

            if (v51 < 0)
            {
              v51 = -v51;
            }

            if (v51 <= v25)
            {
LABEL_121:
              --a3;
              v34 = v8->i32[0];
              v35 = v8->i32[0] >> 1;
              if (a4)
              {
                goto LABEL_122;
              }

              goto LABEL_185;
            }

            v8->i32[0] = v50;
          }

          else
          {
            v11->i32[0] = v12;
          }

          a2[-1].i32[1] = v21;
          goto LABEL_121;
        }

        v14 = v10->i32[0];
        v15 = v8->i32[0];
        v16 = v10->i32[0] >> 1;
        if (v10->i32[0])
        {
          v17 = ~v16;
        }

        else
        {
          v17 = v16 + 1;
        }

        if (v17 >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = -v17;
        }

        if (v15)
        {
          v19 = ~(v15 >> 1);
        }

        else
        {
          v19 = (v15 >> 1) + 1;
        }

        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v18 <= v19)
        {
          if (v13 > v18)
          {
            v10->i32[0] = v12;
            a2[-1].i32[1] = v14;
            v26 = v8->i32[0];
            v27 = v10->i32[0] >> 1;
            if (v10->i32[0])
            {
              v28 = ~v27;
            }

            else
            {
              v28 = v27 + 1;
            }

            if (v28 < 0)
            {
              v28 = -v28;
            }

            if (v26)
            {
              v29 = ~(v26 >> 1);
            }

            else
            {
              v29 = (v26 >> 1) + 1;
            }

            if (v29 < 0)
            {
              v29 = -v29;
            }

            if (v28 > v29)
            {
              v8->i32[0] = v10->i32[0];
              v10->i32[0] = v26;
            }
          }
        }

        else
        {
          if (v13 > v18)
          {
            v8->i32[0] = v12;
LABEL_80:
            a2[-1].i32[1] = v15;
            goto LABEL_81;
          }

          v8->i32[0] = v14;
          v10->i32[0] = v15;
          v36 = a2[-1].i32[1];
          if (v36)
          {
            v37 = ~(v36 >> 1);
          }

          else
          {
            v37 = (v36 >> 1) + 1;
          }

          if (v37 < 0)
          {
            v37 = -v37;
          }

          if (v37 > v19)
          {
            v10->i32[0] = v36;
            goto LABEL_80;
          }
        }

LABEL_81:
        v38 = (v10 - 4);
        v39 = v10[-1].i32[1];
        v40 = v8->i32[1];
        if (v39)
        {
          v41 = ~(v39 >> 1);
        }

        else
        {
          v41 = (v39 >> 1) + 1;
        }

        if (v41 >= 0)
        {
          v42 = v41;
        }

        else
        {
          v42 = -v41;
        }

        if (v40)
        {
          v43 = ~(v40 >> 1);
        }

        else
        {
          v43 = (v40 >> 1) + 1;
        }

        if (v43 < 0)
        {
          v43 = -v43;
        }

        v44 = a2[-1].i32[0];
        if (v44)
        {
          v45 = ~(v44 >> 1);
        }

        else
        {
          v45 = (v44 >> 1) + 1;
        }

        if (v45 < 0)
        {
          v45 = -v45;
        }

        if (v42 <= v43)
        {
          if (v45 > v42)
          {
            v38->i32[0] = v44;
            a2[-1].i32[0] = v39;
            v46 = v8->i32[1];
            v47 = v38->i32[0] >> 1;
            if (v38->i32[0])
            {
              v48 = ~v47;
            }

            else
            {
              v48 = v47 + 1;
            }

            if (v48 < 0)
            {
              v48 = -v48;
            }

            if (v46)
            {
              v49 = ~(v46 >> 1);
            }

            else
            {
              v49 = (v46 >> 1) + 1;
            }

            if (v49 < 0)
            {
              v49 = -v49;
            }

            if (v48 > v49)
            {
              v8->i32[1] = v38->i32[0];
              v38->i32[0] = v46;
            }
          }
        }

        else
        {
          if (v45 > v42)
          {
            v8->i32[1] = v44;
LABEL_130:
            a2[-1].i32[0] = v40;
            goto LABEL_131;
          }

          v8->i32[1] = v39;
          v38->i32[0] = v40;
          v54 = a2[-1].i32[0];
          if (v54)
          {
            v55 = ~(v54 >> 1);
          }

          else
          {
            v55 = (v54 >> 1) + 1;
          }

          if (v55 < 0)
          {
            v55 = -v55;
          }

          if (v55 > v43)
          {
            v38->i32[0] = v54;
            goto LABEL_130;
          }
        }

LABEL_131:
        v58 = v10->i32[1];
        v56 = (v10 + 4);
        v57 = v58;
        v59 = v8[1].i32[0];
        v60 = v58 >> 1;
        v61 = ~(v58 >> 1);
        if (v58)
        {
          v62 = v61;
        }

        else
        {
          v62 = v60 + 1;
        }

        if (v62 >= 0)
        {
          v63 = v62;
        }

        else
        {
          v63 = -v62;
        }

        if (v59)
        {
          v64 = ~(v59 >> 1);
        }

        else
        {
          v64 = (v59 >> 1) + 1;
        }

        if (v64 < 0)
        {
          v64 = -v64;
        }

        v65 = a2[-2].i32[1];
        if (v65)
        {
          v66 = ~(v65 >> 1);
        }

        else
        {
          v66 = (v65 >> 1) + 1;
        }

        if (v66 < 0)
        {
          v66 = -v66;
        }

        if (v63 <= v64)
        {
          if (v66 > v63)
          {
            v56->i32[0] = v65;
            a2[-2].i32[1] = v57;
            v67 = v8[1].i32[0];
            v68 = v56->i32[0] >> 1;
            if (v56->i32[0])
            {
              v69 = ~v68;
            }

            else
            {
              v69 = v68 + 1;
            }

            if (v69 < 0)
            {
              v69 = -v69;
            }

            if (v67)
            {
              v70 = ~(v67 >> 1);
            }

            else
            {
              v70 = (v67 >> 1) + 1;
            }

            if (v70 < 0)
            {
              v70 = -v70;
            }

            if (v69 > v70)
            {
              v8[1].i32[0] = v56->i32[0];
              v56->i32[0] = v67;
            }
          }
        }

        else
        {
          if (v66 > v63)
          {
            v8[1].i32[0] = v65;
LABEL_170:
            a2[-2].i32[1] = v59;
            goto LABEL_171;
          }

          v8[1].i32[0] = v57;
          v56->i32[0] = v59;
          v71 = a2[-2].i32[1];
          if (v71)
          {
            v72 = ~(v71 >> 1);
          }

          else
          {
            v72 = (v71 >> 1) + 1;
          }

          if (v72 < 0)
          {
            v72 = -v72;
          }

          if (v72 > v64)
          {
            v56->i32[0] = v71;
            goto LABEL_170;
          }
        }

LABEL_171:
        v73 = v38->i32[0];
        v74 = (v38->i32[0] & 1) != 0 ? ~(v38->i32[0] >> 1) : (v38->i32[0] >> 1) + 1;
        v75 = v74 >= 0 ? v74 : -v74;
        v76 = *v11;
        v77 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v11, 0x100000001)), vsra_n_s32(0x100000001, *v11, 1uLL), vmvn_s8(vshr_n_s32(*v11, 1uLL))));
        v78 = *v11;
        if (v77.i32[0] <= v75)
        {
          if (v77.i32[1] <= v77.i32[0])
          {
            goto LABEL_184;
          }

          v11->i32[0] = v76.i32[1];
          v56->i32[0] = v78;
          v56 = v11;
          v78 = v73;
          if (v77.i32[1] > v75)
          {
            goto LABEL_183;
          }

          v78 = v76.i32[1];
        }

        else
        {
          if (v77.i32[1] > v77.i32[0])
          {
            goto LABEL_183;
          }

          v38->i32[0] = v78;
          v11->i32[0] = v73;
          if (v77.i32[1] > v75)
          {
            v78 = v76.i32[1];
            v38 = v11;
LABEL_183:
            v38->i32[0] = v76.i32[1];
            v56->i32[0] = v73;
            goto LABEL_184;
          }

          v78 = v73;
        }

LABEL_184:
        v79 = v8->i32[0];
        v8->i32[0] = v78;
        v11->i32[0] = v79;
        --a3;
        v34 = v8->i32[0];
        v35 = v8->i32[0] >> 1;
        if (a4)
        {
LABEL_122:
          v52 = v34 & 1;
          v53 = ~v35;
          break;
        }

LABEL_185:
        v80 = v8[-1].i32[1];
        if (v80)
        {
          v81 = ~(v80 >> 1);
        }

        else
        {
          v81 = (v80 >> 1) + 1;
        }

        if (v81 >= 0)
        {
          v82 = v81;
        }

        else
        {
          v82 = -v81;
        }

        v52 = v34 & 1;
        v53 = ~v35;
        if (v34)
        {
          v83 = ~v35;
        }

        else
        {
          v83 = v35 + 1;
        }

        if ((v83 & 0x80000000) != 0)
        {
          v83 = -v83;
        }

        if (v82 > v83)
        {
          break;
        }

        v111 = a2[-1].i32[1];
        if (v111)
        {
          v112 = ~(v111 >> 1);
        }

        else
        {
          v112 = (v111 >> 1) + 1;
        }

        if (v112 < 0)
        {
          v112 = -v112;
        }

        if (v83 <= v112)
        {
          v117 = v8 + 4;
          do
          {
            v8 = v117;
            if (v117 >= a2)
            {
              break;
            }

            v117 += 4;
            v118 = v8->i32[0] >> 1;
            if (v8->i32[0])
            {
              v119 = ~v118;
            }

            else
            {
              v119 = v118 + 1;
            }

            if (v119 < 0)
            {
              v119 = -v119;
            }
          }

          while (v83 <= v119);
        }

        else
        {
          do
          {
            v113 = v8->i32[1];
            v8 = (v8 + 4);
            v114 = v113 >> 1;
            v115 = ~(v113 >> 1);
            if (v113)
            {
              v116 = v115;
            }

            else
            {
              v116 = v114 + 1;
            }

            if (v116 < 0)
            {
              v116 = -v116;
            }
          }

          while (v83 <= v116);
        }

        v120 = a2;
        if (v8 < a2)
        {
          v120 = a2;
          do
          {
            v121 = v120[-1].i32[1];
            v120 = (v120 - 4);
            v122 = v121 >> 1;
            v123 = ~(v121 >> 1);
            if (v121)
            {
              v124 = v123;
            }

            else
            {
              v124 = v122 + 1;
            }

            if (v124 < 0)
            {
              v124 = -v124;
            }
          }

          while (v83 > v124);
        }

        if (v8 < v120)
        {
          v125 = v8->i32[0];
          v126 = v120->i32[0];
          do
          {
            v8->i32[0] = v126;
            v120->i32[0] = v125;
            do
            {
              v127 = v8->i32[1];
              v8 = (v8 + 4);
              v125 = v127;
              v128 = v127 >> 1;
              v129 = ~(v127 >> 1);
              if (v127)
              {
                v130 = v129;
              }

              else
              {
                v130 = v128 + 1;
              }

              if (v130 < 0)
              {
                v130 = -v130;
              }
            }

            while (v83 <= v130);
            do
            {
              v131 = v120[-1].i32[1];
              v120 = (v120 - 4);
              v126 = v131;
              v132 = v131 >> 1;
              v133 = ~(v131 >> 1);
              if (v131)
              {
                v134 = v133;
              }

              else
              {
                v134 = v132 + 1;
              }

              if (v134 < 0)
              {
                v134 = -v134;
              }
            }

            while (v83 > v134);
          }

          while (v8 < v120);
        }

        v135 = &v8[-1] + 1;
        if (&v8[-1].u8[4] != v7)
        {
          *v7 = *v135;
        }

        a4 = 0;
        *v135 = v34;
      }

      v84 = v35 + 1;
      v85 = 0;
      if (v52)
      {
        v84 = v53;
      }

      if ((v84 & 0x80000000) != 0)
      {
        v84 = -v84;
      }

      do
      {
        v86 = v8->i32[v85 + 1];
        if (v86)
        {
          v87 = ~(v86 >> 1);
        }

        else
        {
          v87 = (v86 >> 1) + 1;
        }

        if (v87 < 0)
        {
          v87 = -v87;
        }

        ++v85;
      }

      while (v87 > v84);
      v88 = (v8 + v85 * 4);
      v89 = a2;
      if (v85 == 1)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v94 = v89[-1].i32[1];
          v89 = (v89 - 4);
          v95 = v94 >> 1;
          v96 = ~(v94 >> 1);
          if (v94)
          {
            v97 = v96;
          }

          else
          {
            v97 = v95 + 1;
          }

          if (v97 < 0)
          {
            v97 = -v97;
          }
        }

        while (v97 <= v84);
      }

      else
      {
        do
        {
          v90 = v89[-1].i32[1];
          v89 = (v89 - 4);
          v91 = v90 >> 1;
          v92 = ~(v90 >> 1);
          if (v90)
          {
            v93 = v92;
          }

          else
          {
            v93 = v91 + 1;
          }

          if (v93 < 0)
          {
            v93 = -v93;
          }
        }

        while (v93 <= v84);
      }

      if (v88 >= v89)
      {
        v109 = &v88[-1] + 1;
        if (&v88[-1].u8[4] == v8)
        {
          goto LABEL_243;
        }

LABEL_242:
        v8->i32[0] = *v109;
        goto LABEL_243;
      }

      v98 = v89->i32[0];
      v99 = v88;
      v100 = v89;
      do
      {
        v99->i32[0] = v98;
        v100->i32[0] = v86;
        do
        {
          v101 = v99->i32[1];
          v99 = (v99 + 4);
          v86 = v101;
          v102 = v101 >> 1;
          v103 = ~(v101 >> 1);
          if (v101)
          {
            v104 = v103;
          }

          else
          {
            v104 = v102 + 1;
          }

          if (v104 < 0)
          {
            v104 = -v104;
          }
        }

        while (v104 > v84);
        do
        {
          v105 = v100[-1].i32[1];
          v100 = (v100 - 4);
          v98 = v105;
          v106 = v105 >> 1;
          v107 = ~(v105 >> 1);
          if (v105)
          {
            v108 = v107;
          }

          else
          {
            v108 = v106 + 1;
          }

          if (v108 < 0)
          {
            v108 = -v108;
          }
        }

        while (v108 <= v84);
      }

      while (v99 < v100);
      v109 = &v99[-1] + 1;
      if (&v99[-1].u8[4] != v8)
      {
        goto LABEL_242;
      }

LABEL_243:
      *v109 = v34;
      if (v88 < v89)
      {
        goto LABEL_246;
      }

      v110 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*>(v8, v109);
      v8 = (v109 + 1);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*>((v109 + 1), a2);
      if (result)
      {
        break;
      }

      if (!v110)
      {
LABEL_246:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,false>(v7, v109, a3, a4 & 1);
        a4 = 0;
        v8 = (v109 + 1);
      }
    }

    a2 = v109;
    if (!v110)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *a2 >> 1;
  v7 = ~v6;
  if (*a2)
  {
    v8 = ~(*a2 >> 1);
  }

  else
  {
    v8 = v6 + 1;
  }

  if (v8 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  v10 = *result & 1;
  v11 = v5 >> 1;
  v12 = ~(v5 >> 1);
  if (v5)
  {
    v13 = ~(v5 >> 1);
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  v15 = *a3;
  v16 = *a3 >> 1;
  if (*a3)
  {
    v17 = ~v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (v17 < 0)
  {
    v17 = -v17;
  }

  if (v9 <= v14)
  {
    if (v17 <= v9)
    {
      v18 = v16 + 1;
      v12 = ~v16;
      v10 = *a3 & 1;
    }

    else
    {
      *a2 = v15;
      *a3 = v4;
      v19 = *result;
      v20 = *a2 >> 1;
      if (*a2)
      {
        v21 = ~v20;
      }

      else
      {
        v21 = v20 + 1;
      }

      if (v21 < 0)
      {
        v21 = -v21;
      }

      if (v19)
      {
        v22 = ~(v19 >> 1);
      }

      else
      {
        v22 = (v19 >> 1) + 1;
      }

      if (v22 < 0)
      {
        v22 = -v22;
      }

      if (v21 <= v22)
      {
        v18 = v6 + 1;
        v12 = v7;
        v10 = v4 & 1;
        v15 = v4;
      }

      else
      {
        *result = *a2;
        *a2 = v19;
        v15 = *a3;
        v10 = *a3 & 1;
        v12 = ~(*a3 >> 1);
        v18 = (*a3 >> 1) + 1;
      }
    }
  }

  else
  {
    v18 = v11 + 1;
    if (v17 > v9)
    {
      *result = v15;
LABEL_41:
      *a3 = v5;
      v15 = v5;
      goto LABEL_45;
    }

    *result = v4;
    *a2 = v5;
    v15 = *a3;
    v23 = *a3 >> 1;
    if (*a3)
    {
      v24 = ~v23;
    }

    else
    {
      v24 = v23 + 1;
    }

    if (v24 < 0)
    {
      v24 = -v24;
    }

    if (v24 > v14)
    {
      *a2 = v15;
      goto LABEL_41;
    }

    v18 = v23 + 1;
    v12 = ~v23;
    v10 = *a3 & 1;
  }

LABEL_45:
  v25 = *a4 >> 1;
  if (*a4)
  {
    v26 = ~v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  if (v26 < 0)
  {
    v26 = -v26;
  }

  if (v10)
  {
    v27 = v12;
  }

  else
  {
    v27 = v18;
  }

  if (v27 < 0)
  {
    v27 = -v27;
  }

  if (v26 > v27)
  {
    *a3 = *a4;
    *a4 = v15;
    v28 = *a2;
    v29 = *a3 >> 1;
    if (*a3)
    {
      v30 = ~v29;
    }

    else
    {
      v30 = v29 + 1;
    }

    if (v30 < 0)
    {
      v30 = -v30;
    }

    if (v28)
    {
      v31 = ~(v28 >> 1);
    }

    else
    {
      v31 = (v28 >> 1) + 1;
    }

    if (v31 < 0)
    {
      v31 = -v31;
    }

    if (v30 > v31)
    {
      *a2 = *a3;
      *a3 = v28;
      v32 = *result;
      v33 = *a2 >> 1;
      if (*a2)
      {
        v34 = ~v33;
      }

      else
      {
        v34 = v33 + 1;
      }

      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v32)
      {
        v35 = ~(v32 >> 1);
      }

      else
      {
        v35 = (v32 >> 1) + 1;
      }

      if (v35 < 0)
      {
        v35 = -v35;
      }

      if (v34 > v35)
      {
        *result = *a2;
        *a2 = v32;
      }
    }
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(a1, a2, a3, a4);
  v11 = *a4;
  v12 = *a5 >> 1;
  if (*a5)
  {
    v13 = ~v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  if (v13 < 0)
  {
    v13 = -v13;
  }

  if (v11)
  {
    v14 = ~(v11 >> 1);
  }

  else
  {
    v14 = (v11 >> 1) + 1;
  }

  if (v14 < 0)
  {
    v14 = -v14;
  }

  if (v13 > v14)
  {
    *a4 = *a5;
    *a5 = v11;
    v15 = *a3;
    v16 = *a4 >> 1;
    if (*a4)
    {
      v17 = ~v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    if (v17 < 0)
    {
      v17 = -v17;
    }

    if (v15)
    {
      v18 = ~(v15 >> 1);
    }

    else
    {
      v18 = (v15 >> 1) + 1;
    }

    if (v18 < 0)
    {
      v18 = -v18;
    }

    if (v17 > v18)
    {
      *a3 = *a4;
      *a4 = v15;
      v19 = *a2;
      v20 = *a3 >> 1;
      if (*a3)
      {
        v21 = ~v20;
      }

      else
      {
        v21 = v20 + 1;
      }

      if (v21 < 0)
      {
        v21 = -v21;
      }

      if (v19)
      {
        v22 = ~(v19 >> 1);
      }

      else
      {
        v22 = (v19 >> 1) + 1;
      }

      if (v22 < 0)
      {
        v22 = -v22;
      }

      if (v21 > v22)
      {
        *a2 = *a3;
        *a3 = v19;
        v23 = *a1;
        v24 = *a2 >> 1;
        if (*a2)
        {
          v25 = ~v24;
        }

        else
        {
          v25 = v24 + 1;
        }

        if (v25 < 0)
        {
          v25 = -v25;
        }

        if (v23)
        {
          v26 = ~(v23 >> 1);
        }

        else
        {
          v26 = (v23 >> 1) + 1;
        }

        if (v26 < 0)
        {
          v26 = -v26;
        }

        if (v25 > v26)
        {
          *a1 = *a2;
          *a2 = v23;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*>(int8x8_t *a1, int8x8_t *a2)
{
  v2 = (a2 - a1) >> 2;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = a2[-1].i32[1];
      v5 = a1->i32[0];
      if (v4)
      {
        v6 = ~(v4 >> 1);
      }

      else
      {
        v6 = (v4 >> 1) + 1;
      }

      if (v6 < 0)
      {
        v6 = -v6;
      }

      if (v5)
      {
        v7 = ~(v5 >> 1);
      }

      else
      {
        v7 = (v5 >> 1) + 1;
      }

      if (v7 < 0)
      {
        v7 = -v7;
      }

      if (v6 <= v7)
      {
        return 1;
      }

      a1->i32[0] = v4;
      a2[-1].i32[1] = v5;
      return 1;
    }

LABEL_29:
    v13 = a1 + 1;
    v12 = a1->i32[0];
    v14 = *(a1 + 4);
    v15 = a1->i32[0] >> 1;
    if (a1->i32[0])
    {
      v16 = ~v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    if (v16 < 0)
    {
      v16 = -v16;
    }

    v17 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(v14, 0x100000001)), vsra_n_s32(0x100000001, v14, 1uLL), vmvn_s8(vshr_n_s32(v14, 1uLL))));
    if (v17.i32[0] <= v16)
    {
      if (v17.i32[1] <= v17.i32[0])
      {
        goto LABEL_45;
      }

      a1->i32[1] = v14.i32[1];
      v13->i32[0] = v14.i32[0];
      v18 = a1;
      v19 = (a1 + 4);
    }

    else
    {
      v18 = a1;
      v19 = a1 + 1;
      if (v17.i32[1] > v17.i32[0])
      {
LABEL_44:
        v18->i32[0] = v14.i32[1];
        v19->i32[0] = v12;
LABEL_45:
        v21 = (a1 + 12);
        if (&a1[1].u8[4] == a2)
        {
          return 1;
        }

        v22 = 0;
        for (i = 12; ; i += 4)
        {
          v24 = *v13;
          v25 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v13, 0x100000001)), vsra_n_s32(0x100000001, *v13, 1uLL), vmvn_s8(vshr_n_s32(*v13, 1uLL))));
          if (v25.i32[1] > v25.i32[0])
          {
            break;
          }

LABEL_48:
          v13 = v21;
          v21 = (v21 + 4);
          if (v21 == a2)
          {
            return 1;
          }
        }

        v26 = *v13;
        v27 = i;
        do
        {
          *(a1->i32 + v27) = v26;
          v28 = v27 - 4;
          if (v27 == 4)
          {
            a1->i32[0] = v24.i32[1];
            if (++v22 != 8)
            {
              goto LABEL_48;
            }

            return &v21->u8[4] == a2;
          }

          v26 = *(a1[-1].i32 + v27);
          if (v26)
          {
            v29 = ~(v26 >> 1);
          }

          else
          {
            v29 = (v26 >> 1) + 1;
          }

          if (v29 >= 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = -v29;
          }

          v27 = v28;
        }

        while (v25.i32[1] > v30);
        *(a1->i32 + v28) = v24.i32[1];
        if (++v22 != 8)
        {
          goto LABEL_48;
        }

        return &v21->u8[4] == a2;
      }

      a1->i32[0] = v14.i32[0];
      a1->i32[1] = v12;
      v18 = (a1 + 4);
      v19 = a1 + 1;
    }

    if (v17.i32[1] <= v16)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(a1, a1 + 1, &a1[1], &a2[-1] + 1);
      return 1;
    }

    if (v2 == 5)
    {
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(a1, a1 + 1, &a1[1], &a1[1] + 1, &a2[-1] + 1);
      return 1;
    }

    goto LABEL_29;
  }

  v8 = *a1;
  v9 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*a1, 0x100000001)), vsra_n_s32(0x100000001, *a1, 1uLL), vmvn_s8(vshr_n_s32(*a1, 1uLL))));
  v10 = a2[-1].i32[1];
  if (v10)
  {
    v11 = ~(v10 >> 1);
  }

  else
  {
    v11 = (v10 >> 1) + 1;
  }

  if (v11 < 0)
  {
    v11 = -v11;
  }

  if (v9.i32[1] <= v9.i32[0])
  {
    if (v11 <= v9.i32[1])
    {
      return 1;
    }

    a1->i32[1] = v10;
    a2[-1].i32[1] = v8.i32[1];
    v20 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*a1, 0x100000001)), vsra_n_s32(0x100000001, *a1, 1uLL), vmvn_s8(vshr_n_s32(*a1, 1uLL))));
    if ((vcgt_u32(vdup_lane_s32(v20, 1), v20).u8[0] & 1) == 0)
    {
      return 1;
    }

    *a1 = vrev64_s32(*a1);
    return 1;
  }

  else if (v11 <= v9.i32[1])
  {
    *a1 = vrev64_s32(v8);
    v31 = a2[-1].i32[1];
    if (v31)
    {
      v32 = ~(v31 >> 1);
    }

    else
    {
      v32 = (v31 >> 1) + 1;
    }

    if (v32 < 0)
    {
      v32 = -v32;
    }

    if (v32 <= v9.i32[0])
    {
      return 1;
    }

    a1->i32[1] = v31;
    a2[-1].i32[1] = v8.i32[0];
    return 1;
  }

  else
  {
    a1->i32[0] = v10;
    a2[-1].i32[1] = v8.i32[0];
    return 1;
  }
}

void operations_research::sat::DratWriter::WriteClause(uint64_t a1, int *a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = 4 * a3;
    do
    {
      v6 = *a2 >> 1;
      if (*a2)
      {
        v7 = ~v6;
      }

      else
      {
        v7 = (v6 + 1);
      }

      v10[0] = v7;
      v10[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      absl::lts_20240722::str_format_internal::AppendPack(a1 + 16, "%d ", 3, v10, 1uLL);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  std::string::append((a1 + 16), "0\n");
  if (*(a1 + 39) < 0)
  {
    v8 = *(a1 + 24);
    if (v8 > 0x2710)
    {
      file::WriteString(*(a1 + 16), v8, *(a1 + 8), 47802, &v9);
      if (v9 != 1)
      {
        absl::lts_20240722::status_internal::MakeCheckFailString(&v9, "file::WriteString(output_, buffer_, file::Defaults()) is OK");
      }

      if (*(a1 + 39) < 0)
      {
        **(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        *(a1 + 16) = 0;
        *(a1 + 39) = 0;
      }
    }
  }
}

void sub_23CB8BC38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::DratWriter::DeleteClause(uint64_t a1, int *a2, uint64_t a3)
{
  std::string::append((a1 + 16), "d ");

  operations_research::sat::DratWriter::WriteClause(a1, a2, a3);
}

void operations_research::glop::DualEdgeNorms::Stats::~Stats(operations_research::glop::DualEdgeNorms::Stats *this)
{
  *(this + 30) = &unk_284F3A5F8;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 10) = &unk_284F3A5F8;
      if ((*(this + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this;

    goto LABEL_6;
  }

LABEL_9:
  operator delete(*(this + 11));
  v2 = this;

LABEL_6:
  operations_research::StatsGroup::~StatsGroup(v2);
}

operations_research::glop::DualEdgeNorms *operations_research::glop::DualEdgeNorms::DualEdgeNorms(operations_research::glop::DualEdgeNorms *this, const operations_research::glop::BasisFactorization *a2)
{
  v4 = operations_research::glop::DualEdgeNorms::Stats::Stats(this);
  operations_research::glop::GlopParameters::GlopParameters(v4 + 320, 0);
  *(this + 81) = a2;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 704) = 1;
  return this;
}

void operations_research::glop::DualEdgeNorms::ResizeOnNewRows(uint64_t a1, int a2)
{
  v7 = 0x3FF0000000000000;
  v2 = a2;
  v3 = *(a1 + 656);
  v4 = (*(a1 + 664) - v3) >> 3;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    std::vector<double>::__append(a1 + 656, v6, &v7);
  }

  else if (!v5)
  {
    *(a1 + 664) = v3 + 8 * v2;
  }
}

uint64_t operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms(operations_research::glop::DualEdgeNorms *this)
{
  if (*(this + 704) == 1)
  {
    v2 = **(*(this + 81) + 496);
    v7 = 0;
    v3 = *(this + 82);
    v4 = (*(this + 83) - v3) >> 3;
    if (v2 <= v4)
    {
      if (v2 < v4)
      {
        *(this + 83) = v3 + 8 * v2;
      }
    }

    else
    {
      std::vector<double>::__append(this + 656, v2 - v4, &v7);
    }

    if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 82) + 8 * i) = operations_research::glop::BasisFactorization::DualEdgeSquaredNorm(*(this + 81), i);
      }
    }

    *(this + 704) = 0;
  }

  return *(this + 82);
}

__n128 operations_research::glop::DualEdgeNorms::UpdateDataOnBasisPermutation(uint64_t a1, void *a2)
{
  if ((*(a1 + 704) & 1) == 0)
  {
    v2 = (a1 + 680);
    operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(a2, (a1 + 656), (a1 + 680));
    v4 = *(a1 + 696);
    *(a1 + 696) = *(a1 + 672);
    result = *v2;
    *v2 = *(a1 + 656);
    *(a1 + 656) = result;
    *(a1 + 672) = v4;
  }

  return result;
}

BOOL operations_research::glop::DualEdgeNorms::TestPrecision(uint64_t a1, const operations_research::glop::ScatteredColumn *a2, operations_research::glop *this)
{
  if (*(a1 + 704))
  {
    return 1;
  }

  v3 = a2;
  v5 = operations_research::glop::SquaredNorm(this, a2);
  v6 = 8 * v3;
  v7 = *(*(a1 + 656) + v6);
  v8 = sqrt(v5);
  v9 = sqrt(v7);
  operations_research::RatioDistribution::Add(a1 + 160, (v8 - v9) / v8);
  if (fabs((v8 - v9) / v8) > *(a1 + 384))
  {
    if (dword_2810BFE60 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_10, dword_2810BFE60))
    {
      v15 = v6;
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/dual_edge_norms.cc", 67);
      v11 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "Recomputing edge norms: ", 0x18uLL);
      v17 = v8;
      v12 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v11, &v17);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " vs ", 4uLL);
      v17 = v9;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v12, &v17);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
      v6 = v15;
    }

    *(a1 + 704) = 1;
  }

  *(*(a1 + 656) + v6) = v5;
  if (v7 > v5 * 0.25)
  {
    return 1;
  }

  if (dword_2810BFE78 < 1)
  {
    return 0;
  }

  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFE70, dword_2810BFE78);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/dual_edge_norms.cc", 76);
    v13 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Recomputing leaving row. Norm was ", 0x22uLL);
    v17 = v9;
    v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v13, &v17);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, " vs precise version ", 0x14uLL);
    v17 = v8;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v14, &v17);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
    return 0;
  }

  return result;
}

void sub_23CB8C1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB8C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *operations_research::glop::DualEdgeNorms::UpdateBeforeBasisPivot(uint64_t *result, int a2, int a3, uint64_t *a4, operations_research::glop::ScatteredColumn *a5)
{
  if ((result[88] & 1) == 0)
  {
    v7 = result;
    result = operations_research::glop::BasisFactorization::RightSolveForTau(result[81], a5);
    v8 = *a4;
    v9 = 8 * a3;
    v10 = *(*a4 + v9);
    v11 = v7[82];
    v12 = *(v11 + v9) / (v10 * v10);
    v13 = a4[4];
    v14 = (a4[5] - v13) >> 2;
    if (v14 >= 1)
    {
      v15 = *result;
      v16 = -2.0 / v10;
      do
      {
        v18 = *v13++;
        v17 = v18;
        v19 = 8 * v18;
        v20 = *(v11 + v19) + *(v8 + v19) * (v16 * *(v15 + v19) + *(v8 + v19) * v12);
        if (v20 < 0.0001 && a3 != v17)
        {
          v20 = 0.0001;
        }

        *(v11 + v19) = v20;
        --v14;
      }

      while (v14);
    }

    *(v11 + 8 * a3) = v12;
  }

  return result;
}

operations_research::glop::DualEdgeNorms::Stats *operations_research::glop::DualEdgeNorms::Stats::Stats(operations_research::glop::DualEdgeNorms::Stats *this)
{
  *(this + 23) = 13;
  strcpy(this, "DualEdgeNorms");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "tau_density", 0xBuLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "edge_norms_accuracy", 0x13uLL, this);
  *(this + 20) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 240, "lower_bounded_norms", 0x13uLL, this);
  *(this + 30) = &unk_284F44DF0;
  return this;
}

void sub_23CB8C3C4(_Unwind_Exception *a1)
{
  *(v1 + 160) = &unk_284F3A5F8;
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::StatsGroup::~StatsGroup(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

void operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(void *a1, char **a2, char **a3)
{
  if (a3)
  {
    v3 = a1[1] - *a1;
    if ((v3 & 0x3FFFFFFFCLL) != 0)
    {
      v4 = a2[1];
      v5 = ((v4 - *a2) >> 3);
      v6 = (a3[1] - *a3) >> 3;
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v8 != 0 && v7)
      {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        std::vector<double>::__append(a3, v8, v4 - 1);
        a1 = v9;
        a2 = v10;
        a3 = v11;
      }

      else if (!v7)
      {
        a3[1] = &(*a3)[8 * v5];
      }

      if ((v3 >> 2) >= 1)
      {
        v15 = *a1;
        v16 = *a2;
        v17 = (v3 >> 2) & 0x7FFFFFFF;
        v18 = *a3;
        do
        {
          v19 = *v16;
          v16 += 8;
          v20 = v19;
          LODWORD(v19) = *v15++;
          *&v18[8 * v19] = v20;
          --v17;
        }

        while (v17);
      }
    }

    else if (a3 != a2)
    {
      v12 = a2[1];
      v13 = (v12 - *a2) >> 3;
      v14 = *a2;

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, v14, v12, v13);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/permutation.h", 204, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "result", 6uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
  }
}

void operations_research::sat::EncodingNode::~EncodingNode(operations_research::sat::EncodingNode *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3 == (this + 48))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }
}

void *operations_research::sat::EncodingNode::LiteralNode@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  *(a3 + 8) = 1;
  *(a3 + 12) = a1 >> 1;
  __src = a1;
  return std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a3 + 80), &__src, &v5, 1uLL);
}

void operations_research::sat::EncodingNode::GenericNode(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = 0;
  v6 = (a5 + 24);
  *(a5 + 72) = 0;
  v7 = (a5 + 72);
  *(a5 + 80) = 0;
  v8 = a5 + 80;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *a5 = 0;
  *(a5 + 4) = a1;
  *(a5 + 12) = 0;
  *(a5 + 16) = 0;
  *(a5 + 8) = a2;
  v9 = (a5 + 72);
  v10 = *(a3 + 24);
  if (!v10)
  {
    goto LABEL_4;
  }

  if (v10 != a3)
  {
    *v7 = v10;
    v9 = (a3 + 24);
LABEL_4:
    *v9 = 0;
    goto LABEL_6;
  }

  *v7 = a5 + 48;
  v11 = a1;
  v12 = a4;
  (*(*v10 + 24))(v10);
  a1 = v11;
  a4 = v12;
LABEL_6:
  *v6 = a4;
  v14 = a1;
  if (!*v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v13 = (*(**v7 + 48))(*v7, &v14);
  std::vector<int>::push_back[abi:ne200100](v8, &v13);
  *(a5 + 12) = **(a5 + 80) >> 1;
}

uint64_t operations_research::sat::EncodingNode::literal(operations_research::sat::EncodingNode *this, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::EncodingNode::literal(a2, v6);
  }

  v3 = *(this + 10);
  v4 = (*(this + 11) - v3) >> 2;
  if (v4 <= v2)
  {
    operations_research::sat::EncodingNode::literal(v2, v4, v6);
  }

  return *(v3 + 4 * v2);
}

void operations_research::sat::EncodingNode::InitializeAmoNode(uint64_t a1, uint64_t *a2, unint64_t a3, operations_research::sat::SatSolver *a4)
{
  if (a3 >= 2)
  {
    v5 = a1 + 80;
    if (*(a1 + 80) == *(a1 + 88))
    {
      v6 = *(a4 + 4);
      operations_research::sat::SatSolver::SetNumVariables(a4, (v6 + 1));
      v7[0] = 2 * v6;
      std::vector<int>::push_back[abi:ne200100](v5, v7);
      *(a1 + 32) = 0u;
      *a1 = 0;
      *(a1 + 8) = 1;
      *(a1 + 12) = v6;
      operator new();
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/encoding.cc", 102);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Already initialized", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  operations_research::sat::EncodingNode::InitializeAmoNode(a3, v7);
}

void sub_23CB8CB5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::EncodingNode::InitializeLazyNode(operations_research::sat::EncodingNode *this, operations_research::sat::EncodingNode *a2, operations_research::sat::EncodingNode *a3, operations_research::sat::SatSolver *a4)
{
  if (*(this + 10) != *(this + 11))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/encoding.cc", 128);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "Already initialized", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v23);
  }

  v7 = *(a4 + 4);
  operations_research::sat::SatSolver::SetNumVariables(a4, (v7 + 1));
  v9 = *(this + 11);
  v8 = *(this + 12);
  if (v9 >= v8)
  {
    v11 = *(this + 10);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 2;
    v14 = v13 + 1;
    if ((v13 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v16 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = v13;
    v18 = (4 * v13);
    v19 = 2 * v7;
    v20 = &v18[-v17];
    *v18 = v19;
    v10 = v18 + 1;
    memcpy(v20, v11, v12);
    *(this + 10) = v20;
    *(this + 11) = v10;
    *(this + 12) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = 2 * v7;
    v10 = v9 + 4;
  }

  *(this + 11) = v10;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 4) = vadd_s32(*(a3 + 4), *(a2 + 4));
  v21 = *a2;
  if (*a2 <= *a3)
  {
    v21 = *a3;
  }

  *this = v21 + 1;
  v22 = *(a3 + 3);
  if (v22 >= *(a2 + 3))
  {
    v22 = *(a2 + 3);
  }

  *(this + 3) = v22;
}

uint64_t operations_research::sat::EncodingNode::InitializeLazyCoreNode(uint64_t result, uint64_t a2, int *a3, int *a4)
{
  if (*(result + 80) != *(result + 88))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/encoding.cc", 144);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, "Already initialized", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v10);
  }

  v4 = a3[1];
  v5 = a4[1];
  v6 = a4[2] + a3[2];
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  v7 = v5 + v4;
  *(result + 16) = v7;
  *(result + 4) = v7 + 1;
  *(result + 8) = v6;
  v8 = *a3;
  if (*a3 <= *a4)
  {
    v8 = *a4;
  }

  *result = v8 + 1;
  v9 = a4[3];
  if (v9 >= a3[3])
  {
    v9 = a3[3];
  }

  *(result + 12) = v9;
  return result;
}

BOOL operations_research::sat::EncodingNode::IncreaseCurrentUB(operations_research::sat::EncodingNode *this, operations_research::sat::SatSolver *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  v4 = v3 - v2;
  v5 = *(this + 2);
  v6 = *(this + 1) + ((v3 - v2) >> 2);
  if (v6 == v5)
  {
    return v6 != v5;
  }

  v9 = *(this + 9);
  if (!v9)
  {
    if (!a2)
    {
      operations_research::sat::EncodingNode::IncreaseCurrentUB(v33);
    }

    v16 = *(a2 + 4);
    v17 = *(this + 12);
    if (v3 >= v17)
    {
      v25 = (v4 >> 2) + 1;
      if (v25 >> 62)
      {
        goto LABEL_37;
      }

      v26 = v17 - v2;
      if (v26 >> 1 > v25)
      {
        v25 = v26 >> 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v27 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (!(v27 >> 62))
        {
          operator new();
        }

LABEL_38:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v31 = (4 * (v4 >> 2));
      *v31 = 2 * v16;
      v18 = v31 + 1;
      memcpy(0, v2, v4);
      *(this + 10) = 0;
      *(this + 11) = v18;
      *(this + 12) = 0;
      if (v2)
      {
        operator delete(v2);
      }
    }

    else
    {
      *v3 = 2 * v16;
      v18 = v3 + 4;
    }

    *(this + 11) = v18;
    operations_research::sat::SatSolver::SetNumVariables(a2, (*(a2 + 4) + 1));
    v14 = *(this + 10);
    v13 = *(this + 11);
    v15 = v13 - v14;
    if (v13 - v14 < 5)
    {
      return v6 != v5;
    }

LABEL_34:
    operations_research::sat::SatSolver::AddBinaryClause(a2, *(v13 - 1) ^ 1, *&v15[v14 - 8]);
    return v6 != v5;
  }

  v33[0] = v6;
  v10 = (*(*v9 + 48))(v9, v33);
  v12 = *(this + 11);
  v11 = *(this + 12);
  if (v12 < v11)
  {
    *v12 = v10;
    v13 = v12 + 4;
    *(this + 11) = v13;
    v14 = *(this + 10);
    v15 = v13 - v14;
    if (v13 - v14 < 5)
    {
      return v6 != v5;
    }

    goto LABEL_34;
  }

  v19 = *(this + 10);
  v20 = v12 - v19;
  v21 = (v12 - v19) >> 2;
  v22 = v21 + 1;
  if ((v21 + 1) >> 62)
  {
LABEL_37:
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v23 = v11 - v19;
  if (v23 >> 1 > v22)
  {
    v22 = v23 >> 1;
  }

  if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v24 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = v22;
  }

  if (v24)
  {
    if (!(v24 >> 62))
    {
      operator new();
    }

    goto LABEL_38;
  }

  v28 = (v12 - v19) >> 2;
  v29 = (4 * v21);
  v30 = (4 * v21 - 4 * v28);
  *v29 = v10;
  v13 = v29 + 1;
  memcpy(v30, v19, v20);
  *(this + 10) = v30;
  *(this + 11) = v13;
  *(this + 12) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  *(this + 11) = v13;
  v14 = *(this + 10);
  v15 = v13 - v14;
  if (v13 - v14 >= 5)
  {
    goto LABEL_34;
  }

  return v6 != v5;
}

uint64_t operations_research::sat::EncodingNode::Reduce(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v2 = *(a1 + 88);
  if (v3 != v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(*(a2 + 216) + 24);
    do
    {
      if (((*(v6 + ((v3[v4] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3[v4]) & 1) == 0)
      {
        break;
      }

      ++v5;
      ++*(a1 + 4);
      v4 = v5;
    }

    while (v2 - v3 > v5);
    if (v5)
    {
      v7 = &v3[v4];
      v8 = v2 - v7;
      if (v2 == v7)
      {
        v11 = v3;
      }

      else
      {
        v9 = a1;
        v10 = a2;
        memmove(v3, &v3[v4], v2 - v7);
        a2 = v10;
        a1 = v9;
        v11 = *(v9 + 80);
      }

      v2 = (v3 + v8);
      *(a1 + 88) = v3 + v8;
      v3 = v11;
    }

    if (v3 != v2)
    {
      v12 = *(*(a2 + 216) + 24);
      v13 = v2 - 1;
      v14 = (v2 - 1) - v3;
      do
      {
        if (((*(v12 + ((*v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v13 & 0x3F ^ 1u)) & 1) == 0)
        {
          break;
        }

        *(a1 + 88) = v13;
        *(a1 + 8) = *(a1 + 4) + (v14 >> 2);
        v14 -= 4;
      }

      while (v13-- != v3);
    }
  }

  v16 = *(a1 + 16);
  v17 = *(a1 + 4);
  v18 = __OFSUB__(v17, v16);
  v19 = v17 - v16;
  if ((v19 < 0) ^ v18 | (v19 == 0))
  {
    return 0;
  }

  v20 = *(a1 + 24) * v19;
  *(a1 + 16) = v17;
  return v20;
}

void operations_research::sat::EncodingNode::ApplyWeightUpperBound(operations_research::sat::EncodingNode *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 3);
  if (v4 < 1)
  {
    operations_research::sat::EncodingNode::ApplyWeightUpperBound(this + 3, &v13);
  }

  v5 = a2 / v4;
  if (v5 <= 0x3FFFFFFF)
  {
    v6 = (*(this + 4) + v5 - *(this + 1)) & ~((*(this + 4) + v5 - *(this + 1)) >> 31);
    if (v6 < ((*(this + 11) - *(this + 10)) >> 2))
    {
      v8 = (*(this + 4) + v5 - *(this + 1)) & ~((*(this + 4) + v5 - *(this + 1)) >> 31);
      while (1)
      {
        v9 = operations_research::sat::EncodingNode::literal(this, v8);
        if ((operations_research::sat::SatSolver::AddUnitClause(a3, v9 ^ 1u) & 1) == 0)
        {
          break;
        }

        v8 = (v8 + 1);
        v10 = *(this + 10);
        v11 = *(this + 11) - v10;
        if (v8 >= (v11 >> 2))
        {
          v12 = v11 >> 2;
          if (v6 <= v12)
          {
            if (v6 < v12)
            {
              *(this + 11) = v10 + 4 * v6;
            }
          }

          else
          {
            std::vector<int>::__append((this + 80), v6 - v12);
          }

          *(this + 2) = *(this + 1) + v6;
          return;
        }
      }
    }
  }
}

void operations_research::sat::EncodingNode::TransformToBoolean(operations_research::sat::EncodingNode *this, operations_research::sat::SatSolver *a2, operations_research::sat::SatSolver *a3)
{
  v5 = (this + 80);
  v6 = (*(this + 11) - *(this + 10)) >> 2;
  if (v6 < 2)
  {
    if (*(this + 1) + v6 != *(this + 2))
    {
      operations_research::sat::IncreaseNodeSize(this, a2, a3);
      v12 = *(this + 10);
      v13 = *(this + 11) - v12;
      if ((v13 & 0x3FFFFFFFCLL) != 8)
      {
        operations_research::sat::EncodingNode::TransformToBoolean(v13, v17);
      }

      v14 = v13 >> 2;
      if (v14 <= 1)
      {
        operations_research::sat::EncodingNode::TransformToBoolean(v14, v17);
      }

      if (operations_research::sat::SatSolver::AddUnitClause(a2, *(v12 + 4) ^ 1u))
      {
        v9 = *(this + 10);
        v15 = (*(this + 11) - v9) >> 2;
        if (*(this + 11) == v9)
        {
          v16 = 1 - v15;
LABEL_17:
          std::vector<int>::__append(v5, v16);
        }

        else if (v15 >= 2)
        {
LABEL_14:
          *(this + 11) = v9 + 4;
        }

LABEL_18:
        *(this + 2) = *(this + 1) + 1;
      }
    }
  }

  else
  {
    v7 = 1;
    while (1)
    {
      v8 = operations_research::sat::EncodingNode::literal(this, v7);
      if ((operations_research::sat::SatSolver::AddUnitClause(a2, v8 ^ 1u) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1);
      v9 = *(this + 10);
      v10 = *(this + 11);
      if (v7 >= ((v10 - v9) >> 2))
      {
        v11 = (v10 - v9) >> 2;
        if (v10 == v9)
        {
          v16 = 1 - v11;
          goto LABEL_17;
        }

        if (v11 >= 2)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }
  }
}

void operations_research::sat::IncreaseNodeSize(operations_research::sat *this, operations_research::sat::EncodingNode *a2, operations_research::sat::SatSolver *a3)
{
  if (operations_research::sat::EncodingNode::IncreaseCurrentUB(this, a2))
  {
    operator new();
  }
}

uint64_t operations_research::sat::EncodingNode::GetAssumption(operations_research::sat::EncodingNode *this, operations_research::sat::SatSolver *a2, operations_research::sat::SatSolver *a3)
{
  if (!*(this + 3) || (v4 = *(this + 4), v4 >= *(this + 2)))
  {
    operations_research::sat::EncodingNode::GetAssumption(&v10);
  }

  v5 = *(this + 1);
  v6 = (v4 - v5);
  if (v4 - v5 < 0)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v6, 0, "index >= 0");
  }

  for (i = *(this + 10); v6 >= (*(this + 11) - i) >> 2; i = *(this + 10))
  {
    operations_research::sat::IncreaseNodeSize(this, a2, a3);
  }

  return *(i + 4 * v6) ^ 1u;
}

uint64_t operations_research::sat::LazyMerge@<X0>(unsigned int **this@<X0>, unsigned int **a2@<X1>, operations_research::sat::EncodingNode *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = xmmword_23CE48D30;
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  operations_research::sat::EncodingNode::InitializeLazyNode(a4, this, a2, a3);
  v8 = this[10];
  if (this[11] == v8)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  v9 = *(a4 + 80);
  if (*(a4 + 88) == v9)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  operations_research::sat::SatSolver::AddBinaryClause(a3, *v8 ^ 1, *v9);
  v10 = a2[10];
  if (a2[11] == v10)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  operations_research::sat::SatSolver::AddBinaryClause(a3, *v10 ^ 1, *v9);
  v11 = this[10];
  if (this[11] == v11)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  v12 = a2[10];
  if (a2[11] == v12)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  return operations_research::sat::SatSolver::AddTernaryClause(a3, *v9 ^ 1u, *v11, *v12);
}

__n128 std::deque<operations_research::sat::EncodingNode>::push_back(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 39 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<operations_research::sat::EncodingNode>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x27)) + 104 * (v7 % 0x27);
  v9 = *a2;
  v10 = a2[2];
  *(v8 + 16) = a2[1];
  *(v8 + 32) = v10;
  *v8 = v9;
  v11 = a2 + 72;
  v12 = *(a2 + 9);
  if (v12)
  {
    if (v12 == a2 + 3)
    {
      *(v8 + 72) = v8 + 48;
      (*(**v11 + 24))();
      goto LABEL_11;
    }

    *(v8 + 72) = v12;
  }

  else
  {
    v11 = (v8 + 72);
  }

  *v11 = 0;
LABEL_11:
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  result = a2[5];
  *(v8 + 80) = result;
  *(v8 + 96) = *(a2 + 12);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  ++a1[5];
  return result;
}

void operations_research::sat::LazyMergeAllNodeWithPQAndIncreaseLb(uint64_t a1, char **a2, operations_research::sat::EncodingNode *a3, void *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(0, 2, "pq.size() == 2");
}

void sub_23CB8E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  operations_research::sat::EncodingNode::~EncodingNode(&a11);
  v26 = a1;
  if (__p)
  {
    operator delete(__p);
    v26 = a1;
  }

  _Unwind_Resume(v26);
}

uint64_t std::priority_queue<operations_research::sat::EncodingNode *,std::vector<operations_research::sat::EncodingNode *>,operations_research::sat::anonymous namespace::SortEncodingNodePointers>::pop(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  v3 = (v1 - *result) >> 3;
  if (v3 < 2)
  {
    goto LABEL_22;
  }

  v4 = 0;
  v5 = *v2;
  v6 = *result;
  do
  {
    v7 = v6;
    v6 += 8 * v4 + 8;
    v8 = 2 * v4;
    v4 = (2 * v4) | 1;
    v9 = v8 + 2;
    if (v9 < v3)
    {
      v10 = *(v6 + 1);
      v11 = **v6;
      if (v11 > *v10 || v11 == *v10 && v10[3] > *(*v6 + 12))
      {
        v6 += 8;
        v4 = v9;
      }
    }

    *v7 = *v6;
  }

  while (v4 <= ((v3 - 2) >> 1));
  v12 = (v1 - 8);
  if (v6 == (v1 - 8))
  {
    *v6 = v5;
LABEL_22:
    *(result + 8) = v1 - 8;
    return result;
  }

  *v6 = *v12;
  *v12 = v5;
  v13 = (v6 - v2 + 8) >> 3;
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_22;
  }

  v15 = v14 >> 1;
  v16 = &v2[8 * (v14 >> 1)];
  v17 = *v16;
  v18 = *v6;
  v19 = **v16;
  v20 = **v6;
  if (v19 <= v20 && (v19 != v20 || v18[3] <= v17[3]))
  {
    goto LABEL_22;
  }

  *v6 = v17;
  if (v14 < 2)
  {
LABEL_26:
    *v16 = v18;
    *(result + 8) = v1 - 8;
  }

  else
  {
    v21 = &v2[8 * (v14 >> 1)];
    while (1)
    {
      v22 = v15 - 1;
      v15 = (v15 - 1) >> 1;
      v16 = &v2[8 * v15];
      v23 = *v16;
      v24 = **v16;
      if (v24 <= v20)
      {
        if (v24 != v20)
        {
          v16 = v21;
          goto LABEL_26;
        }

        if (v18[3] <= v23[3])
        {
          break;
        }
      }

      *v21 = v23;
      v21 = &v2[8 * v15];
      if (v22 <= 1)
      {
        goto LABEL_26;
      }
    }

    *v21 = v18;
    *(result + 8) = v1 - 8;
  }

  return result;
}

void operations_research::sat::ReduceNodes(uint64_t a1, uint64_t *a2, uint64_t **a3, operations_research::sat::SatSolver *this)
{
  operations_research::sat::SatSolver::Backtrack(this, 0);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    do
    {
      v10 = *v8++;
      *a2 += operations_research::sat::EncodingNode::Reduce(v10, this);
    }

    while (v8 != v9);
  }

  if (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = *a2;
    v14 = *a3;
    v15 = a1 - v13;
    if (v15 < 0)
    {
      a3[1] = v14;
      return;
    }

    v16 = a3[1];
    while (v14 != v16)
    {
      v17 = *v14++;
      operations_research::sat::EncodingNode::ApplyWeightUpperBound(v17, v15, this);
    }
  }

  v12 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    while (*(*v12 + 24) && *(*v12 + 16) < *(*v12 + 8))
    {
      if (++v12 == v11)
      {
        goto LABEL_22;
      }
    }

    if (v12 != v11)
    {
      for (i = v12 + 1; i != v11; ++i)
      {
        v19 = *i;
        if (*(*i + 24) && *(v19 + 16) < *(v19 + 8))
        {
          *v12++ = v19;
        }
      }
    }
  }

  if (v12 != v11)
  {
    a3[1] = v12;
  }

LABEL_22:
  v20 = *(operations_research::sat::SatSolver::parameters(this) + 216);
  if (v20 == 2)
  {
    v21 = *a3;
    v22 = a3[1];
    v23 = 126 - 2 * __clz((v22 - *a3) >> 3);
    v24 = v22 == *a3;
    goto LABEL_26;
  }

  if (v20 == 1)
  {
    v21 = *a3;
    v22 = a3[1];
    v23 = 126 - 2 * __clz((v22 - *a3) >> 3);
    v24 = v22 == *a3;
LABEL_26:
    v33 = v25;
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,false>(v21, v22, &v33, v26, 1);
  }

  if (*(operations_research::sat::SatSolver::parameters(this) + 283) == 1)
  {
    v28 = *a3;
    v27 = a3[1];
    if (*a3 != v27)
    {
      v29 = v27 - 1;
      if (v29 > v28)
      {
        v30 = (v28 + 1);
        do
        {
          v31 = *(v30 - 8);
          *(v30 - 8) = *v29;
          *v29-- = v31;
          v32 = v30 >= v29;
          v30 += 8;
        }

        while (!v32);
      }
    }
  }
}

void operations_research::sat::ExtractAssumptions(operations_research::sat::SatSolver *a1@<X2>, uint64_t a2@<X0>, operations_research::sat::EncodingNode ***a3@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      if (*(*v4 + 3) >= a2)
      {
        Assumption = operations_research::sat::EncodingNode::GetAssumption(*v4, a1, a1);
        std::vector<int>::push_back[abi:ne200100](a4, &Assumption);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_23CB8ED04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ComputeCoreMinWeight(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v3 >> 2;
  v8 = *a1;
  v9 = (a1[1] - *a1) >> 3;
  result = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = v5; ; i = v5)
    {
      if (v9 <= i)
      {
        operations_research::sat::ComputeCoreMinWeight(i, v9, &v16);
      }

      v12 = *(v8 + 8 * i);
      v13 = *(v12 + 16) - *(v12 + 4);
      v14 = *(v12 + 80);
      if (v13 < (*(v12 + 88) - v14) >> 2 && (*(v14 + 4 * v13) ^ *(v2 + 4 * v4)) == 1)
      {
        break;
      }

      ++v5;
    }

    v15 = *(v12 + 24);
    if (v15 < result)
    {
      result = v15;
    }

    v4 = ++v6;
  }

  while (v7 > v6);
  return result;
}

uint64_t operations_research::sat::MaxNodeWeightSmallerThan(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(*v2 + 24);
    v8 = v5;
    if (v5 < 1)
    {
      operations_research::sat::MaxNodeWeightSmallerThan(&v8, v7);
    }

    if (result <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = result;
    }

    if (v5 < a2)
    {
      result = v6;
    }

    v2 += 8;
  }

  while (v2 != v3);
  return result;
}

uint64_t operations_research::sat::ObjectiveEncoder::ProcessCore(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, std::string *a6)
{
  v162 = *MEMORY[0x277D85DE8];
  if (!operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 88)))
  {
    v13 = 0;
    return v13 & 1;
  }

  if (a3 == 1)
  {
    v10 = *(a1 + 88);
    v11 = *a2 ^ 1;

    return operations_research::sat::SatSolver::AddUnitClause(v10, v11);
  }

  v134 = a5;
  v135 = a3;
  v132 = a6;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v14 = 0;
  if (!a3)
  {
    v47 = 0;
    goto LABEL_52;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (2)
  {
    v137 = v17;
    while (1)
    {
      v18 = v16;
      v19 = *(a1 + 8);
      v20 = *(v19 + 8 * v16);
      v21 = *(v20 + 16);
      v22 = *(v20 + 4);
      v23 = v21 - v22;
      v24 = *(v20 + 80);
      if (v23 < (*(v20 + 88) - v24) >> 2)
      {
        break;
      }

      v27 = (*(a1 + 16) - v19) >> 3;
      if (v27 <= v18)
      {
LABEL_50:
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(v18, v27, "index < nodes_.size()");
      }

LABEL_17:
      v28 = v14;
      v29 = v14 >> 3;
      if ((v29 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v29 != -1)
      {
        if (!((v29 + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFF8] = v20;
      v14 = 0;
      memcpy(0, 0, v28);
      v16 = v18 + 1;
    }

    v25 = *(v24 + 4 * v23) ^ a2[v15];
    v26 = *(a1 + 16);
    if (v25 != 1)
    {
      v27 = (v26 - v19) >> 3;
      if (v27 <= v18)
      {
        goto LABEL_50;
      }

      goto LABEL_17;
    }

    v30 = (v26 - v19) >> 3;
    if (v30 <= v18)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(v18, v30, "index < nodes_.size()");
    }

    if ((*a1 & 1) != 0 && *(v20 + 8) > v22 + 1)
    {
      *(v20 + 16) = v21 + 1;
      if (!(((v14 >> 3) + 1) >> 61))
      {
        if (v14 >> 3 != -1)
        {
          if (!(((v14 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * (v14 >> 3)) = v20;
        memcpy(0, 0, v14);
        v31 = a2[v15];
        v32 = *(v20 + 24);
        v156 = 0;
        v157 = 0;
        v160 = 0u;
        v161 = 0u;
        *v154 = 0;
        v155 = v32;
        *&v154[8] = 1;
        *&v154[12] = (v31 >> 1);
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v33 = v147;
    if (v147 < v148)
    {
      *v147 = v20;
      v34 = v33 + 8;
      goto LABEL_43;
    }

    v35 = v146;
    v36 = v147 - v146;
    v37 = (v147 - v146) >> 3;
    v38 = v37 + 1;
    if ((v37 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v39 = v148 - v146;
    if ((v148 - v146) >> 2 > v38)
    {
      v38 = v39 >> 2;
    }

    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      v40 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = v38;
    }

    if (v40)
    {
      if (!(v40 >> 61))
      {
        operator new();
      }

LABEL_214:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v41 = (8 * v37);
    v42 = &v41[-((v147 - v146) >> 3)];
    *v41 = v20;
    v34 = (v41 + 1);
    memcpy(v42, v35, v36);
    v146 = v42;
    v147 = v34;
    v148 = 0;
    if (v35)
    {
      operator delete(v35);
    }

LABEL_43:
    v147 = v34;
    v43 = *(v20 + 24);
    v111 = v43 <= a4;
    v44 = v43 - a4;
    if (!v111)
    {
      *(v20 + 16) = *(v20 + 4);
      *(v20 + 24) = v44;
      v45 = v14;
      v46 = v14 >> 3;
      if (!(((v14 >> 3) + 1) >> 61))
      {
        if (v14 >> 3 != -1)
        {
          if (!(((v14 >> 3) + 1) >> 61))
          {
            operator new();
          }

          goto LABEL_214;
        }

        *(8 * v46) = v20;
        v14 = 8 * v46 + 8;
        memcpy(0, 0, v45);
        goto LABEL_10;
      }

LABEL_212:
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

LABEL_10:
    v16 = v18 + 1;
    v17 = v137 + 1;
    v15 = v137 + 1;
    if (v135 > v15)
    {
      continue;
    }

    break;
  }

  v47 = v18 + 1;
LABEL_52:
  v48 = *(a1 + 8);
  v49 = v47;
  v133 = (a1 + 8);
  if (v47 < ((*(a1 + 16) - v48) >> 3))
  {
    v50 = v47 + 1;
    do
    {
      v51 = v14;
      v52 = v14 >> 3;
      if ((v52 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v52 != -1)
      {
        if (!((v52 + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFF8] = *(v48 + 8 * v49);
      v14 = 0;
      memcpy(0, 0, v51);
      v49 = v50;
      v48 = *(a1 + 8);
      ++v50;
    }

    while (v49 < (*(a1 + 16) - v48) >> 3);
  }

  std::vector<operations_research::sat::EncodingNode *>::__assign_with_size[abi:ne200100]<operations_research::sat::EncodingNode **,operations_research::sat::EncodingNode **>(v133, 0, v14, v14 >> 3);
  v54 = v146;
  if (v134 < 2 * a4)
  {
    v55 = v135;
    v56 = v147;
    if (v146 != v147)
    {
      do
      {
LABEL_61:
        operations_research::sat::EncodingNode::TransformToBoolean(*v54++, *(a1 + 88), v53);
      }

      while (v54 != v56);
    }

LABEL_62:
    *v154 = " exo";
    *&v154[8] = 4;
    absl::lts_20240722::StrAppend(v132, v154);
    v156 = 0;
    v157 = 0;
    v160 = 0u;
    v161 = 0u;
    *v154 = xmmword_23CE48D20;
    *&v154[16] = 0;
    v155 = a4;
    v57 = std::deque<operations_research::sat::EncodingNode>::push_back((a1 + 32), v154);
    if (*(&v160 + 1))
    {
      *&v161 = *(&v160 + 1);
      operator delete(*(&v160 + 1));
    }

    if (v160 == &v158)
    {
      (*(*v160 + 32))(v160, v57);
    }

    else if (v160)
    {
      (*(*v160 + 40))(v57);
    }

    v89 = *(a1 + 72) + *(a1 + 64) - 1;
    *v154 = *(*(a1 + 40) + 8 * (v89 / 0x27)) + 104 * (v89 % 0x27);
    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v133, v154);
    memset(v154, 0, sizeof(v154));
    if (v55)
    {
      if (!(v55 >> 60))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    operations_research::sat::SatSolver::AddLinearConstraint(*(a1 + 88), 1, 1, 1, 1, v154);
    v13 = *(*(a1 + 88) + 528) ^ 1;
    if (*v154)
    {
      *&v154[8] = *v154;
      operator delete(*v154);
      v90 = v146;
      if (!v146)
      {
        return v13 & 1;
      }

LABEL_203:
      v147 = v90;
      operator delete(v90);
      return v13 & 1;
    }

LABEL_202:
    v90 = v146;
    if (!v146)
    {
      return v13 & 1;
    }

    goto LABEL_203;
  }

  v143 = 0;
  v144 = 0;
  v145 = 0;
  v140 = xmmword_23CE306D0;
  v58 = v147;
  if (v147 != v146)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    while (1)
    {
      v67 = v54[v60];
      v68 = *(v67 + 10);
      v69 = *(v67 + 11);
      if (((v69 - v68) & 0x3FFFFFFFCLL) != 4)
      {
        goto LABEL_81;
      }

      v70 = *(v67 + 1);
      if (*(v67 + 2) != v70 + 1 || *(v67 + 4) != v70)
      {
        goto LABEL_81;
      }

      if (v69 == v68)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, v69 - v68, "i < literals_.size()");
      }

      v71 = *v68;
      if (v140 > 1)
      {
        v65 = 0;
        _X12 = v141;
        __asm { PRFM            #4, [X12] }

        v78 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v71) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v71));
        v66 = (v78 >> 7) ^ (v141 >> 12);
        v79 = vdup_n_s8(v78 & 0x7F);
        while (1)
        {
          v62 = v66 & v140;
          v63 = *(v141 + v62);
          v64 = vceq_s8(v63, v79);
          if (v64)
          {
            break;
          }

LABEL_72:
          if (vceq_s8(v63, 0x8080808080808080))
          {
            goto LABEL_84;
          }

          v65 += 8;
          v66 = v65 + v62;
        }

        while (*(v142 + 8 * ((v62 + (__clz(__rbit64(v64)) >> 3)) & v140)) != v71)
        {
          v64 &= ((v64 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v64)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_81;
      }

      if (*(&v140 + 1) < 2uLL || v141 != v71)
      {
LABEL_84:
        LODWORD(__p) = v71;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>(&v140, &__p, v154);
        if (v154[16] == 1)
        {
          **&v154[8] = __p;
        }

        *(*&v154[8] + 4) = v61;
        v80 = *(v67 + 10);
        if (*(v67 + 11) == v80)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
        }

        v81 = *v80;
        v82 = v144;
        if (v144 >= v145)
        {
          v83 = v143;
          v84 = v144 - v143;
          v85 = (v144 - v143) >> 2;
          v86 = v85 + 1;
          if ((v85 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v87 = v145 - v143;
          if ((v145 - v143) >> 1 > v86)
          {
            v86 = v87 >> 1;
          }

          if (v87 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v88 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v88 = v86;
          }

          if (v88)
          {
            if (!(v88 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v85) = v81;
          v59 = 4 * v85 + 4;
          memcpy(0, v83, v84);
          v143 = 0;
          v144 = v59;
          v145 = 0;
          if (v83)
          {
            operator delete(v83);
          }
        }

        else
        {
          *v144 = v81;
          v59 = (v82 + 4);
        }

        v144 = v59;
        v54 = v146;
        v58 = v147;
        v60 = ++v61;
        if (v61 >= ((v147 - v146) >> 3))
        {
          goto LABEL_110;
        }
      }

      else
      {
LABEL_81:
        v60 = ++v61;
        if (v61 >= ((v58 - v54) >> 3))
        {
          goto LABEL_110;
        }
      }
    }
  }

  v59 = 0;
LABEL_110:
  memset(&v139, 0, sizeof(v139));
  v55 = v135;
  if (*(*(a1 + 80) + 488) >= 2)
  {
    v91 = v59 - v143;
    if ((((v59 - v143) >> 2) - 2) <= 0x129)
    {
      v92 = *(*(a1 + 88) + 216);
      v93 = v91 >> 2;
      std::vector<std::vector<int>>::vector[abi:ne200100](v154, v91 >> 2);
      LODWORD(__p) = 0;
      do
      {
        if ((operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 88)) & 1) == 0)
        {
          goto LABEL_139;
        }

        if (operations_research::sat::SatSolver::EnqueueDecisionIfNotConflicting(*(a1 + 88), *(v143 + __p)))
        {
          v94 = 0;
          LODWORD(v149) = 0;
          do
          {
            if (__p != v94 && ((*(*(v92 + 24) + ((*(v143 + v94) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(v143 + v94) & 0x3F ^ 1u)) & 1) != 0)
            {
              std::vector<int>::push_back[abi:ne200100](*v154 + 24 * __p, &v149);
              std::vector<int>::push_back[abi:ne200100](*v154 + 24 * v149, &__p);
              v94 = v149;
            }

            LODWORD(v149) = ++v94;
          }

          while (v94 < v93);
        }

        LODWORD(__p) = __p + 1;
      }

      while (__p < v93);
      if ((operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 88)) & 1) == 0)
      {
LABEL_139:
        std::vector<std::vector<int>>::~vector[abi:ne200100](v154);
        v107 = 0;
        v98 = 0;
        goto LABEL_191;
      }

      v99 = *v154;
      v100 = *&v154[8];
      while (v99 != v100)
      {
        std::__sort<std::__less<int,int> &,int *>();
        v101 = v99[1];
        if (*v99 != v101)
        {
          v102 = (*v99 + 4);
          while (v102 != v101)
          {
            v103 = *(v102 - 1);
            v104 = *v102++;
            if (v103 == v104)
            {
              v105 = v102 - 2;
              while (v102 != v101)
              {
                v106 = v103;
                v103 = *v102;
                if (v106 != *v102)
                {
                  v105[1] = v103;
                  ++v105;
                }

                ++v102;
              }

              if (v105 + 1 != v101)
              {
                v99[1] = v105 + 1;
              }

              break;
            }
          }
        }

        v99 += 3;
      }

      *&v149 = *(a1 + 104);
      *(&v149 + 1) = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
      v150 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
      operations_research::sat::AtMostOneDecomposition(&__p, &v139, v154, &v149);
      if (v139.__begin_ != v139.__end_)
      {
        operator new();
      }

      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v143, 0, 0, 0);
      v108 = __p;
      v55 = v135;
      if (__p == v152)
      {
        v97 = 0;
      }

      else
      {
        v97 = 0;
        do
        {
          v109 = v108[1];
          if (v109 != 1)
          {
            operator new();
          }

          v55 = v135;
          v108 += 2;
        }

        while (v108 != v152);
      }

      if (__p)
      {
        v152 = __p;
        operator delete(__p);
      }

      std::vector<std::vector<int>>::~vector[abi:ne200100](v154);
      v96 = 0;
LABEL_151:
      if (v97 != v96)
      {
        if ((v97[1] & 0x3FFFFFFFFFFFFFFFLL) == 0)
        {
          memset(v154, 0, sizeof(v154));
          v159 = 0;
          v158 = 0u;
          *&v154[8] = 1;
          v156 = 0;
          v157 = 0;
          v155 = 0;
          v160 = 0u;
          v161 = 0u;
          v122 = std::deque<operations_research::sat::EncodingNode>::push_back((a1 + 32), v154);
          if (*(&v160 + 1))
          {
            *&v161 = *(&v160 + 1);
            operator delete(*(&v160 + 1));
          }

          if (v160 == &v158)
          {
            (*(*v160 + 32))(v160, v122);
          }

          else if (v160)
          {
            (*(*v160 + 40))(v122);
          }

          v123 = *(a1 + 72) + *(a1 + 64) - 1;
          operations_research::sat::EncodingNode::InitializeAmoNode(*(*(a1 + 40) + 8 * (v123 / 0x27)) + 104 * (v123 % 0x27), 0, 0, *(a1 + 88));
        }

        v110 = **v97;
        if (v140 > 1)
        {
          v113 = 0;
          _X10 = v141;
          __asm { PRFM            #4, [X10] }

          v116 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v110) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v110));
          v117 = vdup_n_s8(v116 & 0x7F);
          v118 = ((v116 >> 7) ^ (v141 >> 12)) & v140;
          v119 = *(v141 + v118);
          v120 = vceq_s8(v119, v117);
          if (!v120)
          {
            goto LABEL_164;
          }

LABEL_162:
          while (1)
          {
            v121 = (v118 + (__clz(__rbit64(v120)) >> 3)) & v140;
            if (*(v142 + 8 * v121) == v110)
            {
              break;
            }

            v120 &= ((v120 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v120)
            {
LABEL_164:
              while (!*&vceq_s8(v119, 0x8080808080808080))
              {
                v113 += 8;
                v118 = (v113 + v118) & v140;
                v119 = *(v141 + v118);
                v120 = vceq_s8(v119, v117);
                if (v120)
                {
                  goto LABEL_162;
                }
              }

LABEL_211:
              absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v95);
            }
          }

          if (!(v141 + v121))
          {
            goto LABEL_211;
          }
        }

        else
        {
          v111 = v141 == v110 && *(&v140 + 1) > 1uLL;
          v112 = &absl::lts_20240722::container_internal::kSooControl;
          if (!v111)
          {
            v112 = 0;
          }

          if (!v112)
          {
            goto LABEL_211;
          }
        }

        operator new();
      }

      v124 = v146;
      v125 = v147;
      if (v146 == v147)
      {
        v126 = 0;
        v128 = (v147 - v146) >> 3;
      }

      else
      {
        LODWORD(v126) = 0;
        v127 = v146;
        do
        {
          if (*v127)
          {
            *&v124[8 * v126] = *v127;
            LODWORD(v126) = v126 + 1;
          }

          v127 += 8;
        }

        while (v127 != v125);
        v126 = v126;
        v128 = (v125 - v124) >> 3;
        if (v126 > v128)
        {
          std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(&v146, v126 - v128);
          goto LABEL_188;
        }
      }

      if (v128 > v126)
      {
        v147 = &v124[8 * v126];
      }

LABEL_188:
      v98 = 0;
      if (!v97)
      {
        goto LABEL_190;
      }

      goto LABEL_189;
    }
  }

  operations_research::sat::BinaryImplicationGraph::HeuristicAmoPartition(*(a1 + 96), &v143, v154);
  v97 = *v154;
  v96 = *&v154[8];
  if (*&v154[8] - *v154 != 16 || *(*v154 + 8) != v135)
  {
    goto LABEL_151;
  }

  v98 = 1;
LABEL_189:
  operator delete(v97);
LABEL_190:
  v107 = 1;
LABEL_191:
  if (v139.__begin_)
  {
    v139.__end_ = v139.__begin_;
    operator delete(v139.__begin_);
  }

  if (v140 >= 2)
  {
    operator delete((v141 - (BYTE8(v140) & 1) - 8));
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  if ((v107 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_202;
  }

  if (v98)
  {
    v54 = v146;
    v56 = v147;
    if (v146 != v147)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  operations_research::sat::LazyMergeAllNodeWithPQAndIncreaseLb(a4, &v146, *(a1 + 88), (a1 + 32));
  *v154 = v129;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v133, v154);
  *v154 = " d:";
  *&v154[8] = 3;
  v131 = absl::lts_20240722::numbers_internal::FastIntToBuffer(**(*(a1 + 16) - 8), v153, v130);
  __p = v153;
  v152 = (v131 - v153);
  absl::lts_20240722::StrAppend(v132, v154, &__p);
  v13 = *(*(a1 + 88) + 528) ^ 1;
  v90 = v146;
  if (v146)
  {
    goto LABEL_203;
  }

  return v13 & 1;
}

void sub_23CB90754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  if (v50)
  {
    operator delete(v50);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v51 - 224));
  if (a24)
  {
    operator delete(a24);
    if (a27 < 2)
    {
LABEL_7:
      v53 = a31;
      if (!a31)
      {
LABEL_12:
        if (a34)
        {
          operator delete(a34);
        }

        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(v53);
      goto LABEL_12;
    }
  }

  else if (a27 < 2)
  {
    goto LABEL_7;
  }

  operator delete((a29 - (a28 & 1) - 8));
  v53 = a31;
  if (!a31)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void *std::vector<std::vector<int>>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void std::deque<operations_research::sat::EncodingNode>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x27;
  v3 = v1 - 39;
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

void sub_23CB90DD4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,false>(uint64_t result, int8x16_t *a2, uint64_t (**a3)(void), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(a2[-1].i64[1], v10->i64[0]);
        if (result)
        {
          v76 = v10->i64[0];
          v10->i64[0] = a2[-1].i64[1];
LABEL_108:
          a2[-1].i64[1] = v76;
          return result;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,0>(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v71;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v72;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v74 = v10->i64[1];
      v73 = v10[1].i64[0];
      v75 = v10->i64[0];
      v10->i64[1] = v73;
      v10[1].i64[0] = v74;
      result = (*a3)(v73, v75);
      goto LABEL_138;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v79 = &v10->u64[1];
      v81 = v10 == a2 || v79 == a2;
      if (a5)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v10;
          do
          {
            v86 = v83->i64[0];
            v85 = v83->i64[1];
            v83 = v79;
            result = (*a3)(v85, v86);
            if (result)
            {
              v87 = v83->i64[0];
              v88 = v82;
              do
              {
                *(&v9->i64[1] + v88) = *(v9->i64 + v88);
                if (!v88)
                {
                  v84 = v9;
                  goto LABEL_125;
                }

                result = (*a3)(v87, *(&v9->i64[-1] + v88));
                v88 -= 8;
              }

              while ((result & 1) != 0);
              v84 = (&v9->i64[1] + v88);
LABEL_125:
              *v84 = v87;
            }

            v79 = &v83->u64[1];
            v82 += 8;
          }

          while (&v83->u64[1] != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v91 = v9->i64[0];
          v90 = v9->i64[1];
          v9 = v79;
          result = (*a3)(v90, v91);
          if (result)
          {
            v92 = v9->i64[0];
            v93 = v9;
            do
            {
              v94 = v93;
              v95 = *--v93;
              *v94 = v95;
              result = (*a3)(v92, *(v94 - 2));
            }

            while ((result & 1) != 0);
            *v93 = v92;
          }

          v79 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,operations_research::sat::EncodingNode**>(v10->i8, a2->i8, a2->i8, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = v13(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (!v18)
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(a2[-1].i64[1]))
          {
            v32 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v32;
          }

LABEL_37:
          --a4;
          v20 = v9->i64[0];
          if (a5)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v9->i64[v12] = a2[-1].i64[1];
        a2[-1].i64[1] = v19;
        --a4;
        v20 = v9->i64[0];
        if (a5)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_37;
        }

        v23 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v23;
        if (!(*a3)(v9->i64[0], v9->i64[v12]))
        {
          goto LABEL_37;
        }

        v24 = v9->i64[v12];
        v9->i64[v12] = v9->i64[0];
        v9->i64[0] = v24;
        --a4;
        v20 = v24;
        if (a5)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      v49 = (*a3)(v9[-1].i64[1], v20);
      v20 = v9->i64[0];
      if (v49)
      {
        goto LABEL_60;
      }

      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v63 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v20, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = &v9->u64[1];
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
          result = (*a3)(v20, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v20, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v20, v68));
        do
        {
          v69 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v20, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v70;
      }

      a5 = 0;
      *v70 = v20;
    }

    else
    {
      v14 = v13(v9->i64[v12], v9->i64[0]);
      v15 = (*a3)(a2[-1].i64[1], v9->i64[v12]);
      if (v14)
      {
        v16 = v9->i64[0];
        if (v15)
        {
          v9->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v16;
        }

        else
        {
          v9->i64[0] = v9->i64[v12];
          v9->i64[v12] = v16;
          if ((*a3)(a2[-1].i64[1]))
          {
            v25 = v9->i64[v12];
            v9->i64[v12] = a2[-1].i64[1];
            a2[-1].i64[1] = v25;
          }
        }
      }

      else if (v15)
      {
        v21 = v9->i64[v12];
        v9->i64[v12] = a2[-1].i64[1];
        a2[-1].i64[1] = v21;
        if ((*a3)(v9->i64[v12], v9->i64[0]))
        {
          v22 = v9->i64[0];
          v9->i64[0] = v9->i64[v12];
          v9->i64[v12] = v22;
        }
      }

      v26 = v12 - 1;
      v27 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
      v28 = (*a3)(a2[-1].i64[0], v9->i64[v12 - 1]);
      if (v27)
      {
        v29 = v9->i64[1];
        if (v28)
        {
          v9->i64[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v29;
        }

        else
        {
          v9->i64[1] = v9->i64[v26];
          v9->i64[v26] = v29;
          if ((*a3)(a2[-1].i64[0]))
          {
            v33 = v9->i64[v26];
            v9->i64[v26] = a2[-1].i64[0];
            a2[-1].i64[0] = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v9->i64[v26];
        v9->i64[v26] = a2[-1].i64[0];
        a2[-1].i64[0] = v30;
        if ((*a3)(v9->i64[v26], v9->i64[1]))
        {
          v31 = v9->i64[1];
          v9->i64[1] = v9->i64[v26];
          v9->i64[v26] = v31;
        }
      }

      v34 = v12 + 1;
      v35 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
      v36 = (*a3)(a2[-2].i64[1], v9->i64[v12 + 1]);
      if (v35)
      {
        v37 = v9[1].i64[0];
        if (v36)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          a2[-2].i64[1] = v37;
        }

        else
        {
          v9[1].i64[0] = v9->i64[v34];
          v9->i64[v34] = v37;
          if ((*a3)(a2[-2].i64[1]))
          {
            v40 = v9->i64[v34];
            v9->i64[v34] = a2[-2].i64[1];
            a2[-2].i64[1] = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v9->i64[v34];
        v9->i64[v34] = a2[-2].i64[1];
        a2[-2].i64[1] = v38;
        if ((*a3)(v9->i64[v34], v9[1].i64[0]))
        {
          v39 = v9[1].i64[0];
          v9[1].i64[0] = v9->i64[v34];
          v9->i64[v34] = v39;
        }
      }

      v41 = (*a3)(v9->i64[v12], v9->i64[v26]);
      v42 = (*a3)(v9->i64[v34], v9->i64[v12]);
      if (v41)
      {
        v43 = v9->i64[v26];
        if (v42)
        {
          v9->i64[v26] = v9->i64[v34];
          v9->i64[v34] = v43;
          v44 = v9->i64[v12];
          goto LABEL_58;
        }

        v9->i64[v26] = v9->i64[v12];
        v9->i64[v12] = v43;
        v47 = (*a3)(v9->i64[v34]);
        v44 = v9->i64[v12];
        if (v47)
        {
          v46 = v9->i64[v34];
          v9->i64[v12] = v46;
          v9->i64[v34] = v44;
          goto LABEL_57;
        }
      }

      else
      {
        v44 = v9->i64[v12];
        if (v42)
        {
          v9->i64[v12] = v9->i64[v34];
          v9->i64[v34] = v44;
          v45 = (*a3)();
          v44 = v9->i64[v12];
          if (v45)
          {
            v46 = v9->i64[v26];
            v9->i64[v26] = v44;
            v9->i64[v12] = v46;
LABEL_57:
            v44 = v46;
          }
        }
      }

LABEL_58:
      v48 = v9->i64[0];
      v9->i64[0] = v44;
      v9->i64[v12] = v48;
      --a4;
      v20 = v9->i64[0];
      if ((a5 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_60:
      v50 = 0;
      do
      {
        v51 = (*a3)(v9->i64[++v50], v20);
      }

      while ((v51 & 1) != 0);
      v52 = (v9 + v50 * 8);
      v53 = a2;
      if (v50 == 1)
      {
        v53 = a2;
        do
        {
          if (v52 >= v53)
          {
            break;
          }

          v55 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (((*a3)(v55, v20) & 1) == 0);
      }

      else
      {
        do
        {
          v54 = v53[-1].i64[1];
          v53 = (v53 - 8);
        }

        while (!(*a3)(v54, v20));
      }

      if (v52 >= v53)
      {
        v61 = (v52 - 8);
        if (&v52[-1].u64[1] == v9)
        {
          goto LABEL_78;
        }

LABEL_77:
        v9->i64[0] = v61->i64[0];
        goto LABEL_78;
      }

      v56 = &v9->i64[v50];
      v57 = v53;
      do
      {
        v58 = *v56;
        *v56 = *v57;
        *v57 = v58;
        do
        {
          v59 = v56[1];
          ++v56;
        }

        while (((*a3)(v59, v20) & 1) != 0);
        do
        {
          v60 = *--v57;
        }

        while (!(*a3)(v60, v20));
      }

      while (v56 < v57);
      v61 = (v56 - 1);
      if (v61 != v9)
      {
        goto LABEL_77;
      }

LABEL_78:
      v61->i64[0] = v20;
      if (v52 < v53)
      {
        goto LABEL_81;
      }

      v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**>(v9, v61, a3);
      v10 = &v61->u64[1];
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**>(&v61->i64[1], a2, a3);
      if (result)
      {
        a2 = v61;
        if ((v62 & 1) == 0)
        {
          goto LABEL_2;
        }

        return result;
      }

      if ((v62 & 1) == 0)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,false>(v9, v61, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v61->u64[1];
      }
    }
  }

  v77 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v77 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v89 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v89;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_138:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v78 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v78;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v78;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v76 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_108;
    }
  }

  return result;
}