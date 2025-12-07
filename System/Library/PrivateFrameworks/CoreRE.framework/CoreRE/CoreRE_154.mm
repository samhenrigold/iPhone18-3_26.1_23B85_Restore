BOOL re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 16);
  if (v5 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 32) + 4 * a2) < *(*(a1 + 32) + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
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

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
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
  v19 = (a1 + 8);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,false>(uint64_t result, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
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
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], v10->i32[0]);
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
            v88 = v86->i32[0];
            v87 = v86->u32[1];
            v86 = v82;
            result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v87, v88);
            if (result)
            {
              v89 = v86->i32[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v89, *(&v10->u32[-1] + v90));
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
          v120 = *v9;
          v119 = *(v9 + 4);
          v9 = v82;
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v119, v120);
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v9 + 4);
        }

        while ((v9 + 4) != a2);
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
            v95 = (v9 + 4 * v94);
            if (2 * v92 + 2 < v11 && re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v9 + 4 * v93);
            result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, *v96);
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
                v95 = (v9 + 4 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v95, v97);
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
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
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
              result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v109 - 1), v110);
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

            *v104 = *v106;
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
              v115 = (v9 + 4 * (v113 >> 1));
              result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v115, *v106);
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
                  v115 = (v9 + 4 * v114);
                  result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v115, v116);
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
      v17 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(v13, *v9, *(v9 + 4 * v12));
      v18 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], *v9);
      if (v17)
      {
        v19 = *(v9 + 4 * v12);
        if (v18)
        {
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v19;
        }

        else
        {
          *(v9 + 4 * v12) = *v9;
          *v9 = v19;
          if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], v19))
          {
            v31 = *v9;
            *v9 = a2[-1].i32[1];
            a2[-1].i32[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v22;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v9, *(v9 + 4 * v12)))
        {
          v23 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(v13, *(v9 + 4 * v12), *v9);
    v15 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], *(v9 + 4 * v12));
    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v16;
      }

      else
      {
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v16;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], v16))
        {
          v24 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = a2[-1].i32[1];
      a2[-1].i32[1] = v20;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * v12), *v9))
      {
        v21 = *v9;
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v21;
      }
    }

    v25 = v12 - 1;
    v26 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * (v12 - 1)), *(v9 + 4));
    v27 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[0], *(v9 + 4 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v9 + 4);
      if (v27)
      {
        *(v9 + 4) = a2[-1].i32[0];
        a2[-1].i32[0] = v28;
      }

      else
      {
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v28;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[0], v28))
        {
          v32 = *(v9 + 4 * v25);
          *(v9 + 4 * v25) = a2[-1].i32[0];
          a2[-1].i32[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = a2[-1].i32[0];
      a2[-1].i32[0] = v29;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * v25), *(v9 + 4)))
      {
        v30 = *(v9 + 4);
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v30;
      }
    }

    v33 = v12 + 1;
    v34 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * (v12 + 1)), *(v9 + 8));
    v35 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-2].u32[1], *(v9 + 4 * (v12 + 1)));
    if (v34)
    {
      v36 = *(v9 + 8);
      if (v35)
      {
        *(v9 + 8) = a2[-2].i32[1];
        a2[-2].i32[1] = v36;
      }

      else
      {
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v36;
        if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-2].u32[1], v36))
        {
          v39 = *(v9 + 4 * v33);
          *(v9 + 4 * v33) = a2[-2].i32[1];
          a2[-2].i32[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = a2[-2].i32[1];
      a2[-2].i32[1] = v37;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * v33), *(v9 + 8)))
      {
        v38 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v38;
      }
    }

    v40 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * v12), *(v9 + 4 * v25));
    v41 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * v33), *(v9 + 4 * v12));
    if (!v40)
    {
      v43 = *(v9 + 4 * v12);
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = *(v9 + 4 * v33);
      *(v9 + 4 * v12) = v44;
      *(v9 + 4 * v33) = v43;
      v45 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v44, *(v9 + 4 * v25));
      v43 = *(v9 + 4 * v12);
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = v43;
      *(v9 + 4 * v12) = v46;
      goto LABEL_53;
    }

    v42 = *(v9 + 4 * v25);
    if (v41)
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = v42;
      v43 = *(v9 + 4 * v12);
    }

    else
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = v42;
      v47 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + 4 * v33), v42);
      v43 = *(v9 + 4 * v12);
      if (v47)
      {
        v46 = *(v9 + 4 * v33);
        *(v9 + 4 * v12) = v46;
        *(v9 + 4 * v33) = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    *(v9 + 4 * v12) = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    if ((a5 & 1) != 0 || (v50 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 - 4), *v9), v49 = *v9, v50))
    {
      v51 = 0;
      do
      {
        v52 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(v9 + v51 + 4), v49);
        v51 += 4;
      }

      while (v52);
      v53 = v9 + v51;
      v54 = a2;
      if (v51 == 4)
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

        while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }

        while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v55, v49));
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 4);
      }

      else
      {
        v57 = (v9 + v51);
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

          while (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v60, v49));
          do
          {
            v61 = v58[-1].u32[1];
            v58 = (v58 - 4);
          }

          while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v61, v49));
        }

        while (v57 < v58);
        v62 = (v57 - 4);
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = v62->i32[0];
      }

      v62->i32[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *>(v9, v62, a3);
      v10 = (v62 + 4);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *>(v62 + 4, a2, a3);
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
        result = std::__introsort<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,false>(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v62 + 4);
      }
    }

    else
    {
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v9, a2[-1].u32[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v64);
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
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v10->i32[0]);
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
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v67);
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

        while (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v69));
        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
          result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v49, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], &a2[-1] + 1, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], &v10[1] + 1, a3);
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], v10[1].u32[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i32[1];
      v10[1].i32[1] = a2[-1].i32[1];
      a2[-1].i32[1] = v72;
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v10[1].u32[1], v10[1].u32[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v80 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v10->u32[1], v10->i32[0]);
  result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], v10->u32[1]);
  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i32[1];
    v10->i32[1] = a2[-1].i32[1];
    a2[-1].i32[1] = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v76, v78);
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, a2[-1].u32[1], v81);
    if (result)
    {
      v79 = v10->i32[1];
      v10->i32[1] = a2[-1].i32[1];
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 16);
  if (v5 <= a3)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a2;
  if (v5 <= a2)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 32) + 80 * a3 + 64) < *(*(a1 + 32) + 80 * a2 + 64);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  v10 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a2, *a1);
  v11 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a3, *a2);
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
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a3, v12))
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
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a5, *a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 4), *a1);
        v16 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), *(a1 + 4));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12), a3);
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), *(a1 + 12)))
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 12), *(a1 + 8)))
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v12, v14))
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
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 4), *a1);
  v19 = (a1 + 8);
  v20 = re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *(a1 + 8), *(a1 + 4));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v26, v21))
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v23, v25))
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, *v27, *v19))
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
        if (!re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0::operator()(*a3, v30, *(v32 + 4)))
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

void *re::internal::TriangleDecimator::findCornerVertices(re::GeomConnectivityManifold *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v4 = *a1;
  LOBYTE(v28) = 0;
  result = re::DynamicArray<unsigned char>::resize(a2, v4, &v28);
  if (!*a1)
  {
    v15 = NAN;
    goto LABEL_19;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    *&v30 = 0;
    *&v29 = 0;
    v28 = 0uLL;
    DWORD2(v29) = 0;
    re::GeomConnectivityManifold::fetchVertexIncidentFaces(a1, v6, &v28);
    v8 = v29;
    if (!v29)
    {
      v11 = 0;
LABEL_9:
      LODWORD(v8) = v11 == v8;
      goto LABEL_10;
    }

    if (v29 != 1)
    {
      v9 = 0;
      LODWORD(v8) = 0;
      v10 = 1;
      do
      {
        v8 = (v8 + re::GeomConnectivityManifold::isBoundaryFace(a1, *(v30 + 4 * v9)));
        v9 = v10;
        v11 = v29;
      }

      while (v29 > v10++);
      goto LABEL_9;
    }

LABEL_10:
    result = v28;
    if (v28 && v30)
    {
      result = (*(*v28 + 40))();
    }

    if (v8)
    {
      v13 = *(a2 + 16);
      if (v13 <= v6)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 789;
        v24 = 2048;
        v25 = v6;
        v26 = 2048;
        v27 = v13;
        _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      *(*(a2 + 32) + v6) = 1;
      ++v7;
    }

    ++v6;
    v14 = *a1;
  }

  while (v6 < v14);
  v15 = v7 / v14;
LABEL_19:
  *(a1 + 162) = v15;
  return result;
}

unint64_t re::DynamicArray<unsigned char>::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + a2;
}

uint64_t re::internal::TriangleDecimator::computeConnectedComponentAreasAndTolerances(uint64_t this)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(this + 617) != 1)
  {
    return this;
  }

  v6 = this;
  v7 = *(this + 24);
  v8 = v7;
  LODWORD(v89) = -1;
  re::DynamicArray<unsigned int>::resize((this + 736), v7, &v89);
  v74 = 0;
  v75 = 0;
  v76 = 1;
  v9 = &v74;
  v77 = 0;
  v78 = 0;
  if ((v7 & 0x3F) != 0)
  {
    v10 = (v7 >> 6) + 1;
  }

  else
  {
    v10 = v7 >> 6;
  }

  v79 = v7;
  *&v89 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v74, v10, &v89);
  v11 = v75;
  if (v75)
  {
    v12 = v78;
    if (v76)
    {
      v12 = &v77;
    }

    do
    {
      *v12++ = 0;
      v13 = v78;
      if (v76)
      {
        v13 = &v77;
      }
    }

    while (v12 != &v13[v11]);
  }

  v73 = 0;
  v70[1] = 0;
  v71 = 0;
  v70[0] = 0;
  v72 = 0;
  if (v7)
  {
    v9 = 0;
    v14 = 0;
    do
    {
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(&v74, v9) & 1) == 0)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v74, v9);
        LODWORD(v89) = v9;
        re::DynamicArray<int>::add(v70, &v89);
        while (v71)
        {
          v15 = re::internal::Stack<unsigned int>::pop(v70);
          v7 = v15;
          v1 = *(v6 + 752);
          if (v1 <= v15)
          {
            v80 = 0;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v89 = 0u;
            v37 = MEMORY[0x1E69E9C10];
            v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v81 = 136315906;
            v82 = "operator[]";
            v83 = 1024;
            if (v38)
            {
              v39 = 3;
            }

            else
            {
              v39 = 2;
            }

            v84 = 789;
            v85 = 2048;
            v86 = v7;
            v87 = 2048;
            v88 = v1;
            _os_log_send_and_compose_impl(v39, &v80, &v89, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
            _os_crash_msg();
            __break(1u);
            goto LABEL_70;
          }

          *(*(v6 + 768) + 4 * v15) = v14;
          FaceIncidentFaces = re::GeomConnectivityManifold::fetchFaceIncidentFaces(v6, v15, &v89);
          if (FaceIncidentFaces)
          {
            v1 = FaceIncidentFaces;
            v2 = &v89;
            do
            {
              v17 = *v2;
              v2 += 4;
              v7 = v17;
              if ((re::DynamicBitset<unsigned long long,64ul>::getBit(&v74, v17) & 1) == 0)
              {
                re::DynamicBitset<unsigned long long,64ul>::setBit(&v74, v7);
                v81 = v7;
                re::DynamicArray<int>::add(v70, &v81);
              }

              --v1;
            }

            while (v1);
          }
        }

        v14 = (v14 + 1);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  else
  {
    LODWORD(v14) = 0;
  }

  v18 = v14;
  v19 = *(v6 + 792);
  if (v19 < v14)
  {
    if (*(v6 + 784) < v14)
    {
      re::DynamicArray<re::internal::TriangleDecimator::ComponentAreaPreservationData>::setCapacity((v6 + 776), v14);
      v19 = *(v6 + 792);
    }

    v20 = v14 - v19;
    if (v14 > v19 && v20 >= 1)
    {
      v21 = *(v6 + 808) + 16 * v19;
      v22 = v20 + 1;
      do
      {
        *v21 = 0;
        *(v21 + 4) = 0;
        *(v21 + 8) = 0;
        v21 += 16;
        --v22;
      }

      while (v22 > 1);
    }

    goto LABEL_36;
  }

  if (v19 > v14)
  {
LABEL_36:
    *(v6 + 792) = v14;
    ++*(v6 + 800);
    v19 = v14;
  }

  v14 = *(v6 + 24);
  if (v14)
  {
    v23 = 0;
    v2 = 0;
    while (v14 != v2)
    {
      v24 = (*(v6 + 40) + v23);
      v4 = *v24;
      v7 = *(v6 + 320);
      if (v7 <= v4)
      {
        goto LABEL_78;
      }

      v5 = v24[1];
      if (v7 <= v5)
      {
        goto LABEL_82;
      }

      v1 = v24[2];
      if (v7 <= v1)
      {
        goto LABEL_86;
      }

      v9 = *(v6 + 752);
      if (v9 <= v2)
      {
        goto LABEL_90;
      }

      v9 = v24[3];
      v25 = *(v6 + 336);
      v3 = *(*(v6 + 768) + 4 * v2);
      if (v9 == -1)
      {
        if (v19 <= v3)
        {
          goto LABEL_102;
        }

        v29 = *(v25 + 16 * v4);
        v26 = vsubq_f32(*(v25 + 16 * v1), v29);
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = vsubq_f32(*(v25 + 16 * v5), v29);
      }

      else
      {
        if (v7 <= v9)
        {
          goto LABEL_94;
        }

        if (v19 <= v3)
        {
          goto LABEL_98;
        }

        v26 = vsubq_f32(*(v25 + 16 * v5), *(v25 + 16 * v9));
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = vsubq_f32(*(v25 + 16 * v1), *(v25 + 16 * v4));
      }

      v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), vnegq_f32(v26)), v28, v27);
      v31 = vmulq_f32(v30, v30);
      v32 = *(v6 + 808) + 16 * v3;
      v31.f32[0] = *(v32 + 4) + sqrtf(v31.f32[1] + (v31.f32[2] + v31.f32[0])) * 0.5;
      *(v32 + 4) = v31.i32[0];
      ++v2;
      v23 += 16;
      if (v14 == v2)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_74;
  }

