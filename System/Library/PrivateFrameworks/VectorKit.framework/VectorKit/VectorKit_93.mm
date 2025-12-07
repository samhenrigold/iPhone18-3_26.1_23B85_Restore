void geo::small_vector_base<md::Label *>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

void md::NamedLabelDedupingGroup::~NamedLabelDedupingGroup(md::NamedLabelDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void md::MuninPointLabelDedupingGroup::prepareForCollision(md::MuninPointLabelDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = v21;
  v17 = v21;
  v18 = v21;
  v19 = v21;
  v20 = 5;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v8 = v21;
  }

  else
  {
    do
    {
      v7 = *v5;
      if ((*(**v5 + 16))(*v5))
      {
        v22 = v7;
        geo::small_vector_base<md::Label *>::push_back(&v17, &v22);
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = v17;
    v8 = v18;
  }

  if (v8 - v4 == 8)
  {
    v9 = *v4;
  }

  else
  {
    v10 = (v8 - v4) >> 3;
    if (v10 < 2)
    {
      goto LABEL_22;
    }

    v22 = *(a2 + 53) + 1120;
    v11 = 126 - 2 * __clz(v10);
    if (v8 == v4)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(v4, v8, &v22, v12, 1);
    v4 = v17;
    v13 = v18;
    if (v17 == v18)
    {
      v9 = 0;
    }

    else
    {
      v14 = 0;
      v9 = 0;
      v15 = v17;
      do
      {
        v16 = *v15;
        *(*v15 + 8) = v14;
        if (!v9 || *(v16 + 201) < v9[201])
        {
          v9 = v16;
        }

        ++v15;
        ++v14;
      }

      while (v15 != v13);
    }
  }

  *(this + 9) = v9;
LABEL_22:
  if (v4 != v19)
  {
    free(v4);
  }
}

void sub_1B2E60A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11)
{
  if (a9 != a11)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(uint64_t result, md::Label **a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
  v124 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
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
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, *v10);
      if (result)
      {
        v78 = *v10;
        *v10 = *v9;
LABEL_103:
        *v9 = v78;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = (v10 + 8);
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v87 = *v85;
            v86 = *(v85 + 8);
            v85 = v81;
            result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v86, v87);
            if (result)
            {
              v88 = *v85;
              v89 = v84;
              while (1)
              {
                *(v10 + v89 + 8) = *(v10 + v89);
                if (!v89)
                {
                  break;
                }

                result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v88, *(v10 + v89 - 8));
                v89 -= 8;
                if ((result & 1) == 0)
                {
                  v90 = (v10 + v89 + 8);
                  goto LABEL_125;
                }
              }

              v90 = v10;
LABEL_125:
              *v90 = v88;
            }

            v81 = (v85 + 8);
            v84 += 8;
          }

          while ((v85 + 8) != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v119 = *v8;
          v118 = *(v8 + 8);
          v8 = v81;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v118, v119);
          if (result)
          {
            v120 = *v8;
            v121 = v8;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v81 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v91 = (v11 - 2) >> 1;
        v126 = v91;
        do
        {
          v92 = v91;
          if (v126 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = v8 + 8 * v93;
            if (2 * v91 + 2 < v11 && md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, *(v94 + 8)))
            {
              v94 += 8;
              v93 = 2 * v92 + 2;
            }

            v95 = (v8 + 8 * v92);
            result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v126 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = v8 + 8 * v98;
                v99 = 2 * v93 + 2;
                if (v99 < v11 && md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, *(v94 + 8)))
                {
                  v94 += 8;
                  v98 = v99;
                }

                result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = v100;
          v102 = 0;
          v127 = *v8;
          v103 = v8;
          do
          {
            v104 = &v103[v102];
            v105 = v104 + 1;
            v106 = (2 * v102) | 1;
            v107 = 2 * v102 + 2;
            if (v107 >= v11)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v102 = v107;
              }

              else
              {
                v102 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v100 = v101 - 1;
          if (v105 == v101 - 1)
          {
            *v105 = v127;
          }

          else
          {
            *v105 = *v100;
            *v100 = v127;
            v110 = (v105 - v8 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = (v8 + 8 * (v112 >> 1));
              result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v8 + 8 * v113);
                  result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v11 >> 1;
    if (v11 < 0x81)
    {
      v16 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v10, *(v10 + 8 * v12));
      v17 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, *v10);
      if (v16)
      {
        v18 = *(v10 + 8 * v12);
        if (v17)
        {
          *(v10 + 8 * v12) = *v9;
          *v9 = v18;
        }

        else
        {
          *(v10 + 8 * v12) = *v10;
          *v10 = v18;
          if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v18))
          {
            v30 = *v10;
            *v10 = *v9;
            *v9 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v10;
        *v10 = *v9;
        *v9 = v21;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v10, *(v10 + 8 * v12)))
        {
          v22 = *(v10 + 8 * v12);
          *(v10 + 8 * v12) = *v10;
          *v10 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v10 + 8 * v12), *v10);
    v14 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, *(v10 + 8 * v12));
    if (v13)
    {
      v15 = *v10;
      if (v14)
      {
        *v10 = *v9;
        *v9 = v15;
      }

      else
      {
        *v10 = *(v10 + 8 * v12);
        *(v10 + 8 * v12) = v15;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v15))
        {
          v23 = *(v10 + 8 * v12);
          *(v10 + 8 * v12) = *v9;
          *v9 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = *(v10 + 8 * v12);
      *(v10 + 8 * v12) = *v9;
      *v9 = v19;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v10 + 8 * v12), *v10))
      {
        v20 = *v10;
        *v10 = *(v10 + 8 * v12);
        *(v10 + 8 * v12) = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v26 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 2), *(v8 + 8 * (v12 - 1)));
    if (v25)
    {
      v27 = *(v8 + 8);
      if (v26)
      {
        *(v8 + 8) = *(a2 - 2);
        *(a2 - 2) = v27;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v24);
        *(v8 + 8 * v24) = v27;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 2), v27))
        {
          v31 = *(v8 + 8 * v24);
          *(v8 + 8 * v24) = *(a2 - 2);
          *(a2 - 2) = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = *(v8 + 8 * v24);
      *(v8 + 8 * v24) = *(a2 - 2);
      *(a2 - 2) = v28;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v24), *(v8 + 8)))
      {
        v29 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v24);
        *(v8 + 8 * v24) = v29;
      }
    }

    v32 = a2;
    v33 = v12 + 1;
    v34 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v35 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v32 - 3), *(v8 + 8 * (v12 + 1)));
    if (v34)
    {
      v36 = *(v8 + 16);
      if (v35)
      {
        *(v8 + 16) = *(v124 - 3);
        *(v124 - 3) = v36;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v33);
        *(v8 + 8 * v33) = v36;
        if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v124 - 3), v36))
        {
          v39 = *(v8 + 8 * v33);
          *(v8 + 8 * v33) = *(v124 - 3);
          *(v124 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = *(v8 + 8 * v33);
      *(v8 + 8 * v33) = *(v124 - 3);
      *(v124 - 3) = v37;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v33), *(v8 + 16)))
      {
        v38 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v33);
        *(v8 + 8 * v33) = v38;
      }
    }

    v40 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v12), *(v8 + 8 * v24));
    v41 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v33), *(v8 + 8 * v12));
    if (!v40)
    {
      v43 = *(v8 + 8 * v12);
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = *(v8 + 8 * v33);
      *(v8 + 8 * v12) = v44;
      *(v8 + 8 * v33) = v43;
      v45 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v44, *(v8 + 8 * v24));
      v43 = *(v8 + 8 * v12);
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = *(v8 + 8 * v24);
      *(v8 + 8 * v24) = v43;
      *(v8 + 8 * v12) = v46;
      goto LABEL_53;
    }

    v42 = *(v8 + 8 * v24);
    if (v41)
    {
      *(v8 + 8 * v24) = *(v8 + 8 * v33);
      *(v8 + 8 * v33) = v42;
      v43 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v24) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v42;
      v47 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 + 8 * v33), v42);
      v43 = *(v8 + 8 * v12);
      if (v47)
      {
        v46 = *(v8 + 8 * v33);
        *(v8 + 8 * v12) = v46;
        *(v8 + 8 * v33) = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    a2 = v124;
    v48 = *v8;
    *v8 = v43;
    *(v8 + 8 * v12) = v48;
LABEL_55:
    --a4;
    v49 = *v8;
    if ((a5 & 1) != 0 || (v50 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v8 - 8), *v8), v49 = *v8, v50))
    {
      v51 = v8;
      do
      {
        v52 = v51;
        v53 = v51[1];
        ++v51;
      }

      while (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v53, v49));
      v54 = a2;
      if (v52 == v8)
      {
        v54 = a2;
        do
        {
          if (v51 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }

        while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = *--v54;
        }

        while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v55, v49));
      }

      if (v51 < v54)
      {
        v57 = v51;
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v52 = v57;
            v60 = v57[1];
            ++v57;
          }

          while (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v60, v49));
          do
          {
            v61 = *--v58;
          }

          while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v61, v49));
        }

        while (v57 < v58);
      }

      if (v52 != v8)
      {
        *v8 = *v52;
      }

      *v52 = v49;
      a2 = v124;
      if (v51 < v54)
      {
        goto LABEL_76;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>(v8, v52, a3);
      v10 = (v52 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>((v52 + 1), v124, a3);
      if (result)
      {
        a2 = v52;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(v8, v52, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v52 + 1);
      }
    }

    else
    {
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v63 = *(v10 + 8);
          v10 += 8;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = v8 + 8;
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 += 8;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, *v10);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = *--v65;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = *v10;
        *v10 = *v65;
        *v65 = v67;
        do
        {
          v68 = *(v10 + 8);
          v10 += 8;
        }

        while (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v68));
        do
        {
          v69 = *--v65;
          result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v49, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = (v10 - 8);
      if (v10 - 8 != v8)
      {
        *v8 = *v70;
      }

      a5 = 0;
      *v70 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(v10, (v10 + 8), (v10 + 16), v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(v10, (v10 + 8), (v10 + 16), (v10 + 24), a3);
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, *(v10 + 24));
      if (!result)
      {
        return result;
      }

      v71 = *(v10 + 24);
      *(v10 + 24) = *v9;
      *v9 = v71;
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v10 + 24), *(v10 + 16));
      if (!result)
      {
        return result;
      }

      v73 = *(v10 + 16);
      v72 = *(v10 + 24);
      v74 = *(v10 + 8);
      *(v10 + 16) = v72;
      *(v10 + 24) = v73;
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v72, v74);
      if (!result)
      {
        return result;
      }

      v76 = *(v10 + 8);
      v75 = *(v10 + 16);
      v77 = *v10;
      *(v10 + 8) = v75;
      *(v10 + 16) = v76;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v79 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(v10 + 8), *v10);
  result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, *(v10 + 8));
  if (!v79)
  {
    if (!result)
    {
      return result;
    }

    v117 = *(v10 + 8);
    *(v10 + 8) = *v9;
    *v9 = v117;
    v77 = *v10;
    v75 = *(v10 + 8);
LABEL_164:
    result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v75, v77);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = *v10;
  if (result)
  {
    *v10 = *v9;
    *v9 = v80;
  }

  else
  {
    *v10 = *(v10 + 8);
    *(v10 + 8) = v80;
    result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v9, v80);
    if (result)
    {
      v78 = *(v10 + 8);
      *(v10 + 8) = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

BOOL md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(uint64_t *a1, md::Label *this, unint64_t a3)
{
  result = *(this + 1291) == 18;
  if (result != (*(a3 + 1291) != 18))
  {
    v7 = &v37;
    v8 = *(this + 197);
    v9 = *(a3 + 788);
    v10 = *a1;
    v11 = md::Label::boundsForStaging(this);
    v12 = 0;
    v13 = 0;
    v37 = v11;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    while (*(v10 + 8 + 4 * v13) > *v7)
    {
      v17 = *(v10 + 4 * v13);
      v18 = *(&v39 + v13);
      v13 = 1;
      v19 = (v17 < v18) & ~v12;
      v12 = 1;
      v7 = &v38;
      if ((v19 & 1) == 0)
      {
        v20 = v17 < v18;
        goto LABEL_7;
      }
    }

    v20 = 0;
LABEL_7:
    v21 = *a1;
    v22 = md::Label::boundsForStaging(a3);
    v23 = 0;
    v24 = 0;
    v37 = v22;
    v38 = v25;
    v26 = &v37;
    v39 = v27;
    v40 = v28;
    while (*(v21 + 8 + 4 * v24) > *v26)
    {
      v29 = *(v21 + 4 * v24);
      v30 = *(&v39 + v24);
      v24 = 1;
      v31 = (v29 < v30) & ~v23;
      v23 = 1;
      v26 = &v38;
      if ((v31 & 1) == 0)
      {
        v32 = v29 < v30;
        goto LABEL_12;
      }
    }

    v32 = 0;
LABEL_12:
    v33 = *(this + 844) == 2 && v20;
    result = v33 & (v8 > 0.0);
    v34 = *(a3 + 844) == 2 && v32;
    if (result == (v34 && v9 > 0.0))
    {
      result = v20;
      if (v20 == v32)
      {
        v35 = *(this + 197);
        v36 = *(a3 + 788);
        if (v35 == v36)
        {
          return this < a3;
        }

        else
        {
          return v35 > v36;
        }
      }
    }
  }

  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(unint64_t *a1, md::Label **a2, md::Label **a3, md::Label **a4, uint64_t *a5)
{
  v10 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a2, *a1);
  v11 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a3, *a2);
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
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a3, v12))
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
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a5, *a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>(uint64_t a1, md::Label **a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 8), *a1);
        v16 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), *(a1 + 8));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v17;
          if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        v14 = *a1;
        *(a1 + 8) = v12;
        *(a1 + 16) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v12, v14))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *(a1 + 16), *(a1 + 8));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
    }

    else
    {
      v26 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
      if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v26, v21))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 8);
    v23 = *(a1 + 16);
    v25 = *a1;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v23, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v27 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          break;
        }

        v31 -= 8;
        if (!md::MuninPointLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0::operator()(a3, v30, *(v32 + 8)))
        {
          v33 = (a1 + v31 + 24);
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
    v28 += 8;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void md::MuninPointLabelDedupingGroup::~MuninPointLabelDedupingGroup(md::MuninPointLabelDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void md::MuninRoadLabelDedupingGroup::prepareForCollision(md::MuninRoadLabelDedupingGroup *this, md::LabelManager *a2)
{
  v2 = a2;
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = v30;
  v27 = v30;
  v28 = v30;
  v29 = 5;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v18 = v30;
  }

  else
  {
    do
    {
      v7 = *v5;
      if ((*(**v5 + 16))(*v5))
      {
        v8 = v28;
        v9 = v28 - v27;
        v10 = v28 - v27 + 1;
        if (v29 < v10)
        {
          v11 = (1 << -__clz(v29 + 1));
          if (v29 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v11 = 1;
          }

          if (v11 <= v10)
          {
            v12 = v28 - v27 + 1;
          }

          else
          {
            v12 = v11;
          }

          v13 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
          v14 = v13;
          v15 = v27;
          if (v27 != v28)
          {
            v16 = v13;
            do
            {
              v17 = *v15++;
              *v16++ = v17;
            }

            while (v15 != v28);
          }

          if (v27 != v30)
          {
            free(v27);
          }

          v8 = (v14 + v9);
          v27 = v14;
          v28 = (v14 + v9);
          v29 = v12;
        }

        *v8 = v7;
        ++v28;
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = v27;
    v18 = v28;
    v2 = a2;
  }

  if (v18 - v4 != 8)
  {
    v19 = (v18 - v4) >> 3;
    if (v19 < 2)
    {
      goto LABEL_28;
    }

    v20 = *(*(v2 + 53) + 1072);
    v31 = v20;
    v21 = 126 - 2 * __clz(v19);
    if (v18 == v4)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,false>(v4, v18, &v31, v22, 1, v20);
    v4 = v27;
    if (v27 != v28)
    {
      v23 = 0;
      v24 = v27;
      do
      {
        v25 = *v24++;
        *(v25 + 32) = v23++;
      }

      while (v24 != v28);
    }
  }

  *(this + 9) = *v4;
LABEL_28:
  if (v4 != v30)
  {
    free(v4);
  }
}

void sub_1B2E61DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  if (a10 != a12)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

float std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,false>(char *i, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
  v9 = a3 + 8;
LABEL_2:
  v513 = (a2 - 8);
  while (1)
  {
    v10 = i;
    v11 = (a2 - i) >> 3;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(i, i + 1, v513, a3);
          return result.n128_f32[0];
        case 4:

          result.n128_f32[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(i, i + 1, i + 2, v513, a3);
          return result.n128_f32[0];
        case 5:

          result.n128_f32[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(i, i + 1, i + 2, i + 3, v513, a3);
          return result.n128_f32[0];
      }

      goto LABEL_10;
    }

    if (v11 < 2)
    {
      return result.n128_f32[0];
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v256 = i + 8;
      v257 = i == a2 || v256 == a2;
      v258 = v257;
      if (a5)
      {
        if (v258)
        {
          return result.n128_f32[0];
        }

        v259 = i;
        while (1)
        {
          v260 = v259;
          v259 = v256;
          v262 = *v260;
          v261 = *(v260 + 1);
          v263 = (*(**(v261 + 64) + 256))(*(v261 + 64), result);
          v264 = 0;
          v265 = 0;
          while (*(v9 + 4 * v265) > *(v263 + 4 * v265))
          {
            v266 = *(a3 + 4 * v265);
            v267 = *(v263 + 8 + 4 * v265);
            v265 = 1;
            v268 = (v266 < v267) & ~v264;
            v264 = 1;
            if ((v268 & 1) == 0)
            {
              v269 = v266 < v267;
              goto LABEL_372;
            }
          }

          v269 = 0;
LABEL_372:
          v270 = (*(**(v262 + 64) + 256))(*(v262 + 64));
          v271 = 0;
          v272 = 0;
          while (1)
          {
            result.n128_u32[0] = *(v9 + 4 * v272);
            if (result.n128_f32[0] <= *(v270 + 4 * v272))
            {
              break;
            }

            result.n128_u32[0] = *(a3 + 4 * v272);
            v273 = *(v270 + 8 + 4 * v272);
            v272 = 1;
            v274 = (result.n128_f32[0] < v273) & ~v271;
            v271 = 1;
            if ((v274 & 1) == 0)
            {
              v275 = result.n128_f32[0] < v273;
              goto LABEL_377;
            }
          }

          v275 = 0;
LABEL_377:
          if (*(v261 + 493) == 2)
          {
            v276 = v269;
          }

          else
          {
            v276 = 0;
          }

          if (*(v262 + 493) == 2)
          {
            v277 = v275;
          }

          else
          {
            v277 = 0;
          }

          if (((v276 | v277) & 1) != 0 && ((v276 ^ v277) & 1) != 0 || (v276 = v269, v269 != v275))
          {
            if (v276)
            {
              goto LABEL_387;
            }
          }

          else
          {
            result.n128_u32[0] = *(v261 + 476);
            v298 = *(v262 + 476);
            if (result.n128_f32[0] == v298)
            {
              if (v261 < v262)
              {
LABEL_387:
                v278 = *(v260 + 1);
                *(v260 + 1) = *v260;
                v279 = i;
                if (v260 != i)
                {
                  do
                  {
                    v279 = v260;
                    v281 = *(v260 - 1);
                    v260 -= 8;
                    v280 = v281;
                    v282 = (*(**(v278 + 64) + 256))(*(v278 + 64));
                    v283 = 0;
                    v284 = 0;
                    while (*(v9 + 4 * v284) > *(v282 + 4 * v284))
                    {
                      v285 = *(a3 + 4 * v284);
                      v286 = *(v282 + 8 + 4 * v284);
                      v284 = 1;
                      v287 = (v285 < v286) & ~v283;
                      v283 = 1;
                      if ((v287 & 1) == 0)
                      {
                        v288 = v285 < v286;
                        goto LABEL_393;
                      }
                    }

                    v288 = 0;
LABEL_393:
                    v289 = (*(**(v280 + 64) + 256))(*(v280 + 64));
                    v290 = 0;
                    v291 = 0;
                    while (1)
                    {
                      result.n128_u32[0] = *(v9 + 4 * v291);
                      if (result.n128_f32[0] <= *(v289 + 4 * v291))
                      {
                        break;
                      }

                      result.n128_u32[0] = *(a3 + 4 * v291);
                      v292 = *(v289 + 8 + 4 * v291);
                      v291 = 1;
                      v293 = (result.n128_f32[0] < v292) & ~v290;
                      v290 = 1;
                      if ((v293 & 1) == 0)
                      {
                        v294 = result.n128_f32[0] < v292;
                        goto LABEL_398;
                      }
                    }

                    v294 = 0;
LABEL_398:
                    if (*(v278 + 493) == 2)
                    {
                      v295 = v288;
                    }

                    else
                    {
                      v295 = 0;
                    }

                    if (*(v280 + 493) == 2)
                    {
                      v296 = v294;
                    }

                    else
                    {
                      v296 = 0;
                    }

                    if (((v295 | v296) & 1) != 0 && ((v295 ^ v296) & 1) != 0 || (v295 = v288, v288 != v294))
                    {
                      if (!v295)
                      {
                        goto LABEL_418;
                      }
                    }

                    else
                    {
                      result.n128_u32[0] = *(v278 + 476);
                      v297 = *(v280 + 476);
                      if (result.n128_f32[0] == v297)
                      {
                        if (v278 >= v280)
                        {
                          goto LABEL_418;
                        }
                      }

                      else if (result.n128_f32[0] <= v297)
                      {
                        goto LABEL_418;
                      }
                    }

                    *v279 = *(v279 - 1);
                  }

                  while (v260 != i);
                  v279 = i;
                }

LABEL_418:
                *v279 = v278;
              }
            }

            else if (result.n128_f32[0] > v298)
            {
              goto LABEL_387;
            }
          }

          v256 = v259 + 8;
          if (v259 + 8 == a2)
          {
            return result.n128_f32[0];
          }
        }
      }

      if (v258)
      {
        return result.n128_f32[0];
      }

      while (1)
      {
        v465 = v10;
        v10 = v256;
        v467 = *v465;
        v466 = *(v465 + 1);
        v468 = (*(**(v466 + 64) + 256))(*(v466 + 64), result);
        v469 = 0;
        v470 = 0;
        while (*(v9 + 4 * v470) > *(v468 + 4 * v470))
        {
          v471 = *(a3 + 4 * v470);
          v472 = *(v468 + 8 + 4 * v470);
          v470 = 1;
          v473 = (v471 < v472) & ~v469;
          v469 = 1;
          if ((v473 & 1) == 0)
          {
            v474 = v471 < v472;
            goto LABEL_654;
          }
        }

        v474 = 0;
LABEL_654:
        v475 = (*(**(v467 + 64) + 256))(*(v467 + 64));
        v476 = 0;
        v477 = 0;
        while (1)
        {
          result.n128_u32[0] = *(v9 + 4 * v477);
          if (result.n128_f32[0] <= *(v475 + 4 * v477))
          {
            break;
          }

          result.n128_u32[0] = *(a3 + 4 * v477);
          v478 = *(v475 + 8 + 4 * v477);
          v477 = 1;
          v479 = (result.n128_f32[0] < v478) & ~v476;
          v476 = 1;
          if ((v479 & 1) == 0)
          {
            v480 = result.n128_f32[0] < v478;
            goto LABEL_659;
          }
        }

        v480 = 0;
LABEL_659:
        if (*(v466 + 493) == 2)
        {
          v481 = v474;
        }

        else
        {
          v481 = 0;
        }

        if (*(v467 + 493) == 2)
        {
          v482 = v480;
        }

        else
        {
          v482 = 0;
        }

        if (((v481 | v482) & 1) != 0 && ((v481 ^ v482) & 1) != 0 || (v481 = v474, v474 != v480))
        {
          if (v481)
          {
            goto LABEL_669;
          }
        }

        else
        {
          result.n128_u32[0] = *(v466 + 476);
          v504 = *(v467 + 476);
          if (result.n128_f32[0] == v504)
          {
            if (v466 < v467)
            {
LABEL_669:
              v483 = *v10;
              v484 = v10;
              do
              {
                while (1)
                {
                  while (1)
                  {
                    v485 = v484;
                    v484 = v465;
                    *v485 = *v465;
                    v487 = *(v465 - 1);
                    v465 -= 8;
                    v486 = v487;
                    v488 = (*(**(v483 + 64) + 256))(*(v483 + 64));
                    v489 = 0;
                    v490 = 0;
                    while (*(v9 + 4 * v490) > *(v488 + 4 * v490))
                    {
                      v491 = *(a3 + 4 * v490);
                      v492 = *(v488 + 8 + 4 * v490);
                      v490 = 1;
                      v493 = (v491 < v492) & ~v489;
                      v489 = 1;
                      if ((v493 & 1) == 0)
                      {
                        v494 = v491 < v492;
                        goto LABEL_675;
                      }
                    }

                    v494 = 0;
LABEL_675:
                    v495 = (*(**(v486 + 64) + 256))(*(v486 + 64));
                    v496 = 0;
                    v497 = 0;
                    while (1)
                    {
                      result.n128_u32[0] = *(v9 + 4 * v497);
                      if (result.n128_f32[0] <= *(v495 + 4 * v497))
                      {
                        break;
                      }

                      result.n128_u32[0] = *(a3 + 4 * v497);
                      v498 = *(v495 + 8 + 4 * v497);
                      v497 = 1;
                      v499 = (result.n128_f32[0] < v498) & ~v496;
                      v496 = 1;
                      if ((v499 & 1) == 0)
                      {
                        v500 = result.n128_f32[0] < v498;
                        goto LABEL_680;
                      }
                    }

                    v500 = 0;
LABEL_680:
                    v501 = *(v483 + 493) == 2 ? v494 : 0;
                    v502 = *(v486 + 493) == 2 ? v500 : 0;
                    if (((v501 | v502) & 1) == 0 || ((v501 ^ v502) & 1) == 0)
                    {
                      LOBYTE(v501) = v494;
                      if (v494 == v500)
                      {
                        break;
                      }
                    }

                    if ((v501 & 1) == 0)
                    {
                      goto LABEL_695;
                    }
                  }

                  result.n128_u32[0] = *(v483 + 476);
                  v503 = *(v486 + 476);
                  if (result.n128_f32[0] == v503)
                  {
                    break;
                  }

                  if (result.n128_f32[0] <= v503)
                  {
                    goto LABEL_695;
                  }
                }
              }

              while (v483 < v486);
LABEL_695:
              *v484 = v483;
            }
          }

          else if (result.n128_f32[0] > v504)
          {
            goto LABEL_669;
          }
        }

        v256 = v10 + 8;
        if (v10 + 8 == a2)
        {
          return result.n128_f32[0];
        }
      }
    }

    v512 = i;
    if (!a4)
    {
      if (i == a2)
      {
        return result.n128_f32[0];
      }

      v299 = (v11 - 2) >> 1;
      v514 = v299;
      v517 = (a2 - i) >> 3;
      while (1)
      {
        v300 = v299;
        if (v514 < v299)
        {
          goto LABEL_529;
        }

        v301 = (2 * v299) | 1;
        v302 = &v10[8 * v301];
        v303 = 2 * v299 + 2;
        v507 = v299;
        if (v303 < v11)
        {
          v304 = *(v302 + 1);
          v305 = *v302;
          v306 = (*(**(*v302 + 64) + 256))(*(*v302 + 64), result);
          v307 = 0;
          v308 = 0;
          do
          {
            if (*(v9 + 4 * v308) <= *(v306 + 4 * v308))
            {
              v312 = 0;
              goto LABEL_432;
            }

            v309 = *(a3 + 4 * v308);
            v310 = *(v306 + 8 + 4 * v308);
            v308 = 1;
            v311 = (v309 < v310) & ~v307;
            v307 = 1;
          }

          while ((v311 & 1) != 0);
          v312 = v309 < v310;
LABEL_432:
          v313 = (*(**(v304 + 64) + 256))(*(v304 + 64));
          v314 = 0;
          v315 = 0;
          while (*(v9 + 4 * v315) > *(v313 + 4 * v315))
          {
            v316 = *(a3 + 4 * v315);
            v317 = *(v313 + 8 + 4 * v315);
            v315 = 1;
            v318 = (v316 < v317) & ~v314;
            v314 = 1;
            if ((v318 & 1) == 0)
            {
              v319 = v316 < v317;
              goto LABEL_437;
            }
          }

          v319 = 0;
LABEL_437:
          if (*(v305 + 493) == 2)
          {
            v320 = v312;
          }

          else
          {
            v320 = 0;
          }

          if (*(v304 + 493) == 2)
          {
            v321 = v319;
          }

          else
          {
            v321 = 0;
          }

          if (((v320 | v321) & 1) != 0 && ((v320 ^ v321) & 1) != 0 || (v320 = v312, v312 != v319))
          {
            v11 = v517;
            v300 = v507;
            if (!v320)
            {
              goto LABEL_448;
            }

LABEL_447:
            v302 += 8;
            v301 = v303;
            goto LABEL_448;
          }

          v383 = *(v305 + 476);
          v384 = *(v304 + 476);
          if (v383 == v384)
          {
            v381 = v305 >= v304;
            v11 = v517;
            v300 = v507;
            if (!v381)
            {
              goto LABEL_447;
            }
          }

          else
          {
            v11 = v517;
            v300 = v507;
            if (v383 > v384)
            {
              goto LABEL_447;
            }
          }
        }

LABEL_448:
        v322 = *&v10[8 * v300];
        v323 = *v302;
        v324 = (*(**(*v302 + 64) + 256))(*(*v302 + 64));
        v325 = 0;
        v326 = 0;
        do
        {
          if (*(v9 + 4 * v326) <= *(v324 + 4 * v326))
          {
            v330 = 0;
            goto LABEL_453;
          }

          v327 = *(a3 + 4 * v326);
          v328 = *(v324 + 8 + 4 * v326);
          v326 = 1;
          v329 = (v327 < v328) & ~v325;
          v325 = 1;
        }

        while ((v329 & 1) != 0);
        v330 = v327 < v328;
LABEL_453:
        v331 = (*(**(v322 + 64) + 256))(*(v322 + 64));
        v332 = 0;
        v333 = 0;
        while (1)
        {
          result.n128_u32[0] = *(v9 + 4 * v333);
          if (result.n128_f32[0] <= *(v331 + 4 * v333))
          {
            break;
          }

          result.n128_u32[0] = *(a3 + 4 * v333);
          v334 = *(v331 + 8 + 4 * v333);
          v333 = 1;
          v335 = (result.n128_f32[0] < v334) & ~v332;
          v332 = 1;
          if ((v335 & 1) == 0)
          {
            v336 = result.n128_f32[0] < v334;
            goto LABEL_458;
          }
        }

        v336 = 0;
LABEL_458:
        if (*(v323 + 493) == 2)
        {
          v337 = v330;
        }

        else
        {
          v337 = 0;
        }

        if (*(v322 + 493) == 2)
        {
          v338 = v336;
        }

        else
        {
          v338 = 0;
        }

        if (((v337 | v338) & 1) != 0 && ((v337 ^ v338) & 1) != 0 || (LOBYTE(v337) = v330, v330 != v336))
        {
          if (v337)
          {
            goto LABEL_529;
          }
        }

        else
        {
          result.n128_u32[0] = *(v323 + 476);
          v382 = *(v322 + 476);
          if (result.n128_f32[0] == v382)
          {
            if (v323 < v322)
            {
              goto LABEL_529;
            }
          }

          else if (result.n128_f32[0] > v382)
          {
            goto LABEL_529;
          }
        }

        v339 = v10;
        v340 = *&v10[8 * v300];
        *&v339[8 * v300] = *v302;
        while (1)
        {
          if (v514 < v301)
          {
            goto LABEL_528;
          }

          v341 = v302;
          v342 = 2 * v301;
          v301 = (2 * v301) | 1;
          v302 = &v512[8 * v301];
          v343 = v342 + 2;
          if (v342 + 2 < v11)
          {
            v509 = v341;
            v344 = *(v302 + 1);
            v345 = *v302;
            v346 = (*(**(*v302 + 64) + 256))(*(*v302 + 64));
            v347 = 0;
            v348 = 0;
            do
            {
              if (*(v9 + 4 * v348) <= *(v346 + 4 * v348))
              {
                v352 = 0;
                goto LABEL_476;
              }

              v349 = *(a3 + 4 * v348);
              v350 = *(v346 + 8 + 4 * v348);
              v348 = 1;
              v351 = (v349 < v350) & ~v347;
              v347 = 1;
            }

            while ((v351 & 1) != 0);
            v352 = v349 < v350;
LABEL_476:
            v353 = (*(**(v344 + 64) + 256))(*(v344 + 64));
            v354 = 0;
            v355 = 0;
            while (*(v9 + 4 * v355) > *(v353 + 4 * v355))
            {
              v356 = *(a3 + 4 * v355);
              v357 = *(v353 + 8 + 4 * v355);
              v355 = 1;
              v358 = (v356 < v357) & ~v354;
              v354 = 1;
              if ((v358 & 1) == 0)
              {
                v359 = v356 < v357;
                goto LABEL_481;
              }
            }

            v359 = 0;
LABEL_481:
            if (*(v345 + 493) == 2)
            {
              v360 = v352;
            }

            else
            {
              v360 = 0;
            }

            if (*(v344 + 493) == 2)
            {
              v361 = v359;
            }

            else
            {
              v361 = 0;
            }

            if (((v360 | v361) & 1) == 0 || ((v360 ^ v361) & 1) == 0)
            {
              v360 = v352;
              if (v352 == v359)
              {
                v379 = *(v345 + 476);
                v380 = *(v344 + 476);
                if (v379 == v380)
                {
                  v381 = v345 >= v344;
                  v11 = v517;
                  v341 = v509;
                  if (v381)
                  {
                    goto LABEL_492;
                  }
                }

                else
                {
                  v11 = v517;
                  v341 = v509;
                  if (v379 <= v380)
                  {
                    goto LABEL_492;
                  }
                }

LABEL_491:
                v302 += 8;
                v301 = v343;
                goto LABEL_492;
              }
            }

            v11 = v517;
            v341 = v509;
            if (v360)
            {
              goto LABEL_491;
            }
          }

LABEL_492:
          v362 = *v302;
          v363 = (*(**(*v302 + 64) + 256))(*(*v302 + 64));
          v364 = 0;
          v365 = 0;
          do
          {
            if (*(v9 + 4 * v365) <= *(v363 + 4 * v365))
            {
              v369 = 0;
              goto LABEL_497;
            }

            v366 = *(a3 + 4 * v365);
            v367 = *(v363 + 8 + 4 * v365);
            v365 = 1;
            v368 = (v366 < v367) & ~v364;
            v364 = 1;
          }

          while ((v368 & 1) != 0);
          v369 = v366 < v367;
LABEL_497:
          v370 = (*(**(v340 + 64) + 256))(*(v340 + 64));
          v371 = 0;
          v372 = 0;
          while (1)
          {
            result.n128_u32[0] = *(v9 + 4 * v372);
            if (result.n128_f32[0] <= *(v370 + 4 * v372))
            {
              break;
            }

            result.n128_u32[0] = *(a3 + 4 * v372);
            v373 = *(v370 + 8 + 4 * v372);
            v372 = 1;
            v374 = (result.n128_f32[0] < v373) & ~v371;
            v371 = 1;
            if ((v374 & 1) == 0)
            {
              v375 = result.n128_f32[0] < v373;
              goto LABEL_502;
            }
          }

          v375 = 0;
LABEL_502:
          if (*(v362 + 493) == 2)
          {
            v376 = v369;
          }

          else
          {
            v376 = 0;
          }

          if (*(v340 + 493) == 2)
          {
            v377 = v375;
          }

          else
          {
            v377 = 0;
          }

          if (((v376 | v377) & 1) != 0 && ((v376 ^ v377) & 1) != 0 || (LOBYTE(v376) = v369, v369 != v375))
          {
            if (v376)
            {
              goto LABEL_527;
            }

            goto LABEL_512;
          }

          result.n128_u32[0] = *(v362 + 476);
          v378 = *(v340 + 476);
          if (result.n128_f32[0] == v378)
          {
            break;
          }

          if (result.n128_f32[0] > v378)
          {
            goto LABEL_527;
          }

LABEL_512:
          *v341 = *v302;
        }

        if (v362 >= v340)
        {
          goto LABEL_512;
        }

LABEL_527:
        v302 = v341;
LABEL_528:
        *v302 = v340;
        v10 = v512;
        v300 = v507;
LABEL_529:
        v299 = v300 - 1;
        if (!v300)
        {
LABEL_545:
          v386 = 0;
          v510 = *v10;
          v387 = (v11 - 2) >> 1;
          v388 = v10;
          v515 = v387;
          v518 = v11;
          while (1)
          {
            v389 = v388;
            v390 = &v388[8 * v386];
            v388 = v390 + 8;
            v391 = 2 * v386;
            v386 = (2 * v386) | 1;
            v392 = v391 + 2;
            if (v391 + 2 < v11)
            {
              v395 = *(v390 + 2);
              v394 = v390 + 16;
              v393 = v395;
              v396 = *(v394 - 1);
              v397 = (*(**(v396 + 64) + 256))(*(v396 + 64));
              v398 = 0;
              v399 = 0;
              while (*(v9 + 4 * v399) > *(v397 + 4 * v399))
              {
                v400 = *(a3 + 4 * v399);
                v401 = *(v397 + 8 + 4 * v399);
                v399 = 1;
                v402 = (v400 < v401) & ~v398;
                v398 = 1;
                if ((v402 & 1) == 0)
                {
                  v403 = v400 < v401;
                  goto LABEL_552;
                }
              }

              v403 = 0;
LABEL_552:
              v404 = (*(**(v393 + 64) + 256))(*(v393 + 64));
              v405 = 0;
              v406 = 0;
              while (1)
              {
                result.n128_u32[0] = *(v9 + 4 * v406);
                if (result.n128_f32[0] <= *(v404 + 4 * v406))
                {
                  break;
                }

                result.n128_u32[0] = *(a3 + 4 * v406);
                v407 = *(v404 + 8 + 4 * v406);
                v406 = 1;
                v408 = (result.n128_f32[0] < v407) & ~v405;
                v405 = 1;
                if ((v408 & 1) == 0)
                {
                  v409 = result.n128_f32[0] < v407;
                  goto LABEL_557;
                }
              }

              v409 = 0;
LABEL_557:
              if (*(v396 + 493) == 2)
              {
                v410 = v403;
              }

              else
              {
                v410 = 0;
              }

              if (*(v393 + 493) == 2)
              {
                v411 = v409;
              }

              else
              {
                v411 = 0;
              }

              if (((v410 | v411) & 1) == 0 || ((v410 ^ v411) & 1) == 0)
              {
                v410 = v403;
                if (v403 == v409)
                {
                  result.n128_u32[0] = *(v396 + 476);
                  v412 = *(v393 + 476);
                  if (result.n128_f32[0] == v412)
                  {
                    v381 = v396 >= v393;
                    v387 = v515;
                    v11 = v518;
                    if (v381)
                    {
                      goto LABEL_568;
                    }
                  }

                  else
                  {
                    v387 = v515;
                    v11 = v518;
                    if (result.n128_f32[0] <= v412)
                    {
                      goto LABEL_568;
                    }
                  }

LABEL_567:
                  v388 = v394;
                  v386 = v392;
                  goto LABEL_568;
                }
              }

              v387 = v515;
              v11 = v518;
              if (v410)
              {
                goto LABEL_567;
              }
            }

LABEL_568:
            *v389 = *v388;
            if (v386 > v387)
            {
              v413 = a2 - 8;
              v257 = v388 == a2 - 8;
              a2 -= 8;
              if (v257)
              {
                *v388 = v510;
                v10 = v512;
                goto LABEL_628;
              }

              *v388 = *v413;
              *v413 = v510;
              v10 = v512;
              v414 = (v388 - v512 + 8) >> 3;
              v415 = v414 - 2;
              if (v414 < 2)
              {
                goto LABEL_628;
              }

              v416 = v415 >> 1;
              v417 = &v512[8 * (v415 >> 1)];
              v418 = *v417;
              v419 = *v388;
              v420 = (*(**(*v417 + 64) + 256))(*(*v417 + 64));
              v421 = 0;
              v422 = 0;
              while (*(v9 + 4 * v422) > *(v420 + 4 * v422))
              {
                v423 = *(a3 + 4 * v422);
                v424 = *(v420 + 8 + 4 * v422);
                v422 = 1;
                v425 = (v423 < v424) & ~v421;
                v421 = 1;
                if ((v425 & 1) == 0)
                {
                  v426 = v423 < v424;
                  goto LABEL_584;
                }
              }

              v426 = 0;
LABEL_584:
              v427 = (*(**(v419 + 64) + 256))(*(v419 + 64));
              v428 = 0;
              v429 = 0;
              while (1)
              {
                result.n128_u32[0] = *(v9 + 4 * v429);
                if (result.n128_f32[0] <= *(v427 + 4 * v429))
                {
                  break;
                }

                result.n128_u32[0] = *(a3 + 4 * v429);
                v430 = *(v427 + 8 + 4 * v429);
                v429 = 1;
                v431 = (result.n128_f32[0] < v430) & ~v428;
                v428 = 1;
                if ((v431 & 1) == 0)
                {
                  v432 = result.n128_f32[0] < v430;
                  goto LABEL_589;
                }
              }

              v432 = 0;
LABEL_589:
              if (*(v418 + 493) == 2)
              {
                v433 = v426;
              }

              else
              {
                v433 = 0;
              }

              if (*(v419 + 493) == 2)
              {
                v434 = v432;
              }

              else
              {
                v434 = 0;
              }

              if (((v433 | v434) & 1) != 0 && ((v433 ^ v434) & 1) != 0 || (v433 = v426, v426 != v432))
              {
                v11 = v518;
                if (!v433)
                {
                  goto LABEL_628;
                }
              }

              else
              {
                result.n128_u32[0] = *(v418 + 476);
                v385 = *(v419 + 476);
                if (result.n128_f32[0] == v385)
                {
                  v381 = v418 >= v419;
                  v11 = v518;
                  if (v381)
                  {
                    goto LABEL_628;
                  }
                }

                else
                {
                  v11 = v518;
                  if (result.n128_f32[0] <= v385)
                  {
                    goto LABEL_628;
                  }
                }
              }

              v435 = *v388;
              *v388 = *v417;
              if (v415 < 2)
              {
                goto LABEL_627;
              }

              while (2)
              {
                v436 = v417;
                v437 = v416 - 1;
                v416 = (v416 - 1) >> 1;
                v417 = &v512[8 * v416];
                v438 = *v417;
                v439 = (*(**(*v417 + 64) + 256))(*(*v417 + 64));
                v440 = 0;
                v441 = 0;
                while (*(v9 + 4 * v441) > *(v439 + 4 * v441))
                {
                  v442 = *(a3 + 4 * v441);
                  v443 = *(v439 + 8 + 4 * v441);
                  v441 = 1;
                  v444 = (v442 < v443) & ~v440;
                  v440 = 1;
                  if ((v444 & 1) == 0)
                  {
                    v445 = v442 < v443;
                    goto LABEL_605;
                  }
                }

                v445 = 0;
LABEL_605:
                v446 = (*(**(v435 + 64) + 256))(*(v435 + 64));
                v447 = 0;
                v448 = 0;
                while (1)
                {
                  result.n128_u32[0] = *(v9 + 4 * v448);
                  if (result.n128_f32[0] <= *(v446 + 4 * v448))
                  {
                    break;
                  }

                  result.n128_u32[0] = *(a3 + 4 * v448);
                  v449 = *(v446 + 8 + 4 * v448);
                  v448 = 1;
                  v450 = (result.n128_f32[0] < v449) & ~v447;
                  v447 = 1;
                  if ((v450 & 1) == 0)
                  {
                    v451 = result.n128_f32[0] < v449;
                    goto LABEL_610;
                  }
                }

                v451 = 0;
LABEL_610:
                if (*(v438 + 493) == 2)
                {
                  v452 = v445;
                }

                else
                {
                  v452 = 0;
                }

                if (*(v435 + 493) == 2)
                {
                  v453 = v451;
                }

                else
                {
                  v453 = 0;
                }

                if (((v452 | v453) & 1) != 0 && ((v452 ^ v453) & 1) != 0 || (v452 = v445, v445 != v451))
                {
                  if (!v452)
                  {
                    break;
                  }

                  goto LABEL_620;
                }

                result.n128_u32[0] = *(v438 + 476);
                v454 = *(v435 + 476);
                if (result.n128_f32[0] != v454)
                {
                  if (result.n128_f32[0] <= v454)
                  {
                    break;
                  }

                  goto LABEL_620;
                }

                if (v438 < v435)
                {
LABEL_620:
                  *v436 = *v417;
                  if (v437 <= 1)
                  {
                    goto LABEL_627;
                  }

                  continue;
                }

                break;
              }

              v417 = v436;
LABEL_627:
              *v417 = v435;
              v11 = v518;
LABEL_628:
              if (v11-- <= 2)
              {
                return result.n128_f32[0];
              }

              goto LABEL_545;
            }
          }
        }
      }
    }

    v12 = &i[8 * (v11 >> 1)];
    if (v11 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(&v10[8 * (v11 >> 1)], v10, v513, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v10, &v10[8 * (v11 >> 1)], v513, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v10 + 1, v12 - 1, a2 - 2, a3);
      v13 = &v10[8 * (v11 >> 1) + 8];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v512 + 2, v13, a2 - 3, a3);
      v10 = v512;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(v12 - 1, v12, v13, a3);
      v14 = *v512;
      *v512 = *v12;
      *v12 = v14;
    }

    --a4;
    if (a5)
    {
      goto LABEL_36;
    }

    v15 = *(v10 - 1);
    v16 = *v10;
    v17 = (*(**(v15 + 64) + 256))(*(v15 + 64));
    v18 = 0;
    v19 = 0;
    while (*(v9 + 4 * v19) > *(v17 + 4 * v19))
    {
      v20 = *(a3 + 4 * v19);
      v21 = *(v17 + 8 + 4 * v19);
      v19 = 1;
      v22 = (v20 < v21) & ~v18;
      v18 = 1;
      if ((v22 & 1) == 0)
      {
        v23 = v20 < v21;
        goto LABEL_21;
      }
    }

    v23 = 0;
LABEL_21:
    v24 = (*(**(v16 + 64) + 256))(*(v16 + 64));
    v25 = 0;
    v26 = 0;
    while (*(v9 + 4 * v26) > *(v24 + 4 * v26))
    {
      v27 = *(a3 + 4 * v26);
      v28 = *(v24 + 8 + 4 * v26);
      v26 = 1;
      v29 = (v27 < v28) & ~v25;
      v25 = 1;
      if ((v29 & 1) == 0)
      {
        v30 = v27 < v28;
        goto LABEL_26;
      }
    }

    v30 = 0;
LABEL_26:
    if (*(v15 + 493) == 2)
    {
      v31 = v23;
    }

    else
    {
      v31 = 0;
    }

    if (*(v16 + 493) == 2)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (((v31 | v32) & 1) != 0 && ((v31 ^ v32) & 1) != 0 || (LOBYTE(v31) = v23, v23 != v30))
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_181;
      }

LABEL_36:
      v33 = *v10;
      v34 = v10;
      do
      {
        while (1)
        {
          while (1)
          {
            v35 = v34;
            v37 = *(v34 + 8);
            v34 += 8;
            v36 = v37;
            v38 = (*(**(v37 + 64) + 256))(*(v37 + 64));
            v39 = 0;
            v40 = 0;
            while (*(v9 + 4 * v40) > *(v38 + 4 * v40))
            {
              v41 = *(a3 + 4 * v40);
              v42 = *(v38 + 8 + 4 * v40);
              v40 = 1;
              v43 = (v41 < v42) & ~v39;
              v39 = 1;
              if ((v43 & 1) == 0)
              {
                v44 = v41 < v42;
                goto LABEL_42;
              }
            }

            v44 = 0;
LABEL_42:
            v45 = (*(**(v33 + 64) + 256))(*(v33 + 64));
            v46 = 0;
            v47 = 0;
            while (1)
            {
              result.n128_u32[0] = *(v9 + 4 * v47);
              if (result.n128_f32[0] <= *(v45 + 4 * v47))
              {
                break;
              }

              result.n128_u32[0] = *(a3 + 4 * v47);
              v48 = *(v45 + 8 + 4 * v47);
              v47 = 1;
              v49 = (result.n128_f32[0] < v48) & ~v46;
              v46 = 1;
              if ((v49 & 1) == 0)
              {
                v50 = result.n128_f32[0] < v48;
                goto LABEL_47;
              }
            }

            v50 = 0;
LABEL_47:
            v51 = *(v36 + 493) == 2 ? v44 : 0;
            v52 = *(v33 + 493) == 2 ? v50 : 0;
            if (((v51 | v52) & 1) == 0 || ((v51 ^ v52) & 1) == 0)
            {
              LOBYTE(v51) = v44;
              if (v44 == v50)
              {
                break;
              }
            }

            if ((v51 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          result.n128_u32[0] = *(v36 + 476);
          v53 = *(v33 + 476);
          if (result.n128_f32[0] == v53)
          {
            break;
          }

          if (result.n128_f32[0] <= v53)
          {
            goto LABEL_62;
          }
        }
      }

      while (v36 < v33);
LABEL_62:
      v54 = a2;
      if (v35 == v512)
      {
        v54 = a2;
        if (v34 < a2)
        {
          v54 = a2;
          do
          {
            while (1)
            {
              while (1)
              {
                v74 = *(v54 - 1);
                v54 -= 8;
                v73 = v74;
                v75 = (*(**(v74 + 64) + 256))(*(v74 + 64));
                v76 = 0;
                v77 = 0;
                while (*(v9 + 4 * v77) > *(v75 + 4 * v77))
                {
                  v78 = *(a3 + 4 * v77);
                  v79 = *(v75 + 8 + 4 * v77);
                  v77 = 1;
                  v80 = (v78 < v79) & ~v76;
                  v76 = 1;
                  if ((v80 & 1) == 0)
                  {
                    v81 = v78 < v79;
                    goto LABEL_96;
                  }
                }

                v81 = 0;
LABEL_96:
                v82 = (*(**(v33 + 64) + 256))(*(v33 + 64));
                v83 = 0;
                v84 = 0;
                while (1)
                {
                  result.n128_u32[0] = *(v9 + 4 * v84);
                  if (result.n128_f32[0] <= *(v82 + 4 * v84))
                  {
                    break;
                  }

                  result.n128_u32[0] = *(a3 + 4 * v84);
                  v85 = *(v82 + 8 + 4 * v84);
                  v84 = 1;
                  v86 = (result.n128_f32[0] < v85) & ~v83;
                  v83 = 1;
                  if ((v86 & 1) == 0)
                  {
                    v87 = result.n128_f32[0] < v85;
                    goto LABEL_101;
                  }
                }

                v87 = 0;
LABEL_101:
                v88 = *(v73 + 493) == 2 ? v81 : 0;
                v89 = *(v33 + 493) == 2 ? v87 : 0;
                if (((v88 | v89) & 1) == 0 || ((v88 ^ v89) & 1) == 0)
                {
                  LOBYTE(v88) = v81;
                  if (v81 == v87)
                  {
                    break;
                  }
                }

                if (v34 >= v54 || (v88 & 1) != 0)
                {
                  goto LABEL_119;
                }
              }

              result.n128_u32[0] = *(v73 + 476);
              v90 = *(v33 + 476);
              if (result.n128_f32[0] == v90)
              {
                break;
              }

              if (v34 >= v54 || result.n128_f32[0] > v90)
              {
                goto LABEL_119;
              }
            }
          }

          while (v73 >= v33 && v34 < v54);
        }
      }

      else
      {
        do
        {
          while (1)
          {
            while (1)
            {
              v56 = *(v54 - 1);
              v54 -= 8;
              v55 = v56;
              v57 = (*(**(v56 + 64) + 256))(*(v56 + 64));
              v58 = 0;
              v59 = 0;
              while (*(v9 + 4 * v59) > *(v57 + 4 * v59))
              {
                v60 = *(a3 + 4 * v59);
                v61 = *(v57 + 8 + 4 * v59);
                v59 = 1;
                v62 = (v60 < v61) & ~v58;
                v58 = 1;
                if ((v62 & 1) == 0)
                {
                  v63 = v60 < v61;
                  goto LABEL_68;
                }
              }

              v63 = 0;
LABEL_68:
              v64 = (*(**(v33 + 64) + 256))(*(v33 + 64));
              v65 = 0;
              v66 = 0;
              while (1)
              {
                result.n128_u32[0] = *(v9 + 4 * v66);
                if (result.n128_f32[0] <= *(v64 + 4 * v66))
                {
                  break;
                }

                result.n128_u32[0] = *(a3 + 4 * v66);
                v67 = *(v64 + 8 + 4 * v66);
                v66 = 1;
                v68 = (result.n128_f32[0] < v67) & ~v65;
                v65 = 1;
                if ((v68 & 1) == 0)
                {
                  v69 = result.n128_f32[0] < v67;
                  goto LABEL_73;
                }
              }

              v69 = 0;
LABEL_73:
              v70 = *(v55 + 493) == 2 ? v63 : 0;
              v71 = *(v33 + 493) == 2 ? v69 : 0;
              if (((v70 | v71) & 1) == 0 || ((v70 ^ v71) & 1) == 0)
              {
                v70 = v63;
                if (v63 == v69)
                {
                  break;
                }
              }

              if (v70)
              {
                goto LABEL_119;
              }
            }

            result.n128_u32[0] = *(v55 + 476);
            v72 = *(v33 + 476);
            if (result.n128_f32[0] == v72)
            {
              break;
            }

            if (result.n128_f32[0] > v72)
            {
              goto LABEL_119;
            }
          }
        }

        while (v55 >= v33);
      }

LABEL_119:
      v516 = a4;
      if (v34 < v54)
      {
        v91 = v34;
        v92 = v54;
        do
        {
          v93 = *v91;
          *v91 = *v92;
          *v92 = v93;
          do
          {
            while (1)
            {
              v35 = v91;
              v95 = *(v91 + 1);
              v91 += 8;
              v94 = v95;
              v96 = (*(**(v95 + 64) + 256))(*(v95 + 64));
              v97 = 0;
              v98 = 0;
              while (*(v9 + 4 * v98) > *(v96 + 4 * v98))
              {
                v99 = *(a3 + 4 * v98);
                v100 = *(v96 + 8 + 4 * v98);
                v98 = 1;
                v101 = (v99 < v100) & ~v97;
                v97 = 1;
                if ((v101 & 1) == 0)
                {
                  v102 = v99 < v100;
                  goto LABEL_127;
                }
              }

              v102 = 0;
LABEL_127:
              v103 = (*(**(v33 + 64) + 256))(*(v33 + 64));
              v104 = 0;
              v105 = 0;
              while (*(v9 + 4 * v105) > *(v103 + 4 * v105))
              {
                v106 = *(a3 + 4 * v105);
                v107 = *(v103 + 8 + 4 * v105);
                v105 = 1;
                v108 = (v106 < v107) & ~v104;
                v104 = 1;
                if ((v108 & 1) == 0)
                {
                  v109 = v106 < v107;
                  goto LABEL_132;
                }
              }

              v109 = 0;
LABEL_132:
              v110 = *(v94 + 493) == 2 ? v102 : 0;
              v111 = *(v33 + 493) == 2 ? v109 : 0;
              if ((v110 | v111) & 1) != 0 && ((v110 ^ v111))
              {
                break;
              }

              LOBYTE(v110) = v102;
              if (v102 != v109)
              {
                break;
              }

              v112 = *(v94 + 476);
              v113 = *(v33 + 476);
              if (v112 == v113)
              {
                if (v94 >= v33)
                {
                  goto LABEL_152;
                }
              }

              else if (v112 <= v113)
              {
                goto LABEL_152;
              }
            }
          }

          while ((v110 & 1) != 0);
          do
          {
LABEL_152:
            while (1)
            {
              v116 = *(v92 - 1);
              v92 -= 8;
              v115 = v116;
              v117 = (*(**(v116 + 64) + 256))(*(v116 + 64));
              v118 = 0;
              v119 = 0;
              while (*(v9 + 4 * v119) > *(v117 + 4 * v119))
              {
                v120 = *(a3 + 4 * v119);
                v121 = *(v117 + 8 + 4 * v119);
                v119 = 1;
                v122 = (v120 < v121) & ~v118;
                v118 = 1;
                if ((v122 & 1) == 0)
                {
                  v123 = v120 < v121;
                  goto LABEL_157;
                }
              }

              v123 = 0;
LABEL_157:
              v124 = (*(**(v33 + 64) + 256))(*(v33 + 64));
              v125 = 0;
              v126 = 0;
              while (1)
              {
                result.n128_u32[0] = *(v9 + 4 * v126);
                if (result.n128_f32[0] <= *(v124 + 4 * v126))
                {
                  break;
                }

                result.n128_u32[0] = *(a3 + 4 * v126);
                v127 = *(v124 + 8 + 4 * v126);
                v126 = 1;
                v128 = (result.n128_f32[0] < v127) & ~v125;
                v125 = 1;
                if ((v128 & 1) == 0)
                {
                  v129 = result.n128_f32[0] < v127;
                  goto LABEL_162;
                }
              }

              v129 = 0;
LABEL_162:
              v130 = *(v115 + 493) == 2 ? v123 : 0;
              v131 = *(v33 + 493) == 2 ? v129 : 0;
              if ((v130 | v131) & 1) != 0 && ((v130 ^ v131))
              {
                break;
              }

              v130 = v123;
              if (v123 != v129)
              {
                break;
              }

              result.n128_u32[0] = *(v115 + 476);
              v114 = *(v33 + 476);
              if (result.n128_f32[0] == v114)
              {
                if (v115 < v33)
                {
                  goto LABEL_172;
                }
              }

              else if (result.n128_f32[0] > v114)
              {
                goto LABEL_172;
              }
            }
          }

          while (!v130);
LABEL_172:
          ;
        }

        while (v91 < v92);
      }

      if (v35 != v512)
      {
        *v512 = *v35;
      }

      *v35 = v33;
      a4 = v516;
      if (v34 < v54)
      {
LABEL_178:
        result.n128_f32[0] = std::__introsort<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,false>(v512, v35, a3, v516, a5 & 1, result.n128_f32[0]);
        a5 = 0;
        i = v35 + 8;
      }

      else
      {
        v132 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **>(v512, v35, a3);
        i = v35 + 8;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **>(v35 + 1, a2, a3))
        {
          a2 = v35;
          i = v512;
          if (v132)
          {
            return result.n128_f32[0];
          }

          goto LABEL_2;
        }

        if (!v132)
        {
          goto LABEL_178;
        }
      }
    }

    else
    {
      v133 = *(v15 + 476);
      v134 = *(v16 + 476);
      if (v133 == v134)
      {
        if (v15 < v16)
        {
          goto LABEL_36;
        }
      }

      else if (v133 > v134)
      {
        goto LABEL_36;
      }

LABEL_181:
      v135 = *v10;
      v136 = *v513;
      v137 = (*(**(*v10 + 64) + 256))(*(*v10 + 64));
      v138 = 0;
      v139 = 0;
      while (*(v9 + 4 * v139) > *(v137 + 4 * v139))
      {
        v140 = *(a3 + 4 * v139);
        v141 = *(v137 + 8 + 4 * v139);
        v139 = 1;
        v142 = (v140 < v141) & ~v138;
        v138 = 1;
        if ((v142 & 1) == 0)
        {
          v143 = v140 < v141;
          goto LABEL_188;
        }
      }

      v143 = 0;
LABEL_188:
      v144 = (*(**(v136 + 64) + 256))(*(v136 + 64));
      v145 = 0;
      v146 = 0;
      while (1)
      {
        result.n128_u32[0] = *(v9 + 4 * v146);
        if (result.n128_f32[0] <= *(v144 + 4 * v146))
        {
          break;
        }

        result.n128_u32[0] = *(a3 + 4 * v146);
        v147 = *(v144 + 8 + 4 * v146);
        v146 = 1;
        v148 = (result.n128_f32[0] < v147) & ~v145;
        v145 = 1;
        if ((v148 & 1) == 0)
        {
          v149 = result.n128_f32[0] < v147;
          goto LABEL_193;
        }
      }

      v149 = 0;
LABEL_193:
      if (*(v135 + 493) == 2)
      {
        v150 = v143;
      }

      else
      {
        v150 = 0;
      }

      if (*(v136 + 493) == 2)
      {
        v151 = v149;
      }

      else
      {
        v151 = 0;
      }

      if (((v150 | v151) & 1) != 0 && ((v150 ^ v151) & 1) != 0 || (v150 = v143, v143 != v149))
      {
        if (v150)
        {
          goto LABEL_203;
        }
      }

      else
      {
        result.n128_u32[0] = *(v135 + 476);
        v170 = *(v136 + 476);
        if (result.n128_f32[0] == v170)
        {
          if (v135 < v136)
          {
LABEL_203:
            i = v10;
            do
            {
              while (1)
              {
                while (1)
                {
                  v153 = *(i + 1);
                  i += 8;
                  v152 = v153;
                  v154 = (*(**(v135 + 64) + 256))(*(v135 + 64));
                  v155 = 0;
                  v156 = 0;
                  while (*(v9 + 4 * v156) > *(v154 + 4 * v156))
                  {
                    v157 = *(a3 + 4 * v156);
                    v158 = *(v154 + 8 + 4 * v156);
                    v156 = 1;
                    v159 = (v157 < v158) & ~v155;
                    v155 = 1;
                    if ((v159 & 1) == 0)
                    {
                      v160 = v157 < v158;
                      goto LABEL_209;
                    }
                  }

                  v160 = 0;
LABEL_209:
                  v161 = (*(**(v152 + 64) + 256))(*(v152 + 64));
                  v162 = 0;
                  v163 = 0;
                  while (1)
                  {
                    result.n128_u32[0] = *(v9 + 4 * v163);
                    if (result.n128_f32[0] <= *(v161 + 4 * v163))
                    {
                      break;
                    }

                    result.n128_u32[0] = *(a3 + 4 * v163);
                    v164 = *(v161 + 8 + 4 * v163);
                    v163 = 1;
                    v165 = (result.n128_f32[0] < v164) & ~v162;
                    v162 = 1;
                    if ((v165 & 1) == 0)
                    {
                      v166 = result.n128_f32[0] < v164;
                      goto LABEL_214;
                    }
                  }

                  v166 = 0;
LABEL_214:
                  v167 = *(v135 + 493) == 2 ? v160 : 0;
                  v168 = *(v152 + 493) == 2 ? v166 : 0;
                  if (((v167 | v168) & 1) == 0 || ((v167 ^ v168) & 1) == 0)
                  {
                    LOBYTE(v167) = v160;
                    if (v160 == v166)
                    {
                      break;
                    }
                  }

                  if (v167)
                  {
                    goto LABEL_259;
                  }
                }

                result.n128_u32[0] = *(v135 + 476);
                v169 = *(v152 + 476);
                if (result.n128_f32[0] == v169)
                {
                  break;
                }

                if (result.n128_f32[0] > v169)
                {
                  goto LABEL_259;
                }
              }
            }

            while (v135 >= v152);
            goto LABEL_259;
          }
        }

        else if (result.n128_f32[0] > v170)
        {
          goto LABEL_203;
        }
      }

      for (i = v10 + 8; i < a2; i += 8)
      {
        v171 = *i;
        v172 = (*(**(v135 + 64) + 256))(*(v135 + 64));
        v173 = 0;
        v174 = 0;
        while (*(v9 + 4 * v174) > *(v172 + 4 * v174))
        {
          v175 = *(a3 + 4 * v174);
          v176 = *(v172 + 8 + 4 * v174);
          v174 = 1;
          v177 = (v175 < v176) & ~v173;
          v173 = 1;
          if ((v177 & 1) == 0)
          {
            v178 = v175 < v176;
            goto LABEL_239;
          }
        }

        v178 = 0;
LABEL_239:
        v179 = (*(**(v171 + 64) + 256))(*(v171 + 64));
        v180 = 0;
        v181 = 0;
        while (1)
        {
          result.n128_u32[0] = *(v9 + 4 * v181);
          if (result.n128_f32[0] <= *(v179 + 4 * v181))
          {
            break;
          }

          result.n128_u32[0] = *(a3 + 4 * v181);
          v182 = *(v179 + 8 + 4 * v181);
          v181 = 1;
          v183 = (result.n128_f32[0] < v182) & ~v180;
          v180 = 1;
          if ((v183 & 1) == 0)
          {
            v184 = result.n128_f32[0] < v182;
            goto LABEL_244;
          }
        }

        v184 = 0;
LABEL_244:
        if (*(v135 + 493) == 2)
        {
          v185 = v178;
        }

        else
        {
          v185 = 0;
        }

        if (*(v171 + 493) == 2)
        {
          v186 = v184;
        }

        else
        {
          v186 = 0;
        }

        if (((v185 | v186) & 1) != 0 && ((v185 ^ v186) & 1) != 0 || (LOBYTE(v185) = v178, v178 != v184))
        {
          if (v185)
          {
            break;
          }
        }

        else
        {
          result.n128_u32[0] = *(v135 + 476);
          v187 = *(v171 + 476);
          if (result.n128_f32[0] == v187)
          {
            if (v135 < v171)
            {
              break;
            }
          }

          else if (result.n128_f32[0] > v187)
          {
            break;
          }
        }
      }

LABEL_259:
      v188 = a2;
      if (i < a2)
      {
        v188 = a2;
        do
        {
          while (1)
          {
            while (1)
            {
              v190 = *(v188 - 1);
              v188 -= 8;
              v189 = v190;
              v191 = (*(**(v135 + 64) + 256))(*(v135 + 64));
              v192 = 0;
              v193 = 0;
              while (*(v9 + 4 * v193) > *(v191 + 4 * v193))
              {
                v194 = *(a3 + 4 * v193);
                v195 = *(v191 + 8 + 4 * v193);
                v193 = 1;
                v196 = (v194 < v195) & ~v192;
                v192 = 1;
                if ((v196 & 1) == 0)
                {
                  v197 = v194 < v195;
                  goto LABEL_266;
                }
              }

              v197 = 0;
LABEL_266:
              v198 = (*(**(v189 + 64) + 256))(*(v189 + 64));
              v199 = 0;
              v200 = 0;
              while (1)
              {
                result.n128_u32[0] = *(v9 + 4 * v200);
                if (result.n128_f32[0] <= *(v198 + 4 * v200))
                {
                  break;
                }

                result.n128_u32[0] = *(a3 + 4 * v200);
                v201 = *(v198 + 8 + 4 * v200);
                v200 = 1;
                v202 = (result.n128_f32[0] < v201) & ~v199;
                v199 = 1;
                if ((v202 & 1) == 0)
                {
                  v203 = result.n128_f32[0] < v201;
                  goto LABEL_271;
                }
              }

              v203 = 0;
LABEL_271:
              v204 = *(v135 + 493) == 2 ? v197 : 0;
              v205 = *(v189 + 493) == 2 ? v203 : 0;
              if (((v204 | v205) & 1) == 0 || ((v204 ^ v205) & 1) == 0)
              {
                LOBYTE(v204) = v197;
                if (v197 == v203)
                {
                  break;
                }
              }

              if ((v204 & 1) == 0)
              {
                goto LABEL_338;
              }
            }

            result.n128_u32[0] = *(v135 + 476);
            v206 = *(v189 + 476);
            if (result.n128_f32[0] == v206)
            {
              break;
            }

            if (result.n128_f32[0] <= v206)
            {
              goto LABEL_338;
            }
          }
        }

        while (v135 < v189);
      }

LABEL_338:
      while (i < v188)
      {
        v207 = *i;
        *i = *v188;
        *v188 = v207;
        do
        {
          while (1)
          {
            v209 = *(i + 1);
            i += 8;
            v208 = v209;
            v210 = (*(**(v135 + 64) + 256))(*(v135 + 64));
            v211 = 0;
            v212 = 0;
            while (*(v9 + 4 * v212) > *(v210 + 4 * v212))
            {
              v213 = *(a3 + 4 * v212);
              v214 = *(v210 + 8 + 4 * v212);
              v212 = 1;
              v215 = (v213 < v214) & ~v211;
              v211 = 1;
              if ((v215 & 1) == 0)
              {
                v216 = v213 < v214;
                goto LABEL_293;
              }
            }

            v216 = 0;
LABEL_293:
            v217 = (*(**(v208 + 64) + 256))(*(v208 + 64));
            v218 = 0;
            v219 = 0;
            while (*(v9 + 4 * v219) > *(v217 + 4 * v219))
            {
              v220 = *(a3 + 4 * v219);
              v221 = *(v217 + 8 + 4 * v219);
              v219 = 1;
              v222 = (v220 < v221) & ~v218;
              v218 = 1;
              if ((v222 & 1) == 0)
              {
                v223 = v220 < v221;
                goto LABEL_298;
              }
            }

            v223 = 0;
LABEL_298:
            v224 = *(v135 + 493) == 2 ? v216 : 0;
            v225 = *(v208 + 493) == 2 ? v223 : 0;
            if ((v224 | v225) & 1) != 0 && ((v224 ^ v225))
            {
              break;
            }

            v224 = v216;
            if (v216 != v223)
            {
              break;
            }

            v226 = *(v135 + 476);
            v227 = *(v208 + 476);
            if (v226 == v227)
            {
              if (v135 < v208)
              {
                goto LABEL_318;
              }
            }

            else if (v226 > v227)
            {
              goto LABEL_318;
            }
          }
        }

        while (!v224);
        do
        {
LABEL_318:
          while (1)
          {
            v230 = *(v188 - 1);
            v188 -= 8;
            v229 = v230;
            v231 = (*(**(v135 + 64) + 256))(*(v135 + 64));
            v232 = 0;
            v233 = 0;
            while (*(v9 + 4 * v233) > *(v231 + 4 * v233))
            {
              v234 = *(a3 + 4 * v233);
              v235 = *(v231 + 8 + 4 * v233);
              v233 = 1;
              v236 = (v234 < v235) & ~v232;
              v232 = 1;
              if ((v236 & 1) == 0)
              {
                v237 = v234 < v235;
                goto LABEL_323;
              }
            }

            v237 = 0;
LABEL_323:
            v238 = (*(**(v229 + 64) + 256))(*(v229 + 64));
            v239 = 0;
            v240 = 0;
            while (1)
            {
              result.n128_u32[0] = *(v9 + 4 * v240);
              if (result.n128_f32[0] <= *(v238 + 4 * v240))
              {
                break;
              }

              result.n128_u32[0] = *(a3 + 4 * v240);
              v241 = *(v238 + 8 + 4 * v240);
              v240 = 1;
              v242 = (result.n128_f32[0] < v241) & ~v239;
              v239 = 1;
              if ((v242 & 1) == 0)
              {
                v243 = result.n128_f32[0] < v241;
                goto LABEL_328;
              }
            }

            v243 = 0;
LABEL_328:
            v244 = *(v135 + 493) == 2 ? v237 : 0;
            v245 = *(v229 + 493) == 2 ? v243 : 0;
            if ((v244 | v245) & 1) != 0 && ((v244 ^ v245))
            {
              break;
            }

            LOBYTE(v244) = v237;
            if (v237 != v243)
            {
              break;
            }

            result.n128_u32[0] = *(v135 + 476);
            v228 = *(v229 + 476);
            if (result.n128_f32[0] == v228)
            {
              if (v135 >= v229)
              {
                goto LABEL_338;
              }
            }

            else if (result.n128_f32[0] <= v228)
            {
              goto LABEL_338;
            }
          }
        }

        while ((v244 & 1) != 0);
      }

      v246 = i - 8;
      if (i - 8 != v10)
      {
        *v10 = *v246;
      }

      a5 = 0;
      *v246 = v135;
    }
  }

  v247 = *v513;
  v248 = *i;
  v249 = (*(**(*v513 + 64) + 256))(*(*v513 + 64), result);
  v250 = 0;
  v251 = 0;
  while (*(v9 + 4 * v251) > *(v249 + 4 * v251))
  {
    v252 = *(a3 + 4 * v251);
    v253 = *(v249 + 8 + 4 * v251);
    v251 = 1;
    v254 = (v252 < v253) & ~v250;
    v250 = 1;
    if ((v254 & 1) == 0)
    {
      v255 = v252 < v253;
      goto LABEL_632;
    }
  }

  v255 = 0;
LABEL_632:
  v456 = (*(**(v248 + 64) + 256))(*(v248 + 64));
  v457 = 0;
  v458 = 0;
  while (1)
  {
    result.n128_u32[0] = *(v9 + 4 * v458);
    if (result.n128_f32[0] <= *(v456 + 4 * v458))
    {
      break;
    }

    result.n128_u32[0] = *(a3 + 4 * v458);
    v459 = *(v456 + 8 + 4 * v458);
    v458 = 1;
    v460 = (result.n128_f32[0] < v459) & ~v457;
    v457 = 1;
    if ((v460 & 1) == 0)
    {
      v461 = result.n128_f32[0] < v459;
      goto LABEL_637;
    }
  }

  v461 = 0;
LABEL_637:
  if (*(v247 + 493) == 2)
  {
    v462 = v255;
  }

  else
  {
    v462 = 0;
  }

  if (*(v248 + 493) == 2)
  {
    v463 = v461;
  }

  else
  {
    v463 = 0;
  }

  if (((v462 | v463) & 1) != 0 && ((v462 ^ v463) & 1) != 0 || (v462 = v255, v255 != v461))
  {
    if (v462)
    {
      goto LABEL_647;
    }
  }

  else
  {
    result.n128_u32[0] = *(v247 + 476);
    v505 = *(v248 + 476);
    if (result.n128_f32[0] == v505)
    {
      if (v247 >= v248)
      {
        return result.n128_f32[0];
      }
    }

    else if (result.n128_f32[0] <= v505)
    {
      return result.n128_f32[0];
    }

LABEL_647:
    v464 = *i;
    *i = *v513;
    *v513 = v464;
  }

  return result.n128_f32[0];
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  v9 = *a1;
  v10 = (*(**(*a2 + 64) + 256))(*(*a2 + 64));
  v11 = 0;
  v12 = 0;
  v13 = a4 + 8;
  while (*(v13 + 4 * v12) > *(v10 + 4 * v12))
  {
    v14 = *(a4 + 4 * v12);
    v15 = *(v10 + 8 + 4 * v12);
    v12 = 1;
    v16 = (v14 < v15) & ~v11;
    v11 = 1;
    if ((v16 & 1) == 0)
    {
      v17 = v14 < v15;
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  v18 = (*(**(v9 + 64) + 256))(*(v9 + 64));
  v19 = 0;
  v20 = 0;
  while (*(v13 + 4 * v20) > *(v18 + 4 * v20))
  {
    v21 = *(a4 + 4 * v20);
    v22 = *(v18 + 8 + 4 * v20);
    v20 = 1;
    v23 = (v21 < v22) & ~v19;
    v19 = 1;
    if ((v23 & 1) == 0)
    {
      v24 = v21 < v22;
      goto LABEL_11;
    }
  }

  v24 = 0;
LABEL_11:
  if (*(v8 + 493) == 2)
  {
    v25 = v17;
  }

  else
  {
    v25 = 0;
  }

  if (*(v9 + 493) == 2)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (((v25 | v26) & 1) == 0 || ((v25 ^ v26) & 1) == 0)
  {
    LOBYTE(v25) = v17;
    if (v17 == v24)
    {
      v45 = *(v8 + 476);
      v46 = *(v9 + 476);
      if (v45 == v46)
      {
        if (v8 >= v9)
        {
          goto LABEL_44;
        }
      }

      else if (v45 <= v46)
      {
        goto LABEL_44;
      }

LABEL_21:
      v27 = *a3;
      v28 = *v6;
      v29 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
      v30 = 0;
      v31 = 0;
      while (*(v13 + 4 * v31) > *(v29 + 4 * v31))
      {
        v32 = *(a4 + 4 * v31);
        v33 = *(v29 + 8 + 4 * v31);
        v31 = 1;
        v34 = (v32 < v33) & ~v30;
        v30 = 1;
        if ((v34 & 1) == 0)
        {
          v35 = v32 < v33;
          goto LABEL_26;
        }
      }

      v35 = 0;
LABEL_26:
      result = (*(**(v28 + 64) + 256))(*(v28 + 64));
      v37 = 0;
      v38 = 0;
      while (*(v13 + 4 * v38) > *(result + 4 * v38))
      {
        v39 = *(a4 + 4 * v38);
        v40 = *(result + 8 + 4 * v38);
        v38 = 1;
        v41 = (v39 < v40) & ~v37;
        v37 = 1;
        if ((v41 & 1) == 0)
        {
          v42 = v39 < v40;
          goto LABEL_31;
        }
      }

      v42 = 0;
LABEL_31:
      if (*(v27 + 493) == 2)
      {
        v43 = v35;
      }

      else
      {
        v43 = 0;
      }

      if (*(v28 + 493) == 2)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0;
      }

      if (((v43 | v44) & 1) != 0 && ((v43 ^ v44) & 1) != 0 || (LOBYTE(v43) = v35, v35 != v42))
      {
        if (v43)
        {
LABEL_41:
          v6 = a3;
LABEL_125:
          v108 = *v7;
          *v7 = *v6;
          *v6 = v108;
          return result;
        }
      }

      else
      {
        v82 = *(v27 + 476);
        v83 = *(v28 + 476);
        if (v82 == v83)
        {
          if (v27 < v28)
          {
            goto LABEL_41;
          }
        }

        else if (v82 > v83)
        {
          goto LABEL_41;
        }
      }

      v84 = *v7;
      *v7 = *v6;
      *v6 = v84;
      v85 = *a3;
      v86 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
      v87 = 0;
      v88 = 0;
      while (*(v13 + 4 * v88) > *(v86 + 4 * v88))
      {
        v89 = *(a4 + 4 * v88);
        v90 = *(v86 + 8 + 4 * v88);
        v88 = 1;
        v91 = (v89 < v90) & ~v87;
        v87 = 1;
        if ((v91 & 1) == 0)
        {
          v92 = v89 < v90;
          goto LABEL_92;
        }
      }

      v92 = 0;
LABEL_92:
      result = (*(**(v84 + 64) + 256))(*(v84 + 64));
      v93 = 0;
      v94 = 0;
      while (*(v13 + 4 * v94) > *(result + 4 * v94))
      {
        v95 = *(a4 + 4 * v94);
        v96 = *(result + 8 + 4 * v94);
        v94 = 1;
        v97 = (v95 < v96) & ~v93;
        v93 = 1;
        if ((v97 & 1) == 0)
        {
          v98 = v95 < v96;
          goto LABEL_97;
        }
      }

      v98 = 0;
LABEL_97:
      if (*(v85 + 493) == 2)
      {
        v99 = v92;
      }

      else
      {
        v99 = 0;
      }

      if (*(v84 + 493) == 2)
      {
        v100 = v98;
      }

      else
      {
        v100 = 0;
      }

      if (((v99 | v100) & 1) != 0 && ((v99 ^ v100) & 1) != 0 || (v99 = v92, v92 != v98))
      {
        v7 = v6;
        v6 = a3;
        if (v99)
        {
          goto LABEL_125;
        }

        return result;
      }

      v106 = *(v85 + 476);
      v107 = *(v84 + 476);
      v7 = v6;
      v6 = a3;
      v105 = v106 <= v107;
      if (v106 == v107)
      {
        if (v85 >= v84)
        {
          return result;
        }

        goto LABEL_125;
      }

LABEL_117:
      if (!v105)
      {
        goto LABEL_125;
      }

      return result;
    }
  }

  if (v25)
  {
    goto LABEL_21;
  }

LABEL_44:
  v47 = *a3;
  v48 = *v6;
  v49 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
  v50 = 0;
  v51 = 0;
  while (*(v13 + 4 * v51) > *(v49 + 4 * v51))
  {
    v52 = *(a4 + 4 * v51);
    v53 = *(v49 + 8 + 4 * v51);
    v51 = 1;
    v54 = (v52 < v53) & ~v50;
    v50 = 1;
    if ((v54 & 1) == 0)
    {
      v55 = v52 < v53;
      goto LABEL_49;
    }
  }

  v55 = 0;
LABEL_49:
  result = (*(**(v48 + 64) + 256))(*(v48 + 64));
  v56 = 0;
  v57 = 0;
  while (*(v13 + 4 * v57) > *(result + 4 * v57))
  {
    v58 = *(a4 + 4 * v57);
    v59 = *(result + 8 + 4 * v57);
    v57 = 1;
    v60 = (v58 < v59) & ~v56;
    v56 = 1;
    if ((v60 & 1) == 0)
    {
      v61 = v58 < v59;
      goto LABEL_54;
    }
  }

  v61 = 0;
LABEL_54:
  if (*(v47 + 493) == 2)
  {
    v62 = v55;
  }

  else
  {
    v62 = 0;
  }

  if (*(v48 + 493) == 2)
  {
    v63 = v61;
  }

  else
  {
    v63 = 0;
  }

  if (((v62 | v63) & 1) != 0 && ((v62 ^ v63) & 1) != 0 || (v62 = v55, v55 != v61))
  {
    if (!v62)
    {
      return result;
    }
  }

  else
  {
    v101 = *(v47 + 476);
    v102 = *(v48 + 476);
    if (v101 == v102)
    {
      if (v47 >= v48)
      {
        return result;
      }
    }

    else if (v101 <= v102)
    {
      return result;
    }
  }

  v64 = *v6;
  *v6 = *a3;
  *a3 = v64;
  v65 = *v6;
  v66 = *v7;
  v67 = (*(**(*v6 + 64) + 256))(*(*v6 + 64));
  v68 = 0;
  v69 = 0;
  while (*(v13 + 4 * v69) > *(v67 + 4 * v69))
  {
    v70 = *(a4 + 4 * v69);
    v71 = *(v67 + 8 + 4 * v69);
    v69 = 1;
    v72 = (v70 < v71) & ~v68;
    v68 = 1;
    if ((v72 & 1) == 0)
    {
      v73 = v70 < v71;
      goto LABEL_69;
    }
  }

  v73 = 0;
LABEL_69:
  result = (*(**(v66 + 64) + 256))(*(v66 + 64));
  v74 = 0;
  v75 = 0;
  while (*(v13 + 4 * v75) > *(result + 4 * v75))
  {
    v76 = *(a4 + 4 * v75);
    v77 = *(result + 8 + 4 * v75);
    v75 = 1;
    v78 = (v76 < v77) & ~v74;
    v74 = 1;
    if ((v78 & 1) == 0)
    {
      v79 = v76 < v77;
      goto LABEL_74;
    }
  }

  v79 = 0;
LABEL_74:
  if (*(v65 + 493) == 2)
  {
    v80 = v73;
  }

  else
  {
    v80 = 0;
  }

  if (*(v66 + 493) == 2)
  {
    v81 = v79;
  }

  else
  {
    v81 = 0;
  }

  if (((v80 | v81) & 1) == 0 || ((v80 ^ v81) & 1) == 0)
  {
    LOBYTE(v80) = v73;
    if (v73 == v79)
    {
      v103 = *(v65 + 476);
      v104 = *(v66 + 476);
      v105 = v103 <= v104;
      if (v103 == v104)
      {
        if (v65 < v66)
        {
          goto LABEL_125;
        }

        return result;
      }

      goto LABEL_117;
    }
  }

  if (v80)
  {
    goto LABEL_125;
  }

  return result;
}

float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a2, a3, a5);
  v10 = *a4;
  v11 = *a3;
  v12 = (*(**(*a4 + 64) + 256))();
  v13 = 0;
  v14 = 0;
  v15 = a5 + 8;
  while (*(v15 + 4 * v14) > *(v12 + 4 * v14))
  {
    v16 = *(a5 + 4 * v14);
    v17 = *(v12 + 8 + 4 * v14);
    v14 = 1;
    v18 = (v16 < v17) & ~v13;
    v13 = 1;
    if ((v18 & 1) == 0)
    {
      v19 = v16 < v17;
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  v20 = (*(**(v11 + 64) + 256))(*(v11 + 64));
  v21 = 0;
  v22 = 0;
  while (1)
  {
    result = *(v15 + 4 * v22);
    if (result <= *(v20 + 4 * v22))
    {
      break;
    }

    result = *(a5 + 4 * v22);
    v24 = *(v20 + 8 + 4 * v22);
    v22 = 1;
    v25 = (result < v24) & ~v21;
    v21 = 1;
    if ((v25 & 1) == 0)
    {
      v26 = result < v24;
      goto LABEL_11;
    }
  }

  v26 = 0;
LABEL_11:
  if (*(v10 + 493) == 2)
  {
    v27 = v19;
  }

  else
  {
    v27 = 0;
  }

  if (*(v11 + 493) == 2)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  if (((v27 | v28) & 1) != 0 && ((v27 ^ v28) & 1) != 0 || (v27 = v19, v19 != v26))
  {
    if (!v27)
    {
      return result;
    }
  }

  else
  {
    result = *(v10 + 476);
    v57 = *(v11 + 476);
    if (result == v57)
    {
      if (v10 >= v11)
      {
        return result;
      }
    }

    else if (result <= v57)
    {
      return result;
    }
  }

  v29 = *a3;
  *a3 = *a4;
  *a4 = v29;
  v30 = *a3;
  v31 = *a2;
  v32 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
  v33 = 0;
  v34 = 0;
  while (*(v15 + 4 * v34) > *(v32 + 4 * v34))
  {
    v35 = *(a5 + 4 * v34);
    v36 = *(v32 + 8 + 4 * v34);
    v34 = 1;
    v37 = (v35 < v36) & ~v33;
    v33 = 1;
    if ((v37 & 1) == 0)
    {
      v38 = v35 < v36;
      goto LABEL_26;
    }
  }

  v38 = 0;
LABEL_26:
  v39 = (*(**(v31 + 64) + 256))(*(v31 + 64));
  v40 = 0;
  v41 = 0;
  while (1)
  {
    result = *(v15 + 4 * v41);
    if (result <= *(v39 + 4 * v41))
    {
      break;
    }

    result = *(a5 + 4 * v41);
    v42 = *(v39 + 8 + 4 * v41);
    v41 = 1;
    v43 = (result < v42) & ~v40;
    v40 = 1;
    if ((v43 & 1) == 0)
    {
      v44 = result < v42;
      goto LABEL_31;
    }
  }

  v44 = 0;
LABEL_31:
  if (*(v30 + 493) == 2)
  {
    v45 = v38;
  }

  else
  {
    v45 = 0;
  }

  if (*(v31 + 493) == 2)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  if (((v45 | v46) & 1) != 0 && ((v45 ^ v46) & 1) != 0 || (v45 = v38, v38 != v44))
  {
    if (!v45)
    {
      return result;
    }

    goto LABEL_41;
  }

  result = *(v30 + 476);
  v67 = *(v31 + 476);
  if (result != v67)
  {
    if (result <= v67)
    {
      return result;
    }

LABEL_41:
    v47 = *a2;
    *a2 = *a3;
    *a3 = v47;
    v48 = *a2;
    v49 = *a1;
    v50 = (*(**(*a2 + 64) + 256))(*(*a2 + 64));
    v51 = 0;
    v52 = 0;
    while (*(v15 + 4 * v52) > *(v50 + 4 * v52))
    {
      v53 = *(a5 + 4 * v52);
      v54 = *(v50 + 8 + 4 * v52);
      v52 = 1;
      v55 = (v53 < v54) & ~v51;
      v51 = 1;
      if ((v55 & 1) == 0)
      {
        v56 = v53 < v54;
        goto LABEL_49;
      }
    }

    v56 = 0;
LABEL_49:
    v58 = (*(**(v49 + 64) + 256))(*(v49 + 64));
    v59 = 0;
    v60 = 0;
    while (1)
    {
      result = *(v15 + 4 * v60);
      if (result <= *(v58 + 4 * v60))
      {
        break;
      }

      result = *(a5 + 4 * v60);
      v61 = *(v58 + 8 + 4 * v60);
      v60 = 1;
      v62 = (result < v61) & ~v59;
      v59 = 1;
      if ((v62 & 1) == 0)
      {
        v63 = result < v61;
        goto LABEL_54;
      }
    }

    v63 = 0;
LABEL_54:
    if (*(v48 + 493) == 2)
    {
      v64 = v56;
    }

    else
    {
      v64 = 0;
    }

    if (*(v49 + 493) == 2)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0;
    }

    if (((v64 | v65) & 1) != 0 && ((v64 ^ v65) & 1) != 0 || (v64 = v56, v56 != v63))
    {
      if (!v64)
      {
        return result;
      }

      goto LABEL_64;
    }

    result = *(v48 + 476);
    v68 = *(v49 + 476);
    if (result == v68)
    {
      if (v48 >= v49)
      {
        return result;
      }
    }

    else if (result <= v68)
    {
      return result;
    }

LABEL_64:
    v66 = *a1;
    *a1 = *a2;
    *a2 = v66;
    return result;
  }

  if (v30 < v31)
  {
    goto LABEL_41;
  }

  return result;
}

float std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v12.n128_f32[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = (*(**(*a5 + 64) + 256))(v12);
  v16 = 0;
  v17 = 0;
  v18 = a6 + 8;
  while (*(v18 + 4 * v17) > *(v15 + 4 * v17))
  {
    v19 = *(a6 + 4 * v17);
    v20 = *(v15 + 8 + 4 * v17);
    v17 = 1;
    v21 = (v19 < v20) & ~v16;
    v16 = 1;
    if ((v21 & 1) == 0)
    {
      v22 = v19 < v20;
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_6:
  v23 = (*(**(v14 + 64) + 256))(*(v14 + 64));
  v24 = 0;
  v25 = 0;
  while (1)
  {
    result = *(v18 + 4 * v25);
    if (result <= *(v23 + 4 * v25))
    {
      break;
    }

    result = *(a6 + 4 * v25);
    v27 = *(v23 + 8 + 4 * v25);
    v25 = 1;
    v28 = (result < v27) & ~v24;
    v24 = 1;
    if ((v28 & 1) == 0)
    {
      v29 = result < v27;
      goto LABEL_11;
    }
  }

  v29 = 0;
LABEL_11:
  if (*(v13 + 493) == 2)
  {
    v30 = v22;
  }

  else
  {
    v30 = 0;
  }

  if (*(v14 + 493) == 2)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if (((v30 | v31) & 1) != 0 && ((v30 ^ v31) & 1) != 0 || (v30 = v22, v22 != v29))
  {
    if (!v30)
    {
      return result;
    }
  }

  else
  {
    result = *(v13 + 476);
    v60 = *(v14 + 476);
    if (result == v60)
    {
      if (v13 >= v14)
      {
        return result;
      }
    }

    else if (result <= v60)
    {
      return result;
    }
  }

  v32 = *a4;
  *a4 = *a5;
  *a5 = v32;
  v33 = *a4;
  v34 = *a3;
  v35 = (*(**(*a4 + 64) + 256))(*(*a4 + 64));
  v36 = 0;
  v37 = 0;
  while (*(v18 + 4 * v37) > *(v35 + 4 * v37))
  {
    v38 = *(a6 + 4 * v37);
    v39 = *(v35 + 8 + 4 * v37);
    v37 = 1;
    v40 = (v38 < v39) & ~v36;
    v36 = 1;
    if ((v40 & 1) == 0)
    {
      v41 = v38 < v39;
      goto LABEL_26;
    }
  }

  v41 = 0;
LABEL_26:
  v42 = (*(**(v34 + 64) + 256))(*(v34 + 64));
  v43 = 0;
  v44 = 0;
  while (1)
  {
    result = *(v18 + 4 * v44);
    if (result <= *(v42 + 4 * v44))
    {
      break;
    }

    result = *(a6 + 4 * v44);
    v45 = *(v42 + 8 + 4 * v44);
    v44 = 1;
    v46 = (result < v45) & ~v43;
    v43 = 1;
    if ((v46 & 1) == 0)
    {
      v47 = result < v45;
      goto LABEL_31;
    }
  }

  v47 = 0;
LABEL_31:
  if (*(v33 + 493) == 2)
  {
    v48 = v41;
  }

  else
  {
    v48 = 0;
  }

  if (*(v34 + 493) == 2)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (((v48 | v49) & 1) != 0 && ((v48 ^ v49) & 1) != 0 || (v48 = v41, v41 != v47))
  {
    if (!v48)
    {
      return result;
    }
  }

  else
  {
    result = *(v33 + 476);
    v79 = *(v34 + 476);
    if (result == v79)
    {
      if (v33 >= v34)
      {
        return result;
      }
    }

    else if (result <= v79)
    {
      return result;
    }
  }

  v50 = *a3;
  *a3 = *a4;
  *a4 = v50;
  v51 = *a3;
  v52 = *a2;
  v53 = (*(**(*a3 + 64) + 256))(*(*a3 + 64));
  v54 = 0;
  v55 = 0;
  while (*(v18 + 4 * v55) > *(v53 + 4 * v55))
  {
    v56 = *(a6 + 4 * v55);
    v57 = *(v53 + 8 + 4 * v55);
    v55 = 1;
    v58 = (v56 < v57) & ~v54;
    v54 = 1;
    if ((v58 & 1) == 0)
    {
      v59 = v56 < v57;
      goto LABEL_49;
    }
  }

  v59 = 0;
LABEL_49:
  v61 = (*(**(v52 + 64) + 256))(*(v52 + 64));
  v62 = 0;
  v63 = 0;
  while (1)
  {
    result = *(v18 + 4 * v63);
    if (result <= *(v61 + 4 * v63))
    {
      break;
    }

    result = *(a6 + 4 * v63);
    v64 = *(v61 + 8 + 4 * v63);
    v63 = 1;
    v65 = (result < v64) & ~v62;
    v62 = 1;
    if ((v65 & 1) == 0)
    {
      v66 = result < v64;
      goto LABEL_54;
    }
  }

  v66 = 0;
LABEL_54:
  if (*(v51 + 493) == 2)
  {
    v67 = v59;
  }

  else
  {
    v67 = 0;
  }

  if (*(v52 + 493) == 2)
  {
    v68 = v66;
  }

  else
  {
    v68 = 0;
  }

  if (((v67 | v68) & 1) != 0 && ((v67 ^ v68) & 1) != 0 || (v67 = v59, v59 != v66))
  {
    if (!v67)
    {
      return result;
    }

    goto LABEL_64;
  }

  result = *(v51 + 476);
  v89 = *(v52 + 476);
  if (result != v89)
  {
    if (result <= v89)
    {
      return result;
    }

LABEL_64:
    v69 = *a2;
    *a2 = *a3;
    *a3 = v69;
    v70 = *a2;
    v71 = *a1;
    v72 = (*(**(*a2 + 64) + 256))(*(*a2 + 64));
    v73 = 0;
    v74 = 0;
    while (*(v18 + 4 * v74) > *(v72 + 4 * v74))
    {
      v75 = *(a6 + 4 * v74);
      v76 = *(v72 + 8 + 4 * v74);
      v74 = 1;
      v77 = (v75 < v76) & ~v73;
      v73 = 1;
      if ((v77 & 1) == 0)
      {
        v78 = v75 < v76;
        goto LABEL_74;
      }
    }

    v78 = 0;
LABEL_74:
    v80 = (*(**(v71 + 64) + 256))(*(v71 + 64));
    v81 = 0;
    v82 = 0;
    while (1)
    {
      result = *(v18 + 4 * v82);
      if (result <= *(v80 + 4 * v82))
      {
        break;
      }

      result = *(a6 + 4 * v82);
      v83 = *(v80 + 8 + 4 * v82);
      v82 = 1;
      v84 = (result < v83) & ~v81;
      v81 = 1;
      if ((v84 & 1) == 0)
      {
        v85 = result < v83;
        goto LABEL_79;
      }
    }

    v85 = 0;
LABEL_79:
    if (*(v70 + 493) == 2)
    {
      v86 = v78;
    }

    else
    {
      v86 = 0;
    }

    if (*(v71 + 493) == 2)
    {
      v87 = v85;
    }

    else
    {
      v87 = 0;
    }

    if (((v86 | v87) & 1) != 0 && ((v86 ^ v87) & 1) != 0 || (v86 = v78, v78 != v85))
    {
      if (!v86)
      {
        return result;
      }

      goto LABEL_89;
    }

    result = *(v70 + 476);
    v90 = *(v71 + 476);
    if (result == v90)
    {
      if (v70 >= v71)
      {
        return result;
      }
    }

    else if (result <= v90)
    {
      return result;
    }

LABEL_89:
    v88 = *a1;
    *a1 = *a2;
    *a2 = v88;
    return result;
  }

  if (v51 < v52)
  {
    goto LABEL_64;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      v8 = (*(**(v6 + 64) + 256))(*(v6 + 64));
      v9 = 0;
      v10 = 0;
      v11 = a3 + 8;
      while (*(v11 + 4 * v10) > *(v8 + 4 * v10))
      {
        v12 = *(a3 + 4 * v10);
        v13 = *(v8 + 8 + 4 * v10);
        v10 = 1;
        v14 = (v12 < v13) & ~v9;
        v9 = 1;
        if ((v14 & 1) == 0)
        {
          v15 = v12 < v13;
          goto LABEL_73;
        }
      }

      v15 = 0;
LABEL_73:
      v62 = (*(**(v7 + 64) + 256))(*(v7 + 64));
      v63 = 0;
      v64 = 0;
      while (*(v11 + 4 * v64) > *(v62 + 4 * v64))
      {
        v65 = *(a3 + 4 * v64);
        v66 = *(v62 + 8 + 4 * v64);
        v64 = 1;
        v67 = (v65 < v66) & ~v63;
        v63 = 1;
        if ((v67 & 1) == 0)
        {
          v68 = v65 < v66;
          goto LABEL_78;
        }
      }

      v68 = 0;
LABEL_78:
      if (*(v6 + 493) == 2)
      {
        v69 = v15;
      }

      else
      {
        v69 = 0;
      }

      if (*(v7 + 493) == 2)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0;
      }

      if (((v69 | v70) & 1) == 0 || ((v69 ^ v70) & 1) == 0)
      {
        v69 = v15;
        if (v15 == v68)
        {
          v73 = *(v6 + 476);
          v74 = *(v7 + 476);
          if (v73 == v74)
          {
            if (v6 >= v7)
            {
              return 1;
            }
          }

          else if (v73 <= v74)
          {
            return 1;
          }

          goto LABEL_88;
        }
      }

      if (v69)
      {
LABEL_88:
        v71 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v71;
      }

      return 1;
    }
  }

  v16 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninRoadLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::MuninRoadLabel **,0>(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = a3 + 8;
  while (1)
  {
    v20 = *v17;
    v21 = *v16;
    v22 = (*(**(*v17 + 64) + 256))(*(*v17 + 64));
    v23 = 0;
    v24 = 0;
    while (*(v19 + 4 * v24) > *(v22 + 4 * v24))
    {
      v25 = *(a3 + 4 * v24);
      v26 = *(v22 + 8 + 4 * v24);
      v24 = 1;
      v27 = (v25 < v26) & ~v23;
      v23 = 1;
      if ((v27 & 1) == 0)
      {
        v28 = v25 < v26;
        goto LABEL_20;
      }
    }

    v28 = 0;
LABEL_20:
    v29 = (*(**(v21 + 64) + 256))(*(v21 + 64));
    v30 = 0;
    v31 = 0;
    while (*(v19 + 4 * v31) > *(v29 + 4 * v31))
    {
      v32 = *(a3 + 4 * v31);
      v33 = *(v29 + 8 + 4 * v31);
      v31 = 1;
      v34 = (v32 < v33) & ~v30;
      v30 = 1;
      if ((v34 & 1) == 0)
      {
        v35 = v32 < v33;
        goto LABEL_25;
      }
    }

    v35 = 0;
LABEL_25:
    if (*(v20 + 493) == 2)
    {
      v36 = v28;
    }

    else
    {
      v36 = 0;
    }

    if (*(v21 + 493) == 2)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    if (((v36 | v37) & 1) != 0 && ((v36 ^ v37) & 1) != 0 || (v36 = v28, v28 != v35))
    {
      if (v36)
      {
        goto LABEL_35;
      }

      goto LABEL_67;
    }

    v60 = *(v20 + 476);
    v61 = *(v21 + 476);
    if (v60 == v61)
    {
      break;
    }

    if (v60 > v61)
    {
      goto LABEL_35;
    }

LABEL_67:
    v16 = v17++;
    if (v17 == a2)
    {
      return 1;
    }
  }

  if (v20 >= v21)
  {
    goto LABEL_67;
  }

LABEL_35:
  v38 = *v17;
  *v17 = *v16;
  do
  {
    v39 = v16;
    v41 = *--v16;
    v40 = v41;
    v42 = (*(**(v38 + 64) + 256))(*(v38 + 64));
    v43 = 0;
    v44 = 0;
    while (*(v19 + 4 * v44) > *(v42 + 4 * v44))
    {
      v45 = *(a3 + 4 * v44);
      v46 = *(v42 + 8 + 4 * v44);
      v44 = 1;
      v47 = (v45 < v46) & ~v43;
      v43 = 1;
      if ((v47 & 1) == 0)
      {
        v48 = v45 < v46;
        goto LABEL_41;
      }
    }

    v48 = 0;
LABEL_41:
    v49 = (*(**(v40 + 64) + 256))(*(v40 + 64));
    v50 = 0;
    v51 = 0;
    while (*(v19 + 4 * v51) > *(v49 + 4 * v51))
    {
      v52 = *(a3 + 4 * v51);
      v53 = *(v49 + 8 + 4 * v51);
      v51 = 1;
      v54 = (v52 < v53) & ~v50;
      v50 = 1;
      if ((v54 & 1) == 0)
      {
        v55 = v52 < v53;
        goto LABEL_46;
      }
    }

    v55 = 0;
LABEL_46:
    if (*(v38 + 493) == 2)
    {
      v56 = v48;
    }

    else
    {
      v56 = 0;
    }

    if (*(v40 + 493) == 2)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }

    if (((v56 | v57) & 1) != 0 && ((v56 ^ v57) & 1) != 0 || (v56 = v48, v48 != v55))
    {
      if (!v56)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v58 = *(v38 + 476);
      v59 = *(v40 + 476);
      if (v58 == v59)
      {
        if (v38 >= v40)
        {
          goto LABEL_66;
        }
      }

      else if (v58 <= v59)
      {
        goto LABEL_66;
      }
    }

    *v39 = *(v39 - 1);
  }

  while (v16 != a1);
  v39 = a1;
LABEL_66:
  *v39 = v38;
  if (++v18 != 8)
  {
    goto LABEL_67;
  }

  return v17 + 1 == a2;
}

void md::MuninRoadLabelDedupingGroup::~MuninRoadLabelDedupingGroup(md::MuninRoadLabelDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedWantsDynamicShadowBounds>(ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedWantsDynamicShadowBounds>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedWantsDynamicShadowBounds>(ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A072C0;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedUsesIdentityMatrix>(ecs2::Entity,md::ls::AppliedUsesIdentityMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedUsesIdentityMatrix>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AppliedUsesIdentityMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AppliedUsesIdentityMatrix>(void)::localId;
    unk_1EB82D750 = 0xD26E29C5780B3C99;
    qword_1EB82D758 = "md::ls::AppliedUsesIdentityMatrix]";
    qword_1EB82D760 = 33;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::AppliedUsesIdentityMatrix>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25AppliedUsesIdentityMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedUsesIdentityMatrix>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedUsesIdentityMatrix>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25AppliedUsesIdentityMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07398;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedUsesIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A07378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedUsesIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A07378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::AppliedUsesIdentityMatrix>(ecs2::Entity,md::ls::AppliedUsesIdentityMatrix &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A07330;
  a2[1] = *(result + 8);
  return result;
}

uint64_t *ecs2::ExecutionTask<md::MaterialResourceStore *>::service<md::MaterialResourceStore>(uint64_t **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x4EDAD23DFB014132)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v1;
  }

  return v1;
}

uint64_t *ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<md::MaterialResourceStore>(uint64_t **a1)
{
  v1 = a1[3];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x4EDAD23DFB014132)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[3] = v1;
  }

  return v1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28UniqueMaterialDiffuseTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialDiffuseTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41150;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialDiffuseTexture,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0,std::allocator<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &)>::operator()(uint64_t a1, unint64_t *a2, TextureHandle *a3)
{
  md::MaterialResourceStore::getMaterial(&v21, **(a1 + 8), *a2);
  v20 = a2[1];
  v6 = v21;
  v7 = **(v21 + 48);
  v8 = *(v21 + 16);
  if (v8)
  {
    if (gms::_Material<ggl::Texture2D>::zoomable(v8, 1u) && v7 < 1.0)
    {
LABEL_5:
      v11 = **(a1 + 16);
      goto LABEL_6;
    }
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = gms::_Material<ggl::Texture2D>::zoomable(v9, 1u);
    v11 = 0;
    if (!v10 || v7 <= 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:
  v12 = **(a1 + 24);
  v18 = 1;
  md::MaterialTextureManager::textureFromMaterial(v19, v12, &v21, &v20, &v18, v11);
  v14 = v19[0];
  v13 = v19[1];
  if (v19[0])
  {
    md::SharedResource::addFrameRef(v19[0], **(a1 + 32));
    v15 = *(v14 + 4);
  }

  else
  {
    v15 = 0;
  }

  mre::GGLResourceStore::updateUnmanagedTexture(**(a1 + 40), *a3, v15);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v16 = v22;
  if (v22)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2E66EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0,std::allocator<md::ita::ResolveMaterialDiffuseTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &>,ecs2::Query<md::ls::SharedMaterialDiffuseTexture &,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialDiffuseTexture &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A073E0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29UniqueMaterialEmissiveTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialEmissiveTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A413C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A413E8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A413C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialEmissiveTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::ResolveMaterialEmissiveTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &>,ecs2::Query<md::ls::SharedMaterialEmissiveTexture &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> &>)::$_0,std::allocator<md::ita::ResolveMaterialEmissiveTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &>,ecs2::Query<md::ls::SharedMaterialEmissiveTexture &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialEmissiveTexture &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07428;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::KeepMaterialAlbedoTextureAlive::operator()(ecs2::Query<md::ls::UniqueMaterialAlbedoTexture &>)::$_0,std::allocator<md::ita::KeepMaterialAlbedoTextureAlive::operator()(ecs2::Query<md::ls::UniqueMaterialAlbedoTexture &>)::$_0>,void ()(md::ls::UniqueMaterialAlbedoTexture &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07470;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0,std::allocator<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  md::MaterialResourceStore::getMaterial(&v28, **(a1 + 8), *a2);
  v27 = a2[1];
  v7 = v28;
  v8 = **(v28 + 48);
  v9 = *(v28 + 16);
  if (v9 && (gms::_Material<ggl::Texture2D>::zoomable(v9, 1u) ? (v23 = v8 < 1.0) : (v23 = 0), v23) || (v10 = v7[4]) != 0 && gms::_Material<ggl::Texture2D>::zoomable(v10, 1u) && v8 > 0.0)
  {
    v11 = (*(*v7 + 888))(v7, **(a1 + 24));
    if (v11 & 0x100) != 0 && (v11)
    {
      v12 = **(a1 + 16);
      v14 = *(v12 + 312);
      v13 = *(v12 + 320);
      if (v13)
      {
        v15 = 1;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        v16 = 0;
        v17 = 0;
        goto LABEL_18;
      }

      v16 = 0;
      v17 = 0;
      goto LABEL_17;
    }

    v19 = *(a1 + 24);
    v20 = **(a1 + 16);
    v24 = 1;
    md::MaterialTextureManager::textureFromMaterial(&v25, v20, &v28, &v27, &v24, *v19);
  }

  else
  {
    v18 = **(a1 + 16);
    v24 = 1;
    md::MaterialTextureManager::textureFromMaterial(&v25, v18, &v28, &v27, &v24, 0);
  }

  v17 = v25;
  v16 = v26;
  if (v25)
  {
    md::SharedResource::addFrameRef(v25, **(a1 + 32));
    v14 = *(v17 + 4);
    if (!v16)
    {
      goto LABEL_17;
    }

LABEL_15:
    v15 = 0;
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_18;
  }

  v14 = 0;
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_17:
  v15 = 1;
LABEL_18:
  v21 = *(a4 + 24);
  *(a4 + 16) = v17;
  *(a4 + 24) = v16;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  mre::GGLResourceStore::updateUnmanagedTexture(**(a1 + 40), *a4, v14);
  if ((v15 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v22 = v29;
  if (v29)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }
}

void sub_1B2E6768C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0,std::allocator<md::ita::ResolveMaterialAlbedoTexture::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &>,ecs2::Query<md::ls::SharedMaterialAlbedoTexture &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A074B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RenderableAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableAlbedoTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 8);
        *v17 = 0;
        *(v17 + 8) = 0;
        v25 = *(v17 + 16);
        v20 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v21 = *(v17 + 8);
        *v17 = v20;
        if (v21)
        {
          v22 = v18;
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          v18 = v22;
        }

        v23 = *(v16 + 16);
        *(v17 + 24) = *(v16 + 24);
        *(v17 + 16) = v23;
        v24 = *(v16 + 8);
        *v16 = v18;
        *(v16 + 8) = v19;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
          v19 = *(v16 + 8);
        }

        *(v16 + 16) = v25;
        *(v16 + 24) = BYTE8(v25);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42C98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42CB8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42C98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableAlbedoTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_1,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A075F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27SharedMaterialAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialAlbedoTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42D68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42D88;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42D68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialAlbedoTexture,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_0,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::SharedMaterialAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07500;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4)
{
  v5 = *(a1 + 24);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(**(a1 + 8), a4[1]);
  if (TextureStorageTracked)
  {
    v7 = *TextureStorageTracked;
  }

  else
  {
    v7 = 0;
  }

  v8 = **(a1 + 16);
  v10 = *(v8 + 312);
  v9 = *(v8 + 320);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v10 != v7)
  {
    v11 = *v5;
    v12 = ecs2::ExecutionTaskContext::currentEntity(v9);

    ecs2::addComponent<md::ls::CanEnableTexture>(v11, v12);
  }
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07688;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4)
{
  v5 = *(a1 + 24);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(**(a1 + 8), *a4);
  if (TextureStorageTracked)
  {
    v7 = *TextureStorageTracked;
  }

  else
  {
    v7 = 0;
  }

  v8 = **(a1 + 16);
  v10 = *(v8 + 312);
  v9 = *(v8 + 320);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v10 != v7)
  {
    v11 = *v5;
    v12 = ecs2::ExecutionTaskContext::currentEntity(v9);

    ecs2::addComponent<md::ls::CanEnableTexture>(v11, v12);
  }
}

