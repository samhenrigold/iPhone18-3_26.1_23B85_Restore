_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = a5 + (v5 << 6);
  v8 = a5 + (v6 << 6);
  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = *v8 + 8 * v12;
  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v8 + 8);
  }

  v15 = *v8;
  v16 = v9;
  if (v14)
  {
    v17 = 8 * v14;
    v15 = *v8;
    v16 = v9;
    v18 = &v9[v14];
    while (*v16 == *v15)
    {
      ++v16;
      ++v15;
      v17 -= 8;
      if (!v17)
      {
        v16 = v18;
        break;
      }
    }
  }

  v19 = &v9[v10];
  v20 = v15 != v13 && (v16 == v19 || *v16 < *v15);
  v21 = *a3;
  v22 = a5 + (v21 << 6);
  v23 = *v22;
  v24 = *(v22 + 8);
  if (v10 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v10;
  }

  if (v25)
  {
    v26 = 8 * v25;
    v27 = v23;
    v28 = &v23[v25];
    while (*v27 == *v9)
    {
      ++v27;
      ++v9;
      v26 -= 8;
      if (!v26)
      {
        v27 = v28;
        break;
      }
    }
  }

  else
  {
    v27 = v23;
  }

  if (v9 == v19)
  {
    v31 = *a3;
    if (!v20)
    {
      goto LABEL_60;
    }

LABEL_29:
    *result = v5;
    *a2 = v6;
    v21 = *a3;
    v32 = a5 + (v21 << 6);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v8 + 8);
    v36 = &v11[v35];
    if (v35 >= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      v38 = 8 * v37;
      v39 = v33;
      v40 = &v33[v37];
      while (*v39 == *v11)
      {
        ++v39;
        ++v11;
        v38 -= 8;
        if (!v38)
        {
          v39 = v40;
          break;
        }
      }
    }

    else
    {
      v39 = v33;
    }

    if (v11 != v36 && (v39 == &v33[v34] || *v39 < *v11))
    {
      *a2 = v21;
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  if (v27 == &v23[v24])
  {
    if (v20)
    {
LABEL_38:
      *result = v21;
LABEL_53:
      *a3 = v6;
      v21 = v6;
      v31 = v6;
      goto LABEL_60;
    }
  }

  else
  {
    v29 = *v27;
    v30 = *v9;
    if (v20)
    {
      if (v29 < v30)
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v29 >= v30)
    {
LABEL_59:
      v31 = v21;
      goto LABEL_60;
    }
  }

  *a2 = v21;
  *a3 = v5;
  v41 = *a2;
  v42 = *result;
  v43 = a5 + (v41 << 6);
  v44 = a5 + (v42 << 6);
  v45 = *v43;
  v46 = *(v43 + 8);
  v47 = *v44;
  v48 = *(v44 + 8);
  v49 = *v44 + 8 * v48;
  if (v48 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v48;
  }

  if (v50)
  {
    v51 = 8 * v50;
    v52 = v45;
    v53 = &v45[v50];
    while (*v52 == *v47)
    {
      ++v52;
      ++v47;
      v51 -= 8;
      if (!v51)
      {
        v52 = v53;
        break;
      }
    }
  }

  else
  {
    v52 = v45;
  }

  if (v47 != v49)
  {
    if (v52 != &v45[v46])
    {
      v54 = *v47;
      v21 = v5;
      v31 = v5;
      if (*v52 >= v54)
      {
        goto LABEL_60;
      }
    }

    *result = v41;
    *a2 = v42;
    v21 = *a3;
    goto LABEL_59;
  }

  v21 = v5;
  v31 = v5;
LABEL_60:
  v55 = *a4;
  v56 = a5 + (v55 << 6);
  v57 = a5 + (v21 << 6);
  v58 = *v56;
  v59 = *(v56 + 8);
  v60 = *v57;
  v61 = *(v57 + 8);
  v62 = *v57 + 8 * v61;
  if (v61 >= v59)
  {
    v63 = v59;
  }

  else
  {
    v63 = v61;
  }

  if (v63)
  {
    v64 = 8 * v63;
    v65 = v58;
    v66 = &v58[v63];
    while (*v65 == *v60)
    {
      ++v65;
      ++v60;
      v64 -= 8;
      if (!v64)
      {
        v65 = v66;
        break;
      }
    }
  }

  else
  {
    v65 = v58;
  }

  if (v60 != v62 && (v65 == &v58[v59] || *v65 < *v60))
  {
    *a3 = v55;
    *a4 = v31;
    v67 = *a3;
    v68 = *a2;
    v69 = a5 + (v67 << 6);
    v70 = a5 + (v68 << 6);
    v71 = *v69;
    v72 = *(v69 + 8);
    v73 = *v70;
    v74 = *(v70 + 8);
    v75 = *v70 + 8 * v74;
    if (v74 >= v72)
    {
      v76 = v72;
    }

    else
    {
      v76 = v74;
    }

    if (v76)
    {
      v77 = 8 * v76;
      v78 = v71;
      v79 = &v71[v76];
      while (*v78 == *v73)
      {
        ++v78;
        ++v73;
        v77 -= 8;
        if (!v77)
        {
          v78 = v79;
          break;
        }
      }
    }

    else
    {
      v78 = v71;
    }

    if (v73 != v75 && (v78 == &v71[v72] || *v78 < *v73))
    {
      *a2 = v67;
      *a3 = v68;
      v80 = *a2;
      v81 = *result;
      v82 = a5 + (v80 << 6);
      v83 = a5 + (v81 << 6);
      v84 = *v82;
      v85 = *(v82 + 8);
      v86 = *v83;
      v87 = *(v83 + 8);
      v88 = *v83 + 8 * v87;
      if (v87 >= v85)
      {
        v89 = v85;
      }

      else
      {
        v89 = v87;
      }

      if (v89)
      {
        v90 = 8 * v89;
        v91 = v84;
        v92 = &v84[v89];
        while (*v91 == *v86)
        {
          ++v91;
          ++v86;
          v90 -= 8;
          if (!v90)
          {
            v91 = v92;
            break;
          }
        }
      }

      else
      {
        v91 = v84;
      }

      if (v86 != v88 && (v91 == &v84[v85] || *v91 < *v86))
      {
        *result = v80;
        *a2 = v81;
      }
    }
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, a4, **a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = v15 + (v13 << 6);
  v17 = v15 + (v14 << 6);
  v18 = *v16;
  v19 = *(v16 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *v17 + 8 * v21;
  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (v23)
  {
    v24 = 8 * v23;
    v25 = v18;
    v26 = &v18[v23];
    while (1)
    {
      result = *v25;
      if (*v25 != *v20)
      {
        break;
      }

      ++v25;
      ++v20;
      v24 -= 8;
      if (!v24)
      {
        v25 = v26;
        break;
      }
    }
  }

  else
  {
    v25 = v18;
  }

  if (v20 != v22 && (v25 == &v18[v19] || *v25 < *v20))
  {
    *a4 = v13;
    *a5 = v14;
    v27 = *a4;
    v28 = *a3;
    v29 = v15 + (v27 << 6);
    v30 = v15 + (v28 << 6);
    v31 = *v29;
    v32 = *(v29 + 8);
    v33 = *v30;
    v34 = *(v30 + 8);
    v35 = *v30 + 8 * v34;
    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      v37 = 8 * v36;
      v38 = v31;
      v39 = &v31[v36];
      while (1)
      {
        result = *v38;
        if (*v38 != *v33)
        {
          break;
        }

        ++v38;
        ++v33;
        v37 -= 8;
        if (!v37)
        {
          v38 = v39;
          break;
        }
      }
    }

    else
    {
      v38 = v31;
    }

    if (v33 != v35 && (v38 == &v31[v32] || *v38 < *v33))
    {
      *a3 = v27;
      *a4 = v28;
      v40 = *a3;
      v41 = *a2;
      v42 = v15 + (v40 << 6);
      v43 = v15 + (v41 << 6);
      v44 = *v42;
      v45 = *(v42 + 8);
      v46 = *v43;
      v47 = *(v43 + 8);
      v48 = *v43 + 8 * v47;
      if (v47 >= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        v50 = 8 * v49;
        v51 = v44;
        v52 = &v44[v49];
        while (1)
        {
          result = *v51;
          if (*v51 != *v46)
          {
            break;
          }

          ++v51;
          ++v46;
          v50 -= 8;
          if (!v50)
          {
            v51 = v52;
            break;
          }
        }
      }

      else
      {
        v51 = v44;
      }

      if (v46 != v48 && (v51 == &v44[v45] || *v51 < *v46))
      {
        *a2 = v40;
        *a3 = v41;
        v53 = *a2;
        v54 = *a1;
        v55 = v15 + (v53 << 6);
        v56 = v15 + (v54 << 6);
        v57 = *v55;
        v58 = *(v55 + 8);
        v59 = *v56;
        v60 = *(v56 + 8);
        v61 = *v56 + 8 * v60;
        if (v60 >= v58)
        {
          v62 = v58;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          v63 = 8 * v62;
          v64 = v57;
          v65 = &v57[v62];
          while (1)
          {
            result = *v59;
            if (*v64 != *v59)
            {
              break;
            }

            ++v64;
            ++v59;
            v63 -= 8;
            if (!v63)
            {
              v64 = v65;
              break;
            }
          }
        }

        else
        {
          v64 = v57;
        }

        if (v59 != v61 && (v64 == &v57[v58] || *v64 < *v59))
        {
          *a1 = v53;
          *a2 = v54;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, **a3);
      }

      else
      {
        if (v3 != 5)
        {
          goto LABEL_27;
        }

        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      }

      return 1;
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = **a3;
    v21 = v20 + (v19 << 6);
    v22 = v20 + (v18 << 6);
    v23 = *v21;
    v24 = *(v21 + 8);
    v25 = *v22;
    v26 = *(v22 + 8);
    v27 = *v22 + 8 * v26;
    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = *(v22 + 8);
    }

    v29 = *v22;
    v30 = v23;
    if (v28)
    {
      v31 = 8 * v28;
      v29 = *v22;
      v30 = v23;
      v32 = &v23[v28];
      while (*v30 == *v29)
      {
        ++v30;
        ++v29;
        v31 -= 8;
        if (!v31)
        {
          v30 = v32;
          break;
        }
      }
    }

    v33 = &v23[v24];
    v34 = v29 != v27 && (v30 == v33 || *v30 < *v29);
    v53 = *(a2 - 1);
    v54 = v20 + (v53 << 6);
    v55 = *v54;
    v56 = *(v54 + 8);
    if (v24 >= v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v24;
    }

    if (v57)
    {
      v58 = 8 * v57;
      v59 = v55;
      v60 = &v55[v57];
      while (*v59 == *v23)
      {
        ++v59;
        ++v23;
        v58 -= 8;
        if (!v58)
        {
          v59 = v60;
          break;
        }
      }
    }

    else
    {
      v59 = v55;
    }

    if (v23 != v33)
    {
      if (v59 == &v55[v56])
      {
        if (v34)
        {
LABEL_71:
          *a1 = v53;
LABEL_121:
          *(a2 - 1) = v18;
          return 1;
        }
      }

      else
      {
        v61 = *v59;
        v62 = *v23;
        if (v34)
        {
          if (v61 < v62)
          {
            goto LABEL_71;
          }

LABEL_62:
          *a1 = v19;
          a1[1] = v18;
          v63 = *(a2 - 1);
          v64 = v20 + (v63 << 6);
          v65 = *v64;
          v66 = *(v64 + 8);
          v67 = *(v22 + 8);
          v68 = &v25[v67];
          if (v67 >= v66)
          {
            v69 = v66;
          }

          else
          {
            v69 = v67;
          }

          if (v69)
          {
            v70 = 8 * v69;
            v71 = v65;
            v72 = &v65[v69];
            while (*v71 == *v25)
            {
              ++v71;
              ++v25;
              v70 -= 8;
              if (!v70)
              {
                v71 = v72;
                break;
              }
            }
          }

          else
          {
            v71 = v65;
          }

          if (v25 == v68 || v71 != &v65[v66] && *v71 >= *v25)
          {
            return 1;
          }

          a1[1] = v63;
          goto LABEL_121;
        }

        if (v61 >= v62)
        {
          return 1;
        }
      }

      a1[1] = v53;
      *(a2 - 1) = v19;
      v93 = *a1;
      v92 = a1[1];
      v94 = v20 + (v92 << 6);
      v95 = v20 + (v93 << 6);
      v96 = *v94;
      v97 = *(v94 + 8);
      v98 = *v95;
      v99 = *(v95 + 8);
      v100 = *v95 + 8 * v99;
      if (v99 >= v97)
      {
        v101 = v97;
      }

      else
      {
        v101 = v99;
      }

      if (v101)
      {
        v102 = 8 * v101;
        v103 = v96;
        v104 = &v96[v101];
        while (*v103 == *v98)
        {
          ++v103;
          ++v98;
          v102 -= 8;
          if (!v102)
          {
            v103 = v104;
            break;
          }
        }
      }

      else
      {
        v103 = v96;
      }

      if (v98 != v100 && (v103 == &v96[v97] || *v103 < *v98))
      {
        *a1 = v92;
        a1[1] = v93;
      }

      return 1;
    }

    if (!v34)
    {
      return 1;
    }

    goto LABEL_62;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = **a3;
    v7 = v6 + (v4 << 6);
    v8 = v6 + (v5 << 6);
    v9 = *v7;
    v10 = *(v7 + 8);
    v11 = *v8;
    v12 = *(v8 + 8);
    v13 = *v8 + 8 * v12;
    if (v12 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 8 * v14;
      v16 = v9;
      v17 = &v9[v14];
      while (*v16 == *v11)
      {
        ++v16;
        ++v11;
        v15 -= 8;
        if (!v15)
        {
          v16 = v17;
          break;
        }
      }
    }

    else
    {
      v16 = v9;
    }

    if (v11 != v13 && (v16 == &v9[v10] || *v16 < *v11))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_27:
  v35 = a1 + 2;
  v36 = *a1;
  v37 = a1[1];
  v38 = **a3;
  v39 = v38 + (v37 << 6);
  v40 = v38 + (v36 << 6);
  v41 = *v39;
  v42 = *(v39 + 8);
  v43 = *v40;
  v44 = *(v40 + 8);
  v45 = *v40 + 8 * v44;
  if (v44 >= v42)
  {
    v46 = v42;
  }

  else
  {
    v46 = *(v40 + 8);
  }

  v47 = *v40;
  v48 = v41;
  if (v46)
  {
    v49 = 8 * v46;
    v47 = *v40;
    v48 = v41;
    v50 = &v41[v46];
    while (*v48 == *v47)
    {
      ++v48;
      ++v47;
      v49 -= 8;
      if (!v49)
      {
        v48 = v50;
        break;
      }
    }
  }

  v51 = &v41[v42];
  v52 = v47 != v45 && (v48 == v51 || *v48 < *v47);
  v73 = *v35;
  v74 = v38 + (v73 << 6);
  v75 = *v74;
  v76 = *(v74 + 8);
  if (v42 >= v76)
  {
    v77 = *(v74 + 8);
  }

  else
  {
    v77 = v42;
  }

  if (v77)
  {
    v78 = 8 * v77;
    v79 = *v74;
    v80 = &v75[v77];
    while (*v79 == *v41)
    {
      ++v79;
      ++v41;
      v78 -= 8;
      if (!v78)
      {
        v79 = v80;
        break;
      }
    }
  }

  else
  {
    v79 = *v74;
  }

  if (v41 == v51)
  {
    if (!v52)
    {
      goto LABEL_140;
    }

    goto LABEL_88;
  }

  if (v79 == &v75[v76])
  {
    v83 = a1;
    v84 = a1 + 2;
    if (v52)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v81 = *v79;
    v82 = *v41;
    if (v52)
    {
      v83 = a1;
      v84 = a1 + 2;
      if (v81 < v82)
      {
        goto LABEL_139;
      }

LABEL_88:
      *a1 = v37;
      a1[1] = v36;
      v85 = *(v74 + 8);
      v86 = *(v40 + 8);
      v87 = &v43[v86];
      if (v86 >= v85)
      {
        v88 = *(v74 + 8);
      }

      else
      {
        v88 = v86;
      }

      if (v88)
      {
        v89 = 8 * v88;
        v90 = v75;
        v91 = &v75[v88];
        while (*v90 == *v43)
        {
          ++v90;
          ++v43;
          v89 -= 8;
          if (!v89)
          {
            v90 = v91;
            break;
          }
        }
      }

      else
      {
        v90 = v75;
      }

      if (v43 != v87)
      {
        if (v90 == &v75[v85])
        {
          v83 = a1 + 1;
          v84 = a1 + 2;
          goto LABEL_139;
        }

        v112 = *v90;
        v113 = *v43;
        v83 = a1 + 1;
        v84 = a1 + 2;
LABEL_135:
        if (v112 >= v113)
        {
          goto LABEL_140;
        }

LABEL_139:
        *v83 = v73;
        *v84 = v36;
        goto LABEL_140;
      }

      goto LABEL_140;
    }

    if (v81 >= v82)
    {
      goto LABEL_140;
    }
  }

  a1[1] = v73;
  *v35 = v37;
  v105 = *(v74 + 8);
  v106 = *(v40 + 8);
  v107 = &v43[v106];
  if (v106 >= v105)
  {
    v108 = *(v74 + 8);
  }

  else
  {
    v108 = v106;
  }

  if (v108)
  {
    v109 = 8 * v108;
    v110 = v75;
    v111 = &v75[v108];
    while (*v110 == *v43)
    {
      ++v110;
      ++v43;
      v109 -= 8;
      if (!v109)
      {
        v110 = v111;
        break;
      }
    }
  }

  else
  {
    v110 = v75;
  }

  if (v43 != v107)
  {
    if (v110 == &v75[v105])
    {
      v83 = a1;
      v84 = a1 + 1;
      goto LABEL_139;
    }

    v112 = *v110;
    v113 = *v43;
    v83 = a1;
    v84 = a1 + 1;
    goto LABEL_135;
  }

LABEL_140:
  v114 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v115 = 0;
  while (1)
  {
    v116 = *v114;
    v117 = *v35;
    v118 = v38 + (v116 << 6);
    v119 = v38 + (v117 << 6);
    v120 = *v118;
    v121 = *(v118 + 8);
    v122 = *v119;
    v123 = *(v119 + 8);
    v124 = v123 >= v121 ? *(v118 + 8) : v123;
    if (v124)
    {
      v125 = 8 * v124;
      v126 = v122;
      v127 = *v118;
      v128 = &v120[v124];
      while (*v127 == *v126)
      {
        ++v127;
        ++v126;
        v125 -= 8;
        if (!v125)
        {
          v127 = v128;
          break;
        }
      }
    }

    else
    {
      v126 = v122;
      v127 = *v118;
    }

    if (v126 != &v122[v123] && (v127 == &v120[v121] || *v127 < *v126))
    {
      *v114 = v117;
      v129 = v35;
      while (1)
      {
        v131 = *--v129;
        v130 = v131;
        v132 = v38 + (v131 << 6);
        v133 = *(v118 + 8);
        v134 = *v132;
        v135 = *(v132 + 8);
        v136 = v135 >= v133 ? *(v118 + 8) : v135;
        if (v136)
        {
          v137 = 8 * v136;
          v138 = v134;
          v139 = v120;
          v140 = &v120[v136];
          while (*v139 == *v138)
          {
            ++v139;
            ++v138;
            v137 -= 8;
            if (!v137)
            {
              v139 = v140;
              break;
            }
          }
        }

        else
        {
          v138 = v134;
          v139 = v120;
        }

        if (v138 == &v134[v135] || v139 != &v120[v133] && *v139 >= *v138)
        {
          break;
        }

        *v35 = v130;
        v35 = v129;
        if (v129 == a1)
        {
          v35 = a1;
          break;
        }
      }

      *v35 = v116;
      if (++v115 == 8)
      {
        return v114 + 1 == a2;
      }
    }

    v35 = v114++;
    if (v114 == a2)
    {
      return 1;
    }
  }
}

char ***llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3 - 8];
    v5 = -64 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 8;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

const char *llvm::detail::getTypeNameImpl<CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>]";
  v6 = 131;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if (*(v6 + 8) != 1)
  {
    return 0;
  }

  v14[3] = v3;
  v14[4] = v4;
  v14[0] = v6;
  if ((v5 & 0x800000) != 0)
  {
    v9 = *(a2 + 68);
    v10 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v13[0] = v10;
  v13[1] = v9;
  v11 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), v14, v13);
  (*(*a3 + 8))(a3, a2, v11);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>]";
  v6 = 127;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v20 = v22;
  v21 = 0x400000000;
  v4 = v3[2];
  if (!v4)
  {
    return 0;
  }

  v7 = (v3 + 6);
  v8 = &v3[2 * v4 + 6];
  do
  {
    v9 = *v7;
    if (v21)
    {
      v10 = 8 * v21;
      v11 = v20;
      while (*v11 != v9)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v11 = v20;
    }

    if (v11 == (v20 + 8 * v21))
    {
LABEL_10:
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v20, v9);
    }

    ++v7;
  }

  while (v7 != v8);
  v12 = v20;
  if (v21 == v3[2])
  {
    v13 = 0;
  }

  else
  {
    Impl = mlir::AffineMap::getImpl(*v3, v3[1], v20, v21, a3[1]);
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v14 = *(a2 + 68);
      v15 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v14 = 0;
      v15 = 2;
    }

    v19[0] = v15;
    v19[1] = v14;
    v16 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Impl, v19);
    (*(*a3 + 8))(a3, a2, v16);
    v13 = 1;
    v12 = v20;
  }

  if (v12 != v22)
  {
    free(v12);
  }

  return v13;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(*(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::affine::AffineMaxOp::build(a1, v12, *a3, *a4, a4[1]);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

const char *llvm::detail::getTypeNameImpl<DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>]";
  v6 = 123;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v81[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    if (v7 >= *v6)
    {
      v9 = *v6;
    }

    else
    {
      v9 = v7;
    }

    *&v72 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v72 + 1) = v9;
    v10 = *(a2 + 68);
    v11 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    v73 = v11;
    v74 = v10;
    v12 = v6[1];
    if (v10 <= v12)
    {
      v12 = v10;
    }

    else
    {
      v11 = mlir::ValueRange::offset_base(&v73, v10 - v12);
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v72 = xmmword_25D0A0640;
    v8 = 2;
    v11 = 2;
  }

  v71[0] = v11;
  v71[1] = v12;
  v68 = v70;
  v69 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v68, v8, 0, v8, v9);
  v65 = v67;
  v66 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v65, v11, 0, v11, v12);
  v62 = v64;
  v63 = 0x400000000;
  v59 = v61;
  v60 = 0x400000000;
  v13 = v6[2];
  if (!v13)
  {
    v51 = 0;
    goto LABEL_59;
  }

  v53 = a3;
  v54 = a2;
  v14 = 8 * v13;
  v15 = 6;
  do
  {
    v16 = *&v6[v15];
    v17 = *(v16 + 8);
    if (v16)
    {
      v18 = v17 == 7;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v20 = *(v16 + 16);
      v21 = v71;
    }

    else
    {
      if (v16)
      {
        v19 = v17 == 6;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = *(v16 + 16);
      v21 = &v72;
    }

    v22 = mlir::ValueRange::dereference_iterator(v21, v20);
    if ((~*(v22 + 8) & 7) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16);
      v26 = v25 + 120;
      if (v25 == -120)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = v23 + 16 * v24 + 16;
    }

    if (*(*(v26 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
    {
LABEL_30:
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v62, v16);
      goto LABEL_31;
    }

    llvm::SmallVectorTemplateBase<mlir::affine::AffineMaxOp,true>::push_back(&v59, v26);
LABEL_31:
    v15 += 2;
    v14 -= 8;
  }

  while (v14);
  v27 = v59;
  if (v60)
  {
    LODWORD(v28) = *v6;
    v29 = v6[1];
    v55 = v59 + 8 * v60;
    do
    {
      v30 = *v27;
      v31 = *(*v27 + 44);
      v32 = *(*(*v27 + 16 * ((v31 >> 23) & 1) + 64) + 8);
      v34 = *v32;
      v33 = v32[1];
      if ((v31 & 0x800000) != 0)
      {
        v35 = *(v30 + 68);
        v36 = *(v30 + 72) & 0xFFFFFFFFFFFFFFF9;
        v37 = v36 | 2;
        if (v35 >= v34)
        {
          v38 = v34;
        }

        else
        {
          v38 = v35;
        }

        v73 = (v36 | 2);
        v74 = v35;
        if (v35 <= v33)
        {
          v39 = v36 | 2;
        }

        else
        {
          v39 = mlir::ValueRange::offset_base(&v73, v35 - v33);
          v35 = v33;
        }
      }

      else
      {
        v38 = 0;
        v35 = 0;
        v37 = 2;
        v39 = 2;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v68, v37, 0, v37, v38);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v65, v39, 0, v39, v35);
      v40 = v32[2];
      if (v40)
      {
        v41 = (v32 + 6);
        v42 = 8 * v40;
        do
        {
          v43 = *v41++;
          v73 = v43;
          v56 = mlir::AffineExpr::shiftDims(&v73, v34, v28, 0);
          v44 = mlir::AffineExpr::shiftSymbols(&v56, v33, v29, 0);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v62, v44);
          v42 -= 8;
        }

        while (v42);
      }

      v28 = v34 + v28;
      v29 += v33;
      v27 += 8;
    }

    while (v27 != v55);
    Impl = mlir::AffineMap::getImpl(v28, v29, v62, v63, v53[1]);
    llvm::to_vector<8u,llvm::detail::concat_range<mlir::Value,llvm::SmallVector<mlir::Value,8u> &,llvm::SmallVector<mlir::Value,8u> &>>(&v56, v68, v69, v65, v66);
    v46 = *(v54 + 24);
    v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(*(**v46 + 32));
    v73 = v46;
    v74 = v47;
    v75 = v77;
    v76 = 0x400000000;
    v77[4] = v78;
    v77[5] = 0x400000000;
    v78[4] = v79;
    v78[5] = 0x400000000;
    v79[8] = 4;
    v79[9] = v80;
    v79[10] = 0x100000000;
    v80[1] = v81;
    v80[2] = 0x100000000;
    v81[2] = 0;
    v81[1] = 0;
    v81[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v81[4] = 0;
    v81[6] = 0;
    mlir::affine::AffineMaxOp::build(v53 + 1, &v73, Impl, v56 & 0xFFFFFFFFFFFFFFF9, v57);
    v48 = mlir::Operation::create(&v73);
    mlir::OpBuilder::insert((v53 + 1), v48);
    v49 = *(*(v48 + 6) + 16);
    mlir::OperationState::~OperationState(&v73);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    (*(*v53 + 8))(v53, v54, v50);
    if (v56 != &v58)
    {
      free(v56);
    }

    v51 = 1;
    v27 = v59;
  }

  else
  {
    v51 = 0;
  }

  if (v27 != v61)
  {
    free(v27);
  }

LABEL_59:
  if (v62 != v64)
  {
    free(v62);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  return v51;
}

void llvm::SmallVectorTemplateBase<mlir::affine::AffineMaxOp,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

const char *llvm::detail::getTypeNameImpl<MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>]";
  v6 = 108;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v21 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 68);
    v8 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v7 = 0;
    v8 = 2;
  }

  v22 = v24;
  v23 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v8, 0, v8, v7);
  composeAffineMapAndOperands(&v21, &v22);
  mlir::affine::canonicalizeMapAndOperands(&v21, &v22);
  simplifyMapWithOperands(&v21, v22, v23);
  v9 = v21;
  if (v21 != v6)
  {
LABEL_4:
    v10 = v22;
    v11 = v23;
    v12 = *(a2 + 24);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineMaxOp>(*(**v12 + 32));
    v25 = v12;
    v26 = v13;
    v27 = v29;
    v28 = 0x400000000;
    v29[4] = v30;
    v29[5] = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[8] = 4;
    v31[9] = v32;
    v31[10] = 0x100000000;
    v32[1] = v33;
    v32[2] = 0x100000000;
    v33[1] = 0;
    v33[2] = 0;
    v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v33[4] = 0;
    v33[6] = 0;
    mlir::affine::AffineMaxOp::build(a3 + 1, &v25, v9, v10 & 0xFFFFFFFFFFFFFFF9, v11);
    v14 = mlir::Operation::create(&v25);
    mlir::OpBuilder::insert((a3 + 1), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v25);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, a2, v16);
    v17 = 1;
    goto LABEL_13;
  }

  v18 = v22;
  v25 = v8;
  v26 = 0;
  if (v7)
  {
    v19 = 0;
    while (v18[v19] == mlir::ValueRange::dereference_iterator(&v25, v19))
    {
      v26 = ++v19;
      if (v7 == v19)
      {
        goto LABEL_12;
      }
    }

    v9 = v21;
    goto LABEL_4;
  }

