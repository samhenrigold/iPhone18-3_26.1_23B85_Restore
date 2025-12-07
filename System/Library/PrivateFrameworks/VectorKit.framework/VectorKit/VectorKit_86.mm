void sub_1B2DE3A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(__p);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

void *md::OverlayLineLabelFeature::newRootPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  md::LineLabelPlacer::positionForIdentifier(&v12, a1 + 192, *(a3 + 48));
  if (v12 && *(a4 + 236) != 0.0 && *(a1 + 384) != *(a1 + 392))
  {
    v7 = *(a1 + 434);
    v8 = md::LabelStyle::textStyleGroup(a4, 0);
    md::LabelFeature::textDataForZoom(&v10, a1, v7, v8);
    if (v10)
    {
      operator new();
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  return 0;
}

void sub_1B2DE3DE0(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v20 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v20, v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void md::OverlayLineLabelFeature::~OverlayLineLabelFeature(md::OverlayLineLabelFeature *this)
{
  md::LineLabelFeature::~LineLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t *md::MuninStandardLabeler::layoutLabelsForStaging(uint64_t *this)
{
  v1 = this;
  this[50] = this[49];
  this[53] = this[52];
  if (*(this + 441) == 1)
  {
    v3 = this[9];
    v2 = this[10];
    while (v3 != v2)
    {
      v4 = *v3;
      v3 += 2;
      this = md::Label::updateStateMachineForStaging(v4, 2, 29);
    }
  }

  else
  {
    std::vector<md::Label *>::reserve(this + 49, (this[10] - this[9]) >> 4);
    std::vector<md::Label *>::reserve((v1 + 416), (*(v1 + 80) - *(v1 + 72)) >> 4);
    v14 = 257;
    v15 = 1;
    v5 = *(v1 + 72);
    v6 = *(v1 + 80);
    while (v5 != v6)
    {
      md::Label::layoutForStaging(*v5, *(v1 + 24), *(v1 + 48), &v14);
      if (*(*v5 + 1378) == 1)
      {
        if (*(*v5 + 1291) == 18)
        {
          v13 = *v5;
          v7 = v1 + 392;
        }

        else
        {
          v13 = *v5;
          v7 = v1 + 416;
        }

        std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(v7, &v13);
      }

      v5 += 2;
    }

    md::StandardLabeler::willStartCollision(v1);
    v8 = md::LabelSettingsStyleCache::muninPointStyle(*(*(*(v1 + 24) + 336) + 200));
    v9 = *(v1 + 392);
    v10 = *(v1 + 400);
    v11 = 126 - 2 * __clz((v10->i64 - v9) >> 3);
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,false>(v9, v10, v12, 1);
    return md::MuninStandardLabeler::placeLabels(v1, (v1 + 392), *v8);
  }

  return this;
}

void std::vector<md::Label *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v136 = a2;
  v137 = &a2[-1].i64[1];
  v7 = v6;
  while (1)
  {
    v6 = v7;
    v8 = (a2 - v7) >> 3;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return result;
      }

      if (v8 == 2)
      {
        v82 = *v137;
        v83 = v7->i64[0];
        result = md::MuninPoiLabelSorter::operator()(*v137, v7->i64[0]);
        if (result)
        {
          v7->i64[0] = v82;
          *v137 = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,0>(v7->i64, &v7->i64[1], v7[1].i64, v137);
    }

    if (v8 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,0>(v7->i64, &v7->i64[1], v7[1].i64, &v7[1].i64[1]);
      v75 = *v137;
      v76 = v7[1].i64[1];
      result = md::MuninPoiLabelSorter::operator()(*v137, v76);
      if (!result)
      {
        return result;
      }

      v7[1].i64[1] = v75;
      *v137 = v76;
      v78 = v7[1].i64[0];
      v77 = v7[1].i64[1];
      result = md::MuninPoiLabelSorter::operator()(v77, v78);
      if (!result)
      {
        return result;
      }

      v7[1].i64[0] = v77;
      v7[1].i64[1] = v78;
      v79 = v7->i64[1];
      result = md::MuninPoiLabelSorter::operator()(v77, v79);
      if (!result)
      {
        return result;
      }

      v7->i64[1] = v77;
      v7[1].i64[0] = v79;
      v80 = v7->i64[0];
      v81 = v77;
      goto LABEL_166;
    }

LABEL_10:
    v140 = v7;
    if (v8 <= 23)
    {
      v88 = &v7->u64[1];
      v90 = v7 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v7;
          do
          {
            v94 = v92->i64[0];
            v93 = v92->i64[1];
            v92 = v88;
            result = md::MuninPoiLabelSorter::operator()(v93, v94);
            if (result)
            {
              v95 = v91;
              while (1)
              {
                *(&v7->i64[1] + v95) = v94;
                if (!v95)
                {
                  break;
                }

                v94 = *(&v7->i64[-1] + v95);
                result = md::MuninPoiLabelSorter::operator()(v93, v94);
                v95 -= 8;
                if ((result & 1) == 0)
                {
                  v96 = (&v7->i64[1] + v95);
                  goto LABEL_128;
                }
              }

              v96 = v7;
LABEL_128:
              *v96 = v93;
            }

            v88 = &v92->u64[1];
            v91 += 8;
          }

          while (&v92->u64[1] != a2);
        }
      }

      else if (!v90)
      {
        do
        {
          v132 = *v6;
          v131 = *(v6 + 8);
          v6 = v88;
          result = md::MuninPoiLabelSorter::operator()(v131, v132);
          if (result)
          {
            v133 = v6;
            do
            {
              *v6 = v132;
              v132 = *(v6 - 16);
              result = md::MuninPoiLabelSorter::operator()(v131, v132);
              v6 -= 8;
            }

            while ((result & 1) != 0);
            *v6 = v131;
            v6 = v133;
            a2 = v136;
          }

          v88 = (v6 + 8);
        }

        while ((v6 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v97 = (v8 - 2) >> 1;
        v138 = v97;
        do
        {
          v98 = v97;
          if (v138 >= v97)
          {
            v99 = (2 * v97) | 1;
            v100 = (v6 + 8 * v99);
            v101 = *v100;
            if (2 * v97 + 2 < v8)
            {
              v102 = v100[1];
              if (md::MuninPoiLabelSorter::operator()(*v100, v102))
              {
                v101 = v102;
                ++v100;
                v99 = 2 * v98 + 2;
              }
            }

            v103 = (v6 + 8 * v98);
            v104 = *v103;
            result = md::MuninPoiLabelSorter::operator()(v101, *v103);
            a2 = v136;
            if ((result & 1) == 0)
            {
              do
              {
                v105 = v100;
                *v103 = v101;
                if (v138 < v99)
                {
                  break;
                }

                v106 = (2 * v99) | 1;
                v100 = (v6 + 8 * v106);
                v107 = 2 * v99 + 2;
                v101 = *v100;
                if (v107 < v8)
                {
                  v108 = v100[1];
                  v109 = md::MuninPoiLabelSorter::operator()(*v100, v108);
                  if (v109)
                  {
                    v101 = v108;
                    ++v100;
                  }

                  v6 = v140;
                  if (v109)
                  {
                    v106 = v107;
                  }
                }

                result = md::MuninPoiLabelSorter::operator()(v101, v104);
                v103 = v105;
                v99 = v106;
              }

              while (!result);
              *v105 = v104;
              a2 = v136;
            }
          }

          v97 = v98 - 1;
        }

        while (v98);
        do
        {
          v110 = a2;
          v111 = 0;
          v139 = *v6;
          v112 = v6;
          do
          {
            v113 = &v112[v111];
            v115 = v113 + 1;
            v114 = v113[1];
            v116 = (2 * v111) | 1;
            v117 = 2 * v111 + 2;
            if (v117 >= v8)
            {
              v111 = (2 * v111) | 1;
            }

            else
            {
              v120 = v113[2];
              v118 = v113 + 2;
              v119 = v120;
              result = md::MuninPoiLabelSorter::operator()(v114, v120);
              if (result)
              {
                v114 = v119;
                v115 = v118;
                v111 = v117;
              }

              else
              {
                v111 = v116;
              }
            }

            *v112 = v114;
            v112 = v115;
          }

          while (v111 <= (v8 - 2) / 2);
          v121 = (v110 - 8);
          if (v115 == v121)
          {
            v122 = v121;
            v6 = v140;
            *v115 = v139;
          }

          else
          {
            *v115 = v121->i64[0];
            v122 = v121;
            v6 = v140;
            v121->i64[0] = v139;
            v123 = (v115 - v140 + 8) >> 3;
            v124 = v123 < 2;
            v125 = v123 - 2;
            if (!v124)
            {
              v126 = v125 >> 1;
              v127 = &v140[v125 >> 1];
              v128 = *v127;
              v129 = *v115;
              result = md::MuninPoiLabelSorter::operator()(*v127, *v115);
              if (result)
              {
                do
                {
                  v130 = v127;
                  *v115 = v128;
                  if (!v126)
                  {
                    break;
                  }

                  v126 = (v126 - 1) >> 1;
                  v127 = &v140[v126];
                  v128 = *v127;
                  result = md::MuninPoiLabelSorter::operator()(*v127, v129);
                  v115 = v130;
                }

                while ((result & 1) != 0);
                *v130 = v129;
              }
            }
          }

          v124 = v8-- <= 2;
          a2 = v122;
        }

        while (!v124);
      }

      return result;
    }

    v9 = &v7->i64[v8 >> 1];
    v10 = v9;
    if (v8 >= 0x81)
    {
      v11 = *v9;
      v12 = *v6;
      v13 = md::MuninPoiLabelSorter::operator()(*v9, *v6);
      v14 = *v137;
      v15 = md::MuninPoiLabelSorter::operator()(*v137, v11);
      if (v13)
      {
        if (v15)
        {
          *v6 = v14;
          goto LABEL_27;
        }

        *v6 = v11;
        *v9 = v12;
        v25 = *v137;
        if (md::MuninPoiLabelSorter::operator()(*v137, v12))
        {
          *v9 = v25;
LABEL_27:
          *v137 = v12;
        }
      }

      else if (v15)
      {
        *v9 = v14;
        *v137 = v11;
        v21 = *v9;
        v22 = *v6;
        if (md::MuninPoiLabelSorter::operator()(*v9, *v6))
        {
          *v6 = v21;
          *v9 = v22;
        }
      }

      v26 = v9 - 1;
      v27 = *(v9 - 1);
      v28 = *(v6 + 8);
      v29 = md::MuninPoiLabelSorter::operator()(v27, v28);
      v30 = a2[-1].i64[0];
      v31 = md::MuninPoiLabelSorter::operator()(v30, v27);
      if (v29)
      {
        if (v31)
        {
          *(v6 + 8) = v30;
          goto LABEL_39;
        }

        *(v6 + 8) = v27;
        *v26 = v28;
        v35 = a2[-1].i64[0];
        if (md::MuninPoiLabelSorter::operator()(v35, v28))
        {
          *v26 = v35;
LABEL_39:
          a2[-1].i64[0] = v28;
        }
      }

      else if (v31)
      {
        *v26 = v30;
        a2[-1].i64[0] = v27;
        v32 = *v26;
        v33 = *(v6 + 8);
        if (md::MuninPoiLabelSorter::operator()(*v26, v33))
        {
          *(v6 + 8) = v32;
          *v26 = v33;
        }
      }

      v38 = v9[1];
      v37 = v9 + 1;
      v36 = v38;
      v39 = *(v6 + 16);
      v40 = md::MuninPoiLabelSorter::operator()(v38, v39);
      v41 = a2[-2].i64[1];
      v42 = md::MuninPoiLabelSorter::operator()(v41, v38);
      if (v40)
      {
        if (v42)
        {
          *(v6 + 16) = v41;
          goto LABEL_48;
        }

        *(v6 + 16) = v36;
        *v37 = v39;
        v45 = a2[-2].i64[1];
        if (md::MuninPoiLabelSorter::operator()(v45, v39))
        {
          *v37 = v45;
LABEL_48:
          a2[-2].i64[1] = v39;
        }
      }

      else if (v42)
      {
        *v37 = v41;
        a2[-2].i64[1] = v36;
        v43 = *v37;
        v44 = *(v6 + 16);
        if (md::MuninPoiLabelSorter::operator()(*v37, v44))
        {
          *(v6 + 16) = v43;
          *v37 = v44;
        }
      }

      v46 = *v10;
      v47 = *v26;
      v48 = md::MuninPoiLabelSorter::operator()(*v10, *v26);
      v49 = *v37;
      v50 = md::MuninPoiLabelSorter::operator()(*v37, v46);
      if (v48)
      {
        if ((v50 & 1) == 0)
        {
          *v26 = v46;
          *v10 = v47;
          v26 = v10;
          v46 = v49;
          if (!md::MuninPoiLabelSorter::operator()(v49, v47))
          {
            v46 = v47;
LABEL_56:
            v51 = *v6;
            *v6 = v46;
            *v10 = v51;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!v50)
        {
          goto LABEL_56;
        }

        *v10 = v49;
        *v37 = v46;
        v37 = v10;
        v46 = v47;
        if ((md::MuninPoiLabelSorter::operator()(v49, v47) & 1) == 0)
        {
          v46 = v49;
          goto LABEL_56;
        }
      }

      *v26 = v49;
      *v37 = v47;
      goto LABEL_56;
    }

    v16 = v7->i64[0];
    v17 = *v9;
    v18 = md::MuninPoiLabelSorter::operator()(*v6, *v9);
    v19 = *v137;
    v20 = md::MuninPoiLabelSorter::operator()(*v137, v16);
    if ((v18 & 1) == 0)
    {
      if (v20)
      {
        *v6 = v19;
        *v137 = v16;
        v23 = *v6;
        v24 = *v9;
        if (md::MuninPoiLabelSorter::operator()(*v6, *v9))
        {
          *v9 = v23;
          *v6 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v20)
    {
      *v9 = v19;
    }

    else
    {
      *v9 = v16;
      *v6 = v17;
      v34 = *v137;
      if (!md::MuninPoiLabelSorter::operator()(*v137, v17))
      {
        goto LABEL_57;
      }

      *v6 = v34;
    }

    *v137 = v17;
LABEL_57:
    --a3;
    v52 = *v6;
    v53 = v6;
    if (a4 & 1) != 0 || (v53 = v6, (md::MuninPoiLabelSorter::operator()(*(v6 - 8), *v6)))
    {
      do
      {
        v54 = v53;
        v56 = *(v53 + 8);
        v53 += 8;
        v55 = v56;
      }

      while ((md::MuninPoiLabelSorter::operator()(v56, v52) & 1) != 0);
      if (v54 == v6)
      {
        a2 = v136;
        do
        {
          if (v53 >= a2)
          {
            break;
          }

          v58 = a2[-1].i64[1];
          a2 = (a2 - 8);
        }

        while ((md::MuninPoiLabelSorter::operator()(v58, v52) & 1) == 0);
      }

      else
      {
        do
        {
          v57 = a2[-1].i64[1];
          a2 = (a2 - 8);
        }

        while (!md::MuninPoiLabelSorter::operator()(v57, v52));
      }

      if (v53 < a2)
      {
        v59 = a2->i64[0];
        v60 = v53;
        v61 = a2;
        do
        {
          v60->i64[0] = v59;
          v61->i64[0] = v55;
          do
          {
            v54 = v60;
            v62 = v60->i64[1];
            v60 = (v60 + 8);
            v55 = v62;
          }

          while ((md::MuninPoiLabelSorter::operator()(v62, v52) & 1) != 0);
          do
          {
            v63 = v61[-1].i64[1];
            v61 = (v61 - 8);
            v59 = v63;
          }

          while (!md::MuninPoiLabelSorter::operator()(v63, v52));
        }

        while (v60 < v61);
      }

      if (v54 != v6)
      {
        *v6 = v54->i64[0];
      }

      v54->i64[0] = v52;
      v64 = v53 >= a2;
      a2 = v136;
      if (!v64)
      {
        goto LABEL_78;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **>(v6, v54->i64);
      v7 = &v54->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **>(&v54->i64[1], v136->i64);
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
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,false>(v6, v54, a3, a4 & 1);
        a4 = 0;
        v7 = &v54->u64[1];
      }
    }

    else
    {
      result = md::MuninPoiLabelSorter::operator()(v52, *v137);
      if (result)
      {
        v7 = v6;
        do
        {
          v66 = v7->i64[1];
          v7 = (v7 + 8);
          result = md::MuninPoiLabelSorter::operator()(v52, v66);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v67 = v6 + 8;
        do
        {
          v7 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 8;
          result = md::MuninPoiLabelSorter::operator()(v52, v7->i64[0]);
        }

        while (!result);
      }

      v68 = a2;
      if (v7 < a2)
      {
        v68 = a2;
        do
        {
          v69 = v68[-1].i64[1];
          v68 = (v68 - 8);
          result = md::MuninPoiLabelSorter::operator()(v52, v69);
        }

        while ((result & 1) != 0);
      }

      if (v7 < v68)
      {
        v70 = v7->i64[0];
        v71 = v68->i64[0];
        do
        {
          v7->i64[0] = v71;
          v68->i64[0] = v70;
          do
          {
            v72 = v7->i64[1];
            v7 = (v7 + 8);
            v70 = v72;
          }

          while (!md::MuninPoiLabelSorter::operator()(v52, v72));
          do
          {
            v73 = v68[-1].i64[1];
            v68 = (v68 - 8);
            v71 = v73;
            result = md::MuninPoiLabelSorter::operator()(v52, v73);
          }

          while ((result & 1) != 0);
        }

        while (v7 < v68);
      }

      v74 = &v7[-1].i64[1];
      if (&v7[-1].u64[1] != v140)
      {
        *v140 = *v74;
      }

      a4 = 0;
      *v74 = v52;
    }
  }

  v84 = v7->i64[0];
  v85 = v7->i64[1];
  v86 = md::MuninPoiLabelSorter::operator()(v85, v7->i64[0]);
  v87 = *v137;
  result = md::MuninPoiLabelSorter::operator()(*v137, v85);
  if ((v86 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v7->i64[1] = v87;
    *v137 = v85;
    v80 = v7->i64[0];
    v81 = v7->i64[1];
LABEL_166:
    result = md::MuninPoiLabelSorter::operator()(v81, v80);
    if (result)
    {
      *v7 = vextq_s8(*v7, *v7, 8uLL);
    }

    return result;
  }

  if (result)
  {
    v7->i64[0] = v87;
  }

  else
  {
    v7->i64[0] = v85;
    v7->i64[1] = v84;
    v134 = *v137;
    result = md::MuninPoiLabelSorter::operator()(*v137, v84);
    if (!result)
    {
      return result;
    }

    v7->i64[1] = v134;
  }

  *v137 = v84;
  return result;
}

void *md::MuninStandardLabeler::placeLabels(void *result, void *a2, unint64_t a3)
{
  v4 = a2[1] - *a2;
  v5 = v4 >> 3;
  if (v4)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    if (v5 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4 >> 3;
    }

    while (1)
    {
      v11 = *(*a2 + 8 * v8);
      if (*(v11 + 1378) == 1)
      {
        if (*(*(v7 + 3) + 3650) == 1)
        {
          v12 = *(v7 + 7);
          v14 = *(v11 + 328);
          result = md::LabelCollider::collideItems(v12, &v14, 1);
        }

        else
        {
          *(v11 + 352) = 0;
          v13 = *(v11 + 24);
          if (v13)
          {
            (*(*v13 + 32))(v13, v11, 0);
          }

          if (*(v11 + 1373) == 1 && *(v11 + 288) == *(v11 + 264))
          {
            *(v11 + 1373) = 0;
            *(v11 + 1338) = 0;
          }

          if ((*(v11 + 1379) & 1) == 0)
          {
            *(v11 + 1379) = 1;
            if (*(v11 + 1378) == 1)
            {
              md::Label::updateStateMachineForStaging(v11, 4, 37);
            }
          }

          result = *(v11 + 288);
          if (result)
          {
            result = (*(*result + 456))(result, 1);
          }

          if ((*(v11 + 1379) & 1) == 0 && (*(v11 + 844) == 2 || *(v11 + 845) != 20))
          {
            result = md::Label::updateStateMachineForStaging(v11, 6, 20);
          }
        }
      }

      if (*(v11 + 844) == 2 && ++v9 >= a3)
      {
        break;
      }

      if (v10 == ++v8)
      {
        return result;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 < v5)
  {
    do
    {
      result = md::Label::updateStateMachineForStaging(*(*a2 + 8 * v8++), 2, 36);
    }

    while (v5 != v8);
  }

  return result;
}

uint64_t md::MuninPoiLabelSorter::operator()(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 1328));
  v3 = atomic_load((a2 + 1328));
  if ((v3 ^ v2))
  {
    v4 = atomic_load((a1 + 1328));
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    if (v5)
    {
      if (v5 == v6)
      {
        v4 = *(a1 + 32) < *(a2 + 32);
        return v4 & 1;
      }

      v7 = *(v5 + 72);
      if (v7)
      {
        a1 = v7;
      }
    }

    if (v6)
    {
      v8 = *(v6 + 72);
      if (v8)
      {
        a2 = v8;
      }
    }

    v4 = *(a1 + 804) < *(a2 + 804);
  }

  return v4 & 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = md::MuninPoiLabelSorter::operator()(*a2, *a1);
  v11 = *a3;
  v12 = md::MuninPoiLabelSorter::operator()(*a3, v8);
  if (v10)
  {
    if (v12)
    {
      *a1 = v11;
LABEL_9:
      *a3 = v9;
      v8 = v9;
      goto LABEL_11;
    }

    *a1 = v8;
    *a2 = v9;
    v8 = *a3;
    if (md::MuninPoiLabelSorter::operator()(*a3, v9))
    {
      *a2 = v8;
      goto LABEL_9;
    }
  }

  else if (v12)
  {
    *a2 = v11;
    *a3 = v8;
    v13 = *a2;
    v14 = *a1;
    if (md::MuninPoiLabelSorter::operator()(*a2, *a1))
    {
      *a1 = v13;
      *a2 = v14;
      v8 = *a3;
    }
  }

  else
  {
    v8 = v11;
  }

LABEL_11:
  v15 = *a4;
  result = md::MuninPoiLabelSorter::operator()(*a4, v8);
  if (result)
  {
    *a3 = v15;
    *a4 = v8;
    v17 = *a3;
    v18 = *a2;
    result = md::MuninPoiLabelSorter::operator()(*a3, *a2);
    if (result)
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *a1;
      result = md::MuninPoiLabelSorter::operator()(*a2, *a1);
      if (result)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **>(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v14 = *a1;
        v15 = *(a1 + 8);
        v16 = md::MuninPoiLabelSorter::operator()(v15, *a1);
        v17 = *(a2 - 1);
        v18 = md::MuninPoiLabelSorter::operator()(v17, v15);
        if (v16)
        {
          if (v18)
          {
            *a1 = v17;
          }

          else
          {
            *a1 = v15;
            *(a1 + 8) = v14;
            v25 = *(a2 - 1);
            if (!md::MuninPoiLabelSorter::operator()(v25, v14))
            {
              return 1;
            }

            *(a1 + 8) = v25;
          }

          *(a2 - 1) = v14;
          return 1;
        }

        if (!v18)
        {
          return 1;
        }

        *(a1 + 8) = v17;
        *(a2 - 1) = v15;
        v12 = *a1;
        v13 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninPoiLabelSorter &,md::Label **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v7 = *(a2 - 1);
        v8 = *(a1 + 24);
        if (!md::MuninPoiLabelSorter::operator()(v7, v8))
        {
          return 1;
        }

        *(a1 + 24) = v7;
        *(a2 - 1) = v8;
        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        if (!md::MuninPoiLabelSorter::operator()(v9, v10))
        {
          return 1;
        }

        *(a1 + 16) = v9;
        *(a1 + 24) = v10;
        v11 = *(a1 + 8);
        if (!md::MuninPoiLabelSorter::operator()(v9, v11))
        {
          return 1;
        }

        *(a1 + 8) = v9;
        *(a1 + 16) = v11;
        v12 = *a1;
        v13 = v9;
        break;
      default:
        goto LABEL_16;
    }

    if (md::MuninPoiLabelSorter::operator()(v13, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
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
    if (md::MuninPoiLabelSorter::operator()(v5, *a1))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_16:
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = md::MuninPoiLabelSorter::operator()(v20, *a1);
  v23 = (a1 + 16);
  v22 = *(a1 + 16);
  v24 = md::MuninPoiLabelSorter::operator()(v22, v20);
  if (v21)
  {
    if (v24)
    {
      *a1 = v22;
      *(a1 + 16) = v19;
    }

    else
    {
      *a1 = v20;
      *(a1 + 8) = v19;
      if (md::MuninPoiLabelSorter::operator()(v22, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v24)
  {
    *(a1 + 8) = v22;
    *(a1 + 16) = v20;
    if (md::MuninPoiLabelSorter::operator()(v22, v19))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v27 = 0;
  for (i = 24; ; i += 8)
  {
    v29 = *v26;
    v30 = *v23;
    if (md::MuninPoiLabelSorter::operator()(*v26, *v23))
    {
      v31 = i;
      while (1)
      {
        *(a1 + v31) = v30;
        v32 = v31 - 8;
        if (v31 == 8)
        {
          break;
        }

        v30 = *(a1 + v31 - 16);
        v33 = md::MuninPoiLabelSorter::operator()(v29, v30);
        v31 = v32;
        if ((v33 & 1) == 0)
        {
          v34 = (a1 + v32);
          goto LABEL_40;
        }
      }

      v34 = a1;
LABEL_40:
      *v34 = v29;
      if (++v27 == 8)
      {
        break;
      }
    }

    v23 = v26++;
    if (v26 == a2)
    {
      return 1;
    }
  }

  return v26 + 1 == a2;
}

void md::MuninStandardLabeler::updateOcclusionQueries(md::MuninStandardLabeler *this)
{
  v1 = *(this + 9);
  for (i = *(this + 10); v1 != i; v1 += 2)
  {
    if (*(*v1 + 482) == 1)
    {
      md::Label::submitOcclusionQuery(*v1, *(*(this + 3) + 360), *(*(this + 3) + 424), *(*v1 + 1298));
    }
  }
}

void md::MuninStandardLabeler::synchronizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  md::StandardLabeler::synchronizedUpdate(a1, a2, a3, a4);
  if (*(a1 + 440) == 1)
  {
    v5 = *(a1 + 72);
    for (i = *(a1 + 80); v5 != i; v5 += 2)
    {
      v7 = *v5;
      v7[480] = 1;
      if (v7[844] != 2)
      {
        v7[485] = 0;
      }
    }

    *(a1 + 440) = 0;
  }

  if (*(a1 + 442) == 1)
  {
    *(a1 + 442) = 0;
    v8 = *(*(a1 + 24) + 3176);
    v10 = *(a1 + 72);
    v9 = *(a1 + 80);
    if (v8 == 1)
    {
      while (1)
      {
        if (v10 == v9)
        {
          return;
        }

        v11 = *v10;
        if ((*(*v10 + 1152) & 0xFD) == 1)
        {
          v12 = *(v11 + 272);
          if (v12)
          {
            if ((*(*v12 + 752))(v12))
            {
              goto LABEL_17;
            }

            v11 = *v10;
          }
        }

        v13 = *(v11 + 264);
        if (v13 || (v13 = *(v11 + 272)) != 0)
        {
          (*(*v13 + 520))(v13, 1);
        }

LABEL_17:
        v10 += 2;
      }
    }

    while (v10 != v9)
    {
      v14 = *(*v10 + 264);
      if (v14 || (v14 = *(*v10 + 272)) != 0)
      {
        (*(*v14 + 520))(v14, 0);
      }

      v10 += 2;
    }
  }
}

void md::MuninStandardLabeler::~MuninStandardLabeler(md::MuninStandardLabeler *this)
{
  md::MuninStandardLabeler::~MuninStandardLabeler(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A020F0;
  *(this + 1) = &unk_1F2A022D8;
  *(this + 2) = &unk_1F2A02320;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 53) = v2;
    operator delete(v2);
  }

  v3 = *(this + 49);
  if (v3)
  {
    *(this + 50) = v3;
    operator delete(v3);
  }

  md::StandardLabeler::~StandardLabeler(this);
}

void *md::ElevationRequestUpdater::getResource(void *result, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    if (a2 == a3)
    {
      goto LABEL_8;
    }

    if (*a2 == 50)
    {
      break;
    }

    a2 += 48;
  }

  if (a2 == a3)
  {
LABEL_8:
    *result = 0;
    result[1] = 0;
    return result;
  }

  v3 = *(a2 + 24);
  v5 = *(v3 + 112);
  v4 = *(v3 + 120);
  *result = v5;
  result[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void md::ElevationRequestUpdater::getDsmResource(void *a1, atomic_uchar *a2, uint64_t *a3)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v3 = *a3;
    v4 = a3[1];
    if (*a3 == v4)
    {
      goto LABEL_16;
    }

    v5 = *a3;
    while (*v5 != 20)
    {
      v5 += 48;
      if (v5 == v4)
      {
        goto LABEL_16;
      }
    }

    if (v5 == v4)
    {
LABEL_16:
      v10 = a3[1];

      md::ElevationRequestUpdater::getResource(a1, v3, v10);
    }

    else
    {
      v6 = *(v5 + 24);
      v7 = *(v6 + 112);
      v8 = *(v6 + 120);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7 && (v9 = *(v7 + 144)) != 0 && *v9 != v9[1])
      {
        *a1 = v7;
        a1[1] = v8;
      }

      else
      {
        md::ElevationRequestUpdater::getResource(a1, *a3, a3[1]);
        if (v8)
        {

          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }
      }
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t md::ElevationRequestUpdater::updateRequest(uint64_t a1, gdc::LayerDataRequest **a2, uint64_t a3)
{
  if ((atomic_load_explicit(a1, memory_order_acquire) & 1) == 0)
  {
    return 0;
  }

  v6 = *a2;
  v7 = gdc::LayerDataRequest::requiredRequestedResources(*a2);
  v9 = *a3;
  v8 = *(a3 + 8);
  v10 = v8;
  if (*a3 == v8)
  {
    goto LABEL_9;
  }

  v10 = *a3;
  do
  {
    if (*v10 == 50)
    {
      goto LABEL_9;
    }

    v10 += 24;
  }

  while (v10 != v8);
  v10 = *(a3 + 8);
LABEL_9:
  while (v9 != v8)
  {
    if (*v9 == 20)
    {
      goto LABEL_11;
    }

    v9 += 24;
  }

  v9 = *(a3 + 8);
LABEL_11:
  if (v10 != v8 || v9 != v8)
  {
    return 0;
  }

  v12 = *v7;
  v13 = v7[1];
  if (*v7 != v13)
  {
    v14 = *v7;
    while (*v14 != 20)
    {
      v14 += 24;
      if (v14 == v13)
      {
        goto LABEL_26;
      }
    }

    if (v14 != v13)
    {
      v15 = *v7;
      while (*v15 != 20)
      {
        v15 += 24;
        if (v15 == v13)
        {
          v15 = v7[1];
          break;
        }
      }

      if (*(v15 + 4))
      {
        return 0;
      }
    }
  }

LABEL_26:
  if (v12 == v13)
  {
    goto LABEL_36;
  }

  v16 = *v7;
  while (*v16 != 50)
  {
    v16 += 24;
    if (v16 == v13)
    {
      goto LABEL_36;
    }
  }

  if (v16 == v13)
  {
    goto LABEL_36;
  }

  while (*v12 != 50)
  {
    v12 += 24;
    if (v12 == v13)
    {
      v12 = v7[1];
      break;
    }
  }

  if (!*(v12 + 4))
  {
LABEL_36:
    *&v17 = gdc::Tiled::tileFromLayerDataKey(v37, *(v6 + 2));
    v18 = *(a1 + 24);
    v19 = v18[1];
    (*(*v18 + 16))(v35, v17);
    v20 = (*(*v19 + 24))(v19, 20);
    if (v36 != 1 || (v21 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (v20 > BYTE1(v35[0]) || HIDWORD(v20) < BYTE1(v35[0]))
    {
      goto LABEL_56;
    }

    md::FlyoverDsmLayerDataSource::createResourceKey(&v32, *(a1 + 8), **a2, 20, v35, *(*a2 + 14), *(*a2 + 12) & 0xFFFFFFFFFFLL);
    if ((v36 & 1) == 0)
    {
      v29 = std::__throw_bad_optional_access[abi:nn200100]();
      if (v33 != v34)
      {
        free(v33);
      }

      _Unwind_Resume(v29);
    }

    v23 = md::FlyoverMetaData::tileType(*(a1 + 8), v35, 0);
    v24 = v23 > 0xFFu && v23 == 1;
    v25 = v24;
    if (v24)
    {
      gdc::LayerDataRequest::request(*a2, &v32, 0);
    }

    if (v33 != v34)
    {
      free(v33);
    }

    if ((v25 & 1) == 0)
    {
LABEL_56:
      (*(*v19 + 16))(v30, v19, 50, v37);
      v26 = (*(*v19 + 24))(v19, 50);
      if (v31 != 1 || (v27 & 1) == 0)
      {
        return 0;
      }

      if (v26 > BYTE1(v30[0]) || HIDWORD(v26) < BYTE1(v30[0]))
      {
        return 0;
      }

      md::FlyoverDsmLayerDataSource::createResourceKey(&v32, *(a1 + 8), **a2, 50, v30, *(*a2 + 14), *(*a2 + 12) & 0xFFFFFFFFFFLL);
      gdc::LayerDataRequest::request(*a2, &v32, 0);
      if (v33 != v34)
      {
        free(v33);
      }
    }

    return 1;
  }

  return 0;
}

void md::ProgressiveLodRibbon::getVertex(id *this, unsigned int a2)
{
  [this[11] pointAt:a2];
  if (*(this + 128) == 1)
  {
    v5 = v4 * 0.0174532925;
    __sincos_stret(v3 * 0.0174532925);
    __sincos_stret(v5);
  }

  else
  {
    GEOMapPointForCoordinate();
  }
}

void md::ProgressiveLodRibbon::dpSimplifyProgressive(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = a2 + 24 * a4;
  while (1)
  {
    v9 = a3 + 1;
    if (a3 + 1 >= a4)
    {
      break;
    }

    LODWORD(v10) = 0;
    v11 = 0.0;
    v12 = a2 + 24 * v9;
    do
    {
      v13 = gm::Matrix<double,3,1>::distanceSquaredToLineSegment<int,void>(v12, (a2 + 24 * a3), v8, &v15);
      if (v13 <= v11)
      {
        v10 = v10;
      }

      else
      {
        v10 = v9;
      }

      v11 = fmax(v13, v11);
      ++v9;
      v12 += 24;
    }

    while (a4 != v9);
    if (v11 == 0.0)
    {
      break;
    }

    v14 = (0.5 - log2(*(a1 + 120) * *(a1 + 120) * v11) * 0.5);
    if (v14 > 64)
    {
      break;
    }

    md::ProgressiveLodRibbon::dpSimplifyProgressive(a1, a2, a3, v10);
    *(*a1 + v10) = v14;
    a3 = v10;
  }
}

void std::vector<unsigned char>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

double gm::Matrix<double,3,1>::distanceSquaredToLineSegment<int,void>(uint64_t a1, __int128 *a2, uint64_t a3, double *a4)
{
  v8 = gm::Matrix<double,3,1>::nearestPointOffsetAlongLineSegment<int,void>(a1, a2, a3);
  v9 = 0;
  *a4 = v8;
  v15 = *a2;
  v16 = *(a2 + 2);
  do
  {
    *(&v15 + v9) = *(&v15 + v9) + (*(a3 + v9) - *(&v15 + v9)) * v8;
    v9 += 8;
  }

  while (v9 != 24);
  v10 = 0;
  v13 = v15;
  v14 = v16;
  do
  {
    *(&v15 + v10) = *(a1 + v10) - *(&v13 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  v11 = 0;
  result = 0.0;
  do
  {
    result = result + *(&v15 + v11) * *(&v15 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  return result;
}

double gm::Matrix<double,3,1>::nearestPointOffsetAlongLineSegment<int,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v12 + i) = *(a3 + i) - *(a2 + i);
  }

  v4 = 0;
  v10 = v12;
  v11 = v13;
  v5 = 0.0;
  do
  {
    v5 = v5 + *(&v10 + v4) * *(&v10 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  result = 0.0;
  if (v5 > 1.0e-15)
  {
    for (j = 0; j != 24; j += 8)
    {
      *(&v12 + j) = *(a1 + j) - *(a2 + j);
    }

    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + *(&v10 + v8) * *(&v12 + v8);
      v8 += 8;
    }

    while (v8 != 24);
    return fmin(fmax(v9 / v5, 0.0), 1.0);
  }

  return result;
}

void std::__shared_ptr_emplace<md::ProgressiveLodRibbon>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::ProgressiveLodRibbon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02390;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    geo::QuadTile::computeHash((a2 + 16));
    *(a2 + 40) = 0;
  }

  v4 = *(a2 + 32);
  *(a2 + 8) = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v11 == 1)
    {
      v11 = 2;
    }

    else if ((v11 & (v11 - 1)) != 0)
    {
      v12 = v11;
      v13 = v4;
      prime = std::__next_prime(v12);
      v4 = v13;
      v11 = prime;
      v5 = *(a1 + 8);
    }

    if (v11 > v5)
    {
LABEL_15:
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v11 < v5)
    {
      v15 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v16 = vcnt_s8(v5), v16.i16[0] = vaddlv_u8(v16), v16.u32[0] > 1uLL))
      {
        v18 = v4;
        v15 = std::__next_prime(v15);
        v4 = v18;
      }

      else
      {
        v17 = 1 << -__clz(v15 - 1);
        if (v15 >= 2)
        {
          v15 = v17;
        }
      }

      if (v11 <= v15)
      {
        v11 = v15;
      }

      if (v11 < v5)
      {
        if (v11)
        {
          goto LABEL_15;
        }

        v19 = *a1;
        *a1 = 0;
        if (v19)
        {
          v20 = v4;
          operator delete(v19);
          v4 = v20;
        }

        *(a1 + 8) = 0;
      }
    }

    v5 = *(a1 + 8);
  }

  v21 = vcnt_s8(v5);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v4;
    if (v5 <= v4)
    {
      v23 = v4 % v5;
    }
  }

  else
  {
    v23 = (v5 - 1) & v4;
  }

  v24 = *(*a1 + 8 * v23);
  if (v24)
  {
    v25 = *v24;
    if (*v24)
    {
      v26 = 0;
      do
      {
        v27 = *(v25 + 1);
        if (v22 > 1)
        {
          v28 = *(v25 + 1);
          if (v27 >= v5)
          {
            v28 = v27 % v5;
          }
        }

        else
        {
          v28 = v27 & (v5 - 1);
        }

        if (v28 != v23)
        {
          break;
        }

        if (v27 != v4)
        {
          goto LABEL_54;
        }

        if (v25[40] == 1)
        {
          v38 = v4;
          geo::QuadTile::computeHash(v25 + 16);
          v4 = v38;
          v25[40] = 0;
        }

        v29 = *(v25 + 4);
        if (*(a2 + 40))
        {
          v33 = (*(a2 + 17) + ((*(a2 + 16) - 0x61C8864680B583EBLL) << 6) + ((*(a2 + 16) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(a2 + 16) - 0x61C8864680B583EBLL);
          v34 = (*(a2 + 20) + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583EBLL) ^ v33;
          v30 = (*(a2 + 24) + (v34 << 6) + (v34 >> 2) - 0x61C8864680B583EBLL) ^ v34;
          *(a2 + 32) = v30;
          *(a2 + 40) = 0;
        }

        else
        {
          v30 = *(a2 + 32);
        }

        if (v29 == v30 && v25[16] == *(a2 + 16) && v25[17] == *(a2 + 17) && *(v25 + 5) == *(a2 + 20))
        {
          v31 = *(v25 + 6) == *(a2 + 24);
        }

        else
        {
LABEL_54:
          v31 = 0;
        }

        v32 = v31 != (v26 & 1);
        if (v26 & v32)
        {
          break;
        }

        v26 |= v32;
        v24 = *v24;
        v25 = *v24;
      }

      while (*v24);
      v5 = *(a1 + 8);
      v35 = vcnt_s8(v5);
      v35.i16[0] = vaddlv_u8(v35);
      v22 = v35.u32[0];
    }
  }

  v36 = *(a2 + 8);
  if (v22 > 1)
  {
    if (v36 >= v5)
    {
      v36 %= v5;
    }
  }

  else
  {
    v36 &= v5 - 1;
  }

  if (!v24)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    *(*a1 + 8 * v36) = a1 + 16;
    if (!*a2)
    {
      goto LABEL_78;
    }

    v37 = *(*a2 + 8);
    if (v22 > 1)
    {
      if (v37 >= v5)
      {
        v37 %= v5;
      }
    }

    else
    {
      v37 &= v5 - 1;
    }

LABEL_77:
    *(*a1 + 8 * v37) = a2;
    goto LABEL_78;
  }

  *a2 = *v24;
  *v24 = a2;
  if (*a2)
  {
    v37 = *(*a2 + 8);
    if (v22 > 1)
    {
      if (v37 >= v5)
      {
        v37 %= v5;
      }
    }

    else
    {
      v37 &= v5 - 1;
    }

    if (v37 != v36)
    {
      goto LABEL_77;
    }
  }

LABEL_78:
  ++*(a1 + 24);
}

uint64_t md::PolarFlyoverLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

uint64_t md::PolarFlyoverLayerDataSource::updateRequest(uint64_t a1, gdc::LayerDataRequest **a2)
{
  v4 = gdc::LayerDataRequest::requiredRequestedResources(*a2);
  v6 = *v4;
  v5 = *(v4 + 8);
  if (*v4 != v5)
  {
    while (*(a1 + 592) != *v6)
    {
      v6 += 24;
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    v5 = v6;
  }

LABEL_6:
  if (*(v5 + 4))
  {
    v7 = *(v5 + 3);
    v8 = *(v7 + 24);
    v21 = *(v7 + 16);
    v22[0] = v25;
    v22[1] = v25;
    v23 = v25;
    v24 = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>(v22, v8, *(v7 + 32));
    v25[4] = *(v7 + 88);
    v26 = *(v7 + 96);
    v9 = *(a1 + 800);
    v10 = *(a1 + 808);
    if (v9 == v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = *v9;
        v13 = *v4;
        v14 = *(v4 + 8);
        while (v13 != v14)
        {
          if (v12 == *v13)
          {
            if (v13 != v14)
            {
              goto LABEL_19;
            }

            break;
          }

          v13 += 24;
        }

        v15 = v21;
        gdc::ResourceKey::keyData(v17, &v21);
        gdc::ResourceKey::ResourceKey(&v18, v15, v12, v17, HIDWORD(v21), 2147483646);
        if (v17[0] != v17[2])
        {
          free(v17[0]);
        }

        gdc::LayerDataRequest::request(*a2, &v18, 0);
        if (v19 != v20)
        {
          free(v19);
        }

        v11 = 1;
LABEL_19:
        ++v9;
      }

      while (v9 != v10);
    }

    if (v22[0] != v23)
    {
      free(v22[0]);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void md::PolarFlyoverLayerDataSource::createLayerData(void *a1@<X0>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v15, *(a1 + 296), *a3, a3[1]);
  if (v15)
  {
    md::PolarFlyoverLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)const::$_0::operator()(&v14, a1, v15);
    memset(__src, 0, sizeof(__src));
    v7 = a1[101];
    v8 = a1[100];
    v9 = v7 - v8;
    if (v7 != v8)
    {
      if (!((v9 >> 1) >> 60))
      {
        v17 = __src;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v9 >> 1);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    memset(__p, 0, sizeof(__p));
    gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
    std::atomic_load[abi:nn200100]<md::RegistryManager>(&v11, a1 + 95);
    md::RegistryManager::vendRegistry(&v10, v11);
  }

  *a4 = 0;
  a4[1] = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2DE6EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  a14 = &a32;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a14);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  _Unwind_Resume(a1);
}

void md::PolarFlyoverLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)const::$_0::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 144))
  {
    LODWORD(v5[0]) = 1;
    LODWORD(v3) = 1;
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>(&v4, v5, &v3);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1B2DE716C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::PolarFlyoverTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::PolarFlyoverLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0::operator() const(md::RasterTileResource *)::{lambda(ggl::ResourceAccessor *)#1},std::allocator<md::PolarFlyoverLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0::operator() const(md::RasterTileResource *)::{lambda(ggl::ResourceAccessor *)#1}>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A02470;
  a2[1] = v2;
  return result;
}

void md::PolarFlyoverLayerDataSource::~PolarFlyoverLayerDataSource(md::PolarFlyoverLayerDataSource *this)
{
  md::PolarFlyoverLayerDataSource::~PolarFlyoverLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A023C8;
  v2 = *(this + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 100);
  if (v3)
  {
    *(this + 101) = v3;
    operator delete(v3);
  }

  *(this + 97) = &unk_1F2A59028;

  v4 = *(this + 96);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

uint64_t std::__shared_ptr_pointer<ggl::FlyoverCommon::PolarMesh *,std::shared_ptr<ggl::Mesh>::__shared_ptr_default_delete<ggl::Mesh,ggl::FlyoverCommon::PolarMesh>,std::allocator<ggl::FlyoverCommon::PolarMesh>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::FlyoverCommon::PolarMesh *,std::shared_ptr<ggl::Mesh>::__shared_ptr_default_delete<ggl::Mesh,ggl::FlyoverCommon::PolarMesh>,std::allocator<ggl::FlyoverCommon::PolarMesh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PolygonOverlay::AntialiasVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolygonOverlay::AntialiasVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PolygonOverlay::AntialiasMesh::~AntialiasMesh(ggl::PolygonOverlay::AntialiasMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolygonOverlay::AntialiasMesh::~AntialiasMesh(ggl::PolygonOverlay::AntialiasMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PolygonOverlay::AntialiasVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolygonOverlay::AntialiasVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::PolygonOverlay::FillPipelineSetup::constantDataIsEnabled(ggl::PolygonOverlay::FillPipelineSetup *this, unint64_t a2)
{
  if (a2 >= 3)
  {
    if (a2 == 3)
    {
      v2 = *(*(this + 2) + 304);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void ggl::PolygonOverlay::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonOverlay::FillPipelineSetup::FillPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A025D0;
  return a1;
}

uint64_t ggl::PolygonOverlay::AntialiasPipelineSetup::constantDataIsEnabled(ggl::PolygonOverlay::AntialiasPipelineSetup *this, unint64_t a2)
{
  if (a2 >= 3)
  {
    if (a2 == 3)
    {
      v2 = *(*(this + 2) + 304);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void ggl::PolygonOverlay::AntialiasPipelineSetup::~AntialiasPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 112;
        std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<gdc::Registry>>::__destroy_vector::operator()[abi:nn200100](gdc::Registry ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<gdc::Registry>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>::__destroy_vector::operator()[abi:nn200100](&v6);
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

uint64_t std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::hash<std::pair<unsigned long,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::hash<std::pair<unsigned long,unsigned int>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::~__value_func[abi:nn200100]((v2 + 4));
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

void std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1B2DE7C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B2DE83C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>::~__value_func[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void md::RegistryManager::onComponentRemoved(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 376) == 1 && a4 != 0)
  {
    v9 = 8 * a4;
    do
    {
      v10 = *a3;
      v11 = GEOGetVectorKitRegistryManagerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a2 + 40);
        gdc::Registry::stringForComponentTypeId(&__p, a2, a5);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 67109634;
        v16 = v12;
        v17 = 2048;
        v18 = v10;
        v19 = 2080;
        v20 = p_p;
        _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_DEBUG, "[ComponentRemoved] Registry:%d Entity:%llu component:%s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      ++a3;
      v9 -= 8;
    }

    while (v9);
  }
}

uint64_t std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>::~__value_func[abi:nn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)#1},std::allocator<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>::operator()(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    return (*(*v11 + v9))();
  }

  else
  {
    return v9(v11, v6, v7, v8, *a4);
  }
}

__n128 std::__function::__func<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)#1},std::allocator<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A027C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::RegistryManager::onComponentAdded(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 376) == 1 && a4 != 0)
  {
    v9 = 8 * a4;
    do
    {
      v10 = *a3;
      v11 = GEOGetVectorKitRegistryManagerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a2 + 40);
        gdc::Registry::stringForComponentTypeId(&__p, a2, a5);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 67109634;
        v16 = v12;
        v17 = 2048;
        v18 = v10;
        v19 = 2080;
        v20 = p_p;
        _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_DEBUG, "[ComponentAdded] Registry:%d Entity:%llu component:%s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      ++a3;
      v9 -= 8;
    }

    while (v9);
  }
}

void md::RegistryManager::onEntityDeleted(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 376) == 1 && a4 != 0)
  {
    v7 = 8 * a4;
    do
    {
      v8 = *a3;
      v9 = GEOGetVectorKitRegistryManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a2 + 40);
        *buf = 67109376;
        v12 = v10;
        v13 = 2048;
        v14 = v8;
        _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_DEBUG, "[EntityDeleted] Registry:%d Entity:%llu", buf, 0x12u);
      }

      ++a3;
      v7 -= 8;
    }

    while (v7);
  }
}

uint64_t std::__function::__func<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a1[2];
  v7 = a1[3];
  v8 = (a1[1] + (v7 >> 1));
  if (v7)
  {
    return (*(*v8 + v6))();
  }

  else
  {
    return v6(v8, v4, v5, a3[1]);
  }
}

__n128 std::__function::__func<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<unsigned long gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>))::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A02780;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::RegistryManager::onEntityCreated(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 376) == 1 && a4 != 0)
  {
    v7 = 8 * a4;
    do
    {
      v8 = *a3;
      v9 = GEOGetVectorKitRegistryManagerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a2 + 40);
        *buf = 67109376;
        v12 = v10;
        v13 = 2048;
        v14 = v8;
        _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_DEBUG, "[EntityCreated] Registry:%d Entity:%llu", buf, 0x12u);
      }

      ++a3;
      v7 -= 8;
    }

    while (v7);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(gdc::Registry *)>::~__value_func[abi:nn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<unsigned long gdc::Signal<gdc::Registry *>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *))::{lambda(gdc::Registry *)#1},std::allocator<unsigned long gdc::Signal<gdc::Registry *>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *))::{lambda(gdc::Registry *)#1}>,void ()(gdc::Registry *)>::operator()(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    return (*(*v5 + v3))();
  }

  else
  {
    return v3(v5, v2);
  }
}

