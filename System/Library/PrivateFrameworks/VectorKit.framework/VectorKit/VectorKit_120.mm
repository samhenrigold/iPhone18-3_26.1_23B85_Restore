void sub_1B30A965C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v15)
  {
    *(v14 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *geo::Pool<md::ElevatedPolygonRenderable>::allocateSlab(uint64_t *a1)
{
  v2 = malloc_type_malloc(472 * a1[3], 0x10B204049FBAE25uLL);
  v6 = v2;
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2, &v6);
  v4 = a1[5];
  v5 = &v2[59 * a1[3] - 59];
  if (v5 >= v2)
  {
    do
    {
      *v5 = v4;
      v4 = v5;
      v5 -= 59;
    }

    while (v5 >= v2);
    v4 = (v5 + 59);
  }

  a1[5] = v4;
  return result;
}

void md::PairedMapTileDataRenderable<md::ElevatedStrokeTileData,md::DaVinciGroundTileData>::PairedMapTileDataRenderable(uint64_t a1, uint64_t *a2, char a3, char a4, void *a5, void *a6)
{
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  md::BaseMapTileDataRenderable::BaseMapTileDataRenderable(a1, v7, v8, a3, a4, a5);
}

void sub_1B30A9858(_Unwind_Exception *a1)
{
  v3 = *(v1 + 53);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(v1 + 52);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapTileDataRenderable<md::ElevatedStrokeTileData>::~MapTileDataRenderable(v1);
  _Unwind_Resume(a1);
}

void md::ElevatedPolygonRenderable::~ElevatedPolygonRenderable(md::ElevatedPolygonRenderable *this)
{
  md::PairedMapTileDataRenderable<md::ElevatedStrokeTileData,md::DaVinciGroundTileData>::~PairedMapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

void md::PairedMapTileDataRenderable<md::ElevatedStrokeTileData,md::DaVinciGroundTileData>::~PairedMapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2DAC0;
  v2 = *(this + 53);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileDataRenderable<md::ElevatedStrokeTileData>::~MapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::ElevatedStrokeTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2DAE0;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::ElevatedStrokeTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::ElevatedStrokeTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PairedMapTileDataRenderable<md::ElevatedStrokeTileData,md::DaVinciGroundTileData>::~PairedMapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::PairedMapTileDataRenderable<md::ElevatedStrokeTileData,md::DaVinciGroundTileData>::~PairedMapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::sort[abi:nn200100]<std::__wrap_iter<md::ElevatedPolygonRenderable **>,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>>(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz((a2->i64 - a1) >> 3);
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,false>(a1, a2, a3, v4, 1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
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
      result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v95, v97);
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
          v128 = *v8;
          v104 = v8;
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
              result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
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

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
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
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v115, v116);
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
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
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
      if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a5 + 24), *a3, v12))
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
    if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
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
          if (!std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
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
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)> &,md::ElevatedPolygonRenderable **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v9, v11))
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

    if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v12, v14))
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
    if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
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
      if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v26, v21))
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
    if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v23, v25))
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
    if (std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), *v27, *v19))
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
        if ((std::function<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
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

uint64_t *std::__partition_impl[abi:nn200100]<md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::legacyCollectRenderables(md::LayoutContext const&)::{lambda(md::ElevatedPolygonRenderable*)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<md::ElevatedPolygonRenderable**>,std::__wrap_iter<md::ElevatedPolygonRenderable**>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (((*(**a3 + 136))(*a3, a3[1], *v5) & 1) != 0)
    {
      ++v5;
LABEL_5:
      if (v5 == v3)
      {
        return v3;
      }
    }

    v6 = v3 - 1;
    while (v6 != v5)
    {
      v3 = v6;
      v7 = *v6--;
      if ((*(**a3 + 136))(*a3, a3[1], v7))
      {
        v8 = *v5;
        *v5++ = *v3;
        *v3 = v8;
        goto LABEL_5;
      }
    }

    return v5;
  }

  return v3;
}

void md::CartographicTiledRenderLayer<HillshadeRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B30AAC1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<HillshadeRenderable>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<HillshadeRenderable>::_determineEnteringRenderables(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (v14)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      if (!(v5 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v5);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*a1 + 208))(a1))
    {
      v6 = *(a1 + 34);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a1 + 176);
    if (v7 != a1 + 184)
    {
      v13 = v6;
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(v9 + 172);
      v16[0] = *(v9 + 168);
      v18 = *(v9 + 184);
      v19 = *(v9 + 192);
      v10 = *(v9 + 608);
      v11 = *(v9 + 616);
      v12 = md::LayoutContext::cameraType(a2);
      gdc::ToCoordinateSystem(v12);
      md::GeometryContext::transformConstantData(&v15, v14, v16, v12, v13, v10, v11);
    }
  }
}

void sub_1B30AB024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    *(v15 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

double md::CartographicTiledRenderLayer<HillshadeRenderable>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<HillshadeRenderable>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<HillshadeRenderable>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<HillshadeRenderable>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B30ABE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
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
      result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v95, v97);
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
          v128 = *v8;
          v104 = v8;
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
              result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
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

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
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
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v115, v116);
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
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
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
      if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a5 + 24), *a3, v12))
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
    if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
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
          if (!std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
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
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)> &,HillshadeRenderable **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v9, v11))
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

    if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v12, v14))
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
    if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
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
      if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v26, v21))
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
    if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v23, v25))
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
    if (std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), *v27, *v19))
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
        if ((std::function<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
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

void md::CartographicTiledRenderLayer<md::FlyoverRenderable>::_updateSubTileMaskForRenderable(uint64_t a1, int8x8_t **a2, uint64_t a3)
{
  v5 = *(a3 + 392);
  v6 = *(a3 + 400);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a3 + 56);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = md::SceneContext::subtileClipMask(*a2, v5, v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = md::SceneContext::subtileClipMask(*a2, v5, *(a3 + 56));
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v8[4] == v8[3] * v8[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

LABEL_8:
  md::BaseMapTileDataRenderable::setSubtileClipMask(a3, v9);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B30ACF2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::CartographicTiledRenderLayer<md::FlyoverRenderable>::_determineExitingRenderables(void *a1)
{
  v2 = a1[34];
  v1 = a1[35];
  if (v2 != v1)
  {
    while ((md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, *v2) & 1) != 0)
    {
      ++v2;
LABEL_4:
      if (v2 == v1)
      {
        return v1;
      }
    }

    v4 = v1 - 1;
    while (v4 != v2)
    {
      v1 = v4;
      v5 = *v4--;
      if (md::CartographicTiledRenderLayer<md::RoadTileDataRenderable>::_determineExitingRenderables(md::SceneContext const*)::{lambda(md::RoadTileDataRenderable*)#1}::operator()(a1, v5))
      {
        v6 = *v2;
        *v2++ = *v1;
        *v1 = v6;
        goto LABEL_4;
      }
    }
  }

  return v2;
}

void md::CartographicTiledRenderLayer<md::FlyoverRenderable>::_determineEnteringRenderables(uint64_t a1@<X0>, md::LayoutContext *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 192);
    if (v7)
    {
      if (!(v7 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v7);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*a1 + 208))(a1))
    {
      v8 = *(a1 + 34);
    }

    else
    {
      v8 = -1;
    }

    v9 = *(a1 + 176);
    if (v9 != a1 + 184)
    {
      v10 = v8;
      v11 = *(v9 + 32);
      v12 = *(v9 + 40);
      v22 = v11;
      v23 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *(v11 + 172);
      v18[0] = *(v11 + 168);
      v20 = *(v11 + 184);
      v21 = *(v11 + 192);
      v13 = *(v11 + 608);
      v14 = *(v11 + 616);
      v15 = md::LayoutContext::cameraType(a2);
      v17 = gdc::ToCoordinateSystem(v15);
      md::GeometryContext::transformConstantData(&v16, v6, v18, v15, v10, v13, v14);
    }
  }
}

void sub_1B30AD288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a11)
  {
    *(a12 + 8) = a11;
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

double md::CartographicTiledRenderLayer<md::FlyoverRenderable>::_updateLayerDataInfo(uint64_t a1, md::SceneContext *a2)
{
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 128), a1 + 152);
  v4 = (a1 + 136);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  while (v5 != v6)
  {
    v7 = *v5++;
    v8 = md::SceneContext::layerDataInView(a2, v7);
    std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>((a1 + 128), *v8, v8 + 1);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  *(a1 + 176) = a1 + 184;
  v9 = (a1 + 176);
  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  v10 = (a1 + 208);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  *(a1 + 200) = a1 + 208;
  v11 = (a1 + 200);
  *v10 = 0;
  v11[2] = 0;
  v12 = *(v11 - 6);
  v13 = *v9;
  v22 = *(v11 - 9);
  v20 = v12;
  v21 = v4;
  v18.n128_u64[1] = v13;
  v19 = v11 - 5;
  v18.n128_u64[0] = v9;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18);
  v14 = *(v11 - 9);
  v15 = *v11;
  v22 = *(v11 - 6);
  v20 = v14;
  v21 = v11 - 5;
  v18.n128_u64[1] = v15;
  v19 = v4;
  v18.n128_u64[0] = v11;
  *&result = std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long> &,std::insert_iterator<std::set<gdc::LayerDataWithWorld>> &>(v17, &v22, &v21, &v20, &v19, &v18).n128_u64[0];
  return result;
}

void md::CartographicTiledRenderLayer<md::FlyoverRenderable>::updateWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a3 + 8));
  v6 = *a2;
  v5 = a2[1];
  if (v6 != v5)
  {
    v7 = v4;
    v8 = v4 + 808;
    do
    {
      v9 = 0;
      v10 = *v6;
      v11 = v7[471] * v7[173] / (v7[171] * (*(*v6 + 80) - *(*v6 + 64)));
      *(*v6 + 376) = v11;
      v12 = v8;
      do
      {
        v13 = 0;
        v14 = v10 + 96;
        do
        {
          v15 = 0;
          v16 = 0.0;
          v17 = v12;
          do
          {
            v18 = *v17;
            v17 += 4;
            v16 = v16 + *(v14 + v15) * v18;
            v15 += 8;
          }

          while (v15 != 32);
          *&v26[4 * v13++ + v9] = v16;
          v14 += 32;
        }

        while (v13 != 4);
        ++v9;
        ++v12;
      }

      while (v9 != 4);
      v19 = 0;
      v20 = v26;
      do
      {
        v22 = *v20;
        v21 = v20[1];
        v20 += 2;
        v28[v19++] = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      }

      while (v19 != 4);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(v26, *(v10 + 224), 1);
      v23 = v27;
      v24 = v28[1];
      *v27 = v28[0];
      v23[1] = v24;
      v25 = v28[3];
      v23[2] = v28[2];
      v23[3] = v25;
      *(v23 + 16) = *(v10 + 376);
      ggl::BufferMemory::~BufferMemory(v26);
      ++v6;
    }

    while (v6 != v5);
  }
}