LABEL_12:
  v17 = 0;
LABEL_13:
  if (v22 != v24)
  {
    free(v22);
  }

  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineMaxOp>]";
  v6 = 128;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  if (!canonicalizeMapExprAndTermOrder(&v9))
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v5 = 0;
    v6 = 2;
  }

  v10[0] = v6;
  v10[1] = v5;
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v9, v10);
  (*(*a3 + 8))(a3, a2, v7);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>]";
  v6 = 131;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55[8] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(a2 + 44);
  v7 = *(*(a2 + 64 + 16 * ((v6 >> 23) & 1) + 24) + 8);
  v41 = v7;
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(a2 + 72);
    v9 = *(a2 + 68) - 1;
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v46 = v48;
  v47 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v46, v8 + 32, 0, v8 + 32, v9);
  composeAffineMapAndOperands(&v41, &v46);
  mlir::affine::canonicalizeMapAndOperands(&v41, &v46);
  simplifyMapWithOperands(&v41, v46, v47);
  v10 = v41;
  v11 = v46;
  if (v41 == v7)
  {
    if (!v9)
    {
LABEL_10:
      v18 = 0;
      goto LABEL_31;
    }

    v16 = 0;
    v17 = (v8 + 56);
    while (*v17 == *(v46 + v16))
    {
      ++v16;
      v17 += 4;
      if (v9 == v16)
      {
        goto LABEL_10;
      }
    }
  }

  v40 = v47;
  v12 = *(mlir::affine::AffinePrefetchOp::getODSOperands(a2, 0) + 24);
  v13 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v14 = *(v13 + 24);
  if (v14 > 0x40)
  {
    v15 = llvm::APInt::countLeadingZerosSlowCase((v13 + 16)) == v14;
  }

  else
  {
    v15 = *(v13 + 16) == 0;
  }

  v19 = v15;
  LocalityHint = mlir::affine::AffinePrefetchOp::getLocalityHint(a2);
  v21 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  v22 = *(v21 + 24);
  if (v22 > 0x40)
  {
    v23 = llvm::APInt::countLeadingZerosSlowCase((v21 + 16)) == v22;
  }

  else
  {
    v23 = *(v21 + 16) == 0;
  }

  v24 = v23;
  v25 = *(a2 + 24);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, *(**v25 + 32));
  if ((v27 & 1) == 0)
  {
    v45 = 1283;
    v44[2] = "affine.prefetch";
    v44[3] = 15;
    v43 = 259;
    llvm::operator+(v44, &v42, v49);
    llvm::report_fatal_error(v49, 1);
  }

  v49[0] = v25;
  v49[1] = v26;
  v50[0] = v51;
  v50[1] = 0x400000000;
  v51[4] = v52;
  v51[5] = 0x400000000;
  v52[4] = v53;
  v52[5] = 0x400000000;
  v53[8] = 4;
  v53[9] = v54;
  v53[10] = 0x100000000;
  v54[1] = v55;
  v54[2] = 0x100000000;
  v55[1] = 0;
  v55[2] = 0;
  v55[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v55[4] = 0;
  v55[6] = 0;
  v44[0] = v12;
  I32IntegerAttr = mlir::Builder::getI32IntegerAttr((a3 + 8), LocalityHint);
  v29 = **(a3 + 8);
  v30 = 600;
  if (v19)
  {
    v31 = 592;
  }

  else
  {
    v31 = 600;
  }

  v32 = *(v29 + v31);
  if (v24)
  {
    v30 = 592;
  }

  v33 = *(v29 + v30);
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v50, v44, 0, v44, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v50, v11 & 0xFFFFFFFFFFFFFFF9, 0, v11 & 0xFFFFFFFFFFFFFFF9, v40);
  v34 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(v49);
  v35 = mlir::AffineMapAttr::get(v10);
  v34[2] = I32IntegerAttr;
  v34[3] = v35;
  *v34 = v33;
  v34[1] = v32;
  v36 = mlir::Operation::create(v49);
  mlir::OpBuilder::insert((a3 + 8), v36);
  v37 = *(*(v36 + 6) + 16);
  mlir::OperationState::~OperationState(v49);
  if (v37 == &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  (*(*a3 + 8))(a3, a2, v38);
  v11 = v46;
LABEL_31:
  if (v11 != v48)
  {
    free(v11);
  }

  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>]";
  v6 = 133;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "affine.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v5, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t *a1)
{
  v21[9] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v20[0] = v21;
  v20[1] = 0x400000000;
  v21[8] = 4;
  (*(**a1 + 40))(*a1);
  v2 = *a1;
  NoneType = mlir::Builder::getNoneType(a1[1]);
  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(v2, &v13, NoneType, "reduce", 6, v20))
  {
    v4 = mlir::arith::symbolizeAtomicRMWKind(*(v13 + 16), *(v13 + 24));
    if (v5)
    {
      v6 = a1[2];
      I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1[1], v4);
      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(v6, I64IntegerAttr);
      v8 = 1;
    }

    else
    {
      (*(**a1 + 24))(v16);
      if (v16[0])
      {
        v14 = 0;
        v15 = v13;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v17, &v14, 1);
        v10 = v17 + 24 * v18;
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++v18;
      }

      v8 = (v19 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  return v8;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v26 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  v31 = v33;
  v32 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v31, v7 + 32, 0, v7 + 32, v8);
  composeAffineMapAndOperands(&v26, &v31);
  mlir::affine::canonicalizeMapAndOperands(&v26, &v31);
  simplifyMapWithOperands(&v26, v31, v32);
  v9 = v26;
  v10 = v31;
  if (v26 == v6)
  {
    if (!v8)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_17;
    }

    v23 = 0;
    v24 = (v7 + 56);
    while (*v24 == *(v31 + v23))
    {
      ++v23;
      v24 += 4;
      if (v8 == v23)
      {
        goto LABEL_16;
      }
    }
  }

  v11 = v32;
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 8);
  v14 = *(*(a2 + 72) + 24);
  v15 = *(a2 + 24);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, *(**v15 + 32));
  if ((v17 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "affine.vector_load";
    v29[3] = 18;
    v28 = 259;
    llvm::operator+(v29, &v27, v34);
    llvm::report_fatal_error(v34, 1);
  }

  v34[0] = v15;
  v34[1] = v16;
  v35[0] = &v36;
  v35[1] = 0x400000000;
  v37[0] = v38;
  v37[1] = 0x400000000;
  v38[4] = v39;
  v38[5] = 0x400000000;
  v39[8] = 4;
  v39[9] = v40;
  v39[10] = 0x100000000;
  v40[1] = v41;
  v40[2] = 0x100000000;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v41[4] = 0;
  v41[6] = 0;
  v29[0] = v14;
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v29, 0, v29, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v19 = mlir::AffineMapAttr::get(v9);
  mlir::OperationState::addAttribute(v34, "map", 3, v19);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v37, v13 & 0xFFFFFFFFFFFFFFF8);
  v20 = mlir::Operation::create(v34);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(v34);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 8))(a3, a2, v22);
  v10 = v31;
