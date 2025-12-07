uint64_t check_sizes(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 >= 0xFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  if (a1[11] < (a1[9] * v2 + 7) >> 3)
  {
    CGPostError("CGBitmapContextCreate: invalid data bytes/row: should be at least %zu for %zu %s bits/component, %zu components, %s.");
    return 0;
  }

  v3 = a1[17];
  if (!v3)
  {
    return 1;
  }

  if (a1[16] == a2)
  {
    if (v3 < (v2 * a2 + 7) >> 3)
    {
      CGPostError("CGBitmapContextCreate: invalid alpha bytes/row: should be at least %zu for %zu %s bits/component.");
      return 0;
    }

    return 1;
  }

LABEL_2:
  unsupported(a1);
  return 0;
}

char *RIPLayerCreateWithData(uint64_t *a1, char a2, int *a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v13 = a3;
  if (a1)
  {
    v15 = *(a1 + 2);
    if (v15 < 0)
    {
      return 0;
    }

    v16 = *(a1 + 3);
    if (v16 < 0)
    {
      return 0;
    }

    v17 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v30 = v17;
  if (!a3)
  {
    v13 = RIPGetDepthForLayerFormat(0);
  }

  if (v13 != RIPGetDepthForLayerFormat(0))
  {
    if (a5)
    {
      if (a6)
      {
        v18 = a7 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      v29 = a8;
      if ((a2 & 1) == 0 && (v19 & 1) != 0 || (v20 = (*v13 >> 2) & 3, v20 == 1))
      {
        v21 = a4;
      }

      else
      {
        a7 = a5;
        v21 = a4;
        a6 = a4;
        if (v20 != 2)
        {
          a7 = 0;
          a6 = 0;
        }
      }

      v24 = initialize_deep_mask(v13) | a2 & 0x3E;
      if (v13[4])
      {
        v23 = v24 | 0x200;
      }

      else
      {
        v23 = v24;
      }

      goto LABEL_27;
    }

    return 0;
  }

  v21 = a4;
  v29 = a8;
  v23 = a2 & 0x3E;
LABEL_27:
  if ((v23 & 0x10) != 0)
  {
    v25 = 440;
  }

  else
  {
    v25 = 144;
  }

  v26 = malloc_type_calloc(1uLL, v25, 0x5EF03840uLL);
  v22 = v26;
  *v26 = RIPLayer_ripl_class;
  *(v26 + 2) = 1;
  *(v26 + 6) = v16;
  *(v26 + 7) = v23;
  *(v26 + 12) = v30;
  *(v26 + 5) = v15;
  v27 = v26 + 144;
  if ((v23 & 0x10) == 0)
  {
    v27 = 0;
  }

  *(v26 + 4) = v13;
  *(v26 + 5) = v27;
  *(v26 + 12) = v21;
  *(v26 + 13) = v29;
  *(v26 + 7) = a5;
  *(v26 + 16) = a6;
  *(v26 + 9) = a7;
  pthread_mutex_init((v26 + 80), 0);
  return v22;
}

dispatch_once_t RIPGetDepthForLayerFormat(unsigned int a1)
{
  if (a1 == -1)
  {
    return 0;
  }

  if (a1 >= 0x1B)
  {
    _CGHandleAssert("RIPGetDepthForLayerFormat", 97, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPLayerFormat.c", "format >= 0 && format < kRIPLayerFormat_Max", "invalid format %d", a1);
  }

  v1 = (&RIPGetDepthForLayerFormat_blt_depth + 16 * a1);
  v2 = v1[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RIPGetDepthForLayerFormat_block_invoke;
  block[3] = &__block_descriptor_tmp_1947;
  v5 = a1;
  if (v2 != -1)
  {
    dispatch_once(v1 + 1, block);
  }

  if (*v1 == -1)
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void CGBitmapContextInfoRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      v2(*(a1 + 112), *(a1 + 64));
    }

    CGColorSpaceRelease(*(a1 + 32));
    if (*(a1 + 100) == 1)
    {
      CGBitmapFreeData(*(a1 + 64));
    }

    v3 = *(a1 + 120);
    if (v3)
    {
      CGBitmapFreeData(v3);
    }

    free(a1);
  }
}

void *CGColorTransformGetCache(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
    }

    if (v2 == CGColorTransformGetTypeID_type_id)
    {
      return *(v1[3] + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ripc_component_type_from_info(uint64_t a1)
{
  v3 = *(a1 + 80);
  if (v3 <= 9)
  {
    if (v3 != 5 && v3 != 8)
    {
      goto LABEL_18;
    }

    return 1;
  }

  else if (v3 == 32)
  {
    if ((*(a1 + 41) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 4;
  }

  else
  {
    if (v3 != 16)
    {
      if (v3 == 10 && *(a1 + 72) == 32)
      {
        return 5;
      }

LABEL_18:
      _CGHandleAssert("ripc_component_type_from_info", 47, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPBitmapContext.c", "", "Unimplemented", v1, v2);
    }

    if (*(a1 + 41))
    {
      return 5;
    }

    else
    {
      return 2;
    }
  }
}

void CGGStateTextCopy(uint64_t a1, uint64_t a2)
{
  text_state_release(*(a1 + 136));
  v4 = *(a2 + 136);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 136) = v4;
  *(a1 + 20) |= 8u;
  *(a2 + 20) |= 8u;
}

char *CGGStateCreateCopy(uint64_t a1)
{
  v2 = malloc_type_malloc(0x98uLL, 0x10200404FA37D3AuLL);
  *v2 = v2;
  *(v2 + 1) = v2;
  *(v2 + 4) = 1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(v2 + 56) = *(a1 + 56);
  *(v2 + 40) = v4;
  *(v2 + 24) = v3;
  v5 = *(a1 + 72);
  if (v5)
  {
    CFRetain(*(a1 + 72));
  }

  *(v2 + 9) = v5;
  v6 = *(a1 + 112);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 1u, memory_order_relaxed);
  }

  *(v2 + 14) = v6;
  *(a1 + 20) |= 1u;
  v7 = v2[20] | 1;
  v2[20] = v7;
  v8 = *(a1 + 96);
  *(v2 + 5) = *(a1 + 80);
  *(v2 + 6) = v8;
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 1u, memory_order_relaxed);
    v7 = v2[20];
  }

  *(v2 + 15) = v9;
  v2[20] = v7 | 2;
  *(a1 + 20) |= 2u;
  *(v2 + 16) = 0;
  CGGStateStrokeCopy(v2, a1);
  *(v2 + 17) = 0;
  CGGStateTextCopy(v2, a1);
  *(v2 + 18) = 0;
  CGGStateDeviceCopy(v2, a1);
  return v2;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  height = r2.size.height;
  width = r2.size.width;
  y = r2.origin.y;
  x = r2.origin.x;
  v6 = r1.origin.x;
  if (r1.origin.x == INFINITY || r1.origin.y == INFINITY)
  {
    v8 = r2.size.height;
    v9 = r2.size.width;
    v6 = r2.origin.x;
  }

  else
  {
    v8 = r1.size.height;
    v9 = r1.size.width;
    v10 = r1.origin.y;
    if (r2.origin.x == INFINITY || r2.origin.y == INFINITY)
    {
      y = r1.origin.y;
    }

    else
    {
      if (r1.size.width < 0.0 || r1.size.height < 0.0)
      {
        v18 = CGRectStandardize(r1);
        v6 = v18.origin.x;
        v10 = v18.origin.y;
        v9 = v18.size.width;
        v8 = v18.size.height;
      }

      if (width < 0.0 || height < 0.0)
      {
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        v20 = CGRectStandardize(v19);
        x = v20.origin.x;
        y = v20.origin.y;
        width = v20.size.width;
        height = v20.size.height;
      }

      v12 = v6 + v9;
      v6 = fmin(v6, x);
      v13 = y + height;
      y = fmin(v10, y);
      v9 = fmax(v12, x + width) - v6;
      v8 = fmax(v10 + v8, v13) - y;
    }
  }

  v14 = v6;
  v15 = y;
  v16 = v9;
  v17 = v8;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

double CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(CGRect *a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(v2 + 8);
  if (*(v2 + 2) <= 0xFFu && v3 * *(v2 + 16) * 0.5 > v3)
  {
    v3 = v3 * *(v2 + 16) * 0.5;
  }

  *&result = CGRectInset(*a1, -fabs(v3 * *(a2 + 40) + *(a2 + 24) * v3), -fabs(v3 * *(a2 + 48) + *(a2 + 32) * v3));
  return result;
}

uint64_t CG::DisplayList::fontResourceForFont(CG::DisplayList *this, CGFont *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 92);
  v3 = this + 328;
  v4 = *(this + 41);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 328;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    if (rect.size.width < 0.0 || rect.size.height < 0.0)
    {
      rect = CGRectStandardize(rect);
    }

    x = rect.origin.x;
    y = rect.origin.y;
    v8 = rect.size.width + dx * -2.0;
    rect.size.width = 0.0;
    rect.origin.x = INFINITY;
    if (v8 < 0.0)
    {
      rect.origin.y = INFINITY;
      rect.size.height = 0.0;
    }

    else
    {
      v9 = rect.size.height + dy * -2.0;
      rect.origin.y = INFINITY;
      rect.size.height = 0.0;
      if (v9 >= 0.0)
      {
        rect.origin.y = y + dy;
        rect.origin.x = x + dx;
        rect.size.width = v8;
        rect.size.height = v9;
      }
    }
  }

  return rect;
}

void CG::DisplayListResourceFont::setFont(CG::DisplayListResourceFont *this, void *cf)
{
  v3 = *(this + 2);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
      *(this + 2) = cf;
      font_info = get_font_info(cf);
      if (font_info)
      {
        v6 = font_info[2];
LABEL_9:
        *(this + 3) = v6;
        return;
      }
    }

    else
    {
      *(this + 2) = 0;
    }

    v6 = 0.0;
    goto LABEL_9;
  }
}

void sub_183EAE25C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[4];
  v13 = a2[5];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *(v11 + 16) < *(v14 + 16);
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *a5;
    v20 = a5[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *(v18 + 16) < *(v21 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *(v18 + 16) < *(v21 + 16);
      if (!v19)
      {
LABEL_19:
        if (!v22)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v23 = a2[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v24[4];
        v35 = v24[5];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = *(v33 + 16) < *(v36 + 16);
          std::__shared_weak_count::__release_shared[abi:fe200100](v35);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = *(v33 + 16) < *(v36 + 16);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if (!v37)
            {
              goto LABEL_54;
            }

LABEL_48:
            if (*a4)
            {
              *a3 = v24;
              return v24;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = *(v11 + 16) < *(v14 + 16);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *a5;
  v29 = a5[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = *(v27 + 16) < *(v30 + 16);
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = *(v27 + 16) < *(v30 + 16);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>(a1, a3, a5);
}

uint64_t *std::__tree<unsigned long>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:fe200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *CG::DisplayList::getEntryDrawingState(uint64_t **a1, void *a2, uint64_t a3)
{
  a1[102] = (a1[102] + 1);
  v5 = a1 + 73;
  v6 = a1[73];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = a1 + 73;
  do
  {
    v8 = v6[4];
    v9 = v6[5];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = CG::CompareEntryStateDrawing::operator()(v8, a2, a3);
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    }

    else
    {
      v10 = CG::CompareEntryStateDrawing::operator()(v8, a2, a3);
    }

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v7 = v6;
      v11 = 0;
    }

    v6 = v6[v11];
  }

  while (v6);
  if (v5 == v7)
  {
    goto LABEL_14;
  }

  v12 = v7[4];
  v13 = v7[5];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    if (CG::CompareEntryStateDrawing::operator()(v12, a2, a3))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      goto LABEL_14;
    }

    v15 = v7[4];
    v17 = v7[5];
    v16 = v17 == 0;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (CG::CompareEntryStateDrawing::operator()(v12, a2, a3))
    {
      goto LABEL_14;
    }

    v15 = v7[4];
    v16 = 1;
    v17 = 0;
  }

  v18 = a2[14];
  v19 = v15[1];
  if (v19)
  {
    v19 = *(v19 + 16);
  }

  if (v18)
  {
    v20 = *(v18 + 4);
    if (v19)
    {
LABEL_24:
      v21 = *(v19 + 4);
      goto LABEL_27;
    }
  }

  else
  {
    v20 = 0;
    if (v19)
    {
      goto LABEL_24;
    }
  }

  v21 = 0;
LABEL_27:
  if (v20 < v21)
  {
    goto LABEL_28;
  }

  if (v18)
  {
    LODWORD(v18) = *(v18 + 4);
  }

  if (v19)
  {
    LODWORD(v19) = *(v19 + 4);
  }

  if (v18 > v19)
  {
LABEL_35:
    v22 = 0;
    if (v16)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v23 = a2[15];
  v24 = *(v23 + 40);
  v25 = v15[2];
  if (v25)
  {
    v25 = *(v25 + 16);
  }

  if (!v24)
  {
    v26 = 0;
    if (v25)
    {
      goto LABEL_46;
    }

LABEL_48:
    v27 = 0;
    goto LABEL_49;
  }

  v26 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_48;
  }

LABEL_46:
  v27 = *(v25 + 16);
LABEL_49:
  if (v26 < v27)
  {
    goto LABEL_28;
  }

  if (v24)
  {
    LODWORD(v24) = *(v24 + 16);
  }

  if (v25)
  {
    LODWORD(v25) = *(v25 + 16);
  }

  if (v24 > v25)
  {
    goto LABEL_35;
  }

  v28 = *(v23 + 16);
  v29 = v15[3];
  if (v29)
  {
    v29 = *(v29 + 16);
  }

  v30 = v28 ? *(v28 + 16) : 0;
  v31 = v29 ? *(v29 + 16) : 0;
  if (v30 < v31)
  {
    goto LABEL_28;
  }

  if (v28)
  {
    LODWORD(v28) = *(v28 + 16);
  }

  if (v29)
  {
    LODWORD(v29) = *(v29 + 16);
  }

  if (v28 > v29)
  {
    goto LABEL_35;
  }

  v32 = a2[18];
  v33 = *(v32 + 32);
  v34 = v15[4];
  if (v34)
  {
    v34 = *(v34 + 16);
  }

  v35 = v33 ? *(v33 + 16) : 0;
  v36 = v34 ? *(v34 + 16) : 0;
  if (v35 < v36)
  {
    goto LABEL_28;
  }

  if (v33)
  {
    LODWORD(v33) = *(v33 + 16);
  }

  if (v34)
  {
    LODWORD(v34) = *(v34 + 16);
  }

  if (v33 > v34)
  {
    goto LABEL_35;
  }

  v37 = *(v32 + 40);
  v38 = v15[5];
  if (v38)
  {
    v38 = *(v38 + 16);
  }

  v39 = v37 ? *(v37 + 16) : 0;
  v40 = v38 ? *(v38 + 16) : 0;
  if (v39 < v40)
  {
    goto LABEL_28;
  }

  if (v37)
  {
    LODWORD(v37) = *(v37 + 16);
  }

  if (v38)
  {
    LODWORD(v38) = *(v38 + 16);
  }

  if (v37 > v38)
  {
    goto LABEL_35;
  }

  v41 = *(v32 + 8);
  v42 = *(v15 + 6);
  if (v41 < v42)
  {
    goto LABEL_28;
  }

  if (v41 > v42)
  {
    goto LABEL_35;
  }

  v43 = *(v23 + 8);
  v44 = *(v15 + 7);
  if (v43 < v44)
  {
    goto LABEL_28;
  }

  if (v43 > v44)
  {
    goto LABEL_35;
  }

  v45 = *(v23 + 4);
  v46 = v45 >> 8;
  v47 = *(v15 + 24);
  if (v46 < v47 << 26 >> 26)
  {
    goto LABEL_28;
  }

  if (v46 > v47 << 26 >> 26)
  {
    goto LABEL_35;
  }

  v48 = (v45 & 0x1000000) != 0 ? *(a3 + 81) : 0;
  if (!v48 && (v47 & 0x40) != 0)
  {
    goto LABEL_28;
  }

  if (v48 > (v15[12] & 0x40u) >> 6)
  {
    goto LABEL_35;
  }

  if ((v45 & 0x2000000) == 0 && (v47 & 0x80) != 0)
  {
    goto LABEL_28;
  }

  if ((v45 & 0x2000000) != 0 && (v47 & 0x80) == 0)
  {
    goto LABEL_35;
  }

  v49 = v45 << 12 >> 28;
  if (v49 < v47 << 18 >> 26)
  {
    goto LABEL_28;
  }

  if (v49 > v47 << 18 >> 26)
  {
    goto LABEL_35;
  }

  if ((v47 & 0x4000) != 0 && !*(v32 + 24))
  {
    goto LABEL_28;
  }

  if (v47 & 0x4000) == 0 && (*(v32 + 24))
  {
    goto LABEL_35;
  }

  if ((v47 & 0x8000) != 0 && !*(v32 + 25))
  {
LABEL_28:
    v22 = 1;
    if (v16)
    {
      goto LABEL_37;
    }

LABEL_36:
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    goto LABEL_37;
  }

  if (v47 & 0x8000) == 0 && (*(v32 + 25))
  {
    goto LABEL_35;
  }

  v22 = *(v32 + 28) < *(v15 + 25);
  if (!v16)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (!v13)
  {
    if (!v22)
    {
      return v7[4];
    }

LABEL_14:
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  if (v22)
  {
    goto LABEL_14;
  }

  return v7[4];
}

uint64_t *std::__tree_balance_after_insert[abi:fe200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t CG::DisplayList::clipResourceForClipStack(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1 + 232;
  v4 = *(a1 + 232);
  ++*(a1 + 704);
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = a1 + 232;
  do
  {
    v7 = *(v4 + 32);
    v6 = *(v4 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v8 + 4);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a2 + 4);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    if (v9 >= v10)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (v9 < v10));
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_34;
  }

  v11 = *(v5 + 32);
  v12 = *(v5 + 40);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 16);
  if (v13)
  {
    LODWORD(v13) = *(v13 + 4);
  }

  if (v13 < *(a2 + 4))
  {
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    goto LABEL_34;
  }

  v16 = *(v5 + 32);
  v15 = *(v5 + 40);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v17 + 4);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 4);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  if (v19 < v18)
  {
LABEL_34:
    operator new();
  }

  return *(v5 + 32);
}

double CG::DisplayListResourceClip::setClipStack(uint64_t a1, void *a2, double result)
{
  v4 = *(a1 + 16);
  if (v4 != a2)
  {
    CGClipStackRelease(v4);
    MutableCopy = CGClipStackCreateMutableCopy(a2);
    *(a1 + 16) = MutableCopy;
    if (MutableCopy)
    {
      if (MutableCopy[1])
      {
        *(a1 + 8) |= 0x1000u;
      }

      result = CGClipStackGetBounds(MutableCopy, v7);
      *(a1 + 24) = result;
      *(a1 + 32) = v8;
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
    }

    else
    {
      *(a1 + 8) &= ~0x1000u;
      result = CGRectInfinite.origin.x;
      *(a1 + 24) = CGRectInfinite;
    }
  }

  return result;
}

void *CGClipStackCreateMutableCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x98uLL, 0x10A2040CE17A557uLL);
  v3 = v2;
  *v2 = 1;
  *(v2 + 4) = *(a1 + 4);
  v4 = *(a1 + 96);
  *(v2 + 5) = *(a1 + 80);
  *(v2 + 6) = v4;
  v5 = *(a1 + 64);
  *(v2 + 3) = *(a1 + 48);
  *(v2 + 4) = v5;
  v6 = *(a1 + 32);
  *(v2 + 1) = *(a1 + 16);
  *(v2 + 2) = v6;
  v2[14] = 3;
  v2[15] = 0;
  v7 = v2 + 15;
  v2[16] = 0;
  v8 = *(a1 + 120);
  if (!v8)
  {
    return v3;
  }

  if (*(a1 + 112) == 3)
  {
    *v7 = v8;
    v9 = 16;
    do
    {
      v10 = *(a1 + 8 * v9);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
      }

      v2[v9] = v10;
      v11 = v9 - 15;
      ++v9;
    }

    while (v11 < v2[15]);
    return v3;
  }

  v12 = v8 + 3;
  v13 = malloc_type_malloc(8 * (v8 + 3), 0x2004093837F09uLL);
  if (!v13)
  {
    CGClipStackRelease(v3);
    return 0;
  }

  v3[16] = v13;
  v14 = *(a1 + 120);
  v3[14] = v12;
  v3[15] = v14;
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(*(a1 + 128) + 8 * i);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
        v14 = *v7;
      }

      *(v3[16] + 8 * i) = v16;
    }
  }

  return v3;
}