uint64_t md::CartographicTiledRenderLayer<md::FlyoverRenderable>::determineZRangeMapData(uint64_t result, md::SceneContext *this)
{
  *(result + 48) = 255;
  if (this)
  {
    v2 = result;
    v3 = *(result + 320);
    v4 = *(result + 328);
    if (v3 == v4)
    {
      goto LABEL_17;
    }

    do
    {
      result = md::SceneContext::layerDataInView(this, *v3);
      v6 = (result + 8);
      v7 = *result;
      if (*result != result + 8)
      {
        v8 = *(v2 + 48);
        v9 = *(v2 + 49);
        do
        {
          FillRect = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          Int32 = gdc::ResourceKey::getInt32(*(FillRect + 16), 2u);
          if (v8 >= Int32)
          {
            v8 = Int32;
          }

          *(v2 + 48) = v8;
          v12 = grl::IconMetricsRenderResult::getFillRect(v7[4]);
          result = gdc::ResourceKey::getInt32(*(v12 + 16), 2u);
          if (v9 <= result)
          {
            v9 = result;
          }

          *(v2 + 49) = v9;
          v13 = v7[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      ++v3;
    }

    while (v3 != v4);
    if (*(v2 + 49) < *(v2 + 48))
    {
LABEL_17:
      *(v2 + 48) = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::FlyoverRenderable>::updateVisibleMapData(void *a1, uint64_t a2)
{
  v2 = a2;
  v105 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
  (*(*a1 + 144))(a1, v4);
  if ((*(*a1 + 200))(a1))
  {
    goto LABEL_127;
  }

  v5 = md::LayoutContext::get<md::SceneContext>(*(v2 + 8));
  if (!v5)
  {
    goto LABEL_127;
  }

  v96 = v2;
  v95 = v5;
  (*(*a1 + 160))(a1);
  v6 = a1[22];
  if (v6 == a1 + 23)
  {
    goto LABEL_65;
  }

  do
  {
    FillRect = grl::IconMetricsRenderResult::getFillRect(v6[4]);
    v8 = a1[12];
    if (!*&v8)
    {
      goto LABEL_59;
    }

    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = vcnt_s8(v8);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = *(FillRect + 104);
      if (v10 >= *&v8)
      {
        v13 = v10 % *&v8;
      }
    }

    else
    {
      v13 = (*&v8 - 1) & v10;
    }

    v14 = *(a1[11] + 8 * v13);
    if (!v14)
    {
      goto LABEL_59;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v16 = *(v15 + 1);
      if (v16 == v10)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_59;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_59;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v15 + 16, v9))
    {
      goto LABEL_19;
    }

    v18 = a1[34];
    v17 = a1[35];
    if (v18 != v17)
    {
      while (*v18 != *(v15 + 16))
      {
        v18 += 8;
        if (v18 == v17)
        {
          v18 = a1[35];
          break;
        }
      }
    }

    v19 = v17 - (v18 + 8);
    if (v17 != v18 + 8)
    {
      memmove(v18, v18 + 8, v17 - (v18 + 8));
    }

    a1[35] = &v18[v19];
    v20 = *(v15 + 16);
    if (v20 && a1[30])
    {
      (**v20)(*(v15 + 16));
      *v20 = a1[33];
      a1[33] = v20;
    }

    v21 = a1[12];
    v22 = *(v15 + 1);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      if (v22 >= *&v21)
      {
        v22 %= *&v21;
      }
    }

    else
    {
      v22 &= *&v21 - 1;
    }

    v24 = a1[11];
    v25 = *(v24 + 8 * v22);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v15);
    if (v26 == (a1 + 13))
    {
      goto LABEL_47;
    }

    v27 = *(v26 + 1);
    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= *&v21)
      {
        v27 %= *&v21;
      }
    }

    else
    {
      v27 &= *&v21 - 1;
    }

    if (v27 != v22)
    {
LABEL_47:
      if (!*v15)
      {
        goto LABEL_48;
      }

      v28 = *(*v15 + 8);
      if (v23.u32[0] > 1uLL)
      {
        if (v28 >= *&v21)
        {
          v28 %= *&v21;
        }
      }

      else
      {
        v28 &= *&v21 - 1;
      }

      if (v28 != v22)
      {
LABEL_48:
        *(v24 + 8 * v22) = 0;
      }
    }

    v29 = *v15;
    if (*v15)
    {
      v30 = *(v29 + 1);
      if (v23.u32[0] > 1uLL)
      {
        if (v30 >= *&v21)
        {
          v30 %= *&v21;
        }
      }

      else
      {
        v30 &= *&v21 - 1;
      }

      if (v30 != v22)
      {
        *(a1[11] + 8 * v30) = v26;
        v29 = *v15;
      }
    }

    *v26 = v29;
    *v15 = 0;
    --a1[14];
    v31 = *(v15 + 4);
    if (v31 != *(v15 + 6))
    {
      free(v31);
    }

    operator delete(v15);
LABEL_59:
    v32 = v6[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v6[2];
        v34 = *v33 == v6;
        v6 = v33;
      }

      while (!v34);
    }

    v6 = v33;
  }

  while (v33 != a1 + 23);
LABEL_65:
  v2 = v96;
  (*(*a1 + 168))(&__p, a1, v96);
  v35 = __p;
  v36 = v102 - __p;
  v37 = (v102 - __p) >> 3;
  if (v37 < 1)
  {
    goto LABEL_82;
  }

  v39 = a1[35];
  v38 = a1[36];
  if (v38 - v39 < v36)
  {
    v40 = a1[34];
    v41 = v37 + (&v39[-v40] >> 3);
    if (!(v41 >> 61))
    {
      v42 = v38 - v40;
      v43 = (v38 - v40) >> 2;
      if (v43 > v41)
      {
        v41 = v43;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v41;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v44);
      }

      v45 = 8 * (&v39[-v40] >> 3);
      v46 = (v45 + v36);
      v47 = v45;
      do
      {
        v48 = *v35++;
        *v47++ = v48;
        v36 -= 8;
      }

      while (v36);
      memcpy(v46, v39, a1[35] - v39);
      v49 = a1[34];
      v50 = &v46[a1[35] - v39];
      a1[35] = v39;
      v51 = v39 - v49;
      v52 = (v45 - (v39 - v49));
      memcpy(v52, v49, v51);
      v53 = a1[34];
      a1[34] = v52;
      a1[35] = v50;
      a1[36] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      goto LABEL_82;
    }

LABEL_136:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (__p != v102)
  {
    memmove(a1[35], __p, v102 - __p);
  }

  a1[35] = &v39[v36];
LABEL_82:
  if (*(a1 + 86) == 2)
  {
    v54 = a1[34];
    v55 = a1[35];
    while (v54 != v55)
    {
      (*(*a1 + 184))(a1, v95, *v54++);
    }
  }

  v56 = (*(*a1 + 176))(a1, v95);
  v57 = v56;
  v58 = a1[35];
  v99 = v56;
  v100 = v58;
  if (*(a1 + 13) == 1)
  {
    v98[0] = __p;
    v98[1] = v102;
    v59 = a1[34];
    if (v56 != v59)
    {
      while (((*(*a1 + 136))(a1, v96, *v59) & 1) != 0)
      {
        v59 += 8;
LABEL_102:
        if (v59 == v57)
        {
          goto LABEL_89;
        }
      }

      v69 = v57 - 8;
      while (v69 != v59)
      {
        v57 = v69;
        v70 = (*(*a1 + 136))(a1, v96, *v69);
        v69 = v57 - 8;
        if (v70)
        {
          v71 = *v59;
          *v59 = *v57;
          v59 += 8;
          *v57 = v71;
          goto LABEL_102;
        }
      }
    }

    v57 = v59;
LABEL_89:
    v97[0] = a1[34];
    v97[1] = v57;
    (*(*a1 + 120))(a1, &v99);
    (*(*a1 + 112))(a1, v96, v98);
    (*(*a1 + 128))(a1, v96, v97);
    v57 = (*(*a1 + 176))(a1, v95);
    v58 = a1[35];
    v99 = v57;
    v100 = v58;
  }

  v60 = v58 - v57;
  v61 = (v58 - v57) >> 3;
  if (v61 >= 1)
  {
    v63 = a1[38];
    v62 = a1[39];
    if (v62 - v63 >= v60)
    {
      while (v57 != v58)
      {
        v72 = *v57;
        v57 += 8;
        *v63++ = v72;
      }

      a1[38] = v63;
    }

    else
    {
      v64 = a1[37];
      v65 = v61 + ((v63 - v64) >> 3);
      if (v65 >> 61)
      {
        goto LABEL_136;
      }

      v66 = v62 - v64;
      v67 = (v62 - v64) >> 2;
      if (v67 > v65)
      {
        v65 = v67;
      }

      if (v66 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v65;
      }

      if (v68)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v68);
      }

      v73 = 8 * ((v63 - v64) >> 3);
      v74 = (v73 + v60);
      v75 = v73;
      do
      {
        v76 = *v57;
        v57 += 8;
        *v75++ = v76;
        v60 -= 8;
      }

      while (v60);
      memcpy(v74, v63, a1[38] - v63);
      v77 = a1[37];
      v78 = &v74[a1[38] - v63];
      a1[38] = v63;
      v79 = v63 - v77;
      v80 = (v73 - (v63 - v77));
      memcpy(v80, v77, v79);
      v81 = a1[37];
      a1[37] = v80;
      a1[38] = v78;
      a1[39] = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }
  }

  v82 = v99;
  if (v99 != v100)
  {
    v83 = a1[35];
    v84 = v83 - v100;
    if (v83 != v100)
    {
      memmove(v99, v100, v83 - v100);
    }

    a1[35] = &v82[v84];
  }

  v85 = a1[37];
  v86 = a1[38];
  if (v86 != v85)
  {
    do
    {
      v87 = *v85;
      if (*v85 && a1[30])
      {
        (**v87)(*v85);
        *v87 = a1[33];
        a1[33] = v87;
      }

      ++v85;
    }

    while (v85 != v86);
    v85 = a1[37];
  }

  a1[38] = v85;
  (*(*a1 + 192))(a1);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

LABEL_127:
  v88 = (*(*a1 + 96))(a1, v2);
  v89 = a1[10];
  if (v89)
  {
    v90 = *v88;
    v91 = v88[1];
    if (v89 == a1 + 7)
    {
      v104 = v103;
      (*(*v89 + 24))(v89, v103);
    }

    else
    {
      v104 = (*(*v89 + 16))(v89);
    }

    v92 = 126 - 2 * __clz((v91->i64 - v90) >> 3);
    if (v91 == v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = v92;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,false>(v90, v91, v103, v93, 1);
    std::__function::__value_func<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::~__value_func[abi:nn200100](v103);
  }

  return (*(*a1 + 152))(a1, v88, v2);
}

void sub_1B30AE0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v125 = a2;
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
      result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (result)
      {
        v79 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = &v10->u64[1];
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i64[0];
            v87 = v86->i64[1];
            v86 = v82;
            result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v87, v88);
            if (result)
            {
              v89 = v86->i64[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i64[1] + v90) = *(v10->i64 + v90);
                if (!v90)
                {
                  break;
                }

                result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v89, *(&v10->i64[-1] + v90));
                v90 -= 8;
                if ((result & 1) == 0)
                {
                  v91 = (&v10->i64[1] + v90);
                  goto LABEL_125;
                }
              }

              v91 = v10;
