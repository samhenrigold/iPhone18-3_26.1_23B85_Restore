void ___ZN2CI4Node16remove_parentROIERKNS_9parentROIERKNS_6roiKeyEPNS_14TextureManagerEPv_block_invoke(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void CI::SerialRectArray::removeTile(CI::SerialRectArray *this, int a2, const CI::parentROI *a3, __n128 a4, __n128 a5)
{
  v5 = *this + 120 * a2;
  v7 = *(v5 + 32);
  v6 = *(v5 + 40);
  v8 = v5 + 32;
  if (v7 != v6)
  {
    v12 = (v7 + 3);
    while (!CI::parentROI::operator==(v7, a3))
    {
      v7 += 3;
      v12 += 48;
      if (v7 == *(v8 + 8))
      {
        return;
      }
    }

    std::vector<CI::parentROI>::push_back[abi:nn200100](*this + 120 * a2 + 56, v7);
    v13 = *(v8 + 8);
    v14 = v13 - v12;
    if (v13 != v12)
    {
      memmove(v12 - 48, v12, v13 - v12);
    }

    *(v8 + 8) = &v12[v14 - 48];
  }
}

void ___ZN2CI4Node16remove_parentROIERKNS_9parentROIERKNS_6roiKeyEPNS_14TextureManagerEPv_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v6;
  v12 = *(a1 + 72);
  DWORD1(v11) = *(a2 + 20);
  v7 = (*(*v5 + 48))(v5, *(a1 + 104));
  v8 = (*(*v5 + 48))(v5, *(a1 + 104));
  v9 = a3;
  CI::Node::remove_parentROI(v7, &v10, &v8, *(a1 + 88), *(a1 + 96));
}

void CI::Node::regions_of_child(CI::Node *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, uint64_t a3@<X1>, void *a4@<X8>)
{
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (CGRectIsEmpty(a2))
  {
    goto LABEL_47;
  }

  v55 = 0u;
  v56 = 0u;
  v11 = (*(*this + 80))(this, a3, x, y, width, height);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = (*(*this + 48))(this, a3);
  v19 = (*(*v18 + 368))();
  if (v19 * v20)
  {
    v21 = v19;
    v22 = v20;
    v58.origin.x = v11;
    v58.origin.y = v13;
    v58.size.width = v15;
    v58.size.height = v17;
    if (CGRectIsNull(v58))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0x7FFFFFFF;
LABEL_6:
      if (v25 != 0x7FFFFFFF || v23)
      {
        v26 = 0x7FFFFFFF;
      }

      else
      {
        v26 = 0x7FFFFFFF;
        if (!v24)
        {
          v27 = MEMORY[0x1E695F050];
LABEL_29:
          v11 = *v27;
          v13 = v27[1];
          v15 = v27[2];
          v17 = v27[3];
LABEL_32:
          *&v55 = v11;
          *(&v55 + 1) = v13;
          *&v56 = v15;
          *(&v56 + 1) = v17;
          goto LABEL_33;
        }
      }

      goto LABEL_31;
    }

    v59.origin.x = v11;
    v59.origin.y = v13;
    v59.size.width = v15;
    v59.size.height = v17;
    if (CGRectIsInfinite(v59))
    {
      v24 = 0xFFFFFFFFLL;
      v23 = 0xFFFFFFFFLL;
      v25 = -2147483647;
      v26 = -2147483647;
    }

    else
    {
      v60.origin.x = v11;
      v60.origin.y = v13;
      v60.size.width = v15;
      v60.size.height = v17;
      v61 = CGRectInset(v60, 0.000001, 0.000001);
      v62 = CGRectIntegral(v61);
      v26 = v62.origin.x;
      v25 = v62.origin.y;
      v23 = v62.size.width;
      v24 = v62.size.height;
    }

    if (v26 == -2147483647 && v25 == -2147483647 && v23 == 0xFFFFFFFF)
    {
      v25 = -2147483647;
      v23 = 0xFFFFFFFFLL;
      if (!v24 || v24 == 0xFFFFFFFF)
      {
        goto LABEL_25;
      }
    }

    else if (!v23 || !v24)
    {
LABEL_22:
      if (v26 != -2147483647)
      {
        if (v26 != 0x7FFFFFFF)
        {
          goto LABEL_31;
        }

        goto LABEL_6;
      }

LABEL_25:
      v26 = -2147483647;
      if (v25 == -2147483647 && v23 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
      {
        v27 = MEMORY[0x1E695F040];
        goto LABEL_29;
      }

LABEL_31:
      v11 = v26;
      v13 = v25;
      v15 = v23;
      v17 = v24;
      goto LABEL_32;
    }

    v28 = v21 + v26 + v23 - 1;
    v29 = v22 + v24 + v25 - 1;
    v26 = v26 / v21 * v21;
    v25 = v25 / v22 * v22;
    v23 = (v28 - v26 - v28 % v21);
    v24 = (v29 - v25 - v29 % v22);
    goto LABEL_22;
  }

LABEL_33:
  v30 = (*(*v18 + 168))(v18);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = (*(*v18 + 176))(v18);
  v52 = v38;
  v53 = v37;
  v50 = v40;
  v51 = v39;
  v41 = (*(*v18 + 16))(v18) >= 47 && (*(*v18 + 16))(v18) < 50;
  v42 = (*(*v18 + 16))(v18);
  if (v41 && (v63.origin.x = v30, v63.origin.y = v32, v63.size.width = v34, v63.size.height = v36, !CGRectIsInfinite(v63)))
  {
    if ((v18[293] & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v42 == 51)
  {
    v64.origin.x = v30;
    v64.origin.y = v32;
    v64.size.width = v34;
    v64.size.height = v36;
    if (!CGRectIsInfinite(v64) && (v18[140] & 1) == 0)
    {
      *(&v56 + 1) = v36;
LABEL_43:
      v17 = v36;
      v15 = v34;
      v13 = v32;
      v11 = v30;
    }
  }

  v65.origin.x = v30;
  v65.origin.y = v32;
  v65.size.width = v34;
  v65.size.height = v36;
  if (CGRectIsInfinite(v65))
  {
    v66.origin.y = v52;
    v66.origin.x = v53;
    v66.size.height = v50;
    v66.size.width = v51;
    IsInfinite = CGRectIsInfinite(v66);
    if (!IsInfinite)
    {
      v71.origin.x = v11;
      v71.origin.y = v13;
      v71.size.width = v15;
      v71.size.height = v17;
      v77.origin.y = v52;
      v77.origin.x = v53;
      v77.size.height = v50;
      v77.size.width = v51;
      CI::ClampNode::adjust_roi_for_clamp_rect(IsInfinite, v71, v77);
      v54 = CGRectIntegral(v72);
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      v49 = &v54;
      goto LABEL_55;
    }
  }

  v67.origin.x = v30;
  v67.origin.y = v32;
  v67.size.width = v34;
  v67.size.height = v36;
  v76 = CGRectInset(v67, -1.0, -1.0);
  v68.origin.x = v11;
  v68.origin.y = v13;
  v68.size.width = v15;
  v68.size.height = v17;
  v69 = CGRectIntersection(v68, v76);
  v44 = v69.origin.x;
  v45 = v69.origin.y;
  v46 = v69.size.width;
  v47 = v69.size.height;
  if (!CGRectIsEmpty(v69))
  {
    v70.origin.x = v44;
    v70.origin.y = v45;
    v70.size.width = v46;
    v70.size.height = v47;
    if (CGRectIsInfinite(v70))
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v48 = MEMORY[0x1E695F040];
      goto LABEL_48;
    }

    v73.origin.x = v44;
    v73.origin.y = v45;
    v73.size.width = v46;
    v73.size.height = v47;
    v74 = CGRectInset(v73, 0.001, 0.001);
    v75 = CGRectIntegral(v74);
    *&v55 = v75.origin.x;
    *(&v55 + 1) = *&v75.origin.y;
    *&v56 = v75.size.width;
    *(&v56 + 1) = *&v75.size.height;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v49 = &v55;
LABEL_55:
    std::vector<CGRect>::push_back[abi:nn200100](a4, v49);
    return;
  }

LABEL_47:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v48 = MEMORY[0x1E695F050];
LABEL_48:

  std::vector<CGRect>::push_back[abi:nn200100](a4, v48);
}

uint64_t CI::Node::unique_child_count(CI::Node *this)
{
  v2 = (*(*this + 40))(this);
  v3 = v2;
  if (v2 >= 2)
  {
    v4 = 0;
    v8 = 0;
    v9 = 0;
    v7 = &v8;
    do
    {
      v6 = (*(*this + 48))(this, v4);
      std::__tree<CI::Node *>::__emplace_unique_key_args<CI::Node *,CI::Node *>(&v7, &v6, &v6);
      v4 = (v4 + 1);
    }

    while (v3 != v4);
    v3 = v9;
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v7, v8);
  }

  return v3;
}

CI::ProgramNode *CI::Node::program_graph(CI::Node *this, CI::Context *a2, CI::NodeToNodeMap *a3, CI::NodeToNodeMap *a4)
{
  v8 = CI::NodeToNodeMap::findAndRef(a3, this);
  if (!v8)
  {
    v8 = CI::ProgramNode::build_program_graph(this, a2, a3, a4);
    CI::NodeToNodeMap::add(a3, this, v8);
  }

  return v8;
}

uint64_t CI::Node::print_for_graph(uint64_t a1, FILE *a2, uint64_t a3)
{
  if (CI_GRAPHVIZ_INTERNAL() || (CI_PRINT_TREE_dump_intermediates() & 1) != 0 || CI_PRINT_TREE_dump_outputs())
  {
    fprintf(a2, "{%d} ", *(a1 + 36));
  }

  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  (*(*a1 + 120))(a1, a2, v34, 1);
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v34);
  if ((-286331153 * ((*(*(a1 + 16) + 8) - **(a1 + 16)) >> 3)) >= 1)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        fprintf(a2, ",");
      }

      else
      {
        fprintf(a2, " rois=");
      }

      CI::fprintf(a2, v7, *(**(a1 + 16) + 120 * v6));
      if (*(**(a1 + 16) + 120 * v6 + 80) >= 2)
      {
        fprintf(a2, "/%d", *(**(a1 + 16) + 120 * v6 + 80));
      }

      v8 = *(a3 + 8);
      if (*a3 != v8)
      {
        v9 = (*a3 + 32);
        do
        {
          p_x = &v9[-1].origin.x;
          if (CGRectEqualToRect(*(**(a1 + 16) + 120 * v6), v9[-1]))
          {
            fprintf(a2, " (%dMB)", (*&v9->origin.x + 0x80000) >> 20);
          }

          v9 = (v9 + 40);
        }

        while (p_x + 5 != v8);
      }

      ++v6;
    }

    while (v6 < (-286331153 * ((*(*(a1 + 16) + 8) - **(a1 + 16)) >> 3)));
  }

  result = (*(*a1 + 16))(a1);
  if (result != 45)
  {
    fwrite(" extent=", 8uLL, 1uLL, a2);
    v36.origin.x = (*(*a1 + 168))(a1);
    CI::fprintf(a2, v12, v36);
    v13 = (*(*a1 + 168))(a1);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v39.origin.x = (*(*a1 + 176))(a1);
    v39.origin.y = v20;
    v39.size.width = v21;
    v39.size.height = v22;
    v37.origin.x = v13;
    v37.origin.y = v15;
    v37.size.width = v17;
    v37.size.height = v19;
    if (!CGRectEqualToRect(v37, v39))
    {
      v38.origin.x = (*(*a1 + 176))(a1);
      CI::fprintf(a2, v23, v38);
    }

    if ((*(*a1 + 304))(a1))
    {
      v24 = " luma opaque";
      v25 = 12;
    }

    else if ((*(*a1 + 296))(a1))
    {
      v24 = " r-only opaque";
      v25 = 14;
    }

    else if ((*(*a1 + 288))(a1))
    {
      v24 = " rg-only opaque";
      v25 = 15;
    }

    else
    {
      result = (*(*a1 + 280))(a1);
      if (!result)
      {
        goto LABEL_30;
      }

      v24 = " opaque";
      v25 = 7;
    }

    result = fwrite(v24, v25, 1uLL, a2);
  }

LABEL_30:
  if (*(a3 + 152) != 1)
  {
    return result;
  }

  v26 = *(a3 + 120);
  if (v26 != 0.0)
  {
    result = fprintf(a2, " fill=%.1fms", v26 * 1000.0);
  }

  v27 = *(a3 + 128);
  if (v27)
  {
    result = fprintf(a2, " area=%.2fMP", vcvtd_n_f64_u64(v27, 0x14uLL));
  }

  if (*(a3 + 136))
  {
    result = fprintf(a2, " cycles=%llu", *(a3 + 136));
  }

  v28 = *(a3 + 144);
  if (v28)
  {
    v29 = v28 / 1000000.0;
LABEL_41:
    result = fprintf(a2, " time=%.1fms", v29);
    goto LABEL_42;
  }

  v30 = *(a3 + 96);
  if (v30 != 0.0)
  {
    v29 = v30 * 1000.0;
    goto LABEL_41;
  }

LABEL_42:
  if (*(a3 + 32) != *(a3 + 24))
  {
    result = fwrite(" peakTiles=", 0xBuLL, 1uLL, a2);
    v32 = *(a3 + 24);
    for (i = *(a3 + 32); v32 != i; v32 += 40)
    {
      CI::fprintf(a2, v31, *v32);
      fprintf(a2, " (%dMB)", (*(v32 + 32) + 0x80000) >> 20);
      result = fputc(44, a2);
    }
  }

  return result;
}

void CI::Node::graphvis_set_title(uint64_t a1, void *a2, void *a3)
{
  if (CI_GRAPHVIZ_INTERNAL())
  {
    v6 = CFStringCreateWithFormat(0, 0, @"%u", *(a1 + 36));
    CIGVNodeSetTitle(a2, v6);

    CFRelease(v6);
  }

  else
  {
    v9 = a1;
    v7 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a3, &v9);
    if (v7)
    {
      v8 = CFStringCreateWithFormat(0, 0, @"%u", *(v7 + 6));
      CIGVNodeSetTitle(a2, v8);
      CFRelease(v8);
    }
  }
}

CIGVNode *CI::Node::node_for_graphviz_stats(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 176))(a1);
  v10 = CIGVNodeCreateForNode(a1, v6, v7, v8, v9);
  v11 = (*(*a1 + 56))(a1);
  CIGVNodeSetShape(v10, v11);
  v12 = (*(*a1 + 64))(a1);
  CIGVNodeSetColor(v10, v12);
  v13 = (*(*a1 + 96))(a1);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2000000000;
  v33[3] = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2000000000;
  v32[3] = 0;
  if (v13)
  {
    v14 = v13;
    v15 = CopyPeakNonVolatileList();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = ___ZNK2CI4Node23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS0_9NodeStatsE_block_invoke;
    v30[3] = &unk_1E75C72B0;
    v31 = v14;
    v30[4] = v32;
    v30[5] = v33;
    v30[6] = v10;
    __CFArray::for_each(v15, v30);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  (*(*a1 + 136))(a1, v10, a2);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = *"";
  v20[2] = ___ZNK2CI4Node23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS0_9NodeStatsE_block_invoke_2;
  v20[3] = &unk_1F103C490;
  v20[6] = a1;
  v20[7] = a2;
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v21, a3);
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v22, (a3 + 24));
  std::vector<CGRect>::vector[abi:nn200100](__p, (a3 + 48));
  v26 = *(a3 + 104);
  v27 = *(a3 + 120);
  v28 = *(a3 + 136);
  v29 = *(a3 + 152);
  v24 = *(a3 + 72);
  v25 = *(a3 + 88);
  v20[4] = v33;
  v20[5] = v32;
  v16 = stream_to_string(v20);
  CIGVNodeSetLabel(v10, v16);
  CFRelease(v16);
  (*(*a1 + 144))(a1, v10);
  if (CI_PRINT_TREE_dump_rois() && (-286331153 * ((*(a1[2] + 8) - *a1[2]) >> 3)) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      CIGVNodeAddRoi(v10);
      ++v18;
      v17 += 120;
    }

    while (v18 < (-286331153 * ((*(a1[2] + 8) - *a1[2]) >> 3)));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);
  return v10;
}

const __CFString *___ZNK2CI4Node23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS0_9NodeStatsE_block_invoke(uint64_t a1, __CFDictionary *this)
{
  result = __CFDictionary::getInt32(this, @"imgIndex", 0);
  if (*(a1 + 56) == result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    Int32 = __CFDictionary::getInt32(this, @"size", 0);
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) += Int32;

    return CIGVNodeSetColor(v6, 0xB);
  }

  return result;
}

uint64_t ___ZNK2CI4Node23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS0_9NodeStatsE_block_invoke_2(uint64_t a1, FILE *a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v34, (a1 + 64));
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v35, (a1 + 88));
  std::vector<CGRect>::vector[abi:nn200100](__p, (a1 + 112));
  v6 = *(a1 + 184);
  v39 = *(a1 + 168);
  v40 = v6;
  v41 = *(a1 + 200);
  v42 = *(a1 + 216);
  v7 = *(a1 + 152);
  v37 = *(a1 + 136);
  v38 = v7;
  ((*v4)[20])(v4, a2, v5, v34);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((-286331153 * ((v4[2][1] - *v4[2]) >> 3)) < 1)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (v9)
      {
        fprintf(a2, ",");
      }

      else
      {
        fprintf(a2, "\nrois=");
      }

      if (v9 && (v9 & 1) == 0)
      {
        fwrite("\n     ", 6uLL, 1uLL, a2);
      }

      CI::fprintf(a2, v11, *(*v4[2] + v8));
      v12 = v4[2];
      v13 = *v12;
      v14 = *v12 + v8;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 80);
      if (v17 >= 2)
      {
        fprintf(a2, "/%d", v17);
        v12 = v4[2];
        v13 = *v12;
      }

      v10 = (v10 + v15 * v16);
      ++v9;
      v8 += 120;
    }

    while (v9 < (-286331153 * ((v12[1] - v13) >> 3)));
  }

  v18 = *(*(*(a1 + 32) + 8) + 24);
  if (v18)
  {
    fprintf(a2, "\npeakContribution=%.1fMB", vcvtd_n_f64_u64(v18, 0x14uLL));
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    fprintf(a2, "\npeakContributionCount=%ld", *(*(*(a1 + 40) + 8) + 24));
  }

  result = ((*v4)[2])(v4);
  if (result != 45)
  {
    fprintf(a2, "\npixels=%ld", v10);
    fprintf(a2, "%cextent=", 10);
    v43.origin.x = ((*v4)[21])(v4);
    CI::fprintf(a2, v20, v43);
    v21 = ((*v4)[21])(v4);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v46.origin.x = ((*v4)[22])(v4);
    v46.origin.y = v28;
    v46.size.width = v29;
    v46.size.height = v30;
    v44.origin.x = v21;
    v44.origin.y = v23;
    v44.size.width = v25;
    v44.size.height = v27;
    if (!CGRectEqualToRect(v44, v46))
    {
      v45.origin.x = ((*v4)[22])(v4);
      CI::fprintf(a2, v31, v45);
    }

    if (((*v4)[38])(v4))
    {
      fprintf(a2, "%cluma opaque");
    }

    else if (((*v4)[37])(v4))
    {
      fprintf(a2, "%cr-only opaque");
    }

    else if (((*v4)[36])(v4))
    {
      fprintf(a2, "%crg-only opaque");
    }

    else if (((*v4)[35])(v4))
    {
      fprintf(a2, "%copaque");
    }

    if (((*v4)[40])(v4) == -1)
    {
      fwrite(" shallow", 8uLL, 1uLL, a2);
    }

    if (((*v4)[40])(v4) == 1)
    {
      fwrite(" deep", 5uLL, 1uLL, a2);
    }

    result = ((*v4)[50])(v4);
    if (result)
    {
      v32 = ((*v4)[50])(v4);
      result = fprintf(a2, "%cdigest=%016llX", 10, v32);
    }
  }

  if (*(a1 + 216) == 1)
  {
    v33 = *(a1 + 184);
    if (v33 != 0.0)
    {
      result = fprintf(a2, "\nfillTime=%.1fms", v33 * 1000.0);
    }

    if (*(a1 + 192))
    {
      return fprintf(a2, "\nfillPixels=%llu", *(a1 + 192));
    }
  }

  return result;
}

void CI::Node::BuildMapToUseCount(CI::Node *this, CI::Node *a2)
{
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2000000000;
  operator new();
}

uint64_t ___ZN2CI4Node18BuildMapToUseCountEPS0__block_invoke(uint64_t a1, unint64_t a2)
{
  v10 = a2;
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v2 + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != v2 + 8 && *(v4 + 32) <= a2)
  {
    ++*(v4 + 40);
    return 1;
  }

  else
  {
LABEL_9:
    v11 = &v10;
    v8 = std::__tree<std::__value_type<CI::Node const*,CI::useCountDepth>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,CI::useCountDepth>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,CI::useCountDepth>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(v2, &v10, &std::piecewise_construct, &v11);
    result = 0;
    *(v8 + 10) = 1;
  }

  return result;
}

void std::vector<CI::SerialRectArray::roiData>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 15;
        std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[12];
  if (v3)
  {
    a2[13] = v3;
    operator delete(v3);
  }

  v4 = a2[7];
  if (v4)
  {
    a2[8] = v4;
    operator delete(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

void std::vector<CI::SerialRectArray::roiData>::__assign_with_size[abi:nn200100]<CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<CI::SerialRectArray::roiData>::__vdeallocate(a1);
    if (a4 <= 0x222222222222222)
    {
      v9 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
      {
        v10 = 0x222222222222222;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CI::SerialRectArray::roiData>::__vallocate[abi:nn200100](a1, v10);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1] - v8;
  if (0xEEEEEEEEEEEEEEEFLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 15;
        std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(a1, v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *>(&v15, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<CI::SerialRectArray::roiData>,CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(a1, a2 + v11, a3, a1[1]);
  }
}

void std::vector<CI::SerialRectArray::roiData>::__vdeallocate(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 15;
        std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<CI::SerialRectArray::roiData>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SerialRectArray::roiData>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<CI::SerialRectArray::roiData>,CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = (a4 + v7);
      v10 = *(a2 + v7 + 16);
      *v9 = *(a2 + v7);
      v9[1] = v10;
      std::vector<CI::parentROI>::vector[abi:nn200100]((a4 + v7 + 32), (a2 + v7 + 32));
      std::vector<CI::parentROI>::vector[abi:nn200100]((a4 + v7 + 56), (a2 + v7 + 56));
      v9[5] = *(a2 + v7 + 80);
      std::vector<unsigned long>::vector[abi:nn200100]((a4 + v7 + 96), (a2 + v7 + 96));
      v7 += 120;
    }

    while (v8 + 120 != a3);
    a4 += v7;
  }

  return a4;
}

void *std::vector<CI::parentROI>::vector[abi:nn200100](void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CI::parentROI>::__vallocate[abi:nn200100](a1, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4));
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    v10 = *(a2 + v7 + 16);
    *v8 = *(a2 + v7);
    *(v8 + 16) = v10;
    if (a2 == a4)
    {
      *(v8 + 80) = *(v9 + 80);
    }

    else
    {
      std::vector<CI::parentROI>::__assign_with_size[abi:nn200100]<CI::parentROI*,CI::parentROI*>((v8 + 32), *(v9 + 32), *(v9 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 40) - *(v9 + 32)) >> 4));
      std::vector<CI::parentROI>::__assign_with_size[abi:nn200100]<CI::parentROI*,CI::parentROI*>((v8 + 56), *(v9 + 56), *(v9 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 64) - *(v9 + 56)) >> 4));
      *(v8 + 80) = *(v9 + 80);
      std::vector<unsigned long>::__assign_with_size[abi:nn200100]<unsigned long *,unsigned long *>((v8 + 96), *(v9 + 96), *(v9 + 104), (*(v9 + 104) - *(v9 + 96)) >> 3);
    }

    v7 += 120;
  }

  while (a2 + v7 != v6);
  return v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SerialRectArray::roiData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

char *std::vector<CI::parentROI>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CI::parentROI const*>,std::__wrap_iter<CI::parentROI const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 4)) >= a5)
      {
        v21 = 3 * a5;
        v22 = &__dst[48 * a5];
        v23 = &v8[-48 * a5];
        v24 = a1[1];
        while (v23 < v8)
        {
          v25 = *v23;
          v26 = *(v23 + 2);
          v24[1] = *(v23 + 1);
          v24[2] = v26;
          *v24 = v25;
          v24 += 3;
          v23 += 48;
        }

        a1[1] = v24;
        if (v8 != v22)
        {
          memmove(&__dst[48 * a5], __dst, v8 - v22);
        }

        v32 = 16 * v21;
        v33 = v5;
        v34 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          v20 = *(v16 + 2);
          *(v18 + 1) = *(v16 + 1);
          *(v18 + 2) = v20;
          *v18 = v19;
          v18 += 48;
          v16 += 48;
          v17 += 48;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v27 = &__dst[48 * a5];
        v28 = &v17[-48 * a5];
        v29 = v17;
        while (v28 < v8)
        {
          v30 = *v28;
          v31 = *(v28 + 2);
          *(v29 + 1) = *(v28 + 1);
          *(v29 + 2) = v31;
          *v29 = v30;
          v29 += 48;
          v28 += 48;
        }

        a1[1] = v29;
        if (v18 != v27)
        {
          memmove(&__dst[48 * a5], __dst, v17 - v27);
        }

        v33 = v5;
        v34 = v6;
        v32 = v15;
      }

      memmove(v33, v34, v32);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 4);
    if (v11 > 0x555555555555555)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::parentROI>>(a1, v14);
    }

    v35 = 16 * (v12 >> 4);
    v36 = (v35 + 48 * a5);
    v37 = 48 * a5;
    v38 = v35;
    do
    {
      v39 = *v6;
      v40 = *(v6 + 2);
      v38[1] = *(v6 + 1);
      v38[2] = v40;
      *v38 = v39;
      v38 += 3;
      v6 += 48;
      v37 -= 48;
    }

    while (v37);
    memcpy(v36, v5, a1[1] - v5);
    v41 = *a1;
    v42 = &v36[a1[1] - v5];
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v35 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v35;
  }

  return v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    a4[1] = v7;
    std::vector<CI::KernelArgumentType>::__move_assign((a4 + 2), (v5 + 32));
    std::vector<CI::KernelArgumentType>::__move_assign(a4 + 56, (v5 + 56));
    a4[5] = *(v5 + 80);
    std::vector<CI::KernelArgumentType>::__move_assign((a4 + 6), (v5 + 96));
    a4 = (a4 + 120);
    v5 += 120;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::vector<CI::SerialRectArray::roiData>::__emplace_back_slow_path<CI::SerialRectArray::roiData const&>(uint64_t *a1, _OWORD *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v15[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::SerialRectArray::roiData>>(a1, v6);
  }

  v7 = 120 * v2;
  v8 = a2[1];
  *v7 = *a2;
  *(v7 + 16) = v8;
  std::vector<CI::parentROI>::vector[abi:nn200100]((v7 + 32), a2 + 4);
  std::vector<CI::parentROI>::vector[abi:nn200100]((v7 + 56), a2 + 7);
  *(v7 + 80) = a2[5];
  std::vector<unsigned long>::vector[abi:nn200100]((v7 + 96), a2 + 12);
  v9 = v7 + 120;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SerialRectArray::roiData>,CI::SerialRectArray::roiData*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  v13 = a1[2];
  a1[2] = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  std::__split_buffer<CI::SerialRectArray::roiData>::~__split_buffer(v15);
  return v9;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<CI::SerialRectArray::roiData>,CI::SerialRectArray::roiData*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[8] = 0;
      v7[9] = 0;
      v7[7] = 0;
      *(a4 + 80) = *(v7 + 5);
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = 0;
      *(a4 + 96) = *(v7 + 6);
      *(a4 + 112) = v7[14];
      v7[12] = 0;
      v7[13] = 0;
      v7[14] = 0;
      v7 += 15;
      a4 += 120;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(a1, v5);
      v5 += 15;
    }
  }
}