void sub_183EAF2E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceClip>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_15;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[4];
  v13 = a2[5];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(v11 + 16);
  if (v15)
  {
    v16 = *(v15 + 4);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v14 + 16);
  if (v17)
  {
    v18 = *(v17 + 4);
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = 0;
  if (v13)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  if (v16 >= v18)
  {
    v21 = a2[4];
    v22 = a2[5];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *a5;
    v23 = a5[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *(v21 + 16);
    if (v25)
    {
      v26 = *(v25 + 4);
    }

    else
    {
      v26 = 0;
    }

    v37 = *(v24 + 16);
    if (v37)
    {
      v38 = *(v37 + 4);
      if (!v23)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v38 = 0;
      if (!v23)
      {
LABEL_52:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v22);
        }

        if (v26 >= v38)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v39 = a2[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          v41 = a2;
          do
          {
            v40 = v41[2];
            v28 = *v40 == v41;
            v41 = v40;
          }

          while (!v28);
        }

        if (v40 == v9)
        {
          goto LABEL_78;
        }

        v42 = *a5;
        v43 = a5[1];
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = v40[4];
        v44 = v40[5];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = *(v42 + 16);
        if (v46)
        {
          v47 = *(v46 + 4);
        }

        else
        {
          v47 = 0;
        }

        v48 = *(v45 + 16);
        if (v48)
        {
          v49 = *(v48 + 4);
          if (!v44)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v49 = 0;
          if (!v44)
          {
LABEL_75:
            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v43);
            }

            if (v47 >= v49)
            {
              goto LABEL_80;
            }

LABEL_78:
            if (*a4)
            {
              *a3 = v40;
              return v40;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        std::__shared_weak_count::__release_shared[abi:fe200100](v44);
        goto LABEL_75;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
    goto LABEL_52;
  }

LABEL_15:
  if (*a1 == a2)
  {
    v20 = a2;
LABEL_43:
    if (*a2)
    {
      *a3 = v20;
      return v20 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v19 = *a2;
  if (*a2)
  {
    do
    {
      v20 = v19;
      v19 = v19[1];
    }

    while (v19);
  }

  else
  {
    v27 = a2;
    do
    {
      v20 = v27[2];
      v28 = *v20 == v27;
      v27 = v20;
    }

    while (v28);
  }

  v29 = v20[4];
  v30 = v20[5];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *a5;
  v31 = a5[1];
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = *(v29 + 16);
  if (v33)
  {
    v34 = *(v33 + 4);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v32 + 16);
  if (v35)
  {
    v36 = *(v35 + 4);
    if (!v31)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v36 = 0;
  if (v31)
  {
LABEL_39:
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

LABEL_40:
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  if (v34 < v36)
  {
    goto LABEL_43;
  }

LABEL_80:

  return std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceClip>>(a1, a3, a5);
}

uint64_t CG::DisplayList::functionResourceForFunction(CG::DisplayList *this, CGFunction *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 98);
  v3 = this + 496;
  v4 = *(this + 62);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 496;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

uint64_t CG::DisplayList::softMaskResourceForSoftMask(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++a1[97];
  v3 = a1 + 59;
  v4 = a1[59];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = a1 + 59;
  do
  {
    v7 = *(v4 + 32);
    v6 = *(v4 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (v8 < a2));
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = v5[4];
  v10 = v5[5];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = v5[4];
    v12 = v5[5];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return v5[4];
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return v5[4];
}

uint64_t CG::DisplayList::styleResourceForStyle(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++a1[96];
  v3 = a1 + 56;
  v4 = a1[56];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = a1 + 56;
  do
  {
    v7 = *(v4 + 32);
    v6 = *(v4 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (v8 < a2));
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = v5[4];
  v10 = v5[5];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = v5[4];
    v12 = v5[5];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return v5[4];
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return v5[4];
}

CFDictionaryRef CGCFDictionaryCreateCopy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryCreateCopy(0, a1);
}

void sub_183EAFDFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateDrawing const>,CG::CompareEntryStateDrawing,std::allocator<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2[4];
  v14 = a2[5];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = CG::CompareEntryStateDrawing::operator()(v11, v13);
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *a5;
    v21 = a5[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = CG::CompareEntryStateDrawing::operator()(v18, v20);
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = CG::CompareEntryStateDrawing::operator()(v18, v20);
      if (!v19)
      {
LABEL_19:
        if (!v22)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v23 = a2[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = v24[4];
        v36 = v24[5];
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = CG::CompareEntryStateDrawing::operator()(v33, v35);
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = CG::CompareEntryStateDrawing::operator()(v33, v35);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if (!v37)
            {
              goto LABEL_54;
            }

LABEL_48:
            if (*a4)
            {
              *a3 = v24;
              return v24;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = CG::CompareEntryStateDrawing::operator()(v11, v13);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *a5;
  v30 = a5[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = CG::CompareEntryStateDrawing::operator()(v27, v29);
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = CG::CompareEntryStateDrawing::operator()(v27, v29);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListEntryStateDrawing const>,CG::CompareEntryStateDrawing,std::allocator<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>(a1, a3, a5);
}

uint64_t CGGStateGetFillColor(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    v3 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
    *(a1 + 72) = CGColorSpaceCopyDefaultColor(v3);
    CGColorSpaceRelease(v3);
    return *(a1 + 72);
  }

  return result;
}

uint64_t CG::DisplayList::colorResourceForColor(CG::DisplayList *this, unint64_t a2)
{
  result = 0;
  if (a2 && (*(this + 59) & 1) != 0)
  {
    ++*(this + 89);
    v5 = *(this + 32);
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = (this + 256);
    do
    {
      v7 = CGColorCompare(*(v5[4] + 16), a2);
      if (v7 != -1)
      {
        v6 = v5;
      }

      v5 = v5[v7 == -1];
    }

    while (v5);
    if (v6 == (this + 256) || CGColorCompare(*(v6[4] + 16), a2) == -1 || CGColorCompare(a2, *(v6[4] + 16)) == -1)
    {
LABEL_11:
      operator new();
    }

    return v6[4];
  }

  return result;
}

uint64_t CG::DisplayList::colorSpaceResourceForColorSpace(CG::DisplayList *this, CGColorSpace *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 90);
  v3 = this + 280;
  v4 = *(this + 35);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 280;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

void sub_183EB0660(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_183EB0700(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::shared_ptr<CG::DisplayListResourceColor>,CG::CompareResourceColor,std::allocator<std::shared_ptr<CG::DisplayListResourceColor>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColor>>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || CGColorCompare(*(*a5 + 16), *(a2[4] + 16)) == -1)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if (CGColorCompare(*(v12[4] + 16), *(*a5 + 16)) != -1)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (CGColorCompare(*(a2[4] + 16), *(*a5 + 16)) != -1)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (CGColorCompare(*(*a5 + 16), *(v15[4] + 16)) == -1)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::shared_ptr<CG::DisplayListResourceColor>,CG::CompareResourceColor,std::allocator<std::shared_ptr<CG::DisplayListResourceColor>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColor>>(a1, a3, a5);
}

uint64_t CG::DisplayList::getEntryFillState(CG::DisplayList *this, const CG::DisplayListResourceColor *a2)
{
  ++*(this + 103);
  v3 = this + 608;
  v4 = *(this + 76);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = this + 608;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 8);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 8);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_13;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (!v10)
  {
    if (*(v9 + 8) == a2)
    {
      return *(v5 + 4);
    }

LABEL_13:
    operator new();
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  if (*(v9 + 8) < a2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    goto LABEL_13;
  }

  v13 = *(v5 + 4);
  v12 = *(v5 + 5);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = *(v13 + 8);
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  else
  {
    v14 = *(v13 + 8);
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  if (v14 > a2)
  {
    goto LABEL_13;
  }

  return *(v5 + 4);
}

void sub_183EB0B40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateFill const>,CG::CompareEntryStateFill,std::allocator<std::shared_ptr<CG::DisplayListEntryStateFill const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateFill const>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[4];
  v13 = a2[5];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *(v11 + 8) < *(v14 + 8);
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *a5;
    v20 = a5[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *(v18 + 8) < *(v21 + 8);
      std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *(v18 + 8) < *(v21 + 8);
      if (!v19)
      {
LABEL_19:
        if (!v22)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v23 = a2[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v24[4];
        v35 = v24[5];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = *(v33 + 8) < *(v36 + 8);
          std::__shared_weak_count::__release_shared[abi:fe200100](v35);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = *(v33 + 8) < *(v36 + 8);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if (!v37)
            {
              goto LABEL_54;
            }

LABEL_48:
            if (*a4)
            {
              *a3 = v24;
              return v24;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = *(v11 + 8) < *(v14 + 8);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *a5;
  v29 = a5[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = *(v27 + 8) < *(v30 + 8);
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = *(v27 + 8) < *(v30 + 8);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListEntryStateFill const>,CG::CompareEntryStateFill,std::allocator<std::shared_ptr<CG::DisplayListEntryStateFill const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateFill const>>(a1, a3, a5);
}

CGPoint *CG::DisplayListEntryGlyphs::setGlyphsAndPositions(CG::DisplayListEntryGlyphs *this, unsigned __int16 *a2, const CGPoint *a3, uint64_t a4)
{
  v7 = *(this + 29);
  if (v7 != a2)
  {
    free(v7);
    *(this + 29) = 0;
    v9 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
    *(this + 29) = v9;
    if (v9)
    {
      memcpy(v9, a2, 2 * a4);
    }
  }

  result = *(this + 30);
  if (result != a3)
  {
    free(result);
    *(this + 30) = 0;
    result = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
    *(this + 30) = result;
    if (*(this + 29))
    {
      result = memcpy(result, a3, 16 * a4);
    }
  }

  *(this + 31) = a4;
  return result;
}

void CG::DisplayList::appendEntry(CG::DisplayList *this, const CG::DisplayListEntry *a2)
{
  v4 = this + 8 * *(a2 + 8);
  ++*(v4 + 106);
  if ((*(a2 + 10) & 0x10) != 0)
  {
    *(this + 174) = (*(this + 85) - *(this + 84)) >> 4;
  }

  if (*(this + 57) == 1)
  {
    v5 = *(a2 + 2);
    v13.origin = *(a2 + 1);
    v13.size = v5;
    CG::DisplayList::updateBoundingAndTransparentShapes(this, &v13, *(a2 + 2) >> 8);
  }

  v6 = *(this + 85);
  v7 = *(this + 86);
  if (v6 < v7)
  {
    std::shared_ptr<CG::DisplayListEntry const>::shared_ptr[abi:fe200100]<CG::DisplayListEntry const,0>(*(this + 85), a2);
  }

  v8 = *(this + 84);
  v9 = (v6 - v8) >> 4;
  if (!((v9 + 1) >> 60))
  {
    v10 = v7 - v8;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v14 = this + 672;
    if (v12)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<CG::DisplayListEntry const>>>(v12);
    }

    v13.origin.x = 0.0;
    *&v13.origin.y = 16 * v9;
    v13.size = (16 * v9);
    std::shared_ptr<CG::DisplayListEntry const>::shared_ptr[abi:fe200100]<CG::DisplayListEntry const,0>((16 * v9), a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

void CG::DisplayList::updateBoundingAndTransparentShapes(CG::DisplayList *this, const CGRect *a2, __int16 a3)
{
  if (*(this + 57) == 1)
  {
    *(this + 72) = CGRectUnion(*(this + 72), *a2);
    if ((a3 & 0x1000) != 0)
    {
      v6 = *(this + 13);
      v27 = CGRectIntegral(*a2);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
      if (v27.size.width < 0.0 || v27.size.height < 0.0)
      {
        v17 = COERCE_DOUBLE(CGRectStandardize(v27));
        if (v17 <= 1073741820.0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1073741820.0;
        }

        if (v17 >= -1073741820.0)
        {
          v13 = v18;
        }

        else
        {
          v13 = 3221225472;
        }

        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v29 = CGRectStandardize(v28);
        if (v29.origin.y <= 1073741820.0)
        {
          v19 = v29.origin.y;
        }

        else
        {
          v19 = 1073741820.0;
        }

        if (v29.origin.y >= -1073741820.0)
        {
          v15 = v19;
        }

        else
        {
          v15 = 3221225472;
        }

        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v31 = CGRectStandardize(v30);
        v20 = v31.origin.x + v31.size.width;
        if (v20 <= 1073741820.0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 1073741820.0;
        }

        if (v20 >= -1073741820.0)
        {
          v16 = v21;
        }

        else
        {
          v16 = 3221225472;
        }

        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33 = CGRectStandardize(v32);
        y = v33.origin.y;
        height = v33.size.height;
      }

      else
      {
        v11 = 1073741820.0;
        if (x <= 1073741820.0)
        {
          v12 = x;
        }

        else
        {
          v12 = 1073741820.0;
        }

        if (x >= -1073741820.0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 3221225472;
        }

        if (y <= 1073741820.0)
        {
          v14 = y;
        }

        else
        {
          v14 = 1073741820.0;
        }

        if (y >= -1073741820.0)
        {
          v15 = v14;
        }

        else
        {
          v15 = 3221225472;
        }

        if (x + width <= 1073741820.0)
        {
          v11 = x + width;
        }

        if (x + width >= -1073741820.0)
        {
          v16 = v11;
        }

        else
        {
          v16 = 3221225472;
        }
      }

      v22 = 1073741820.0;
      if (y + height <= 1073741820.0)
      {
        v22 = y + height;
      }

      if (y + height >= -1073741820.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 3221225472;
      }

      if (v13 < v16 && v15 < v23)
      {
        v25 = *v6;
        if (!*v6)
        {
          v25 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
          *(v25 + 8) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 40) = 0u;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 120) = 0u;
          *(v25 + 136) = 0u;
          *(v25 + 152) = 0u;
          *(v25 + 168) = 0u;
          *(v25 + 184) = 0u;
          *(v25 + 200) = 0u;
          *(v25 + 216) = 0u;
          *(v25 + 232) = 0u;
          *(v25 + 248) = 0u;
          *(v25 + 33) = 0;
          *v25 = 8;
          *(v25 + 2) = v25 + 32;
          *(v25 + 3) = v25 + 160;
          *v6 = v25;
        }

        if (shape_accum_add(v25, v13, v15, v16, v23) >= 1)
        {
          v26 = v6[1];
          if (v26)
          {
            if (v26 != &the_empty_shape)
            {
              free(v26);
            }

            v6[1] = 0;
          }

          *(v6 + 12) &= ~1u;
        }
      }
    }
  }
}

unsigned int *CG::DisplayListEntryGlyphs::_hash(char *a1, unsigned int *a2)
{
  v4 = *(a1 + 10);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (*(*(v5 + 16) + 152))(*(v5 + 112));
      if (v6)
      {
        v7 = v6;
        v8 = strlen(v6);
        XXH64_update(a2, v7, v8);
      }
    }
  }

  XXH64_update(a2, a1 + 88, 0x30uLL);
  XXH64_update(a2, a1 + 136, 0x30uLL);
  XXH64_update(a2, a1 + 184, 8uLL);
  XXH64_update(a2, a1 + 192, 0x10uLL);
  XXH64_update(a2, a1 + 216, 4uLL);
  XXH64_update(a2, a1 + 220, 4uLL);
  v9 = *(a1 + 29);
  if (v9)
  {
    XXH64_update(a2, v9, 2 * *(a1 + 31));
  }

  v10 = *(a1 + 30);
  if (v10)
  {
    XXH64_update(a2, v10, 16 * *(a1 + 31));
  }

  return CG::DisplayListEntry::_hash(a1, a2);
}

unsigned int *XXH64_update(unsigned int *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = result[18];
    if (v6 + __n > 0x1F)
    {
      v7 = &__src[__n];
      if (v6)
      {
        result = memcpy(result + v6 + 40, __src, (32 - v6));
        v8 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
        *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
        *(v5 + 2) = 0x9E3779B185EBCA87 * v8;
        v9 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
        *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
        *(v5 + 4) = v9;
        v4 += 32 - v5[18];
        v5[18] = 0;
      }

      if (v4 + 32 <= v7)
      {
        v10 = *(v5 + 1);
        v11 = *(v5 + 2);
        v12 = *(v5 + 3);
        v13 = *(v5 + 4);
        do
        {
          v10 = 0x9E3779B185EBCA87 * __ROR8__(v10 - 0x3D4D51C2D82B14B1 * *v4, 33);
          *(v5 + 1) = v10;
          v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
          *(v5 + 2) = v11;
          v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
          *(v5 + 3) = v12;
          v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
          *(v5 + 4) = v13;
          v4 += 32;
        }

        while (v4 <= v7 - 32);
      }

      if (v4 < v7)
      {
        v14 = v7 - v4;
        result = memcpy(v5 + 10, v4, v14);
        v5[18] = v14;
      }
    }

    else
    {
      result = memcpy(result + v6 + 40, __src, __n);
      v5[18] += v3;
    }
  }

  return result;
}

unsigned int *CG::DisplayListEntry::_hash(uint64_t a1, unsigned int *a2)
{
  __src = *(a1 + 8);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 8) >> 8;
  XXH64_update(a2, &__src, 4uLL);

  return XXH64_update(a2, (a1 + 16), 0x20uLL);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<CG::DisplayListEntry const>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void sub_183EB1750(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::shared_ptr<TextLine>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double CGContextGetEDRTargetHeadroom(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    LODWORD(result) = *(*(*(a1 + 96) + 120) + 48);
  }

  else
  {
    handle_invalid_context("CGContextGetEDRTargetHeadroom", a1);
    return 0.0;
  }

  return result;
}

void context_reclaim(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 40) = 0;
      }

      v3 = *(a1 + 48);
      if (v3)
      {
        v3(a1);
        *(a1 + 48) = 0;
      }

      return;
    }

    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  handle_invalid_context("context_reclaim", v4);
}

double CGContextDelegateFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 24);
    *(a1 + 16) = 0;
    if (v3)
    {
      v3(a1);
    }

    v4 = unk_1EF23D400;
    *(a1 + 216) = xmmword_1EF23D3F0;
    *(a1 + 232) = v4;
    v5 = unk_1EF23D420;
    *(a1 + 248) = xmmword_1EF23D410;
    *(a1 + 264) = v5;
    v6 = *&off_1EF23D3C0;
    *(a1 + 152) = xmmword_1EF23D3B0;
    *(a1 + 168) = v6;
    v7 = *&off_1EF23D3E0;
    *(a1 + 184) = xmmword_1EF23D3D0;
    *(a1 + 200) = v7;
    v8 = *&off_1EF23D380;
    *(a1 + 88) = xmmword_1EF23D370;
    *(a1 + 104) = v8;
    v9 = *&off_1EF23D3A0;
    *(a1 + 120) = xmmword_1EF23D390;
    *(a1 + 136) = v9;
    v10 = *&off_1EF23D340;
    *(a1 + 24) = gZombieVTable;
    *(a1 + 40) = v10;
    result = *&xmmword_1EF23D350;
    v12 = *&off_1EF23D360;
    *(a1 + 56) = xmmword_1EF23D350;
    *(a1 + 72) = v12;
    *(a1 + 288) = 0;
  }

  return result;
}

void dlRecorder_Finalize(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 288)) != 0)
  {
    v3 = *(*v2 + 8);

    v3();
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_Finalize");
  }
}

void CG::DisplayListRecorder::~DisplayListRecorder(CG::DisplayListRecorder *this)
{
  CG::DisplayListRecorder::~DisplayListRecorder(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23A9F8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __CGColorCreate_block_invoke()
{
  v0 = *MEMORY[0x1E69E5908];
  if (*MEMORY[0x1E69E5908])
  {
    LOBYTE(v0) = _objc_getClassForTag() != 0;
  }

  CGColorCreate_supportsTaggedPointers = v0;
}

uint64_t *__color_space_state_create_sRGB_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncSRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_sRGB_s = v1;
  return result;
}

void __CGColorSpaceCreateWithName_block_invoke()
{
  v3[88] = *MEMORY[0x1E69E9840];
  v3[0] = @"kCGColorSpaceDeviceGray";
  v3[1] = CGColorSpaceCreateDeviceGray;
  v3[2] = @"kCGColorSpaceDeviceRGB";
  v3[3] = CGColorSpaceCreateDeviceRGB;
  v3[4] = @"kCGColorSpaceDeviceCMYK";
  v3[5] = CGColorSpaceCreateDeviceCMYK;
  v3[6] = @"kCGColorSpaceUncalibratedGray";
  v3[7] = CGColorSpaceCreateUncalibratedGray;
  v3[8] = @"kCGColorSpaceUncalibratedRGB";
  v3[9] = CGColorSpaceCreateUncalibratedRGB;
  v3[10] = @"kCGColorSpaceUncalibratedCMYK";
  v3[11] = CGColorSpaceCreateUncalibratedCMYK;
  v3[12] = @"kCGColorSpaceGenericGray";
  v3[13] = CGColorSpaceCreateGenericGray;
  v3[14] = @"kCGColorSpaceGenericRGB";
  v3[15] = CGColorSpaceCreateGenericRGB;
  v3[16] = @"kCGColorSpaceGenericCMYK";
  v3[17] = CGColorSpaceCreateGenericCMYK;
  v3[18] = @"kCGColorSpaceDisplayP3";
  v3[19] = CGColorSpaceCreateDisplayP3;
  v3[20] = @"kCGColorSpaceExtendedDisplayP3";
  v3[21] = CGColorSpaceCreateExtendedDisplayP3;
  v3[22] = @"kCGColorSpaceLinearDisplayP3";
  v3[23] = CGColorSpaceCreateLinearDisplayP3;
  v3[24] = @"kCGColorSpaceExtendedLinearDisplayP3";
  v3[25] = CGColorSpaceCreateExtendedLinearDisplayP3;
  v3[26] = @"kCGColorSpaceDisplayP3_PQ";
  v3[27] = CGColorSpaceCreateDisplayP3_PQ;
  v3[28] = @"kCGColorSpaceDisplayP3_HLG";
  v3[29] = CGColorSpaceCreateDisplayP3_HLG;
  v3[30] = @"kCGColorSpaceDisplayP3_709OETF";
  v3[31] = CGColorSpaceCreateDisplayP3_709OETF;
  v3[32] = @"kCGColorSpaceGenericGrayGamma2_2";
  v3[33] = CGColorSpaceCreateGenericGrayGamma22;
  v3[34] = @"kCGColorSpaceAdobeRGB1998";
  v3[35] = CGColorSpaceCreateAdobeRGB1998;
  v3[36] = @"kCGColorSpaceSRGB";
  v3[37] = CGColorSpaceCreateSRGB;
  v3[38] = @"kCGColorSpaceGenericLab";
  v3[39] = CGColorSpaceCreateGenericLab;
  v3[40] = @"kCGColorSpaceGenericRGBLinear";
  v3[41] = CGColorSpaceCreateGenericRGBLinear;
  v3[42] = @"kCGColorSpaceGenericXYZ";
  v3[43] = CGColorSpaceCreateGenericXYZ;
  v3[44] = @"kCGColorSpaceACESCGLinear";
  v3[45] = CGColorSpaceCreateACESCGLinear;
  v3[46] = @"kCGColorSpaceITUR_709";
  v3[47] = CGColorSpaceCreateITUR_709;
  v3[48] = @"kCGColorSpaceITUR_709_PQ";
  v3[49] = CGColorSpaceCreateITUR_709_PQ;
  v3[50] = @"kCGColorSpaceITUR_709_HLG";
  v3[51] = CGColorSpaceCreateITUR_709_HLG;
  v3[52] = @"kCGColorSpaceITUR_2020";
  v3[53] = CGColorSpaceCreateITUR_2020;
  v3[54] = @"kCGColorSpaceITUR_2020_sRGBGamma";
  v3[55] = CGColorSpaceCreateITUR_2020_sRGBGamma;
  v3[56] = @"kCGColorSpaceLinearITUR_2020";
  v3[57] = CGColorSpaceCreateLinearITUR_2020;
  v3[58] = @"kCGColorSpaceExtendedITUR_2020";
  v3[59] = CGColorSpaceCreateExtendedITUR_2020;
  v3[60] = @"kCGColorSpaceExtendedLinearITUR_2020";
  v3[61] = CGColorSpaceCreateExtendedLinearITUR_2020;
  v3[62] = @"kCGColorSpaceITUR_2100_PQ";
  v3[63] = CGColorSpaceCreateITUR_2100_PQ;
  v3[64] = @"kCGColorSpaceITUR_2100_HLG";
  v3[65] = CGColorSpaceCreateITUR_2100_HLG;
  v3[66] = @"kCGColorSpaceROMMRGB";
  v3[67] = CGColorSpaceCreateROMMRGB;
  v3[68] = @"kCGColorSpaceDCIP3";
  v3[69] = CGColorSpaceCreateDCIP3;
  v3[70] = @"kCGColorSpaceExtendedSRGB";
  v3[71] = CGColorSpaceExtendedSRGB;
  v3[72] = @"kCGColorSpaceLinearSRGB";
  v3[73] = CGColorSpaceLinearSRGB;
  v3[74] = @"kCGColorSpaceExtendedLinearSRGB";
  v3[75] = CGColorSpaceExtendedLinearSRGB;
  v3[76] = @"kCGColorSpaceExtendedGray";
  v3[77] = CGColorSpaceExtendedGray;
  v3[78] = @"kCGColorSpaceLinearGray";
  v3[79] = CGColorSpaceLinearGray;
  v3[80] = @"kCGColorSpaceExtendedLinearGray";
  v3[81] = CGColorSpaceExtendedLinearGray;
  v3[82] = @"kCGColorSpacePerceptualStandardRGB";
  v3[83] = CGColorSpacePerceptualStandardRGB;
  v3[84] = @"kCGColorSpaceCoreMedia709";
  v3[85] = CGColorSpaceCoreMedia709;
  v3[86] = @"kCGColorSpaceColoredPattern";
  v3[87] = CGColorSpaceCreateColoredPattern;
  v0 = 0;
  CGColorSpaceCreateWithName_name_creator_pair_dict = CFDictionaryCreateMutable(0, 44, MEMORY[0x1E695E9D8], 0);
  do
  {
    CFDictionarySetValue(CGColorSpaceCreateWithName_name_creator_pair_dict, v3[v0], v3[v0 + 1]);
    v0 += 2;
  }

  while (v0 != 88);
  v1 = malloc_type_malloc(0x2C0uLL, 0xE004020B7322BuLL);
  v2 = 0;
  CGColorSpaceCreateWithName_name_creator_pair_array = v1;
  CGColorSpaceCreateWithName_name_creator_pair_count = 1;
  do
  {
    *&v1[v2 * 8] = *&v3[v2];
    v2 += 2;
  }

  while (v2 != 88);

  qsort(v1, 0x2CuLL, 0x10uLL, compare_names);
}

uint64_t (*__color_space_state_create_sRGB_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_sRGB_f = v1;
  return result;
}

uint64_t compare_names(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t create_singleton(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  *(v1 + 8) = 1;
  v3 = CGColorSpaceCreateWithState(v1);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v2);
  }

  return v3;
}

void __CGLibraryLoadColorSyncDYLD_block_invoke()
{
  CGLibraryLoadColorSyncDYLD_handle = dlopen("/System/Library/Frameworks/ColorSync.framework/ColorSync", 5);
  if (!CGLibraryLoadColorSyncDYLD_handle)
  {
    CGPostError("Failed to load %s", "/System/Library/Frameworks/ColorSync.framework/ColorSync");
  }
}

void __CGColorSpaceCreateSRGB_block_invoke()
{
  CGColorSpaceCreateSRGB_space = create_singleton(color_space_state_create_sRGB);
  CGColorSpaceSetProperty(CGColorSpaceCreateSRGB_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateSRGB_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceLinearSRGB");
  CGColorSpaceSetProperty(CGColorSpaceCreateSRGB_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedSRGB");
  v0 = CGColorSpaceCreateSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
}

char *color_space_state_create_sRGB()
{
  if (color_space_state_create_sRGB_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_sRGB_cglibrarypredicate, &__block_literal_global_114);
  }

  v0 = color_space_state_create_sRGB_f;
  if (color_space_state_create_sRGB_cglibrarypredicate_115 != -1)
  {
    dispatch_once(&color_space_state_create_sRGB_cglibrarypredicate_115, &__block_literal_global_118);
  }

  v1 = v0(color_space_state_create_sRGB_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceSRGB";
    *(icc_with_profile + 5) = 15;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1";
  }

  return icc_with_profile;
}

uint64_t __CGColorGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorGetTypeID_class);
  CGColorGetTypeID_color_type_id = result;
  return result;
}

uint64_t __CGColorSpaceCreateDeviceRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_device_rgb);
  CGColorSpaceCreateDeviceRGB_space = result;
  return result;
}