__n128 std::__function::__func<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0,std::allocator<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::RenderableAlbedoTexture const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::SharedMaterialAlbedoTexture const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07640;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ecs2::addComponent<md::ls::PositionScaleInfoConstantDataHandle>(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  v4 = *(a3 + 8);
  operator new();
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PositionScaleInfoConstantDataHandle>(ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v55 = *(a1 + 8);
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v55;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v58 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v57 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v57;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v58;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PositionScaleInfoConstantDataHandle>(ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50728;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31UniqueColorCorrectionDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorCorrectionDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorCorrectionDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41698;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueColorCorrectionDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  md::MaterialResourceStore::getMaterial(&v17, **(a1 + 8), *a2);
  v5 = v17;
  v6.n128_u32[0] = **(a1 + 16);
  v7 = (*(*v17 + 752))(v17, v6);
  v9 = v8;
  v10 = (*(*v5 + 784))(v5, **(a1 + 16));
  v11 = v10;
  v13 = v12;
  v14 = HIDWORD(v10);
  ColorCorrectionData = md::MaterialResourceStore::getColorCorrectionData(**(a1 + 8), *a3);
  if (*(ColorCorrectionData + 20) == v13)
  {
    if (*(ColorCorrectionData + 20))
    {
      *(ColorCorrectionData + 12) = v11;
      *(ColorCorrectionData + 16) = v14;
    }
  }

  else if (*(ColorCorrectionData + 20))
  {
    *(ColorCorrectionData + 20) = 0;
  }

  else
  {
    *(ColorCorrectionData + 12) = v11;
    *(ColorCorrectionData + 16) = v14;
    *(ColorCorrectionData + 20) = 1;
  }

  if (*(ColorCorrectionData + 8) == v9)
  {
    if (*(ColorCorrectionData + 8))
    {
      *ColorCorrectionData = v7;
    }
  }

  else if (*(ColorCorrectionData + 8))
  {
    *(ColorCorrectionData + 8) = 0;
  }

  else
  {
    *ColorCorrectionData = v7;
    *(ColorCorrectionData + 8) = 1;
  }

  v16 = v18;
  if (v18)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2E68FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateColorCorrectionData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A076D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24CheckIfRequiresDepthPeelEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfRequiresDepthPeel>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfRequiresDepthPeel>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24CheckIfRequiresDepthPeelEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A077C8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfRequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A077A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfRequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A077A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<md::ita::CheckIfOpaque::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*>)::$_0,std::allocator<md::ita::CheckIfOpaque::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueSSAOIntensityDataHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueSSAOIntensityDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueSSAOIntensityDataHandle>(void)::localId;
    *algn_1EB82D698 = 0x4F4D36B2531D496FLL;
    qword_1EB82D6A0 = "md::ls::UniqueSSAOIntensityDataHandle]";
    qword_1EB82D6A8 = 37;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29UniqueSSAOIntensityDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueSSAOIntensityDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29UniqueSSAOIntensityDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A414D8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41498;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A414B8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41498;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  md::MaterialResourceStore::getMaterial(&v10, **(a1 + 8), *a2);
  SSAOIntensityData = md::MaterialResourceStore::getSSAOIntensityData(**(a1 + 8), *a3);
  v6.n128_u32[0] = **(a1 + 16);
  v7 = (*(*v10 + 1224))(v6);
  v8 = *&v7;
  if ((v7 & 0x100000000) == 0)
  {
    v8 = 1.0;
  }

  *SSAOIntensityData = v8;
  v9 = v11;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2E69D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28UniqueGradientMaskDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueGradientMaskDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A415F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41610;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A415F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  md::MaterialResourceStore::getMaterial(&v18, **(a1 + 8), *a2);
  v5 = v18;
  if (!v18)
  {
    goto LABEL_25;
  }

  GradientMaskData = md::MaterialResourceStore::getGradientMaskData(**(a1 + 8), *a3);
  v7.n128_u32[0] = **(a1 + 16);
  (*(*v5 + 1040))(&v15, v5, v7);
  if (v17 == 1)
  {
    v8 = v15;
    *&v21 = *v16;
    *(&v21 + 7) = *&v16[7];
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(GradientMaskData + 12);
  if (v10 == v9)
  {
    if (*(GradientMaskData + 12))
    {
      *GradientMaskData = v8;
      *(GradientMaskData + 1) = v21;
      *(GradientMaskData + 8) = *(&v21 + 7);
      if (v9)
      {
LABEL_15:
        (*(*v5 + 816))(&v21, v5, **(a1 + 16));
        if (v22 == 1)
        {
          v11 = v21;
          v20[0] = *(&v21 + 1);
          *(v20 + 7) = *(&v21 + 1);
          v12 = 1;
        }

        else
        {
          v12 = 0;
          v11 = 0;
        }

        v13 = *(GradientMaskData + 32);
        if (v13 == v12)
        {
          if (*(GradientMaskData + 32))
          {
            *(GradientMaskData + 16) = v11;
            *(GradientMaskData + 17) = v20[0];
            *(GradientMaskData + 24) = *(v20 + 7);
          }
        }

        else
        {
          if (v13)
          {
            v14 = 0;
          }

          else
          {
            *(GradientMaskData + 16) = v11;
            *(GradientMaskData + 17) = v20[0];
            *(GradientMaskData + 24) = *(v20 + 7);
            v14 = 1;
          }

          *(GradientMaskData + 32) = v14;
        }

        goto LABEL_25;
      }
    }

    else if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      *GradientMaskData = v8;
      *(GradientMaskData + 1) = v21;
      *(GradientMaskData + 8) = *(&v21 + 7);
      *(GradientMaskData + 12) = 1;
      goto LABEL_15;
    }

    *(GradientMaskData + 12) = 0;
  }

  if (*(GradientMaskData + 32) == 1)
  {
    *(GradientMaskData + 32) = 0;
  }

LABEL_25:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }
}