__n128 std::__function::__func<unsigned long gdc::Signal<gdc::Registry *>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *))::{lambda(gdc::Registry *)#1},std::allocator<unsigned long gdc::Signal<gdc::Registry *>::connect<md::RegistryManager,md::RegistryManager>(md::RegistryManager *,void (md::RegistryManager::*)(gdc::Registry *))::{lambda(gdc::Registry *)#1}>,void ()(gdc::Registry *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A02738;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::RegistryManager::onRegistryDestroyed(md::RegistryManager *this, gdc::Registry *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 376) == 1)
  {
    v3 = GEOGetVectorKitRegistryManagerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a2 + 20);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_DEBUG, "[RegistryDestroyed] Registry:%d", v5, 8u);
    }
  }
}

uint64_t stringForKey(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6[0] = a1;
  v6[1] = a1;
  v3 = *(a2 + 96);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    _Unwind_Resume(v5);
  }

  v7 = v6;
  return (off_1F2A026B0[v3])(&v7);
}

std::string *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<stringForKey(std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&)::$_0,stringForKey(std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&)::$_1,stringForKey(std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&>(uint64_t a1, _BYTE *a2)
{
  v2 = *(*a1 + 8);
  if (*a2)
  {
    v3 = "OverlayRegistry";
  }

  else
  {
    v3 = "PuckRegistry";
  }

  return std::string::__assign_external(v2, v3);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<stringForKey(std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&)::$_0,stringForKey(std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&)::$_1,stringForKey(std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&>(std::string ***a1, uint64_t a2)
{
  v2 = *a1;
  gdc::LayerDataKeyIdPair::keysInt32Str(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  std::string::__assign_external(*v2, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void md::RegistryManager::removeRegistry(md::RegistryManager *this, const gdc::LayerData *a2)
{
  v3 = *(a2 + 2);
  FillRect = grl::IconMetricsRenderResult::getFillRect(a2);
  v5 = gdc::Camera::cameraFrame(FillRect);
  v9 = v3;
  gdc::LayerDataKey::LayerDataKey(&v10, v5);
  v6 = v3;
  gdc::LayerDataKey::LayerDataKey(&v7, &v10);
  v8 = 0;
  md::RegistryManager::removeRegistry(this, &v6);
  if (v8 != -1)
  {
    (off_1F2A026C0[v8])(&v13, &v6);
  }

  if (v11 != v12)
  {
    free(v11);
  }
}

void sub_1B2DE8F08(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26)
{
  if (a21 != -1)
  {
    (off_1F2A026C0[a21])(v26 - 17, &a9, a3, a4, a5, a6, a7, a8);
  }

  if (a24 != a26)
  {
    free(a24);
  }

  _Unwind_Resume(exception_object);
}

void md::RegistryManager::removeRegistry(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = GEOGetVectorKitRegistryManagerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    stringForKey(__p, a2);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "Queuing outgoing key:%s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::mutex::lock((a1 + 144));
  v6 = (a1 + 264);
  v7 = *(a1 + 264);
  if (!v7)
  {
    goto LABEL_13;
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      if (!std::operator<[abi:nn200100]<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>(a2, (v7 + 4)))
      {
        break;
      }

      v7 = *v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_13;
      }
    }

    if (!std::operator<[abi:nn200100]<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>((v8 + 4), a2))
    {
      break;
    }

    v6 = v8 + 1;
    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (!*v6)
  {
LABEL_13:
    operator new();
  }

  std::mutex::unlock((a1 + 144));
}

void std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__erase_unique<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::find<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__remove_node_pointer(a1, v3);
    std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>((v4 + 4));

    operator delete(v4);
  }
}

BOOL std::binary_search[abi:nn200100]<std::__wrap_iter<gdc::Registry **>,gdc::Registry *,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0>(void *a1, void *a2, uint64_t a3)
{
  if (a2 == a1)
  {
    return 0;
  }

  v3 = a2 - a1;
  v4 = *(a3 + 40);
  do
  {
    v5 = v3 >> 1;
    v6 = &a1[v3 >> 1];
    v8 = *v6;
    v7 = v6 + 1;
    v3 += ~(v3 >> 1);
    if (*(v8 + 40) < v4)
    {
      a1 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  return a1 != a2 && v4 >= *(*a1 + 40);
}

void geo::linear_set<unsigned short,std::less<unsigned short>,std::allocator<unsigned short>,std::vector<unsigned short>>::insert(void *a1, char *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4;
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v7 = *a2;
  v6 = *a1;
  while (1)
  {
    v8 = *v6;
    if (v8 >= v7)
    {
      break;
    }

    v6 += 2;
    if (v6 == v4)
    {
      v6 = a1[1];
      goto LABEL_8;
    }
  }

  if (v6 == v4 || v7 != v8)
  {
LABEL_8:
    v9 = a1[2];
    if (v4 >= v9)
    {
      v12 = (v4 - v5) >> 1;
      if (v12 <= -2)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v6 - v5;
      v14 = v9 - v5;
      if (v14 <= v12 + 1)
      {
        v15 = v12 + 1;
      }

      else
      {
        v15 = v14;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = v13 >> 1;
      if (v16)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v16);
      }

      v18 = (2 * v17);
      if (!v17)
      {
        if (v13 < 1)
        {
          if (v6 == v5)
          {
            v25 = 1;
          }

          else
          {
            v25 = v6 - v5;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v25);
        }

        v18 = (v18 - (((v13 >> 1) + 1) & 0x7FFFFFFFFFFFFFFELL));
      }

      *v18 = *a2;
      memcpy(v18 + 1, v6, a1[1] - v6);
      v19 = *a1;
      v26 = v18 + a1[1] - v6 + 2;
      a1[1] = v6;
      v20 = v6 - v19;
      v21 = v18 - (v6 - v19);
      memcpy(v21, v19, v20);
      v22 = *a1;
      *a1 = v21;
      *(a1 + 1) = v26;
      if (v22)
      {

        operator delete(v22);
      }
    }

    else if (v6 == v4)
    {
      *v4 = *a2;
      a1[1] = v4 + 2;
    }

    else
    {
      v10 = v6 + 2;
      if (v4 < 2)
      {
        v11 = a1[1];
      }

      else
      {
        *v4 = *(v4 - 1);
        v11 = (v4 + 2);
      }

      a1[1] = v11;
      if (v4 != v10)
      {
        memmove(v6 + 2, v6, v4 - v10);
        v11 = a1[1];
      }

      v23 = v11 <= a2 || v6 > a2;
      v24 = 2;
      if (v23)
      {
        v24 = 0;
      }

      *v6 = *&a2[v24];
    }
  }
}

void sub_1B2DE9468(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::emplace_back<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&,std::unique_ptr<gdc::Registry>>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 4);
    if ((v10 + 1) > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x124924924924924)
    {
      v13 = 0x249249249249249;
    }

    else
    {
      v13 = v12;
    }

    v30 = a1;
    if (v13)
    {
      if (v13 <= 0x249249249249249)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v27 = 0;
    v28 = 112 * v10;
    v29 = (112 * v10);
    v14 = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](112 * v10, a2);
    v15 = *a3;
    *a3 = 0;
    *(v14 + 104) = v15;
    *&v29 = v29 + 112;
    v16 = *a1;
    v17 = a1[1];
    v18 = v28 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = 0;
      do
      {
        v20 = v16 + v19;
        v21 = v18 + v19;
        *v21 = 0;
        *(v21 + 96) = -1;
        v22 = *(v16 + v19 + 96);
        if (v22 != -1)
        {
          v31 = v18 + v19;
          (off_1F2A026E0[v22])(&v31, v16 + v19);
          *(v21 + 96) = v22;
        }

        v23 = *(v20 + 104);
        *(v20 + 104) = 0;
        *(v21 + 104) = v23;
        v19 += 112;
      }

      while (v16 + v19 != v17);
      do
      {
        std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>(v16);
        v16 += 112;
      }

      while (v16 != v17);
    }

    v24 = *a1;
    *a1 = v18;
    v25 = a1[2];
    v26 = v29;
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    result = std::__split_buffer<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::~__split_buffer(&v27);
    v9 = v26;
  }

  else
  {
    result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](a1[1], a2);
    v8 = *a3;
    *a3 = 0;
    *(v6 + 104) = v8;
    v9 = v6 + 112;
    a1[1] = v6 + 112;
  }

  a1[1] = v9;
  return result;
}

