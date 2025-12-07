unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,false>(unint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v73 = *(a2 - 1);
        v74 = *v8;
        if ((*(v73 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v8 = v73;
          *(a2 - 1) = v74;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v80 = v8 + 1;
      v81 = v8[1];
      v82 = (v8 + 2);
      v83 = v8[2];
      v84 = *v8;
      v85 = *(v81 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v86 = *(v83 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v85 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v86 <= v85)
        {
          goto LABEL_176;
        }

        *v80 = v83;
        *v82 = v81;
        v87 = v8;
        v88 = (v8 + 1);
        result = v81;
        if ((*(v83 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v84 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          goto LABEL_169;
        }
      }

      else
      {
        v87 = v8;
        v88 = (v8 + 2);
        result = *v8;
        if (v86 <= v85)
        {
          *v8 = v81;
          v8[1] = v84;
          v87 = v8 + 1;
          v88 = (v8 + 2);
          result = v84;
          if ((*(v83 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v84 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
LABEL_176:
            v81 = v83;
            goto LABEL_177;
          }
        }

LABEL_169:
        *v87 = v83;
        *v88 = v84;
        v81 = result;
      }

LABEL_177:
      v132 = *(a2 - 1);
      if ((*(v132 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v81 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *v82 = v132;
        *(a2 - 1) = v81;
        v133 = *v82;
        v134 = *v80;
        if ((*(v133 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v134 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v8[1] = v133;
          v8[2] = v134;
          v135 = *v8;
          if ((*(v133 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            *v8 = v133;
            v8[1] = v135;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v89 = (v8 + 1);
      v91 = v8 == a2 || v89 == a2;
      if (a4)
      {
        if (!v91)
        {
          v92 = 8;
          v93 = v8;
          do
          {
            v95 = *v93;
            v94 = v93[1];
            v93 = v89;
            if ((*(v94 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v95 + 16) & 0x1FFFFFFFFFFFFFFuLL))
            {
              v96 = v92;
              while (1)
              {
                *(v8 + v96) = v95;
                v97 = v96 - 8;
                if (v96 == 8)
                {
                  break;
                }

                v95 = *(v8 + v96 - 16);
                v96 -= 8;
                if ((*(v94 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v95 + 16) & 0x1FFFFFFFFFFFFFFuLL))
                {
                  v98 = (v8 + v97);
                  goto LABEL_130;
                }
              }

              v98 = v8;
LABEL_130:
              *v98 = v94;
            }

            v89 = v93 + 1;
            v92 += 8;
          }

          while (v93 + 1 != a2);
        }
      }

      else if (!v91)
      {
        do
        {
          v131 = *v7;
          v130 = v7[1];
          v7 = v89;
          if ((*(v130 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v131 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            do
            {
              *v89 = v131;
              v131 = *(v89 - 2);
              --v89;
            }

            while ((*(v130 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v131 + 16) & 0x1FFFFFFFFFFFFFFuLL));
            *v89 = v130;
          }

          v89 = (v7 + 1);
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v99 = (v9 - 2) >> 1;
        v100 = v99;
        do
        {
          v101 = v100;
          if (v99 >= v100)
          {
            v102 = (2 * v100) | 1;
            v103 = &v8[v102];
            v104 = *v103;
            if (2 * v101 + 2 < v9)
            {
              result = *(v103[1] + 16) & 0x1FFFFFFFFFFFFFFLL;
              if ((*(v104 + 16) & 0x1FFFFFFFFFFFFFFuLL) > result)
              {
                v104 = v103[1];
                ++v103;
                v102 = 2 * v101 + 2;
              }
            }

            v105 = &v8[v101];
            v106 = *v105;
            if ((*(v104 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(*v105 + 16) & 0x1FFFFFFFFFFFFFFuLL))
            {
              do
              {
                v107 = v103;
                *v105 = v104;
                if (v99 < v102)
                {
                  break;
                }

                v108 = (2 * v102) | 1;
                v103 = &v8[v108];
                v109 = 2 * v102 + 2;
                v104 = *v103;
                if (v109 < v9 && (*(v104 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v103[1] + 16) & 0x1FFFFFFFFFFFFFFuLL))
                {
                  v104 = v103[1];
                  ++v103;
                  v108 = v109;
                }

                result = *(v104 + 16) & 0x1FFFFFFFFFFFFFFLL;
                v105 = v107;
                v102 = v108;
              }

              while (result <= (*(v106 + 16) & 0x1FFFFFFFFFFFFFFuLL));
              *v107 = v106;
            }
          }

          v100 = v101 - 1;
        }

        while (v101);
        do
        {
          v110 = 0;
          v111 = *v8;
          v112 = v8;
          do
          {
            v113 = &v112[v110];
            v114 = v113 + 1;
            v115 = v113[1];
            v116 = (2 * v110) | 1;
            v110 = 2 * v110 + 2;
            if (v110 >= v9)
            {
              v110 = v116;
            }

            else
            {
              v119 = v113[2];
              v117 = v113 + 2;
              v118 = v119;
              result = *(v115 + 16) & 0x1FFFFFFFFFFFFFFLL;
              if (result <= (*(v119 + 16) & 0x1FFFFFFFFFFFFFFuLL))
              {
                v110 = v116;
              }

              else
              {
                v115 = v118;
                v114 = v117;
              }
            }

            *v112 = v115;
            v112 = v114;
          }

          while (v110 <= ((v9 - 2) >> 1));
          a2 -= 8;
          if (v114 == a2)
          {
            *v114 = v111;
          }

          else
          {
            *v114 = *a2;
            *a2 = v111;
            v120 = (v114 - v8 + 8) >> 3;
            v121 = v120 < 2;
            v122 = v120 - 2;
            if (!v121)
            {
              v123 = v122 >> 1;
              v124 = &v8[v123];
              v125 = *v124;
              v126 = *v114;
              if ((*(*v124 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v114 + 16) & 0x1FFFFFFFFFFFFFFuLL))
              {
                do
                {
                  v127 = v124;
                  *v114 = v125;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = &v8[v123];
                  v125 = *v124;
                  v114 = v127;
                }

                while ((*(*v124 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v126 + 16) & 0x1FFFFFFFFFFFFFFuLL));
                *v127 = v126;
              }
            }
          }

          v121 = v9-- <= 2;
        }

        while (!v121);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 16) & 0x1FFFFFFFFFFFFFFLL;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v16 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v13 > v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v20 = *v8;
          if ((*(*v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            *v8 = *v10;
            *v10 = v20;
          }
        }
      }

      else
      {
        if (v13 > v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v22 = *(a2 - 1);
        if ((*(v22 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v15 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = *(v24 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v27 = *(a2 - 2);
      v28 = *(v27 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v26 <= (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v28 > v26)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v29 = v8[1];
          if ((*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v29 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            v8[1] = *v23;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v28 > v26)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if ((*(v31 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = *(v34 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v37 = *(a2 - 3);
      v38 = *(v37 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v36 <= (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v38 > v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v39 = v8[2];
          if ((*(*v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v39 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            v8[2] = *v32;
            *v32 = v39;
          }
        }
      }

      else
      {
        if (v38 > v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if ((*(v40 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = *(*v11 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v44 = *v32;
      v45 = *(*v32 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v43 <= (*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v45 <= v43)
        {
          goto LABEL_56;
        }

        *v11 = v44;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v41 = v44;
          goto LABEL_56;
        }
      }

      else if (v45 <= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v44;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v41 = v42;
LABEL_56:
          v46 = *v8;
          *v8 = v41;
          *v11 = v46;
          goto LABEL_57;
        }
      }

      *v23 = v44;
      *v32 = v42;
      goto LABEL_56;
    }

    v17 = *v8;
    v18 = *v11;
    v19 = *(*v8 + 16) & 0x1FFFFFFFFFFFFFFLL;
    if (v19 <= (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      if (v13 > v19)
      {
        *v8 = v12;
        *(a2 - 1) = v17;
        v21 = *v11;
        if ((*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v11 = *v8;
          *v8 = v21;
        }
      }

      goto LABEL_57;
    }

    if (v13 > v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v18;
      goto LABEL_57;
    }

    *v11 = v17;
    *v8 = v18;
    v30 = *(a2 - 1);
    if ((*(v30 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v18 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *v8 = v30;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v47 = *v8;
    if (a4)
    {
      v48 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
LABEL_60:
      v49 = 0;
      do
      {
        v50 = v8[++v49];
      }

      while ((*(v50 + 16) & 0x1FFFFFFFFFFFFFFuLL) > v48);
      v51 = &v8[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while ((*(v54 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= v48);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while ((*(v53 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= v48);
      }

      if (v51 >= v52)
      {
        v61 = v51 - 1;
      }

      else
      {
        v55 = *v52;
        v56 = &v8[v49];
        v57 = v52;
        do
        {
          *v56 = v55;
          *v57 = v50;
          v58 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
          do
          {
            v59 = v56[1];
            ++v56;
            v50 = v59;
          }

          while ((*(v59 + 16) & 0x1FFFFFFFFFFFFFFuLL) > v58);
          do
          {
            v60 = *--v57;
            v55 = v60;
          }

          while ((*(v60 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= v58);
        }

        while (v56 < v57);
        v61 = v56 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v47;
      if (v51 < v52)
      {
        goto LABEL_81;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **>(v8, v61);
      v8 = v61 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **>(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,false>(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v48 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if ((*(*(v8 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL) > v48)
      {
        goto LABEL_60;
      }

      if (v48 <= (*(*(a2 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        v64 = (v8 + 1);
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
        }

        while (v48 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL));
      }

      else
      {
        do
        {
          v63 = v8[1];
          ++v8;
        }

        while (v48 <= (*(v63 + 16) & 0x1FFFFFFFFFFFFFFuLL));
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
        }

        while (v48 > (*(v66 + 16) & 0x1FFFFFFFFFFFFFFuLL));
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          v69 = *(v47 + 16) & 0x1FFFFFFFFFFFFFFLL;
          do
          {
            v70 = v8[1];
            ++v8;
            v67 = v70;
          }

          while (v69 <= (*(v70 + 16) & 0x1FFFFFFFFFFFFFFuLL));
          do
          {
            v71 = *--v65;
            v68 = v71;
          }

          while (v69 > (*(v71 + 16) & 0x1FFFFFFFFFFFFFFuLL));
        }

        while (v8 < v65);
      }

      v72 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v72;
      }

      a4 = 0;
      *v72 = v47;
    }
  }

  v75 = *v8;
  v76 = v8[1];
  v77 = *(v76 + 16) & 0x1FFFFFFFFFFFFFFLL;
  v78 = *(a2 - 1);
  v79 = *(v78 + 16) & 0x1FFFFFFFFFFFFFFLL;
  if (v77 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    if (v79 > v77)
    {
      v8[1] = v78;
      *(a2 - 1) = v76;
      v129 = *v8;
      v128 = v8[1];
      if ((*(v128 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *v8 = v128;
        v8[1] = v129;
      }
    }
  }

  else
  {
    if (v79 <= v77)
    {
      *v8 = v76;
      v8[1] = v75;
      v136 = *(a2 - 1);
      if ((*(v136 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        return result;
      }

      v8[1] = v136;
    }

    else
    {
      *v8 = v78;
    }

    *(a2 - 1) = v75;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 16) & 0x1FFFFFFFFFFFFFFLL;
  v8 = *a3;
  v9 = *(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL;
  if (v7 <= (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    if (v9 <= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v10 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *result = *a2;
        *a2 = v10;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v9 > v7)
    {
      *result = v8;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v6 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if ((*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    *a3 = *a4;
    *a4 = v5;
    v11 = *a2;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  v13 = *a4;
  if ((*(*a5 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    *a4 = *a5;
    *a5 = v13;
    v14 = *a3;
    if ((*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        *a2 = *a3;
        *a3 = v15;
        v16 = *result;
        if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 16) & 0x1FFFFFFFFFFFFFFLL;
      v8 = *(a2 - 1);
      v9 = *(v8 + 16) & 0x1FFFFFFFFFFFFFFLL;
      if (v7 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
        if (v9 > v7)
        {
          a1[1] = v8;
          *(a2 - 1) = v6;
          v31 = *a1;
          v30 = a1[1];
          if ((*(v30 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            *a1 = v30;
            a1[1] = v31;
          }
        }

        return 1;
      }

      if (v9 <= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v44 = *(a2 - 1);
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          return 1;
        }

        a1[1] = v44;
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::DWARFRecordSectionSplitter::operator()(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Symbol **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v26 = *(v23 + 16) & 0x1FFFFFFFFFFFFFFLL;
    if (v25 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      if (v26 <= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v27 = a1;
      v28 = a1 + 1;
      v29 = v21;
      if ((*(v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v24 + 16) & 0x1FFFFFFFFFFFFFFuLL))
      {
LABEL_42:
        v40 = *(a2 - 1);
        if ((*(v40 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v21 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          *v22 = v40;
          *(a2 - 1) = v21;
          v41 = *v22;
          v42 = *v20;
          if ((*(v41 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL))
          {
            a1[1] = v41;
            a1[2] = v42;
            v43 = *a1;
            if ((*(v41 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
            {
              *a1 = v41;
              a1[1] = v43;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v27 = a1;
      v28 = a1 + 2;
      v29 = *a1;
      if (v26 <= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v27 = a1 + 1;
        v28 = a1 + 2;
        v29 = v24;
        if ((*(v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v24 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          goto LABEL_41;
        }
      }
    }

    *v27 = v23;
    *v28 = v24;
    v21 = v29;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if ((*(v3 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v10 = a1[2];
  v12 = a1[1];
  v13 = *a1;
  v14 = *(v12 + 16) & 0x1FFFFFFFFFFFFFFLL;
  v15 = *(v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
  if (v14 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL))
  {
    if (v15 <= v14)
    {
      goto LABEL_27;
    }

    a1[1] = v10;
    *v11 = v12;
    v18 = *(v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v19 = *(v13 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v16 = a1;
    v17 = a1 + 1;
LABEL_25:
    if (v18 <= v19)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v16 = a1;
  v17 = a1 + 2;
  if (v15 <= v14)
  {
    *a1 = v12;
    a1[1] = v13;
    v18 = *(v10 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v19 = *(v13 + 16) & 0x1FFFFFFFFFFFFFFLL;
    v16 = a1 + 1;
    v17 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v16 = v10;
  *v17 = v13;
LABEL_27:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v11;
    if ((*(*v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) > (*(v36 + 16) & 0x1FFFFFFFFFFFFFFuLL))
    {
      v37 = i;
      while (1)
      {
        *(a1 + v37) = v36;
        v38 = v37 - 8;
        if (v37 == 8)
        {
          break;
        }

        v36 = *(a1 + v37 - 16);
        v37 -= 8;
        if ((*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL) <= (*(v36 + 16) & 0x1FFFFFFFFFFFFFFuLL))
        {
          v39 = (a1 + v38);
          goto LABEL_35;
        }
      }

      v39 = a1;
LABEL_35:
      *v39 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v11 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

uint64_t llvm::jitlink::EHFrameEdgeFixer::operator()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, llvm::jitlink::EHFrameEdgeFixer *a3@<X8>, unint64_t *a4@<X3>)
{
  v143 = *MEMORY[0x277D85DE8];
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a4);
  if (result)
  {
    v8 = *(a2 + 184);
    v9 = v8 == 4 || v8 == 8;
    if (!v9)
    {

      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v10 = result;
    v105 = a1;
    v114 = 0;
    v115 = 0;
    v113 = a2;
    v116 = 0;
    v117 = v118;
    v118[0] = 0;
    v119[0] = 0;
    v119[1] = 0;
    v118[1] = 0;
    v120 = 0;
    if (*(a2 + 208))
    {
      v11 = *(a2 + 216);
      if (v11)
      {
        v12 = 24 * v11;
        v13 = *(a2 + 200);
        while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v13 += 3;
          v12 -= 24;
          if (!v12)
          {
            goto LABEL_115;
          }
        }
      }

      else
      {
        v13 = *(a2 + 200);
      }

      v14 = *(a2 + 200) + 24 * v11;
      if (v13 != v14)
      {
        v106 = v14;
        v108 = result;
        while (1)
        {
          v15 = v13[2];
          v16 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v15 + 56);
          v18 = *(v15 + 56) + 8 * *(v15 + 72);
          if (v18 != v16)
          {
            break;
          }

LABEL_52:
          v35 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v15 + 32);
          v37 = *(v15 + 32) + 8 * *(v15 + 48);
          if (v35 != v37)
          {
            v38 = v35;
            do
            {
              v39 = *v38;
              v40 = **v38;
              if (v40)
              {
                v41 = v118[0];
                v42 = v118;
                if (v118[0])
                {
                  v42 = v118;
                  v43 = v118[0];
                  do
                  {
                    if (v40 < v43[4])
                    {
                      v42 = v43;
                    }

                    v43 = v43[v40 >= v43[4]];
                  }

                  while (v43);
                  if (v42 != v118)
                  {
                    v44 = v39[4];
                    v45 = v42[5];
                    v46 = *v45;
                    if (v44 + v40 > *v45)
                    {
                      v47 = v45[4];
                      goto LABEL_70;
                    }
                  }
                }

                if (v42 != v117)
                {
                  v48 = *v42;
                  v49 = v42;
                  if (*v42)
                  {
                    do
                    {
                      v50 = v48;
                      v48 = v48[1];
                    }

                    while (v48);
                  }

                  else
                  {
                    do
                    {
                      v50 = v49[2];
                      v9 = *v50 == v49;
                      v49 = v50;
                    }

                    while (v9);
                  }

                  v51 = v50[5];
                  v46 = *v51;
                  v47 = v51[4];
                  if (v47 + *v51 > v40)
                  {
                    v44 = v39[4];
LABEL_70:
                    llvm::jitlink::BlockAddressMap::overlapError(a3, **v38, v44, v46, v47);
                  }
                }

                if (v118 == v42 || (v52 = v42[4], v52 > v40))
                {
                  v53 = *v42;
                  v54 = v42;
                  if (v42 == v117)
                  {
                    goto LABEL_79;
                  }

                  v55 = *v42;
                  v56 = v42;
                  if (v53)
                  {
                    do
                    {
                      v54 = v55;
                      v55 = v55[1];
                    }

                    while (v55);
                  }

                  else
                  {
                    do
                    {
                      v54 = v56[2];
                      v9 = *v54 == v56;
                      v56 = v54;
                    }

                    while (v9);
                  }

                  if (v54[4] < v40)
                  {
LABEL_79:
                    if (v53)
                    {
                      v57 = v54 + 1;
                    }

                    else
                    {
                      v57 = v42;
                    }

                    if (!*v57)
                    {
                      goto LABEL_105;
                    }
                  }

                  else
                  {
                    if (!v118[0])
                    {
                      goto LABEL_105;
                    }

                    while (1)
                    {
                      while (1)
                      {
                        v61 = v41;
                        v62 = v41[4];
                        if (v62 <= v40)
                        {
                          break;
                        }

                        v41 = *v61;
                        if (!*v61)
                        {
                          goto LABEL_105;
                        }
                      }

                      if (v62 >= v40)
                      {
                        break;
                      }

                      v41 = v61[1];
                      if (!v41)
                      {
                        goto LABEL_105;
                      }
                    }
                  }
                }

                else if (v52 < v40)
                {
                  v58 = v42[1];
                  if (v58)
                  {
                    do
                    {
                      v59 = v58;
                      v58 = *v58;
                      v60 = v59;
                    }

                    while (v58);
                  }

                  else
                  {
                    v60 = v42;
                    do
                    {
                      v63 = v60;
                      v60 = v60[2];
                    }

                    while (*v60 != v63);
                  }

                  if (v60 == v118 || (v64 = v60[4], !v118[0]) || v64 > v40)
                  {
LABEL_105:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      v65 = v41;
                      v66 = v41[4];
                      if (v66 <= v40)
                      {
                        break;
                      }

                      v41 = *v65;
                      if (!*v65)
                      {
                        goto LABEL_105;
                      }
                    }

                    if (v66 >= v40)
                    {
                      break;
                    }

                    v41 = v65[1];
                    if (!v41)
                    {
                      goto LABEL_105;
                    }
                  }
                }
              }

              *a3 = 0;
              do
              {
                ++v38;
              }

              while (v38 != v36 && (*v38 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v38 != v37);
          }

          *a3 = 0;
          v13 += 3;
          v10 = v108;
          if (v13 != v106)
          {
            while (*v13 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v13 += 3;
              if (v13 == v106)
              {
                goto LABEL_115;
              }
            }

            if (v13 != v106)
            {
              continue;
            }
          }

          goto LABEL_115;
        }

        v19 = v16;
        v20 = v17;
        while (1)
        {
          v21 = *v19;
          v134[0] = (*(*v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v19 + 8);
          v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>,llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::FindAndConstruct(v119, v134);
          v23 = v22[1];
          if (!v23)
          {
            goto LABEL_37;
          }

          v24 = v21[2];
          v25 = *v21;
          v26 = *v21 - 1;
          if (v26 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v25 + 8), 1uLL);
            v23 = v22[1];
          }

          v27 = v23[2];
          v28 = *v23;
          if (v28 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v28 + 8), 1uLL);
          }

          v29 = (v24 >> 57) & 1;
          v30 = (v27 >> 57) & 1;
          if (v29 < v30)
          {
            break;
          }

          if (v30 < v29)
          {
            goto LABEL_30;
          }

          v32 = (v24 >> 58) & 3;
          v33 = (v27 >> 58) & 3;
          if (v32 < v33)
          {
            break;
          }

          if (v33 < v32)
          {
LABEL_30:
            v31 = 0;
          }

          else
          {
            if (v25 && !v28)
            {
              break;
            }

            if (v25)
            {
              v34 = v25 >= v28;
            }

            else
            {
              v34 = 1;
            }

            v31 = !v34;
          }

LABEL_31:
          if (v28 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          if (v26 > 0xFFFFFFFFFFFFFFDFLL)
          {
            if (!v31)
            {
              goto LABEL_38;
            }
          }

          else
          {
            atomic_fetch_add((v25 + 8), 0xFFFFFFFFFFFFFFFFLL);
            if ((v31 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

LABEL_37:
          v22[1] = v21;
          do
          {
LABEL_38:
            ++v19;
          }

          while (v19 != v20 && (*v19 | 0x1000) == 0xFFFFFFFFFFFFF000);
          if (v19 == v18)
          {
            goto LABEL_52;
          }
        }

        v31 = 1;
        goto LABEL_31;
      }
    }

LABEL_115:
    __p = 0;
    v111 = 0;
    v112 = 0;
    v67 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v10 + 32);
    v69 = *(v10 + 32) + 8 * *(v10 + 48);
    if (v69 == v67)
    {
      v72 = 0;
      v80 = 0;
    }

    else
    {
      v70 = v67;
      v71 = v68;
      v72 = 0;
      do
      {
        v73 = *v70;
        if (v72 >= v112)
        {
          v74 = (v72 - __p) >> 3;
          if ((v74 + 1) >> 61)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v75 = (v112 - __p) >> 2;
          if (v75 <= v74 + 1)
          {
            v75 = v74 + 1;
          }

          if (v112 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v76 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v75;
          }

          if (v76)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v76);
          }

          v77 = (8 * v74);
          *v77 = v73;
          v72 = (8 * v74 + 8);
          v78 = v77 - (v111 - __p);
          memcpy(v78, __p, v111 - __p);
          v79 = __p;
          __p = v78;
          v111 = v72;
          v112 = 0;
          if (v79)
          {
            operator delete(v79);
          }
        }

        else
        {
          *v72++ = v73;
        }

        v111 = v72;
        do
        {
          ++v70;
        }

        while (v70 != v71 && (*v70 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v70 != v69);
      v80 = __p;
    }

    v81 = 126 - 2 * __clz(v72 - v80);
    if (v72 == v80)
    {
      v82 = 0;
    }

    else
    {
      v82 = v81;
    }

    std::__introsort<std::_ClassicAlgPolicy,llvm::orc::MachOPlatform::MachOPlatformPlugin::findUnwindSectionInfo(llvm::jitlink::LinkGraph &)::$_1 &,llvm::jitlink::Block **,false>(v80, v72, v82, 1);
    v83 = __p;
    v107 = v111;
    if (__p != v111)
    {
      while (1)
      {
        v84 = *v83;
        v85 = *(*v83 + 24);
        if (!v85)
        {
          LOWORD(v125[0]) = 1283;
          v103 = *v105;
          v104 = v105[1];
          v121 = "Unexpected zero-fill block in ";
          v123 = v103;
          v124 = v104;
          operator new();
        }

        v86 = v84[4];
        v109 = v83;
        if (v86)
        {
          break;
        }

        *a3 = 0;
        v83 += 8;
        if (v109 + 8 == v107)
        {
          goto LABEL_161;
        }
      }

      v127 = 0;
      v128 = 0;
      v129 = 0;
      v87 = v84[5];
      v88 = v84[6];
      if (v87 == v88)
      {
        goto LABEL_158;
      }

      v89 = 0;
      while (*(v87 + 24) < 2u)
      {
LABEL_152:
        v87 += 4;
        if (v87 == v88)
        {
          v85 = v84[3];
          v86 = v84[4];
LABEL_158:
          v98 = *(v113 + 188);
          v121 = &unk_2883EA5B0;
          llvm::BinaryStreamRef::BinaryStreamRef(&v122, v85, v86, v98);
        }
      }

      v90 = *(v87 + 2);
      v134[0] = 0;
      v91 = v129;
      if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(v89, v129, v90, v134))
      {
        v99 = *(v87 + 2);
        v134[0] = "{0:x16}";
        v134[1] = 7;
        v134[2] = &v137;
        v134[3] = 1;
        v135 = &unk_2883ECC68;
        LODWORD(v136) = v99;
        v137 = &v135;
        v138[0] = "Multiple relocations at offset ";
        v138[2] = v134;
        v139 = 1539;
        v130[0] = v138;
        v130[2] = " in ";
        v131 = 770;
        v101 = *v105;
        v100 = v105[1];
        v132[0] = v130;
        v132[2] = v101;
        v132[3] = v100;
        v133 = 1282;
        v140 = v132;
        v141 = " block at address ";
        v142 = 770;
        v102 = *v84;
        v121 = "{0:x16}";
        v122 = 7;
        v123 = &v126;
        v124 = 1;
        v125[0] = &unk_2883EC4C0;
        v125[1] = v102;
        v126 = v125;
        operator new();
      }

      v92 = *v87;
      v93 = v87[2];
      v94 = *(v87 + 2);
      v134[0] = 0;
      v95 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(v89, v91, v94, v134);
      v96 = v134[0];
      if (v95)
      {
LABEL_151:
        *(v96 + 8) = v92;
        *(v96 + 16) = v93;
        goto LABEL_152;
      }

      if (4 * v128 + 4 >= 3 * v91)
      {
        v97 = 2 * v91;
      }

      else
      {
        if (v91 + ~v128 - HIDWORD(v128) > v91 >> 3)
        {
LABEL_148:
          LODWORD(v128) = v128 + 1;
          if (*v96 != -1)
          {
            --HIDWORD(v128);
          }

          *v96 = v94;
          *(v96 + 8) = 0;
          *(v96 + 16) = 0;
          goto LABEL_151;
        }

        v97 = v91;
      }

      llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::grow(&v127, v97);
      v134[0] = 0;
      v89 = v127;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(v127, v129, v94, v134);
      v96 = v134[0];
      goto LABEL_148;
    }

LABEL_161:
    *a3 = 0;
    if (__p)
    {
      v111 = __p;
      operator delete(__p);
    }

    MEMORY[0x277C69E30](v119[0], 8);
    std::__tree<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::__map_value_compare<llvm::orc::ExecutorAddr,std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>,std::less<llvm::orc::ExecutorAddr>,true>,std::allocator<std::__value_type<llvm::orc::ExecutorAddr,unsigned long long>>>::destroy(v118[0]);
    return MEMORY[0x277C69E30](v114, 8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t llvm::BinaryStreamReader::readInteger<unsigned char>(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  result = llvm::BinaryStreamRef::readBytes(a2 + 8, a1, *(a2 + 56), 1);
  if (!*a1)
  {
    ++*(a2 + 56);
    result = (*(**(a2 + 24) + 16))(*(a2 + 24));
    *a3 = MEMORY[0];
    *a1 = 0;
  }

  return result;
}

void llvm::jitlink::EHFrameEdgeFixer::readPointerEncoding(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v29 = 0;
  llvm::BinaryStreamReader::readInteger<unsigned char>(v14, a2, &v29);
  v7 = v14[0];
  if (v14[0])
  {
    *(a1 + 8) |= 1u;
    *a1 = v7;
    return;
  }

  v8 = v29;
  if ((((v29 & 0xF) - 1) & 0xFFFFFFF6) == 0 || (v29 & 0x60u) - 96 > 0xFFFFFFBF)
  {
    v14[0] = "{0:x2}";
    v14[1] = 6;
    v14[2] = &v16;
    v14[3] = 1;
    v15[0] = &unk_2883ECC98;
    v15[1] = &v29;
    v16 = v15;
    v17[0] = "Unsupported pointer encoding ";
    v17[2] = v14;
    v18 = 1539;
    *&v19 = v17;
    *&v20 = " for ";
    LOWORD(v21) = 770;
    if (*a4)
    {
      v9 = &v19;
      *&v22 = &v19;
      *&v23 = a4;
      LOWORD(v24) = 770;
      v10 = 2;
      v11 = &v22;
    }

    else
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
      v10 = v21;
      if (v21 == 1)
      {
        v25 = "in CFI record at ";
        v28 = 259;
LABEL_9:
        v12 = *a3;
        v13[0] = &unk_2883EC4C0;
        v13[1] = v12;
        v13[2] = v13;
        operator new();
      }

      v9 = *(&v22 + 1);
      v11 = &v22;
      if (BYTE1(v24) == 1)
      {
        v11 = v22;
      }

      else
      {
        v10 = 2;
      }
    }

    v25 = v11;
    v26 = v9;
    v27 = "in CFI record at ";
    LOBYTE(v28) = v10;
    HIBYTE(v28) = 3;
    goto LABEL_9;
  }

  *(a1 + 8) &= ~1u;
  *a1 = v8;
}

void llvm::jitlink::EHFrameEdgeFixer::getOrCreateEncodedPointerEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::BinaryStreamReader *a5, llvm::BinaryStreamReader *a6, void *a7, uint64_t a8)
{
  if (a5 == 255)
  {
    *(a1 + 8) &= ~1u;
    *a1 = 0;
    return;
  }

  v12 = a5;
  v16 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::find(a4, a8);
  if (*a4 + 24 * *(a4 + 16) != v16)
  {
    v17 = v16;
    llvm::jitlink::EHFrameEdgeFixer::skipEncodedPointer(v41, a2, v12, a6);
    v18 = v41[0];
    if (!v41[0])
    {
      *(a1 + 8) &= ~1u;
      v18 = *(v17 + 8);
LABEL_18:
      *a1 = v18;
      return;
    }

LABEL_17:
    *(a1 + 8) |= 1u;
    goto LABEL_18;
  }

  if ((v12 & 0xF) == 0)
  {
    if (*(a2 + 16) == 8)
    {
      v19 = 4;
    }

    else
    {
      v19 = 3;
    }

    LOBYTE(v12) = v19 | v12;
  }

  v40 = 0;
  v20 = v12 & 0xF;
  if (v20 > 0xA)
  {
    if (v20 == 11)
    {
      goto LABEL_13;
    }

LABEL_16:
    llvm::BinaryStreamReader::readInteger<unsigned long long>(a6, &v40, v41);
    v18 = v41[0];
    if (v41[0])
    {
      goto LABEL_17;
    }

    v21 = v40;
    v22 = 21;
    v23 = 23;
    goto LABEL_20;
  }

  if (v20 != 3)
  {
    goto LABEL_16;
  }

LABEL_13:
  v45[0] = 0;
  llvm::BinaryStreamReader::readInteger<unsigned int>(a6, v45, v41);
  v18 = v41[0];
  if (v41[0])
  {
    goto LABEL_17;
  }

  v21 = v45[0];
  v40 = v45[0];
  v22 = 20;
  v23 = 22;
LABEL_20:
  v24 = v12 & 0x70;
  v25 = v24 == 16;
  if (v24 == 16)
  {
    v26 = *a7 + a8;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v22 = v23;
  }

  v27 = *(a2 + v22);
  v28 = v26 + v21;
  v44 = v26 + v21;
  v30 = a3 + 56;
  v29 = *(a3 + 56);
  v41[0] = 0;
  if (!llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(v29, *(a3 + 72), v26 + v21, v41) || v41[0] == *(a3 + 56) + 16 * *(a3 + 72))
  {
    v32 = (a3 + 40);
    for (i = *(a3 + 40); i; i = i[v36])
    {
      v34 = i[4];
      v35 = v34 > v28;
      v36 = v34 <= v28;
      if (v35)
      {
        v32 = i;
      }
    }

    if (v32 == *(a3 + 32))
    {
      goto LABEL_40;
    }

    v37 = *v32;
    if (*v32)
    {
      do
      {
        v38 = v37;
        v37 = v37[1];
      }

      while (v37);
    }

    else
    {
      do
      {
        v38 = v32[2];
        v25 = *v38 == v32;
        v32 = v38;
      }

      while (v25);
    }

    v39 = v38[5];
    if (v39[4] + *v39 <= v28)
    {
LABEL_40:
      v41[0] = "{0:x16}";
      v41[1] = 7;
      v41[2] = &v43;
      v41[3] = 1;
      v42[0] = &unk_2883EBA18;
      v42[1] = &v44;
      v43 = v42;
      operator new();
    }

    v31 = llvm::jitlink::LinkGraph::addAnonymousSymbol(*a3, v39, v28 - *v39, 0, 0, 0);
    v41[0] = (v31[2] & 0x1FFFFFFFFFFFFFFLL) + *v31[1];
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>,llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::FindAndConstruct(v30, v41)[1] = v31;
  }

  else
  {
    v31 = *(v41[0] + 8);
  }

  llvm::jitlink::Block::addEdge(a7, v27, a8, v31, 0);
  *(a1 + 8) &= ~1u;
  *a1 = v31;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::find(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), a2, &v4))
  {
    return v4;
  }

  else
  {
    return *a1 + 24 * *(a1 + 16);
  }
}

void llvm::jitlink::EHFrameEdgeFixer::ParseContext::findCIEInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v7[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*(a2 + 8), *(a2 + 24), a3, v7))
  {
    v5 = v7[0] == *(a2 + 8) + 24 * *(a2 + 24);
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v7[0] = "{0:x16}";
    v7[1] = 7;
    v7[2] = &v9;
    v7[3] = 1;
    v8[0] = &unk_2883EBA18;
    v8[1] = &v10;
    v9 = v8;
    operator new();
  }

  v6 = v7[0] + 8;
  *(a1 + 8) &= ~1u;
  *a1 = v6;
}

std::string *llvm::jitlink::EHFrameEdgeFixer::skipEncodedPointer(llvm::jitlink::EHFrameEdgeFixer *this, uint64_t a2, llvm::BinaryStreamReader *a3, llvm::BinaryStreamReader *a4)
{
  if ((a3 & 0xFu) <= 3)
  {
    if ((a3 & 0xF) != 0 || *(a2 + 16) != 8)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = this;
    v6 = a4;
    v7 = 8;
    goto LABEL_8;
  }

  if ((a3 & 0xF) != 0xB)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = this;
  v6 = a4;
  v7 = 4;
LABEL_8:
  result = llvm::BinaryStreamReader::skip(v6, v7, v5);
  if (!*this)
  {
    *this = 0;
  }

  return result;
}

uint64_t llvm::jitlink::EHFrameNullTerminator::operator()@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>, unint64_t *a4@<X3>)
{
  result = llvm::jitlink::LinkGraph::findSectionByName(a2, *a1, a1[1], a4);
  if (result)
  {
    v11[0] = &llvm::jitlink::EHFrameNullTerminator::NullTerminatorBlockContent;
    v11[1] = 4;
    v9 = 1;
    v10 = -5;
    v8 = 0;
    v7 = llvm::jitlink::LinkGraph::createBlock<llvm::jitlink::Section &,llvm::ArrayRef<char> &,llvm::orc::ExecutorAddr &,unsigned long long &,unsigned long long &>(a2, result, v11, &v10, &v9, &v8);
    result = llvm::jitlink::LinkGraph::addAnonymousSymbol(a2, v7, 0, 4, 0, 1);
  }

  *a3 = 0;
  return result;
}

uint64_t llvm::Twine::concat(uint64_t this, const llvm::Twine *a2, uint64_t *a3)
{
  v3 = *(a2 + 32);
  if (!*(a2 + 32) || (v4 = *(a3 + 32), !*(a3 + 32)))
  {
    *(this + 32) = 256;
    return this;
  }

  if (v3 == 1)
  {
    v5 = *(a3 + 1);
    *this = *a3;
    *(this + 16) = v5;
    v6 = a3[4];
LABEL_8:
    *(this + 32) = v6;
    return this;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 1);
    *this = *a2;
    *(this + 16) = v7;
    v6 = *(a2 + 4);
    goto LABEL_8;
  }

  v8 = *(a2 + 33);
  if (v8 == 1)
  {
    v9 = a2;
    a2 = *a2;
    v8 = *(v9 + 1);
  }

  else
  {
    LOBYTE(v3) = 2;
  }

  v10 = a3[1];
  if (*(a3 + 33) == 1)
  {
    v11 = *a3;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = a3;
  }

  *this = a2;
  *(this + 8) = v8;
  *(this + 16) = v11;
  *(this + 24) = v10;
  *(this + 32) = v3;
  *(this + 33) = v4;
  return this;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>,llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -1)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

char *llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::Symbol *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
        }

        v11 += 2;
        v16 += 32;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>,unsigned long long,unsigned long,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned long>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v20, &v31);
          v21 = v31;
          v22 = v19[1];
          *v31 = *v19;
          v21[1] = v22;
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    v29 = result + 16;
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_2750C1210)));
      if (v30.i8[0])
      {
        *(v29 - 2) = -1;
      }

      if (v30.i8[4])
      {
        *v29 = -1;
      }

      v24 += 2;
      v29 += 32;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::jitlink::BlockAddressMap::overlapError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = "{0:x16} -- {1:x16}";
  v12[1] = 18;
  v12[2] = v15;
  v12[3] = 2;
  v13[0] = &unk_2883EB9E8;
  v13[1] = a2;
  v14[0] = &unk_2883EB9E8;
  v14[1] = a3 + a2;
  v15[0] = v13;
  v15[1] = v14;
  v16[0] = "Block at ";
  v16[2] = v12;
  v17 = 1539;
  v18 = v16;
  v19 = " overlaps ";
  v20 = 770;
  v5 = "{0:x16} -- {1:x16}";
  v6 = 18;
  v7 = v11;
  v8 = 2;
  v9[0] = &unk_2883EB9E8;
  v9[1] = a4;
  v10[0] = &unk_2883EB9E8;
  v10[1] = a5 + a4;
  v11[0] = v9;
  v11[1] = v10;
  operator new();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 24 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      v14 = result + 48;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1210)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 12) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 6) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1830)))).i32[1])
        {
          *v14 = -1;
          *(v14 + 6) = -1;
        }

        v11 += 4;
        v14 += 96;
      }

      while (((v12 / 0x18 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 24 * v3;
      v18 = v4;
      do
      {
        v19 = *v18;
        if (*v18 <= 0xFFFFFFFD)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>,unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::jitlink::EHFrameEdgeFixer::EdgeTarget>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v19, &v28);
          v20 = v28;
          *v28 = *v18;
          *(v20 + 2) = *(v18 + 8);
          ++*(a1 + 8);
        }

        v18 += 24;
        v17 -= 24;
      }

      while (v17);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 24 * v21 - 24;
    v24 = vdupq_n_s64(v23 / 0x18);
    v25 = result + 48;
    do
    {
      v26 = vdupq_n_s64(v22);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2750C1210)));
      if (vuzp1_s16(v27, *v24.i8).u8[0])
      {
        *(v25 - 12) = -1;
      }

      if (vuzp1_s16(v27, *&v24).i8[2])
      {
        *(v25 - 6) = -1;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2750C1830)))).i32[1])
      {
        *v25 = -1;
        *(v25 + 6) = -1;
      }

      v22 += 4;
      v25 += 96;
    }

    while (((v23 / 0x18 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v22);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>,llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), *a2, &v9);
  result = v9;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>::grow(a1, v7);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), *a2, &v9);
    result = v9;
  }

  ++*(a1 + 8);
  if (*result != -1)
  {
    --*(a1 + 12);
  }

  v8 = *a2;
  result[1] = 0;
  result[2] = 0;
  *result = v8;
  return result;
}

void *llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::jitlink::EHFrameEdgeFixer::CIEInformation>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[3] = -1;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>,llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,std::shared_ptr<llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>>::LookupBucketFor<llvm::orc::ExecutorAddr>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_2750C1210)));
      if (v23.i8[0])
      {
        *result = -1;
      }

      if (v23.i8[4])
      {
        result[3] = -1;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

llvm::raw_ostream *llvm::format_provider<unsigned char,void>::format(unsigned __int8 *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return llvm::write_integer(a2, *a1, v14, v12);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *a1, v7, v10, 1);
}

llvm::raw_ostream *llvm::jitlink::JITLinkError::log(llvm::jitlink::JITLinkError *this, llvm::raw_ostream *a2)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  v6 = v3[23];
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = v3[23];
  }

  else
  {
    v8 = *(v3 + 1);
  }

  return llvm::raw_ostream::write(a2, v7, v8);
}

uint64_t llvm::jitlink::JITLinkError::convertToErrorCode(llvm::jitlink::JITLinkError *this)
{
  {
  }

  return 1;
}

const char *llvm::jitlink::getGenericEdgeKindName(llvm::jitlink *this)
{
  v1 = "<Unrecognized edge kind>";
  if (this == 1)
  {
    v1 = "Keep-Alive";
  }

  if (this)
  {
    return v1;
  }

  else
  {
    return "INVALID RELOCATION";
  }
}

void llvm::jitlink::Section::~Section(llvm::jitlink::Section *this)
{
  v2 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 56);
  v4 = *(this + 7) + 8 * *(this + 18);
  if (v4 != v2)
  {
    do
    {
      v5 = **v2;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        ++v2;
      }

      while (v2 != v3 && (*v2 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v2 != v4);
  }

  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 32);
  v8 = *(this + 4) + 8 * *(this + 12);
  if (v8 != v6)
  {
    v9 = v6;
    v10 = v7;
    do
    {
      v11 = *(*v9 + 40);
      if (v11)
      {
        *(*v9 + 48) = v11;
        operator delete(v11);
      }

      do
      {
        ++v9;
      }

      while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v9 != v8);
  }

  MEMORY[0x277C69E30](*(this + 7), 8);
  MEMORY[0x277C69E30](*(this + 4), 8);
}

void llvm::jitlink::LinkGraph::~LinkGraph(llvm::jitlink::LinkGraph *this)
{
  v2 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 248);
  v4 = *(this + 31) + 8 * *(this + 66);
  if (v4 != v2)
  {
    do
    {
      v5 = **v2;
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        ++v2;
      }

      while (v2 != v3 && (*v2 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v2 != v4);
  }

  v6 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(this + 224);
  v8 = *(this + 28) + 8 * *(this + 60);
  if (v8 != v6)
  {
    do
    {
      v9 = **v6;
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      do
      {
        ++v6;
      }

      while (v6 != v7 && (*v6 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v6 != v8);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::clear(this + 224);
  v16 = (this + 272);
  std::vector<llvm::orc::shared::AllocActionCallPair>::__destroy_vector::operator()[abi:nn200100](&v16);
  MEMORY[0x277C69E30](*(this + 31), 8);
  MEMORY[0x277C69E30](*(this + 28), 8);
  v10 = *(this + 54);
  v11 = *(this + 25);
  if (v10)
  {
    v12 = 24 * v10;
    v13 = (v11 + 16);
    do
    {
      if (*(v13 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = *v13;
        *v13 = 0;
        if (v14)
        {
          llvm::jitlink::Section::~Section(v14);
          MEMORY[0x277C69E40]();
        }
      }

      v13 += 3;
      v12 -= 24;
    }

    while (v12);
    v11 = *(this + 25);
  }

  MEMORY[0x277C69E30](v11, 8);
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  v15 = *(this + 16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this);
}

void llvm::jitlink::LinkGraph::splitBlockImpl(uint64_t **a1@<X1>, void **a2@<X2>, uint64_t **a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a1;
  v97 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  v8 = **a1;
  v9 = v8[3];
  v10 = v8[4];
  if (v7 - *a1 != 8)
  {
    v11 = 0;
    do
    {
      v12 = &v6[v11];
      v13 = *v12;
      v14 = *(*v12 + 8);
      v15 = *v12[1] - **v12;
      v13[3] = v9 + *v13 - **v6;
      v13[4] = v15;
      v13[1] = v14 & 0xFFFFFFFFFFFFFFFBLL;
      v6 = *a1;
      v7 = a1[1];
      v16 = v11++ == v7 - *a1 - 2;
    }

    while (!v16);
    v8 = *v6;
  }

  v17 = *(v7 - 1);
  v18 = v17[1];
  v19 = *v17 - *v8;
  v17[3] = v9 + v19;
  v17[4] = v10 - v19;
  v17[1] = v18 & 0xFFFFFFFFFFFFFFFBLL;
  v20 = *a1;
  v21 = a1[1];
  if (*a1 != v21)
  {
    v22 = *(*v20 + 8) & 4;
    do
    {
      v23 = *v20++;
      *(v23 + 8) = *(v23 + 8) & 0xFFFFFFFFFFFFFFFBLL | v22;
    }

    while (v20 != v21);
  }

  LOBYTE(v94[0]) = 0;
  v96 = 0;
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = v94;
  }

  if ((v24[10] & 1) == 0)
  {
    v92[0] = v93;
    v92[1] = 0x800000000;
    std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>>::operator=[abi:nn200100]<llvm::SmallVector<llvm::jitlink::Symbol *,8u>,void>(v24, v92);
    if (v92[0] != v93)
    {
      free(v92[0]);
    }

    v25 = *(**v5 + 16);
    v26 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v25 + 56);
    v28 = *(v25 + 56) + 8 * *(v25 + 72);
    if (v28 != v26)
    {
      v29 = v26;
      v30 = v27;
      do
      {
        if (*(*v29 + 8) == **v5)
        {
          llvm::SmallVectorTemplateBase<void *,true>::push_back(v24, *v29);
        }

        do
        {
          ++v29;
        }

        while (v29 != v30 && (*v29 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v29 != v28);
    }

    v31 = v94;
    if (a2)
    {
      v31 = a2;
    }

    v32 = *(v31 + 2);
    v33 = 126 - 2 * __clz(v32);
    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,false>(*v24, *v24 + v32, v34, 1);
  }

  if (a2)
  {
    v35 = a2;
  }

  else
  {
    v35 = v94;
  }

  v36 = *v5;
  v37 = *(v35 + 2);
  if (v5[1] - *v5 != 8)
  {
    v38 = 0;
    do
    {
      if (!v37)
      {
        break;
      }

      v39 = *(*v24 + v37 - 1);
      v40 = *(v39 + 16);
      v41 = **(v39 + 8);
      v42 = (v40 & 0x1FFFFFFFFFFFFFFLL) + v41;
      while (1)
      {
        v43 = &v36[v38];
        if (v42 >= *v43[1])
        {
          break;
        }

        v44 = *v43;
        v45 = v40 + v41 - **v43;
        *(v39 + 8) = *v43;
        *(v39 + 16) = v40 & 0xFE00000000000000 | v45 & 0x1FFFFFFFFFFFFFFLL;
        v46 = v44[4];
        if (*(v39 + 24) > v46)
        {
          *(v39 + 24) = v46 - (v45 & 0x1FFFFFFFFFFFFFFLL);
        }

        v37 = *(v35 + 2) - 1;
        *(v35 + 2) = v37;
        if (!v37)
        {
          v36 = *v5;
          break;
        }

        v39 = *(*v24 + v37 - 1);
        v40 = *(v39 + 16);
        v41 = **(v39 + 8);
        v42 = (v40 & 0x1FFFFFFFFFFFFFFLL) + v41;
        v36 = *v5;
      }

      v16 = v38++ == v5[1] - v36 - 2;
    }

    while (!v16);
  }

  for (; v37; v37 = *(v35 + 2))
  {
    v47 = *(*v24 + v37 - 1);
    *(v35 + 2) = v37 - 1;
    v48 = *(v5[1] - 1);
    v49 = *(v47 + 16);
    v50 = v49 + **(v47 + 8) - *v48;
    *(v47 + 8) = v48;
    *(v47 + 16) = v49 & 0xFE00000000000000 | v50 & 0x1FFFFFFFFFFFFFFLL;
    v51 = v48[4];
    if (*(v47 + 24) > v51)
    {
      *(v47 + 24) = v51 - (v50 & 0x1FFFFFFFFFFFFFFLL);
    }
  }

  if (v96 == 1 && v94[0] != &v95)
  {
    free(v94[0]);
  }

  v52 = **v5;
  v53 = *(v52 + 40);
  v54 = *(v52 + 48);
  v55 = 126 - 2 * __clz((v54 - v53) >> 5);
  if (v54 == v53)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,false>(v53, v54, v56, 1, a4);
  v57 = *v5;
  v58 = v5[1];
  v59 = v58 - *v5;
  v60 = v59 - 1;
  if (v59 != 1)
  {
    v61 = *(v52 + 40);
    v62 = *(v52 + 48);
    v91 = v5;
    do
    {
      if (v61 == v62)
      {
        break;
      }

      v63 = v57[v60];
      v64 = *v63 - **v57;
      if (*(v62 - 24) >= v64)
      {
        v65 = (v62 - 56);
        v66 = ((v62 - v61) >> 5) - 1;
        v67 = v62 - v61 - 32;
        do
        {
          v68 = v66;
          v69 = v67;
          if (!v66)
          {
            break;
          }

          v70 = *v65;
          v65 -= 8;
          --v66;
          v67 -= 32;
        }

        while (v70 >= v64);
        if (v68 == (v62 - v61) >> 5)
        {
          v71 = (v62 - v61) >> 5;
        }

        else
        {
          v72 = *(v63 + 48);
          v71 = v68;
          do
          {
            v73 = (v61 + v69);
            v74 = *(v63 + 56);
            if (v72 >= v74)
            {
              v77 = *(v63 + 40);
              v78 = (v72 - v77) >> 5;
              if ((v78 + 1) >> 59)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v79 = v74 - v77;
              v80 = v79 >> 4;
              if (v79 >> 4 <= (v78 + 1))
              {
                v80 = v78 + 1;
              }

              if (v79 >= 0x7FFFFFFFFFFFFFE0)
              {
                v81 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v81 = v80;
              }

              if (v81)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::jitlink::Edge>>(v63 + 40, v81);
              }

              v82 = (32 * v78);
              v83 = v73[1];
              *v82 = *v73;
              v82[1] = v83;
              v76 = 32 * v78 + 32;
              v84 = *(v63 + 40);
              v85 = *(v63 + 48) - v84;
              v86 = v82 - v85;
              memcpy(v82 - v85, v84, v85);
              v87 = *(v63 + 40);
              *(v63 + 40) = v86;
              *(v63 + 48) = v76;
              *(v63 + 56) = 0;
              if (v87)
              {
                operator delete(v87);
              }

              v5 = v91;
            }

            else
            {
              v75 = v73[1];
              *v72 = *v73;
              v72[1] = v75;
              v76 = (v72 + 2);
            }

            *(v63 + 48) = v76;
            v57 = *v5;
            v63 = (*v5)[v60];
            v72 = *(v63 + 48);
            *(v72 - 6) -= v64;
            ++v71;
            v61 = *(v52 + 40);
            v62 = *(v52 + 48);
            v69 += 32;
          }

          while (v71 != (v62 - v61) >> 5);
        }

        if (v71 > v68)
        {
          v88 = v62 - v61 - 32;
          do
          {
            v62 -= 32;
            v89 = v68 >= v88 >> 5;
            v88 -= 32;
          }

          while (!v89);
          *(v52 + 48) = v62;
        }
      }

      --v60;
    }

    while (v60);
    v58 = v5[1];
  }

  *a3 = v57;
  a3[1] = v58;
  a3[2] = v5[2];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
}

void llvm::jitlink::markAllSymbolsLive(llvm::jitlink *this@<X0>, void *a2@<X8>)
{
  llvm::jitlink::LinkGraph::defined_symbols(v10, this);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v8[2] = v10[2];
  v9 = v11;
  v3 = v12;
  v4 = v13;
  v5 = v11;
  if (*&v10[0] != v12 || v11 != v13)
  {
    do
    {
      *(*v5 + 16) |= 0x1000000000000000uLL;
      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(v8, &v7);
      v5 = v9;
    }

    while (*&v8[0] != v3 || v9 != v4);
  }

  *a2 = 0;
}

void llvm::jitlink::makeTargetOutOfRangeError(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(v70, 0, sizeof(v70));
  v62 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 1;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v61 = &unk_2883EB8F0;
  v69 = v70;
  llvm::raw_ostream::SetUnbuffered(&v61);
  v6 = a2[2];
  v7 = v65;
  if ((v64 - v65) > 8)
  {
    v65[8] = 32;
    *v7 = *"In graph ";
    v65 += 9;
  }

  else
  {
    llvm::raw_ostream::write(&v61, "In graph ", 9uLL);
  }

  v8 = *(a1 + 119);
  if (v8 >= 0)
  {
    v9 = (a1 + 96);
  }

  else
  {
    v9 = *(a1 + 96);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 119);
  }

  else
  {
    v10 = *(a1 + 104);
  }

  llvm::raw_ostream::write(&v61, v9, v10);
  v11 = v65;
  if ((v64 - v65) > 9)
  {
    *(v65 + 4) = 8302;
    *v11 = *", section ";
    v65 += 10;
  }

  else
  {
    llvm::raw_ostream::write(&v61, ", section ", 0xAuLL);
  }

  v12 = llvm::raw_ostream::operator<<(&v61, *v6, *(v6 + 8));
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0x13)
  {
    *(v13 + 16) = 544499047;
    *v13 = *": relocation target ";
    *(v12 + 4) += 20;
  }

  else
  {
    llvm::raw_ostream::write(v12, ": relocation target ", 0x14uLL);
  }

  if (**a3)
  {
    if (v64 == v65)
    {
      llvm::raw_ostream::write(&v61, "", 1uLL);
    }

    else
    {
      *v65++ = 34;
    }

    v18 = llvm::raw_ostream::operator<<(&v61, (**a3 + 16), ***a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) == v19)
    {
      llvm::raw_ostream::write(v18, "", 1uLL);
    }

    else
    {
      *v19 = 34;
      ++*(v18 + 4);
    }
  }

  else
  {
    v14 = *(*(*a3 + 8) + 16);
    v15 = llvm::raw_ostream::operator<<(&v61, *v14, *(v14 + 8));
    v16 = v15;
    v17 = *(v15 + 4);
    if ((*(v15 + 3) - v17) > 2)
    {
      *(v17 + 2) = 32;
      *v17 = 11040;
      *(v15 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v15, " + ", 3uLL);
    }

    v20 = *(a3 + 8);
    v54 = "{0:x}";
    v55 = 5;
    v56 = &v60;
    v57 = 1;
    v58 = &unk_2883ECC68;
    LODWORD(v59) = v20;
    v60 = &v58;
    llvm::formatv_object_base::format(&v54, v16);
  }

  v21 = v65;
  if ((v64 - v65) > 0xB)
  {
    *(v65 + 2) = 544437093;
    *v21 = *" at address ";
    v65 += 12;
  }

  else
  {
    llvm::raw_ostream::write(&v61, " at address ", 0xCuLL);
  }

  v22 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  v54 = "{0:x}";
  v55 = 5;
  v56 = &v60;
  v57 = 1;
  v58 = &unk_2883EC4C0;
  v59 = v22;
  v60 = &v58;
  llvm::formatv_object_base::format(&v54, &v61);
  v23 = v65;
  if ((v64 - v65) > 0x13)
  {
    *(v65 + 4) = 543584032;
    *v23 = *" is out of range of ";
    v65 += 20;
  }

  else
  {
    llvm::raw_ostream::write(&v61, " is out of range of ", 0x14uLL);
  }

  v24 = (*(a1 + 192))(*(a3 + 24));
  v25 = llvm::raw_ostream::operator<<(&v61, v24);
  v26 = v25;
  v27 = *(v25 + 4);
  if ((*(v25 + 3) - v27) > 9)
  {
    *(v27 + 8) = 8308;
    *v27 = *" fixup at ";
    *(v25 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v25, " fixup at ", 0xAuLL);
  }

  v28 = *a2 + *(a3 + 8);
  v47 = "{0:x}";
  v48 = 5;
  v49 = &v53;
  v50 = 1;
  v51 = &unk_2883EC4C0;
  v52 = v28;
  v53 = &v51;
  llvm::formatv_object_base::format(&v47, v26);
  v29 = *(v26 + 4);
  if (*(v26 + 3) - v29 > 1uLL)
  {
    *v29 = 10272;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, " (", 2uLL);
  }

  v30 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v6 + 56);
  v32 = *(v6 + 56) + 8 * *(v6 + 72);
  if (v32 == v30)
  {
    goto LABEL_57;
  }

  v33 = 0;
  do
  {
    v34 = *v30;
    if (*(*v30 + 8) == a2)
    {
      if (*v34)
      {
        v35 = v34[2];
        if ((v35 & 0x1FFFFFFFFFFFFFFLL) == 0)
        {
          if (!v33 || ((v36 = v33[2], v38 = ((v35 >> 58) & 3) >= ((v36 >> 58) & 3), v37 = (v35 >> 57) & 1, v38) ? (v38 = v37 >= ((v36 & 0x200000000000000) != 0)) : (v38 = 0), !v38))
          {
            v33 = *v30;
          }
        }
      }
    }

    do
    {
      ++v30;
    }

    while (v30 != v31 && (*v30 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v30 != v32);
  if (!v33)
  {
LABEL_57:
    v43 = v65;
    if ((v64 - v65) <= 0x13)
    {
      v41 = "<anonymous block> @ ";
      v39 = &v61;
      v42 = 20;
      goto LABEL_59;
    }

    *(v65 + 4) = 541073470;
    *v43 = *"<anonymous block> @ ";
    v65 += 20;
  }

  else
  {
    v39 = llvm::raw_ostream::operator<<(&v61, *v33 + 2, **v33);
    v40 = *(v39 + 4);
    if (*(v39 + 3) - v40 <= 1uLL)
    {
      v41 = ", ";
      v42 = 2;
LABEL_59:
      llvm::raw_ostream::write(v39, v41, v42);
      goto LABEL_62;
    }

    *v40 = 8236;
    *(v39 + 4) += 2;
  }

LABEL_62:
  v44 = *a2;
  v54 = "{0:x}";
  v55 = 5;
  v56 = &v60;
  v57 = 1;
  v58 = &unk_2883EC4C0;
  v59 = v44;
  v60 = &v58;
  llvm::formatv_object_base::format(&v54, &v61);
  v45 = v65;
  if ((v64 - v65) > 2)
  {
    v65[2] = 32;
    *v45 = 11040;
    v65 += 3;
  }

  else
  {
    llvm::raw_ostream::write(&v61, " + ", 3uLL);
  }

  v46 = *(a3 + 8);
  v47 = "{0:x}";
  v48 = 5;
  v49 = &v53;
  v50 = 1;
  v51 = &unk_2883ECC68;
  LODWORD(v52) = v46;
  v53 = &v51;
  llvm::formatv_object_base::format(&v47, &v61);
  if (v64 == v65)
  {
    llvm::raw_ostream::write(&v61, ")", 1uLL);
  }

  else
  {
    *v65++ = 41;
  }

  llvm::raw_ostream::~raw_ostream(&v61);
  llvm::make_error<llvm::jitlink::JITLinkError,std::string>();
}

void llvm::jitlink::makeAlignmentError(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = v44 + 1;
    do
    {
      *--v8 = llvm::hexdigit(unsigned int,BOOL)::LUT[a1 & 0xF];
      v9 = a1 > 0xF;
      a1 >>= 4;
    }

    while (v9);
  }

  else
  {
    v8 = v44;
    LOBYTE(v44[0]) = 48;
  }

  std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v8, v44 + 1, v44 + 1 - v8);
  v10 = std::string::insert(&__dst, 0, "0x");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v25, " improper alignment for relocation ");
  v13 = v12->__r_.__value_.__r.__words[2];
  *v26 = *&v12->__r_.__value_.__l.__data_;
  v27 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  LOBYTE(v13) = *(a4 + 24);
  v43[0] = "{0:d}";
  v43[1] = 5;
  v44[0] = &v47;
  v44[1] = 1;
  v45 = &unk_2883ECD40;
  v46 = v13;
  v47 = &v45;
  v28[0] = v26;
  v28[2] = v43;
  v29 = 1540;
  v30[0] = v28;
  v30[2] = ": 0x";
  v31 = 770;
  if (a2)
  {
    v14 = v49;
    do
    {
      *--v14 = llvm::hexdigit(unsigned int,BOOL)::LUT[a2 & 0xF];
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  else
  {
    v14 = v48;
    v48[0] = 48;
  }

  v15 = __p;
  std::string::__init_with_size[abi:nn200100]<char *,char *>(__p, v14, v49, v49 - v14);
  v16 = v31;
  if (v31 == 1)
  {
    v32 = __p;
    v34 = v23;
    v35 = 260;
    v36 = v21;
    v37 = v22;
    v17 = 4;
    v18 = v33;
  }

  else
  {
    if (!v31)
    {
      v35 = 256;
      v39 = 256;
      v42 = 256;
      goto LABEL_19;
    }

    v19 = v30[0];
    v17 = 2;
    if (HIBYTE(v31) != 1)
    {
      v16 = 2;
      v19 = v30;
    }

    v32 = v19;
    v33 = v30[1];
    *&v34 = __p;
    LOBYTE(v35) = v16;
    v18 = 4;
    HIBYTE(v35) = 4;
    v15 = &v32;
  }

  v38[0] = v15;
  v38[1] = v18;
  v38[2] = " is not aligned to ";
  LOBYTE(v39) = v17;
  HIBYTE(v39) = 3;
  v40 = v38;
  v41 = a3;
  v42 = 2306;
LABEL_19:
  operator new();
}

void llvm::jitlink::createLinkGraphFromObject(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = llvm::identify_magic(*a1, *(a1 + 1));
  if (v6 != 4)
  {
    if (v6 != 24)
    {
      if (v6 == 9)
      {
        v7 = a1[1];
        v13 = *a1;
        v14 = v7;
        v12 = *a2;
        *a2 = 0;
        *(a2 + 1) = 0;
        llvm::jitlink::createLinkGraphFromMachOObject(&v13, &v12);
      }

      llvm::make_error<llvm::jitlink::JITLinkError,char const(&)[53]>();
    }

    v8 = a1[1];
    v13 = *a1;
    v14 = v8;
    v10 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    llvm::jitlink::createLinkGraphFromCOFFObject(&v13, &v10, a3);
  }

  v9 = a1[1];
  v13 = *a1;
  v14 = v9;
  v11 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  llvm::jitlink::createLinkGraphFromELFObject(&v13, &v11, a3);
  if (*(&v11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v11 + 1));
  }
}

void llvm::jitlink::absoluteSymbolsLinkGraph(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4 <= 0x26 && (((1 << v4) & 0x2008000002) != 0 || ((1 << v4) & 0x4010000008) != 0))
  {
    std::to_string(&v8, atomic_fetch_add_explicit(&llvm::jitlink::absoluteSymbolsLinkGraph(llvm::Triple const&,std::shared_ptr<llvm::orc::SymbolStringPool>,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>)::Counter, 1uLL, memory_order_relaxed));
    v5 = std::string::insert(&v8, 0, "<Absolute Symbols ");
    v6 = v5->__r_.__value_.__r.__words[2];
    *&v9.__r_.__value_.__l.__data_ = *&v5->__r_.__value_.__l.__data_;
    v9.__r_.__value_.__r.__words[2] = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v9, ">");
    v10[0] = v7->__r_.__value_.__l.__size_;
    *(v10 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    operator new();
  }

  llvm::report_fatal_error("unhandled target architecture", 1, a3);
}

llvm::jitlink::LinkGraph **llvm::jitlink::link(llvm::jitlink::LinkGraph **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 45);
  switch(v3)
  {
    case 1:
      *a1 = 0;
      v11 = v2;
      v8 = *a2;
      *a2 = 0;
      v10 = v8;
      llvm::jitlink::link_COFF(&v11, &v10);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      v5 = &v11;
      break;
    case 3:
      *a1 = 0;
      v13 = v2;
      v6 = *a2;
      *a2 = 0;
      v12 = v6;
      llvm::jitlink::link_ELF(&v13, &v12);
      v7 = v12;
      v12 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v5 = &v13;
      break;
    case 5:
      *a1 = 0;
      v15 = v2;
      v4 = *a2;
      *a2 = 0;
      v14 = v4;
      llvm::jitlink::link_MachO(&v15, &v14);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v5 = &v15;
      break;
    default:
      operator new();
  }

  return std::unique_ptr<llvm::jitlink::LinkGraph>::~unique_ptr[abi:nn200100](v5);
}

void llvm::jitlink::JITLinkError::~JITLinkError(void **this)
{
  *this = &unk_2883ECD70;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883ECD70;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::JITLinkerErrorCategory::~JITLinkerErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v8;
        if ((*(v78 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v78 + 8) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
        {
          *v8 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(v8, v8 + 1, v8 + 2, a2 - 1);
    }

    if (v9 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(v8, v8 + 1, v8 + 2, v8 + 3);
      v73 = *(a2 - 1);
      v74 = v8[3];
      if ((*(v73 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v73 + 8) <= (*(v74 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v74 + 8))
      {
        return result;
      }

      v8[3] = v73;
      *(a2 - 1) = v74;
      v76 = v8[2];
      v75 = v8[3];
      if ((*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v75 + 8) <= (*(v76 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v76 + 8))
      {
        return result;
      }

      v8[2] = v75;
      v8[3] = v76;
      v77 = v8[1];
      if ((*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v75 + 8) <= (*(v77 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v77 + 8))
      {
        return result;
      }

      v8[1] = v75;
      v8[2] = v77;
      goto LABEL_166;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v85 = v8 + 1;
      v87 = v8 == a2 || v85 == a2;
      if (a4)
      {
        if (!v87)
        {
          v88 = 8;
          v89 = v8;
          do
          {
            v91 = *v89;
            v90 = v89[1];
            v89 = v85;
            if ((*(v90 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v90 + 8) > (*(v91 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v91 + 8))
            {
              v92 = v88;
              while (1)
              {
                *(v8 + v92) = v91;
                v93 = v92 - 8;
                if (v92 == 8)
                {
                  break;
                }

                v91 = *(v8 + v92 - 16);
                v92 -= 8;
                if ((*(v90 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v90 + 8) <= (*(v91 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v91 + 8))
                {
                  v94 = (v8 + v93);
                  goto LABEL_130;
                }
              }

              v94 = v8;
LABEL_130:
              *v94 = v90;
            }

            v85 = v89 + 1;
            v88 += 8;
          }

          while (v89 + 1 != a2);
        }
      }

      else if (!v87)
      {
        do
        {
          v126 = *v7;
          v125 = v7[1];
          v7 = v85;
          if ((*(v125 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v125 + 8) > (*(v126 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v126 + 8))
          {
            v127 = v85;
            do
            {
              *v127 = v126;
              v126 = *(v127 - 2);
              --v127;
            }

            while ((*(v125 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v125 + 8) > (*(v126 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v126 + 8));
            *v127 = v125;
          }

          ++v85;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v95 = (v9 - 2) >> 1;
        v96 = v95;
        do
        {
          v97 = v96;
          if (v95 >= v96)
          {
            v98 = (2 * v96) | 1;
            v99 = &v8[v98];
            v100 = *v99;
            if (2 * v97 + 2 < v9 && (*(v100 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v100 + 8) > (*(v99[1] + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v99[1] + 8))
            {
              v100 = v99[1];
              ++v99;
              v98 = 2 * v97 + 2;
            }

            v101 = &v8[v97];
            v102 = *v101;
            result = *(*v101 + 16) & 0x1FFFFFFFFFFFFFFLL;
            if ((*(v100 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v100 + 8) <= result + **(*v101 + 8))
            {
              do
              {
                v103 = v99;
                *v101 = v100;
                if (v95 < v98)
                {
                  break;
                }

                v104 = (2 * v98) | 1;
                v99 = &v8[v104];
                v105 = 2 * v98 + 2;
                v100 = *v99;
                if (v105 < v9 && (*(v100 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v100 + 8) > (*(v99[1] + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v99[1] + 8))
                {
                  v100 = v99[1];
                  ++v99;
                  v104 = v105;
                }

                result = (*(v100 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v100 + 8);
                v101 = v103;
                v98 = v104;
              }

              while (result <= (*(v102 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v102 + 8));
              *v103 = v102;
            }
          }

          v96 = v97 - 1;
        }

        while (v97);
        do
        {
          v106 = 0;
          v107 = *v8;
          v108 = v8;
          do
          {
            v109 = &v108[v106];
            v110 = v109 + 1;
            v111 = v109[1];
            v112 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 >= v9)
            {
              v106 = v112;
            }

            else
            {
              v115 = v109[2];
              v113 = v109 + 2;
              v114 = v115;
              result = (*(v111 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v111 + 8);
              if (result <= (*(v115 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v115 + 8))
              {
                v106 = v112;
              }

              else
              {
                v111 = v114;
                v110 = v113;
              }
            }

            *v108 = v111;
            v108 = v110;
          }

          while (v106 <= ((v9 - 2) >> 1));
          if (v110 == --a2)
          {
            *v110 = v107;
          }

          else
          {
            *v110 = *a2;
            *a2 = v107;
            v116 = (v110 - v8 + 8) >> 3;
            v117 = v116 < 2;
            v118 = v116 - 2;
            if (!v117)
            {
              v119 = v118 >> 1;
              v120 = &v8[v119];
              v121 = *v120;
              v122 = *v110;
              if ((*(*v120 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v120 + 8) > (*(*v110 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v110 + 8))
              {
                do
                {
                  v123 = v120;
                  *v110 = v121;
                  if (!v119)
                  {
                    break;
                  }

                  v119 = (v119 - 1) >> 1;
                  v120 = &v8[v119];
                  v121 = *v120;
                  v110 = v123;
                }

                while ((*(*v120 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v120 + 8) > (*(v122 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v122 + 8));
                *v123 = v122;
              }
            }
          }

          v117 = v9-- <= 2;
        }

        while (!v117);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = (*(v12 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v12 + 8);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = (*(*v10 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v10 + 8);
      if (v16 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
      {
        if (v13 > v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v20 = *v8;
          if ((*(*v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v10 + 8) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
          {
            *v8 = *v10;
            *v10 = v20;
          }
        }
      }

      else
      {
        if (v13 > v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v22 = *(a2 - 1);
        if ((*(v22 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v22 + 8) > (*(v15 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v15 + 8))
        {
          *v10 = v22;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v23 = v10 - 1;
      v24 = *(v10 - 1);
      v25 = v8[1];
      v26 = (*(v24 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v24 + 8);
      v27 = *(a2 - 2);
      v28 = (*(v27 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v27 + 8);
      if (v26 <= (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v25 + 8))
      {
        if (v28 > v26)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v29 = v8[1];
          if ((*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v23 + 8) > (*(v29 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v29 + 8))
          {
            v8[1] = *v23;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v28 > v26)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v25;
        v31 = *(a2 - 2);
        if ((*(v31 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v31 + 8) > (*(v25 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v25 + 8))
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v34 = v10[1];
      v32 = v10 + 1;
      v33 = v34;
      v35 = v8[2];
      v36 = (*(v34 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v34 + 8);
      v37 = *(a2 - 3);
      v38 = (*(v37 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v37 + 8);
      if (v36 <= (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v35 + 8))
      {
        if (v38 > v36)
        {
          *v32 = v37;
          *(a2 - 3) = v33;
          v39 = v8[2];
          if ((*(*v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v32 + 8) > (*(v39 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v39 + 8))
          {
            v8[2] = *v32;
            *v32 = v39;
          }
        }
      }

      else
      {
        if (v38 > v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v33;
        *v32 = v35;
        v40 = *(a2 - 3);
        if ((*(v40 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v40 + 8) > (*(v35 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v35 + 8))
        {
          *v32 = v40;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v41 = *v11;
      v42 = *v23;
      v43 = (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v11 + 8);
      v44 = *v32;
      v45 = (*(*v32 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v32 + 8);
      if (v43 <= (*(*v23 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v23 + 8))
      {
        if (v45 <= v43)
        {
          goto LABEL_56;
        }

        *v11 = v44;
        *v32 = v41;
        v32 = v11;
        v41 = v42;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v44 + 8) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v42 + 8))
        {
          v41 = v44;
          goto LABEL_56;
        }
      }

      else if (v45 <= v43)
      {
        *v23 = v41;
        *v11 = v42;
        v23 = v11;
        v41 = v44;
        if ((*(v44 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v44 + 8) <= (*(v42 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v42 + 8))
        {
          v41 = v42;
LABEL_56:
          v46 = *v8;
          *v8 = v41;
          *v11 = v46;
          goto LABEL_57;
        }
      }

      *v23 = v44;
      *v32 = v42;
      goto LABEL_56;
    }

    v17 = *v8;
    v18 = *v11;
    v19 = (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*v8 + 8);
    if (v19 <= (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v11 + 8))
    {
      if (v13 > v19)
      {
        *v8 = v12;
        *(a2 - 1) = v17;
        v21 = *v11;
        if ((*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8) > (*(*v11 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v11 + 8))
        {
          *v11 = *v8;
          *v8 = v21;
        }
      }

      goto LABEL_57;
    }

    if (v13 > v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v18;
      goto LABEL_57;
    }

    *v11 = v17;
    *v8 = v18;
    v30 = *(a2 - 1);
    if ((*(v30 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v30 + 8) > (*(v18 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v18 + 8))
    {
      *v8 = v30;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v47 = *v8;
    if (a4)
    {
      v48 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
LABEL_60:
      v49 = 0;
      do
      {
        v50 = v8[++v49];
      }

      while ((*(v50 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v50 + 8) > v48);
      v51 = &v8[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while ((*(v54 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v54 + 8) <= v48);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while ((*(v53 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v53 + 8) <= v48);
      }

      if (v51 >= v52)
      {
        v61 = v51 - 1;
      }

      else
      {
        v55 = *v52;
        v56 = &v8[v49];
        v57 = v52;
        do
        {
          *v56 = v55;
          *v57 = v50;
          v58 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
          do
          {
            v59 = v56[1];
            ++v56;
            v50 = v59;
          }

          while ((*(v59 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v59 + 8) > v58);
          do
          {
            v60 = *--v57;
            v55 = v60;
          }

          while ((*(v60 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v60 + 8) <= v58);
        }

        while (v56 < v57);
        v61 = v56 - 1;
      }

      if (v61 != v8)
      {
        *v8 = *v61;
      }

      *v61 = v47;
      if (v51 < v52)
      {
        goto LABEL_81;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **>(v8, v61);
      v8 = v61 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **>(v61 + 1, a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,false>(v7, v61, a3, a4 & 1);
        a4 = 0;
        v8 = v61 + 1;
      }
    }

    else
    {
      v48 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
      if ((*(*(v8 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*(v8 - 1) + 8) > v48)
      {
        goto LABEL_60;
      }

      if (v48 <= (*(*(a2 - 1) + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*(a2 - 1) + 8))
      {
        v64 = (v8 + 1);
        do
        {
          v8 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
        }

        while (v48 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8));
      }

      else
      {
        do
        {
          v63 = v8[1];
          ++v8;
        }

        while (v48 <= (*(v63 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v63 + 8));
      }

      v65 = a2;
      if (v8 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
        }

        while (v48 > (*(v66 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v66 + 8));
      }

      if (v8 < v65)
      {
        v67 = *v8;
        v68 = *v65;
        do
        {
          *v8 = v68;
          *v65 = v67;
          v69 = (*(v47 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v47 + 8);
          do
          {
            v70 = v8[1];
            ++v8;
            v67 = v70;
          }

          while (v69 <= (*(v70 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v70 + 8));
          do
          {
            v71 = *--v65;
            v68 = v71;
          }

          while (v69 > (*(v71 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v71 + 8));
        }

        while (v8 < v65);
      }

      v72 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v72;
      }

      a4 = 0;
      *v72 = v47;
    }
  }

  v80 = *v8;
  v81 = v8[1];
  v82 = (*(v81 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v81 + 8);
  v83 = *(a2 - 1);
  v84 = (*(v83 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v83 + 8);
  if (v82 <= (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
  {
    if (v84 <= v82)
    {
      return result;
    }

    v8[1] = v83;
    *(a2 - 1) = v81;
    v75 = v8[1];
LABEL_166:
    v124 = *v8;
    if ((*(v75 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v75 + 8) > (*(*v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v8 + 8))
    {
      *v8 = v75;
      v8[1] = v124;
    }

    return result;
  }

  if (v84 <= v82)
  {
    *v8 = v81;
    v8[1] = v80;
    v128 = *(a2 - 1);
    if ((*(v128 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v128 + 8) <= (*(v80 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v80 + 8))
    {
      return result;
    }

    v8[1] = v128;
  }

  else
  {
    *v8 = v83;
  }

  *(a2 - 1) = v80;
  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a2 + 8);
  v7 = *a3;
  v8 = (*(*a3 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(*a3 + 8);
  if (v6 <= (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*result + 8))
  {
    if (v8 <= v6)
    {
      v4 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v4;
      v9 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a2 + 8) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*result + 8))
      {
        *result = *a2;
        *a2 = v9;
        v4 = *a3;
      }
    }
  }

  else
  {
    if (v8 > v6)
    {
      *result = v7;
LABEL_9:
      *a3 = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a3 + 8) > (*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v5 + 8))
    {
      *a2 = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  if ((*(*a4 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a4 + 8) > (*(v4 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v4 + 8))
  {
    *a3 = *a4;
    *a4 = v4;
    v10 = *a2;
    if ((*(*a3 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a3 + 8) > (*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v10;
      v11 = *result;
      if ((*(*a2 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a2 + 8) > (*(*result + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *a1;
        v13 = a1[1];
        v14 = (*(v13 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v13 + 8);
        v15 = *(a2 - 1);
        v16 = (*(v15 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v15 + 8);
        if (v14 > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
        {
          if (v16 <= v14)
          {
            *a1 = v13;
            a1[1] = v12;
            v36 = *(a2 - 1);
            if ((*(v36 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v36 + 8) <= (*(v12 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v12 + 8))
            {
              return 1;
            }

            a1[1] = v36;
          }

          else
          {
            *a1 = v15;
          }

          *(a2 - 1) = v12;
          return 1;
        }

        if (v16 <= v14)
        {
          return 1;
        }

        a1[1] = v15;
        *(a2 - 1) = v13;
        v9 = a1[1];
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_0 &,llvm::jitlink::Symbol **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v7 = *(a2 - 1);
        v8 = a1[3];
        if ((*(v7 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v7 + 8) <= (*(v8 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v8 + 8))
        {
          return 1;
        }

        a1[3] = v7;
        *(a2 - 1) = v8;
        v10 = a1[2];
        v9 = a1[3];
        if ((*(v9 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v9 + 8) <= (*(v10 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v10 + 8))
        {
          return 1;
        }

        a1[2] = v9;
        a1[3] = v10;
        v11 = a1[1];
        if ((*(v9 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v9 + 8) <= (*(v11 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v11 + 8))
        {
          return 1;
        }

        a1[1] = v9;
        a1[2] = v11;
        break;
      default:
        goto LABEL_16;
    }

    v27 = *a1;
    if ((*(v9 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v9 + 8) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
    {
      *a1 = v9;
      a1[1] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if ((*(v5 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v5 + 8) > (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v17 = a1 + 2;
  v18 = a1[2];
  v19 = a1[1];
  v20 = *a1;
  v21 = (*(v19 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v19 + 8);
  v22 = (*(v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v18 + 8);
  if (v21 <= (*(*a1 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*a1 + 8))
  {
    if (v22 <= v21)
    {
      goto LABEL_28;
    }

    a1[1] = v18;
    *v17 = v19;
    v25 = (*(v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v18 + 8);
    v26 = (*(v20 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v20 + 8);
    v23 = a1;
    v24 = a1 + 1;
LABEL_26:
    if (v25 <= v26)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v22 <= v21)
  {
    *a1 = v19;
    a1[1] = v20;
    v25 = (*(v18 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v18 + 8);
    v26 = (*(v20 + 16) & 0x1FFFFFFFFFFFFFFLL) + **(v20 + 8);
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v23 = v18;
  *v24 = v20;
LABEL_28:
  v28 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v29 = 0;
  for (i = 24; ; i += 8)
  {
    v31 = *v28;
    v32 = *v17;
    if ((*(*v28 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(*v28 + 8) > (*(v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v32 + 8))
    {
      v33 = i;
      while (1)
      {
        *(a1 + v33) = v32;
        v34 = v33 - 8;
        if (v33 == 8)
        {
          break;
        }

        v32 = *(a1 + v33 - 16);
        v33 -= 8;
        if ((*(v31 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v31 + 8) <= (*(v32 + 16) & 0x1FFFFFFFFFFFFFFuLL) + **(v32 + 8))
        {
          v35 = (a1 + v34);
          goto LABEL_36;
        }
      }

      v35 = a1;
LABEL_36:
      *v35 = v31;
      if (++v29 == 8)
      {
        break;
      }
    }

    v17 = v28++;
    if (v28 == a2)
    {
      return 1;
    }
  }

  return v28 + 1 == a2;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,false>(void *a1, _OWORD *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 6) < *(v12 + 2))
        {
          *v161 = *v12;
          *&v161[16] = *(v12 + 1);
          v75 = *(a2 - 2);
          *(v12 + 9) = *(a2 - 23);
          *v12 = v75;
          result = *v161;
          *(a2 - 23) = *&v161[9];
          *(a2 - 2) = *v161;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v79 = *(v12 + 10);
      v80 = *(v12 + 18);
      if (v79 >= *(v12 + 2))
      {
        if (v80 < v79)
        {
          *v168 = *(v12 + 2);
          *&v168[16] = *(v12 + 3);
          *(v12 + 2) = *(v12 + 4);
          *(v12 + 41) = *(v12 + 73);
          *(v12 + 4) = *v168;
          result = *&v168[9];
          *(v12 + 73) = *&v168[9];
          if (*(v12 + 10) < *(v12 + 2))
          {
            *v169 = *v12;
            *&v169[16] = *(v12 + 1);
            *v12 = *(v12 + 2);
            *(v12 + 9) = *(v12 + 41);
            *(v12 + 2) = *v169;
            result = *&v169[9];
            *(v12 + 41) = *&v169[9];
          }
        }
      }

      else
      {
        if (v80 < v79)
        {
          *v163 = *v12;
          *&v163[16] = *(v12 + 1);
          *v12 = *(v12 + 4);
          *(v12 + 9) = *(v12 + 73);
          v81 = *v163;
          goto LABEL_182;
        }

        *v172 = *v12;
        *&v172[16] = *(v12 + 1);
        *v12 = *(v12 + 2);
        *(v12 + 9) = *(v12 + 41);
        *(v12 + 2) = *v172;
        result = *&v172[9];
        *(v12 + 41) = *&v172[9];
        if (v80 < *(v12 + 10))
        {
          v81 = *(v12 + 2);
          *&v163[8] = *(&v81 + 1);
          *&v163[16] = *(v12 + 3);
          *(v12 + 2) = *(v12 + 4);
          *(v12 + 41) = *(v12 + 73);
LABEL_182:
          *(v12 + 4) = v81;
          result = *&v163[9];
          *(v12 + 73) = *&v163[9];
        }
      }

      if (*(a2 - 6) >= *(v12 + 18))
      {
        return result;
      }

      *v173 = *(v12 + 4);
      result = *v173;
      *&v173[16] = *(v12 + 5);
      v134 = *(a2 - 23);
      *(v12 + 4) = *v9;
      *(v12 + 73) = v134;
      *(a2 - 23) = *&v173[9];
      *v9 = *v173;
      if (*(v12 + 18) >= *(v12 + 10))
      {
        return result;
      }

      *v174 = *(v12 + 2);
      *&v174[16] = *(v12 + 3);
      *(v12 + 2) = *(v12 + 4);
      *(v12 + 41) = *(v12 + 73);
      *(v12 + 4) = *v174;
      result = *&v174[9];
      *(v12 + 73) = *&v174[9];
LABEL_186:
      if (*(v12 + 10) < *(v12 + 2))
      {
        *v175 = *v12;
        *&v175[16] = *(v12 + 1);
        *v12 = *(v12 + 2);
        *(v12 + 9) = *(v12 + 41);
        *(v12 + 2) = *v175;
        result = *&v175[9];
        *(v12 + 41) = *&v175[9];
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,0>(v12, v12 + 2, v12 + 4, v12 + 6, a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v82 = v12 + 4;
      v84 = v12 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v12;
          do
          {
            v87 = v82;
            v88 = *(v86 + 10);
            if (v88 < *(v86 + 2))
            {
              v89 = *v87;
              v164 = *(v86 + 44);
              v90 = v85;
              while (1)
              {
                v91 = v12 + v90;
                *(v91 + 2) = *(v12 + v90);
                result = *(v12 + v90 + 9);
                *(v91 + 41) = result;
                if (!v90)
                {
                  break;
                }

                v90 -= 32;
                if (v88 >= *(v91 - 6))
                {
                  v92 = v12 + v90 + 32;
                  goto LABEL_129;
                }
              }

              v92 = v12;
LABEL_129:
              *v92 = v89;
              *(v92 + 8) = v88;
              *(v92 + 12) = v164;
              *(v92 + 17) = *(&v164 + 5);
            }

            v82 = v87 + 4;
            v85 += 32;
            v86 = v87;
          }

          while (v87 + 4 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v128 = v82;
          v129 = *(a1 + 10);
          if (v129 < *(a1 + 2))
          {
            v130 = *v82;
            v170 = *(a1 + 44);
            v131 = v128;
            do
            {
              *v131 = *(v131 - 2);
              result = *(v131 - 23);
              *(v131 + 9) = result;
              v132 = *(v131 - 14);
              v131 -= 4;
            }

            while (v129 < v132);
            *v131 = v130;
            *(v131 + 2) = v129;
            *(v131 + 17) = *(&v170 + 5);
            *(v131 + 12) = v170;
          }

          v82 = v128 + 4;
          a1 = v128;
        }

        while (v128 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v93 = (v13 - 2) >> 1;
        v94 = v93;
        do
        {
          v95 = v94;
          if (v93 >= v94)
          {
            v96 = (2 * v94) | 1;
            v97 = &v12[4 * v96];
            if (2 * v95 + 2 < v13)
            {
              v98 = *(v97 + 2);
              v99 = *(v97 + 10);
              v97 += 4 * (v98 < v99);
              if (v98 < v99)
              {
                v96 = 2 * v95 + 2;
              }
            }

            v100 = &v12[4 * v95];
            v101 = *(v100 + 2);
            if (*(v97 + 2) >= v101)
            {
              v102 = *v100;
              v165 = *(v100 + 12);
              do
              {
                v103 = v100;
                v100 = v97;
                v104 = *v97;
                *(v103 + 9) = *(v97 + 9);
                *v103 = v104;
                if (v93 < v96)
                {
                  break;
                }

                v105 = (2 * v96) | 1;
                v97 = &v12[4 * v105];
                v106 = 2 * v96 + 2;
                if (v106 < v13)
                {
                  v107 = *(v97 + 2);
                  v108 = *(v97 + 10);
                  v97 += 4 * (v107 < v108);
                  if (v107 < v108)
                  {
                    v105 = v106;
                  }
                }

                v96 = v105;
              }

              while (*(v97 + 2) >= v101);
              *v100 = v102;
              *(v100 + 2) = v101;
              *(v100 + 12) = v165;
              *(v100 + 17) = *(&v165 + 5);
            }
          }

          v94 = v95 - 1;
        }

        while (v95);
        do
        {
          v109 = 0;
          *v166 = *v12;
          *&v166[16] = *(v12 + 1);
          v110 = v12;
          do
          {
            v111 = &v110[2 * v109];
            v112 = v111 + 2;
            v113 = (2 * v109) | 1;
            v109 = 2 * v109 + 2;
            if (v109 >= v13)
            {
              v109 = v113;
            }

            else
            {
              v114 = *(v111 + 10);
              v115 = *(v111 + 18);
              v116 = v111 + 4;
              if (v114 >= v115)
              {
                v109 = v113;
              }

              else
              {
                v112 = v116;
              }
            }

            v117 = *v112;
            *(v110 + 9) = *(v112 + 9);
            *v110 = v117;
            v110 = v112;
          }

          while (v109 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v112 == a2)
          {
            result = *v166;
            *(v112 + 9) = *&v166[9];
            *v112 = *v166;
          }

          else
          {
            v118 = *a2;
            *(v112 + 9) = *(a2 + 9);
            *v112 = v118;
            result = *v166;
            *(a2 + 9) = *&v166[9];
            *a2 = *v166;
            v119 = (v112 - v12 + 32) >> 5;
            v120 = v119 < 2;
            v121 = v119 - 2;
            if (!v120)
            {
              v122 = v121 >> 1;
              v123 = &v12[4 * (v121 >> 1)];
              v124 = *(v112 + 2);
              if (*(v123 + 2) < v124)
              {
                v125 = *v112;
                v137 = *(v112 + 12);
                do
                {
                  v126 = v112;
                  v112 = v123;
                  result = *v123;
                  *(v126 + 9) = *(v123 + 9);
                  *v126 = result;
                  if (!v122)
                  {
                    break;
                  }

                  v122 = (v122 - 1) >> 1;
                  v123 = &v12[4 * v122];
                }

                while (*(v123 + 2) < v124);
                *v112 = v125;
                *(v112 + 2) = v124;
                *(v112 + 12) = v137;
                *(v112 + 17) = *(&v137 + 5);
              }
            }
          }

          v120 = v13-- <= 2;
        }

        while (!v120);
      }

      return result;
    }

    v14 = &v12[4 * (v13 >> 1)];
    v15 = *(a2 - 6);
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 2);
      if (v16 >= *(v12 + 2))
      {
        if (v15 < v16)
        {
          *v140 = *v14;
          *&v140[16] = *(v14 + 1);
          v20 = *v9;
          *(v14 + 9) = *(a2 - 23);
          *v14 = v20;
          *(a2 - 23) = *&v140[9];
          *v9 = *v140;
          if (*(v14 + 2) < *(v12 + 2))
          {
            *v141 = *v12;
            *&v141[16] = *(v12 + 1);
            v21 = *v14;
            *(v12 + 9) = *(v14 + 9);
            *v12 = v21;
            *(v14 + 9) = *&v141[9];
            *v14 = *v141;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v138 = *v12;
          *&v138[16] = *(v12 + 1);
          v17 = *v9;
          *(v12 + 9) = *(a2 - 23);
          *v12 = v17;
          goto LABEL_26;
        }

        *v144 = *v12;
        *&v144[16] = *(v12 + 1);
        v24 = *v14;
        *(v12 + 9) = *(v14 + 9);
        *v12 = v24;
        *(v14 + 9) = *&v144[9];
        *v14 = *v144;
        if (*(a2 - 6) < *(v14 + 2))
        {
          *v138 = *v14;
          *&v138[16] = *(v14 + 1);
          v25 = *v9;
          *(v14 + 9) = *(a2 - 23);
          *v14 = v25;
LABEL_26:
          *(a2 - 23) = *&v138[9];
          *v9 = *v138;
        }
      }

      v26 = v14 - 4;
      v27 = *(v14 - 6);
      v28 = *(a2 - 14);
      if (v27 >= *(v12 + 10))
      {
        if (v28 < v27)
        {
          *v146 = *v26;
          *&v146[16] = *(v14 - 1);
          v31 = *v10;
          *(v14 - 23) = *(a2 - 55);
          *v26 = v31;
          *(a2 - 55) = *&v146[9];
          *v10 = *v146;
          if (*(v14 - 6) < *(v12 + 10))
          {
            *v147 = *(v12 + 2);
            *&v147[16] = *(v12 + 3);
            v32 = *(v14 - 23);
            *(v12 + 2) = *v26;
            *(v12 + 41) = v32;
            *(v14 - 23) = *&v147[9];
            *v26 = *v147;
          }
        }
      }

      else
      {
        if (v28 < v27)
        {
          v29 = *(v12 + 2);
          *&v145[8] = *(&v29 + 1);
          *&v145[16] = *(v12 + 3);
          v30 = *(a2 - 55);
          *(v12 + 2) = *v10;
          *(v12 + 41) = v30;
          goto LABEL_38;
        }

        *v149 = *(v12 + 2);
        *&v149[16] = *(v12 + 3);
        v35 = *(v14 - 23);
        *(v12 + 2) = *v26;
        *(v12 + 41) = v35;
        *(v14 - 23) = *&v149[9];
        *v26 = *v149;
        if (*(a2 - 14) < *(v14 - 6))
        {
          *v145 = *v26;
          *&v145[16] = *(v14 - 1);
          v36 = *v10;
          *(v14 - 23) = *(a2 - 55);
          *v26 = v36;
          v29 = *v145;
LABEL_38:
          *(a2 - 55) = *&v145[9];
          *v10 = v29;
        }
      }

      v37 = *(v14 + 10);
      v38 = *(a2 - 22);
      if (v37 >= *(v12 + 18))
      {
        if (v38 < v37)
        {
          *v151 = *(v14 + 2);
          *&v151[16] = *(v14 + 3);
          v41 = *v11;
          *(v14 + 41) = *(a2 - 87);
          *(v14 + 2) = v41;
          *(a2 - 87) = *&v151[9];
          *v11 = *v151;
          if (*(v14 + 10) < *(v12 + 18))
          {
            *v152 = *(v12 + 4);
            *&v152[16] = *(v12 + 5);
            v42 = *(v14 + 41);
            *(v12 + 4) = *(v14 + 2);
            *(v12 + 73) = v42;
            *(v14 + 41) = *&v152[9];
            *(v14 + 2) = *v152;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v39 = *(v12 + 4);
          *&v150[8] = *(&v39 + 1);
          *&v150[16] = *(v12 + 5);
          v40 = *(a2 - 87);
          *(v12 + 4) = *v11;
          *(v12 + 73) = v40;
          goto LABEL_47;
        }

        *v153 = *(v12 + 4);
        *&v153[16] = *(v12 + 5);
        v43 = *(v14 + 41);
        *(v12 + 4) = *(v14 + 2);
        *(v12 + 73) = v43;
        *(v14 + 41) = *&v153[9];
        *(v14 + 2) = *v153;
        if (*(a2 - 22) < *(v14 + 10))
        {
          *v150 = *(v14 + 2);
          *&v150[16] = *(v14 + 3);
          v44 = *v11;
          *(v14 + 41) = *(a2 - 87);
          *(v14 + 2) = v44;
          v39 = *v150;
LABEL_47:
          *(a2 - 87) = *&v150[9];
          *v11 = v39;
        }
      }

      v45 = *(v14 + 2);
      v46 = *(v14 + 10);
      if (v45 >= *(v14 - 6))
      {
        if (v46 < v45)
        {
          *v155 = *v14;
          *&v155[16] = *(v14 + 1);
          *v14 = *(v14 + 2);
          *(v14 + 9) = *(v14 + 41);
          *(v14 + 41) = *&v155[9];
          *(v14 + 2) = *v155;
          if (*(v14 + 2) < *(v14 - 6))
          {
            *v156 = *v26;
            *&v156[16] = *(v14 - 1);
            *v26 = *v14;
            *(v14 - 23) = *(v14 + 9);
            *(v14 + 9) = *&v156[9];
            *v14 = *v156;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          *v154 = *v26;
          *&v154[16] = *(v14 - 1);
          *v26 = *(v14 + 2);
          *(v14 - 23) = *(v14 + 41);
          goto LABEL_56;
        }

        *v157 = *v26;
        *&v157[16] = *(v14 - 1);
        *v26 = *v14;
        *(v14 - 23) = *(v14 + 9);
        *(v14 + 9) = *&v157[9];
        *v14 = *v157;
        if (*(v14 + 10) < *(v14 + 2))
        {
          *v154 = *v14;
          *&v154[16] = *(v14 + 1);
          *v14 = *(v14 + 2);
          *(v14 + 9) = *(v14 + 41);
LABEL_56:
          *(v14 + 41) = *&v154[9];
          *(v14 + 2) = *v154;
        }
      }

      *v158 = *v12;
      *&v158[16] = *(v12 + 1);
      v47 = *v14;
      *(v12 + 9) = *(v14 + 9);
      *v12 = v47;
      *(v14 + 9) = *&v158[9];
      *v14 = *v158;
      goto LABEL_58;
    }

    v18 = *(v12 + 2);
    if (v18 >= *(v14 + 2))
    {
      if (v15 < v18)
      {
        *v142 = *v12;
        *&v142[16] = *(v12 + 1);
        v22 = *v9;
        *(v12 + 9) = *(a2 - 23);
        *v12 = v22;
        *(a2 - 23) = *&v142[9];
        *v9 = *v142;
        if (*(v12 + 2) < *(v14 + 2))
        {
          *v143 = *v14;
          *&v143[16] = *(v14 + 1);
          v23 = *v12;
          *(v14 + 9) = *(v12 + 9);
          *v14 = v23;
          *(v12 + 9) = *&v143[9];
          *v12 = *v143;
        }
      }

      goto LABEL_58;
    }

    if (v15 < v18)
    {
      *v139 = *v14;
      *&v139[16] = *(v14 + 1);
      v19 = *v9;
      *(v14 + 9) = *(a2 - 23);
      *v14 = v19;
LABEL_35:
      *(a2 - 23) = *&v139[9];
      *v9 = *v139;
      goto LABEL_58;
    }

    *v148 = *v14;
    *&v148[16] = *(v14 + 1);
    v33 = *v12;
    *(v14 + 9) = *(v12 + 9);
    *v14 = v33;
    *(v12 + 9) = *&v148[9];
    *v12 = *v148;
    if (*(a2 - 6) < *(v12 + 2))
    {
      *v139 = *v12;
      *&v139[16] = *(v12 + 1);
      v34 = *v9;
      *(v12 + 9) = *(a2 - 23);
      *v12 = v34;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v48 = *(v12 + 2);
LABEL_61:
      v49 = 0;
      v50 = *v12;
      result = *(v12 + 12);
      v135 = result;
      do
      {
        v51 = v12[v49 + 5];
        v49 += 4;
      }

      while (v51 < v48);
      v52 = &v12[v49];
      v53 = a2;
      if (v49 == 4)
      {
        v56 = a2;
        while (v52 < v56)
        {
          v54 = v56 - 2;
          v57 = *(v56 - 6);
          v56 -= 2;
          if (v57 < v48)
          {
            goto LABEL_71;
          }
        }

        v54 = v56;
      }

      else
      {
        do
        {
          v54 = v53 - 2;
          v55 = *(v53 - 6);
          v53 -= 2;
        }

        while (v55 >= v48);
      }

LABEL_71:
      v12 = v52;
      if (v52 < v54)
      {
        v58 = v54;
        do
        {
          *v159 = *v12;
          *&v159[16] = *(v12 + 1);
          v59 = *v58;
          *(v12 + 9) = *(v58 + 9);
          *v12 = v59;
          result = *v159;
          *(v58 + 9) = *&v159[9];
          *v58 = *v159;
          do
          {
            v60 = *(v12 + 10);
            v12 += 4;
          }

          while (v60 < v48);
          do
          {
            v61 = *(v58 - 6);
            v58 -= 2;
          }

          while (v61 >= v48);
        }

        while (v12 < v58);
      }

      if (v12 - 4 != a1)
      {
        result = *(v12 - 2);
        *(a1 + 9) = *(v12 - 23);
        *a1 = result;
      }

      *(v12 - 4) = v50;
      *(v12 - 6) = v48;
      *(v12 - 15) = *(v135.n128_u64 + 5);
      *(v12 - 20) = v135.n128_u64[0];
      if (v52 < v54)
      {
        goto LABEL_82;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *>(a1, v12 - 2, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *>(v12, a2, v63))
      {
        a2 = v12 - 4;
        if (!v62)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v62)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,false>(a1, v12 - 2, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v48 = *(v12 + 2);
      if (*(v12 - 6) < v48)
      {
        goto LABEL_61;
      }

      v64 = *v12;
      result = *(v12 + 12);
      v136 = result;
      if (v48 >= *(a2 - 6))
      {
        v67 = (v12 + 4);
        do
        {
          v12 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v68 = *(v67 + 8);
          v67 += 32;
        }

        while (v48 >= v68);
      }

      else
      {
        v65 = v12;
        do
        {
          v12 = v65 + 4;
          v66 = *(v65 + 10);
          v65 += 4;
        }

        while (v48 >= v66);
      }

      v69 = a2;
      if (v12 < a2)
      {
        v70 = a2;
        do
        {
          v69 = v70 - 2;
          v71 = *(v70 - 6);
          v70 -= 2;
        }

        while (v48 < v71);
      }

      while (v12 < v69)
      {
        *v160 = *v12;
        *&v160[16] = *(v12 + 1);
        v72 = *v69;
        *(v12 + 9) = *(v69 + 9);
        *v12 = v72;
        result = *v160;
        *(v69 + 9) = *&v160[9];
        *v69 = *v160;
        do
        {
          v73 = *(v12 + 10);
          v12 += 4;
        }

        while (v48 >= v73);
        do
        {
          v74 = *(v69 - 6);
          v69 -= 2;
        }

        while (v48 < v74);
      }

      if (v12 - 4 != a1)
      {
        result = *(v12 - 2);
        *(a1 + 9) = *(v12 - 23);
        *a1 = result;
      }

      a4 = 0;
      *(v12 - 4) = v64;
      *(v12 - 6) = v48;
      *(v12 - 15) = *(v136.n128_u64 + 5);
      *(v12 - 20) = v136.n128_u64[0];
    }
  }

  v76 = *(v12 + 10);
  v77 = *(a2 - 6);
  if (v76 >= *(v12 + 2))
  {
    if (v77 >= v76)
    {
      return result;
    }

    *v167 = *(v12 + 2);
    result = *v167;
    *&v167[16] = *(v12 + 3);
    v127 = *(a2 - 23);
    *(v12 + 2) = *v9;
    *(v12 + 41) = v127;
    *(a2 - 23) = *&v167[9];
    *v9 = *v167;
    goto LABEL_186;
  }

  if (v77 >= v76)
  {
    *v171 = *v12;
    *&v171[16] = *(v12 + 1);
    *v12 = *(v12 + 2);
    *(v12 + 9) = *(v12 + 41);
    *(v12 + 2) = *v171;
    result = *&v171[9];
    *(v12 + 41) = *&v171[9];
    if (*(a2 - 6) >= *(v12 + 10))
    {
      return result;
    }

    result = *(v12 + 2);
    *&v162[8] = result.n128_u64[1];
    *&v162[16] = *(v12 + 3);
    v133 = *(a2 - 23);
    *(v12 + 2) = *v9;
    *(v12 + 41) = v133;
  }

  else
  {
    *v162 = *v12;
    *&v162[16] = *(v12 + 1);
    v78 = *v9;
    *(v12 + 9) = *(a2 - 23);
    *v12 = v78;
    result = *v162;
  }

  *(a2 - 23) = *&v162[9];
  *v9 = result;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 2);
  v7 = *(a3 + 2);
  if (v6 >= *(a1 + 2))
  {
    if (v7 < v6)
    {
      *v32 = *a2;
      v10 = *a2;
      *&v32[16] = a2[1];
      v11 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v11;
      *a3 = v10;
      result = *&v32[9];
      *(a3 + 9) = *&v32[9];
      if (*(a2 + 2) < *(a1 + 2))
      {
        *v33 = *a1;
        v12 = *a1;
        *&v33[16] = a1[1];
        v13 = *(a2 + 9);
        *a1 = *a2;
        *(a1 + 9) = v13;
        *a2 = v12;
        result = *&v33[9];
        *(a2 + 9) = *&v33[9];
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      *v31 = *a1;
      *&v31[16] = a1[1];
      v9 = *(a3 + 9);
      *a1 = *a3;
      *(a1 + 9) = v9;
LABEL_9:
      *a3 = v8;
      result = *&v31[9];
      *(a3 + 9) = *&v31[9];
      goto LABEL_10;
    }

    *v34 = *a1;
    v14 = *a1;
    *&v34[16] = a1[1];
    v15 = *(a2 + 9);
    *a1 = *a2;
    *(a1 + 9) = v15;
    *a2 = v14;
    result = *&v34[9];
    *(a2 + 9) = *&v34[9];
    if (*(a3 + 2) < *(a2 + 2))
    {
      v8 = *a2;
      *v31 = *a2;
      *&v31[16] = a2[1];
      v16 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    *v35 = *a3;
    v17 = *a3;
    *&v35[16] = a3[1];
    v18 = *(a4 + 9);
    *a3 = *a4;
    *(a3 + 9) = v18;
    *a4 = v17;
    result = *&v35[9];
    *(a4 + 9) = *&v35[9];
    if (*(a3 + 2) < *(a2 + 2))
    {
      *v36 = *a2;
      v19 = *a2;
      *&v36[16] = a2[1];
      v20 = *(a3 + 9);
      *a2 = *a3;
      *(a2 + 9) = v20;
      *a3 = v19;
      result = *&v36[9];
      *(a3 + 9) = *&v36[9];
      if (*(a2 + 2) < *(a1 + 2))
      {
        *v37 = *a1;
        v21 = *a1;
        *&v37[16] = a1[1];
        v22 = *(a2 + 9);
        *a1 = *a2;
        *(a1 + 9) = v22;
        *a2 = v21;
        result = *&v37[9];
        *(a2 + 9) = *&v37[9];
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    *v38 = *a4;
    v23 = *a4;
    *&v38[16] = a4[1];
    v24 = *(a5 + 9);
    *a4 = *a5;
    *(a4 + 9) = v24;
    *a5 = v23;
    result = *&v38[9];
    *(a5 + 9) = *&v38[9];
    if (*(a4 + 2) < *(a3 + 2))
    {
      *v39 = *a3;
      v25 = *a3;
      *&v39[16] = a3[1];
      v26 = *(a4 + 9);
      *a3 = *a4;
      *(a3 + 9) = v26;
      *a4 = v25;
      result = *&v39[9];
      *(a4 + 9) = *&v39[9];
      if (*(a3 + 2) < *(a2 + 2))
      {
        *v40 = *a2;
        v27 = *a2;
        *&v40[16] = a2[1];
        v28 = *(a3 + 9);
        *a2 = *a3;
        *(a2 + 9) = v28;
        *a3 = v27;
        result = *&v40[9];
        *(a3 + 9) = *&v40[9];
        if (*(a2 + 2) < *(a1 + 2))
        {
          *v41 = *a1;
          v29 = *a1;
          *&v41[16] = a1[1];
          v30 = *(a2 + 9);
          *a1 = *a2;
          *(a1 + 9) = v30;
          *a2 = v29;
          result = *&v41[9];
          *(a2 + 9) = *&v41[9];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *>(__int128 *a1, __int128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 2;
      v7 = *(a1 + 10);
      v8 = *(a2 - 6);
      if (v7 < *(a1 + 2))
      {
        if (v8 >= v7)
        {
          *v48 = *a1;
          v23 = *a1;
          *&v48[16] = a1[1];
          *a1 = a1[2];
          *(a1 + 9) = *(a1 + 41);
          a1[2] = v23;
          *(a1 + 41) = *&v48[9];
          if (*(a2 - 6) >= *(a1 + 10))
          {
            return 1;
          }

          v9 = a1[2];
          *&v40[8] = *(&v9 + 1);
          *&v40[16] = a1[3];
          v24 = *(a2 - 23);
          a1[2] = *v6;
          *(a1 + 41) = v24;
        }

        else
        {
          v9 = *a1;
          *v40 = *a1;
          *&v40[16] = a1[1];
          v10 = *(a2 - 23);
          *a1 = *v6;
          *(a1 + 9) = v10;
        }

        *v6 = v9;
        *(a2 - 23) = *&v40[9];
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      *v43 = a1[2];
      *&v43[16] = a1[3];
      v20 = *(a2 - 23);
      a1[2] = *v6;
      *(a1 + 41) = v20;
      *v6 = *v43;
      *(a2 - 23) = *&v43[9];
LABEL_50:
      if (*(a1 + 10) < *(a1 + 2))
      {
        *v54 = *a1;
        v37 = *a1;
        *&v54[16] = a1[1];
        *a1 = a1[2];
        *(a1 + 9) = *(a1 + 41);
        a1[2] = v37;
        *(a1 + 41) = *&v54[9];
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::LinkGraph::splitBlockImpl(std::vector<llvm::jitlink::Block *>,std::optional<llvm::SmallVector<llvm::jitlink::Symbol *,8u>> *)::$_2 &,llvm::jitlink::Edge *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
    }

    v16 = *(a1 + 10);
    v17 = *(a1 + 2);
    v18 = *(a1 + 18);
    if (v16 >= v17)
    {
      if (v18 < v16)
      {
        *v46 = a1[2];
        *&v46[16] = a1[3];
        a1[2] = a1[4];
        *(a1 + 41) = *(a1 + 73);
        a1[4] = *v46;
        *(a1 + 73) = *&v46[9];
        if (*(a1 + 10) < v17)
        {
          *v47 = *a1;
          v22 = *a1;
          *&v47[16] = a1[1];
          *a1 = a1[2];
          *(a1 + 9) = *(a1 + 41);
          a1[2] = v22;
          *(a1 + 41) = *&v47[9];
        }
      }

      goto LABEL_47;
    }

    if (v18 >= v16)
    {
      *v51 = *a1;
      v34 = *a1;
      *&v51[16] = a1[1];
      *a1 = a1[2];
      *(a1 + 9) = *(a1 + 41);
      a1[2] = v34;
      *(a1 + 41) = *&v51[9];
      if (v18 >= *(a1 + 10))
      {
        goto LABEL_47;
      }

      v19 = a1[2];
      *&v42[8] = *(&v19 + 1);
      *&v42[16] = a1[3];
      a1[2] = a1[4];
      *(a1 + 41) = *(a1 + 73);
    }

    else
    {
      v19 = *a1;
      *v42 = *a1;
      *&v42[16] = a1[1];
      *a1 = a1[4];
      *(a1 + 9) = *(a1 + 73);
    }

    a1[4] = v19;
    *(a1 + 73) = *&v42[9];
LABEL_47:
    if (*(a2 - 6) >= *(a1 + 18))
    {
      return 1;
    }

    v35 = a2 - 2;
    *v52 = a1[4];
    *&v52[16] = a1[5];
    v36 = *(a2 - 23);
    a1[4] = *(a2 - 2);
    *(a1 + 73) = v36;
    *v35 = *v52;
    *(v35 + 9) = *&v52[9];
    if (*(a1 + 18) >= *(a1 + 10))
    {
      return 1;
    }

    *v53 = a1[2];
    *&v53[16] = a1[3];
    a1[2] = a1[4];
    *(a1 + 41) = *(a1 + 73);
    a1[4] = *v53;
    *(a1 + 73) = *&v53[9];
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 6) < *(a1 + 2))
    {
      *v39 = *a1;
      v4 = *a1;
      *&v39[16] = a1[1];
      v5 = *(a2 - 23);
      *a1 = *(a2 - 2);
      *(a1 + 9) = v5;
      *(a2 - 2) = v4;
      *(a2 - 23) = *&v39[9];
    }

    return 1;
  }

LABEL_13:
  v11 = (a1 + 4);
  v12 = *(a1 + 10);
  v13 = *(a1 + 2);
  v14 = *(a1 + 18);
  if (v12 >= v13)
  {
    if (v14 < v12)
    {
      *v44 = a1[2];
      *&v44[16] = a1[3];
      a1[2] = *v11;
      *(a1 + 41) = *(a1 + 73);
      *v11 = *v44;
      *(a1 + 73) = *&v44[9];
      if (*(a1 + 10) < v13)
      {
        *v45 = *a1;
        v21 = *a1;
        *&v45[16] = a1[1];
        *a1 = a1[2];
        *(a1 + 9) = *(a1 + 41);
        a1[2] = v21;
        *(a1 + 41) = *&v45[9];
      }
    }
  }

  else
  {
    if (v14 >= v12)
    {
      *v49 = *a1;
      v25 = *a1;
      *&v49[16] = a1[1];
      *a1 = a1[2];
      *(a1 + 9) = *(a1 + 41);
      a1[2] = v25;
      *(a1 + 41) = *&v49[9];
      if (v14 >= *(a1 + 10))
      {
        goto LABEL_33;
      }

      v15 = a1[2];
      *&v41[8] = *(&v15 + 1);
      *&v41[16] = a1[3];
      a1[2] = *v11;
      *(a1 + 41) = *(a1 + 73);
    }

    else
    {
      v15 = *a1;
      *v41 = *a1;
      *&v41[16] = a1[1];
      *a1 = *v11;
      *(a1 + 9) = *(a1 + 73);
    }

    *v11 = v15;
    *(a1 + 73) = *&v41[9];
  }

LABEL_33:
  v26 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = *(v26 + 2);
    if (v29 < *(v11 + 2))
    {
      v30 = *v26;
      v50 = *(v26 + 12);
      v31 = v27;
      while (1)
      {
        v32 = a1 + v31;
        *(v32 + 96) = *(a1 + v31 + 64);
        *(v32 + 105) = *(a1 + v31 + 73);
        if (v31 == -64)
        {
          break;
        }

        v31 -= 32;
        if (v29 >= *(v32 + 40))
        {
          v33 = a1 + v31 + 96;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v30;
      *(v33 + 8) = v29;
      *(v33 + 12) = v50;
      *(v33 + 17) = *(&v50 + 5);
      if (++v28 == 8)
      {
        return v26 + 4 == a2;
      }
    }

    v11 = v26;
    v27 += 32;
    v26 += 4;
    if (v26 == a2)
    {
      return 1;
    }
  }
}

llvm::raw_ostream *llvm::format_provider<long long,void>::format(unint64_t *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return llvm::write_integer(a2, *a1, v14, v12);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *a1, v7, v10, 1);
}

void llvm::jitlink::JITLinkerBase::~JITLinkerBase(llvm::jitlink::JITLinkerBase *this)
{
  *this = &unk_2883ECDC0;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = (this + 120);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 96);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 72);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 48);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (this + 24);
  std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    llvm::jitlink::LinkGraph::~LinkGraph(v3);
    MEMORY[0x277C69E40]();
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void *llvm::jitlink::JITLinkerBase::linkPhase1(void *a1, uint64_t *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  llvm::jitlink::JITLinkerBase::runPasses(&v83, a1, a1[3], a1[4]);
  if (v83)
  {
    v4 = a1[1];
    v74 = v83;
    *&v83 = 0;
    (*(*v4 + 24))(v4, &v74);
    v5 = v74;
    if (!v74)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1[2];
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v89[0] = 0;
  v89[1] = 0;
  v90 = 0;
  llvm::jitlink::LinkGraph::defined_symbols(&v83, v7);
  v79 = v83;
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v8 = v87;
  v9 = v88;
  v10 = v86;
  if (v83 != v87 || v86 != v88)
  {
    do
    {
      v78[0] = *v10;
      if ((*(v78[0] + 23) & 0x10) != 0)
      {
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&v91, v78);
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(&v79, v78);
      v10 = v82;
    }

    while (v79 != v8 || v82 != v9);
    for (i = v92; v91 != v92; i = v92)
    {
      v13 = *(i - 1);
      v92 = i - 8;
      v14 = *(v13 + 8);
      *&v83 = v14;
      *&v79 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v89, &v83, &v79) & 1) == 0)
      {
        *&v79 = v14;
        llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v89, &v79, &v83);
        v15 = *(v13 + 8);
        v16 = *(v15 + 40);
        v17 = *(v15 + 48);
        while (v16 != v17)
        {
          v18 = *v16;
          if ((*(*(*v16 + 8) + 8) & 1) != 0 && (*(v18 + 23) & 0x10) == 0)
          {
            v19 = v92;
            if (v92 >= v93)
            {
              v21 = (v92 - v91) >> 3;
              if ((v21 + 1) >> 61)
              {
                std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
              }

              v22 = (v93 - v91) >> 2;
              if (v22 <= v21 + 1)
              {
                v22 = v21 + 1;
              }

              if (v93 - v91 >= 0x7FFFFFFFFFFFFFF8)
              {
                v23 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&v91, v23);
              }

              v24 = (8 * v21);
              *v24 = v18;
              v20 = 8 * v21 + 8;
              v25 = v24 - (v92 - v91);
              memcpy(v25, v91, v92 - v91);
              v26 = v91;
              v91 = v25;
              v92 = v20;
              v93 = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *v92 = v18;
              v20 = (v19 + 8);
            }

            v92 = v20;
            v18 = *v16;
          }

          *(v18 + 16) |= 0x1000000000000000uLL;
          v16 += 4;
        }
      }
    }
  }

  __p = 0;
  v76 = 0;
  v77 = 0;
  llvm::jitlink::LinkGraph::defined_symbols(&v83, v7);
  v79 = v83;
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v27 = v87;
  v28 = v88;
  v29 = v86;
  if (v83 != v87 || v86 != v88)
  {
    do
    {
      v78[0] = *v29;
      if ((*(v78[0] + 23) & 0x10) == 0)
      {
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&__p, v78);
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Symbol *,llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>>::Iterator,llvm::jitlink::Symbol *,&llvm::jitlink::LinkGraph::getSectionSymbols>::operator++(&v79, v78);
      v29 = v82;
    }

    while (v79 != v27 || v82 != v28);
  }

  v31 = __p;
  v32 = v76;
  if (__p != v76)
  {
    do
    {
      v34 = *(*(*v31 + 8) + 16);
      *&v83 = *v31;
      v33 = v83;
      llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v34 + 56, &v83);
      if ((*v33 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v33 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v31 += 8;
    }

    while (v31 != v32);
    v31 = __p;
  }

  if (v31)
  {
    v76 = v31;
    operator delete(v31);
  }

  __p = 0;
  v76 = 0;
  v77 = 0;
  llvm::jitlink::LinkGraph::blocks(v7, &v83);
  v79 = v83;
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v35 = v87;
  v36 = v88;
  v37 = v86;
  if (v83 != v87 || v86 != v88)
  {
    do
    {
      v38 = *v37;
      v78[0] = *v37;
      v94 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v89, v78, &v94) & 1) == 0)
      {
        v39 = v76;
        if (v76 >= v77)
        {
          v41 = (v76 - __p) >> 3;
          if ((v41 + 1) >> 61)
          {
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v42 = (v77 - __p) >> 2;
          if (v42 <= v41 + 1)
          {
            v42 = v41 + 1;
          }

          if (v77 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v43 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v43);
          }

          v44 = (8 * v41);
          *v44 = v38;
          v40 = 8 * v41 + 8;
          v45 = v44 - (v76 - __p);
          memcpy(v45, __p, v76 - __p);
          v46 = __p;
          __p = v45;
          v76 = v40;
          v77 = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          *v76 = v38;
          v40 = (v39 + 8);
        }

        v76 = v40;
      }

      llvm::jitlink::LinkGraph::nested_collection_iterator<llvm::mapped_iterator<llvm::DenseMapIterator<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<llvm::jitlink::Section>>,false>,llvm::jitlink::LinkGraph::GetSectionMapEntryValue,llvm::jitlink::Section&>,llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::Iterator,llvm::jitlink::Block *,&llvm::jitlink::LinkGraph::getSectionBlocks>::operator++(&v79, v78);
      v37 = v82;
    }

    while (v79 != v35 || v82 != v36);
  }

  v48 = __p;
  v49 = v76;
  if (__p != v76)
  {
    do
    {
      v50 = *v48;
      v48 += 8;
      llvm::jitlink::LinkGraph::removeBlock(v7, v50);
    }

    while (v48 != v49);
    v48 = __p;
  }

  if (v48)
  {
    v76 = v48;
    operator delete(v48);
  }

  v83 = 0uLL;
  *&v84 = 0;
  v51 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 224);
  v54 = *(v7 + 224) + 8 * *(v7 + 240);
  if (v54 != v51)
  {
    v55 = v51;
    v56 = v52;
    do
    {
      *&v79 = *v55;
      if ((*(v79 + 23) & 0x10) == 0)
      {
        std::vector<llvm::jitlink::Symbol *>::push_back[abi:nn200100](&v83, &v79);
      }

      do
      {
        ++v55;
      }

      while (v55 != v56 && (*v55 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v55 != v54);
    v58 = *(&v83 + 1);
    v57 = v83;
    if (v83 != *(&v83 + 1))
    {
      do
      {
        *&v79 = *v57;
        v59 = v79;
        v53.n128_u64[0] = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::erase(v7 + 224, &v79);
        if ((*v59 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v59 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v57;
      }

      while (v57 != v58);
      v57 = v83;
    }

    if (v57)
    {
      *(&v83 + 1) = v57;
      operator delete(v57);
    }
  }

  MEMORY[0x277C69E30](v89[0], 8, v53);
  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  llvm::jitlink::JITLinkerBase::runPasses(&v83, a1, a1[6], a1[7]);
  if (v83)
  {
    v60 = a1[1];
    v73 = v83;
    *&v83 = 0;
    (*(*v60 + 24))(v60, &v73);
    v5 = v73;
    if (!v73)
    {
LABEL_4:
      result = v83;
      if (v83)
      {
        return (*(*v83 + 8))(v83);
      }

      return result;
    }

LABEL_3:
    (*(*v5 + 8))(v5);
    goto LABEL_4;
  }

  v61 = a1[2];
  if (*(v61 + 272) != *(v61 + 280))
  {
LABEL_100:
    v62 = (*(*a1[1] + 16))(a1[1]);
    v63 = a1[2];
    v64 = *(a1[1] + 8);
    v65 = *a2;
    *a2 = 0;
    v95[0] = v65;
    v95[3] = llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::CallbacksHolder<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1,llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1,void>::Callbacks + 6;
    (*(*v62 + 16))(v62, v64, v63, v95);
    return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v95);
  }

  if (*(v61 + 208))
  {
    v66 = *(v61 + 200);
    v67 = *(v61 + 216);
    if (v67)
    {
      v68 = 24 * v67;
      v69 = *(v61 + 200);
      while (*v69 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v69 += 3;
        v68 -= 24;
        if (!v68)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      v69 = *(v61 + 200);
    }

    v71 = (v66 + 24 * v67);
LABEL_110:
    if (v69 != v71)
    {
      if (*(v69[2] + 20) != 2)
      {
        goto LABEL_100;
      }

      while (1)
      {
        v69 += 3;
        if (v69 == v71)
        {
          break;
        }

        if (*v69 < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_110;
        }
      }
    }
  }

LABEL_106:
  v70 = *a2;
  *a2 = 0;
  v72 = v70;
  v97 = 0;
  v96 = 0;
  llvm::jitlink::JITLinkerBase::linkPhase2(a1, &v72, &v96);
  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v96);
  result = v72;
  if (v72)
  {
    return (*(*v72 + 8))(v72);
  }

  return result;
}

void *llvm::jitlink::JITLinkerBase::runPasses(void *result, uint64_t a2, void *a3, void *a4)
{
  v4 = result;
  if (a3 == a4)
  {
LABEL_7:
    *v4 = 0;
  }

  else
  {
    v6 = a3;
    while (1)
    {
      v8 = v6[3];
      v9 = v6;
      if ((v8 & 2) == 0)
      {
        v9 = *v6;
      }

      result = (*(v8 & 0xFFFFFFFFFFFFFFF8))(v9, *(a2 + 16));
      if (*v4)
      {
        break;
      }

      v6 += 4;
      if (v6 == a4)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t *llvm::jitlink::JITLinkerBase::linkPhase2(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    *a3 = 0;
    v26 = v5;
    (*(*v4 + 24))(v4, &v26);
    result = v26;
    if (!v26)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

  v8 = *a3;
  *a3 = 0;
  v9 = *(a1 + 144);
  *(a1 + 144) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  llvm::jitlink::JITLinkerBase::runPasses(&v23, a1, *(a1 + 72), *(a1 + 80));
  v10 = v23;
  if (v23 || ((*(**(a1 + 8) + 40))(&v23), (v10 = v23) != 0))
  {
    v11 = *a2;
    *a2 = 0;
    *&v23 = 0;
    v12 = *(a1 + 144);
    v30 = v11;
    v31 = v10;
    v33 = off_2815A4360 + 6;
    (*(*v12 + 16))(v12, &v30);
    llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v30);
    result = v23;
    if (!v23)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

  v13 = *(a1 + 16);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v14 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v13 + 224);
  v17 = *(v13 + 224) + 8 * *(v13 + 240);
  if (v17 != v14)
  {
    v18 = v14;
    v19 = v15;
    do
    {
      v20 = *v18++;
      v21 = (v20[2] >> 62) & 1;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::FindAndConstruct(&v30, v20)[2] = v21;
      while (v18 != v19 && (*v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v18;
      }
    }

    while (v18 != v17);
    if (v31)
    {
      *a2 = 0;
      operator new();
    }
  }

  *&v16 = 0;
  v22 = *a2;
  *a2 = 0;
  v25 = v22;
  v29 = 0;
  v27 = v16;
  v23 = v16;
  v28 = 0;
  v24 = 0;
  llvm::jitlink::JITLinkerBase::linkPhase3(v22, &v25, &v27);
  llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(&v27);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v23);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v30);
}

void *llvm::jitlink::JITLinkerBase::linkPhase3(uint64_t a1, char **a2, uint64_t *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3[3])
  {
    v6 = 0;
    v7 = *a2;
    *a2 = 0;
    if (a3[3])
    {
      v6 = *a3;
      *a3 = 0;
    }

    v8 = *(a1 + 144);
    v38 = v7;
    v39 = v6;
    v40 = off_2815A4360 + 6;
    (*(*v8 + 16))(v8, &v38);
    return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v38);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    MEMORY[0x277C69E30](0, 8);
    v10 = *(a3 + 4);
    v34 = v10;
    if (v10)
    {
      v11 = operator new(24 * v10, 8uLL);
      v12 = 0;
      v13 = 0;
      v32 = v11;
      v33 = a3[1];
      do
      {
        v14 = *(*a3 + v12);
        *&v11[v12] = v14;
        if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v14 + 8), 1uLL);
          v11 = v32;
          v14 = *&v32[v12];
        }

        if ((v14 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          *&v11[v12 + 8] = *(*a3 + v12 + 8);
        }

        ++v13;
        v12 += 24;
      }

      while (v13 < v34);
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v15 = *(a1 + 16);
    v16 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v15 + 224);
    v18 = *(v15 + 224) + 8 * *(v15 + 240);
    if (v18 != v16)
    {
      v19 = v16;
      v20 = v17;
      do
      {
        v21 = *v19;
        v38 = 0;
        v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(&v32, v21, &v38);
        v23 = v38;
        if (v22)
        {
          v24 = v38 == &v32[24 * v34];
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          **(v21 + 8) = *(v38 + 1);
          v25 = *(v21 + 16) & 0xFDFFFFFFFFFFFFFFLL | (((v23[17] & 2) != 0) << 57);
          *(v21 + 16) = v25;
          *(v21 + 16) = v25 & 0xF3FFFFFFFFFFFFFFLL | ((((v23[17] >> 4) & 1) == 0) << 58);
        }

        do
        {
          ++v19;
        }

        while (v19 != v20 && (*v19 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v19 != v18);
    }

    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(&v32);
    llvm::jitlink::JITLinkerBase::runPasses(&v31, a1, *(a1 + 96), *(a1 + 104));
    v26 = v31;
    if (v31 || ((*(*a1 + 16))(&v31, a1, *(a1 + 16)), (v26 = v31) != 0) || (llvm::jitlink::JITLinkerBase::runPasses(&v31, a1, *(a1 + 120), *(a1 + 128)), (v26 = v31) != 0))
    {
      v27 = *a2;
      *a2 = 0;
      v31 = 0;
      v28 = *(a1 + 144);
      v38 = v27;
      v39 = v26;
      v40 = off_2815A4360 + 6;
      (*(*v28 + 16))(v28, &v38);
      llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(&v38);
      result = v31;
      if (v31)
      {
        return (*(*v31 + 8))(v31);
      }
    }

    else
    {
      v29 = *(a1 + 144);
      v30 = *a2;
      *a2 = 0;
      if (v29)
      {
        v35[0] = v30;
        v35[3] = _MergedGlobals_7 + 6;
        (*(*v29 + 24))(v29, v35);
        return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v35);
      }

      else
      {
        v37 = 0;
        v36 = -1;
        result = llvm::jitlink::JITLinkerBase::linkPhase4(*(a1 + 8), &v36);
        if (v37)
        {
          result = v36;
          if (v36)
          {
            result = (*(*v36 + 8))(v36);
          }
        }

        if (v30)
        {
          return (*(*v30 + 8))(v30);
        }
      }
    }
  }

  return result;
}

uint64_t llvm::jitlink::JITLinkerBase::linkPhase4(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v2 = *a2;
    *a2 = 0;
    v5 = v2;
    (*(*a1 + 24))(a1, &v5);
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  else
  {
    v4 = *a2;
    *a2 = -1;
    return (*(*a1 + 48))(a1, &v4);
  }

  return result;
}

void std::vector<llvm::unique_function<llvm::Error ()(llvm::jitlink::LinkGraph &)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v4 - 4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::CallImpl<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1>(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8) & 1;
  v2 = v8;
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = 0;
  v6 = v4;
  v7 = 0;
  v10 = v2;
  v9 = v3;
  llvm::jitlink::JITLinkerBase::linkPhase2(v4, &v6, &v9);
  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v9);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(&v7);
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::MoveImpl<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1>(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>>::DestroyImpl<llvm::jitlink::JITLinkerBase::linkPhase1(std::unique_ptr<llvm::jitlink::JITLinkerBase>)::$_1>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t llvm::jitlink::createLookupContinuation<llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0>(llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0)::Impl::~Impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void llvm::jitlink::createLookupContinuation<llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0>(llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0)::Impl::~Impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::jitlink::createLookupContinuation<llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0>(llvm::jitlink::JITLinkerBase::linkPhase2(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>)::$_0)::Impl::run(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24) & 1;
  v11 = v2;
  v3 = *a2;
  if (v2)
  {
    *a2 = 0;
    v4 = *(a1 + 8);
  }

  else
  {
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
    *a2 = 0;
    v4 = *(a1 + 8);
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    v12[1] = v6;
    v9[1] = 0;
    v13 = v5;
    v10 = 0;
  }

  *(a1 + 8) = 0;
  v8 = v4;
  v9[0] = 0;
  v14 = v2;
  v12[0] = v3;
  llvm::jitlink::JITLinkerBase::linkPhase3(v4, &v8, v12);
  llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v12);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v9);
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>::CallImpl<llvm::jitlink::JITLinkerBase::linkPhase3(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)::$_0>(uint64_t **a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 8) & 1;
  v3 = *a2;
  *a2 = -!v2;
  v4 = *a1;
  *a1 = 0;
  v8 = v2;
  v7 = v3;
  llvm::jitlink::JITLinkerBase::linkPhase4(v4[1], &v7);
  if ((v8 & 1) != 0 && v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = *(*v4 + 8);

  return v5(v4);
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>::MoveImpl<llvm::jitlink::JITLinkerBase::linkPhase3(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)::$_0>(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Expected<llvm::jitlink::JITLinkMemoryManager::FinalizedAlloc>>::DestroyImpl<llvm::jitlink::JITLinkerBase::linkPhase3(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>)::$_0>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(a1, v7, a2);
  }

  return v5;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *a3;
  *result = *a3;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 1uLL);
  }

  result[2] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -8;
      }

      if (v17.i8[4])
      {
        *v16 = -8;
      }

      v11 += 2;
      v16 += 32;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>,llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::jitlink::SymbolLookupFlags>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -8;
      }

      if (v13.i8[4])
      {
        *v12 = -8;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v16 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v16);
        v15 = v16;
        if ((*v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v14 = 0;
        *v15 = 0;
        *v15 = *v4;
        *v4 = 0;
        *(v15 + 8) = *(v4 + 2);
        ++*(v5 + 8);
      }

      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::CallImpl<llvm::jitlink::JITLinkerBase::abandonAllocAndBailOut(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Error)::$_0>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = a1[1];
  v4 = *(*a1 + 8);
  a1[1] = 0;
  v7 = v2;
  v8 = v3;
  llvm::ErrorList::join(&v8, &v7, &v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v8)
  {
    (*(*v8 + 1))(v8);
  }

  (*(*v4 + 24))(v4, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 8))(v6);
  }

  return result;
}

void *llvm::detail::UniqueFunctionBase<void,llvm::Error>::MoveImpl<llvm::jitlink::JITLinkerBase::abandonAllocAndBailOut(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Error)::$_0>(void *result, uint64_t *a2)
{
  result[1] = 0;
  v2 = *a2;
  result[1] = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *result = v2;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,llvm::Error>::DestroyImpl<llvm::jitlink::JITLinkerBase::abandonAllocAndBailOut(std::unique_ptr<llvm::jitlink::JITLinkerBase>,llvm::Error)::$_0>(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

llvm::jitlink::BasicLayout *llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::BasicLayout *this, llvm::jitlink::LinkGraph *a2)
{
  v2 = this;
  v96 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = this + 24;
  v87 = this + 8;
  *(this + 2) = 0x400000000;
  if (*(a2 + 52))
  {
    v3 = *(a2 + 54);
    if (v3)
    {
      v4 = 24 * v3;
      for (i = *(a2 + 25); *i >= 0xFFFFFFFFFFFFFFFELL; i += 3)
      {
        v4 -= 24;
        if (!v4)
        {
          return v2;
        }
      }
    }

    else
    {
      i = *(a2 + 25);
    }

    v6 = *(a2 + 25) + 24 * v3;
    if (i != v6)
    {
      do
      {
        v7 = i[2];
        if ((*(v7 + 32) + 8 * *(v7 + 48)) != llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32) && *(v7 + 20) != 2)
        {
          v8 = *(v7 + 16) | (8 * (*(v7 + 20) & 0x1F));
          v9 = *(this + 1);
          v10 = *(this + 4);
          if (v10)
          {
            v11 = *(this + 1);
            v12 = *(this + 4);
            do
            {
              v13 = v12 >> 1;
              v14 = &v11[104 * (v12 >> 1)];
              v16 = *v14;
              v15 = v14 + 104;
              v12 += ~(v12 >> 1);
              if (v16 < v8)
              {
                v11 = v15;
              }

              else
              {
                v12 = v13;
              }
            }

            while (v12);
            v17 = *(this + 4);
          }

          else
          {
            v17 = 0;
            v11 = *(this + 1);
          }

          if (v11 == (v9 + 104 * v17) || *v11 != v8)
          {
            v95 = 0;
            memset(&v94[7], 0, 32);
            v89 = *v94;
            v88[0] = v8;
            v88[8] = 0;
            *v90 = *&v94[16];
            *&v90[15] = 0uLL;
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            if ((v9 + 104 * v10) == v11)
            {
              v36 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>>(v87, v88);
              v37 = *(this + 1) + 104 * *(this + 4);
              *v37 = *v36;
              v38 = *(v36 + 24);
              v39 = *(v36 + 8);
              *(v37 + 40) = *(v36 + 40);
              *(v37 + 8) = v39;
              *(v37 + 24) = v38;
              *(v37 + 64) = 0;
              *(v37 + 72) = 0;
              *(v37 + 56) = 0;
              *(v37 + 56) = *(v36 + 56);
              *(v37 + 72) = *(v36 + 72);
              *(v36 + 56) = 0;
              *(v36 + 64) = 0;
              *(v36 + 72) = 0;
              *(v37 + 88) = 0;
              *(v37 + 96) = 0;
              *(v37 + 80) = 0;
              *(v37 + 80) = *(v36 + 80);
              *(v37 + 96) = *(v36 + 96);
              *(v36 + 80) = 0;
              *(v36 + 88) = 0;
              *(v36 + 96) = 0;
              LODWORD(v37) = *(this + 4) + 1;
              *(this + 4) = v37;
              v11 = (*(this + 1) + 104 * v37 - 104);
            }

            else
            {
              v18 = &v11[-v9];
              v19 = llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>>(v87, v88);
              v20 = *(this + 1);
              v21 = v20 + 104 * *(this + 4);
              v22 = *(v21 - 48);
              *(v21 + 40) = *(v21 - 64);
              v23 = *(v21 - 96);
              *(v21 + 24) = *(v21 - 80);
              *(v21 + 8) = v23;
              v11 = &v18[v20];
              *v21 = *(v21 - 104);
              *(v21 + 56) = v22;
              *(v21 + 72) = *(v21 - 32);
              *(v21 - 48) = 0;
              *(v21 - 40) = 0;
              *(v21 + 80) = *(v21 - 24);
              *(v21 + 96) = *(v21 - 8);
              *(v21 - 32) = 0;
              *(v21 - 24) = 0;
              *(v21 - 16) = 0;
              *(v21 - 8) = 0;
              v24 = *(this + 1);
              v25 = *(this + 4);
              v26 = v24 + 104 * v25 - 104;
              if (v26 != v11)
              {
                v27 = v24 + 104 * v25 - 104;
                do
                {
                  v28 = *(v27 - 104);
                  v27 -= 104;
                  *v26 = v28;
                  v29 = *(v26 - 80);
                  *(v26 + 8) = *(v26 - 96);
                  *(v26 + 24) = v29;
                  *(v26 + 40) = *(v26 - 64);
                  std::vector<llvm::jitlink::Block *>::__move_assign(v26 + 56, (v26 - 48));
                  std::vector<llvm::jitlink::Block *>::__move_assign(v26 + 80, (v26 - 24));
                  v26 = v27;
                }

                while (v27 != v11);
                v25 = *(this + 4);
                v24 = *(this + 1);
              }

              v30 = v25 + 1;
              *(this + 4) = v30;
              if (v19 < v24 + 104 * v30 && v19 >= v11)
              {
                v32 = 104;
              }

              else
              {
                v32 = 0;
              }

              v33 = (v19 + v32);
              *v11 = *(v19 + v32);
              v34 = *(v19 + v32 + 8);
              v35 = *(v19 + v32 + 24);
              *(v11 + 40) = *(v19 + v32 + 40);
              *(v11 + 24) = v35;
              *(v11 + 8) = v34;
              std::vector<llvm::jitlink::Block *>::__move_assign((v11 + 56), (v19 + v32 + 56));
              std::vector<llvm::jitlink::Block *>::__move_assign((v11 + 80), v33 + 5);
            }

            if (*(&v92 + 1))
            {
              *&v93 = *(&v92 + 1);
              operator delete(*(&v92 + 1));
            }

            if (v91)
            {
              *(&v91 + 1) = v91;
              operator delete(v91);
            }
          }

          v40 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin(v7 + 32);
          v42 = *(v7 + 32) + 8 * *(v7 + 48);
          if (v42 != v40)
          {
            v43 = v40;
            v44 = v41;
            v45 = v11 + 8;
            do
            {
              v46 = *v43;
              v47 = 48;
              if (!*(*v43 + 24))
              {
                v47 = 72;
              }

              v48 = &v45[v47];
              v50 = *&v45[v47 + 8];
              v49 = *&v45[v47 + 16];
              if (v50 >= v49)
              {
                v52 = (v50 - *v48) >> 3;
                if ((v52 + 1) >> 61)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v53 = v49 - *v48;
                v54 = v53 >> 2;
                if (v53 >> 2 <= (v52 + 1))
                {
                  v54 = v52 + 1;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v55 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v54;
                }

                if (v55)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(v48, v55);
                }

                v56 = (8 * v52);
                *v56 = v46;
                v51 = 8 * v52 + 8;
                v57 = *(v48 + 8) - *v48;
                v58 = v56 - v57;
                memcpy(v56 - v57, *v48, v57);
                v59 = *v48;
                *v48 = v58;
                *(v48 + 8) = v51;
                *(v48 + 16) = 0;
                if (v59)
                {
                  operator delete(v59);
                }
              }

              else
              {
                *v50 = v46;
                v51 = (v50 + 1);
              }

              *(v48 + 8) = v51;
              do
              {
                ++v43;
              }

              while (v43 != v44 && (*v43 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v43 != v42);
          }
        }

        i += 3;
        v2 = this;
        if (i == v6)
        {
          break;
        }

        while (*i >= 0xFFFFFFFFFFFFFFFELL)
        {
          i += 3;
          if (i == v6)
          {
            goto LABEL_63;
          }
        }
      }

      while (i != v6);
LABEL_63:
      v60 = *(this + 4);
      if (v60)
      {
        v61 = *(this + 1);
        v62 = v61 + 104 * v60;
        do
        {
          v63 = *(v61 + 56);
          v64 = *(v61 + 64);
          v65 = 126 - 2 * __clz((v64 - v63) >> 3);
          if (v64 == v63)
          {
            v66 = 0;
          }

          else
          {
            v66 = v65;
          }

          std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(v63, v64, v66, 1);
          v67 = *(v61 + 80);
          v68 = *(v61 + 88);
          v69 = 126 - 2 * __clz((v68 - v67) >> 3);
          if (v68 == v67)
          {
            v70 = 0;
          }

          else
          {
            v70 = v69;
          }

          std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(v67, v68, v70, 1);
          v71 = *(v61 + 56);
          v72 = *(v61 + 64);
          v73 = *(v61 + 16);
          if (v71 != v72)
          {
            v74 = *(v61 + 8);
            do
            {
              v75 = *v71++;
              v73 += *(v75 + 32) + (((*(v75 + 8) >> 8) - v73) & ~(-1 << (*(v75 + 8) >> 3)));
              *(v61 + 16) = v73;
              v76 = *(v75 + 8) >> 3;
              if (v74 <= v76)
              {
                v74 = v76;
              }

              *(v61 + 8) = v74;
            }

            while (v71 != v72);
          }

          v77 = *(v61 + 80);
          v78 = *(v61 + 88);
          v79 = v73;
          if (v77 != v78)
          {
            v80 = *(v61 + 8);
            v79 = v73;
            do
            {
              v81 = *v77++;
              v82 = *(v81 + 8);
              v83 = (v82 >> 8) - v79;
              v84 = v82 >> 3;
              v79 += *(v81 + 32) + (v83 & ~(-1 << v84));
              if (v80 <= v84)
              {
                v80 = v84;
              }

              *(v61 + 8) = v80;
            }

            while (v77 != v78);
          }

          *(v61 + 24) = v79 - v73;
          v61 += 104;
        }

        while (v61 != v62);
      }
    }
  }

  return v2;
}

uint64_t *llvm::jitlink::BasicLayout::getContiguousPageBasedLayoutSizes@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unint64_t a3@<X1>)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 104 * v4;
    v8 = (this[1] + 16);
    do
    {
      if (!(a3 >> *(v8 - 8)))
      {
        getErrorErrorCat();
        llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
      }

      v9 = (a3 - 1 + *v8 + v8[1]) / a3 * a3;
      v10 = *(v8 - 16);
      v11 = v10 >= 8;
      if (v10 >= 8)
      {
        v12 = (a3 - 1 + *v8 + v8[1]) / a3 * a3;
      }

      else
      {
        v12 = 0;
      }

      v6 += v12;
      if (v11)
      {
        v9 = 0;
      }

      v5 += v9;
      v8 += 13;
      v7 -= 104;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(a1 + 16) &= ~1u;
  *a1 = v5;
  a1[1] = v6;
  return this;
}

uint64_t *llvm::jitlink::BasicLayout::apply@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = this[1];
    v5 = &v4[13 * v3];
    do
    {
      v6 = v4[7];
      v7 = v4[8];
      if (v6 != v7)
      {
        v8 = v4[6];
        do
        {
          v9 = *v6++;
          v10 = v4[5];
          v11 = (((v9[1] >> 8) - v4[4]) & ~(-1 << (v9[1] >> 3))) + v4[4];
          v4[4] = v11;
          v12 = (((v9[1] >> 8) - v8) & ~(-1 << (v9[1] >> 3))) + v8;
          *v9 = v11;
          v13 = v9[3];
          v14 = v9[4];
          v4[4] += v14;
          v4[6] = v12;
          this = memcpy((v10 + v12), v13, v14);
          v15 = v9[4];
          v9[3] = v4[5] + v4[6];
          v9[1] |= 4uLL;
          v8 = v4[6] + v15;
          v4[6] = v8;
        }

        while (v6 != v7);
      }

      v16 = v4[10];
      v17 = v4[11];
      if (v16 != v17)
      {
        v18 = v4[4];
        v19 = v4[10];
        do
        {
          v20 = *v19++;
          v21 = (((v20[1] >> 8) - v18) & ~(-1 << (v20[1] >> 3))) + v18;
          v4[4] = v21;
          *v20 = v21;
          v18 = v4[4] + v20[4];
          v4[4] = v18;
        }

        while (v19 != v17);
      }

      v4[8] = v4[7];
      v4[11] = v16;
      v4 += 13;
    }

    while (v4 != v5);
  }

  *a1 = 0;
  return this;
}

void **llvm::jitlink::InProcessMemoryManager::allocate(uint64_t a1, int a2, llvm::jitlink::LinkGraph *a3, void *a4)
{
  v37[55] = *MEMORY[0x277D85DE8];
  llvm::jitlink::BasicLayout::BasicLayout(&v34, a3);
  llvm::jitlink::BasicLayout::getContiguousPageBasedLayoutSizes(v32, &v34, *(a1 + 8));
  if (v33)
  {
    v31 = -1;
    v30 = v32[0];
    v6 = a4[3];
    if ((v6 & 2) == 0)
    {
      a4 = *a4;
    }

    (*(v6 & 0xFFFFFFFFFFFFFFF8))(a4, &v30);
    v7 = &v30;
  }

  else
  {
    v9 = v32[0];
    v8 = v32[1];
    LODWORD(v24) = 0;
    v25 = std::system_category();
    llvm::sys::Memory::allocateMappedMemory(v8 + v9, 0, 50331648, &v24, v37);
    if (v24)
    {
      *&v10.__val_ = v25;
      llvm::errorCodeToError(v24, v10, &v23);
      v29 = -1;
      v28 = v23;
      v11 = a4[3];
      if ((v11 & 2) == 0)
      {
        a4 = *a4;
      }

      (*(v11 & 0xFFFFFFFFFFFFFFF8))(a4, &v28);
      v7 = &v28;
    }

    else
    {
      v12 = v37[0];
      bzero(v37[0], v37[1]);
      if (v36)
      {
        v13 = v35;
        v14 = &v35[104 * v36];
        v15 = &v12[v9];
        v16 = v12;
        do
        {
          v17 = *v13;
          if (v17 >= 8)
          {
            v18 = v15;
          }

          else
          {
            v18 = v16;
          }

          *(v13 + 4) = v18;
          v19 = *(a1 + 8);
          v20 = *(v13 + 2) + *(v13 + 3) + v19 - 1;
          *(v13 + 5) = v18;
          if (v17 >= 8)
          {
            v15 = &v18[v20 / v19 * v19];
          }

          else
          {
            v16 = &v18[v20 / v19 * v19];
          }

          v13 += 104;
        }

        while (v13 != v14);
      }

      llvm::jitlink::BasicLayout::apply(v37, &v34);
      if (!v37[0])
      {
        operator new();
      }

      v27 = -1;
      v26 = v37[0];
      v21 = a4[3];
      if ((v21 & 2) == 0)
      {
        a4 = *a4;
      }

      (*(v21 & 0xFFFFFFFFFFFFFFF8))(a4, &v26);
      v7 = &v26;
    }
  }

  llvm::Expected<std::unique_ptr<llvm::jitlink::JITLinkMemoryManager::InFlightAlloc>>::~Expected(v7);
  return llvm::SmallVector<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,4u>::~SmallVector(&v35);
}

void llvm::jitlink::InProcessMemoryManager::deallocate(uint64_t a1, __int128 ***a2, void *a3)
{
  std::mutex::lock((a1 + 16));
  v6 = *a2;
  v40 = a2[1];
  if (*a2 == v40)
  {
    std::mutex::unlock((a1 + 16));
    v9 = 0;
    v7 = 0;
    v8 = 0;
    v28 = 0;
  }

  else
  {
    v38 = a3;
    v39 = a1;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *v6;
      *v6 = -1;
      v12 = v10 - v9;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * (-v9 >> 3) > v14)
      {
        v14 = 0x5555555555555556 * (-v9 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v9 >> 3) >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_65;
      }

      v16 = v9;
      v17 = 24 * v13;
      v18 = *v11;
      *(v17 + 16) = *(v11 + 2);
      *v17 = v18;
      v10 = 24 * v13 + 24;
      v9 = 24 * v13 + 24 * (v12 / -24);
      memcpy(v9, v16, v12);
      if (v16)
      {
        operator delete(v16);
      }

      v19 = v39;
      v20 = *(v11 + 24);
      if ((vmovn_s64(vceqq_s64(v20, vdupq_laneq_s64(v20, 1))).u8[0] & 1) == 0)
      {
        v21 = 24 * v13 + 24 * (v12 / -24);
        v22 = v8 - v7;
        v23 = 0xAAAAAAAAAAAAAAABLL * (v8 - v7);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * (-v7 >> 3) > v24)
        {
          v24 = 0x5555555555555556 * (-v7 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 3) >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          if (v25 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_65:
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v26 = 24 * v23;
        *v26 = v20;
        *(v26 + 16) = *(v11 + 5);
        *(v11 + 3) = 0;
        *(v11 + 4) = 0;
        *(v11 + 5) = 0;
        v8 = (24 * v23 + 24);
        v27 = (24 * v23 - v22);
        memcpy((v26 - v22), v7, v22);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v27;
        v9 = v21;
        v19 = v39;
      }

      v46 = v11 + 3;
      std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v46);
      *v11 = *(v19 + 80);
      *(v19 + 80) = v11;
      ++v6;
    }

    while (v6 != v40);
    std::mutex::unlock((v19 + 16));
    if (v7 == v8)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      v29 = v8;
      do
      {
        v31 = *(v29 - 3);
        v30 = *(v29 - 2);
        v29 -= 3;
        while (v31 != v30)
        {
          llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged(&v44, (v30 - 56));
          v32 = v44;
          if (v44)
          {
            v44 = 0;
            v45 = v32;
            v46 = v28;
            llvm::ErrorList::join(&v46, &v45, &v43);
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }

            if (v46)
            {
              (*(*v46 + 1))(v46);
            }

            v28 = v43;
            if (v44)
            {
              (*(*v44 + 1))(v44);
            }
          }

          v33 = *(v8 - 2);
          v34 = *(v33 - 48);
          if (v34 != (v33 - 24))
          {
            free(v34);
          }

          v30 = v33 - 56;
          *(v8 - 2) = (v33 - 56);
          v31 = *(v8 - 3);
        }

        v10 -= 24;
        v35 = llvm::sys::Memory::releaseMappedMemory(v10);
        if (v35)
        {
          llvm::errorCodeToError(v35, v36, &v42);
          v45 = v42;
          v46 = v28;
          v42 = 0;
          llvm::ErrorList::join(&v46, &v45, &v44);
          if (v45)
          {
            (*(*v45 + 8))(v45);
          }

          if (v46)
          {
            (*(*v46 + 1))(v46);
          }

          v28 = v44;
        }

        v46 = v29;
        std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v46);
        v8 = v29;
      }

      while (v7 != v29);
      v8 = v29;
    }

    a3 = v38;
  }

  v41 = v28;
  v37 = a3[3];
  if ((v37 & 2) == 0)
  {
    a3 = *a3;
  }

  (*(v37 & 0xFFFFFFFFFFFFFFF8))(a3, &v41);
  if (v41)
  {
    (*(*v41 + 1))(v41);
  }

  if (v7)
  {
    while (v8 != v7)
    {
      v8 -= 3;
      v46 = v8;
      std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v46);
    }

    operator delete(v7);
  }

  if (v9)
  {
    operator delete(v9);
  }
}

void llvm::orc::shared::WrapperFunctionCall::runWithSPSRetErrorMerged(uint64_t *__return_ptr a1@<X8>, llvm::orc::shared::WrapperFunctionCall *this@<X0>)
{
  v5[0] = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  llvm::orc::shared::WrapperFunctionCall::runWithSPSRet<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError>(this, v5, a1);
  if (!*a1)
  {
    __p = v6;
    v4 = HIBYTE(v8);
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (v5[0] == 1)
    {
      getErrorErrorCat();
      v9 = 3;
      v10 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    *a1 = 0;
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v6);
  }
}

void llvm::jitlink::InProcessMemoryManager::~InProcessMemoryManager(llvm::jitlink::InProcessMemoryManager *this)
{
  *this = &unk_2883ECE18;
  *(this + 10) = 0;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 88);
  std::mutex::~mutex((this + 16));
}

{
  *this = &unk_2883ECE18;
  *(this + 10) = 0;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 88);
  std::mutex::~mutex((this + 16));

  JUMPOUT(0x277C69E40);
}

void std::vector<llvm::orc::shared::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::orc::shared::WrapperFunctionCall>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::orc::shared::WrapperFunctionCall>::clear[abi:nn200100](char **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 24;
    do
    {
      v5 = *(v4 - 3);
      if (v4 != v5)
      {
        free(v5);
      }

      v6 = v4 - 32;
      v4 -= 56;
    }

    while (v6 != v3);
  }

  a1[1] = v3;
}

void llvm::orc::shared::WrapperFunctionCall::runWithSPSRet<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = (*a1)(*(a1 + 8), *(a1 + 16));
  v10 = v5;
  v11 = v6;
  if (v6)
  {
    v7 = &v10;
    if (v6 > 8)
    {
      v7 = v5;
    }
  }

  else
  {
    if (v5)
    {
      getErrorErrorCat();
      v8 = 3;
      v9 = &getErrorErrorCat(void)::ErrorErrorCat;
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v7 = &v10;
  }

  v8 = v7;
  v9 = v6;
  if ((llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSError,llvm::orc::shared::detail::SPSSerializableError,void>::deserialize(&v8, a2) & 1) == 0)
  {
    getErrorErrorCat();
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  *a3 = 0;
  if (v11 > 8 || !v11 && v10)
  {
    free(v10);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 104 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<llvm::orc::AllocGroup,llvm::jitlink::BasicLayout::Segment>,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(unint64_t result, void *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v9, (v9 + 1), (a2 - 1));
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v9, (v9 + 1), (v9 + 2), (a2 - 1));
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v9, (v9 + 1), (v9 + 2), (v9 + 3), (a2 - 1));
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v62 = *(a2 - 1);
        v63 = *v9;
        v64 = *(v62[2] + 24);
        v65 = *(*(*v9 + 16) + 24);
        v66 = v64 >= v65;
        if (v64 == v65)
        {
          v66 = *v62 >= *v63;
          if (*v62 == *v63)
          {
            v66 = v62[4] >= v63[4];
          }
        }

        if (!v66)
        {
          *v9 = v62;
          *(a2 - 1) = v63;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return result;
      }

      v84 = (v10 - 2) >> 1;
      v85 = v84;
      do
      {
        v86 = v85;
        if (v84 >= v85)
        {
          v87 = (2 * v85) | 1;
          v88 = &v9[v87];
          if (2 * v86 + 2 < v10)
          {
            v89 = v88[1];
            v90 = *v88;
            v91 = *((*v88)[2] + 24);
            result = *(v89[2] + 24);
            v92 = v91 >= result;
            if (v91 == result)
            {
              result = *v89;
              v92 = *v90 >= *v89;
              if (*v90 == *v89)
              {
                v92 = v90[4] >= v89[4];
              }
            }

            if (!v92)
            {
              ++v88;
              v87 = 2 * v86 + 2;
            }
          }

          v93 = v9[v86];
          v94 = *v88;
          v95 = *((*v88)[2] + 24);
          v96 = *(v93[2] + 24);
          v97 = v95 >= v96;
          if (v95 == v96)
          {
            v97 = *v94 >= *v93;
            if (*v94 == *v93)
            {
              v97 = v94[4] >= v93[4];
            }
          }

          if (v97)
          {
            v9[v86] = v94;
            while (1)
            {
              if (v84 < v87)
              {
                goto LABEL_180;
              }

              v98 = v88;
              v99 = 2 * v87;
              v87 = (2 * v87) | 1;
              v88 = &v9[v87];
              v100 = v99 + 2;
              if (v100 < v10)
              {
                v101 = v88[1];
                result = *v88;
                v102 = *((*v88)[2] + 24);
                v103 = *(v101[2] + 24);
                v104 = v102 >= v103;
                if (v102 == v103)
                {
                  v104 = *result >= *v101;
                  if (*result == *v101)
                  {
                    result = *(result + 32);
                    v104 = result >= v101[4];
                  }
                }

                if (!v104)
                {
                  ++v88;
                  v87 = v100;
                }
              }

              v105 = *v88;
              v106 = *((*v88)[2] + 24);
              v107 = *(v93[2] + 24);
              v108 = v106 >= v107;
              if (v106 == v107)
              {
                v108 = *v105 >= *v93;
                if (*v105 == *v93)
                {
                  v108 = v105[4] >= v93[4];
                }
              }

              if (!v108)
              {
                break;
              }

              *v98 = v105;
            }

            v88 = v98;
LABEL_180:
            *v88 = v93;
          }
        }

        v85 = v86 - 1;
      }

      while (v86);
      while (1)
      {
        v109 = 0;
        v110 = *v9;
        v111 = v9;
        do
        {
          v112 = v111;
          v113 = &v111[v109];
          v111 = v113 + 1;
          v114 = 2 * v109;
          v109 = (2 * v109) | 1;
          v115 = v114 + 2;
          if (v115 < v10)
          {
            v118 = v113[2];
            v116 = v113 + 2;
            v117 = v118;
            v119 = *(v116 - 1);
            result = *(v119[2] + 24);
            v120 = *(v118[2] + 24);
            v121 = result >= v120;
            if (result == v120)
            {
              result = *v119;
              v121 = *v119 >= *v117;
              if (*v119 == *v117)
              {
                v121 = v119[4] >= v117[4];
              }
            }

            if (!v121)
            {
              v111 = v116;
              v109 = v115;
            }
          }

          *v112 = *v111;
        }

        while (v109 <= ((v10 - 2) >> 1));
        if (v111 != --a2)
        {
          *v111 = *a2;
          *a2 = v110;
          v122 = (v111 - v9 + 8) >> 3;
          v123 = v122 - 2;
          if (v122 < 2)
          {
            goto LABEL_204;
          }

          v124 = v123 >> 1;
          v125 = &v9[v123 >> 1];
          v126 = *v125;
          v110 = *v111;
          v127 = *(*(*v125 + 16) + 24);
          v128 = *(*(*v111 + 16) + 24);
          v129 = v127 >= v128;
          if (v127 == v128)
          {
            v129 = *v126 >= *v110;
            if (*v126 == *v110)
            {
              v129 = v126[4] >= v110[4];
            }
          }

          if (v129)
          {
            goto LABEL_204;
          }

          *v111 = v126;
          if (v123 >= 2)
          {
            while (1)
            {
              v130 = v124 - 1;
              v124 = (v124 - 1) >> 1;
              v111 = &v9[v124];
              v131 = *v111;
              v132 = *(*(*v111 + 16) + 24);
              v133 = *(v110[2] + 24);
              v134 = v132 >= v133;
              if (v132 == v133)
              {
                v134 = *v131 >= *v110;
                if (*v131 == *v110)
                {
                  v134 = v131[4] >= v110[4];
                }
              }

              if (v134)
              {
                break;
              }

              *v125 = v131;
              v125 = &v9[v124];
              if (v130 <= 1)
              {
                goto LABEL_203;
              }
            }
          }

          v111 = v125;
        }

LABEL_203:
        *v111 = v110;
LABEL_204:
        if (v10-- <= 2)
        {
          return result;
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &v9[v10 >> 1];
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(&v7[v10 >> 1], v7, (a2 - 1));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>(v7, &v7[v10 >> 1], (a2 - 1));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>((v7 + 1), (v12 - 1), (a2 - 2));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>((v7 + 2), &v7[v11 + 1], (a2 - 3));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,0>((v12 - 1), v12, &v7[v11 + 1]);
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
    }

    --a3;
    v14 = *v7;
    if (a4)
    {
      v15 = *(v14[2] + 24);
      goto LABEL_22;
    }

    v16 = *(v7 - 1);
    v15 = *(v16[2] + 24);
    v17 = *(v14[2] + 24);
    v18 = v15 >= v17;
    if (v15 == v17)
    {
      v18 = *v16 >= *v14;
      if (*v16 == *v14)
      {
        v18 = v16[4] >= v14[4];
      }
    }

    else
    {
      v15 = *(v14[2] + 24);
    }

    if (v18)
    {
      v41 = *v8;
      v42 = *(*(*v8 + 16) + 24);
      v43 = v17 >= v42;
      if (v17 == v42)
      {
        v43 = *v14 >= *v41;
        if (*v14 == *v41)
        {
          v43 = v14[4] >= v41[4];
        }
      }

      v9 = v7 + 1;
      if (v43)
      {
        while (v9 < a2)
        {
          v47 = *v9;
          v48 = *(*(*v9 + 16) + 24);
          v49 = v17 >= v48;
          if (v17 == v48)
          {
            v49 = *v14 >= *v47;
            if (*v14 == *v47)
            {
              v49 = v14[4] >= v47[4];
            }
          }

          if (!v49)
          {
            break;
          }

          ++v9;
        }
      }

      else
      {
        while (1)
        {
          v44 = *v9;
          v45 = *(*(*v9 + 16) + 24);
          v46 = v17 >= v45;
          if (v17 == v45)
          {
            v46 = *v14 >= *v44;
            if (*v14 == *v44)
            {
              v46 = v14[4] >= v44[4];
            }
          }

          if (!v46)
          {
            break;
          }

          ++v9;
        }
      }

      i = a2;
      if (v9 < a2)
      {
        for (i = (a2 - 1); ; --i)
        {
          v51 = v17 >= v42;
          if (v17 == v42)
          {
            v51 = *v14 >= *v41;
            if (*v14 == *v41)
            {
              v51 = v14[4] >= v41[4];
            }
          }

          if (v51)
          {
            break;
          }

          v52 = *(i - 1);
          v41 = v52;
          v42 = *(v52[2] + 24);
        }
      }

      if (v9 < i)
      {
        v53 = *v9;
        v54 = *i;
        do
        {
          *v9++ = v54;
          *i = v53;
          v55 = *(v14[2] + 24);
          while (1)
          {
            v53 = *v9;
            v56 = *(*(*v9 + 16) + 24);
            v57 = v55 >= v56;
            if (v55 == v56)
            {
              v57 = *v14 >= *v53;
              if (*v14 == *v53)
              {
                v57 = v14[4] >= v53[4];
              }
            }

            if (!v57)
            {
              break;
            }

            ++v9;
          }

          do
          {
            v58 = *--i;
            v54 = v58;
            v59 = *(v58[2] + 24);
            v60 = v55 >= v59;
            if (v55 == v59)
            {
              v60 = *v14 >= *v54;
              if (*v14 == *v54)
              {
                v60 = v14[4] >= v54[4];
              }
            }
          }

          while (!v60);
        }

        while (v9 < i);
      }

      v61 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v61;
      }

      a4 = 0;
      *v61 = v14;
    }

    else
    {
LABEL_22:
      for (j = 0; ; ++j)
      {
        v20 = v7[j + 1];
        v21 = *(v20[2] + 24);
        v22 = v21 >= v15;
        if (v21 == v15)
        {
          v22 = *v20 >= *v14;
          if (*v20 == *v14)
          {
            v22 = v20[4] >= v14[4];
          }
        }

        if (v22)
        {
          break;
        }
      }

      v23 = &v7[j];
      v24 = &v7[j + 1];
      k = a2 - 1;
      if (j * 8)
      {
        while (1)
        {
          v26 = *k;
          v27 = *(*(*k + 16) + 24);
          v28 = v27 >= v15;
          if (v27 == v15)
          {
            v28 = *v26 >= *v14;
            if (*v26 == *v14)
            {
              v28 = v26[4] >= v14[4];
            }
          }

          if (!v28)
          {
            break;
          }

          --k;
        }
      }

      else
      {
        k = a2;
        if (v24 < a2)
        {
          for (k = a2 - 1; ; --k)
          {
            v29 = *k;
            v30 = *(*(*k + 16) + 24);
            if (v30 == v15)
            {
              if (*v29 == *v14)
              {
                if (v24 >= k || v29[4] < v14[4])
                {
                  break;
                }
              }

              else if (v24 >= k || *v29 < *v14)
              {
                break;
              }
            }

            else if (v24 >= k || v30 < v15)
            {
              break;
            }
          }
        }
      }

      if (v24 < k)
      {
        v31 = *k;
        v32 = v24;
        v33 = k;
        do
        {
          *v32 = v31;
          v32 += 8;
          *v33 = v20;
          v34 = *(v14[2] + 24);
          while (1)
          {
            v20 = *v32;
            v35 = *(*(*v32 + 16) + 24);
            v36 = v35 >= v34;
            if (v35 == v34)
            {
              v36 = *v20 >= *v14;
              if (*v20 == *v14)
              {
                v36 = v20[4] >= v14[4];
              }
            }

            if (v36)
            {
              break;
            }

            v32 += 8;
          }

          do
          {
            v37 = *--v33;
            v31 = v37;
            v38 = *(v37[2] + 24);
            v39 = v38 >= v34;
            if (v38 == v34)
            {
              v39 = *v31 >= *v14;
              if (*v31 == *v14)
              {
                v39 = v31[4] >= v14[4];
              }
            }
          }

          while (v39);
        }

        while (v32 < v33);
        v23 = (v32 - 8);
      }

      if (v23 != v7)
      {
        *v7 = *v23;
      }

      *v23 = v14;
      if (v24 < k)
      {
LABEL_67:
        result = std::__introsort<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **,false>(v7, v23, a3, a4 & 1);
        a4 = 0;
        v9 = v23 + 1;
      }

      else
      {
        v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **>(v7, v23);
        v9 = v23 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::jitlink::BasicLayout::BasicLayout(llvm::jitlink::LinkGraph &)::$_0 &,llvm::jitlink::Block **>((v23 + 1), a2);
        if (result)
        {
          a2 = v23;
          if (v40)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v40)
        {
          goto LABEL_67;
        }
      }
    }
  }

  v67 = v9 + 1;
  v69 = v9 == a2 || v67 == a2;
  if ((a4 & 1) == 0)
  {
    if (!v69)
    {
      do
      {
        v136 = v7;
        v7 = v67;
        v138 = *v136;
        v137 = v136[1];
        v139 = *(v137[2] + 24);
        v140 = *(*(*v136 + 16) + 24);
        v141 = v139 >= v140;
        if (v139 == v140)
        {
          v141 = *v137 >= *v138;
          if (*v137 == *v138)
          {
            v141 = v137[4] >= v138[4];
          }
        }

        if (!v141)
        {
          do
          {
            v142 = v136;
            v143 = *--v136;
            v136[2] = v138;
            v138 = v143;
            v144 = *(v137[2] + 24);
            v145 = *(v143[2] + 24);
            v146 = v144 >= v145;
            if (v144 == v145)
            {
              v146 = *v137 >= *v138;
              if (*v137 == *v138)
              {
                v146 = v137[4] >= v138[4];
              }
            }
          }

          while (!v146);
          *v142 = v137;
        }

        v67 = v7 + 1;
      }

      while (v7 + 1 != a2);
    }

    return result;
  }

  if (v69)
  {
    return result;
  }

  v70 = 0;
  v71 = v9;
  while (2)
  {
    v72 = v71;
    v71 = v67;
    v74 = *v72;
    v73 = v72[1];
    v75 = *(v73[2] + 24);
    v76 = *(*(*v72 + 16) + 24);
    v77 = v75 >= v76;
    if (v75 == v76)
    {
      v77 = *v73 >= *v74;
      if (*v73 == *v74)
      {
        v77 = v73[4] >= v74[4];
      }
    }

    if (v77)
    {
      goto LABEL_150;
    }

    v72[1] = v74;
    v78 = v9;
    if (v72 == v9)
    {
      goto LABEL_149;
    }

    v79 = v70;
    while (2)
    {
      v80 = *(v9 + v79 - 8);
      v81 = *(v73[2] + 24);
      v82 = *(v80[2] + 24);
      v83 = v81 >= v82;
      if (v81 == v82)
      {
        v83 = *v73 >= *v80;
        if (*v73 == *v80)
        {
          if (v73[4] >= v80[4])
          {
            v78 = (v9 + v79);
            goto LABEL_149;
          }

LABEL_146:
          --v72;
          *(v9 + v79) = v80;
          v79 -= 8;
          if (!v79)
          {
            v78 = v9;
            goto LABEL_149;
          }

          continue;
        }
      }

      break;
    }

    if (!v83)
    {
      goto LABEL_146;
    }

    v78 = v72;
LABEL_149:
    *v78 = v73;
LABEL_150:
    v67 = v71 + 1;
    v70 += 8;
    if (v71 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}