void sub_1B2E6A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfNeedsDepthPeel::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&>)::$_0,std::allocator<md::ita::CheckIfNeedsDepthPeel::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A078A0;
  a2[1] = v2;
  return result;
}

void md::RasterTileData::~RasterTileData(md::RasterTileData *this)
{
  md::RasterTileData::~RasterTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A07930;
  *(this + 80) = &unk_1F2A07970;
  v2 = *(this + 92);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapTileData::~MapTileData(this);
}

void ggl::PolygonAnimatableStroke::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MeshRenderableLogic::debugConsoleString@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v133 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v109);
  memset(v119, 0, sizeof(v119));
  v120 = 1065353216;
  v100 = a1;
  v3 = a1[17];
  v4 = *(v3 + 384);
  for (i = *(v3 + 392); v4 != i; ++v4)
  {
    v6 = gdc::Context::context<md::RenderBatchManager>(*v4);
    if (v6)
    {
      v131[0] = &unk_1F2A08658;
      v131[1] = v119;
      v132 = v131;
      v7 = v6[1];
      v8 = v6[2];
      while (v7 != v8)
      {
        v121 = *v7;
        if (!v132)
        {
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_144:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        (*(*v132 + 48))(v132, &v121);
        ++v7;
      }

      std::__function::__value_func<void ()(md::RenderBatch const*)>::~__value_func[abi:nn200100](v131);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v121);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tMaterials: [\n", 14);
  v9 = v100[17];
  v10 = *(v9 + 384);
  v101 = *(v9 + 392);
  if (v10 == v101)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v10;
      v13 = gdc::Registry::storage<md::components::DynamicMeshInstance>(*v10);
      v14 = gdc::Registry::storage<md::components::Material>(v12);
      v15 = v14;
      v16 = (v14 + 32);
      if (*(v14 + 64) - *(v14 + 56) >= v13[8] - v13[7])
      {
        v17 = (v13 + 4);
      }

      else
      {
        v17 = v14 + 32;
      }

      gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(&v115, v17, (v13 + 4), v16, *(v17 + 24));
      if (v15[8] - v15[7] >= v13[8] - v13[7])
      {
        v18 = (v13 + 4);
      }

      else
      {
        v18 = v16;
      }

      gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(v129, v18, (v13 + 4), v16, *(v18 + 32));
      v19 = v130;
      v20 = v118;
      v102 = v10;
      v104 = v11;
      v21 = 0;
      if (v130 != v118)
      {
        v22 = *(v115.__locale_ + 4);
        do
        {
          ++v21;
          v23 = v20;
          while (1)
          {
            v24 = v23;
            v23 += 8;
            v118 = v23;
            if (v23 == v22)
            {
              break;
            }

            if (gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(&v115))
            {
              v20 = v24 + 8;
              goto LABEL_24;
            }
          }

          v20 = v23;
          v23 = v22;
LABEL_24:
          ;
        }

        while (v19 != v23);
      }

      v26 = v13[7];
      v25 = v13[8];
      if (v15[8] - v15[7] >= (v25 - v26))
      {
        v27 = v13 + 4;
      }

      else
      {
        v27 = v16;
      }

      v106 = v27;
      if (v13 + 4 == v27 && v26 != v25)
      {
        do
        {
          if (v15[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v16, *(v26 + 4)))
          {
            v29 = *v26;
            v30 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v15, *v26);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\t", 2);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "entity: ", 8);
            v31 = MEMORY[0x1B8C61C90](&v123, HIDWORD(v29));
            v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, ", materialSheetID: ", 19);
            v33 = MEMORY[0x1B8C61CF0](v32, *v30);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, "\n", 1);
          }

          v26 += 8;
        }

        while (v26 != v25);
      }

      if (v16 == v106)
      {
        v34 = v15[7];
        v35 = v15[8];
        if (v34 != v35)
        {
          v36 = v15[10];
          do
          {
            if (v13[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v13 + 4, *(v34 + 4)))
            {
              v37 = *v34;
              gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::getComponent<md::components::Material,md::components::DynamicMeshInstance>(v13, *v34);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\t", 2);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "entity: ", 8);
              v38 = MEMORY[0x1B8C61C90](&v123, HIDWORD(v37));
              v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, ", materialSheetID: ", 19);
              v40 = MEMORY[0x1B8C61CF0](v39, *v36);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, "\n", 1);
            }

            v36 += 3;
            v34 += 8;
          }

          while (v34 != v35);
        }
      }

      v11 = v21 + v104;
      v10 = v102 + 1;
    }

    while (v102 + 1 != v101);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t]\n", 3);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t# Entities with <DynamicMeshInstance, Material>: ", 50);
  v41 = MEMORY[0x1B8C61CB0](&v123, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, "\n", 1);
  v42 = v100 + 44;
  while (1)
  {
    v42 = *v42;
    if (!v42)
    {
      break;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tEntity idx: ", 13);
    v43 = MEMORY[0x1B8C61C90](&v123, *(v42 + 5));
    v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " version: ", 10);
    v45 = MEMORY[0x1B8C61CD0](v44, *(v42 + 9));
    v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v45, " owner: ", 8);
    v47 = MEMORY[0x1B8C61CD0](v46, *(v42 + 8));
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(&v115, MEMORY[0x1E69E5318]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&v115);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tInjectedRegistry: [\n", 21);
    if (*(v42 + 34) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\tId: ", 6);
      if ((*(v42 + 34) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v49 = MEMORY[0x1B8C61CD0](&v123, *(v42 + 16));
      v50 = "\n";
      v51 = 1;
    }

    else
    {
      v49 = &v123;
      v50 = "\t\tNone\n";
      v51 = 7;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, v50, v51);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tRenderable position: [\n", 24);
    v52 = v42[3];
    if (v52)
    {
      v54 = *(v52 + 32);
      v53 = *(v52 + 40);
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v107 = v53;
      ggl::DataAccess<ggl::DaVinci::InstanceTransform>::DataAccess(&v115, *v54, 0, (*(*v54 + 48) - *(*v54 + 40)) / *(*v54 + 8), 0);
      if (*(v54 + 16))
      {
        v55 = 0;
        v56 = 0;
        do
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\tTile local [", 14);
          v57 = MEMORY[0x1B8C61CB0](&v123, v56);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, "]: (", 4);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "x: ", 3);
          v58 = std::ostream::operator<<();
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, ", ", 2);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "y: ", 3);
          v59 = std::ostream::operator<<();
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v59, ", ", 2);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "z: ", 3);
          v60 = std::ostream::operator<<();
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v60, ")\n", 2);
          ++v56;
          v55 += 64;
        }

        while (v56 < *(v54 + 16));
      }

      ggl::BufferMemory::~BufferMemory(&v115);
      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t]\n", 3);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "DynamicRenderableInjections:[\n", 30);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](&v115, &v121);
  if ((v117 & 0x80u) == 0)
  {
    locale = &v115;
  }

  else
  {
    locale = v115.__locale_;
  }

  if ((v117 & 0x80u) == 0)
  {
    v62 = v117;
  }

  else
  {
    v62 = v116;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, locale, v62);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  if (v117 < 0)
  {
    operator delete(v115.__locale_);
  }

  v121 = *MEMORY[0x1E69E54D8];
  v105 = v121;
  v63 = *(MEMORY[0x1E69E54D8] + 72);
  v103 = *(MEMORY[0x1E69E54D8] + 64);
  *(&v121 + *(v121 - 3)) = v103;
  v108 = v63;
  v123 = v63;
  v124 = MEMORY[0x1E69E5548] + 16;
  if (v127 < 0)
  {
    operator delete(__p);
  }

  v124 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v125);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v128);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "Batches:[\n", 10);
  v115.__locale_ = 0;
  v121 = &v115;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 0, &v121)[5])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tMaterialBatches:[\n", 19);
    v129[0] = 0;
    v115.__locale_ = v129;
    v64 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 0, &v115);
    md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(&v121, v64 + 3);
    v65 = v123 >= 0 ? &v121 : v121;
    v66 = v123 >= 0 ? HIBYTE(v123) : v122;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v65, v66);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }
  }

  v115.__locale_ = 3;
  v121 = &v115;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 3uLL, &v121)[5])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tDynamicTypedRenderBatches:[\n", 29);
    v129[0] = 1;
    v115.__locale_ = v129;
    v67 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 1uLL, &v115);
    md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(&v121, v67 + 3);
    v68 = v123 >= 0 ? &v121 : v121;
    v69 = v123 >= 0 ? HIBYTE(v123) : v122;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v68, v69);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }
  }

  v115.__locale_ = 5;
  v121 = &v115;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 5uLL, &v121)[5])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tMaterialDecalRenderBatches:[\n", 30);
    v129[0] = 2;
    v115.__locale_ = v129;
    v70 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 2uLL, &v115);
    md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(&v121, v70 + 3);
    v71 = v123 >= 0 ? &v121 : v121;
    v72 = v123 >= 0 ? HIBYTE(v123) : v122;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v71, v72);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  v129[0] = 0;
  v129[1] = 0;
  for (j = v100[39]; j; j = *j)
  {
    v74 = j[3];
    v75 = j[4];
    while (v74 != v75)
    {
      v76 = *(*v74 + 8);
      if (v76 <= 3)
      {
        ++*(v129 + v76);
      }

      v74 += 8;
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "Renderables:[\n", 14);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v121);
  for (k = 0; k != 4; ++k)
  {
    v78 = *(v129 + k);
    if (v78)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t", 1);
      v79 = strlen((&off_1E7B34CC8)[gdc::ResourceSourceList[k]]);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, (&off_1E7B34CC8)[gdc::ResourceSourceList[k]], v79);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, ":", 1);
      v80 = MEMORY[0x1B8C61C90](&v123, v78);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, "\n", 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](&v115, &v121);
  v121 = v105;
  *(&v121 + *(v105 - 3)) = v103;
  v123 = v108;
  v124 = MEMORY[0x1E69E5548] + 16;
  if (v127 < 0)
  {
    operator delete(__p);
  }

  v124 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v125);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v128);
  if ((v117 & 0x80u) == 0)
  {
    v81 = &v115;
  }

  else
  {
    v81 = v115.__locale_;
  }

  if ((v117 & 0x80u) == 0)
  {
    v82 = v117;
  }

  else
  {
    v82 = v116;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v81, v82);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  if (v117 < 0)
  {
    operator delete(v115.__locale_);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "Dynamic Renderables: [\n", 23);
  for (m = v100[39]; m; m = *m)
  {
    v84 = m[3];
    v85 = m[4];
    if (v84 != v85)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      do
      {
        if (*(*v84 + 148) == 1)
        {
          v89 = (v88 - v86) >> 3;
          v90 = v89 + 1;
          if ((v89 + 1) >> 61)
          {
            goto LABEL_144;
          }

          if (-v86 >> 2 > v90)
          {
            v90 = -v86 >> 2;
          }

          if (-v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v91 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v90;
          }

          if (v91)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v91);
          }

          v92 = (8 * v89);
          v93 = (v92 - (v87 - v86));
          *v92 = *v84;
          v88 = v92 + 1;
          memcpy(v93, v86, v87 - v86);
          if (v86)
          {
            operator delete(v86);
          }

          v86 = v93;
          v87 = v88;
        }

        ++v84;
      }

      while (v84 != v85);
      if (v86 != v88)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tRegistry ", 10);
        v94 = MEMORY[0x1B8C61CD0](&v110, *(m + 8));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v94, ": [\n", 4);
        for (n = v86; n != v87; ++n)
        {
          v96 = *n;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t\tRenderable: ", 14);
          v97 = MEMORY[0x1B8C61C40](&v110, v96);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, "\n", 1);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
      }

      if (v86)
      {
        operator delete(v86);
      }
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::~__hash_table(v119);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v109);
  v109[0] = v105;
  *(v109 + *(v105 - 3)) = v103;
  v110 = v108;
  v111 = MEMORY[0x1E69E5548] + 16;
  if (v113 < 0)
  {
    operator delete(v112[7].__locale_);
  }

  v111 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v112);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v114);
}