double color_space_state_create_device_rgb()
{
  v0 = malloc_type_calloc(0x78uLL, 1uLL, 0x934B7D4DuLL);
  if (v0)
  {
    *v0 = 1;
    v0[12] = 1;
    *(v0 + 2) = 0x10000;
    *(v0 + 7) = 256;
    *(v0 + 6) = 1;
    *(v0 + 14) = &device_rgb_vtable;
    *(v0 + 28) = 0x100000001;
    *(v0 + 11) = 0;
    *(v0 + 12) = 0;
    *(v0 + 10) = @"kCGColorSpaceDeviceRGB";
    *(v0 + 5) = &device_rgb_get_default_color_components_default_rgb;
    *(v0 + 6) = 3;
    result = 2.51837737e257;
    *(v0 + 4) = xmmword_18439CA40;
  }

  return result;
}

uint64_t __CGColorSpaceGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorSpaceGetTypeID_class);
  CGColorSpaceGetTypeID_type_id = result;
  return result;
}

uint64_t __CGTypeRegisterInternal(unsigned int *a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10D00408820D60FuLL);
  v3 = *a1;
  *v2 = v3;
  *(v2 + 8) = *(a1 + 2);
  *(v2 + 24) = *(a1 + 6);
  *(v2 + 40) = *(a1 + 10);
  v4 = *(a1 + 7);
  if (!v4)
  {
    v4 = copy_description;
  }

  *(v2 + 7) = v4;
  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = copy_debug_description_23288;
  }

  *(v2 + 8) = v5;
  if ((v3 & 4) != 0)
  {
    v6 = *(a1 + 9);
  }

  else
  {
    v6 = 0;
  }

  *(v2 + 9) = v6;
  if ((v3 & 8) != 0)
  {
    v7 = *(a1 + 10);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + 10) = v7;
  if ((v3 & 0x10) != 0)
  {
    v8 = *(a1 + 11);
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 11) = v8;

  return _CFRuntimeRegisterClass();
}

uint64_t __CGDataProviderGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGDataProviderGetTypeID_runtime_class);
  CGDataProviderGetTypeID_id = result;
  return result;
}

uint64_t (*__color_space_state_create_icc_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileVerify");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_f = v1;
  return result;
}

uint64_t (*__color_space_state_create_icc_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncCreateOutputPoppyProfile");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_f_22 = v1;
  return result;
}

void CGColorSpaceSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v6 == CGColorSpaceGetTypeID_type_id)
    {
      pthread_mutex_lock((a1 + 32));
      v7 = *(*(a1 + 24) + 88);
      if (!v7)
      {
        v7 = CGPropertiesCreate();
        *(*(a1 + 24) + 88) = v7;
      }

      CGPropertiesSetProperty(v7, a2, a3);

      pthread_mutex_unlock((a1 + 32));
    }
  }
}

uint64_t CGColorSpaceCreateGenericGrayGamma22()
{
  if (CGColorSpaceCreateGenericGrayGamma22_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericGrayGamma22_predicate, &__block_literal_global_212_6601);
  }

  v0 = CGColorSpaceCreateGenericGrayGamma22_space;
  if (CGColorSpaceCreateGenericGrayGamma22_space)
  {
    CFRetain(CGColorSpaceCreateGenericGrayGamma22_space);
  }

  return v0;
}

void *CGImageProviderGetColorSpace(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[15];
    if (!v2)
    {
      return v1[5];
    }

    result = CGPropertiesGetProperty(v2, @"kCGImageProviderColorSpaceChangedOnImageCopy");
    if (!result)
    {
      return v1[5];
    }
  }

  return result;
}

uint64_t color_transform_create(CGColorSpace *space, const void *a2)
{
  v2 = space;
  if (!space)
  {
    goto LABEL_51;
  }

  Type = CGColorSpaceGetType(space);
  if (Type <= 0xB)
  {
    if (((1 << Type) & 0xC78) != 0)
    {
      CFRetain(v2);
      goto LABEL_12;
    }

    if (Type == 1)
    {
      v5 = @"kCGColorSpaceSRGB";
      goto LABEL_11;
    }

    if (Type == 2)
    {
      v5 = @"kCGColorSpaceGenericCMYK";
      goto LABEL_11;
    }
  }

  if (Type)
  {
    v2 = 0;
    goto LABEL_51;
  }

  v5 = @"kCGColorSpaceGenericGrayGamma2_2";
LABEL_11:
  v2 = CGColorSpaceCreateWithName(v5);
  if (!v2)
  {
LABEL_51:
    CGColorSpaceRelease(v2);
    return 0;
  }

LABEL_12:
  if (!CGColorSpaceSupportsOutput(v2))
  {
    goto LABEL_51;
  }

  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  Instance = CGTypeCreateInstance(CGColorTransformGetTypeID_type_id, 88);
  v7 = Instance;
  *(Instance + 20) = 1;
  *(Instance + 96) = 1;
  if (a2)
  {
    CFRetain(a2);
    *(v7 + 32) = a2;
    v8 = v2;
    v9 = a2;
  }

  else
  {
    *(Instance + 32) = 0;
    v8 = v2;
    v9 = 0;
  }

  *(v7 + 24) = CGColorTransformBaseAcquire(v8, v9);
  *(v7 + 16) = atomic_fetch_add_explicit(color_transform_create_identifier, 1u, memory_order_relaxed) + 1;
  *(v7 + 88) = 0;
  v10 = *(*(v2 + 3) + 48);
  if (v10 <= 4)
  {
    v11 = malloc_type_calloc(1uLL, 0x58uLL, 0x1020040867A26DAuLL);
    *(v7 + 88) = v11;
    LODWORD(v11[1].__sig) = v10;
    *&v11[1].__opaque[8] = 0;
    pthread_mutex_init(v11, 0);
  }

  if (a2)
  {
    *(v7 + 40) = create_default_color_space(a2, @"DefaultGray", 0);
    *(v7 + 48) = create_default_color_space(a2, @"DefaultRGB", 1);
    *(v7 + 56) = create_default_color_space(a2, @"DefaultCMYK", 2);
  }

  if (!*(v7 + 40))
  {
    *(v7 + 40) = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  }

  if (!*(v7 + 48))
  {
    *(v7 + 48) = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  }

  if (!*(v7 + 56))
  {
    *(v7 + 56) = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  }

  if (!*(v7 + 64))
  {
    v12 = *(v7 + 40);
    if (CGColorSpaceGetModel(v2) == kCGColorSpaceModelMonochrome)
    {
      v12 = v2;
    }

    if (v12)
    {
      CFRetain(v12);
    }

    *(v7 + 64) = v12;
  }

  if (!*(v7 + 72))
  {
    v13 = *(v7 + 48);
    if (CGColorSpaceGetModel(v2) == kCGColorSpaceModelRGB)
    {
      v13 = v2;
    }

    if (v13)
    {
      CFRetain(v13);
    }

    *(v7 + 72) = v13;
  }

  if (!*(v7 + 80))
  {
    v14 = *(v7 + 56);
    if (CGColorSpaceGetModel(v2) == kCGColorSpaceModelCMYK)
    {
      v14 = v2;
    }

    if (v14)
    {
      CFRetain(v14);
    }

    *(v7 + 80) = v14;
  }

  CGColorSpaceRelease(v2);
  if (show_log_predicate != -1)
  {
    dispatch_once(&show_log_predicate, &__block_literal_global_61_17658);
  }

  if (show_log_show_log == 1)
  {
    v15 = CGBacktraceCreate(10);
    CGPostError("CGColorTransform %p created. Backtrace:\n%s\n", v7, v15);
    free(v15);
  }

  return v7;
}

uint64_t CGColorTransformBaseAcquire(void *a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&cacheMutex);
  v4 = base_cache;
  if (base_cache)
  {
    while (1)
    {
      Instance = *v4;
      v6 = *(*v4 + 24);
      if ((!(a2 | v6) || a2 && v6 && CFEqual(a2, v6)) && matches_space(*(Instance + 16), a1))
      {
        break;
      }

      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    ++*(Instance + 32);
  }

  else
  {
LABEL_8:
    if (_block_invoke_once_4701 != -1)
    {
      dispatch_once(&_block_invoke_once_4701, &__block_literal_global_5_4702);
    }

    Instance = CGTypeCreateInstance(CGColorTransformBaseGetTypeID_type_id, 32);
    if (kCGMD5NULL_block_invoke_once != -1)
    {
      dispatch_once(&kCGMD5NULL_block_invoke_once, &__block_literal_global_8_16753);
    }

    v7 = CGTypeCreateInstance(CGColorTransformCacheGetTypeID_type_id, 112);
    if (a1)
    {
      CFRetain(a1);
    }

    *(v7 + 16) = a1;
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    *(v7 + 40) = v8;
    *(v7 + 49) = CGColorSpaceIgnoresIntent(a1);
    v21.__sig = 0;
    *v21.__opaque = 0;
    pthread_mutexattr_init(&v21);
    pthread_mutexattr_settype(&v21, 2);
    pthread_mutex_init((v7 + 56), &v21);
    pthread_mutexattr_destroy(&v21);
    *(v7 + 120) = 0;
    v9 = a1[3];
    if (v9)
    {
      v10 = (v9 + 64);
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 24) = *v10;
    *(v7 + 48) = 0;
    if (a2)
    {
      *(v7 + 48) = CFDictionaryGetValue(a2, @"kCGColorTransformBlackPointCompensation") == *MEMORY[0x1E695E4D0];
      v11 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
      CC_MD5_Init(v11);
      if (v11)
      {
        CC_MD5_Update(v11, (v7 + 24), 0x10u);
        data = CGCFDictionaryGetMD5Digest(a2, 1u);
        v23 = v12;
        CC_MD5_Update(v11, &data, 0x10u);
        CC_MD5_Final((v7 + 24), v11);
      }

      else
      {
        data = CGCFDictionaryGetMD5Digest(a2, 1u);
        v23 = v14;
      }

      free(v11);
      *(Instance + 16) = v7;
      *(Instance + 32) = 1;
      *(Instance + 40) = 1;
      v13 = CFRetain(a2);
    }

    else
    {
      v13 = 0;
      *(Instance + 16) = v7;
      *(Instance + 32) = 1;
      *(Instance + 40) = 1;
    }

    *(Instance + 24) = v13;
    v15 = base_cache;
    if (base_cache)
    {
      v16 = base_cache;
      do
      {
        v17 = v16;
        v16 = *(v16 + 8);
      }

      while (v16);
      v18 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      if (v18)
      {
        *v18 = Instance;
        v18[1] = 0;
      }

      *(v17 + 8) = v18;
    }

    else
    {
      v19 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      v15 = v19;
      if (v19)
      {
        *v19 = Instance;
        v19[1] = 0;
      }
    }

    base_cache = v15;
  }

  pthread_mutex_unlock(&cacheMutex);
  return Instance;
}

uint64_t CGColorSpaceCreateGenericCMYK()
{
  if (CGColorSpaceCreateGenericCMYK_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericCMYK_predicate, &__block_literal_global_188);
  }

  v0 = CGColorSpaceCreateGenericCMYK_space;
  if (CGColorSpaceCreateGenericCMYK_space)
  {
    CFRetain(CGColorSpaceCreateGenericCMYK_space);
  }

  return v0;
}

float CGColorGetContentHeadroom(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 64);
  if (result == 0.0)
  {
    if (CGColorSpaceContainsFlexGTCInfo(*(a1 + 24)))
    {
      v3 = *(a1 + 24);

      return CGColorSpaceGetHeadroomInfo(v3, 0);
    }

    else
    {
      return *(a1 + 64);
    }
  }

  return result;
}