void **std::__split_buffer<CI::SerialRectArray::roiData>::~__split_buffer(void **a1)
{
  std::__split_buffer<CI::SerialRectArray::roiData>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CI::SerialRectArray::roiData>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 120;
    std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(v4, (i - 120));
  }
}

void *std::__tree<CI::Node *>::__emplace_unique_key_args<CI::Node *,CI::Node *>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<CI::Node const*,CI::useCountDepth>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,CI::useCountDepth>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,CI::useCountDepth>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void CI::Object::performDeferredRoot(void *a1)
{
  if ((atomic_load_explicit(_MergedGlobals_11, memory_order_acquire) & 1) == 0)
  {
    CI::Object::performDeferredRoot();
  }

  if ((atomic_load_explicit(byte_1ED7C4608, memory_order_acquire) & 1) == 0)
  {
    CI::Object::performDeferredRoot();
  }

  if ((atomic_load_explicit(byte_1ED7C4618, memory_order_acquire) & 1) == 0)
  {
    CI::Object::performDeferredRoot();
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI6Object19performDeferredRootEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1E75C7328;
  block[4] = &v8;
  block[5] = &v4;
  dispatch_sync(qword_1ED7C4610, block);
  dispatch_queue_set_specific(v9[3], &CI::Object::_queueKey, v9[3], 0);
  dispatch_queue_set_specific(v9[3], &CI::Object::_groupKey, v5[3], 0);
  dispatch_group_async(v5[3], v9[3], a1);
  dispatch_group_wait(v5[3], 0xFFFFFFFFFFFFFFFFLL);
  dispatch_queue_set_specific(v9[3], &CI::Object::_queueKey, 0, 0);
  dispatch_queue_set_specific(v9[3], &CI::Object::_groupKey, 0, 0);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ___ZN2CI6Object19performDeferredRootEU13block_pointerFvvE_block_invoke_2;
  v2[3] = &unk_1E75C7350;
  v2[4] = &v8;
  v2[5] = &v4;
  dispatch_async(qword_1ED7C4610, v2);
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v8, 8);
}

void ___ZN2CI6Object19performDeferredRootEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = qword_1ED7C4630;
  if (qword_1ED7C4630)
  {
    v3 = qword_1ED7C4628;
    *(*(*(a1 + 32) + 8) + 24) = *(qword_1ED7C4628 + 16);
    v5 = *v3;
    v4 = v3[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    qword_1ED7C4630 = v2 - 1;
    operator delete(v3);
  }

  else
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(*(*(a1 + 32) + 8) + 24) = dispatch_queue_create("CI::PooledDispatchQueue", v6);
  }

  v7 = qword_1ED7C4648;
  if (qword_1ED7C4648)
  {
    v8 = qword_1ED7C4640;
    *(*(*(a1 + 40) + 8) + 24) = *(qword_1ED7C4640 + 16);
    v10 = *v8;
    v9 = v8[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    qword_1ED7C4648 = v7 - 1;

    operator delete(v8);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = dispatch_group_create();
  }
}

void ___ZN2CI6Object19performDeferredRootEU13block_pointerFvvE_block_invoke_2(uint64_t a1)
{
  if (qword_1ED7C4630 <= 9)
  {
    operator new();
  }

  dispatch_release(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(*(a1 + 40) + 8);
  if (qword_1ED7C4648 <= 9)
  {
    operator new();
  }

  v3 = *(v2 + 24);

  dispatch_release(v3);
}

void CI::Object::performDeferred(void *a1)
{
  specific = dispatch_get_specific(&CI::Object::_queueKey);
  v3 = dispatch_get_specific(&CI::Object::_groupKey);
  if (specific)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = a1[2];

    v5(a1);
  }

  else
  {

    dispatch_group_async(v3, specific, a1);
  }
}

uint64_t ___ZNK2CI6Object5unrefEv_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

const char *CI::name_for_type(unsigned int a1)
{
  if (a1 > 0x60)
  {
    return "Unknown";
  }

  else
  {
    return off_1E75C7480[a1];
  }
}

CFStringRef CI::Object::description(CI::Object *this)
{
  v2 = (*(*this + 16))(this);
  v3 = CI::name_for_type(v2);
  v4 = atomic_load(this + 2);
  return CFStringCreateWithFormat(0, 0, @"<CI::Object %s %p ref=%u>", v3, this, v4);
}

size_t CI::fprintf(FILE *this, __sFILE *a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsInfinite(a3))
  {
    v8 = "[infinite]";
    v9 = 10;
  }

  else
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    if (CGRectIsNull(v12))
    {
      v8 = "[null]";
      v9 = 6;
    }

    else
    {
      v13.origin.x = x;
      v13.origin.y = y;
      v13.size.width = width;
      v13.size.height = height;
      if (!CGRectIsEmpty(v13))
      {
        return fprintf(this, "[%g %g %g %g]", x, y, width, height);
      }

      v8 = "[empty]";
      v9 = 7;
    }
  }

  return fwrite(v8, v9, 1uLL, this);
}

uint64_t CI::fprintf(FILE *__stream, CFStringRef theString, const __CFString *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    fwrite("nil", 3uLL, 1uLL, __stream);
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v7, v8, v9, v10, v11);
  v13 = v15 - v12;
  bzero(v15 - v12, MaximumSizeForEncoding);
  result = CFStringGetCString(theString, v13, MaximumSizeForEncoding, 0x8000100u);
  if (result)
  {
    return fputs(v13, __stream);
  }

  return result;
}

void CI::GraphObject::traverse_preorder_stoppable(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (a1)
  {
    __p = 0;
    v44 = 0;
    v45 = 0;
    std::vector<CI::TraverseVisit>::reserve(&__p, 0x40uLL);
    __src = 0;
    __dst = 0;
    v42 = 0;
    if (v44 != __p)
    {
      std::vector<CI::TraverseVisit>::__vallocate[abi:nn200100](&__src, (v44 - __p) >> 5);
    }

    v10 = __src;
    v11 = -__src;
    v12 = -__src >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
LABEL_35:
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v14 = -__src;
    if (-__src >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::TraverseVisit>>(&__src, v13);
    }

    v15 = 32 * v12;
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = a3;
    *(v15 + 20) = a4;
    *(v15 + 24) = 0;
    v16 = (32 * v12 + 32);
    memcpy(0, v10, v11);
    v17 = __src;
    __src = 0;
    __dst = v16;
    v42 = 0;
    if (v17)
    {
      operator delete(v17);
    }

    __dst = (32 * v12 + 32);
    v18 = __src;
    if (v16 != __src)
    {
      do
      {
        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = (v16 - 32);
        v23 = v21[4];
        v22 = v21[5];
        __dst = v21;
        if (((*(a5 + 16))(a5, v20, v19, v23, v22) & 1) == 0)
        {
          v24 = (*(*v20 + 40))(v20);
          if (v24 >= 1)
          {
            v25 = v23 + 1;
            v26 = v24 + 1;
            do
            {
              v27 = v26 - 2;
              v28 = (*(*v20 + 48))(v20, v26 - 2);
              v29 = __dst;
              if (__dst >= v42)
              {
                v31 = __src;
                v32 = __dst - __src;
                v33 = (__dst - __src) >> 5;
                v34 = v33 + 1;
                if ((v33 + 1) >> 59)
                {
                  goto LABEL_35;
                }

                v35 = v42 - __src;
                if ((v42 - __src) >> 4 > v34)
                {
                  v34 = v35 >> 4;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v34 = 0x7FFFFFFFFFFFFFFLL;
                }

                if (v34)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<CI::TraverseVisit>>(&__src, v34);
                }

                v36 = (__dst - __src) >> 5;
                v37 = 32 * v33;
                *v37 = v28;
                *(v37 + 8) = v20;
                *(v37 + 16) = v25;
                *(v37 + 20) = v27;
                *(v37 + 24) = 0;
                v30 = (32 * v33 + 32);
                v38 = (32 * v33 - 32 * v36);
                memcpy(v38, v31, v32);
                v39 = __src;
                __src = v38;
                __dst = v30;
                v42 = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *__dst = v28;
                v29[1] = v20;
                *(v29 + 4) = v25;
                *(v29 + 5) = v27;
                v30 = v29 + 4;
                *(v29 + 24) = 0;
              }

              __dst = v30;
              --v26;
            }

            while (v26 > 1);
          }
        }

        v18 = __src;
        v16 = __dst;
      }

      while (__dst != __src);
    }

    if (v18)
    {
      __dst = v18;
      operator delete(v18);
    }

    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }
  }
}

{
  if (a1)
  {
    __p = 0;
    v44 = 0;
    v45 = 0;
    std::vector<CI::ConstTraverseVisit>::reserve(&__p, 0x40uLL);
    __src = 0;
    __dst = 0;
    v42 = 0;
    if (v44 != __p)
    {
      std::vector<CI::ConstTraverseVisit>::__vallocate[abi:nn200100](&__src, (v44 - __p) >> 5);
    }

    v10 = __src;
    v11 = -__src;
    v12 = -__src >> 5;
    v13 = v12 + 1;
    if ((v12 + 1) >> 59)
    {
LABEL_35:
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v14 = -__src;
    if (-__src >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::ConstTraverseVisit>>(&__src, v13);
    }

    v15 = 32 * v12;
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = a3;
    *(v15 + 20) = a4;
    *(v15 + 24) = 0;
    v16 = (32 * v12 + 32);
    memcpy(0, v10, v11);
    v17 = __src;
    __src = 0;
    __dst = v16;
    v42 = 0;
    if (v17)
    {
      operator delete(v17);
    }

    __dst = (32 * v12 + 32);
    v18 = __src;
    if (v16 != __src)
    {
      do
      {
        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = (v16 - 32);
        v23 = v21[4];
        v22 = v21[5];
        __dst = v21;
        if (((*(a5 + 16))(a5, v20, v19, v23, v22) & 1) == 0)
        {
          v24 = (*(*v20 + 40))(v20);
          if (v24 >= 1)
          {
            v25 = v23 + 1;
            v26 = v24 + 1;
            do
            {
              v27 = v26 - 2;
              v28 = (*(*v20 + 48))(v20, v26 - 2);
              v29 = __dst;
              if (__dst >= v42)
              {
                v31 = __src;
                v32 = __dst - __src;
                v33 = (__dst - __src) >> 5;
                v34 = v33 + 1;
                if ((v33 + 1) >> 59)
                {
                  goto LABEL_35;
                }

                v35 = v42 - __src;
                if ((v42 - __src) >> 4 > v34)
                {
                  v34 = v35 >> 4;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v34 = 0x7FFFFFFFFFFFFFFLL;
                }

                if (v34)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<CI::ConstTraverseVisit>>(&__src, v34);
                }

                v36 = (__dst - __src) >> 5;
                v37 = 32 * v33;
                *v37 = v28;
                *(v37 + 8) = v20;
                *(v37 + 16) = v25;
                *(v37 + 20) = v27;
                *(v37 + 24) = 0;
                v30 = (32 * v33 + 32);
                v38 = (32 * v33 - 32 * v36);
                memcpy(v38, v31, v32);
                v39 = __src;
                __src = v38;
                __dst = v30;
                v42 = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *__dst = v28;
                v29[1] = v20;
                *(v29 + 4) = v25;
                *(v29 + 5) = v27;
                v30 = v29 + 4;
                *(v29 + 24) = 0;
              }

              __dst = v30;
              --v26;
            }

            while (v26 > 1);
          }
        }

        v18 = __src;
        v16 = __dst;
      }

      while (__dst != __src);
    }

    if (v18)
    {
      __dst = v18;
      operator delete(v18);
    }

    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }
  }
}

void std::vector<CI::TraverseVisit>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::TraverseVisit>>(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<CI::ConstTraverseVisit>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::ConstTraverseVisit>>(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void CI::GraphObject::traverse_stoppable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    memset(__p, 0, sizeof(__p));
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::TraverseVisit>>(__p, 1uLL);
  }
}

{
  if (a1)
  {
    memset(__p, 0, sizeof(__p));
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::ConstTraverseVisit>>(__p, 1uLL);
  }
}

uint64_t CI::GraphObject::traverse_unique(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x5002000000;
  v12[3] = __Block_byref_object_copy__27;
  v12[4] = __Block_byref_object_dispose__27;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(v13, 0x80uLL);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN2CI11GraphObject15traverse_uniqueEPS0_U13block_pointerFvS1_iE_block_invoke;
  v9[3] = &unk_1E75C7398;
  v9[4] = v12;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2CI11GraphObject15traverse_uniqueEPS0_U13block_pointerFvS1_iE_block_invoke_2;
  v8[3] = &unk_1E75C73C0;
  v8[4] = a2;
  v8[5] = v10;
  CI::GraphObject::traverse_stoppable(a1, v4, v5, v6, v9, v8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  return std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v13);
}

{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x5002000000;
  v12[3] = __Block_byref_object_copy__101;
  v12[4] = __Block_byref_object_dispose__102;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(v13, 0x80uLL);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN2CI11GraphObject15traverse_uniqueEPKS0_U13block_pointerFvS2_iE_block_invoke;
  v9[3] = &unk_1E75C73E8;
  v9[4] = v12;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2CI11GraphObject15traverse_uniqueEPKS0_U13block_pointerFvS2_iE_block_invoke_2;
  v8[3] = &unk_1E75C7410;
  v8[4] = a2;
  v8[5] = v10;
  CI::GraphObject::traverse_stoppable(a1, v4, v5, v6, v9, v8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  return std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v13);
}

BOOL ___ZN2CI11GraphObject15traverse_uniqueEPS0_U13block_pointerFvS1_iE_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 32) + 8) + 40), &v5);
  if (!v3)
  {
    std::__hash_table<CI::GraphObject *,std::hash<CI::GraphObject *>,std::equal_to<CI::GraphObject *>,std::allocator<CI::GraphObject *>>::__emplace_unique_key_args<CI::GraphObject *,CI::GraphObject * const&>((*(*(a1 + 32) + 8) + 40), &v5, &v5);
  }

  return v3 != 0;
}

uint64_t ___ZN2CI11GraphObject15traverse_uniqueEPS0_U13block_pointerFvS1_iE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(*(*(a1 + 40) + 8) + 24);
  return (*(v1 + 16))(v1);
}

BOOL ___ZN2CI11GraphObject15traverse_uniqueEPKS0_U13block_pointerFvS2_iE_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 32) + 8) + 40), &v5);
  if (!v3)
  {
    std::__hash_table<CI::Node const*,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,std::allocator<CI::Node const*>>::__emplace_unique_key_args<CI::Node const*,CI::Node const* const&>((*(*(a1 + 32) + 8) + 40), &v5, &v5);
  }

  return v3 != 0;
}

uint64_t ___ZN2CI11GraphObject15traverse_uniqueEPKS0_U13block_pointerFvS2_iE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(*(*(a1 + 40) + 8) + 24);
  return (*(v1 + 16))(v1);
}

void *CI::GraphObject::graphviz_representation(CI::GraphObject *this, CI::GraphObject *a2, const __CFString *a3, CGImage *a4, CGImage *a5)
{
  v36 = this;
  if (!this)
  {
    return 0;
  }

  v9 = CIGVGraphCreate(this);
  v10 = v9;
  if (v9)
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x5002000000;
    v33[3] = __Block_byref_object_copy__107;
    v33[4] = __Block_byref_object_dispose__108;
    memset(v34, 0, sizeof(v34));
    v35 = 1065353216;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x5002000000;
    v30[3] = __Block_byref_object_copy__109;
    v30[4] = __Block_byref_object_dispose__110;
    memset(v31, 0, sizeof(v31));
    v32 = 1065353216;
    v23 = 0;
    v24 = &v23;
    v25 = 0x5002000000;
    v26 = __Block_byref_object_copy__111;
    v27 = __Block_byref_object_dispose__112;
    memset(v28, 0, sizeof(v28));
    v29 = 1065353216;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN2CI11GraphObject23graphviz_representationEPS0_PK10__CFStringP7CGImageS6__block_invoke;
    v22[3] = &unk_1E75C7438;
    v22[4] = v33;
    v22[5] = &v23;
    v22[6] = v30;
    v22[7] = v9;
    CI::GraphObject::traverse_unique(this, v22);
    v15 = 0;
    v16 = &v15;
    v17 = 0x5002000000;
    v18 = __Block_byref_object_copy__27;
    v19 = __Block_byref_object_dispose__27;
    memset(v20, 0, sizeof(v20));
    v21 = 1065353216;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN2CI11GraphObject23graphviz_representationEPS0_PK10__CFStringP7CGImageS6__block_invoke_2;
    v14[3] = &unk_1E75C7460;
    v14[4] = &v15;
    v14[5] = &v23;
    v14[6] = v10;
    CI::GraphObject::traverse_preorder_stoppable(v36, 0, 0, 0, v14);
    v11 = CIGVNodeCreate();
    CIGVNodeSetColor(v11, 0xD);
    CIGVNodeSetShape(v11, 0);
    CIGVNodeSetLabel(v11, a2);
    CIGVNodeAddImage(v11, a3);
    if (a4)
    {
      CIGVNodeAddImage(v11, a4);
    }

    CIGVGraphAddNode(v10, v11);
    v12 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>(v24 + 5, &v36);
    CIGVGraphAddEdge(v10, v12[3], v11);
    CFRelease(v11);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(v24 + 5);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(v16 + 5);
    _Block_object_dispose(&v15, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v20);
    _Block_object_dispose(&v23, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v28);
    _Block_object_dispose(v30, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v31);
    _Block_object_dispose(v33, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v34);
  }

  return v10;
}

void *___ZN2CI11GraphObject23graphviz_representationEPS0_PK10__CFStringP7CGImageS6__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (!CI_GRAPHVIZ_INTERNAL() && (*(*a2 + 40))(a2) >= 2 && (*(*a2 + 40))(a2) >= 1)
  {
    v4 = 0;
    do
    {
      v11 = (*(*a2 + 48))(a2, v4);
      if (!std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((*(*(a1 + 32) + 8) + 40), &v11))
      {
        v5 = *(*(a1 + 32) + 8);
        v6 = *(v5 + 64);
        v13 = &v11;
        *(std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v5 + 40), &v11, &std::piecewise_construct, &v13) + 6) = v6;
      }

      v4 = (v4 + 1);
    }

    while (v4 < (*(*a2 + 40))(a2));
  }

  v7 = (*(*a2 + 72))(a2, *(*(a1 + 32) + 8) + 40);
  CIGVGraphAddNode(*(a1 + 56), v7);
  v8 = *(*(a1 + 40) + 8);
  v13 = &v12;
  std::__hash_table<std::__hash_value_type<CI::GraphObject const*,void const*>,std::__unordered_map_hasher<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::hash<CI::GraphObject const*>,std::equal_to<CI::GraphObject const*>,true>,std::__unordered_map_equal<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::equal_to<CI::GraphObject const*>,std::hash<CI::GraphObject const*>,true>,std::allocator<std::__hash_value_type<CI::GraphObject const*,void const*>>>::__emplace_unique_key_args<CI::GraphObject const*,std::piecewise_construct_t const&,std::tuple<CI::GraphObject const* const&>,std::tuple<>>((v8 + 40), &v12, &std::piecewise_construct, &v13)[3] = v7;
  CFRelease(v7);
  v13 = 0;
  v9 = 0;
  if ((*(*v12 + 16))(v12) - 34 <= 0x1A)
  {
    v9 = (*(*v12 + 400))(v12);
    v13 = v9;
  }

  result = (*(*v12 + 16))(v12);
  if ((result - 2) <= 0x1D)
  {
    v9 = v12[12];
    v13 = v9;
  }

  if (v9)
  {
    if (std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::find<CI::OtherDigest>((*(*(a1 + 48) + 8) + 40), &v13))
    {
      CIGVNodeSetColor(v7, 0xF);
    }

    return std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::__emplace_unique_key_args<CI::OtherDigest,CI::OtherDigest const&>((*(*(a1 + 48) + 8) + 40), &v13, &v13);
  }

  return result;
}

BOOL ___ZN2CI11GraphObject23graphviz_representationEPS0_PK10__CFStringP7CGImageS6__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((*(*(a1 + 32) + 8) + 40), &v10);
  if (!v3)
  {
    std::__hash_table<CI::GraphObject *,std::hash<CI::GraphObject *>,std::equal_to<CI::GraphObject *>,std::allocator<CI::GraphObject *>>::__emplace_unique_key_args<CI::GraphObject *,CI::GraphObject * const&>((*(*(a1 + 32) + 8) + 40), &v10, &v10);
    v4 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 40) + 8) + 40), &v10)[3];
    if ((*(*v10 + 40))(v10) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*(a1 + 40) + 8);
        v9 = (*(*v10 + 48))(v10, v5);
        v7 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((v6 + 40), &v9);
        CIGVGraphAddEdge(*(a1 + 48), v7[3], v4);
        v5 = (v5 + 1);
      }

      while (v5 < (*(*v10 + 40))(v10));
    }
  }

  return v3 != 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::TraverseVisit>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::ConstTraverseVisit>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<CI::TraverseVisit>::__vallocate[abi:nn200100](void *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::TraverseVisit>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<CI::ConstTraverseVisit>::__vallocate[abi:nn200100](void *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::ConstTraverseVisit>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void *std::__hash_table<CI::GraphObject *,std::hash<CI::GraphObject *>,std::equal_to<CI::GraphObject *>,std::allocator<CI::GraphObject *>>::__emplace_unique_key_args<CI::GraphObject *,CI::GraphObject * const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
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

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<CI::GraphObject const*,void const*>,std::__unordered_map_hasher<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::hash<CI::GraphObject const*>,std::equal_to<CI::GraphObject const*>,true>,std::__unordered_map_equal<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::equal_to<CI::GraphObject const*>,std::hash<CI::GraphObject const*>,true>,std::allocator<std::__hash_value_type<CI::GraphObject const*,void const*>>>::__emplace_unique_key_args<CI::GraphObject const*,std::piecewise_construct_t const&,std::tuple<CI::GraphObject const* const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::find<CI::OtherDigest>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
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

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::__emplace_unique_key_args<CI::OtherDigest,CI::OtherDigest const&>(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t getCFPreferenceNumber(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (IntValue <= 0)
      {
        IntValue = 1;
        if (CFStringCompare(v5, @"true", 1uLL))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"yes", 1uLL))
          {
            if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
            {
              IntValue = 0;
            }
          }
        }
      }
    }

    else
    {
      v8 = CFGetTypeID(v5);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v9 = CFGetTypeID(v5);
        IntValue = a3;
        if (v9 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, *MEMORY[0x1E695E4D0]);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

float getCFPreferenceFloat(const __CFString *a1, const __CFString *a2, float DoubleValue)
{
  v4 = CFPreferencesCopyValue(a1, a2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr))
      {
        DoubleValue = valuePtr;
      }
    }

    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      DoubleValue = CFStringGetDoubleValue(v5);
    }

    CFRelease(v5);
  }

  return DoubleValue;
}

CI::RenderToBitmap *CI::RenderToBitmap::RenderToBitmap(CI::RenderToBitmap *this, CI::Bitmap *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F103C598;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = &unk_1F103C600;
  atomic_fetch_add(&dword_1ED7C47D8[80], 1u);
  *this = &unk_1F103C508;
  *(this + 5) = &unk_1F103C570;
  *(this + 6) = a2;
  if (a2)
  {
    CI::Object::ref(a2);
    v3 = *(this + 6);
    if (v3)
    {
      *(this + 8) = *(v3 + 104);
    }
  }

  return this;
}

void CI::RenderToBitmap::~RenderToBitmap(CI::RenderToBitmap *this)
{
  *this = &unk_1F103C508;
  *(this + 5) = &unk_1F103C570;
  v2 = *(this + 6);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 5) = &unk_1F103C600;
  atomic_fetch_add(&dword_1ED7C47D8[80], 0xFFFFFFFF);

  CI::RenderDestination::~RenderDestination(this);
}

{
  CI::RenderToBitmap::~RenderToBitmap(this);

  JUMPOUT(0x19EAF5590);
}