void sub_1B2E6BAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a18 = a14;
  *(&a18 + *(a14 - 24)) = a11;
  a20 = a10;
  a21 = MEMORY[0x1E69E5548] + 16;
  if (a34 < 0)
  {
    operator delete(__p);
  }

  a21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a22);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a37);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::RenderBatch const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t a2, uint64_t **a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1B2E6C1B4(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[4]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(void *a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v15);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "\t\t(size:", 8);
      v7 = MEMORY[0x1B8C61CB0](&v16, v5[4]);
      v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ", count:", 8);
      v9 = MEMORY[0x1B8C61C90](v8, *(v5 + 10));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ")\n", 2);
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v4);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v15);
  v15[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v13;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v20);
}

void sub_1B2E6C3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a10 = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a12 = v30;
  a13 = MEMORY[0x1E69E5548] + 16;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a14);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(uint64_t a1)
{
  v1 = 0;
  v2 = *(*(a1 + 24) + 4);
  v3 = a1 + 8;
  do
  {
    v4 = *(v3 + v1);
    Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v4, v2);
    v6 = v4[4];
    v7 = v6 == Index || v1 == 8;
    v1 += 8;
  }

  while (!v7);
  return v6 != Index;
}

void *gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  v6 = *(a2 + 32);
  if (v6 != a5 && !gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(a1))
  {
    v8 = a5 + 8;
    do
    {
      a1[3] = v8;
      if (v8 == v6)
      {
        break;
      }

      v8 += 8;
    }

    while (!gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(a1));
  }

  return a1;
}