uint64_t CGColorTransformConvertColorComponents(uint64_t result, void *a2, uint64_t a3, double *a4, double *a5)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = CFGetTypeID(result);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v10 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  if (!a4 || !a5)
  {
    CGPostError("%s: NULL components", "CGColorTransformConvertColorComponents");
    return 0;
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 0x40000000;
  v62[2] = __create_resolved_source_space_block_invoke;
  v62[3] = &__block_descriptor_tmp_36_17670;
  v62[4] = v9;
  ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v62);
  if (!CGColorTransformGetAttributes(v9))
  {
    Cache = CGColorTransformGetCache(v9);
    if (Cache)
    {
      v35 = Cache[2];
      if (v35)
      {
        v36 = v35[3];
        if (v36)
        {
          v35 = (v36 + 64);
        }

        else
        {
          v35 = 0;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    if (ResolvedColorSpace)
    {
      v39 = *(ResolvedColorSpace + 3);
      v40 = v39 ? (v39 + 64) : 0;
    }

    else
    {
      v40 = 0;
    }

    if (v35 == v40 || v35 && v40 && ((v42 = *v35, v41 = v35[1], v44 = *v40, v43 = v40[1], v42 == v44) ? (v45 = v41 == v43) : (v45 = 0), v45))
    {
      if (ResolvedColorSpace)
      {
        for (i = *(*(ResolvedColorSpace + 3) + 48); i; --i)
        {
          v47 = *a4++;
          *a5++ = v47;
        }
      }

      goto LABEL_106;
    }
  }

  v12 = CGColorTransformGetCache(v9);
  v13 = v9[11];
  pthread_mutex_lock(v13);
  v14 = *(v13 + 80);
  if (!v14)
  {
LABEL_44:
    pthread_mutex_unlock(v13);
    if (CGColorSpaceGetType(ResolvedColorSpace) - 7 >= 3 && CGColorTransformCacheGetConversionType(v12, ResolvedColorSpace, a3) == 3)
    {
      if (ResolvedColorSpace)
      {
        for (j = *(*(ResolvedColorSpace + 3) + 48); j; --j)
        {
          v33 = *a4++;
          *a5++ = v33;
        }
      }

      goto LABEL_106;
    }

    Converter = CGColorTransformCacheCreateConverter(v12, ResolvedColorSpace, a3);
    if (CGCMSConverterConvertColorComponents(Converter, a4, a5))
    {
      if (ResolvedColorSpace)
      {
        v38 = *(*(ResolvedColorSpace + 3) + 48);
        if (v38 > 4)
        {
LABEL_104:
          if (Converter)
          {
            CFRelease(Converter);
          }

          goto LABEL_106;
        }
      }

      else
      {
        v38 = 0;
      }

      v48 = v9[11];
      pthread_mutex_lock(v48);
      if (*(v48 + 72) > 0x3FuLL)
      {
        v51 = *(v48 + 80);
        if (v51)
        {
          v52 = *(v48 + 80);
          do
          {
            v53 = v52;
            v52 = *(v52 + 8);
          }

          while (v52);
          v49 = *v53;
        }

        else
        {
          v49 = 0;
        }

        v50 = x_list_remove(v51, v49);
        *(v48 + 80) = v50;
      }

      else
      {
        v49 = malloc_type_malloc(0x58uLL, 0x100004038113C5CuLL);
        v50 = *(v48 + 80);
        ++*(v48 + 72);
      }

      v54 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      if (v54)
      {
        *v54 = v49;
        v54[1] = v50;
        v50 = v54;
      }

      *(v48 + 80) = v50;
      v55 = *(ResolvedColorSpace + 3);
      if (v55)
      {
        v56 = (v55 + 64);
      }

      else
      {
        v56 = 0;
      }

      *v49 = *v56;
      *(v49 + 4) = a3;
      if (v38)
      {
        v57 = v49 + 24;
        do
        {
          v58 = *a4++;
          *v57++ = v58;
          --v38;
        }

        while (v38);
      }

      v59 = *(v48 + 64);
      if (v59)
      {
        v60 = v49 + 56;
        do
        {
          v61 = *a5++;
          *v60++ = v61;
          --v59;
        }

        while (v59);
      }

      pthread_mutex_unlock(v48);
      goto LABEL_104;
    }

    if (Converter)
    {
      CFRelease(Converter);
    }

    CGColorSpaceRelease(ResolvedColorSpace);
    return 0;
  }

  v15 = *(v13 + 80);
  while (1)
  {
    if (ResolvedColorSpace)
    {
      v16 = *(ResolvedColorSpace + 3);
      v17 = (v16 + 64);
      if (!v16)
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = *v15;
    if (v17 == *v15 || (v18 ? (v19 = v17 == 0) : (v19 = 1), !v19 && ((v21 = *v17, v20 = v17[1], *v18 == v21) ? (v22 = v18[1] == v20) : (v22 = 0), v22)))
    {
      if (*(v18 + 4) == a3)
      {
        if (!ResolvedColorSpace)
        {
          goto LABEL_34;
        }

        v23 = *(*(ResolvedColorSpace + 3) + 48);
        if (v23 <= 4)
        {
          break;
        }
      }
    }

LABEL_28:
    v15 = v15[1];
    if (!v15)
    {
      goto LABEL_44;
    }
  }

  if (v23)
  {
    v24 = (v18 + 3);
    v25 = a4;
    while (*v24 == *v25)
    {
      ++v25;
      ++v24;
      if (!--v23)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_28;
  }

LABEL_34:
  v26 = *(v13 + 64);
  if (v26)
  {
    v27 = v18 + 7;
    do
    {
      v28 = *v27++;
      *a5++ = v28;
      --v26;
    }

    while (v26);
  }

  v62[0] = v14;
  if (*v14 == v18)
  {
    v31 = v62;
LABEL_81:
    *v31 = v14[1];
    v14[1] = v62[0];
  }

  else
  {
    v29 = v14;
    while (1)
    {
      v30 = v29;
      v29 = v29[1];
      if (!v29)
      {
        break;
      }

      if (*v29 == v18)
      {
        v31 = v30 + 1;
        v14 = v29;
        goto LABEL_81;
      }
    }
  }

  *(v13 + 80) = v14;
  pthread_mutex_unlock(v13);
LABEL_106:
  CGColorSpaceRelease(ResolvedColorSpace);
  return 1;
}

CGColorSpaceRef __create_resolved_source_space_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  Type = CGColorSpaceGetType(a2);
  if (Type > 0xB)
  {
    goto LABEL_11;
  }

  if (((1 << Type) & 0xC58) == 0)
  {
    if (Type == 1)
    {
      IsUncalibrated = CGColorSpaceIsUncalibrated(v2);
      v12 = *(a1 + 32);
      if (IsUncalibrated)
      {
        if (!v12)
        {
          return 0;
        }

        v2 = *(v12 + 72);
      }

      else
      {
        if (!v12)
        {
          return 0;
        }

        v2 = *(v12 + 48);
      }

      goto LABEL_24;
    }

    if (Type == 2)
    {
      v7 = CGColorSpaceIsUncalibrated(v2);
      v8 = *(a1 + 32);
      if (v7)
      {
        if (v8)
        {
          v2 = *(v8 + 80);
          goto LABEL_24;
        }

        return 0;
      }

      if (!v8)
      {
        return 0;
      }

      v2 = *(v8 + 56);
      goto LABEL_24;
    }

LABEL_11:
    if (!Type)
    {
      v9 = CGColorSpaceIsUncalibrated(v2);
      v10 = *(a1 + 32);
      if (v9)
      {
        if (!v10)
        {
          return 0;
        }

        v2 = *(v10 + 64);
      }

      else
      {
        if (!v10)
        {
          return 0;
        }

        v2 = *(v10 + 40);
      }
    }

LABEL_24:
    if (v2)
    {
      CFRetain(v2);
    }

    return v2;
  }

  v5 = *(*(a1 + 32) + 96);

  return create_calibrated_space(v2, v5);
}

uint64_t CGColorTransformGetAttributes(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v2 == CGColorTransformGetTypeID_type_id)
  {
    return a1[4];
  }

  else
  {
    return 0;
  }
}

CGColorSpaceRef create_calibrated_space(void *cf, int a2)
{
  if (a2)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    return cf;
  }

  Type = CGColorSpaceGetType(cf);
  if (Type > 9)
  {
    if ((Type - 10) >= 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (Type == 3)
    {
LABEL_14:

      return CGColorSpaceCreateDeviceGray();
    }

    if (Type == 4)
    {
      goto LABEL_17;
    }

    if (Type != 6)
    {
LABEL_23:
      _CGHandleAssert("create_calibrated_space", 364, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransform.c", "", "Unimplemented");
    }
  }

  Model = CGColorSpaceGetModel(cf);
  if (Model != kCGColorSpaceModelCMYK)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      if (Model)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

LABEL_17:

    return CGColorSpaceCreateDeviceRGB();
  }

  return CGColorSpaceCreateDeviceCMYK();
}

uint64_t icc_get_default_color_components(uint64_t a1)
{
  if ((a1 - 16) <= 0xFFFFFFFFFFFFFFF0)
  {
    _CGHandleAssert("icc_get_default_color_components", 126, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "component_count > 0 && component_count <= kCGColorSpaceICCMaxComponents", "Colorspace component count unhandled. count = %zu", a1);
  }

  return *(&icc_get_default_color_components_components + a1 - 1);
}

CGDataProviderRef CGDataProviderCreateWithCFData(CGDataProviderRef data)
{
  if (data)
  {
    v1 = data;
    data = CFDataGetBytePtr(data);
    if (data)
    {
      Length = CFDataGetLength(v1);
      v3 = CFRetain(v1);
      *&callbacks.version = 0;
      callbacks.getBytePointer = getCFDataBytePointer;
      callbacks.releaseBytePointer = 0;
      callbacks.getBytesAtPosition = cf_get_bytes_at_position;
      callbacks.releaseInfo = releaseCFData;
      return CGDataProviderCreateDirect(v3, Length, &callbacks);
    }
  }

  return data;
}

uint64_t CGColorSpaceCreateWithState(atomic_uint *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  Instance = CGTypeCreateInstance(CGColorSpaceGetTypeID_type_id, 80);
  v3 = Instance;
  if (Instance)
  {
    pthread_mutex_init((Instance + 32), 0);
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    *(v3 + 24) = a1;
    *(v3 + 16) = 1;
  }

  return v3;
}

uint64_t CGColorSpaceExtendedSRGB()
{
  if (CGColorSpaceExtendedSRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceExtendedSRGB_predicate, &__block_literal_global_276_6559);
  }

  v0 = CGColorSpaceExtendedSRGB_space;
  if (CGColorSpaceExtendedSRGB_space)
  {
    CFRetain(CGColorSpaceExtendedSRGB_space);
  }

  return v0;
}

void CGCMSUtilsGetICCProfileInfo(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (!a1)
  {
    _CGHandleAssert("CGCMSUtilsGetICCProfileInfo", 76, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSUtils.c", "profile != NULL", "profile missing");
  }

  if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate != -1)
  {
    dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate, &__block_literal_global_1545);
  }

  *(a2 + 4) = CGCMSUtilsGetICCProfileInfo_f(a1);
  *(a2 + 12) = v6;
  if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_8 != -1)
  {
    dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_8, &__block_literal_global_11);
  }

  ICCProfileInfo_f_7 = CGCMSUtilsGetICCProfileInfo_f_7(a1);
  if (!ICCProfileInfo_f_7)
  {
    return;
  }

  v8 = ICCProfileInfo_f_7;
  *(a2 + 282) = 0;
  BytePtr = CFDataGetBytePtr(ICCProfileInfo_f_7);
  v10 = BytePtr;
  v11 = *(BytePtr + 4);
  if (v11 > 1213421087)
  {
    if (v11 > 1296255030)
    {
      if (v11 <= 1380401695)
      {
        if (v11 == 1296255031)
        {
          goto LABEL_45;
        }

        if (v11 != 1296255032)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v11 != 1501067552)
      {
        if (v11 == 1482250784)
        {
          v12 = 1;
          v14 = 7;
        }

        else
        {
          if (v11 != 1380401696)
          {
            goto LABEL_51;
          }

          v12 = 0;
          v14 = 1;
        }

        v15 = 3;
        goto LABEL_49;
      }
    }

    else if (v11 <= 1282766367)
    {
      if (v11 != 1213421088)
      {
        if (v11 == 1281450528)
        {
          v12 = 0;
          v13 = 0;
          v14 = 3;
LABEL_40:
          v15 = 3;
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    else if (v11 != 1282766368)
    {
      if (v11 == 1296255029)
      {
        goto LABEL_44;
      }

      if (v11 == 1296255030)
      {
        goto LABEL_20;
      }

      goto LABEL_51;
    }

LABEL_39:
    v12 = 0;
    v13 = 0;
    v14 = 4;
    goto LABEL_40;
  }

  if (v11 <= 943934545)
  {
    if (v11 > 893602897)
    {
      if (v11 != 893602898)
      {
        if (v11 != 910380114)
        {
          if (v11 != 927157330)
          {
            goto LABEL_51;
          }

LABEL_45:
          v12 = 0;
          v13 = 0;
          v14 = 4;
          v15 = 7;
          goto LABEL_52;
        }

LABEL_20:
        v12 = 0;
        v13 = 0;
        v14 = 4;
        v15 = 6;
        goto LABEL_52;
      }

LABEL_44:
      v12 = 0;
      v13 = 0;
      v14 = 4;
      v15 = 5;
      goto LABEL_52;
    }

    if (v11 != 860048466)
    {
      if (v11 == 876825682)
      {
        v12 = 0;
        v13 = 0;
        v15 = 4;
        v14 = 4;
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    goto LABEL_39;
  }

  if (v11 > 1129142602)
  {
    if (v11 == 1129142603)
    {
      v12 = 0;
      v13 = 0;
      v14 = 2;
      v15 = 4;
      goto LABEL_52;
    }

    if (v11 != 1196573017)
    {
      v16 = 1212961568;
      goto LABEL_38;
    }

    v14 = 0;
    v12 = 0;
    v15 = 1;
LABEL_49:
    v13 = 1;
    goto LABEL_52;
  }

  if (v11 == 943934546)
  {
LABEL_43:
    v12 = 0;
    v13 = 0;
    v14 = 4;
    v15 = 8;
    goto LABEL_52;
  }

  v16 = 1129142560;
LABEL_38:
  if (v11 == v16)
  {
    goto LABEL_39;
  }

LABEL_51:
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 4;
LABEL_52:
  *a2 = v14;
  *(a2 + 288) = v15;
  v17 = *(BytePtr + 3);
  if (v17 > 1886549105)
  {
    if (v17 == 1886549106 || v17 == 1936744803)
    {
LABEL_90:
      *(a2 + 280) = 1;
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_32 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_32, &__block_literal_global_35);
      }

      if (CGCMSUtilsGetICCProfileInfo_f_31(a1))
      {
        ICCProfileInfo_f_37 = 1;
      }

      else
      {
        if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_38 != -1)
        {
          dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_38, &__block_literal_global_41);
        }

        ICCProfileInfo_f_37 = CGCMSUtilsGetICCProfileInfo_f_37(a1, @"aapy");
      }

      *(a2 + 282) = ICCProfileInfo_f_37;
      goto LABEL_98;
    }

LABEL_65:
    if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_45 != -1)
    {
      dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_45, &__block_literal_global_48_1547);
    }

    if (CGCMSUtilsGetICCProfileInfo_f_44(a1))
    {
      *(a2 + 286) = 1;
      *(a2 + 280) = 1;
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_50 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_50, &__block_literal_global_53);
      }

      *(a2 + 283) = CGCMSUtilsGetICCProfileInfo_f_49(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_55 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_55, &__block_literal_global_58_1548);
      }

      *(a2 + 284) = CGCMSUtilsGetICCProfileInfo_f_54(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_60 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_60, &__block_literal_global_63);
      }

      *(a2 + 282) = CGCMSUtilsGetICCProfileInfo_f_59(a1);
      v13 = (*(a2 + 283) & 1) == 0 && *(a2 + 284) == 0;
    }

    else
    {
      if (profile_can_be_used_as_destination_cglibrarypredicate != -1)
      {
        dispatch_once(&profile_can_be_used_as_destination_cglibrarypredicate, &__block_literal_global_463);
      }

      v19 = profile_can_be_used_as_destination_f;
      if (profile_can_be_used_as_destination_cglibrarypredicate_464 != -1)
      {
        dispatch_once(&profile_can_be_used_as_destination_cglibrarypredicate_464, &__block_literal_global_467);
      }

      v20 = v19(profile_can_be_used_as_destination_s);
      if (v20)
      {
        v21 = v20;
        v36 = v12;
        *keys = xmmword_1E6E066A8;
        v41 = @"ColorSyncTransformTag";
        values[0] = v20;
        values[1] = @"ColorSyncRenderingIntentPerceptual";
        values[2] = @"ColorSyncTransformDeviceToPCS";
        v38[0] = a1;
        v38[1] = @"ColorSyncRenderingIntentPerceptual";
        v38[2] = @"ColorSyncTransformPCSToDevice";
        v22 = MEMORY[0x1E695E9D8];
        v23 = MEMORY[0x1E695E9E8];
        v24 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(v21);
        v25 = CFDictionaryCreate(0, keys, v38, 3, v22, v23);
        v37[0] = v24;
        v37[1] = v25;
        v37[2] = 0;
        v26 = CFArrayCreate(0, v37, 2, MEMORY[0x1E695E9C0]);
        Retained = CGColorSyncTransformCacheGetRetained(v26, 0);
        if (v24)
        {
          CFRelease(v24);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        v28 = Retained != 0;
        CGColorSyncTransformCacheRelease(Retained);
        v12 = v36;
      }

      else
      {
        v28 = 0;
      }

      *(a2 + 280) = v28;
    }

    goto LABEL_98;
  }

  if (v17 != 1818848875)
  {
    if (v17 == 1835955314)
    {
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_14 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_14, &__block_literal_global_17);
      }

      *(a2 + 283) = CGCMSUtilsGetICCProfileInfo_f_13(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_20 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_20, &__block_literal_global_23);
      }

      *(a2 + 284) = CGCMSUtilsGetICCProfileInfo_f_19(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_26 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_26, &__block_literal_global_29);
      }

      ICCProfileInfo_f_25 = CGCMSUtilsGetICCProfileInfo_f_25(a1);
      *(a2 + 286) = ICCProfileInfo_f_25;
      if (*(a2 + 283))
      {
        v13 = 0;
      }

      else
      {
        v13 = (*(a2 + 284) == 0) & ICCProfileInfo_f_25;
      }

      goto LABEL_90;
    }

    goto LABEL_65;
  }

  *(a2 + 280) = 0;
LABEL_98:
  if (v12)
  {
    ICCProfileInfo_f_64 = 1;
  }

  else
  {
    if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_65 != -1)
    {
      dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_65, &__block_literal_global_68);
    }

    ICCProfileInfo_f_64 = CGCMSUtilsGetICCProfileInfo_f_64(a1);
  }

  *(a2 + 281) = ICCProfileInfo_f_64;
  *(a2 + 285) = a3 & v13;
  v31 = *(a2 + 288);
  if (v31)
  {
    v32 = 0;
    v33 = a2 + 24;
    v34 = *(v10 + 4);
    do
    {
      while (v34 != 1281450528)
      {
        v35 = v32 + 1;
        if (a3 & v13)
        {
          *(v33 + 16 * v32++) = xmmword_18439C7C0;
          if (v35 == v31)
          {
            goto LABEL_115;
          }
        }

        else
        {
          *(v33 + 16 * v32++) = xmmword_18439C780;
          if (v35 == v31)
          {
            goto LABEL_117;
          }
        }
      }

      if (v32 >= 3)
      {
        _CGHandleAssert("CGCMSUtilsGetICCProfileInfo", 196, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSUtils.c", "k < 3", "component %zu too large", v32);
      }

      *(v33 + 16 * v32) = vcvtq_f64_f32(CGCMSUtilsGetICCProfileInfo_range[v32 + 2]);
      ++v32;
    }

    while (v32 != v31);
  }

  if (a3 & v13)
  {
LABEL_115:
    if (*a2 == 1)
    {
      *(a2 + 282) = 1;
    }
  }

LABEL_117:
  CFRelease(v8);
}

void __CGColorSpaceExtendedSRGB_block_invoke()
{
  CGColorSpaceExtendedSRGB_space = create_singleton(color_space_state_create_extended_srgb);
  CGColorSpaceSetProperty(CGColorSpaceExtendedSRGB_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceSRGB");
  CGColorSpaceSetProperty(CGColorSpaceExtendedSRGB_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
  CGColorSpaceSetProperty(CGColorSpaceExtendedSRGB_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedSRGB_space);
  v0 = CGColorSpaceExtendedSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
}

char *color_space_state_create_extended_srgb()
{
  if (color_space_state_create_extended_srgb_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_extended_srgb_cglibrarypredicate, &__block_literal_global_262_1828);
  }

  v0 = color_space_state_create_extended_srgb_f;
  if (color_space_state_create_extended_srgb_cglibrarypredicate_263 != -1)
  {
    dispatch_once(&color_space_state_create_extended_srgb_cglibrarypredicate_263, &__block_literal_global_266);
  }

  v1 = v0(color_space_state_create_extended_srgb_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 1);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedSRGB";
    *(icc_with_profile + 5) = 16;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_extended_srgb_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_extended_srgb_f = v1;
  return result;
}

uint64_t *__color_space_state_create_extended_srgb_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncSRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_extended_srgb_s = v1;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateDeviceRGB(void)
{
  if (CGColorSpaceCreateDeviceRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDeviceRGB_predicate, &__block_literal_global_145_6535);
  }

  v0 = CGColorSpaceCreateDeviceRGB_space;
  if (CGColorSpaceCreateDeviceRGB_space)
  {
    CFRetain(CGColorSpaceCreateDeviceRGB_space);
  }

  return v0;
}

CGRect CGRectStandardize(CGRect rect)
{
  y = rect.origin.y;
  v2 = INFINITY;
  if (rect.origin.x == INFINITY || y == INFINITY)
  {
    rect.size.height = 0.0;
    rect.size.width = 0.0;
    rect.origin.x = INFINITY;
  }

  else
  {
    v4 = rect.origin.x + rect.size.width;
    if (rect.size.width < 0.0)
    {
      rect.size.width = -rect.size.width;
      rect.origin.x = v4;
    }

    v5 = y + rect.size.height;
    if (rect.size.height >= 0.0)
    {
      v2 = y;
    }

    else
    {
      rect.size.height = -rect.size.height;
      v2 = v5;
    }
  }

  rect.origin.y = v2;
  return rect;
}