void sub_1B2DE9698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::map<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>::erase[abi:nn200100](uint64_t **a1, uint64_t *a2)
{
  std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__remove_node_pointer(a1, a2);
  std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>((a2 + 4));

  operator delete(a2);
}

void *std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::operator()[abi:nn200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*a2 + 48);

    return v4(a2, a3);
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(v6, v7, v8);
  }
}

void *std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_1B2DE9E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>::emplace<std::pair<unsigned long,unsigned int> const&,std::unique_ptr<gdc::EntityCollector>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = *a3;
  *a3 = 0;
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*a1 == v8)
  {
    goto LABEL_14;
  }

  v10 = *a1;
  while (v4 != *v10 || v6 != *(v10 + 2))
  {
    v10 += 24;
    if (v10 == v8)
    {
      goto LABEL_14;
    }
  }

  if (v10 == v8)
  {
LABEL_14:
    v13 = *(a1 + 16);
    if (v8 >= v13)
    {
      v15 = v8 - v9;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
      v17 = v16 + 1;
      if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 24 * v16;
      *v20 = v4;
      *(v20 + 8) = v6;
      *(v20 + 12) = v5;
      *(v20 + 16) = v7;
      v14 = 24 * v16 + 24;
      v21 = (24 * v16 - v15);
      memcpy(v21, v9, v15);
      *a1 = v21;
      *(a1 + 8) = v14;
      *(a1 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v8 = v4;
      *(v8 + 2) = v6;
      *(v8 + 3) = v5;
      v14 = (v8 + 24);
      *(v8 + 2) = v7;
    }

    *(a1 + 8) = v14;
  }

  else if (v7)
  {
    v12 = *(*v7 + 8);

    v12(v7);
  }
}