LABEL_125:
              *v91 = v89;
            }

            v82 = &v86->u64[1];
            v85 += 8;
          }

          while (&v86->u64[1] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v8;
          v119 = *(v8 + 8);
          v8 = v82;
          result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v119, v120);
          if (result)
          {
            v121 = *v8;
            v122 = v8;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v127 = v92;
        do
        {
          v93 = v92;
          if (v127 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v8 + 8 * v94);
            if (2 * v92 + 2 < v11 && std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v8 + 8 * v93);
            result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v127 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v8 + 8 * v99);
                v100 = 2 * v94 + 2;
                if (v100 < v11 && std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v95, v97);
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
          v128 = *v8;
          v104 = v8;
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
              result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v109 - 1), v110);
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

          while (v103 <= (v11 - 2) / 2);
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v128;
          }

          else
          {
            *v106 = *v101;
            *v101 = v128;
            v111 = (v106 - v8 + 8) >> 3;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v8 + 8 * (v113 >> 1));
              result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v115, *v106);
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
                  v115 = (v8 + 8 * v114);
                  result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v115, v116);
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
    v13 = *(a3 + 24);
    if (v11 < 0x81)
    {
      v17 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(v13, v10->i64[0], v10->i64[v12]);
      v18 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v19))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(v13, v10->i64[v12], v10->i64[0]);
    v15 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v16))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 - 1)), *(v8 + 8));
    v27 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], *(v8 + 8 * (v12 - 1)));
    if (v26)
    {
      v28 = *(v8 + 8);
      if (v27)
      {
        *(v8 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v28;
        if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), a2[-1].i64[0], v28))
        {
          v32 = *(v8 + 8 * v25);
          *(v8 + 8 * v25) = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v25), *(v8 + 8)))
      {
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 8 * v25);
        *(v8 + 8 * v25) = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * (v12 + 1)), *(v8 + 16));
    v36 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v33[-2].i64[1], *(v8 + 8 * (v12 + 1)));
    if (v35)
    {
      v37 = *(v8 + 16);
      if (v36)
      {
        *(v8 + 16) = v125[-2].i64[1];
        v125[-2].i64[1] = v37;
      }

      else
      {
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v37;
        if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v125[-2].i64[1], v37))
        {
          v40 = *(v8 + 8 * v34);
          *(v8 + 8 * v34) = v125[-2].i64[1];
          v125[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v125[-2].i64[1];
      v125[-2].i64[1] = v38;
      if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 16)))
      {
        v39 = *(v8 + 16);
        *(v8 + 16) = *(v8 + 8 * v34);
        *(v8 + 8 * v34) = v39;
      }
    }

    v41 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v12), *(v8 + 8 * v25));
    v42 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), *(v8 + 8 * v12));
    if ((v41 & 1) == 0)
    {
      v44 = *(v8 + 8 * v12);
      if (!v42)
      {
        goto LABEL_54;
      }

      v45 = *(v8 + 8 * v34);
      *(v8 + 8 * v12) = v45;
      *(v8 + 8 * v34) = v44;
      v46 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v45, *(v8 + 8 * v25));
      v44 = *(v8 + 8 * v12);
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = *(v8 + 8 * v25);
      *(v8 + 8 * v25) = v44;
      *(v8 + 8 * v12) = v47;
      goto LABEL_53;
    }

    v43 = *(v8 + 8 * v25);
    if (v42)
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v34);
      *(v8 + 8 * v34) = v43;
      v44 = *(v8 + 8 * v12);
    }

    else
    {
      *(v8 + 8 * v25) = *(v8 + 8 * v12);
      *(v8 + 8 * v12) = v43;
      v48 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 + 8 * v34), v43);
      v44 = *(v8 + 8 * v12);
      if (v48)
      {
        v47 = *(v8 + 8 * v34);
        *(v8 + 8 * v12) = v47;
        *(v8 + 8 * v34) = v44;
LABEL_53:
        v44 = v47;
      }
    }

LABEL_54:
    a2 = v125;
    v49 = *v8;
    *v8 = v44;
    *(v8 + 8 * v12) = v49;
LABEL_55:
    --a4;
    v50 = *v8;
    if (a5 & 1) != 0 || (v51 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(v8 - 8), *v8), v50 = *v8, (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while ((std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while ((std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = v55[-1].i64[1];
          v55 = (v55 - 8);
        }

        while (!std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while ((std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        *v8 = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v125;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **>(v8, v53->i64, a3);
      v10 = &v53->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **>(&v53->i64[1], v125->i64, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,false>(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v8, *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v8 + 8;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 8;
          result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        *v8 = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,0>(v10->i64, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i64[0];
      v73 = v10[1].i64[1];
      v75 = v10->i64[1];
      v10[1].i64[0] = v73;
      v10[1].i64[1] = v74;
      result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i64[1];
      v76 = v10[1].i64[0];
      v78 = v10->i64[0];
      v10->i64[1] = v76;
      v10[1].i64[0] = v77;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v80 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v10->i64[1], v10->i64[0]);
  result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v10->i64[1]);
  if ((v80 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v118;
    v78 = v10->i64[0];
    v76 = v10->i64[1];
LABEL_164:
    result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v76, v78);
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v81 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v81;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v81;
    result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v9, v81);
    if (result)
    {
      v79 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v10, &v9);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,0>(v4, v5, v6, v7, v8);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
  v11 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
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
      if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a5 + 24), *a3, v12))
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
    if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a5 + 24), *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a5 + 24), *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a5 + 24), *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a5 + 24), *a2, *a1);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
        v16 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 8));
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
          if (!std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), v17))
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
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)> &,md::FlyoverRenderable **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a3);
        if (!std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v8 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v11 = *(a1 + 8);
        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        if (!std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v9, v11))
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

    if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v12, v14))
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
    if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a1 + 8), *a1);
  v19 = (a1 + 16);
  v20 = std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *(a1 + 16), *(a1 + 8));
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
      if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v26, v21))
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
    if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v23, v25))
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
    if (std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), *v27, *v19))
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
        if ((std::function<BOOL ()(md::FlyoverRenderable *,md::FlyoverRenderable *)>::operator()(*(a3 + 24), v30, *(v32 + 8)) & 1) == 0)
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

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::clear(uint64_t result)
{
  if (*(result + 40))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__deallocate_node(*(result + 24));
    *(result + 24) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 40) = 0;
  }
}

void md::FontTrackingCache::generateFontScales(CTFontRef font, CGFloat *a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  glyphs = 0;
  if (*a2 == 0.0)
  {
    CTFontGetAdvancesForGlyphs(font, kCTFontOrientationDefault, &glyphs, &advances, 1);
    CTFontTransformGlyphs();
    *a2 = advances.width;
  }

  if (a3 <= a4)
  {
    v8 = a3;
    v9 = a4 - a3 + 1;
    do
    {
      v10 = a2 + v8 + 8;
      v11 = atomic_load(v10);
      if ((v11 & 1) == 0)
      {
        CopyWithAttributes = CTFontCreateCopyWithAttributes(font, v8, 0, 0);
        CTFontGetAdvancesForGlyphs(CopyWithAttributes, kCTFontOrientationDefault, &glyphs, &advances, 1);
        CTFontTransformGlyphs();
        CTFontRemoveFromCaches();
        CFRelease(CopyWithAttributes);
        v13 = advances.width / *a2;
        *(a2 + v8 + 9) = v13;
        atomic_store(1u, v10);
      }

      ++v8;
      --v9;
    }

    while (v9);
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t a2, __int128 **a3)
{
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v8, v9);
  v11 = v10;
  v12 = *(a1 + 1);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v12)
      {
        v3 = v10 % v12;
      }
    }

    else
    {
      v3 = (v12 - 1) & v10;
    }

    v15 = *(*a1 + 8 * v3);
    if (v15)
    {
      for (i = *v15; i; i = *i)
      {
        v17 = i[1];
        if (v17 == v11)
        {
          v10 = std::equal_to<std::string>::operator()[abi:nn200100](i + 2, a2);
          if (v10)
          {
            return i;
          }
        }

        else
        {
          if (v14 > 1)
          {
            if (v17 >= v12)
            {
              v17 %= v12;
            }
          }

          else
          {
            v17 &= v12 - 1;
          }

          if (v17 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v18 = mdm::zone_mallocator::instance(v10);
  v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>>(v18);
  i = v19;
  *v19 = 0;
  *(v19 + 1) = v11;
  v20 = *a3;
  if (*(*a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v19 + 16), *v20, *(v20 + 1));
  }

  else
  {
    v21 = *v20;
    *(v19 + 4) = *(v20 + 2);
    *(v19 + 1) = v21;
  }

  i[5] = 0;
  v22 = (*(a1 + 5) + 1);
  v23 = a1[12];
  if (!v12 || (v23 * v12) < v22)
  {
    v24 = 1;
    if (v12 >= 3)
    {
      v24 = (v12 & (v12 - 1)) != 0;
    }

    v25 = v24 | (2 * v12);
    v26 = vcvtps_u32_f32(v22 / v23);
    if (v25 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__rehash<true>(a1, v27);
    v12 = *(a1 + 1);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v3 = v11 % v12;
      }

      else
      {
        v3 = v11;
      }
    }

    else
    {
      v3 = (v12 - 1) & v11;
    }
  }

  v28 = *a1;
  v29 = *(*a1 + 8 * v3);
  if (v29)
  {
    *i = *v29;
LABEL_47:
    *v29 = i;
    goto LABEL_48;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v28 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v30 = *(*i + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v30 >= v12)
      {
        v30 %= v12;
      }
    }

    else
    {
      v30 &= v12 - 1;
    }

    v29 = (*a1 + 8 * v30);
    goto LABEL_47;
  }

LABEL_48:
  ++*(a1 + 5);
  return i;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return;
    }

    result = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v13 = vcnt_s8(v4), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v14 = (1 << -__clz(result - 1));
      if (result >= 2)
      {
        result = v14;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return;
    }

    if (!v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(result);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 8 * v3, 0x2004093837F09uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> **,0>(v2, v8);
  v9 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v9++) = 0;
  }

  while (v3 != v9);
  v10 = *(v2 + 3);
  if (v10)
  {
    v11 = v10[1];
    v12 = vcnt_s8(v3);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= v3)
      {
        v11 %= v3;
      }
    }

    else
    {
      v11 &= v3 - 1;
    }

    *(*v2 + 8 * v11) = v2 + 24;
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v16 = v15[1];
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= v3)
          {
            v16 %= v3;
          }
        }

        else
        {
          v16 &= v3 - 1;
        }

        if (v16 != v11)
        {
          v17 = *v2;
          if (!*(*v2 + 8 * v16))
          {
            *(v17 + 8 * v16) = v10;
            goto LABEL_30;
          }

          *v10 = *v15;
          *v15 = **(v17 + 8 * v16);
          **(v17 + 8 * v16) = v15;
          v15 = v10;
        }

        v16 = v11;
LABEL_30:
        v10 = v15;
        v15 = *v15;
        v11 = v16;
      }

      while (v15);
    }
  }
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    std::allocator_traits<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>,mdm::zone_mallocator>>::destroy[abi:nn200100]<std::pair<std::string const,std::unique_ptr<md::FontTrackingScaleInfo>>,void,0>(a2 + 16);
  }

  if (a2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>>(v3, a2);
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x30uLL, 0x103204080936F94uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void std::unordered_map<std::string,std::unique_ptr<md::FontTrackingScaleInfo>,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::insert_or_assign[abi:nn200100]<std::unique_ptr<md::FontTrackingScaleInfo>>(float *a1, __int128 *a2, uint64_t *a3)
{
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v8, v9);
  v11 = v10;
  v12 = *(a1 + 1);
  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v3 = v10;
    if (v10 >= v12)
    {
      v3 = v10 % v12;
    }
  }

  else
  {
    v3 = (v12 - 1) & v10;
  }

  v15 = *(*a1 + 8 * v3);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_24:
    v18 = mdm::zone_mallocator::instance(v10);
    v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,void *>>(v18);
    v20 = v19;
    *v19 = 0;
    *(v19 + 1) = v11;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v19 + 16), *a2, *(a2 + 1));
    }

    else
    {
      v21 = *a2;
      *(v19 + 4) = *(a2 + 2);
      *(v19 + 1) = v21;
    }

    v22 = *a3;
    *a3 = 0;
    v20[5] = v22;
    v23 = (*(a1 + 5) + 1);
    v24 = a1[12];
    if (!v12 || (v24 * v12) < v23)
    {
      v25 = 1;
      if (v12 >= 3)
      {
        v25 = (v12 & (v12 - 1)) != 0;
      }

      v26 = v25 | (2 * v12);
      v27 = vcvtps_u32_f32(v23 / v24);
      if (v26 <= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::__rehash<true>(a1, v28);
      v12 = *(a1 + 1);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v11 >= v12)
        {
          v3 = v11 % v12;
        }

        else
        {
          v3 = v11;
        }
      }

      else
      {
        v3 = (v12 - 1) & v11;
      }
    }

    v29 = *a1;
    v30 = *(*a1 + 8 * v3);
    if (v30)
    {
      *v20 = *v30;
    }

    else
    {
      *v20 = *(a1 + 3);
      *(a1 + 3) = v20;
      *(v29 + 8 * v3) = a1 + 6;
      if (!*v20)
      {
LABEL_48:
        ++*(a1 + 5);
        return;
      }

      v31 = *(*v20 + 8);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v31 >= v12)
        {
          v31 %= v12;
        }
      }

      else
      {
        v31 &= v12 - 1;
      }

      v30 = (*a1 + 8 * v31);
    }

    *v30 = v20;
    goto LABEL_48;
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v17 >= v12)
      {
        v17 %= v12;
      }
    }

    else
    {
      v17 &= v12 - 1;
    }

    if (v17 != v3)
    {
      goto LABEL_24;
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  v10 = std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v32 = *a3;
  *a3 = 0;
  v33 = v16[5];
  v16[5] = v32;
  if (v33)
  {

    JUMPOUT(0x1B8C62190);
  }
}