void *CGImageGetMask(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[22];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t color_transform_retain_count(uint64_t a1, atomic_uint *a2)
{
  switch(a1)
  {
    case -1:
      log_refcount(a2, -1);
      if (atomic_fetch_add_explicit(a2 + 5, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        color_transform_finalize(a2);
        v4 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v4, a2);
      }

      break;
    case 0:
      return a2[5];
    case 1:
      log_refcount(a2, 1);
      return atomic_fetch_add_explicit(a2 + 5, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

void log_refcount(_DWORD *a1, uint64_t a2)
{
  if (show_log_predicate != -1)
  {
    dispatch_once(&show_log_predicate, &__block_literal_global_61_17658);
  }

  if (show_log_show_log == 1)
  {
    v4 = CGBacktraceCreate(10);
    CGPostError("CGColorTransform %p. Refcount = %d operation = %ld Backtrace:\n%s\n", a1, a1[5], a2, v4);

    free(v4);
  }
}

CGContextRef CGBitmapContextCreateWithData(void *data, size_t width, size_t height, size_t bitsPerComponent, size_t bytesPerRow, CGColorSpaceRef space, uint32_t bitmapInfo, CGBitmapContextReleaseDataCallback releaseCallback, void *releaseInfo)
{
  if (space)
  {
    v10 = *(*(space + 3) + 48);
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 * bitsPerComponent;
  if ((bitmapInfo & 0x1F) != 0 && (bitmapInfo & 0x1F) != 7)
  {
    ++v10;
  }

  v13 = 32;
  if ((bitmapInfo & 0xF0000) != 0x40000)
  {
    v13 = v12;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = v10 * bitsPerComponent;
  v15 = bitmapInfo | 0x10000;
  if ((bitmapInfo & 0xF0000) != 0)
  {
    v15 = bitmapInfo;
  }

  if (bitsPerComponent == 5)
  {
    v14 = 16;
  }

  else
  {
    v15 = bitmapInfo;
  }

  if (bitsPerComponent == 10)
  {
    v14 = v13;
    v16 = bitmapInfo;
  }

  else
  {
    v16 = v15;
  }

  if (bitsPerComponent)
  {
    v12 = v14;
    v17 = v16;
  }

  else
  {
    v17 = bitmapInfo;
  }

  result = CGBitmapContextInfoCreate(data, 0, 0, width, height, bitsPerComponent, v12, bytesPerRow, 72.0, 72.0, space, v17, 0, releaseCallback, releaseInfo);
  if (result)
  {

    return bitmap_context_create(result, 0, "CGBitmapContextCreateWithData");
  }

  return result;
}

void *bitmap_context_create(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = CGContextCreateWithDelegateAndInfo(0, 4, 0, 0, a1, bitmap_context_finalize);
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 112);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = 432.0;
    if (v9 <= 432.0)
    {
      v11 = *(a1 + 48);
    }

    if (v9 >= 72.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 72.0;
    }

    v13 = 432.0;
    if (v10 <= 432.0)
    {
      v13 = *(a1 + 56);
    }

    if (v10 >= 72.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 72.0;
    }

    *(v8 + 8) = v12;
    *(v8 + 16) = v14;
    v15 = *(a1 + 96);
    v16 = v15 | ~(-1 << -__clz(v15));
    if (v15 >= 2)
    {
      LOBYTE(v15) = v16;
    }

    *(v8 + 4) = v15 & 3;
    v17 = bitmap_context_delegate_create(a1, a2);
    v7[5] = v17;
    if (v17)
    {
      ColorSpace = CGContextGetColorSpace(v7);
      v19 = 0.0;
      if (ColorSpace)
      {
        v20 = ColorSpace;
        if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
        {
          v19 = 1.0;
          if (!CGColorSpaceIsSDR(v20))
          {
            HeadroomInfo = CGColorSpaceGetHeadroomInfo(v20, 0);
            v22 = 1.0;
            if (HeadroomInfo >= 1.0 || HeadroomInfo <= 0.0)
            {
              v22 = HeadroomInfo;
            }

            if (HeadroomInfo >= 0.0)
            {
              v19 = v22;
            }

            else
            {
              v19 = 0.0;
            }
          }
        }
      }

      CGGStateSetEDRTargetHeadroom(v7[12], v19);
    }

    else
    {
      CGPostError("%s: failed to create delegate.", a3);
      CFRelease(v7);
      return 0;
    }
  }

  else
  {
    CGPostError("%s: failed to create bitmap context.", a3);
    CGBitmapContextInfoRelease(a1);
  }

  return v7;
}

CFTypeRef __CGBitmapContextDelegateCreate(uint64_t a1, const __CFDictionary *a2)
{
  v31 = 0;
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v28 = __PAIR64__(v4, v3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >> 31)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 >> 31 == 0;
  }

  if (!v7 || ((v29 = *(a1 + 8), v30 = v6, v3 <= (v5 ^ 0x7FFFFFFF)) ? (v8 = v4 <= (v6 ^ 0x7FFFFFFF)) : (v8 = 0), !v8 || *(a1 + 88) >> 31))
  {
    CGPostError("Unsupported dimensions - %d x, %d y, %lu width, %lu height, %lu bytes-per-row", a2);
    return 0;
  }

  v10 = RIPGetLayerFormat(a1, &v31);
  v11 = RIPGetDepthForLayerFormat(v10);
  if (!v11)
  {
    CGPostError("Unsupported pixel description - %lu components, %lu bits-per-component, %lu bits-per-pixel", v12);
    return 0;
  }

  v13 = v11;
  v14 = ripc_Initialize();
  if (!v14)
  {
    CGPostError("Failed to create bitmap context delegate", v15);
    return 0;
  }

  v16 = v14;
  if (v31)
  {
    v17 = 17;
  }

  else
  {
    v17 = 16;
  }

  v18 = *(a1 + 64);
  if (v18 && (v19 = *(a1 + 88)) != 0)
  {
    if (*(a1 + 128))
    {
      v20 = *(a1 + 136);
      v21 = *(a1 + 120);
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v23 = RIPLayerCreateWithData(&v28, v17 | 2u, v13, v19, v18, v20, v21, *(a1 + 96));
  }

  else
  {
    v23 = RIPLayerCreate(RIPLayer_ripl_class, &v28, v17, v13, *(a1 + 96));
  }

  *(v16 + 6) = v23;
  if (!v23)
  {
    if (*v16)
    {
      CFRelease(*v16);
    }

    CGPostError("Unable to create bitmap delegate device");
    return 0;
  }

  v24 = *(a1 + 32);
  if (!v24)
  {
    v26 = *(v16 + 25);
    if (!v26)
    {
      *(v16 + 2) = 0;
      goto LABEL_42;
    }

    CFRetain(*(v16 + 25));
    *(v16 + 2) = v26;
LABEL_38:
    v27 = 0x3FF0000000000000;
    if (CGCFDictionaryGetFloat(a2, @"kCGContextDeviceScale", &v27))
    {
      *(v16 + 5) = v27;
    }

    *(v16 + 24) = *(a1 + 48);
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    *(v16 + 1) = a1;
    *(v16 + 54) = ripc_component_type_from_info(a1);
    return *v16;
  }

  v25 = color_transform_create(v24, a2);
  *(v16 + 2) = v25;
  if (v25)
  {
    goto LABEL_38;
  }

LABEL_42:
  CGPostError("Failed to create bitmap context color transform");
  result = *v16;
  if (*v16)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t validate_rgb_bitmap_info(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 9)
  {
    if (v1 == 5)
    {
      if ((*(a1 + 40) & 0xF0000) != 0x10000)
      {
        goto LABEL_45;
      }

      if ((*(a1 + 40) & 0x1F) != 6)
      {
        goto LABEL_45;
      }

      v3 = 8;
      v4 = 2;
      v12 = *(a1 + 40) & 0x7000;
      if (v12)
      {
        if (v12 != 4096 && v12 != 12288)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      if (v1 != 8)
      {
        goto LABEL_45;
      }

      v6 = *(a1 + 40);
      if ((v6 & 0xF0000) != 0)
      {
        goto LABEL_45;
      }

      if ((*(a1 + 40) & 0x1Fu) > 6 || ((1 << (v6 & 0x1F)) & 0x66) == 0)
      {
        goto LABEL_45;
      }

      v3 = 0;
      v4 = 4;
      v8 = *(a1 + 40) & 0x7000;
      if (v8)
      {
        if (v8 != 0x2000 && v8 != 0x4000)
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    switch(v1)
    {
      case 10:
        v9 = *(a1 + 40);
        if ((v9 & 0xF0000) != 0x40000 || (v9 & 0x1F) != 0 || (*(a1 + 40) & 0x7000) != 0x2000)
        {
          goto LABEL_45;
        }

        v3 = *(a1 + 128);
        v4 = 4;
        break;
      case 16:
        v10 = *(a1 + 40);
        if ((v10 & 0xF0000) != 0 || (v10 & 0x1B | 4) != 5)
        {
          goto LABEL_45;
        }

        v11 = *(a1 + 40) & 0x7000;
        if ((v10 & 0x100) != 0)
        {
          if (v11 != 4096)
          {
            goto LABEL_45;
          }

          v3 = 0;
          v4 = 8;
        }

        else
        {
          v3 = 0;
          v4 = 8;
          if (v11 && v11 != 4096 && v11 != 12288)
          {
            goto LABEL_45;
          }
        }

        break;
      case 32:
        v2 = *(a1 + 40);
        if ((v2 & 0xF0000) != 0)
        {
          goto LABEL_45;
        }

        if ((v2 & 0x100) == 0)
        {
          goto LABEL_45;
        }

        if ((v2 & 0x1B | 4) != 5)
        {
          goto LABEL_45;
        }

        v3 = 0;
        v4 = 16;
        v5 = *(a1 + 40) & 0x7000;
        if (v5)
        {
          if (v5 != 0x2000 && v5 != 0x4000)
          {
            goto LABEL_45;
          }
        }

        break;
      default:
        goto LABEL_45;
    }
  }

  if (*(a1 + 72) != 8 * v4)
  {
LABEL_45:
    unsupported(a1);
    return 0;
  }

  if ((*(a1 + 88) & (v4 - 1)) != 0)
  {
    CGPostError("\nCGBitmapContextCreate: unsupported parameter combination:\n\t%zu %% %zu!= 0; bytes per row must be a multiple of bytes per pixel", *(a1 + 88), v4);
    return 0;
  }

  return check_sizes(a1, v3);
}

uint64_t bitmap_context_delegate_create(uint64_t a1, uint64_t a2)
{
  if (bitmap_context_delegate_create_once != -1)
  {
    dispatch_once_f(&bitmap_context_delegate_create_once, 0, load_bitmap_context_delegate_create);
  }

  v4 = creator;
  if (!creator)
  {
    return 0;
  }

  return v4(a1, a2);
}

BOOL matches_space(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = v2[3];
      if (v3)
      {
        v2 = (v3 + 64);
      }

      else
      {
        v2 = 0;
      }
    }

    if (a2)
    {
      goto LABEL_7;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v2 = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = 0;
  }

LABEL_12:
  if (v2 == v5)
  {
    return 1;
  }

  result = 0;
  if (v2 && v5)
  {
    v8 = *v2;
    v7 = v2[1];
    v10 = *v5;
    v9 = v5[1];
    return v8 == v10 && v7 == v9;
  }

  return result;
}

char *ripc_Initialize()
{
  v0 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10600404AF495FBuLL);
  *v0 = CGContextDelegateCreate(v0);
  v1 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
  *v1 = &ripc_class;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 39) = 1065353216;
  *(v0 + 22) = v1;
  v2 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
  *v2 = &ripc_class;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 39) = 1065353216;
  *(v0 + 23) = v2;
  v3 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
  *v3 = &ripc_class;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  *(v3 + 39) = 1065353216;
  *(v0 + 24) = v3;
  *(v0 + 32) = -1;
  *(v0 + 7) = 0;
  *(v0 + 8) = 0;
  *(v0 + 24) = vdupq_n_s64(0x4052000000000000uLL);
  *(v0 + 5) = 0x3FF0000000000000;
  if (create_default_transform_predicate != -1)
  {
    dispatch_once(&create_default_transform_predicate, &__block_literal_global_7_14240);
  }

  v4 = create_default_transform_transform;
  if (create_default_transform_transform)
  {
    CFRetain(create_default_transform_transform);
  }

  *(v0 + 25) = v4;
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  *v5 = v5;
  v5[1] = v5;
  *(v0 + 26) = v5;
  CGContextDelegateSetCallbacks(*v0, &ripc_Initialize_callbacks, 20);
  pthread_mutex_lock(&contexts_mutex);
  v6 = contexts;
  v7 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  if (v7)
  {
    *v7 = v0;
    v7[1] = v6;
    v6 = v7;
  }

  contexts = v6;
  pthread_mutex_unlock(&contexts_mutex);
  return v0;
}

uint64_t initialize_deep_mask(int *a1)
{
  if (initialize_deep_mask_predicate != -1)
  {
    dispatch_once(&initialize_deep_mask_predicate, &__block_literal_global_18693);
  }

  v2 = *a1;
  if (*a1 == 134755160 || v2 == 269497256)
  {
    return 256;
  }

  if (v2 != 269497257)
  {
    return 0;
  }

  if (initialize_deep_mask_fp16_deep_mask_on)
  {
    return 256;
  }

  return 0;
}

void *ripc_InitializeColorTransform(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(*result + 80))(result, a1 + 16);
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  if (*(a1 + 120) != v4 || *(a1 + 132) != v3)
  {
    *(a1 + 120) = v4;
    *(a1 + 132) = v3;
    if ((CGColorTransformGetMD5(v4, a1 + 136) & 1) == 0)
    {
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
    }

    Cache = CGColorTransformGetCache(v4);
    if (Cache)
    {
      Cache = *(Cache + 2);
    }

    *(a1 + 128) = CGColorSpaceGetModel(Cache);
    free(*(a1 + 176));
    v6 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
    *v6 = &ripc_class;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    *(v6 + 39) = 1065353216;
    *(a1 + 176) = v6;
    *(v6 + 5) = v3;
    free(*(a1 + 184));
    v7 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
    *v7 = &ripc_class;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    *(v7 + 39) = 1065353216;
    *(a1 + 184) = v7;
    *(v7 + 5) = v3;
    free(*(a1 + 192));
    result = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
    *result = &ripc_class;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *(result + 39) = 1065353216;
    *(a1 + 192) = result;
    *(result + 5) = v3;
  }

  return result;
}

uint64_t ripl_Transform(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2)
  {
    return *(*a2 + 16);
  }

  else
  {
    return 0;
  }
}

void CGDisplayListDrawInContext(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == 1129601108)
  {
    CGDisplayListDrawInContextDelegate(a1, *(a2 + 40), *(a2 + 112), *(a2 + 96), 0);
  }

  else
  {
    handle_invalid_context("CGDisplayListDrawInContext", a2);
  }
}

void CGDisplayListDrawInContextDelegate(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (a1 && *(a1 + 688) != *(a1 + 696))
  {
    v6 = *(a1 + 88);
    if (v6.n128_f64[0] != INFINITY && *(a1 + 96) != INFINITY)
    {
      if (a4)
      {
        if (a2)
        {
          v12 = *(a2 + 48);
          if (v12)
          {
            v6.n128_f64[0] = v12(a2, a3, a4);
            v13 = v6.n128_f64[0];
            v15 = v14;
            v17 = v16;
            v19 = v18;
          }

          else
          {
            v17 = 1.79769313e308;
            v13 = -8.98846567e307;
            v15 = -8.98846567e307;
            v19 = 1.79769313e308;
          }
        }

        else
        {
          v17 = 0.0;
          v13 = INFINITY;
          v15 = INFINITY;
          v19 = 0.0;
        }

        v24 = *(a4 + 112);
        if (v24)
        {
          Bounds = CGClipStackGetBounds(v24, v6);
          v27 = v26;
          v29 = v28;
          v31 = v30;
        }

        else
        {
          v27 = 0xFFDFFFFFFFFFFFFFLL;
          v29 = 0x7FEFFFFFFFFFFFFFLL;
          Bounds = -8.98846567e307;
          v31 = 0x7FEFFFFFFFFFFFFFLL;
        }

        v47.origin.x = v13;
        v47.origin.y = v15;
        v47.size.width = v17;
        v47.size.height = v19;
        v48 = CGRectIntersection(v47, *&Bounds);
        if (v48.origin.x == INFINITY || v48.origin.y == INFINITY || v48.size.width == 0.0 || v48.size.height == 0.0)
        {
          return;
        }

        v32 = *(a4 + 40);
        v44 = *(a4 + 24);
        v45 = v32;
        v46 = *(a4 + 56);
        v33.n64_u64[0] = CGRectApplyInverseAffineTransform(&v44, *&v48.origin.x, v48.origin.y, v48.size.width, v48.size.height).n64_u64[0];
        v37 = &CGRectNull;
        p_y = &CGRectNull.origin.y;
        p_size = (a1 + 104);
        p_height = (a1 + 112);
        if (*(a1 + 688) == *(a1 + 696))
        {
          p_size = &CGRectNull.size;
        }

        else
        {
          p_y = (a1 + 96);
        }

        if (*(a1 + 688) == *(a1 + 696))
        {
          p_height = &CGRectNull.size.height;
        }

        else
        {
          v37 = (a1 + 88);
        }

        v50.size.height = *p_height;
        v50.origin.x = v37->origin.x;
        v50.origin.y = *p_y;
        v50.size.width = p_size->width;
        *v6.n128_u64 = CGRectIntersection(*v33.n64_u64, v50);
        *&v44 = v6.n128_u64[0];
        *(&v44 + 1) = *&v49.origin.y;
        v45.width = v49.size.width;
        v45.height = v49.size.height;
        if (v6.n128_f64[0] == INFINITY || v49.origin.y == INFINITY || v49.size.width == 0.0 || v49.size.height == 0.0)
        {
          return;
        }

        height = v49.size.height;
        size = v49.size;
        v6.n128_u64[1] = *&v49.origin.y;
      }

      else
      {
        v20 = *(a1 + 104);
        v44 = *(a1 + 88);
        v45 = v20;
        size = v20;
      }

      v21 = a3;
      v42 = v6;
      if (a3 || (v21 = CGRenderingStateCreate()) != 0)
      {
        v22 = CGGStackCreateWithGState(a4);
        if (vaddvq_s32(vbicq_s8(xmmword_18439C7E0, vuzp1q_s32(vceqq_f64(v42, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(size, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL))))))
        {
          v23 = &v44;
        }

        else
        {
          v23 = 0;
        }

        CG::DisplayList::execute(a1 + 16, a2, v21, v22, v23, a5);
        if (v22)
        {
          CGGStackReset(v22);
          free(v22);
        }

        if (v21 != a3 && atomic_fetch_add_explicit(v21, 0xFFFFFFFF, memory_order_relaxed) == 1)
        {
          free(v21);
        }
      }
    }
  }
}

float64x2_t ripc_GetBounds(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v1 + 48);
  result = vdupq_n_s64(0x7FF0000000000000uLL);
  if (v2)
  {
    v8 = 0uLL;
    v7 = result;
    v4 = (*(*v2 + 72))(v2, &v8);
    result = v7;
    if (v4)
    {
      (*(**(v1 + 48) + 88))(*(v1 + 48), v1 + 40, v7);
      v5.i64[0] = v8;
      v5.i64[1] = SDWORD1(v8);
      result = vcvtq_f64_s64(v5);
      v6 = *(v1 + 40);
      if (v6 != 1.0)
      {
        return vmulq_n_f64(result, 1.0 / v6);
      }
    }
  }

  return result;
}

void CGGStateStrokeCopy(uint64_t a1, uint64_t a2)
{
  stroke_state_release(*(a1 + 128));
  v4 = *(a2 + 128);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 128) = v4;
  *(a1 + 20) |= 4u;
  *(a2 + 20) |= 4u;
}

void CGGStateClipToRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  maybeCopyClipState(a1);
  v10 = (a1 + 24);
  v11 = *(*(a1 + 120) + 4);
  if (*(a1 + 32) == 0.0 && *(a1 + 40) == 0.0 || *(a1 + 24) == 0.0 && *(a1 + 48) == 0.0)
  {
    v12 = HIBYTE(v11) & 1;
    v13 = *(a1 + 40);
    *&v22.a = *&v10->a;
    *&v22.c = v13;
    *&v22.tx = *(a1 + 56);
    v14 = a2;
    *&v13 = a3;
    v15 = a4;
    v16 = a5;
    v24 = CGRectApplyAffineTransform(*(&v13 - 8), &v22);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    CGClipStackAddRect(*(a1 + 112), v12, v24.origin.x, v24.origin.y, v24.size.width, v24.size.height);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectIntegral(v25);
    *(a1 + 80) = CGRectIntersection(*(a1 + 80), v26);
  }

  else
  {
    v21 = CGClipCreateWithRect(v10, HIBYTE(v11) & 1, a2, a3, a4, a5);
    CGClipStackAddClip(*(a1 + 112), v21);

    CGClipRelease(v21);
  }
}