void CI::RenderDestination::~RenderDestination(CI::RenderDestination *this)
{
  *this = &unk_1F103C598;
  v2 = *(this + 3);
  if (v2)
  {
    CFAutorelease(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    CFAutorelease(v3);
  }

  *(this + 2) = 0;
}

void non-virtual thunk toCI::RenderToBitmap::~RenderToBitmap(CI::RenderToBitmap *this)
{
  CI::RenderToBitmap::~RenderToBitmap((this - 40));
}

{
  CI::RenderToBitmap::~RenderToBitmap((this - 40));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::RenderToBitmap::render(CI::RenderToBitmap *this, CI::Image *a2, CI::Context *a3)
{
  v28.origin.x = (*(*a2 + 88))(a2);
  v29 = CGRectInset(v28, 0.00100000005, 0.00100000005);
  v30 = CGRectIntegral(v29);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v10 = (*(*a2 + 248))(a2);
  v11 = x;
  v12 = y;
  v13 = *(this + 6);
  v14 = *(v13 + 104);
  v15 = *(v13 + 96);
  v16 = CI::format_bytes_per_pixel(*(v13 + 104));
  v17 = *(this + 6);
  v18 = v17[9];
  if (v17[10] - x >= width)
  {
    v19 = width;
  }

  else
  {
    v19 = v17[10] - v11;
  }

  v20 = v17[11] - v12;
  if (v20 >= height)
  {
    v21 = height;
  }

  else
  {
    v21 = v20;
  }

  CI::Bitmap::Bitmap(v25, v18 + v15 * v12 + v16 * v11, v19, v21, v15, v14, v10);
  v31.size.width = v26;
  v31.size.height = v27;
  v31.origin.x = x;
  v31.origin.y = y;
  v23 = CI::image_render_to_bitmap(a3, a2, v10, v31, v25, this, v22);
  CI::Bitmap::~Bitmap(v25);
  return v23;
}

BOOL CI::RenderToBitmap::writeToFile(CI::RenderToBitmap *this, char *a2)
{
  v3 = *(this + 6);
  if (!v3)
  {
    return 0;
  }

  CGImage = CI::Bitmap::create_CGImage(v3);
  if (!CGImage)
  {
    return 0;
  }

  v6 = *(this + 3);
  if (v6)
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(CGImage, v6);
  }

  else
  {
    CopyWithColorSpace = CGImageRetain(CGImage);
  }

  v8 = CopyWithColorSpace;
  v9 = strlen(a2);
  v10 = CFURLCreateFromFileSystemRepresentation(0, a2, v9, 0);
  if (!v10)
  {
    CGImageRelease(v8);
    return 0;
  }

  v11 = v10;
  v12 = strstr(a2, ".jpg");
  v13 = strstr(a2, ".png");
  v14 = @"public.png";
  if (!v13)
  {
    v14 = @"public.tiff";
  }

  if (v12)
  {
    v15 = @"public.jpeg";
  }

  else
  {
    v15 = v14;
  }

  v16 = CGImageDestinationCreateWithURL(v11, v15, 1uLL, 0);
  if (v16)
  {
    v17 = v16;
    CGImageDestinationAddImage(v16, v8, 0);
    v18 = CGImageDestinationFinalize(v17);
    CGImageRelease(v8);
    CFRelease(v17);
  }

  else
  {
    CGImageRelease(v8);
    v18 = 0;
  }

  CFRelease(v11);
  return v18;
}

void *CI::InstanceCounted<(CI::Type)89>::~InstanceCounted(void *result)
{
  *result = &unk_1F103C600;
  atomic_fetch_add(&dword_1ED7C47D8[80], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)89>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103C600;
  atomic_fetch_add(&dword_1ED7C47D8[80], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::RenderToPixelBuffer *CI::RenderToPixelBuffer::RenderToPixelBuffer(CI::RenderToPixelBuffer *this, CFTypeRef cf)
{
  *(this + 2) = 1;
  *this = &unk_1F103C598;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = &unk_1F103C6B8;
  atomic_fetch_add(&dword_1ED7C47D8[81], 1u);
  *this = &unk_1F103C628;
  *(this + 5) = &unk_1F103C690;
  *(this + 6) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return this;
}

void CI::RenderToPixelBuffer::~RenderToPixelBuffer(CI::RenderToPixelBuffer *this)
{
  *this = &unk_1F103C628;
  *(this + 5) = &unk_1F103C690;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 5) = &unk_1F103C6B8;
  atomic_fetch_add(&dword_1ED7C47D8[81], 0xFFFFFFFF);

  CI::RenderDestination::~RenderDestination(this);
}

{
  CI::RenderToPixelBuffer::~RenderToPixelBuffer(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::RenderToPixelBuffer::~RenderToPixelBuffer(CI::RenderToPixelBuffer *this)
{
  CI::RenderToPixelBuffer::~RenderToPixelBuffer((this - 40));
}

{
  CI::RenderToPixelBuffer::~RenderToPixelBuffer((this - 40));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::RenderToPixelBuffer::render(CI **this, CI::Image *a2, CI::Context *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = CI::format_from_CVPixelBuffer(this[6], a2);
  if (CI::format_is_ycc_biplanar(v6))
  {
    is_ycc_full_range = CI::format_is_ycc_full_range(v6);
    is_deep = CI::format_is_deep(v6);
    CI::format_is_ycc_420(v6);
    CI::format_is_ycc_422(v6);
    CI::format_is_ycc_444(v6);
    v8 = CI::format_bits_per_component(v6);
    CI::format_is_packed(v6);
    is_half_float = CI::format_is_half_float(v6);
    Width = CVPixelBufferGetWidth(this[6]);
    Height = CVPixelBufferGetHeight(this[6]);
    v70.origin.x = (*(*a2 + 88))(a2);
    v71 = CGRectInset(v70, 0.00100000005, 0.00100000005);
    v72 = CGRectIntegral(v71);
    x = v72.origin.x;
    y = v72.origin.y;
    v12 = v72.size.width;
    v13 = v72.size.height;
    if (CGRectIsNull(v72))
    {
      LODWORD(v14) = 0;
      LODWORD(v15) = 0;
      goto LABEL_19;
    }

    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = v12;
    v76.size.height = v13;
    if (CGRectIsInfinite(v76))
    {
      v15 = 0xFFFFFFFFLL;
      v14 = 0xFFFFFFFFLL;
      v34 = -2147483647;
      v35 = -2147483647;
    }

    else
    {
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = v12;
      v77.size.height = v13;
      v78 = CGRectInset(v77, 0.000001, 0.000001);
      v79 = CGRectIntegral(v78);
      v35 = v79.origin.x;
      v34 = v79.origin.y;
      v14 = v79.size.width;
      v15 = v79.size.height;
    }

    if (v35 == -2147483647 && v34 == -2147483647 && v14 == 0xFFFFFFFF)
    {
      v34 = -2147483647;
      LODWORD(v14) = -1;
      if (!v15 || v15 == 0xFFFFFFFF)
      {
        goto LABEL_19;
      }
    }

    else if (!v14 || !v15)
    {
LABEL_19:
      v37 = (*(*a3 + 440))(a3, 784, 1);
      v38 = (*(*a3 + 440))(a3, 785, 1);
      if (is_half_float)
      {
        v39 = 2056;
      }

      else if (v8 != 10 || v38 != 1)
      {
        if (is_deep)
        {
          v40 = 1800;
        }

        else
        {
          v40 = 264;
        }

        if (v8 != 10 || (v37 & 1) == 0)
        {
          v39 = v40;
        }

        else
        {
          v39 = 784;
        }
      }

      else
      {
        v39 = 785;
      }

      v41 = CI::PixelFormatType_from_format(v39);
      v43 = ci_logger_performance(v41, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 136447234;
        *&buf[4] = "render";
        *&buf[12] = 2082;
        *&buf[14] = CI::name_for_format(v39);
        *&buf[22] = 2048;
        v65 = Width;
        v66[0] = 2048;
        *&v66[1] = Height;
        v66[5] = 2082;
        v67 = CI::name_for_format(v6);
        _os_log_impl(&dword_19CC36000, v43, OS_LOG_TYPE_INFO, "%{public}s CI_CONVERSIONS: Rendered via an intermediate YCC444 (%{public}s) buffer instead of directly to a (%zux%zu) %{public}s pixel buffer.", buf, 0x34u);
      }

      v44 = (*(*a3 + 552))(a3, v39);
      Surface = CreateSurface(v14, v15, v44, v41, 0);
      if (Surface)
      {
        if (v39 > 1799)
        {
          if (v39 == 2056)
          {
            *buf = 0x3C00000000000000;
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 0x40000000;
            v62[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_2;
            v62[3] = &__block_descriptor_tmp_4_3;
            v62[4] = buf;
            v47 = v62;
          }

          else
          {
            *v68 = 0xFFFF800080000040;
            v48 = v68;
            if (is_ycc_full_range)
            {
              v48 = buf;
            }

            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 0x40000000;
            v63[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke;
            v63[3] = &__block_descriptor_tmp_30;
            v63[4] = v48;
            *buf = 0xFFFF800080000000;
            v47 = v63;
          }
        }

        else if (v39 == 784)
        {
          if (is_ycc_full_range)
          {
            v50 = 524800;
          }

          else
          {
            v50 = 67633664;
          }

          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 0x40000000;
          v60[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_3;
          v60[3] = &__block_descriptor_tmp_5_2;
          v61 = v50;
          v47 = v60;
        }

        else if (v39 == 785)
        {
          if (is_ycc_full_range)
          {
            v46 = 537395200;
          }

          else
          {
            v46 = 537395264;
          }

          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 0x40000000;
          v58[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_4;
          v58[3] = &__block_descriptor_tmp_6_4;
          v59 = v46;
          v47 = v58;
        }

        else
        {
          *buf = -8355840;
          *v68 = -8355824;
          v49 = v68;
          if (is_ycc_full_range)
          {
            v49 = buf;
          }

          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 0x40000000;
          v57[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_5;
          v57[3] = &__block_descriptor_tmp_9_3;
          v57[4] = v49;
          v47 = v57;
        }

        SurfaceApplyPlaneBlock(Surface, v47);
        operator new();
      }

      operator new();
    }

    LODWORD(v14) = v35 + v14 + 1 - (v35 & 0xFFFFFFFE | (v35 + v14 + 1) & 1);
    LODWORD(v15) = v15 + v34 + 1 - (v34 & 0xFFFFFFFE | (v15 + v34 + 1) & 1);
    goto LABEL_19;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v65 = 0;
  v16 = (*(*a2 + 88))(a2);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = (*(*a2 + 248))(a2);
  v73.origin.x = v16;
  v73.origin.y = v18;
  v73.size.width = v20;
  v73.size.height = v22;
  v74 = CGRectInset(v73, 0.00100000005, 0.00100000005);
  v75 = CGRectIntegral(v74);
  v24 = v75.origin.x;
  v25 = v75.origin.y;
  v26 = v75.size.width;
  v27 = v75.size.height;
  v28 = v75.origin.x;
  v29 = v75.origin.y;
  v30 = v75.size.width;
  v31 = v75.size.height;
  v32 = CI::format_bytes_per_pixel(v6);
  v33 = this[6];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 0x40000000;
  v55[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_25;
  v55[3] = &unk_1E75C7950;
  v55[6] = v29;
  v55[7] = v28;
  v55[8] = v32;
  v55[9] = v30;
  v56 = v6;
  v55[10] = v31;
  v55[11] = v23;
  *&v55[12] = v24;
  *&v55[13] = v25;
  *&v55[14] = v26;
  *&v55[15] = v27;
  v55[4] = buf;
  v55[5] = this;
  v55[16] = a3;
  v55[17] = a2;
  if (PixelBufferApplyPlaneBlock(v33, v55))
  {
    operator new();
  }

  v36 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v36;
}

void ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7 > 1799)
  {
    if (v7 == 2056)
    {
      v8 = *(v6 + 48);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_7;
      v19[3] = &__block_descriptor_tmp_20_3;
      v19[4] = a2;
      v19[5] = a4;
      v19[6] = a5;
      v19[7] = a6;
      v19[8] = *(a1 + 44);
      v20 = *(a1 + 53);
      v21 = *(a1 + 54);
      v9 = v19;
      goto LABEL_17;
    }

    if (v7 != 1800)
    {
      goto LABEL_10;
    }

    v8 = *(v6 + 48);
    if (*(a1 + 52) == 1)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_2_11;
      v34[3] = &__block_descriptor_tmp_12_3;
      v34[4] = a2;
      v34[5] = a4;
      v34[6] = a5;
      v34[7] = a6;
      v34[8] = *(a1 + 44);
      v35 = *(a1 + 53);
      v36 = *(a1 + 54);
      v9 = v34;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_8;
      v16[3] = &__block_descriptor_tmp_21_3;
      v16[4] = a2;
      v16[5] = a4;
      v16[6] = a5;
      v16[7] = a6;
      v16[8] = *(a1 + 44);
      v17 = *(a1 + 53);
      v18 = *(a1 + 54);
      v9 = v16;
    }
  }

  else
  {
    if (v7 != 784)
    {
      if (v7 == 785)
      {
        v8 = *(v6 + 48);
        if (*(a1 + 52) == 1)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 0x40000000;
          v31[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_3_13;
          v31[3] = &__block_descriptor_tmp_14_3;
          v31[4] = a2;
          v31[5] = a4;
          v31[6] = a5;
          v31[7] = a6;
          v31[8] = *(a1 + 44);
          v32 = *(a1 + 53);
          v33 = *(a1 + 54);
          v9 = v31;
        }

        else
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 0x40000000;
          v28[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_4_15;
          v28[3] = &__block_descriptor_tmp_16_2;
          v28[4] = a2;
          v28[5] = a4;
          v28[6] = a5;
          v28[7] = a6;
          v28[8] = *(a1 + 44);
          v29 = *(a1 + 53);
          v30 = *(a1 + 54);
          v9 = v28;
        }

        goto LABEL_17;
      }

LABEL_10:
      v8 = *(v6 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_9;
      v13[3] = &__block_descriptor_tmp_22_1;
      v13[4] = a2;
      v13[5] = a4;
      v13[6] = a5;
      v13[7] = a6;
      v13[8] = *(a1 + 44);
      v14 = *(a1 + 53);
      v15 = *(a1 + 54);
      v9 = v13;
      goto LABEL_17;
    }

    v8 = *(v6 + 48);
    if (*(a1 + 52) == 1)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_5_17;
      v25[3] = &__block_descriptor_tmp_18_1;
      v25[4] = a2;
      v25[5] = a4;
      v25[6] = a5;
      v25[7] = a6;
      v25[8] = *(a1 + 44);
      v26 = *(a1 + 53);
      v27 = *(a1 + 54);
      v9 = v25;
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v22[2] = ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_6;
      v22[3] = &__block_descriptor_tmp_19_3;
      v22[4] = a2;
      v22[5] = a4;
      v22[6] = a5;
      v22[7] = a6;
      v22[8] = *(a1 + 44);
      v23 = *(a1 + 53);
      v24 = *(a1 + 54);
      v9 = v22;
    }
  }

LABEL_17:
  v10 = PixelBufferApplyPlaneBlock(v8, v9);
  if (v10)
  {
    v12 = ci_logger_api(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10_cold_1(v12);
    }
  }
}

unsigned __int16 *___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_2_11(unsigned __int16 *result, uint64_t a2, uint64_t a3, double a4, double a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a9);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC444_to_CbCr444_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a9, a4, a5, a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC444_to_CbCr422_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a9);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC444_to_CbCr_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a9);
  }

  return result;
}

unsigned int *___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_3_13(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2BGR10_to_Y_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr444_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr422_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, result[17], a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, (result[17] + (result[17] >> 31)) >> 1, a6);
  }

  return result;
}

uint64_t ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_4_15(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2BGR10_to_Y_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr444_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr422_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, *(result + 68), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, (*(result + 68) + (*(result + 68) >> 31)) >> 1, a6);
  }

  return result;
}

unsigned int *___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_5_17(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2RGB10_to_Y_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr444_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr422_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, result[17], a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, (result[17] + (result[17] >> 31)) >> 1, a6);
  }

  return result;
}

uint64_t ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2RGB10_to_Y_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr444_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr422_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, *(result + 68), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, (*(result + 68) + (*(result + 68) >> 31)) >> 1, a6);
  }

  return result;
}

short float *___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_7(short float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC444_to_CbCr444_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC444_to_CbCr422_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC444_to_CbCr_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a6);
  }

  return result;
}

__int16 *___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_8(__int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC444_to_CbCr444_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC444_to_CbCr422_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC444_to_CbCr_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a6);
  }

  return result;
}

unsigned __int8 *___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_9(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (result[72] == 1)
  {
    return CopyYCC444_to_CbCr444_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (result[73] == 1)
  {
    return CopyYCC444_to_CbCr422_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a6);
  }

  if (result[74] == 1)
  {
    return CopyYCC444_to_CbCr_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a6);
  }

  return result;
}

void ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 56);
  if (*(a1 + 72) >= (a4 - v7))
  {
    v8 = a4 - v7;
  }

  else
  {
    v8 = *(a1 + 72);
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (*(a1 + 80) >= (a5 - v9))
  {
    v11 = a5 - v9;
  }

  else
  {
    v11 = *(a1 + 80);
  }

  CI::Bitmap::Bitmap(v13, a2 + v9 * a6 + *(a1 + 64) * v7, v8, v11, a6, *(a1 + 144), *(a1 + 88));
  v14.origin.x = *(a1 + 96);
  v14.origin.y = *(a1 + 104);
  v14.size.width = v13[10];
  v14.size.height = v13[11];
  *(*(*(a1 + 32) + 8) + 24) = CI::image_render_to_bitmap(*(a1 + 128), *(a1 + 136), *(a1 + 88), v14, v13, v10, v12);
  CI::Bitmap::~Bitmap(v13);
}

CGImage *CI::RenderToPixelBuffer::writeToFile(CI::RenderToPixelBuffer *this, char *a2)
{
  result = *(this + 6);
  if (result)
  {
    return SurfaceWriteToFile(result, *(this + 3), a2);
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)90>::~InstanceCounted(void *result)
{
  *result = &unk_1F103C6B8;
  atomic_fetch_add(&dword_1ED7C47D8[81], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)90>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103C6B8;
  atomic_fetch_add(&dword_1ED7C47D8[81], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::RenderToSurface *CI::RenderToSurface::RenderToSurface(CI::RenderToSurface *this, CFTypeRef cf, CFTypeRef a3)
{
  *(this + 2) = 1;
  *this = &unk_1F103C598;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = &unk_1F103C770;
  atomic_fetch_add(&dword_1ED7C47D8[82], 1u);
  *this = &unk_1F103C6E0;
  *(this + 5) = &unk_1F103C748;
  *(this + 6) = cf;
  *(this + 7) = a3;
  if (cf)
  {
    CFRetain(cf);
    a3 = *(this + 7);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  return this;
}

void CI::RenderToSurface::~RenderToSurface(CI::RenderToSurface *this)
{
  *this = &unk_1F103C6E0;
  *(this + 5) = &unk_1F103C748;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 5) = &unk_1F103C770;
  atomic_fetch_add(&dword_1ED7C47D8[82], 0xFFFFFFFF);

  CI::RenderDestination::~RenderDestination(this);
}

{
  CI::RenderToSurface::~RenderToSurface(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::RenderToSurface::~RenderToSurface(CI::RenderToSurface *this)
{
  CI::RenderToSurface::~RenderToSurface((this - 40));
}

{
  CI::RenderToSurface::~RenderToSurface((this - 40));

  JUMPOUT(0x19EAF5590);
}

void CI::RenderToSurface::render(CI **this, CI::Image *a2, CI::Context *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = CI::format_from_IOSurface(this[6], a2);
  v7 = (*(*a3 + 552))(a3, v6);
  IsRowBytesAligned = SurfaceIsRowBytesAligned(this[6], v7);
  v73 = (IOSurfaceGetWidth(this[6]) & 1) == 0 && (IOSurfaceGetHeight(this[6]) & 1) == 0;
  v89.origin.x = (*(*a2 + 88))(a2);
  v90 = CGRectInset(v89, 0.00100000005, 0.00100000005);
  v91 = CGRectIntegral(v90);
  x = v91.origin.x;
  y = v91.origin.y;
  width = v91.size.width;
  height = v91.size.height;
  if (CGRectIsNull(v91))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0x7FFFFFFF;
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = width;
    v92.size.height = height;
    if (CGRectIsInfinite(v92))
    {
      v15 = -2147483647;
      v13 = 0xFFFFFFFFLL;
      v14 = 0xFFFFFFFFLL;
      v16 = -2147483647;
    }

    else
    {
      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = height;
      v94 = CGRectInset(v93, 0.000001, 0.000001);
      v95 = CGRectIntegral(v94);
      v16 = v95.origin.x;
      v15 = v95.origin.y;
      v14 = v95.size.width;
      v13 = v95.size.height;
    }
  }

  if (!CI::format_is_ycc_biplanar(v6))
  {
    if (IsRowBytesAligned)
    {
      v25 = this[6];
      v26 = x;
      v27 = y;
      v28 = width;
      v29 = height;

      CI::image_render_to_surface(a3, a2, v25, *&v26, this, v17);
    }

    operator new();
  }

  is_ycc_full_range = CI::format_is_ycc_full_range(v6);
  is_deep = CI::format_is_deep(v6);
  CI::format_is_ycc_420(v6);
  CI::format_is_ycc_422(v6);
  CI::format_is_ycc_444(v6);
  v67 = CI::format_bits_per_component(v6);
  is_packed = CI::format_is_packed(v6);
  is_half_float = CI::format_is_half_float(v6);
  CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
  v18 = 1;
  if ((*(*a3 + 440))(a3, v6, 1))
  {
LABEL_47:
    if ((*(*a3 + 16))(a3) == 84)
    {
      v18 &= v73;
    }

    v36 = IOSurfaceGetHeight(this[6]);
    v37 = IOSurfaceGetWidth(this[6]);
    v38 = this[6];
    if (v36 <= v37)
    {
      v39 = IOSurfaceGetWidth(v38);
    }

    else
    {
      v39 = IOSurfaceGetHeight(v38);
    }

    if (v39 <= (*(*a3 + 448))(a3))
    {
      v41 = v18;
    }

    else
    {
      v41 = 0;
    }

    if ((v41 & IsRowBytesAligned) == 1)
    {
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = width;
      v101.size.height = height;
      CI::image_render_to_surface(a3, a2, this[6], v101, this, v40);
    }

    if (CompressionTypeOfPlane)
    {
      operator new();
    }

    v42 = IOSurfaceGetWidth(this[6]);
    v43 = IOSurfaceGetHeight(this[6]);
    v102.origin.x = x;
    v102.origin.y = y;
    v102.size.width = width;
    v102.size.height = height;
    v64 = v43;
    v65 = v42;
    if (CGRectIsNull(v102))
    {
      v72 = 0;
      v74 = 0;
      goto LABEL_74;
    }

    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    if (CGRectIsInfinite(v103))
    {
      v44 = 0xFFFFFFFFLL;
      v45 = -2147483647;
      v46 = -2147483647;
      v47 = 0xFFFFFFFFLL;
    }

    else
    {
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      v105 = CGRectInset(v104, 0.000001, 0.000001);
      v106 = CGRectIntegral(v105);
      v45 = v106.origin.x;
      v46 = v106.origin.y;
      v44 = v106.size.width;
      v47 = v106.size.height;
    }

    if (v45 == -2147483647 && v46 == -2147483647 && v44 == 0xFFFFFFFF)
    {
      v46 = -2147483647;
      LODWORD(v44) = -1;
      if (!v47 || v47 == 0xFFFFFFFF)
      {
        v72 = v47;
        v74 = 0xFFFFFFFFLL;
        goto LABEL_74;
      }
    }

    else if (!v44 || !v47)
    {
      v72 = v47;
      v74 = v44;
LABEL_74:
      v48 = (*(*a3 + 440))(a3, 784, 1);
      v49 = (*(*a3 + 440))(a3, 785, 1);
      if (is_half_float)
      {
        v50 = 2056;
      }

      else if (v67 != 10 || v49 != 1)
      {
        if (is_deep)
        {
          v51 = 1800;
        }

        else
        {
          v51 = 264;
        }

        if (v67 != 10 || (v48 & 1) == 0)
        {
          v50 = v51;
        }

        else
        {
          v50 = 784;
        }
      }

      else
      {
        v50 = 785;
      }

      v52 = CI::PixelFormatType_from_format(v50);
      v54 = ci_logger_performance(v52, v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = CI::name_for_format(v50);
        v56 = CI::name_for_format(v6);
        *buf = 136447234;
        *&buf[4] = "render";
        *&buf[12] = 2082;
        *&buf[14] = v55;
        *&buf[22] = 2048;
        v83 = v65;
        v84[0] = 2048;
        *&v84[1] = v64;
        v84[5] = 2082;
        v85 = v56;
        _os_log_impl(&dword_19CC36000, v54, OS_LOG_TYPE_INFO, "%{public}s CI_CONVERSIONS: Rendered via an intermediate YCC444 (%{public}s) buffer instead of directly to a (%zux%zu) %{public}s surface.", buf, 0x34u);
      }

      v57 = (*(*a3 + 552))(a3, v50);
      Surface = CreateSurface(v74, v72, v57, v52, 0);
      if (Surface)
      {
        if (v50 > 1799)
        {
          if (v50 == 2056)
          {
            *buf = 0x3C00000000000000;
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 0x40000000;
            v80[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_2;
            v80[3] = &__block_descriptor_tmp_4_4;
            v80[4] = buf;
            v60 = v80;
          }

          else
          {
            *v86 = 0xFFFF800080000040;
            v61 = v86;
            if (is_ycc_full_range)
            {
              v61 = buf;
            }

            v81[0] = MEMORY[0x1E69E9820];
            v81[1] = 0x40000000;
            v81[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke;
            v81[3] = &__block_descriptor_tmp_31;
            v81[4] = v61;
            *buf = 0xFFFF800080000000;
            v60 = v81;
          }
        }

        else if (v50 == 784)
        {
          if (is_ycc_full_range)
          {
            v63 = 524800;
          }

          else
          {
            v63 = 67633664;
          }

          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 0x40000000;
          v78[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_3;
          v78[3] = &__block_descriptor_tmp_5_3;
          v79 = v63;
          v60 = v78;
        }

        else if (v50 == 785)
        {
          if (is_ycc_full_range)
          {
            v59 = 537395200;
          }

          else
          {
            v59 = 537395264;
          }

          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 0x40000000;
          v76[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_4;
          v76[3] = &__block_descriptor_tmp_6_5;
          v77 = v59;
          v60 = v76;
        }

        else
        {
          *buf = -8355840;
          *v86 = -8355824;
          v62 = v86;
          if (is_ycc_full_range)
          {
            v62 = buf;
          }

          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 0x40000000;
          v75[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_5;
          v75[3] = &__block_descriptor_tmp_9_4;
          v75[4] = v62;
          v60 = v75;
        }

        SurfaceApplyPlaneBlock(Surface, v60);
        operator new();
      }

      operator new();
    }

    v74 = (v44 + v45 + 1 - (v45 & 0xFFFFFFFE | (v44 + v45 + 1) & 1));
    v72 = (v47 + v46 + 1 - (v46 & 0xFFFFFFFE | (v47 + v46 + 1) & 1));
    goto LABEL_74;
  }

  *buf = v16;
  *&buf[4] = v15;
  *&buf[8] = v14;
  *&buf[16] = v13;
  v19 = ((CompressionTypeOfPlane != 0) | ~is_packed) & CI::Context::format_is_supported_for_output(a3, v6, 1, buf);
  if ((*(*a3 + 16))(a3) == 82)
  {
    v20 = (is_half_float ^ 1) & v19;
  }

  else
  {
    v20 = v19;
  }

  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  if (CGRectIsNull(v96))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0x7FFFFFFF;
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v97.origin.x = x;
    v97.origin.y = y;
    v97.size.width = width;
    v97.size.height = height;
    if (CGRectIsInfinite(v97))
    {
      v23 = -2147483647;
      v21 = 0xFFFFFFFFLL;
      v22 = 0xFFFFFFFFLL;
      v24 = -2147483647;
    }

    else
    {
      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = width;
      v98.size.height = height;
      v99 = CGRectInset(v98, 0.000001, 0.000001);
      v100 = CGRectIntegral(v99);
      v24 = v100.origin.x;
      v23 = v100.origin.y;
      v22 = v100.size.width;
      v21 = v100.size.height;
    }
  }

  if ((*(*a3 + 16))(a3) != 85 || ((*(*a3 + 584))(a3) & 0x10) != 0)
  {
    if (v24)
    {
      v34 = 0;
    }

    else
    {
      v34 = v20;
    }

    if (v23)
    {
      v18 = 0;
    }

    else
    {
      v18 = v34;
    }

    goto LABEL_47;
  }

  if (v24 == -2147483647 && v23 == -2147483647 && v22 == 0xFFFFFFFF)
  {
    v30 = -2147483647;
    v31 = 0xFFFFFFFFLL;
    if (!v21)
    {
      v32 = -2147483647;
      v33 = 0;
LABEL_42:
      v35 = 0;
      if (v24 == v30 && v23 == v32 && v22 == v31)
      {
        v35 = v21 == v33;
      }

      v18 = v20 & (v35 && v73);
      goto LABEL_47;
    }

    v32 = -2147483647;
    v33 = v21;
    if (v21 == 0xFFFFFFFF)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v30 = v24;
    v32 = v23;
    v31 = v22;
    v33 = v21;
    if (!v22)
    {
      goto LABEL_42;
    }

    v30 = v24;
    v32 = v23;
    v31 = v22;
    v33 = v21;
    if (!v21)
    {
      goto LABEL_42;
    }
  }

  v30 = v24 & 0xFFFFFFFE;
  v32 = v23 & 0xFFFFFFFE;
  v31 = (v22 + v24 + 1 - (v24 & 0xFFFFFFFE | (v22 + v24 + 1) & 1));
  v33 = (v21 + v23 + 1 - (v23 & 0xFFFFFFFE | (v21 + v23 + 1) & 1));
  goto LABEL_42;
}

void ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7 > 1799)
  {
    if (v7 == 2056)
    {
      v8 = *(v6 + 48);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_7;
      v19[3] = &__block_descriptor_tmp_20_4;
      v19[4] = a2;
      v19[5] = a4;
      v19[6] = a5;
      v19[7] = a6;
      v19[8] = *(a1 + 44);
      v20 = *(a1 + 53);
      v21 = *(a1 + 54);
      v9 = v19;
      goto LABEL_17;
    }

    if (v7 != 1800)
    {
      goto LABEL_10;
    }

    v8 = *(v6 + 48);
    if (*(a1 + 52) == 1)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_2_11;
      v34[3] = &__block_descriptor_tmp_12_4;
      v34[4] = a2;
      v34[5] = a4;
      v34[6] = a5;
      v34[7] = a6;
      v34[8] = *(a1 + 44);
      v35 = *(a1 + 53);
      v36 = *(a1 + 54);
      v9 = v34;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_8;
      v16[3] = &__block_descriptor_tmp_21_4;
      v16[4] = a2;
      v16[5] = a4;
      v16[6] = a5;
      v16[7] = a6;
      v16[8] = *(a1 + 44);
      v17 = *(a1 + 53);
      v18 = *(a1 + 54);
      v9 = v16;
    }
  }

  else
  {
    if (v7 != 784)
    {
      if (v7 == 785)
      {
        v8 = *(v6 + 48);
        if (*(a1 + 52) == 1)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 0x40000000;
          v31[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_3_13;
          v31[3] = &__block_descriptor_tmp_14_4;
          v31[4] = a2;
          v31[5] = a4;
          v31[6] = a5;
          v31[7] = a6;
          v31[8] = *(a1 + 44);
          v32 = *(a1 + 53);
          v33 = *(a1 + 54);
          v9 = v31;
        }

        else
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 0x40000000;
          v28[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_4_15;
          v28[3] = &__block_descriptor_tmp_16_3;
          v28[4] = a2;
          v28[5] = a4;
          v28[6] = a5;
          v28[7] = a6;
          v28[8] = *(a1 + 44);
          v29 = *(a1 + 53);
          v30 = *(a1 + 54);
          v9 = v28;
        }

        goto LABEL_17;
      }

LABEL_10:
      v8 = *(v6 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_9;
      v13[3] = &__block_descriptor_tmp_22_2;
      v13[4] = a2;
      v13[5] = a4;
      v13[6] = a5;
      v13[7] = a6;
      v13[8] = *(a1 + 44);
      v14 = *(a1 + 53);
      v15 = *(a1 + 54);
      v9 = v13;
      goto LABEL_17;
    }

    v8 = *(v6 + 48);
    if (*(a1 + 52) == 1)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_5_17;
      v25[3] = &__block_descriptor_tmp_18_2;
      v25[4] = a2;
      v25[5] = a4;
      v25[6] = a5;
      v25[7] = a6;
      v25[8] = *(a1 + 44);
      v26 = *(a1 + 53);
      v27 = *(a1 + 54);
      v9 = v25;
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v22[2] = ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_6;
      v22[3] = &__block_descriptor_tmp_19_4;
      v22[4] = a2;
      v22[5] = a4;
      v22[6] = a5;
      v22[7] = a6;
      v22[8] = *(a1 + 44);
      v23 = *(a1 + 53);
      v24 = *(a1 + 54);
      v9 = v22;
    }
  }

LABEL_17:
  v10 = SurfaceApplyPlaneBlock(v8, v9);
  if (v10)
  {
    v12 = ci_logger_api(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10_cold_1(v12);
    }
  }
}

unsigned __int16 *___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_2_11(unsigned __int16 *result, uint64_t a2, uint64_t a3, double a4, double a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a9);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC444_to_CbCr444_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a9, a4, a5, a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC444_to_CbCr422_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a9);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC444_to_CbCr_10packed(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a9);
  }

  return result;
}

unsigned int *___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_3_13(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2BGR10_to_Y_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr444_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr422_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, result[17], a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, (result[17] + (result[17] >> 31)) >> 1, a6);
  }

  return result;
}