void md::LabelTileCollisionInfo::simplifyPaths(md::LabelTileCollisionInfo *this, double a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = *(this + 12);
  v4 = *(this + 13);
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v6 = v4 - v5;
  if (v4 != v5)
  {
    std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__vallocate[abi:nn200100](&v54, v6 >> 3);
    v7 = v55;
    bzero(v55, v6 >> 1);
    v55 = &v7[v6 >> 1];
  }

  v8 = *(this + 24);
  v9 = *(this + 25);
  if (v8 == v9)
  {
    v20 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v54;
    do
    {
      v13 = *v8;
      v12 = v8[1];
      v14 = &v11[4 * v10];
      if (v12 > 2)
      {
        v16 = *(this + 12) + 8 * v13;
        LODWORD(v53[0]) = 1;
        *v14 = 0;
        v17 = v12 - 1;
        geo::dpSimplifyViaIndexes<gm::Matrix<float,2,1>,unsigned int>(v16, 0, v12 - 1, v14, v53, a2);
        v18 = LODWORD(v53[0]);
        ++LODWORD(v53[0]);
        v14[v18] = v17;
        v11 = v54;
        LODWORD(v12) = v53[0];
      }

      else if (v12)
      {
        v15 = vmovn_s64(vcgeq_u64(vdupq_n_s64(v12 - 1), xmmword_1B33B0560));
        if (v15.i8[0])
        {
          *v14 = 0;
        }

        if (v15.i8[4])
        {
          v14[1] = 1;
        }
      }

      v19 = 4 * v10;
      v20 = v12 + v10;
      if (v19 != 4 * v20)
      {
        v21 = &v11[v19];
        do
        {
          *v21++ += v13;
        }

        while (v21 != &v11[4 * v20]);
      }

      *v8 = v10;
      v8[1] = v12;
      v8 += 2;
      v10 += v12;
    }

    while (v8 != v9);
  }

  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::resize(&v54, v20);
  v23 = (v55 - v54) >> 2;
  v24 = *(this + 20);
  v25 = *(this + 21);
  v26 = v25 - v24;
  v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3);
  v28 = v23 - v27;
  if (v23 <= v27)
  {
    if (v23 >= v27)
    {
      goto LABEL_35;
    }

    v42 = v24 + 24 * v23;
    goto LABEL_34;
  }

  v29 = *(this + 22);
  if (0xAAAAAAAAAAAAAAABLL * ((v29 - v25) >> 3) >= v28)
  {
    bzero(*(this + 21), 24 * ((24 * v28 - 24) / 0x18) + 24);
    v42 = v25 + 24 * ((24 * v28 - 24) / 0x18) + 24;
LABEL_34:
    *(this + 21) = v42;
    goto LABEL_35;
  }

  if (v23 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v30 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v24) >> 3);
  if (2 * v30 > v23)
  {
    v23 = 2 * v30;
  }

  if (v30 >= 0x555555555555555)
  {
    v31 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v31 = v23;
  }

  v53[4] = this + 184;
  v32 = mdm::zone_mallocator::instance(v22);
  v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::Mercator3<double>>(v32, v31);
  v34 = &v33[v26];
  v35 = &v33[24 * v31];
  bzero(v34, 24 * ((24 * v28 - 24) / 0x18) + 24);
  v36 = *(this + 20);
  v37 = *(this + 21);
  v38 = &v34[v36 - v37];
  if (v37 != v36)
  {
    v39 = &v34[v36 - v37];
    do
    {
      v40 = *v36;
      *(v39 + 2) = *(v36 + 2);
      *v39 = v40;
      v39 += 24;
      v36 = (v36 + 24);
    }

    while (v36 != v37);
    v36 = *(this + 20);
  }

  *(this + 20) = v38;
  *(this + 21) = &v34[24 * ((24 * v28 - 24) / 0x18) + 24];
  v41 = *(this + 22);
  *(this + 22) = v35;
  v53[2] = v36;
  v53[3] = v41;
  v53[0] = v36;
  v53[1] = v36;
  std::__split_buffer<geo::Mercator3<double>,geo::allocator_adapter<geo::Mercator3<double>,mdm::zone_mallocator> &>::~__split_buffer(v53);
LABEL_35:
  v43 = v54;
  v44 = *(this + 12);
  if (v55 == v54)
  {
    v45 = *(this + 16);
  }

  else
  {
    v45 = *(this + 16);
    if (((v55 - v54) >> 2) <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = (v55 - v54) >> 2;
    }

    v47 = (*(this + 20) + 16);
    do
    {
      v48 = *v43++;
      v49 = vcvtq_f64_f32(*(v44 + 8 * v48));
      v50 = gm::Box<double,2>::lerped(this + 4, v49, v49.f64[1]);
      v51 = *(v45 + 4 * v48);
      *(v47 - 2) = v50;
      *(v47 - 1) = v52;
      *v47 = v51;
      v47 += 3;
      --v46;
    }

    while (v46);
  }

  *(this + 13) = v44;
  *(this + 17) = v45;
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v54);
}

mdm::zone_mallocator *md::LabelTileCollisionInfo::addPath(mdm::zone_mallocator *result, uint64_t *a2, int *a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 12);
  v9 = *(result + 13);
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 3;
  v12 = *(result + 25);
  v13 = *(result + 26);
  if (v12 >= v13)
  {
    v15 = *(result + 24);
    v16 = v12 - v15;
    v17 = (v12 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((v13 - v15) >> 2 > v18)
    {
      v18 = (v13 - v15) >> 2;
    }

    if (v13 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    v106 = result + 216;
    if (v19)
    {
      v20 = mdm::zone_mallocator::instance(result);
      v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelCollisionPath>(v20, v19);
      v15 = *(v7 + 24);
      v16 = *(v7 + 25) - v15;
      v22 = v16 >> 3;
    }

    else
    {
      v21 = 0;
      v22 = (v12 - v15) >> 3;
    }

    v23 = &v21[8 * v17];
    v24 = &v21[8 * v19];
    *v23 = v11;
    *(v23 + 1) = a4;
    v14 = v23 + 8;
    v25 = &v23[-8 * v22];
    memcpy(v25, v15, v16);
    v26 = *(v7 + 24);
    *(v7 + 24) = v25;
    *(v7 + 25) = v14;
    v27 = *(v7 + 26);
    *(v7 + 26) = v24;
    v104 = v26;
    v105 = v27;
    v102 = v26;
    v103 = v26;
    result = std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(&v102);
    v8 = *(v7 + 12);
    v9 = *(v7 + 13);
    v10 = v9 - v8;
  }

  else
  {
    *v12 = v11;
    *(v12 + 1) = a4;
    v14 = v12 + 8;
  }

  *(v7 + 25) = v14;
  if (a4)
  {
    v28 = a4;
    v29 = (v8 + v10);
    v30 = *(v7 + 14);
    if (a4 <= (v30 - v9) >> 3)
    {
      v38 = v9;
      if (8 * a4)
      {
        v39 = 8 * a4;
        v40 = a2;
        v38 = v9;
        do
        {
          v41 = *v40++;
          *v38++ = v41;
          v39 -= 8;
        }

        while (v39);
      }

      *(v7 + 13) = v38;
    }

    else
    {
      v31 = a4 + ((v9 - v8) >> 3);
      if (v31 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v32 = v30 - v8;
      v33 = v32 >> 2;
      if (v32 >> 2 <= v31)
      {
        v33 = v31;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        v34 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v33;
      }

      v35 = v10 >> 3;
      v106 = v7 + 120;
      if (v34)
      {
        v36 = mdm::zone_mallocator::instance(result);
        v37 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,2,1>>(v36, v34);
      }

      else
      {
        v37 = 0;
      }

      v42 = &v37[8 * v35];
      v102 = v37;
      v103 = v42;
      v105 = &v37[8 * v34];
      v43 = 8 * v28;
      v44 = &v42[8 * v28];
      do
      {
        v45 = *a2++;
        *v42 = v45;
        v42 += 8;
        v43 -= 8;
      }

      while (v43);
      v104 = v44;
      v46 = *(v7 + 13);
      if (v46 == v29)
      {
        v50 = v103;
        v49 = v9;
      }

      else
      {
        v47 = v29;
        do
        {
          v48 = *v47;
          v47 += 8;
          *v44 = v48;
          v44 += 8;
        }

        while (v47 != v46);
        v49 = *(v7 + 13);
        v50 = v103;
        v44 = v104;
      }

      v51 = &v44[v49 - v9];
      v104 = v51;
      *(v7 + 13) = v29;
      v52 = *(v7 + 12);
      v53 = (v50 + v52 - v9);
      if (v52 != v29)
      {
        v54 = v53;
        do
        {
          v55 = *v52;
          v52 += 8;
          *v54++ = v55;
        }

        while (v52 != v29);
        v52 = *(v7 + 12);
        v51 = v104;
      }

      *(v7 + 12) = v53;
      *(v7 + 13) = v51;
      v56 = *(v7 + 14);
      *(v7 + 14) = v105;
      v104 = v52;
      v105 = v56;
      v102 = v52;
      v103 = v52;
      result = std::__split_buffer<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator> &>::~__split_buffer(&v102);
    }

    v57 = *(v7 + 17);
    if (a3)
    {
      v58 = 4 * v28;
      v59 = *(v7 + 18);
      if (v28 > (v59 - v57) >> 2)
      {
        v60 = *(v7 + 16);
        v61 = v28 + ((v57 - v60) >> 2);
        if (!(v61 >> 62))
        {
          v62 = (v57 - v60) >> 2;
          v63 = v59 - v60;
          if (v63 >> 1 > v61)
          {
            v61 = v63 >> 1;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v64 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v61;
          }

          v106 = v7 + 152;
          if (v64)
          {
            v65 = mdm::zone_mallocator::instance(result);
            v66 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v65, v64);
          }

          else
          {
            v66 = 0;
          }

          v83 = &v66[4 * v62];
          v84 = &v83[4 * v28];
          v85 = v83;
          do
          {
            v86 = *a3++;
            *v85 = v86;
            v85 += 4;
            v58 -= 4;
          }

          while (v58);
          v87 = &v66[4 * v64];
          memcpy(v84, v57, *(v7 + 17) - v57);
          v88 = *(v7 + 16);
          v89 = &v84[*(v7 + 17) - v57];
          *(v7 + 17) = v57;
          v90 = v57 - v88;
          v91 = &v83[-(v57 - v88)];
LABEL_84:
          memcpy(v91, v88, v90);
          v100 = *(v7 + 16);
          *(v7 + 16) = v91;
          *(v7 + 17) = v89;
          v101 = *(v7 + 18);
          *(v7 + 18) = v87;
          v104 = v100;
          v105 = v101;
          v102 = v100;
          v103 = v100;
          return std::__split_buffer<float,geo::allocator_adapter<float,mdm::zone_mallocator> &>::~__split_buffer(&v102);
        }

        goto LABEL_88;
      }

      do
      {
        v67 = *a3++;
        *v57++ = v67;
        v58 -= 4;
      }

      while (v58);
      *(v7 + 17) = v57;
    }

    else
    {
      v68 = *(v7 + 18);
      if (v28 > (v68 - v57) >> 2)
      {
        v69 = *(v7 + 16);
        v70 = v28 + ((v57 - v69) >> 2);
        if (!(v70 >> 62))
        {
          v71 = (v57 - v69) >> 2;
          v72 = v68 - v69;
          if (v72 >> 1 > v70)
          {
            v70 = v72 >> 1;
          }

          if (v72 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v73 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v73 = v70;
          }

          v106 = v7 + 152;
          if (v73)
          {
            v74 = mdm::zone_mallocator::instance(result);
            v75 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v74, v73);
          }

          else
          {
            v75 = 0;
          }

          v92 = 0;
          v93 = &v75[4 * v71];
          v87 = &v75[4 * v73];
          v94 = (v28 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
          v95 = vdupq_n_s64(v94);
          v96 = v94 - ((v28 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
          v97 = v93 + 8;
          do
          {
            v98 = vdupq_n_s64(v92);
            v99 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v98, xmmword_1B33B0560)));
            if (vuzp1_s16(v99, *v95.i8).u8[0])
            {
              *(v97 - 2) = 0;
            }

            if (vuzp1_s16(v99, *&v95).i8[2])
            {
              *(v97 - 1) = 0;
            }

            if (vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v98, xmmword_1B33B0550)))).i32[1])
            {
              *v97 = 0;
              v97[1] = 0;
            }

            v92 += 4;
            v97 += 4;
          }

          while (v96 != v92);
          memcpy(&v93[4 * v28], v57, *(v7 + 17) - v57);
          v88 = *(v7 + 16);
          v89 = &v93[4 * v28 + *(v7 + 17) - v57];
          *(v7 + 17) = v57;
          v90 = v57 - v88;
          v91 = &v93[-(v57 - v88)];
          goto LABEL_84;
        }