void sub_1B2DEA064(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::__erase_unique<gdc::Registry *>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    v6 = vcnt_s8(v2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
      if (v5 >= *&v2)
      {
        v7 = v5 % *&v2;
      }
    }

    else
    {
      v7 = v5 & (*&v2 - 1);
    }

    v8 = *a1;
    v9 = *(*a1 + 8 * v7);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *&v2 - 1;
        do
        {
          v12 = v10[1];
          if (v12 == v5)
          {
            if (v10[2] == a2)
            {
              v13 = v10[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
                }
              }

              else
              {
                v13 &= v11;
              }

              v14 = *(v8 + 8 * v13);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v10);
              if (v15 == a1 + 2)
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v6.u32[0] > 1uLL)
              {
                if (v16 >= *&v2)
                {
                  v16 %= *&v2;
                }
              }

              else
              {
                v16 &= v11;
              }

              if (v16 != v13)
              {
LABEL_36:
                if (!*v10)
                {
                  goto LABEL_37;
                }

                v17 = *(*v10 + 1);
                if (v6.u32[0] > 1uLL)
                {
                  if (v17 >= *&v2)
                  {
                    v17 %= *&v2;
                  }
                }

                else
                {
                  v17 &= v11;
                }

                if (v17 != v13)
                {
LABEL_37:
                  *(v8 + 8 * v13) = 0;
                }
              }

              v18 = *v10;
              if (*v10)
              {
                v19 = *(v18 + 8);
                if (v6.u32[0] > 1uLL)
                {
                  if (v19 >= *&v2)
                  {
                    v19 %= *&v2;
                  }
                }

                else
                {
                  v19 &= v11;
                }

                if (v19 != v13)
                {
                  *(*a1 + 8 * v19) = v15;
                  v18 = *v10;
                }
              }

              *v15 = v18;
              *v10 = 0;
              --a1[3];
              v20 = v10 + 3;
              std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>::__destroy_vector::operator()[abi:nn200100](&v20);

              operator delete(v10);
              return;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v12 >= *&v2)
              {
                v12 %= *&v2;
              }
            }

            else
            {
              v12 &= v11;
            }

            if (v12 != v7)
            {
              return;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*a2 + 40);
  v6 = *(*result + 40);
  v7 = *a3;
  v8 = *(*a3 + 40);
  if (v5 >= v6)
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v3;
      v9 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v9;
      }
    }
  }

  else
  {
    if (v8 >= v5)
    {
      *result = v3;
      *a2 = v4;
      if (*(*a3 + 40) >= v6)
      {
        return result;
      }

      *a2 = *a3;
    }

    else
    {
      *result = v7;
    }

    *a3 = v4;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 40);
  v8 = *(*result + 40);
  v9 = *a3;
  v10 = *(*a3 + 40);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 40) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 40) < *(v5 + 40))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 40) < *(*a2 + 40))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 40) < *(*result + 40))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 40) < *(*a4 + 40))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 40) < *(*a3 + 40))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 40) < *(*a2 + 40))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 40) < *(*result + 40))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(void *result, void *a2)
{
  if (result != a2)
  {
    while (result + 1 != a2)
    {
      v3 = *result;
      v2 = result[1];
      ++result;
      v4 = *(v2 + 40);
      if (v4 < *(v3 + 40))
      {
        v5 = result;
        do
        {
          *v5 = v3;
          v3 = *(v5 - 2);
          --v5;
        }

        while (v4 < *(v3 + 40));
        *v5 = v2;
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,gdc::Registry **>(uint64_t result, void *a2, void *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = *v5;
      v11 = v4;
      do
      {
        v12 = *v11;
        if (*(*v11 + 40) < *(v10 + 40))
        {
          *v11 = v10;
          *v5 = v12;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(v5, v6, v5);
          v10 = *v5;
        }

        ++v11;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v13 = 0;
        v14 = *v5;
        v15 = v5;
        do
        {
          v16 = &v15[v13];
          v17 = v16 + 1;
          v18 = v16[1];
          v19 = (2 * v13) | 1;
          v13 = 2 * v13 + 2;
          if (v13 >= v6)
          {
            v13 = v19;
          }

          else
          {
            v22 = v16[2];
            v20 = v16 + 2;
            v21 = v22;
            result = *(v22 + 40);
            if (*(v18 + 40) >= result)
            {
              v13 = v19;
            }

            else
            {
              v18 = v21;
              v17 = v20;
            }
          }

          *v15 = v18;
          v15 = v17;
        }

        while (v13 <= ((v6 - 2) >> 1));
        if (v17 == --v4)
        {
          *v17 = v14;
        }

        else
        {
          *v17 = *v4;
          *v4 = v14;
          v23 = (v17 - v5 + 8) >> 3;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (!v24)
          {
            v26 = v25 >> 1;
            v27 = &v5[v26];
            v28 = *v27;
            v29 = *v17;
            v30 = *(*v17 + 40);
            if (*(*v27 + 40) < v30)
            {
              do
              {
                v31 = v27;
                *v17 = v28;
                if (!v26)
                {
                  break;
                }

                v26 = (v26 - 1) >> 1;
                v27 = &v5[v26];
                v28 = *v27;
                v17 = v31;
              }

              while (*(*v27 + 40) < v30);
              *v31 = v29;
            }
          }
        }

        v24 = v6-- <= 2;
      }

      while (!v24);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,gdc::Registry **,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (v3 >= *(*(a2 - 1) + 40))
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      ++v6;
    }

    while (v3 >= *(*v4 + 40));
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
    }

    while (v3 >= *(v5 + 40));
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v3 < *(v7 + 40));
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      *v4 = v9;
      *a2 = v8;
      do
      {
        v10 = v4[1];
        ++v4;
        v8 = v10;
      }

      while (v3 >= *(v10 + 40));
      do
      {
        v11 = *--a2;
        v9 = v11;
      }

      while (v3 < *(v11 + 40));
    }

    while (v4 < a2);
  }

  if (v4 - 1 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

void *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,gdc::Registry **,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &>(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = a1;
  do
  {
    v5 = v4;
    v7 = v4[1];
    ++v4;
    v6 = v7;
  }

  while (*(v7 + 40) < v3);
  if (v5 == a1)
  {
    do
    {
      if (v4 >= a2)
      {
        break;
      }

      v9 = *--a2;
    }

    while (*(v9 + 40) >= v3);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while (*(v8 + 40) >= v3);
  }

  if (v4 < a2)
  {
    v10 = *a2;
    v11 = v4;
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v6;
      do
      {
        v5 = v11;
        v13 = v11[1];
        ++v11;
        v6 = v13;
      }

      while (*(v13 + 40) < v3);
      do
      {
        v14 = *--v12;
        v10 = v14;
      }

      while (*(v14 + 40) >= v3);
    }

    while (v11 < v12);
  }

  if (v5 != a1)
  {
    *a1 = *v5;
  }

  *v5 = v2;
  return v5;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 40);
      v8 = *(*a1 + 40);
      v9 = *(a2 - 1);
      v10 = *(v9 + 40);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 40) < *(*a1 + 40))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 40) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
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

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 40);
    v26 = *(*a1 + 40);
    v27 = *(v23 + 40);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 40) < *(v21 + 40))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 40);
          if (v45 < *(v44 + 40))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 40))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
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
    if (*(v3 + 40) < *(*a1 + 40))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 40);
  v16 = *(*a1 + 40);
  v17 = *(v11 + 40);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 40);
    if (v38 < *(v37 + 40))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 40))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      v9 = *v7;
      if (v8 < a2 && *(v9 + 40) < *(v7[1] + 40))
      {
        v9 = v7[1];
        ++v7;
        v6 = v8;
      }

      v10 = *a3;
      v11 = *(*a3 + 40);
      if (*(v9 + 40) >= v11)
      {
        do
        {
          v12 = v7;
          *a3 = v9;
          if (v4 < v6)
          {
            break;
          }

          v13 = (2 * v6) | 1;
          v7 = (result + 8 * v13);
          v14 = 2 * v6 + 2;
          v9 = *v7;
          if (v14 < a2 && *(v9 + 40) < *(v7[1] + 40))
          {
            v9 = v7[1];
            ++v7;
            v13 = v14;
          }

          a3 = v12;
          v6 = v13;
        }

        while (*(v9 + 40) >= v11);
        *v12 = v10;
      }
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::components::NonTiled>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::components::NonTiled>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A02710;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::components::NonTiled>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A02710;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

uint64_t gdc::ObjectHolder<md::MapDataType>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::MapDataType>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0F168;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C40BDFB0063);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::MapDataType>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A0F168;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40BDFB0063);
  }

  return a1;
}

uint64_t *std::insert_iterator<std::set<md::LayerDataIdentWithWorld>>::operator=[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *a1 + 8;
  if (v4 == v3 || ((v5 = *(a2 + 4), v6 = v5, v7 = *(v3 + 32), v8 = *a2, v9 = *(v3 + 7), v5 != v7) ? (v10 = v5 < v7) : (v10 = *a2 < v9), v10))
  {
    v11 = *v3;
    v12 = a1[1];
    if (**a1 == v3)
    {
      goto LABEL_25;
    }

    if (v11)
    {
      v13 = *v3;
      do
      {
        v12 = v13;
        v13 = *(v13 + 8);
      }

      while (v13);
    }

    else
    {
      v19 = a1[1];
      do
      {
        v12 = *(v19 + 16);
        v20 = *v12 == v19;
        v19 = v12;
      }

      while (v20);
    }

    v21 = *(v12 + 32);
    v22 = *(a2 + 4);
    v8 = *a2;
    if (v22 == v21 ? *(v12 + 28) < *a2 : v21 < v22)
    {
LABEL_25:
      if (v11)
      {
        v31 = v12;
        v3 = (v12 + 8);
      }

      else
      {
        v31 = a1[1];
      }

      goto LABEL_42;
    }

    LOBYTE(v6) = *(a2 + 4);
LABEL_28:
    v3 = std::__tree<md::LayerDataIdentWithWorld>::__find_equal<md::LayerDataIdentWithWorld>(*a1, &v31, v8, v6);
    goto LABEL_42;
  }

  v14 = v9 < v8;
  if (v6 == v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = v7 < v6;
  }

  if (!v15)
  {
    v24 = a1[1];
    goto LABEL_44;
  }

  v16 = v3[1];
  if (v16)
  {
    v17 = v3[1];
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    v25 = a1[1];
    do
    {
      v18 = *(v25 + 16);
      v20 = *v18 == v25;
      v25 = v18;
    }

    while (!v20);
  }

  if (v18 != v4)
  {
    v26 = *(v18 + 32);
    if (!(v6 == v26 ? v8 < *(v18 + 7) : v6 < v26))
    {
      goto LABEL_28;
    }
  }

  if (v16)
  {
    v31 = v18;
    v3 = v18;
  }

  else
  {
    v31 = a1[1];
    ++v3;
  }

LABEL_42:
  v24 = *v3;
  if (!*v3)
  {
    operator new();
  }

LABEL_44:
  a1[1] = v24;
  v28 = *(v24 + 8);
  if (v28)
  {
    do
    {
      v29 = v28;
      v28 = *v28;
    }

    while (v28);
  }

  else
  {
    do
    {
      v29 = *(v24 + 16);
      v20 = *v29 == v24;
      v24 = v29;
    }

    while (!v20);
  }

  a1[1] = v29;
  return a1;
}

uint64_t *std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
}

uint64_t std::__split_buffer<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>(i - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> &&>(_DWORD **a1, _DWORD *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return gdc::LayerDataKey::LayerDataKey((v2 + 2), (a2 + 2));
}

char *md::RegistryManager::removeCollectorSubscription(int8x8_t *this, uint64_t a2, unsigned int a3)
{
  result = std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::hash<std::pair<unsigned long,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned int>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned int>,std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::hash<std::pair<unsigned long,unsigned int>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>>>::find<std::pair<unsigned long,unsigned int>>(this, a2, a3);
  if (result)
  {
    v7 = this[1];
    v8 = *(result + 1);
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v7)
      {
        v8 %= *&v7;
      }
    }

    else
    {
      v8 &= *&v7 - 1;
    }

    v10 = *(*this + 8 * v8);
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10 != result);
    if (v11 == &this[2])
    {
      goto LABEL_19;
    }

    v12 = v11[1];
    if (v9.u32[0] > 1uLL)
    {
      if (*&v12 >= *&v7)
      {
        *&v12 %= *&v7;
      }
    }

    else
    {
      *&v12 &= *&v7 - 1;
    }

    if (*&v12 != v8)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v13 = *(*result + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v8)
      {
LABEL_20:
        *(*this + 8 * v8) = 0;
      }
    }

    v14 = *result;
    if (*result)
    {
      v15 = *(*&v14 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v15 >= *&v7)
        {
          v15 %= *&v7;
        }
      }

      else
      {
        v15 &= *&v7 - 1;
      }

      if (v15 != v8)
      {
        *(*this + 8 * v15) = v11;
        v14 = *result;
      }
    }

    *v11 = v14;
    *result = 0;
    --*&this[3];
    v23[0] = result;
    v23[1] = this;
    v24 = 1;
    memset(v25, 0, sizeof(v25));
    result = std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<unsigned long,unsigned int>,std::function<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>>,void *>>>>::~unique_ptr[abi:nn200100](v23);
  }

  for (i = this[7]; i; i = *i)
  {
    v18 = i[3];
    v17 = i[4];
    while (v18 != v17)
    {
      if (*v18 == a2 && *(v18 + 8) == a3)
      {
        if (v18 != v17)
        {
          if (v18 + 24 == v17)
          {
            v21 = v18;
          }

          else
          {
            do
            {
              result = *(v18 + 16);
              *v18 = *(v18 + 24);
              *(v18 + 8) = *(v18 + 32);
              v20 = *(v18 + 40);
              *(v18 + 40) = 0;
              *(v18 + 16) = v20;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              v21 = v18 + 24;
              v22 = v18 + 48;
              v18 += 24;
            }

            while (v22 != v17);
            v17 = i[4];
          }

          while (v17 != v21)
          {
            result = *(v17 - 8);
            *(v17 - 8) = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            v17 -= 24;
          }

          i[4] = v21;
        }

        break;
      }

      v18 += 24;
    }
  }

  return result;
}

uint64_t md::RegistryManager::getRegistryForKey(md::RegistryManager *this, const gdc::LayerData *a2)
{
  v3 = *(a2 + 2);
  FillRect = grl::IconMetricsRenderResult::getFillRect(a2);
  v5 = gdc::Camera::cameraFrame(FillRect);
  gdc::LayerDataKey::LayerDataKey(&v9, v5);
  v12 = v3;
  gdc::LayerDataKey::LayerDataKey(&v13, &v9);
  v14 = 0;
  v6 = std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::find<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(this + 304, &v12);
  if ((this + 312) == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[17];
  }

  if (v14 != -1)
  {
    (off_1F2A026C0[v14])(&v15, &v12);
  }

  v14 = -1;
  if (v10 != v11)
  {
    free(v10);
  }

  return v7;
}

void sub_1B2DEB458(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33)
{
  if (a33 != -1)
  {
    (off_1F2A026C0[a33])(v33 - 17, &a21, a3, a4, a5, a6, a7, a8);
  }

  a33 = -1;
  if (a11 != a13)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<gdc::Registry *>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<gdc::Registry *>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void md::layoutElevatedPolygonMeshes<md::ElevatedPolygonRenderable>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v15 = *(a3 + 4);
  if (a3[3] == 1)
  {
    v16 = *(a2 + 264);
    v159 = *(a2 + 256);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v159 = 0;
    v16 = 0;
  }

  v17 = md::LayoutContext::get<md::CameraContext>(*(a1 + 8));
  v19 = fmaxf(*(v17 + 3080) + *(v17 + 3076), 1.0);
  v164 = 0uLL;
  v20 = *a7;
  v157 = a5;
  v158 = v16;
  v154 = v14;
  if (!*a7)
  {
    v27 = 0;
    v24 = 0;
    v23 = 2;
    v22 = 0.0;
    LODWORD(v28) = 0;
    goto LABEL_39;
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v175.i64, v20, v21);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = 0.0;
  if (v177 != 1)
  {
    v27 = 0;
    v24 = 0;
    v23 = 2;
    v29 = 1;
LABEL_20:
    LODWORD(v28) = 0;
    goto LABEL_32;
  }

  if (v19 >= 0x17)
  {
    v14 = 23;
  }

  else
  {
    v14 = v19;
  }

  v23 = 2;
  if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v175.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
  {
    v27 = 0;
    v29 = 0;
    v24 = 0;
    goto LABEL_20;
  }

  v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 104, v14, 2, 0);
  if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(107, 2u, *(v175.i64[0] + 24)))
  {
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 93, 2u, fminf(v19, 23.0));
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 93, v14, 2u, 0, v25, v26);
  }

  v153 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v162[0])), vdupq_n_s32(0x37800080u));
  v164 = v153;
  v23 = *(v175.i64[0] + 24);
  *&v28 = fminf(v19, 23.0);
  v30 = *v23;
  if (!*v23 || (v31 = *v30, LODWORD(v30) = *v30 == 1.0, *(v23 + 10) != 1) || (v31 != 0.0 ? (_ZF = v31 == 1.0) : (_ZF = 1), _ZF))
  {
    v33 = *(v23 + v30 + 11);
    if (v33 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v175.i64[0] + 24), 97, v33, 0, *&v28);
      LODWORD(v28) = v34;
      goto LABEL_31;
    }

    goto LABEL_234;
  }

  while (1)
  {
    LOBYTE(v162[0]) = 1;
    LOBYTE(v165) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v23, 97, 0, v162, *&v28);
    v151 = v15;
    v144 = v143;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v23, 97, 1, &v165, *&v28);
    *&v28 = v144 + ((v145 - v144) * v31);
    v15 = v151;