uint64_t ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_4_15(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2BGR10_to_Y_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr444_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr422_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, *(result + 68), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2BGR10_to_CbCr_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, (*(result + 68) + (*(result + 68) >> 31)) >> 1, a6);
  }

  return result;
}

unsigned int *___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_5_17(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2RGB10_to_Y_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr444_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, result[16], result[17], a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr422_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, result[17], a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr_10p(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (result[16] + (result[16] >> 31)) >> 1, (result[17] + (result[17] >> 31)) >> 1, a6);
  }

  return result;
}

uint64_t ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC_A2RGB10_to_Y_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr444_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, *(result + 64), *(result + 68), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr422_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, *(result + 68), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC_A2RGB10_to_CbCr_10(*(result + 32), *(result + 40), *(result + 48), *(result + 56), a2, (*(result + 64) + (*(result + 64) >> 31)) >> 1, (*(result + 68) + (*(result + 68) >> 31)) >> 1, a6);
  }

  return result;
}

short float *___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_7(short float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC444_to_CbCr444_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC444_to_CbCr422_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC444_to_CbCr_half(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a6);
  }

  return result;
}

__int16 *___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_8(__int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 72) == 1)
  {
    return CopyYCC444_to_CbCr444_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (*(result + 73) == 1)
  {
    return CopyYCC444_to_CbCr422_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a6);
  }

  if (*(result + 74) == 1)
  {
    return CopyYCC444_to_CbCr_16(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a6);
  }

  return result;
}

unsigned __int8 *___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_9(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return CopyYCC444_to_Y_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (result[72] == 1)
  {
    return CopyYCC444_to_CbCr444_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, *(result + 16), *(result + 17), a6);
  }

  if (result[73] == 1)
  {
    return CopyYCC444_to_CbCr422_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, *(result + 17), a6);
  }

  if (result[74] == 1)
  {
    return CopyYCC444_to_CbCr_8(*(result + 4), *(result + 5), *(result + 6), *(result + 7), a2, (*(result + 16) + (*(result + 16) >> 31)) >> 1, (*(result + 17) + (*(result + 17) >> 31)) >> 1, a6);
  }

  return result;
}

CGImage *CI::RenderToSurface::writeToFile(CI::RenderToSurface *this, char *a2)
{
  result = *(this + 6);
  if (result)
  {
    return SurfaceWriteToFile(result, *(this + 3), a2);
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)91>::~InstanceCounted(void *result)
{
  *result = &unk_1F103C770;
  atomic_fetch_add(&dword_1ED7C47D8[82], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)91>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103C770;
  atomic_fetch_add(&dword_1ED7C47D8[82], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::RenderToGLTexture::RenderToGLTexture(uint64_t this, int a2, int a3, const CGSize *a4)
{
  *(this + 8) = 1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *this = &unk_1F103C948;
  *(this + 40) = *a4;
  *(this + 56) = &unk_1F103C9B0;
  atomic_fetch_add(&dword_1ED7C47D8[83], 1u);
  *this = &unk_1F103C798;
  *(this + 56) = &unk_1F103C800;
  *(this + 64) = a2;
  *(this + 68) = a3;
  return this;
}

void CI::RenderToGLTexture::~RenderToGLTexture(CI::RenderToGLTexture *this)
{
  *this = &unk_1F103C798;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_1F103C9B0;
  atomic_fetch_add(&dword_1ED7C47D8[83], 0xFFFFFFFF);
  CI::RenderDestination::~RenderDestination(this);
}

{
  *this = &unk_1F103C798;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_1F103C9B0;
  atomic_fetch_add(&dword_1ED7C47D8[83], 0xFFFFFFFF);
  CI::RenderDestination::~RenderDestination(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::RenderToGLTexture::~RenderToGLTexture(CI::RenderToGLTexture *this)
{
  *(this - 7) = &unk_1F103C798;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F103C9B0;
  atomic_fetch_add(&dword_1ED7C47D8[83], 0xFFFFFFFF);
  CI::RenderDestination::~RenderDestination((this - 56));
}

{
  CI::RenderToGLTexture::~RenderToGLTexture((this - 56));
}

void CI::RenderToGLTexture::render(CI::RenderToGLTexture *this, CI::Image *a2, CI::Context *a3)
{
  if ((*(*a3 + 16))(a3) == 84)
  {
    v6 = *(this + 4);
    CI::RenderToTexture<CI::Texture>::render_to_texture(this, a2, a3, this + 40, &v6);
  }

  operator new();
}

void CI::RenderToTexture<CI::Texture>::render_to_texture(CI::Image *a1, CI::Context *a2, CI *a3, uint64_t a4, __int128 *a5)
{
  v10 = *a5;
  v8 = (*(*a3 + 376))(a3, &v10, a4);
  v10 = 0uLL;
  if (v8)
  {
    CI::image_render("render_to_texture", a3, a2, a1, v9);
  }

  operator new();
}

uint64_t CI::RenderToMTLTexture::RenderToMTLTexture(uint64_t a1, CFTypeRef cf, uint64_t a3, _OWORD *a4, int a5)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F103C948;
  *(a1 + 40) = *a4;
  *(a1 + 32) = a5;
  *(a1 + 56) = &unk_1F103C9D8;
  atomic_fetch_add(&dword_1ED7C47D8[84], 1u);
  *a1 = &unk_1F103C828;
  *(a1 + 56) = &unk_1F103C890;
  *(a1 + 64) = a3;
  if (cf)
  {
    v6 = CFRetain(cf);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
  return a1;
}

void sub_19CED1F18(_Unwind_Exception *a1)
{
  v4 = v3;
  *(v1 + 7) = v2;
  atomic_fetch_add((v4 + 372), 0xFFFFFFFF);
  CI::RenderDestination::~RenderDestination(v1);
  _Unwind_Resume(a1);
}

void CI::RenderToMTLTexture::~RenderToMTLTexture(CI::RenderToMTLTexture *this)
{
  *this = &unk_1F103C828;
  *(this + 7) = &unk_1F103C890;
  v3 = (this + 72);
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  *(this + 7) = &unk_1F103C9D8;
  atomic_fetch_add(&dword_1ED7C47D8[84], 0xFFFFFFFF);

  CI::RenderDestination::~RenderDestination(this);
}

{
  CI::RenderToMTLTexture::~RenderToMTLTexture(this);

  JUMPOUT(0x19EAF5590);
}

void sub_19CED2000(_Unwind_Exception *a1)
{
  *v2 = 0;
  v2[1] = 0;
  *(v1 + 7) = &unk_1F103C9D8;
  atomic_fetch_add(&dword_1ED7C47D8[84], 0xFFFFFFFF);
  CI::RenderDestination::~RenderDestination(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toCI::RenderToMTLTexture::~RenderToMTLTexture(CI::RenderToMTLTexture *this)
{
  CI::RenderToMTLTexture::~RenderToMTLTexture((this - 56));
}

{
  CI::RenderToMTLTexture::~RenderToMTLTexture((this - 56));

  JUMPOUT(0x19EAF5590);
}

void CI::RenderToMTLTexture::render(id *this, CI::Image *a2, id *a3)
{
  if ((*(*a3 + 2))(a3) == 85)
  {
    CI::MetalContext::device(a3);
    [this[9] pixelFormat];
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    MTLPixelFormatGetInfoForDevice();
    operator new();
  }

  if (!this[8])
  {
    v6 = [this[9] iosurface];
    if (v6)
    {
      v7 = v6;
      (*(*a2 + 88))(a2);

      CI::image_render_to_surface(a3, a2, v7, *&v9, this, v8);
    }
  }

  operator new();
}

uint64_t CI::RenderToMTLTextureProvider::RenderToMTLTextureProvider(uint64_t a1, void *aBlock, uint64_t a3, _OWORD *a4, int a5)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F103CA00;
  *(a1 + 40) = *a4;
  *(a1 + 32) = a5;
  *(a1 + 56) = &unk_1F103CA68;
  atomic_fetch_add(&dword_1ED7C47D8[87], 1u);
  *a1 = &unk_1F103C8B8;
  *(a1 + 56) = &unk_1F103C920;
  *(a1 + 64) = a3;
  *(a1 + 80) = 0;
  *(a1 + 72) = _Block_copy(aBlock);
  return a1;
}

void sub_19CED2408(_Unwind_Exception *a1)
{
  v4 = v3;
  *(v1 + 7) = v2;
  atomic_fetch_add(v4, 0xFFFFFFFF);
  CI::RenderDestination::~RenderDestination(v1);
  _Unwind_Resume(a1);
}

void CI::RenderToMTLTextureProvider::~RenderToMTLTextureProvider(CI::RenderToMTLTextureProvider *this)
{
  *this = &unk_1F103C8B8;
  *(this + 7) = &unk_1F103C920;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 10) = 0;
  _Block_release(*(this + 9));
  *(this + 7) = &unk_1F103CA68;
  atomic_fetch_add(&dword_1ED7C47D8[87], 0xFFFFFFFF);

  CI::RenderDestination::~RenderDestination(this);
}

{
  CI::RenderToMTLTextureProvider::~RenderToMTLTextureProvider(this);

  JUMPOUT(0x19EAF5590);
}

void sub_19CED24E8(_Unwind_Exception *a1)
{
  *(v1 + 7) = &unk_1F103CA68;
  atomic_fetch_add(&dword_1ED7C47D8[87], 0xFFFFFFFF);
  CI::RenderDestination::~RenderDestination(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toCI::RenderToMTLTextureProvider::~RenderToMTLTextureProvider(CI::RenderToMTLTextureProvider *this)
{
  CI::RenderToMTLTextureProvider::~RenderToMTLTextureProvider((this - 56));
}

{
  CI::RenderToMTLTextureProvider::~RenderToMTLTextureProvider((this - 56));

  JUMPOUT(0x19EAF5590);
}

void CI::RenderToMTLTextureProvider::render(CI::RenderToMTLTextureProvider *this, CI::Image *a2, CI::Context *a3)
{
  if ((*(*a3 + 16))(a3) == 85)
  {
    v6 = *(this + 8);
    if (v6)
    {
      CI::MetalContext::set_command_buffer(a3, v6);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZNK2CI26RenderToMTLTextureProvider6renderEPNS_5ImageEPNS_7ContextE_block_invoke;
    v7[3] = &__block_descriptor_40_e38__Texture_______QQ____II_____v_v___8__0l;
    v7[4] = this;
    CI::RenderToTexture<CI::Texture({block_pointer})(void)>::render_to_texture(this, a2, a3, this + 40, v7);
  }

  operator new();
}

void CI::RenderToTexture<CI::Texture({block_pointer})(void)>::render_to_texture(CI::Image *a1, CI::Context *a2, CI *a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a3 + 408))(a3, a5, a4))
  {
    CI::image_render("render_to_texture", a3, a2, a1, v8);
  }

  operator new();
}

const void *___ZNK2CI26RenderToMTLTextureProvider6renderEPNS_5ImageEPNS_7ContextE_block_invoke@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = CI::RenderToMTLTextureProvider::texture(*(a1 + 32));
  *a2 = result;
  a2[1] = 0;
  return result;
}

void *CI::InstanceCounted<(CI::Type)92>::~InstanceCounted(void *result)
{
  *result = &unk_1F103C9B0;
  atomic_fetch_add(&dword_1ED7C47D8[83], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)92>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103C9B0;
  atomic_fetch_add(&dword_1ED7C47D8[83], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)93>::~InstanceCounted(void *result)
{
  *result = &unk_1F103C9D8;
  atomic_fetch_add(&dword_1ED7C47D8[84], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)93>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103C9D8;
  atomic_fetch_add(&dword_1ED7C47D8[84], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)96>::~InstanceCounted(void *result)
{
  *result = &unk_1F103CA68;
  atomic_fetch_add(&dword_1ED7C47D8[87], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)96>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103CA68;
  atomic_fetch_add(&dword_1ED7C47D8[87], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::traverse_releasing_resources(CI *this, CI::Node *a2)
{
  result = CI_CACHE_PROGRAM_GRAPH(this, a2);
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = ___ZN2CI4Node15traverse_uniqueEU13block_pointerFvPS0_E_block_invoke;
    v4[3] = &unk_1E75C7C18;
    v4[4] = &__block_literal_global_94;
    return CI::GraphObject::traverse_unique(this, v4);
  }

  return result;
}

CI::Node *CI::prepare_initial_graph(uint64_t *a1, const char *a2, unsigned int *a3, uint64_t a4, CGColorSpace *a5, int a6, uint64_t a7, char *a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, unsigned __int8 a13, uint64_t a14)
{
  v76 = *MEMORY[0x1E69E9840];
  v60.origin.x = a9;
  v60.origin.y = a10;
  v60.size.width = a11;
  v60.size.height = a12;
  v59[1] = 0;
  v59[0] = 0;
  v58 = v59;
  v21 = CI_CACHE_PROGRAM_GRAPH(a1, a2);
  v56 = a4;
  if (!v21)
  {
    goto LABEL_13;
  }

  v23 = ci_signpost_log_render(v21, v22);
  v24 = (*(*a1 + 280))(a1) << 32;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v24, "traverse_gathering_digests", &unk_19CFBCBAE, buf, 2u);
  }

  v25 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v25, 0, "traverse_gathering_digests", 0x22u);
  v26 = (*(*a1 + 16))(a1);
  v27 = 0;
  if (v26 == 85)
  {
    v27 = a1[234] != 0;
  }

  *__src = MEMORY[0x1E69E9820];
  *&__src[8] = 0x40000000;
  v67 = ___ZN2CIL26traverse_gathering_digestsEPKNS_7ContextEPNS_5ImageERNSt3__13mapINS_10ImageIndexENS_30ImageDigestForRenderGraphCacheENS5_4lessIS7_EENS5_9allocatorINS5_4pairIKS7_S8_EEEEEE_block_invoke;
  v68 = &__block_descriptor_tmp_45_0;
  LOBYTE(v71) = v27;
  v69 = a1;
  v70 = &v58;
  v61 = MEMORY[0x1E69E9820];
  v62 = 0x40000000;
  v63 = ___ZNK2CI5Image15traverse_uniqueEU13block_pointerFvPKS0_iE_block_invoke;
  v64 = &unk_1E75C7C60;
  v65 = __src;
  v28 = CI::GraphObject::traverse_unique(a3, &v61);
  v30 = ci_signpost_log_render(v28, v29);
  v32 = *&buf[8];
  if ((*&buf[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v33 = v30;
    if (os_signpost_enabled(v30))
    {
      *__src = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v33, OS_SIGNPOST_INTERVAL_END, v32, "traverse_gathering_digests", &unk_19CFBCBAE, __src, 2u);
    }
  }

  TimerBase::~TimerBase(buf, v31);
  *buf = a3 + 29;
  v34 = std::__tree<std::__value_type<CI::NodeIndex,unsigned long>,std::__map_value_compare<CI::NodeIndex,std::__value_type<CI::NodeIndex,unsigned long>,std::less<CI::NodeIndex>,true>,std::allocator<std::__value_type<CI::NodeIndex,unsigned long>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(&v58, a3 + 29, &std::piecewise_construct, buf)[5];
  XXH64_reset(buf, 0);
  *__src = v34;
  XXH64_update(buf, __src, 8uLL);
  XXH64_update(buf, &v60, 0x20uLL);
  CI::XXHashHelper::add(buf, a5);
  *__src = a6;
  XXH64_update(buf, __src, 4uLL);
  *__src = *(a7 + 8);
  XXH64_update(buf, __src, 4uLL);
  XXH64_update(buf, a8, 0x30uLL);
  *__src = a13;
  XXH64_update(buf, __src, 4uLL);
  v35 = XXH64_digest(buf);
  v21 = CI::ObjectCache<CI::Node,unsigned long long,false>::find(a1[39], v35);
  if (!v21)
  {
LABEL_13:
    v39 = ci_signpost_log_render(v21, v22);
    v40 = (*(*a1 + 280))(a1) << 32;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v40, "prepare_initial_graph", &unk_19CFBCBAE, buf, 2u);
    }

    v41 = (*(*a1 + 280))(a1);
    TimerBase::TimerBase(&v57, v41, 0, "prepare_initial_graph", 1u);
    if (!a4)
    {
      if (!CI_NO_CM() && (CI::format_only_alpha(a6) & 1) == 0)
      {
        v48 = (*(*a3 + 256))(a3);
        v50 = CI::ColorSpace_is_HDR(v48, v49);
        if (!a5 || !v50 || (CI::ColorSpace_is_HDR(a5, v51) & 1) != 0 || CGColorSpaceUsesExtendedRange(a5))
        {
          operator new();
        }

        operator new();
      }

      if (a6 == 3079 || a6 == 2567)
      {
LABEL_21:
        operator new();
      }

      if ((CI::format_only_alpha(a6) & 1) == 0 && (*(*a3 + 128))(a3) != 1 && (*(*a3 + 128))(a3) != -1)
      {
        has_alpha = CI::format_has_alpha(a6);
        if (a6 && !has_alpha)
        {
          goto LABEL_21;
        }

        if (*(a1 + 40) != 1 || CI::format_has_unpremul_alpha(a6))
        {
          operator new();
        }

        if ((CI::format_is_float(a6) & 1) == 0 && *(a1 + 41) == 1)
        {
          operator new();
        }
      }
    }

    v52 = *(a7 + 8);
    if (v52)
    {
      if (*(a7 + 16) > 1uLL || *(a7 + 24) >= 2uLL)
      {
        CI::Kernel::builtin(v52, v42);
        v53 = *(a7 + 24);
        *buf = *(a7 + 16);
        v73 = 0;
        *&buf[8] = 0;
        v74 = v53;
        v75 = 0uLL;
        operator new();
      }

      operator new();
    }

    if (a6 > 529)
    {
      if (a6 != 534 && a6 != 530)
      {
LABEL_70:
        CI::Image::BuildMapToUnionRoi(a3, v42, v60);
      }
    }

    else if (a6 != 274 && a6 != 278)
    {
      goto LABEL_70;
    }

    operator new();
  }

  v36 = v21;
  v37 = (*(*v21 + 48))(v21, 0);
  if (v37)
  {
    v38 = CI::Object::ref(v37);
  }

  else
  {
    v38 = 0;
  }

  if (a14)
  {
    v43 = *(v36 + 104);
    *(a14 + 4) = *(v36 + 108);
    *a14 = v43;
  }

  *__src = MEMORY[0x1E69E9820];
  *&__src[8] = 0x40000000;
  v67 = ___ZN2CIL28traverse_restoring_resourcesERKNSt3__13mapINS_10ImageIndexENS_30ImageDigestForRenderGraphCacheENS0_4lessIS2_EENS0_9allocatorINS0_4pairIKS2_S3_EEEEEERKNS_14ImageToNodeMapEPNS_5ImageE_block_invoke;
  v68 = &__block_descriptor_tmp_57;
  v69 = &v58;
  v70 = (v36 + 56);
  v61 = MEMORY[0x1E69E9820];
  v62 = 0x40000000;
  v63 = ___ZNK2CI5Image15traverse_uniqueEU13block_pointerFvPKS0_E_block_invoke;
  v64 = &unk_1E75C7D28;
  v65 = __src;
  CI::GraphObject::traverse_unique(a3, &v61);
  v61 = MEMORY[0x1E69E9820];
  v62 = 0x40000000;
  v63 = ___ZN2CIL37traverse_node_graph_gathering_digestsEPKNS_7ContextEPNS_4NodeE_block_invoke;
  v64 = &__block_descriptor_tmp_58;
  v65 = a1;
  *__src = MEMORY[0x1E69E9820];
  *&__src[8] = 0x40000000;
  v67 = ___ZN2CI4Node15traverse_uniqueEU13block_pointerFvPS0_E_block_invoke;
  v68 = &unk_1E75C7C18;
  v69 = &v61;
  CI::GraphObject::traverse_unique(v38, __src);
  CI::Object::unref(v36);
  (*(*a3 + 88))(a3);
  if (CI::print_tree_enabled(2, a1))
  {
    if (!strcmp(a2, "get_bitmap"))
    {
      v44 = "get_bitmap_cacheHit";
    }

    else
    {
      v44 = a2;
    }

    if (!strcmp(a2, "render_to_surface"))
    {
      v44 = "render_to_surface_cacheHit";
    }

    if (!strcmp(a2, "create_cgimage_check"))
    {
      v44 = "create_cgimage_check_cacheHit";
    }

    if (!strcmp(a2, "render_to_display"))
    {
      v44 = "render_to_display_cacheHit";
    }

    v45 = strcmp(a2, "render_to_texture");
    if (!v45)
    {
      v44 = "render_to_texture_cacheHit";
    }

    if (CI_PRINT_TREE_graphviz(v45, v46))
    {
      CI::dump_optimized_graph(a1, v56, v44, v38, &v60, a6);
    }

    else
    {
      CI::print_optimized_graph(a1, v56, v44, v38, &v60, a6);
    }
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v58, v59[0]);
  return v38;
}

uint64_t CI::ObjectCache<CI::Node,unsigned long long,false>::find(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE4findEy_block_invoke;
  block[3] = &unk_1E75C8000;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v5;
  dispatch_sync(*(a1 + 56), block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t CI::print_tree_enabled(uint64_t a1, uint64_t a2)
{
  if ((CI_PRINT_TREE(a1, a2) & a1) == 0)
  {
    return 0;
  }

  v3 = (*(*a2 + 280))(a2);
  result = CI_PRINT_TREE_context(v3, (a2 + 236));
  if (!result)
  {
    return result;
  }

  v6 = CI_PRINT_TREE_frame(result, v5);
  return !v6 || *(a2 + 152) == CI_PRINT_TREE_frame(v6, v7);
}

void CI::dump_optimized_graph(uint64_t a1, uint64_t a2, uint64_t a3, CI::GraphObject *a4, void *a5, int a6)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v9 = 0;
    v36 = 1;
    v10 = &stru_1F1040378;
    v41 = &stru_1F1040378;
LABEL_8:
    v12 = a6;
    goto LABEL_11;
  }

  v9 = *(a2 + 16);
  v36 = v9 == 0;
  if (v9)
  {
    v10 = CFStringCreateWithFormat(0, 0, @"destination=%@\n", v9);
  }

  else
  {
    v10 = &stru_1F1040378;
  }

  if ((*(*a2 + 40))(a2))
  {
    v11 = (*(*a2 + 40))(a2);
    v41 = CFStringCreateWithFormat(0, 0, @" %p", v11);
    if (a6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v41 = &stru_1F1040378;
    if (a6)
    {
      goto LABEL_8;
    }
  }

  v12 = *(a2 + 32);
LABEL_11:
  v37 = a6;
  cf = v10;
  v13 = CI::name_for_format(v12);
  v14 = "";
  if (*(a1 + 344))
  {
    v15 = "prepare";
  }

  else
  {
    v15 = "";
  }

  v38 = v15;
  v16 = (*(*a1 + 272))(a1) - 1;
  if (v16 <= 2)
  {
    v14 = off_1E75C8040[v16];
  }

  v17 = (*(*a1 + 312))(a1);
  v18 = (*(*a1 + 280))(a1);
  if (*(a1 + 236))
  {
    v19 = ":";
  }

  else
  {
    v19 = "";
  }

  v20 = *(a1 + 152);
  v21 = CI::name_for_format(*(a1 + 32));
  v22 = (*(*a1 + 176))(a1);
  v23 = "(lossyAllowed)";
  if (!v22)
  {
    v23 = "";
  }

  v24 = CFStringCreateWithFormat(0, 0, @"optimized graph %s\n%s%@\n(%s%s context %d%s%s frame %lu)\n%@workingFormat=%s%s\nformat=%s\nroi=[%g %g %g %g]", v38, a3, v41, v14, v17, v18, v19, a1 + 236, v20, cf, v21, v23, v13, *a5, a5[1], a5[2], a5[3]);
  v26 = CI::GraphObject::graphviz_representation(a4, v24, 0, 0, v25);
  if (v26)
  {
    v27 = v26;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    *__dst = 0u;
    v63 = 0u;
    if (v36)
    {
      strlcpy(__dst, (a1 + 236), 0x100uLL);
    }

    else
    {
      CFStringGetCString(v9, __dst, 256, 0x8000100u);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    *__str = 0u;
    v47 = 0u;
    v28 = getpid();
    if (__dst[0])
    {
      v29 = "_";
    }

    else
    {
      v29 = "";
    }

    v30 = (*(*a1 + 280))(a1);
    v31 = snprintf(__str, 0x100uLL, "%d%s%s_%d_%lu_optimized_graph", v28, v29, __dst, v30, *(a1 + 152));
    v33 = CI_LOG_FILE(v31, v32);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v44[2] = ___ZN2CIL20dump_optimized_graphEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke;
    v44[3] = &__block_descriptor_tmp_82;
    v44[4] = v9;
    v44[5] = __dst;
    v44[6] = a1;
    v44[7] = a3;
    v45 = v37;
    v44[8] = a2;
    v44[9] = a5;
    v44[10] = __str;
    stream_to_file(v33, v44);
    if (CI::format_for_graphviz(void)::onceToken != -1)
    {
      CI::prepare_initial_graph();
    }

    v34 = CI::format_for_graphviz(void)::fmt;
    v35 = CI_TEMP_DIR();
    CIGVDumpToFile(v27, v34, v35, __str);
    CFRelease(v24);
    CFRelease(v27);
    CFRelease(cf);
    CFRelease(v41);
  }

  else
  {
    CFRelease(cf);
    CFRelease(v41);

    CFRelease(v24);
  }
}

void CI::print_optimized_graph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = CI_LOG_FILE(a1, a2);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = ___ZN2CIL21print_optimized_graphEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke;
  v13[3] = &__block_descriptor_tmp_97_0;
  v13[4] = a2;
  v13[5] = a1;
  v14 = a6;
  v13[6] = a3;
  v13[7] = a5;
  v13[8] = a4;
  stream_to_file(v12, v13);
}

__n128 ___ZN2CI21prepare_initial_graphEPNS_7ContextEPKcPNS_5ImageEPKNS_17RenderDestinationE6CGRectP12CGColorSpaceNS_11PixelFormatENS_19output_swizzle_infoERKNS_6AffineEbPNS_17TextureDescriptorE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = *(a2 + 96);
    v7 = v3;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != v3 && v6 >= *(v7 + 32))
    {
      result = *(v7 + 40);
      v12 = *(v7 + 56);
      *(a2 + 16) = result;
      *(a2 + 32) = v12;
    }
  }

  return result;
}

__n128 ___ZN2CI21prepare_initial_graphEPNS_7ContextEPKcPNS_5ImageEPKNS_17RenderDestinationE6CGRectP12CGColorSpaceNS_11PixelFormatENS_19output_swizzle_infoERKNS_6AffineEbPNS_17TextureDescriptorE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(a2 + 16) = *MEMORY[0x1E695F050];
  *(a2 + 32) = v3;
  return result;
}