LABEL_17:
  if (v10 != v33)
  {
    free(v10);
  }

  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>]";
  v6 = 135;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = *(*(a2 + 16 * ((v5 >> 23) & 1) + 64) + 8);
  v26 = v6;
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68) - 2;
  }

  else
  {
    v7 = 0;
    v8 = -2;
  }

  v31 = v33;
  v32 = 0x800000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v31, v7 + 64, 0, v7 + 64, v8);
  composeAffineMapAndOperands(&v26, &v31);
  mlir::affine::canonicalizeMapAndOperands(&v26, &v31);
  simplifyMapWithOperands(&v26, v31, v32);
  v9 = v26;
  v10 = v31;
  if (v26 == v6)
  {
    if (!v8)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    v23 = 0;
    v24 = (v7 + 88);
    while (*v24 == *(v31 + v23))
    {
      ++v23;
      v24 += 4;
      if (v8 == v23)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = v32;
  v12 = *(a2 + 72);
  v13 = *(v12 + 24);
  v14 = *(v12 + 56);
  v15 = *(a2 + 24);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, *(**v15 + 32));
  if ((v17 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "affine.vector_store";
    v29[3] = 19;
    v28 = 259;
    llvm::operator+(v29, v27, v34);
    llvm::report_fatal_error(v34, 1);
  }

  v34[0] = v15;
  v34[1] = v16;
  v35[0] = v36;
  v35[1] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[8] = 4;
  v38[9] = v39;
  v38[10] = 0x100000000;
  v39[1] = v40;
  v39[2] = 0x100000000;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v40[4] = 0;
  v40[6] = 0;
  v29[0] = v13;
  v27[0] = v14;
  v18 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v29, 0, v29, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v27, 0, v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v19 = mlir::AffineMapAttr::get(v9);
  mlir::OperationState::addAttribute(v34, "map", 3, v19);
  v20 = mlir::Operation::create(v34);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(v34);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 8))(a3, a2, v22);
  v10 = v31;
LABEL_14:
  if (v10 != v33)
  {
    free(v10);
  }

  return v18;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>]";
  v6 = 136;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  if (*a1 + 8 * v6 == a2)
  {
    v11 = *a3;

    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a1, v11);
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v6 + 1, 8);
      v5 = *a1;
      v6 = *(a1 + 2);
    }

    v8 = (v5 + v7);
    *(v5 + 8 * v6) = *(v5 + 8 * v6 - 8);
    v9 = *(a1 + 2);
    v10 = *a1 + 8 * v9 - 8;
    if (v10 != v8)
    {
      memmove(v8 + 1, v8, v10 - v8);
      LODWORD(v9) = *(a1 + 2);
    }

    *(a1 + 2) = v9 + 1;
    *v8 = *a3;
  }
}

void anonymous namespace::CancelDelinearizeOfLinearizeDisjointExactTail::~CancelDelinearizeOfLinearizeDisjointExactTail(_anonymous_namespace_::CancelDelinearizeOfLinearizeDisjointExactTail *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CancelDelinearizeOfLinearizeDisjointExactTail::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_12:
      v63 = "index doesn't come from linearize";
      v67[0] = 259;
      v59 = &v63;
      v11 = *(a3 + 16);
      if (!v11 || v11[2] != 1)
      {
        return 0;
      }

      v12 = *(a2 + 24);
      v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_15:
      (*(*v11 + 88))(v11, v12, v13, &v59);
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  v9 = *(*(v8 + 48) + 16);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
    goto LABEL_12;
  }

  v16 = *(v8 + 44);
  v17 = v8 + 64 + 16 * ((v16 >> 23) & 1);
  if ((*(v17 + 8) & 1) == 0)
  {
    v63 = "not disjoint";
    v67[0] = 259;
    v59 = &v63;
    v11 = *(a3 + 16);
    if (!v11 || v11[2] != 1)
    {
      return 0;
    }

    v12 = *(v8 + 24);
    v13 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
    goto LABEL_15;
  }

  v18 = *(v17 + 12);
  if ((v16 & 0x800000) != 0)
  {
    v19 = *(v8 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v19 = 2;
  }

  v62[0] = v19;
  v62[1] = v18;
  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v59, v8);
  mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(&v56, a2);
  v20 = v59;
  if (v57 >= v60)
  {
    v21 = v60;
  }

  else
  {
    v21 = v57;
  }

  v22 = (v59 + 8 * v60 - 8);
  v23 = (v56 + 8 * v57 - 8);
  v24 = -1;
  while (v24 - v21 != -1)
  {
    v26 = *v22--;
    v25 = v26;
    v27 = *v23--;
    ++v24;
    if (v25 != v27)
    {
      if (v24)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  v24 = v21;
  if (v21)
  {
LABEL_28:
    if (v60 == v24 && v24 == v57 && v18 == *(a2 + 36))
    {
      v28 = *(v10 + 44);
      if ((v28 & 0x800000) != 0)
      {
        v29 = *(v10 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
      }

      else
      {
        v29 = 2;
      }

      (**a3)(a3, a2, v29, *(v10 + 16 * ((v28 >> 23) & 1) + 76));
    }

    else
    {
      v31 = *(v10 + 24);
      v54 = v18;
      v53 = v18 - v24;
      v32 = *(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 72);
      v33 = v60 - v24;
      v34 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**v31 + 32));
      v63 = v31;
      v64 = v34;
      v65 = v67;
      v66 = 0x400000000;
      v68 = v70;
      v69 = 0x400000000;
      v71 = v73;
      v72 = 0x400000000;
      v74 = 4;
      v75 = &v77;
      v76 = 0x100000000;
      v78 = &v80;
      v79 = 0x100000000;
      v81 = 0;
      v82 = 0;
      v83 = &mlir::detail::TypeIDResolver<void,void>::id;
      v84 = 0;
      v85 = 0;
      v52 = v19;
      mlir::affine::AffineLinearizeIndexOp::build((a3 + 8), &v63, v19, v53, v20, v33, v32);
      v35 = mlir::Operation::create(&v63);
      mlir::OpBuilder::insert((a3 + 8), v35);
      v36 = *(*(v35 + 6) + 16);
      mlir::OperationState::~OperationState(&v63);
      if (v36 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0;
      }

      v38 = (v37 - 16);
      v39 = *(a2 + 24);
      v40 = v56;
      v41 = v57 - v24;
      v42 = *(a2 + 36) == *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 32) >> 3;
      v43 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**v39 + 32));
      v63 = v39;
      v64 = v43;
      v65 = v67;
      v66 = 0x400000000;
      v68 = v70;
      v69 = 0x400000000;
      v71 = v73;
      v72 = 0x400000000;
      v74 = 4;
      v75 = &v77;
      v76 = 0x100000000;
      v78 = &v80;
      v79 = 0x100000000;
      v81 = 0;
      v82 = 0;
      v83 = &mlir::detail::TypeIDResolver<void,void>::id;
      v84 = 0;
      v85 = 0;
      mlir::affine::AffineDelinearizeIndexOp::build((a3 + 8), &v63, v38, v40, v41, v42);
      v44 = mlir::Operation::create(&v63);
      mlir::OpBuilder::insert((a3 + 8), v44);
      v45 = *(*(v44 + 6) + 16);
      mlir::OperationState::~OperationState(&v63);
      if (v45 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      v47 = *(v46 + 9);
      v48 = (v46 - 16);
      if (v47)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v63 = &v65;
      v64 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v63, v49, 0, v49, v47);
      if (v54 <= v24)
      {
        v51 = v62[0];
        v24 = v54;
        v50 = v52;
      }

      else
      {
        v50 = mlir::ValueRange::offset_base(v62, v54 - v24);
        v51 = mlir::ValueRange::offset_base(v62, v54 - v24);
      }

      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v63, v50, 0, v51, v24);
      (**a3)(a3, a2, v63 & 0xFFFFFFFFFFFFFFF9, v64);
      if (v63 != &v65)
      {
        free(v63);
      }
    }

    v14 = 1;
    goto LABEL_57;
  }