uint64_t CG::DisplayList::executeEntries(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CGPoint *a7, int a8)
{
  v272 = a1;
  *v273 = a4;
  *v274 = a5;
  *v275 = a6;
  v277 = 0;
  if ((*(a1 + 57) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (a7)
  {
    origin = *a7;
    size = a7[1];
LABEL_14:
    v278 = origin;
    v279 = size;
    goto LABEL_15;
  }

  v15 = *(a1 + 24) == -8.98846567e307 && *(a1 + 32) == -8.98846567e307;
  v16 = v15 && *(a1 + 40) == 1.79769313e308;
  if (v16 && *(a1 + 48) == 1.79769313e308)
  {
LABEL_13:
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    goto LABEL_14;
  }

  v270 = *(a1 + 40);
  v278 = *(a1 + 24);
  v279 = v270;
LABEL_15:
  v280 = 0;
  v282 = CGAffineTransformIdentity;
  v17 = *(a6 + 8);
  if (v17 == a6)
  {
    v18 = CGGStateCreate();
    v19 = *(a6 + 8);
    *(a6 + 8) = v18;
    *v18 = a6;
    *v19 = v18;
    *(v18 + 1) = v19;
    v17 = *(a6 + 8);
  }

  *v276 = v17;
  v20 = *(v17 + 24);
  m = (v17 + 24);
  if (v20 == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v17 + 32)), vceqq_f64(*(v17 + 48), xmmword_18439C630))))) & 1) == 0 && *(v17 + 64) == 0.0)
  {
    m = 0;
  }

  v21 = *(a1 + 24);
  v22 = *(a1 + 40);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v21, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v22, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
  {
    CGGStateClipToRect(v17, v21.f64[0], v21.f64[1], v22.f64[0], v22.f64[1]);
  }

  if (*(a1 + 856))
  {
    v23 = *(v17 + 136);
    if (*(v23 + 16) != 1.0)
    {
      maybe_copy_text_state(v17);
      *(*(v17 + 136) + 16) = 0x3FF0000000000000;
      v17 = *v276;
      v23 = *(*v276 + 136);
    }

    if (*(v23 + 24) != 0.0)
    {
      maybe_copy_text_state(v17);
      *(*(v17 + 136) + 24) = 0;
    }
  }

  *v276 = CGGStackSave(*v275);
  v24 = *v274;
  v25 = *(*v274 + 24);
  v26 = *(*v274 + 56);
  *&v282.c = *(*v274 + 40);
  *&v282.tx = v26;
  *&v282.a = v25;
  if (a2 != a3)
  {
    v27 = a8 ^ 1;
    while (1)
    {
      v28 = *a2;
      v29 = *(*a2 + 8);
      if ((v29 & 0x100000) != 0)
      {
        v30 = v27;
      }

      else
      {
        v30 = 1;
      }

      if (v30 != 1 || (v29 & 0x400000) != 0)
      {
        goto LABEL_37;
      }

      if (v29 <= 3)
      {
        if (v29 <= 1)
        {
          if (v29)
          {
            if (v29 != 1)
            {
              goto LABEL_37;
            }

            if (!v28)
            {
              goto LABEL_37;
            }

            v35 = *v276;
            if (!*v276)
            {
              goto LABEL_37;
            }

            v36 = *(v28 + 32);
            cf.origin = *(v28 + 16);
            cf.size = v36;
            if (CG::DisplayListExecutor::rejectRect(&v272, &cf))
            {
              goto LABEL_37;
            }

            v37 = *(v28 + 48);
            v38 = *(v28 + 104);
            cf.origin = *(v28 + 88);
            cf.size = v38;
            v284 = *(v28 + 120);
            CG::DisplayListExecutor::applyEntryDrawingState(&v272, v37, &cf, v35);
            v39 = *(v28 + 8);
            if ((v39 & 0x40000) != 0)
            {
              v40 = *(v28 + 72);
              v41 = *v276;
              v42 = *(v40 + 56);
              v43 = *(v40 + 64);
              v44 = *(*v276 + 120);
              if (*(v44 + 24) != v42 || *(v44 + 32) != v43)
              {
                maybeCopyRenderingState(*v276);
                v46 = *(v41 + 120);
                *(v46 + 24) = v42;
                *(v46 + 32) = v43;
              }

              v47 = *(v40 + 72);
              if (*(*(v41 + 144) + 16) != v47)
              {
                maybe_copy_device_state(v41);
                *(*(v41 + 144) + 16) = v47;
              }

              v48 = *(v40 + 8);
              v49 = *(v40 + 40);
              cf.size = *(v40 + 24);
              v284 = v49;
              cf.origin = v48;
              if (m)
              {
                v50 = *&m->a;
                v51 = *&m->c;
                v52 = *&m->tx;
                v53 = vmlaq_n_f64(vmulq_n_f64(v51, cf.size.height), *&m->a, cf.size.width);
                cf.origin = vmlaq_n_f64(vmulq_n_f64(v51, cf.origin.y), *&m->a, cf.origin.x);
                cf.size = v53;
                v284 = vaddq_f64(v52, vmlaq_n_f64(vmulq_n_f64(v51, v284.f64[1]), v50, v284.f64[0]));
              }

              v54 = *v274;
              v56 = cf.size;
              v55 = v284;
              *(*v274 + 24) = cf.origin;
              *(v54 + 40) = v56;
              *(v54 + 56) = v55;
              v39 = *(v28 + 8);
            }

            if ((v39 & 0x10000) != 0)
            {
              v57 = *(*(v28 + 56) + 8);
              if (v57)
              {
                CGGStateSetFillColor(*v276, *(v57 + 16));
                v39 = *(v28 + 8);
              }
            }

            if ((v39 & 0x20000) != 0)
            {
              CG::DisplayListExecutor::applyEntryStrokeState(*(v28 + 64), *v276);
            }

            CGGStateSetRenderingIntent(*v276, (*(v37 + 96) << 18) >> 26);
            v58 = *v276;
            v59 = *(v37 + 56);
            if (*(*(*v276 + 120) + 8) != v59)
            {
              maybeCopyRenderingState(*v276);
              *(*(v58 + 120) + 8) = v59;
              v58 = *v276;
            }

            CGGStateSetTextDrawingMode(v58, *(v28 + 216));
            CGGStateSetFontRenderingStyle(*v276, *(v28 + 220));
            CGGStateSetFont(*v276, *(*(v28 + 80) + 16));
            v60 = *v276;
            v61 = *(v28 + 184);
            if (*(*(*v276 + 136) + 16) != v61)
            {
              maybe_copy_text_state(*v276);
              *(*(v60 + 136) + 16) = v61;
              v60 = *v276;
            }

            CGGStateSetFontDilation(v60, *(v28 + 192), *(v28 + 200));
            v62 = *(v28 + 208);
            if (v62)
            {
              CGGStateSetFontSmoothingBackgroundColor(*v276, *(v62 + 16));
            }

            CGGStateSetShouldDrawBitmapRuns(*v276, *(v28 + 224));
            v63 = *(v28 + 152);
            cf.origin = *(v28 + 136);
            cf.size = v63;
            v284 = *(v28 + 168);
            if (!*v273)
            {
              goto LABEL_37;
            }

            v34 = *(*v273 + 88);
            if (!v34)
            {
              goto LABEL_37;
            }

LABEL_312:
            v34();
            goto LABEL_37;
          }

          if (!v28)
          {
            goto LABEL_37;
          }

          v106 = *v276;
          if (!*v276)
          {
            goto LABEL_37;
          }

          v107 = *(v28 + 32);
          cf.origin = *(v28 + 16);
          cf.size = v107;
          if (CG::DisplayListExecutor::rejectRect(&v272, &cf))
          {
            goto LABEL_37;
          }

          v108 = *(v28 + 48);
          v109 = *(v28 + 104);
          cf.origin = *(v28 + 88);
          cf.size = v109;
          v284 = *(v28 + 120);
          CG::DisplayListExecutor::applyEntryDrawingState(&v272, v108, &cf, v106);
          if ((*(v28 + 10) & 4) != 0)
          {
            v110 = *(v28 + 72);
            v111 = *v276;
            v112 = *(v110 + 56);
            v113 = *(v110 + 64);
            v114 = *(*v276 + 120);
            if (*(v114 + 24) != v112 || *(v114 + 32) != v113)
            {
              maybeCopyRenderingState(*v276);
              v116 = *(v111 + 120);
              *(v116 + 24) = v112;
              *(v116 + 32) = v113;
            }

            v117 = *(v110 + 72);
            if (*(*(v111 + 144) + 16) != v117)
            {
              maybe_copy_device_state(v111);
              *(*(v111 + 144) + 16) = v117;
            }

            v118 = *(v110 + 8);
            v119 = *(v110 + 24);
            v120 = *(v110 + 40);
            if (m)
            {
              v121 = *&m->c;
              v120 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v121, v120, 1), *&m->a, v120.f64[0]));
              v119 = vmlaq_n_f64(vmulq_laneq_f64(v121, v119, 1), *&m->a, v119.f64[0]);
              v118 = vmlaq_n_f64(vmulq_laneq_f64(v121, v118, 1), *&m->a, v118.f64[0]);
            }

            v122 = *v274;
            *(*v274 + 24) = v118;
            *(v122 + 40) = v119;
            *(v122 + 56) = v120;
          }

          CGGStateSetInterpolationQuality(*v276, *(v28 + 136));
          v123 = *v274;
          v124 = *v276;
          *(*v274 + 72) = *(v28 + 140);
          *(v123 + 76) = *(v28 + 144);
          CGGStateSetRenderingIntent(v124, *(v28 + 148));
          CGGStateSetImageRenderingIntent(*v276, *(v28 + 148));
          if (*(v28 + 10))
          {
            v125 = *(*(v28 + 56) + 8);
            if (v125)
            {
              CGGStateSetFillColor(*v276, *(v125 + 16));
            }
          }

          v126 = *(v28 + 80);
          v127 = *(v126 + 16);
          if (v127)
          {
            CFRetain(*(v126 + 16));
          }

          if (CGImageGetHeadroomInfo(v127, 0) > 1.0)
          {
            if (!*v273)
            {
              Copy = v127;
              goto LABEL_324;
            }

            v128 = *(*v273 + 264);
            if (v128)
            {
              v129 = v128();
              if (v129)
              {
                v130 = v129;
                CGColorSpaceSanitizeHeadroom(v129, *(*(*v276 + 120) + 48));
                v132 = v131;
                HeadroomInfo = CGImageGetHeadroomInfo(v127, 0);
                v134 = v132 <= 0.0;
                if (v132 >= HeadroomInfo)
                {
                  v134 = 1;
                }

                if (v134)
                {
                  Copy = v127;
                }

                else
                {
                  Copy = 0;
                }

                if (v134 || !v127)
                {
                  goto LABEL_321;
                }

                v136 = *(v127 + 28);
                if (v136)
                {
                  v137 = HeadroomInfo;
                  Property = CGPropertiesGetProperty(v136, @"kCGColorConversionInfoPayload");
                  if (Property)
                  {
                    v139 = Property;
                    Value = CFDictionaryGetValue(Property, @"kCGToneMappingMethod");
                    v141 = CFDictionaryGetValue(v139, @"kCGHDRMediaReferenceWhite");
                    v142 = CFDictionaryGetValue(v139, @"kCGToneMappingMethodOptions");
                    if (Value && v141)
                    {
                      v143 = v142;
                      cf.origin.x = 0.0;
                      v271 = CGToneMappingMethodFromName(Value);
                      ColorSpace = CGImageGetColorSpace(v127);
                      v145 = CGGetFloatValue(v141);
                      if (CGCreateResolvedToneMappingSettingForMethod(v271, v130, ColorSpace, v143, 0, &cf, v132, v137, v145))
                      {
                        Copy = CGImageCreateCopy(v127);
                        if (CGImageSetColorConversionInfoOptions(Copy, *&cf.origin.x))
                        {
                          CFRelease(v127);
                          CGImageSetCachingFlags(Copy, 1);
LABEL_330:
                          if (*&cf.origin.x)
                          {
                            CFRelease(*&cf.origin.x);
                          }

LABEL_321:
                          if (*v273)
                          {
                            v266 = *(*v273 + 80);
                            if (v266)
                            {
                              v266(0.0, 0.0, 1.0, 1.0);
                            }
                          }

LABEL_324:
                          if (Copy)
                          {
                            goto LABEL_325;
                          }

                          goto LABEL_37;
                        }

                        if (Copy)
                        {
                          CFRelease(Copy);
                        }
                      }

                      else
                      {
                        CGPostError("%s: Cannot create resolved tone mapping settings. CGCreateResolvedToneMappingSettingForMethod returned false", "drawImage");
                      }

                      Copy = v127;
                      goto LABEL_330;
                    }

                    CGPostError("%s: Cannot create resolved tone mapping settings. Bad payload", "drawImage");
                  }
                }
              }
            }
          }

          Copy = v127;
          goto LABEL_321;
        }

        if (v29 != 2)
        {
          if (v29 != 3)
          {
            goto LABEL_37;
          }

          if (!v28)
          {
            goto LABEL_37;
          }

          v64 = *v276;
          if (!*v276)
          {
            goto LABEL_37;
          }

          v65 = *(v28 + 32);
          cf.origin = *(v28 + 16);
          cf.size = v65;
          if (CG::DisplayListExecutor::rejectRect(&v272, &cf))
          {
            goto LABEL_37;
          }

          v66 = *(v28 + 48);
          v67 = *(v28 + 104);
          cf.origin = *(v28 + 88);
          cf.size = v67;
          v284 = *(v28 + 120);
          CG::DisplayListExecutor::applyEntryDrawingState(&v272, v66, &cf, v64);
          v68 = *(v28 + 8);
          if ((v68 & 0x40000) != 0)
          {
            v69 = *(v28 + 72);
            v70 = *v276;
            v71 = *(v69 + 56);
            v72 = *(v69 + 64);
            v73 = *(*v276 + 120);
            if (*(v73 + 24) != v71 || *(v73 + 32) != v72)
            {
              maybeCopyRenderingState(*v276);
              v75 = *(v70 + 120);
              *(v75 + 24) = v71;
              *(v75 + 32) = v72;
            }

            v76 = *(v69 + 72);
            if (*(*(v70 + 144) + 16) != v76)
            {
              maybe_copy_device_state(v70);
              *(*(v70 + 144) + 16) = v76;
            }

            v77 = *(v69 + 8);
            v78 = *(v69 + 24);
            v79 = *(v69 + 40);
            if (m)
            {
              v80 = *&m->c;
              v79 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v80, v79, 1), *&m->a, v79.f64[0]));
              v77 = vmlaq_n_f64(vmulq_laneq_f64(v80, v77, 1), *&m->a, v77.f64[0]);
              v78 = vmlaq_n_f64(vmulq_laneq_f64(v80, v78, 1), *&m->a, v78.f64[0]);
            }

            v81 = *v274;
            *(*v274 + 24) = v77;
            *(v81 + 40) = v78;
            *(v81 + 56) = v79;
            v68 = *(v28 + 8);
          }

          if ((v68 & 0x10000) != 0)
          {
            v82 = *(*(v28 + 56) + 8);
            if (v82)
            {
              CGGStateSetFillColor(*v276, *(v82 + 16));
              v68 = *(v28 + 8);
            }
          }

          if ((v68 & 0x20000) != 0)
          {
            CG::DisplayListExecutor::applyEntryStrokeState(*(v28 + 64), *v276);
          }

          CGGStateSetRenderingIntent(*v276, (*(v66 + 96) << 18) >> 26);
          v83 = *v276;
          v84 = *(v66 + 56);
          if (*(*(*v276 + 120) + 8) != v84)
          {
            maybeCopyRenderingState(*v276);
            *(*(v83 + 120) + 8) = v84;
          }

          if (!*v273)
          {
            goto LABEL_37;
          }

          v85 = *(v28 + 136);
          v34 = *(*v273 + 64);
          if (!v34)
          {
            Mutable = CGPathCreateMutable();
            Copy = Mutable;
            v252 = *(v28 + 104);
            cf.origin = *(v28 + 88);
            cf.size = v252;
            v284 = *(v28 + 120);
            p_cf = m;
            if (!m)
            {
              if (*(v28 + 88) == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v28 + 96)), vceqq_f64(*(v28 + 112), xmmword_18439C630))))) & 1) == 0)
              {
                if (*(v28 + 128) == 0.0)
                {
                  p_cf = 0;
                }

                else
                {
                  p_cf = &cf;
                }
              }

              else
              {
                p_cf = &cf;
              }
            }

            CGPathAddRects(Mutable, p_cf, v85, *(v28 + 144));
            CGContextDelegateDrawPath(*v273, *v274, *v276, *(v28 + 80), Copy);
            if (!Copy)
            {
              goto LABEL_37;
            }

            goto LABEL_325;
          }

          goto LABEL_312;
        }

        if (!v28)
        {
          goto LABEL_37;
        }

        v146 = *v276;
        if (!*v276)
        {
          goto LABEL_37;
        }

        v147 = *(v28 + 32);
        cf.origin = *(v28 + 16);
        cf.size = v147;
        if (CG::DisplayListExecutor::rejectRect(&v272, &cf))
        {
          goto LABEL_37;
        }

        v148 = *(v28 + 48);
        v149 = *(v28 + 112);
        cf.origin = *(v28 + 96);
        cf.size = v149;
        v284 = *(v28 + 128);
        CG::DisplayListExecutor::applyEntryDrawingState(&v272, v148, &cf, v146);
        v150 = *(v28 + 8);
        if ((v150 & 0x40000) != 0)
        {
          v151 = *(v28 + 72);
          v152 = *v276;
          v153 = *(v151 + 56);
          v154 = *(v151 + 64);
          v155 = *(*v276 + 120);
          if (*(v155 + 24) != v153 || *(v155 + 32) != v154)
          {
            maybeCopyRenderingState(*v276);
            v157 = *(v152 + 120);
            *(v157 + 24) = v153;
            *(v157 + 32) = v154;
          }

          v158 = *(v151 + 72);
          if (*(*(v152 + 144) + 16) != v158)
          {
            maybe_copy_device_state(v152);
            *(*(v152 + 144) + 16) = v158;
          }

          v159 = *(v151 + 8);
          v160 = *(v151 + 24);
          v161 = *(v151 + 40);
          if (m)
          {
            v162 = *&m->c;
            v161 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v162, v161, 1), *&m->a, v161.f64[0]));
            v159 = vmlaq_n_f64(vmulq_laneq_f64(v162, v159, 1), *&m->a, v159.f64[0]);
            v160 = vmlaq_n_f64(vmulq_laneq_f64(v162, v160, 1), *&m->a, v160.f64[0]);
          }

          v163 = *v274;
          *(*v274 + 24) = v159;
          *(v163 + 40) = v160;
          *(v163 + 56) = v161;
          v150 = *(v28 + 8);
        }

        if ((v150 & 0x10000) != 0)
        {
          v164 = *(*(v28 + 56) + 8);
          if (v164)
          {
            CGGStateSetFillColor(*v276, *(v164 + 16));
            v150 = *(v28 + 8);
          }
        }

        if ((v150 & 0x20000) != 0)
        {
          CG::DisplayListExecutor::applyEntryStrokeState(*(v28 + 64), *v276);
        }

        CGGStateSetRenderingIntent(*v276, (*(v148 + 96) << 18) >> 26);
        v165 = *v276;
        v166 = *(v148 + 56);
        if (*(*(*v276 + 120) + 8) != v166)
        {
          maybeCopyRenderingState(*v276);
          *(*(v165 + 120) + 8) = v166;
        }

        v167 = *(v28 + 88);
        if (!v167)
        {
          goto LABEL_37;
        }

        if (*(v28 + 84) == 1)
        {
          if (!*v273 || *(*v273 + 232))
          {
            v168 = *(v28 + 80);
            if (v168 <= 1)
            {
              v169 = *(v28 + 32);
              cf.origin = *(v28 + 16);
              cf.size = v169;
              CGContextDelegateDrawPathDirect(*v273, *v274, *v276, v168, v167, &cf);
              goto LABEL_37;
            }
          }

          Copy = CGPathCreateMutable();
          CGPathAddPath(Copy, (*v276 + 24), v167);
        }

        else
        {
          if (!m)
          {
            CGContextDelegateDrawPath(*v273, *v274, *v276, *(v28 + 80), v167);
            goto LABEL_37;
          }

          Copy = CGPathCreateMutable();
          CGPathAddPath(Copy, m, v167);
        }

        CGContextDelegateDrawPath(*v273, *v274, *v276, *(v28 + 80), Copy);
        if (Copy)
        {
          goto LABEL_325;
        }
      }

      else if (v29 <= 5)
      {
        if (v29 == 4)
        {
          if (v28)
          {
            v199 = *v276;
            if (*v276)
            {
              v200 = *(v28 + 32);
              cf.origin = *(v28 + 16);
              cf.size = v200;
              if (!CG::DisplayListExecutor::rejectRect(&v272, &cf))
              {
                v201 = *(v28 + 48);
                v202 = *(v28 + 96);
                cf.origin = *(v28 + 80);
                cf.size = v202;
                v284 = *(v28 + 112);
                CG::DisplayListExecutor::applyEntryDrawingState(&v272, v201, &cf, v199);
                v203 = *(v28 + 8);
                if ((v203 & 0x40000) != 0)
                {
                  v204 = *(v28 + 72);
                  v205 = *v276;
                  v206 = *(v204 + 56);
                  v207 = *(v204 + 64);
                  v208 = *(*v276 + 120);
                  if (*(v208 + 24) != v206 || *(v208 + 32) != v207)
                  {
                    maybeCopyRenderingState(*v276);
                    v210 = *(v205 + 120);
                    *(v210 + 24) = v206;
                    *(v210 + 32) = v207;
                  }

                  v211 = *(v204 + 72);
                  if (*(*(v205 + 144) + 16) != v211)
                  {
                    maybe_copy_device_state(v205);
                    *(*(v205 + 144) + 16) = v211;
                  }

                  v212 = *(v204 + 8);
                  v213 = *(v204 + 24);
                  v214 = *(v204 + 40);
                  if (m)
                  {
                    v215 = *&m->c;
                    v214 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v215, v214, 1), *&m->a, v214.f64[0]));
                    v212 = vmlaq_n_f64(vmulq_laneq_f64(v215, v212, 1), *&m->a, v212.f64[0]);
                    v213 = vmlaq_n_f64(vmulq_laneq_f64(v215, v213, 1), *&m->a, v213.f64[0]);
                  }

                  v216 = *v274;
                  *(*v274 + 24) = v212;
                  *(v216 + 40) = v213;
                  *(v216 + 56) = v214;
                  v203 = *(v28 + 8);
                }

                if ((v203 & 0x10000) != 0)
                {
                  v217 = *(*(v28 + 56) + 8);
                  if (v217)
                  {
                    CGGStateSetFillColor(*v276, *(v217 + 16));
                    v203 = *(v28 + 8);
                  }
                }

                if ((v203 & 0x20000) != 0)
                {
                  CG::DisplayListExecutor::applyEntryStrokeState(*(v28 + 64), *v276);
                }

                CGGStateSetRenderingIntent(*v276, (*(v201 + 96) << 18) >> 26);
                v218 = *v276;
                v219 = *(v201 + 56);
                if (*(*(*v276 + 120) + 8) != v219)
                {
                  maybeCopyRenderingState(*v276);
                  *(*(v218 + 120) + 8) = v219;
                  v218 = *v276;
                }

                CGContextDelegateDrawLines(*v273, *v274, v218, *(v28 + 128), *(v28 + 136));
              }
            }
          }

          goto LABEL_37;
        }

        if (v29 == 5)
        {
          if (v28)
          {
            v86 = *v276;
            if (*v276)
            {
              v87 = *(v28 + 32);
              cf.origin = *(v28 + 16);
              cf.size = v87;
              if (!CG::DisplayListExecutor::rejectRect(&v272, &cf))
              {
                v88 = *(v28 + 48);
                v89 = *(v28 + 104);
                cf.origin = *(v28 + 88);
                cf.size = v89;
                v284 = *(v28 + 120);
                CG::DisplayListExecutor::applyEntryDrawingState(&v272, v88, &cf, v86);
                if ((*(v28 + 10) & 4) != 0)
                {
                  v90 = *(v28 + 72);
                  v91 = *v276;
                  v92 = *(v90 + 56);
                  v93 = *(v90 + 64);
                  v94 = *(*v276 + 120);
                  if (*(v94 + 24) != v92 || *(v94 + 32) != v93)
                  {
                    maybeCopyRenderingState(*v276);
                    v96 = *(v91 + 120);
                    *(v96 + 24) = v92;
                    *(v96 + 32) = v93;
                  }

                  v97 = *(v90 + 72);
                  if (*(*(v91 + 144) + 16) != v97)
                  {
                    maybe_copy_device_state(v91);
                    *(*(v91 + 144) + 16) = v97;
                  }

                  v98 = *(v90 + 8);
                  v99 = *(v90 + 24);
                  v100 = *(v90 + 40);
                  if (m)
                  {
                    v101 = *&m->c;
                    v100 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v101, v100, 1), *&m->a, v100.f64[0]));
                    v98 = vmlaq_n_f64(vmulq_laneq_f64(v101, v98, 1), *&m->a, v98.f64[0]);
                    v99 = vmlaq_n_f64(vmulq_laneq_f64(v101, v99, 1), *&m->a, v99.f64[0]);
                  }

                  v102 = *v274;
                  *(*v274 + 24) = v98;
                  *(v102 + 40) = v99;
                  *(v102 + 56) = v100;
                }

                CGGStateSetInterpolationQuality(*v276, *(v28 + 136));
                CGGStateSetRenderingIntent(*v276, *(v28 + 140));
                CGGStateSetRenderingIntent(*v276, (*(v88 + 96) << 18) >> 26);
                v103 = *v276;
                v104 = *(v88 + 56);
                if (*(*(*v276 + 120) + 8) != v104)
                {
                  maybeCopyRenderingState(*v276);
                  *(*(v103 + 120) + 8) = v104;
                }

                v105 = *(v28 + 80);
                if (v105 && (*(v105 + 24) || *(v105 + 16)))
                {
                  if (*v273)
                  {
                    v34 = *(*v273 + 96);
                    if (v34)
                    {
                      goto LABEL_312;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        switch(v29)
        {
          case 6:
            if (!v28)
            {
              break;
            }

            v170 = *v276;
            if (!*v276)
            {
              break;
            }

            v171 = *(v28 + 32);
            cf.origin = *(v28 + 16);
            cf.size = v171;
            if (CG::DisplayListExecutor::rejectRect(&v272, &cf))
            {
              break;
            }

            v172 = *(v28 + 48);
            v173 = *(v28 + 104);
            cf.origin = *(v28 + 88);
            cf.size = v173;
            v284 = *(v28 + 120);
            CG::DisplayListExecutor::applyEntryDrawingState(&v272, v172, &cf, v170);
            if ((*(v28 + 10) & 4) != 0)
            {
              v174 = *(v28 + 72);
              v175 = *v276;
              v176 = *(v174 + 56);
              v177 = *(v174 + 64);
              v178 = *(*v276 + 120);
              if (*(v178 + 24) != v176 || *(v178 + 32) != v177)
              {
                maybeCopyRenderingState(*v276);
                v180 = *(v175 + 120);
                *(v180 + 24) = v176;
                *(v180 + 32) = v177;
              }

              v181 = *(v174 + 72);
              if (*(*(v175 + 144) + 16) != v181)
              {
                maybe_copy_device_state(v175);
                *(*(v175 + 144) + 16) = v181;
              }

              v182 = *(v174 + 8);
              v183 = *(v174 + 24);
              v184 = *(v174 + 40);
              if (m)
              {
                v185 = *&m->c;
                v184 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v185, v184, 1), *&m->a, v184.f64[0]));
                v182 = vmlaq_n_f64(vmulq_laneq_f64(v185, v182, 1), *&m->a, v182.f64[0]);
                v183 = vmlaq_n_f64(vmulq_laneq_f64(v185, v183, 1), *&m->a, v183.f64[0]);
              }

              v186 = *v274;
              *(*v274 + 24) = v182;
              *(v186 + 40) = v183;
              *(v186 + 56) = v184;
            }

            CGGStateSetRenderingIntent(*v276, (*(v172 + 96) << 18) >> 26);
            v187 = *v276;
            v188 = *(v172 + 56);
            if (*(*(*v276 + 120) + 8) != v188)
            {
              maybeCopyRenderingState(*v276);
              *(*(v187 + 120) + 8) = v188;
            }

            v189 = *(v28 + 80);
            if (!v189)
            {
              break;
            }

            v190 = *(v189 + 16);
            if (!v190)
            {
              break;
            }

            v191 = *(v28 + 136);
            if (v191 == 3)
            {
              if (!*v273)
              {
                break;
              }

              v262 = *(*v273 + 120);
              if (v262)
              {
                if (v262(*(v28 + 224), *(v28 + 232), *(v28 + 240)) != 1006)
                {
                  break;
                }
              }

              v263 = v190[3];
              Function = CGGradientGetFunction(v190);
              Conic = CGShadingCreateConic(v263, Function, *(v28 + 224), *(v28 + 232), *(v28 + 240));
              if (!Conic)
              {
                break;
              }

              goto LABEL_307;
            }

            if (v191 == 2)
            {
              if (*v273)
              {
                v254 = *(v28 + 176);
                v255 = *(v28 + 184);
                v256 = *(v28 + 192);
                v257 = *(v28 + 200);
                v258 = *(v28 + 208);
                v259 = *(v28 + 216);
                v260 = *(v28 + 140);
                v261 = *(*v273 + 112);
                if (!v261)
                {
                  goto LABEL_301;
                }

                if (v261(v254, v255, v258, v256, v257, v259) == 1006)
                {
                  v260 = *(v28 + 140);
                  v254 = *(v28 + 176);
                  v255 = *(v28 + 184);
                  v256 = *(v28 + 192);
                  v257 = *(v28 + 200);
                  v258 = *(v28 + 208);
                  v259 = *(v28 + 216);
LABEL_301:
                  Conic = CGShadingCreateRadialWithGradient(v190, v260 & 1, (v260 & 2) != 0, v254, v255, v258, v256, v257, v259);
                  if (!Conic)
                  {
                    break;
                  }

                  goto LABEL_307;
                }
              }
            }

            else
            {
              if (v191 != 1 || !*v273)
              {
                break;
              }

              v192 = *(v28 + 144);
              v193 = *(v28 + 152);
              v194 = *(v28 + 160);
              v195 = *(v28 + 168);
              v196 = *(v28 + 140);
              v197 = *(*v273 + 104);
              if (!v197)
              {
                goto LABEL_222;
              }

              if (v197(v192, v193, v194, v195) == 1006)
              {
                v196 = *(v28 + 140);
                v192 = *(v28 + 144);
                v193 = *(v28 + 152);
                v194 = *(v28 + 160);
                v195 = *(v28 + 168);
LABEL_222:
                Conic = CGShadingCreateAxialWithGradient(v190, v196 & 1, (v196 & 2) != 0, v192, v193, v194, v195);
                if (!Conic)
                {
                  break;
                }

LABEL_307:
                Copy = Conic;
                if (*v273)
                {
                  v265 = *(*v273 + 96);
                  if (v265)
                  {
                    v265();
                  }
                }

LABEL_325:
                CFRelease(Copy);
              }
            }

            break;
          case 7:
            if (v28)
            {
              v220 = *v276;
              if (*v276)
              {
                v221 = *(v28 + 32);
                cf.origin = *(v28 + 16);
                cf.size = v221;
                if (!CG::DisplayListExecutor::rejectRect(&v272, &cf))
                {
                  v222 = *(v28 + 48);
                  v223 = *(v28 + 104);
                  cf.origin = *(v28 + 88);
                  cf.size = v223;
                  v284 = *(v28 + 120);
                  CG::DisplayListExecutor::applyEntryDrawingState(&v272, v222, &cf, v220);
                  if ((*(v28 + 10) & 4) != 0)
                  {
                    v224 = *(v28 + 72);
                    v225 = *v276;
                    v226 = *(v224 + 56);
                    v227 = *(v224 + 64);
                    v228 = *(*v276 + 120);
                    if (*(v228 + 24) != v226 || *(v228 + 32) != v227)
                    {
                      maybeCopyRenderingState(*v276);
                      v230 = *(v225 + 120);
                      *(v230 + 24) = v226;
                      *(v230 + 32) = v227;
                    }

                    v231 = *(v224 + 72);
                    if (*(*(v225 + 144) + 16) != v231)
                    {
                      maybe_copy_device_state(v225);
                      *(*(v225 + 144) + 16) = v231;
                    }

                    v232 = *(v224 + 8);
                    v233 = *(v224 + 24);
                    v234 = *(v224 + 40);
                    if (m)
                    {
                      v235 = *&m->c;
                      v234 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v235, v234, 1), *&m->a, v234.f64[0]));
                      v232 = vmlaq_n_f64(vmulq_laneq_f64(v235, v232, 1), *&m->a, v232.f64[0]);
                      v233 = vmlaq_n_f64(vmulq_laneq_f64(v235, v233, 1), *&m->a, v233.f64[0]);
                    }

                    v236 = *v274;
                    *(*v274 + 24) = v232;
                    *(v236 + 40) = v233;
                    *(v236 + 56) = v234;
                  }

                  CGGStateSetInterpolationQuality(*v276, *(v28 + 136));
                  CGGStateSetRenderingIntent(*v276, *(v28 + 140));
                  CGGStateSetRenderingIntent(*v276, (*(v222 + 96) << 18) >> 26);
                  v237 = *v276;
                  v238 = *(v222 + 56);
                  v239.n128_u64[0] = *(*(*v276 + 120) + 8);
                  if (v239.n128_f64[0] != v238)
                  {
                    maybeCopyRenderingState(*v276);
                    *(*(v237 + 120) + 8) = v238;
                  }

                  v240 = *(v28 + 80);
                  if (v240)
                  {
                    CGDisplayListDelegateDrawDisplayList(*v273, *v274, *v276, *(v240 + 16), v239);
                  }

                  else
                  {
                    CGPostError("entry has NULL display list resource");
                  }
                }
              }
            }

            break;
          case 8:
            if (v28)
            {
              v32 = *v276;
              if (*v276)
              {
                v33 = (v29 >> 8) & 0xF;
                if (v33 <= 4)
                {
                  if (v33 == 1)
                  {
                    if (!*v273)
                    {
                      break;
                    }

                    v34 = *(*v273 + 168);
                    if (!v34)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (v33 != 2)
                    {
                      break;
                    }

                    if (!*v273)
                    {
                      break;
                    }

                    v34 = *(*v273 + 168);
                    if (!v34)
                    {
                      break;
                    }
                  }

                  goto LABEL_312;
                }

                if (v33 == 5)
                {
                  v249 = *v273;
                  if (*v273 && !*(*v273 + 168))
                  {
                    break;
                  }

                  v250 = *(v28 + 80);
                  {
                    CGPostError("%s: Unexpected action resource type");
                    break;
                  }

                  if (!v249)
                  {
                    break;
                  }

                  v34 = *(v249 + 168);
                  if (!v34)
                  {
                    break;
                  }

                  goto LABEL_312;
                }

                if (v33 != 6)
                {
                  break;
                }

                v241 = *(v28 + 80);
                if (!v241)
                {
                  break;
                }

                if (!v242)
                {
                  break;
                }

                v243 = v242[2];
                if (!v243)
                {
                  break;
                }

                v244 = *(v28 + 88);
                if (!v244)
                {
                  break;
                }

                v245 = *(v244 + 16);
                if (!v245)
                {
                  break;
                }

                v246 = *v273;
                if (!*v273)
                {
                  break;
                }

                v247 = *v274;
                v248 = *(*v273 + 168);
                if (!v248)
                {
                  goto LABEL_275;
                }

                if (v248(*v273, *v274, v32, @"kCGContextDisplayList", v245) == 1006)
                {
                  v246 = *v273;
                  v247 = *v274;
LABEL_275:
                  CG::DisplayList::execute(v243 + 16, v246, v247, *v275, 0, v245);
                }
              }
            }

            break;
        }
      }