LABEL_31:
    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v23, 319, v14, 2, 0);
    v27 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
    v18 = v153;
    v22 = *&v153.i32[3];
    v29 = 1;
LABEL_32:
    if (v177 == 1)
    {
      (*(*v175.i64[0] + 56))(v175.i64[0]);
    }

    if (v176)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v176);
    }

    if (v175.i64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v175.i64[1]);
    }

    if (v29)
    {
LABEL_39:
      if (a3[1] == 1)
      {
        v18 = xmmword_1B33AFEE0;
        v164 = xmmword_1B33AFEE0;
        v22 = 1.0;
      }

      if (v22 >= 0.0039062 && *&v28 >= 0.1)
      {
        *v18.i32 = *(a2 + 376) * *&v28;
        v153 = v18;
        v18 = ggl::RenderItem::RenderItem(&v175, "draped stroke");
        v173.n128_u8[0] = 0;
        v174 = 0;
        v165 = 0;
        v166 = 0;
        v167 = 256;
        v168 = 1;
        v169 = 0;
        v170 = 2;
        v171 = 0;
        v172 = 0;
        *(&v171 + 2) = v159 != 0;
        v35 = *(a6 + 88);
        if (!v35)
        {
          v44 = *(a6 + 8);
          v173 = *(a6 + 24);
          v174 = 1;
          v45 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::pop(v157->__shared_owners_);
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v45 + 17) + 48));
          v46 = 0;
          v47 = v163;
          v48 = v163;
          *v163 = v164;
          v49 = v48 + 2;
          do
          {
            *(v49 + v46) = *(a8 + v46);
            v46 += 4;
          }

          while (v46 != 16);
          v149 = v44;
          v50 = 0;
          if (v23 == 1)
          {
            v51 = 0.0;
          }

          else
          {
            v51 = 1.0;
          }

          if (v23 == 1)
          {
            *v50.i32 = 1.0;
          }

          if (v23 == 2)
          {
            v51 = 0.5;
            *v50.i32 = 0.5;
          }

          v52 = -(*v153.i32 * v51);
          *v50.i32 = *v50.i32 * *v153.i32;
          if (a3[1])
          {
            v52 = -1.0;
            *v50.i32 = 1.0;
          }

          *(v47 + 4) = v52;
          *(v47 + 5) = v50.i32[0];
          BYTE6(v171) = a3[2];
          v42 = v157;
          md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedStrokeColorWithDistanceShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v160, &v157[7], &v165, v50);
          v53 = v161;
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(v45, v160, v161);
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v53);
          }

          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v45 + 17), *(v45 + 29), *(a2 + 224), *(a2 + 232));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v45 + 17), *(v45 + 29), *(a2 + 240), *(a2 + 248));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v45 + 17), *(v45 + 29), v159, v158);
          v177 = v45;
          ggl::BufferMemory::~BufferMemory(v162);
          v54 = 1;
LABEL_71:
          v14 = 1;
          if (v22 >= 1.0)
          {
            v64 = md::DaVinciRenderStateCache::renderState(&v42[34], 3, 0, ((a3[1] | a3[2]) & 1) == 0, 0, 1, a3[1], 3);
          }

          else
          {
            v178 = a3[4] + md::StencilReserverByColor::reserveSlot(&v42[35].__shared_owners_, &v164);
            v64 = v42 + 24;
          }

          v176 = v64;
          v179 = (v24 << 10) | 1u;
          v65 = *(a4 + 8);
          if (v65)
          {
            v66 = a4 + 8;
            do
            {
              if (*(v65 + 28) >= v27)
              {
                v66 = v65;
              }

              v65 = *(v65 + 8 * (*(v65 + 28) < v27));
            }

            while (v65);
            if (v66 != a4 + 8 && v27 >= *(v66 + 28))
            {
              v67 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v66 + 32));
              if (v67)
              {
                v68 = *(*(v67 + 16) + 8 * *(v66 + 33));
              }

              else
              {
                v68 = 0;
              }

              v69 = &v157[33];
              if (v54)
              {
                md::RenderItemPool::construct(v69, &v175, v149, &v173);
              }

              else
              {
                md::RenderItemPool::construct(v69, &v175, v149);
              }

              ggl::CommandBuffer::pushRenderItem(v68, v70);
            }
          }

          goto LABEL_87;
        }

        if (v35 != 1)
        {
          goto LABEL_232;
        }

        if (*(a6 + 32) == 1)
        {
          v149 = *(a6 + 8);
          v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::pop(v157->__vftable);
          md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v162, &v157[1].__shared_owners_, &v165);
          v36 = *(&v162[0] + 1);
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, *&v162[0], *(&v162[0] + 1));
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v36);
          }

          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v14 + 136) + 48));
          v38 = 0;
          v39 = v163;
          v40.i32[1] = DWORD1(v164);
          *v163 = v164;
          v39[6].i32[0] = v15;
          do
          {
            v39[4].i32[v38] = *(a8 + v38 * 4);
            ++v38;
          }

          while (v38 != 4);
          if ((*(a6 + 32) & 1) == 0)
          {
            goto LABEL_233;
          }

          v40.i32[0] = *(a6 + 24);
          v41 = v23;
          if (v23 == 2)
          {
            v43 = 0x3F0000003F000000;
            v42 = v157;
          }

          else
          {
            v42 = v157;
            if (v41 == 1)
            {
              v43 = 1065353216;
            }

            else
            {
              v43 = 0x3F80000000000000;
            }
          }

          v55 = vmul_n_f32(v43, *v153.i32);
          *v37.i32 = *(a6 + 28) + *v40.i32;
          v56 = vdup_lane_s32(v40, 0);
          v57.i32[0] = vsub_f32(v40, v55).u32[0];
          v57.i32[1] = vadd_f32(v56, v55).i32[1];
          v58 = vmaxnm_f32(vdiv_f32(v57, vdup_lane_s32(v37, 0)), 0);
          __asm
          {
            FMOV            V1.2S, #1.0
            FMOV            V2.2S, #-1.0
          }

          v39[2] = vmla_f32(_D2, 0x4000000040000000, vminnm_f32(v58, _D1));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 224), *(a2 + 232));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 240), *(a2 + 248));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v14 + 136), *(v14 + 232), v159, v158);
          v177 = v14;
          ggl::BufferMemory::~BufferMemory(v162);
          v54 = 0;
          goto LABEL_71;
        }
      }
    }

LABEL_87:
    v164 = 0uLL;
    v71 = *a7;
    if (!*a7)
    {
      v76 = 0;
      v24 = 0;
      v23 = 2;
      v73 = 0.0;
      LODWORD(v28) = 0;
      goto LABEL_121;
    }

    v72 = *(a7 + 8);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v175.i64, v71, v72);
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v72);
    }

    v73 = 0.0;
    if (v177 != 1)
    {
      v76 = 0;
      v24 = 0;
      v23 = 2;
      v77 = 1;
LABEL_102:
      LODWORD(v28) = 0;
      goto LABEL_114;
    }

    if (v19 >= 0x17)
    {
      v14 = 23;
    }

    else
    {
      v14 = v19;
    }

    v23 = 2;
    if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v175.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
    {
      v76 = 0;
      v77 = 0;
      v24 = 0;
      goto LABEL_102;
    }

    v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 104, v14, 2, 0);
    if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(407, 2u, *(v175.i64[0] + 24)))
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 403, 2u, fminf(v19, 23.0));
    }

    else
    {
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 403, v14, 2u, 0, v74, v75);
    }

    v153 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v162[0])), vdupq_n_s32(0x37800080u));
    v164 = v153;
    v78 = *(v175.i64[0] + 24);
    v79 = fminf(v19, 23.0);
    v80 = *v78;
    if (*v78)
    {
      v81 = *v80;
      LODWORD(v80) = *v80 == 1.0;
      if (*(v78 + 10) == 1 && v81 != 0.0 && v81 != 1.0)
      {
        goto LABEL_237;
      }
    }

    v83 = *(v78 + v80 + 11);
    if (v83 == 2)
    {
      v81 = 0.0;
LABEL_237:
      LOBYTE(v162[0]) = 1;
      LOBYTE(v165) = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v78, 404, 0, v162, v79);
      v152 = v15;
      v147 = v146;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v78, 404, 1, &v165, v79);
      *&v28 = v147 + ((v148 - v147) * v81);
      v15 = v152;
      goto LABEL_113;
    }

    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v175.i64[0] + 24), 404, v83, 0, v79);
    LODWORD(v28) = v84;
LABEL_113:
    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v78, 408, v14, 2, 0);
    v76 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
    v18 = v153;
    v73 = *&v153.i32[3];
    v77 = 1;
LABEL_114:
    if (v177 == 1)
    {
      (*(*v175.i64[0] + 56))(v175.i64[0]);
    }

    if (v176)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v176);
    }

    if (v175.i64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v175.i64[1]);
    }

    if ((v77 & 1) == 0)
    {
      goto LABEL_169;
    }

LABEL_121:
    if (a3[1] == 1)
    {
      v18 = xmmword_1B33AFEE0;
      v164 = xmmword_1B33AFEE0;
      v73 = 1.0;
    }

    if (v73 < 0.0039062 || *&v28 < 0.1)
    {
      goto LABEL_169;
    }

    *v18.i32 = *(a2 + 376) * *&v28;
    v153 = v18;
    ggl::RenderItem::RenderItem(&v175, "draped stroke");
    v173.n128_u8[0] = 0;
    v174 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 256;
    v168 = 1;
    v169 = 0;
    v170 = 2;
    v171 = 0;
    v172 = 0;
    *(&v171 + 2) = v159 != 0;
    v85 = *(a6 + 88);
    if (!v85)
    {
      v93 = *(a6 + 8);
      v173 = *(a6 + 24);
      v174 = 1;
      v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::pop(v157->__shared_owners_);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v14 + 136) + 48));
      v94 = 0;
      v95 = v163;
      v96 = v163;
      *v163 = v164;
      v97 = v96 + 2;
      do
      {
        *(v97 + v94) = *(a8 + v94);
        v94 += 4;
      }

      while (v94 != 16);
      v150 = v93;
      v98 = 0;
      if (v23 == 1)
      {
        v99 = 0.0;
      }

      else
      {
        v99 = 1.0;
      }

      if (v23 == 1)
      {
        *v98.i32 = 1.0;
      }

      if (v23 == 2)
      {
        v99 = 0.5;
        *v98.i32 = 0.5;
      }

      v100 = -(*v153.i32 * v99);
      *v98.i32 = *v98.i32 * *v153.i32;
      if (a3[1])
      {
        v100 = -1.0;
        *v98.i32 = 1.0;
      }

      *(v95 + 4) = v100;
      *(v95 + 5) = v98.i32[0];
      BYTE6(v171) = a3[2];
      v23 = v157;
      md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedStrokeColorWithDistanceShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v160, &v157[7], &v165, v98);
      v101 = v161;
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, v160, v161);
      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v101);
      }

      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 224), *(a2 + 232));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 240), *(a2 + 248));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v14 + 136), *(v14 + 232), v159, v158);
      v177 = v14;
      ggl::BufferMemory::~BufferMemory(v162);
      v102 = 1;
      goto LABEL_153;
    }

    if (v85 == 1)
    {
      break;
    }

LABEL_232:
    std::__throw_bad_variant_access[abi:nn200100]();
LABEL_233:
    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_234:
    v31 = 0.0;
  }

  if (*(a6 + 64) != 1)
  {
    goto LABEL_169;
  }

  v150 = *(a6 + 40);
  v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::pop(v157->__vftable);
  md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v162, &v157[1].__shared_owners_, &v165);
  v86 = *(&v162[0] + 1);
  ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, *&v162[0], *(&v162[0] + 1));
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v86);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v14 + 136) + 48));
  v88 = 0;
  v89 = v163;
  v90.i32[1] = DWORD1(v164);
  *v163 = v164;
  v89[6].i32[0] = v15;
  do
  {
    v89[4].i32[v88] = *(a8 + v88 * 4);
    ++v88;
  }

  while (v88 != 4);
  if ((*(a6 + 64) & 1) == 0)
  {
    goto LABEL_233;
  }

  v90.i32[0] = *(a6 + 56);
  v91 = v23;
  if (v23 == 2)
  {
    v92 = 0x3F0000003F000000;
    v23 = v157;
  }

  else
  {
    v23 = v157;
    if (v91 == 1)
    {
      v92 = 1065353216;
    }

    else
    {
      v92 = 0x3F80000000000000;
    }
  }

  v103 = vmul_n_f32(v92, *v153.i32);
  *v87.i32 = *(a6 + 60) + *v90.i32;
  v104 = vdup_lane_s32(v90, 0);
  v105.i32[0] = vsub_f32(v90, v103).u32[0];
  v105.i32[1] = vadd_f32(v104, v103).i32[1];
  v106 = vmaxnm_f32(vdiv_f32(v105, vdup_lane_s32(v87, 0)), 0);
  __asm
  {
    FMOV            V1.2S, #1.0
    FMOV            V2.2S, #-1.0
  }

  v89[2] = vmla_f32(_D2, 0x4000000040000000, vminnm_f32(v106, _D1));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 224), *(a2 + 232));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 240), *(a2 + 248));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v14 + 136), *(v14 + 232), v159, v158);
  v177 = v14;
  ggl::BufferMemory::~BufferMemory(v162);
  v102 = 0;
LABEL_153:
  if (v73 >= 1.0)
  {
    v109 = md::DaVinciRenderStateCache::renderState((v23 + 816), 3, 0, ((a3[1] | a3[2]) & 1) == 0, 0, 1, a3[1], 3);
  }

  else
  {
    v178 = a3[4] + md::StencilReserverByColor::reserveSlot((v23 + 848), &v164);
    v109 = (v23 + 576);
  }

  v176 = v109;
  v179 = (v24 << 10) | 3u;
  v110 = *(a4 + 8);
  if (v110)
  {
    v111 = a4 + 8;
    do
    {
      if (*(v110 + 28) >= v76)
      {
        v111 = v110;
      }

      v110 = *(v110 + 8 * (*(v110 + 28) < v76));
    }

    while (v110);
    if (v111 != a4 + 8 && v76 >= *(v111 + 28))
    {
      v112 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v111 + 32));
      if (v112)
      {
        v113 = *(*(v112 + 16) + 8 * *(v111 + 33));
      }

      else
      {
        v113 = 0;
      }

      v114 = &v157[33];
      if (v102)
      {
        md::RenderItemPool::construct(v114, &v175, v150, &v173);
      }

      else
      {
        md::RenderItemPool::construct(v114, &v175, v150);
      }

      ggl::CommandBuffer::pushRenderItem(v113, v115);
    }
  }

LABEL_169:
  v116 = *a7;
  if (!*a7)
  {
    if ((*a3 & 1) == 0)
    {
      goto LABEL_229;
    }

    v24 = 0;
    v121 = 0;
    goto LABEL_196;
  }

  v117 = *(a7 + 8);
  if (v117)
  {
    atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v175.i64, v116, v117);
  if (v117)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v117);
  }

  v28 = 0;
  v118 = 0;
  if (v177 != 1)
  {
    v121 = 0;
    v24 = 0;
    v122 = 1;
LABEL_185:
    v19 = 0.0;
    goto LABEL_188;
  }

  v23 = v19;
  if (v23 >= 0x17)
  {
    v14 = 23;
  }

  else
  {
    v14 = v23;
  }

  if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v175.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
  {
    v121 = 0;
    v122 = 0;
    v24 = 0;
    goto LABEL_185;
  }

  v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 104, v14, 2, 0);
  a7 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v154 + 16), *(*(v154 + 16) + 8));
  if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 2u, *(v175.i64[0] + 24)))
  {
    md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v162, a7, &v175, 2u, v19);
  }

  else
  {
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v162, a7, &v175, v19, 2u, v119, v120);
  }

  v28 = *&v162[0];
  v19 = *(v162 + 3);
  v118 = DWORD2(v162[0]);
  v121 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
  v122 = 1;
LABEL_188:
  if (v177 == 1)
  {
    (*(*v175.i64[0] + 56))(v175.i64[0]);
  }

  if (v176)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v176);
  }

  if (v175.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v175.i64[1]);
  }

  if ((v122 & 1) == 0)
  {
    goto LABEL_229;
  }

  if (*a3)
  {
LABEL_196:
    v28 = 0x3F80000000000000;
    v118 = 0;
    v19 = 1.0;
  }

  else if (v19 < 0.0039062)
  {
    goto LABEL_229;
  }

  ggl::RenderItem::RenderItem(&v175, "draped fill");
  v173.n128_u8[0] = 0;
  v174 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 256;
  v168 = 1;
  v169 = 0;
  v170 = 2;
  v171 = 0;
  v172 = 0;
  *(&v171 + 2) = v159 != 0;
  v123 = *(a6 + 88);
  if (v123)
  {
    if (v123 == 1)
    {
      v124 = *(a6 + 72);
      if (!v124)
      {
        goto LABEL_229;
      }

      v125 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorPipelineSetup>::pop(v157->__shared_weak_owners_);
      md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorPipelineState,std::shared_ptr<ggl::ElevatedFillNoWidthClipColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v164, &v157[12].__shared_weak_owners_, &v165, v126);
      v127 = *(&v164 + 1);
      v162[0] = v164;
      if (*(&v164 + 1))
      {
        atomic_fetch_add_explicit((*(&v164 + 1) + 8), 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v125, v162);
        std::__shared_weak_count::__release_shared[abi:nn200100](v127);
        std::__shared_weak_count::__release_shared[abi:nn200100](v127);
      }

      else
      {
        ggl::PipelineSetup::setState(v125, v162);
      }

      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v125 + 17) + 32));
      v135 = 0;
      v136 = v163;
      *v163 = v28;
      *(v136 + 2) = v118;
      *(v136 + 3) = v19;
      *(v136 + 8) = v15;
      v137 = v136 + 1;
      do
      {
        *(v137 + v135) = *(a8 + v135);
        v135 += 4;
      }

      while (v135 != 16);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v125 + 17), *(v125 + 29), *(a2 + 224), *(a2 + 232));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v125 + 17), *(v125 + 29), *(a2 + 240), *(a2 + 248));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v125 + 17), *(v125 + 29), v159, v158);
      v177 = v125;
      ggl::BufferMemory::~BufferMemory(v162);
      v134 = 0;
      goto LABEL_214;
    }

    goto LABEL_232;
  }

  if (*(a6 + 40) != 1)
  {
    goto LABEL_229;
  }

  v124 = *(a6 + 8);
  v173 = *(a6 + 24);
  v174 = 1;
  v128 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup>::pop(v157[1].__vftable);
  md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedFillColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v162, &v157[18].__shared_owners_, &v165, v129);
  v130 = *(&v162[0] + 1);
  ggl::GlobeAtmosphere::BasePipelineSetup::setState(v128, *&v162[0], *(&v162[0] + 1));
  if (v130)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v130);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v128 + 17) + 32));
  v131 = 0;
  v132 = v163;
  *v163 = v28;
  *(v132 + 2) = v118;
  *(v132 + 3) = v19;
  v133 = v132 + 1;
  do
  {
    *(v133 + v131) = *(a8 + v131);
    v131 += 4;
  }

  while (v131 != 16);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v128 + 17), *(v128 + 29), *(a2 + 224), *(a2 + 232));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v128 + 17), *(v128 + 29), *(a2 + 240), *(a2 + 248));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v128 + 17), *(v128 + 29), v159, v158);
  v177 = v128;
  ggl::BufferMemory::~BufferMemory(v162);
  v134 = 1;