LABEL_38:
  v63 = "final basis element doesn't match linearize";
  v67[0] = 259;
  v55 = &v63;
  v30 = *(a3 + 16);
  if (v30 && v30[2] == 1)
  {
    (*(*v30 + 88))(v30, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v55);
  }

  v14 = 0;
LABEL_57:
  if (v56 != &v58)
  {
    free(v56);
  }

  if (v59 != &v61)
  {
    free(v59);
  }

  return v14;
}

_DWORD *mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(_DWORD *result, uint64_t a2)
{
  v2 = "need at least two elements to form the basis product";
  v3 = 259;
  v4 = &v2;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 88))(result, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v4);
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.linearize_index";
    v5[3] = 22;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "affine.delinearize_index";
    v5[3] = 24;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CancelDelinearizeOfLinearizeDisjointExactTail>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CancelDelinearizeOfLinearizeDisjointExactTail]";
  v6 = 130;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::DropUnitExtentBasis::~DropUnitExtentBasis(_anonymous_namespace_::DropUnitExtentBasis *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DropUnitExtentBasis::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v26 = a2;
  v5 = *(a2 + 36);
  v36 = v38;
  v37 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::assign(&v36, v5, 0);
  v6 = *(a2 + 24);
  v33 = v35;
  v34 = 0x600000000;
  mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(&v27, &v26);
  v30 = v32;
  v31 = 0x600000000;
  if (v28)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v30, &v27);
  }

  if (v27 != &v29)
  {
    free(v27);
  }

  v7 = v30;
  if (v31)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 8 * v31;
    while (1)
    {
      v12 = *&v7[v8];
      if (v12 >= 8)
      {
        ConstantIntValue = mlir::getConstantIntValue(*&v7[v8]);
        if ((v14 & 1) != 0 && ConstantIntValue == 1)
        {
          if ((v9 & 1) == 0)
          {
            LODWORD(v27) = 0;
            v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>((a3 + 8), v6, &v27) - 16;
          }

          *(v36 + v8) = v10;
          v9 = 1;
          goto LABEL_15;
        }

        v12 = *&v7[v8];
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v33, v12);
LABEL_15:
      v8 += 8;
      if (v11 == v8)
      {
        v7 = v30;
        break;
      }
    }
  }

  if (v7 != v32)
  {
    free(v7);
  }

  if (v34 == *(a2 + 36))
  {
    v30 = "no unit basis elements";
    v32[8] = 259;
    v27 = &v30;
    v15 = *(a3 + 16);
    if (v15 && v15[2] == 1)
    {
      (*(*v15 + 88))(v15, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v27);
    }

    v16 = 0;
  }

  else
  {
    if (v34)
    {
      v30 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0) + 24);
      v17 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::OpFoldResult,6u> &>((a3 + 8), v6, &v30, &v33);
      v18 = v37;
      if (v37)
      {
        v19 = 0;
        v20 = v36;
        v21 = 8 * v37;
        do
        {
          if (!*v20)
          {
            v22 = v19 - 5;
            v23 = v19++ >= 6;
            v24 = v17 - 24 * v22 - 96;
            if (!v23)
            {
              v24 = v17 - 16 * v19;
            }

            *v20 = v24;
          }

          ++v20;
          v21 -= 8;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v37;
    }

    (**a3)(a3, a2, v36 & 0xFFFFFFFFFFFFFFF9, v18);
    v16 = 1;
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  return v16;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v12, *a3, *a4, *(a4 + 8), 1);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