void CI::Image::traverse_stoppable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI5Image18traverse_stoppableEU13block_pointerFbPKS0_S2_EU13block_pointerFvS2_S2_E_block_invoke;
  v4[3] = &unk_1E75C7D90;
  v4[4] = a2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZNK2CI5Image18traverse_stoppableEU13block_pointerFbPKS0_S2_EU13block_pointerFvS2_S2_E_block_invoke_2;
  v3[3] = &unk_1E75C7DB8;
  v3[4] = a3;
  CI::GraphObject::traverse_stoppable(a1, 0, 0, 0, v4, v3);
}

uint64_t __copy_helper_block_8_32c120_ZTSNSt3__13mapIN2CI10ImageIndexENS1_30ImageDigestForRenderGraphCacheENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::map<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__tree_node<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,void *> *,long>>>(v2, *(a2 + 32), (a2 + 40));
}

uint64_t __copy_helper_block_8_40c120_ZTSNSt3__13mapIN2CI10ImageIndexENS1_30ImageDigestForRenderGraphCacheENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::map<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__tree_node<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,void *> *,long>>>(v2, *(a2 + 40), (a2 + 48));
}

void CI::ObjectCache<CI::Node,unsigned long long,false>::insert(uint64_t a1, uint64_t a2, CI::Object *this, int a4)
{
  if (this)
  {
    CI::Object::ref(this);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE6insertEyPS1_j_block_invoke;
  v8[3] = &__block_descriptor_tmp_282;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = this;
  v9 = a4;
  Queue::execute_async((a1 + 56), v8);
}

void CI::image_render(CI *this, CI *a2, CI::Context *a3, CI::Image *a4, const CI::RenderDestination *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  v15.origin.x = (*(*a3 + 88))(a3);
  v15.origin.y = v9;
  v15.size.width = v10;
  v15.size.height = v11;
  *buf = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 0;
  v12 = CI::prepare_initial_graph(a2, this, a3, a4, 0, 0, &CI::defaultSwizzle, buf, v15.origin.x, v9, v10, v11, 0, 0);
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN2CI12image_renderEPKcPNS_7ContextEPNS_5ImageEPKNS_17RenderDestinationE_block_invoke;
    v14[3] = &__block_descriptor_tmp_30;
    v14[4] = a2;
    v14[5] = a4;
    CI::tile_node_graph(a2, a4, this, v12, v13, &v15, 0, &CI::defaultSwizzle, v14);
  }

  operator new();
}

void CI::tile_node_graph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CGRect *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (a4)
    {
      if (!(*(*a1 + 256))(a1))
      {
        v16.origin.x = (*(*a4 + 168))(a4);
        v17 = CGRectInset(v16, 0.00100000005, 0.00100000005);
        v20 = CGRectIntegral(v17);
        v18 = CGRectIntersection(*a6, v20);
        x = v18.origin.x;
        y = v18.origin.y;
        width = v18.size.width;
        height = v18.size.height;
        v15 = v18;
        if (CGRectIsEmpty(v18))
        {
          operator new();
        }

        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        CGRectIsInfinite(v19);
        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void ___ZN2CI12image_renderEPKcPNS_7ContextEPNS_5ImageEPKNS_17RenderDestinationE_block_invoke(uint64_t a1, CI::ProgramNode *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = *MEMORY[0x1E69E9840];
  v6.origin.x = a3;
  v6.origin.y = a4;
  v6.size.width = a5;
  v6.size.height = a6;
  CI::Context::render(*(a1 + 32), a2, &v6);
}

uint64_t CI::print_time_enabled(CI *this, CI::Context *a2)
{
  result = CI_PRINT_TIME(this, a2);
  if (result)
  {
    v4 = (*(*this + 280))(this);

    return CI_PRINT_TIME_context(v4, this + 236);
  }

  return result;
}

CI::GLContext *CI::image_render_to_display(CI::GLContext *result, unsigned int *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v11 = result;
    result = (*(*result + 384))(result);
    if (result)
    {
      if ((*(*v11 + 16))(v11) == 84)
      {
        a3 = CI::GLContext::user_destination_format(v11);
      }

      if (a2)
      {
        CFAbsoluteTimeGetCurrent();
        v12.f64[0] = a4;
        v12.f64[1] = a5;
        v23[0] = 0x3FF0000000000000;
        v23[1] = 0;
        v23[2] = 0;
        v23[3] = 0x3FF0000000000000;
        v24 = vnegq_f64(vsubq_f64(v12, v12));
        v13 = CI::prepare_initial_graph(v11, "render_to_display", a2, 0, 0, a3, &CI::defaultSwizzle, v23, a4, a5, a6, a7, 0, 0);
        if (v13)
        {
          v15 = v13;
          v16 = v14;
          v27.origin.x = a4;
          v27.origin.y = a5;
          v27.size.width = a6;
          v27.size.height = a7;
          v25.origin.x = CI::Affine::applyToRect(v23, v27);
          v25.origin.y = v17;
          v25.size.width = v18;
          v25.size.height = v19;
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 0x40000000;
          v22[2] = ___ZN2CIL13_image_renderEPKcPNS_7ContextEPNS_5ImageE6CGRectNS_11PixelFormatEmRK7CGPoint_block_invoke;
          v22[3] = &__block_descriptor_tmp_278;
          v22[4] = v11;
          CI::tile_node_graph(v11, 0, "render_to_display", v15, v16, &v25, a3, &CI::defaultSwizzle, v22);
        }
      }

      return (*(*v11 + 392))(v11);
    }
  }

  return result;
}

void CI::image_render_to_surface(CI *this, CI::Context *a2, IOSurfaceRef buffer, CGRect a4, __IOSurface *a5, const CI::RenderDestination *a6)
{
  v69 = *MEMORY[0x1E69E9840];
  v67 = a4;
  if (this)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    PixelFormat = IOSurfaceGetPixelFormat(buffer);
    v15 = PixelFormat;
    if (CI::iosurface_destination_format_supported_p(PixelFormat))
    {
      v17 = CI::format_from_IOSurface(buffer, v16);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      if (CGRectIsNull(v70))
      {
        v18 = 0;
        v19 = 0;
        v20 = 0x7FFFFFFF;
        v21 = 0x7FFFFFFF;
      }

      else
      {
        v71.origin.x = x;
        v71.origin.y = y;
        v71.size.width = width;
        v71.size.height = height;
        if (CGRectIsInfinite(v71))
        {
          v20 = -2147483647;
          v18 = 0xFFFFFFFFLL;
          v19 = 0xFFFFFFFFLL;
          v21 = -2147483647;
        }

        else
        {
          v72.origin.x = x;
          v72.origin.y = y;
          v72.size.width = width;
          v72.size.height = height;
          v73 = CGRectInset(v72, 0.000001, 0.000001);
          v74 = CGRectIntegral(v73);
          v21 = v74.origin.x;
          v20 = v74.origin.y;
          v19 = v74.size.width;
          v18 = v74.size.height;
        }
      }

      *&v68.a = __PAIR64__(v20, v21);
      *&v68.b = v19;
      *&v68.c = v18;
      CI::Context::swizzler_for_output(this, v17, &v68, 1, &v66);
      a_low = LODWORD(v66.a);
      is_ycc = LODWORD(v66.a) != 0;
      if ((*(*this + 16))(this) == 84 && a_low != 0)
      {
        if (CI::format_is_packed(v17))
        {
          is_ycc = CI::format_is_ycc(v17);
        }

        else
        {
          is_ycc = 1;
        }
      }

      if ((*(*this + 16))(this) == 84)
      {
        HIDWORD(v26) = v17 - 263;
        LODWORD(v26) = v17 - 263;
        v25 = v26 >> 8;
        if (v25 <= 8)
        {
          is_ycc &= (0x1C1u >> v25) ^ 1;
        }
      }

      if ((*(*this + 16))(this) == 82)
      {
        HIDWORD(v28) = v17 - 263;
        LODWORD(v28) = v17 - 263;
        v27 = v28 >> 8;
        if (v27 <= 8)
        {
          is_ycc &= (0x1C1u >> v27) ^ 1;
        }
      }

      v29 = IOSurfaceGetWidth(buffer);
      v30 = v29 % *&v66.c;
      v31 = IOSurfaceGetHeight(buffer);
      if (v30 || v31 % *&v66.d)
      {
        LOBYTE(is_ycc) = 0;
      }

      v32 = IOSurfaceGetWidth(buffer);
      v33 = (v32 / *&v66.c);
      v34 = IOSurfaceGetHeight(buffer);
      v35 = v33 * *&v66.tx;
      v36 = (v34 / *&v66.d);
      v64 = v35;
      v65 = v36 * *&v66.ty;
      if (v35 <= v65)
      {
        v35 = v36 * *&v66.ty;
      }

      if (*(*this + 448))(this) >= v35 && (is_ycc)
      {
        CFAbsoluteTimeGetCurrent();
        v68.a = 1.0 / *&v66.c;
        v68.b = 0.0;
        v68.c = 0.0;
        v68.d = 1.0 / *&v66.d;
        v68.tx = 0.0;
        v68.ty = 0.0;
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        v76 = CGRectApplyAffineTransform(v75, &v68);
        v67 = v76;
        *buf = LODWORD(v66.a);
        v63 = 0;
        v68 = v66;
        v57 = 0x3FF0000000000000uLL;
        v58 = 0;
        v59 = 0x3FF0000000000000;
        v60 = 0;
        v61 = 0;
        v37 = CI::prepare_initial_graph(this, "render_to_surface", a2, a5, 0, v17, &v68, &v57, v76.origin.x, v76.origin.y, v76.size.width, v76.size.height, 0, buf);
        if (v37)
        {
          v39 = v37;
          v40 = v38;
          v41 = (*(*a5 + 64))(a5);
          (*(*this + 368))(this, buffer, v41, &v64, buf);
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 0x40000000;
          v56[2] = ___ZN2CI23image_render_to_surfaceEPNS_7ContextEPNS_5ImageE6CGRectP11__IOSurfacePKNS_17RenderDestinationE_block_invoke;
          v56[3] = &__block_descriptor_tmp_38;
          v56[4] = this;
          v56[5] = a5;
          CI::tile_node_graph(this, a5, "render_to_surface", v39, v40, &v67, v17, &v66, v56);
        }

        operator new();
      }

      if (IOSurfaceGetPlaneCount(buffer) < 2)
      {
        IOSurfaceLock(buffer, 0, 0);
        v84.origin.x = (*(*a2 + 88))(a2);
        v84.origin.y = v42;
        v84.size.width = v43;
        v84.size.height = v44;
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v78 = CGRectIntersection(v77, v84);
        v68.a = 1.0;
        v68.b = 0.0;
        v68.c = 0.0;
        v68.d = 1.0;
        v68.tx = 0.0;
        v68.ty = 0.0;
        v79 = CGRectApplyAffineTransform(v78, &v68);
        v45 = v79.origin.x;
        v46 = v79.origin.y;
        v47 = v79.size.width;
        v48 = v79.size.height;
        IsNull = CGRectIsNull(v79);
        if (IsNull)
        {
          v51 = 0;
          v52 = 0;
          v58 = 0;
          v57 = IRectNull;
        }

        else
        {
          v80.origin.x = v45;
          v80.origin.y = v46;
          v80.size.width = v47;
          v80.size.height = v48;
          IsNull = CGRectIsInfinite(v80);
          if (IsNull)
          {
            v57 = IRectInfinite;
            v51 = 0xFFFFFFFFLL;
            v58 = 0xFFFFFFFFLL;
            v52 = 0xFFFFFFFFLL;
          }

          else
          {
            v81.origin.x = v45;
            v81.origin.y = v46;
            v81.size.width = v47;
            v81.size.height = v48;
            v82 = CGRectInset(v81, 0.000001, 0.000001);
            v83 = CGRectIntegral(v82);
            v52 = v83.size.width;
            v51 = v83.size.height;
            LODWORD(v57) = v83.origin.x;
            DWORD1(v57) = v83.origin.y;
            *(&v57 + 1) = v83.size.width;
            v58 = v83.size.height;
          }
        }

        v53 = ci_signpost_log_render(IsNull, v50);
        v54 = (*(*this + 280))(this) << 32;
        if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          LODWORD(v68.a) = 134218240;
          *(&v68.a + 4) = v52;
          WORD2(v68.b) = 2048;
          *(&v68.b + 6) = v51;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v54, "new_bitmap", "[%zu %zu]", &v68, 0x16u);
        }

        v55 = (*(*this + 280))(this);
        TimerBase::TimerBase(&v68, v55, 0, "new_bitmap", 0);
        operator new();
      }

      operator new();
    }

    if (v15 >= 0x29)
    {
      LODWORD(v68.a) = bswap32(v15);
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t CI::image_render_to_bitmap(CI *this, CI::Context *a2, CI::Image *a3, CGRect a4, CGColorSpace *a5, CI::Bitmap *a6, const CI::RenderDestination *a7)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v61 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  v47 = *(a5 + 10);
  v48 = *(a5 + 11);
  v60.a = 1.0;
  v60.b = 0.0;
  v60.c = 0.0;
  v60.d = 1.0;
  v60.tx = -x;
  v60.ty = -y;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v63 = CGRectApplyAffineTransform(v62, &v60);
  v45 = v63.origin.y;
  v46 = v63.origin.x;
  v49 = v63.size.width;
  v51 = v63.size.height;
  v76.origin.x = (*(*a2 + 88))(a2);
  v76.origin.y = v16;
  v76.size.width = v17;
  v76.size.height = v18;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v65 = CGRectIntersection(v64, v76);
  v60.a = 1.0;
  v60.b = 0.0;
  v60.c = 0.0;
  v60.d = 1.0;
  v60.tx = -x;
  v60.ty = -y;
  v66 = CGRectApplyAffineTransform(v65, &v60);
  v19 = v66.origin.x;
  v20 = v66.origin.y;
  v21 = v66.size.width;
  v22 = v66.size.height;
  if (!CGRectIsEmpty(v66))
  {
    v67.origin.x = v19;
    v67.origin.y = v20;
    v67.size.width = v21;
    v67.size.height = v22;
    if (!CGRectIsNull(v67))
    {
      v68.origin.x = v19;
      v68.origin.y = v20;
      v68.size.width = v21;
      v68.size.height = v22;
      if (!CGRectIsInfinite(v68))
      {
        v23 = v20 - v45;
        v24 = v51 + v45 - (v20 + v22);
        v25 = v19 - v46;
        v26 = v49 + v46 - (v19 + v21);
        v27 = vcvtps_s32_f32(v23);
        v28 = vcvtps_s32_f32(v24);
        v29 = vcvtps_s32_f32(v25);
        v30 = vcvtps_s32_f32(v26);
        CI::clearBitmap(a5, v49, v27, v46, v45);
        CI::clearBitmap(a5, v29, (v51 - (v28 + v27)), v46, v27);
        CI::clearBitmap(a5, v30, (v51 - (v28 + v27)), (v49 - v30), v27);
        CI::clearBitmap(a5, v49, v28, v46, (v51 - v28));
      }
    }
  }

  v31 = *(a5 + 26);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  if (CGRectIsNull(v69))
  {
    v32 = 0;
    v33 = 0;
    v34 = 0x7FFFFFFF;
    v35 = 0x7FFFFFFF;
  }

  else
  {
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    if (CGRectIsInfinite(v70))
    {
      v34 = -2147483647;
      v32 = 0xFFFFFFFFLL;
      v33 = 0xFFFFFFFFLL;
      v35 = -2147483647;
    }

    else
    {
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      v72 = CGRectInset(v71, 0.000001, 0.000001);
      v73 = CGRectIntegral(v72);
      v35 = v73.origin.x;
      v34 = v73.origin.y;
      v33 = v73.size.width;
      v32 = v73.size.height;
    }
  }

  *&v60.a = __PAIR64__(v34, v35);
  *&v60.b = v33;
  *&v60.c = v32;
  CI::Context::swizzler_for_output(this, v31, &v60, 0, &v59);
  c = v59.c;
  LODWORD(v58) = LODWORD(v59.a);
  WORD2(v58) = 0;
  v37 = 1.0 / *&v59.c;
  v60.a = v37;
  v60.b = 0.0;
  v60.c = 0.0;
  v60.tx = 0.0;
  v60.ty = 0.0;
  v60.d = 1.0;
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  v75 = CGRectApplyAffineTransform(v74, &v60);
  v38 = v75.origin.x;
  v39 = v75.origin.y;
  v40 = ceil(v75.size.width);
  if (*&c > 1uLL)
  {
    v75.size.width = v40;
  }

  v60 = v59;
  v57[0] = 0x3FF0000000000000;
  v57[1] = 0;
  v57[2] = 0;
  v57[3] = 0x3FF0000000000000;
  v57[4] = 0;
  v57[5] = 0;
  v50 = v75.size.width;
  v52 = v75.size.height;
  v41 = CI::prepare_initial_graph(this, "get_bitmap", a2, a6, 0, v31, &v60, v57, v38, v75.origin.y, v75.size.width, v75.size.height, 1u, &v58);
  if (v41)
  {
    v43.f64[0] = v50;
    v43.f64[1] = v52;
    v60.a = v38;
    v60.b = v39;
    *&v60.c = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(v43)));
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = *"";
    v53[2] = ___ZN2CI22image_render_to_bitmapEPNS_7ContextEPNS_5ImageE6CGRectP12CGColorSpacePNS_6BitmapEPKNS_17RenderDestinationE_block_invoke;
    v53[3] = &__block_descriptor_tmp_39_2;
    v53[4] = this;
    v53[5] = a5;
    *&v53[6] = v37;
    v53[7] = 0;
    v53[8] = 0;
    v53[9] = 0x3FF0000000000000;
    v53[10] = 0;
    v53[11] = 0;
    v53[12] = 0x3FF0000000000000;
    v53[13] = 0;
    v53[14] = 0;
    v53[15] = 0x3FF0000000000000;
    *&v53[16] = -x;
    *&v53[17] = -y;
    *&v53[18] = x;
    *&v53[19] = y;
    *&v53[20] = v47;
    *&v53[21] = v48;
    v54 = v59;
    v55 = a6;
    v56 = v58;
    v53[22] = a3;
    CI::tile_node_graph(this, a6, "get_bitmap", v41, v42, &v60, v31, &v59, v53);
  }

  return 0;
}

void ___ZN2CI23image_render_to_surfaceEPNS_7ContextEPNS_5ImageE6CGRectP11__IOSurfacePKNS_17RenderDestinationE_block_invoke(uint64_t a1, CI::ProgramNode *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = *MEMORY[0x1E69E9840];
  v6.origin.x = a3;
  v6.origin.y = a4;
  v6.size.width = a5;
  v6.size.height = a6;
  CI::Context::render(*(a1 + 32), a2, &v6);
}