LABEL_214:
  v176 = md::DaVinciRenderStateCache::renderState(&v157[34], 3, 0, *a3 ^ 1u, 0, 1, *a3, 3);
  v179 = (v24 << 10);
  v138 = *(a4 + 8);
  v156 = a4 + 8;
  if (v138)
  {
    v139 = v156;
    do
    {
      if (*(v138 + 28) >= v121)
      {
        v139 = v138;
      }

      v138 = *(v138 + 8 * (*(v138 + 28) < v121));
    }

    while (v138);
    if (v139 != v156 && v121 >= *(v139 + 28))
    {
      v140 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v139 + 32));
      if (v140)
      {
        v141 = *(*(v140 + 16) + 8 * *(v139 + 33));
        if (v134)
        {
          goto LABEL_223;
        }

LABEL_227:
        md::RenderItemPool::construct(&v157[33], &v175, v124);
      }

      else
      {
        v141 = 0;
        if (!v134)
        {
          goto LABEL_227;
        }

LABEL_223:
        md::RenderItemPool::construct(&v157[33], &v175, v124, &v173);
      }

      ggl::CommandBuffer::pushRenderItem(v141, v142);
    }
  }

LABEL_229:
  if (v158)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v158);
  }
}

void sub_1B2DEC890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  *&v3[12] = *(a3 + 3);
  *&v3[8] = *(a3 + 19);
  *v3 = *(a3 + 11);
  md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, a3[1], a3[2], a3[3], a3[4], a3[5], *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v3[0], v3[1], v3[2], v3[3], *&v3[4], a3[32], a3[10], a3[33], v4[0], v4[1], v4[2]);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedStrokeColorWithDistanceShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 9);
  v9 = *(a3 + 11);
  v10 = *(a3 + 12);
  a4.i32[0] = *(a3 + 13);
  *v36[0].i8 = vmovl_u8(a4);
  v11 = *(a3 + 17);
  v12 = *(a3 + 18);
  v13 = *(a3 + 19);
  v14 = *(a3 + 20);
  v15 = *(a3 + 21);
  v16 = *(a3 + 22);
  v17 = *(a3 + 24);
  v18 = *(a3 + 25);
  v19 = *(a3 + 26);
  v20 = *(a3 + 27);
  v21 = *(a3 + 28);
  v22 = *(a3 + 29);
  v23 = *(a3 + 30);
  v24 = *(a3 + 31);
  v25 = *(a3 + 32);
  v26 = *(a3 + 10);
  v27 = *(a3 + 33);
  v60[0] = 0;
  memset(&v60[15], 0, 15);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = a4.i32[0];
  v43 = 0;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = BYTE2(v6) | BYTE3(v6);
  v52 = (v36[0].i8[4] & 1) == 0;
  v53 = v7 ^ 1;
  v54 = 0;
  v55 = 0;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60[1] = v22;
  v60[2] = v23;
  v60[3] = v24;
  v60[4] = v25;
  v60[5] = v26;
  v60[6] = v8 & v36[0].i8[4] | v12 | v11;
  *&v60[7] = v25 ^ 1u;
  v60[8] = v27;
  v28 = ggl::packFunctionConstantKey(&v37, v15);
  v29 = a2[13];
  if (!*&v29)
  {
    goto LABEL_17;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  if (v30.u32[0] > 1uLL)
  {
    v31 = v28;
    if (v28 >= *&v29)
    {
      v31 = v28 % *&v29;
    }
  }

  else
  {
    v31 = (*&v29 - 1) & v28;
  }

  v32 = *(a2[12] + 8 * v31);
  if (!v32 || (v33 = *v32) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v34 = v33[1];
    if (v34 == v28)
    {
      break;
    }

    if (v30.u32[0] > 1uLL)
    {
      if (v34 >= *&v29)
      {
        v34 %= *&v29;
      }
    }

    else
    {
      v34 &= *&v29 - 1;
    }

    if (v34 != v31)
    {
      goto LABEL_17;
    }

LABEL_16:
    v33 = *v33;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  if (v33[2] != v28)
  {
    goto LABEL_16;
  }

  v35 = v33[4];
  *a1 = v33[3];
  a1[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2DED788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{
  v28 = v26[4];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  _Unwind_Resume(a1);
}

uint64_t md::StencilReserverByColor::reserveSlot(uint64_t **a1, float *a2)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_33:
    operator new();
  }

  v4 = *a2;
  v5 = a1 + 1;
  v6 = a1[1];
  do
  {
    if (*(v6 + 7) >= v4)
    {
      v5 = v6;
    }

    else
    {
      v7 = a2 + 1;
      v8 = 8;
      do
      {
        if (v8 == 11)
        {
          ++v6;
          goto LABEL_12;
        }

        v9 = v8;
        v10 = *(v6 + v8);
        v11 = *v7++;
        ++v8;
      }

      while (v10 < v11);
      if ((v9 - 8) <= 2)
      {
        v5 = v6;
      }

      v6 += (v9 - 8) > 2;
    }

LABEL_12:
    v6 = *v6;
  }

  while (v6);
  if (v5 != a1 + 1)
  {
    if (v4 >= *(v5 + 7))
    {
      return *(v5 + 44);
    }

    v12 = 0;
    while (v12 != 3)
    {
      v13 = v12 + 1;
      v14 = a2[v12 + 1];
      v15 = *(v5 + v12++ + 8);
      if (v14 >= v15)
      {
        if ((v13 - 1) <= 2)
        {
          return *(v5 + 44);
        }

        break;
      }
    }
  }

  v16 = *a2;
  while (1)
  {
    while (1)
    {
      v17 = v3;
      v18 = *(v3 + 7);
      if (v16 >= v18)
      {
        break;
      }

      v19 = a2 + 1;
      v20 = 8;
      do
      {
        if (v20 == 11)
        {
          goto LABEL_25;
        }

        v21 = v20;
        v22 = *v19++;
        v23 = *(v17 + v20++);
      }

      while (v22 < v23);
      if ((v21 - 8) < 3)
      {
        break;
      }

LABEL_25:
      v3 = *v17;
      if (!*v17)
      {
        goto LABEL_33;
      }
    }

    if (v18 >= v16)
    {
      break;
    }

    v24 = 0;
    do
    {
      if (v24 == 3)
      {
        goto LABEL_32;
      }

      v25 = v24 + 1;
      v26 = *(v17 + v24 + 8);
      v27 = a2[++v24];
    }

    while (v26 < v27);
    if ((v25 - 1) < 3)
    {
      break;
    }

LABEL_32:
    v3 = v17[1];
    if (!v3)
    {
      goto LABEL_33;
    }
  }

  result = *(a1 + 24);
  *(a1 + 24) = (result + 1) % *(a1 + 25);
  return result;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorPipelineState,std::shared_ptr<ggl::ElevatedFillNoWidthClipColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 9);
  v9 = *(a3 + 11);
  v10 = *(a3 + 12);
  a4.i32[0] = *(a3 + 13);
  *v36[0].i8 = vmovl_u8(a4);
  v11 = *(a3 + 17);
  v12 = *(a3 + 18);
  v13 = *(a3 + 19);
  v14 = *(a3 + 20);
  v15 = *(a3 + 21);
  v16 = *(a3 + 22);
  v17 = *(a3 + 24);
  v18 = *(a3 + 25);
  v19 = *(a3 + 26);
  v20 = *(a3 + 27);
  v21 = *(a3 + 28);
  v22 = *(a3 + 29);
  v23 = *(a3 + 30);
  v24 = *(a3 + 31);
  v25 = *(a3 + 32);
  v26 = *(a3 + 10);
  v27 = *(a3 + 33);
  v60[0] = 0;
  memset(&v60[15], 0, 15);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = a4.i32[0];
  v43 = 0;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = BYTE2(v6) | BYTE3(v6);
  v52 = (v36[0].i8[4] & 1) == 0;
  v53 = v7 ^ 1;
  v54 = 0;
  v55 = 0;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60[1] = v22;
  v60[2] = v23;
  v60[3] = v24;
  v60[4] = v25;
  v60[5] = v26;
  v60[6] = v8 & v36[0].i8[4] | v12 | v11;
  *&v60[7] = v25 ^ 1u;
  v60[8] = v27;
  v28 = ggl::packFunctionConstantKey(&v37, v15);
  v29 = a2[13];
  if (!*&v29)
  {
    goto LABEL_17;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  if (v30.u32[0] > 1uLL)
  {
    v31 = v28;
    if (v28 >= *&v29)
    {
      v31 = v28 % *&v29;
    }
  }

  else
  {
    v31 = (*&v29 - 1) & v28;
  }

  v32 = *(a2[12] + 8 * v31);
  if (!v32 || (v33 = *v32) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v34 = v33[1];
    if (v34 == v28)
    {
      break;
    }

    if (v30.u32[0] > 1uLL)
    {
      if (v34 >= *&v29)
      {
        v34 %= *&v29;
      }
    }

    else
    {
      v34 &= *&v29 - 1;
    }

    if (v34 != v31)
    {
      goto LABEL_17;
    }

LABEL_16:
    v33 = *v33;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  if (v33[2] != v28)
  {
    goto LABEL_16;
  }

  v35 = v33[4];
  *a1 = v33[3];
  a1[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2DEE634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{
  v28 = v26[4];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  _Unwind_Resume(a1);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedFillColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 9);
  v9 = *(a3 + 11);
  v10 = *(a3 + 12);
  a4.i32[0] = *(a3 + 13);
  *v36[0].i8 = vmovl_u8(a4);
  v11 = *(a3 + 17);
  v12 = *(a3 + 18);
  v13 = *(a3 + 19);
  v14 = *(a3 + 20);
  v15 = *(a3 + 21);
  v16 = *(a3 + 22);
  v17 = *(a3 + 24);
  v18 = *(a3 + 25);
  v19 = *(a3 + 26);
  v20 = *(a3 + 27);
  v21 = *(a3 + 28);
  v22 = *(a3 + 29);
  v23 = *(a3 + 30);
  v24 = *(a3 + 31);
  v25 = *(a3 + 32);
  v26 = *(a3 + 10);
  v27 = *(a3 + 33);
  v60[0] = 0;
  memset(&v60[15], 0, 15);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = a4.i32[0];
  v43 = 0;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = BYTE2(v6) | BYTE3(v6);
  v52 = (v36[0].i8[4] & 1) == 0;
  v53 = v7 ^ 1;
  v54 = 0;
  v55 = 0;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60[1] = v22;
  v60[2] = v23;
  v60[3] = v24;
  v60[4] = v25;
  v60[5] = v26;
  v60[6] = v8 & v36[0].i8[4] | v12 | v11;
  *&v60[7] = v25 ^ 1u;
  v60[8] = v27;
  v28 = ggl::packFunctionConstantKey(&v37, v15);
  v29 = a2[13];
  if (!*&v29)
  {
    goto LABEL_17;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  if (v30.u32[0] > 1uLL)
  {
    v31 = v28;
    if (v28 >= *&v29)
    {
      v31 = v28 % *&v29;
    }
  }

  else
  {
    v31 = (*&v29 - 1) & v28;
  }

  v32 = *(a2[12] + 8 * v31);
  if (!v32 || (v33 = *v32) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v34 = v33[1];
    if (v34 == v28)
    {
      break;
    }

    if (v30.u32[0] > 1uLL)
    {
      if (v34 >= *&v29)
      {
        v34 %= *&v29;
      }
    }

    else
    {
      v34 &= *&v29 - 1;
    }

    if (v34 != v31)
    {
      goto LABEL_17;
    }

LABEL_16:
    v33 = *v33;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  if (v33[2] != v28)
  {
    goto LABEL_16;
  }

  v35 = v33[4];
  *a1 = v33[3];
  a1[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2DEF2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{
  v28 = v26[4];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedFillColorWithDistancePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedFillColorPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A02810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(uint64_t a1, void *a2)
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

void md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, __int128 a17, char a18, char a19, char a20, char a21, char a22, char a23)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(v52, 0, sizeof(v52));
  v33[0] = a3;
  v45 = 0;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = a7;
  v33[5] = a8;
  v33[6] = a9;
  v33[7] = a10;
  v33[8] = a11;
  v33[9] = a12;
  v33[10] = a13;
  v33[11] = a14;
  v33[12] = a15;
  v33[13] = a16;
  v33[14] = a17;
  v34 = BYTE1(a17);
  v35 = BYTE2(a17);
  v36 = BYTE3(a17);
  v37 = BYTE4(a17);
  v38 = *(&a17 + 5);
  v39 = a5 | a6;
  v40 = a17 ^ 1;
  v41 = a11 ^ 1;
  v42 = 0;
  v43 = 0;
  v44 = *(&a17 + 9);
  v46 = *(&a17 + 13);
  v47 = __PAIR16__(a18, HIBYTE(a17));
  v48 = a19;
  v49 = a12 & a17 | BYTE3(a17) | BYTE2(a17);
  v50 = a18 ^ 1;
  v51 = a20;
  v24 = ggl::packFunctionConstantKey(v33, BYTE5(a17));
  v25 = a2[13];
  if (!*&v25)
  {
    goto LABEL_17;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v24;
    if (v24 >= *&v25)
    {
      v27 = v24 % *&v25;
    }
  }

  else
  {
    v27 = (*&v25 - 1) & v24;
  }

  v28 = *(a2[12] + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == v24)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= *&v25)
      {
        v30 %= *&v25;
      }
    }

    else
    {
      v30 &= *&v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  if (v29[2] != v24)
  {
    goto LABEL_16;
  }

  v31 = v29[4];
  *a1 = v29[3];
  a1[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2DF0444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  v34 = v32[4];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  operator delete(v32);
  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevatedStrokeColorPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(uint64_t a1, void *a2)
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

void md::layoutElevatedPolygonMeshes<md::DaVinciGroundRenderable>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v15 = *(a3 + 4);
  if (a3[3] == 1)
  {
    v16 = *(a2 + 264);
    v159 = *(a2 + 256);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v159 = 0;
    v16 = 0;
  }

  v17 = md::LayoutContext::get<md::CameraContext>(*(a1 + 8));
  v19 = fmaxf(*(v17 + 3080) + *(v17 + 3076), 1.0);
  v164 = 0uLL;
  v20 = *a7;
  v157 = a5;
  v158 = v16;
  v154 = v14;
  if (!*a7)
  {
    v27 = 0;
    v24 = 0;
    v23 = 2;
    v22 = 0.0;
    LODWORD(v28) = 0;
    goto LABEL_39;
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v175.i64, v20, v21);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = 0.0;
  if (v177 != 1)
  {
    v27 = 0;
    v24 = 0;
    v23 = 2;
    v29 = 1;
LABEL_20:
    LODWORD(v28) = 0;
    goto LABEL_32;
  }

  if (v19 >= 0x17)
  {
    v14 = 23;
  }

  else
  {
    v14 = v19;
  }

  v23 = 2;
  if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v175.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
  {
    v27 = 0;
    v29 = 0;
    v24 = 0;
    goto LABEL_20;
  }

  v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 104, v14, 2, 0);
  if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(107, 2u, *(v175.i64[0] + 24)))
  {
    gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 93, 2u, fminf(v19, 23.0));
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 93, v14, 2u, 0, v25, v26);
  }

  v153 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v162[0])), vdupq_n_s32(0x37800080u));
  v164 = v153;
  v23 = *(v175.i64[0] + 24);
  *&v28 = fminf(v19, 23.0);
  v30 = *v23;
  if (!*v23 || (v31 = *v30, LODWORD(v30) = *v30 == 1.0, *(v23 + 10) != 1) || (v31 != 0.0 ? (_ZF = v31 == 1.0) : (_ZF = 1), _ZF))
  {
    v33 = *(v23 + v30 + 11);
    if (v33 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v175.i64[0] + 24), 97, v33, 0, *&v28);
      LODWORD(v28) = v34;
      goto LABEL_31;
    }

    goto LABEL_234;
  }

  while (1)
  {
    LOBYTE(v162[0]) = 1;
    LOBYTE(v165) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v23, 97, 0, v162, *&v28);
    v151 = v15;
    v144 = v143;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v23, 97, 1, &v165, *&v28);
    *&v28 = v144 + ((v145 - v144) * v31);
    v15 = v151;
LABEL_31:
    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v23, 319, v14, 2, 0);
    v27 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
    v18 = v153;
    v22 = *&v153.i32[3];
    v29 = 1;
LABEL_32:
    if (v177 == 1)
    {
      (*(*v175.i64[0] + 56))(v175.i64[0]);
    }

    if (v176)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v176);
    }

    if (v175.i64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v175.i64[1]);
    }

    if (v29)
    {
LABEL_39:
      if (a3[1] == 1)
      {
        v18 = xmmword_1B33AFEE0;
        v164 = xmmword_1B33AFEE0;
        v22 = 1.0;
      }

      if (v22 >= 0.0039062 && *&v28 >= 0.1)
      {
        *v18.i32 = *(a2 + 376) * *&v28;
        v153 = v18;
        v18 = ggl::RenderItem::RenderItem(&v175, "draped stroke");
        v173.n128_u8[0] = 0;
        v174 = 0;
        v165 = 0;
        v166 = 0;
        v167 = 256;
        v168 = 1;
        v169 = 0;
        v170 = 2;
        v171 = 0;
        v172 = 0;
        *(&v171 + 2) = v159 != 0;
        v35 = *(a6 + 88);
        if (!v35)
        {
          v44 = *(a6 + 8);
          v173 = *(a6 + 24);
          v174 = 1;
          v45 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::pop(v157[1]);
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v45 + 17) + 48));
          v46 = 0;
          v47 = v163;
          v48 = v163;
          *v163 = v164;
          v49 = v48 + 2;
          do
          {
            *(v49 + v46) = *(a8 + v46);
            v46 += 4;
          }

          while (v46 != 16);
          v149 = v44;
          v50 = 0;
          if (v23 == 1)
          {
            v51 = 0.0;
          }

          else
          {
            v51 = 1.0;
          }

          if (v23 == 1)
          {
            *v50.i32 = 1.0;
          }

          if (v23 == 2)
          {
            v51 = 0.5;
            *v50.i32 = 0.5;
          }

          v52 = -(*v153.i32 * v51);
          *v50.i32 = *v50.i32 * *v153.i32;
          if (a3[1])
          {
            v52 = -1.0;
            *v50.i32 = 1.0;
          }

          *(v47 + 4) = v52;
          *(v47 + 5) = v50.i32[0];
          BYTE6(v171) = a3[2];
          v42 = v157;
          md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedStrokeColorWithDistanceShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v160, v157 + 21, &v165, v50);
          v53 = v161;
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(v45, v160, v161);
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v53);
          }

          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v45 + 17), *(v45 + 29), *(a2 + 224), *(a2 + 232));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v45 + 17), *(v45 + 29), *(a2 + 240), *(a2 + 248));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v45 + 17), *(v45 + 29), v159, v158);
          v177 = v45;
          ggl::BufferMemory::~BufferMemory(v162);
          v54 = 1;