uint64_t *std::__function::__func<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0,std::allocator<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0>,void ()(md::RenderBatch const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v18[0] = &v19;
  v18[1] = &v19;
  v18[2] = &v19;
  v19 = 0;
  v3 = *(v2 + 224);
  if (v3 == -1)
  {
    v15 = std::__throw_bad_variant_access[abi:nn200100]();
    return std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v15, v16, v17);
  }

  v20 = v18;
  (off_1F2A08690[v3])(&v20, v2);
  v5 = *(a1 + 8);
  v18[0] = &v19;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v5, v19, v18)[4];
  if (!v6)
  {
LABEL_8:
    v9 = *(a1 + 8);
    v18[0] = &v19;
    v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v9, v19, v18);
    v20 = *(v2 + 264);
    v18[0] = &v20;
    result = std::__tree<std::__value_type<unsigned long,unsigned int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v10 + 3, v20, v18);
    v12 = 1;
    goto LABEL_10;
  }

  v7 = *(v2 + 264);
  while (1)
  {
    v8 = v6[4];
    if (v7 >= v8)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v8 < v7)
  {
    ++v6;
    goto LABEL_7;
  }

  v13 = *(a1 + 8);
  v18[0] = &v19;
  v14 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v13, v19, v18);
  v20 = *(v2 + 264);
  v18[0] = &v20;
  result = std::__tree<std::__value_type<unsigned long,unsigned int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v14 + 3, v20, v18);
  v12 = *(result + 10) + 1;