void CI::clearBitmap(CI *this, const CI::Bitmap *a2, uint64_t a3, int a4, int a5)
{
  if (((a5 | a4) & 0x80000000) == 0 && a2 + a4 <= *(this + 10) && a3 * a2 && (a3 + a5) <= *(this + 11) && (CI::format_is_ycc(*(this + 26)) & 1) == 0)
  {
    v11 = *(this + 9);
    v24 = *(this + 12);
    v12 = CI::format_bytes_per_pixel(*(this + 26));
    v13 = *(this + 11);
    v14 = *(this + 12);
    v15 = *(this + 9);
    v23 = *(this + 10);
    v16 = CI::format_bytes_per_pixel(*(this + 26));
    if (a3)
    {
      v17 = v11;
      v18 = 0;
      v19 = v17 + v24 * a5 + v12 * a4;
      v20 = v15 + (v13 - 1) * v14 + v23 * v16 + 1;
      do
      {
        v21 = (v19 + *(this + 12) * v18);
        v22 = CI::format_bytes_per_pixel(*(this + 26)) * a2;
        if (v21 + v22 >= v20)
        {
          break;
        }

        bzero(v21, v22);
        ++v18;
      }

      while (a3 != v18);
    }
  }
}

void ___ZN2CI22image_render_to_bitmapEPNS_7ContextEPNS_5ImageE6CGRectP12CGColorSpacePNS_6BitmapEPKNS_17RenderDestinationE_block_invoke(uint64_t a1, CI::ProgramNode *this, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v69 = *MEMORY[0x1E69E9840];
  v39 = 0x3FF0000000000000uLL;
  v40 = 0;
  v41 = 0x3FF0000000000000;
  v42 = -a3;
  v43 = -a4;
  CI::ProgramNode::addDestinationTransform(this, *(a1 + 32), &v39);
  v12 = *(a1 + 40);
  v13 = *(v12 + 96);
  v14 = *(v12 + 72);
  v15 = CI::format_bits_per_pixel(*(v12 + 104));
  CI::Affine::inverse(&v44, (a1 + 48));
  v45 = v44;
  v70.origin.x = a3;
  v70.origin.y = a4;
  v70.size.width = a5;
  v70.size.height = a6;
  v71 = CGRectApplyAffineTransform(v70, &v45);
  y = v71.origin.y;
  x = v71.origin.x;
  height = v71.size.height;
  rect = v71.size.width;
  *&v71.size.width = v71.size.width;
  v71.size.width = ceilf(*&v71.size.width);
  v17 = *(a1 + 104);
  v18 = v71.size.height;
  v71.size.height = ceilf(v18);
  v20 = *(a1 + 112);
  v19 = *(a1 + 120);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  v45.a = *(a1 + 96);
  a = v45.a;
  v45.b = v17;
  v45.c = v20;
  v45.d = v19;
  v45.tx = v21;
  v45.ty = v22;
  v72 = CGRectApplyAffineTransform(v71, &v45);
  v23 = v72.origin.x;
  v24 = v72.origin.y;
  *&v72.origin.x = v72.size.width;
  v25 = vcvtps_u32_f32(*&v72.origin.x);
  *&v72.origin.x = v72.size.height;
  v26 = vcvtps_u32_f32(*&v72.origin.x);
  v73 = *(a1 + 144);
  v45.a = a;
  v45.b = v17;
  v45.c = v20;
  v45.d = v19;
  v45.tx = v21;
  v45.ty = v22;
  v74 = CGRectApplyAffineTransform(v73, &v45);
  CI::Bitmap::Bitmap(&v45, v14 + v13 * (v24 - v74.origin.y) + (((v23 - v74.origin.x) * v15 + 7) >> 3), v25, v26, v13, *(*(a1 + 40) + 104), *(a1 + 176));
  *&v45.a = &unk_1F10333F0;
  *&v45.c = &unk_1F1033428;
  v27 = vdupq_n_s32(0x3B808081u);
  v49 = v27.i64[0];
  v50 = v27;
  v51 = v27;
  v55 = v27;
  v56 = v27;
  v53 = v27;
  v54 = v27;
  v52 = v27;
  v28 = vdupq_n_s32(0x37800080u);
  v57 = v28.i64[0];
  v58 = v28;
  v59 = v28;
  v63 = v28;
  v64 = v28;
  v61 = v28;
  v62 = v28;
  v60 = v28;
  v29 = vdupq_n_s32(0x3A802008u);
  v65 = v29.i64[0];
  v67 = v29;
  v68 = v29;
  v66 = v29;
  *v29.i64 = (v46 / *(a1 + 200));
  v30 = (v47 / *(a1 + 208));
  v48 = 0;
  v37 = *v29.i64;
  v38 = v30;
  (*(**(a1 + 32) + 360))();
  v75.origin.y = y;
  v75.origin.x = x;
  v75.size.height = height;
  v44.a = 1.0;
  v44.b = 0.0;
  v44.c = 0.0;
  v44.d = -1.0;
  v44.tx = -x;
  v44.ty = height + y;
  v75.size.width = rect;
  v76 = CGRectApplyAffineTransform(v75, &v44);
  v31 = v76.origin.y;
  *&v76.origin.y = *(a1 + 64);
  *&v44.a = *(a1 + 48);
  *&v44.c = *&v76.origin.y;
  *&v44.tx = *(a1 + 80);
  v76.origin.y = v31;
  v36 = CGRectApplyAffineTransform(v76, &v44);
  CI::Context::render(*(a1 + 32), this, &v36);
}

uint64_t *___ZN2CIL26traverse_gathering_digestsEPKNS_7ContextEPNS_5ImageERNSt3__13mapINS_10ImageIndexENS_30ImageDigestForRenderGraphCacheENS5_4lessIS7_EENS5_9allocatorINS5_4pairIKS7_S8_EEEEEE_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  XXH64_reset(v26, 0);
  LOBYTE(v25[0]) = (*(*a2 + 16))(a2);
  XXH64_update(v26, v25, 1uLL);
  v25[0] = COERCE__DWORD_((*(*a2 + 88))(a2));
  v25[1] = v6;
  v25[2] = v7;
  v25[3] = v8;
  XXH64_update(v26, v25, 0x20uLL);
  LODWORD(v25[0]) = (*(*a2 + 40))(a2);
  XXH64_update(v26, v25, 4uLL);
  LODWORD(v25[0]) = a3;
  XXH64_update(v26, v25, 4uLL);
  (*(*a2 + 104))(a2, v26, 1);
  if ((*(*a2 + 16))(a2) == 21 && *(a1 + 48) == 1 && CVPixelBufferGetIOSurface(*(a2 + 128)))
  {
    v25[0] = *(*(a1 + 32) + 152);
    XXH64_update(v26, v25, 8uLL);
  }

  v9 = (*(*a2 + 40))(a2);
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      v12 = *(a1 + 40);
      v13 = (*(*a2 + 48))(a2, v11);
      v16 = *(v12 + 8);
      v15 = v12 + 8;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_15;
      }

      v17 = *(v13 + 116);
      v18 = v15;
      do
      {
        v19 = *(v14 + 32);
        v20 = v19 >= v17;
        v21 = v19 < v17;
        if (v20)
        {
          v18 = v14;
        }

        v14 = *(v14 + 8 * v21);
      }

      while (v14);
      if (v18 == v15 || v17 < *(v18 + 32))
      {
LABEL_15:
        v18 = v15;
      }

      v25[0] = *(v18 + 40);
      XXH64_update(v26, v25, 8uLL);
      v11 = (v11 + 1);
    }

    while (v11 != v10);
  }

  v22 = XXH64_digest(v26);
  v23 = *(a1 + 40);
  v25[0] = (a2 + 116);
  result = std::__tree<std::__value_type<CI::NodeIndex,unsigned long>,std::__map_value_compare<CI::NodeIndex,std::__value_type<CI::NodeIndex,unsigned long>,std::less<CI::NodeIndex>,true>,std::allocator<std::__value_type<CI::NodeIndex,unsigned long>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(v23, (a2 + 116), &std::piecewise_construct, v25);
  result[5] = v22;
  return result;
}

uint64_t ___ZN2CIL28traverse_restoring_resourcesERKNSt3__13mapINS_10ImageIndexENS_30ImageDigestForRenderGraphCacheENS0_4lessIS2_EENS0_9allocatorINS0_4pairIKS2_S3_EEEEEERKNS_14ImageToNodeMapEPNS_5ImageE_block_invoke(uint64_t a1, _DWORD *a2)
{
  v4 = (*(*a2 + 16))(a2);
  result = CI::is_raster_TypeImage(v4);
  if (result)
  {
    v6 = *(a1 + 32);
    v9 = *(v6 + 8);
    v7 = v6 + 8;
    v8 = v9;
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = a2[29];
    v11 = v7;
    do
    {
      v12 = *(v8 + 32);
      v13 = v12 >= v10;
      v14 = v12 < v10;
      if (v13)
      {
        v11 = v8;
      }

      v8 = *(v8 + 8 * v14);
    }

    while (v8);
    if (v11 == v7 || v10 < *(v11 + 32))
    {
LABEL_10:
      v11 = v7;
    }

    v15 = *(a1 + 40);
    v18 = *(v15 + 32);
    v16 = v15 + 32;
    v17 = v18;
    if (!v18)
    {
      return result;
    }

    v19 = *(v11 + 40);
    v20 = v16;
    do
    {
      v21 = *(v17 + 32);
      v13 = v21 >= v19;
      v22 = v21 < v19;
      if (v13)
      {
        v20 = v17;
      }

      v17 = *(v17 + 8 * v22);
    }

    while (v17);
    if (v20 == v16)
    {
      return result;
    }

    if (*(v20 + 32) > v19)
    {
      return result;
    }

    v23 = *(v20 + 40);
    if (!v23)
    {
      return result;
    }

    while (1)
    {
      v24 = (*(*v23 + 40))(v23);
      v25 = *v23;
      if (!v24)
      {
        break;
      }

      result = (*(v25 + 48))(v23, 0);
      v23 = result;
      if (!result)
      {
        return result;
      }
    }

    v26 = (*(v25 + 16))(v23);
    if (CI::is_image_type(v26))
    {
      (*(*a2 + 192))(a2, v23);
    }
  }

  result = (*(*a2 + 16))(a2);
  if (result == 18)
  {
    v27 = *(a1 + 32);
    v30 = *(v27 + 8);
    v28 = v27 + 8;
    v29 = v30;
    if (!v30)
    {
      goto LABEL_34;
    }

    v31 = a2[29];
    v32 = v28;
    do
    {
      v33 = *(v29 + 32);
      v13 = v33 >= v31;
      v34 = v33 < v31;
      if (v13)
      {
        v32 = v29;
      }

      v29 = *(v29 + 8 * v34);
    }

    while (v29);
    if (v32 == v28 || v31 < *(v32 + 32))
    {
LABEL_34:
      v32 = v28;
    }

    v35 = *(a1 + 40);
    v38 = *(v35 + 32);
    v36 = v35 + 32;
    v37 = v38;
    if (v38)
    {
      v39 = *(v32 + 40);
      v40 = v36;
      do
      {
        v41 = *(v37 + 32);
        v13 = v41 >= v39;
        v42 = v41 < v39;
        if (v13)
        {
          v40 = v37;
        }

        v37 = *(v37 + 8 * v42);
      }

      while (v37);
      if (v40 != v36 && *(v40 + 32) <= v39)
      {
        v43 = *(v40 + 40);
        if (v43)
        {
          if ((*(*v43 + 16))(v43) == 48)
          {
            v43 = (*(*v43 + 48))(v43, 0);
          }

          result = (*(*v43 + 16))(v43);
          if (result == 47)
          {
LABEL_89:
            v76 = *(*a2 + 192);

            return v76(a2, v43);
          }
        }
      }
    }
  }

  else
  {
    result = (*(*a2 + 16))(a2);
    if (result == 13)
    {
      v44 = *(a1 + 32);
      v47 = *(v44 + 8);
      v45 = v44 + 8;
      v46 = v47;
      if (!v47)
      {
        goto LABEL_55;
      }

      v48 = a2[29];
      v49 = v45;
      do
      {
        v50 = *(v46 + 32);
        v13 = v50 >= v48;
        v51 = v50 < v48;
        if (v13)
        {
          v49 = v46;
        }

        v46 = *(v46 + 8 * v51);
      }

      while (v46);
      if (v49 == v45 || v48 < *(v49 + 32))
      {
LABEL_55:
        v49 = v45;
      }

      v52 = *(a1 + 40);
      v55 = *(v52 + 32);
      v53 = v52 + 32;
      v54 = v55;
      if (v55)
      {
        v56 = *(v49 + 40);
        v57 = v53;
        do
        {
          v58 = *(v54 + 32);
          v13 = v58 >= v56;
          v59 = v58 < v56;
          if (v13)
          {
            v57 = v54;
          }

          v54 = *(v54 + 8 * v59);
        }

        while (v54);
        if (v57 != v53 && *(v57 + 32) <= v56)
        {
          v43 = *(v57 + 40);
          if (v43)
          {
            if ((*(*v43 + 16))(v43) == 55)
            {
              v43 = (*(*v43 + 48))(v43, 0);
            }

            result = (*(*v43 + 16))(v43);
            if (result == 59)
            {
              goto LABEL_89;
            }
          }
        }
      }
    }

    else
    {
      result = (*(*a2 + 16))(a2);
      if (result == 12)
      {
        v60 = *(a1 + 32);
        v63 = *(v60 + 8);
        v61 = v60 + 8;
        v62 = v63;
        if (!v63)
        {
          goto LABEL_76;
        }

        v64 = a2[29];
        v65 = v61;
        do
        {
          v66 = *(v62 + 32);
          v13 = v66 >= v64;
          v67 = v66 < v64;
          if (v13)
          {
            v65 = v62;
          }

          v62 = *(v62 + 8 * v67);
        }

        while (v62);
        if (v65 == v61 || v64 < *(v65 + 32))
        {
LABEL_76:
          v65 = v61;
        }

        v68 = *(a1 + 40);
        v71 = *(v68 + 32);
        v69 = v68 + 32;
        v70 = v71;
        if (v71)
        {
          v72 = *(v65 + 40);
          v73 = v69;
          do
          {
            v74 = *(v70 + 32);
            v13 = v74 >= v72;
            v75 = v74 < v72;
            if (v13)
            {
              v73 = v70;
            }

            v70 = *(v70 + 8 * v75);
          }

          while (v70);
          if (v73 != v69 && *(v73 + 32) <= v72)
          {
            v43 = *(v73 + 40);
            if (v43)
            {
              if ((*(*v43 + 16))(v43) == 45)
              {
                v43 = (*(*v43 + 48))(v43, 0);
              }

              result = (*(*v43 + 16))(v43);
              if (result == 58)
              {
                goto LABEL_89;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t ___ZN2CIL37traverse_node_graph_gathering_digestsEPKNS_7ContextEPNS_4NodeE_block_invoke(uint64_t a1, void *a2)
{
  XXH64_reset(v13, 0);
  LOBYTE(__src[0]) = (*(*a2 + 16))(a2);
  XXH64_update(v13, __src, 1uLL);
  __src[0] = (*(*a2 + 168))(a2);
  __src[1] = v4;
  __src[2] = v5;
  __src[3] = v6;
  XXH64_update(v13, __src, 0x20uLL);
  (*(*a2 + 392))(a2, v13, *(*(a1 + 32) + 152));
  v7 = (*(*a2 + 40))(a2);
  if (v7 >= 1)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = *(*(*a2 + 48))(a2, v9);
      __src[0] = (*(v10 + 400))();
      XXH64_update(v13, __src, 8uLL);
      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }

  result = XXH64_digest(v13);
  a2[3] = result;
  return result;
}

uint64_t ___ZN2CIL20dump_optimized_graphEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *a2)
{
  if (*(a1 + 32))
  {
    fprintf(a2, "[%s] ", *(a1 + 40));
  }

  if (*(*(a1 + 48) + 344))
  {
    fprintf(a2, "optimized graph prepare %s ");
  }

  else
  {
    fprintf(a2, "optimized graph %s ");
  }

  v4 = (*(**(a1 + 48) + 272))() - 1;
  v5 = "";
  if (v4 <= 2)
  {
    v5 = off_1E75C8040[v4];
  }

  v6 = (*(**(a1 + 48) + 312))(*(a1 + 48));
  v7 = (*(**(a1 + 48) + 280))();
  v8 = *(a1 + 48);
  v10 = *(v8 + 236);
  v9 = (v8 + 236);
  if (v10)
  {
    v11 = ":";
  }

  else
  {
    v11 = "";
  }

  fprintf(a2, "(%s%s context %d%s%s frame %lu) ", v5, v6, v7, v11, v9, *(v9 - 84));
  v12 = *(a1 + 88);
  if (!v12)
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      v12 = *(v13 + 32);
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = CI::name_for_format(v12);
  fprintf(a2, "format=%s roi=", v14);
  CI::fprintf(a2, v15, **(a1 + 72));
  fwrite(" = \n", 4uLL, 1uLL, a2);
  v16 = CI_TEMP_DIR();
  v17 = *(a1 + 80);
  v19 = CI_PRINT_TREE_graphviz(v16, v18);
  fprintf(a2, "  %s/%s.%s\n", v16, v17, v19);

  return fputc(10, a2);
}

uint64_t ___ZN2CIL19format_for_graphvizEv_block_invoke(uint64_t a1, uint64_t a2)
{
  result = CI_PRINT_TREE_graphviz(a1, a2);
  if (result)
  {
    v3 = result;
    result = strcmp(result, "pdf");
    if (result)
    {
      result = strcmp(v3, "png");
      if (result)
      {
        result = strcmp(v3, "dot");
        if (result)
        {
          return result;
        }

        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    CI::format_for_graphviz(void)::fmt = v4;
  }

  return result;
}

uint64_t ___ZN2CIL21print_optimized_graphEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      fputc(91, __stream);
      CI::fprintf(__stream, v5, v6);
      fwrite("] ", 2uLL, 1uLL, __stream);
    }
  }

  fwrite("optimized graph ", 0x10uLL, 1uLL, __stream);
  if (*(*(a1 + 40) + 344))
  {
    fwrite("prepare ", 8uLL, 1uLL, __stream);
  }

  fprintf(__stream, "%s ", *(a1 + 48));
  v7 = *(a1 + 32);
  if (v7)
  {
    if ((*(*v7 + 40))(v7))
    {
      v8 = (*(**(a1 + 32) + 40))(*(a1 + 32));
      fprintf(__stream, "%p ", v8);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = (*(*v9 + 48))(v9);
      v11 = (*(**(a1 + 32) + 56))(*(a1 + 32));
      fprintf(__stream, "%ldx%ld ", v10, v11);
    }
  }

  v12 = (*(**(a1 + 40) + 272))(*(a1 + 40)) - 1;
  v13 = "";
  if (v12 <= 2)
  {
    v13 = off_1E75C8040[v12];
  }

  v14 = (*(**(a1 + 40) + 312))(*(a1 + 40));
  v15 = (*(**(a1 + 40) + 280))();
  v16 = *(a1 + 40);
  v18 = *(v16 + 236);
  v17 = (v16 + 236);
  if (v18)
  {
    v19 = ":";
  }

  else
  {
    v19 = "";
  }

  fprintf(__stream, "(%s%s context %d%s%s frame %lu) ", v13, v14, v15, v19, v17, *(v17 - 84));
  v20 = *(a1 + 72);
  if (!v20)
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v20 = *(v21 + 32);
    }

    else
    {
      v20 = 0;
    }
  }

  v22 = CI::name_for_format(v20);
  fprintf(__stream, "format=%s roi=", v22);
  CI::fprintf(__stream, v23, **(a1 + 56));
  fwrite(" = \n", 4uLL, 1uLL, __stream);
  v24 = *(a1 + 64);
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  CI::Node::print_graph(v24, __stream, v26);
  std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::~__hash_table(v26);
  return fputc(10, __stream);
}

uint64_t ___ZN2CIL18dump_initial_graphEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_5ImageERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *__stream)
{
  if (*(a1 + 32))
  {
    fprintf(__stream, "[%s] ", *(a1 + 40));
  }

  if (*(*(a1 + 48) + 344))
  {
    v4 = "initial graph prepare ";
    v5 = 22;
  }

  else
  {
    v4 = "initial graph ";
    v5 = 14;
  }

  fwrite(v4, v5, 1uLL, __stream);
  fprintf(__stream, "%s ", *(a1 + 56));
  v6 = *(a1 + 64);
  if (v6)
  {
    if ((*(*v6 + 40))(v6))
    {
      v7 = (*(**(a1 + 64) + 40))(*(a1 + 64));
      fprintf(__stream, "%p ", v7);
    }

    v8 = *(a1 + 64);
    if (v8)
    {
      v9 = (*(*v8 + 48))(v8);
      v10 = (*(**(a1 + 64) + 56))(*(a1 + 64));
      fprintf(__stream, "%ldx%ld ", v9, v10);
    }
  }

  v11 = (*(**(a1 + 48) + 272))(*(a1 + 48)) - 1;
  v12 = "";
  if (v11 <= 2)
  {
    v12 = off_1E75C8040[v11];
  }

  v13 = (*(**(a1 + 48) + 312))(*(a1 + 48));
  v14 = (*(**(a1 + 48) + 280))();
  v15 = *(a1 + 48);
  v17 = *(v15 + 236);
  v16 = (v15 + 236);
  if (v17)
  {
    v18 = ":";
  }

  else
  {
    v18 = "";
  }

  fprintf(__stream, "(%s%s context %d%s%s frame %lu) ", v12, v13, v14, v18, v16, *(v16 - 84));
  v19 = *(a1 + 88);
  if (!v19)
  {
    v20 = *(a1 + 64);
    if (v20)
    {
      v19 = *(v20 + 32);
    }

    else
    {
      v19 = 0;
    }
  }

  v21 = CI::name_for_format(v19);
  fprintf(__stream, "format=%s roi=", v21);
  CI::fprintf(__stream, v22, **(a1 + 72));
  fwrite(" = \n", 4uLL, 1uLL, __stream);
  v23 = CI_TEMP_DIR();
  v24 = *(a1 + 80);
  v26 = CI_PRINT_TREE_graphviz(v23, v25);
  fprintf(__stream, "  %s/%s.%s\n", v23, v24, v26);

  return fputc(10, __stream);
}

uint64_t ___ZN2CIL19print_initial_graphEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_5ImageERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      fputc(91, __stream);
      CI::fprintf(__stream, v5, v6);
      fwrite("] ", 2uLL, 1uLL, __stream);
    }
  }

  fwrite("initial graph ", 0xEuLL, 1uLL, __stream);
  if (*(*(a1 + 40) + 344))
  {
    fwrite("prepare ", 8uLL, 1uLL, __stream);
  }

  fprintf(__stream, "%s ", *(a1 + 48));
  v7 = *(a1 + 32);
  if (v7)
  {
    if ((*(*v7 + 40))(v7))
    {
      v8 = (*(**(a1 + 32) + 40))(*(a1 + 32));
      fprintf(__stream, "%p ", v8);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = (*(*v9 + 48))(v9);
      v11 = (*(**(a1 + 32) + 56))(*(a1 + 32));
      fprintf(__stream, "%ldx%ld ", v10, v11);
    }
  }

  v12 = (*(**(a1 + 40) + 272))(*(a1 + 40)) - 1;
  v13 = "";
  if (v12 <= 2)
  {
    v13 = off_1E75C8040[v12];
  }

  v14 = (*(**(a1 + 40) + 312))(*(a1 + 40));
  v15 = (*(**(a1 + 40) + 280))();
  v16 = *(a1 + 40);
  v18 = *(v16 + 236);
  v17 = (v16 + 236);
  if (v18)
  {
    v19 = ":";
  }

  else
  {
    v19 = "";
  }

  fprintf(__stream, "(%s%s context %d%s%s frame %lu) ", v13, v14, v15, v19, v17, *(v17 - 84));
  v20 = *(a1 + 72);
  if (!v20)
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v20 = *(v21 + 32);
    }

    else
    {
      v20 = 0;
    }
  }

  v22 = CI::name_for_format(v20);
  fprintf(__stream, "format=%s ", v22);
  v23 = *(*(a1 + 40) + 24);
  if (v23)
  {
    fwrite("workingspace=", 0xDuLL, 1uLL, __stream);
    CI::fprintf_cs(__stream, v23, 1);
    fputc(32, __stream);
  }

  fwrite("roi=", 4uLL, 1uLL, __stream);
  CI::fprintf(__stream, v24, **(a1 + 56));
  fwrite(" = \n", 4uLL, 1uLL, __stream);
  CI::Image::print_graph(*(a1 + 64), __stream);

  return fputc(10, __stream);
}

void CI::OptimizedGraph::~OptimizedGraph(CI::OptimizedGraph *this)
{
  *this = &unk_1F103CBA0;
  *(this + 6) = &unk_1F103CD58;
  CI::ImageToNodeMap::~ImageToNodeMap(this + 7);
  *(this + 6) = &unk_1F103CD80;
  atomic_fetch_add(&dword_1ED7C47D8[53], 0xFFFFFFFF);

  CI::NodeWithChildren::~NodeWithChildren(this);
}