LABEL_71:
          v14 = 1;
          if (v22 >= 1.0)
          {
            v64 = md::DaVinciRenderStateCache::renderState(v42 + 102, 3, 0, ((a3[1] | a3[2]) & 1) == 0, 0, 1, a3[1], 3);
          }

          else
          {
            v178 = a3[4] + md::StencilReserverByColor::reserveSlot(v42 + 106, &v164);
            v64 = (v42 + 72);
          }

          v176 = v64;
          v179 = (v24 << 10) | 1u;
          v65 = *(a4 + 8);
          if (v65)
          {
            v66 = a4 + 8;
            do
            {
              if (*(v65 + 28) >= v27)
              {
                v66 = v65;
              }

              v65 = *(v65 + 8 * (*(v65 + 28) < v27));
            }

            while (v65);
            if (v66 != a4 + 8 && v27 >= *(v66 + 28))
            {
              v67 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v66 + 32));
              if (v67)
              {
                v68 = *(*(v67 + 16) + 8 * *(v66 + 33));
              }

              else
              {
                v68 = 0;
              }

              v69 = (v157 + 99);
              if (v54)
              {
                md::RenderItemPool::construct(v69, &v175, v149, &v173);
              }

              else
              {
                md::RenderItemPool::construct(v69, &v175, v149);
              }

              ggl::CommandBuffer::pushRenderItem(v68, v70);
            }
          }

          goto LABEL_87;
        }

        if (v35 != 1)
        {
          goto LABEL_232;
        }

        if (*(a6 + 32) == 1)
        {
          v149 = *(a6 + 8);
          v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::pop(*v157);
          md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v162, v157 + 4, &v165);
          v36 = *(&v162[0] + 1);
          ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, *&v162[0], *(&v162[0] + 1));
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v36);
          }

          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v14 + 136) + 48));
          v38 = 0;
          v39 = v163;
          v40.i32[1] = DWORD1(v164);
          *v163 = v164;
          v39[6].i32[0] = v15;
          do
          {
            v39[4].i32[v38] = *(a8 + v38 * 4);
            ++v38;
          }

          while (v38 != 4);
          if ((*(a6 + 32) & 1) == 0)
          {
            goto LABEL_233;
          }

          v40.i32[0] = *(a6 + 24);
          v41 = v23;
          if (v23 == 2)
          {
            v43 = 0x3F0000003F000000;
            v42 = v157;
          }

          else
          {
            v42 = v157;
            if (v41 == 1)
            {
              v43 = 1065353216;
            }

            else
            {
              v43 = 0x3F80000000000000;
            }
          }

          v55 = vmul_n_f32(v43, *v153.i32);
          *v37.i32 = *(a6 + 28) + *v40.i32;
          v56 = vdup_lane_s32(v40, 0);
          v57.i32[0] = vsub_f32(v40, v55).u32[0];
          v57.i32[1] = vadd_f32(v56, v55).i32[1];
          v58 = vmaxnm_f32(vdiv_f32(v57, vdup_lane_s32(v37, 0)), 0);
          __asm
          {
            FMOV            V1.2S, #1.0
            FMOV            V2.2S, #-1.0
          }

          v39[2] = vmla_f32(_D2, 0x4000000040000000, vminnm_f32(v58, _D1));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 224), *(a2 + 232));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 240), *(a2 + 248));
          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v14 + 136), *(v14 + 232), v159, v158);
          v177 = v14;
          ggl::BufferMemory::~BufferMemory(v162);
          v54 = 0;
          goto LABEL_71;
        }
      }
    }

LABEL_87:
    v164 = 0uLL;
    v71 = *a7;
    if (!*a7)
    {
      v76 = 0;
      v24 = 0;
      v23 = 2;
      v73 = 0.0;
      LODWORD(v28) = 0;
      goto LABEL_121;
    }

    v72 = *(a7 + 8);
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v175.i64, v71, v72);
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v72);
    }

    v73 = 0.0;
    if (v177 != 1)
    {
      v76 = 0;
      v24 = 0;
      v23 = 2;
      v77 = 1;
LABEL_102:
      LODWORD(v28) = 0;
      goto LABEL_114;
    }

    if (v19 >= 0x17)
    {
      v14 = 23;
    }

    else
    {
      v14 = v19;
    }

    v23 = 2;
    if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v175.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
    {
      v76 = 0;
      v77 = 0;
      v24 = 0;
      goto LABEL_102;
    }

    v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 104, v14, 2, 0);
    if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(407, 2u, *(v175.i64[0] + 24)))
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 403, 2u, fminf(v19, 23.0));
    }

    else
    {
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v162, *(v175.i64[0] + 24), 403, v14, 2u, 0, v74, v75);
    }

    v153 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v162[0])), vdupq_n_s32(0x37800080u));
    v164 = v153;
    v78 = *(v175.i64[0] + 24);
    v79 = fminf(v19, 23.0);
    v80 = *v78;
    if (*v78)
    {
      v81 = *v80;
      LODWORD(v80) = *v80 == 1.0;
      if (*(v78 + 10) == 1 && v81 != 0.0 && v81 != 1.0)
      {
        goto LABEL_237;
      }
    }

    v83 = *(v78 + v80 + 11);
    if (v83 == 2)
    {
      v81 = 0.0;
LABEL_237:
      LOBYTE(v162[0]) = 1;
      LOBYTE(v165) = 1;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v78, 404, 0, v162, v79);
      v152 = v15;
      v147 = v146;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v78, 404, 1, &v165, v79);
      *&v28 = v147 + ((v148 - v147) * v81);
      v15 = v152;
      goto LABEL_113;
    }

    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v175.i64[0] + 24), 404, v83, 0, v79);
    LODWORD(v28) = v84;
LABEL_113:
    v23 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v78, 408, v14, 2, 0);
    v76 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
    v18 = v153;
    v73 = *&v153.i32[3];
    v77 = 1;
LABEL_114:
    if (v177 == 1)
    {
      (*(*v175.i64[0] + 56))(v175.i64[0]);
    }

    if (v176)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v176);
    }

    if (v175.i64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v175.i64[1]);
    }

    if ((v77 & 1) == 0)
    {
      goto LABEL_169;
    }

LABEL_121:
    if (a3[1] == 1)
    {
      v18 = xmmword_1B33AFEE0;
      v164 = xmmword_1B33AFEE0;
      v73 = 1.0;
    }

    if (v73 < 0.0039062 || *&v28 < 0.1)
    {
      goto LABEL_169;
    }

    *v18.i32 = *(a2 + 376) * *&v28;
    v153 = v18;
    ggl::RenderItem::RenderItem(&v175, "draped stroke");
    v173.n128_u8[0] = 0;
    v174 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 256;
    v168 = 1;
    v169 = 0;
    v170 = 2;
    v171 = 0;
    v172 = 0;
    *(&v171 + 2) = v159 != 0;
    v85 = *(a6 + 88);
    if (!v85)
    {
      v93 = *(a6 + 8);
      v173 = *(a6 + 24);
      v174 = 1;
      v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::pop(v157[1]);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v14 + 136) + 48));
      v94 = 0;
      v95 = v163;
      v96 = v163;
      *v163 = v164;
      v97 = v96 + 2;
      do
      {
        *(v97 + v94) = *(a8 + v94);
        v94 += 4;
      }

      while (v94 != 16);
      v150 = v93;
      v98 = 0;
      if (v23 == 1)
      {
        v99 = 0.0;
      }

      else
      {
        v99 = 1.0;
      }

      if (v23 == 1)
      {
        *v98.i32 = 1.0;
      }

      if (v23 == 2)
      {
        v99 = 0.5;
        *v98.i32 = 0.5;
      }

      v100 = -(*v153.i32 * v99);
      *v98.i32 = *v98.i32 * *v153.i32;
      if (a3[1])
      {
        v100 = -1.0;
        *v98.i32 = 1.0;
      }

      *(v95 + 4) = v100;
      *(v95 + 5) = v98.i32[0];
      BYTE6(v171) = a3[2];
      v23 = v157;
      md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedStrokeColorWithDistanceShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v160, v157 + 21, &v165, v98);
      v101 = v161;
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, v160, v161);
      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v101);
      }

      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 224), *(a2 + 232));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 240), *(a2 + 248));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v14 + 136), *(v14 + 232), v159, v158);
      v177 = v14;
      ggl::BufferMemory::~BufferMemory(v162);
      v102 = 1;
      goto LABEL_153;
    }

    if (v85 == 1)
    {
      break;
    }

LABEL_232:
    std::__throw_bad_variant_access[abi:nn200100]();
LABEL_233:
    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_234:
    v31 = 0.0;
  }

  if (*(a6 + 64) != 1)
  {
    goto LABEL_169;
  }

  v150 = *(a6 + 40);
  v14 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::pop(*v157);
  md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedStrokeColorPipelineState,std::shared_ptr<ggl::ElevatedStrokeColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v162, v157 + 4, &v165);
  v86 = *(&v162[0] + 1);
  ggl::GlobeAtmosphere::BasePipelineSetup::setState(v14, *&v162[0], *(&v162[0] + 1));
  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v86);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v14 + 136) + 48));
  v88 = 0;
  v89 = v163;
  v90.i32[1] = DWORD1(v164);
  *v163 = v164;
  v89[6].i32[0] = v15;
  do
  {
    v89[4].i32[v88] = *(a8 + v88 * 4);
    ++v88;
  }

  while (v88 != 4);
  if ((*(a6 + 64) & 1) == 0)
  {
    goto LABEL_233;
  }

  v90.i32[0] = *(a6 + 56);
  v91 = v23;
  if (v23 == 2)
  {
    v92 = 0x3F0000003F000000;
    v23 = v157;
  }

  else
  {
    v23 = v157;
    if (v91 == 1)
    {
      v92 = 1065353216;
    }

    else
    {
      v92 = 0x3F80000000000000;
    }
  }

  v103 = vmul_n_f32(v92, *v153.i32);
  *v87.i32 = *(a6 + 60) + *v90.i32;
  v104 = vdup_lane_s32(v90, 0);
  v105.i32[0] = vsub_f32(v90, v103).u32[0];
  v105.i32[1] = vadd_f32(v104, v103).i32[1];
  v106 = vmaxnm_f32(vdiv_f32(v105, vdup_lane_s32(v87, 0)), 0);
  __asm
  {
    FMOV            V1.2S, #1.0
    FMOV            V2.2S, #-1.0
  }

  v89[2] = vmla_f32(_D2, 0x4000000040000000, vminnm_f32(v106, _D1));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 224), *(a2 + 232));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 136), *(v14 + 232), *(a2 + 240), *(a2 + 248));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(*(v14 + 136), *(v14 + 232), v159, v158);
  v177 = v14;
  ggl::BufferMemory::~BufferMemory(v162);
  v102 = 0;
LABEL_153:
  if (v73 >= 1.0)
  {
    v109 = md::DaVinciRenderStateCache::renderState((v23 + 816), 3, 0, ((a3[1] | a3[2]) & 1) == 0, 0, 1, a3[1], 3);
  }

  else
  {
    v178 = a3[4] + md::StencilReserverByColor::reserveSlot((v23 + 848), &v164);
    v109 = (v23 + 576);
  }

  v176 = v109;
  v179 = (v24 << 10) | 3u;
  v110 = *(a4 + 8);
  if (v110)
  {
    v111 = a4 + 8;
    do
    {
      if (*(v110 + 28) >= v76)
      {
        v111 = v110;
      }

      v110 = *(v110 + 8 * (*(v110 + 28) < v76));
    }

    while (v110);
    if (v111 != a4 + 8 && v76 >= *(v111 + 28))
    {
      v112 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v111 + 32));
      if (v112)
      {
        v113 = *(*(v112 + 16) + 8 * *(v111 + 33));
      }

      else
      {
        v113 = 0;
      }

      v114 = (v157 + 99);
      if (v102)
      {
        md::RenderItemPool::construct(v114, &v175, v150, &v173);
      }

      else
      {
        md::RenderItemPool::construct(v114, &v175, v150);
      }

      ggl::CommandBuffer::pushRenderItem(v113, v115);
    }
  }

LABEL_169:
  v116 = *a7;
  if (!*a7)
  {
    if ((*a3 & 1) == 0)
    {
      goto LABEL_229;
    }

    v24 = 0;
    v121 = 0;
    goto LABEL_196;
  }

  v117 = *(a7 + 8);
  if (v117)
  {
    atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v175.i64, v116, v117);
  if (v117)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v117);
  }

  v28 = 0;
  v118 = 0;
  if (v177 != 1)
  {
    v121 = 0;
    v24 = 0;
    v122 = 1;
LABEL_185:
    v19 = 0.0;
    goto LABEL_188;
  }

  v23 = v19;
  if (v23 >= 0x17)
  {
    v14 = 23;
  }

  else
  {
    v14 = v23;
  }

  if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v175.i64[0] + 24), 91, v14, 2u, 0) & 1) == 0)
  {
    v121 = 0;
    v122 = 0;
    v24 = 0;
    goto LABEL_185;
  }

  v24 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 104, v14, 2, 0);
  a7 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v154 + 16), *(*(v154 + 16) + 8));
  if (gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 2u, *(v175.i64[0] + 24)))
  {
    md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v162, a7, &v175, 2u, v19);
  }

  else
  {
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v162, a7, &v175, v19, 2u, v119, v120);
  }

  v28 = *&v162[0];
  v19 = *(v162 + 3);
  v118 = DWORD2(v162[0]);
  v121 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v175.i64[0] + 24), 138, v14, 2, 0) - 1 < 2;
  v122 = 1;
LABEL_188:
  if (v177 == 1)
  {
    (*(*v175.i64[0] + 56))(v175.i64[0]);
  }

  if (v176)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v176);
  }

  if (v175.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v175.i64[1]);
  }

  if ((v122 & 1) == 0)
  {
    goto LABEL_229;
  }

  if (*a3)
  {
LABEL_196:
    v28 = 0x3F80000000000000;
    v118 = 0;
    v19 = 1.0;
  }

  else if (v19 < 0.0039062)
  {
    goto LABEL_229;
  }

  ggl::RenderItem::RenderItem(&v175, "draped fill");
  v173.n128_u8[0] = 0;
  v174 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 256;
  v168 = 1;
  v169 = 0;
  v170 = 2;
  v171 = 0;
  v172 = 0;
  *(&v171 + 2) = v159 != 0;
  v123 = *(a6 + 88);
  if (v123)
  {
    if (v123 == 1)
    {
      v124 = *(a6 + 72);
      if (!v124)
      {
        goto LABEL_229;
      }

      v125 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorPipelineSetup>::pop(v157[2]);
      md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorPipelineState,std::shared_ptr<ggl::ElevatedFillNoWidthClipColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(&v164, v157 + 38, &v165, v126);
      v127 = *(&v164 + 1);
      v162[0] = v164;
      if (*(&v164 + 1))
      {
        atomic_fetch_add_explicit((*(&v164 + 1) + 8), 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v125, v162);
        std::__shared_weak_count::__release_shared[abi:nn200100](v127);
        std::__shared_weak_count::__release_shared[abi:nn200100](v127);
      }

      else
      {
        ggl::PipelineSetup::setState(v125, v162);
      }

      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v125 + 17) + 32));
      v135 = 0;
      v136 = v163;
      *v163 = v28;
      *(v136 + 2) = v118;
      *(v136 + 3) = v19;
      *(v136 + 8) = v15;
      v137 = v136 + 1;
      do
      {
        *(v137 + v135) = *(a8 + v135);
        v135 += 4;
      }

      while (v135 != 16);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v125 + 17), *(v125 + 29), *(a2 + 224), *(a2 + 232));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v125 + 17), *(v125 + 29), *(a2 + 240), *(a2 + 248));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v125 + 17), *(v125 + 29), v159, v158);
      v177 = v125;
      ggl::BufferMemory::~BufferMemory(v162);
      v134 = 0;
      goto LABEL_214;
    }

    goto LABEL_232;
  }

  if (*(a6 + 40) != 1)
  {
    goto LABEL_229;
  }

  v124 = *(a6 + 8);
  v173 = *(a6 + 24);
  v174 = 1;
  v128 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup>::pop(v157[3]);
  md::DaVinciPipelineStateManager<ggl::DaVinci::ElevatedFillColorWithDistancePipelineState,std::shared_ptr<ggl::ElevatedFillColorShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v162, v157 + 55, &v165, v129);
  v130 = *(&v162[0] + 1);
  ggl::GlobeAtmosphere::BasePipelineSetup::setState(v128, *&v162[0], *(&v162[0] + 1));
  if (v130)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v130);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v162, *(*(v128 + 17) + 32));
  v131 = 0;
  v132 = v163;
  *v163 = v28;
  *(v132 + 2) = v118;
  *(v132 + 3) = v19;
  v133 = v132 + 1;
  do
  {
    *(v133 + v131) = *(a8 + v131);
    v131 += 4;
  }

  while (v131 != 16);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v128 + 17), *(v128 + 29), *(a2 + 224), *(a2 + 232));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v128 + 17), *(v128 + 29), *(a2 + 240), *(a2 + 248));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v128 + 17), *(v128 + 29), v159, v158);
  v177 = v128;
  ggl::BufferMemory::~BufferMemory(v162);
  v134 = 1;
LABEL_214:
  v176 = md::DaVinciRenderStateCache::renderState(v157 + 102, 3, 0, *a3 ^ 1u, 0, 1, *a3, 3);
  v179 = (v24 << 10);
  v138 = *(a4 + 8);
  v156 = a4 + 8;
  if (v138)
  {
    v139 = v156;
    do
    {
      if (*(v138 + 28) >= v121)
      {
        v139 = v138;
      }

      v138 = *(v138 + 8 * (*(v138 + 28) < v121));
    }

    while (v138);
    if (v139 != v156 && v121 >= *(v139 + 28))
    {
      v140 = md::FrameGraph::renderQueueForPass(*(*(a3 + 1) + 8), *(v139 + 32));
      if (v140)
      {
        v141 = *(*(v140 + 16) + 8 * *(v139 + 33));
        if (v134)
        {
          goto LABEL_223;
        }

LABEL_227:
        md::RenderItemPool::construct((v157 + 99), &v175, v124);
      }

      else
      {
        v141 = 0;
        if (!v134)
        {
          goto LABEL_227;
        }

LABEL_223:
        md::RenderItemPool::construct((v157 + 99), &v175, v124, &v173);
      }

      ggl::CommandBuffer::pushRenderItem(v141, v142);
    }
  }

LABEL_229:
  if (v158)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v158);
  }
}