LABEL_10:
  *(result + 10) = v12;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2, uint64_t **a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1B2E6C9A8(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[4]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned long,unsigned int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t **a1, unint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__function::__func<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0,std::allocator<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0>,void ()(md::RenderBatch const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08658;
  a2[1] = v2;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_1B2E6CE04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<md::InstanceData>::operator()[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<md::components::CustomRenderState>::operator=[abi:nn200100]<md::components::CustomRenderState&,void>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(a1 + 24) == 1)
  {
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 8);
    *a1 = v4;
    *(a1 + 8) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v7 = a2[1];
    *a1 = v4;
    *(a1 + 8) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = 1;
  }

  return a1;
}

void *geo::Pool<md::MaterialRenderable>::construct<md::MaterialRenderable>(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (!v4)
  {
    v5 = malloc_type_malloc(400 * a1[3], 0x10E2040ACD1278FuLL);
    v22 = v5;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v5, &v22);
    v4 = a1[5];
    v6 = &v5[50 * a1[3] - 50];
    if (v6 >= v5)
    {
      do
      {
        *v6 = v4;
        v4 = v6;
        v6 -= 50;
      }

      while (v6 >= v5);
      v4 = (v6 + 50);
    }

    a1[5] = v4;
  }

  a1[5] = *v4;
  *v4 = &unk_1F2A3CEF8;
  v7 = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 8) = v7;
  v8 = *(a2 + 40);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = v10;
  *(v4 + 48) = v9;
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  *(v4 + 143) = *(a2 + 143);
  *(v4 + 112) = v12;
  *(v4 + 128) = v13;
  *(v4 + 96) = v11;
  *(v4 + 152) = 0;
  *(v4 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v14 = *(a2 + 160);
    *(v4 + 152) = *(a2 + 152);
    *(v4 + 160) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(v4 + 168) = *(a2 + 168);
    *(v4 + 176) = 1;
  }

  *(v4 + 184) = *(a2 + 184);
  *(v4 + 192) = 0;
  if (*(a2 + 193) == 1)
  {
    *(v4 + 192) = *(a2 + 192);
    *(v4 + 193) = 1;
  }

  v15 = *(a2 + 196);
  *(v4 + 212) = *(a2 + 212);
  *(v4 + 196) = v15;
  *v4 = &unk_1F2A0B978;
  v16 = *(a2 + 224);
  *(v4 + 216) = *(a2 + 216);
  *(v4 + 224) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 232);
  *(v4 + 240) = *(a2 + 240);
  *(v4 + 232) = v17;
  v18 = *(a2 + 256);
  *(v4 + 248) = *(a2 + 248);
  *(v4 + 256) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 264) = *(a2 + 264);
  v19 = *(a2 + 280);
  *(v4 + 272) = *(a2 + 272);
  *(v4 + 280) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a2 + 296);
  *(v4 + 288) = *(a2 + 288);
  *(v4 + 296) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 304) = 0;
  *(v4 + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>(v4 + 304, a2 + 304);
    *(v4 + 360) = 1;
  }

  *(v4 + 368) = *(a2 + 368);
  *(v4 + 372) = 0;
  *(v4 + 388) = 0;
  if (*(a2 + 388) == 1)
  {
    *(v4 + 372) = *(a2 + 372);
    *(v4 + 388) = 1;
  }

  *(v4 + 392) = *(a2 + 392);
  return v4;
}