void llvm::SmallVectorImpl<mlir::Value>::assign(_DWORD *result, unint64_t a2, uint64_t a3)
{
  if (result[3] >= a2)
  {
    v3 = result[2];
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = result[2];
    }

    if (v4)
    {
      v5 = 0;
      v6 = (v4 + 1) & 0x1FFFFFFFELL;
      v7 = vdupq_n_s64(v4 - 1);
      v8 = (*result + 8);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_25D0A0500)));
        if (v9.i8[0])
        {
          *(v8 - 1) = a3;
        }

        if (v9.i8[4])
        {
          *v8 = a3;
        }

        v5 += 2;
        v8 += 2;
      }

      while (v6 != v5);
    }

    v10 = a2 - v3;
    if (a2 > v3)
    {
      v11 = 0;
      v12 = vdupq_n_s64(v10 - 1);
      v13 = (*result + 8 * v3 + 8);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *(v13 - 1) = a3;
        }

        if (v14.i8[4])
        {
          *v13 = a3;
        }

        v11 += 2;
        v13 += 2;
      }

      while (((v10 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
    }

    result[2] = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::growAndAssign(result, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<mlir::Value,true>::growAndAssign(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  a1[2] = a2;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, int *a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIndexOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::arith::ConstantIndexOp::build(a1, v10, *a3);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (v7 && *(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    if (*(*(*(v7 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
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

  mlir::OperationState::~OperationState(v10);
  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DropUnitExtentBasis>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DropUnitExtentBasis]";
  v6 = 104;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::SplitDelinearizeSpanningLastLinearizeArg::~SplitDelinearizeSpanningLastLinearizeArg(_anonymous_namespace_::SplitDelinearizeSpanningLastLinearizeArg *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SplitDelinearizeSpanningLastLinearizeArg::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  v9 = *(*(v8 + 48) + 16);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id ? v8 : 0;
  if (v9 != &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
LABEL_12:
    v11 = "index doesn't come from linearize";
LABEL_13:
    ODSOperands = v11;
    v56 = 259;
    v46 = &ODSOperands;
    v12 = *(a3 + 16);
    if (!v12 || v12[2] != 1)
    {
      return 0;
    }

    v13 = *(a2 + 24);
    v14 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
    goto LABEL_16;
  }

  v16 = *(v8 + 44);
  v17 = v8 + 64 + 16 * ((v16 >> 23) & 1);
  if ((*(v17 + 8) & 1) == 0)
  {
    v19 = "linearize isn't disjoint";
LABEL_22:
    ODSOperands = v19;
    v56 = 259;
    v46 = &ODSOperands;
    v12 = *(a3 + 16);
    if (!v12 || v12[2] != 1)
    {
      return 0;
    }

    v13 = *(v8 + 24);
    v14 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_16:
    (*(*v12 + 88))(v12, v13, v14, &v46);
    return 0;
  }

  v18 = *(*(*v17 + 24) + (*(*v17 + 32) & 0xFFFFFFFFFFFFFFF8) - 8);
  if (v18 == 0x8000000000000000)
  {
    v19 = "linearize ends with dynamic basis value";
    goto LABEL_22;
  }

  v20 = 0;
  v21 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v22 = *(v21 + 24);
  v23 = *(v21 + 32) >> 3;
  v24 = v23;
  v25 = 1;
  while (v24 * 8)
  {
    v26 = v22[v24 - 1];
    if (v26 == 0x8000000000000000)
    {
      v11 = "dynamic basis element while scanning for split";
      goto LABEL_13;
    }

    v25 *= v26;
    if (v25 > v18)
    {
      v11 = "overshot last argument size";
      goto LABEL_13;
    }

    ++v20;
    --v24;
    if (v25 == v18)
    {
      goto LABEL_33;
    }
  }

  v20 = *(v21 + 32) >> 3;
  if (v25 < v18)
  {
    v11 = "product of known basis elements doesn't exceed last linearize argument";
    goto LABEL_13;
  }

LABEL_33:
  if (v20 <= 1)
  {
    mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(*(a3 + 16), a2);
    return 0;
  }

  v27 = *(v10 + 24);
  v28 = *(v17 + 12);
  if ((v16 & 0x800000) != 0)
  {
    v29 = *(v10 + 72);
  }

  else
  {
    v29 = 0;
  }

  ODSOperands = v29;
  v54 = v28 - 1;
  v30 = *(v10 + 44);
  v31 = (v10 + 64 + 16 * ((v30 >> 23) & 1));
  v32 = v31[3];
  v33 = v31[4];
  if ((v30 & 0x800000) != 0)
  {
    v34 = *(v10 + 72);
  }

  else
  {
    v34 = 0;
  }

  v46 = (v34 + 32 * v32);
  v47 = v33 + v32 - v32;
  v35 = (*(*v31 + 32) >> 3) - 1;
  v51[0] = *(*v31 + 24);
  v51[1] = v35;
  v50 = *(v31 + 8);
  v52 = mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>((a3 + 8), v27, &ODSOperands, &v46, v51, &v50) - 16;
  v36 = *(a2 + 24);
  ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 1u);
  v54 = v37;
  v46 = v22;
  v47 = v23 - v20;
  if (v23 <= v20)
  {
    v38 = v22;
  }

  else
  {
    v38 = &v22[v23 - v20];
  }

  if (v23 < v20)
  {
    v20 = v23;
  }

  LOBYTE(v51[0]) = *(a2 + 36) == *(*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) + 32) >> 3;
  v39 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value &,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>((a3 + 8), v36, &v52, &ODSOperands, &v46, v51);
  v40 = *(a2 + 24);
  v46 = *(*(v10 + 72) + 32 * *(v10 + 92) - 8);
  ODSOperands = v38;
  v54 = v20;
  LOBYTE(v51[0]) = 1;
  v41 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value,llvm::ArrayRef<long long>,BOOL>((a3 + 8), v40, &v46, &ODSOperands, v51);
  v42 = *(v39 + 9);
  v43 = (v39 - 16);
  if (!v42)
  {
    v43 = 0;
  }

  v44 = *(v41 + 9);
  v45 = v41 - 16;
  if (!v44)
  {
    v45 = 0;
  }

  v46 = v43;
  v47 = v42;
  v48 = v45;
  v49 = v44;
  llvm::to_vector<llvm::detail::concat_range<mlir::Value,mlir::ResultRange,mlir::ResultRange>>(&ODSOperands, &v46);
  (**a3)(a3, a2, ODSOperands & 0xFFFFFFFFFFFFFFF9, v54);
  if (ODSOperands != &v55)
  {
    free(ODSOperands);
  }

  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>(uint64_t **a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, char *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**a2 + 32));
  v16[0] = a2;
  v16[1] = v12;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  mlir::affine::AffineLinearizeIndexOp::build(a1, v16, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, a3[1], *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], *a5, a5[1], *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v14;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value &,mlir::OperandRange,llvm::ArrayRef<long long>,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**a2 + 32));
  v16[0] = a2;
  v16[1] = v12;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v16, *a3, *a4 & 0xFFFFFFFFFFFFFFF9 | 2, a4[1], *a5, a5[1], *a6);
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v14;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::Value,llvm::ArrayRef<long long>,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v14, *a3, 0, 0, *a4, a4[1], *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

void llvm::to_vector<llvm::detail::concat_range<mlir::Value,mlir::ResultRange,mlir::ResultRange>>(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v32 = (a1 + 16);
  v33 = *a2;
  v7 = v33;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  v34 = 0;
  v35 = v9;
  v36 = 0;
  v37 = v7;
  v38 = v6;
  v39 = v9;
  v40 = v8;
  while (v4 != v6 || v3 != v8 || v38 != v6 || v40 != v8)
  {
    v11 = &unk_286E9E8E0;
    v12 = 16;
    do
    {
      v13 = v12;
      v14 = *(v11 - 1);
      v15 = (&v33 + (*v11 >> 1));
      if (*v11)
      {
        v14 = *(*v15 + v14);
      }

      if (v14(v15))
      {
        break;
      }

      v11 += 2;
      v12 = v13 - 16;
    }

    while (v13);
    ++v5;
    v4 = v34;
    v3 = v36;
  }

  v16 = *(a1 + 8);
  if (v5 + v16 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v32, v5 + v16, 8);
    v16 = *(a1 + 8);
  }

  v17 = 0;
  v18 = 0;
  v33 = v7;
  v34 = 0;
  v35 = v9;
  v36 = 0;
  v37 = v7;
  v38 = v6;
  v39 = v9;
  v40 = v8;
  for (i = (*a1 + 8 * v16); v18 != v6 || v17 != v8 || v38 != v6 || v40 != v8; ++i)
  {
    v21 = &unk_286E9E900;
    v22 = 32;
    do
    {
      v23 = *(v21 - 1);
      v24 = (&v33 + (*v21 >> 1));
      if (*v21)
      {
        v23 = *(*v24 + v23);
      }

      v25 = v23(v24);
      if (v26)
      {
        break;
      }

      v21 += 2;
      v22 -= 16;
    }

    while (v22);
    *i = v25;
    v27 = &unk_286E9E8E0;
    v28 = 16;
    do
    {
      v29 = v28;
      v30 = *(v27 - 1);
      v31 = (&v33 + (*v27 >> 1));
      if (*v27)
      {
        v30 = *(*v31 + v30);
      }

      if (v30(v31))
      {
        break;
      }

      v27 += 2;
      v28 = v29 - 16;
    }

    while (v29);
    v18 = v34;
    v17 = v36;
  }

  *(a1 + 8) += v5;
}

BOOL llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::incrementHelper<0ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 8) = v1 + 1;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    *(a1 + 24) = v1 + 1;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::getHelper<0ul>(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 == a1[5])
  {
    return 0;
  }

  result = *a1;
  if (v1)
  {
    v3 = *(result + 8) & 7;
    if (result)
    {
      v4 = v3 == 6;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_10;
    }

    v5 = (5 - v3);
    if (v1 > v5)
    {
      result -= 16 * v5;
      v1 -= v5;
LABEL_10:
      result -= 24 * v1;
      return result;
    }

    result -= 16 * v1;
  }

  return result;
}

uint64_t llvm::concat_iterator<mlir::Value,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>::getHelper<1ul>(void *a1)
{
  v1 = a1[3];
  if (v1 == a1[7])
  {
    return 0;
  }

  result = a1[2];
  if (v1)
  {
    v3 = *(result + 8) & 7;
    if (result)
    {
      v4 = v3 == 6;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_10;
    }

    v5 = (5 - v3);
    if (v1 > v5)
    {
      result -= 16 * v5;
      v1 -= v5;
LABEL_10:
      result -= 24 * v1;
      return result;
    }

    result -= 16 * v1;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SplitDelinearizeSpanningLastLinearizeArg>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SplitDelinearizeSpanningLastLinearizeArg]";
  v6 = 125;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::CancelLinearizeOfDelinearizePortion::~CancelLinearizeOfDelinearizePortion(_anonymous_namespace_::CancelLinearizeOfDelinearizePortion *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CancelLinearizeOfDelinearizePortion::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v158[8] = *MEMORY[0x277D85DE8];
  v146 = v148;
  v147 = 0x200000000;
  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v143, a2);
  v5 = *(v4 + 44);
  v6 = (v5 >> 23) & 1;
  v108 = v4 + 64;
  if (*(v4 + 64 + 16 * v6 + 12) != *(*(v4 + 64 + 16 * v6) + 32) >> 3)
  {
    v149 = 0;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(&v143, v143, &v149);
    v5 = *(v4 + 44);
    v6 = (v5 >> 23) & 1;
  }

  v7 = *(v108 + 16 * v6 + 12);
  v106 = a3;
  if ((v5 & 0x800000) != 0)
  {
    v8 = *(v4 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v8 = 2;
  }

  v105 = v144;
  v113 = v143;
  v107 = v8;
  v141 = v8;
  v142 = v7;
  v122[0] = &v125;
  v122[1] = 2;
  v123 = 0;
  v124 = 1;
  v115 = v4;
  if (v7)
  {
    v9 = 0;
    v109 = -v7;
    v111 = v7;
    while (1)
    {
      v10 = mlir::ValueRange::dereference_iterator(&v141, v9);
      v11 = (~*(v10 + 8) & 7) != 0 ? v10 : 0;
      if (v11)
      {
        break;
      }

      ++v9;
LABEL_51:
      if (v9 >= v7)
      {
        goto LABEL_57;
      }
    }

    v12 = *(v11 + 8);
    if ((v12 & 7) == 6)
    {
      v13 = *(v11 + 16);
      v14 = v11 + 24 * v13;
      v15 = v14 + 120;
      if (*(*(v14 + 168) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
      {
        v16 = (v14 + 120);
      }

      else
      {
        v16 = 0;
      }

      v135 = v16;
      if (v16)
      {
        v17 = v13 + 6;
LABEL_24:
        mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(&v149, &v135);
        v23 = *(v149 + v17);
        v24 = (v17 == 0) & *(v108 + 16 * ((*(v4 + 44) >> 23) & 1) + 8);
        if (v23 >= 8)
        {
          v24 = 0;
        }

        v25 = v23 == *(v143 + v9) || (v9 | v17) == 0;
        if (v25 || (v24 & 1) != 0)
        {
          v22 = v9 + 1;
          if (v9 + 1 < v7)
          {
            v118 = v17;
            v26 = 0;
            v116 = *(v15 + 36);
            v114 = v15 - 96;
            v27 = 1;
            v28 = v9 + 1;
            while (1)
            {
              v29 = v15;
              v30 = v118 + v26;
              v31 = v118 + v26 + 1;
              if (v31 >= v116)
              {
                break;
              }

              v32 = mlir::ValueRange::dereference_iterator(&v141, v22 + v26);
              v33 = v114 - 24 * (v30 - 4);
              v34 = v30 + 2;
              v15 = v29;
              v35 = v29 - 16 * v34;
              if (v31 <= 5)
              {
                v33 = v35;
              }

              if (v33 != v32 || *(v143 + v22 + v26) != *(v149 + v31))
              {
                v4 = v115;
                v7 = v111;
                goto LABEL_43;
              }

              v28 = ++v27 + v9;
              ++v26;
              if (!(v109 + v22 + v26))
              {
                v27 = v7 - v9;
                v7 = v111;
                v28 = v111;
                v4 = v115;
                goto LABEL_43;
              }
            }

            v27 = v26 + 1;
            v28 = v22 + v26;
            v4 = v115;
            v7 = v111;
            v15 = v29;
LABEL_43:
            if (v27 >= 2)
            {
              llvm::SmallPtrSetImpl<mlir::Operation *>::insert(v122, v15, &v138);
              if (v140)
              {
                v138 = v15;
                v139 = __PAIR64__(v118, v9);
                v140 = v27;
                v36 = v146;
                if (v147 >= HIDWORD(v147))
                {
                  if (v146 <= &v138 && v146 + 24 * v147 > &v138)
                  {
                    v40 = &v138 - v146;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v147 + 1, 24);
                    v36 = v146;
                    v37 = (v146 + v40);
                    v7 = v111;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v147 + 1, 24);
                    v37 = &v138;
                    v36 = v146;
                  }
                }

                else
                {
                  v37 = &v138;
                }

                v38 = &v36[24 * v147];
                v39 = *v37;
                *(v38 + 2) = v37[2];
                *v38 = v39;
                LODWORD(v147) = v147 + 1;
                v22 = v28;
              }
            }
          }
        }

        else
        {
          v22 = v9 + 1;
        }

        if (v149 != v151)
        {
          free(v149);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v18 = v11 + 16 * (v12 & 7);
      v15 = v18 + 16;
      v19 = *(*(v18 + 64) + 16);
      v20 = v19 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id;
      if (v19 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
      {
        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v135 = v21;
      if (v20)
      {
        v17 = v12 & 7;
        goto LABEL_24;
      }
    }

    v22 = v9 + 1;
LABEL_50:
    v9 = v22;
    goto LABEL_51;
  }

LABEL_57:
  v41 = v147;
  if (!v147)
  {
    v149 = "no run of delinearize outputs to deal with";
    v152 = 259;
    v138 = &v149;
    v45 = *(v106 + 16);
    if (v45 && v45[2] == 1)
    {
      (*(*v45 + 88))(v45, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v138);
    }

    v46 = 0;
    goto LABEL_146;
  }

  v138 = &v140;
  v139 = 0x100000000;
  v42 = v7;
  v135 = v137;
  v136 = 0x600000000;
  if (v7 <= 6)
  {
    v132 = v134;
    v133 = 0x600000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v137, v7, 8);
    v132 = v134;
    v133 = 0x600000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v134, v7, 8);
    v41 = v147;
    if (!v147)
    {
      v43 = 0;
      v44 = v107;
      goto LABEL_136;
    }
  }

  v47 = v146;
  LODWORD(v43) = 0;
  v112 = v146 + 24 * v41;
  do
  {
    *v120 = *v47;
    v121 = *(v47 + 2);
    v119 = LODWORD(v120[1]);
    if (v43)
    {
      v48 = mlir::ValueRange::offset_base(&v141, v43);
    }

    else
    {
      v48 = v141;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v135, v135 + 8 * v136, v48, 0, v48, (v119 - v43));
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert<mlir::OpFoldResult const*,void>(&v132, v132 + 8 * v133, &v113[8 * v43], &v113[8 * v43 + 8 * (v119 - v43)]);
    v49 = v121;
    v117 = *(v106 + 24);
    v50 = v120[0];
    *(v106 + 24) = *(v120[0] + 2);
    *(v106 + 32) = v50;
    v51 = *(v115 + 24);
    v149 = v151;
    v150 = 0x600000000;
    AffineConstantExpr = mlir::getAffineConstantExpr(1, *(v106 + 8), v52);
    v129 = AffineConstantExpr;
    if (v49)
    {
      v54 = 0;
      v55 = 8 * v49;
      v56 = &v113[8 * v119];
      while (1)
      {
        v57 = *v56;
        if (*v56 < 8)
        {
          break;
        }

        ConstantIntValue = mlir::getConstantIntValue(*v56);
        if (v60)
        {
          AffineDimOrSymbol = mlir::getAffineConstantExpr(ConstantIntValue, *(v106 + 8), v59);
        }

        else
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v149, v57 & 0xFFFFFFFFFFFFFFF8);
          AffineDimOrSymbol = getAffineDimOrSymbol(7u, v54, *(v106 + 8));
          v54 = (v54 + 1);
        }

        AffineConstantExpr = mlir::AffineExpr::operator*(&v129, AffineDimOrSymbol, v62);
        v129 = AffineConstantExpr;
        ++v56;
        v55 -= 8;
        if (!v55)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_77:
      if (AffineConstantExpr && *(AffineConstantExpr + 8) == 5)
      {
        v57 = mlir::IntegerAttr::get(*(**(v106 + 8) + 472), *(AffineConstantExpr + 16)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v57 = (mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>((v106 + 8), v51, &v129, &v149) | 4) - 16;
      }
    }

    if (v149 != v151)
    {
      free(v149);
    }

    if (v49 == *(v50 + 9))
    {
      ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(v50, 0);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v135, *(ODSOperands + 24));
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v132, v57);
      v149 = v151;
      v150 = 0x600000000;
      v64 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::Value,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>>(&v138, &v149);
      v65 = &v138[8 * v139];
      *v65 = (v65 + 2);
      v65[1] = 0x600000000;
      if (*(v64 + 8))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v65, v64);
      }

      LODWORD(v139) = v139 + 1;
      v66 = v149;
      if (v149 != v151)
      {
        goto LABEL_127;
      }

      goto LABEL_128;
    }

    v129 = v131;
    v130 = 0x600000000;
    mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(&v126, v120);
    v67 = v126;
    v68 = HIDWORD(v120[1]);
    v69 = v126 + 8 * HIDWORD(v120[1]);
    v70 = &v69[8 * v49];
    v71 = v126 + 8 * v127;
    v72 = v71 - v70;
    if (v71 != v70)
    {
      memmove(v126 + 8 * HIDWORD(v120[1]), v70, v71 - v70);
      v67 = v126;
    }

    v127 = (&v69[v72] - v67) >> 3;
    v149 = v57;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(&v126, &v67[8 * v68], &v149);
    v73 = v120[0];
    v74 = *(v120[0] + 3);
    v149 = *(mlir::affine::AffineDelinearizeIndexOp::getODSOperands(v120[0], 0) + 24);
    v75 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::OpFoldResult,6u> &>((v106 + 8), v74, &v149, &v126);
    v76 = v75;
    v77 = HIDWORD(v120[1]);
    if (HIDWORD(v120[1]) <= 5)
    {
      v78 = HIDWORD(v120[1]) + 1;
    }

    else
    {
      v78 = (HIDWORD(v120[1]) + 1);
    }

    v79 = HIDWORD(v120[1]) > 5 && HIDWORD(v120[1]) == -1;
    v110 = v79;
    if (HIDWORD(v120[1]) <= 5)
    {
      v80 = v75 - 16 * HIDWORD(v120[1]) - 16;
    }

    else
    {
      v80 = v75 - 24 * (HIDWORD(v120[1]) - 5) - 96;
    }

    v81 = *(v73 + 3);
    v82 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineDelinearizeIndexOp>(*(**v81 + 32));
    v149 = v81;
    v150 = v82;
    v151[0] = &v152;
    v151[1] = 0x400000000;
    v153 = v155;
    v154 = 0x400000000;
    v155[4] = v156;
    v155[5] = 0x400000000;
    v156[8] = 4;
    v156[9] = v157;
    v156[10] = 0x100000000;
    v157[1] = v158;
    v157[2] = 0x100000000;
    v158[1] = 0;
    v158[2] = 0;
    v158[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v158[4] = 0;
    v158[6] = 0;
    v83 = v80;
    mlir::affine::AffineDelinearizeIndexOp::build((v106 + 8), &v149, v80, &v113[8 * v119], v49, 1);
    v84 = mlir::Operation::create(&v149);
    mlir::OpBuilder::insert((v106 + 8), v84);
    v85 = *(*(v84 + 6) + 16);
    mlir::OperationState::~OperationState(&v149);
    if (v85 == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
    {
      v86 = v84;
    }

    else
    {
      v86 = 0;
    }

    v87 = *(v76 + 9);
    v88 = v76 - 16;
    if (v87)
    {
      v89 = v76 - 16;
    }

    else
    {
      v89 = 0;
    }

    if (v87 >= v77)
    {
      v90 = v77;
    }

    else
    {
      v90 = v87;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v129, v129 + 8 * v130, v89, 0, v89, v90);
    v91 = *(v86 + 9);
    if (v91)
    {
      v92 = (v86 - 16);
    }

    else
    {
      v92 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v129, v129 + 8 * v130, v92, 0, v92, v91);
    v93 = *(v76 + 9);
    if (v93)
    {
      v94 = v76 - 16;
    }

    else
    {
      v94 = 0;
    }

    if (!v110)
    {
      if (!v93)
      {
        v96 = v78;
        goto LABEL_120;
      }

      v95 = *(v94 + 8) & 7;
      v96 = v78;
      if (v95 == 6)
      {
        goto LABEL_120;
      }

      v97 = (5 - v95);
      v96 = v78 - v97;
      if (v78 > v97)
      {
        v88 -= 16 * v97;
LABEL_120:
        v94 = &v88[-24 * v96];
        goto LABEL_122;
      }

      v94 = &v88[-16 * v78];
    }

LABEL_122:
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v129, v129 + 8 * v130, v94, 0, v94, v93 - v78);
    v98 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::Value,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>>(&v138, &v129);
    v99 = &v138[8 * v139];
    *v99 = (v99 + 2);
    v99[1] = 0x600000000;
    if (*(v98 + 8))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(v99, v98);
    }

    LODWORD(v139) = v139 + 1;
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v135, v83);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v132, v57);
    if (v126 != &v128)
    {
      free(v126);
    }

    v66 = v129;
    if (v129 != v131)
    {
LABEL_127:
      free(v66);
    }

LABEL_128:
    if (v117)
    {
      *(v106 + 24) = v117;
    }

    else
    {
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
    }

    v43 = (v49 + v119);
    v47 += 24;
  }

  while (v47 != v112);
  v42 = v142;
  if (v43)
  {
    v44 = mlir::ValueRange::offset_base(&v141, (v49 + v119));
  }

  else
  {
    v43 = 0;
    v44 = v141;
  }

  v4 = v115;
LABEL_136:
  llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v135, v135 + 8 * v136, v44, 0, v44, v42 - v43);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::insert<mlir::OpFoldResult const*,void>(&v132, v132 + 8 * v133, &v113[8 * v43], &v113[8 * v105]);
  LOBYTE(v149) = *(v108 + 16 * ((*(v4 + 44) >> 23) & 1) + 8);
  v100 = mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL>((v106 + 8), *(v4 + 24), &v135, &v132, &v149);
  (*(*v106 + 8))(v106, v4, v100);
  if (v147)
  {
    v101 = v146;
    v102 = v138 + 1;
    v103 = 24 * v147;
    do
    {
      if (*v102)
      {
        (**v106)(v106, *v101, *(v102 - 1) & 0xFFFFFFFFFFFFFFF9);
      }

      v101 += 3;
      v102 += 8;
      v103 -= 24;
    }

    while (v103);
  }

  if (v132 != v134)
  {
    free(v132);
  }

  if (v135 != v137)
  {
    free(v135);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Value,6u>,1u>::~SmallVector(&v138);
  v46 = 1;
LABEL_146:
  if ((v124 & 1) == 0)
  {
    free(v122[0]);
  }

  if (v143 != &v145)
  {
    free(v143);
  }

  if (v146 != v148)
  {
    free(v146);
  }

  return v46;
}

void llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a4;
  v10 = *a1;
  v11 = *(a1 + 8);
  if (*a1 + 8 * v11 == a2)
  {

    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1, a3, a4, a5, a6);
  }

  else
  {
    v12 = a2 - v10;
    v13 = a6 - a4;
    v14 = a6 - a4 + v11;
    if (v14 > *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v14, 8);
      v10 = *a1;
      v11 = *(a1 + 8);
    }

    v15 = (v10 + v12);
    v16 = 8 * v11;
    v17 = (v10 + 8 * v11);
    v18 = 8 * v11 - v12;
    v19 = v18 >> 3;
    if (v18 >> 3 >= v13)
    {
      llvm::SmallVectorImpl<mlir::Value>::append<std::move_iterator<mlir::Value*>,void>(a1, &v17[-v13], (v10 + 8 * v11));
      if (&v17[-v13] != v15)
      {
        memmove(&v15[v13], v15, &v17[-v13] - v15);
      }

      for (i = v8; ; *v15++ = mlir::ValueRange::dereference_iterator(&i, v7++))
      {
        j = v7;
        if (a6 == v7)
        {
          break;
        }
      }
    }

    else
    {
      v20 = v11 + v13;
      *(a1 + 8) = v20;
      if (v16 != v12)
      {
        memcpy((v10 + 8 * v20 - 8 * v19), v15, v18);
        do
        {
          *v15++ = mlir::ValueRange::dereference_iterator(&v21, v7);
          v22 = ++v7;
          --v19;
        }

        while (v19);
        v8 = v21;
      }

      i = v8;
      for (j = v7; a6 != v7; j = v7)
      {
        *v17++ = mlir::ValueRange::dereference_iterator(&i, v7++);
      }
    }
  }
}

void llvm::SmallVectorImpl<mlir::OpFoldResult>::insert<mlir::OpFoldResult const*,void>(uint64_t *a1, uint64_t a2, char *__src, uint64_t *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = *(a1 + 2);
  if (*a1 + 8 * v8 == a2)
  {

    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(a1, __src, a4);
  }

  else
  {
    v9 = a2 - v7;
    v10 = a4 - __src;
    v11 = (a4 - __src) >> 3;
    if (v8 + v11 > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v8 + v11, 8);
      v7 = *a1;
      v8 = *(a1 + 2);
    }

    v12 = (v7 + v9);
    v13 = 8 * v8;
    v14 = (v7 + 8 * v8);
    v15 = 8 * v8 - v9;
    v16 = v15 >> 3;
    if (v15 >> 3 >= v11)
    {
      v19 = v11 + v8;
      if (v19 > *(a1 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v19, 8);
        LODWORD(v8) = *(a1 + 2);
      }

      if (a4 != v5)
      {
        v20 = (*a1 + 8 * v8);
        v21 = -8 * v11;
        do
        {
          *v20++ = *&v14[v21];
          v21 += 8;
        }

        while (v21);
        LODWORD(v8) = *(a1 + 2);
      }

      *(a1 + 2) = v8 + v11;
      if (&v14[-8 * v11] != v12)
      {
        memmove(&v12[v11], v12, &v14[-8 * v11] - v12);
      }

      if (a4 != v5)
      {

        memmove(v12, v5, a4 - v5);
      }
    }

    else
    {
      v17 = v8 + (v10 >> 3);
      *(a1 + 2) = v17;
      if (v13 != v9)
      {
        memcpy((v7 + 8 * v17 - 8 * v16), (v7 + v9), v15);
        do
        {
          v18 = *v5++;
          *v12++ = v18;
          --v16;
        }

        while (v16);
      }

      if (v5 != a4)
      {

        memcpy(v14, v5, a4 - v5);
      }
    }
  }
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::Value,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + (v3 << 6) > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::affine::AffineLinearizeIndexOp::build(a1, v14, *a3 & 0xFFFFFFFFFFFFFFF9, *(a3 + 8), *a4, *(a4 + 8), *a5);
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CancelLinearizeOfDelinearizePortion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CancelLinearizeOfDelinearizePortion]";
  v6 = 120;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::DropLinearizeLeadingZero::~DropLinearizeLeadingZero(_anonymous_namespace_::DropLinearizeLeadingZero *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DropLinearizeLeadingZero::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v34[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  v25 = v3;
  v29[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = (v7 + 120);
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = (v3 + 16 * v6 + 16);
  }

  if (!mlir::detail::constant_int_predicate_matcher::match(v29, v8))
  {
    return 0;
  }

  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 12) == 1)
  {
    v9 = 1;
    (**a3)(a3, a2, &v25, 1);
  }

  else
  {
    mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v26, a2);
    v11 = *(a2 + 44);
    v12 = a2 + 64 + 16 * ((v11 >> 23) & 1);
    v13 = *(v12 + 12);
    v14 = (v26 + 8 * (v13 == *(*v12 + 32) >> 3));
    v15 = v27 - (v13 == *(*v12 + 32) >> 3);
    if ((v11 & 0x800000) != 0)
    {
      v16 = *(a2 + 72);
    }

    else
    {
      v16 = 0;
    }

    v17 = v13 - 1;
    v18 = v16 + 32;
    v19 = *(v12 + 8);
    v20 = *(a2 + 24);
    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineLinearizeIndexOp>(*(**v20 + 32));
    v29[0] = v20;
    v29[1] = v21;
    v29[2] = v30;
    v29[3] = 0x400000000;
    v30[4] = v31;
    v30[5] = 0x400000000;
    v31[4] = v32;
    v31[5] = 0x400000000;
    v32[8] = 4;
    v32[9] = v33;
    v32[10] = 0x100000000;
    v33[1] = v34;
    v33[2] = 0x100000000;
    v34[1] = 0;
    v34[2] = 0;
    v34[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v34[4] = 0;
    v34[6] = 0;
    mlir::affine::AffineLinearizeIndexOp::build(a3 + 1, v29, v18 & 0xFFFFFFFFFFFFFFF9 | 2, v17, v14, v15, v19);
    v22 = mlir::Operation::create(v29);
    mlir::OpBuilder::insert((a3 + 1), v22);
    v23 = *(*(v22 + 6) + 16);
    mlir::OperationState::~OperationState(v29);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    ((*a3)[1])(a3, a2, v24);
    if (v26 != &v28)
    {
      free(v26);
    }

    return 1;
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DropLinearizeLeadingZero>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DropLinearizeLeadingZero]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void anonymous namespace::DropLinearizeUnitComponentsIfDisjointOrZero::~DropLinearizeUnitComponentsIfDisjointOrZero(_anonymous_namespace_::DropLinearizeUnitComponentsIfDisjointOrZero *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DropLinearizeUnitComponentsIfDisjointOrZero::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2 + 64;
  v6 = *(a2 + 44);
  v7 = (v6 >> 23) & 1;
  v8 = *(a2 + 64 + 16 * v7 + 12);
  if ((v6 & 0x800000) != 0)
  {
    v9 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v9 = 2;
  }

  v33[0] = v9;
  v33[1] = v8;
  v30 = v32;
  v31 = 0x600000000;
  if (v8 <= 6)
  {
    v27 = v29;
    v28 = 0x600000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v8, 8);
    v27 = v29;
    v28 = 0x600000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v8, 8);
    v7 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v5 + 16 * v7 + 12) == *(*(v5 + 16 * v7) + 32) >> 3)
  {
    v10 = v8;
  }

  else
  {
    if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFFF8) + 24);
    }

    else
    {
      v11 = 0;
    }

    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v30, v11);
    v9 = mlir::ValueRange::offset_base(v33, 1);
    v10 = v8 - 1;
  }

  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v25, a2);
  v34 = v9;
  v35 = 0;
  v36 = v25;
  if (v10)
  {
    v12 = -v10;
    v13 = v25 + 8;
    v14 = 1;
    do
    {
      v15 = mlir::ValueRange::dereference_iterator(&v34, v14 - 1);
      ConstantIntValue = mlir::getConstantIntValue(*(v13 - 1));
      if ((v17 & 1) == 0 || ConstantIntValue != 1 || (v19 = mlir::getConstantIntValue(v15 | 4) == 0, (*(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) & 1) == 0) && (v18 & v19 & 1) == 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v30, v15);
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v27, *(v13 - 1));
      }

      v35 = v14;
      v36 = v13;
      ++v14;
      v13 += 8;
    }

    while (v12 + v14 != 1);
  }

  if (v8 == v31)
  {
    v34 = "no unit basis entries to replace";
    v37 = 259;
    v24 = &v34;
    v20 = *(a3 + 16);
    if (v20 && v20[2] == 1)
    {
      (*(*v20 + 88))(v20, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineLinearizeIndexOp &>(mlir::affine::AffineLinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v24);
    }

    v21 = 0;
  }

  else
  {
    if (v31)
    {
      LOBYTE(v34) = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v22 = mlir::OpBuilder::create<mlir::affine::AffineLinearizeIndexOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL>((a3 + 8), *(a2 + 24), &v30, &v27, &v34);
    }

    else
    {
      LODWORD(v34) = 0;
      v22 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>((a3 + 8), *(a2 + 24), &v34);
    }

    (*(*a3 + 8))(a3, a2, v22);
    v21 = 1;
  }

  if (v25 != &v26)
  {
    free(v25);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  return v21;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DropLinearizeUnitComponentsIfDisjointOrZero>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DropLinearizeUnitComponentsIfDisjointOrZero]";
  v6 = 128;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23FC0))
  {
    qword_27FC23FB0 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>();
    *algn_27FC23FB8 = v1;
    __cxa_guard_release(&qword_27FC23FC0);
  }

  return qword_27FC23FB0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties]";
  v6 = 127;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::detail::getTypeNameImpl<mlir::AffineMapAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::AffineMapAttr]";
  v6 = 81;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23FE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23FE8))
  {
    qword_27FC23FD8 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>();
    unk_27FC23FE0 = v1;
    __cxa_guard_release(&qword_27FC23FE8);
  }

  return qword_27FC23FD8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties]";
  v6 = 138;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineDelinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24010))
  {
    qword_27FC24000 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>();
    *algn_27FC24008 = v1;
    __cxa_guard_release(&qword_27FC24010);
  }

  return qword_27FC24000;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties]";
  v6 = 125;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24038))
  {
    qword_27FC24028 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>();
    unk_27FC24030 = v1;
    __cxa_guard_release(&qword_27FC24038);
  }

  return qword_27FC24028;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineIfOpGenericAdaptorBase::Properties]";
  v6 = 124;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::detail::getTypeNameImpl<mlir::IntegerSetAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::IntegerSetAttr]";
  v6 = 82;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u32[0] = a3[1].n128_u32[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24078))
  {
    qword_27FC24068 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>();
    unk_27FC24070 = v1;
    __cxa_guard_release(&qword_27FC24078);
  }

  return qword_27FC24068;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties]";
  v6 = 136;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineLinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

BOOL mlir::AsmParser::parseType<mlir::IndexType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 536))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC240A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC240A0))
  {
    qword_27FC24090 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>();
    *algn_27FC24098 = v1;
    __cxa_guard_release(&qword_27FC240A0);
  }

  return qword_27FC24090;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties]";
  v6 = 126;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC240C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC240C8))
  {
    qword_27FC240B8 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>();
    unk_27FC240C0 = v1;
    __cxa_guard_release(&qword_27FC240C8);
  }

  return qword_27FC240B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties]";
  v6 = 125;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC240F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC240F0))
  {
    qword_27FC240E0 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>();
    *algn_27FC240E8 = v1;
    __cxa_guard_release(&qword_27FC240F0);
  }

  return qword_27FC240E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties]";
  v6 = 125;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24118))
  {
    qword_27FC24108 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>();
    unk_27FC24110 = v1;
    __cxa_guard_release(&qword_27FC24118);
  }

  return qword_27FC24108;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties]";
  v6 = 130;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24140))
  {
    qword_27FC24130 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>();
    *algn_27FC24138 = v1;
    __cxa_guard_release(&qword_27FC24140);
  }

  return qword_27FC24130;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties]";
  v6 = 130;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24168))
  {
    qword_27FC24158 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>();
    unk_27FC24160 = v1;
    __cxa_guard_release(&qword_27FC24168);
  }

  return qword_27FC24158;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties]";
  v6 = 132;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC24190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24190))
  {
    qword_27FC24180 = llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>();
    *algn_27FC24188 = v1;
    __cxa_guard_release(&qword_27FC24190);
  }

  return qword_27FC24180;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties]";
  v6 = 133;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::affine::AffineValueMap::AffineValueMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 8);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<mlir::AffineExpr>::append<mlir::AffineExpr const*,void>(a1, (a2 + 24), (a2 + 24 + 8 * v12));
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 16);
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a1 + 96), a3, 0, a3, a4);
  *(a1 + 144) = a1 + 160;
  *(a1 + 152) = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a1 + 144), a5, 0, a5, a6);
  return a1;
}

void mlir::affine::AffineValueMap::reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 0;
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 16);
  llvm::SmallVectorImpl<mlir::AffineExpr>::insert<mlir::AffineExpr const*,void>(a1, *a1, (a2 + 24), (a2 + 24 + 8 * *(a2 + 8)));
  *(a1 + 104) = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a1 + 96), a3, 0, a3, a4);
  *(a1 + 152) = 0;

  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a1 + 144), a5, 0, a5, a6);
}