void sub_1B2DF19BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARDebugDrawIntersectionsLogic::runBeforeLayout(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 120);
  v3 = gdc::Registry::storage<arComponents::DidIntersectFrustum>(v2);
  v4 = gdc::Registry::storage<arComponents::LocalBounds>(v2);
  v65 = gdc::Registry::storage<arComponents::MapTileDataComponent>(v2);
  v5.i64[0] = v3;
  v5.i64[1] = v4;
  v6 = (v65 + 32);
  v67 = vaddq_s64(v5, vdupq_n_s64(0x20uLL));
  v68 = v65 + 32;
  v7 = v67.i64[0];
  v8 = 1;
  v9 = &v67;
  do
  {
    if (*(v67.i64[v8] + 32) - *(v67.i64[v8] + 24) < *(v7 + 32) - *(v7 + 24))
    {
      v7 = v67.i64[v8];
      v9 = (&v67 + v8 * 8);
    }

    ++v8;
  }

  while (v8 != 3);
  v10 = (v3 + 32);
  v64 = v9->i64[0];
  if (v3 + 32 == v9->i64[0])
  {
    v45 = *(v3 + 56);
    v44 = *(v3 + 64);
    while (v45 != v44)
    {
      v46 = *(v45 + 4);
      if (v4[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v4 + 4, v46) && *(v65 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6, v46))
      {
        v47 = *v45;
        v48 = HIDWORD(*v45);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v4 + 4, HIDWORD(*v45));
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6, v48);
        v49 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v49 + 32), v48);
        v51 = *(a1 + 120);
        if (*(v49 + 64) == Index)
        {
          v67.i16[0] = 257;
          v52 = -256;
        }

        else
        {
          v67.i16[0] = 0;
          v52 = -16776961;
        }

        *(v67.i32 + 2) = v52;
        v53 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v51);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v53, v47, v67.i16);
      }

      v45 += 8;
    }
  }

  if (v4 + 4 == v64)
  {
    v54 = v4[7];
    v55 = v4[8];
    while (v54 != v55)
    {
      v56 = *(v54 + 4);
      if (*(v3 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v10, v56) && *(v65 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6, v56))
      {
        v57 = *v54;
        v58 = HIDWORD(*v54);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6, HIDWORD(*v54));
        v59 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v60 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v59 + 32), v58);
        v61 = *(a1 + 120);
        if (*(v59 + 64) == v60)
        {
          v67.i16[0] = 257;
          v62 = -256;
        }

        else
        {
          v67.i16[0] = 0;
          v62 = -16776961;
        }

        *(v67.i32 + 2) = v62;
        v63 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v61);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v63, v57, v67.i16);
      }

      v54 += 8;
    }
  }

  v11 = v4 + 4;
  if (v6 == v64)
  {
    v12 = *(v65 + 56);
    for (i = *(v65 + 64); v12 != i; v12 += 8)
    {
      v14 = *(v12 + 4);
      if (*(v3 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v10, v14) && v4[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11, v14))
      {
        v15 = *v12;
        v16 = HIDWORD(*v12);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11, HIDWORD(*v12));
        v17 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v18 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v17 + 32), v16);
        v19 = *(a1 + 120);
        if (*(v17 + 64) == v18)
        {
          v67.i16[0] = 257;
          *(v67.i32 + 2) = -256;
        }

        else
        {
          v67.i16[0] = 0;
          *(v67.i32 + 2) = -16776961;
        }

        v20 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v19);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v20, v15, v67.i16);
        v11 = v4 + 4;
      }
    }
  }

  v21 = *(a1 + 120);
  v22 = gdc::Registry::storage<arComponents::DidIntersectFrustum>(v21);
  v23 = gdc::Registry::storage<arComponents::WorldBounds>(v21);
  v24 = v23;
  v25 = (v23 + 32);
  v27 = v22[7];
  v26 = v22[8];
  if (*(v23 + 64) - *(v23 + 56) >= (v26 - v27))
  {
    v28 = v22 + 4;
  }

  else
  {
    v28 = (v23 + 32);
  }

  v66 = v28;
  if (v22 + 4 == v28 && v27 != v26)
  {
    do
    {
      if (*(v24 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v25, *(v27 + 4)))
      {
        v30 = *v27;
        v31 = HIDWORD(*v27);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v25, HIDWORD(*v27));
        v32 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v33 = *(v32 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v32 + 32), v31);
        v34 = *(a1 + 120);
        v67.i8[0] = 0;
        v67.i8[1] = v33;
        *(v67.i32 + 2) = -16776961;
        v35 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v34);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v35, v30, v67.i16);
      }

      v27 += 8;
    }

    while (v27 != v26);
  }

  if (v25 == v66)
  {
    v36 = *(v24 + 56);
    for (j = *(v24 + 64); v36 != j; v36 += 8)
    {
      if (v22[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v22 + 4, *(v36 + 4)))
      {
        v38 = *v36;
        v39 = HIDWORD(*v36);
        v40 = gdc::Registry::storage<arComponents::DidIntersectRaycast>(*(a1 + 120));
        v41 = *(v40 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v40 + 32), v39);
        v42 = *(a1 + 120);
        v67.i8[0] = 0;
        v67.i8[1] = v41;
        *(v67.i32 + 2) = -16776961;
        v43 = gdc::Registry::storage<arComponents::NeedsDebugDraw>(v42);
        gdc::ComponentStorageWrapper<arComponents::NeedsDebugDraw>::emplace(v43, v38, v67.i16);
      }
    }
  }
}

uint64_t gdc::Registry::storage<arComponents::DidIntersectRaycast>(uint64_t a1)
{
  v3 = 0xB9556ADEAD93443FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB9556ADEAD93443FLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::DidIntersectFrustum>(uint64_t a1)
{
  v3 = 0x410D1776E02BD50ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x410D1776E02BD50AuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::DidIntersectFrustum>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::DidIntersectFrustum>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::DidIntersectFrustum>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::DidIntersectRaycast>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::DidIntersectRaycast>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::DidIntersectRaycast>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::Context::context<md::ARWorldIntersectorContext>(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v2 = vcnt_s8(v1);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x6DBE9777D7FEDAAELL;
    if (*&v1 <= 0x6DBE9777D7FEDAAEuLL)
    {
      v3 = 0x6DBE9777D7FEDAAEuLL % *&v1;
    }
  }

  else
  {
    v3 = (*&v1 - 1) & 0x6DBE9777D7FEDAAELL;
  }

  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x6DBE9777D7FEDAAELL)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *&v1)
      {
        v6 %= *&v1;
      }
    }

    else
    {
      v6 &= *&v1 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x6DBE9777D7FEDAAELL)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x6DBE9777D7FEDAAELL)
  {
    return *(v8 + 32);
  }

  return 0;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARDebugDrawIntersectionsLogic,md::ARDebugDrawIntersectionsContext,md::LogicDependencies<gdc::TypeList<md::ARWorldIntersectorContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA77E48F1AFA034A1)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARWorldIntersectorContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARDebugDrawIntersectionsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARDebugDrawIntersectionsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24AF8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARDebugDrawIntersectionsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A24AF8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARDebugDrawIntersectionsLogic::~ARDebugDrawIntersectionsLogic(md::ARDebugDrawIntersectionsLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::RegionalResourceTileData::~RegionalResourceTileData(md::RegionalResourceTileData *this)
{
  md::RegionalResourceTileData::~RegionalResourceTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A028E8;
  *(this + 80) = &unk_1F2A02928;
  v2 = *(this + 92);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapTileData::~MapTileData(this);
}

uint64_t md::TransitLine::resolveStyleIfNecessary(uint64_t a1, unsigned int a2)
{
  v112 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64) + 184 * a2;
  md::TransitLine::updateFeatureQueryForMergeTypeIfNecessary(a1, a2);
  if (*(v3 + 177) != 1)
  {
    return v3 + 16;
  }

  v4 = *(a1 + 60);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v103, v5, v6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v106 != 1)
  {
    v90 = 0;
    goto LABEL_94;
  }

  if (v4 >= 0x17u)
  {
    v7 = 23;
  }

  else
  {
    v7 = v4;
  }

  v8 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v103[3], 91, v7, 2u, 0);
  v108 = 1;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v107, v103[3], 92, v7, 0, &v108, v9, v10);
  v11 = vdupq_n_s32(0x37800080u);
  v109 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v107)), v11);
  if (v108)
  {
    v12 = &v109;
  }

  else
  {
    v12 = (a1 + 36);
  }

  v98 = v11;
  v99 = *v12;
  v108 = 1;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v107, v103[3], 92, v7, 1u, &v108, v99, *v11.i64);
  v109 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v107)), v98);
  if (v108)
  {
    v13 = &v109;
  }

  else
  {
    v13 = (a1 + 36);
  }

  v14 = *v13;
  v15 = v103[3];
  if (*v15)
  {
    v16 = **v15;
  }

  else
  {
    v16 = 0.0;
  }

  *(v3 + 16) = vmlaq_n_f32(v99, vsubq_f32(v14, v99), v16);
  *(v3 + 32) = v14;
  if (v8)
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v15, 94, v7, 2u, 0);
    v17 = v103[3];
    *(v3 + 72) = v18;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v17, 264, v7, 2u, 0);
    *(v3 + 76) = v19;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v103[3], 97, v7, 2u, 0);
  }

  else
  {
    *(v3 + 72) = 0;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v15, 264, v7, 2u, 0);
    *(v3 + 76) = v20.n128_u32[0];
    v20.n128_u64[0] = 0;
  }

  *(v3 + 80) = v20.n128_u32[0];
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v109, v103[3], 93, v7, 2u, 0, v20, v21);
  *(v3 + 48) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v109.f32)), vdupq_n_s32(0x37800080u));
  *(v3 + 84) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v103[3], 265, v7, 2u, 0);
  *(v3 + 88) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v103[3], 267, v7, 2, 0);
  *(v3 + 92) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v103[3], 268, v7, 2u, 0);
  *(v3 + 96) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v103[3], 269, v7, 2, 0);
  *(v3 + 100) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v103[3], 104, v7, 2, 0);
  v22 = v103;
  if (*(v3 + 28) > 0.0)
  {
    v23 = v103[3];
    v24 = *v23;
    if (*v23 && (v25 = *v24, LODWORD(v24) = *v24 == 1.0, *(v23 + 10) == 1) && v25 != 0.0 && v25 != 1.0 || (v26 = *(v23 + v24 + 11), v26 == 2))
    {
      v27 = *(v23 + 16);
      if (v27)
      {
        v28 = *(v27 + 72);
        if (v28)
        {
          v29 = *v28 + 120 * *(v28 + v7 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x114u) != *(v29 + 12))
          {
LABEL_41:
            v100 = *(v3 + 16);
            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v23, 276, v7, 2u, 0);
            __asm
            {
              FMOV            V1.4S, #-1.0
              FMOV            V2.4S, #1.0
            }

            *(v3 + 16) = vmlaq_n_f32(_Q2, vaddq_f32(v100, _Q1), v42);
            v22 = v103;
            goto LABEL_42;
          }
        }

        if (*(v23 + 56))
        {
          v30 = *(v23 + 48);
          v31 = 8 * *(v23 + 56);
          while (1)
          {
            v32 = *(*v30 + 72);
            if (v32)
            {
              v33 = *v32 + 120 * *(v32 + v7 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, 0x114u) != *(v33 + 12))
              {
                goto LABEL_41;
              }
            }

            v30 += 8;
            v26 = 1;
            v31 -= 8;
            if (!v31)
            {
              goto LABEL_38;
            }
          }
        }
      }

      v26 = 1;
    }

LABEL_38:
    v34 = *(v23 + 16 * v26 + 16);
    if (!v34)
    {
      goto LABEL_42;
    }

    v35 = *(v34 + 72);
    if (v35)
    {
      v36 = *v35 + 120 * *(v35 + v7 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v36, 0x114u) != *(v36 + 12))
      {
        goto LABEL_41;
      }
    }

    v52 = v23 + 16 * v26;
    if (*(v52 + 56))
    {
      v53 = *(v52 + 48);
      v54 = 8 * *(v52 + 56);
      do
      {
        v55 = *(*v53 + 72);
        if (v55)
        {
          v56 = *v55 + 120 * *(v55 + v7 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v56, 0x114u) != *(v56 + 12))
          {
            goto LABEL_41;
          }
        }

        v53 += 8;
        v54 -= 8;
      }

      while (v54);
    }
  }

LABEL_42:
  if (*(v3 + 44) <= 0.0)
  {
    goto LABEL_64;
  }

  v43 = v22[3];
  v44 = *(v43 + 12);
  if (v44 == 2)
  {
    v45 = *(v43 + 16);
    if (v45)
    {
      v46 = *(v45 + 72);
      if (v46)
      {
        v47 = *v46 + 120 * *(v46 + v7 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v47, 0x114u) != *(v47 + 12))
        {
LABEL_63:
          v101 = *(v3 + 32);
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v43, 276, v7, 1u, 0);
          __asm
          {
            FMOV            V1.4S, #-1.0
            FMOV            V2.4S, #1.0
          }

          *(v3 + 32) = vmlaq_n_f32(_Q2, vaddq_f32(v101, _Q1), v62);
          v22 = v103;
          goto LABEL_64;
        }
      }

      if (*(v43 + 56))
      {
        v48 = *(v43 + 48);
        v49 = 8 * *(v43 + 56);
        while (1)
        {
          v50 = *(*v48 + 72);
          if (v50)
          {
            v51 = *v50 + 120 * *(v50 + v7 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v51, 0x114u) != *(v51 + 12))
            {
              goto LABEL_63;
            }
          }

          v48 += 8;
          v44 = 1;
          v49 -= 8;
          if (!v49)
          {
            goto LABEL_60;
          }
        }
      }
    }

    v44 = 1;
  }

LABEL_60:
  v57 = *(v43 + 16 * v44 + 16);
  if (!v57)
  {
    goto LABEL_64;
  }

  v58 = *(v57 + 72);
  if (v58)
  {
    v59 = *v58 + 120 * *(v58 + v7 + 16);
    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v59, 0x114u) != *(v59 + 12))
    {
      goto LABEL_63;
    }
  }

  v76 = v43 + 16 * v44;
  if (*(v76 + 56))
  {
    v77 = *(v76 + 48);
    v78 = 8 * *(v76 + 56);
    do
    {
      v79 = *(*v77 + 72);
      if (v79)
      {
        v80 = *v79 + 120 * *(v79 + v7 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v80, 0x114u) != *(v80 + 12))
        {
          goto LABEL_63;
        }
      }

      v77 += 8;
      v78 -= 8;
    }

    while (v78);
  }

LABEL_64:
  v63 = *(v3 + 60);
  if (v63 > 0.0)
  {
    v64 = v22[3];
    v65 = *v64;
    if (*v64 && (v66 = *v65, LODWORD(v65) = *v65 == 1.0, *(v64 + 10) == 1) && (v66 != 0.0 ? (_ZF = v66 == 1.0) : (_ZF = 1), !_ZF) || (v68 = *(v64 + v65 + 11), v68 == 2))
    {
      v69 = *(v64 + 16);
      if (v69)
      {
        v70 = *(v69 + 72);
        if (v70)
        {
          v71 = *v70 + 120 * *(v70 + v7 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v71, 0x115u) != *(v71 + 12))
          {
LABEL_92:
            v102 = *(v3 + 48);
            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v64, 277, v7, 2u, 0);
            __asm
            {
              FMOV            V1.4S, #-1.0
              FMOV            V2.4S, #1.0
            }

            v87 = vmlaq_n_f32(_Q2, vaddq_f32(v102, _Q1), v86);
            *(v3 + 48) = v87;
            v63 = v87.f32[3];
            v22 = v103;
            goto LABEL_93;
          }
        }

        if (*(v64 + 56))
        {
          v72 = *(v64 + 48);
          v73 = 8 * *(v64 + 56);
          while (1)
          {
            v74 = *(*v72 + 72);
            if (v74)
            {
              v75 = *v74 + 120 * *(v74 + v7 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v75, 0x115u) != *(v75 + 12))
              {
                goto LABEL_92;
              }
            }

            v72 += 8;
            v68 = 1;
            v73 -= 8;
            if (!v73)
            {
              goto LABEL_89;
            }
          }
        }
      }

      v68 = 1;
    }

LABEL_89:
    v81 = *(v64 + 16 * v68 + 16);
    if (v81)
    {
      v82 = *(v81 + 72);
      if (!v82 || (v83 = *v82 + 120 * *(v82 + v7 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v83, 0x115u) == *(v83 + 12)))
      {
        v93 = v64 + 16 * v68;
        if (!*(v93 + 56))
        {
          goto LABEL_93;
        }

        v94 = *(v93 + 48);
        v95 = 8 * *(v93 + 56);
        while (1)
        {
          v96 = *(*v94 + 72);
          if (v96)
          {
            v97 = *v96 + 120 * *(v96 + v7 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v97, 0x115u) != *(v97 + 12))
            {
              break;
            }
          }

          v94 += 8;
          v95 -= 8;
          if (!v95)
          {
            goto LABEL_93;
          }
        }
      }

      goto LABEL_92;
    }
  }

LABEL_93:
  *(v3 + 80) = *(v3 + 72) + (*(v3 + 80) * 2.0);
  *(v3 + 64) = *(v3 + 28);
  *(v3 + 68) = v63;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gss::DashPattern>(&v109, v22[3], 300, v7, 2);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vdeallocate((v3 + 112));
  *(v3 + 112) = v109;
  *(v3 + 128) = v110;
  v109 = 0uLL;
  v110 = 0;
  *(v3 + 144) = v111;
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v109);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v103[3], 326, v7, 2u, 0);
  *(v3 + 168) = v88.n128_u32[0];
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v109, v103[3], 151, v7, 2u, 0, v88, v89);
  *(v3 + 152) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v109.f32)), vdupq_n_s32(0x37800080u));
  *(v3 + 104) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v103[3], 341, v7, 2, 0);
  v90 = v106;
LABEL_94:
  v91 = *(v3 + 68);
  *(v3 + 28) = *(a1 + 52) * *(v3 + 64);
  *(v3 + 60) = *(a1 + 52) * v91;
  if (v90)
  {
    (*(*v103 + 56))(v103);
  }

  if (v105)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v105);
  }

  if (v104)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v104);
  }

  *(v3 + 177) = 0;
  return v3 + 16;
}

void sub_1B2DF3878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<md::TransitLine::MergeTypeInfo>::__destroy_vector::operator()[abi:nn200100](char ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = (v4 - 72);
      do
      {
        std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v6);
        v7 = *(v6 - 13);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = v6 - 112;
        v6 = (v6 - 184);
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::TransitLine::updateFeatureQueryForMergeTypeIfNecessary(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v4 = result[8] + 184 * a2;
  v5 = *(result + 88);
  if ((*(v4 + 176) & 1) != 0 || *(v4 + 178) != v5 || *(v4 + 179) != a2)
  {
    v23[0] = 0;
    v23[1] = 0;
    v24 = 256;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v23, 0x10002u) = v5;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v23, 0x10015u) = v2;
    *(v4 + 178) = v5 | (v2 << 8);
    v6 = *v4;
    if (!*v4)
    {
      v13 = *result;
      if (*result)
      {
        md::createFeatureAttributeSet(v26, (result[2] + 24));
        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v25, *v13, *(v13 + 8));
        operator new();
      }

      goto LABEL_29;
    }

    v7 = *(v6 + 16);
    if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0)
    {
LABEL_29:
      *(v4 + 176) = 256;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v23);
      return;
    }

    v9 = v8;
    v10 = *(v6 + 8);
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = *(v10 + 520);
    v12 = *(v10 + 528);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (*(v11 + 268))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        goto LABEL_18;
      }

      v16 = *(v6 + 256);
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      if (v16)
      {
LABEL_18:
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v26, v10, (v6 + 272), v23);
        v17 = v26[0];
        v26[0] = 0uLL;
        v15 = *(v6 + 264);
        *(v6 + 256) = v17;
        if (v15)
        {
LABEL_19:
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
          if (*(&v26[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26[0] + 1));
          }
        }

LABEL_21:
        v18 = *(v10 + 520);
        v19 = *(v10 + 528);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          v20 = *(v18 + 268);
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
          if (v20)
          {
            goto LABEL_28;
          }

LABEL_25:
          *&v26[0] = v6 + 32;
          v21 = pthread_rwlock_wrlock((v6 + 32));
          if (v21)
          {
            geo::read_write_lock::logFailure(v21, "write lock", v22);
          }

          std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100]((v6 + 24), 0);
          geo::write_lock_guard::~write_lock_guard(v26);
          goto LABEL_28;
        }

        if ((*(v18 + 268) & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_28:
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        goto LABEL_29;
      }
    }

    else if ((*(v11 + 268) & 1) != 0 || *(v6 + 256))
    {
      goto LABEL_18;
    }

    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(v26, v10, (v6 + 272), v23);
    v14 = v26[0];
    v26[0] = 0uLL;
    v15 = *(v6 + 248);
    *(v6 + 240) = v14;
    if (v15)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }
}