LABEL_37:
      a2 += 2;
      if (a2 == a3)
      {
        v24 = *v274;
        break;
      }
    }
  }

  v267 = *&v282.a;
  v268 = *&v282.c;
  *(v24 + 56) = *&v282.tx;
  *(v24 + 40) = v268;
  *(v24 + 24) = v267;
  return CGGStackRestore(*v275);
}

void sub_183EB7108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v17 = v14[7];
  v16 = v14[8];
  *(a13 + 24) = v14[6];
  *(a13 + 40) = v17;
  *(a13 + 56) = v16;
  CGGStackRestore(a14);
  _Unwind_Resume(a1);
}

void maybeCopyClipState(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v2 = *(a1 + 112);
    *(a1 + 112) = CGClipStackCreateMutableCopy(v2);
    CGClipStackRelease(v2);
    *(a1 + 20) &= ~1u;
  }
}

void CG::DisplayList::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGRect *a5, CFDictionaryRef theDict)
{
  if (!theDict || !CFDictionaryContainsKey(theDict, @"kCGContextBackgroundColor") || *(a1 + 696) == -1)
  {
    v26 = *(a1 + 672);
    v27 = *(a1 + 680);
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v33 = 0;
LABEL_26:

    CG::DisplayList::executeEntries(v28, v26, v27, v29, v30, v31, &v32->origin, v33);
    return;
  }

  Shape = CG::DisplayListShape::getShape(*(a1 + 104), v12);
  if (!Shape)
  {
    v26 = *(a1 + 672);
    v27 = *(a1 + 680);
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
LABEL_75:
    v32 = a5;
    v33 = 1;
    goto LABEL_26;
  }

  v14 = Shape;
  v82 = a4;
  if (a5)
  {
    v94 = CGRectIntegral(*a5);
    x = v94.origin.x;
    y = v94.origin.y;
    width = v94.size.width;
    height = v94.size.height;
    if (v94.size.width < 0.0 || v94.size.height < 0.0)
    {
      v37 = COERCE_DOUBLE(CGRectStandardize(v94));
      if (v37 <= 1073741820.0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 1073741820.0;
      }

      if (v37 >= -1073741820.0)
      {
        v22 = v38;
      }

      else
      {
        v22 = -1073741824;
      }

      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = width;
      v95.size.height = height;
      v96 = CGRectStandardize(v95);
      if (v96.origin.y <= 1073741820.0)
      {
        v39 = v96.origin.y;
      }

      else
      {
        v39 = 1073741820.0;
      }

      if (v96.origin.y >= -1073741820.0)
      {
        v24 = v39;
      }

      else
      {
        v24 = -1073741824;
      }

      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = width;
      v97.size.height = height;
      v98 = CGRectStandardize(v97);
      v40 = v98.origin.x + v98.size.width;
      if (v40 <= 1073741820.0)
      {
        v41 = v40;
      }

      else
      {
        v41 = 1073741820.0;
      }

      if (v40 >= -1073741820.0)
      {
        v25 = v41;
      }

      else
      {
        v25 = -1073741824;
      }

      v99.origin.x = x;
      v99.origin.y = y;
      v99.size.width = width;
      v99.size.height = height;
      v100 = CGRectStandardize(v99);
      y = v100.origin.y;
      height = v100.size.height;
    }

    else
    {
      v20 = 1073741820.0;
      if (x <= 1073741820.0)
      {
        v21 = x;
      }

      else
      {
        v21 = 1073741820.0;
      }

      if (x >= -1073741820.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = -1073741824;
      }

      if (y <= 1073741820.0)
      {
        v23 = y;
      }

      else
      {
        v23 = 1073741820.0;
      }

      if (y >= -1073741820.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = -1073741824;
      }

      if (x + width <= 1073741820.0)
      {
        v20 = x + width;
      }

      if (x + width >= -1073741820.0)
      {
        v25 = v20;
      }

      else
      {
        v25 = -1073741824;
      }
    }

    v42 = 1073741820.0;
    if (y + height <= 1073741820.0)
    {
      v42 = y + height;
    }

    if (y + height >= -1073741820.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = -1073741824;
    }

    if (v22 >= v25 || v24 >= v43)
    {
      goto LABEL_74;
    }

    v45 = shape_intersect_with_bounds(v15, v14, v22, v24, v25, v43);
    if (!v45 || v45 == &the_empty_shape)
    {
      goto LABEL_74;
    }

    v34 = v45;
    if (v45[v45[1]] == 0x7FFFFFFF)
    {
      free(v45);
LABEL_74:
      v26 = *(a1 + 672);
      v27 = *(a1 + 680);
      v28 = a1;
      v29 = a2;
      v30 = a3;
      v31 = v82;
      goto LABEL_75;
    }
  }

  else
  {
    v34 = shape_copy(Shape);
  }

  v35 = malloc_type_malloc(0x38uLL, 0x1050040CAC2EC8CuLL);
  *v35 = 0;
  *(v35 + 4) = xmmword_18439CC20;
  *(v35 + 20) = vneg_f32(0x100000001);
  *(v35 + 5) = 0;
  *(v35 + 6) = 0;
  *(v35 + 4) = 0;
  v83 = v35;
  if (v34 != &the_empty_shape && v34[v34[1]] != 0x7FFFFFFF)
  {
    *(v35 + 1) = 0;
    *(v35 + 4) = v34;
    *(v35 + 5) = v34 + 2;
  }

  v91 = 0;
  *v92 = 0;
  cf = 0;
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (CGCFDictionaryGetCFTypeRef(theDict, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, &cf))
  {
    v36 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    v36 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  }

  v81 = a5;
  cf = v36;
  Model = CGColorSpaceGetModel(v36);
  if (Model >= kCGColorSpaceModelLab)
  {
    CGColorSpaceRelease(cf);
    cf = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    v48 = 8198;
    v49 = 32;
  }

  else
  {
    v48 = dword_1844F1B44[Model];
    v49 = qword_1844F1B50[Model];
  }

  v89 = *(a3 + 8);
  CGCFDictionaryGetSize(theDict, @"kCGContextResolution", &v89);
  __src = 0;
  v50 = 0;
  v51 = v83;
  while (shape_enum_next(v51, &v92[1], v92, &v91 + 1, &v91))
  {
    v87.x = v92[1];
    v87.y = v92[0];
    *&v88 = (HIDWORD(v91) - v92[1]);
    *(&v88 + 1) = (v91 - v92[0]);
    v52 = *&v89 * *&v88 / 72.0;
    v53 = vcvtpd_u64_f64(v52);
    v54 = *(&v89 + 1) * *(&v88 + 1) / 72.0;
    v55 = CGBitmapContextCreateWithDataAndDictionary(0, v53, vcvtpd_u64_f64(v54), 8, v49, (v49 * v53) >> 3, cf, v48, *&v89, *(&v89 + 1), 0, 0, 0);
    if (v55)
    {
      v56 = v55;
      v57 = v55[14];
      if (v57 != a3)
      {
        *(v57 + 8) = *(a3 + 8);
        v58 = *(a3 + 24);
        v59 = *(a3 + 40);
        *(v57 + 56) = *(a3 + 56);
        *(v57 + 40) = v59;
        *(v57 + 24) = v58;
        *(v57 + 72) = *(a3 + 72);
        *(v57 + 4) = *(a3 + 4);
        *(v57 + 80) = *(a3 + 80);
        *(v57 + 84) = *(a3 + 84);
        *(v57 + 86) = *(a3 + 86);
      }

      CGContextErase(v55);
      if (*(v56 + 4) == 1129601108)
      {
        v60 = v56[12];
        v61 = vmulq_n_f64(*(v60 + 40), ceil(v54) / *(&v88 + 1));
        *(v60 + 24) = vmulq_n_f64(*(v60 + 24), ceil(v52) / *&v88);
        *(v60 + 40) = v61;
      }

      else
      {
        handle_invalid_context("CGContextScaleCTM", v56);
      }

      if (*(v56 + 4) == 1129601108)
      {
        *(v56[12] + 56) = vmlsq_lane_f64(vmlsq_lane_f64(*(v56[12] + 56), *(v56[12] + 24), v87.x, 0), *(v56[12] + 40), v87.y, 0);
      }

      else
      {
        handle_invalid_context("CGContextTranslateCTM", v56);
      }

      v62 = *(a1 + 696);
      if (v62 == -1)
      {
        v63 = 0;
      }

      else
      {
        v63 = 16 * v62;
      }

      CG::DisplayList::executeEntries(a1, *(a1 + 672), (*(a1 + 672) + v63 + 16), v56[5], v56[14], v56[13], &v87, 0);
      Image = CGBitmapContextCreateImage(v56);
      CFRelease(v56);
      if (Image)
      {
        v85 = v87;
        v86 = v88;
        v65 = v50 - __src;
        v66 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - __src) >> 3);
        v67 = v66 + 1;
        if (v66 + 1 > 0x666666666666666)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        if (0x999999999999999ALL * (-__src >> 3) > v67)
        {
          v67 = 0x999999999999999ALL * (-__src >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
        {
          v68 = 0x666666666666666;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          if (v68 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fe200100]();
        }

        v69 = 40 * v66;
        *v69 = Image;
        *(v69 + 8) = v85;
        *(v69 + 24) = v86;
        v50 = 40 * v66 + 40;
        v70 = (v69 + 40 * (v65 / -40));
        memcpy(v70, __src, v65);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v70;
        v51 = v83;
      }
    }
  }

  CGColorSpaceRelease(cf);
  free(v51);
  if (v34 && v34 != &the_empty_shape)
  {
    free(v34);
  }

  v71 = *(a1 + 696);
  if (v71 == -1)
  {
    v72 = 0;
  }

  else
  {
    v72 = 16 * v71;
  }

  CG::DisplayList::executeEntries(a1, *(a1 + 672), (*(a1 + 672) + v72 + 16), a2, a3, v82, &v81->origin, 1);
  if (__src != v50)
  {
    v73 = *(v82 + 8);
    if (v73 == v82)
    {
      v74 = CGGStateCreate();
      v75 = *(v82 + 8);
      *(v82 + 8) = v74;
      *v74 = v82;
      *v75 = v74;
      *(v74 + 1) = v75;
      v73 = *(v82 + 8);
    }

    v76 = __src;
    do
    {
      v77 = *v76;
      if (a2)
      {
        v78 = *(a2 + 80);
        if (v78)
        {
          v78(a2, a3, v73, v77, *(v76 + 8), *(v76 + 16), *(v76 + 24), *(v76 + 32));
          v77 = *v76;
        }
      }

      if (v77)
      {
        CFRelease(v77);
      }

      v76 += 40;
    }

    while (v76 != v50);
  }

  v79 = *(a1 + 696);
  if (v79 == -1)
  {
    v80 = 0;
  }

  else
  {
    v80 = 16 * v79;
  }

  CG::DisplayList::executeEntries(a1, (v80 + *(a1 + 672)), *(a1 + 680), a2, a3, v82, &v81->origin, 1);
  if (__src)
  {
    operator delete(__src);
  }
}

void sub_183EB7A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CGClipStackAddRect(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a1)
  {
    v12 = (a1 + 16);
    if (!CGRectContainsRect(*&a3, *(a1 + 16)))
    {
      if (a2)
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        v25 = CGRectIntersection(*(a1 + 80), v30);
        *(a1 + 80) = v25;
        v13 = *(a1 + 8);
        if ((v13 & 2) != 0)
        {
          x = v25.origin.x;
          y = v25.origin.y;
          width = v25.size.width;
          height = v25.size.height;
          v32 = CGRectIntegral(*(a1 + 48));
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          *(a1 + 16) = CGRectIntersection(v29, v32);
        }

        else
        {
          v14 = *(a1 + 96);
          *v12 = *(a1 + 80);
          v12[1] = v14;
        }

        v20 = v13 | 4;
      }

      else
      {
        v31.origin.x = a3;
        v31.origin.y = a4;
        v31.size.width = a5;
        v31.size.height = a6;
        v26 = CGRectIntersection(*(a1 + 48), v31);
        *(a1 + 48) = v26;
        v27 = CGRectIntegral(v26);
        v15 = v27.origin.x;
        v16 = v27.origin.y;
        v17 = v27.size.width;
        v18 = v27.size.height;
        v19 = *(a1 + 8);
        if ((v19 & 4) != 0)
        {
          v28 = CGRectIntersection(*(a1 + 80), *&v15);
          v15 = v28.origin.x;
          v16 = v28.origin.y;
          v17 = v28.size.width;
          v18 = v28.size.height;
        }

        *(a1 + 16) = v15;
        *(a1 + 24) = v16;
        *(a1 + 32) = v17;
        *(a1 + 40) = v18;
        v20 = v19 | 2;
      }

      *(a1 + 8) = v20;
      *(a1 + 4) = atomic_fetch_add_explicit(&identifier_23214, 1u, memory_order_relaxed) + 1;
    }
  }
}

BOOL CGRectContainsRect(CGRect rect1, CGRect rect2)
{
  x = rect1.origin.x;
  if (rect2.origin.x == INFINITY || rect2.origin.y == INFINITY)
  {
    return 1;
  }

  y = rect1.origin.y;
  if (rect1.origin.x == INFINITY || rect1.origin.y == INFINITY)
  {
    return 0;
  }

  height = rect2.size.height;
  width = rect2.size.width;
  v9 = rect2.origin.y;
  v10 = rect2.origin.x;
  v11 = rect1.size.height;
  v12 = rect1.size.width;
  if (rect1.size.width < 0.0 || rect1.size.height < 0.0)
  {
    v13 = CGRectStandardize(rect1);
    x = v13.origin.x;
    y = v13.origin.y;
    v12 = v13.size.width;
    v11 = v13.size.height;
  }

  if (width < 0.0 || height < 0.0)
  {
    v14.origin.x = v10;
    v14.origin.y = v9;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectStandardize(v14);
    v10 = v15.origin.x;
    v9 = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
  }

  if (x > v10)
  {
    return 0;
  }

  result = 0;
  if (x + v12 >= v10 + width && y <= v9)
  {
    return y + v11 >= v9 + height;
  }

  return result;
}