void *md::MeshRenderableLogic::findRegistryToInject(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v14[0] = &unk_1F2A08258;
  v14[3] = v14;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100](&v11, v14);
  md::FilteredIterator<std::vector<gdc::Registry *>>::FilteredIterator(v15, a1 + 384, &v11, *(a1 + 384));
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v11);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v14);
  md::FilteredIterator<std::vector<gdc::Registry *>>::begin(&v11, v15);
  md::FilteredIterator<std::vector<gdc::Registry *>>::end(v9, v15);
  v4 = 0;
  v5 = 0;
  while (v9[1] != v12)
  {
    v6 = *v12;
    if (registryContainsInstance(*v12, *a2, *(a2 + 24)))
    {
      v7 = *(gdc::Context::context<md::components::SharedTransformData>(v6) + 1);
      if (v7 >= v5)
      {
        v4 = v6;
      }

      if (v7 > v5)
      {
        v5 = v7;
      }
    }

    md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(&v11);
  }

  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v10);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v13);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v16);
  return v4;
}

void sub_1B2E6D28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v17 - 72);
  _Unwind_Resume(a1);
}

void md::MeshRenderableLogic::injectDynamicRenderable(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
  if (!a3)
  {
    return;
  }

  v7 = v6;
  if (!v6)
  {
    return;
  }

  *(v6 + 16) = *(a3 + 40);
  *(v6 + 34) = 1;
  v8 = *(a3 + 40);
  v9 = *(a1 + 384);
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = *(a3 + 40);
    if (*&v9 <= v8)
    {
      v11 = v8 % *(a1 + 384);
    }
  }

  else
  {
    v11 = (v9.i32[0] - 1) & v8;
  }

  v12 = *(*(a1 + 376) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (*(v13 + 8) != v8)
  {
    goto LABEL_19;
  }

  v16 = v13[4];
  v15 = v13[5];
  if (v16 >= v15)
  {
    v18 = v13[3];
    v19 = v16 - v18;
    if ((v19 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 2;
    if (v20 >> 2 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v22);
    }

    v23 = (8 * v19);
    *v23 = a2;
    v17 = 8 * v19 + 8;
    v24 = v13[3];
    v25 = v13[4] - v24;
    v26 = v23 - v25;
    memcpy(v23 - v25, v24, v25);
    v27 = v13[3];
    v13[3] = v26;
    v13[4] = v17;
    v13[5] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v16 = a2;
    v17 = (v16 + 1);
  }

  v13[4] = v17;
  v38 = *(a3 + 40);
  v39 = &v38;
  v28 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>((a1 + 296), v38, &v39);
  v39 = v7[3];
  std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>((v28 + 3), &v39);
  v29 = *(a1 + 424);
  LOWORD(v39) = *(a3 + 40);
  std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(v29, v39, &v39);
  v30 = v28[3];
  v31 = v28[4];
  v32 = 126 - 2 * __clz(v31 - v30);
  if (v31 == v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,false>(v30, v31, v33, 1);
  v34 = *(a1 + 424);
  LOWORD(v39) = *(a3 + 40);
  std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(v34, v39, &v39);
  if (*(v7 + 38) == 1)
  {
    RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(*(a1 + 136), *(v7 + 18));
    if (RegistryByIdentifier)
    {
      v36 = v7[5];
      v37 = gdc::Registry::storage<md::components::RenderableInjected>(RegistryByIdentifier);
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v37, v36);
    }
  }
}

void md::MeshRenderableLogic::removeDynamicRenderableInjection(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  v3 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 34) == 1)
    {
      v5 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((a1 + 296), *(v3 + 16));
      if (v5)
      {
        v7 = v5[3];
        v6 = v5[4];
        if (v7 != v6)
        {
          while (*v7 != v4[3])
          {
            if (++v7 == v6)
            {
              goto LABEL_16;
            }
          }

          if (v7 != v6)
          {
            v8 = v7 + 1;
            if (v7 + 1 != v6)
            {
              do
              {
                if (*v8 != v4[3])
                {
                  *v7++ = *v8;
                }

                ++v8;
              }

              while (v8 != v6);
              v6 = v5[4];
            }
          }
        }

        if (v7 != v6)
        {
          v5[4] = v7;
        }

LABEL_16:
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(*(a1 + 424), *(v4 + 16), v4 + 16);
        if ((*(v4 + 34) & 1) == 0)
        {
          v15 = std::__throw_bad_optional_access[abi:nn200100]();
          std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1}>,void ()(unsigned long,gm::Matrix<float,4,4> &)>::destroy_deallocate(v15);
          return;
        }
      }

      v9 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((a1 + 376), *(v4 + 16));
      if (v9)
      {
        v10 = v9;
        v11 = std::remove[abi:nn200100]<std::__wrap_iter<gdc::Entity *>,gdc::Entity>(v9[3], v9[4], &v16);
        if (v11 != v10[4])
        {
          v10[4] = v11;
        }
      }
    }

    if (*(v4 + 34) == 1)
    {
      *(v4 + 34) = 0;
    }

    if (*(v4 + 38) == 1)
    {
      RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(*(a1 + 136), *(v4 + 18));
      if (RegistryByIdentifier)
      {
        v13 = gdc::Registry::storage<md::components::RenderableInjected>(RegistryByIdentifier);
        v14 = v4[5];

        gdc::ComponentStorageWrapper<md::components::RenderableInjected>::remove(v13, v14);
      }
    }
  }
}