void mlir::affine::AffineValueMap::~AffineValueMap(mlir::affine::AffineValueMap *this)
{
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  v3 = *(this + 12);
  if (v3 != this + 112)
  {
    free(v3);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

uint64_t mlir::memref::foldMemRefCast(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
    if (v2)
    {
      v3 = 0;
      v4 = *(a1 + 72);
      v5 = 32 * v2;
      while (1)
      {
        v6 = v4[3];
        if ((~*(v6 + 8) & 7) != 0)
        {
          v7 = v4[3];
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          v8 = *(v7 + 8) & 7;
          if (v8 != 6)
          {
            v9 = v7 + 16 * v8 + 16;
LABEL_12:
            if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id && v6 != a2)
            {
              v11 = *(*(v9 + 72) + 24);
              if (*(*(v11[1] & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
              {
                v12 = v4[1];
                if (v12)
                {
                  v13 = *v4;
                  *v12 = *v4;
                  if (v13)
                  {
                    *(v13 + 8) = v4[1];
                  }
                }

                v4[3] = v11;
                v14 = *v11;
                *v4 = *v11;
                v4[1] = v11;
                if (v14)
                {
                  *(v14 + 8) = v4;
                }

                *v11 = v4;
                v3 = 1;
              }
            }

            goto LABEL_23;
          }

          v9 = v7 + 24 * *(v7 + 16) + 120;
          if (v9)
          {
            goto LABEL_12;
          }
        }

LABEL_23:
        v4 += 4;
        v5 -= 32;
        if (!v5)
        {
          return v3 & 1;
        }
      }
    }
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t *mlir::memref::GlobalOp::getConstantInitValue(mlir::memref::GlobalOp *this)
{
  v1 = (*(*this + 44) >> 23) & 1;
  v2 = *(*this + 16 * v1 + 80);
  if (*(*this + 16 * v1 + 72))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = *v2;
  v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  return v2;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, mlir::OperationState **a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIndexOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::arith::ConstantIndexOp::build(a1, v10, *a3);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (v7 && *(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    if (*(*(*(v7 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
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

  mlir::OperationState::~OperationState(v10);
  return v8;
}

unint64_t mlir::memref::ViewOp::getODSOperandIndexAndLength(mlir::memref::ViewOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6memref6ViewOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir6memref6ViewOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

void llvm::SmallVectorImpl<long long>::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 + a2 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + a2, 8);
    v6 = *(a1 + 8);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = vdupq_n_s64(a2 - 1);
  v9 = (*a1 + 8 * v6 + 8);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
    if (v10.i8[0])
    {
      *(v9 - 1) = a3;
    }

    if (v10.i8[4])
    {
      *v9 = a3;
    }

    v7 += 2;
    v9 += 2;
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
LABEL_9:
  *(a1 + 8) = v6 + a2;
}

void mlir::inferExpandShapeOutputShape(char ***a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v82[8] = *MEMORY[0x277D85DE8];
  v69 = v71;
  v70 = 0x600000000;
  v66 = v68;
  v67 = 0x600000000;
  if (!a8)
  {
    (*(a4 + 24))(a4, a3, a3, a4, a5, a6);
    v24 = v67;
    if (v23 != v67)
    {
      if (v23 >= v67)
      {
        llvm::SmallVectorImpl<long long>::append(&v66, v23 - v67, 1);
        v24 = v67;
      }

      else
      {
        LODWORD(v67) = v23;
        v24 = v23;
      }
    }

    v20 = v66;
    v21 = v24;
    goto LABEL_68;
  }

  v13 = a5;
  if (!(*(a4 + 16))(a4, a3))
  {
    goto LABEL_8;
  }

  v15 = (*(a4 + 24))(a4, a3);
  if (!v16)
  {
LABEL_7:
    v18 = (*(a4 + 24))(a4, a3);
    LODWORD(v67) = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v66, v18, &v18[8 * v19]);
    v20 = v66;
    v21 = v67;
LABEL_68:
    mlir::getMixedValues(v20, v21, v69 & 0xFFFFFFFFFFFFFFF9, v70, *a1, &v75);
    *a9 = a9 + 16;
    *(a9 + 8) = 0x600000000;
    if (v76)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a9, &v75);
    }

    *(a9 + 64) = 1;
LABEL_71:
    if (v75 != v77)
    {
      free(v75);
    }

    goto LABEL_73;
  }

  v17 = 8 * v16;
  while (*v15 != 0x8000000000000000)
  {
    ++v15;
    v17 -= 8;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  (*(a4 + 24))(a4, a3);
  if (v22 != v67)
  {
    if (v22 >= v67)
    {
      llvm::SmallVectorImpl<long long>::append(&v66, v22 - v67, 0x8000000000000000);
    }

    else
    {
      LODWORD(v67) = v22;
    }
  }

  v53 = a2;
  if (!a6)
  {
LABEL_54:
    if (v67)
    {
      v48 = 0;
      v49 = 8 * v67;
      v50 = v66;
      v51 = a9;
      do
      {
        v52 = *v50++;
        if (v52 == 0x8000000000000000)
        {
          ++v48;
        }

        v49 -= 8;
      }

      while (v49);
    }

    else
    {
      v48 = 0;
      v51 = a9;
    }

    if (v48 != v70)
    {
      *v51 = 0;
      *(v51 + 64) = 0;
      goto LABEL_73;
    }

    mlir::getMixedValues(v66, v67, v69 & 0xFFFFFFFFFFFFFFF9, v70, *a1, &v75);
    *v51 = v51 + 16;
    *(v51 + 8) = 0x600000000;
    if (v76)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(v51, &v75);
    }

    *(v51 + 64) = 1;
    goto LABEL_71;
  }

  v25 = 0;
  v26 = v13 + 32 * a6;
  v55 = v26;
  while (1)
  {
    v63 = v65;
    v64 = 0x200000000;
    if (*(v13 + 8) && (llvm::SmallVectorImpl<long long>::operator=(&v63, v13), v27 = v63, v57 = 1, v64))
    {
      v28 = 0;
      v29 = v63 + 8 * v64;
      do
      {
        while (1)
        {
          v30 = *v27;
          v31 = *((*(a4 + 24))(a4, a3) + 8 * v30);
          if (v31 != 0x8000000000000000)
          {
            break;
          }

          if (v28)
          {
            *a9 = 0;
            *(a9 + 64) = 0;
            v32 = 1;
            goto LABEL_37;
          }

          v27 += 8;
          v28 = 1;
          if (v27 == v29)
          {
            goto LABEL_28;
          }
        }

        *(v66 + v30) = v31;
        v57 *= v31;
        v27 += 8;
      }

      while (v27 != v29);
      if ((v28 & 1) == 0)
      {
        v32 = 3;
LABEL_37:
        v26 = v55;
        goto LABEL_47;
      }

LABEL_28:
      v33 = *(a7 + 8 * v25);
      v34 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v53, &v57);
      v72 = &v74;
      v73 = 0x100000000;
      v35 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivSIOp,void>::id, *(**v53 + 32));
      if ((v36 & 1) == 0)
      {
        v61 = 1283;
        v60[2] = "arith.divsi";
        v60[3] = 11;
        v59 = 259;
        llvm::operator+(v60, &v58, v62);
        llvm::report_fatal_error(v62, 1);
      }

      v75 = v53;
      v76 = v35;
      v77[0] = v78;
      v77[1] = 0x400000000;
      v78[4] = v79;
      v78[5] = 0x400000000;
      v79[4] = v80;
      v79[5] = 0x400000000;
      v80[8] = 4;
      v80[9] = v81;
      v80[10] = 0x100000000;
      v81[1] = v82;
      v81[2] = 0x100000000;
      v82[1] = 0;
      v82[2] = 0;
      v82[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v82[4] = 0;
      v82[6] = 0;
      mlir::arith::DivSIOp::build(a1, &v75, v33 & 0xFFFFFFFFFFFFFFF8, v34 - 16);
      v37 = mlir::Operation::create(&v75);
      v38 = v37;
      v39 = a1[2];
      if (v39)
      {
        v40 = a1[3];
        *(v37 + 2) = v39;
        *(v37 + 8) = -1;
        v41 = *v40;
        *v37 = *v40;
        *(v37 + 1) = v40;
        *(v41 + 1) = v37;
        *v40 = v37;
      }

      v26 = v55;
      if ((mlir::OpBuilder::tryFold(a1, v37, &v72) & 1) != 0 && v73)
      {
        if (*(v38 + 2))
        {
          *(v38 + 2) = 0;
          v43 = *v38;
          v42 = *(v38 + 1);
          *v42 = *v38;
          *(v43 + 8) = v42;
          *v38 = 0;
          *(v38 + 1) = 0;
        }

        mlir::Operation::destroy(v38);
      }

      else
      {
        v44 = *(v38 + 9);
        if (v44)
        {
          v45 = (v38 - 16);
        }

        else
        {
          v45 = 0;
        }

        LODWORD(v73) = 0;
        llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v72, v45, 0, v45, v44);
        if (a1[2])
        {
          v46 = a1[1];
          if (v46)
          {
            (*(*v46 + 2))(v46, v38, 0, 0);
          }
        }
      }

      mlir::OperationState::~OperationState(&v75);
      v47 = *v72;
      if (v72 != &v74)
      {
        free(v72);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v69, v47);
      v32 = 0;
    }

    else
    {
      v32 = 3;
    }

LABEL_47:
    if (v63 != v65)
    {
      free(v63);
    }

    if (v32 != 3 && v32)
    {
      break;
    }

    ++v25;
    v13 += 32;
    if (v13 == v26)
    {
      goto LABEL_54;
    }
  }

LABEL_73:
  if (v66 != v68)
  {
    free(v66);
  }

  if (v69 != v71)
  {
    free(v69);
  }
}

uint64_t *mlir::getPositionsOfShapeOne@<X0>(llvm::SmallBitVector *__return_ptr a1@<X8>, int a2@<W0>, uint64_t a3@<X1>, unsigned int a4@<W2>)
{
  result = llvm::SmallBitVector::SmallBitVector(a1, a4, 0);
  if (a2 && a4)
  {
    v9 = 0;
    do
    {
      if (*(a3 + 8 * v9) == 1)
      {
        result = llvm::SmallBitVector::set(a1, v9);
        --a2;
      }

      ++v9;
    }

    while (v9 < a4 && a2);
  }

  return result;
}

char *mlir::getValueOrCreateConstantIndexOp(mlir::arith::ConstantIndexOp *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 4) == 0 || !v3)
  {
    v4 = *(v3 + 24);
    if (v4 > 0x40)
    {
      operator new[]();
    }

    if (v4)
    {
      v5 = (*(v3 + 16) << -v4) >> -v4;
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;
    return mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long>(a1, a2, &v7) - 16;
  }

  return v3;
}

void mlir::getValueOrCreateConstantIndexOp(mlir::arith::ConstantIndexOp *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  v10 = (8 * a4) >> 3;
  if (v10 < 5)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v10, 8);
    v11 = v18;
    v12 = v18;
  }

  v13 = 8 * a4;
  if (a4)
  {
    v14 = (v17 + 8 * v11);
    v15 = v13;
    do
    {
      v16 = *a3++;
      *v14++ = mlir::getValueOrCreateConstantIndexOp(a1, a2, v16);
      v15 -= 8;
    }

    while (v15);
    v12 = v18;
  }

  *a5 = a5 + 2;
  a5[1] = 0x600000000;
  LODWORD(v18) = v12 + (v13 >> 3);
  if (v18)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a5, &v17);
  }

  if (v17 != v19)
  {
    free(v17);
  }
}