LABEL_88:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v76 = (v28 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v77 = (v76 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v78 = vdupq_n_s64(v76);
      v79 = v57 + 2;
      v80 = 3;
      do
      {
        v81 = vdupq_n_s64(v80 - 3);
        v82 = vmovn_s64(vcgeq_u64(v78, vorrq_s8(v81, xmmword_1B33B0560)));
        if (vuzp1_s16(v82, *v78.i8).u8[0])
        {
          *(v79 - 2) = 0;
        }

        if (vuzp1_s16(v82, *&v78).i8[2])
        {
          *(v79 - 1) = 0;
        }

        if (vuzp1_s16(*&v78, vmovn_s64(vcgeq_u64(v78, vorrq_s8(v81, xmmword_1B33B0550)))).i32[1])
        {
          *v79 = 0;
          v79[1] = 0;
        }

        v80 += 4;
        v79 += 4;
        v77 -= 4;
      }

      while (v77);
      *(v7 + 17) = &v57[v28];
    }
  }

  return result;
}

uint64_t geo::dpSimplifyViaIndexes<gm::Matrix<float,2,1>,unsigned int>(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5, double a6)
{
  v10 = result;
  v11 = a6 * a6;
  v12 = a3 - 1;
  __asm { FMOV            V10.2S, #1.0 }

  while (1)
  {
    v18 = (a2 + 1);
    if (v18 >= a3)
    {
      break;
    }

    LODWORD(v19) = 0;
    v20 = *(v10 + 8 * a2);
    v21 = vsub_f32(*(v10 + 8 * a3), v20);
    v22 = vmul_f32(v21, v21);
    v23 = vadd_f32(vdup_lane_s32(v22, 1), v22);
    v24 = vaddv_f32(v22);
    v25 = vdiv_f32(_D10, v23);
    v26 = v12 - a2;
    v27 = 0.0;
    do
    {
      v28 = *(v10 + 8 * v18);
      v29 = 0.0;
      if (v24 > 1.0e-15)
      {
        v30 = vmul_f32(vsub_f32(v28, v20), v21);
        v29 = fminf(fmaxf(vmul_f32(vadd_f32(vdup_lane_s32(v30, 1), v30), v25).f32[0], 0.0), 1.0);
      }

      v31 = vsub_f32(v28, vmla_n_f32(v20, v21, v29));
      v32 = vaddv_f32(vmul_f32(v31, v31));
      if (v32 <= v27)
      {
        v19 = v19;
      }

      else
      {
        v19 = v18;
      }

      v27 = fmaxf(v32, v27);
      ++v18;
      --v26;
    }

    while (v26);
    if (v11 >= v27)
    {
      break;
    }

    result = geo::dpSimplifyViaIndexes<gm::Matrix<float,2,1>,unsigned int>(v10, a2, v19, a4, a5, a6);
    v33 = *a5;
    *a5 = v33 + 1;
    *(a4 + 4 * v33) = v19;
    a2 = v19;
  }

  return result;
}

void sub_1B30B0868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30B097C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30B0DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (*(v16 + 183) < 0)
  {
    operator delete(*(v16 + 160));
  }

  v18 = *(v16 + 120);
  if (v18)
  {
    *(v16 + 128) = v18;
    operator delete(v18);
  }

  v19 = *(v16 + 96);
  if (v19)
  {
    *(v16 + 104) = v19;
    operator delete(v19);
  }

  std::vector<md::VenueBuilding>::__destroy_vector::operator()[abi:nn200100](va);
  v20 = *(v16 + 40);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v21);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::VenueFeatureMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelCustomFeatureSupport::mapTileWasDestroyed(void *this, md::LabelMapTile *a2)
{
  v2 = this[13];
  v3 = this[14];
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        return;
      }
    }
  }

  if (v2 != v3)
  {
    md::LabelCustomFeatureSupport::removeTile(this, a2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelMapTile *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeatureSupportCommand>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::LabelFeatureSupportCommand>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A2C2E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2C2E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2C2E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelMapTile *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<md::LabelFeatureID,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelMapTileObserver>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C1E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelCustomFeatureSupport::removeDataSourceInternal(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = a1 + 80;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= v14;
      v7 = v5 < v14;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != a1 + 80 && *(v4 + 32) <= v14)
    {
      md::LabelCustomFeatureProvider::reset((v4 + 40));
      v8 = *(v4 + 8);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        v10 = v4;
        do
        {
          v9 = v10[2];
          v11 = *v9 == v10;
          v10 = v9;
        }

        while (!v11);
      }

      if (*(a1 + 72) == v4)
      {
        *(a1 + 72) = v9;
      }

      --*(a1 + 96);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 80), v4);
      md::LabelCustomFeatureProvider::~LabelCustomFeatureProvider((v4 + 40));

      v13 = mdm::zone_mallocator::instance(v12);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,void *>>(v13, v4);
      *(a1 + 232) = 1;
    }
  }
}

void std::__tree_node_destructor<geo::allocator_adapter<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, id *a2)
{
  if (a1)
  {
    md::LabelCustomFeatureProvider::~LabelCustomFeatureProvider((a2 + 5));
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},md::LabelCustomFeatureProvider>,void *>>(v3, a2);
}

void std::__function::__func<md::LabelCustomFeatureSupport::addDataSource(objc_object  {objcproto25VKCustomFeatureDataSource}*)::$_0,std::allocator<objc_object  {objcproto25VKCustomFeatureDataSource}*>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<md::LabelCustomFeatureSupport::addDataSource(objc_object  {objcproto25VKCustomFeatureDataSource}*)::$_0,std::allocator<objc_object  {objcproto25VKCustomFeatureDataSource}*>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::LabelCustomFeatureSupport::removeDataSource(objc_object  {objcproto25VKCustomFeatureDataSource}*)::$_0,std::allocator<objc_object  {objcproto25VKCustomFeatureDataSource}*>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

id std::__function::__func<md::LabelCustomFeatureSupport::removeDataSource(objc_object  {objcproto25VKCustomFeatureDataSource}*)::$_0,std::allocator<objc_object  {objcproto25VKCustomFeatureDataSource}*>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F2A2C2A0;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void std::__function::__func<md::LabelCustomFeatureSupport::removeDataSource(objc_object  {objcproto25VKCustomFeatureDataSource}*)::$_0,std::allocator<objc_object  {objcproto25VKCustomFeatureDataSource}*>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void md::LabelCustomFeatureSupport::featureForAnnotation(void *a1, uint64_t a2, void *a3, void *a4)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v7 = a4;
  v10 = *(a2 + 80);
  v9 = (a2 + 80);
  v8 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v9;
  do
  {
    v12 = v8[4];
    v13 = v12 >= v29;
    v14 = v12 < v29;
    if (v13)
    {
      v11 = v8;
    }

    v8 = v8[v14];
  }

  while (v8);
  if (v11 != v9 && v11[4] <= v29)
  {
    v15 = v7;
    v30 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    md::LabelCustomFeatureProvider::addAnnotationsToFeatureMap((v11 + 5), v16, 1);

    v17 = v11[22];
    if (v17)
    {
      v18 = v17;
      v31[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(v11 + 5, v19, 1);

      v20 = v11[22];
      if (v20)
      {
        v11[22] = 0;
      }
    }

    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset((v11 + 21), v15);
    v23 = v11[31];
    v22 = (v11 + 31);
    v21 = v23;
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = v22;
    do
    {
      v25 = *(v21 + 4);
      v13 = v25 >= v15;
      v26 = v25 < v15;
      if (v13)
      {
        v24 = v21;
      }

      v21 = *(v21 + v26);
    }

    while (v21);
    if (v24 != v22 && *(v24 + 4) <= v15 && (v27 = *(v24 + 5)) != 0)
    {
      v28 = *(v24 + 6);
      *a1 = v27;
      a1[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_27:
      *a1 = 0;
      a1[1] = 0;
    }
  }

  else
  {
LABEL_9:
    *a1 = 0;
    a1[1] = 0;
  }
}

void std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::clear(mdm::zone_mallocator **result)
{
  if (result[5])
  {
    std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__deallocate_node(result[3]);
    result[3] = 0;
    v2 = result[1];
    if (v2)
    {
      for (i = 0; i != v2; i = (i + 1))
      {
        *(*result + i) = 0;
      }
    }

    result[5] = 0;
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *>(v3, v2);
  }
}

uint64_t md::LabelCustomFeatureSupport::globalFeaturesDidChange(md::LabelCustomFeatureSupport *this)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2A2C330;
  v2[1] = this;
  v2[3] = v2;
  md::LabelCustomFeatureSupport::queueCommand(this, 3, v2);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
}