BOOL CG::DisplayListExecutor::rejectRect(CG::DisplayListExecutor *this, const CGRect *a2)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  v4 = v3 == INFINITY || v2 == INFINITY;
  result = 0;
  if (!v4)
  {
    if (a2->origin.x > v3 + *(this + 8))
    {
      return 1;
    }

    y = a2->origin.y;
    if (y > v2 + *(this + 9) || a2->origin.x + a2->size.width < v3 || y + a2->size.height < v2)
    {
      return 1;
    }
  }

  return result;
}

void CGGStateDeviceCopy(uint64_t a1, uint64_t a2)
{
  device_state_release(*(a1 + 144));
  v4 = *(a2 + 144);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 144) = v4;
  *(a1 + 20) |= 0x10u;
  *(a2 + 20) |= 0x10u;
}

uint64_t CGGStackSave(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v3 = CGGStateCreate();
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    *v3 = a1;
    *v4 = v3;
    *(v3 + 1) = v4;
    v2 = *(a1 + 8);
  }

  Copy = CGGStateCreateCopy(v2);
  v6 = *(a1 + 8);
  *(a1 + 8) = Copy;
  *Copy = a1;
  *v6 = Copy;
  *(Copy + 1) = v6;
  return *(a1 + 8);
}

void CGGStateSetStyle(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 120) + 16) != a2)
  {
    maybeCopyRenderingState(a1);
    v4 = *(*(a1 + 120) + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 120) + 16) = a2;
  }
}

void CGGStateSetUndercolorRemoval(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 144) + 40) != a2)
  {
    maybe_copy_device_state(a1);
    v4 = *(*(a1 + 144) + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 144) + 40) = a2;
  }
}

void CGGStateSetBlackGeneration(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 144) + 32) != a2)
  {
    maybe_copy_device_state(a1);
    v4 = *(*(a1 + 144) + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 144) + 32) = a2;
  }
}

uint64_t CG::DisplayListExecutor::applyEntryDrawingState(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 40);
  if (v12 != v9)
  {
    if (v12 && v9)
    {
      if (*(v12 + 4) == *(v9 + 4))
      {
        goto LABEL_95;
      }

      *(a1 + 40) = v9;
      v13 = *(v9 + 120);
      v14 = *(v9 + 32);
      v124 = (v9 + 120);
      v15 = *(v9 + 16);
    }

    else
    {
      *(a1 + 40) = v9;
      if (!v9)
      {
        CGGStackRestore(*(a1 + 24));
        a4 = CGGStackSave(*(a1 + 24));
        *(a1 + 32) = a4;
        *(a1 + 80) = 0;
        goto LABEL_95;
      }

      v13 = *(v9 + 120);
      v14 = *(v9 + 32);
      v124 = (v9 + 120);
      v15 = *(v9 + 16);
      if (!v12)
      {
        v16 = 0;
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v15, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v14, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
        {
          v30 = *(v9 + 24);
          v31 = *(v9 + 40);
LABEL_46:
          v42 = CGClipCreateWithRect(*(a1 + 88), 1, v15.f64[0], v30, v14.f64[0], v31);
          CGGStateAddClip(a4, v42);
          CGClipRelease(v42);
        }

LABEL_47:
        if (v16 >= v13)
        {
          goto LABEL_95;
        }

        v121 = v11;
        v123 = a3;
        v43 = v9 + 8 * v16 + 128;
        v44 = v124;
        while (1)
        {
          if (*v44 <= v16)
          {
            v46 = 0;
            v47 = *(a1 + 88);
            if (!v47)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v45 = v43;
            if (*(v9 + 112) != 3)
            {
              v45 = (*(v9 + 128) + 8 * v16);
            }

            v46 = *v45;
            v47 = *(a1 + 88);
            if (!v47)
            {
              if (!v46)
              {
                goto LABEL_92;
              }

              goto LABEL_66;
            }
          }

          v48 = v46[8];
          v49 = v48;
          if (v49 <= 2)
          {
            if (!v48)
            {
              p_height = &CGRectNull.size.height;
              p_y = &CGRectNull.origin.y;
              v57 = v48 == 0;
              if (v46[8])
              {
                p_size = &CGRectNull.size;
              }

              else
              {
                p_size = (v46 + 40);
              }

              if (v57)
              {
                p_y = (v46 + 32);
              }

              if (v57)
              {
                v59 = (v46 + 24);
              }

              else
              {
                v59 = &CGRectNull;
              }

              if (v57)
              {
                p_height = (v46 + 48);
              }

              v46 = CGClipCreateWithRect(v47, v46[10], v59->origin.x, *p_y, p_size->width, *p_height);
              goto LABEL_92;
            }

            if (v49 == 2)
            {
              Mutable = CGPathCreateMutable();
              v51 = Mutable;
              if (v46[8] == 2)
              {
                v52 = *(v46 + 3);
              }

              else
              {
                v52 = 0;
              }

              v62 = v46[10];
              CGPathAddPath(Mutable, *(a1 + 88), v52);
              v63 = *(v46 + 4);
              if ((v63 & 0xFF00) == 0x200 && (v64 = *(v46 + 2)) != 0)
              {
                CopyWithTransform = CGClipStrokeCreateCopyWithTransform(v64, *(a1 + 88));
                v46 = CGClipCreateWithStrokedPath(v51, CopyWithTransform);
                CGClipStrokeRelease(CopyWithTransform);
              }

              else
              {
                v66 = 1.0;
                if (*(v46 + 4) == 2)
                {
                  v66 = *(v46 + 4);
                }

                v46 = CGClipCreateWithPath(v51, v63 >> 8, v62, v66);
              }

              v44 = v124;
              if (v51)
              {
                CFRelease(v51);
              }

              goto LABEL_92;
            }

LABEL_66:
            atomic_fetch_add_explicit(v46, 1u, memory_order_relaxed);
            goto LABEL_92;
          }

          if (v49 == 3)
          {
            if (v48 == 3)
            {
              v60 = *(v46 + 3);
              if (v60)
              {
                CopyByApplyingTransform = CGClipMaskCreateCopyByApplyingTransform(v60, v47);
                v46 = CGClipCreateWithMask(CopyByApplyingTransform, v46[10]);
                CGClipMaskRelease(CopyByApplyingTransform);
              }
            }

            goto LABEL_92;
          }

          if (v49 != 4)
          {
            goto LABEL_66;
          }

          if (v48 != 4)
          {
            goto LABEL_93;
          }

          v53 = *(v46 + 3);
          if (!v53)
          {
            goto LABEL_93;
          }

          v54 = CGTextClippingCreateCopyByApplyingTransform(v53, v47);
          v46 = CGClipCreateWithTextClipping(v54);
          CGTextClippingRelease(v54);
LABEL_92:
          CGGStateAddClip(a4, v46);
          CGClipRelease(v46);
LABEL_93:
          ++v16;
          v43 += 8;
          if (v13 == v16)
          {
            a3 = v123;
            v11 = v121;
            goto LABEL_95;
          }
        }
      }
    }

    v16 = *(v12 + 120);
    x = *(v12 + 16);
    v18 = *(v12 + 24);
    width = *(v12 + 32);
    v19 = *(v12 + 40);
    v120 = v15.f64[0];
    v122 = v14.f64[0];
    if (v13 >= v16)
    {
      v21 = 0;
      if (v16)
      {
        v22 = (v12 + 128);
        v23 = *(v12 + 112);
        v24 = v22;
        v25 = (v9 + 128);
        while (1)
        {
          if (v13 <= v21)
          {
            v27 = 0;
          }

          else
          {
            v26 = v25;
            if (*(v9 + 112) != 3)
            {
              v26 = (*(v9 + 128) + 8 * v21);
            }

            v27 = *v26;
          }

          v28 = v24;
          if (v23 != 3)
          {
            v28 = (*v22 + 8 * v21);
          }

          v29 = *v28;
          if (v27 != v29 || *(v27 + 4) != *(v29 + 4))
          {
            break;
          }

          ++v21;
          ++v25;
          ++v24;
          if (v16 == v21)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      v21 = -1;
    }

    if (v21 == v16)
    {
LABEL_30:
      v30 = v15.f64[1];
      v31 = v14.f64[1];
      v127.origin.x = x;
      v127.origin.y = v18;
      v127.size.width = width;
      v127.size.height = v19;
      v32 = v15.f64[1];
      v33 = v14.f64[1];
      if (CGRectContainsRect(v127, *v15.f64))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v30 = v15.f64[1];
      v31 = v14.f64[1];
    }

    CGGStackRestore(*(a1 + 24));
    a4 = CGGStackSave(*(a1 + 24));
    v16 = 0;
    *(a1 + 32) = a4;
    *(a1 + 80) = 0;
    v34 = *(a4 + 112);
    v35 = &CGRectInfinite;
    v36 = &CGRectInfinite.origin.y;
    v37 = &CGRectInfinite.size;
    v38 = (v34 + 16);
    v39 = (v34 + 24);
    v40 = (v34 + 32);
    v57 = v34 == 0;
    v41 = (v34 + 40);
    if (v57)
    {
      v41 = &CGRectInfinite.size.height;
    }

    else
    {
      v37 = v40;
      v36 = v39;
      v35 = v38;
    }

    v19 = *v41;
    x = v35->origin.x;
    v18 = *v36;
    width = v37->width;
LABEL_37:
    v128.origin.x = v120;
    v128.size.width = v122;
    v128.origin.y = v30;
    v128.size.height = v31;
    v131.origin.x = x;
    v131.origin.y = v18;
    v131.size.width = width;
    v131.size.height = v19;
    if (!CGRectEqualToRect(v128, v131))
    {
      v15.f64[0] = v120;
      if (v120 == -8.98846567e307)
      {
        v14.f64[0] = v122;
        if (v30 == -8.98846567e307 && v122 == 1.79769313e308 && v31 == 1.79769313e308)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v14.f64[0] = v122;
      }

      goto LABEL_46;
    }

    goto LABEL_47;
  }

LABEL_95:
  if (*(a1 + 80) != v11)
  {
    if (v11)
    {
      v67 = *(a1 + 88);
      if (v67)
      {
        if (*v67 == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v67 + 8)), vceqq_f64(*(v67 + 24), xmmword_18439C630))))) & 1) == 0 && *(v67 + 40) == 0.0)
        {
          CFRetain(v11);
          v68 = v11;
        }

        else
        {
          if (_block_invoke_once_17414 != -1)
          {
            dispatch_once(&_block_invoke_once_17414, &__block_literal_global_5_17415);
          }

          Instance = CGTypeCreateInstance(CGSoftMaskGetTypeID_soft_mask_type_id, 144);
          if (!Instance)
          {
            CGGStateSetSoftMask(a4, 0);
            v11 = 0;
            goto LABEL_114;
          }

          v68 = Instance;
          *(Instance + 16) = atomic_fetch_add_explicit(&identifier_17416, 1u, memory_order_relaxed) + 1;
          v72 = *(v67 + 16);
          v73 = vmlaq_n_f64(vmulq_n_f64(v72, *(v11 + 48)), *v67, *(v11 + 40));
          v74 = vaddq_f64(*(v67 + 32), vmlaq_n_f64(vmulq_n_f64(v72, *(v11 + 64)), *v67, *(v11 + 56)));
          *(Instance + 24) = vmlaq_n_f64(vmulq_n_f64(v72, *(v11 + 32)), *v67, *(v11 + 24));
          *(Instance + 40) = v73;
          *(Instance + 56) = v74;
          v75 = *(v11 + 72);
          *(Instance + 88) = *(v11 + 88);
          *(Instance + 72) = v75;
          v76 = *(v11 + 104);
          if (v76)
          {
            CFRetain(*(v11 + 104));
          }

          *(v68 + 104) = v76;
          v77 = *(v11 + 112);
          if (v77)
          {
            CFRetain(*(v11 + 112));
          }

          *(v68 + 112) = v77;
          CFRetain(v11);
          *(v68 + 120) = v11;
          *(v68 + 128) = CGSoftMaskCreateCopyByApplyingTransform_callbacks;
          *(v68 + 144) = off_1EF2407A8;
          *(v68 + 152) = 0;
          v11 = v68;
        }

        CGGStateSetSoftMask(a4, v68);
        CFRelease(v68);
LABEL_114:
        *(a1 + 80) = v11;
        goto LABEL_115;
      }

      v69 = a4;
      v70 = v11;
    }

    else
    {
      v69 = a4;
      v70 = 0;
    }

    CGGStateSetSoftMask(v69, v70);
    goto LABEL_114;
  }

LABEL_115:
  v78 = *(a1 + 88);
  v79 = *a3;
  if (v78)
  {
    v80 = v78[1];
    v81 = vmlaq_n_f64(vmulq_n_f64(v80, a3[1].f64[1]), *v78, a3[1].f64[0]);
    v82 = vaddq_f64(v78[2], vmlaq_n_f64(vmulq_n_f64(v80, a3[2].f64[1]), *v78, a3[2].f64[0]));
    v79 = vmlaq_n_f64(vmulq_n_f64(v80, a3->f64[1]), *v78, v79.f64[0]);
  }

  else
  {
    v81 = a3[1];
    v82 = a3[2];
  }

  v83 = *(a1 + 32);
  *(v83 + 24) = v79;
  *(v83 + 40) = v81;
  *(v83 + 56) = v82;
  v84 = *(a2 + 24);
  if (!v84)
  {
    v85 = 0;
LABEL_130:
    v92 = a4;
    v93 = v85;
LABEL_131:
    CGGStateSetStyle(v92, v93);
    goto LABEL_132;
  }

  v85 = *(v84 + 16);
  if (!v85 || *(v85 + 20) != 2 || (*(v85 + 104) & 0x80000000) != 0)
  {
    goto LABEL_130;
  }

  style_with_type = create_style_with_type(2);
  if (!style_with_type)
  {
    goto LABEL_159;
  }

  v87 = *(v85 + 24);
  if (v87)
  {
    CFRetain(*(v85 + 24));
  }

  *(style_with_type + 24) = v87;
  v88 = *(v85 + 20);
  if (v88 > 2)
  {
    if (v88 != 3)
    {
      if (v88 == 4)
      {
        v108 = *(v85 + 32);
        v109 = *(v85 + 64);
        *(style_with_type + 48) = *(v85 + 48);
        *(style_with_type + 64) = v109;
        *(style_with_type + 32) = v108;
        v110 = *(v85 + 80);
        v111 = *(v85 + 96);
        v112 = *(v85 + 128);
        *(style_with_type + 112) = *(v85 + 112);
        *(style_with_type + 128) = v112;
        *(style_with_type + 80) = v110;
        *(style_with_type + 96) = v111;
        v113 = *(v85 + 144);
        v114 = *(v85 + 160);
        v115 = *(v85 + 176);
        *(style_with_type + 192) = *(v85 + 192);
        *(style_with_type + 160) = v114;
        *(style_with_type + 176) = v115;
        *(style_with_type + 144) = v113;
        goto LABEL_159;
      }

      goto LABEL_155;
    }

    v116 = *(v85 + 32);
  }

  else
  {
    if (v88 != 1)
    {
      if (v88 == 2)
      {
        *(style_with_type + 32) = *(v85 + 32);
        v89 = *(v85 + 48);
        v90 = *(v85 + 64);
        v91 = *(v85 + 96);
        *(style_with_type + 80) = *(v85 + 80);
        *(style_with_type + 96) = v91;
        *(style_with_type + 48) = v89;
        *(style_with_type + 64) = v90;
        goto LABEL_159;
      }

LABEL_155:
      CGLog(2, "%s: Undefined type", "CGMutableStyleRef CGStyleCreateMutableCopy(CGStyleRef)");
      goto LABEL_159;
    }

    v116 = *(v85 + 32);
    v117 = *(v85 + 48);
    v118 = *(v85 + 64);
    *(style_with_type + 80) = *(v85 + 80);
    *(style_with_type + 48) = v117;
    *(style_with_type + 64) = v118;
  }

  *(style_with_type + 32) = v116;
LABEL_159:
  v129 = *(a2 + 64);
  v119 = *(a4 + 40);
  *&v125.a = *(a4 + 24);
  *&v125.c = v119;
  *&v125.tx = *(a4 + 56);
  v130 = CGRectApplyAffineTransform(v129, &v125);
  if (!style_with_type)
  {
    v92 = a4;
    v93 = 0;
    goto LABEL_131;
  }

  if (*(style_with_type + 20) == 2)
  {
    *(style_with_type + 72) = v130;
  }

  CGGStateSetStyle(a4, style_with_type);
  CFRelease(style_with_type);
LABEL_132:
  v94 = *(a2 + 40);
  if (v94)
  {
    v95 = *(v94 + 16);
  }

  else
  {
    v95 = 0;
  }

  CGGStateSetUndercolorRemoval(a4, v95);
  v96 = *(a2 + 32);
  if (v96)
  {
    v97 = *(v96 + 16);
  }

  else
  {
    v97 = 0;
  }

  CGGStateSetBlackGeneration(a4, v97);
  v98 = *(a2 + 48);
  if (*(*(a4 + 144) + 8) != v98)
  {
    maybe_copy_device_state(a4);
    *(*(a4 + 144) + 8) = v98;
  }

  CGGStateSetCompositeOperation(a4, (*(a2 + 96) << 26) >> 26);
  CGGStateSetShouldAntialias(a4, (*(a2 + 96) >> 6) & 1);
  CGGStateSetAlphaIsShape(a4, (*(a2 + 96) >> 7) & 1);
  v99 = *(a2 + 96);
  v100 = *(a4 + 144);
  v101 = (v99 >> 14) & 1;
  if (*(v100 + 24) != v101)
  {
    maybe_copy_device_state(a4);
    v100 = *(a4 + 144);
    *(v100 + 24) = v101;
    v99 = *(a2 + 96);
  }

  v102 = (v99 >> 15) & 1;
  if (*(v100 + 25) != v102)
  {
    maybe_copy_device_state(a4);
    v100 = *(a4 + 144);
    *(v100 + 25) = v102;
  }

  v103 = *(a2 + 100);
  if (*(v100 + 28) != v103)
  {
    maybe_copy_device_state(a4);
    *(*(a4 + 144) + 28) = v103;
  }

  v104 = *(a2 + 56);
  if (*(*(a4 + 120) + 8) != v104)
  {
    maybeCopyRenderingState(a4);
    *(*(a4 + 120) + 8) = v104;
  }

  CGGStateSetEDRTargetHeadroom(a4, *(a2 + 104));
  v105 = *(a2 + 108);
  v106 = *(a2 + 112);

  return CGGStateSetContentToneMappingInfo(a4, v105, v106);
}

void CGGStateSetAlphaIsShape(uint64_t result, int a2)
{
  if (((((*(*(result + 120) + 7) & 2) == 0) ^ a2) & 1) == 0)
  {
    maybeCopyRenderingState(result);
    if (a2)
    {
      v4 = 0x2000000;
    }

    else
    {
      v4 = 0;
    }

    *(*(result + 120) + 4) = *(*(result + 120) + 4) & 0xFDFFFFFF | v4;
  }
}

void CGGStateSetCompositeOperation(uint64_t result, int a2)
{
  if (a2 != (*(*(result + 120) + 4) << 16) >> 24)
  {
    v2 = a2;
    maybeCopyRenderingState(result);
    *(*(result + 120) + 5) = v2;
  }
}

void CGGStateSetShouldAntialias(uint64_t result, int a2)
{
  if (((((*(*(result + 120) + 7) & 1) == 0) ^ a2) & 1) == 0)
  {
    maybeCopyRenderingState(result);
    if (a2)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0;
    }

    *(*(result + 120) + 4) = *(*(result + 120) + 4) & 0xFEFFFFFF | v4;
  }
}

CFPropertyListRef CGColorSpaceCopyPropertyList(CGColorSpaceRef space)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((CGColorSpaceGetType(space) & 0xFFFFFFFE) == 8)
  {
    return 0;
  }

  ID = CGColorSpaceGetID(space);
  if (ID)
  {
    LODWORD(valuePtr) = ID;
    return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }

  if (space && (v5 = *(*(space + 3) + 80)) != 0 && (v6 = CFRetain(v5)) != 0)
  {
    v2 = v6;
    if (CFEqual(v6, @"kCGColorSpaceDeviceGray"))
    {
      return @"kCGColorSpaceGenericGrayGamma2_2";
    }

    else if (CFEqual(v2, @"kCGColorSpaceDeviceRGB"))
    {
      return @"kCGColorSpaceSRGB";
    }

    else if (CFEqual(v2, @"kCGColorSpaceDeviceCMYK"))
    {
      return @"kCGColorSpaceGenericCMYK";
    }
  }

  else
  {
    v7 = CGColorSpaceCopyICCData(space);
    if (v7)
    {
      v2 = v7;
      if (CGColorSpaceUsesExtendedRange(space))
      {
        *&valuePtr = @"kCGColorSpaceICCData";
        *(&valuePtr + 1) = @"kCGColorSpaceExtendedRange";
        v8 = *MEMORY[0x1E695E4D0];
        values = v2;
        v19 = v8;
        v9 = CFDictionaryCreate(0, &valuePtr, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(v2);
        return v9;
      }
    }

    else
    {
      if (CGColorSpaceGetType(space) != 7)
      {
        return 0;
      }

      BaseColorSpace = CGColorSpaceGetBaseColorSpace(space);
      v11 = CGColorSpaceCopyPropertyList(BaseColorSpace);
      if (!v11)
      {
        return 0;
      }

      v12 = v11;
      if (space && (v13 = *(space + 3), *(v13 + 28) == 5))
      {
        v14 = *(*(v13 + 96) + 8);
      }

      else
      {
        v14 = -1;
      }

      v17 = v14;
      v15 = CFNumberCreate(0, kCFNumberSInt8Type, &v17);
      v16 = CGColorSpaceCopyColorTable(space);
      valuePtr = xmmword_1E6E342D8;
      v22 = @"kCGIndexedColorTableKey";
      values = v12;
      v19 = v15;
      v20 = v16;
      v2 = CFDictionaryCreate(0, &valuePtr, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      CFRelease(v12);
    }
  }

  return v2;
}