BOOL mlir::complex::ConstantOp::isBuildableWith(void *a1, void *a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && a1[2] == 2 && ((v2 = a1[1], v3 = a2[1], v4 = *v2, v5 = *(**v2 + 136), v6 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id) || (v6 = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)) && (v7 = v2[1], *(*v7 + 136) == v6) && *(v4 + 8) == v3)
  {
    return v7[1] == v3;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::complex::ConstantOp::verify(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (*(v3 + 16) != 2)
  {
    v18 = "requires 'value' to be a complex constant, represented as array of two values";
LABEL_17:
    v31[0] = v18;
    v32 = 259;
    mlir::Operation::emitOpError(&v35, v2, v31);
LABEL_18:
    v17 = v39 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    return v17 & 1;
  }

  v4 = *(v3 + 8);
  v5 = *v4;
  v6 = *(**v4 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  if (!v7 || ((v8 = *(*v4[1] + 136), v8 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) : (v9 = 1), !v9))
  {
    v18 = "requires attribute's elements to be float or integer attributes";
    goto LABEL_17;
  }

  v10 = *((*(v2 - 1) & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute const,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute const,void>>::doCastIfPossible(v5);
  v13 = v12;
  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute const,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute const,void>>::doCastIfPossible(*(*(v3 + 8) + 8));
  v16 = v15;
  if ((*v13)(v13, v11) != v10 || (*v16)(v16, v14) != v10)
  {
    v32 = 257;
    mlir::Operation::emitOpError(&v35, *this, v31);
    if (v35)
    {
      mlir::Diagnostic::operator<<<37ul>(v36, "requires attribute's element types (");
    }

    v20 = (*v13)(v13, v11);
    if (v35)
    {
      v33 = 4;
      v34 = v20;
      v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
      v22 = v37 + 24 * v38;
      v23 = *v21;
      *(v22 + 16) = *(v21 + 16);
      *v22 = v23;
      ++v38;
      if (v35)
      {
        mlir::Diagnostic::operator<<<3ul>(v36, ", ");
      }
    }

    v24 = (*v16)(v16, v14);
    if (v35)
    {
      v33 = 4;
      v34 = v24;
      v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
      v26 = v37 + 24 * v38;
      v27 = *v25;
      *(v26 + 16) = *(v25 + 16);
      *v26 = v27;
      ++v38;
      if (v35)
      {
        mlir::Diagnostic::operator<<<54ul>(v36, ") to match the element type of the op's return type (");
        if (v35)
        {
          v33 = 4;
          v34 = v10;
          v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
          v29 = v37 + 24 * v38;
          v30 = *v28;
          *(v29 + 16) = *(v28 + 16);
          *v29 = v30;
          ++v38;
          if (v35)
          {
            mlir::Diagnostic::operator<<<2ul>(v36, ")");
          }
        }
      }
    }

    goto LABEL_18;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t mlir::complex::BitcastOp::verify(mlir::Operation **this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v14 = v2;
  v15 = v1;
  if (v1 != v2)
  {
    if (!mlir::Type::isIntOrFloat(&v15) && *(*v1 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v5 = "operand must be int/float/complex";
      goto LABEL_20;
    }

    isIntOrFloat = mlir::Type::isIntOrFloat(&v14);
    v7 = *(*v2 + 136);
    if (isIntOrFloat)
    {
      v8 = *(*v1 + 136);
      if ((v7 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (v8 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
      {
        if (v7 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v2 = v1;
LABEL_14:
          if (v8 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
          {
            v9 = v2;
          }

          else
          {
            v9 = 0;
          }

          v16[0] = v9[1];
          IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v16);
          if (mlir::Type::getIntOrFloatBitWidth(&v14) == 2 * IntOrFloatBitWidth)
          {
            goto LABEL_2;
          }

          v5 = "casting bitwidths do not match";
LABEL_20:
          v12 = v5;
          v13 = 259;
          mlir::Operation::emitOpError(v16, *this, &v12);
          v3 = v17 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
          return v3 & 1;
        }

LABEL_13:
        v14 = v1;
        v8 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v5 = "result must be int/float/complex";
        goto LABEL_20;
      }

      if (*(*v1 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_13;
      }
    }

    v5 = "requires that either input or output has a complex type";
    goto LABEL_20;
  }

LABEL_2:
  v3 = 1;
  return v3 & 1;
}

uint64_t mlir::complex::CreateOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if ((~*(v2 + 8) & 7) == 0)
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = v2 + 16 * v3 + 16;
  }

  if (*(*(v4 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ReOp,void>::id)
  {
    return 0;
  }

  v6 = *(v1 + 56);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16) + 120;
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    v8 = v6 + 16 * v7 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ImOp,void>::id)
  {
    return 0;
  }

  v9 = *(*(v4 + 72) + 24);
  if (v9 != *(*(v8 + 72) + 24))
  {
    return 0;
  }

  return v9 | 4;
}

unint64_t mlir::complex::ImOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2 && *(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id && v2[2] == 2)
  {
    return *(v2[1] + 8) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v4 = *(*(*a1 + 72) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16) + 120;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = v4 + 16 * v5 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
  {
    return 0;
  }

  return *(*(v6 + 72) + 56) | 4;
}

unint64_t mlir::complex::ReOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2 && *(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id && *(v2 + 16) == 2)
  {
    return **(v2 + 8) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v4 = *(*(*a1 + 72) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16) + 120;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = v4 + 16 * v5 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
  {
    return 0;
  }

  return *(*(v6 + 72) + 24) | 4;
}

uint64_t mlir::complex::AddOp::fold(uint64_t a1)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if ((~*(v3 + 8) & 7) != 0)
  {
    v4 = *(v2 + 24);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16) + 120;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = v4 + 16 * v5 + 16;
    }

    if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id)
    {
      v7 = *(v6 + 72);
      if (*(v2 + 56) == *(v7 + 56))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_11:
  v8 = *(v2 + 56);
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16) + 120;
    if (v8 + 24 * *(v8 + 16) == -120)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = v8 + 16 * v9 + 16;
  }

  if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id)
  {
    v7 = *(v10 + 72);
    if (v3 == *(v7 + 56))
    {
LABEL_34:
      v17 = *(v7 + 24);
      return v17 | 4;
    }
  }

LABEL_20:
  v11 = *(v8 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v8 + 24 * *(v8 + 16) + 120;
    if (v8 + 24 * *(v8 + 16) == -120)
    {
      return 0;
    }
  }

  else
  {
    v12 = v8 + 16 * v11 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
  {
    v13 = *(v12 + 16 * ((*(v12 + 44) >> 23) & 1) + 64);
    llvm::APFloat::Storage::Storage(v20, (**(v13 + 8) + 16));
    if (v20[0] == &llvm::semPPCDoubleDouble)
    {
      v14 = v20[1];
    }

    else
    {
      v14 = v20;
    }

    if ((*(v14 + 20) & 7) == 3)
    {
      llvm::APFloat::Storage::Storage(v19, (*(*(v13 + 8) + 8) + 16));
      if (v19[0] == &llvm::semPPCDoubleDouble)
      {
        v15 = v19[1];
      }

      else
      {
        v15 = v19;
      }

      v16 = *(v15 + 20) & 7;
      llvm::APFloat::Storage::~Storage(v19);
      llvm::APFloat::Storage::~Storage(v20);
      if (v16 != 3)
      {
        return 0;
      }

      v17 = *(*(*a1 + 72) + 24);
      return v17 | 4;
    }

    llvm::APFloat::Storage::~Storage(v20);
  }

  return 0;
}

uint64_t mlir::complex::SubOp::fold(uint64_t a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(v3 + 8) & 7;
    if (v4 == 6)
    {
      v5 = v3 + 24 * *(v3 + 16) + 120;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = v3 + 16 * v4 + 16;
    }

    if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::AddOp,void>::id)
    {
      v6 = *(v5 + 72);
      if (*(v2 + 56) == *(v6 + 56))
      {
        v14 = *(v6 + 24);
        return v14 | 4;
      }
    }
  }

LABEL_10:
  v7 = *(v2 + 56);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16) + 120;
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v9 = v7 + 16 * v8 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
  {
    return 0;
  }

  v10 = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 64);
  llvm::APFloat::Storage::Storage(v17, (**(v10 + 8) + 16));
  if (v17[0] == &llvm::semPPCDoubleDouble)
  {
    v11 = v17[1];
  }

  else
  {
    v11 = v17;
  }

  if ((*(v11 + 20) & 7) != 3)
  {
    llvm::APFloat::Storage::~Storage(v17);
    return 0;
  }

  llvm::APFloat::Storage::Storage(v16, (*(*(v10 + 8) + 8) + 16));
  if (v16[0] == &llvm::semPPCDoubleDouble)
  {
    v12 = v16[1];
  }

  else
  {
    v12 = v16;
  }

  v13 = *(v12 + 20) & 7;
  llvm::APFloat::Storage::~Storage(v16);
  llvm::APFloat::Storage::~Storage(v17);
  if (v13 != 3)
  {
    return 0;
  }

  v14 = *(*(*a1 + 72) + 24);
  return v14 | 4;
}

uint64_t mlir::complex::NegOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 24);
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = v1 + 16 * v2 + 16;
  }

  if (*(*(v3 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
  {
    return 0;
  }

  return *(*(v3 + 72) + 24) | 4;
}

uint64_t mlir::complex::LogOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 24);
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = v1 + 16 * v2 + 16;
  }

  if (*(*(v3 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ExpOp,void>::id)
  {
    return 0;
  }

  return *(*(v3 + 72) + 24) | 4;
}

uint64_t mlir::complex::ExpOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 24);
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = v1 + 16 * v2 + 16;
  }

  if (*(*(v3 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::LogOp,void>::id)
  {
    return 0;
  }

  return *(*(v3 + 72) + 24) | 4;
}

uint64_t mlir::complex::ConjOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 24);
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = v1 + 16 * v2 + 16;
  }

  if (*(*(v3 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConjOp,void>::id)
  {
    return 0;
  }

  return *(*(v3 + 72) + 24) | 4;
}

uint64_t mlir::complex::MulOp::fold(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = *(*(*a1 + 72) + 56);
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v1 + 24 * *(v1 + 16) + 120;
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = v1 + 16 * v3 + 16;
  }

  if (*(*(v4 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
  {
    return 0;
  }

  v7 = *(v4 + 16 * ((*(v4 + 44) >> 23) & 1) + 64);
  llvm::APFloat::Storage::Storage(v13, (**(v7 + 8) + 16));
  llvm::APFloat::Storage::Storage(v12, (*(*(v7 + 8) + 8) + 16));
  if (v12[0] == &llvm::semPPCDoubleDouble)
  {
    v8 = v12[1];
  }

  else
  {
    v8 = v12;
  }

  if ((*(v8 + 20) & 7) == 3 && (v10 = 1, llvm::APFloat::Storage::Storage<unsigned long long &>(v11, v13[0], &v10), v9 = llvm::APFloat::compare(v13, v11), llvm::APFloat::Storage::~Storage(v11), v9 == 1))
  {
    v5 = *(*(*a1 + 72) + 24) | 4;
  }

  else
  {
    v5 = 0;
  }

  llvm::APFloat::Storage::~Storage(v12);
  llvm::APFloat::Storage::~Storage(v13);
  return v5;
}

uint64_t mlir::complex::DivOp::fold(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = *(*(a2 + 48) + 8);
  if (!v2 || *(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id || *(v2 + 16) != 2)
  {
    return 0;
  }

  llvm::APFloat::Storage::Storage(v11, (**(v2 + 8) + 16));
  llvm::APFloat::Storage::Storage(v10, (*(*(v2 + 8) + 8) + 16));
  if (v10[0] == &llvm::semPPCDoubleDouble)
  {
    v4 = v10[1];
  }

  else
  {
    v4 = v10;
  }

  if ((*(v4 + 20) & 7) == 3 && (v8 = 1, llvm::APFloat::Storage::Storage<unsigned long long &>(v9, v11[0], &v8), v5 = llvm::APFloat::compare(v11, v9), llvm::APFloat::Storage::~Storage(v9), v5 == 1))
  {
    v6 = *(*(*a1 + 72) + 24) | 4;
  }

  else
  {
    v6 = 0;
  }

  llvm::APFloat::Storage::~Storage(v10);
  llvm::APFloat::Storage::~Storage(v11);
  return v6;
}

uint64_t mlir::complex::AbsOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::complex::AbsOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "fastmath";
  v10[1] = 8;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::complex::AbsOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::AbsOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::complex::AbsOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
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

    *result = v4;
  }

  return result;
}

void mlir::complex::AbsOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::complex::AbsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<63ul>(v12, "' failed to satisfy constraint: Floating point fast math flags");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::AbsOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = *((v13[1] & 0xFFFFFFFFFFFFFFF8) + 8);
  return 1;
}

BOOL mlir::complex::AbsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v12[0] = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v5 = *this;
  v6 = *((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  if ((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8) != v6)
  {
    v10 = "failed to verify that complex element type matches result type";
    v11 = 259;
    mlir::Operation::emitOpError(v12, v5, &v10);
    v8 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v8;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(mlir::Operation *a1, void **a2, const char *a3, const char *a4, unsigned int a5)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v20 = a5;
  if ((*a2)[17] == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v15 = *a2[1];
    v16 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v15 + 8, v16))
    {
      return 1;
    }
  }

  v19 = 261;
  v18[0] = a3;
  v18[1] = a4;
  mlir::Operation::emitOpError(&v23, a1, v18);
  if (v23)
  {
    mlir::Diagnostic::operator<<<3ul>(v24, " #");
  }

  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v20);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<61ul>((v9 + 1), " must be complex type with floating-point elements, but got ");
    if (*v10)
    {
      v21 = 4;
      v22 = a2;
      v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v21, 1);
      v12 = v10[3] + 24 * *(v10 + 8);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *v12 = v13;
      ++*(v10 + 8);
    }
  }

  v14 = (v10[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  return v14;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(mlir::Operation *a1, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v20 = a5;
  v9 = *a2;
  v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
  {
    return 1;
  }

  v19 = 261;
  v18[0] = a3;
  v18[1] = a4;
  mlir::Operation::emitOpError(&v23, a1, v18);
  if (v23)
  {
    mlir::Diagnostic::operator<<<3ul>(v24, " #");
  }

  v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v20);
  v13 = v12;
  if (*v12)
  {
    mlir::Diagnostic::operator<<<34ul>((v12 + 1), " must be floating-point, but got ");
    if (*v13)
    {
      v21 = 4;
      v22 = a2;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v21, 1);
      v15 = v13[3] + 24 * *(v13 + 8);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++*(v13 + 8);
    }
  }

  v11 = (v13[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  return v11;
}

BOOL mlir::complex::AbsOp::parse(void **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = ((*a1)[5])(a1);
  if ((((*a1)[88])(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*a1)[51])(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
    {
      return 0;
    }

    if (v17)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(a2);
      *v5 = v17;
    }
  }

  v12[0] = ((*a1)[5])(a1);
  if ((((*a1)[61])(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  __src = a1;
  v22[0] = v12;
  v22[1] = a2;
  if (!mlir::complex::AbsOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  if ((((*a1)[13])(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  v14 = __src;
  if ((*__src)[17] == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && (v10 = *__src[1], v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v10 + 8, v11)))
  {
    __src = v16[1];
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v22);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16);
  }

  else
  {
    v7 = ((*a1)[2])(a1);
    v13 = 257;
    ((*a1)[3])(&__src, a1, v7, v12);
    if (__src)
    {
      mlir::Diagnostic::operator<<<70ul>(v22, "'complex' must be complex type with floating-point elements, but got ");
      if (__src)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(v22, &v14);
      }
    }

    v8 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v8;
}

void mlir::complex::AbsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v6 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 7uLL)
    {
      *v10 = 0x6874616D74736166;
      *(v9 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v9, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ":", 1uLL);
  }

  else
  {
    *v16 = 58;
    ++*(v15 + 4);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::detail::AddOpGenericAdaptorBase::AddOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::complex::AddOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::complex::AddOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "fastmath";
  v10[1] = 8;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::complex::AddOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::AddOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::complex::AddOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
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

    *result = v4;
  }

  return result;
}

void mlir::complex::AddOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::complex::AddOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::AddOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::complex::AddOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::complex::AddOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::complex::AddOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::complex::AddOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (v12 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 32;
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
    ++*(v19 + 4);
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::complex::AngleOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::complex::AngleOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "fastmath";
  v10[1] = 8;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::complex::AngleOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::AngleOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::complex::AngleOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
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

    *result = v4;
  }

  return result;
}

void mlir::complex::AngleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::complex::AngleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::AngleOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = *((v13[1] & 0xFFFFFFFFFFFFFFF8) + 8);
  return 1;
}

BOOL mlir::complex::AngleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v12[0] = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v5 = *this;
  v6 = *((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  if ((*(v7 + 1) & 0xFFFFFFFFFFFFFFF8) != v6)
  {
    v10 = "failed to verify that complex element type matches result type";
    v11 = 259;
    mlir::Operation::emitOpError(v12, v5, &v10);
    v8 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  return v8;
}

BOOL mlir::complex::AngleOp::parse(void **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = ((*a1)[5])(a1);
  if ((((*a1)[88])(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*a1)[51])(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
    {
      return 0;
    }

    if (v17)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>(a2);
      *v5 = v17;
    }
  }

  v12[0] = ((*a1)[5])(a1);
  if ((((*a1)[61])(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  __src = a1;
  v22[0] = v12;
  v22[1] = a2;
  if (!mlir::complex::AngleOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AngleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  if ((((*a1)[13])(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  v14 = __src;
  if ((*__src)[17] == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && (v10 = *__src[1], v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v10 + 8, v11)))
  {
    __src = v16[1];
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v22);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16);
  }

  else
  {
    v7 = ((*a1)[2])(a1);
    v13 = 257;
    ((*a1)[3])(&__src, a1, v7, v12);
    if (__src)
    {
      mlir::Diagnostic::operator<<<70ul>(v22, "'complex' must be complex type with floating-point elements, but got ");
      if (__src)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(v22, &v14);
      }
    }

    v8 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  return v8;
}

void mlir::complex::AngleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v6 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 7uLL)
    {
      *v10 = 0x6874616D74736166;
      *(v9 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v9, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v11 && v11 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ":", 1uLL);
  }

  else
  {
    *v16 = 58;
    ++*(v15 + 4);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::complex::Atan2Op::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::complex::Atan2Op::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "fastmath";
  v10[1] = 8;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::complex::Atan2Op::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::complex::Atan2Op::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t *mlir::complex::Atan2Op::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
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

    *result = v4;
  }

  return result;
}

void mlir::complex::Atan2Op::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::complex::Atan2Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::complex::Atan2Op::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::complex::Atan2Op::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, (*(v4 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::complex::Atan2Op::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::complex::Atan2Op::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Atan2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::complex::Atan2Op::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (v12 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 32;
    }

    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
    ++*(v19 + 4);
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v24 != v26)
  {
    free(v24);
  }
}

BOOL mlir::complex::BitcastOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::complex::BitcastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::complex::detail::ConjOpGenericAdaptorBase::ConjOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::complex::ConjOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}