{
  *this = &unk_1F103CBA0;
  *(this + 6) = &unk_1F103CD58;
  CI::ImageToNodeMap::~ImageToNodeMap(this + 7);
  *(this + 6) = &unk_1F103CD80;
  atomic_fetch_add(&dword_1ED7C47D8[53], 0xFFFFFFFF);
  CI::NodeWithChildren::~NodeWithChildren(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::OptimizedGraph::~OptimizedGraph(CI::OptimizedGraph *this)
{
  v2 = (this - 48);
  *(this - 6) = &unk_1F103CBA0;
  *this = &unk_1F103CD58;
  CI::ImageToNodeMap::~ImageToNodeMap(this + 1);
  *this = &unk_1F103CD80;
  atomic_fetch_add(&dword_1ED7C47D8[53], 0xFFFFFFFF);

  CI::NodeWithChildren::~NodeWithChildren(v2);
}

{
  v2 = (this - 48);
  *(this - 6) = &unk_1F103CBA0;
  *this = &unk_1F103CD58;
  CI::ImageToNodeMap::~ImageToNodeMap(this + 1);
  *this = &unk_1F103CD80;
  atomic_fetch_add(&dword_1ED7C47D8[53], 0xFFFFFFFF);
  CI::NodeWithChildren::~NodeWithChildren(v2);

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)62>::~InstanceCounted(void *result)
{
  *result = &unk_1F103CD80;
  atomic_fetch_add(&dword_1ED7C47D8[53], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)62>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103CD80;
  atomic_fetch_add(&dword_1ED7C47D8[53], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::ImageToNodeMap::~ImageToNodeMap(CI::ImageToNodeMap **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      v4 = v3[5];
      if (v4)
      {
        CI::Object::unref(v4);
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  v8 = this[3];
  if (v8 != (this + 4))
  {
    do
    {
      v9 = *(v8 + 5);
      if (v9)
      {
        CI::Object::unref(v9);
      }

      v10 = *(v8 + 1);
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
          v11 = *(v8 + 2);
          v7 = *v11 == v8;
          v8 = v11;
        }

        while (!v7);
      }

      v8 = v11;
    }

    while (v11 != this + 4);
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 3), this[4]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this, this[1]);
}

uint64_t ___ZN2CIL22prune_input_sRGB_nodesEPKNS_7ContextEPNS_4NodeE_block_invoke(uint64_t a1, CI::Object *a2)
{
  v4 = (*(*a2 + 416))(a2);
  if (v4 && (*(**(a1 + 56) + 592))(*(a1 + 56), *v4, 1))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);

    return CI::SerialObjectPtrArray::append(v5, a2);
  }

  v7 = (*(*a2 + 16))(a2) == 44 && *(a2 + 14) == -1;
  result = (*(*a2 + 40))(a2);
  if (result >= 1)
  {
    v8 = result;
    v9 = 0;
    do
    {
      v10 = (*(*a2 + 48))(a2, v9);
      result = (*(*v10 + 16))(v10);
      if (result == 55 && (v11 = *(*(*(a1 + 32) + 8) + 24), result = (*(*v10 + 48))(v10, 0), v12 = *v11, v12 >= 1))
      {
        v13 = 0;
        v14 = v11 + 6;
        while (1)
        {
          v15 = v14;
          if (v13 >= 0xA)
          {
            v15 = (*(v11 + 2) + 8 * v13 - 80);
          }

          if (*v15 == result)
          {
            break;
          }

          ++v13;
          v14 += 2;
          if (v12 == v13)
          {
            goto LABEL_18;
          }
        }

        result = (*(*v10 + 424))(v10);
        v16 = 0xC02u >> result;
        if (result > 0xB)
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
LABEL_18:
        LOBYTE(v16) = 0;
      }

      v17 = *(*(*(a1 + 32) + 8) + 24);
      v18 = *v17;
      if (v18 < 1)
      {
LABEL_25:
        if ((v16 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v19 = 0;
        v20 = v17 + 6;
        while (1)
        {
          v21 = v20;
          if (v19 >= 0xA)
          {
            v21 = (*(v17 + 2) + 8 * v19 - 80);
          }

          if (*v21 == v10)
          {
            break;
          }

          ++v19;
          v20 += 2;
          if (v18 == v19)
          {
            goto LABEL_25;
          }
        }
      }

      if (v7)
      {
        result = *(*(*(a1 + 40) + 8) + 24);
        v22 = *result;
        if (v22 >= 1)
        {
          v23 = 0;
          v24 = (result + 24);
          do
          {
            v25 = v24;
            if (v23 >= 0xA)
            {
              v25 = (*(result + 16) + 8 * v23 - 80);
            }

            if (*v25 == a2)
            {
              goto LABEL_42;
            }

            ++v23;
            ++v24;
          }

          while (v22 != v23);
        }

        v26 = a2;
      }

      else
      {
        result = *(*(*(a1 + 48) + 8) + 24);
        v27 = *result;
        if (v27 >= 1)
        {
          v28 = 0;
          v29 = (result + 24);
          do
          {
            v30 = v29;
            if (v28 >= 0xA)
            {
              v30 = (*(result + 16) + 8 * v28 - 80);
            }

            if (*v30 == v10)
            {
              goto LABEL_42;
            }

            ++v28;
            ++v29;
          }

          while (v27 != v28);
        }

        v26 = v10;
      }

      result = CI::SerialObjectPtrArray::append(result, v26);
LABEL_42:
      v9 = (v9 + 1);
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t ___ZN2CIL22prune_output_sRGB_nodeEPKNS_7ContextEPNS_4NodeEPNS_17TextureDescriptorE_block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if ((*(*a2 + 16))(a2) == 44)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = (*(**(a1 + 48) + 592))(*(a1 + 48), *v6, 3);
      v8 = a2[14];
      if (v8 == 1 && v7 != 0)
      {
        *(*(a1 + 40) + 4) = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = a2[14];
    }

    if (!v8)
    {
LABEL_13:
      v11 = (*(*a2 + 48))(a2, 0);
      if (a3)
      {
        (*(*a3 + 208))(a3, v11, 0);
      }

      else
      {
        if (v11)
        {
          v12 = CI::Object::ref(v11);
        }

        else
        {
          v12 = 0;
        }

        *(*(*(a1 + 32) + 8) + 24) = v12;
        CI::Object::unref(a2);
      }
    }
  }

  else if (*(*a2 + 40))(a2) == 1 && ((*(*a2 + 264))(a2, 3))
  {
    return 0;
  }

  return 1;
}

uint64_t CI::traverse_gathering_rois(uint64_t a1, CI::Node *a2, CI::Node *a3, int a4, int a5, uint64_t a6, int a7)
{
  NodeUseCount = CI::Node::GetNodeUseCount(a6, a2);
  v15 = NodeUseCount;
  if (a7)
  {
    v16 = *(a6 + 8);
    if (v16)
    {
      v17 = a6 + 8;
      do
      {
        v18 = *(v16 + 32);
        v19 = v18 >= a2;
        v20 = v18 < a2;
        if (v19)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * v20);
      }

      while (v16);
      if (v17 != a6 + 8 && *(v17 + 32) <= a2)
      {
        --*(v17 + 40);
      }
    }

    v15 = NodeUseCount - 1;
  }

  if (a3 && CI::Node::rois_count(a3))
  {
    v48.origin.x = CI::Node::roi(a3, a5);
    v21 = CI::Node::region_of_child(a3, v48);
    v23 = v22;
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v21 = *MEMORY[0x1E695F050];
    v23 = *(MEMORY[0x1E695F050] + 8);
    v25 = *(MEMORY[0x1E695F050] + 16);
    v27 = *(MEMORY[0x1E695F050] + 24);
  }

  v49.origin.x = v21;
  v49.origin.y = v23;
  v49.size.width = v25;
  v49.size.height = v27;
  result = CGRectIsEmpty(v49);
  if ((result & 1) == 0)
  {
    v40 = a3;
    v41 = a5;
    v42 = 0;
    v43 = a4;
    v44 = -1;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v29 = (*(*a1 + 448))(a1);
    result = (*(*a2 + 360))(a2, 0, v29, &v40, v21, v23, v25, v27);
  }

  if (!v15)
  {
    if (CI::Node::rois_count(a2))
    {
      result = CI::Node::rois_count(a2);
      if (result >= 1)
      {
        v30 = result;
        v31 = 0;
        do
        {
          v32 = CI::Node::roi(a2, v31);
          result = (*(*a2 + 40))(a2, v32);
          v33 = v31 + 1;
          if (result >= 1)
          {
            v34 = result;
            v35 = 0;
            do
            {
              v36 = (*(*a2 + 48))(a2, v35);
              result = CI::traverse_gathering_rois(a1, v36, a2, v35, v31, a6, v33 == v30);
              v35 = (v35 + 1);
            }

            while (v34 != v35);
          }

          ++v31;
        }

        while (v33 != v30);
      }
    }

    else
    {
      result = (*(*a2 + 40))(a2);
      if (result >= 1)
      {
        v37 = result;
        v38 = 0;
        do
        {
          v39 = (*(*a2 + 48))(a2, v38);
          result = CI::traverse_gathering_rois(a1, v39, a2, v38, -1, a6, 1);
          v38 = (v38 + 1);
        }

        while (v37 != v38);
      }
    }
  }

  return result;
}

uint64_t CI::Node::GetNodeUseCount(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 8);
    v3 = a1 + 8;
    v4 = v5;
    if (!v5)
    {
      return 0;
    }

    v6 = v3;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != v3 && *(v6 + 32) <= a2)
    {
      return *(v6 + 40);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void std::__tree<std::__value_type<CI::Node const*,CI::useCountDepth>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,CI::useCountDepth>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,CI::useCountDepth>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CI::Node const*,CI::useCountDepth>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,CI::useCountDepth>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,CI::useCountDepth>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CI::Node const*,CI::useCountDepth>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,CI::useCountDepth>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,CI::useCountDepth>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void CI::recursive_tile(CI::RenderTask *a1, int *a2, CI::Object *a3, const char *a4, _DWORD *a5, uint64_t a6, double *a7, CI::GraphObject *a8, uint64_t a9, uint64_t a10)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    v17 = a7[2];
    v18 = a7[3];
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *__str = 0u;
    *(a2 + 50) = *a7;
    *(a2 + 27) = v17;
    *(a2 + 28) = v18;
    v19 = ci_signpost_log_render(a1, a2);
    v20 = (*(*a2 + 280))(a2) << 32;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v20, "make_program_graph_if_renderable", &unk_19CFBCBAE, buf, 2u);
    }

    v21 = (*(*a2 + 280))(a2);
    TimerBase::TimerBase(v88, v21, 0, "make_program_graph_if_renderable", 2u);
    v22 = a7[3];
    v23 = a7[2] * *(a9 + 32);
    (*(*a2 + 456))(a2);
    v24 = (*(*a2 + 464))(a2);
    if (v23 <= v24 && v22 <= v24)
    {
      v26 = CI_CACHE_PROGRAM_GRAPH(v24, v25);
      if (v26)
      {
        XXH64_reset(buf, 0);
        *v53 = a5[9];
        XXH64_update(buf, v53, 4uLL);
        XXH64_update(buf, a7, 0x20uLL);
        v28 = XXH64_digest(buf);
        v26 = CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::find(*(a2 + 40), v28);
        if (v26)
        {
          CI::gather_rois_for_program_graph(a2, v26, v29, v30, *a7);
        }
      }

      v32 = ci_signpost_log_render(v26, v27);
      v33 = (*(*a2 + 280))(a2) << 32;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v33, "make_program_graph", &unk_19CFBCBAE, buf, 2u);
      }

      v34 = (*(*a2 + 280))(a2);
      TimerBase::TimerBase(buf, v34, 0, "make_program_graph", 0x23u);
      v55[0] = 0;
      v55[1] = 0;
      *v53 = &unk_1F103CE08;
      v54 = v55;
      v35 = (*(*a5 + 344))(a5, a2, v53, 1);
      CI::NodeToNodeMap::~NodeToNodeMap(v53);
      v38 = ci_signpost_log_render(v36, v37);
      v40 = *&buf[8];
      if ((*&buf[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v41 = v38;
        if (os_signpost_enabled(v38))
        {
          *v53 = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v41, OS_SIGNPOST_INTERVAL_END, v40, "make_program_graph", &unk_19CFBCBAE, v53, 2u);
        }
      }

      TimerBase::~TimerBase(buf, v39);
      CI::format_bytes_per_pixel(a2[8]);
      if (*a9)
      {
        CI::format_bytes_per_pixel(*a9);
      }

      CI::gather_rois_for_program_graph(a2, v35, v42, v43, *a7);
    }

    v31 = snprintf(__str, 0x200uLL, "destination %dx%d too big", v23, v22);
    v45 = ci_signpost_log_render(v31, v44);
    v47 = *&v88[8];
    if ((*&v88[8] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = v45;
      if (os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v48, OS_SIGNPOST_INTERVAL_END, v47, "make_program_graph_if_renderable", &unk_19CFBCBAE, buf, 2u);
      }
    }

    TimerBase::~TimerBase(v88, v46);
    if (v17 >= 16.0 || v18 >= 16.0)
    {
      if (v17 <= v18)
      {
        v51 = *(a7 + 1);
        *buf = *a7;
        v92 = a7[2];
        v93 = floor(v18 * 0.5 * 0.25) * 4.0;
        *v88 = *a7;
        v89 = *&v51;
        *&v88[8] = v93 + *&v88[8];
        v90 = v18 - v93;
      }

      else
      {
        v49 = *a7;
        v93 = a7[3];
        *buf = v49;
        v92 = floor(v17 * 0.5 * 0.25) * 4.0;
        v50 = *(a7 + 1);
        *v88 = *a7;
        v90 = *(&v50 + 1);
        *v88 = v92 + *v88;
        v89 = v17 - v92;
      }

      CI::recursive_tile(a1, a2, a3, a4, a5, a6, buf, a8, a9, a10);
      CI::recursive_tile(a1, a2, a3, a4, a5, a6, v88, a8, a9, a10);
    }

    else
    {
      CI::RenderTask::raise(a1, "Failed to render part of the image because %s", __str);
    }
  }
}

void ___ZN2CIL15tile_node_graphEPNS_7ContextEPKNS_17RenderDestinationEPKcNS_14GraphWithDepthERK6CGRectNS_11PixelFormatERKNS_19output_swizzle_infoEU13block_pointerFPNS_8TileTaskEPNS_11ProgramNodeES8_E_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v4 = CI_LOG_FILE(result, a2);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN2CIL23dump_program_graph_postEPNS_10RenderTaskE_block_invoke;
    v6[3] = &__block_descriptor_tmp_274;
    v6[4] = v2;
    stream_to_file(v4, v6);
    v5 = *(result + 32);
    if (v5)
    {
      CI::Object::unref(v5);
    }
  }
}

void CI::print_program_graph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int a10)
{
  v19 = CI_LOG_FILE(a1, a2);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZN2CIL19print_program_graphEPKNS_7ContextEmmPKNS_17RenderDestinationEdPKNS_8TileTaskEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke;
  v20[3] = &__block_descriptor_tmp_271;
  v20[4] = a4;
  v20[5] = a1;
  v20[6] = a6;
  v20[7] = a2;
  v21 = a10;
  v20[8] = a3;
  v20[9] = a8;
  v20[10] = a5;
  *&v20[11] = a9;
  v20[12] = a7;
  stream_to_file(v19, v20);
}

void ___ZN2CIL14recursive_tileEPNS_10RenderTaskEPNS_7ContextEPKNS_17RenderDestinationEPKcNS_14GraphWithDepthERK6CGRectNS_11PixelFormatERKNS_19output_swizzle_infoEU13block_pointerFPNS_8TileTaskEPNS_11ProgramNodeESA_E_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 344))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = CI::RenderTask::completionTime(*(a1 + 64), a2);
    CI::print_program_graph(v2, v4, v5, v6, *(a1 + 72), *(a1 + 80), *(a1 + 88), a1 + 96, v7, *(a1 + 128));
    v8 = *(a1 + 56);
    if (v8)
    {
      CI::Object::unref(v8);
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      CI::Object::unref(v9);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      CI::Object::unref(v10);
    }

    global_queue = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CIL14recursive_tileEPNS_10RenderTaskEPNS_7ContextEPKNS_17RenderDestinationEPKcNS_14GraphWithDepthERK6CGRectNS_11PixelFormatERKNS_19output_swizzle_infoEU13block_pointerFPNS_8TileTaskEPNS_11ProgramNodeESA_E_block_invoke_2;
    block[3] = &__block_descriptor_tmp_224_0;
    block[4] = *(a1 + 32);
    dispatch_async(global_queue, block);
    v12 = *(a1 + 88);
    if (v12)
    {
      CI::Object::unref(v12);
    }

    free(*(a1 + 80));
  }
}

void ___ZN2CIL14recursive_tileEPNS_10RenderTaskEPNS_7ContextEPKNS_17RenderDestinationEPKcNS_14GraphWithDepthERK6CGRectNS_11PixelFormatERKNS_19output_swizzle_infoEU13block_pointerFPNS_8TileTaskEPNS_11ProgramNodeESA_E_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

uint64_t CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::find(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE4findEy_block_invoke;
  block[3] = &unk_1E75C7EF8;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v5;
  dispatch_sync(*(a1 + 56), block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void CI::gather_rois_for_program_graph(CI *this, CI::Context *a2, const char *a3, CI::ProgramNode *a4, CGRect a5)
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = ci_signpost_log_render(this, a2);
  v12 = (*(*this + 280))(this) << 32;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "gather_rois_for_program_graph", &unk_19CFBCBAE, &buf, 2u);
  }

  v13 = (*(*this + 280))(this);
  TimerBase::TimerBase(&buf, v13, 0, "gather_rois_for_program_graph", 0x24u);
  CI::Context::bytesLimit(this);
  v16 = 0;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CI::_gather_rois_for_program_graph(this, a2, 0, &v16, v18, v14, v15);
}

void CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::insert(uint64_t a1, uint64_t a2, CI::Object *this, int a4)
{
  if (this)
  {
    CI::Object::ref(this);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE6insertEyPS1_j_block_invoke;
  v8[3] = &__block_descriptor_tmp_249_0;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = this;
  v9 = a4;
  Queue::execute_async((a1 + 56), v8);
}

void ___ZN2CIL32make_program_graph_if_renderableEPNS_7ContextEPKcNS_14GraphWithDepthERK6CGRectRKNS_19output_swizzle_infoEPcm_block_invoke(uint64_t a1, CI::ProgramNode *a2)
{
  if ((*(*a2 + 16))(a2) == 60)
  {
    CI::ProgramNode::release_program_and_arguments(a2);
    v4 = *(a2 + 6);
    if ((*(*v4 + 16))(v4) < 47 || (*(*v4 + 16))(v4) >= 50)
    {
      v5 = *(a1 + 32);

      CI::ProgramNode::create_program_and_arguments(a2, v5, "main");
    }
  }
}

uint64_t ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE4findEy_block_invoke(void *a1)
{
  v2 = a1[5];
  result = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>((v2 + 16), a1 + 6);
  if (result)
  {
    v4 = *(v2 + 8) + 1;
    *(v2 + 8) = v4;
    *(result + 32) = v4;
    result = *(result + 24);
    if (result)
    {
      result = CI::Object::ref(result);
    }

    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

unint64_t CI::liveROIs::currentMemory(CI::liveROIs *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this != v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = *v1;
      v6 = *(v1 + 8);
      v7 = *CI::Node::rois(*v1) + 120 * v6;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      if ((*(*v5 + 16))(v5) != 54)
      {
        break;
      }

LABEL_10:
      v1 += 24;
      if (v1 == v2)
      {
        return v4;
      }
    }

    v10 = v8 * v9;
    if ((*(*v5 + 16))(v5) == 35)
    {
      v11 = CGImageGetBitsPerPixel(*(v5 + 13)) >> 3;
    }

    else
    {
      if ((*(*v5 + 16))(v5) == 52)
      {
        v12 = *(v5 + 12);
      }

      else
      {
        if ((*(*v5 + 16))(v5) == 56 || CI::isRootProgram(v5, v13))
        {
          goto LABEL_10;
        }

        v12 = *(v5 + 35);
        if (!v12)
        {
          v11 = *(this + 3);
          goto LABEL_9;
        }
      }

      v11 = CI::format_bytes_per_pixel(v12);
    }

LABEL_9:
    v4 = (v4 + v10 * v11);
    goto LABEL_10;
  }

  return 0;
}

uint64_t CI::liveROIs::printList(uint64_t this, const CI::ProgramNode *a2)
{
  v2 = this;
  v3 = *this;
  v4 = *(this + 8);
  if (*this == v4)
  {
    v27 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = v3[2];
      this = (*(**v3 + 16))(*v3, a2);
      if (this != 60 || (this = CI::isRootProgram(v6, a2), (this & 1) == 0))
      {
        v8 = CI_LOG_FILE(this, a2);
        fprintf(v8, "{%d} ", *(v6 + 9));
        v9 = CI::Node::roi(v6, v7);
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v18 = CI_LOG_FILE(v16, v17);
        v31.origin.x = v9;
        v31.origin.y = v11;
        v31.size.width = v13;
        v31.size.height = v15;
        v20 = CI::fprintf(v18, v19, v31);
        v21 = (v13 * v15);
        v5 += v21;
        v23 = CI_LOG_FILE(v20, v22);
        v24 = fprintf(v23, " %zu mpixels", (v21 + 0x80000) >> 20);
        v26 = CI_LOG_FILE(v24, v25);
        this = fputc(10, v26);
      }

      v3 += 6;
    }

    while (v3 != v4);
    v27 = (v5 + 0x80000) >> 20;
  }

  v28 = CI_LOG_FILE(this, a2);
  v29 = CI::liveROIs::currentMemory(v2);
  return fprintf(v28, "Holding onto %zu mpixels for %zuMB\n", v27, (v29 + 0x80000) >> 20);
}