void sub_1B30B1C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelCustomFeatureSupport::globalFeaturesDidChange(void)::$_0,std::allocator<md::LabelCustomFeatureSupport::globalFeaturesDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v1 + 136));
  v2 = *(v1 + 72);
  if (v2 != (v1 + 80))
  {
    do
    {
      if ((v2[20] & 1) == 0)
      {
        v3 = [v2[11] globalAnnotations];
        md::LabelCustomFeatureProvider::addAnnotationsToFeatureMap((v2 + 5), v3, 0);
        md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(v2 + 5, v2[18], 0);
        v4 = [(NSArray *)v3 copy];
        v5 = v4;
        objc_storeStrong(v2 + 18, v4);

        *(v2 + 160) = 1;
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = v2[18];
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v7)
      {
        v8 = *v24;
        v9 = v2 + 31;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            v12 = v11;
            v13 = *v9;
            if (*v9)
            {
              v14 = v2 + 31;
              do
              {
                v15 = v13[4];
                v16 = v15 >= v11;
                v17 = v15 < v11;
                if (v16)
                {
                  v14 = v13;
                }

                v13 = v13[v17];
              }

              while (v13);
              if (v14 != v9 && v11 >= v14[4])
              {
                v18 = v14 + 5;
                if (v14[5])
                {
                  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v1 + 136), (v14 + 5));
                  if (!*(*v18 + 128))
                  {
                    v19 = v14[6];
                    v27 = *v18;
                    v28 = v19;
                    if (v19)
                    {
                      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    memset(v29, 0, 24);
                    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::LabelFeature> const*,std::shared_ptr<md::LabelFeature> const*>(v29, &v27, v29);
                    if (v28)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
                    }

                    md::LabelFeatureStyler::styleExternalFeatures(*(v2[6] + 296), v29);
                    v27 = v29;
                    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v27);
                  }
                }
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
        }

        while (v7);
      }

      v20 = v2[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v2[2];
          v22 = *v21 == v2;
          v2 = v21;
        }

        while (!v22);
      }

      v2 = v21;
    }

    while (v21 != (v1 + 80));
  }

  ++*(v1 + 228);
}

uint64_t std::__function::__func<md::LabelCustomFeatureSupport::globalFeaturesDidChange(void)::$_0,std::allocator<md::LabelCustomFeatureSupport::globalFeaturesDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2C330;
  a2[1] = v2;
  return result;
}

void geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A436A8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureDataSource}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A436A8;

  return a1;
}

void sub_1B30B2128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::LabelCustomFeatureProvider::queueCommand(void *a1, char a2, uint64_t a3)
{
  if (!*(a1[1] + 184))
  {
    operator new();
  }

  v3 = *(a3 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void sub_1B30B239C(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeatureProviderCommand>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::LabelFeatureProviderCommand>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneID(VKLabelSceneID)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneID(VKLabelSceneID)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (*(v1 + 241) != v2)
  {
    *(v1 + 241) = v2;
    v3 = *(v1 + 152);
    if (v3)
    {
      md::LabelScene::setSceneID(v3, v2, 0);
      v4 = *(v1 + 8);
      *(*v1 + 232) = 1;
      *(v4 + 3038) = 1;
      *(v4 + 3040) = 1;
      v5 = atomic_load((v4 + 3053));
      if (v5)
      {
        v6 = *(v4 + 136);
        if (v6)
        {
          v7 = *(v6 + 56);
          if (v7)
          {

            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v7, v4, 9);
          }
        }
      }
    }
  }
}

__n128 std::__function::__func<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneID(VKLabelSceneID)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneID(VKLabelSceneID)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2C538;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_1B30B26B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneState(VKLabelSceneState)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneState(VKLabelSceneState)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (*(v1 + 242) != v2)
  {
    *(v1 + 242) = v2;
    result = *(v1 + 152);
    if (result)
    {
      result = md::LabelScene::setLabelSceneState(result, v2);
      v3 = *(v1 + 8);
      *(*v1 + 232) = 1;
      *(v3 + 3038) = 1;
      *(v3 + 3040) = 1;
      v4 = atomic_load((v3 + 3053));
      if (v4)
      {
        v5 = *(v3 + 136);
        if (v5)
        {
          result = *(v5 + 56);
          if (result)
          {

            return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v3, 9);
          }
        }
      }
    }
  }

  return result;
}

__n128 std::__function::__func<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneState(VKLabelSceneState)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceDidChangeSceneState(VKLabelSceneState)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2C4F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_1B30B28A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelCustomFeatureProvider::dataSourceGlobalFeaturesDidChange(void)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceGlobalFeaturesDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 120) = 0;
  return md::LabelCustomFeatureSupport::globalFeaturesDidChange(*v1);
}

uint64_t std::__function::__func<md::LabelCustomFeatureProvider::dataSourceGlobalFeaturesDidChange(void)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceGlobalFeaturesDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2C4A8;
  a2[1] = v2;
  return result;
}

void sub_1B30B2A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelCustomFeatureProvider::dataSourceFeaturesDidChangeForRect(GEOMapRect)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceFeaturesDidChangeForRect(GEOMapRect)::$_0>,void ()(void)>::operator()(uint64_t *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_u64[0] = a1[2];
  a3.n128_u64[0] = a1[3];
  a4.n128_u64[0] = a1[4];
  a5.n128_u64[0] = a1[5];
  md::LabelCustomFeatureProvider::refreshFeatures(a1[1], a2, a3, a4, a5);
}

void std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::erase(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  --*(a1 + 24);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), a2);
  std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>((a2 + 4));
  v8 = mdm::zone_mallocator::instance(v7);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,void *>>(v8, a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x10E00401301B1ADuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

__n128 std::__function::__func<md::LabelCustomFeatureProvider::dataSourceFeaturesDidChangeForRect(GEOMapRect)::$_0,std::allocator<md::LabelCustomFeatureProvider::dataSourceFeaturesDidChangeForRect(GEOMapRect)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2C460;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_1B30B2D40(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKCustomFeatureDataSourceObserverThunk;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<md::LabelFeatureProviderCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelFeatureProviderCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeatureProviderCommand>>(v5, v3);
  }
}

void std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::destroy(result[1]);
    result[20] = &unk_1F2A436C8;

    std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((result + 16));
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,void *>>(v3, result);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<md::LabelScene>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::LabelScene>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C3B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<NSArray<objc_object  {objcproto25VKCustomFeatureAnnotation}*> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2C398;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray<objc_object  {objcproto25VKCustomFeatureAnnotation}*> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2C398;

  return a1;
}

void geo::_retain_ptr<VKCustomFeatureDataSourceObserverThunk * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2C378;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKCustomFeatureDataSourceObserverThunk * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2C378;

  return a1;
}

void md::LabelCustomFeatureProvider::reset(md::LabelCustomFeatureProvider *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    md::LabelScene::setLabelSceneState(v2, 0);
  }

  [*(this + 3) clearObserver];
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  if (v4 != (this + 72))
  {
    do
    {
      if (*(v4 + 184) == 1)
      {
        v5 = *(v4 + 21);
        v6 = [v5 count];

        if (v6)
        {
          v7 = *(v4 + 16);
          if (v7 != *(v4 + 17))
          {
            md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(*this, *(*v7 + 80), *(*v7 + 88));
          }
        }
      }

      v8 = *(v4 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v4 + 2);
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != (this + 72));
  }

  md::LabelCustomFeatureProvider::clearFeatures(this, 0);
}

void md::LabelCustomFeatureProvider::~LabelCustomFeatureProvider(md::LabelCustomFeatureProvider *this)
{
  md::LabelCustomFeatureProvider::reset(this);
  std::unique_ptr<md::LabelClusterProvider>::reset[abi:nn200100](this + 29, 0);
  std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::destroy(*(this + 26));
  v3 = (this + 168);
  std::vector<std::shared_ptr<md::LabelFeatureProviderCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelFeatureProviderCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 16) = &unk_1F2A567C0;

  *(this + 12) = &unk_1F2A2C398;
  std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::destroy(*(this + 9));
  *(this + 5) = &unk_1F2A436A8;

  *(this + 2) = &unk_1F2A2C378;
}

void sub_1B30B33D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::unique_ptr<md::LabelClusterProvider>::reset[abi:nn200100]((v10 + 232), 0);
  std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::destroy(*(v10 + 208));
  a10 = (v10 + 168);
  std::vector<std::shared_ptr<md::LabelFeatureProviderCommand>,geo::allocator_adapter<std::shared_ptr<md::LabelFeatureProviderCommand>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 160);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  *(v10 + 128) = &unk_1F2A567C0;

  *(v10 + 96) = &unk_1F2A2C398;
  std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::destroy(*(v10 + 72));
  *(v10 + 40) = &unk_1F2A436A8;

  *(v10 + 16) = &unk_1F2A2C378;
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

