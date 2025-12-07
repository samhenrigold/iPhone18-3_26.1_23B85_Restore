void *re::DynamicArray<re::Vector3<float>>::resize(void *result, unint64_t a2, _OWORD *a3)
{
  v4 = result;
  v5 = result[2];
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::Quaternion<float>>::setCapacity(result, a2);
      v5 = v4[2];
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 16 * v5;
      do
      {
        *(v4[4] + v8) = *a3;
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,false>(uint64_t result, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = a2[-1].i32[1];
LABEL_105:
        a2[-1].i32[1] = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = (v10 + 4);
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->u32[0];
            v87 = v86->u32[1];
            v86 = v82;
            if (result)
            {
              v89 = v86->u32[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = (v86 + 4);
            v85 += 4;
          }

          while (&v86->u8[4] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = v9->u32[0];
          v119 = v9->u32[1];
          v9 = v82;
          if (result)
          {
            v121 = v9->u32[0];
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = v122[-1].i32[1];
              v122 = (v122 - 4);
              v123->i32[0] = v124;
            }

            while ((result & 1) != 0);
            v122->i32[0] = v121;
          }

          v82 = (v9 + 4);
        }

        while (&v9->u8[4] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = v9 + v94;
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = v9 + v93;
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = v9 + v99;
                v100 = 2 * v94 + 2;
                {
                  ++v95;
                  v99 = v100;
                }

                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = v9->i32[0];
          v104 = v9;
          do
          {
            v105 = v104 + v103;
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            v104->i32[0] = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = (v102 - 4);
          if (v106 == &v102[-1].u8[4])
          {
            *v106 = v127;
          }

          else
          {
            *v106 = v101->i32[0];
            v101->i32[0] = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = v9 + (v113 >> 1);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = v9 + v114;
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = v9->u32[v12];
        if (v18)
        {
          v9->i32[v12] = a2[-1].i32[1];
          a2[-1].i32[1] = v19;
        }

        else
        {
          v9->i32[v12] = v9->i32[0];
          v9->i32[0] = v19;
          {
            v31 = v9->i32[0];
            v9->i32[0] = a2[-1].i32[1];
            a2[-1].i32[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v9->i32[0];
        v9->i32[0] = a2[-1].i32[1];
        a2[-1].i32[1] = v22;
        {
          v23 = v9->u32[v12];
          v9->i32[v12] = v9->i32[0];
          v9->i32[0] = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = v9->u32[0];
      if (v15)
      {
        v9->i32[0] = a2[-1].i32[1];
        a2[-1].i32[1] = v16;
      }

      else
      {
        v9->i32[0] = v9->i32[v12];
        v9->i32[v12] = v16;
        {
          v24 = v9->i32[v12];
          v9->i32[v12] = a2[-1].i32[1];
          a2[-1].i32[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9->i32[v12];
      v9->i32[v12] = a2[-1].i32[1];
      a2[-1].i32[1] = v20;
      {
        v21 = v9->i32[0];
        v9->i32[0] = v9->i32[v12];
        v9->i32[v12] = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = v9->u32[1];
      if (v27)
      {
        v9->i32[1] = a2[-1].i32[0];
        a2[-1].i32[0] = v28;
      }

      else
      {
        v9->i32[1] = v9->i32[v25];
        v9->i32[v25] = v28;
        {
          v32 = v9->i32[v25];
          v9->i32[v25] = a2[-1].i32[0];
          a2[-1].i32[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9->i32[v25];
      v9->i32[v25] = a2[-1].i32[0];
      a2[-1].i32[0] = v29;
      {
        v30 = v9->u32[1];
        v9->i32[1] = v9->i32[v25];
        v9->i32[v25] = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = v9[1].u32[0];
      if (v35)
      {
        v9[1].i32[0] = a2[-2].i32[1];
        a2[-2].i32[1] = v36;
      }

      else
      {
        v9[1].i32[0] = v9->i32[v33];
        v9->i32[v33] = v36;
        {
          v39 = v9->i32[v33];
          v9->i32[v33] = a2[-2].i32[1];
          a2[-2].i32[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9->i32[v33];
      v9->i32[v33] = a2[-2].i32[1];
      a2[-2].i32[1] = v37;
      {
        v38 = v9[1].u32[0];
        v9[1].i32[0] = v9->i32[v33];
        v9->i32[v33] = v38;
      }
    }

    if (!v40)
    {
      v43 = v9->u32[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v9->u32[v33];
      v9->i32[v12] = v44;
      v9->i32[v33] = v43;
      v43 = v9->u32[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9->u32[v25];
      v9->i32[v25] = v43;
      v9->i32[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9->u32[v25];
    if (v41)
    {
      v9->i32[v25] = v9->i32[v33];
      v9->i32[v33] = v42;
      v43 = v9->u32[v12];
    }

    else
    {
      v9->i32[v25] = v9->i32[v12];
      v9->i32[v12] = v42;
      v43 = v9->u32[v12];
      if (v47)
      {
        v46 = v9->u32[v33];
        v9->i32[v12] = v46;
        v9->i32[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = v9->i32[0];
    v9->i32[0] = v43;
    v9->i32[v12] = v48;
LABEL_55:
    --a4;
    v49 = v9->u32[0];
    {
      v51 = 0;
        ;
      }

      v53 = (v9 + v51 * 4);
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      else
      {
        do
        {
          v55 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 1);
      }

      else
      {
        v57 = (v9 + v51 * 4);
        v58 = v54;
        do
        {
          v59 = v57->i32[0];
          v57->i32[0] = v58->i32[0];
          v58->i32[0] = v59;
          do
          {
            v60 = v57->u32[1];
            v57 = (v57 + 4);
          }

          do
          {
            v61 = v58[-1].u32[1];
            v58 = (v58 - 4);
          }
        }

        while (v57 < v58);
        v62 = (v57 - 4);
        a2 = v125;
      }

      if (v62 != v9)
      {
        v9->i32[0] = v62->i32[0];
      }

      v62->i32[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v10 = (v62 + 4);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        a5 = 0;
        v10 = (v62 + 4);
      }
    }

    else
    {
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v9 + 4;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 4;
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        v9->i32[0] = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i32[1];
      v10[1].i32[1] = a2[-1].i32[1];
      a2[-1].i32[1] = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->u32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i32[1];
    v10->i32[1] = a2[-1].i32[1];
    a2[-1].i32[1] = v118;
    v78 = v10->u32[0];
    v76 = v10->u32[1];
LABEL_166:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->u32[0];
  if (result)
  {
    v10->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    if (result)
    {
      v79 = v10->i32[1];
      v10->i32[1] = a2[-1].i32[1];
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)const::$_0::operator()(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 360);
  if (v4 <= a2)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = v5;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3;
  if (v4 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 376) + 4 * a2) > *(*(a1 + 376) + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = a1[1];
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = a1[2];
        v9 = a1[3];
        v11 = a1[1];
        a1[2] = v9;
        a1[3] = v10;
        {
          return 1;
        }

        v13 = a1[1];
        v12 = a1[2];
        v14 = *a1;
        a1[1] = v12;
        a1[2] = v13;
        break;
      default:
        goto LABEL_17;
    }

    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v19 = a1 + 2;
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v26 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v20)
  {
    v24 = a1[1];
    v23 = a1[2];
    v25 = *a1;
    a1[1] = v23;
    a1[2] = v24;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 12) = *(a1 + v31 + 8);
        if (v31 == -8)
        {
          break;
        }

        v31 -= 4;
        {
          v33 = (a1 + v31 + 12);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 4;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

__n128 re::anonymous namespace::PlanarProxy::addFace(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float a4, double a5, float64x2_t a6, float64x2_t a7)
{
  a6.f64[0] = a3[1].f32[0];
  a7.f64[0] = a4;
  v7 = *a1;
  v8 = vaddq_f64(*(a1 + 16), vmulq_f64(a7, a6));
  v9 = vaddq_f64(*a1, vmulq_n_f64(vcvtq_f64_f32(*a3), a4));
  *a1 = v9;
  *(a1 + 16) = v8;
  v7.f64[0] = a2[1].f32[0];
  v10 = vaddq_f64(*(a1 + 48), vmulq_f64(a7, v7));
  v11 = vaddq_f64(*(a1 + 32), vmulq_n_f64(vcvtq_f64_f32(*a2), a7.f64[0]));
  *(a1 + 32) = v11;
  *(a1 + 48) = v10;
  v12 = *(a1 + 120) + a7.f64[0];
  *(a1 + 120) = v12;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  if (v12 > 0.0)
  {
    v16 = vdupq_lane_s64(*&v12, 0);
    v15 = vdivq_f64(v10, v16);
    v14 = vdivq_f64(v11, v16);
  }

  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  v17 = vmulq_f64(v8, v8).f64[0] + vaddvq_f64(vmulq_f64(v9, v9));
  v18 = 0uLL;
  if (v17 > 0.0)
  {
    v19 = 1.0 / sqrt(v17);
    v18 = vmulq_n_f64(v8, v19);
    v13 = vmulq_n_f64(v9, v19);
  }

  result.n128_u64[0] = vcvt_f32_f64(v13);
  *&v20 = v18.f64[0];
  v21 = vmulq_f64(v15, v18).f64[0] + vaddvq_f64(vmulq_f64(v14, v13));
  result.n128_u64[1] = __PAIR64__(-v21, v20);
  *(a1 + 96) = result;
  return result;
}

_anonymous_namespace_ *re::internal::PriorityQueue::push(_anonymous_namespace_ *this, void *a2)
{
  v4 = this;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*(this + 1))
      {
        v8 = 2 * v5;
        v9 = v5 == 0;
        v10 = 8;
        if (!v9)
        {
          v10 = v8;
        }

        if (v10 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(this + 1, v11);
      }

      else
      {
        this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v4 + 1, v7);
        ++*(v4 + 8);
      }
    }

    v6 = *(v4 + 3);
  }

  *(*(v4 + 5) + 8 * v6) = *a2;
  v12 = *(v4 + 3) + 1;
  *(v4 + 3) = v12;
  ++*(v4 + 8);
  v13 = *a2;
  v14 = *(v4 + 8);
  if (v14 <= v13)
  {
    goto LABEL_27;
  }

  v15 = v12 - 1;
  *(*(v4 + 10) + 4 * v13) = v12 - 1;
  if (v12 != 1)
  {
    while (1)
    {
      v16 = v15 - 1;
      v13 = (v15 - 1) >> 1;
      v14 = *(v4 + 3);
      if (v14 <= v13)
      {
        break;
      }

      v2 = v15;
      if (v14 <= v15)
      {
        goto LABEL_23;
      }

      if (*(*(v4 + 5) + 8 * v13 + 4) > *(*(v4 + 5) + 8 * v15 + 4))
      {
        this = re::internal::PriorityQueue::swap(v4, v15, v16 >> 1);
        v15 = v16 >> 1;
        if (v16 > 1)
        {
          continue;
        }
      }

      return this;
    }

    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = v16 >> 1;
    v33 = 2048;
    v34 = v14;
    _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = v2;
    v33 = 2048;
    v34 = v14;
    _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
LABEL_27:
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = v13;
    v33 = 2048;
    v34 = v14;
    _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

unint64_t re::internal::Graph<unsigned int>::nodeNeighbors(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v3 = a2;
  v4 = *(a1 + 56);
  if (v4 <= a2)
  {
    goto LABEL_13;
  }

  result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(*(a1 + 72) + 56 * a2, 0);
  if (result != -1)
  {
    v4 = result;
    while (1)
    {
      LODWORD(v24) = v4;
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(a1 + 80, v4))
      {
        re::DynamicArray<int>::add(a3, &v24);
      }

      v8 = *(a1 + 56);
      if (v8 <= v3)
      {
        break;
      }

      result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(*(a1 + 72) + 56 * v3, v4 + 1);
      v4 = result;
      if (result == -1)
      {
        return result;
      }
    }

    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v8;
    _os_log_send_and_compose_impl(v10, &v15, &v24, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
LABEL_13:
    v15 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v4;
    _os_log_send_and_compose_impl(v13, &v15, &v24, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::DynamicBitset<unsigned long long,128ul>>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v4)
      {
        result = re::DynamicArray<re::DynamicBitset<unsigned long long,128ul>>::setCapacity(v4, a2);
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 56 * a2, 8);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 56 * a2, *(*v4 + 8));
          result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v16);
          __break(1u);
          return result;
        }

        v6 = result;
        if (!v4[1])
        {
          goto LABEL_17;
        }
      }

      else
      {
        v6 = 0;
        if (!v2)
        {
LABEL_17:
          v4[4] = v6;
          v4[1] = a2;
          return result;
        }
      }

      v7 = v4[4];
      v8 = v4[2];
      if (v8)
      {
        v9 = 0;
        v10 = 56 * v8;
        do
        {
          v11 = &v6[v9 / 8];
          v12 = v7 + v9;
          *v11 = 0;
          v11[1] = 0;
          *(v11 + 4) = 1;
          v11[3] = 0;
          v11[4] = 0;
          v13 = *(v7 + v9);
          if (v13)
          {
            v14 = *(v12 + 8);
            *v11 = v13;
            re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(&v6[v9 / 8], v14);
            *(v11 + 4) += 2;
            re::DynamicOverflowArray<unsigned long long,3ul>::copy(&v6[v9 / 8], v7 + v9);
          }

          v11[6] = *(v12 + 48);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v7 + v9);
          v9 += 56;
        }

        while (v10 != v9);
        v7 = v4[4];
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::internal::PriorityQueue::swap(void *this, unsigned int a2, unsigned int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = this[3];
  if (v6 <= a2)
  {
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v5;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v12, &v29, &v38, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v3 = a3;
  if (v6 <= a3)
  {
LABEL_12:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v3;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v15, &v29, &v38, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v7 = this[5];
  v8 = *(v7 + 8 * a2);
  *(v7 + 8 * a2) = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = v8;
  v6 = this[3];
  if (v6 <= a2)
  {
LABEL_16:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v5;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v18, &v29, &v38, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v9 = this[5];
  v4 = *(v9 + 8 * a2);
  v5 = this[8];
  if (v5 <= v4)
  {
LABEL_20:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v4;
    v36 = 2048;
    v37 = v5;
    _os_log_send_and_compose_impl(v21, &v29, &v38, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v10 = this[10];
  *(v10 + 4 * v4) = a2;
  if (v6 <= a3)
  {
LABEL_24:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v3;
    v36 = 2048;
    v37 = v6;
    _os_log_send_and_compose_impl(v24, &v29, &v38, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v29 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v30 = 136315906;
    v31 = "operator[]";
    v32 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = v3;
    v36 = 2048;
    v37 = v5;
    _os_log_send_and_compose_impl(v27, &v29, &v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v9 + 8 * a3);
  if (v5 <= v3)
  {
    goto LABEL_28;
  }

  *(v10 + 4 * v3) = a3;
  return this;
}

void *re::DynamicArray<re::anonymous namespace::sortAndCompactRegions(re::Slice<unsigned int>,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::FaceComponentPair>::setCapacity(void *result, unint64_t a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    if (result[2] <= a2)
    {
      v4 = *result;
      if (*v3)
      {
        result = (*(*v4 + 32))(v4, 8 * a2, 4);
        if (result)
        {
          v6 = result;
          if (v3[1])
          {
            memcpy(result, v3[4], 8 * v3[2]);
            result = (*(**v3 + 40))(*v3, v3[4]);
          }

          v3[4] = v6;
          v3[1] = a2;
        }

        else
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 8 * a2, *(*v3 + 8));
          result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v7, v8);
          __break(1u);
        }
      }

      else
      {
        ++*(v3 + 6);
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::sortAndCompactRegions(re::Slice<unsigned int>,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::FaceComponentPair *,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
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
        if (a2[-1].i32[3] >= v8->i32[1])
        {
          return result;
        }

        v65 = v8->i64[0];
LABEL_113:
        v8->i64[0] = a2[-1].i64[1];
LABEL_114:
        a2[-1].i64[1] = v65;
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
      v68 = v8->u32[3];
      v69 = v8->u32[1];
      LODWORD(v70) = v8[1].i32[1];
      if (v68 >= v69)
      {
        if (v70 < v68)
        {
          v117 = v8->u64[1];
          v118 = v8[1].i64[0];
          v8->i64[1] = v118;
          v8[1].i64[0] = v117;
          v70 = HIDWORD(v117);
          if (v69 > HIDWORD(v118))
          {
            v119 = v8->i64[0];
            v8->i64[0] = v118;
            v8->i64[1] = v119;
          }
        }
      }

      else
      {
        v71 = v8->i64[0];
        v72 = HIDWORD(v8->i64[0]);
        if (v70 < v68)
        {
          v8->i64[0] = v8[1].i64[0];
          goto LABEL_186;
        }

        v8->i64[0] = v8->i64[1];
        v8->i64[1] = v71;
        if (v70 < v72)
        {
          v8->i64[1] = v8[1].i64[0];
LABEL_186:
          v8[1].i64[0] = v71;
          LODWORD(v70) = v72;
        }
      }

      if (a2[-1].i32[3] < v70)
      {
        v127 = v8[1].i64[0];
        v8[1].i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v127;
        if (v8[1].i32[1] < v8->i32[3])
        {
          v129 = v8->i64[1];
          v128 = v8[1].i64[0];
          v8->i64[1] = v128;
          v8[1].i64[0] = v129;
          if (v8->i32[1] > HIDWORD(v128))
          {
            v130 = v8->i64[0];
            v8->i64[0] = v128;
            v8->i64[1] = v130;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(v8, &v8->u64[1], &v8[1], &v8[1].u64[1], &a2[-1].u64[1]);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v73 = &v8->u64[1];
      v75 = v8 == a2 || v73 == a2;
      if (a4)
      {
        if (!v75)
        {
          v76 = 0;
          v77 = v8;
          do
          {
            v78 = v77->u32[3];
            v79 = v77->u32[1];
            v77 = v73;
            if (v78 < v79)
            {
              v80 = v73->i64[0];
              v81 = HIDWORD(v77->i64[0]);
              v82 = v76;
              while (1)
              {
                *(&v8->i64[1] + v82) = *(v8->i64 + v82);
                if (!v82)
                {
                  break;
                }

                v83 = *(&v8->u32[-1] + v82);
                v82 -= 8;
                if (v83 <= v81)
                {
                  v84 = (&v8->i64[1] + v82);
                  goto LABEL_133;
                }
              }

              v84 = v8;
LABEL_133:
              *v84 = v80;
            }

            v73 = &v77->u64[1];
            v76 += 8;
          }

          while (&v77->u64[1] != a2);
        }
      }

      else if (!v75)
      {
        do
        {
          v120 = *(v7 + 12);
          v121 = *(v7 + 4);
          v7 = v73;
          if (v120 < v121)
          {
            v122 = v73->i64[0];
            v123 = HIDWORD(v73->i64[0]);
            v124 = v7;
            do
            {
              v125 = v124;
              v126 = *--v124;
              *v125 = v126;
            }

            while (*(v125 - 3) > v123);
            *v124 = v122;
          }

          v73 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v85 = (v9 - 2) >> 1;
        v86 = v85;
        do
        {
          v87 = v86;
          if (v85 >= v86)
          {
            v88 = (2 * v86) | 1;
            v89 = &v8->i8[8 * v88];
            if (2 * v87 + 2 < v9)
            {
              v90 = *(v89 + 1);
              v91 = *(v89 + 3);
              v89 += 8 * (v90 < v91);
              if (v90 < v91)
              {
                v88 = 2 * v87 + 2;
              }
            }

            v92 = &v8->i8[8 * v87];
            if (*(v89 + 1) >= *(v92 + 1))
            {
              v93 = *v92;
              v94 = HIDWORD(*v92);
              do
              {
                v95 = v92;
                v92 = v89;
                *v95 = *v89;
                if (v85 < v88)
                {
                  break;
                }

                v96 = (2 * v88) | 1;
                v89 = &v8->i8[8 * v96];
                v97 = 2 * v88 + 2;
                if (v97 < v9)
                {
                  v98 = *(v89 + 1);
                  result = *(v89 + 3);
                  v89 += 8 * (v98 < result);
                  if (v98 < result)
                  {
                    v96 = v97;
                  }
                }

                v88 = v96;
              }

              while (*(v89 + 1) >= v94);
              *v92 = v93;
            }
          }

          v86 = v87 - 1;
        }

        while (v87);
        do
        {
          v99 = 0;
          v100 = v8->i64[0];
          v101 = v8;
          do
          {
            v102 = &v101[v99];
            v103 = (v102 + 1);
            v104 = (2 * v99) | 1;
            v99 = 2 * v99 + 2;
            if (v99 >= v9)
            {
              v99 = v104;
            }

            else
            {
              v105 = *(v102 + 3);
              v106 = *(v102 + 5);
              v107 = (v102 + 2);
              if (v105 >= v106)
              {
                v99 = v104;
              }

              else
              {
                v103 = v107;
              }
            }

            *v101 = v103->i64[0];
            v101 = v103;
          }

          while (v99 <= ((v9 - 2) >> 1));
          a2 = (a2 - 8);
          if (v103 == a2)
          {
            v103->i64[0] = v100;
          }

          else
          {
            v103->i64[0] = a2->i64[0];
            a2->i64[0] = v100;
            v108 = (v103 - v8 + 8) >> 3;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = (v8 + 8 * v111);
              if (v112->i32[1] < v103->i32[1])
              {
                v113 = v103->i64[0];
                v114 = HIDWORD(v103->i64[0]);
                do
                {
                  v115 = v103;
                  v103 = v112;
                  *v115 = v112->i64[0];
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = (v8 + 8 * v111);
                }

                while (v112->i32[1] < v114);
                v103->i64[0] = v113;
              }
            }
          }

          v109 = v9-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v10 = &v8->i8[8 * (v9 >> 1)];
    v11 = a2[-1].u32[3];
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 1);
      if (v12 >= v8->i32[1])
      {
        if (v11 < v12)
        {
          v16 = *v10;
          *v10 = a2[-1].i64[1];
          a2[-1].i64[1] = v16;
          if (*(v10 + 1) < v8->i32[1])
          {
            v17 = v8->i64[0];
            v8->i64[0] = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        v13 = v8->i64[0];
        if (v11 < v12)
        {
          v8->i64[0] = a2[-1].i64[1];
          goto LABEL_27;
        }

        v8->i64[0] = *v10;
        *v10 = v13;
        if (a2[-1].i32[3] < HIDWORD(v13))
        {
          *v10 = a2[-1].i64[1];
LABEL_27:
          a2[-1].i64[1] = v13;
        }
      }

      v20 = (v10 - 8);
      v21 = *(v10 - 1);
      v22 = a2[-1].u32[1];
      if (v21 >= v8->i32[3])
      {
        if (v22 < v21)
        {
          v24 = *v20;
          *v20 = a2[-1].i64[0];
          a2[-1].i64[0] = v24;
          if (*(v10 - 1) < v8->i32[3])
          {
            v25 = v8->i64[1];
            v8->i64[1] = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        v23 = v8->i64[1];
        if (v22 < v21)
        {
          v8->i64[1] = a2[-1].i64[0];
          goto LABEL_39;
        }

        v8->i64[1] = *v20;
        *v20 = v23;
        if (a2[-1].i32[1] < HIDWORD(v23))
        {
          *v20 = a2[-1].i64[0];
LABEL_39:
          a2[-1].i64[0] = v23;
        }
      }

      v26 = *(v10 + 3);
      v27 = a2[-2].u32[3];
      if (v26 >= v8[1].i32[1])
      {
        if (v27 < v26)
        {
          v29 = *(v10 + 1);
          *(v10 + 1) = a2[-2].i64[1];
          a2[-2].i64[1] = v29;
          if (*(v10 + 3) < v8[1].i32[1])
          {
            v30 = v8[1].i64[0];
            v8[1].i64[0] = *(v10 + 1);
            *(v10 + 1) = v30;
          }
        }
      }

      else
      {
        v28 = v8[1].i64[0];
        if (v27 < v26)
        {
          v8[1].i64[0] = a2[-2].i64[1];
          goto LABEL_48;
        }

        v8[1].i64[0] = *(v10 + 1);
        *(v10 + 1) = v28;
        if (a2[-2].i32[3] < HIDWORD(v28))
        {
          *(v10 + 1) = a2[-2].i64[1];
LABEL_48:
          a2[-2].i64[1] = v28;
        }
      }

      v31 = *(v10 + 1);
      v32 = *(v10 - 1);
      v33 = *(v10 + 3);
      if (v31 >= v32)
      {
        v34 = *v10;
        if (v33 < v31)
        {
          v35 = *(v10 + 1);
          *v10 = v35;
          *(v10 + 1) = v34;
          if (v32 <= HIDWORD(v35))
          {
            v34 = v35;
          }

          else
          {
            v34 = *v20;
            *v20 = v35;
            *v10 = v34;
          }
        }
      }

      else
      {
        v34 = *v20;
        if (v33 >= v31)
        {
          *v20 = *v10;
          *v10 = v34;
          if (v33 < HIDWORD(v34))
          {
            v36 = *(v10 + 1);
            *v10 = v36;
            *(v10 + 1) = v34;
            v34 = v36;
          }
        }

        else
        {
          *v20 = *(v10 + 1);
          *(v10 + 1) = v34;
          v34 = *v10;
        }
      }

      v37 = v8->i64[0];
      v8->i64[0] = v34;
      *v10 = v37;
      goto LABEL_59;
    }

    v14 = v8->u32[1];
    if (v14 >= *(v10 + 1))
    {
      if (v11 < v14)
      {
        v18 = v8->i64[0];
        v8->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v18;
        if (v8->i32[1] < *(v10 + 1))
        {
          v19 = *v10;
          *v10 = v8->i64[0];
          v8->i64[0] = v19;
        }
      }

      goto LABEL_59;
    }

    v15 = *v10;
    if (v11 < v14)
    {
      *v10 = a2[-1].i64[1];
LABEL_36:
      a2[-1].i64[1] = v15;
      goto LABEL_59;
    }

    *v10 = v8->i64[0];
    v8->i64[0] = v15;
    if (a2[-1].i32[3] < HIDWORD(v15))
    {
      v8->i64[0] = a2[-1].i64[1];
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v38 = v8->i64[0];
LABEL_62:
      v39 = 0;
      do
      {
        v40 = v8->u32[v39 + 3];
        v39 += 2;
      }

      while (v40 < HIDWORD(v38));
      v41 = &v8->i8[v39 * 4];
      v42 = a2;
      if (v39 == 2)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = (v45 - 8);
          v46 = v45[-1].u32[3];
          v45 = (v45 - 8);
          if (v46 < HIDWORD(v38))
          {
            goto LABEL_72;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = (v42 - 8);
          v44 = v42[-1].u32[3];
          v42 = (v42 - 8);
        }

        while (v44 >= HIDWORD(v38));
      }

LABEL_72:
      if (v41 >= v43)
      {
        v52 = v41 - 8;
      }

      else
      {
        v47 = v41;
        v48 = v43;
        do
        {
          v49 = *v47;
          *v47 = *v48;
          *v48 = v49;
          do
          {
            v50 = *(v47 + 12);
            v47 += 8;
          }

          while (v50 < HIDWORD(v38));
          do
          {
            v51 = *(v48-- - 1);
          }

          while (v51 >= HIDWORD(v38));
        }

        while (v47 < v48);
        v52 = (v47 - 8);
      }

      if (v52 != v8)
      {
        v8->i64[0] = *v52;
      }

      *v52 = v38;
      if (v41 < v43)
      {
        goto LABEL_85;
      }

      v8 = (v52 + 8);
      if (result)
      {
        a2 = v52;
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_85:
        a4 = 0;
        v8 = (v52 + 8);
      }
    }

    else
    {
      v38 = v8->i64[0];
      if (v8[-1].i32[3] < v8->i32[1])
      {
        goto LABEL_62;
      }

      if (a2[-1].i32[3] <= HIDWORD(v38))
      {
        v56 = &v8->u64[1];
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v57 = *(v56 + 4);
          v56 += 8;
        }

        while (v57 <= HIDWORD(v38));
      }

      else
      {
        v54 = v8;
        do
        {
          v8 = &v54->u64[1];
          v55 = v54->u32[3];
          v54 = (v54 + 8);
        }

        while (v55 <= HIDWORD(v38));
      }

      v58 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v58 = (v59 - 8);
          v60 = v59[-1].u32[3];
          v59 = (v59 - 8);
        }

        while (v60 > HIDWORD(v38));
      }

      while (v8 < v58)
      {
        v61 = v8->i64[0];
        v8->i64[0] = v58->i64[0];
        v58->i64[0] = v61;
        do
        {
          v62 = v8->u32[3];
          v8 = (v8 + 8);
        }

        while (v62 <= HIDWORD(v38));
        do
        {
          v63 = v58[-1].u32[3];
          v58 = (v58 - 8);
        }

        while (v63 > HIDWORD(v38));
      }

      v64 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        *v7 = *v64;
      }

      a4 = 0;
      *v64 = v38;
    }
  }

  v66 = v8->u32[3];
  v67 = a2[-1].u32[3];
  if (v66 >= v8->i32[1])
  {
    if (v67 < v66)
    {
      v116 = v8->i64[1];
      v8->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v116;
      if (v8->i32[3] < v8->i32[1])
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v65 = v8->i64[0];
    if (v67 < v66)
    {
      goto LABEL_113;
    }

    v8->i64[0] = v8->i64[1];
    v8->i64[1] = v65;
    if (a2[-1].i32[3] < HIDWORD(v65))
    {
      v8->i64[1] = a2[-1].i64[1];
      goto LABEL_114;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::sortAndCompactRegions(re::Slice<unsigned int>,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::FaceComponentPair *>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1->u32[3];
      v5 = a2[-1].u32[3];
      if (v4 >= a1->i32[1])
      {
        if (v5 < v4)
        {
          v15 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v15;
          if (a1->i32[3] < a1->i32[1])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = a1->i64[0];
      if (v5 >= v4)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v3;
        if (a2[-1].i32[3] >= HIDWORD(v3))
        {
          return 1;
        }

        a1->i64[1] = a2[-1].i64[1];
        goto LABEL_13;
      }

LABEL_12:
      a1->i64[0] = a2[-1].i64[1];
LABEL_13:
      a2[-1].i64[1] = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(a1, &a1->u64[1], &a1[1], &a1[1].u64[1], &a2[-1].u64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v10 = a1->u32[3];
    v11 = a1->u32[1];
    LODWORD(v12) = a1[1].i32[1];
    if (v10 >= v11)
    {
      if (v12 < v10)
      {
        v19 = a1->u64[1];
        v20 = a1[1].i64[0];
        a1->i64[1] = v20;
        a1[1].i64[0] = v19;
        v12 = HIDWORD(v19);
        if (v11 > HIDWORD(v20))
        {
          v21 = a1->i64[0];
          a1->i64[0] = v20;
          a1->i64[1] = v21;
        }
      }

      goto LABEL_48;
    }

    v13 = a1->i64[0];
    v14 = HIDWORD(a1->i64[0]);
    if (v12 >= v10)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v13;
      if (v12 >= v14)
      {
LABEL_48:
        if (a2[-1].i32[3] < v12)
        {
          v31 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v31;
          if (a1[1].i32[1] < a1->i32[3])
          {
            v33 = a1->i64[1];
            v32 = a1[1].i64[0];
            a1->i64[1] = v32;
            a1[1].i64[0] = v33;
            if (a1->i32[1] > HIDWORD(v32))
            {
              v34 = a1->i64[0];
              a1->i64[0] = v32;
              a1->i64[1] = v34;
            }
          }
        }

        return 1;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v13;
    LODWORD(v12) = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].i32[3] < a1->i32[1])
    {
      v3 = a1->i64[0];
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1->u32[3];
  v7 = a1->u32[1];
  v8 = a1[1].u32[1];
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      v17 = a1->i64[1];
      v16 = a1[1].i64[0];
      a1->i64[1] = v16;
      a1[1].i64[0] = v17;
      if (v7 > HIDWORD(v16))
      {
        v18 = a1->i64[0];
        a1->i64[0] = v16;
        a1->i64[1] = v18;
      }
    }
  }

  else
  {
    v9 = a1->i64[0];
    if (v8 >= v6)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v9;
      if (v8 >= HIDWORD(v9))
      {
        goto LABEL_34;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v9;
  }

LABEL_34:
  v22 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 1;
  while (1)
  {
    if (v22->i32[1] < v25->i32[1])
    {
      v26 = v22->i64[0];
      v27 = HIDWORD(v22->i64[0]);
      v28 = v23;
      while (1)
      {
        *(&a1[1].i64[1] + v28) = *(a1[1].i64 + v28);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(&a1->u32[3] + v28);
        v28 -= 8;
        if (v29 <= v27)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      v30->i64[0] = v26;
      if (++v24 == 8)
      {
        return &v22->u64[1] == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 = (v22 + 8);
    if (v22 == a2)
    {
      return 1;
    }
  }
}

void re::internal::simplifyPolyLine(uint64_t a1, float a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 >= 3)
  {
    v5 = 0;
    v6 = *(a1 + 32);
    v7 = &v6[v2];
    v9 = v7[-1];
    f32 = v7[-1].f32;
    v10 = *v6;
    v11 = vsubq_f32(v9, *v6);
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    v14 = v2 - 2;
    v15 = 1;
    v16 = 0.0;
    do
    {
      v17 = v6[v15];
      v18 = *v6;
      if (v13 > 0.0)
      {
        v19 = vmulq_f32(v11, vsubq_f32(v17, v10));
        v20 = (v19.f32[2] + vaddv_f32(*v19.f32)) / v13;
        if (v20 > 1.0)
        {
          v20 = 1.0;
        }

        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        v18 = vaddq_f32(v10, vmulq_n_f32(v11, v20));
      }

      v21 = vsubq_f32(v18, v17);
      v22 = vmulq_f32(v21, v21);
      v23 = vaddv_f32(*v22.f32);
      if ((v22.f32[2] + v23) > v16)
      {
        v5 = v15;
        v16 = v22.f32[2] + v23;
      }

      ++v15;
      --v14;
    }

    while (v14);
    if (v16 <= (a2 * a2))
    {
      v27 = 2;
      re::DynamicArray<re::Vector3<float>>::resize(a1, 2uLL);
      if (*(a1 + 16))
      {
        **(a1 + 32) = *v6;
        v27 = *(a1 + 16);
        if (v27 > 1)
        {
          *(*(a1 + 32) + 16) = *f32;
          return;
        }
      }

      else
      {
        v34 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        *__src = 0u;
        v38 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        *v35 = 136315906;
        *&v35[4] = "operator[]";
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        *&v35[12] = 1024;
        *&v35[14] = 789;
        *&v35[18] = 2048;
        *&v35[20] = 0;
        v36 = 2048;
        *v37 = 0;
        _os_log_send_and_compose_impl(v29, &v34, &v38, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v33);
        _os_crash_msg();
        __break(1u);
      }

      v34 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      *__src = 0u;
      v38 = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v35 = 136315906;
      *&v35[4] = "operator[]";
      *&v35[12] = 1024;
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      *&v35[14] = 789;
      *&v35[18] = 2048;
      *&v35[20] = 1;
      v36 = 2048;
      *v37 = v27;
      _os_log_send_and_compose_impl(v32, &v34, &v38, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v33);
      _os_crash_msg();
      __break(1u);
    }

    __src[0] = 0;
    *&v39 = 0;
    v38 = 0uLL;
    DWORD2(v39) = 0;
    *&v37[2] = 0;
    memset(v35, 0, sizeof(v35));
    re::DynamicArray<re::Vector3<float>>::resize(&v38, v5 + 1);
    v24 = v2 - v5;
    re::DynamicArray<re::Vector3<float>>::resize(v35, v24);
    re::DynamicArray<re::Vector3<float>>::copy(&v38, 0, *(a1 + 32), v5 + 1);
    re::DynamicArray<re::Vector3<float>>::copy(v35, 0, (*(a1 + 32) + 16 * v5), v24);
    re::internal::simplifyPolyLine(&v38, a2);
    re::internal::simplifyPolyLine(v35, a2);
    v25 = v39;
    v26 = *&v35[16] - 1;
    re::DynamicArray<re::Vector3<float>>::resize(a1, *&v35[16] - 1 + v39);
    re::DynamicArray<re::Vector3<float>>::copy(a1, 0, __src[0], v25);
    re::DynamicArray<re::Vector3<float>>::copy(a1, v25, (*&v37[2] + 16), v26);
    if (*v35 && *&v37[2])
    {
      (*(**v35 + 40))();
    }

    if (v38)
    {
      if (__src[0])
      {
        (*(*v38 + 40))();
      }
    }
  }
}

uint64_t re::findConnectedComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = *MEMORY[0x1E69E9840];
  v6 = v73;
  re::internal::GeomVertexConnectivity::buildVertexConnectivity((a1 + 16), v73);
  v56 = a1;
  re::DynamicArray<float>::DynamicArray(v57, v73);
  re::DynamicArray<float>::DynamicArray(v60, v74);
  __dst = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v66 = 0;
  if (v77)
  {
    v63 = v77;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v63, v78);
    ++v66;
    v7 = v78;
    if (v78 >= v65)
    {
      re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v63, v78);
      v8 = v65;
      if (v65)
      {
        memmove(__dst, __src, 8 * v65 - 3);
        v8 = v65;
      }

      memcpy(__dst + 8 * v8, __src + 8 * v8, 8 * (v7 - v8));
    }

    else if (v78)
    {
      memmove(__dst, __src, 8 * v78 - 3);
    }

    v65 = v7;
  }

  v72 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v71 = 0;
  v9 = *(v56 + 40);
  v10 = *(v56 + 16);
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  LOBYTE(v99) = 0;
  re::DynamicArray<unsigned char>::resize(&v68, v11, &v99);
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  re::DynamicArray<unsigned int>::resize(a2, *(v56 + 16), &re::kInvalidMeshIndex);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  re::DynamicArray<unsigned int>::resize(a3, *(v56 + 40), &re::kInvalidMeshIndex);
  v85 = 0;
  v82[1] = 0;
  v83 = 0;
  v82[0] = 0;
  v84 = 0;
  v81 = 0;
  if (!*(v56 + 16))
  {
LABEL_56:
    v12 = 0;
    goto LABEL_57;
  }

  v55 = a2;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v13;
    v15 = v70;
    if (v70 <= v13)
    {
      goto LABEL_113;
    }

    if ((*(v72 + v13) & 1) == 0)
    {
      v83 = 0;
      ++v84;
      re::DynamicArray<int>::add(v82, &v81);
      v16 = v83;
      if (v83)
      {
        v17 = 1;
        while (1)
        {
          v14 = *(v85 + 4 * (v16 - 1));
          re::DynamicArray<float>::resize(v82, v16 - 1);
          v15 = v70;
          if (v70 <= v14)
          {
            goto LABEL_101;
          }

          *(v72 + v14) |= 1u;
          *&v91[2] = 0;
          memset(v89, 0, sizeof(v89));
          v15 = v58;
          if (v58 <= v14)
          {
            goto LABEL_105;
          }

          v18 = *(v59 + 4 * v14);
          re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(v89, v18);
          if (v18)
          {
            break;
          }

LABEL_24:
          v21 = *&v89[16];
          if (!*&v89[16])
          {
            goto LABEL_43;
          }

          v6 = *(v55 + 16);
          if (v6 <= v14)
          {
            goto LABEL_109;
          }

          *(*(v55 + 32) + 4 * v14) = v12;
          v15 = *&v91[2];
          v22 = *&v91[2] + 8 * v21;
          do
          {
            v14 = *v15;
            v6 = v70;
            if (v70 <= v14)
            {
              goto LABEL_88;
            }

            if ((*(v72 + v14) & 2) != 0)
            {
              goto LABEL_42;
            }

            *(v72 + v14) |= 2u;
            v6 = *(a3 + 16);
            if (v6 <= v14)
            {
              v87 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v99 = 0u;
              v37 = MEMORY[0x1E69E9C10];
              v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v92 = 136315906;
              *&v92[4] = "operator[]";
              v93 = 1024;
              if (v38)
              {
                v39 = 3;
              }

              else
              {
                v39 = 2;
              }

              v94 = 789;
              v95 = 2048;
              v96 = v14;
              v97 = 2048;
              v98 = v6;
              _os_log_send_and_compose_impl(v39, &v87, &v99, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v55, v56);
              _os_crash_msg();
              __break(1u);
LABEL_97:
              v87 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v99 = 0u;
              v40 = MEMORY[0x1E69E9C10];
              v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v92 = 136315906;
              *&v92[4] = "operator[]";
              v93 = 1024;
              if (v41)
              {
                v42 = 3;
              }

              else
              {
                v42 = 2;
              }

              v94 = 797;
              v95 = 2048;
              v96 = v14;
              v97 = 2048;
              v98 = v6;
              _os_log_send_and_compose_impl(v42, &v87, &v99, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v55, v56);
              _os_crash_msg();
              __break(1u);
LABEL_101:
              *v92 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v99 = 0u;
              v43 = MEMORY[0x1E69E9C10];
              v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v89 = 136315906;
              *&v89[4] = "operator[]";
              *&v89[12] = 1024;
              if (v44)
              {
                v45 = 3;
              }

              else
              {
                v45 = 2;
              }

              *&v89[14] = 789;
              *&v89[18] = 2048;
              *&v89[20] = v14;
              v90 = 2048;
              *v91 = v15;
              _os_log_send_and_compose_impl(v45, v92, &v99, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v89, 38, v55, v56);
              _os_crash_msg();
              __break(1u);
LABEL_105:
              v87 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v99 = 0u;
              v46 = MEMORY[0x1E69E9C10];
              v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v92 = 136315906;
              *&v92[4] = "operator[]";
              v93 = 1024;
              if (v47)
              {
                v48 = 3;
              }

              else
              {
                v48 = 2;
              }

              v94 = 797;
              v95 = 2048;
              v96 = v14;
              v97 = 2048;
              v98 = v15;
              _os_log_send_and_compose_impl(v48, &v87, &v99, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v55, v56);
              _os_crash_msg();
              __break(1u);
LABEL_109:
              v87 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v99 = 0u;
              v49 = MEMORY[0x1E69E9C10];
              v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v92 = 136315906;
              *&v92[4] = "operator[]";
              v93 = 1024;
              if (v50)
              {
                v51 = 3;
              }

              else
              {
                v51 = 2;
              }

              v94 = 789;
              v95 = 2048;
              v96 = v14;
              v97 = 2048;
              v98 = v6;
              _os_log_send_and_compose_impl(v51, &v87, &v99, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v55, v56);
              _os_crash_msg();
              __break(1u);
LABEL_113:
              *v92 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v99 = 0u;
              v52 = MEMORY[0x1E69E9C10];
              v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v89 = 136315906;
              *&v89[4] = "operator[]";
              *&v89[12] = 1024;
              if (v53)
              {
                v54 = 3;
              }

              else
              {
                v54 = 2;
              }

              *&v89[14] = 797;
              *&v89[18] = 2048;
              *&v89[20] = v14;
              v90 = 2048;
              *v91 = v15;
              _os_log_send_and_compose_impl(v54, v92, &v99, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v89, 38, v55, v56);
              _os_crash_msg();
              __break(1u);
            }

            *(*(a3 + 32) + 4 * v14) = v12;
            v6 = *(v56 + 40);
            if (v6 <= v14)
            {
              goto LABEL_97;
            }

            v23 = 0;
            v24 = *(v56 + 56) + 16 * v14;
            do
            {
              *(&v87 + v23) = *(v24 + v23);
              v23 += 4;
            }

            while (v23 != 16);
            if (v88 == -1)
            {
              v25 = 3;
            }

            else
            {
              v25 = 4;
            }

            v26 = &v87;
            do
            {
              v27 = *v26;
              v6 = v70;
              if (v70 <= v27)
              {
                v86 = 0;
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v99 = 0u;
                v28 = MEMORY[0x1E69E9C10];
                v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v92 = 136315906;
                *&v92[4] = "operator[]";
                v93 = 1024;
                if (v29)
                {
                  v30 = 3;
                }

                else
                {
                  v30 = 2;
                }

                v94 = 797;
                v95 = 2048;
                v96 = v27;
                v97 = 2048;
                v98 = v6;
                _os_log_send_and_compose_impl(v30, &v86, &v99, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v55, v56);
                _os_crash_msg();
                __break(1u);
                goto LABEL_56;
              }

              if ((*(v72 + v27) & 1) == 0)
              {
                re::DynamicArray<int>::add(v82, v26);
              }

              v26 = (v26 + 4);
              --v25;
            }

            while (v25);
            v17 = 0;
LABEL_42:
            v15 += 8;
          }

          while (v15 != v22);
LABEL_43:
          if (*v89 && *&v91[2])
          {
            (*(**v89 + 40))();
          }

          v16 = v83;
          if (!v83)
          {
            v12 = v12 + ((v17 & 1) == 0);
            goto LABEL_48;
          }
        }

        v15 = 0;
        while (1)
        {
          v19 = re::internal::GeomVertexConnectivity::faceVertex(v57, v14, v15);
          v6 = *&v89[16];
          if (*&v89[16] <= v15)
          {
            break;
          }

          v20 = *&v91[2] + 8 * v15;
          *v20 = v19;
          *(v20 + 4) = BYTE4(v19);
          if (++v15 == v18)
          {
            goto LABEL_24;
          }
        }

        v87 = 0;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v92 = 136315906;
        *&v92[4] = "operator[]";
        v93 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v94 = 789;
        v95 = 2048;
        v96 = v15;
        v97 = 2048;
        v98 = v6;
        _os_log_send_and_compose_impl(v34, &v87, &v99, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v55, v56);
        _os_crash_msg();
        __break(1u);
LABEL_88:
        v87 = 0;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v92 = 136315906;
        *&v92[4] = "operator[]";
        v93 = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        v94 = 797;
        v95 = 2048;
        v96 = v14;
        v97 = 2048;
        v98 = v6;
        _os_log_send_and_compose_impl(v36, &v87, &v99, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v55, v56);
        _os_crash_msg();
        __break(1u);
        goto LABEL_92;
      }
    }

LABEL_48:
    v13 = v81 + 1;
    v81 = v13;
  }

  while (v13 < *(v56 + 16));
  if (!v82[0])
  {
LABEL_92:
    v6 = v73;
    goto LABEL_57;
  }

  v6 = v73;
  if (v85)
  {
    (*(*v82[0] + 40))();
  }

LABEL_57:
  if (v68)
  {
    if (v72)
    {
      (*(*v68 + 40))();
    }

    v72 = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    ++v71;
  }

  if (v63)
  {
    if (__dst)
    {
      (*(*v63 + 40))();
    }

    __dst = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    ++v66;
  }

  if (v60[0])
  {
    if (v62)
    {
      (*(*v60[0] + 40))();
    }

    v62 = 0;
    memset(v60, 0, sizeof(v60));
    ++v61;
  }

  if (v57[0] && v59)
  {
    (*(*v57[0] + 40))();
  }

  if (v77)
  {
    if (__src)
    {
      (*(*v77 + 40))();
    }

    __src = 0;
    v6[11] = 0;
    v6[12] = 0;
    v6[10] = 0;
    ++v79;
  }

  if (v74[0])
  {
    if (v76)
    {
      (*(*v74[0] + 40))();
    }

    v76 = 0;
    v6[6] = 0;
    v6[7] = 0;
    v6[5] = 0;
    ++v75;
  }

  if (v73[0] && v73[4])
  {
    (*(*v73[0] + 40))();
  }

  return v12;
}

uint64_t re::internal::substituteProxies(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v500 = v3;
  v501 = v4;
  v6 = v5;
  v7 = v569;
  v625 = *MEMORY[0x1E69E9840];
  v577 = 0;
  v576 = 0;
  v578 = 1;
  v8 = &v579;
  v580 = 0;
  v579 = 0;
  v9 = v5[2].i64[1];
  if ((v9 & 0x3F) != 0)
  {
    v10 = (v9 >> 6) + 1;
  }

  else
  {
    v10 = v9 >> 6;
  }

  v581 = v9;
  v596.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v576, v10, &v596);
  v11 = v577;
  if (v577)
  {
    v12 = v580;
    if (v578)
    {
      v12 = &v579;
    }

    do
    {
      *v12++ = 0;
      v13 = v580;
      if (v578)
      {
        v13 = &v579;
      }
    }

    while (v12 != &v13[v11]);
  }

  v569[1] = 0;
  v569[0] = 0;
  v570 = 0;
  v575 = 0;
  v572 = 0u;
  v573 = 0u;
  v571 = 0;
  v574 = 0;
  re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v569, v6);
  v14 = v570;
  bzero(&v563, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v565, 1uLL);
  ++v566;
  re::internal::GeomAttributeManager::GeomAttributeManager(v568);
  re::internal::GeomAttributeManager::addAttribute(v568, "vertexPosition", 1, 7);
  v555 = 0;
  v557 = 0;
  v556[0] = 0;
  v556[1] = 0;
  v562 = 0;
  v559 = 0u;
  v560 = 0u;
  v558 = 0;
  v561 = 0;
  if (v14 >= 2)
  {
    re::DynamicArray<re::AABB>::setCapacity(v556, v14 >> 1);
    v554 = 0;
    v552 = 0;
    v550 = 0;
    v551 = 0;
    v553 = 0;
  }

  else
  {
    v554 = 0;
    v552 = 0;
    v550 = 0;
    v551 = 0;
    v553 = 0;
    if (!v14)
    {
      goto LABEL_341;
    }
  }

  v507 = 0;
  v16 = 0;
  v17 = 0.5;
  v18 = 1.0;
  v19 = -1.0;
  v20 = "uler18ScheduleDescriptorEmE3$_1FvfEJEEE";
  do
  {
    v549 = 0;
    HasOneMaterial = re::internal::ExtractMeshConnectedComponents::componentHasOneMaterial(v569, v16, v6, *(v2 + 16), &v549);
    re::GeomMesh::GeomMesh(v545, 0);
    if (!HasOneMaterial)
    {
      re::GeomMesh::GeomMesh(v540, 0);
      goto LABEL_34;
    }

    HasOneMaterial = *(v2 + 16);
    v543 = 0;
    v540[1] = 0;
    v541 = 0;
    v540[0] = 0;
    v542 = 0;
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v569, v16, v540);
    MeshFromFaceSubset = re::internal::extractMeshFromFaceSubset(v6, v543, v541, HasOneMaterial, &v596);
    if (v540[0] && v543)
    {
      (*(*v540[0] + 40))(MeshFromFaceSubset);
    }

    re::GeomMesh::operator=(v545, &v596);
    re::GeomMesh::~GeomMesh(&v596);
    re::GeomMesh::GeomMesh(v540, 0);
    v23 = *v2;
    v24 = *(v2 + 8);
    re::computeOrientedBoundingBox(v545, &v592);
    v25 = vmulq_f32(v592, v592);
    v26 = vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    v27 = vmulq_f32(v593, v593);
    v28 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v29 = vsqrt_f32(vadd_f32(vzip1_s32(v26, v28), vzip2_s32(v26, v28)));
    *&v30 = vadd_f32(v29, v29);
    v31 = vmuls_lane_f32(*&v30, *&v30, 1);
    if (fabsf(v31) < 0.00001)
    {
      re::GeomMesh::GeomMesh(&v596, 0);
      goto LABEL_21;
    }

    v46 = vmulq_f32(v594, v594);
    v47 = sqrtf(vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL))));
    v48 = v47 + v47;
    v49 = *(&v30 + 1);
    v50 = v23 * v17;
    if (v31 >= 0.25 || *&v30 >= v23 && (*(&v30 + 1) < (v50 * v17) ? (v51 = v48 < (v50 * v17)) : (v51 = 0), !v51))
    {
      v587.i64[0] = v30;
      v587.f32[2] = v47 + v47;
      *&v52 = *&v25.i32[2] + vaddv_f32(*v25.i8);
      v53 = vrsqrte_f32(v52);
      v54 = vmul_f32(v53, vrsqrts_f32(v52, vmul_f32(v53, v53)));
      v55 = vmulq_n_f32(v592, vmul_f32(v54, vrsqrts_f32(v52, vmul_f32(v54, v54))).f32[0]);
      *&v56 = *&v27.i32[2] + vaddv_f32(*v27.i8);
      v57 = vrsqrte_f32(v56);
      v58 = vmul_f32(v57, vrsqrts_f32(v56, vmul_f32(v57, v57)));
      v58.i32[0] = vmul_f32(v58, vrsqrts_f32(v56, vmul_f32(v58, v58))).u32[0];
      v59 = vmulq_n_f32(v593, v58.f32[0]);
      v58 = v58.u32[0];
      v58.f32[0] = *&v46.i32[2] + vaddv_f32(*v46.i8);
      v60 = vrsqrte_f32(v58);
      v61 = vmul_f32(v60, vrsqrts_f32(v58, vmul_f32(v60, v60)));
      v517 = v59;
      v518 = vmulq_n_f32(v594, vmul_f32(v61, vrsqrts_f32(v58, vmul_f32(v61, v61))).f32[0]);
      v590 = v59;
      v591 = v518;
      v62 = v595;
      v519 = v55;
      v588 = v595;
      v589 = v55;
      v535 = v595;
      v508 = v48;
      v509 = v30;
      if (v546 + 2 * (v548 - v546) >= 0x15 && fabsf(*&v30 / v48) <= *(v20 + 1944))
      {
        v502 = v23 * v17;
        v63 = *(&v30 + 1);
        v64 = re::GeomMesh::accessVertexPositions(v545);
        v66 = v547;
        if (v547)
        {
          v32 = v65;
          if (v65 <= v547 - 1)
          {
            goto LABEL_506;
          }

          v67 = 0.0;
          v68 = v64;
          v69 = v547;
          v62 = v535;
          do
          {
            v70 = *v68++;
            v71 = vsubq_f32(v70, v535);
            v72 = vmulq_f32(v71, v71);
            v67 = v67 + sqrtf(v72.f32[2] + vaddv_f32(*v72.f32));
            --v69;
          }

          while (v69);
          v73 = v67 / v547;
          v48 = v508;
          LODWORD(v30) = v509;
          v50 = v502;
          do
          {
            v74 = vsubq_f32(*v64, v535);
            v75 = vmulq_f32(v74, v74);
            if ((vabds_f32(sqrtf(v75.f32[2] + vaddv_f32(*v75.f32)), v73) / v73) > 0.1)
            {
              goto LABEL_95;
            }

            ++v64;
            --v66;
          }

          while (v66);
          v530 = v73;
        }

        else
        {
          v530 = NAN;
        }

        v76 = v24;
        v596.i64[0] = v545;
        v596.i64[1] = re::GeomMesh::accessVertexPositions(v545);
        LODWORD(v597) = v77;
        if (v548)
        {
          LODWORD(HasOneMaterial) = 0;
          v78 = 0.0;
          do
          {
            re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v596, HasOneMaterial);
            v80.i64[0] = v79;
            v80.i64[1] = v81;
            v82 = vmulq_f32(v80, v80);
            v78 = v78 + sqrtf(v82.f32[2] + vaddv_f32(*v82.f32));
            HasOneMaterial = (HasOneMaterial + 1);
          }

          while (HasOneMaterial < v548);
        }

        else
        {
          v78 = 0.0;
        }

        v62 = v535;
        v83 = vabds_f32(v78, v530 * (v530 * 12.566)) / (v530 * (v530 * 12.566));
        v48 = v508;
        LODWORD(v30) = v509;
        v24 = v76;
        v18 = 1.0;
        v49 = v63;
        v50 = v502;
        if (v83 <= 0.1)
        {
          bzero(v601, 0x2D0uLL);
          re::DynamicArray<re::BlendNode>::setCapacity(&v601[16], 1uLL);
          ++v604;
          re::internal::GeomAttributeManager::GeomAttributeManager(v606);
          re::internal::GeomAttributeManager::addAttribute(v606, "vertexPosition", 1, 7);
          if (*&v601[8] >= 0xDu && *&v603[2] && (*&v603[2] - 1) > *&v603[2])
          {
              ;
            }
          }

          *&v601[8] = 12;
          v607 = 12;
          if (v608)
          {
            v85 = v609;
            v86 = 8 * v608;
            do
            {
              v87 = *v85++;
              (*(*v87 + 80))(v87, v607);
              v86 -= 8;
            }

            while (v86);
          }

          if (*&v603[2] >= 0x15u)
          {
            v88 = v614;
            if (v614)
            {
              v89 = 0;
              do
              {
                v90 = re::internal::GeomAttributeContainer::attributeByIndex(v613, v89);
                re::internal::accessFaceVaryingAttributeSubmesh(v90, v91);
                ++v89;
              }

              while (v88 != v89);
            }
          }

          re::DynamicArray<re::GeomCell4>::resize(&v601[16], 0x14uLL);
          v610 = 20;
          v17 = 0.5;
          if (v611)
          {
            v92 = v612;
            v93 = 8 * v611;
            do
            {
              v94 = *v92++;
              (*(*v94 + 80))(v94, v610);
              v93 -= 8;
            }

            while (v93);
          }

          re::GeomMeshBuilder::setFaceVertices(v601, 0, 1, 2, 6);
          re::GeomMeshBuilder::setFaceVertices(v601, 1u, 1, 7, 2);
          re::GeomMeshBuilder::setFaceVertices(v601, 2u, 3, 4, 5);
          re::GeomMeshBuilder::setFaceVertices(v601, 3u, 4, 3, 8);
          re::GeomMeshBuilder::setFaceVertices(v601, 4u, 6, 5, 11);
          re::GeomMeshBuilder::setFaceVertices(v601, 5u, 5, 6, 10);
          re::GeomMeshBuilder::setFaceVertices(v601, 6u, 9, 10, 2);
          re::GeomMeshBuilder::setFaceVertices(v601, 7u, 10, 9, 3);
          re::GeomMeshBuilder::setFaceVertices(v601, 8u, 7, 8, 9);
          re::GeomMeshBuilder::setFaceVertices(v601, 9u, 8, 7, 0);
          re::GeomMeshBuilder::setFaceVertices(v601, 0xAu, 11, 0, 1);
          re::GeomMeshBuilder::setFaceVertices(v601, 0xBu, 0, 11, 4);
          re::GeomMeshBuilder::setFaceVertices(v601, 0xCu, 6, 2, 10);
          re::GeomMeshBuilder::setFaceVertices(v601, 0xDu, 1, 6, 11);
          re::GeomMeshBuilder::setFaceVertices(v601, 0xEu, 3, 5, 10);
          re::GeomMeshBuilder::setFaceVertices(v601, 0xFu, 5, 4, 11);
          re::GeomMeshBuilder::setFaceVertices(v601, 0x10u, 2, 7, 9);
          re::GeomMeshBuilder::setFaceVertices(v601, 0x11u, 7, 1, 0);
          re::GeomMeshBuilder::setFaceVertices(v601, 0x12u, 3, 9, 8);
          re::GeomMeshBuilder::setFaceVertices(v601, 0x13u, 4, 8, 0);
          re::GeomMesh::GeomMesh(&v596, 0);
          re::GeomMesh::operator=(&v596, &v601[8]);
          re::GeomMesh::setName(&v596, *v601);
          re::GeomMesh::freeName(v601);
          v95 = re::GeomMesh::modifyVertexPositions(&v596);
          HasOneMaterial = v96;
          v20 = 0x1E30A0000;
          if (!v96)
          {
            goto LABEL_513;
          }

          *v95 = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A07B0, v530));
          if (v96 == 1)
          {
            goto LABEL_517;
          }

          v95[1] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A07C0, v530));
          if (v96 <= 2)
          {
            goto LABEL_521;
          }

          v95[2] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A07D0, v530));
          if (v96 == 3)
          {
            goto LABEL_525;
          }

          v95[3] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A07E0, v530));
          if (v96 <= 4)
          {
            goto LABEL_529;
          }

          v95[4] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A07F0, v530));
          if (v96 == 5)
          {
            goto LABEL_533;
          }

          v95[5] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A0800, v530));
          if (v96 <= 6)
          {
            goto LABEL_537;
          }

          v95[6] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A0810, v530));
          if (v96 == 7)
          {
            goto LABEL_541;
          }

          v95[7] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A0820, v530));
          if (v96 <= 8)
          {
            goto LABEL_545;
          }

          v95[8] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A0830, v530));
          if (v96 == 9)
          {
            goto LABEL_549;
          }

          v95[9] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A0840, v530));
          if (v96 <= 0xA)
          {
            goto LABEL_553;
          }

          v95[10] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A0850, v530));
          if (v96 == 11)
          {
            goto LABEL_557;
          }

          v95[11] = vaddq_f32(v535, vmulq_n_f32(xmmword_1E30A0860, v530));
          goto LABEL_327;
        }
      }

LABEL_95:
      v17 = 0.5;
      if (fabsf(v31 * v48) < 0.00001 || v546 + 2 * (v548 - v546) < 0x15 || ((v97 = (*&v30 / v49) + -1.0, v19 = -1.0, v98 = (v49 / v48) + -1.0, v97 > 0.1) || (v99 = v518, v100 = v48, v97 >= v98)) && (v99 = v519, v100 = *&v30, v98 >= 0.1))
      {
LABEL_150:
        if (v48 <= v23 && *&v30 * 0.25 >= v48)
        {
          v249 = v24;
          v583 = v545;
          v584 = re::GeomMesh::accessVertexPositions(v545);
          v585 = v250;
          if (v548)
          {
            LODWORD(HasOneMaterial) = 0;
            v251 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v517, v517), v517, 0xCuLL), vnegq_f32(v519)), v517, vextq_s8(vuzp1q_s32(v519, v519), v519, 0xCuLL));
            v533 = vextq_s8(vuzp1q_s32(v251, v251), v251, 0xCuLL);
            v252 = 0.0;
            v253 = 0.0;
            do
            {
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v583, HasOneMaterial);
              v255.i64[0] = v254;
              v255.i64[1] = v256;
              v257 = vmulq_f32(v533, v255);
              v258 = v257.f32[2] + vaddv_f32(*v257.f32);
              if (v258 <= 0.0)
              {
                v252 = v252 - v258;
              }

              else
              {
                v253 = v253 + v258;
              }

              HasOneMaterial = (HasOneMaterial + 1);
            }

            while (HasOneMaterial < v548);
          }

          else
          {
            v253 = 0.0;
            v252 = 0.0;
          }

          v259 = (v249 * *&v509) * v49;
          if (v253 >= v259 || v252 >= v259)
          {
            v261 = v253 >= v252 ? v253 : v252;
            if (fabsf(v261 - (*&v509 * v49)) <= ((v23 * 5.0) * (v23 * 5.0)))
            {
              v18 = 1.0;
              if (fabsf(v508) >= 0.00001)
              {
                LOBYTE(v219) = 1;
                v224 = 1;
                LOBYTE(v231) = 1;
                LOBYTE(v229) = 1;
                LOBYTE(v220) = 1;
                v227 = 1;
LABEL_281:
LABEL_21:
                re::GeomMesh::operator=(v540, &v596);
                re::GeomMesh::~GeomMesh(&v596);
                v32 = v549;
                if (v549 != -1)
                {
                  v33 = *(v2 + 16);
                  if (v33)
                  {
                    v34 = re::GeomMesh::addAttribute(v540, v33, 2, 2);
                    if (v34)
                    {
                      v35 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v34);
                      v37 = v544;
                      if (v544)
                      {
                        HasOneMaterial = v36;
                        v38 = v36;
                        while (v38)
                        {
                          *v35++ = v32;
                          --v38;
                          if (!--v37)
                          {
                            goto LABEL_28;
                          }
                        }

LABEL_465:
                        v622[0] = 0;
                        v599 = 0u;
                        v600 = 0u;
                        v597 = 0u;
                        v598 = 0u;
                        v596 = 0u;
                        v366 = MEMORY[0x1E69E9C10];
                        v367 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v601 = 136315906;
                        *&v601[4] = "operator[]";
                        *&v601[12] = 1024;
                        if (v367)
                        {
                          v368 = 3;
                        }

                        else
                        {
                          v368 = 2;
                        }

                        *&v601[14] = 621;
                        *&v601[18] = 2048;
                        *&v601[20] = HasOneMaterial;
                        v602 = 2048;
                        *v603 = HasOneMaterial;
                        _os_log_send_and_compose_impl(v368, v622, &v596, 80, &dword_1E1C61000, v366, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v601, 38, v491, v492);
                        _os_crash_msg();
                        __break(1u);
LABEL_469:
                        v583 = 0;
                        v599 = 0u;
                        v600 = 0u;
                        v597 = 0u;
                        v598 = 0u;
                        v596 = 0u;
                        v369 = MEMORY[0x1E69E9C10];
                        v370 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v615 = 136315906;
                        *&v615[4] = "operator[]";
                        v616 = 1024;
                        if (v370)
                        {
                          v371 = 3;
                        }

                        else
                        {
                          v371 = 2;
                        }

                        v617 = 613;
                        v618 = 2048;
                        v619 = v20;
                        v620 = 2048;
                        v621 = v20;
                        _os_log_send_and_compose_impl(v371, &v583, &v596, 80, &dword_1E1C61000, v369, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
                        _os_crash_msg();
                        __break(1u);
LABEL_473:
                        v592.i64[0] = 0;
                        v599 = 0u;
                        v600 = 0u;
                        v597 = 0u;
                        v598 = 0u;
                        v596 = 0u;
                        v372 = MEMORY[0x1E69E9C10];
                        v373 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v587.i32[0] = 136315906;
                        *(v7[11].i64 + 4) = "operator[]";
                        v587.i16[6] = 1024;
                        if (v373)
                        {
                          v374 = 3;
                        }

                        else
                        {
                          v374 = 2;
                        }

                        *(&v7[11].i32[3] + 2) = 789;
                        v588.i16[1] = 2048;
                        *(v7[12].i64 + 4) = v32;
                        v588.i16[6] = 2048;
                        *(&v7[12].i64[1] + 6) = v8;
                        _os_log_send_and_compose_impl(v374, &v592, &v596, 80, &dword_1E1C61000, v372, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v587, 38, v491, v492);
                        _os_crash_msg();
                        __break(1u);
LABEL_477:
                        v592.i64[0] = 0;
                        v599 = 0u;
                        v600 = 0u;
                        v597 = 0u;
                        v598 = 0u;
                        v596 = 0u;
                        v375 = MEMORY[0x1E69E9C10];
                        v376 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v587.i32[0] = 136315906;
                        *(v7[11].i64 + 4) = "operator[]";
                        v587.i16[6] = 1024;
                        if (v376)
                        {
                          v377 = 3;
                        }

                        else
                        {
                          v377 = 2;
                        }

                        *(&v7[11].i32[3] + 2) = 789;
                        v588.i16[1] = 2048;
                        *(v7[12].i64 + 4) = v32;
                        v588.i16[6] = 2048;
                        *(&v7[12].i64[1] + 6) = v8;
                        _os_log_send_and_compose_impl(v377, &v592, &v596, 80, &dword_1E1C61000, v375, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v587, 38, v491, v492);
                        _os_crash_msg();
                        __break(1u);
LABEL_481:
                        v592.i64[0] = 0;
                        v599 = 0u;
                        v600 = 0u;
                        v597 = 0u;
                        v598 = 0u;
                        v596 = 0u;
                        v378 = MEMORY[0x1E69E9C10];
                        v379 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v587.i32[0] = 136315906;
                        *(v7[11].i64 + 4) = "operator[]";
                        v587.i16[6] = 1024;
                        if (v379)
                        {
                          v380 = 3;
                        }

                        else
                        {
                          v380 = 2;
                        }

                        *(&v7[11].i32[3] + 2) = 789;
                        v588.i16[1] = 2048;
                        *(v7[12].i64 + 4) = v32;
                        v588.i16[6] = 2048;
                        *(&v7[12].i64[1] + 6) = v8;
                        _os_log_send_and_compose_impl(v380, &v592, &v596, 80, &dword_1E1C61000, v378, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v587, 38, v491, v492);
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_485;
                      }
                    }
                  }
                }

LABEL_28:
                if (v544)
                {
                  re::GeomMeshBuilder::appendMesh(&v563, v540);
                  re::computeAABB(&v596, v540);
                  re::DynamicArray<re::AABB>::add(v556, &v596);
                  v39 = v552;
                  if (v552)
                  {
                    v39 = *(v554 + 4 * v552 - 4);
                  }

                  v596.i32[0] = v39 + v544;
                  re::DynamicArray<int>::add(&v550, &v596);
                }

                v507 = 1;
                goto LABEL_44;
              }

              bzero(v601, 0x2D0uLL);
              re::DynamicArray<re::BlendNode>::setCapacity(&v601[16], 1uLL);
              ++v604;
              re::internal::GeomAttributeManager::GeomAttributeManager(v606);
              re::internal::GeomAttributeManager::addAttribute(v606, "vertexPosition", 1, 7);
              if ((*&v603[2] & 0xFFFFFFFE) != 0)
              {
                v263 = v614;
                if (v614)
                {
                  v264 = 0;
                  do
                  {
                    v265 = re::internal::GeomAttributeContainer::attributeByIndex(v613, v264);
                    re::internal::accessFaceVaryingAttributeSubmesh(v265, v266);
                    ++v264;
                  }

                  while (v263 != v264);
                }
              }

              re::DynamicArray<re::GeomCell4>::resize(&v601[16], 1uLL);
              v610 = 1;
              if (v611)
              {
                v267 = v612;
                v268 = 8 * v611;
                do
                {
                  v269 = *v267++;
                  (*(*v269 + 80))(v269, v610);
                  v268 -= 8;
                }

                while (v268);
              }

              v20 = 0x1E30A0000;
              if (*&v601[8] >= 5u && *&v603[2] && (*&v603[2] - 1) > *&v603[2])
              {
                  ;
                }
              }

              *&v601[8] = 4;
              v607 = 4;
              if (v608)
              {
                v270 = v609;
                v271 = 8 * v608;
                do
                {
                  v272 = *v270++;
                  (*(*v272 + 80))(v272, v607);
                  v271 -= 8;
                }

                while (v271);
              }

              re::GeomMeshBuilder::setFaceVertices(v601, 0, 0, 1, 2, 3);
              re::GeomMesh::GeomMesh(&v596, 0);
              re::GeomMesh::operator=(&v596, &v601[8]);
              re::GeomMesh::setName(&v596, *v601);
              re::GeomMesh::freeName(v601);
              v273 = re::GeomMesh::modifyVertexPositions(&v596);
              HasOneMaterial = v274;
              if (!v274)
              {
                goto LABEL_565;
              }

              v275.i64[0] = 0x3F0000003F000000;
              v275.i64[1] = 0x3F0000003F000000;
              v276 = vmulq_f32(vmulq_n_f32(v519, *&v509), v275);
              v277 = vmulq_f32(vmulq_lane_f32(v517, *&v509, 1), v275);
              v278 = vsubq_f32(v535, v276);
              *v273 = vsubq_f32(v278, v277);
              if (v274 == 1)
              {
                goto LABEL_569;
              }

              v279 = vaddq_f32(v276, v535);
              v273[1] = vsubq_f32(v279, v277);
              if (v274 <= 2)
              {
                goto LABEL_573;
              }

              v273[2] = vaddq_f32(v277, v279);
              if (v274 == 3)
              {
                goto LABEL_577;
              }

              v273[3] = vaddq_f32(v277, v278);
LABEL_327:
              re::GeomMesh::freeName(v601);
              re::internal::GeomAttributeManager::~GeomAttributeManager(v606);
              if (*&v601[16] && v605)
              {
                (*(**&v601[16] + 40))();
              }

              goto LABEL_21;
            }
          }

          v18 = 1.0;
        }

        else
        {
          re::GeomMesh::GeomMesh(&v596, 0);
          re::GeomMesh::operator=(v540, &v596);
          re::GeomMesh::~GeomMesh(&v596);
          v596.i64[0] = v545;
          v596.i64[1] = re::GeomMesh::accessVertexPositions(v545);
          LODWORD(v597) = v167;
          v168 = v548;
          if (v548)
          {
            LODWORD(HasOneMaterial) = 0;
            *(&v169 + 1) = *(&v509 + 1);
            *&v169 = 0;
            v532 = v169;
            *&v166 = 0;
            *&v169 = 0;
            v529 = v169;
            *&v169 = 0;
            v516 = v169;
            *&v169 = 0;
            v512 = v169;
            *&v169 = 0;
            v510 = v169;
            while (1)
            {
              v527 = v166;
              re::internal::FaceEvaluator::computeFaceCentroid(&v596, HasOneMaterial);
              v171.i64[0] = v170;
              v171.i64[1] = v172;
              v521 = v171;
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v596, HasOneMaterial);
              v174.i64[0] = v173;
              v174.i64[1] = v175;
              v176 = vmulq_f32(v519, v174);
              v177 = v176.f32[2] + vaddv_f32(*v176.f32);
              if (v177 >= 0.0)
              {
                v178 = 1.0;
              }

              else
              {
                v178 = v19;
              }

              v179 = vmulq_f32(vsubq_f32(v521, v535), vmulq_n_f32(v519, v178));
              if (vabds_f32(v179.f32[2] + vaddv_f32(*v179.f32), *&v509 * v17) >= v23)
              {
                if (v177 < 0.0)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                if (v177 < 0.0)
                {
                  v180 = v510;
                  *&v180 = *&v510 - v177;
                  v510 = v180;
LABEL_161:
                  v181 = v529;
                  *&v181 = *&v529 - v177;
                  v529 = v181;
                  goto LABEL_164;
                }

                v182 = v510;
                *(&v182 + 1) = *(&v510 + 1) + v177;
                v510 = v182;
              }

              v183 = v529;
              *(&v183 + 1) = *(&v529 + 1) + v177;
              v529 = v183;
LABEL_164:
              re::internal::FaceEvaluator::computeFaceCentroid(&v596, HasOneMaterial);
              v185.i64[0] = v184;
              v185.i64[1] = v186;
              v522 = v185;
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v596, HasOneMaterial);
              v188.i64[0] = v187;
              v188.i64[1] = v189;
              v190 = vmulq_f32(v517, v188);
              v191 = v190.f32[2] + vaddv_f32(*v190.f32);
              if (v191 >= 0.0)
              {
                v192 = 1.0;
              }

              else
              {
                v192 = v19;
              }

              v193 = vmulq_f32(vsubq_f32(v522, v535), vmulq_n_f32(v517, v192));
              if (vabds_f32(v193.f32[2] + vaddv_f32(*v193.f32), v49 * v17) >= v23)
              {
                if (v191 < 0.0)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                if (v191 < 0.0)
                {
                  v194 = v512;
                  *&v194 = *&v512 - v191;
                  v512 = v194;
LABEL_171:
                  v195 = v532;
                  *&v195 = *&v532 - v191;
                  v532 = v195;
                  goto LABEL_174;
                }

                v196 = v512;
                *(&v196 + 1) = *(&v512 + 1) + v191;
                v512 = v196;
              }

              v197 = v532;
              *(&v197 + 1) = *(&v532 + 1) + v191;
              v532 = v197;
LABEL_174:
              re::internal::FaceEvaluator::computeFaceCentroid(&v596, HasOneMaterial);
              v199.i64[0] = v198;
              v199.i64[1] = v200;
              v523 = v199;
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v596, HasOneMaterial);
              v202.i64[0] = v201;
              v202.i64[1] = v203;
              v204 = vmulq_f32(v518, v202);
              v205 = v204.f32[2] + vaddv_f32(*v204.f32);
              if (v205 >= 0.0)
              {
                v206 = 1.0;
              }

              else
              {
                v206 = v19;
              }

              v207 = vmulq_f32(vsubq_f32(v523, v535), vmulq_n_f32(v518, v206));
              if (vabds_f32(v207.f32[2] + vaddv_f32(*v207.f32), v508 * 0.5) >= v23)
              {
                v166 = v527;
                if (v205 >= 0.0)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                v166 = v527;
                if (v205 >= 0.0)
                {
                  v209 = v516;
                  *(&v209 + 1) = *(&v516 + 1) + v205;
                  v516 = v209;
LABEL_183:
                  *(&v166 + 1) = *(&v166 + 1) + v205;
                  goto LABEL_184;
                }

                v208 = v516;
                *&v208 = *&v516 - v205;
                v516 = v208;
              }

              *&v166 = *&v166 - v205;
LABEL_184:
              HasOneMaterial = (HasOneMaterial + 1);
              if (v168 == HasOneMaterial)
              {
                v210 = v548;
                v18 = 1.0;
                v17 = 0.5;
                v211 = v509;
                v213 = v512;
                v212 = v516;
                v214 = v510;
                v215 = v529;
                goto LABEL_187;
              }
            }
          }

          v210 = 0;
          *&v532 = 0;
          *&v166 = 0;
          v215 = 0;
          v212 = 0;
          v213 = 0;
          v214 = 0;
          v211 = v509;
LABEL_187:
          v216 = v24 * (v49 * v508);
          v217 = v24 * (*v211.i32 * v508);
          v218 = v24 * v31;
          v219 = *&v214 > v216;
          v220 = *&v212 > (v24 * v31);
          v221 = vdup_lane_s32(v211, 0);
          v221.f32[0] = v508;
          v222 = vmul_n_f32(v221, v18 - v24);
          if ((v49 * v222.f32[0]) >= (v23 * v23))
          {
            v223 = v49 * v222.f32[0];
          }

          else
          {
            v223 = v23 * v23;
          }

          v224 = *(&v214 + 1) > v216;
          if (*(&v214 + 1) <= v216)
          {
            v225 = *&v214 > v216;
          }

          else
          {
            v225 = v219 + 1;
          }

          v226 = v210 - v546;
          v227 = *(&v212 + 1) > v218;
          if (*(&v212 + 1) <= v218)
          {
            v228 = *&v212 > (v24 * v31);
          }

          else
          {
            v228 = v220 + 1;
          }

          v229 = *(&v213 + 1) > v217;
          if (*(&v213 + 1) <= v217)
          {
            v230 = v228;
          }

          else
          {
            v230 = v228 + 1;
          }

          v231 = *&v213 > v217;
          if (*&v213 > v217)
          {
            ++v230;
          }

          v232 = *&v215 > v223 && *&v214 <= v216;
          v233 = v546 + 2 * v226;
          v234 = v230 + v225;
          v235 = v232;
          v20 = 0x1E30A0000;
          if (v233 >= 2 * v234 && (v235 & 1) == 0 && (*(&v215 + 1) <= v223 || *(&v214 + 1) > v216))
          {
            *v165.i32 = v23 * v23;
            v238 = vdup_lane_s32(v165, 0);
            v239 = vmul_f32(v211, v222);
            v240 = vbsl_s8(vcgt_f32(v238, v239), v238, v239);
            if (((*&v213 <= v217) & vcgt_f32(*&v532, v240).u32[0]) == 0)
            {
              v241 = vmvn_s8(vcgt_f32(vext_s8(*&v532, *&v166, 4uLL), v240));
              if ((*(&v213 + 1) > v217) | v241.i8[0] & 1)
              {
                if ((*&v212 > v218) | v241.i8[4] & 1)
                {
                  if ((*(&v212 + 1) > v218) | vmvn_s8(vcgt_f32(*&v166, v240)).i32[1] & 1)
                  {
                    v242 = v228 + v231 + v229 + v225;
                    if (v242)
                    {
                      if (v242 != 2)
                      {
                        goto LABEL_281;
                      }

                      v243 = *(&v214 + 1) <= v216 || *&v214 <= v216;
                      v244 = !v243;
                      v245 = *(&v213 + 1) <= v217 || *&v213 <= v217;
                      v246 = !v245;
                      v247 = *(&v212 + 1) <= v218 || *&v212 <= v218;
                      v248 = !v247;
                      if (!v244 && !v246 && !v248)
                      {
                        goto LABEL_281;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_34;
      }

      v582 = 0;
      v101 = fabsf(*&v99.i32[2]);
      if (v101 >= 0.00001)
      {
        v102.i32[0] = 0;
        *&v102.i32[1] = -*&v99.i32[2];
        v102.i64[1] = v99.u32[1];
      }

      else
      {
        v102 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v99.i32[1]), v99);
      }

      v524 = v102;
      v499 = v49;
      v494 = *&v99.i32[1];
      v495 = v101;
      v493 = -*&v99.i32[2];
      v503 = v50;
      v103 = v24;
      if (v101 >= 0.00001)
      {
        v104.i32[0] = 0;
        *&v104.i32[1] = -*&v99.i32[2];
        v104.i64[1] = v99.u32[1];
      }

      else
      {
        v104 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v99.i32[1]), v99);
      }

      v513 = v104;
      v105 = vmulq_n_f32(v99, v100 * 0.5);
      v528 = vsubq_f32(v62, v105);
      v531 = v99;
      v520 = vaddq_f32(v62, v105);
      v497 = vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL);
      v498 = v100;
      v496 = vnegq_f32(v99);
      v106 = re::GeomMesh::accessVertexPositions(v545);
      LODWORD(v20) = v107;
      *&v603[2] = 0;
      memset(v601, 0, sizeof(v601));
      v622[4] = 0;
      memset(v622, 0, 28);
      if (v547)
      {
        HasOneMaterial = v106;
        re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v601, v547);
        v108 = v547;
        if (v622[1] < v547)
        {
          re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v622, v547);
          v108 = v547;
        }

        if (v108)
        {
          v32 = 0;
          v109 = vmulq_f32(v524, v524);
          *&v110 = v109.f32[2] + vaddv_f32(*v109.f32);
          *v109.f32 = vrsqrte_f32(v110);
          *v109.f32 = vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32)));
          v525 = vmulq_n_f32(v524, vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32))).f32[0]);
          v111 = vmulq_f32(v513, v513);
          *&v112 = v111.f32[2] + vaddv_f32(*v111.f32);
          *v111.f32 = vrsqrte_f32(v112);
          *v111.f32 = vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32)));
          v113 = vmulq_n_f32(v513, vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32))).f32[0]);
          v114 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL), v496), v113, v497);
          v115 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          v116 = vmulq_f32(v114, v114);
          *&v117 = v116.f32[1] + (v116.f32[2] + v116.f32[0]);
          *v116.f32 = vrsqrte_f32(v117);
          *v116.f32 = vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32)));
          v514 = vmulq_n_f32(v115, vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32))).f32[0]);
          v118 = v498 * 0.1;
          v20 = v20;
          while (1)
          {
            if (v20 == v32)
            {
              goto LABEL_469;
            }

            v119 = *(HasOneMaterial + 16 * v32);
            v120 = vsubq_f32(v119, v528);
            v121 = vmulq_f32(v531, v120);
            v122 = fabsf(v121.f32[2] + vaddv_f32(*v121.f32));
            if (v122 <= v118)
            {
              break;
            }

            v123 = vsubq_f32(v119, v520);
            v124 = vmulq_f32(v531, v123);
            v125 = fabsf(v124.f32[2] + vaddv_f32(*v124.f32));
            if (v125 <= v118)
            {
              v126 = vsubq_f32(v123, vmulq_n_f32(v531, v125));
              v127 = vmulq_f32(v525, v126);
              v128 = vmulq_f32(v514, v126);
              *v596.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v127, v127, 8uLL), *&vextq_s8(v128, v128, 8uLL)), vadd_f32(vzip1_s32(*v127.i8, *v128.i8), vzip2_s32(*v127.i8, *v128.i8)));
              v129 = v622;