unint64_t CI::subdivide_program_rois(uint64_t *a1, unint64_t a2, uint64_t a3, int a4, unint64_t *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v16 = a2;
  NodeUseCount = CI::Node::GetNodeUseCount(a3, a2);
  if (a4)
  {
    v19 = *(a3 + 8);
    if (v19)
    {
      v20 = a3 + 8;
      do
      {
        v21 = *(v19 + 32);
        v22 = v21 >= v16;
        v23 = v21 < v16;
        if (v22)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * v23);
      }

      while (v19);
      if (v20 != a3 + 8 && *(v20 + 32) <= v16)
      {
        --*(v20 + 40);
      }
    }

    --NodeUseCount;
  }

  if (NodeUseCount)
  {
    return 0;
  }

  v26 = CI::Node::rois_count(v16);
  v27 = *v16;
  v235 = a5;
  if (!v26)
  {
    v32 = (*(v27 + 40))(v16);
    if (v32 >= 1)
    {
      v33 = v32;
      v34 = 0;
      do
      {
        v35 = (*(*v16 + 48))(v16, v34);
        v248.origin.x = a6;
        v248.origin.y = a7;
        v248.size.width = a8;
        v248.size.height = a9;
        v36 = CI::Node::region_of_child(v16, v248);
        v40 = CI::subdivide_program_rois(a1, v35, a3, 1, a5, v36, v37, v38, v39);
        v34 = (v34 + 1);
      }

      while (v33 != v34);
      return v40;
    }

    return 0;
  }

  if ((*(v27 + 16))(v16) != 60)
  {
    return 0;
  }

  v234 = CI::Context::bytesLimit(a1);
  v28 = (*(*a1 + 456))(a1);
  v29 = (*(*a1 + 464))(a1);
  v30 = *a1;
  if (v28 >= v29)
  {
    v31 = (*(v30 + 464))(a1);
  }

  else
  {
    v31 = (*(v30 + 456))(a1);
  }

  v237 = v31;
  v41 = CI::Node::rois(v16);
  CI::SerialRectArray::unionRect(v41);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = *(v16 + 140);
  if (!v50)
  {
    v50 = *(a1 + 8);
  }

  v51 = CI::format_bytes_per_pixel(v50);
  v52 = *(a3 + 8);
  if (!v52)
  {
    goto LABEL_34;
  }

  v53 = a3 + 8;
  do
  {
    v54 = *(v52 + 32);
    v22 = v54 >= v16;
    v55 = v54 < v16;
    if (v22)
    {
      v53 = v52;
    }

    v52 = *(v52 + 8 * v55);
  }

  while (v52);
  if (v53 == a3 + 8 || *(v53 + 32) > v16)
  {
LABEL_34:
    v53 = a3 + 8;
  }

  v220 = v51;
  v232 = a3;
  if (*(v53 + 44) == 1 && CI::Node::rois_count(v16) >= 2)
  {
    v56 = CI::Node::rois_count(v16);
    if (v56 < 1)
    {
      v58 = 0;
    }

    else
    {
      v57 = 0;
      v58 = 0;
      v59 = v56;
      do
      {
        v60 = *CI::Node::rois(v16) + 120 * v57;
        v61 = *(v60 + 32);
        v62 = *(v60 + 40);
        while (v61 != v62)
        {
          if (v58 <= *(v61 + 24))
          {
            v58 = *(v61 + 24);
          }

          v61 += 48;
        }

        ++v57;
      }

      while (v57 != v59);
    }

    v64 = CI::Node::rois(v16);
    CI::SerialRectArray::unionRect(v64);
    v240[0] = v65;
    v240[1] = v66;
    *&v241 = v67;
    *(&v241 + 1) = v68;
    v69 = CI::Node::rois(v16);
    CI::SerialRectArray::unionRect(v69);
    v238.origin.x = v70;
    v238.origin.y = v71;
    v238.size.width = v72;
    v238.size.height = v73;
    v74 = CI::format_bytes_per_pixel(*(a1 + 8));
    v63 = CI::programNodeMemoryLoad(v16, v240, &v238, v237, v74) + v58;
    a5 = v235;
  }

  else
  {
    v63 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v236 = v16;
  v233 = a1;
  if (v63 >= v234)
  {
    v101 = CI::Node::rois_count(v16);
    if (v101 >= 1)
    {
      v102 = 0;
      v24 = 0;
      v103 = v237;
      v228 = v101;
      do
      {
        v104 = *CI::Node::rois(v16) + 120 * v102;
        v105 = *(v104 + 32);
        v106 = *(v104 + 40);
        if (v105 == v106)
        {
          v225 = 0;
          v108 = 0;
        }

        else
        {
          v107 = 0uLL;
          do
          {
            v107 = vbslq_s8(vcgtq_u64(v107, *(v105 + 24)), v107, *(v105 + 24));
            v105 += 48;
          }

          while (v105 != v106);
          v225 = v107.u64[1];
          v108 = v107.i64[0];
        }

        v109 = (*(*v16 + 40))(v16);
        if (v109 >= 1)
        {
          v110 = v109;
          v111 = 0;
          do
          {
            (*(*v16 + 48))(v16, v111);
            v111 = (v111 + 1);
          }

          while (v110 != v111);
        }

        v251 = CGRectInset(*(a1 + 5), 0.000001, 0.000001);
        CGRectIntegral(v251);
        v252 = CGRectInset(*(a1 + 25), 0.000001, 0.000001);
        CGRectIntegral(v252);
        if (!CI_ENABLE_SUBDIVIDE_ROI() || (v112 = *(v16 + 48), (*(*v112 + 16))(v112) >= 47) && (*(*v112 + 16))(v112) < 50 || (*(**(v16 + 48) + 16))(*(v16 + 48)) == 51 || (*(*a1 + 16))(a1) == 82)
        {
          v240[0] = COERCE_CI_(CI::Node::roi(v16, v102));
          v240[1] = v113;
          *&v241 = v114;
          *(&v241 + 1) = v115;
          v238.origin.x = CI::Node::roi(v16, v102);
          v238.origin.y = v116;
          v238.size.width = v117;
          v238.size.height = v118;
          v119 = CI::format_bytes_per_pixel(*(a1 + 8));
          v120 = CI::programNodeMemoryLoad(v16, v240, &v238, v237, v119) + v108;
          i = v235;
        }

        else
        {
          v145 = CI::format_bytes_per_pixel(*(a1 + 8));
          v120 = CI::estimateProgramNodeMemoryLoad(v16, v102, v237, v145) + v108;
          for (i = v235; v120 > v234; v120 = CI::estimateProgramNodeMemoryLoad(v16, v102, v237, v159) + v108)
          {
            v147 = CI::Node::rois(v16);
            v148 = *v147;
            v149 = v147[1];
            if (*v147 != v149)
            {
              v150 = 0;
              do
              {
                v150 += *(v148 + 80);
                v148 += 120;
              }

              while (v148 != v149);
              if (v150 > 0x3F)
              {
                break;
              }
            }

            CI::Node::roi(v16, v102);
            v152 = v151;
            CI::Node::roi(v16, v102);
            v154 = v153;
            CI::Node::roi(v16, v102);
            v157 = v152 <= v154 ? v156 : v155;
            if (v157 > v103)
            {
              break;
            }

            v158 = CI::Node::rois(v16);
            *(*v158 + 120 * v102 + 80) *= 2;
            v159 = CI::format_bytes_per_pixel(*(a1 + 8));
          }

          if (CI::isRootProgram(v16, v146))
          {
            v222 = 0;
          }

          else
          {
            CI::Node::roi(v16, v102);
            v222 = (v161 * v160 * v220);
          }

          v231 = v102;
          v224 = v108;
          while (1)
          {
            v162 = CI::Node::rois(v16);
            v163 = *v162;
            v164 = v162[1];
            if (*v162 != v164)
            {
              v165 = 0;
              do
              {
                v165 += *(v163 + 80);
                v163 += 120;
              }

              while (v163 != v164);
              if (v165 > 0x3F)
              {
                break;
              }
            }

            CI::Node::roi(v16, v102);
            v167 = v166;
            CI::Node::roi(v16, v102);
            v169 = v168;
            CI::Node::roi(v16, v102);
            v172 = v167 <= v169 ? v171 : v170;
            if (v172 > v103)
            {
              break;
            }

            v219 = v120;
            v173 = CI::nodePathLoad(v16, v102, v220);
            v174 = CI::format_bytes_per_pixel(*(a1 + 8));
            v175 = CI::Node::rois(v16);
            v246 = 0;
            v247 = 0;
            v245 = 0;
            v176 = *v175 + 120 * v102;
            v177 = *(v176 + 80);
            v178 = *(v176 + 16);
            *v240 = *v176;
            v241 = v178;
            CI::SerialRectArray::recurseSubdivide(v240, v177, &v245);
            v179 = v245;
            if (v245 == v246)
            {
              v180 = 0;
            }

            else
            {
              v180 = 0;
              v181 = v234 - v224 - v173;
              v182 = v174;
              do
              {
                v183 = (*(*v16 + 40))(v16);
                v244[0] = 0;
                v244[1] = 0;
                v243 = v244;
                if (v183)
                {
                  v184 = v183;
                  v185 = 0;
                  do
                  {
                    *&v238.origin.x = (*(*v236 + 48))(v236, v185);
                    v240[0] = &v238;
                    v186 = std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>(&v243, &v238, &std::piecewise_construct, v240);
                    CI::ProgramNode::compute_regions_of_child(v236, *v179, v185, v237, 0, 0, v240);
                    v188 = v240[0];
                    v187 = v240[1];
                    if (v240[0] != v240[1])
                    {
                      do
                      {
                        CI::roiList::_insertROI((v186 + 5), v188++);
                      }

                      while (v188 != v187);
                      v188 = v240[0];
                    }

                    if (v188)
                    {
                      v240[1] = v188;
                      operator delete(v188);
                    }

                    v185 = (v185 + 1);
                  }

                  while (v185 != v184);
                  v189 = v243;
                  v16 = v236;
                  if (v243 != v244)
                  {
                    do
                    {
                      v240[0] = v189[4];
                      std::vector<CGRect>::vector[abi:nn200100](&v240[1], v189 + 5);
                      if ((*(*v240[0] + 16))(v240[0]) == 60)
                      {
                        v190 = *(v240[0] + 35);
                        v191 = v182;
                        if (v190)
                        {
                          v191 = CI::format_bytes_per_pixel(v190);
                        }

                        v192 = v240[1];
                        if (v241 != v240[1])
                        {
                          v193 = 0;
                          v194 = 0;
                          v195 = v191;
                          do
                          {
                            v196 = *(v192 + v193 + 16);
                            v197 = *(v192 + v193 + 24);
                            v238.origin = *(v192 + v193);
                            v238.size.width = v196;
                            v238.size.height = v197;
                            if (CI::programNodeMemoryLoad(v240[0], &v238, &v238, v237, v182) > v181)
                            {
                              v198 = v180;
                              if (v196 * v197 * v195 >= v180)
                              {
                                v198 = v196 * v197 * v195;
                              }

                              v180 = v198;
                            }

                            ++v194;
                            v192 = v240[1];
                            v193 += 32;
                          }

                          while (v194 < (v241 - v240[1]) >> 5);
                        }
                      }

                      else
                      {
                        v192 = v240[1];
                      }

                      if (v192)
                      {
                        *&v241 = v192;
                        operator delete(v192);
                      }

                      v199 = v189[1];
                      if (v199)
                      {
                        do
                        {
                          v200 = v199;
                          v199 = *v199;
                        }

                        while (v199);
                      }

                      else
                      {
                        do
                        {
                          v200 = v189[2];
                          v201 = *v200 == v189;
                          v189 = v200;
                        }

                        while (!v201);
                      }

                      v189 = v200;
                    }

                    while (v200 != v244);
                  }
                }

                else
                {
                  v16 = v236;
                }

                std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::destroy(&v243, v244[0]);
                ++v179;
              }

              while (v179 != v246);
              v179 = v245;
              a1 = v233;
              v102 = v231;
            }

            v108 = v224;
            if (v179)
            {
              v246 = v179;
              operator delete(v179);
            }

            if (v180 <= v222)
            {
              i = v235;
              v120 = v219;
              break;
            }

            v202 = CI::Node::rois(v16);
            *(*v202 + 120 * v102 + 80) *= 2;
            v203 = CI::format_bytes_per_pixel(*(a1 + 8));
            v120 = CI::estimateProgramNodeMemoryLoad(v16, v102, v237, v203) + v224;
            i = v235;
          }
        }

        if (v120 > v24)
        {
          v24 = v120;
        }

        v122 = CI::Node::rois(v16);
        *(*v122 + 120 * v102 + 88) = v120;
        CI::SerialRectArray::updateParents(v122, v102, v120);
        v123 = v225;
        if (v225 <= v120)
        {
          v123 = v120;
        }

        v226 = v123;
        v124 = CI::Node::rois(v16);
        memset(&v238, 0, 24);
        v125 = *v124 + 120 * v102;
        v126 = *(v125 + 80);
        v127 = *(v125 + 16);
        *v240 = *v125;
        v241 = v127;
        CI::SerialRectArray::recurseSubdivide(v240, v126, &v238);
        v128 = CI::nodePathLoad(v16, v102, v220);
        x = v238.origin.x;
        if (*&v238.origin.y != *&v238.origin.x)
        {
          v130 = 0;
          v131 = v128 + v108;
          v230 = v102;
          v132 = v102 + 1;
          do
          {
            v223 = v130 + 1;
            v221 = (*(*v16 + 40))(v16);
            if (v221 >= 1)
            {
              v133 = 0;
              do
              {
                v134 = (*(*v16 + 48))(v16, v133);
                v135 = *i;
                if (*i <= v131)
                {
                  v135 = v131;
                }

                *i = v135;
                v75.n128_f64[0] = CI::ProgramNode::compute_regions_of_child(v16, *(*&v238.origin.x + 32 * v130), v133, v237, 1, 0, &v245);
                v136 = v245;
                if (v246 != v245)
                {
                  v137 = 0;
                  v138 = 0;
                  v139 = v246 - v245;
                  do
                  {
                    if (v132 == v228)
                    {
                      v140 = v138 + 1 == v139;
                      v141 = v223 == (*&v238.origin.y - *&v238.origin.x) >> 5 && v140;
                    }

                    else
                    {
                      v141 = 0;
                    }

                    v142 = CI::Node::rois(v236);
                    v143 = CI::SerialRectArray::maxParentDistance(v142);
                    v240[0] = v236;
                    v240[1] = __PAIR64__(v130, v230);
                    *&v241 = __PAIR64__(v138, v133);
                    *(&v241 + 1) = v131;
                    *&v242 = v226;
                    DWORD2(v242) = v143 + 1;
                    (*(*v134 + 360))(v134, v234, v237, v240, v245[v137].origin.x, v245[v137].origin.y, v245[v137].size.width, v245[v137].size.height);
                    i = v235;
                    v144 = CI::subdivide_program_rois(v233, v134, v232, v141, v235, v245[v137].origin.x, v245[v137].origin.y, v245[v137].size.width, v245[v137].size.height);
                    if (v144 > v24)
                    {
                      v24 = v144;
                    }

                    ++v138;
                    v136 = v245;
                    v139 = v246 - v245;
                    ++v137;
                  }

                  while (v139 > v138);
                  v16 = v236;
                }

                if (v136)
                {
                  v246 = v136;
                  operator delete(v136);
                }

                v133 = (v133 + 1);
              }

              while (v133 != v221);
            }

            x = v238.origin.x;
            ++v130;
          }

          while (v223 < (*&v238.origin.y - *&v238.origin.x) >> 5);
          a1 = v233;
          v102 = v230;
        }

        if (x != 0.0)
        {
          v238.origin.y = x;
          operator delete(*&x);
        }

        v102 = (v102 + 1);
      }

      while (v102 != v228);
      goto LABEL_197;
    }
  }

  else
  {
    v227 = (*(*v16 + 40))(v16);
    if (v227 >= 1)
    {
      v24 = 0;
      v76 = 0;
      do
      {
        v77 = (*(*v16 + 48))(v16, v76);
        v249.origin.x = v43;
        v249.origin.y = v45;
        v249.size.width = v47;
        v249.size.height = v49;
        v75.n128_f64[0] = CI::ProgramNode::compute_regions_of_child(v16, v249, v76, v237, 0, 0, &v238);
        v78 = v238.origin.x;
        if (*&v238.origin.y != *&v238.origin.x)
        {
          v79 = 0;
          v229 = v76;
          do
          {
            v80 = CI::Node::rois_count(v16);
            if (v80 >= 1)
            {
              v81 = 0;
              v82 = v80;
              do
              {
                v83 = CI::Node::rois(v16);
                *(*v83 + 120 * v81 + 88) = v63;
                CI::SerialRectArray::updateParents(v83, v81, v63);
                v84 = *CI::Node::rois(v16) + 120 * v81;
                v85 = *(v84 + 32);
                v86 = *(v84 + 40);
                if (v85 == v86)
                {
                  v88 = 0;
                  v89 = 0;
                }

                else
                {
                  v87 = 0uLL;
                  do
                  {
                    v87 = vbslq_s8(vcgtq_u64(v87, *(v85 + 24)), v87, *(v85 + 24));
                    v85 += 48;
                  }

                  while (v85 != v86);
                  v88 = v87.u64[1];
                  v89 = v87.i64[0];
                }

                v90 = CI::nodePathLoad(v236, v81, v220);
                if (v88 <= v63)
                {
                  v88 = v63;
                }

                v91 = (*CI::Node::rois(v236) + 120 * v81);
                v92 = v91[4];
                v93 = v91[5];
                if (v92 == v93)
                {
                  v94 = 0;
                  v76 = v229;
                }

                else
                {
                  v94 = 0;
                  v76 = v229;
                  do
                  {
                    if (v94 <= *(v92 + 40))
                    {
                      v94 = *(v92 + 40);
                    }

                    v92 += 48;
                  }

                  while (v92 != v93);
                }

                v96 = v91[7];
                v95 = v91[8];
                while (v96 != v95)
                {
                  if (v94 <= *(v96 + 40))
                  {
                    v94 = *(v96 + 40);
                  }

                  v96 += 48;
                }

                v97 = v90 + v89;
                a5 = v235;
                v240[0] = v236;
                v240[1] = v81;
                *&v241 = __PAIR64__(v79, v76);
                *(&v241 + 1) = v97;
                *&v242 = v88;
                v16 = v236;
                DWORD2(v242) = v94 + 1;
                v98 = *v235;
                if (*v235 <= v97)
                {
                  v98 = v97;
                }

                *v235 = v98;
                v250.origin.x = CI::Node::roi(v236, v81);
                CI::ProgramNode::compute_regions_of_child(v236, v250, v76, v237, 1, 0, __p);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                (*(*v77 + 360))(v77, v234, v237, v240, *(*&v238.origin.x + 32 * v79), *(*&v238.origin.x + 32 * v79 + 8), *(*&v238.origin.x + 32 * v79 + 16), *(*&v238.origin.x + 32 * v79 + 24));
                v81 = (v81 + 1);
              }

              while (v81 != v82);
            }

            v99 = (*(*v16 + 48))(v16, v76);
            v100 = CI::subdivide_program_rois(v233, v99, v232, 1, a5, *(*&v238.origin.x + 32 * v79), *(*&v238.origin.x + 32 * v79 + 8), *(*&v238.origin.x + 32 * v79 + 16), *(*&v238.origin.x + 32 * v79 + 24));
            if (v100 > v24)
            {
              v24 = v100;
            }

            ++v79;
            v78 = v238.origin.x;
          }

          while (v79 < (*&v238.origin.y - *&v238.origin.x) >> 5);
        }

        if (v78 != 0.0)
        {
          v238.origin.y = v78;
          operator delete(*&v78);
        }

        v76 = (v76 + 1);
      }

      while (v76 != v227);
      goto LABEL_197;
    }
  }

  v24 = 0;
LABEL_197:
  if ((*(**(v16 + 48) + 16))(*(v16 + 48), v75) == 47 && CI::Node::rois_count(v16) >= 1)
  {
    v204 = 0;
    do
    {
      v205 = *CI::Node::rois(v16) + 120 * v204;
      v206 = *(v205 + 32);
      v207 = *(v205 + 40);
      while (v206 != v207)
      {
        v208 = *v206;
        if ((*(**(*v206 + 48) + 16))(*(*v206 + 48)) == 51)
        {
          v209 = *(v208 + 6);
          v210 = *(v209 + 104);
          *v240 = *(v209 + 88);
          v241 = v210;
          v242 = *(v209 + 120);
          CI::Affine::inverse(&v238, v240);
          v253.origin.x = CI::Node::roi(v16, v204);
          v211 = CI::Affine::applyToRect(&v238, v253);
          v213 = v212;
          v215 = v214;
          v217 = v216;
          v218 = (*CI::Node::rois(v208) + 120 * v206[2]);
          *v218 = v211;
          *(v218 + 1) = v213;
          *(v218 + 2) = v215;
          *(v218 + 3) = v217;
        }

        v206 += 12;
      }

      ++v204;
    }

    while (v204 < CI::Node::rois_count(v16));
  }

  return v24;
}

void CI::recurseGraphStats(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      v13 = *(a4 + 8);
      v12 = *(a4 + 16);
      if (v13 >= v12)
      {
        v15 = (v13 - *a4) >> 3;
        if ((v15 + 1) >> 61)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v16 = v12 - *a4;
        v17 = v16 >> 2;
        if (v16 >> 2 <= (v15 + 1))
        {
          v17 = v15 + 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CI::intermediate_t const*>>(a4, v18);
        }

        *(8 * v15) = a2;
        v14 = 8 * v15 + 8;
        v19 = *(a4 + 8) - *a4;
        v20 = (8 * v15 - v19);
        memcpy(v20, *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v14;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v13 = a2;
        v14 = (v13 + 1);
      }

      *(a4 + 8) = v14;
    }

    v23 = (a6 + 8);
    v22 = *(a6 + 8);
    if (!v22)
    {
      goto LABEL_24;
    }

    v24 = a6 + 8;
    do
    {
      v25 = *(v22 + 32);
      v26 = v25 >= a1;
      v27 = v25 < a1;
      if (v26)
      {
        v24 = v22;
      }

      v22 = *(v22 + 8 * v27);
    }

    while (v22);
    if (v24 == v23 || *(v24 + 32) > a1)
    {
LABEL_24:
      v24 = a6 + 8;
    }

    if (((*a1)[2])(a1) != 60 || (v28 = a3, (*(*a1[6] + 16))(a1[6]) != 49))
    {
      if (a5 < a3)
      {
        *(v24 + 44) = 0;
      }

      v28 = a5;
    }

    if (!*(v24 + 64))
    {
      CI::Node::clear_rois(a1);
      if (((*a1)[5])(a1) >= 1)
      {
        v29 = 0;
        do
        {
          v30 = ((*a1)[6])(a1, v29);
          CI::recurseGraphStats(v30, a1, (a3 + 1), a4, v28, a6);
          v29 = (v29 + 1);
        }

        while (v29 < ((*a1)[5])(a1));
      }
    }

    if (a2)
    {
      if (((*a1)[5])(a1))
      {
        v31 = *(v24 + 40);
        if (v31 >= 2)
        {
          v32 = *a4;
          v33 = *(a4 + 8);
          if (*a4 == v33)
          {
            v34 = 0;
          }

          else
          {
            v34 = 0;
            v35 = (v24 + 56);
            do
            {
              v36 = *v32;
              v51 = *v32;
              v37 = *v35;
              if (!*v35)
              {
                goto LABEL_47;
              }

              v38 = v24 + 56;
              do
              {
                v39 = *(v37 + 32);
                v26 = v39 >= v36;
                v40 = v39 < v36;
                if (v26)
                {
                  v38 = v37;
                }

                v37 = *(v37 + 8 * v40);
              }

              while (v37);
              if (v38 != v35 && v36 >= *(v38 + 32))
              {
                ++*(v38 + 40);
              }

              else
              {
LABEL_47:
                v52 = &v51;
                *(std::__tree<std::__value_type<CI::Node const*,unsigned int>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,unsigned int>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,unsigned int>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(v24 + 48, &v51, &std::piecewise_construct, &v52) + 10) = 1;
              }

              v52 = &v51;
              if (v34 <= *(std::__tree<std::__value_type<CI::Node const*,unsigned int>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,unsigned int>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,unsigned int>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(v24 + 48, &v51, &std::piecewise_construct, &v52) + 10))
              {
                v52 = &v51;
                v34 = *(std::__tree<std::__value_type<CI::Node const*,unsigned int>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,unsigned int>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,unsigned int>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(v24 + 48, &v51, &std::piecewise_construct, &v52) + 10);
              }

              ++v32;
            }

            while (v32 != v33);
            v31 = *(v24 + 40);
          }

          if (v34 == v31)
          {
            v41 = *(v24 + 48);
            v42 = (v24 + 56);
            if (v41 != (v24 + 56))
            {
              do
              {
                if (*(v41 + 10) < v31)
                {
                  v43 = *v23;
                  if (!*v23)
                  {
                    goto LABEL_65;
                  }

                  v44 = v41[4];
                  v45 = v23;
                  do
                  {
                    v46 = v43[4];
                    v26 = v46 >= v44;
                    v47 = v46 < v44;
                    if (v26)
                    {
                      v45 = v43;
                    }

                    v43 = v43[v47];
                  }

                  while (v43);
                  if (v45 == v23 || v44 < v45[4])
                  {
LABEL_65:
                    v45 = v23;
                  }

                  *(v45 + 44) = 0;
                }

                v48 = v41[1];
                if (v48)
                {
                  do
                  {
                    v49 = v48;
                    v48 = *v48;
                  }

                  while (v48);
                }

                else
                {
                  do
                  {
                    v49 = v41[2];
                    v50 = *v49 == v41;
                    v41 = v49;
                  }

                  while (!v50);
                }

                v41 = v49;
              }

              while (v49 != v42);
            }

            std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v24 + 48, *(v24 + 56));
            *(v24 + 56) = 0;
            *(v24 + 64) = 0;
            *(v24 + 48) = v42;
            *(v24 + 44) = 0;
          }
        }
      }

      *(a4 + 8) -= 8;
    }
  }
}

void *std::__tree<std::__value_type<CI::Node const*,unsigned int>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,unsigned int>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,unsigned int>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

unint64_t CI::programNodeMemoryLoad(CI *this, const CI::ProgramNode *a2, const CGRect *a3, const CGRect *a4, unint64_t a5)
{
  width = a3->size.width;
  if (width <= a3->size.height)
  {
    width = a3->size.height;
  }

  v6 = a4;
  if (width <= a4)
  {
    v13 = *(this + 35);
    v14 = a5;
    if (v13)
    {
      v14 = CI::format_bytes_per_pixel(v13);
    }

    if (CI::isRootProgram(this, a2))
    {
      v7 = 0;
    }

    else
    {
      v7 = (a3->size.width * a3->size.height * v14 + 0.0);
    }

    v15 = (*(*this + 40))(this);
    v43[0] = 0;
    v43[1] = 0;
    v42 = v43;
    if (!v15)
    {
      goto LABEL_45;
    }

    v16 = v15;
    v37 = v7;
    v36 = a5;
    v17 = 0;
    do
    {
      v41 = (*(*this + 48))(this, v17);
      v38 = &v41;
      v18 = std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>(&v42, &v41, &std::piecewise_construct, &v38);
      CI::ProgramNode::compute_regions_of_child(this, *a2, v17, a4, 0, 0, &v38);
      v20 = v38;
      v19 = v39;
      if (v38 != v39)
      {
        do
        {
          CI::roiList::_insertROI((v18 + 5), v20);
          v20 += 4;
        }

        while (v20 != v19);
        v20 = v38;
      }

      if (v20)
      {
        v39 = v20;
        operator delete(v20);
      }

      v17 = (v17 + 1);
    }

    while (v17 != v16);
    v21 = v42;
    v7 = v37;
    if (v42 == v43)
    {
LABEL_45:
      std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::destroy(&v42, v43[0]);
      return v7;
    }

    while (1)
    {
      v38 = v21[4];
      std::vector<CGRect>::vector[abi:nn200100](&v39, v21 + 5);
      v22 = v39;
      if (v40 != v39)
      {
        break;
      }

LABEL_35:
      if (v22)
      {
        v40 = v22;
        operator delete(v22);
      }

      v32 = v21[1];
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
          v33 = v21[2];
          v34 = *v33 == v21;
          v21 = v33;
        }

        while (!v34);
      }

      v21 = v33;
      if (v33 == v43)
      {
        goto LABEL_45;
      }
    }

    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = *&v22[v23 + 2];
      v26 = *&v22[v23 + 3];
      if (v25 <= v26)
      {
        v27 = *&v22[v23 + 3];
      }

      else
      {
        v27 = *&v22[v23 + 2];
      }

      if (v27 > v6)
      {
        v40 = v22;
        operator delete(v22);
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_45;
      }

      if ((*(*v38 + 16))(v38) != 54)
      {
        break;
      }

LABEL_34:
      ++v24;
      v22 = v39;
      v23 += 4;
      if (v24 >= (v40 - v39) >> 5)
      {
        goto LABEL_35;
      }
    }

    v28 = v25 * v26;
    if ((*(*v38 + 16))(v38) == 35)
    {
      v29 = CGImageGetBitsPerPixel(v38[13]) >> 3;
    }

    else
    {
      if ((*(*v38 + 16))(v38) == 52)
      {
        v30 = *(v38 + 12);
      }

      else
      {
        (*(*v38 + 16))(v38);
        v31 = (*(*v38 + 16))(v38);
        v29 = v36;
        if (v31 != 60)
        {
          goto LABEL_33;
        }

        v30 = *(v38 + 35);
        v29 = v36;
        if (!v30)
        {
          goto LABEL_33;
        }
      }

      v29 = CI::format_bytes_per_pixel(v30);
    }

LABEL_33:
    v7 = (v7 + v28 * v29);
    goto LABEL_34;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

unint64_t CI::nodePathLoad(CI *this, const CI::ProgramNode *a2, unint64_t a3)
{
  v4 = a2;
  if (*(*CI::Node::rois(this) + 120 * a2 + 80) < 2 || CI::isRootProgram(this, v6))
  {
    return 0;
  }

  CI::Node::roi(this, v4);
  return (v9 * v8 * a3);
}

unint64_t CI::estimateProgramNodeMemoryLoad(CI *this, const CI::ProgramNode *a2, const CGRect *a3, unint64_t a4)
{
  v6 = a2;
  v8 = CI::Node::rois(this);
  v18 = 0;
  v19 = 0;
  __p = 0;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = *v8 + 120 * v6;
  v10 = *(v9 + 80);
  v11 = *(v9 + 16);
  v20 = *v9;
  v21 = v11;
  CI::SerialRectArray::recurseSubdivide(&v20, v10, &__p);
  v12 = __p;
  if (__p == v18)
  {
    v13 = 0;
    if (!__p)
    {
      return v13;
    }

LABEL_11:
    v18 = v12;
    operator delete(v12);
    return v13;
  }

  v13 = 0;
  do
  {
    v20 = *v12;
    v21 = v12[1];
    v14 = CI::Node::rois(this);
    v15 = CI::programNodeMemoryLoad(this, &v20, (*v14 + 120 * v6), a3, a4);
    if (v13 <= v15)
    {
      v13 = v15;
    }

    v12 += 2;
  }

  while (v12 != v18);
  v12 = __p;
  if (__p)
  {
    goto LABEL_11;
  }

  return v13;
}

void *std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void CI::roiList::_insertROI(CI::roiList *this, CGRect *a2)
{
  v4 = *this;
  if (*(this + 1) == *this)
  {
LABEL_5:

    std::vector<CGRect>::push_back[abi:nn200100](this, a2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    width = a2->size.width;
    height = a2->size.height;
    while (1)
    {
      x = a2->origin.x;
      y = a2->origin.y;
      v17 = CGRectUnion(*(&width - 2), *(v4 + v5));
      v15 = v17;
      v17.origin.x = v17.size.height * v17.size.width;
      width = a2->size.width;
      height = a2->size.height;
      v4 = *this;
      v11 = (*this + v5);
      if (v17.origin.x < (height * width + v11[3] * v11[2]) * 1.1)
      {
        break;
      }

      ++v6;
      v5 += 32;
      if (v6 >= (*(this + 1) - v4) >> 5)
      {
        goto LABEL_5;
      }
    }

    v12 = *(this + 1);
    v13 = v12 - v4 - v5;
    v14 = v13 - 32;
    if (v11 + 4 != v12)
    {
      memmove((*this + v5), v11 + 4, (v13 - 32));
    }

    *(this + 1) = &v14[v11];
    CI::roiList::_insertROI(this, &v15);
  }
}