__n128 std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1}>,void ()(unsigned long,gm::Matrix<float,4,4> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08378;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unsigned __int16 *std::remove[abi:nn200100]<std::__wrap_iter<gdc::Entity *>,gdc::Entity>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = *a3;
    result = a1;
    while (*result != v5 || result[1] != a3[1] || *(result + 1) != *(a3 + 1))
    {
      result += 4;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 4; i != a2; i += 4)
      {
        if (*i != v5 || i[1] != a3[1] || *(i + 1) != *(a3 + 1))
        {
          *result = *i;
          result += 4;
          v5 = *a3;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 8) < *(*v9 + 8))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = *(v83 + 8);
      v88 = *(*v9 + 8);
      v89 = *(v85 + 8);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = v9 + 1;
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = v9 + 2;
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = v9 + 2;
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 8) < *(v83 + 8))
      {
        *v84 = *v8;
        *v8 = v83;
        v139 = *v84;
        v140 = *v82;
        v141 = *(v139 + 8);
        if (v141 < *(v140 + 8))
        {
          v9[1] = v139;
          v9[2] = v140;
          v142 = *v9;
          if (v141 < *(*v9 + 8))
          {
            *v9 = v139;
            v9[1] = v142;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 8);
            if (v99 < *(v98 + 8))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 >= *(v98 + 8))
                {
                  v102 = (v9 + v101);
                  goto LABEL_128;
                }
              }

              v102 = v9;
LABEL_128:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v92;
          v137 = *(v135 + 8);
          if (v137 < *(v136 + 8))
          {
            v138 = v7;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < *(v136 + 8));
            *v138 = v135;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            v108 = *v107;
            if (2 * v105 + 2 < v10 && *(v108 + 8) < *(v107[1] + 8))
            {
              v108 = v107[1];
              ++v107;
              v106 = 2 * v105 + 2;
            }

            result = &v9[v105];
            v109 = *result;
            v110 = *(*result + 8);
            if (*(v108 + 8) >= v110)
            {
              do
              {
                v111 = v107;
                *result = v108;
                if (v103 < v106)
                {
                  break;
                }

                v112 = (2 * v106) | 1;
                v107 = &v9[v112];
                v113 = 2 * v106 + 2;
                v108 = *v107;
                if (v113 < v10 && *(v108 + 8) < *(v107[1] + 8))
                {
                  v108 = v107[1];
                  ++v107;
                  v112 = v113;
                }

                result = v111;
                v106 = v112;
              }

              while (*(v108 + 8) >= v110);
              *v111 = v109;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v114 = 0;
          v115 = *v9;
          v116 = v9;
          do
          {
            v117 = &v116[v114];
            v118 = v117 + 1;
            v119 = v117[1];
            v120 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 >= v10)
            {
              v114 = v120;
            }

            else
            {
              v123 = v117[2];
              v121 = v117 + 2;
              v122 = v123;
              result = *(v119 + 8);
              if (result >= *(v123 + 8))
              {
                v114 = v120;
              }

              else
              {
                v119 = v122;
                v118 = v121;
              }
            }

            *v116 = v119;
            v116 = v118;
          }

          while (v114 <= ((v10 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v115;
          }

          else
          {
            *v118 = *a2;
            *a2 = v115;
            v124 = (v118 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v118;
              v131 = *(*v118 + 8);
              if (*(*v128 + 8) < v131)
              {
                do
                {
                  v132 = v128;
                  *v118 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v118 = v132;
                }

                while (*(*v128 + 8) < v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 8);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 8);
      v18 = *(*v9 + 8);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 8) < *(*v9 + 8))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 8) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 8);
      v29 = *(v27 + 8);
      v30 = *(a2 - 2);
      v31 = *(v30 + 8);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 8) < *(v32 + 8))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 8) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 8);
      v39 = *(v37 + 8);
      v40 = *(a2 - 3);
      v41 = *(v40 + 8);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 8) < *(v42 + 8))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 8) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 8);
      v47 = *(*v25 + 8);
      v48 = *v34;
      v49 = *(*v34 + 8);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 8);
    v22 = *(*v12 + 8);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 8) < *(*v12 + 8))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 8) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 8);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 8) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 8) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 8) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 8) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 8) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 8);
      if (*(*(v9 - 1) + 8) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 8))
      {
        v67 = (v9 + 1);
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 8;
        }

        while (v52 >= *(*v9 + 8));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 8));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 8));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 8));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 8));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 8);
  v79 = *(*v9 + 8);
  v80 = *v8;
  v81 = *(*v8 + 8);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 8) < *(*v9 + 8))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 8) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}