void std::__shared_ptr_emplace<md::PhysicalLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelFeatureID,md::LabelFeatureID>(mdm::zone_mallocator *result, unsigned __int8 a2, uint64_t *a3, _OWORD *a4)
{
  v7 = (&a3[8 * a2 - 0xC3910C8D016B07DLL] + (a2 >> 2) - 3) ^ a2;
  v8 = *(result + 1);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = (&a3[8 * a2 - 0xC3910C8D016B07DLL] + (a2 >> 2) - 3) ^ a2;
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = v7 & (v8 - 1);
    }

    v10 = *(*result + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (*(i + 16) == a2 && i[3] == a3)
          {
            return;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(result);
  v15 = pthread_rwlock_rdlock((v14 + 32));
  if (v15)
  {
    geo::read_write_lock::logFailure(v15, "read lock", v16);
  }

  v17 = malloc_type_zone_malloc(*v14, 0x20uLL, 0x102004092A55A46uLL);
  atomic_fetch_add((v14 + 24), 1u);
  geo::read_write_lock::unlock((v14 + 32));
  *v17 = 0;
  v17[1] = v7;
  *(v17 + 1) = *a4;
  v19 = (*(result + 5) + 1);
  v20 = *(result + 12);
  if (!v8 || (v20 * v8) < v19)
  {
    v21 = 1;
    if (v8 >= 3)
    {
      v21 = (v8 & (v8 - 1)) != 0;
    }

    v22 = v21 | (2 * v8);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (v24 == 1)
    {
      v24 = 2;
    }

    else if ((v24 & (v24 - 1)) != 0)
    {
      prime = std::__next_prime(v24);
      v24 = prime;
    }

    v8 = *(result + 1);
    if (v24 > v8)
    {
      goto LABEL_36;
    }

    if (v24 < v8)
    {
      prime = vcvtps_u32_f32(*(result + 5) / *(result + 12));
      if (v8 < 3 || (v33 = vcnt_s8(v8), v33.i16[0] = vaddlv_u8(v33), v33.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v34 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v34;
        }
      }

      if (v24 <= prime)
      {
        v24 = prime;
      }

      if (v24 >= v8)
      {
        v8 = *(result + 1);
      }

      else
      {
        if (v24)
        {
LABEL_36:
          v25 = mdm::zone_mallocator::instance(prime);
          v26 = pthread_rwlock_rdlock((v25 + 32));
          if (v26)
          {
            geo::read_write_lock::logFailure(v26, "read lock", v27);
          }

          v28 = malloc_type_zone_malloc(*v25, 8 * v24, 0x2004093837F09uLL);
          atomic_fetch_add((v25 + 24), 1u);
          geo::read_write_lock::unlock((v25 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> **,0>(result, v28);
          v29 = 0;
          *(result + 1) = v24;
          do
          {
            *(*result + 8 * v29++) = 0;
          }

          while (v24 != v29);
          v30 = *(result + 3);
          if (v30)
          {
            v31 = v30[1];
            v32 = vcnt_s8(v24);
            v32.i16[0] = vaddlv_u8(v32);
            if (v32.u32[0] > 1uLL)
            {
              if (v31 >= v24)
              {
                v31 %= v24;
              }
            }

            else
            {
              v31 &= v24 - 1;
            }

            *(*result + 8 * v31) = result + 24;
            v35 = *v30;
            if (*v30)
            {
              do
              {
                v36 = v35[1];
                if (v32.u32[0] > 1uLL)
                {
                  if (v36 >= v24)
                  {
                    v36 %= v24;
                  }
                }

                else
                {
                  v36 &= v24 - 1;
                }

                if (v36 != v31)
                {
                  v37 = *result;
                  if (!*(*result + 8 * v36))
                  {
                    *(v37 + 8 * v36) = v30;
                    goto LABEL_60;
                  }

                  *v30 = *v35;
                  *v35 = **(v37 + 8 * v36);
                  **(v37 + 8 * v36) = v35;
                  v35 = v30;
                }

                v36 = v31;
LABEL_60:
                v30 = v35;
                v35 = *v35;
                v31 = v36;
              }

              while (v35);
            }
          }

          v8 = v24;
          goto LABEL_64;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<md::LabelFeatureID,void *> *> **,0>(result, 0);
        v8 = 0;
        *(result + 1) = 0;
      }
    }

LABEL_64:
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v38 = *result;
  v39 = *(*result + 8 * v4);
  if (v39)
  {
    *v17 = *v39;
LABEL_77:
    *v39 = v17;
    goto LABEL_78;
  }

  *v17 = *(result + 3);
  *(result + 3) = v17;
  *(v38 + 8 * v4) = result + 24;
  if (*v17)
  {
    v40 = *(*v17 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v40 >= v8)
      {
        v40 %= v8;
      }
    }

    else
    {
      v40 &= v8 - 1;
    }

    v39 = (*result + 8 * v40);
    goto LABEL_77;
  }

LABEL_78:
  ++*(result + 5);
}

void sub_1B30B3AE4(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<md::LabelFeatureID,void *>>(v5, v1);
  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::reserve(std::__shared_weak_count *result, unint64_t a2)
{
  if (a2 > (result->__shared_weak_owners_ - result->__vftable) >> 4)
  {
    if (a2 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = result->__shared_owners_ - result->__vftable;
    v15 = result + 1;
    v5 = mdm::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[16 * a2];
    v9 = v3->__shared_owners_ - v3->__vftable;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], v3->__vftable, v9);
    v11 = v3->__vftable;
    v3->__vftable = v10;
    v3->__shared_owners_ = v7;
    shared_weak_owners = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v8;
    v13.__shared_weak_owners_ = v11;
    v14 = shared_weak_owners;
    v13.__vftable = v11;
    v13.__shared_owners_ = v11;
    return std::__split_buffer<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v13);
  }

  return result;
}

void md::Logic<md::ARLabelIconDataRequestLogic,md::ARLabelIconDataRequestContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARLabelIconDataRequestLogic::runBeforeLayout(float32x2_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0xCBF29CE484222325;
  v72 = v76;
  v73 = v76;
  v74 = v76;
  v75 = 4;
  v67 = v71;
  v68 = v71;
  v69 = v71;
  v70 = 4;
  v6 = 0xCBF29CE484222325;
  v7 = a1[15];
  do
  {
    v6 = 0x100000001B3 * (v6 ^ aStdStringViewG_823[v4++ + 38]);
  }

  while (v4 != 120);
  v8 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(v7, v6);
  gdc::RegistryView<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::RegistryViewIterator::RegistryViewIterator(&v77, (v8 + 4), v8 + 4, v8[7]);
  gdc::RegistryView<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::RegistryViewIterator::RegistryViewIterator(v65, (v8 + 4), v8 + 4, v8[8]);
  v9 = v66;
  v10 = v79;
  while (v9 != v10)
  {
    v64 = *v10;
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v72, &v64);
    v11 = v78;
    v12 = v77[4];
    v13 = (v79 + 1);
    do
    {
      v10 = v13;
      v79 = v13;
      if (v13 == v12)
      {
        break;
      }

      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11, v13->u32[1]);
      v13 = v10 + 1;
    }

    while (*&v11[4] == Index);
    v9 = v66;
  }

  v15 = v72;
  v16 = v73;
  while (v15 != v16)
  {
    gdc::component::DataRequest<arComponents::LabelIconRequestData>::updateRequestStatus(*&a1[15], *v15++, 3);
  }

  __asm { FMOV            V0.2S, #1.0 }

  v64 = _D0;
  v63 = +[VKDebugSettings sharedSettings];
  [v63 arDebugStylingPOIIconScaleFactor];
  v64 = vmul_n_f32(v64, 1.0 / v22);
  v73 = v72;
  v23 = a1[15];
  v24 = gdc::Registry::storage<arComponents::LabelIconRequestData>(v23);
  for (i = 0; i != 118; ++i)
  {
    v5 = 0x100000001B3 * (v5 ^ aStdStringViewG_825[i + 38]);
  }

  v26 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(v23, v5);
  v27 = v26;
  v28 = (v26 + 32);
  v30 = v24[7];
  v29 = v24[8];
  if (*(v26 + 64) - *(v26 + 56) >= (v29 - v30))
  {
    v31 = v24 + 4;
  }

  else
  {
    v31 = (v26 + 32);
  }

  if (v24 + 4 == v31)
  {
    v77 = a1;
    v78 = &v64;
    v79 = &v67;
    v80 = a2;
    v81[0] = &v72;
    if (v30 != v29)
    {
      v32 = v24[10];
      do
      {
        if (*(v27 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v28, *(v30 + 4)))
        {
          _ZZN2md27ARLabelIconDataRequestLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_29ARLabelIconDataRequestContextEENK3__0clENS5_6EntityERN12arComponents20LabelIconRequestDataE(&v77, *v30, v32);
        }

        v32 += 2;
        v30 += 8;
      }

      while (v30 != v29);
    }
  }

  if (v28 == v31)
  {
    v77 = a1;
    v78 = &v64;
    v79 = &v67;
    v80 = a2;
    v81[0] = &v72;
    v50 = *(v27 + 56);
    v49 = *(v27 + 64);
    while (v50 != v49)
    {
      v51 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v24 + 4, *(v50 + 4));
      v52 = v24[8];
      if (v52 != v51)
      {
        v53 = *v50;
        v54 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v24 + 4, HIDWORD(*v50));
        if (v52 == v54)
        {
          v55 = v24[11];
        }

        else
        {
          v55 = (v24[10] + 2 * (v54 - v24[7]));
        }

        _ZZN2md27ARLabelIconDataRequestLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_29ARLabelIconDataRequestContextEENK3__0clENS5_6EntityERN12arComponents20LabelIconRequestDataE(&v77, v53, v55);
      }

      v50 += 8;
    }
  }

  v33 = v67;
  v34 = v68;
  while (v33 != v34)
  {
    gdc::component::DataRequest<arComponents::LabelIconRequestData>::updateRequestStatus(*&a1[15], *v33++, 4);
  }

  v35 = v72;
  v36 = v73;
  while (v35 != v36)
  {
    gdc::component::DataRequest<arComponents::LabelIconRequestData>::updateRequestStatus(*&a1[15], *v35++, 3);
  }

  v37 = a1[15];
  v77 = v81;
  v78 = v81;
  v79 = v81;
  v80 = 4;
  v38 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>>(v37);
  v39 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>(v37);
  v40 = v39;
  v41 = (v39 + 32);
  v43 = v38[7];
  v42 = v38[8];
  if (*(v39 + 64) - *(v39 + 56) >= (v42 - v43))
  {
    v44 = v38 + 4;
  }

  else
  {
    v44 = (v39 + 32);
  }

  if (v38 + 4 == v44 && v43 != v42)
  {
    v45 = v38[10];
    do
    {
      if (*(v40 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v41, *(v43 + 4)))
      {
        v65[0] = *v43;
        gdc::component::DataRequestObserver::notifyObservers<gdc::component::DataRequest<arComponents::LabelIconRequestData>>(v37, v65[0], *v45);
        geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v77, v65);
      }

      ++v45;
      v43 += 8;
    }

    while (v43 != v42);
  }

  if (v41 == v44)
  {
    v56 = *(v40 + 56);
    v57 = *(v40 + 64);
    while (v56 != v57)
    {
      v58 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v38 + 4, *(v56 + 4));
      v59 = v38[8];
      if (v59 != v58)
      {
        v60 = *v56;
        v61 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v38 + 4, HIDWORD(*v56));
        if (v59 == v61)
        {
          v62 = v38[11];
        }

        else
        {
          v62 = (v38[10] + ((v61 - v38[7]) >> 3));
        }

        v65[0] = v60;
        gdc::component::DataRequestObserver::notifyObservers<gdc::component::DataRequest<arComponents::LabelIconRequestData>>(v37, v60, *v62);
        geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v77, v65);
      }

      v56 += 8;
    }
  }

  v47 = v77;
  v46 = v78;
  if (v77 != v78)
  {
    do
    {
      v48 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>(v37);
      gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>::remove(v48, *v47++);
    }

    while (v47 != v46);
    v47 = v77;
  }

  if (v47 != v79)
  {
    free(v47);
  }

  if (v67 != v69)
  {
    free(v67);
  }

  if (v72 != v74)
  {
    free(v72);
  }
}

void sub_1B30B4160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24)
{
  if (a14 != a16)
  {
    free(a14);
  }

  if (a22 != a24)
  {
    free(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

void gdc::component::DataRequest<arComponents::LabelIconRequestData>::updateRequestStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>>(a1);
  v7 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v6, a2);
  if (v7)
  {

    gdc::component::DataRequest<arComponents::LabelIconRequestData>::_updateRequestStatus(a1, a2, v7, v3);
  }
}

void _ZZN2md27ARLabelIconDataRequestLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJEEES7_EE20ResolvedDependenciesERNS_29ARLabelIconDataRequestContextEENK3__0clENS5_6EntityERN12arComponents20LabelIconRequestDataE(uint64_t *a1, uint64_t a2, md::LabelIcon **a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v5 = *a1;
  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v8 = atomic_load(*a3 + 142);
    if (v8)
    {
      v9 = gdc::ServiceLocator::resolve<mre::GraphicsResourceStore>(**(a1[3] + 16), *(*(a1[3] + 16) + 8));
      v10 = md::LabelIcon::image(v7);
      v11 = [v10 texture];
      v13 = (*(*v9 + 40))(v9, v11, v12, 0);

      if (v13)
      {
        v13 = *v13;
      }

      v14 = md::LabelIcon::image(v7);
      v31 = *[v14 textureCoordinates];

      v15 = *(v5 + 120);
      v33 = &unk_1F2A43EB8;
      v34 = 0;
      v38 = 0;
      v37 = v13;
      geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v39, &v33);
      v16 = gdc::Registry::storage<arComponents::AlbedoTextureComponent>(v15);
      gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::emplace(v16, v32, &v37);
      v39 = &unk_1F2A43EB8;

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      }

      v33 = &unk_1F2A43EB8;

      v17 = *(v5 + 120);
      v37 = v31;
      v18 = gdc::Registry::storage<arComponents::AlbedoTextureUVMapping>(v17);
      gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::emplace(v18, v32, &v37);
      v19 = *(v5 + 120);
      *&v37 = *a1[1];
      v20 = gdc::Registry::storage<arComponents::AlbedoTextureUVScale>(v19);
      gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::emplace(v20, v32, &v37);
      v21 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureComponent>>(*(v5 + 120));
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v21, v32);
      v22 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureUVMapping>>(*(v5 + 120));
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v22, v32);
      geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(a1[2], &v32);
    }

    else
    {
      geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(a1[4], &v32);
    }
  }

  else
  {
    v23 = *(v5 + 120);
    v35 = &unk_1F2A43EB8;
    v36 = 0;
    v38 = 0;
    v37 = 0uLL;
    geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v39, &v35);
    v24 = gdc::Registry::storage<arComponents::AlbedoTextureComponent>(v23);
    gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::emplace(v24, a2, &v37);
    v39 = &unk_1F2A43EB8;

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
    }

    v35 = &unk_1F2A43EB8;

    v25 = *(v5 + 120);
    v37 = xmmword_1B33B0720;
    v26 = gdc::Registry::storage<arComponents::AlbedoTextureUVMapping>(v25);
    gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::emplace(v26, a2, &v37);
    v27 = *(v5 + 120);
    *&v37 = *a1[1];
    v28 = gdc::Registry::storage<arComponents::AlbedoTextureUVScale>(v27);
    gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::emplace(v28, a2, &v37);
    v29 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureComponent>>(*(v5 + 120));
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v29, a2);
    v30 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureUVMapping>>(*(v5 + 120));
    gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v30, a2);
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(a1[2], &v32);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B30B4794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>>(uint64_t a1)
{
  v3 = 0xD4A6D7DC1E5120F8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD4A6D7DC1E5120F8);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>(uint64_t a1)
{
  v3 = 0xB0AB5653F88B7825;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB0AB5653F88B7825);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::component::DataRequestObserver::notifyObservers<gdc::component::DataRequest<arComponents::LabelIconRequestData>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v6 = gdc::Registry::_get<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(a1, a2);
  if (v6)
  {
    v7 = v6;
    v9 = *v6;
    v8 = *(v6 + 8);
    if (*v6 != v8)
    {
      while (1)
      {
        v18 = *v9;
        if (!gdc::Registry::isValid(a1, &v18))
        {
          break;
        }

        ++v9;
LABEL_5:
        if (v9 == v8)
        {
          goto LABEL_12;
        }
      }

      v10 = v8 - 1;
      while (v10 != v9)
      {
        v8 = v10;
        v11 = *v10--;
        v18 = v11;
        if (gdc::Registry::isValid(a1, &v18))
        {
          v12 = *v9;
          *v9++ = *v8;
          *v8 = v12;
          goto LABEL_5;
        }
      }
    }

    v8 = v9;
LABEL_12:
    v13 = *v7;
    if (*v7 != v8)
    {
      do
      {
        v14 = *v13++;
        v15 = gdc::Registry::_get<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(a1, v14);
        v16 = *(v15 + 8);
        *(v15 + 8) = a3;
        gdc::component::DataRequestObserver::updateStatusCounts(a1, v14, a2, v16, a3);
      }

      while (v13 != v8);
      v13 = *v7;
    }

    if (v13 == v8)
    {
      gdc::Registry::remove<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(a1, &v17);
    }

    else if (v8 != *(v7 + 8))
    {
      *(v7 + 8) = v8;
    }
  }
}