LABEL_51:
  if (v18)
  {
    v33 = *(v6 + 624);
    v34 = 4;
    v7 = v19;
    while (v7)
    {
      v1 = *(v6 + 808);
      v35 = *(v6 + 620) * *(v1 + v34);
      if (v35 > v33)
      {
        v14 = v19;
        v36 = log2f((v35 / v33) + 1.0);
        v19 = v14;
        v35 = v33 * v36;
      }

      if (v33 >= v35)
      {
        v35 = v33;
      }

      *(v1 + v34) = v35;
      v34 += 16;
      --v7;
      if (!--v18)
      {
        goto LABEL_59;
      }
    }

LABEL_70:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v9 = v19;
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v9;
    v87 = 2048;
    v88 = v9;
    _os_log_send_and_compose_impl(v42, &v80, &v89, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_74:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v84 = 797;
    v85 = 2048;
    v86 = v14;
    v87 = 2048;
    v88 = v14;
    _os_log_send_and_compose_impl(v45, &v80, &v89, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v4;
    v87 = 2048;
    v88 = v7;
    _os_log_send_and_compose_impl(v48, &v80, &v89, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_82:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v5;
    v87 = 2048;
    v88 = v7;
    _os_log_send_and_compose_impl(v51, &v80, &v89, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_86:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v52 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v1;
    v87 = 2048;
    v88 = v7;
    _os_log_send_and_compose_impl(v54, &v80, &v89, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_90:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v55 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v2;
    v87 = 2048;
    v88 = v9;
    _os_log_send_and_compose_impl(v57, &v80, &v89, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_94:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v9;
    v87 = 2048;
    v88 = v7;
    _os_log_send_and_compose_impl(v60, &v80, &v89, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = v19;
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v3;
    v87 = 2048;
    v88 = v62;
    _os_log_send_and_compose_impl(v64, &v80, &v89, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
LABEL_102:
    v80 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = v19;
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = 136315906;
    v82 = "operator[]";
    v83 = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v84 = 789;
    v85 = 2048;
    v86 = v3;
    v87 = 2048;
    v88 = v66;
    _os_log_send_and_compose_impl(v68, &v80, &v89, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v81, 38, v69, v70[0]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_59:
  if (v70[0] && v73)
  {
    (*(*v70[0] + 40))();
  }

  this = v74;
  if (v74 && (v76 & 1) == 0)
  {
    return (*(*v74 + 40))();
  }

  return this;
}

uint64_t re::internal::Stack<unsigned int>::pop(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = v1 - 1;
  if (!v1)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = 0;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(*(a1 + 32) + 4 * v2);
  re::DynamicArray<float>::resize(a1, v2);
  return v3;
}

void re::internal::TriangleDecimator::convertMeshToCombinatorialMap(re::internal::TriangleDecimator *this, const re::GeomMesh *a2, re::GeomConnectivityManifold *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) == *(a2 + 10))
  {
    if (re::GeomConnectivityManifold::buildIfManifold(a2, this, a3))
    {
      v6 = *(a2 + 4);
      re::DynamicArray<re::Vector3<float>>::resize(this + 304, v6);
      v7 = re::GeomMesh::accessVertexPositions(a2);
      if (v6)
      {
        v9 = 0;
        v10 = v8;
        while (v9 != v8)
        {
          v3 = *(this + 40);
          if (v3 <= v9)
          {
            goto LABEL_28;
          }

          *(*(this + 42) + 16 * v9) = *(v7 + 16 * v9);
          if (++v9 == v6)
          {
            goto LABEL_18;
          }
        }

        v26 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        LODWORD(v45[0]) = 136315906;
        *(v45 + 4) = "operator[]";
        WORD6(v45[0]) = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        *(v45 + 14) = 613;
        WORD1(v45[1]) = 2048;
        *(&v45[1] + 4) = v10;
        WORD6(v45[1]) = 2048;
        *(&v45[1] + 14) = v10;
        _os_log_send_and_compose_impl(v16, &v26, &v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38);
        _os_crash_msg();
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v30 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v29 = 0;
      re::GeomMesh::GeomMesh(&v32, 0);
      re::makeManifold(a2, &v32, &v26);
      re::GeomConnectivityManifold::buildIfManifold(&v32, this, v12);
      v9 = v33;
      re::DynamicArray<re::Vector3<float>>::resize(this + 304, v33);
      v13 = re::GeomMesh::accessVertexPositions(&v32);
      if (v9)
      {
        v6 = 0;
        v10 = v14;
        while (v6 != v14)
        {
          v3 = *(this + 40);
          if (v3 <= v6)
          {
            goto LABEL_32;
          }

          *(*(this + 42) + 16 * v6) = *(v13 + 16 * v6);
          if (++v6 == v9)
          {
            goto LABEL_15;
          }
        }

LABEL_24:
        v31 = 0;
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v37 = 136315906;
        v38 = "operator[]";
        v39 = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v40 = 613;
        v41 = 2048;
        v42 = v10;
        v43 = 2048;
        v44 = v10;
        _os_log_send_and_compose_impl(v19, &v31, v45, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v26, v27);
        _os_crash_msg();
        __break(1u);
LABEL_28:
        v26 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v45[0]) = 136315906;
        *(v45 + 4) = "operator[]";
        WORD6(v45[0]) = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        *(v45 + 14) = 789;
        WORD1(v45[1]) = 2048;
        *(&v45[1] + 4) = v9;
        WORD6(v45[1]) = 2048;
        *(&v45[1] + 14) = v3;
        _os_log_send_and_compose_impl(v22, &v26, &v32, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38);
        _os_crash_msg();
        __break(1u);
LABEL_32:
        v31 = 0;
        v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        v23 = MEMORY[0x1E69E9C10];
        v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v37 = 136315906;
        v38 = "operator[]";
        v39 = 1024;
        if (v24)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v40 = 789;
        v41 = 2048;
        v42 = v6;
        v43 = 2048;
        v44 = v3;
        _os_log_send_and_compose_impl(v25, &v31, v45, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v26, v27);
        _os_crash_msg();
        __break(1u);
      }

LABEL_15:
      re::GeomMesh::~GeomMesh(&v32);
      if (v26 && v30)
      {
        (*(*v26 + 40))();
      }
    }

LABEL_18:
    re::internal::TriangleDecimator::computeConnectedComponentAreasAndTolerances(this);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v32, 0);
    re::internal::TriangleDecimator::convertMeshToCombinatorialMap(this, &v32, v11);
    re::GeomMesh::~GeomMesh(&v32);
  }
}

uint64_t re::GeomConnectivityManifold::isValidFace(re::GeomConnectivityManifold *this, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = (4 * a2);
  v3 = *(this + 13);
  if (v3 <= v2)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v6, &v11, &v20, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, &v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 15) + 4 * v2);
  v3 = *(this + 8);
  if (v3 <= v2)
  {
    goto LABEL_8;
  }

  return *(*(this + 10) + 4 * v2) >> 31;
}

uint64_t re::internal::TriangleDecimator::filterValidComponents(unsigned int *a1, unint64_t a2, unint64_t a3, void *a4, int *a5)
{
  v9 = a2;
  v150 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 3);
  v12 = v11;
  v13 = *a1;
  re::DynamicArray<BOOL>::resize(a2, v11);
  LOBYTE(v145) = 0;
  result = re::DynamicArray<BOOL>::resize(a4, v13, &v145);
  v116 = a3;
  *a3 = 0;
  *a5 = 0;
  if (a1[159] & 1) != 0 || (*(a1 + 617))
  {
    v114 = a5;
    v115 = v13;
    v123 = 0;
    v120[1] = 0;
    v121 = 0;
    v120[0] = 0;
    v122 = 0;
    v15 = a1[198];
    LOBYTE(v145) = 0;
    re::DynamicArray<BOOL>::resize(v120, v15, &v145);
    v118 = v9;
    v119 = a4;
    v117 = v11;
    if (*(a1 + 617) == 1)
    {
      v5 = a1[6];
      v16 = *(a1 + 156);
      v131 = 0;
      v128[1] = 0;
      v129 = 0;
      v128[0] = 0;
      v130 = 0;
      re::DynamicArray<float>::resize(v128, v5);
      v17 = v129;
      if (v5)
      {
        v18 = 0;
        v19 = v131;
        do
        {
          if (v17 == v18)
          {
            goto LABEL_130;
          }

          *(v19 + 4 * v18) = v18;
          ++v18;
        }

        while (v5 != v18);
      }

      v113 = v11;
      *&v145 = a1;
      v20 = 126 - 2 * __clz(v17);
      if (v17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,false>(v131, (v131 + 4 * v17), &v145, v21, 1);
      v127 = 0;
      v124[1] = 0;
      v125 = 0;
      v124[0] = 0;
      v126 = 0;
      *v134 = 0;
      *&v134[8] = 0;
      *&v134[16] = 1;
      *&v135[4] = 0;
      *&v135[12] = 0;
      v22 = *a1;
      if ((v22 & 0x3F) != 0)
      {
        v23 = (v22 >> 6) + 1;
      }

      else
      {
        v23 = v22 >> 6;
      }

      v136 = *a1;
      *&v145 = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(v134, v23, &v145);
      if (a1[198])
      {
        v9 = 0;
        v24 = 0;
        v25 = sqrtf(v16);
        v26 = v25 * v25;
        v27 = v25 * (v25 * v25);
        v12 = &v135[4];
        a3 = &v133;
        do
        {
          LODWORD(v28) = v24;
          do
          {
            v29 = v28;
            v28 = (v28 + 1);
            if (v129 <= v28)
            {
              break;
            }

            v17 = *(v131 + 4 * v28);
            v11 = *(a1 + 94);
            if (v11 <= v17)
            {
              goto LABEL_110;
            }
          }

          while (v9 == *(*(a1 + 96) + 4 * v17));
          v125 = 0;
          ++v126;
          v30 = *&v134[8];
          if (*&v134[8])
          {
            v31 = *&v135[12];
            if (v134[16])
            {
              v31 = &v135[4];
            }

            do
            {
              *v31++ = 0;
              v32 = *&v135[12];
              if (v134[16])
              {
                v32 = &v135[4];
              }
            }

            while (v31 != &v32[8 * v30]);
          }

          v33 = 0.0;
          if (v24 >= v28)
          {
            v36 = 0.0;
          }

          else
          {
            v34 = v24;
            v17 = v29;
            do
            {
              v11 = v129;
              if (v129 <= v34)
              {
                goto LABEL_114;
              }

              v5 = *(v131 + 4 * v34);
              if (re::GeomConnectivityManifold::isValidFace(a1, *(v131 + 4 * v34)))
              {
                v11 = *(a1 + 3);
                if (v11 <= v5)
                {
                  goto LABEL_118;
                }

                v11 = 0;
                v133 = *(*(a1 + 5) + 16 * v5);
                do
                {
                  v5 = *&v134[v11 - 16];
                  if ((re::DynamicBitset<unsigned long long,64ul>::getBit(v134, v5) & 1) == 0)
                  {
                    re::DynamicBitset<unsigned long long,64ul>::setBit(v134, v5);
                    a4 = *(a1 + 40);
                    if (a4 <= v5)
                    {
                      v132 = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v57 = MEMORY[0x1E69E9C10];
                      v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v137 = 136315906;
                      v138 = "operator[]";
                      v139 = 1024;
                      if (v58)
                      {
                        v59 = 3;
                      }

                      else
                      {
                        v59 = 2;
                      }

                      v140 = 797;
                      v141 = 2048;
                      v142 = v5;
                      v143 = 2048;
                      v144 = a4;
                      _os_log_send_and_compose_impl(v59, &v132, &v145, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_110:
                      *&v133 = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v34 = MEMORY[0x1E69E9C10];
                      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v137 = 136315906;
                      v138 = "operator[]";
                      v139 = 1024;
                      if (v60)
                      {
                        v61 = 3;
                      }

                      else
                      {
                        v61 = 2;
                      }

                      v140 = 797;
                      v141 = 2048;
                      v142 = v17;
                      v143 = 2048;
                      v144 = v11;
                      _os_log_send_and_compose_impl(v61, &v133, &v145, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_114:
                      *&v133 = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v17 = MEMORY[0x1E69E9C10];
                      v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v137 = 136315906;
                      v138 = "operator[]";
                      v139 = 1024;
                      if (v62)
                      {
                        v63 = 3;
                      }

                      else
                      {
                        v63 = 2;
                      }

                      v140 = 789;
                      v141 = 2048;
                      v142 = v34;
                      v143 = 2048;
                      v144 = v11;
                      _os_log_send_and_compose_impl(v63, &v133, &v145, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_118:
                      *&v133 = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v64 = MEMORY[0x1E69E9C10];
                      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v137 = 136315906;
                      v138 = "operator[]";
                      v139 = 1024;
                      if (v65)
                      {
                        v66 = 3;
                      }

                      else
                      {
                        v66 = 2;
                      }

                      v140 = 797;
                      v141 = 2048;
                      v142 = v5;
                      v143 = 2048;
                      v144 = v11;
                      _os_log_send_and_compose_impl(v66, &v133, &v145, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_122:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v67 = MEMORY[0x1E69E9C10];
                      v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v68)
                      {
                        v69 = 3;
                      }

                      else
                      {
                        v69 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = v17;
                      *&v135[8] = 2048;
                      *&v135[10] = v17;
                      _os_log_send_and_compose_impl(v69, v128, &v145, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_126:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v70 = MEMORY[0x1E69E9C10];
                      v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v71)
                      {
                        v72 = 3;
                      }

                      else
                      {
                        v72 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = v5;
                      *&v135[8] = 2048;
                      *&v135[10] = v17;
                      _os_log_send_and_compose_impl(v72, v128, &v145, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_130:
                      v124[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v73 = MEMORY[0x1E69E9C10];
                      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v74)
                      {
                        v75 = 3;
                      }

                      else
                      {
                        v75 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = v17;
                      *&v135[8] = 2048;
                      *&v135[10] = v17;
                      _os_log_send_and_compose_impl(v75, v124, &v145, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_134:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v76 = MEMORY[0x1E69E9C10];
                      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v77)
                      {
                        v78 = 3;
                      }

                      else
                      {
                        v78 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = a3;
                      *&v135[8] = 2048;
                      *&v135[10] = v17;
                      _os_log_send_and_compose_impl(v78, v128, &v145, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_138:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v79 = MEMORY[0x1E69E9C10];
                      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v80)
                      {
                        v81 = 3;
                      }

                      else
                      {
                        v81 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = a3;
                      *&v135[8] = 2048;
                      *&v135[10] = v17;
                      _os_log_send_and_compose_impl(v81, v128, &v145, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_142:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v82 = MEMORY[0x1E69E9C10];
                      v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v83)
                      {
                        v84 = 3;
                      }

                      else
                      {
                        v84 = 2;
                      }

                      *&v134[14] = 797;
                      *&v134[18] = 2048;
                      *v135 = v5;
                      *&v135[8] = 2048;
                      *&v135[10] = a4;
                      _os_log_send_and_compose_impl(v84, v128, &v145, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_146:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v85 = MEMORY[0x1E69E9C10];
                      v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v86)
                      {
                        v87 = 3;
                      }

                      else
                      {
                        v87 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = v11;
                      *&v135[8] = 2048;
                      *&v135[10] = v17;
                      _os_log_send_and_compose_impl(v87, v128, &v145, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_150:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v88 = MEMORY[0x1E69E9C10];
                      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v89)
                      {
                        v90 = 3;
                      }

                      else
                      {
                        v90 = 2;
                      }

                      *&v134[14] = 797;
                      *&v134[18] = 2048;
                      *v135 = v5;
                      *&v135[8] = 2048;
                      *&v135[10] = v17;
                      _os_log_send_and_compose_impl(v90, v128, &v145, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_154:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v52 = MEMORY[0x1E69E9C10];
                      v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v91)
                      {
                        v92 = 3;
                      }

                      else
                      {
                        v92 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = v12;
                      *&v135[8] = 2048;
                      *&v135[10] = v9;
                      _os_log_send_and_compose_impl(v92, v128, &v145, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_158:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v40 = MEMORY[0x1E69E9C10];
                      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v93)
                      {
                        v94 = 3;
                      }

                      else
                      {
                        v94 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = v52;
                      *&v135[8] = 2048;
                      *&v135[10] = v9;
                      _os_log_send_and_compose_impl(v94, v128, &v145, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_162:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v95 = MEMORY[0x1E69E9C10];
                      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v96)
                      {
                        v97 = 3;
                      }

                      else
                      {
                        v97 = 2;
                      }

                      *&v134[14] = 789;
                      *&v134[18] = 2048;
                      *v135 = v40;
                      *&v135[8] = 2048;
                      *&v135[10] = v9;
                      _os_log_send_and_compose_impl(v97, v128, &v145, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_166:
                      *&v133 = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v98 = MEMORY[0x1E69E9C10];
                      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v137 = 136315906;
                      v138 = "operator[]";
                      v139 = 1024;
                      if (v99)
                      {
                        v100 = 3;
                      }

                      else
                      {
                        v100 = 2;
                      }

                      v140 = 789;
                      v141 = 2048;
                      v142 = v9;
                      v143 = 2048;
                      v144 = v40;
                      _os_log_send_and_compose_impl(v100, &v133, &v145, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v137, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_170:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v101 = MEMORY[0x1E69E9C10];
                      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v102)
                      {
                        v103 = 3;
                      }

                      else
                      {
                        v103 = 2;
                      }

                      *&v134[14] = 797;
                      *&v134[18] = 2048;
                      *v135 = v5;
                      *&v135[8] = 2048;
                      *&v135[10] = v40;
                      _os_log_send_and_compose_impl(v103, v128, &v145, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_174:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v104 = MEMORY[0x1E69E9C10];
                      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v105)
                      {
                        v106 = 3;
                      }

                      else
                      {
                        v106 = 2;
                      }

                      *&v134[14] = 797;
                      *&v134[18] = 2048;
                      *v135 = v40;
                      *&v135[8] = 2048;
                      *&v135[10] = v9;
                      _os_log_send_and_compose_impl(v106, v128, &v145, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_178:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v44 = MEMORY[0x1E69E9C10];
                      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v107)
                      {
                        v108 = 3;
                      }

                      else
                      {
                        v108 = 2;
                      }

                      *&v134[14] = 797;
                      *&v134[18] = 2048;
                      *v135 = v12;
                      *&v135[8] = 2048;
                      *&v135[10] = v9;
                      _os_log_send_and_compose_impl(v108, v128, &v145, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
LABEL_182:
                      v128[0] = 0;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v145 = 0u;
                      v109 = MEMORY[0x1E69E9C10];
                      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v134 = 136315906;
                      *&v134[4] = "operator[]";
                      *&v134[12] = 1024;
                      if (v110)
                      {
                        v111 = 3;
                      }

                      else
                      {
                        v111 = 2;
                      }

                      *&v134[14] = 797;
                      *&v134[18] = 2048;
                      *v135 = v44;
                      *&v135[8] = 2048;
                      *&v135[10] = v9;
                      _os_log_send_and_compose_impl(v111, v128, &v145, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v134, 38, v112, v113);
                      _os_crash_msg();
                      __break(1u);
                    }

                    re::DynamicArray<re::Vector3<float>>::add(v124, (*(a1 + 42) + 16 * v5));
                  }

                  v11 += 4;
                }

                while (v11 != 12);
              }
            }

            while (v34++ != v17);
            v36 = 0.0;
            if (v125)
            {
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v145 = 0u;
              geom_oriented_bounding_box_3f();
              v37 = vaddq_f32(v149, v149);
              v36 = vmuls_lane_f32(vmuls_lane_f32(v37.f32[0], *v37.f32, 1), v37, 2);
              if (v37.f32[0] <= v37.f32[1])
              {
                v38 = v37.f32[0];
              }

              else
              {
                v38 = v37.f32[1];
              }

              if (v37.f32[0] <= v37.f32[1])
              {
                v37.f32[0] = v37.f32[1];
              }

              if (v38 >= v37.f32[2])
              {
                v39 = v38;
              }

              else
              {
                v39 = v37.f32[2];
              }

              v33 = v37.f32[0] * v39;
            }
          }

          v40 = v121;
          a4 = v119;
          if (v121 <= v9)
          {
            goto LABEL_166;
          }

          v42 = v33 <= v26 && v36 <= v27;
          *(v123 + v9++) = v42;
          v24 = v28;
        }

        while (v9 < a1[198]);
      }

      if (*v134 && (v134[16] & 1) == 0)
      {
        (*(**v134 + 40))();
      }

      v12 = v117;
      v9 = v118;
      v11 = v113;
      if (v124[0] && v127)
      {
        (*(*v124[0] + 40))();
      }

      if (v128[0] && v131)
      {
        (*(*v128[0] + 40))();
      }
    }

    if (v11)
    {
      v5 = 0;
      a3 = 4;
      do
      {
        if (!re::GeomConnectivityManifold::isValidFace(a1, v5))
        {
          goto LABEL_85;
        }

        v17 = v121;
        if (v121)
        {
          a4 = *(a1 + 94);
          if (a4 <= v5)
          {
            goto LABEL_142;
          }

          v11 = *(*(a1 + 96) + 4 * v5);
          if (v121 <= v11)
          {
            goto LABEL_146;
          }

          a4 = v119;
          if (*(v123 + v11))
          {
            goto LABEL_85;
          }
        }

        if (*(a1 + 636) != 1)
        {
          goto LABEL_79;
        }

        v40 = *(a1 + 3);
        if (v40 <= v5)
        {
          goto LABEL_170;
        }

        v43 = *(a1 + 5);
        v40 = *(v43 + a3 - 4);
        v9 = *(a1 + 40);
        if (v9 <= v40)
        {
          goto LABEL_174;
        }

        v12 = *(v43 + a3);
        if (v9 <= v12)
        {
          goto LABEL_178;
        }

        v44 = *(v43 + a3 + 4);
        if (v9 <= v44)
        {
          goto LABEL_182;
        }

        v45 = *(a1 + 42);
        v46 = *(v45 + 16 * v40);
        v47 = vsubq_f32(*(v45 + 16 * v12), v46);
        v48 = vsubq_f32(*(v45 + 16 * v44), v46);
        v49 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL), vnegq_f32(v47)), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
        v50 = vmulq_f32(v49, v49);
        v12 = v117;
        v9 = v118;
        if ((v50.f32[1] + (v50.f32[2] + v50.f32[0])) == 0.0)
        {
LABEL_85:
          v17 = *(v9 + 16);
          if (v17 <= v5)
          {
            goto LABEL_126;
          }

          *(*(v9 + 32) + v5) = 0;
        }

        else
        {
LABEL_79:
          v17 = *(v9 + 16);
          if (v17 <= v5)
          {
            goto LABEL_126;
          }

          *(*(v9 + 32) + v5) = 1;
          v17 = *(a1 + 3);
          if (v17 <= v5)
          {
            goto LABEL_150;
          }

          v51 = *(a1 + 5);
          v12 = *(v51 + a3 - 4);
          v9 = a4[2];
          if (v9 <= v12)
          {
            goto LABEL_154;
          }

          v40 = *(v51 + a3 + 4);
          v52 = *(v51 + a3);
          v53 = a4[4];
          *(v53 + v12) = 1;
          if (v9 <= v52)
          {
            goto LABEL_158;
          }

          *(v53 + v52) = 1;
          if (v9 <= v40)
          {
            goto LABEL_162;
          }

          *(v53 + v40) = 1;
          v12 = v117;
          ++*v116;
          v9 = v118;
        }

        ++v5;
        a3 += 16;
      }

      while (v12 != v5);
    }

    if (v115)
    {
      v54 = 0;
      v55 = *v114;
      v17 = a4[2];
      v56 = a4[4];
      while (v17 != v54)
      {
        if (*(v56 + v54) == 1)
        {
          *v114 = ++v55;
        }

        if (v115 == ++v54)
        {
          goto LABEL_94;
        }
      }

      goto LABEL_122;
    }

LABEL_94:
    result = v120[0];
    if (v120[0])
    {
      if (v123)
      {
        return (*(*v120[0] + 40))();
      }
    }
  }

  else
  {
    if (v11)
    {
      a3 = 0;
      do
      {
        result = re::GeomConnectivityManifold::isValidFace(a1, a3);
        v17 = *(v9 + 16);
        if (v17 <= a3)
        {
          goto LABEL_134;
        }

        *(*(v9 + 32) + a3++) = result;
      }

      while (v11 != a3);
    }

    if (v13)
    {
      a3 = 0;
      do
      {
        result = re::GeomConnectivityManifold::isValidVertex(a1, a3);
        v17 = a4[2];
        if (v17 <= a3)
        {
          goto LABEL_138;
        }

        *(a4[4] + a3++) = result;
      }

      while (v13 != a3);
    }
  }

  return result;
}

uint64_t re::GeomConnectivityManifold::isValidVertex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 18);
  if (v3 <= a2)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v6, &v11, &v20, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, &v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 20) + 4 * a2);
  v3 = *(this + 8);
  if (v3 <= v2)
  {
    goto LABEL_8;
  }

  return *(*(this + 10) + 4 * v2) >> 31;
}

uint64_t re::internal::TriangleDecimator::convertCombinatorialMapToMesh(re::internal::TriangleDecimator *this, re::GeomMesh *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v74 = 0;
  v70[1] = 0;
  v71 = 0;
  v69 = 0;
  v70[0] = 0;
  v72 = 0;
  v66[1] = 0;
  v67 = 0;
  v66[0] = 0;
  v68 = 0;
  re::internal::TriangleDecimator::filterValidComponents(this, v70, &v74 + 4, v66, &v74);
  v65 = 0;
  v62[1] = 0;
  v63 = 0;
  v62[0] = 0;
  v64 = 0;
  re::DynamicArray<unsigned int>::resize(v62, *this, &re::kInvalidMeshIndex);
  v8 = v67;
  if (v67)
  {
    v9 = 0;
    v10 = 0;
    v11 = v69;
    v12 = v63;
    v13 = v65;
    do
    {
      if (*(v11 + v9) == 1)
      {
        if (v12 <= v9)
        {
          goto LABEL_63;
        }

        *(v13 + 4 * v9) = v10++;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  bzero(&v76, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v77, 1uLL);
  ++DWORD2(v78);
  re::internal::GeomAttributeManager::GeomAttributeManager(&v79[1]);
  re::internal::GeomAttributeManager::addAttribute(&v79[1], "vertexPosition", 1, 7);
  if (DWORD2(v76) > v74 && v78 && (v78 - 1) > v78)
  {
      ;
    }
  }

  DWORD2(v76) = v74;
  v80 = v74;
  if (v81)
  {
    v15 = v82;
    v16 = 8 * v81;
    do
    {
      v17 = *v15++;
      (*(*v17 + 80))(v17, v80);
      v16 -= 8;
    }

    while (v16);
  }

  v18 = HIDWORD(v74);
  if (HIDWORD(v74) < v78)
  {
    v2 = v87;
    if (v87)
    {
      v19 = 0;
      v3 = &v76;
      do
      {
        v20 = re::internal::GeomAttributeContainer::attributeByIndex(&v86, v19);
        re::internal::accessFaceVaryingAttributeSubmesh(v20, v21);
        ++v19;
      }

      while (v2 != v19);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v77, v18);
  v83 = v18;
  if (v84)
  {
    v22 = v85;
    v23 = 8 * v84;
    do
    {
      v24 = *v22++;
      (*(*v24 + 80))(v24, v83);
      v23 -= 8;
    }

    while (v23);
  }

  v25 = v71;
  if (v71)
  {
    v26 = 0;
    v3 = 0;
    v27 = 0;
    do
    {
      if (*(v3 + v73) == 1)
      {
        v12 = *(this + 3);
        if (v12 <= v3)
        {
          goto LABEL_67;
        }

        v28 = (*(this + 5) + v26);
        v4 = *v28;
        v12 = v63;
        if (v63 <= v4)
        {
          goto LABEL_71;
        }

        v5 = v28[1];
        if (v63 <= v5)
        {
          goto LABEL_75;
        }

        v2 = v28[2];
        if (v63 <= v2)
        {
          goto LABEL_79;
        }

        re::GeomMeshBuilder::setFaceVertices(&v76, v27++, *(v65 + 4 * v4), *(v65 + 4 * v5), *(v65 + 4 * v2));
        v25 = v71;
      }

      v3 = (v3 + 1);
      v26 += 16;
    }

    while (v25 > v3);
  }

  v29 = re::GeomMesh::operator=(a2, &v76 + 1);
  re::GeomMesh::setName(v29, v76);
  re::GeomMesh::freeName(&v76);
  v30 = re::GeomMesh::modifyVertexPositions(a2);
  v32 = v67;
  if (v67)
  {
    LODWORD(v33) = v31;
    v34 = 0;
    v35 = 0;
    while (1)
    {
      v12 = v63;
      if (v63 <= v35)
      {
        break;
      }

      v12 = *(v65 + 4 * v35);
      if (v12 != -1)
      {
        v2 = *(this + 40);
        if (v2 <= v35)
        {
          goto LABEL_55;
        }

        if (v12 >= v31)
        {
          goto LABEL_59;
        }

        *(v30 + 16 * v12) = *(*(this + 42) + v34);
        v32 = v67;
      }

      ++v35;
      v34 += 16;
      if (v32 <= v35)
      {
        goto LABEL_38;
      }
    }

    v75 = 0;
    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v90 = 789;
    v91 = 2048;
    v92 = v35;
    v93 = 2048;
    v94 = v12;
    _os_log_send_and_compose_impl(v39, &v75, v95, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v75 = 0;
    v33 = v88;
    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v90 = 797;
    v91 = 2048;
    v92 = v35;
    v93 = 2048;
    v94 = v2;
    _os_log_send_and_compose_impl(v42, &v75, v95, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v75 = 0;
    v9 = v88;
    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v43 = MEMORY[0x1E69E9C10];
    v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    if (v44)
    {
      v45 = 3;
    }

    else
    {
      v45 = 2;
    }

    v90 = 621;
    v91 = 2048;
    v92 = v12;
    v93 = 2048;
    v94 = v33;
    _os_log_send_and_compose_impl(v45, &v75, v95, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
LABEL_63:
    *v88 = 0;
    memset(v79, 0, 32);
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v95[0] = 136315906;
    *&v95[1] = "operator[]";
    LOWORD(v95[3]) = 1024;
    if (v47)
    {
      v48 = 3;
    }

    else
    {
      v48 = 2;
    }

    *(&v95[3] + 2) = 789;
    HIWORD(v95[4]) = 2048;
    *&v95[5] = v9;
    LOWORD(v95[7]) = 2048;
    *(&v95[7] + 2) = v12;
    _os_log_send_and_compose_impl(v48, v88, &v76, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
LABEL_67:
    v75 = 0;
    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v49 = MEMORY[0x1E69E9C10];
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    v90 = 797;
    v91 = 2048;
    v92 = v3;
    v93 = 2048;
    v94 = v12;
    _os_log_send_and_compose_impl(v51, &v75, v95, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v75 = 0;
    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v52 = MEMORY[0x1E69E9C10];
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v90 = 789;
    v91 = 2048;
    v92 = v4;
    v93 = 2048;
    v94 = v12;
    _os_log_send_and_compose_impl(v54, &v75, v95, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v75 = 0;
    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v55 = MEMORY[0x1E69E9C10];
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    if (v56)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    v90 = 789;
    v91 = 2048;
    v92 = v5;
    v93 = 2048;
    v94 = v12;
    _os_log_send_and_compose_impl(v57, &v75, v95, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v75 = 0;
    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    v89 = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    v90 = 789;
    v91 = 2048;
    v92 = v2;
    v93 = 2048;
    v94 = v12;
    _os_log_send_and_compose_impl(v60, &v75, v95, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v61, v62[0]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  re::GeomMesh::freeName(&v76);
  re::internal::GeomAttributeManager::~GeomAttributeManager(&v79[1]);
  if (v77 && v79[0])
  {
    (*(*v77 + 40))();
  }

  if (v62[0] && v65)
  {
    (*(*v62[0] + 40))();
  }

  if (v66[0] && v69)
  {
    (*(*v66[0] + 40))();
  }

  result = v70[0];
  if (v70[0] && v73)
  {
    return (*(*v70[0] + 40))();
  }

  return result;
}

uint64_t re::internal::TriangleDecimator::convertCombinatorialMapToMesh(unsigned int *a1, re::GeomMesh *a2, uint64_t a3)
{
  v100 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v73 = 0;
  v10 = &v75;
  v69[1] = 0;
  v70 = 0;
  v68 = 0;
  v69[0] = 0;
  v71 = 0;
  v65[1] = 0;
  v66 = 0;
  v65[0] = 0;
  v67 = 0;
  re::internal::TriangleDecimator::filterValidComponents(a1, v69, &v73 + 4, v65, &v73);
  v64 = 0;
  v61[1] = 0;
  v62 = 0;
  v61[0] = 0;
  v63 = 0;
  re::DynamicArray<unsigned int>::resize(v61, *a1, &re::kInvalidMeshIndex);
  v11 = v66;
  if (v66)
  {
    v12 = 0;
    v13 = 0;
    v14 = v68;
    v3 = v62;
    v15 = v64;
    do
    {
      if (*(v14 + v12) == 1)
      {
        if (v3 <= v12)
        {
          goto LABEL_63;
        }

        *(v15 + 4 * v12) = v13++;
      }

      ++v12;
    }

    while (v11 != v12);
  }

  bzero(&v75, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v77, 1uLL);
  ++v79;
  re::internal::GeomAttributeManager::GeomAttributeManager(v81);
  re::internal::GeomAttributeManager::addAttribute(v81, "vertexPosition", 1, 7);
  if (v76 > v73 && v78 && (v78 - 1) > v78)
  {
      ;
    }
  }

  LODWORD(v76) = v73;
  v82 = v73;
  if (v83)
  {
    v17 = v84;
    v3 = 8 * v83;
    do
    {
      v18 = *v17++;
      (*(*v18 + 80))(v18, v82);
      v3 -= 8;
    }

    while (v3);
  }

  v19 = HIDWORD(v73);
  if (HIDWORD(v73) < v78)
  {
    v4 = v89;
    if (v89)
    {
      LODWORD(v3) = 0;
      v5 = &v75;
      do
      {
        v20 = re::internal::GeomAttributeContainer::attributeByIndex(&v88, v3);
        re::internal::accessFaceVaryingAttributeSubmesh(v20, v21);
        v3 = (v3 + 1);
      }

      while (v4 != v3);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(v77, v19);
  v85 = v19;
  if (v86)
  {
    v22 = v87;
    v3 = 8 * v86;
    do
    {
      v23 = *v22++;
      (*(*v23 + 80))(v23, v85);
      v3 -= 8;
    }

    while (v3);
  }

  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v24 = v70;
  if (v70)
  {
    v25 = 0;
    v10 = 0;
    v26 = 0;
    do
    {
      if (*(v10 + v72) == 1)
      {
        v3 = *(a1 + 3);
        if (v3 <= v10)
        {
          goto LABEL_67;
        }

        v27 = (*(a1 + 5) + v25);
        v6 = *v27;
        v3 = v62;
        if (v62 <= v6)
        {
          goto LABEL_71;
        }

        v4 = v27[1];
        if (v62 <= v4)
        {
          goto LABEL_75;
        }

        v5 = v27[2];
        if (v62 <= v5)
        {
          goto LABEL_79;
        }

        re::GeomMeshBuilder::setFaceVertices(&v75, v26, *(v64 + 4 * v6), *(v64 + 4 * v4), *(v64 + 4 * v5));
        v97[0] = v10;
        re::DynamicArray<int>::add(a3, v97);
        ++v26;
        v24 = v70;
      }

      v10 = (v10 + 1);
      v25 += 16;
    }

    while (v24 > v10);
  }

  v4 = &v75;
  v28 = re::GeomMesh::operator=(a2, &v76);
  re::GeomMesh::setName(v28, v75);
  re::GeomMesh::freeName(&v75);
  v29 = re::GeomMesh::modifyVertexPositions(a2);
  v31 = v66;
  if (v66)
  {
    LODWORD(v32) = v30;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v12 = v62;
      if (v62 <= v34)
      {
        break;
      }

      v12 = *(v64 + 4 * v34);
      if (v12 != -1)
      {
        v3 = *(a1 + 40);
        if (v3 <= v34)
        {
          goto LABEL_55;
        }

        if (v12 >= v30)
        {
          goto LABEL_59;
        }

        *(v29 + 16 * v12) = *(*(a1 + 42) + v33);
        v31 = v66;
      }

      ++v34;
      v33 += 16;
      if (v31 <= v34)
      {
        goto LABEL_38;
      }
    }

    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v92 = 789;
    v93 = 2048;
    v94 = v34;
    v95 = 2048;
    v96 = v12;
    _os_log_send_and_compose_impl(v38, &v74, v97, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v74 = 0;
    v32 = v90;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v92 = 797;
    v93 = 2048;
    v94 = v34;
    v95 = 2048;
    v96 = v3;
    _os_log_send_and_compose_impl(v41, &v74, v97, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
LABEL_59:
    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v42 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v92 = 621;
    v93 = 2048;
    v94 = v12;
    v95 = 2048;
    v96 = v32;
    _os_log_send_and_compose_impl(v44, &v74, v97, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
LABEL_63:
    *v90 = 0;
    *(v10 + 3) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v97[0] = 136315906;
    *&v97[1] = "operator[]";
    LOWORD(v97[3]) = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    *(&v97[3] + 2) = 789;
    HIWORD(v97[4]) = 2048;
    *&v97[5] = v12;
    LOWORD(v97[7]) = 2048;
    *(&v97[7] + 2) = v3;
    _os_log_send_and_compose_impl(v47, v90, &v75, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
LABEL_67:
    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v92 = 797;
    v93 = 2048;
    v94 = v10;
    v95 = 2048;
    v96 = v3;
    _os_log_send_and_compose_impl(v50, &v74, v97, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v92 = 789;
    v93 = 2048;
    v94 = v6;
    v95 = 2048;
    v96 = v3;
    _os_log_send_and_compose_impl(v53, &v74, v97, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v92 = 789;
    v93 = 2048;
    v94 = v4;
    v95 = 2048;
    v96 = v3;
    _os_log_send_and_compose_impl(v56, &v74, v97, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v74 = 0;
    v98 = 0u;
    v99 = 0u;
    memset(v97, 0, sizeof(v97));
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v90 = 136315906;
    *&v90[4] = "operator[]";
    v91 = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v92 = 789;
    v93 = 2048;
    v94 = v5;
    v95 = 2048;
    v96 = v3;
    _os_log_send_and_compose_impl(v59, &v74, v97, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v60, v61[0]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_38:
  re::GeomMesh::freeName(&v75);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v81);
  if (v77[0] && v80)
  {
    (*(*v77[0] + 40))();
  }

  if (v61[0] && v64)
  {
    (*(*v61[0] + 40))();
  }

  if (v65[0] && v68)
  {
    (*(*v65[0] + 40))();
  }

  result = v69[0];
  if (v69[0] && v72)
  {
    return (*(*v69[0] + 40))();
  }

  return result;
}

double re::internal::TriangleDecimator::computeCentroidOfVertexPairOneRing(re::internal::TriangleDecimator *this, unsigned int *a2)
{
  v4 = 0;
  v5 = 0;
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  v24 = 0;
  v6 = 0uLL;
  v7 = 1;
  do
  {
    v20 = v6;
    v8 = v7;
    v9 = a2[v4 ^ 1];
    re::GeomConnectivityManifold::fetchVertexOneRing(this, a2[v4], v22);
    v11 = v23;
    if (v23)
    {
      v12 = v25;
      v6 = v20;
      do
      {
        v14 = *v12++;
        v13 = v14;
        if (v14 != v9)
        {
          v15 = *(this + 40);
          if (v15 <= v13)
          {
            v26 = 0;
            memset(v35, 0, sizeof(v35));
            v16 = MEMORY[0x1E69E9C10];
            v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            if (v17)
            {
              v18 = 3;
            }

            else
            {
              v18 = 2;
            }

            v30 = 797;
            v31 = 2048;
            v32 = v13;
            v33 = 2048;
            v34 = v15;
            _os_log_send_and_compose_impl(v18, &v26, v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v20.u64[0], v20.u64[1]);
            _os_crash_msg();
            __break(1u);
          }

          ++v5;
          v10 = *(*(this + 42) + 16 * v13);
          v6 = vaddq_f32(v6, v10);
        }

        --v11;
      }

      while (v11);
    }

    else
    {
      v6 = v20;
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  if (v22[0] && v25)
  {
    v21 = v6;
    (*(*v22[0] + 40))();
    v6 = v21;
  }

  v10.f32[0] = v5;
  v10.i64[0] = vdivq_f32(v6, vdupq_lane_s32(*v10.f32, 0)).u64[0];
  return *v10.i64;
}

void re::internal::TriangleDecimator::updateEdgeData(re::internal::TriangleDecimator *this, unsigned int a2)
{
  v9 = this;
  v105 = *MEMORY[0x1E69E9840];
  re::GeomConnectivityManifold::edgeVertices(this, a2, &v91);
  isBoundaryVertex = v91;
  v11 = *(v9 + 45);
  if (v11 <= v91)
  {
    *v93 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v57 = 3;
    }

    else
    {
      v57 = 2;
    }

    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = isBoundaryVertex;
    *&v88[28] = 2048;
    *&v88[30] = v11;
    _os_log_send_and_compose_impl(v57, v93, &v100, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
    goto LABEL_54;
  }

  v2 = v92;
  if (v11 <= v92)
  {
LABEL_54:
    *v93 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v58 = MEMORY[0x1E69E9C10];
    v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    if (v59)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }

    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = v2;
    *&v88[28] = 2048;
    *&v88[30] = v11;
    _os_log_send_and_compose_impl(v60, v93, &v100, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v3 = v93;
  v12 = *(v9 + 47);
  v13 = (v12 + 80 * v91);
  v14 = (v12 + 80 * v92);
  *v88 = vaddq_f64(*v13, *v14);
  *&v88[16] = vaddq_f64(v13[1], v14[1]);
  *&v88[32] = vaddq_f64(v13[2], v14[2]);
  v89 = vaddq_f64(v13[3], v14[3]);
  v90 = vaddq_f64(v13[4], v14[4]);
  v11 = *(v9 + 40);
  if (v11 <= v91)
  {
LABEL_58:
    v82 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v93 = 136315906;
    *(v3 + 4) = "operator[]";
    v94 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    *(v3 + 14) = 789;
    v96 = 2048;
    *(v3 + 20) = isBoundaryVertex;
    v98 = 2048;
    *(v3 + 30) = v11;
    _os_log_send_and_compose_impl(v63, &v82, &v100, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }

  if (v11 <= v92)
  {
LABEL_62:
    v82 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v64 = MEMORY[0x1E69E9C10];
    v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v93 = 136315906;
    *(v3 + 4) = "operator[]";
    v94 = 1024;
    if (v65)
    {
      v66 = 3;
    }

    else
    {
      v66 = 2;
    }

    *(v3 + 14) = 789;
    v96 = 2048;
    *(v3 + 20) = v2;
    v98 = 2048;
    *(v3 + 30) = v11;
    _os_log_send_and_compose_impl(v66, &v82, &v100, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v15 = *(v9 + 42);
  v11 = (v15 + 16 * v91);
  v16 = (v15 + 16 * v92);
  v17.i64[0] = 0x3F0000003F000000;
  v17.i64[1] = 0x3F0000003F000000;
  v86 = vmulq_f32(vaddq_f32(*v11, *v16), v17);
  v82 = v88;
  v83 = v11;
  v84 = v16;
  v85 = &v86;
  v4 = a2;
  v5 = *(v9 + 55);
  if (v5 <= a2)
  {
LABEL_66:
    v87 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v93 = 136315906;
    *(v3 + 4) = "operator[]";
    v94 = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    *(v3 + 14) = 789;
    v96 = 2048;
    *(v3 + 20) = v4;
    v98 = 2048;
    *(v3 + 30) = v5;
    _os_log_send_and_compose_impl(v69, &v87, &v100, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
    goto LABEL_70;
  }

  v18 = *(v9 + 57) + 32 * a2;
  v19 = vsubq_f32(*v16, *v11);
  v20 = vmulq_f32(v19, v19);
  if (fabsf(v20.f32[2] + vaddv_f32(*v20.f32)) >= 1.0e-10)
  {
    goto LABEL_12;
  }

  *v18 = *v11;
  v11 = *(v9 + 55);
  v21 = 0.0;
  if (v11 <= v4)
  {
    v87 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v93 = 136315906;
    *&v93[4] = "operator[]";
    v94 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v95 = 789;
    v96 = 2048;
    v97 = v4;
    v98 = 2048;
    v99 = v11;
    _os_log_send_and_compose_impl(v23, &v87, &v100, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
LABEL_12:
    isBoundaryVertex = re::GeomConnectivityManifold::isBoundaryVertex(v9, isBoundaryVertex);
    v24 = re::GeomConnectivityManifold::isBoundaryVertex(v9, v92);
    v6 = v91;
    v5 = *(v9 + 50);
    if (v5 > v91)
    {
      v7 = v92;
      if (v5 > v92)
      {
        v33 = *(v9 + 52);
        v34 = *(v33 + v91);
        v35 = *(v33 + v92);
        if (v34 && !v35)
        {
          goto LABEL_16;
        }

        if (!v35 || v34)
        {
          if (((isBoundaryVertex ^ 1 | v24) & 1) == 0)
          {
LABEL_16:
            v36 = v11->i64[0];
            v37 = v11->i64[1];
            goto LABEL_20;
          }

          if ((v24 ^ 1 | isBoundaryVertex))
          {
            if (v35)
            {
              v38 = v34 == 0;
            }

            else
            {
              v38 = 1;
            }

            v39 = v38;
            if (isBoundaryVertex ^ 1 | v24 ^ 1) == 1 && (v39)
            {
              isBoundaryVertex = *(v9 + 55);
              if (isBoundaryVertex <= v4)
              {
                goto LABEL_82;
              }

              v40 = *(*(v9 + 57) + 32 * v4 + 16);
              *&v40 = v40;
              *&v40 = fabsf(*&v40);
              LODWORD(v25.f64[0]) = 925353388;
              if (*&v40 >= 0.00001)
              {
                v53 = *(v9 + 150);
                if (v53 == 1)
                {
                  re::internal::Quadric::computeOptimalPositionAlongEdge(v88, v11, v16, &v100, v40, v25, v26, v27, v28.f64[0], v29, v30);
                }

                else if (v53)
                {
                  v36 = re::internal::TriangleDecimator::updateEdgeData::$_0::operator()(&v82);
                }

                else
                {
                  v100 = 0u;
                  v54 = re::internal::Quadric::optimalPositionConditionNumberTest(v88, &v100, 0, v25.f64[0], v26, v27, v28, v29.f64[0], v30);
                  v55 = &v86;
                  if (v54)
                  {
                    v55 = &v100;
                  }

                  v36 = v55->i64[0];
                  v37 = v55->i64[1];
                }
              }

              else if (*(v9 + 151) == 1)
              {
                re::internal::TriangleDecimator::computeCentroidOfVertexPairOneRing(v9, &v91);
              }

              else
              {
                v37 = v86.i64[1];
                v36 = v86.i64[0];
              }
            }

            else
            {
              v41 = vcvtq_f64_f32(vsub_f32(*v16->f32, *v11->f32));
              LODWORD(v25.f64[0]) = v11->i32[2];
              v27.f64[0] = (v16->f32[2] - *v25.f64);
              v42.f64[0] = *&v88[8];
              v30.f64[0] = *&v88[16];
              v31.f64[0] = *&v88[40];
              v42.f64[1] = *&v88[32];
              v32.f64[0] = v89.f64[1];
              v43 = vmulq_f64(v27, v30);
              v30.f64[1] = *&v88[40];
              v44 = vaddq_f64(vzip1q_s64(v43, vmulq_f64(v27, v31)), vpaddq_f64(vmulq_f64(v41, *v88), vmulq_f64(v41, v42)));
              v45 = vmulq_f64(v27, v32);
              v45.f64[0] = v45.f64[0] + vaddvq_f64(vmulq_f64(v41, v30));
              v46 = -(vmulq_f64(v27, v45).f64[0] + vaddvq_f64(vmulq_f64(v41, v44)));
              v47 = v46;
              v48 = fabsf(v47);
              v49 = 0.5;
              if (v48 < 0.00001 || (v50.f64[0] = *&v88[24], v32.f64[0] = v90.f64[0], v50.f64[1] = v89.f64[0], v25.f64[0] = *v25.f64, v51 = vaddvq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v25, v45), vmulq_f64(v27, v32)), vpaddq_f64(vmulq_f64(vcvtq_f64_f32(*v11->f32), v44), vmulq_f64(v41, v50)))) / v46, v49 = 0.0, v51 < 0.0) || (v49 = 1.0, v51 > 1.0))
              {
                v51 = v49;
              }

              v52 = vaddq_f32(vmulq_n_f32(*v11, 1.0 - v51), vmulq_n_f32(*v16, v51));
              v37 = v52.i64[1];
              v36 = v52.i64[0];
            }

            goto LABEL_20;
          }
        }

        v36 = v16->i64[0];
        v37 = v16->i64[1];
LABEL_20:
        *v18 = v36;
        *(v18 + 8) = v37;
        v11 = *(v9 + 55);
        if (v11 > v4)
        {
          v21 = v90.f64[1] + *&v88[32] * *(&v36 + 1) * *(&v36 + 1) + *v88 * *&v36 * *&v36 + v89.f64[1] * *&v37 * *&v37 + (*&v88[16] * *&v36 * *&v37 + *&v88[8] * *&v36 * *(&v36 + 1) + *&v88[40] * *(&v36 + 1) * *&v37 + *&v88[24] * *&v36 + v89.f64[0] * *(&v36 + 1) + v90.f64[0] * *&v37) * 2.0;
          goto LABEL_22;
        }

        goto LABEL_78;
      }

LABEL_74:
      v87 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *(v3 + 4) = "operator[]";
      v94 = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      *(v3 + 14) = 789;
      v96 = 2048;
      *(v3 + 20) = v7;
      v98 = 2048;
      *(v3 + 30) = v5;
      _os_log_send_and_compose_impl(v75, &v87, &v100, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v82, v83);
      _os_crash_msg();
      __break(1u);
LABEL_78:
      v87 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *(v3 + 4) = "operator[]";
      v94 = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      *(v3 + 14) = 789;
      v96 = 2048;
      *(v3 + 20) = v4;
      v98 = 2048;
      *(v3 + 30) = v11;
      _os_log_send_and_compose_impl(v78, &v87, &v100, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v82, v83);
      _os_crash_msg();
      __break(1u);
LABEL_82:
      v87 = 0;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      v79 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v93 = 136315906;
      *(v3 + 4) = "operator[]";
      v94 = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      *(v3 + 14) = 789;
      v96 = 2048;
      *(v3 + 20) = v4;
      v98 = 2048;
      *(v3 + 30) = isBoundaryVertex;
      _os_log_send_and_compose_impl(v81, &v87, &v100, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v82, v83);
      _os_crash_msg();
      __break(1u);
    }

LABEL_70:
    v87 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v93 = 136315906;
    *(v3 + 4) = "operator[]";
    v94 = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    *(v3 + 14) = 789;
    v96 = 2048;
    *(v3 + 20) = v6;
    v98 = 2048;
    *(v3 + 30) = v5;
    _os_log_send_and_compose_impl(v72, &v87, &v100, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v82, v83);
    _os_crash_msg();
    __break(1u);
    goto LABEL_74;
  }

LABEL_22:
  *(*(v9 + 57) + 32 * v4 + 16) = v21;
}

unint64_t re::DynamicArray<re::internal::Quadric>::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 80 * a2;
}

double re::internal::TriangleDecimator::faceArea(re::internal::TriangleDecimator *this, unsigned int a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(this + 3);
  if (v5 <= a2)
  {
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v30 = 797;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v5;
    _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v6 = (*(this + 5) + 16 * a2);
  v5 = *v6;
  v4 = *(this + 40);
  if (v4 <= v5)
  {
LABEL_10:
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v30 = 797;
    v31 = 2048;
    v32 = v5;
    v33 = 2048;
    v34 = v4;
    _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v2 = v6[1];
  if (v4 <= v2)
  {
LABEL_14:
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

    v30 = 797;
    v31 = 2048;
    v32 = v2;
    v33 = 2048;
    v34 = v4;
    _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
LABEL_18:
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

    v30 = 797;
    v31 = 2048;
    v32 = v3;
    v33 = 2048;
    v34 = v4;
    _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
  }

  v3 = v6[2];
  if (v4 <= v3)
  {
    goto LABEL_18;
  }

  v7 = *(this + 42);
  v8 = *(v7 + 16 * v5);
  v9 = vsubq_f32(*(v7 + 16 * v3), v8);
  v10 = vsubq_f32(*(v7 + 16 * v2), v8);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v12 = vmulq_f32(v11, v11);
  return sqrtf(v12.f32[1] + (v12.f32[2] + v12.f32[0])) * 0.5;
}

uint64_t re::internal::TriangleDecimator::checkForFlip(re::GeomConnectivityManifold *a1, unsigned int a2, unsigned int a3, float32x4_t *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v47 = 0;
  re::GeomConnectivityManifold::fetchVertexIncidentFaces(a1, a2, &v44);
  v8 = a2;
  v9 = *(a1 + 40);
  if (v9 <= a2)
  {
    goto LABEL_40;
  }

  if (v46)
  {
    v10 = *(a1 + 42);
    v11 = *(a1 + 3);
    v12 = 0xFFFFFFFFLL;
    v13 = 0xFFFFFFFFLL;
    v14 = v48;
    v15 = *a4;
    v16 = a3;
    while (1)
    {
      v17 = *v14;
      if (v11 <= v17)
      {
        break;
      }

      v18 = 0;
      v50 = *(*(a1 + 5) + 16 * v17);
      while (*(&v50 + v18) != a2)
      {
        if (++v18 == 3)
        {
          goto LABEL_16;
        }
      }

      if (v18 == 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18 + 1;
      }

      v12 = *(&v50 + v19);
      if (v18)
      {
        v20 = (v18 - 1);
      }

      else
      {
        v20 = 2;
      }

      v13 = *(&v50 + v20);
LABEL_16:
      if (v12 != v16 && v13 != v16)
      {
        if (v9 <= v12)
        {
          goto LABEL_32;
        }

        if (v9 <= v13)
        {
          goto LABEL_36;
        }

        v21 = *(v10 + 16 * v12);
        v22 = *(v10 + 16 * a2);
        v23 = *(v10 + 16 * v13);
        v24 = vsubq_f32(v21, v22);
        v25 = vsubq_f32(v23, v22);
        v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), vnegq_f32(v24)), v25, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
        v27 = vsubq_f32(v21, v15);
        v28 = vsubq_f32(v23, v15);
        v29 = vmulq_f32(v26, vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), vnegq_f32(v27)), v28, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL)));
        if ((v29.f32[1] + (v29.f32[2] + v29.f32[0])) <= 0.0)
        {
          v30 = 0;
          goto LABEL_24;
        }
      }

      if (++v14 == &v48[v46])
      {
        goto LABEL_22;
      }
    }

    v49 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v54 = 797;
    v55 = 2048;
    v56 = v17;
    v57 = 2048;
    v58 = v11;
    _os_log_send_and_compose_impl(v34, &v49, &v59, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v49 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v54 = 789;
    v55 = 2048;
    v56 = v12;
    v57 = 2048;
    v58 = v9;
    _os_log_send_and_compose_impl(v37, &v49, &v59, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    v49 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v54 = 789;
    v55 = 2048;
    v56 = v13;
    v57 = 2048;
    v58 = v9;
    _os_log_send_and_compose_impl(v40, &v49, &v59, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    *&v50 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v54 = 789;
    v55 = 2048;
    v56 = v8;
    v57 = 2048;
    v58 = v9;
    _os_log_send_and_compose_impl(v43, &v50, &v59, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v44, v45);
    _os_crash_msg();
    __break(1u);
  }

LABEL_22:
  v30 = 1;
LABEL_24:
  if (v44 && v48)
  {
    (*(*v44 + 40))();
  }

  return v30;
}

uint64_t re::internal::TriangleDecimator::decimateOneEdge(re::internal::TriangleDecimator *this)
{
  v144 = *MEMORY[0x1E69E9840];
  v3 = *(this + 67);
  if (!v3)
  {
    return 0;
  }

  v4 = this;
  v5 = v130;
  v6 = *(this + 69);
  *v119 = *v6;
  v120 = *(v6 + 16);
  if (v3 == 1)
  {
    *(this + 67) = 0;
    ++*(this + 136);
    goto LABEL_13;
  }

  v7 = v3 - 1;
  if (v3 <= v7)
  {
LABEL_115:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v7;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v3;
    _os_log_send_and_compose_impl(v68, v124, &v139, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
    goto LABEL_119;
  }

  v8 = (v6 + 24 * v7);
  v9 = *v8;
  *(v6 + 16) = *(v8 + 2);
  *v6 = v9;
  v10 = *(this + 67);
  if (!v10)
  {
LABEL_119:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v69 = MEMORY[0x1E69E9C10];
    v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = 0;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = 0;
    _os_log_send_and_compose_impl(v71, v124, &v139, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
    goto LABEL_123;
  }

  v3 = **(this + 69);
  v1 = *(this + 72);
  if (v1 <= v3)
  {
LABEL_123:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v72 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v3;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v1;
    _os_log_send_and_compose_impl(v74, v124, &v139, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
    goto LABEL_127;
  }

  *(*(this + 74) + 4 * v3) = 0;
  if (v10 < v7)
  {
    if (*(this + 66) < v7)
    {
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(this + 65, v7);
    }

    goto LABEL_11;
  }

  if (v10 > v7)
  {
LABEL_11:
    *(v4 + 67) = v7;
    ++*(v4 + 136);
  }

  re::internal::IndexedPriorityQueue::rebalance((v4 + 520), 0);
LABEL_13:
  v2 = v119[0];
  v7 = *(v4 + 72);
  if (v7 <= v119[0])
  {
LABEL_99:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v2;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl(v56, v124, &v139, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_103:
    *v132 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    *&v124[14] = 797;
    *&v124[18] = 2048;
    *&v124[20] = v3;
    v125 = 2048;
    *v126 = v5;
    _os_log_send_and_compose_impl(v59, v132, &v139, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_107:
    *v132 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v60 = MEMORY[0x1E69E9C10];
    v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v61)
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    *&v124[14] = 797;
    *&v124[18] = 2048;
    *&v124[20] = v5;
    v125 = 2048;
    *v126 = v2;
    _os_log_send_and_compose_impl(v62, v132, &v139, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_111:
    *v132 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v124 = 136315906;
    *&v124[4] = "operator[]";
    *&v124[12] = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    *&v124[14] = 789;
    *&v124[18] = 2048;
    *&v124[20] = v3;
    v125 = 2048;
    *v126 = v5;
    _os_log_send_and_compose_impl(v65, v132, &v139, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
    goto LABEL_115;
  }

  *(*(v4 + 74) + 4 * v119[0]) = -1;
  if (!re::GeomConnectivityManifold::isCollapseEdgeSafe(v4, v2))
  {
    return 0;
  }

  LODWORD(v11) = re::GeomConnectivityManifold::isBoundaryEdge(v4, v2);
  re::GeomConnectivityManifold::edgeVertices(v4, v2, &v122);
  if (*(v4 + 628) == 1)
  {
    v3 = v122;
    v7 = *(v4 + 40);
    if (v7 <= v122)
    {
LABEL_131:
      *v124 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      v78 = MEMORY[0x1E69E9C10];
      v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130[0].i32[0] = 136315906;
      *(v130[0].i64 + 4) = "operator[]";
      v130[0].i16[6] = 1024;
      if (v79)
      {
        v80 = 3;
      }

      else
      {
        v80 = 2;
      }

      *(&v130[0].i32[3] + 2) = 789;
      v130[1].i16[1] = 2048;
      *(v5 + 20) = v3;
      v130[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl(v80, v124, &v139, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
      _os_crash_msg();
      __break(1u);
      goto LABEL_135;
    }

    v1 = v123;
    if (v7 <= v123)
    {
LABEL_135:
      *v124 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      v81 = MEMORY[0x1E69E9C10];
      v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130[0].i32[0] = 136315906;
      *(v130[0].i64 + 4) = "operator[]";
      v130[0].i16[6] = 1024;
      if (v82)
      {
        v83 = 3;
      }

      else
      {
        v83 = 2;
      }

      *(&v130[0].i32[3] + 2) = 789;
      v130[1].i16[1] = 2048;
      *(v5 + 20) = v1;
      v130[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl(v83, v124, &v139, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
      _os_crash_msg();
      __break(1u);
LABEL_139:
      *v124 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      v84 = MEMORY[0x1E69E9C10];
      v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130[0].i32[0] = 136315906;
      *(v130[0].i64 + 4) = "operator[]";
      v130[0].i16[6] = 1024;
      if (v85)
      {
        v86 = 3;
      }

      else
      {
        v86 = 2;
      }

      *(&v130[0].i32[3] + 2) = 789;
      v130[1].i16[1] = 2048;
      *(v5 + 20) = v3;
      v130[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl(v86, v124, &v139, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
      _os_crash_msg();
      __break(1u);
LABEL_143:
      *v132 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      v87 = MEMORY[0x1E69E9C10];
      v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v124 = 136315906;
      *&v124[4] = "operator[]";
      *&v124[12] = 1024;
      if (v88)
      {
        v89 = 3;
      }

      else
      {
        v89 = 2;
      }

      *&v124[14] = 789;
      *&v124[18] = 2048;
      *&v124[20] = v3;
      v125 = 2048;
      *v126 = v5;
      _os_log_send_and_compose_impl(v89, v132, &v139, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v124, 38, v114, v115);
      _os_crash_msg();
      __break(1u);
      goto LABEL_147;
    }

    v12 = vsubq_f32(*(*(v4 + 42) + 16 * v122), *(*(v4 + 42) + 16 * v123));
    v13 = vmulq_f32(v12, v12);
    if ((v13.f32[2] + vaddv_f32(*v13.f32)) > (*(v4 + 158) * *(v4 + 158)))
    {
      return 0;
    }
  }

  if (*(v4 + 617) == 1)
  {
    v3 = v122;
    v7 = *(v4 + 50);
    if (v7 <= v122)
    {
      goto LABEL_139;
    }

    v14 = *(v4 + 52);
    if (*(v14 + v122))
    {
      v3 = v123;
      if (v7 <= v123)
      {
LABEL_147:
        *v124 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        v90 = MEMORY[0x1E69E9C10];
        v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v130[0].i32[0] = 136315906;
        *(v130[0].i64 + 4) = "operator[]";
        v130[0].i16[6] = 1024;
        if (v91)
        {
          v92 = 3;
        }

        else
        {
          v92 = 2;
        }

        *(&v130[0].i32[3] + 2) = 789;
        v130[1].i16[1] = 2048;
        *(v5 + 20) = v3;
        v130[1].i16[6] = 2048;
        *(v5 + 30) = v7;
        _os_log_send_and_compose_impl(v92, v124, &v139, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
        _os_crash_msg();
        __break(1u);
LABEL_151:
        *v124 = 0;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v139 = 0u;
        v93 = MEMORY[0x1E69E9C10];
        v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v130[0].i32[0] = 136315906;
        *(v130[0].i64 + 4) = "operator[]";
        v130[0].i16[6] = 1024;
        if (v94)
        {
          v95 = 3;
        }

        else
        {
          v95 = 2;
        }

        *(&v130[0].i32[3] + 2) = 797;
        v130[1].i16[1] = 2048;
        *(v5 + 20) = v2;
        v130[1].i16[6] = 2048;
        *(v5 + 30) = v7;
        _os_log_send_and_compose_impl(v95, v124, &v139, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
        _os_crash_msg();
        __break(1u);
        goto LABEL_155;
      }

      if (*(v14 + v123))
      {
        return 0;
      }
    }
  }

  v7 = *(v4 + 55);
  if (v7 <= v2)
  {
LABEL_127:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v2;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl(v77, v124, &v139, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
    goto LABEL_131;
  }

  v1 = *(v4 + 57) + 32 * v2;
  if (*(v4 + 608))
  {
    if (!*(v4 + 617))
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (!re::internal::TriangleDecimator::checkForFlip(v4, v122, v123, (*(v4 + 57) + 32 * v2)) || !re::internal::TriangleDecimator::checkForFlip(v4, v123, v122, v1))
    {
      return 0;
    }

    if ((*(v4 + 617) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v7 = *(v4 + 28);
  if (v7 <= v2)
  {
    goto LABEL_151;
  }

  v7 = *(*(v4 + 30) + 4 * v2);
  v3 = *(v4 + 8);
  if (v3 <= v7)
  {
LABEL_155:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v96 = MEMORY[0x1E69E9C10];
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    *(&v130[0].i32[3] + 2) = 797;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v7;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v3;
    _os_log_send_and_compose_impl(v98, v124, &v139, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_159:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v100)
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v3;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl(v101, v124, &v139, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
    goto LABEL_163;
  }

  v15 = *(*(v4 + 10) + 4 * v7);
  if ((v15 & 0x40000000) != 0)
  {
    v16 = -1;
    v17 = 1;
  }

  else
  {
    v16 = v15 & 0xFFFFFFF;
    v15 = re::GeomConnectivityManifold::faceVertexDualHalfEdge(v4, v15 & 0xFFFFFFF, (v15 >> 28) & 3);
    v17 = 2;
  }

  v3 = v15 & 0xFFFFFFF;
  v129[0] = v15 & 0xFFFFFFF;
  v129[1] = v16;
  v7 = *(v4 + 94);
  if (v7 <= v3)
  {
    goto LABEL_159;
  }

  v118 = v15 & 0xFFFFFFF;
  v3 = *(*(v4 + 96) + 4 * v3);
  v7 = *(v4 + 99);
  if (v7 <= v3)
  {
LABEL_163:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v102 = MEMORY[0x1E69E9C10];
    v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v103)
    {
      v104 = 3;
    }

    else
    {
      v104 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v3;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl(v104, v124, &v139, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_167:
    *v124 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v139 = 0u;
    v105 = MEMORY[0x1E69E9C10];
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v130[0].i32[0] = 136315906;
    *(v130[0].i64 + 4) = "operator[]";
    v130[0].i16[6] = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    *(&v130[0].i32[3] + 2) = 789;
    v130[1].i16[1] = 2048;
    *(v5 + 20) = v7;
    v130[1].i16[6] = 2048;
    *(v5 + 30) = v3;
    _os_log_send_and_compose_impl(v107, v124, &v139, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
    goto LABEL_171;
  }

  if (*(*(v4 + 101) + 16 * v3 + 4) == 0.0)
  {
    return 0;
  }

  v116 = v3;
  HIDWORD(v115) = v11;
  v20 = 0;
  v21 = 4 * v17;
  v22 = 0.0;
  do
  {
    v22 = v22 - re::internal::TriangleDecimator::faceArea(v4, v129[v20 / 4]);
    v20 += 4;
  }

  while (v21 != v20);
  v23 = &v127;
  v114 = v2;
  re::GeomConnectivityManifold::edgeVertices(v4, v2, &v127);
  *&v126[2] = 0;
  v24 = 1;
  memset(v124, 0, sizeof(v124));
  v7 = v131;
  v25 = 0.5;
  v26 = v118;
  do
  {
    v117 = v24;
    re::GeomConnectivityManifold::fetchVertexIncidentFaces(v4, *v23, v124);
    if (*&v124[16])
    {
      v2 = *&v126[2];
      v11 = *&v126[2] + 4 * *&v124[16];
      while (1)
      {
        v5 = *v2;
        if (v5 != v26 && v5 != v16)
        {
          break;
        }

LABEL_57:
        v2 += 4;
        if (v2 == v11)
        {
          goto LABEL_58;
        }
      }

      v28 = *v23;
      memset(v130, 0, sizeof(v130));
      v3 = *(v4 + 3);
      if (v3 > v5)
      {
        v29 = 0;
        *v131 = *(*(v4 + 5) + 16 * v5);
        v30 = v130;
        while (1)
        {
          v31 = v131[v29];
          v32 = v1;
          if (v31 != v28)
          {
            v33 = *(v4 + 40);
            if (v33 <= v31)
            {
              v121 = 0;
              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v139 = 0u;
              v4 = MEMORY[0x1E69E9C10];
              v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v132 = 136315906;
              *&v132[4] = "operator[]";
              v133 = 1024;
              if (v40)
              {
                v41 = 3;
              }

              else
              {
                v41 = 2;
              }

              v134 = 797;
              v135 = 2048;
              v136 = v31;
              v137 = 2048;
              v138 = v33;
              _os_log_send_and_compose_impl(v41, &v121, &v139, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v132, 38, v114, v115);
              _os_crash_msg();
              __break(1u);
LABEL_66:
              *(v38 + 4) = 0;
              goto LABEL_67;
            }

            v32 = (*(v4 + 42) + 16 * v31);
          }

          *v30++ = *v32;
          if (++v29 == 3)
          {
            v34 = vsubq_f32(v130[2], v130[0]);
            v35 = vsubq_f32(v130[1], v130[0]);
            v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
            v37 = vmulq_f32(v36, v36);
            v22 = v22 + sqrtf(v37.f32[1] + (v37.f32[2] + v37.f32[0])) * 0.5 - re::internal::TriangleDecimator::faceArea(v4, v5);
            v26 = v118;
            goto LABEL_57;
          }
        }
      }

      *v131 = 0;
      v142 = 0uLL;
      v143 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v139 = 0uLL;
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v132 = 136315906;
      *&v132[4] = "operator[]";
      v133 = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      v134 = 797;
      v135 = 2048;
      v136 = v5;
      v137 = 2048;
      v138 = v3;
      _os_log_send_and_compose_impl(v53, v131, &v139, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v132, 38, v114, v115);
      _os_crash_msg();
      __break(1u);
      goto LABEL_99;
    }

LABEL_58:
    v24 = 0;
    v23 = &v128;
  }

  while ((v117 & 1) != 0);
  v7 = *(v4 + 99);
  v3 = v116;
  if (v7 <= v116)
  {
    goto LABEL_175;
  }

  v38 = *(v4 + 101) + 16 * v116;
  v39 = v22 + *(v38 + 8);
  v22 = fabs(v39);
  v25 = *(v38 + 4);
  v5 = v130;
  LODWORD(v11) = HIDWORD(v115);
  v2 = v114;
  if (v22 >= v25)
  {
    goto LABEL_66;
  }

  *(v38 + 8) = v39;
LABEL_67:
  if (*v124 && *&v126[2])
  {
    (*(**v124 + 40))();
  }

  if (v22 >= v25)
  {
    return 0;
  }

LABEL_71:
  v131[0] = 0;
  re::GeomConnectivityManifold::collapseEdgeWithoutSafetyCheck(v4, v2, v131);
  if (re::GeomConnectivityManifold::isValidVertex(v4, v131[0]))
  {
    if (v131[0] == v122)
    {
      v42 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v123);
      v43 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v122);
      re::internal::Quadric::operator+=(v43, v42);
      v44 = re::DynamicArray<unsigned char>::operator[](v4 + 384, v123);
      v45 = v122;
    }

    else
    {
      v46 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v122);
      v47 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v123);
      re::internal::Quadric::operator+=(v47, v46);
      v44 = re::DynamicArray<unsigned char>::operator[](v4 + 384, v122);
      v45 = v123;
    }

    v7 = v45;
    v3 = *(v4 + 50);
    if (v3 <= v45)
    {
      goto LABEL_167;
    }

    *(*(v4 + 52) + v45) |= *v44;
    v3 = v131[0];
    v7 = *(v4 + 40);
    if (v7 <= v131[0])
    {
LABEL_171:
      *v124 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      v108 = MEMORY[0x1E69E9C10];
      v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130[0].i32[0] = 136315906;
      *(v130[0].i64 + 4) = "operator[]";
      v130[0].i16[6] = 1024;
      if (v109)
      {
        v110 = 3;
      }

      else
      {
        v110 = 2;
      }

      *(&v130[0].i32[3] + 2) = 789;
      v130[1].i16[1] = 2048;
      *(v5 + 20) = v3;
      v130[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl(v110, v124, &v139, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
      _os_crash_msg();
      __break(1u);
LABEL_175:
      *v132 = 0;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v139 = 0u;
      v111 = MEMORY[0x1E69E9C10];
      v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v130[0].i32[0] = 136315906;
      *(v130[0].i64 + 4) = "operator[]";
      v130[0].i16[6] = 1024;
      if (v112)
      {
        v113 = 3;
      }

      else
      {
        v113 = 2;
      }

      *(&v130[0].i32[3] + 2) = 789;
      v130[1].i16[1] = 2048;
      *(v130[1].i64 + 4) = v3;
      v130[1].i16[6] = 2048;
      *(&v130[1].i64[1] + 6) = v7;
      _os_log_send_and_compose_impl(v113, v132, &v139, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v130, 38, v114, v115);
      _os_crash_msg();
      __break(1u);
    }

    *(*(v4 + 42) + 16 * v131[0]) = *v1;
    v130[2].i64[0] = 0;
    memset(v130, 0, 28);
    re::GeomConnectivityManifold::fetchVertexIncidentEdges(v4, v3, v130);
    if (v130[1].i64[0])
    {
      v7 = v130[2].u64[0];
      v1 = 4 * v130[1].i64[0];
      while (1)
      {
        v3 = *v7;
        re::internal::TriangleDecimator::updateEdgeData(v4, *v7);
        v5 = *(v4 + 72);
        if (v5 <= v3)
        {
          goto LABEL_103;
        }

        v5 = *(*(v4 + 74) + 4 * v3);
        if (v5 != -1)
        {
          break;
        }

        if ((*(v4 + 640) & 1) == 0)
        {
          v5 = *(v4 + 55);
          if (v5 <= v3)
          {
            goto LABEL_143;
          }

          *&v119[2] = *(*(v4 + 57) + 32 * v3 + 16);
          LODWORD(v139) = v3;
          *(&v139 + 1) = *&v119[2];
          *&v140 = 0;
          v49 = (v4 + 520);
          v50 = &v139;
LABEL_87:
          re::internal::IndexedPriorityQueue::pushOrChangeCost(v49, v50);
        }

        v7 += 4;
        v1 -= 4;
        if (!v1)
        {
          goto LABEL_89;
        }
      }

      v2 = *(v4 + 67);
      if (v2 <= v5)
      {
        goto LABEL_107;
      }

      v48 = *(v4 + 69) + 24 * v5;
      *v119 = *v48;
      v120 = *(v48 + 16);
      v5 = *(v4 + 55);
      if (v5 <= v3)
      {
        goto LABEL_111;
      }

      *&v119[2] = *(*(v4 + 57) + 32 * v3 + 16);
      v120 = v120 + 1.0;
      v49 = (v4 + 520);
      v50 = v119;
      goto LABEL_87;
    }

LABEL_89:
    if (v130[0].i64[0] && v130[2].i64[0])
    {
      (*(*v130[0].i64[0] + 40))();
    }
  }

  if (v11)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t re::GeomConnectivityManifold::isBoundaryEdge(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 28);
  if (v3 <= a2)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v6, &v11, &v20, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, &v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 30) + 4 * a2);
  v3 = *(this + 8);
  if (v3 <= v2)
  {
    goto LABEL_8;
  }

  return (*(*(this + 10) + 4 * v2) >> 30) & 1;
}

float64x2_t re::internal::Quadric::operator+=(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = vaddq_f64(a2[1], v2);
  v3 = a1[3];
  a1[2] = vaddq_f64(a2[2], a1[2]);
  a1[3] = vaddq_f64(a2[3], v3);
  result = vaddq_f64(a2[4], a1[4]);
  a1[4] = result;
  return result;
}

re::internal::IndexedPriorityQueue *re::internal::IndexedPriorityQueue::pushOrChangeCost(re::internal::IndexedPriorityQueue *this, double *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(this + 7);
  if (v3 <= v2)
  {
LABEL_27:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v29 = 797;
    v30 = 2048;
    v31 = v2;
    v32 = 2048;
    v33 = v3;
    _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v6;
    v32 = 2048;
    v33 = v2;
    _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
    _os_crash_msg();
    __break(1u);
  }

  v5 = this;
  v6 = *(*(this + 9) + 4 * v2);
  if (v6 == -1)
  {

    return re::internal::IndexedPriorityQueue::push(this, a2);
  }

  else
  {
    v2 = *(this + 2);
    if (v2 <= v6)
    {
      goto LABEL_31;
    }

    v7 = *(this + 4) + 24 * v6;
    v8 = *(v7 + 8);
    v9 = a2[1];
    if ((v8 - v9) * (v8 - v9) <= 1.0e-12)
    {
      v8 = *(v7 + 16);
      v9 = a2[2];
    }

    if (v8 <= v9)
    {
      if (v8 < v9)
      {
        v16 = *a2;
        *(v7 + 16) = a2[2];
        *v7 = v16;

        return re::internal::IndexedPriorityQueue::rebalance(this, v6);
      }
    }

    else
    {
      v10 = *a2;
      *(v7 + 16) = a2[2];
      *v7 = v10;
      if (v6)
      {
        v3 = 24;
        while (1)
        {
          v11 = v6 - 1;
          v2 = (v6 - 1) >> 1;
          v12 = *(v5 + 2);
          if (v12 <= v2)
          {
            break;
          }

          v13 = *(v5 + 4) + 24 * v2;
          v14 = *(v13 + 8);
          v15 = a2[1];
          if ((v14 - v15) * (v14 - v15) <= 1.0e-12)
          {
            v14 = *(v13 + 16);
            v15 = a2[2];
          }

          if (v14 > v15)
          {
            this = re::internal::IndexedPriorityQueue::swap(v5, v6, v11 >> 1);
            LODWORD(v6) = v11 >> 1;
            if (v11 >= 2)
            {
              continue;
            }
          }

          return this;
        }

        v25 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        v17 = MEMORY[0x1E69E9C10];
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v29 = 789;
        v30 = 2048;
        v31 = v11 >> 1;
        v32 = 2048;
        v33 = v12;
        _os_log_send_and_compose_impl(v18, &v25, &v34, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
        _os_crash_msg();
        __break(1u);
        goto LABEL_27;
      }
    }
  }

  return this;
}

unsigned int *re::internal::TriangleDecimator::computeQuadrics(unsigned int *this)
{
  v4 = this;
  v164 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = *(this + 45);
  if (v6 >= v5)
  {
    if (v6 <= v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*(this + 44) < v5)
    {
      this = re::DynamicArray<re::internal::Quadric>::setCapacity(this + 43, v5);
      v6 = *(v4 + 45);
    }

    v7 = v5 - v6;
    if (v5 > v6)
    {
      v8 = 80 * v6;
      do
      {
        v9 = (*(v4 + 47) + v8);
        v9[3] = 0uLL;
        v9[4] = 0uLL;
        v9[1] = 0uLL;
        v9[2] = 0uLL;
        *v9 = 0uLL;
        v8 += 80;
        --v7;
      }

      while (v7);
    }
  }

  *(v4 + 45) = v5;
  ++v4[92];
  v6 = v5;
LABEL_10:
  v148 = 0;
  v145[1] = 0;
  v146 = 0;
  v145[0] = 0;
  v147 = 0;
  if (v5)
  {
    v10 = 0;
    v139 = v5;
    do
    {
      if (v6 <= v10)
      {
        goto LABEL_112;
      }

      v11 = (*(v4 + 47) + 80 * v10);
      v11[3] = 0u;
      v11[4] = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      *v11 = 0u;
      re::GeomConnectivityManifold::fetchVertexIncidentFaces(v4, v10, v145);
      v12 = v146;
      if (v146)
      {
        v13 = 0;
        v14 = 0;
        v143 = 0u;
        v144 = 0u;
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        while (1)
        {
          v6 = *(v148 + 4 * v13);
          v15 = *(v4 + 3);
          if (v15 <= v6)
          {
            break;
          }

          v16 = (*(v4 + 5) + 16 * v6);
          v15 = *v16;
          v3 = *(v4 + 40);
          if (v3 <= v15)
          {
            goto LABEL_72;
          }

          v1 = v16[1];
          if (v3 <= v1)
          {
            goto LABEL_76;
          }

          v2 = v16[2];
          if (v3 <= v2)
          {
            goto LABEL_80;
          }

          v17 = *(v4 + 42);
          v18 = *(v17 + 16 * v15);
          v19 = vsubq_f32(*(v17 + 16 * v1), v18);
          v20 = vsubq_f32(*(v17 + 16 * v2), v18);
          v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
          v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
          if ((v4[154] & 1) == 0)
          {
            v23 = vmulq_f32(v21, v21);
            v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
            if (v24 > 0.0)
            {
              v25 = v24;
              v26 = vrsqrte_f32(LODWORD(v24));
              v27 = vmul_f32(v26, vrsqrts_f32(LODWORD(v25), vmul_f32(v26, v26)));
              v22 = vmulq_n_f32(v22, vmul_f32(v27, vrsqrts_f32(LODWORD(v25), vmul_f32(v27, v27))).f32[0]);
            }
          }

          v15 = *(v4 + 45);
          if (v15 <= v10)
          {
            goto LABEL_84;
          }

          v28 = vmulq_f32(v18, v22);
          v28.f32[0] = v28.f32[2] + vaddv_f32(*v28.f32);
          v29 = (*(v4 + 47) + 80 * v10);
          v30 = vdup_laneq_s32(v22, 2);
          v31.i32[0] = v30.i32[0];
          v31.f32[1] = -v28.f32[0];
          v32 = vaddq_f64(v29[1], vcvtq_f64_f32(vmul_n_f32(v31, *v22.i32)));
          *v29 = vaddq_f64(*v29, vcvtq_f64_f32(vmul_n_f32(*v22.i8, *v22.i32)));
          v29[1] = v32;
          v33 = vextq_s8(v22, v22, 4uLL).u64[0];
          v34 = vaddq_f64(v29[2], vcvtq_f64_f32(vmul_lane_f32(v33, *v22.i8, 1)));
          HIDWORD(v32.f64[0]) = v30.i32[1];
          *v32.f64 = -v28.f32[0];
          v35 = vaddq_f64(v29[3], vcvtq_f64_f32(vmul_f32(v33, *&v32.f64[0])));
          v29[2] = v34;
          v29[3] = v35;
          v30.i32[1] = v28.i32[0];
          HIDWORD(v34.f64[0]) = v28.i32[0];
          *v34.f64 = -v28.f32[0];
          v29[4] = vaddq_f64(v29[4], vcvtq_f64_f32(vmul_f32(v30, *&v34.f64[0])));
          if (v12 <= v13)
          {
            goto LABEL_88;
          }

          if (re::GeomConnectivityManifold::isBoundaryFace(v4, v6) && re::GeomConnectivityManifold::isBoundaryVertex(v4, v10))
          {
            v15 = v146;
            if (v146 <= v13)
            {
              goto LABEL_92;
            }

            v15 = *(v148 + 4 * v13);
            v6 = *(v4 + 3);
            if (v6 <= v15)
            {
              goto LABEL_96;
            }

            v36 = 0;
            v150 = *(*(v4 + 5) + 16 * v15);
            LODWORD(v6) = -1;
            LODWORD(v13) = -1;
            do
            {
              v37 = *(&v150 + v36);
              if (v6 == -1)
              {
                v38 = *(&v150 + v36);
              }

              else
              {
                v38 = v6;
              }

              if (v6 == -1 || v10 == v37)
              {
                v13 = v13;
              }

              else
              {
                v13 = v37;
              }

              if (v10 == v37)
              {
                v6 = v6;
              }

              else
              {
                v6 = v38;
              }

              v36 += 4;
            }

            while (v36 != 12);
            v12 = *(v4 + 40);
            if (v12 <= v10)
            {
              goto LABEL_100;
            }

            if (v12 <= v6)
            {
              goto LABEL_104;
            }

            if (v12 <= v13)
            {
              goto LABEL_108;
            }

            v40 = *(v4 + 42);
            isBoundaryVertex = re::GeomConnectivityManifold::isBoundaryVertex(v4, v6);
            v42 = re::GeomConnectivityManifold::isBoundaryVertex(v4, v13);
            if (isBoundaryVertex & 1) != 0 || (v43 = 0uLL, v44 = 0uLL, v45 = 0uLL, v46 = 0uLL, v47 = 0uLL, (v42))
            {
              v48 = *(v40 + 16 * v10);
              v49 = vsubq_f32(*(v40 + 16 * v6), v48);
              v50 = vsubq_f32(*(v40 + 16 * v13), v48);
              v51 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
              v52 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
              v53 = vnegq_f32(v49);
              v54 = vmlaq_f32(vmulq_f32(v52, v53), v50, v51);
              v55 = vmulq_f32(v54, v54);
              v56 = v55.f32[1] + (v55.f32[2] + v55.f32[0]);
              v57 = 0uLL;
              v58 = 0uLL;
              if (v56 > 0.0)
              {
                v59 = v56;
                v60 = vrsqrte_f32(LODWORD(v56));
                v61 = vmul_f32(v60, vrsqrts_f32(LODWORD(v59), vmul_f32(v60, v60)));
                v58 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vmul_f32(v61, vrsqrts_f32(LODWORD(v59), vmul_f32(v61, v61))).f32[0]);
              }

              v62 = vaddq_f32(v48, v58);
              v63 = 0uLL;
              v64 = 0uLL;
              v65 = 0uLL;
              v66 = 0uLL;
              if (isBoundaryVertex)
              {
                v67 = vsubq_f32(v62, v48);
                v68 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), v53), v67, v51);
                v69 = vmulq_f32(v68, v68);
                v70 = v69.f32[1] + (v69.f32[2] + v69.f32[0]);
                v71 = 0uLL;
                if (v70 > 0.0)
                {
                  v72 = v70;
                  v73 = vrsqrte_f32(LODWORD(v70));
                  v74 = vmul_f32(v73, vrsqrts_f32(LODWORD(v72), vmul_f32(v73, v73)));
                  v71 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vmul_f32(v74, vrsqrts_f32(LODWORD(v72), vmul_f32(v74, v74))).f32[0]);
                }

                v75 = vmulq_f32(v48, v71);
                v76 = v75.f32[2] + vaddv_f32(*v75.f32);
                v57.f64[0] = vmulq_f32(v71, v71).f32[0];
                v77.f32[0] = vmuls_lane_f32(v71.f32[0], v71, 2);
                v77.f32[1] = -v76 * v71.f32[0];
                v64.f64[0] = vmuls_lane_f32(v71.f32[1], *v71.f32, 1);
                v78 = vmuls_lane_f32(v71.f32[1], v71, 2);
                v79 = vmuls_lane_f32(v76, *v71.f32, 1);
                v80 = vmuls_lane_f32(v71.f32[2], v71, 2);
                v81 = vmuls_lane_f32(v76, v71, 2);
                v82 = (v76 * v76);
                v83 = vmuls_lane_f32(v71.f32[0], *v71.f32, 1) + 0.0;
                v63 = vaddq_f64(vcvtq_f64_f32(v77), 0);
                v84 = v78 + 0.0;
                v65.f64[0] = 0.0 - v79;
                v66.f64[0] = 0.0 - v81;
                v57.f64[1] = v83;
                v64.f64[1] = v84;
                v65.f64[1] = v80;
                v66.f64[1] = v82;
              }

              if (v42)
              {
                v85 = vsubq_f32(v62, v48);
                v86 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL), vnegq_f32(v50)), v85, v52);
                v87 = vmulq_f32(v86, v86);
                v88 = v87.f32[1] + (v87.f32[2] + v87.f32[0]);
                v89 = 0uLL;
                if (v88 > 0.0)
                {
                  v90 = vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL);
                  v91 = v88;
                  v92 = vrsqrte_f32(LODWORD(v88));
                  v93 = vmul_f32(v92, vrsqrts_f32(LODWORD(v91), vmul_f32(v92, v92)));
                  v89 = vmulq_n_f32(v90, vmul_f32(v93, vrsqrts_f32(LODWORD(v91), vmul_f32(v93, v93))).f32[0]);
                }

                v94 = vmulq_f32(v48, v89);
                v94.f32[0] = v94.f32[2] + vaddv_f32(*v94.f32);
                v95 = vdup_laneq_s32(v89, 2);
                v96 = vextq_s8(v89, v89, 4uLL).u64[0];
                v97.i32[1] = v95.i32[1];
                v97.f32[0] = -v94.f32[0];
                v95.i32[1] = v94.i32[0];
                v57 = vaddq_f64(v57, vcvtq_f64_f32(vmul_n_f32(*v89.i8, *v89.i32)));
                v63 = vaddq_f64(v63, vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-v94.f32[0], v95.u32[0]), *v89.i32)));
                v64 = vaddq_f64(v64, vcvtq_f64_f32(vmul_lane_f32(v96, *v89.i8, 1)));
                v65 = vaddq_f64(v65, vcvtq_f64_f32(vmul_f32(v96, v97)));
                v66 = vaddq_f64(v66, vcvtq_f64_f32(vmul_f32(v95, __PAIR64__(v94.u32[0], -v94.f32[0]))));
              }

              v98 = *(v4 + 153);
              v43 = vmulq_n_f64(v57, v98);
              v44 = vmulq_n_f64(v63, v98);
              v45 = vmulq_n_f64(v64, v98);
              v46 = vmulq_n_f64(v65, v98);
              v47 = vmulq_n_f64(v66, v98);
            }

            v142 = vaddq_f64(v142, v45);
            v140 = vaddq_f64(v140, v44);
            v141 = vaddq_f64(v141, v46);
            v143 = vaddq_f64(v143, v47);
            v144 = vaddq_f64(v144, v43);
          }

          v12 = v146;
          v13 = ++v14;
          if (v146 <= v14)
          {
            goto LABEL_62;
          }
        }

        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v102 = MEMORY[0x1E69E9C10];
        v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v103)
        {
          v104 = 3;
        }

        else
        {
          v104 = 2;
        }

        v154 = 797;
        v155 = 2048;
        v156 = v6;
        v157 = 2048;
        v158 = v15;
        _os_log_send_and_compose_impl(v104, &v150, &v159, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_72:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v105 = MEMORY[0x1E69E9C10];
        v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v106)
        {
          v107 = 3;
        }

        else
        {
          v107 = 2;
        }

        v154 = 797;
        v155 = 2048;
        v156 = v15;
        v157 = 2048;
        v158 = v3;
        _os_log_send_and_compose_impl(v107, &v150, &v159, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_76:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v108 = MEMORY[0x1E69E9C10];
        v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v109)
        {
          v110 = 3;
        }

        else
        {
          v110 = 2;
        }

        v154 = 797;
        v155 = 2048;
        v156 = v1;
        v157 = 2048;
        v158 = v3;
        _os_log_send_and_compose_impl(v110, &v150, &v159, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_80:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v111)
        {
          v112 = 3;
        }

        else
        {
          v112 = 2;
        }

        v154 = 797;
        v155 = 2048;
        v156 = v2;
        v157 = 2048;
        v158 = v3;
        _os_log_send_and_compose_impl(v112, &v150, &v159, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_84:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v113 = MEMORY[0x1E69E9C10];
        v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v114)
        {
          v115 = 3;
        }

        else
        {
          v115 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v10;
        v157 = 2048;
        v158 = v15;
        _os_log_send_and_compose_impl(v115, &v150, &v159, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_88:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v116 = MEMORY[0x1E69E9C10];
        v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v117)
        {
          v118 = 3;
        }

        else
        {
          v118 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v13;
        v157 = 2048;
        v158 = v12;
        _os_log_send_and_compose_impl(v118, &v150, &v159, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_92:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v119 = MEMORY[0x1E69E9C10];
        v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v120)
        {
          v121 = 3;
        }

        else
        {
          v121 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v13;
        v157 = 2048;
        v158 = v15;
        _os_log_send_and_compose_impl(v121, &v150, &v159, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_96:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v122)
        {
          v123 = 3;
        }

        else
        {
          v123 = 2;
        }

        v154 = 797;
        v155 = 2048;
        v156 = v15;
        v157 = 2048;
        v158 = v6;
        _os_log_send_and_compose_impl(v123, &v150, &v159, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_100:
        v149 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v124 = MEMORY[0x1E69E9C10];
        v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v125)
        {
          v126 = 3;
        }

        else
        {
          v126 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v10;
        v157 = 2048;
        v158 = v12;
        _os_log_send_and_compose_impl(v126, &v149, &v159, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_104:
        v149 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v127 = MEMORY[0x1E69E9C10];
        v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v128)
        {
          v129 = 3;
        }

        else
        {
          v129 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v6;
        v157 = 2048;
        v158 = v12;
        _os_log_send_and_compose_impl(v129, &v149, &v159, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_108:
        v149 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v130)
        {
          v131 = 3;
        }

        else
        {
          v131 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v13;
        v157 = 2048;
        v158 = v12;
        _os_log_send_and_compose_impl(v131, &v149, &v159, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_112:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v132 = MEMORY[0x1E69E9C10];
        v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v133)
        {
          v134 = 3;
        }

        else
        {
          v134 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v10;
        v157 = 2048;
        v158 = v6;
        _os_log_send_and_compose_impl(v134, &v150, &v159, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
LABEL_116:
        *&v150 = 0;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v159 = 0u;
        v135 = MEMORY[0x1E69E9C10];
        v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v151 = 136315906;
        v152 = "operator[]";
        v153 = 1024;
        if (v136)
        {
          v137 = 3;
        }

        else
        {
          v137 = 2;
        }

        v154 = 789;
        v155 = 2048;
        v156 = v10;
        v157 = 2048;
        v158 = v6;
        _os_log_send_and_compose_impl(v137, &v150, &v159, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v138, v139);
        _os_crash_msg();
        __break(1u);
      }

      v143 = 0u;
      v144 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
LABEL_62:
      v6 = *(v4 + 45);
      if (v6 <= v10)
      {
        goto LABEL_116;
      }

      v99 = (*(v4 + 47) + 80 * v10);
      v100 = vaddq_f64(v140, v99[1]);
      *v99 = vaddq_f64(v144, *v99);
      v99[1] = v100;
      v101 = vaddq_f64(v141, v99[3]);
      v99[2] = vaddq_f64(v142, v99[2]);
      v99[3] = v101;
      v99[4] = vaddq_f64(v143, v99[4]);
      ++v10;
    }

    while (v10 != v139);
    this = v145[0];
    if (v145[0])
    {
      if (v148)
      {
        return (*(*v145[0] + 40))();
      }
    }
  }

  return this;
}

uint64_t re::GeomConnectivityManifold::isBoundaryVertex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 18);
  if (v3 <= a2)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v5 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v6, &v11, &v20, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, &v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 20) + 4 * a2);
  v3 = *(this + 8);
  if (v3 <= v2)
  {
    goto LABEL_8;
  }

  return (*(*(this + 10) + 4 * v2) >> 30) & 1;
}

_anonymous_namespace_ *re::internal::TriangleDecimator::initializeQueue(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 224);
  v5 = v4;
  v29.__x_[0] = v4;
  v6 = 1;
  v7 = v4;
  do
  {
    v7 = v6 + 1812433253 * (v7 ^ (v7 >> 30));
    v29.__x_[v6++] = v7;
  }

  while (v6 != 624);
  v29.__i_ = 0;
  *(a1 + 536) = 0;
  ++*(a1 + 544);
  if (*(a1 + 528) < v4)
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 520), v4);
  }

  *(a1 + 576) = 0;
  ++*(a1 + 584);
  result = re::DynamicArray<unsigned int>::resize((a1 + 560), v4, &re::kInvalidMeshIndex);
  v9 = *(a1 + 440);
  if (v9 >= v4)
  {
    if (v9 <= v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a1 + 432) < v4)
    {
      result = re::DynamicArray<re::internal::TriangleDecimator::EdgeData>::setCapacity((a1 + 424), v4);
      v9 = *(a1 + 440);
    }

    v10 = v4 - v9;
    if (v4 > v9 && v10 >= 1)
    {
      v11 = (*(a1 + 456) + 32 * v9);
      v12 = v10 + 1;
      do
      {
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        v11 += 4;
        --v12;
      }

      while (v12 > 1);
    }
  }

  *(a1 + 440) = v4;
  ++*(a1 + 448);
LABEL_15:
  if (a2)
  {
    result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a2, 0);
    if (result < v4)
    {
      v13 = result;
      while (1)
      {
        re::internal::TriangleDecimator::updateEdgeData(a1, v13);
        v14 = v13;
        v15 = *(a1 + 440);
        if (v15 <= v13)
        {
          break;
        }

        v16 = *(*(a1 + 456) + 32 * v13 + 16);
        v17 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v29);
        v18 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v29);
        LODWORD(v39) = v13;
        *(&v39 + 1) = v16;
        *&v40 = (v17 + v18 * 4294967300.0) * 5.42101086e-20 + 0.0;
        re::internal::IndexedPriorityQueue::push((a1 + 520), &v39);
        result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a2, v13 + 1);
        v13 = result;
        if (result >= v5)
        {
          return result;
        }
      }

      v30 = 0;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v31 = 136315906;
      v32 = "operator[]";
      v33 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v34 = 789;
      v35 = 2048;
      v36 = v13;
      v37 = 2048;
      v38 = v15;
      _os_log_send_and_compose_impl(v25, &v30, &v39, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, *v29.__x_, *&v29.__x_[2]);
      _os_crash_msg();
      __break(1u);
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    a2 = 0;
    for (i = 16; ; i += 32)
    {
      re::internal::TriangleDecimator::updateEdgeData(a1, a2);
      v14 = *(a1 + 440);
      if (v14 <= a2)
      {
        break;
      }

      v20 = *(*(a1 + 456) + i);
      v21 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v29);
      v22 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v29);
      LODWORD(v39) = a2;
      *(&v39 + 1) = v20;
      *&v40 = (v21 + v22 * 4294967300.0) * 5.42101086e-20 + 0.0;
      result = re::internal::IndexedPriorityQueue::push((a1 + 520), &v39);
      if (v5 == ++a2)
      {
        return result;
      }
    }

LABEL_30:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v34 = 789;
    v35 = 2048;
    v36 = a2;
    v37 = 2048;
    v38 = v14;
    _os_log_send_and_compose_impl(v28, &v30, &v39, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, *v29.__x_, *&v29.__x_[2]);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

_anonymous_namespace_ *re::internal::IndexedPriorityQueue::push(_anonymous_namespace_ *this, unsigned int *a2)
{
  v4 = this;
  v47 = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*this)
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

        this = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(this, v11);
      }

      else
      {
        this = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v4, v7);
        ++*(v4 + 6);
      }
    }

    v6 = *(v4 + 2);
  }

  v12 = *(v4 + 4) + 24 * v6;
  v13 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *v12 = v13;
  v14 = *(v4 + 2) + 1;
  *(v4 + 2) = v14;
  ++*(v4 + 6);
  v15 = *a2;
  v16 = *(v4 + 7);
  if (v16 <= v15)
  {
    goto LABEL_29;
  }

  v17 = v14 - 1;
  *(*(v4 + 9) + 4 * v15) = v14 - 1;
  if (v14 != 1)
  {
    while (1)
    {
      v18 = v17 - 1;
      v15 = (v17 - 1) >> 1;
      v16 = *(v4 + 2);
      if (v16 <= v15)
      {
        break;
      }

      v2 = v17;
      if (v16 <= v17)
      {
        goto LABEL_25;
      }

      v19 = *(v4 + 4);
      v20 = v19 + 24 * v15;
      v21 = v19 + 24 * v17;
      v22 = *(v20 + 8);
      v23 = *(v21 + 8);
      if ((v22 - v23) * (v22 - v23) <= 1.0e-12)
      {
        v22 = *(v20 + 16);
        v23 = *(v21 + 16);
      }

      if (v22 > v23)
      {
        this = re::internal::IndexedPriorityQueue::swap(v4, v17, v18 >> 1);
        v17 = v18 >> 1;
        if (v18 > 1)
        {
          continue;
        }
      }

      return this;
    }

    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = v18 >> 1;
    v40 = 2048;
    v41 = v16;
    _os_log_send_and_compose_impl(v25, &v33, &v42, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = v2;
    v40 = 2048;
    v41 = v16;
    _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = v15;
    v40 = 2048;
    v41 = v16;
    _os_log_send_and_compose_impl(v31, &v33, &v42, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v32);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

uint64_t re::internal::TriangleDecimator::clear(uint64_t this)
{
  *this = 0;
  *(this + 24) = 0;
  ++*(this + 32);
  *(this + 64) = 0;
  ++*(this + 72);
  *(this + 104) = 0;
  ++*(this + 112);
  *(this + 144) = 0;
  ++*(this + 152);
  *(this + 184) = 0;
  ++*(this + 192);
  *(this + 224) = 0;
  ++*(this + 232);
  *(this + 320) = 0;
  ++*(this + 328);
  *(this + 360) = 0;
  ++*(this + 368);
  *(this + 400) = 0;
  ++*(this + 408);
  *(this + 440) = 0;
  ++*(this + 448);
  *(this + 536) = 0;
  ++*(this + 544);
  *(this + 576) = 0;
  ++*(this + 584);
  v1 = *(this + 720);
  *(this + 712) = 0;
  *(this + 720) = v1 + 2;
  *(this + 644) = 0;
  *(this + 640) = 0;
  return this;
}

_anonymous_namespace_ *re::internal::TriangleDecimator::setMesh(re::internal::TriangleDecimator *this, const re::GeomMesh *a2)
{
  re::internal::TriangleDecimator::clear(this);
  re::internal::TriangleDecimator::convertMeshToCombinatorialMap(this, a2, v4);
  re::internal::TriangleDecimator::findCornerVertices(this, this + 384);
  re::internal::TriangleDecimator::computeQuadrics(this);
  result = re::internal::TriangleDecimator::initializeQueue(this, 0);
  *(this + 161) = *(this + 3);
  return result;
}

uint64_t re::internal::TriangleDecimator::decimateTo(re::internal::TriangleDecimator *this, unsigned int a2)
{
  for (result = *(this + 161); result > a2 && *(this + 134); *(this + 161) = result)
  {
    result = *(this + 161) - re::internal::TriangleDecimator::decimateOneEdge(this);
  }

  return result;
}

double re::internal::Quadric::computeOptimalPositionAlongEdge(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, double a5, float64x2_t a6, double a7, float64x2_t a8, double a9, float64x2_t a10, float64x2_t a11)
{
  v12 = vcvtq_f64_f32(vsub_f32(*a3, *a2));
  LODWORD(a6.f64[0]) = a2[1].i32[0];
  a8.f64[0] = (a3[1].f32[0] - *a6.f64);
  a10.f64[0] = *(a1 + 16);
  a11.f64[0] = *(a1 + 40);
  *&v13.f64[0] = vdupq_laneq_s64(*a1, 1).u64[0];
  v13.f64[1] = *(a1 + 32);
  v11.f64[0] = *(a1 + 56);
  v14 = vmulq_f64(a8, a10);
  a10.f64[1] = a11.f64[0];
  v15 = vaddq_f64(vzip1q_s64(v14, vmulq_f64(a8, a11)), vpaddq_f64(vmulq_f64(v12, *a1), vmulq_f64(v12, v13)));
  v16 = vmulq_f64(v12, a10);
  v16.f64[0] = vmulq_f64(a8, v11).f64[0] + vaddvq_f64(v16);
  v17 = -(vmulq_f64(a8, v16).f64[0] + vaddvq_f64(vmulq_f64(v12, v15)));
  *v13.f64 = v17;
  v18 = fabsf(*v13.f64);
  v19 = 0.5;
  if (v18 < 0.00001 || (v20.f64[0] = *(a1 + 24), v11.f64[0] = *(a1 + 64), v20.f64[1] = *(a1 + 48), a6.f64[0] = *a6.f64, v21 = vaddvq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(a6, v16), vmulq_f64(a8, v11)), vpaddq_f64(vmulq_f64(vcvtq_f64_f32(*a2), v15), vmulq_f64(v12, v20)))) / v17, *a4 = v21, v19 = 0.0, v21 < 0.0) || (v19 = 1.0, v21 > 1.0))
  {
    *a4 = v19;
    v21 = v19;
  }

  *&result = vaddq_f32(vmulq_n_f32(*a2->f32, 1.0 - v21), vmulq_n_f32(*a3->f32, v21)).u64[0];
  return result;
}

uint64_t re::internal::TriangleDecimator::updateEdgeData(unsigned int)::$_0::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v5 = v1[1];
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  *&v8 = v1[2];
  v9 = *(*a1 + 48);
  v10 = *(*a1 + 56);
  *&v11 = v7 * v5 * v5 + v4 * v2 * v2 + v10 * *&v8 * *&v8;
  v13 = *(*a1 + 16);
  v12 = *(*a1 + 24);
  v14 = v13 * v2 * *&v8 + v3 * v2 * v5 + v6 * v5 * *&v8 + v12 * v2 + v9 * v5;
  v16 = *(*a1 + 64);
  v15 = *(*a1 + 72);
  v17 = *&v15 + *&v11 + (v14 + v16 * *&v8) * 2.0;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v8.i32[0] = *v18;
  v11.i32[0] = v18[1];
  v20.i32[0] = v18[2];
  v8.i32[1] = *v19;
  v21 = vcvtq_f64_f32(v8);
  v11.i32[1] = v19[1];
  v22 = vcvtq_f64_f32(v11);
  v23 = vmlaq_f64(vmulq_f64(vmulq_n_f64(v22, v7), v22), v21, vmulq_n_f64(v21, v4));
  v20.i32[1] = v19[2];
  v24 = vcvtq_f64_f32(v20);
  v25 = vmlaq_f64(v23, v24, vmulq_n_f64(v24, v10));
  v26 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vmulq_n_f64(v21, v13), v24), v22, vmulq_n_f64(v21, v3)), v24, vmulq_n_f64(v22, v6)), v21, v12), v22, v9), v24, v16);
  __asm { FMOV            V0.2D, #2.0 }

  v32 = vaddq_f64(vdupq_lane_s64(v15, 0), vmlaq_f64(v25, _Q0, v26));
  v33 = 24;
  v34 = 8;
  if (v17 >= v32.f64[1])
  {
    v34 = 24;
  }

  if (v32.f64[0] < v32.f64[1])
  {
    v33 = 16;
  }

  if (v17 < v32.f64[0])
  {
    v33 = v34;
  }

  return **(a1 + v33);
}

uint64_t re::internal::Quadric::optimalPositionConditionNumberTest(double *a1, float32x2_t *a2, float64x2_t a3, double a4, double a5, float64x2_t a6, float64x2_t a7, double a8, float64x2_t a9)
{
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[4];
  v11 = a1[5];
  v13 = *a1 * v12;
  v14 = a1[7];
  v15 = a1[2];
  v16 = v10 * v11 * v15 + v13 * v14 + v10 * v15 * v11 + -(*a1 * v11) * v11 + -(v10 * v10) * v14 + -(v15 * v12) * v15;
  v17 = 0;
  if (v16 > 0.0)
  {
    v18 = 1.0 / v16;
    v19.f64[0] = (v12 * v14 - v11 * v11) * (1.0 / v16);
    v20.f64[0] = (v14 * -v10 + v15 * v11) * v18;
    a3.f64[0] = (v10 * v11 + -v15 * v12) * v18;
    v21 = (v9 * v14 + -v15 * v15) * v18;
    a7.f64[0] = (v10 * v15 - *a1 * v11) * v18;
    a6.f64[0] = (v13 + -v10 * v10) * v18;
    v22 = fabs(v10);
    v23 = fabs(v15);
    v24 = fabs(v9) + v22 + v23;
    v25 = fabs(v11);
    v26 = fabs(v12) + v22 + v25;
    if (v24 < v26)
    {
      v24 = v26;
    }

    v27 = fabs(v14) + v25 + v23;
    if (v24 >= v27)
    {
      v27 = v24;
    }

    v28 = fabs(v20.f64[0]);
    v29 = fabs(a3.f64[0]);
    v30 = v29 + fabs(v19.f64[0]) + v28;
    v31 = fabs(a7.f64[0]);
    v32 = v31 + v28 + fabs(v21);
    if (v30 < v32)
    {
      v30 = v32;
    }

    v33 = fabs(a6.f64[0]) + v29 + v31;
    if (v30 < v33)
    {
      v30 = v33;
    }

    v34 = v27 * v30;
    if (v34 > 0.0 && 1.0 / v34 >= 0.000001)
    {
      v19.f64[1] = v20.f64[0];
      v20.f64[1] = v21;
      v35.f64[0] = a1[3];
      a9.f64[0] = a1[8];
      v35.f64[1] = a1[6];
      v36 = vmulq_f64(a3, a9);
      a3.f64[1] = a7.f64[0];
      *a2 = vneg_f32(vcvt_f32_f64(vaddq_f64(vzip1q_s64(v36, vmulq_f64(a7, a9)), vpaddq_f64(vmulq_f64(v19, v35), vmulq_f64(v20, v35)))));
      v37 = vmulq_f64(a6, a9).f64[0] + vaddvq_f64(vmulq_f64(a3, v35));
      a2[1].f32[0] = -v37;
      return 1;
    }
  }

  return v17;
}

re::internal::IndexedPriorityQueue *re::internal::IndexedPriorityQueue::rebalance(re::internal::IndexedPriorityQueue *this, uint64_t a2)
{
  v3 = this;
  v43 = *MEMORY[0x1E69E9840];
  for (i = a2; ; LODWORD(a2) = i)
  {
    v5 = (2 * a2) | 1u;
    v6 = *(v3 + 2);
    if (v5 < v6)
    {
      if (v6 <= v5)
      {
        v29 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        v17 = MEMORY[0x1E69E9C10];
        v30 = 136315906;
        v31 = "operator[]";
        v32 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
        _os_log_send_and_compose_impl(v18, &v29, &v38, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
LABEL_25:
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
        v35 = v5;
        v36 = 2048;
        v37 = v6;
        _os_log_send_and_compose_impl(v21, &v29, &v38, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
LABEL_29:
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
        v35 = i;
        v36 = 2048;
        v37 = v6;
        _os_log_send_and_compose_impl(v24, &v29, &v38, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
LABEL_33:
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
        v35 = v2;
        v36 = 2048;
        v37 = v6;
        _os_log_send_and_compose_impl(v27, &v29, &v38, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
      }

      i = a2;
      if (v6 <= a2)
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 4);
      v8 = v7 + 24 * v5;
      v9 = v7 + 24 * a2;
      v10 = *(v8 + 8);
      v11 = *(v9 + 8);
      if ((v10 - v11) * (v10 - v11) <= 1.0e-12)
      {
        v10 = *(v8 + 16);
        v11 = *(v9 + 16);
      }

      if (v10 >= v11)
      {
        i = a2;
      }

      else
      {
        i = v5;
      }
    }

    v5 = (2 * a2 + 2);
    if (v5 < v6)
    {
      if (v6 <= v5)
      {
        goto LABEL_25;
      }

      v2 = i;
      if (v6 <= i)
      {
        goto LABEL_33;
      }

      v12 = *(v3 + 4);
      v13 = v12 + 24 * v5;
      v14 = v12 + 24 * i;
      v15 = *(v13 + 8);
      v16 = *(v14 + 8);
      if ((v15 - v16) * (v15 - v16) <= 1.0e-12)
      {
        v15 = *(v13 + 16);
        v16 = *(v14 + 16);
      }

      if (v15 >= v16)
      {
        i = i;
      }

      else
      {
        i = v5;
      }
    }

    if (i == a2)
    {
      break;
    }

    this = re::internal::IndexedPriorityQueue::swap(v3, a2, i);
  }

  return this;
}

void *re::internal::IndexedPriorityQueue::swap(void *this, unsigned int a2, unsigned int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = this[2];
  if (v6 <= a2)
  {
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v6;
    _os_log_send_and_compose_impl(v16, &v34, &v43, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v3 = a3;
  if (v6 <= a3)
  {
LABEL_12:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v6;
    _os_log_send_and_compose_impl(v19, &v34, &v43, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v7 = this[4];
  v8 = (v7 + 24 * a2);
  v9 = (v7 + 24 * a3);
  v10 = *(v8 + 2);
  v11 = *v8;
  v12 = *(v9 + 2);
  *v8 = *v9;
  *(v8 + 2) = v12;
  *v9 = v11;
  *(v9 + 2) = v10;
  v6 = this[2];
  if (v6 <= a2)
  {
LABEL_16:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v6;
    _os_log_send_and_compose_impl(v22, &v34, &v43, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v13 = this[4];
  v4 = *(v13 + 24 * a2);
  v5 = this[7];
  if (v5 <= v4)
  {
LABEL_20:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v4;
    v41 = 2048;
    v42 = v5;
    _os_log_send_and_compose_impl(v25, &v34, &v43, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v14 = this[9];
  *(v14 + 4 * v4) = a2;
  if (v6 <= a3)
  {
LABEL_24:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v6;
    _os_log_send_and_compose_impl(v28, &v34, &v43, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v5;
    _os_log_send_and_compose_impl(v31, &v34, &v43, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(v13 + 24 * a3);
  if (v5 <= v3)
  {
    goto LABEL_28;
  }

  *(v14 + 4 * v3) = a3;
  return this;
}

uint64_t re::DynamicArray<re::GeomCell4>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::GeomCell4>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::BlendNode>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::GeomCell4>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::internal::TriangleDecimator::ComponentAreaPreservationData>::setCapacity(void *result, unint64_t a2)
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

        result = (*(*result + 32))(result, 16 * a2, 8);
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
          memcpy(v6, v4[4], 16 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 16 * a2, *(*v4 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v7, v8);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::TriangleDecimator::ComponentAreaPreservationData>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,false>(uint64_t result, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
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
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], v10->i32[0]);
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
            v88 = v86->i32[0];
            v87 = v86->u32[1];
            v86 = v82;
            result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v87, v88);
            if (result)
            {
              v89 = v86->i32[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v89, *(&v10->u32[-1] + v90));
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
          v120 = *v9;
          v119 = *(v9 + 4);
          v9 = v82;
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v119, v120);
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v9 + 4);
        }

        while ((v9 + 4) != a2);
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
            v95 = (v9 + 4 * v94);
            if (2 * v92 + 2 < v11 && re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v9 + 4 * v93);
            result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, *v96);
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
                v95 = (v9 + 4 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, v97);
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
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
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
              result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v109 - 1), v110);
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

            *v104 = *v106;
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
              v115 = (v9 + 4 * (v113 >> 1));
              result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v115, *v106);
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
                  v115 = (v9 + 4 * v114);
                  result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v115, v116);
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
      v17 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(v13, *v9, *(v9 + 4 * v12));
      v18 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], *v9);
      if (v17)
      {
        v19 = *(v9 + 4 * v12);
        if (v18)
        {
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v19;
        }

        else
        {
          *(v9 + 4 * v12) = *v9;
          *v9 = v19;
          if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], v19))
          {
            v31 = *v9;
            *v9 = a2[-1].i32[1];
            a2[-1].i32[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v22;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v9, *(v9 + 4 * v12)))
        {
          v23 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(v13, *(v9 + 4 * v12), *v9);
    v15 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], *(v9 + 4 * v12));
    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v16;
      }

      else
      {
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v16;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], v16))
        {
          v24 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = a2[-1].i32[1];
      a2[-1].i32[1] = v20;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * v12), *v9))
      {
        v21 = *v9;
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v21;
      }
    }

    v25 = v12 - 1;
    v26 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * (v12 - 1)), *(v9 + 4));
    v27 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[0], *(v9 + 4 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v9 + 4);
      if (v27)
      {
        *(v9 + 4) = a2[-1].i32[0];
        a2[-1].i32[0] = v28;
      }

      else
      {
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v28;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[0], v28))
        {
          v32 = *(v9 + 4 * v25);
          *(v9 + 4 * v25) = a2[-1].i32[0];
          a2[-1].i32[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = a2[-1].i32[0];
      a2[-1].i32[0] = v29;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * v25), *(v9 + 4)))
      {
        v30 = *(v9 + 4);
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v30;
      }
    }

    v33 = v12 + 1;
    v34 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * (v12 + 1)), *(v9 + 8));
    v35 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-2].u32[1], *(v9 + 4 * (v12 + 1)));
    if (v34)
    {
      v36 = *(v9 + 8);
      if (v35)
      {
        *(v9 + 8) = a2[-2].i32[1];
        a2[-2].i32[1] = v36;
      }

      else
      {
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v36;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-2].u32[1], v36))
        {
          v39 = *(v9 + 4 * v33);
          *(v9 + 4 * v33) = a2[-2].i32[1];
          a2[-2].i32[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = a2[-2].i32[1];
      a2[-2].i32[1] = v37;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * v33), *(v9 + 8)))
      {
        v38 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v38;
      }
    }

    v40 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * v12), *(v9 + 4 * v25));
    v41 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * v33), *(v9 + 4 * v12));
    if (!v40)
    {
      v43 = *(v9 + 4 * v12);
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = *(v9 + 4 * v33);
      *(v9 + 4 * v12) = v44;
      *(v9 + 4 * v33) = v43;
      v45 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v44, *(v9 + 4 * v25));
      v43 = *(v9 + 4 * v12);
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = v43;
      *(v9 + 4 * v12) = v46;
      goto LABEL_53;
    }

    v42 = *(v9 + 4 * v25);
    if (v41)
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = v42;
      v43 = *(v9 + 4 * v12);
    }

    else
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = v42;
      v47 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + 4 * v33), v42);
      v43 = *(v9 + 4 * v12);
      if (v47)
      {
        v46 = *(v9 + 4 * v33);
        *(v9 + 4 * v12) = v46;
        *(v9 + 4 * v33) = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    *(v9 + 4 * v12) = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    if ((a5 & 1) != 0 || (v50 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 - 4), *v9), v49 = *v9, v50))
    {
      v51 = 0;
      do
      {
        v52 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 + v51 + 4), v49);
        v51 += 4;
      }

      while (v52);
      v53 = v9 + v51;
      v54 = a2;
      if (v51 == 4)
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

        while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }

        while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v55, v49));
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 4);
      }

      else
      {
        v57 = (v9 + v51);
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

          while (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v60, v49));
          do
          {
            v61 = v58[-1].u32[1];
            v58 = (v58 - 4);
          }

          while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v61, v49));
        }

        while (v57 < v58);
        v62 = (v57 - 4);
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = v62->i32[0];
      }

      v62->i32[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *>(v9, v62, a3);
      v10 = (v62 + 4);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *>(v62 + 4, a2, a3);
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
        result = std::__introsort<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,false>(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v62 + 4);
      }
    }

    else
    {
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v9, a2[-1].u32[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v64);
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
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v10->i32[0]);
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
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v67);
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

        while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v69));
        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], &a2[-1] + 1, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], &v10[1] + 1, a3);
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], v10[1].u32[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i32[1];
      v10[1].i32[1] = a2[-1].i32[1];
      a2[-1].i32[1] = v72;
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v10[1].u32[1], v10[1].u32[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v80 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v10->u32[1], v10->i32[0]);
  result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], v10->u32[1]);
  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i32[1];
    v10->i32[1] = a2[-1].i32[1];
    a2[-1].i32[1] = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v76, v78);
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, a2[-1].u32[1], v81);
    if (result)
    {
      v79 = v10->i32[1];
      v10->i32[1] = a2[-1].i32[1];
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 752);
  if (v5 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 797;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a3;
  if (v5 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 768) + 4 * a2) < *(*(a1 + 768) + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  v10 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a2, *a1);
  v11 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a3, *a2);
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
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a3, v12))
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
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 4), *a1);
        v16 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), *(a1 + 4));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12), a3);
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), *(a1 + 12)))
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 12), *(a1 + 8)))
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v12, v14))
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
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 4), *a1);
  v19 = (a1 + 8);
  v20 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 8), *(a1 + 4));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v26, v21))
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v23, v25))
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v27, *v19))
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
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v30, *(v32 + 4)))
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