LABEL_116:
              re::DynamicArray<unsigned long>::add(v129, &v596);
            }

            if (++v32 >= v547)
            {
              goto LABEL_118;
            }
          }

          v130 = vsubq_f32(v120, vmulq_n_f32(v531, v122));
          v131 = vmulq_f32(v525, v130);
          v132 = vmulq_f32(v514, v130);
          *v596.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v131, v131, 8uLL), *&vextq_s8(v132, v132, 8uLL)), vadd_f32(vzip1_s32(*v131.i8, *v132.i8), vzip2_s32(*v131.i8, *v132.i8)));
          v129 = v601;
          goto LABEL_116;
        }
      }

LABEL_118:
      {
        v20 = "uler18ScheduleDescriptorEmE3$_1FvfEJEEE";
        if (v622[0] && v622[4])
        {
          (*(*v622[0] + 40))(v622[0]);
        }

        if (*v601 && *&v603[2])
        {
          (*(**v601 + 40))();
        }

        v506 = v103;
        v511 = *(&v582 + 1);
        v515 = *&v582;
        v583 = v545;
        v584 = re::GeomMesh::accessVertexPositions(v545);
        v585 = v133;
        if (!v548)
        {
          v135 = 0.0;
          v136 = 0.0;
          v18 = 1.0;
          v162 = v511;
          v163 = v515;
          v164 = v498;
LABEL_283:
          v280 = v162 * (v162 * 1.5708);
          v281 = v163 * (v163 * 1.5708);
          v283 = v136 <= v281 && v135 <= v280 && v164 < v503;
          v48 = v508;
          v49 = v499;
          if (!v283)
          {
            v284 = v280;
            v285 = v135 > v280;
            v286 = v163 * (v163 * 1.5708);
            v287 = v136 > v281;
            bzero(v601, 0x2D0uLL);
            re::DynamicArray<re::BlendNode>::setCapacity(&v601[16], 1uLL);
            ++v604;
            re::internal::GeomAttributeManager::GeomAttributeManager(v606);
            re::internal::GeomAttributeManager::addAttribute(v606, "vertexPosition", 1, 7);
            if (*&v601[8] >= 0xDu && *&v603[2] && (*&v603[2] - 1) > *&v603[2])
            {
                ;
              }
            }

            v536 = v285;
            *&v601[8] = 12;
            v607 = 12;
            if (v608)
            {
              v289 = v609;
              v290 = 8 * v608;
              do
              {
                v291 = *v289++;
                (*(*v291 + 80))(v291, v607);
                v290 -= 8;
              }

              while (v290);
            }

            v537 = (2 * (v287 + v536) + 6);
            if (*&v603[2] > v537)
            {
              v292 = v614;
              if (v614)
              {
                v293 = 0;
                do
                {
                  v294 = re::internal::GeomAttributeContainer::attributeByIndex(v613, v293);
                  re::internal::accessFaceVaryingAttributeSubmesh(v294, v295);
                  ++v293;
                }

                while (v292 != v293);
              }
            }

            re::DynamicArray<re::GeomCell4>::resize(&v601[16], v537);
            v610 = v537;
            if (v611)
            {
              v296 = v612;
              v297 = 8 * v611;
              do
              {
                v298 = *v296++;
                (*(*v298 + 80))(v298, v610);
                v297 -= 8;
              }

              while (v297);
            }

            if (v136 <= v286)
            {
              v299 = 0;
            }

            else
            {
              v299 = 2;
              re::GeomMeshBuilder::setFaceVertices(v601, 0, 0, 3, 2, 1);
              re::GeomMeshBuilder::setFaceVertices(v601, 1u, 0, 5, 4, 3);
            }

            v20 = 0x1E30A0000;
            v17 = 0.5;
            if (v135 > v284)
            {
              re::GeomMeshBuilder::setFaceVertices(v601, v299, 6, 7, 8, 9);
              re::GeomMeshBuilder::setFaceVertices(v601, v299 | 1, 6, 9, 10, 11);
              v299 += 2;
            }

            re::GeomMeshBuilder::setFaceVertices(v601, v299, 0, 1, 7, 6);
            re::GeomMeshBuilder::setFaceVertices(v601, v299 + 1, 1, 2, 8, 7);
            re::GeomMeshBuilder::setFaceVertices(v601, v299 + 2, 2, 3, 9, 8);
            re::GeomMeshBuilder::setFaceVertices(v601, v299 + 3, 3, 4, 10, 9);
            re::GeomMeshBuilder::setFaceVertices(v601, v299 + 4, 4, 5, 11, 10);
            re::GeomMeshBuilder::setFaceVertices(v601, v299 + 5, 0, 6, 11, 5);
            re::GeomMesh::GeomMesh(&v596, 0);
            re::GeomMesh::operator=(&v596, &v601[8]);
            re::GeomMesh::setName(&v596, *v601);
            re::GeomMesh::freeName(v601);
            if (v495 >= 0.00001)
            {
              v300.i32[0] = 0;
              v300.f32[1] = v493;
              v300.i64[1] = v531.u32[1];
              v538 = v300;
            }

            else
            {
              v538 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v494), v531);
            }

            v301 = re::GeomMesh::modifyVertexPositions(&v596);
            HasOneMaterial = v302;
            if (!v302)
            {
LABEL_581:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v451 = MEMORY[0x1E69E9C10];
              v452 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v452)
              {
                v453 = 3;
              }

              else
              {
                v453 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 0;
              v620 = 2048;
              v621 = 0;
              _os_log_send_and_compose_impl(v453, &v586, v622, 80, &dword_1E1C61000, v451, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_585;
            }

            v303 = vmulq_f32(v538, v538);
            *&v304 = v303.f32[2] + vaddv_f32(*v303.f32);
            *v303.f32 = vrsqrte_f32(v304);
            *v303.f32 = vmul_f32(*v303.f32, vrsqrts_f32(v304, vmul_f32(*v303.f32, *v303.f32)));
            v305 = vmulq_n_f32(v538, vmul_f32(*v303.f32, vrsqrts_f32(v304, vmul_f32(*v303.f32, *v303.f32))).f32[0]);
            v306 = vmulq_n_f32(v305, v515);
            *v301 = v306;
            if (v302 == 1)
            {
LABEL_585:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v454 = MEMORY[0x1E69E9C10];
              v455 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v455)
              {
                v456 = 3;
              }

              else
              {
                v456 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 1;
              v620 = 2048;
              v621 = 1;
              _os_log_send_and_compose_impl(v456, &v586, v622, 80, &dword_1E1C61000, v454, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_589;
            }

            v307 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v305, v305), v305, 0xCuLL), v496), v305, v497);
            v308 = vextq_s8(vuzp1q_s32(v307, v307), v307, 0xCuLL);
            v309 = vmulq_n_f32(v308, (v515 * 1.7321) * 0.5);
            v310 = vaddq_f32(vmulq_n_f32(v305, v515 * 0.5), v309);
            *(v301 + 16) = v310;
            if (v302 <= 2)
            {
LABEL_589:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v457 = MEMORY[0x1E69E9C10];
              v458 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v458)
              {
                v459 = 3;
              }

              else
              {
                v459 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 2;
              v620 = 2048;
              v621 = HasOneMaterial & 3;
              _os_log_send_and_compose_impl(v459, &v586, v622, 80, &dword_1E1C61000, v457, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_593;
            }

            v311 = vaddq_f32(vmulq_n_f32(v305, -(v515 * 0.5)), v309);
            *(v301 + 32) = v311;
            if (v302 == 3)
            {
LABEL_593:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v460 = MEMORY[0x1E69E9C10];
              v461 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v461)
              {
                v462 = 3;
              }

              else
              {
                v462 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 3;
              v620 = 2048;
              v621 = 3;
              _os_log_send_and_compose_impl(v462, &v586, v622, 80, &dword_1E1C61000, v460, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_597;
            }

            *(v301 + 48) = vnegq_f32(v306);
            if (v302 <= 4)
            {
LABEL_597:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v463 = MEMORY[0x1E69E9C10];
              v464 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v464)
              {
                v465 = 3;
              }

              else
              {
                v465 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 4;
              v620 = 2048;
              v621 = HasOneMaterial & 7;
              _os_log_send_and_compose_impl(v465, &v586, v622, 80, &dword_1E1C61000, v463, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_601;
            }

            *(v301 + 64) = vnegq_f32(v310);
            if (v302 == 5)
            {
LABEL_601:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v466 = MEMORY[0x1E69E9C10];
              v467 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v467)
              {
                v468 = 3;
              }

              else
              {
                v468 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 5;
              v620 = 2048;
              v621 = 5;
              _os_log_send_and_compose_impl(v468, &v586, v622, 80, &dword_1E1C61000, v466, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_605;
            }

            *(v301 + 80) = vnegq_f32(v311);
            if (v302 <= 6)
            {
LABEL_605:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v469 = MEMORY[0x1E69E9C10];
              v470 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v470)
              {
                v471 = 3;
              }

              else
              {
                v471 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 6;
              v620 = 2048;
              v621 = HasOneMaterial & 7;
              _os_log_send_and_compose_impl(v471, &v586, v622, 80, &dword_1E1C61000, v469, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_609;
            }

            v312 = vmulq_n_f32(v305, v511);
            *(v301 + 96) = v312;
            if (v302 == 7)
            {
LABEL_609:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v472 = MEMORY[0x1E69E9C10];
              v473 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v473)
              {
                v474 = 3;
              }

              else
              {
                v474 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 7;
              v620 = 2048;
              v621 = 7;
              _os_log_send_and_compose_impl(v474, &v586, v622, 80, &dword_1E1C61000, v472, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_613;
            }

            v313 = vmulq_n_f32(v308, (v511 * 1.7321) * 0.5);
            v314 = vaddq_f32(vmulq_n_f32(v305, v511 * 0.5), v313);
            *(v301 + 112) = v314;
            if (v302 <= 8)
            {
LABEL_613:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v475 = MEMORY[0x1E69E9C10];
              v476 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v476)
              {
                v477 = 3;
              }

              else
              {
                v477 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 8;
              v620 = 2048;
              v621 = HasOneMaterial & 0xF;
              _os_log_send_and_compose_impl(v477, &v586, v622, 80, &dword_1E1C61000, v475, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_617;
            }

            v315 = vaddq_f32(vmulq_n_f32(v305, -(v511 * 0.5)), v313);
            *(v301 + 128) = v315;
            if (v302 == 9)
            {
LABEL_617:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v478 = MEMORY[0x1E69E9C10];
              v479 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v479)
              {
                v480 = 3;
              }

              else
              {
                v480 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 9;
              v620 = 2048;
              v621 = 9;
              _os_log_send_and_compose_impl(v480, &v586, v622, 80, &dword_1E1C61000, v478, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
              goto LABEL_621;
            }

            *(v301 + 144) = vnegq_f32(v312);
            if (v302 <= 0xA)
            {
LABEL_621:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v481 = MEMORY[0x1E69E9C10];
              v482 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v482)
              {
                v483 = 3;
              }

              else
              {
                v483 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 10;
              v620 = 2048;
              v621 = HasOneMaterial & 0xF;
              _os_log_send_and_compose_impl(v483, &v586, v622, 80, &dword_1E1C61000, v481, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
LABEL_625:
              v586 = 0;
              v623 = 0u;
              v624 = 0u;
              memset(v622, 0, sizeof(v622));
              v484 = MEMORY[0x1E69E9C10];
              v485 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v615 = 136315906;
              *&v615[4] = "operator[]";
              v616 = 1024;
              if (v485)
              {
                v486 = 3;
              }

              else
              {
                v486 = 2;
              }

              v617 = 621;
              v618 = 2048;
              v619 = 11;
              v620 = 2048;
              v621 = 11;
              _os_log_send_and_compose_impl(v486, &v586, v622, 80, &dword_1E1C61000, v484, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
              _os_crash_msg();
              __break(1u);
            }

            *(v301 + 160) = vnegq_f32(v314);
            if (v302 == 11)
            {
              goto LABEL_625;
            }

            *(v301 + 176) = vnegq_f32(v315);
            v32 = -6;
            while (1)
            {
              *v301 = vaddq_f32(v528, *v301);
              if ((v302 - 6) + v32 == -6)
              {
                goto LABEL_502;
              }

              *(v301 + 96) = vaddq_f32(v520, *(v301 + 96));
              --v32;
              v301 += 16;
              if (v32 == -12)
              {
                goto LABEL_327;
              }
            }
          }

          v17 = 0.5;
          LODWORD(v30) = v509;
          v24 = v506;
          goto LABEL_150;
        }

        LODWORD(HasOneMaterial) = 0;
        v505 = vmulq_n_f32(v531, v498);
        v134 = vmulq_f32(v505, v505);
        v504 = v134.f32[2] + vaddv_f32(*v134.f32);
        v135 = 0.0;
        v136 = 0.0;
        v137 = 0.0;
        v138 = 0.0;
        do
        {
          re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v583, HasOneMaterial);
          v140.i64[0] = v139;
          v140.i64[1] = v141;
          v526 = v140;
          re::internal::FaceEvaluator::computeFaceCentroid(&v583, HasOneMaterial);
          v144.i64[0] = v142;
          v144.i64[1] = v143;
          v145 = vmulq_f32(v531, v526);
          v146 = v145.f32[2] + vaddv_f32(*v145.f32);
          v147 = vmulq_f32(v531, vsubq_f32(v144, v535));
          v148 = v147.f32[2] + vaddv_f32(*v147.f32);
          v149 = -v146;
          if (v146 >= 0.0)
          {
            v149 = 0.0;
          }

          v150 = v136 + v149;
          if (v148 >= -(v498 * 0.45))
          {
            v150 = v136;
          }

          v151 = v135 + fmaxf(v146, 0.0);
          v152 = vmulq_f32(v526, v526);
          v153 = v148 <= (v498 * 0.45);
          v154 = sqrtf(v152.f32[2] + vaddv_f32(*v152.f32));
          v155 = vmulq_f32(v505, vsubq_f32(v144, v528));
          v156 = vaddv_f32(*v155.f32);
          if (v153)
          {
            v136 = v150;
          }

          v157 = (v155.f32[2] + v156) / v504;
          v158 = vsubq_f32(v144, vaddq_f32(v528, vmulq_n_f32(v505, v157)));
          v159 = vmulq_f32(v158, v158);
          v160 = ((v511 * v157) + ((1.0 - v157) * v515)) * 1.1;
          v161 = sqrtf(v159.f32[2] + vaddv_f32(*v159.f32));
          if (!v153)
          {
            v135 = v151;
          }

          if (v161 <= v160)
          {
            v137 = v137 + v154;
          }

          v138 = v138 + v154;
          HasOneMaterial = (HasOneMaterial + 1);
        }

        while (HasOneMaterial < v548);
        v51 = v137 < (v138 * 0.5);
        v18 = 1.0;
        v162 = v511;
        v163 = v515;
        v164 = v498;
        if (!v51)
        {
          goto LABEL_283;
        }

        v17 = 0.5;
        LODWORD(v30) = v509;
        v24 = v506;
      }

      else
      {
        v20 = 0x1E30A0000;
        v24 = v103;
        if (v622[0] && v622[4])
        {
          (*(*v622[0] + 40))(v622[0]);
        }

        v18 = 1.0;
        if (*v601 && *&v603[2])
        {
          (*(**v601 + 40))();
        }

        LODWORD(v30) = v509;
      }

      v48 = v508;
      v49 = v499;
      goto LABEL_150;
    }

LABEL_34:
    *&v603[2] = 0;
    memset(v601, 0, sizeof(v601));
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v569, v16, v601);
    v40 = *&v603[2];
    if (*&v601[16])
    {
      v41 = v577;
      v42 = 4 * *&v601[16];
      v43 = *&v603[2];
      while (1)
      {
        v44 = *v43;
        HasOneMaterial = v44 >> 6;
        if (v41 <= v44 >> 6)
        {
          break;
        }

        if (v578)
        {
          v45 = &v579;
        }

        else
        {
          v45 = v580;
        }

        v45[HasOneMaterial] |= 1 << v44;
        ++v43;
        v42 -= 4;
        if (!v42)
        {
          goto LABEL_41;
        }
      }

      v587.i64[0] = 0;
      v599 = 0u;
      v600 = 0u;
      v597 = 0u;
      v598 = 0u;
      v596 = 0u;
      v321 = MEMORY[0x1E69E9C10];
      v322 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v622[0]) = 136315906;
      *(v622 + 4) = "operator[]";
      WORD2(v622[1]) = 1024;
      if (v322)
      {
        v323 = 3;
      }

      else
      {
        v323 = 2;
      }

      *(&v622[1] + 6) = 858;
      WORD1(v622[2]) = 2048;
      *(&v622[2] + 4) = HasOneMaterial;
      WORD2(v622[3]) = 2048;
      *(&v622[3] + 6) = v41;
      _os_log_send_and_compose_impl(v323, &v587, &v596, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v491, v492);
      _os_crash_msg();
      __break(1u);
      goto LABEL_346;
    }

LABEL_41:
    if (*v601 && v40)
    {
      (*(**v601 + 40))();
    }

LABEL_44:
    re::GeomMesh::~GeomMesh(v540);
    re::GeomMesh::~GeomMesh(v545);
    v16 = (v16 + 1);
  }

  while (v16 != v14);
  if ((v507 & 1) == 0)
  {
LABEL_341:
    re::GeomMesh::GeomMesh(&v596, 0);
    re::GeomMesh::operator=(v500, &v596);
    re::GeomMesh::~GeomMesh(&v596);
    *v501 = 0;
    *(v501 + 8) = 0;
    bzero((v501 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((v501 + 16));
    *(v501 + 728) = 0;
    re::GeomMesh::copy(v6, v501);
    goto LABEL_433;
  }

  re::GeomMesh::GeomMesh(v545, 0);
  re::GeomMesh::operator=(v545, &v564);
  re::GeomMesh::setName(v545, v563);
  re::GeomMesh::freeName(&v563);
  v16 = *(v2 + 16);
  *&v598 = 0;
  *&v597 = 0;
  v596 = 0uLL;
  DWORD2(v597) = 0;
  v316 = v580;
  if (v578)
  {
    v316 = &v579;
  }

  v317 = v577;
  if ((v577 & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_351;
  }

  v318 = 0;
  while (1)
  {
    v320 = *v316++;
    v319 = v320;
    if (v320)
    {
      break;
    }

    v318 -= 64;
    if (!--v317)
    {
      goto LABEL_351;
    }
  }

LABEL_346:
  v324 = __clz(__rbit64(v319));
  v325 = v324 - v318;
  if (v324 + 1 == v318 || v325 >= *(v6 + 40))
  {
LABEL_351:
    v327 = 0;
    v328 = 0;
    v20 = v501;
    goto LABEL_352;
  }

  v20 = v501;
  do
  {
    LODWORD(v540[0]) = v325;
    re::DynamicArray<int>::add(&v596, v540);
    FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v576, v325 + 1);
    v325 = FirstBitSet;
  }

  while (FirstBitSet != -1 && FirstBitSet < *(v6 + 40));
  v328 = v598;
  v327 = v597;
LABEL_352:
  v329 = re::internal::extractMeshFromFaceSubset(v6, v328, v327, v16, v20);
  if (v596.i64[0] && v598)
  {
    (*(*v596.i64[0] + 40))(v329);
  }

  re::GeomMesh::GeomMesh(v540, 0);
  v555 = 0;
  v6 = v557;
  if (v557)
  {
    *&v603[2] = 0;
    memset(v601, 0, sizeof(v601));
    v622[4] = 0;
    memset(v622, 0, 28);
    re::DynamicArray<re::Vector3<float>>::resize(v601, v557);
    re::DynamicArray<float>::resize(v622, v6);
    v330 = 0;
    v32 = 0;
    v331.i64[0] = 0x3F0000003F000000;
    v331.i64[1] = 0x3F0000003F000000;
    do
    {
      v8 = v557;
      if (v557 <= v32)
      {
        goto LABEL_473;
      }

      v8 = *&v601[16];
      if (*&v601[16] <= v32)
      {
        goto LABEL_477;
      }

      v332 = *(v559 + v330);
      v333 = *(v559 + v330 + 16);
      v334 = vcgtq_f32(v332, v333);
      v334.i32[3] = v334.i32[2];
      v335 = vmaxvq_u32(v334);
      v336 = vmulq_f32(vaddq_f32(v332, v333), v331);
      v337 = v336.i64[1];
      if (v335 >= 0)
      {
        v338 = v336.i64[0];
      }

      else
      {
        v338 = 0;
      }

      if (v335 < 0)
      {
        v337 = 0;
      }

      v339 = (*&v603[2] + 16 * v32);
      *v339 = v338;
      v339[1] = v337;
      v8 = v622[2];
      if (v622[2] <= v32)
      {
        goto LABEL_481;
      }

      v340 = v622[4];
      *(v622[4] + 4 * v32) = v32;
      ++v32;
      v330 += 32;
    }

    while (v6 != v32);
    v341 = (2 * v6 - 1);
    v342 = *(&v560 + 1);
    if (*(&v560 + 1) >= v341)
    {
      if (*(&v560 + 1) <= v341)
      {
LABEL_378:
        if (v622[0] && v622[4])
        {
          (*(*v622[0] + 40))();
        }

        if (*v601 && *&v603[2])
        {
          (*(**v601 + 40))();
        }

        LODWORD(v6) = v557;
        goto LABEL_385;
      }
    }

    else
    {
      if (v560 < v341)
      {
        v342 = *(&v560 + 1);
      }

      if (v341 > v342 && (v341 - v342) >= 1)
      {
        v343 = &v562[3 * v342];
        v344 = (2 * v6 - 2) - v342 + 2;
        v345.i64[0] = 0x7F0000007FLL;
        v345.i64[1] = 0x7F0000007FLL;
        v346 = vnegq_f32(v345);
        do
        {
          v343->i64[0] = 0;
          v343->i64[1] = 0;
          v343[1] = v346;
          v343[2] = v345;
          v343 += 3;
          --v344;
        }

        while (v344 > 1);
      }
    }

    *(&v560 + 1) = (2 * v6 - 1);
    ++v561;
    if (!v622[2])
    {
LABEL_561:
      v592.i64[0] = 0;
      v599 = 0u;
      v600 = 0u;
      v597 = 0u;
      v598 = 0u;
      v596 = 0u;
      v436 = MEMORY[0x1E69E9C10];
      v437 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v587.i32[0] = 136315906;
      *(v7[11].i64 + 4) = "operator[]";
      v587.i16[6] = 1024;
      if (v437)
      {
        v438 = 3;
      }

      else
      {
        v438 = 2;
      }

      *(&v7[11].i32[3] + 2) = 789;
      v588.i16[1] = 2048;
      *(v7[12].i64 + 4) = 0;
      v588.i16[6] = 2048;
      *(&v7[12].i64[1] + 6) = 0;
      _os_log_send_and_compose_impl(v438, &v592, &v596, 80, &dword_1E1C61000, v436, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v587, 38, v491, v492);
      _os_crash_msg();
      __break(1u);
LABEL_565:
      v586 = 0;
      v623 = 0u;
      v624 = 0u;
      memset(v622, 0, sizeof(v622));
      v439 = MEMORY[0x1E69E9C10];
      v440 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v615 = 136315906;
      *&v615[4] = "operator[]";
      v616 = 1024;
      if (v440)
      {
        v441 = 3;
      }

      else
      {
        v441 = 2;
      }

      v617 = 621;
      v618 = 2048;
      v619 = 0;
      v620 = 2048;
      v621 = 0;
      _os_log_send_and_compose_impl(v441, &v586, v622, 80, &dword_1E1C61000, v439, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
      _os_crash_msg();
      __break(1u);
LABEL_569:
      v586 = 0;
      v623 = 0u;
      v624 = 0u;
      memset(v622, 0, sizeof(v622));
      v442 = MEMORY[0x1E69E9C10];
      v443 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v615 = 136315906;
      *&v615[4] = "operator[]";
      v616 = 1024;
      if (v443)
      {
        v444 = 3;
      }

      else
      {
        v444 = 2;
      }

      v617 = 621;
      v618 = 2048;
      v619 = 1;
      v620 = 2048;
      v621 = 1;
      _os_log_send_and_compose_impl(v444, &v586, v622, 80, &dword_1E1C61000, v442, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
      _os_crash_msg();
      __break(1u);
LABEL_573:
      v586 = 0;
      v623 = 0u;
      v624 = 0u;
      memset(v622, 0, sizeof(v622));
      v445 = MEMORY[0x1E69E9C10];
      v446 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v615 = 136315906;
      *&v615[4] = "operator[]";
      v616 = 1024;
      if (v446)
      {
        v447 = 3;
      }

      else
      {
        v447 = 2;
      }

      v617 = 621;
      v618 = 2048;
      v619 = 2;
      v620 = 2048;
      v621 = HasOneMaterial & 3;
      _os_log_send_and_compose_impl(v447, &v586, v622, 80, &dword_1E1C61000, v445, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
      _os_crash_msg();
      __break(1u);
LABEL_577:
      v586 = 0;
      v623 = 0u;
      v624 = 0u;
      memset(v622, 0, sizeof(v622));
      v448 = MEMORY[0x1E69E9C10];
      v449 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v615 = 136315906;
      *&v615[4] = "operator[]";
      v616 = 1024;
      if (v449)
      {
        v450 = 3;
      }

      else
      {
        v450 = 2;
      }

      v617 = 621;
      v618 = 2048;
      v619 = 3;
      v620 = 2048;
      v621 = 3;
      _os_log_send_and_compose_impl(v450, &v586, v622, 80, &dword_1E1C61000, v448, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
      _os_crash_msg();
      __break(1u);
      goto LABEL_581;
    }

    v340 = v622[4];
    goto LABEL_378;
  }

  *(&v560 + 1) = 0;
  ++v561;
LABEL_385:
  v32 = v554;
  v347 = v552;
  *&v603[2] = 0;
  memset(v601, 0, 24);
  *&v601[24] = 1;
  v348 = v6;
  v596.i8[0] = 0;
  re::DynamicArray<BOOL>::resize(v601, v6, &v596);
  if (v6)
  {
    v6 = 0;
    v350 = 16;
    v534 = vdupq_n_s32(0x358637BDu);
    v539 = vdupq_n_s32(0xB58637BD);
    while (1)
    {
      HasOneMaterial = *&v601[16];
      if (*&v601[16] <= v6)
      {
        break;
      }

      if ((*(*&v603[2] + v6) & 1) == 0)
      {
        HasOneMaterial = v557;
        if (v557 <= v6)
        {
          goto LABEL_490;
        }

        v351 = vaddq_f32(*(v559 + v350), v534);
        v587 = vaddq_f32(*(v559 + v350 - 16), v539);
        v588 = v351;
        if (!*(&v560 + 1))
        {
          goto LABEL_494;
        }
      }

      ++v6;
      v350 += 32;
      if (v348 == v6)
      {
        goto LABEL_393;
      }
    }

LABEL_485:
    v587.i64[0] = 0;
    v599 = 0u;
    v600 = 0u;
    v597 = 0u;
    v598 = 0u;
    v596 = 0u;
    v347 = MEMORY[0x1E69E9C10];
    v381 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v622[0]) = 136315906;
    *(v622 + 4) = "operator[]";
    WORD2(v622[1]) = 1024;
    if (v381)
    {
      v382 = 3;
    }

    else
    {
      v382 = 2;
    }

    *(&v622[1] + 6) = 789;
    WORD1(v622[2]) = 2048;
    *(&v622[2] + 4) = v6;
    WORD2(v622[3]) = 2048;
    *(&v622[3] + 6) = HasOneMaterial;
    _os_log_send_and_compose_impl(v382, &v587, &v596, 80, &dword_1E1C61000, v347, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_489:
    re::internal::assertLog(6, v349, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v354, v347);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v488, v490);
    __break(1u);
LABEL_490:
    v587.i64[0] = 0;
    v599 = 0u;
    v600 = 0u;
    v597 = 0u;
    v598 = 0u;
    v596 = 0u;
    v383 = MEMORY[0x1E69E9C10];
    v384 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v622[0]) = 136315906;
    *(v622 + 4) = "operator[]";
    WORD2(v622[1]) = 1024;
    if (v384)
    {
      v385 = 3;
    }

    else
    {
      v385 = 2;
    }

    *(&v622[1] + 6) = 797;
    WORD1(v622[2]) = 2048;
    *(&v622[2] + 4) = v6;
    WORD2(v622[3]) = 2048;
    *(&v622[3] + 6) = HasOneMaterial;
    _os_log_send_and_compose_impl(v385, &v587, &v596, 80, &dword_1E1C61000, v383, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_494:
    v592.i64[0] = 0;
    v599 = 0u;
    v600 = 0u;
    v597 = 0u;
    v598 = 0u;
    v596 = 0u;
    v386 = MEMORY[0x1E69E9C10];
    v387 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v622[0]) = 136315906;
    *(v622 + 4) = "operator[]";
    WORD2(v622[1]) = 1024;
    if (v387)
    {
      v388 = 3;
    }

    else
    {
      v388 = 2;
    }

    *(&v622[1] + 6) = 797;
    WORD1(v622[2]) = 2048;
    *(&v622[2] + 4) = 0;
    WORD2(v622[3]) = 2048;
    *(&v622[3] + 6) = 0;
    _os_log_send_and_compose_impl(v388, &v592, &v596, 80, &dword_1E1C61000, v386, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v622, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_498:
    *v615 = 0;
    v7[7] = 0u;
    v7[8] = 0u;
    v7[5] = 0u;
    v7[6] = 0u;
    v7[4] = 0u;
    v389 = MEMORY[0x1E69E9C10];
    v390 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v592.i32[0] = 136315906;
    *(v7->i64 + 4) = "operator[]";
    v592.i16[6] = 1024;
    if (v390)
    {
      v391 = 3;
    }

    else
    {
      v391 = 2;
    }

    *(&v7->i32[3] + 2) = 797;
    v593.i16[1] = 2048;
    *(v7[1].i64 + 4) = v6;
    v593.i16[6] = 2048;
    *(&v7[1].i64[1] + 6) = HasOneMaterial;
    _os_log_send_and_compose_impl(v391, v615, &v596, 80, &dword_1E1C61000, v389, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v592, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_502:
    v586 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v392 = MEMORY[0x1E69E9C10];
    v393 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v393)
    {
      v394 = 3;
    }

    else
    {
      v394 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = -v32;
    v620 = 2048;
    v621 = HasOneMaterial;
    _os_log_send_and_compose_impl(v394, &v586, v622, 80, &dword_1E1C61000, v392, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_506:
    v395 = (v66 - 1);
    v622[0] = 0;
    v599 = 0u;
    v600 = 0u;
    if (v395 >= v32)
    {
      v396 = v32;
    }

    else
    {
      v396 = v395;
    }

    v597 = 0uLL;
    v598 = 0uLL;
    v596 = 0uLL;
    v397 = MEMORY[0x1E69E9C10];
    v398 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v601 = 136315906;
    *&v601[4] = "operator[]";
    *&v601[12] = 1024;
    if (v398)
    {
      v399 = 3;
    }

    else
    {
      v399 = 2;
    }

    *&v601[14] = 613;
    *&v601[18] = 2048;
    *&v601[20] = v396;
    v602 = 2048;
    *v603 = v32;
    _os_log_send_and_compose_impl(v399, v622, &v596, 80, &dword_1E1C61000, v397, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v601, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_513:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v400 = MEMORY[0x1E69E9C10];
    v401 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v401)
    {
      v402 = 3;
    }

    else
    {
      v402 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 0;
    v620 = 2048;
    v621 = 0;
    _os_log_send_and_compose_impl(v402, &v583, v622, 80, &dword_1E1C61000, v400, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_517:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v403 = MEMORY[0x1E69E9C10];
    v404 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v404)
    {
      v405 = 3;
    }

    else
    {
      v405 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 1;
    v620 = 2048;
    v621 = 1;
    _os_log_send_and_compose_impl(v405, &v583, v622, 80, &dword_1E1C61000, v403, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_521:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v406 = MEMORY[0x1E69E9C10];
    v407 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v407)
    {
      v408 = 3;
    }

    else
    {
      v408 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 2;
    v620 = 2048;
    v621 = HasOneMaterial & 3;
    _os_log_send_and_compose_impl(v408, &v583, v622, 80, &dword_1E1C61000, v406, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_525:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v409 = MEMORY[0x1E69E9C10];
    v410 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v410)
    {
      v411 = 3;
    }

    else
    {
      v411 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 3;
    v620 = 2048;
    v621 = 3;
    _os_log_send_and_compose_impl(v411, &v583, v622, 80, &dword_1E1C61000, v409, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_529:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v412 = MEMORY[0x1E69E9C10];
    v413 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v413)
    {
      v414 = 3;
    }

    else
    {
      v414 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 4;
    v620 = 2048;
    v621 = HasOneMaterial & 7;
    _os_log_send_and_compose_impl(v414, &v583, v622, 80, &dword_1E1C61000, v412, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_533:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v415 = MEMORY[0x1E69E9C10];
    v416 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v416)
    {
      v417 = 3;
    }

    else
    {
      v417 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 5;
    v620 = 2048;
    v621 = 5;
    _os_log_send_and_compose_impl(v417, &v583, v622, 80, &dword_1E1C61000, v415, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_537:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v418 = MEMORY[0x1E69E9C10];
    v419 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v419)
    {
      v420 = 3;
    }

    else
    {
      v420 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 6;
    v620 = 2048;
    v621 = HasOneMaterial & 7;
    _os_log_send_and_compose_impl(v420, &v583, v622, 80, &dword_1E1C61000, v418, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_541:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v421 = MEMORY[0x1E69E9C10];
    v422 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v422)
    {
      v423 = 3;
    }

    else
    {
      v423 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 7;
    v620 = 2048;
    v621 = 7;
    _os_log_send_and_compose_impl(v423, &v583, v622, 80, &dword_1E1C61000, v421, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_545:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v424 = MEMORY[0x1E69E9C10];
    v425 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v425)
    {
      v426 = 3;
    }

    else
    {
      v426 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 8;
    v620 = 2048;
    v621 = HasOneMaterial & 0xF;
    _os_log_send_and_compose_impl(v426, &v583, v622, 80, &dword_1E1C61000, v424, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_549:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v427 = MEMORY[0x1E69E9C10];
    v428 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v428)
    {
      v429 = 3;
    }

    else
    {
      v429 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 9;
    v620 = 2048;
    v621 = 9;
    _os_log_send_and_compose_impl(v429, &v583, v622, 80, &dword_1E1C61000, v427, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_553:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v430 = MEMORY[0x1E69E9C10];
    v431 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v431)
    {
      v432 = 3;
    }

    else
    {
      v432 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 10;
    v620 = 2048;
    v621 = HasOneMaterial & 0xF;
    _os_log_send_and_compose_impl(v432, &v583, v622, 80, &dword_1E1C61000, v430, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
LABEL_557:
    v583 = 0;
    v623 = 0u;
    v624 = 0u;
    memset(v622, 0, sizeof(v622));
    v433 = MEMORY[0x1E69E9C10];
    v434 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v615 = 136315906;
    *&v615[4] = "operator[]";
    v616 = 1024;
    if (v434)
    {
      v435 = 3;
    }

    else
    {
      v435 = 2;
    }

    v617 = 621;
    v618 = 2048;
    v619 = 11;
    v620 = 2048;
    v621 = 11;
    _os_log_send_and_compose_impl(v435, &v583, v622, 80, &dword_1E1C61000, v433, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v615, 38, v491, v492);
    _os_crash_msg();
    __break(1u);
    goto LABEL_561;
  }

LABEL_393:
  v622[4] = 0;
  memset(v622, 0, 28);
  v589.i64[0] = 0;
  v588.i64[0] = 0;
  v587 = 0uLL;
  v588.i32[2] = 0;
  v352 = *&v601[16];
  if (!*&v601[16])
  {
    goto LABEL_415;
  }

  v6 = 0;
  v353 = 0;
  v8 = &v596;
  v7 = &v592;
  do
  {
    if (*(*&v603[2] + v6))
    {
      goto LABEL_396;
    }

    HasOneMaterial = v557;
    if (v557 <= v6)
    {
      goto LABEL_498;
    }

    v356 = *(v2 + 4);
    v357 = vsubq_f32(*(v559 + 32 * v6 + 16), *(v559 + 32 * v6));
    v357.i32[3] = 0;
    v596 = vmaxnmq_f32(v357, 0);
    v358 = vmulq_f32(v596, v596);
    if ((v358.f32[2] + vaddv_f32(*v358.f32)) < (v356 * v356))
    {
      goto LABEL_406;
    }

    v359 = 0;
    v360 = 0;
    do
    {
      if (v596.f32[v359] < v356)
      {
        ++v360;
      }

      ++v359;
    }

    while (v359 != 3);
    if (v360 <= 1u)
    {
LABEL_396:
      v6 = v622;
      if (!v353)
      {
        goto LABEL_407;
      }
    }

    else
    {
LABEL_406:
      v6 = &v587;
      if (!v353)
      {
LABEL_407:
        v355 = 0;
        goto LABEL_408;
      }
    }

    v354 = v353 - 1;
    if (v347 <= v354)
    {
      goto LABEL_489;
    }

    v355 = *(v32 + 4 * v354);
LABEL_408:
    HasOneMaterial = v353;
    v596.i32[0] = v355;
    if (v347 <= v353)
    {
      re::internal::assertLog(6, v349, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v353, v347);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v487, v489);
      __break(1u);
      goto LABEL_465;
    }

    if (v355 < *(v32 + 4 * v353))
    {
      do
      {
        re::DynamicArray<int>::add(v6, &v596);
        ++v596.i32[0];
      }

      while (v596.i32[0] < *(v32 + 4 * v353));
      v352 = *&v601[16];
    }

    v6 = ++v353;
  }

  while (v352 > v353);
  if (v622[2])
  {
    re::internal::extractMeshFromFaceSubset(v545, v622[4], v622[2], *(v2 + 16), &v596);
    goto LABEL_416;
  }

LABEL_415:
  re::GeomMesh::GeomMesh(&v596, 0);
LABEL_416:
  re::GeomMesh::operator=(v500, &v596);
  re::GeomMesh::~GeomMesh(&v596);
  if (v588.i64[0])
  {
    re::internal::extractMeshFromFaceSubset(v545, v589.i64[0], v588.i64[0], *(v2 + 16), &v596);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v596, 0);
  }

  re::GeomMesh::operator=(v540, &v596);
  re::GeomMesh::~GeomMesh(&v596);
  if (v587.i64[0] && v589.i64[0])
  {
    (*(*v587.i64[0] + 40))();
  }

  if (v622[0] && v622[4])
  {
    (*(*v622[0] + 40))();
  }

  if (*v601 && *&v603[2])
  {
    (*(**v601 + 40))();
  }

  if (v544)
  {
    bzero(&v596, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v597, 1uLL);
    ++DWORD2(v598);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v599 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v599 + 8), "vertexPosition", 1, 7);
    re::GeomMeshBuilder::appendMesh(&v596, v20);
    re::GeomMeshBuilder::appendMesh(&v596, v540);
    v362 = re::GeomMesh::operator=(v20, &v596.i64[1]);
    re::GeomMesh::setName(v362, v596.i64[0]);
    re::GeomMesh::freeName(&v596);
    re::GeomMesh::freeName(&v596);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v599 + 8));
    if (v597)
    {
      if (v599)
      {
        (*(*v597 + 40))();
      }
    }
  }

  re::GeomMesh::~GeomMesh(v540);
  re::GeomMesh::~GeomMesh(v545);
LABEL_433:
  if (v550)
  {
    if (v554)
    {
      (*(*v550 + 40))();
    }

    v554 = 0;
  }

  if (*(&v559 + 1))
  {
    if (v562)
    {
      (*(**(&v559 + 1) + 40))();
    }

    v562 = 0;
    v560 = 0uLL;
    *(&v559 + 1) = 0;
    ++v561;
  }

  if (v556[0] && v559)
  {
    (*(*v556[0] + 40))();
  }

  re::GeomMesh::freeName(&v563);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v568);
  if (v565 && v567)
  {
    (*(*v565 + 40))();
  }

  if (*(&v572 + 1))
  {
    if (v575)
    {
      (*(**(&v572 + 1) + 40))();
    }

    v575 = 0;
    v573 = 0uLL;
    *(&v572 + 1) = 0;
    ++v574;
  }

  if (v569[0] && v572)
  {
    (*(*v569[0] + 40))();
  }

  result = v576;
  if (v576)
  {
    if ((v578 & 1) == 0)
    {
      return (*(*v576 + 40))();
    }
  }

  return result;
}

uint64_t re::anonymous namespace::simplifyMeshWithCylinder(re::GeomMesh const&,re::anonymous namespace::OrientedBox const&,float,re::GeomMesh&)::$_0::operator()(uint64_t a1, unint64_t a2, float *a3)
{
  *v30 = 0;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v29 = 0;
  re::computeConvexHull2d(a1, a2, v27);
  v6 = v28;
  v7 = *v30;
  v8 = 0.0;
  if (v28)
  {
    v9 = *v30;
    v10 = v28;
    while (1)
    {
      v12 = *v9++;
      v11 = v12;
      if (a2 <= v12)
      {
        break;
      }

      *&v8 = *&v8 + sqrtf(vaddv_f32(vmul_f32(*(a1 + 8 * v11), *(a1 + 8 * v11))));
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    re::internal::assertLog(6, *v30, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v24);
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, a2);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v22, v25);
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v26);
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = 0;
    v14 = *&v8 / v28;
    *a3 = v14;
    while (v6 != v13)
    {
      v15 = *(v7 + 4 * v13);
      if (a2 <= v15)
      {
        goto LABEL_19;
      }

      v16 = *(v7 + 4 * (++v13 % v6));
      if (a2 <= v16)
      {
        goto LABEL_20;
      }

      v17 = vmul_f32(vadd_f32(*(a1 + 8 * v15), *(a1 + 8 * v16)), 0x3F0000003F000000);
      if ((vabds_f32(sqrtf(vaddv_f32(vmul_f32(v17, v17))), v14) / v14) > 0.1)
      {
        v18 = v13 - 1;
        goto LABEL_12;
      }
    }

    v18 = v6;
LABEL_12:
    if (v27[0])
    {
      v19 = v7 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      (*(*v27[0] + 40))();
    }

    return v6 <= v18;
  }

  return result;
}

uint64_t re::GeomMeshBuilder::setFaceVertices(uint64_t this, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(this + 32);
  if (v7 <= a2)
  {
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v32 = 797;
    v33 = 2048;
    v34 = v6;
    v35 = 2048;
    v36 = v7;
    _os_log_send_and_compose_impl(v23, &v28, &v37, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v12 = this;
  v13 = (*(this + 48) + 16 * a2);
  v14 = *v13;
  v15 = v13[3];
  if (v14 != -1 && v15 != -1)
  {
    v17 = *(this + 416);
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v19 = re::internal::GeomAttributeContainer::attributeByIndex((v12 + 49), i);
        this = re::internal::accessFaceVaryingAttributeSubmesh(v19, v20);
      }

      v7 = v12[4];
    }
  }

  if (v7 <= v6)
  {
LABEL_16:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v32 = 789;
    v33 = 2048;
    v34 = v6;
    v35 = 2048;
    v36 = v7;
    _os_log_send_and_compose_impl(v26, &v28, &v37, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
  }

  v21 = (v12[6] + 16 * v6);
  *v21 = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  return this;
}

uint64_t re::anonymous namespace::buildBoxProxy(re::GeomMesh *a1, float32x4_t *a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v108 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v10 = vmulq_n_f32(a2[2], a2->f32[0] * 0.5);
  v11 = vmulq_n_f32(a2[3], a2->f32[1] * 0.5);
  v12 = vmulq_n_f32(a2[4], a2->f32[2] * 0.5);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  if (a3)
  {
    v13 = 0;
    v14 = vsubq_f32(v9, v10);
    v15 = vsubq_f32(v14, v11);
    v91 = vsubq_f32(v15, v12);
    v92 = vaddq_f32(v15, v12);
    v16 = vaddq_f32(v14, v11);
    v93 = vaddq_f32(v16, v12);
    v94 = vsubq_f32(v16, v12);
    v17 = 4;
    v90[0] = xmmword_1E3062D20;
    v18 = 3;
    v19 = 2;
    v20 = 1;
    v21 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    v21 = 0;
    v20 = -1;
    v19 = -1;
    v18 = -1;
    v13 = -1;
    if ((a4 & 1) == 0)
    {
LABEL_3:
      v22 = -1;
      v23 = -1;
      v24 = -1;
      v25 = -1;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  v26 = vaddq_f32(v10, v9);
  v27 = vsubq_f32(v26, v11);
  *(&v91 + v17) = vsubq_f32(v27, v12);
  v24 = v17 | 1;
  v28 = &v90[v21];
  v29 = vaddq_f32(v26, v11);
  *(&v91 + (v17 | 1)) = vsubq_f32(v29, v12);
  v23 = v17 | 2;
  *v28 = v17;
  v28[1] = v17 | 1;
  *(&v91 + v23) = vaddq_f32(v29, v12);
  v22 = v17 | 3;
  *(&v91 + v22) = vaddq_f32(v27, v12);
  v25 = v17;
  v17 += 4;
  v28[2] = v23;
  v28[3] = v22;
  ++v21;
  if ((a5 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((a3 & 1) == 0)
  {
    *(&v91 + v17) = vsubq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
    v13 = v17++;
  }

  LODWORD(v90[v21]) = v13;
  if (v25 == -1)
  {
    *(&v91 + v17) = vsubq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
    v25 = v17++;
  }

  DWORD1(v90[v21]) = v25;
  if (v22 == -1)
  {
    *(&v91 + v17) = vaddq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
    v22 = v17++;
  }

  v30 = &v90[v21];
  *(v30 + 2) = v22;
  if ((a3 & 1) == 0)
  {
    *(&v91 + v17) = vaddq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
    v20 = v17++;
  }

  *(v30 + 3) = v20;
  ++v21;
LABEL_16:
  if (a6)
  {
    if (a3)
    {
      v31 = v21;
      LODWORD(v90[v21]) = v18;
    }

    else
    {
      v32 = vaddq_f32(vsubq_f32(v9, v10), v11);
      *(&v91 + v17) = vsubq_f32(v32, v12);
      v19 = v17 + 1;
      v31 = v21;
      LODWORD(v90[v21]) = v17;
      *(&v91 + v17 + 1) = vaddq_f32(v32, v12);
      v18 = v17;
      v17 += 2;
    }

    v33 = &v90[v31];
    *(v33 + 1) = v19;
    if (v23 == -1)
    {
      *(&v91 + v17) = vaddq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
      v23 = v17++;
    }

    *(v33 + 2) = v23;
    if (v24 == -1)
    {
      *(&v91 + v17) = vsubq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
      v24 = v17++;
    }

    HIDWORD(v90[v31]) = v24;
    ++v21;
    if ((a7 & 1) == 0)
    {
LABEL_18:
      if ((a8 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_41;
    }
  }

  else if ((a7 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v13 == -1)
  {
    *(&v91 + v17) = vsubq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
    v34 = v17 + 1;
  }

  else
  {
    v34 = v17;
    v17 = v13;
  }

  LODWORD(v90[v21]) = v17;
  if (v18 == -1)
  {
    *(&v91 + v34) = vsubq_f32(vaddq_f32(vsubq_f32(v9, v10), v11), v12);
    v35 = v34 + 1;
  }

  else
  {
    v35 = v34;
    v34 = v18;
  }

  DWORD1(v90[v21]) = v34;
  if (v24 == -1)
  {
    *(&v91 + v35) = vsubq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
    v36 = v35 + 1;
  }

  else
  {
    v36 = v35;
    v35 = v24;
  }

  v37 = &v90[v21];
  *(v37 + 2) = v35;
  if (v25 == -1)
  {
    *(&v91 + v36) = vsubq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
    v17 = v36 + 1;
  }

  else
  {
    v17 = v36;
    v36 = v25;
  }

  *(v37 + 3) = v36;
  ++v21;
  if (a8)
  {
LABEL_41:
    if (v20 == -1)
    {
      *(&v91 + v17) = vaddq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
      v38 = v17 + 1;
    }

    else
    {
      v38 = v17;
      v17 = v20;
    }

    LODWORD(v90[v21]) = v17;
    if (v22 == -1)
    {
      *(&v91 + v38) = vaddq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
      v39 = v38 + 1;
    }

    else
    {
      v39 = v38;
      v38 = v22;
    }

    DWORD1(v90[v21]) = v38;
    if (v23 == -1)
    {
      *(&v91 + v39) = vaddq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
      v40 = v39 + 1;
    }

    else
    {
      v40 = v39;
      v39 = v23;
    }

    v41 = &v90[v21];
    *(v41 + 2) = v39;
    if (v19 == -1)
    {
      *(&v91 + v40) = vaddq_f32(vaddq_f32(vsubq_f32(v9, v10), v11), v12);
      v17 = v40 + 1;
    }

    else
    {
      v17 = v40;
      v40 = v19;
    }

    *(v41 + 3) = v40;
    ++v21;
  }

LABEL_54:
  bzero(&v74, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v76, 1uLL);
  ++v78;
  re::internal::GeomAttributeManager::GeomAttributeManager(v80);
  re::internal::GeomAttributeManager::addAttribute(v80, "vertexPosition", 1, 7);
  if (v75 > v17 && v77 && (v77 - 1) > v77)
  {
      ;
    }
  }

  LODWORD(v75) = v17;
  v81 = v17;
  if (v82)
  {
    v43 = v83;
    v44 = 8 * v82;
    do
    {
      v45 = *v43++;
      (*(*v45 + 80))(v45, v81);
      v44 -= 8;
    }

    while (v44);
  }

  if (v77 > v21)
  {
    v46 = v88;
    if (v88)
    {
      v47 = 0;
      do
      {
        v48 = re::internal::GeomAttributeContainer::attributeByIndex(&v87, v47);
        re::internal::accessFaceVaryingAttributeSubmesh(v48, v49);
        ++v47;
      }

      while (v46 != v47);
    }
  }

  v50 = v21;
  re::DynamicArray<re::GeomCell4>::resize(v76, v21);
  v84 = v21;
  if (v85)
  {
    v51 = v86;
    v52 = 8 * v85;
    do
    {
      v53 = *v51++;
      (*(*v53 + 80))(v53, v84);
      v52 -= 8;
    }

    while (v52);
  }

  if (v21)
  {
    v54 = 0;
    v55 = v90 + 2;
    do
    {
      v56 = *(v55 - 2);
      v57 = *(v55 - 1);
      v58 = *v55;
      v59 = v55[1];
      v55 += 4;
      re::GeomMeshBuilder::setFaceVertices(&v74, v54++, v56, v57, v58, v59);
    }

    while (v50 != v54);
  }

  v60 = re::GeomMesh::GeomMesh(a1, 0);
  v61 = re::GeomMesh::operator=(v60, &v75);
  re::GeomMesh::setName(v61, v74);
  re::GeomMesh::freeName(&v74);
  v62 = re::GeomMesh::modifyVertexPositions(a1);
  if (v17)
  {
    v64 = v63;
    v65 = v17;
    v66 = &v91;
    v67 = v63;
    do
    {
      if (!v67)
      {
        v89 = 0;
        memset(v107, 0, 80);
        v70 = MEMORY[0x1E69E9C10];
        v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v99 = 136315906;
        v100 = "operator[]";
        v101 = 1024;
        if (v71)
        {
          v72 = 3;
        }

        else
        {
          v72 = 2;
        }

        v102 = 621;
        v103 = 2048;
        v104 = v64;
        v105 = 2048;
        v106 = v64;
        _os_log_send_and_compose_impl(v72, &v89, v107, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v99, 38, v73, v74);
        _os_crash_msg();
        __break(1u);
      }

      v68 = *v66++;
      *v62++ = v68;
      --v67;
      --v65;
    }

    while (v65);
  }

  re::GeomMesh::freeName(&v74);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v80);
  result = v76[0];
  if (v76[0] && v79)
  {
    return (*(*v76[0] + 40))();
  }

  return result;
}

unsigned int *re::anonymous namespace::BoundingBoxTree::buildTree(unsigned int *result, float32x4_t **a2, unsigned int a3, char *a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = *result;
  *result = v6 + 1;
  v7 = *(result + 8);
  if (v7 <= v6)
  {
    goto LABEL_49;
  }

  v11 = result;
  v7 = (*(result + 10) + 48 * v6);
  if (!a3)
  {
    v19.i64[0] = 0x7F0000007FLL;
    v19.i64[1] = 0x7F0000007FLL;
    v7[1] = vnegq_f32(v19);
    v7[2] = v19;
    *a2 = v7;
    goto LABEL_9;
  }

  v12 = 0;
  v6 = *(result + 3);
  v13.i64[0] = 0x7F0000007FLL;
  v13.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v13);
  do
  {
    v15 = *&a4[v12];
    if (v6 <= v15)
    {
      v43 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v46 = 797;
      v47 = 2048;
      v48 = v15;
      v49 = 2048;
      v50 = v6;
      _os_log_send_and_compose_impl(v32, &v43, &v51, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v42);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v43 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      if (v34)
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v46 = 797;
      v47 = 2048;
      v48 = v15;
      v49 = 2048;
      v50 = v6;
      _os_log_send_and_compose_impl(v35, &v43, &v51, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v42);
      _os_crash_msg();
      __break(1u);
LABEL_45:
      v43 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v36 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v46 = 797;
      v47 = 2048;
      v48 = v5;
      v49 = 2048;
      v50 = v6;
      _os_log_send_and_compose_impl(v38, &v43, &v51, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v42);
      _os_crash_msg();
      __break(1u);
LABEL_49:
      v43 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v46 = 789;
      v47 = 2048;
      v48 = v6;
      v49 = 2048;
      v50 = v7;
      _os_log_send_and_compose_impl(v41, &v43, &v51, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v42);
      _os_crash_msg();
      __break(1u);
    }

    v16 = (*(result + 5) + 32 * v15);
    v14.i32[3] = 0;
    v17 = *v16;
    v18 = v16[1];
    v17.i32[3] = 0;
    v13.i32[3] = 0;
    v14 = vminnmq_f32(v14, v17);
    v18.i32[3] = 0;
    v13 = vmaxnmq_f32(v13, v18);
    v12 += 4;
  }

  while (4 * a3 != v12);
  v7[1] = v14;
  v7[2] = v13;
  *a2 = v7;
  if (a3 == 1)
  {
    v7->i32[0] = *a4;
    v7->i64[1] = 0;
    return result;
  }

LABEL_9:
  v20 = vsubq_f32(v7[2], v7[1]);
  v21 = 2;
  if (v20.f32[1] >= v20.f32[2])
  {
    v21 = 1;
  }

  if (v20.f32[0] >= v20.f32[2] && v20.f32[0] >= v20.f32[1])
  {
    v21 = 0;
  }

  v23 = a4;
  if (a3)
  {
    v24 = (v7[2].f32[v21] + v7[1].f32[v21]) * 0.5;
    v23 = &a4[4 * a3];
    v6 = *(a5 + 16);
    v25 = a4;
    do
    {
      v26 = *(a5 + 32) + 4 * v21;
      while (1)
      {
        v15 = *v25;
        if (v6 <= v15)
        {
          goto LABEL_41;
        }

        if (*(v26 + 16 * v15) >= v24)
        {
          break;
        }

        v25 += 4;
        if (v25 == v23)
        {
          goto LABEL_29;
        }
      }

      do
      {
        v23 -= 4;
        if (v23 == v25)
        {
          v23 = v25;
          goto LABEL_29;
        }

        v5 = *v23;
        if (v6 <= v5)
        {
          goto LABEL_45;
        }
      }

      while (*(v26 + 16 * v5) >= v24);
      *v25 = v5;
      v25 += 4;
      *v23 = v15;
    }

    while (v23 != v25);
  }

LABEL_29:
  v27 = (v23 - a4) >> 2;
  if (v27 == a3 || v27 == 0)
  {
    v29 = a3 >> 1;
  }

  else
  {
    v29 = (v23 - a4) >> 2;
  }

  *&v51 = 0;
  *v44 = 0;
  v30 = v51;
  v7->i64[0] = *v44;
  v7->i64[1] = v30;
  return result;
}

void *re::DynamicArray<re::anonymous namespace::BoundingBoxTree::Node>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 48 * a2, 16);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 48 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 48 * a2, *(*v4 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v7, v8);
        __break(1u);
      }

      else
      {
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

float32x4_t *re::anonymous namespace::BoundingBoxTree::findBoxOverlaps(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v7 = a1;
  v36 = *MEMORY[0x1E69E9840];
  result = a1->i64[1];
  if (result)
  {
    while (1)
    {
      v9 = vcgtq_f32(*a3, v7[2]);
      v9.i32[3] = v9.i32[2];
      if ((vmaxvq_u32(v9) & 0x80000000) != 0)
      {
        break;
      }

      v10 = vcgtq_f32(v7[1], a3[1]);
      v10.i32[3] = v10.i32[2];
      if ((vmaxvq_u32(v10) & 0x80000000) != 0)
      {
        break;
      }

      v7 = v7->i64[0];
      result = v7->i64[1];
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v7->i32[0] != a2)
    {
      v11 = vcgtq_f32(*a3, v7[2]);
      v11.i32[3] = v11.i32[2];
      if ((vmaxvq_u32(v11) & 0x80000000) == 0)
      {
        v12 = vcgtq_f32(v7[1], a3[1]);
        v12.i32[3] = v12.i32[2];
        if ((vmaxvq_u32(v12) & 0x80000000) == 0)
        {
          v13 = *(a4 + 16);
          if (v13 <= a2)
          {
            v22 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            v16 = MEMORY[0x1E69E9C10];
            v15 = a2;
            v23 = 136315906;
            v24 = "operator[]";
            v25 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v17 = 3;
            }

            else
            {
              v17 = 2;
            }

            v26 = 789;
            v27 = 2048;
            v28 = a2;
            v29 = 2048;
            v30 = v13;
            _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
            _os_crash_msg();
            __break(1u);
          }

          else
          {
            v14 = *(a4 + 32);
            *(v14 + a2) = 1;
            v15 = v7->u32[0];
            if (v13 > v15)
            {
              *(v14 + v15) = 1;
              return result;
            }
          }

          v22 = 0;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          v18 = MEMORY[0x1E69E9C10];
          v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v23 = 136315906;
          v24 = "operator[]";
          v25 = 1024;
          if (v19)
          {
            v20 = 3;
          }

          else
          {
            v20 = 2;
          }

          v26 = 789;
          v27 = 2048;
          v28 = v15;
          v29 = 2048;
          v30 = v13;
          _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
          _os_crash_msg();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t re::GeomMeshBVHTree::buildTree(uint64_t a1, unint64_t a2, unsigned int a3, char *a4, uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  *(a1 + 8) = v7 + 1;
  v8 = *(a1 + 32);
  if (v8 <= v7)
  {
    goto LABEL_71;
  }

  v14 = (*(a1 + 48) + 48 * v7);
  result = re::GeomMesh::accessVertexPositions(*a1);
  if (!a3)
  {
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v14[1] = vnegq_f32(v33);
    v14[2] = v33;
    *a2 = v14;
    goto LABEL_15;
  }

  v7 = v16;
  v17 = a2;
  v18 = a5;
  v19 = 0;
  a2 = *(*a1 + 40);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  v21 = vnegq_f32(v20);
  do
  {
    v8 = *&a4[v19];
    if (a2 <= v8)
    {
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v70 = 797;
      v71 = 2048;
      v72 = v8;
      v73 = 2048;
      v74 = a2;
      _os_log_send_and_compose_impl(v44, &v67, &v75, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v45 = MEMORY[0x1E69E9C10];
      v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      v70 = 613;
      v71 = 2048;
      v72 = v23;
      v73 = 2048;
      v74 = v7;
      _os_log_send_and_compose_impl(v47, &v67, &v75, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v48 = MEMORY[0x1E69E9C10];
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v70 = 613;
      v71 = 2048;
      v72 = v6;
      v73 = 2048;
      v74 = v7;
      _os_log_send_and_compose_impl(v50, &v67, &v75, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      v70 = 613;
      v71 = 2048;
      v72 = v5;
      v73 = 2048;
      v74 = v7;
      _os_log_send_and_compose_impl(v53, &v67, &v75, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
LABEL_59:
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v54 = MEMORY[0x1E69E9C10];
      v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (v55)
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      v70 = 613;
      v71 = 2048;
      v72 = v8;
      v73 = 2048;
      v74 = v7;
      _os_log_send_and_compose_impl(v56, &v67, &v75, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
LABEL_63:
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v57 = MEMORY[0x1E69E9C10];
      v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (v58)
      {
        v59 = 3;
      }

      else
      {
        v59 = 2;
      }

      v70 = 797;
      v71 = 2048;
      v72 = v8;
      v73 = 2048;
      v74 = v7;
      _os_log_send_and_compose_impl(v59, &v67, &v75, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
LABEL_67:
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v60 = MEMORY[0x1E69E9C10];
      v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (v61)
      {
        v62 = 3;
      }

      else
      {
        v62 = 2;
      }

      v70 = 797;
      v71 = 2048;
      v72 = a2;
      v73 = 2048;
      v74 = v7;
      _os_log_send_and_compose_impl(v62, &v67, &v75, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v67 = 0;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v63 = MEMORY[0x1E69E9C10];
      v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v68 = 136315906;
      *&v68[4] = "operator[]";
      v69 = 1024;
      if (v64)
      {
        v65 = 3;
      }

      else
      {
        v65 = 2;
      }

      v70 = 789;
      v71 = 2048;
      v72 = v7;
      v73 = 2048;
      v74 = v8;
      _os_log_send_and_compose_impl(v65, &v67, &v75, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v66);
      _os_crash_msg();
      __break(1u);
    }

    v22 = (*(*a1 + 56) + 16 * v8);
    v23 = *v22;
    v6 = v22[1];
    v5 = v22[2];
    v8 = v22[3];
    if (v8 != -1)
    {
      if (v8 >= v16)
      {
        goto LABEL_59;
      }

      v24 = *(result + 16 * v8);
      v21.i32[3] = 0;
      v24.i32[3] = 0;
      v21 = vminnmq_f32(v21, v24);
      v20.i32[3] = 0;
      v20 = vmaxnmq_f32(v20, v24);
    }

    if (v23 >= v16)
    {
      goto LABEL_47;
    }

    if (v6 >= v16)
    {
      goto LABEL_51;
    }

    if (v5 >= v16)
    {
      goto LABEL_55;
    }

    v20.i32[3] = 0;
    v25 = *(result + 16 * v23);
    v25.i32[3] = 0;
    v26 = vmaxnmq_f32(v20, v25);
    v26.i32[3] = 0;
    v27 = *(result + 16 * v6);
    v27.i32[3] = 0;
    v28 = vmaxnmq_f32(v26, v27);
    v21.i32[3] = 0;
    v29 = vminnmq_f32(v21, v25);
    v29.i32[3] = 0;
    v30 = vminnmq_f32(v29, v27);
    v31 = *(result + 16 * v5);
    v30.i32[3] = 0;
    v31.i32[3] = 0;
    v21 = vminnmq_f32(v30, v31);
    v28.i32[3] = 0;
    v20 = vmaxnmq_f32(v28, v31);
    v19 += 4;
  }

  while (4 * a3 != v19);
  v14[1] = v21;
  v14[2] = v20;
  *v17 = v14;
  a5 = v18;
  if (a3 == 1)
  {
    v32 = 0;
    v14->i32[0] = *a4;
    goto LABEL_42;
  }

LABEL_15:
  v34 = vsubq_f32(v14[2], v14[1]);
  v35 = 2;
  if (v34.f32[1] >= v34.f32[2])
  {
    v35 = 1;
  }

  if (v34.f32[0] >= v34.f32[2] && v34.f32[0] >= v34.f32[1])
  {
    v35 = 0;
  }

  v37 = a4;
  if (a3)
  {
    v38 = (v14[2].f32[v35] + v14[1].f32[v35]) * 0.5;
    v37 = &a4[4 * a3];
    v7 = *(a5 + 16);
    v39 = a4;
    do
    {
      v40 = *(a5 + 32) + 4 * v35;
      while (1)
      {
        v8 = *v39;
        if (v7 <= v8)
        {
          goto LABEL_63;
        }

        if (*(v40 + 16 * v8) >= v38)
        {
          break;
        }

        v39 += 4;
        if (v39 == v37)
        {
          goto LABEL_35;
        }
      }

      do
      {
        v37 -= 4;
        if (v37 == v39)
        {
          v37 = v39;
          goto LABEL_35;
        }

        a2 = *v37;
        if (v7 <= a2)
        {
          goto LABEL_67;
        }
      }

      while (*(v40 + 16 * a2) >= v38);
      *v39 = a2;
      v39 += 4;
      *v37 = v8;
    }

    while (v37 != v39);
  }

LABEL_35:
  v41 = (v37 - a4) >> 2;
  if (v41 == a3 || v41 == 0)
  {
    v43 = a3 >> 1;
  }

  else
  {
    v43 = (v37 - a4) >> 2;
  }

  *&v75 = 0;
  *v68 = 0;
  re::GeomMeshBVHTree::buildTree(a1, &v75, v43, a4, a5);
  result = re::GeomMeshBVHTree::buildTree(a1, v68, a3 - v43, &a4[4 * v43], a5);
  v32 = v75;
  v14->i64[0] = *v68;
LABEL_42:
  v14->i64[1] = v32;
  return result;
}

uint64_t re::GeomMeshBVHTree::init(uint64_t this, const re::GeomMesh *a2)
{
  v4 = this;
  v79 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0;
  v5 = *(a2 + 5);
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v61 = 0;
  if (!v5)
  {
    *this = 0;
    *(this + 32) = 0;
    ++*(this + 40);
    return this;
  }

  v6 = a2;
  *this = a2;
  re::DynamicArray<re::Vector3<float>>::resize(&v58, v5);
  v7 = re::GeomMesh::accessVertexPositions(v6);
  v9 = v8;
  v10 = 0;
  __asm
  {
    FMOV            V0.4S, #3.0
    FMOV            V1.4S, #0.25
  }

  do
  {
    v17 = *(v6 + 5);
    if (v17 <= v10)
    {
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v31 = MEMORY[0x1E69E9C10];
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      if (v32)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      *&v64[14] = 797;
      *&v64[18] = 2048;
      *&v64[20] = v10;
      v65 = 2048;
      *v66 = v17;
      _os_log_send_and_compose_impl(v33, v67, &v74, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
LABEL_40:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v34 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      *&v64[14] = 613;
      *&v64[18] = 2048;
      *&v64[20] = v17;
      v65 = 2048;
      *v66 = v9;
      _os_log_send_and_compose_impl(v36, v67, &v74, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
LABEL_44:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v37 = MEMORY[0x1E69E9C10];
      v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      if (v38)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      *&v64[14] = 613;
      *&v64[18] = 2048;
      *&v64[20] = v2;
      v65 = 2048;
      *v66 = v9;
      _os_log_send_and_compose_impl(v39, v67, &v74, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
LABEL_48:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v40 = MEMORY[0x1E69E9C10];
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      if (v41)
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      *&v64[14] = 613;
      *&v64[18] = 2048;
      *&v64[20] = v3;
      v65 = 2048;
      *v66 = v9;
      _os_log_send_and_compose_impl(v42, v67, &v74, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v63 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v67 = 136315906;
      *&v67[4] = "operator[]";
      v68 = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v69 = 789;
      v70 = 2048;
      v71 = v6;
      v72 = 2048;
      v73 = v6;
      _os_log_send_and_compose_impl(v45, &v63, &v74, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
LABEL_56:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      *&v64[14] = 613;
      *&v64[18] = 2048;
      *&v64[20] = v17;
      v65 = 2048;
      *v66 = v9;
      _os_log_send_and_compose_impl(v48, v67, &v74, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
LABEL_60:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      *&v64[14] = 789;
      *&v64[18] = 2048;
      *&v64[20] = v10;
      v65 = 2048;
      *v66 = v2;
      _os_log_send_and_compose_impl(v51, v67, &v74, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
LABEL_64:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v64 = 136315906;
      *&v64[4] = "operator[]";
      *&v64[12] = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      *&v64[14] = 789;
      *&v64[18] = 2048;
      *&v64[20] = v10;
      v65 = 2048;
      *v66 = v17;
      _os_log_send_and_compose_impl(v54, v67, &v74, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v64, 38, v58, v59);
      _os_crash_msg();
      __break(1u);
      goto LABEL_68;
    }

    v18 = (*(v6 + 7) + 16 * v10);
    v17 = *v18;
    if (v17 >= v8)
    {
      goto LABEL_40;
    }

    v2 = v18[1];
    if (v2 >= v8)
    {
      goto LABEL_44;
    }

    v3 = v18[2];
    if (v3 >= v8)
    {
      goto LABEL_48;
    }

    v19 = *(v7 + 16 * v17);
    v17 = v18[3];
    v20 = *(v7 + 16 * v2);
    v21 = *(v7 + 16 * v3);
    if (v17 == -1)
    {
      v17 = v60;
      if (v60 <= v10)
      {
        goto LABEL_64;
      }

      v22 = vdivq_f32(vaddq_f32(vaddq_f32(v19, v20), v21), _Q0);
    }

    else
    {
      if (v17 >= v8)
      {
        goto LABEL_56;
      }

      v2 = v60;
      if (v60 <= v10)
      {
        goto LABEL_60;
      }

      v22 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v19, v20), v21), *(v7 + 16 * v17)), _Q1);
    }

    *(v62 + 16 * v10++) = v22;
  }

  while (v10 != v5);
  *&v66[2] = 0;
  memset(v64, 0, sizeof(v64));
  re::DynamicArray<float>::resize(v64, v5);
  v23 = 0;
  v6 = *&v64[16];
  v24 = *&v66[2];
  do
  {
    if (v6 == v23)
    {
      goto LABEL_52;
    }

    *(v24 + 4 * v23) = v23;
    v23 = (v23 + 1);
  }

  while (v5 != v23);
  v25 = (2 * v5 - 1);
  v26 = *(v4 + 32);
  if (v26 >= v25)
  {
    if (v26 > v25)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*(v4 + 24) < v25)
    {
      v26 = *(v4 + 32);
    }

    if (v25 > v26 && (v25 - v26) >= 1)
    {
      v27 = *(v4 + 48) + 48 * v26;
      v28 = (2 * v5 - 2) - v26 + 2;
      v29.i64[0] = 0x7F0000007FLL;
      v29.i64[1] = 0x7F0000007FLL;
      v30 = vnegq_f32(v29);
      do
      {
        *v27 = 0;
        *(v27 + 8) = 0;
        *(v27 + 16) = v30;
        *(v27 + 32) = v29;
        v27 += 48;
        --v28;
      }

      while (v28 > 1);
    }

LABEL_27:
    *(v4 + 32) = v25;
    ++*(v4 + 40);
    v6 = *&v64[16];
  }

  if (!v6)
  {
LABEL_68:
    v63 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v67 = 136315906;
    *&v67[4] = "operator[]";
    v68 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v69 = 789;
    v70 = 2048;
    v71 = 0;
    v72 = 2048;
    v73 = 0;
    _os_log_send_and_compose_impl(v57, &v63, &v74, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v58, v59);
    _os_crash_msg();
    __break(1u);
  }

  re::GeomMeshBVHTree::buildTree(v4, &v74, v5, *&v66[2], &v58);
  if (*v64 && *&v66[2])
  {
    (*(**v64 + 40))();
  }

  this = v58;
  if (v58)
  {
    if (v62)
    {
      return (*(*v58 + 40))();
    }
  }

  return this;
}

void re::GeomMeshBVHTree::computeClosestPointHelper(re::GeomMesh **a1, void *a2, __n128 *a3, float *a4, uint64_t a5)
{
  v11 = a2;
  v76 = *MEMORY[0x1E69E9840];
  for (i = a2; ; i = v11)
  {
    v16 = i[1];
    v15 = i + 1;
    v14 = v16;
    if (!v16)
    {
      break;
    }

    v17 = 0;
    v18 = 0.0;
    do
    {
      v19 = a3->n128_f32[v17];
      v20 = *(v14 + v17 * 4 + 16);
      if (v19 >= v20)
      {
        v22 = *(v14 + v17 * 4 + 32);
        v21 = 0.0;
        if (v19 > v22)
        {
          v21 = v19 - v22;
        }
      }

      else
      {
        v21 = v19 - v20;
      }

      v18 = v18 + (v21 * v21);
      ++v17;
    }

    while (v17 != 3);
    v23 = 0;
    v24 = *v11;
    v25 = 0.0;
    do
    {
      v26 = a3->n128_f32[v23];
      v27 = *(v24 + v23 * 4 + 16);
      if (v26 >= v27)
      {
        v29 = *(v24 + v23 * 4 + 32);
        v28 = 0.0;
        if (v26 > v29)
        {
          v28 = v26 - v29;
        }
      }

      else
      {
        v28 = v26 - v27;
      }

      v25 = v25 + (v28 * v28);
      ++v23;
    }

    while (v23 != 3);
    v30 = *a4;
    if (v18 >= v25)
    {
      if (v25 < v30)
      {
        re::GeomMeshBVHTree::computeClosestPointHelper(a1, *v11, a3, a4, a5);
        v30 = *a4;
      }

      v11 = v15;
      if (v18 >= v30)
      {
        return;
      }
    }

    else
    {
      if (v18 < v30)
      {
        re::GeomMeshBVHTree::computeClosestPointHelper(a1, v14, a3, a4, a5);
        v30 = *a4;
      }

      if (v25 >= v30)
      {
        return;
      }
    }

    v11 = *v11;
  }

  v31 = re::GeomMesh::accessVertexPositions(*a1);
  v33 = *v11;
  v34 = *a1;
  v35 = *(*a1 + 5);
  if (v35 <= v33)
  {
    v61.i64[0] = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v66 = 797;
    v67 = 2048;
    v68 = v33;
    v69 = 2048;
    v70 = v35;
    _os_log_send_and_compose_impl(v45, &v61, &v71, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v58, v60);
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  LODWORD(v15) = v32;
  v36 = (*(v34 + 7) + 16 * v33);
  v35 = *v36;
  if (v35 >= v32)
  {
LABEL_39:
    v61.i64[0] = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v66 = 613;
    v67 = 2048;
    v68 = v35;
    v69 = 2048;
    v70 = v15;
    _os_log_send_and_compose_impl(v48, &v61, &v71, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v58, v60);
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  v6 = v36[1];
  if (v6 >= v32)
  {
LABEL_43:
    v61.i64[0] = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v66 = 613;
    v67 = 2048;
    v68 = v6;
    v69 = 2048;
    v70 = v15;
    _os_log_send_and_compose_impl(v51, &v61, &v71, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v58, v60);
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  v7 = v36[2];
  if (v7 >= v32)
  {
LABEL_47:
    v61.i64[0] = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v66 = 613;
    v67 = 2048;
    v68 = v7;
    v69 = 2048;
    v70 = v15;
    _os_log_send_and_compose_impl(v54, &v61, &v71, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v58, v60);
    _os_crash_msg();
    __break(1u);
    goto LABEL_51;
  }

  v5 = v36[3];
  v37 = 0uLL;
  v59 = 0u;
  v61 = 0u;
  if (v5 != -1)
  {
    if (v5 < v32)
    {
      *&v71 = 0;
      v38 = re::computeDistanceSquaredFromPointToQuad(a3, (v31 + 16 * v35), (v31 + 16 * v6), (v31 + 16 * v7), (v31 + 16 * v5), &v61, &v71);
      *&v39 = v71;
      DWORD2(v39) = 0;
      v59 = v39;
      goto LABEL_32;
    }

LABEL_51:
    v62 = 0;
    v74 = v37;
    v75 = v37;
    v72 = v37;
    v73 = v37;
    v71 = v37;
    v55 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v63 = 136315906;
    v64 = "operator[]";
    v65 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v66 = 613;
    v67 = 2048;
    v68 = v5;
    v69 = 2048;
    v70 = v15;
    _os_log_send_and_compose_impl(v57, &v62, &v71, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v63, 38, v59, *(&v59 + 1));
    _os_crash_msg();
    __break(1u);
  }

  geom_closest_point_to_triangle_3f();
  v61 = v40;
  v41 = vsubq_f32(v40, *a3);
  v42 = vmulq_f32(v41, v41);
  v38 = v42.f32[2] + vaddv_f32(*v42.f32);
LABEL_32:
  if (v38 < *a4)
  {
    *a4 = v38;
    *a5 = v33;
    v43 = v61;
    *(a5 + 16) = v59;
    *(a5 + 32) = v43;
  }
}

float re::GeomMeshBVHTree::computeClosestPoint(re::GeomMeshBVHTree *a1, __n128 *a2, _DWORD *a3)
{
  v8 = INFINITY;
  *a3 = -1;
  if (!*(a1 + 4))
  {
    return INFINITY;
  }

  v6 = re::GeomMeshBVHTree::root(a1);
  re::GeomMeshBVHTree::computeClosestPointHelper(a1, v6, a2, &v8, a3);
  return v8;
}

uint64_t re::GeomMeshBVHTree::root(re::GeomMeshBVHTree *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(this + 4))
  {
    v5 = 0;
    memset(v14, 0, sizeof(v14));
    v2 = MEMORY[0x1E69E9C10];
    v6 = 136315906;
    v7 = "operator[]";
    v8 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v9 = 797;
    v10 = 2048;
    v11 = 0;
    v12 = 2048;
    v13 = 0;
    _os_log_send_and_compose_impl(v3, &v5, v14, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v6, 38, v4);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 6);
}

uint64_t re::internal::accessFaceVaryingAttributeSubmesh(re::internal *this, const re::GeomAttribute *a2)
{
  if (*(this + 17) < 0xBu)
  {
    return this + 64;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "accessFaceVaryingAttributeSubmesh", 174, v2, v3);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute type");
  __break(1u);
  return result;
}

char *re::GeomAttribute::setName(re::GeomAttribute *this, const char *__s)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = re::globalAllocators(this);
    (*(*v5[2] + 40))(v5[2], v4);
  }

  v6 = strlen(__s);
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], v6 + 1, 0);
  *(this + 1) = v8;

  return strcpy(v8, __s);
}

void re::GeomAttribute::~GeomAttribute(re::GeomAttribute *this)
{
  *this = &unk_1F5D02260;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
    *(this + 1) = 0;
  }
}

uint64_t re::GeomAttribute::copyValues(re::GeomAttribute *this, re::GeomAttribute *a2)
{
  v4 = (*(*this + 16))(this);
  (*(*a2 + 80))(a2, v4);
  v5 = (*(*this + 16))(this);
  v6 = *(*this + 40);

  return v6(this, a2, v5, 0, 0);
}

re::GeomAttribute *re::GeomAttribute::createAttribute(re::GeomAttribute *this, const re::GeomAttribute *a2)
{
  v3 = *(this + 16);
  v4 = *(this + 1);
  v5 = *(this + 17);
  if (v3 == 3)
  {
    v6 = re::internal::accessFaceVaryingAttributeSubmesh(this, v3);
    FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(v4, v5, v6);
  }

  else
  {
    FaceVaryingAttribute = re::GeomAttribute::createAttribute(*(this + 1), v3, v5, 0);
  }

  v8 = FaceVaryingAttribute;
  re::GeomAttribute::copyValues(this, FaceVaryingAttribute);
  return v8;
}

re::GeomAttribute *re::GeomAttribute::createAttribute(re *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v8 = re::internal::newAttributePtr<int>(a1);
      }

      else if (a3 == 3)
      {
        v8 = re::internal::newAttributePtr<unsigned int>(a1);
      }

      else
      {
        v8 = re::internal::newAttributePtr<float>(a1);
      }

      goto LABEL_24;
    }

    if (!a3)
    {
      v8 = re::internal::newAttributePtr<short>(a1);
      goto LABEL_24;
    }

    if (a3 == 1)
    {
      v8 = re::internal::newAttributePtr<unsigned short>(a1);
      goto LABEL_24;
    }

LABEL_28:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "createAttribute", 359);
    result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute type");
    __break(1u);
    return result;
  }

  if (a3 <= 7)
  {
    if (a3 == 5)
    {
      v8 = re::internal::newAttributePtr<double>(a1);
    }

    else if (a3 == 6)
    {
      v8 = re::internal::newAttributePtr<re::Vector2<float>>(a1);
    }

    else
    {
      v8 = re::internal::newAttributePtr<re::Vector3<float>>(a1);
    }

    goto LABEL_24;
  }

  if (a3 == 8)
  {
    v8 = re::internal::newAttributePtr<re::Vector4<float>>(a1);
    goto LABEL_24;
  }

  if (a3 == 9)
  {
    v8 = re::internal::newAttributePtr<unsigned char>(a1);
    goto LABEL_24;
  }

  if (a3 != 10)
  {
    goto LABEL_28;
  }

  v8 = re::internal::newAttributePtr<signed char>(a1);
LABEL_24:
  v9 = v8;
  if (v8)
  {
    re::GeomAttribute::setName(v8, a1);
    *(v9 + 16) = v6;
    *(v9 + 17) = v5;
    if (a4)
    {
      (*(*v9 + 80))(v9, a4);
    }
  }

  return v9;
}

re::GeomAttribute *re::GeomAttribute::createFaceVaryingAttribute(const char *a1, uint64_t a2, re::internal::GeomAttributeFaceVaryingSubmesh *a3)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v8, a3);
  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(a1, a2, v8);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v8, v6);
  return FaceVaryingAttribute;
}

uint64_t re::GeomAttribute::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || strcmp(*(a1 + 8), *(a2 + 8)))
  {
    return 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2);
}

uint64_t re::internal::newAttributePtr<signed char>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D022E8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<short>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02378;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<int>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02408;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<unsigned char>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02498;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<unsigned short>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02528;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<unsigned int>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D025B8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<float>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02648;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<double>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D026D8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<re::Vector2<float>>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02768;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<re::Vector3<float>>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D027F8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<re::Vector4<float>>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02888;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

re::GeomAttribute *re::GeomAttribute::createFaceVaryingAttribute(const char *a1, uint64_t a2, re *a3)
{
  v3 = a2;
  if (a2 > 4)
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v5 = re::internal::newFaceVaryingAttributePtr<double>(a3);
      }

      else if (a2 == 6)
      {
        v5 = re::internal::newFaceVaryingAttributePtr<re::Vector2<float>>(a3);
      }

      else
      {
        v5 = re::internal::newFaceVaryingAttributePtr<re::Vector3<float>>(a3);
      }

      goto LABEL_24;
    }

    switch(a2)
    {
      case 8:
        v5 = re::internal::newFaceVaryingAttributePtr<re::Vector4<float>>(a3);
        goto LABEL_24;
      case 9:
        v5 = re::internal::newFaceVaryingAttributePtr<unsigned char>(a3);
        goto LABEL_24;
      case 0xA:
        v5 = re::internal::newFaceVaryingAttributePtr<signed char>(a3);
        goto LABEL_24;
    }

LABEL_27:
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "createFaceVaryingAttribute", 412);
    result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute type");
    __break(1u);
    return result;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      v5 = re::internal::newFaceVaryingAttributePtr<short>(a3);
      goto LABEL_24;
    }

    if (a2 == 1)
    {
      v5 = re::internal::newFaceVaryingAttributePtr<unsigned short>(a3);
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v5 = re::internal::newFaceVaryingAttributePtr<int>(a3);
  }

  else if (a2 == 3)
  {
    v5 = re::internal::newFaceVaryingAttributePtr<unsigned int>(a3);
  }

  else
  {
    v5 = re::internal::newFaceVaryingAttributePtr<float>(a3);
  }

LABEL_24:
  v6 = v5;
  if (v5)
  {
    re::GeomAttribute::setName(v5, a1);
    *(v6 + 16) = 3;
    *(v6 + 17) = v3;
  }

  return v6;
}

uint64_t re::internal::newFaceVaryingAttributePtr<signed char>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02918;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<short>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D029A8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<int>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02A38;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<unsigned char>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02AC8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<unsigned short>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02B58;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<unsigned int>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02BE8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<float>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02C78;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<double>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02D08;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<re::Vector2<float>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02D98;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<re::Vector3<float>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02E28;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<re::Vector4<float>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02EB8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::GeomAttribute::freeAttribute(re::GeomAttribute *this, re::GeomAttribute *a2)
{
  if (*(this + 17) >= 0xBu)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "freeAttribute", 483);
    result = _os_crash("assertion failure: (!Unreachable code) Unexpected attribute type");
    __break(1u);
  }

  else
  {
    v3 = re::globalAllocators(this)[2];
    (**this)(this);
    v4 = *(*v3 + 40);

    return v4(v3, this);
  }

  return result;
}

uint64_t re::GeomAttribute::areValuesAtIndexEqual(re::GeomAttribute *this, uint64_t a2, uint64_t a3)
{
  if ((*(*this + 16))(this) <= a2)
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "value0 < size()", "areValuesAtIndexEqual", 490);
    _os_crash("assertion failure: (value0 < size()) ");
    __break(1u);
    goto LABEL_7;
  }

  if ((*(*this + 16))(this) <= a3)
  {
LABEL_7:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "value1 < size()", "areValuesAtIndexEqual", 491);
    result = _os_crash("assertion failure: (value1 < size()) ");
    __break(1u);
    return result;
  }

  v8 = *(*this + 64);

  return v8(this, a2, a3);
}

void re::GeomAttribute::updateSubmesh(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Call to update a submesh on a non face-varying attribute", "!Unreachable code", "updateSubmesh", 431);
  _os_crash("assertion failure: (!Unreachable code) Call to update a submesh on a non face-varying attribute");
  __break(1u);
}

void re::internal::GeomTypedAttribute<signed char>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<signed char>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<BOOL>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<signed char>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<signed char>::copyValuesHelper(void *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v7 = result;
  v38 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        v11 = result[5];
        if (v11 <= v10)
        {
          break;
        }

        v11 = *a5;
        v5 = *(a2 + 40);
        if (v5 <= v11)
        {
          goto LABEL_18;
        }

        *(*(a2 + 56) + v11) = *(result[7] + v9);
        ++a5;
        if (!--v8)
        {
          return result;
        }
      }

      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v28 = 797;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v13, &v24, &v33, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
LABEL_18:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v28 = 789;
      v29 = 2048;
      v30 = v11;
      v31 = 2048;
      v32 = v5;
      _os_log_send_and_compose_impl(v16, &v24, &v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    result = (*(*result + 16))(result, a2, a3, 0, a5);
    if (result)
    {
      v9 = 0;
      while (1)
      {
        v11 = v7[5];
        if (v11 <= v9)
        {
          break;
        }

        v11 = *(a2 + 40);
        if (v11 <= v9)
        {
          goto LABEL_26;
        }

        *(*(a2 + 56) + v9) = *(v7[7] + v9);
        if (result == ++v9)
        {
          return result;
        }
      }

LABEL_22:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v28 = 797;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
LABEL_26:
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      if (v21)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v28 = 789;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}