uint64_t gdc::Registry::_get<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2);
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_873[v3++ + 38]);
  }

  while (v3 != 114);
  v5 = gdc::Registry::storage<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(a1, v4);
  v6 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v5 + 4, v2);
  if (v5[8] == v6)
  {
    v7 = v5[11];
  }

  else
  {
    v7 = v5[10] + 24 * ((v6 - v5[7]) >> 3);
  }

  if (v7 == v5[11])
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t gdc::Registry::_get<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2);
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_874[v3++ + 38]);
  }

  while (v3 != 110);
  v5 = gdc::Registry::storage<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(a1, v4);
  v6 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v5 + 4, v2);
  if (v5[8] == v6)
  {
    v7 = v5[11];
  }

  else
  {
    v7 = v5[10] + 12 * ((v6 - v5[7]) >> 3);
  }

  if (v7 == v5[11])
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

BOOL gdc::Registry::remove<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ aStdStringViewG_873[v3++ + 38]);
  }

  while (v3 != 114);
  v5 = gdc::Registry::storage<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(a1, v4);
  v6 = *a2;

  return gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>::remove(v5, v6);
}

uint64_t gdc::Registry::storage<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>::remove(void *a1, uint64_t a2)
{
  v13 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 24 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != (v7 - 24))
    {
      std::vector<gdc::Entity>::__assign_with_size[abi:nn200100]<gdc::Entity*,gdc::Entity*>(v6, *(v7 - 24), *(v7 - 16), (*(v7 - 16) - *(v7 - 24)) >> 3);
      v7 = a1[11];
    }

    v9 = v7 - 24;
    v8 = *(v7 - 24);
    if (v8)
    {
      *(v7 - 16) = v8;
      operator delete(v8);
    }

    a1[11] = v9;
    v10 = a1[28];
    if (v10)
    {
      v11 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v10[6], v11, &v13, 1);
        v10 = *v10;
      }

      while (v10);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t gdc::Registry::storage<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 12 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 4);
    *v6 = *(v7 - 12);
    *(v6 + 8) = v8;
    a1[11] -= 12;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::LabelIconRequestData>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureComponent>>(uint64_t a1)
{
  v3 = 0x2A5EF61A9E93F8AFLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2A5EF61A9E93F8AFuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureUVMapping>>(uint64_t a1)
{
  v3 = 0xA77C230BE749DC3FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA77C230BE749DC3FLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureUVMapping>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureUVMapping>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureUVMapping>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureComponent>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureComponent>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::RequiresUpdateInRenderLayer<arComponents::AlbedoTextureComponent>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<arComponents::LabelIconRequestData>(uint64_t a1)
{
  v3 = 0x7EF75512B090372ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7EF75512B090372EuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::LabelIconRequestData>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::LabelIconRequestData>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::LabelIconRequestData>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void gdc::component::DataRequest<arComponents::LabelIconRequestData>::_updateRequestStatus(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v5 = *a3;
  if (v5 == a4)
  {
    return;
  }

  gdc::component::DataRequest<arComponents::LabelIconRequestData>::_removeStatusTag(a1, a2, v5);
  if (a4 == 2)
  {
    v17 = 0;
    v18 = 0xCBF29CE484222325;
    do
    {
      v18 = 0x100000001B3 * (v18 ^ aStdStringViewG_823[v17++ + 38]);
    }

    while (v17 != 120);
    v19 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(a1, v18);
    v67 = a2;
    v20 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v19 + 4, &v67);
    if (v21)
    {
      v22 = v19[11];
      v23 = v19[12];
      if (v22 >= v23)
      {
        v43 = v19[10];
        v44 = v22 - v43 + 1;
        if (v44 < 0)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v45 = v23 - v43;
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v46 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          operator new();
        }

        v24 = v22 - v43 + 1;
        memcpy(0, v43, v22 - v43);
        v19[10] = 0;
        v19[11] = v24;
        v19[12] = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        v24 = v22 + 1;
      }

      v19[11] = v24;
      v35 = v19[31];
    }

    else
    {
      v35 = v19[31];
      if (v19[10] + ((v20 - v19[7]) >> 3) != v19[11])
      {
        for (i = v19[16]; i; i = *i)
        {
          std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v35, &v67, 1);
        }

        goto LABEL_72;
      }
    }

    for (j = v19[22]; j; j = *j)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v35, &v67, 1);
    }

    goto LABEL_72;
  }

  if (a4 != 4)
  {
    v25 = 0;
    v26 = 0xCBF29CE484222325;
    do
    {
      v26 = 0x100000001B3 * (v26 ^ aStdStringViewG_825[v25++ + 38]);
    }

    while (v25 != 118);
    v27 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(a1, v26);
    v67 = a2;
    v28 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v27 + 4, &v67);
    if (v29)
    {
      v30 = v27[11];
      v31 = v27[12];
      if (v30 >= v31)
      {
        v47 = v27[10];
        v48 = v30 - v47 + 1;
        if (v48 < 0)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v49 = v31 - v47;
        if (2 * v49 > v48)
        {
          v48 = 2 * v49;
        }

        if (v49 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v50 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v48;
        }

        if (v50)
        {
          operator new();
        }

        v32 = v30 - v47 + 1;
        memcpy(0, v47, v30 - v47);
        v27[10] = 0;
        v27[11] = v32;
        v27[12] = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        v32 = v30 + 1;
      }

      v27[11] = v32;
      v37 = v27[31];
    }

    else
    {
      v37 = v27[31];
      if (v27[10] + ((v28 - v27[7]) >> 3) != v27[11])
      {
        for (k = v27[16]; k; k = *k)
        {
          std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v37, &v67, 1);
        }

        goto LABEL_72;
      }
    }

    for (m = v27[22]; m; m = *m)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v37, &v67, 1);
    }

    goto LABEL_72;
  }

  v9 = 0;
  v10 = 0xCBF29CE484222325;
  do
  {
    v10 = 0x100000001B3 * (v10 ^ aStdStringViewG_827[v9++ + 38]);
  }

  while (v9 != 120);
  v11 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>(a1, v10);
  v67 = a2;
  v12 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v11 + 4, &v67);
  if (v13)
  {
    v14 = v11[11];
    v15 = v11[12];
    if (v14 >= v15)
    {
      v39 = v11[10];
      v40 = v14 - v39 + 1;
      if (v40 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v41 = v15 - v39;
      if (2 * v41 > v40)
      {
        v40 = 2 * v41;
      }

      if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v42 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        operator new();
      }

      v16 = v14 - v39 + 1;
      memcpy(0, v39, v14 - v39);
      v11[10] = 0;
      v11[11] = v16;
      v11[12] = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      v16 = v14 + 1;
    }

    v11[11] = v16;
    v33 = v11[31];
    goto LABEL_58;
  }

  v33 = v11[31];
  if (v11[10] + ((v12 - v11[7]) >> 3) == v11[11])
  {
LABEL_58:
    for (n = v11[22]; n; n = *n)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(n[6], v33, &v67, 1);
    }

    goto LABEL_72;
  }

  for (ii = v11[16]; ii; ii = *ii)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(ii[6], v33, &v67, 1);
  }

LABEL_72:
  *a3 = a4;
  v54 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::DidChange>(a1);
  v67 = a2;
  v55 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v54 + 4, &v67);
  if (v56)
  {
    v57 = v54[11];
    v58 = v54[12];
    if (v57 >= v58)
    {
      v62 = v54[10];
      v63 = v57 - v62 + 1;
      if (v63 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v64 = v58 - v62;
      if (2 * v64 > v63)
      {
        v63 = 2 * v64;
      }

      if (v64 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v65 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        operator new();
      }

      v59 = v57 - v62 + 1;
      memcpy(0, v62, v57 - v62);
      v54[10] = 0;
      v54[11] = v59;
      v54[12] = 0;
      if (v62)
      {
        operator delete(v62);
      }
    }

    else
    {
      v59 = v57 + 1;
    }

    v54[11] = v59;
    v60 = v54[31];
    goto LABEL_90;
  }

  v60 = v54[31];
  if (v54[10] + ((v55 - v54[7]) >> 3) == v54[11])
  {
LABEL_90:
    for (jj = v54[22]; jj; jj = *jj)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(jj[6], v60, &v67, 1);
    }

    return;
  }

  for (kk = v54[16]; kk; kk = *kk)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(kk[6], v60, &v67, 1);
  }
}

BOOL gdc::component::DataRequest<arComponents::LabelIconRequestData>::_removeStatusTag(_BOOL8 result, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v13 = 0;
      v14 = 0xCBF29CE484222325;
      do
      {
        v14 = 0x100000001B3 * (v14 ^ aStdStringViewG_825[v13++ + 38]);
      }

      while (v13 != 118);
      v15 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(result, v14);

      return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>::remove(v15, a2);
    }

    else if (a3 == 4)
    {
      v7 = 0;
      v8 = 0xCBF29CE484222325;
      do
      {
        v8 = 0x100000001B3 * (v8 ^ aStdStringViewG_827[v7++ + 38]);
      }

      while (v7 != 120);
      v9 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>(result, v8);

      return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::remove(v9, a2);
    }
  }

  else if (a3 == 1)
  {
    v10 = 0;
    v11 = 0xCBF29CE484222325;
    do
    {
      v11 = 0x100000001B3 * (v11 ^ aStdStringViewG_826[v10++ + 38]);
    }

    while (v10 != 117);
    v12 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((result + 120), v11);
    if (!v12)
    {
      operator new();
    }

    return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::remove(v12[3], a2);
  }

  else if (a3 == 2)
  {
    v4 = 0;
    v5 = 0xCBF29CE484222325;
    do
    {
      v5 = 0x100000001B3 * (v5 ^ aStdStringViewG_823[v4++ + 38]);
    }

    while (v4 != 120);
    v6 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(result, v5);

    return gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::remove(v6, a2);
  }

  return result;
}