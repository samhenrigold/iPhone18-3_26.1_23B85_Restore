BOOL AGX::SpecializableRenderPipelineState::hasAnyUnspecialized(AGX::SpecializableRenderPipelineState *this)
{
  v1 = *(this + 16);
  if (v1 == 3 || v1 == 1 && (*(this + 9) == 263 || *(this + 10) == 263 || *(this + 11) == 263 || *(this + 12) == 263 || *(this + 13) == 263 || *(this + 14) == 263 || *(this + 15) == 263 || *(this + 16) == 263))
  {
    return 1;
  }

  if (*this)
  {
    if (*this == 263)
    {
      return 1;
    }

    v2 = *(this + 144);
    if (v2 == 2)
    {
      return 1;
    }

    if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 148)))) & 1) != 0 || !*(this + 41) || !*(this + 42)))
    {
      return v2;
    }
  }

  v3 = *(this + 1);
  if (v3)
  {
    if (v3 == 263)
    {
      return 1;
    }

    v2 = *(this + 172);
    if (v2 == 2)
    {
      return 1;
    }

    if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 11)))) & 1) != 0 || !*(this + 48) || !*(this + 49)))
    {
      return v2;
    }
  }

  v4 = *(this + 2);
  if (v4)
  {
    if (v4 == 263)
    {
      return 1;
    }

    v2 = *(this + 200);
    if (v2 == 2)
    {
      return 1;
    }

    if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 204)))) & 1) != 0 || !*(this + 55) || !*(this + 56)))
    {
      return v2;
    }
  }

  v5 = *(this + 3);
  if (v5)
  {
    if (v5 == 263)
    {
      return 1;
    }

    v2 = *(this + 228);
    if (v2 == 2)
    {
      return 1;
    }

    if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 232)))) & 1) != 0 || !*(this + 62) || !*(this + 63)))
    {
      return v2;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    if (v6 == 263)
    {
      return 1;
    }

    v2 = *(this + 256);
    if (v2 == 2)
    {
      return 1;
    }

    if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 260)))) & 1) != 0 || !*(this + 69) || !*(this + 70)))
    {
      return v2;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    if (v7 == 263)
    {
      return 1;
    }

    v2 = *(this + 284);
    if (v2 == 2)
    {
      return 1;
    }

    if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 18)))) & 1) != 0 || !*(this + 76) || !*(this + 77)))
    {
      return v2;
    }
  }

  v8 = *(this + 6);
  if (v8)
  {
    if (v8 == 263)
    {
      return 1;
    }

    v2 = *(this + 312);
    if (v2 == 2)
    {
      return 1;
    }

    if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 316)))) & 1) != 0 || !*(this + 83) || !*(this + 84)))
    {
      return v2;
    }
  }

  v9 = *(this + 7);
  if (!v9)
  {
    return *(this + 372) != 0;
  }

  if (v9 != 263)
  {
    v2 = *(this + 340);
    if (v2 != 2)
    {
      if (v2 == 1 && ((vmaxv_u16(vmovn_s32(vceqzq_s32(*(this + 344)))) & 1) != 0 || !*(this + 90) || !*(this + 91)))
      {
        return v2;
      }

      return *(this + 372) != 0;
    }
  }

  return 1;
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyStateAndFunctionsFromOriginal(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v106 = *MEMORY[0x29EDCA608];
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::destroy(a1);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyState(a1, a3, 0, a2);
  v8 = a3[1];
  v9 = MEMORY[0x29EDC5638];
  if (v8)
  {
    *(a1 + 8) = v8;
    v10 = *v9;
    v11 = *(v8 + 4152) + v10 + 32;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v12 = *(v8 + 2728);
    if (v12)
    {
      v13 = v8 + 2928;
      v14 = -1;
      do
      {
        v15 = v14++;
        v16 = __clz(__rbit32(v12));
        *(&v101 + v14) = *(v13 + 8 * v16) + v10 + 32;
        v12 &= ~(1 << v16);
      }

      while (v12);
      *(&v101 + v15 + 2) = v11;
      v17 = v14 + 2;
      if (v14 == -2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *&v101 = v11;
      v17 = 1;
    }

    v81 = 0;
    v82 = *(a1 + 720);
    do
    {
      if (v82)
      {
        v84 = 0;
        v85 = *(&v101 + v81);
        v86 = v82;
        v87 = (a1 + 112);
        while (1)
        {
          v88 = *v87;
          v87 += 6;
          if (*(v85 + 4) == v88)
          {
            break;
          }

          if (v82 == ++v84)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        LODWORD(v84) = 0;
      }

      if (v84 == v82)
      {
        v85 = *(&v101 + v81);
        v86 = v82;
LABEL_86:
        v89 = a1 + 96 + 24 * v86;
        v90 = *v85;
        *(v89 + 16) = *(v85 + 2);
        *v89 = v90;
        v83 = (*(a1 + 720) + 1);
        *(a1 + 720) = v83;
      }

      else
      {
        v83 = v82;
        LOBYTE(v82) = v84;
      }

      *(a1 + 724) |= 1 << v82;
      ++v81;
      v82 = v83;
    }

    while (v81 != v17);
  }

LABEL_6:
  v18 = *a3;
  if (*a3)
  {
    *a1 = v18;
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v19 = *(v18 + 2728);
    if (v19)
    {
      LODWORD(v20) = 0;
      v21 = v18 + 2928;
      v22 = *v9;
      do
      {
        v23 = __clz(__rbit32(v19));
        *(&v101 + v20) = *(v21 + 8 * v23) + v22 + 32;
        v20 = (v20 + 1);
        v19 &= ~(1 << v23);
      }

      while (v19);
      if (v20)
      {
        v24 = 0;
        v25 = *(a1 + 720);
        do
        {
          if (v25)
          {
            v27 = 0;
            v28 = *(&v101 + v24);
            v29 = v25;
            v30 = (a1 + 112);
            while (1)
            {
              v31 = *v30;
              v30 += 6;
              if (*(v28 + 4) == v31)
              {
                break;
              }

              if (v25 == ++v27)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
            LODWORD(v27) = 0;
          }

          if (v27 == v25)
          {
            v28 = *(&v101 + v24);
            v29 = v25;
LABEL_22:
            v32 = a1 + 96 + 24 * v29;
            v33 = *v28;
            *(v32 + 16) = *(v28 + 2);
            *v32 = v33;
            v26 = (*(a1 + 720) + 1);
            *(a1 + 720) = v26;
          }

          else
          {
            v26 = v25;
            LOBYTE(v25) = v27;
          }

          *(a1 + 728) |= 1 << v25;
          ++v24;
          v25 = v26;
        }

        while (v24 != v20);
      }
    }
  }

  v34 = a3[2];
  if (v34)
  {
    *(a1 + 16) = v34;
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v35 = *(v34 + 2728);
    if (v35)
    {
      LODWORD(v36) = 0;
      v37 = v34 + 2928;
      v38 = *v9;
      do
      {
        v39 = __clz(__rbit32(v35));
        *(&v101 + v36) = *(v37 + 8 * v39) + v38 + 32;
        v36 = (v36 + 1);
        v35 &= ~(1 << v39);
      }

      while (v35);
      if (v36)
      {
        v40 = 0;
        v41 = *(a1 + 720);
        do
        {
          if (v41)
          {
            v43 = 0;
            v44 = *(&v101 + v40);
            v45 = v41;
            v46 = (a1 + 112);
            while (1)
            {
              v47 = *v46;
              v46 += 6;
              if (*(v44 + 4) == v47)
              {
                break;
              }

              if (v41 == ++v43)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            LODWORD(v43) = 0;
          }

          if (v43 == v41)
          {
            v44 = *(&v101 + v40);
            v45 = v41;
LABEL_39:
            v48 = a1 + 96 + 24 * v45;
            v49 = *v44;
            *(v48 + 16) = *(v44 + 2);
            *v48 = v49;
            v42 = (*(a1 + 720) + 1);
            *(a1 + 720) = v42;
          }

          else
          {
            v42 = v41;
            LOBYTE(v41) = v43;
          }

          *(a1 + 728) |= 1 << v41;
          ++v40;
          v41 = v42;
        }

        while (v40 != v36);
      }
    }
  }

  v50 = a3[3];
  if (v50)
  {
    *(a1 + 24) = v50;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v51 = *(v50 + 2728);
    if (v51)
    {
      LODWORD(v52) = 0;
      v53 = v50 + 2928;
      v54 = *v9;
      do
      {
        v55 = __clz(__rbit32(v51));
        *(&v101 + v52) = *(v53 + 8 * v55) + v54 + 32;
        v52 = (v52 + 1);
        v51 &= ~(1 << v55);
      }

      while (v51);
      if (v52)
      {
        v56 = 0;
        v57 = *(a1 + 720);
        do
        {
          if (v57)
          {
            v59 = 0;
            v60 = *(&v101 + v56);
            v61 = v57;
            v62 = (a1 + 112);
            while (1)
            {
              v63 = *v62;
              v62 += 6;
              if (*(v60 + 4) == v63)
              {
                break;
              }

              if (v57 == ++v59)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            LODWORD(v59) = 0;
          }

          if (v59 == v57)
          {
            v60 = *(&v101 + v56);
            v61 = v57;
LABEL_56:
            v64 = a1 + 96 + 24 * v61;
            v65 = *v60;
            *(v64 + 16) = *(v60 + 2);
            *v64 = v65;
            v58 = (*(a1 + 720) + 1);
            *(a1 + 720) = v58;
          }

          else
          {
            v58 = v57;
            LOBYTE(v57) = v59;
          }

          *(a1 + 732) |= 1 << v57;
          ++v56;
          v57 = v58;
        }

        while (v56 != v52);
      }
    }
  }

  v66 = a3[4];
  if (v66)
  {
    *(a1 + 32) = v66;
    v67 = *v9;
    v68 = *(v66 + 3920) + v67 + 32;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v69 = *(v66 + 2728);
    if (v69)
    {
      v70 = v66 + 2928;
      v71 = -1;
      do
      {
        v72 = v71++;
        v73 = __clz(__rbit32(v69));
        *(&v101 + v71) = *(v70 + 8 * v73) + v67 + 32;
        v69 &= ~(1 << v73);
      }

      while (v69);
      *(&v101 + v72 + 2) = v68;
      v74 = v71 + 2;
      if (v71 == -2)
      {
        goto LABEL_62;
      }
    }

    else
    {
      *&v101 = v68;
      v74 = 1;
    }

    v91 = 0;
    v92 = *(a1 + 720);
    do
    {
      if (v92)
      {
        v94 = 0;
        v95 = *(&v101 + v91);
        v96 = v92;
        v97 = (a1 + 112);
        while (1)
        {
          v98 = *v97;
          v97 += 6;
          if (*(v95 + 4) == v98)
          {
            break;
          }

          if (v92 == ++v94)
          {
            goto LABEL_99;
          }
        }
      }

      else
      {
        LODWORD(v94) = 0;
      }

      if (v94 == v92)
      {
        v95 = *(&v101 + v91);
        v96 = v92;
LABEL_99:
        v99 = a1 + 96 + 24 * v96;
        v100 = *v95;
        *(v99 + 16) = *(v95 + 2);
        *v99 = v100;
        v93 = (*(a1 + 720) + 1);
        *(a1 + 720) = v93;
      }

      else
      {
        v93 = v92;
        LOBYTE(v92) = v94;
      }

      *(a1 + 736) |= 1 << v92;
      ++v91;
      v92 = v93;
    }

    while (v91 != v74);
  }

LABEL_62:
  AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::copyFromOriginal(a1 + 2592, (a3 + 324), a4);
  AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::copyFromOriginal(a1 + 2616, (a3 + 327), a4);
  AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::copyFromOriginal(a1 + 2640, (a3 + 330), a4);
  AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::copyFromOriginal(a1 + 2664, (a3 + 333), a4);
  AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::copyFromOriginal(a1 + 2688, (a3 + 336), a4);
  if (a1 != a3)
  {
    *(a1 + 2744) = *(a3 + 686);
    std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,void *> *>>(a1 + 2712, a3[341]);
    *(a1 + 2784) = *(a3 + 696);
    std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,void *> *>>(a1 + 2752, a3[346]);
    *(a1 + 2824) = *(a3 + 706);
    std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,void *> *>>(a1 + 2792, a3[351]);
    *(a1 + 2864) = *(a3 + 716);
    std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,void *> *>>(a1 + 2832, a3[356]);
    *(a1 + 2904) = *(a3 + 726);
    std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,void *> *>>(a1 + 2872, a3[361]);
  }

  v75 = a3[389];
  v76 = a3[390];
  if (v76)
  {
    atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3112) = v75;
  v77 = *(a1 + 3120);
  *(a1 + 3120) = v76;
  if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v77->__on_zero_shared)(v77);
    std::__shared_weak_count::__release_weak(v77);
  }

  v78 = a3[394];
  v79 = a3[395];
  if (v79)
  {
    atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3152) = v78;
  v80 = *(a1 + 3160);
  *(a1 + 3160) = v79;
  if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v80->__on_zero_shared)(v80);

    std::__shared_weak_count::__release_weak(v80);
  }
}

uint64_t AGX::SpecializableRenderPipelineState::specialize<MTL4RenderPipelineDescriptor>(uint64_t a1, void *a2)
{
  v3 = [a2 colorAttachments];
  v4 = 0;
  v5 = 0;
  v6 = (a1 + 168);
  do
  {
    v10 = [v3 objectAtIndexedSubscript:v5];
    v11 = v10;
    if (*(a1 + 8 * v5) == 263)
    {
      if (v10)
      {
        v12 = [v10 pixelFormat];
      }

      else
      {
        v12 = 0;
      }

      *(a1 + 8 * v5) = v12;
    }

    v13 = *(v6 - 24);
    if (v13 == 2)
    {
      if (v11)
      {
        v14 = [v11 blendingState];
        v13 = v14 == 1;
        if (v14 == 2)
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 0;
      }

      *(v6 - 24) = v13;
    }

    if (v13 != 1)
    {
      goto LABEL_51;
    }

    if (!v11)
    {
      v7 = *(a1 + 372);
      v8 = 1 << v5;
      if (((1 << v5) & v7) == 0)
      {
        goto LABEL_5;
      }

LABEL_3:
      v9 = 0;
LABEL_4:
      *(a1 + 368) = *(a1 + 368) & ~(15 << v4) | (v9 << v4);
      *(a1 + 372) = v7 & ~v8;
      goto LABEL_5;
    }

    if (*(v6 - 5))
    {
      if (*(v6 - 4))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = [v11 sourceRGBBlendFactor];
      if (v15 > 0x13)
      {
        v16 = 0;
      }

      else
      {
        v16 = dword_29D2F7668[v15];
      }

      *(v6 - 5) = v16;
      if (*(v6 - 4))
      {
LABEL_22:
        if (*(v6 - 3))
        {
          goto LABEL_23;
        }

        goto LABEL_35;
      }
    }

    v17 = [v11 destinationRGBBlendFactor];
    if (v17 > 0x13)
    {
      v18 = 0;
    }

    else
    {
      v18 = dword_29D2F7668[v17];
    }

    *(v6 - 4) = v18;
    if (*(v6 - 3))
    {
LABEL_23:
      if (*(v6 - 2))
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }

LABEL_35:
    v19 = [v11 sourceAlphaBlendFactor];
    if (v19 > 0x13)
    {
      v20 = 0;
    }

    else
    {
      v20 = dword_29D2F7668[v19];
    }

    *(v6 - 3) = v20;
    if (*(v6 - 2))
    {
LABEL_24:
      if (!*(v6 - 1))
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

LABEL_39:
    v21 = [v11 destinationAlphaBlendFactor];
    if (v21 > 0x13)
    {
      v22 = 0;
    }

    else
    {
      v22 = dword_29D2F7668[v21];
    }

    *(v6 - 2) = v22;
    if (!*(v6 - 1))
    {
LABEL_43:
      v23 = [v11 rgbBlendOperation];
      if (v23 > 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = dword_29D2F76B8[v23];
      }

      *(v6 - 1) = v24;
      if (*v6)
      {
        goto LABEL_51;
      }

LABEL_47:
      v25 = [v11 alphaBlendOperation];
      if (v25 > 5)
      {
        v26 = 0;
      }

      else
      {
        v26 = dword_29D2F76B8[v25];
      }

      *v6 = v26;
      goto LABEL_51;
    }

LABEL_25:
    if (!*v6)
    {
      goto LABEL_47;
    }

LABEL_51:
    v7 = *(a1 + 372);
    v8 = 1 << v5;
    if (((1 << v5) & v7) != 0)
    {
      if (!v11)
      {
        goto LABEL_3;
      }

      v27 = [v11 writeMask];
      if ((v27 & 0x10) == 0)
      {
        v9 = __rbit32(v27) >> 28;
        LOBYTE(v7) = *(a1 + 372);
        goto LABEL_4;
      }
    }

LABEL_5:
    ++v5;
    v4 += 4;
    v6 += 7;
  }

  while (v5 != 8);
  if (*(a1 + 64) == 3)
  {
    v28 = [a2 colorAttachmentMappingState];
    if (v28)
    {
      if (v28 == 2)
      {
        *(a1 + 64) = 1;
        *(a1 + 136) = 0x706050403020100;
      }

      else if (v28 == 3)
      {
        *(a1 + 64) = 3;
        memset_pattern16((a1 + 72), &unk_29D2F27B0, 0x40uLL);
      }

      else
      {
        *(a1 + 64) = 2;
      }
    }

    else
    {
      *(a1 + 64) = 0;
    }
  }

  *(a1 + 373) = [a2 rasterSampleCount];
  if ([a2 colorSampleCount])
  {
    v29 = [a2 colorSampleCount];
  }

  else
  {
    v29 = [a2 rasterSampleCount];
  }

  *(a1 + 374) = v29;

  return AGX::SpecializableRenderPipelineState::unspecializedToDefault(a1);
}

uint64_t AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::linkSpecialization(void *a1, void *a2, void *a3, int a4)
{
  v4 = a1;
  v136 = *MEMORY[0x29EDCA608];
  v5 = a1[461];
  v6 = *(v5 + 16);
  v124[0] = *v5;
  v124[1] = v6;
  v7 = *(v5 + 48);
  v124[2] = *(v5 + 32);
  v124[3] = v7;
  v125 = *(v5 + 64);
  v126 = *(v5 + 72);
  v127 = *(v5 + 88);
  v128 = *(v5 + 104);
  v129 = *(v5 + 120);
  v130 = *(v5 + 136);
  v8 = *(v5 + 320);
  v131[10] = *(v5 + 304);
  v131[11] = v8;
  v9 = *(v5 + 352);
  v131[12] = *(v5 + 336);
  v131[13] = v9;
  v10 = *(v5 + 256);
  v131[6] = *(v5 + 240);
  v131[7] = v10;
  v11 = *(v5 + 288);
  v131[8] = *(v5 + 272);
  v131[9] = v11;
  v12 = *(v5 + 192);
  v131[2] = *(v5 + 176);
  v131[3] = v12;
  v13 = *(v5 + 224);
  v131[4] = *(v5 + 208);
  v131[5] = v13;
  v14 = *(v5 + 160);
  v131[0] = *(v5 + 144);
  v131[1] = v14;
  v132 = *(v5 + 368);
  v133 = *(v5 + 372);
  v134 = *(v5 + 373);
  v135 = *(v5 + 376);
  AGX::SpecializableRenderPipelineState::unspecializedToDefault(v124);
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v104 = 0u;
  v110 = 67305985;
  v111 = 1541;
  v112 = 7;
  v113 = 0x100000000;
  v114 = 0;
  v116 = 0;
  v115 = 0;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0;
  bzero(&v104, 0x28uLL);
  AGX::FramebufferCompilerConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initialize(&v104, v124, 0, 0);
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&v104, 0);
  *&v87.encoded.__elems_[0].representation.var0 = v104;
  *&v87.encoded.__elems_[4].representation.var0 = v105;
  *&v87.state.representation.var0 = v106;
  v83 = v132;
  v82 = v4[462];
  v80 = *(*v4 + 3984);
  v78 = *(*v4 + 3988);
  v75 = *(*v4 + 3996);
  v76 = *(*v4 + 3992);
  v73 = *(*v4 + 4004);
  v74 = *(*v4 + 4000);
  v71 = *(*v4 + 4012);
  v72 = *(*v4 + 4008);
  v69 = *(*v4 + 4020);
  v70 = *(*v4 + 4016);
  v67 = *(*v4 + 4028);
  v68 = *(*v4 + 4024);
  v65 = *(*v4 + 4036);
  v66 = *(*v4 + 4032);
  v15 = *(*v4 + 4040);
  v16 = *(*v4 + 4041);
  v79 = *(*v4 + 4044);
  v17 = *(*v4 + 4064);
  v81 = *(*v4 + 4066);
  if ((v81 & 1) != 0 || *(*v4 + 4065) == 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(v4 + 3140) = 0;
    if (v15)
    {
      v22 = 0x800000;
    }

    else
    {
      v22 = 0;
    }

    if (v16)
    {
      v23 = 0x1000000;
    }

    else
    {
      v23 = 0;
    }

    if (v17)
    {
      v24 = 0x10000000;
    }

    else
    {
      v24 = 0;
    }

    v85 = v23 | v22;
    v86 = v24;
    if ((v135 & 0x100000000) != 0)
    {
      v25 = 128;
    }

    else
    {
      v25 = 0;
    }

    v26 = (v135 & 0x1F) << 8;
    if ((v135 & 0x100000000) == 0)
    {
      v26 = 0;
    }

    v63 = v26;
    v64 = v25;
    v77 = v4;
    do
    {
      v27.var0 = v87.encoded.__elems_[v18 / 4].representation;
      if ((*&v27.var0 & 0x1F) != 0x17)
      {
        v28 = v124 + v21;
        if (*(v131 + v21))
        {
          v30 = *(v28 + 38);
          if (v30 <= 1)
          {
            LOBYTE(v30) = 1;
          }

          v31 = (v30 & 0x1F) << 6;
          v32 = *(v28 + 40);
          if (v32 <= 1)
          {
            LOBYTE(v32) = 1;
          }

          v33.i32[0] = *(v28 + 37);
          v33.i32[1] = *(v28 + 39);
          v33.i64[1] = *(v28 + 164);
          v34 = vceqzq_s32(v33);
          v35 = vshlq_u32(v33, xmmword_29D2F2580);
          v33.i32[0] *= 2;
          v36.i64[0] = 0x3E0000003ELL;
          v36.i64[1] = 0x3E0000003ELL;
          v37 = vandq_s8(v35, xmmword_29D2F2590);
          v37.i32[0] = vandq_s8(v33, v36).u32[0] | 1;
          v38 = vbslq_s8(v34, xmmword_29D2F25A0, v37);
          *v38.i8 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
          v29 = v38.i32[0] | v31 | v38.i32[1] | ((v32 & 0x1F) << 16);
        }

        else
        {
          v29 = 0;
        }

        v39 = 1 << v20;
        v40 = v87.state.representation.key & (1 << v20);
        v41 = (v83 >> v18) & 0xF;
        v42 = (v79 >> v19) & 3;
        v97 = a2;
        v98 = v20;
        v99 = v81;
        v100 = &v103[4];
        v101 = v103;
        v102 = v82;
        *v103 = 0;
        if (((1 << v20) & v80) != 0)
        {
          LODWORD(v88[1]) = 98;
          v90 = 0;
          v91 = 0;
          __p = 0;
          v88[0] = &unk_2A23F9678;
          v95 = v29;
          v96 = ((((v39 & v75) != 0) << 14) | (((v39 & v76) != 0) << 13)) & 0x7FFF | (((v74 >> v19) & 3) << 15) | (v42 << 26) | ((v40 == 0) << 25) | (2 * v41) | v85 | v86 | 0x41;
          v94 = v87.state.representation.key & 0xFF600F00 | 0x1FF000;
          v93 = v27.key | 0xFF000;
          v92 = 512;
          AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::loadNonDestructiveStatelessPSO(AGXG18PFamilyDevice *,_AGCDrawBufferState const*,std::array<AGXBlendState,8ul> const&,std::optional<_AGCLogicOp> const&,unsigned int,unsigned int &,unsigned int &,AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes> &,BOOL)const::{lambda(AGX::StatelessPSODynamicLibraryKey const&)#1}::operator()(&v97, v88);
          v88[0] = &unk_2A23F9480;
          if (__p)
          {
            v90 = __p;
            operator delete(__p);
          }
        }

        if ((v39 & v78) != 0)
        {
          v43 = (v39 & v70) != 0;
          LODWORD(v88[1]) = 98;
          v90 = 0;
          v91 = 0;
          __p = 0;
          v88[0] = &unk_2A23F9678;
          v44 = (v43 & ((v39 & v69) != 0)) != 0 ? 0x40000 : 0;
          v45 = (v43 & ((v39 & v68) != 0)) != 0 ? 0x80000 : 0;
          v95 = v29;
          v46.var0 = v87.encoded.__elems_[v18 / 4].representation;
          v96 = v64 | (32 * ((v39 & v65) != 0)) | (2 * v41) | v86 | v85 | ((((v39 & v72) != 0) << 14) | (((v39 & v73) != 0) << 13)) & 0x7FFF | (((v71 >> v19) & 3) << 15) & 0xFFCFFFFF | (v43 << 17) & 0xFFCFFFFF | (((v67 >> v19) & 3) << 20) | (((v39 & v66) != 0) << 22) | (v42 << 26) | v44 | v45 | ((v40 == 0) << 25) | v63 | 1;
          v94 = v87.state.representation.key & 0xFF600F00 | 0x1FF000;
          v93 = v46.key | 0xFF000;
          v92 = 512;
          AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::loadNonDestructiveStatelessPSO(AGXG18PFamilyDevice *,_AGCDrawBufferState const*,std::array<AGXBlendState,8ul> const&,std::optional<_AGCLogicOp> const&,unsigned int,unsigned int &,unsigned int &,AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes> &,BOOL)const::{lambda(AGX::StatelessPSODynamicLibraryKey const&)#1}::operator()(&v97, v88);
          v88[0] = &unk_2A23F9480;
          if (__p)
          {
            v90 = __p;
            operator delete(__p);
          }
        }

        v4 = v77;
        *(v77 + 785) = (*&v103[4] << v18) | *(v77 + 785) & ~(15 << v18);
        *(v77 + 786) = (*v103 << v18) | v77[393] & ~(15 << v18);
      }

      v21 += 28;
      ++v20;
      v19 += 2;
      v18 += 4;
    }

    while (v21 != 224);
  }

  v88[0] = _AGCDrawBufferState::isRtFormatUnknown;
  v88[1] = 0;
  __p = &v87;
  if (_AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(v88) & 1) != 0 || (v88[0] = _AGCDrawBufferState::isRtPartitionOffsetUnknown, v88[1] = 0, __p = &v87, (_AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(v88)) || (~v87.state.representation.key & 0x1FF000) == 0)
  {
    *(v4 + 3136) = 1;
  }

  else
  {
    v47 = *v4;
    v48 = *(v4 + 785);
    v49 = *(v4 + 786);
    v50 = *(*v4 + 3912);
    v51 = *(*v4 + 4081);
    v52 = *(*v4 + 4084);
    v103[4] = 0;
    LODWORD(v97) = 0;
    v88[0] = _AGCDrawBufferState::isRtFormatUnknown;
    v88[1] = 0;
    __p = &v87;
    if (_AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(v88))
    {
      v53 = 0;
    }

    else
    {
      if (v50)
      {
        v55 = 8;
      }

      else
      {
        v55 = 0;
      }

      agxsGetShaderPassInfo((17 - v55), &v87, v48, v49, &v97, &v103[4]);
      v53 = (v97 << v55) & 0x1FFFF;
    }

    if ((v52 - 1) >= 2)
    {
      if (v52)
      {
        v56 = 0;
      }

      else
      {
        v56 = v103[4];
      }
    }

    else if ((v103[4] | v51))
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v59 = (*&v87.state.representation.var0 & 0x300) != 0 && v56 == 3 || v56 == 2;
    if (v47[4088])
    {
      v60 = 0x400000;
    }

    else
    {
      v60 = 0;
    }

    if (v47[3919])
    {
      v61 = 0x2000000;
    }

    else
    {
      v61 = 0;
    }

    if ((v59 | v47[4090]))
    {
      v62 = 0x4000000;
    }

    else
    {
      v62 = 0;
    }

    *(v4 + 201) = *(v4 + 201) & 0x199FFFFF | v60 | v61 | v62 | (v56 << 29);
    *(v4 + 204) = v4[102] & 0xFFFE0000 | v53;
  }

  if (*(*v4 + 4066) == 1)
  {
    AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes>::getReferencedDylibs(v88, v4[462]);
  }

  return 1;
}

uint64_t AGX::SpecializableRenderPipelineState::unspecializedToDefault(uint64_t this)
{
  v1 = 0;
  v2 = 0;
  v3 = *(this + 372);
  v4 = (this + 144);
  do
  {
    v6 = *(this + 8 * v2);
    if (!v6)
    {
      goto LABEL_8;
    }

    if (v6 == 263)
    {
      *(this + 8 * v2) = 0;
LABEL_8:
      *v4 = 0;
      LOBYTE(v7) = 1;
      goto LABEL_19;
    }

    v8 = *v4;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        LOBYTE(v7) = 0;
        *v4 = 0;
        goto LABEL_19;
      }

LABEL_18:
      LOBYTE(v7) = 0;
      goto LABEL_19;
    }

    if (*(v4 + 1))
    {
      if (*(v4 + 2))
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v4 + 1) = 2;
      if (*(v4 + 2))
      {
LABEL_14:
        if (*(v4 + 3))
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }
    }

    *(v4 + 2) = 1;
    if (*(v4 + 3))
    {
LABEL_15:
      if (*(v4 + 4))
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v4 + 3) = 2;
    if (*(v4 + 4))
    {
LABEL_16:
      if (*(v4 + 5))
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v4 + 4) = 1;
    if (*(v4 + 5))
    {
LABEL_17:
      v7 = *(v4 + 6);
      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v4 + 5) = 3;
    v7 = *(v4 + 6);
    if (v7)
    {
      goto LABEL_18;
    }

LABEL_27:
    *(v4 + 6) = 3;
LABEL_19:
    if (((1 << v2) & v3) != 0)
    {
      LOBYTE(v3) = v3 & ~(1 << v2);
      *(this + 372) = v3;
      v9 = 15 << v1;
      if (v7)
      {
        v5 = *(this + 368) & ~v9;
      }

      else
      {
        v5 = *(this + 368) | v9;
      }

      v3 = v3;
      *(this + 368) = v5;
    }

    ++v2;
    v1 += 4;
    v4 += 28;
  }

  while (v2 != 8);
  if (*(this + 64) == 3)
  {
    *(this + 64) = 2;
  }

  return this;
}

void AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes>::getReferencedDylibs(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::incrementalLoad<AGX::HAL300::FragmentProgramVariant>(uint64_t **a1, void **a2, uint64_t a3, char **a4, uint64_t **a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  if ((((a4[1] - *a4) >> 1) + ((a6[1] - *a6) >> 1) + 1) <= 0x2AAAAAAAAAAAAAALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_29CF07D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100]((v28 - 136));
  v30 = *(v28 - 112);
  if (v30)
  {
    operator delete(v30);
    if (!a28)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!a28)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  _Unwind_Resume(a1);
}

uint64_t AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParams(int8x8_t **a1, uint64_t a2)
{
  v191 = *MEMORY[0x29EDCA608];
  result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v174, a2, *(a2 + 7184));
  v5 = a1[1];
  if (v5)
  {
    v6 = v5[163].u32[1];
    v7 = *(v175 + 7092);
    v9 = v176;
    v8 = v177;
    if (*(a1 + 280) + *(a1 + 271) > v6)
    {
      v6 = *(a1 + 280) + *(a1 + 271);
    }

    v10 = 32 * v6;
    v11 = (v10 + 82815) >> 16;
    v12 = 32 * *(a1 + 274);
    v13 = (v12 + 0xFFFF) >> 16;
    v14 = v11 + v13;
    v15 = ((v12 + 4095) >> 12) + ((v10 + 21375) >> 12);
    v16 = v11 + v13 + v15 - v179;
    if ((v11 + v13 + v15) <= v179)
    {
      v16 = 0;
    }

    v17 = ((v16 * v177 + v178 * v14 + v14 + v176 + 64) * v7 + 7) & 0xFFFFFFF8;
    result = 96;
    v18 = 10 * v14 + 96 * v15;
    v19 = v18 - v179;
    if (v18 <= v179)
    {
      v19 = 0;
    }

    *(a1 + 10) = v11;
    *(a1 + 11) = v13;
    a1[6] = 0;
    *(a1 + 14) = 0;
    *(a1 + 15) = v17;
    *(a1 + 16) = ((v9 + v19 * v8 + v14 + 64) * v7 + 7) & 0xFFFFFFF8;
    *(a1 + 17) = v18;
  }

  v20 = *a1;
  if (*a1)
  {
    v21 = *(a1 + 358) + *(a1 + 349);
    v22 = *(v20 + 1308);
    v23 = *(v20 + 3932);
    v24 = v23 << 7;
    if ((v23 << 7) <= 0x4000)
    {
      v24 = 0x4000;
    }

    v25 = v24 | 0x40;
    if (v21 <= v22)
    {
      v21 = v22;
    }

    if (v23)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = (v26 + 0xFFFF) >> 16;
    v28 = v26 + 4095;
    v29 = 32 * v21;
    v30 = (v29 + 82815) >> 16;
    v31 = 32 * *(a1 + 352);
    v32 = (v31 + 0xFFFF) >> 16;
    v33 = v30 + v32;
    v34 = ((v31 + 4095) >> 12) + ((v29 + 21375) >> 12);
    if (v23)
    {
      v35 = (v23 << 7) | 0x40;
    }

    else
    {
      v35 = 0;
    }

    *(a1 + 18) = 10 * v33 + 96 * v34 + ((v35 + 4095) >> 12 << 6) + 5 * ((v35 + 0xFFFF) >> 16);
    *(a1 + 19) = v33 + v34;
    *(a1 + 20) = v33;
    *(a1 + 21) = v27 + (v28 >> 12);
    *(a1 + 22) = v30;
    *(a1 + 23) = v32;
  }

  v36 = a1[2];
  if (v36)
  {
    v37 = v36[163].u32[1];
    if (*(a1 + 436) + *(a1 + 427) > v37)
    {
      v37 = *(a1 + 436) + *(a1 + 427);
    }

    v38 = 32 * v37;
    v39 = (v38 + 82815) >> 16;
    v40 = 32 * *(a1 + 430);
    v41 = (v40 + 0xFFFF) >> 16;
    v42 = ((v40 + 4095) >> 12) + ((v38 + 21375) >> 12);
    v43 = 10 * (v39 + v41);
    *(a1 + 18) = v43 + 96 * v42;
    *(a1 + 19) = v43 + 32 * v42;
    a1[10] = v43;
    *(a1 + 22) = v39;
    *(a1 + 23) = v41;
  }

  if (*(a1 + 789) == 1)
  {
    AGX::Heap<true>::allocateImpl(&v181, a2 + 6832, 440, 0);
    v44 = *v182;
    *(a1 + 119) = v181;
    *(a1 + 121) = v44;
    *(a1 + 977) = *&v182[9];
    a1[118] = a1[119] + 0x200000000;
    v45 = a1[120];
    v45[33].i8[4] = 0;
    v46 = *(a1 + 207);
    if ((v46 & 0x20000) != 0)
    {
      v49 = 0;
      v47 = 0;
    }

    else
    {
      v47 = *a1;
      if (*a1)
      {
        v48 = 0;
        v49 = *(v47 + 3848) & 0xE10000;
        goto LABEL_32;
      }

      v49 = 0;
    }

    v48 = 1;
LABEL_32:
    v50 = v46 & 0x20000;
    v51 = a1[4];
    if (!v51)
    {
      v58 = a1 + 100;
      v59 = a1[1];
      v173 = v59[514];
      v60 = *(a1 + 206);
      v61 = *(v59 + 4124);
      v62 = *(v59 + 4132);
      v171 = *(a1 + 200) | *(a1 + 205) & 0xF3D7FFFF | 0x8280000 | v59[515].i32[0] & 0xFBFFFFFF;
      v170 = *(a1 + 201);
      v172 = *(a1 + 204);
      v63 = vdup_n_s32(0x7200000u);
      v64 = vand_s8(a1[101], vdup_n_s32(0x8DFFFFFu));
      v65 = v59 + 28 * ((v46 & 0x20000) == 0);
      v66 = *(v65 + 974);
      v67 = *(v65 + 975);
      v68 = *(v65 + 976) & 0x3FFFFF;
      v69 = *(v65 + 3912);
      v180 = v69;
      v45[18].i32[0] = v66 & 0xFFFFFFDF;
      v45[18].i32[1] = v67;
      v45[19] = (v68 | 4u);
      v45[20] = v69;
      v70 = v59[408];
      v181 = 0u;
      *v182 = 0u;
      *&v182[20] = 1;
      *&v182[24] = *&v70 & 0xFFFFFFFFFFFFLL;
      *&v182[12] = 0x300000008;
      result = AGXIotoInstruction_B_1::emit(&v181, v45);
      v75 = a1[1];
      if (v75 && v75[533].i32[0])
      {
        v45[33].i8[4] |= 2u;
        v76 = *(a1 + 192);
        v77 = *(a1 + 191);
        v78 = *(a1 + 196);
        v79 = *(a1 + 194);
        v80 = *(a1 + 195);
        v45[31].i8[0] = (2 * (v79 & 3)) & 0xF6 | (8 * (v80 & 1)) | v75[532].i8[0] & 1 | v45[31].i8[0] & 0xF0;
        v81 = v75[533].u8[5];
        v82 = v75[532].i32[0];
        v83 = (((v78 - (v76 == 2)) << 23) + 528482304) & 0x1F800000 | (v76 << 30) | ((v77 & 1) << 29);
        if (v81)
        {
          v84 = 0x10000;
        }

        else
        {
          v84 = 0;
        }

        v45[32].i32[0] = 1073741968;
        v45[32].i32[1] = (v83 | v84) & 0xFFE1FFFF | ((v79 & 3) << 17) & 0xFFE7FFFF | ((v80 & 1) << 19) & 0xFFEFFFFF | ((v82 & 1) << 20) | 0x200000;
        v45[33].i32[0] = 15360;
      }

      v85 = 0;
      v86 = vorr_s8(v64, v63);
LABEL_54:
      v45[8].i32[1] = v171;
      v45[9].i32[0] = v170 | 0x1D1FFFFF;
      *(v45 + 76) = v86;
      v45[10].i32[1] = v60;
      v45[11].i32[0] = v49 | v173.i32[0] & 0xF1C00FF;
      *(v45 + 92) = v61;
      v45[12].i32[1] = v85;
      v45[13].i32[0] = v46;
      v45[13].i32[1] = v172;
      v45[14].i32[0] = v173.i32[1];
      *(v45 + 116) = v62;
      v103 = *v58;
      v45[17].i32[1] = *(v58 + 4);
      *&v45[15].u8[4] = v103;
      v104 = v45[33].i8[4];
      if ((v48 & 1) == 0)
      {
        v45[33].i8[4] = v104 | 4;
        v105 = *(v47 + 3272);
        v181 = 0u;
        *v182 = 0u;
        *&v182[20] = 1;
        *&v182[24] = v105 & 0xFFFFFFFFFFFFLL;
        *&v182[12] = 0x300000008;
        AGXIotoInstruction_B_1::emit(&v181, &v45[3] + 6);
        v106 = (*a1)[476].i32[0];
        v107 = (*a1)[477].i32[1];
        v108 = (*a1)[476].i32[1] & 0x3FFFFF;
        v109 = vand_s8((*a1)[475], 0x3FFFF0000);
        v110 = a1[463];
        if (v110)
        {
          v111.i32[0] = v110[4].i32[1];
          v111.i32[1] = v110[4].i32[0];
        }

        else
        {
          v112 = (*a1)[478];
          v111.i32[0] = *(*&v112 + 36);
          v111.i32[1] = *(*&v112 + 32);
        }

        v45[27].i32[1] = (*a1)[474].i32[1];
        v45[28] = vorr_s8(v109, vand_s8(v111, 0xFFFFFFFC0000FFFFLL));
        v45[29].i32[0] = v106;
        v45[29].i32[1] = v108;
        v45[30].i32[0] = 0;
        v45[30].i32[1] = v107;
        v113 = *(v47 + 3432);
        v188 = *(v47 + 3416);
        v189 = v113;
        v190 = *(v47 + 3448);
        v114 = *(v47 + 3368);
        v184 = *(v47 + 3352);
        v185 = v114;
        v115 = *(v47 + 3400);
        v186 = *(v47 + 3384);
        v187 = v115;
        v116 = *(v47 + 3304);
        v181 = *(v47 + 3288);
        *v182 = v116;
        v117 = *(v47 + 3336);
        *&v182[16] = *(v47 + 3320);
        v183 = v117;
        result = AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(&v181, &v45[5]);
        v104 = v45[33].i8[4];
      }

      if (*(a1 + 3136) == 1)
      {
        if (*(a1 + 189) <= 1u)
        {
          v118 = 16;
        }

        else
        {
          v118 = 80;
        }

        v104 |= v118;
        if (*(v47 + 4081) == 1)
        {
          v104 |= 0x20u;
          v45[33].i8[4] = v104;
        }

        if ((*(v47 + 4084) - 1) < 2)
        {
          v104 |= 0x80u;
        }

        *&v103 = *(a1 + 3140);
        *&v119 = v103;
        *(&v119 + 1) = DWORD1(v103);
        *&v103 = v103;
        *v45[50].i8 = v119;
      }

      v45[33].i8[4] = v104 | (v50 == 0);
      v120 = a1[168];
      if (v120)
      {
        v120 = v120[7];
      }

      v45[35] = v120;
      v121 = a1[172];
      if (v121)
      {
        v121 = v121[7];
      }

      v45[43] = v121;
      v122 = a1[129];
      if (v122)
      {
        v122 = v122[7];
      }

      v45[36] = v122;
      v123 = a1[170];
      if (v123)
      {
        v123 = v123[7];
      }

      v45[39] = v123;
      v124 = a1[131];
      if (v124)
      {
        v124 = v124[7];
      }

      v45[40] = v124;
      v125 = a1[246];
      if (v125)
      {
        v125 = v125[7];
      }

      v45[37] = v125;
      v126 = a1[248];
      if (v126)
      {
        v126 = v126[7];
      }

      v45[41] = v126;
      v127 = a1[285];
      if (v127)
      {
        v127 = v127[7];
      }

      v45[38] = v127;
      v128 = a1[287];
      if (v128)
      {
        v128 = v128[7];
      }

      v45[42] = v128;
      v129 = *(a1 + 914);
      if (v129)
      {
        v45[44] = a1[451][7];
        if ((v129 & 2) != 0)
        {
LABEL_88:
          v45[45] = a1[452][7];
          if ((v129 & 8) != 0)
          {
            goto LABEL_89;
          }

          goto LABEL_93;
        }
      }

      else
      {
        v45[44] = 0;
        if ((v129 & 2) != 0)
        {
          goto LABEL_88;
        }
      }

      v45[45] = 0;
      if ((v129 & 8) != 0)
      {
LABEL_89:
        v45[46] = a1[454][7];
        if ((v129 & 0x10) != 0)
        {
LABEL_90:
          v130 = a1[455][7];
          goto LABEL_95;
        }

LABEL_94:
        v130 = 0;
LABEL_95:
        v45[47] = v130;
        if (a1[4])
        {
          v131 = a1[3];
          if (v131[474].i32[1])
          {
            v132 = 0x8000;
          }

          else
          {
            v132 = v131[375].u32[1];
          }

          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a2 + 16584), *(a1 + 514) + *(a1 + 505), v131[163].u32[1], *(a1 + 508), v132, *(a1 + 220) * *(a1 + 218) * *(a1 + 219), *&v103, v71, v72, v73, v74);
          result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a2 + 16584), *(a1 + 592) + *(a1 + 583), a1[4][163].u32[1], *(a1 + 586), a1[4][375].u32[1], *(a1 + 223) * *(a1 + 221) * *(a1 + 222), v148, v149, v150, v151, v152);
          if ((*(a1 + 2505) & 1) != 0 || *(a1 + 2193))
          {
            atomic_store(1u, (a2 + 17023));
          }

          if (!*(a1 + 625) && !*(a1 + 547))
          {
            goto LABEL_125;
          }
        }

        else
        {
          v133 = *(a2 + 16560);
          v133[3].i32[1] = 1;
          v134 = *v133;
          v135 = HIDWORD(v133->i64[0]);
          v136 = v133->i64[1];
          v137 = *(a1 + 10);
          v138 = HIDWORD(*v133);
          if (v133->i32[0] > v137)
          {
            v137 = *v133;
          }

          v139 = v133[1].i64[0];
          v133->i32[0] = v137;
          if (v135 <= *(a1 + 11))
          {
            v135 = *(a1 + 11);
          }

          v140 = v133[1].i32[2];
          v133->i32[1] = v135;
          v141 = *(a1 + 12);
          if (v136 > v141)
          {
            v141 = v136;
          }

          v133->i32[2] = v141;
          v142 = *(a1 + 13);
          if (v138 > v142)
          {
            v142 = v138;
          }

          v133->i32[3] = v142;
          v143 = *(a1 + 14);
          if (v139 > v143)
          {
            v143 = v139;
          }

          v144 = v133[2].i32[0];
          v133[1].i32[0] = v143;
          v145 = *(a1 + 15);
          if (SHIDWORD(v139) > v145)
          {
            v145 = HIDWORD(v139);
          }

          v133[1].i32[1] = v145;
          v146 = *(a1 + 16);
          if (v140 > v146)
          {
            v146 = v140;
          }

          v133[1].i32[2] = v146;
          v147 = *(a1 + 17);
          if (v144 > v147)
          {
            v147 = v144;
          }

          v133[2].i32[0] = v147;
          if (*(a1 + 1257))
          {
            atomic_store(1u, (a2 + 17022));
          }

          if (!*(a1 + 313))
          {
            goto LABEL_125;
          }
        }

        atomic_store(1u, (a2 + 17024));
LABEL_125:
        if (*a1)
        {
          v153 = *(a2 + 16568);
          v154 = *(*(v153 + 56) + 7092);
          *(v153 + 52) = 2;
          v156 = *(a1 + 18);
          v155 = *(a1 + 19);
          v157 = *(v153 + 72);
          v158 = *(v153 + 96);
          v159 = *(v153 + 80);
          v160 = __OFSUB__(v155, v158);
          v161 = v155 - v158;
          if ((v161 < 0) ^ v160 | (v161 == 0))
          {
            v161 = 0;
          }

          v162.i32[0] = 0;
          v163.i64[0] = 0;
          v163.i64[1] = a1[11];
          v164 = vaddvq_s32(v163);
          v165 = ((v164 + (*(a1 + 21) + *(a1 + 20)) * *(v153 + 76) + v161 * v157 + v159 + 64) * v154 + 7) & 0xFFFFFFF8;
          v160 = __OFSUB__(v156, v158);
          v166 = v156 - v158;
          if ((v166 < 0) ^ v160 | (v166 == 0))
          {
            v166 = 0;
          }

          v167 = ((v159 + 64 + v164 + v166 * v157) * v154 + 7) & 0xFFFFFFF8;
          v134.i64[0] = a1[11];
          *v153 = vmaxq_s32(*v153, v134);
          v162.i32[1] = v165;
          *(v153 + 16) = vmax_s32(*(v153 + 16), v162);
          if (*(v153 + 24) > v167)
          {
            v167 = *(v153 + 24);
          }

          *(v153 + 24) = v167;
          v168 = *(v153 + 32);
          if (v168 <= v156)
          {
            v168 = v156;
          }

          *(v153 + 32) = v168;
          if (*(a1 + 1569))
          {
            atomic_store(1u, (a2 + 17021));
          }

          if (*(a1 + 391))
          {
            atomic_store(1u, (a2 + 17024));
          }
        }

        return result;
      }

LABEL_93:
      v45[46] = 0;
      if ((v129 & 0x10) != 0)
      {
        goto LABEL_90;
      }

      goto LABEL_94;
    }

    v169 = v49;
    v52 = a1[3];
    v53 = a1[101];
    v54 = vand_s8(v53, vdup_n_s32(0x8DFFFFFu));
    v55 = v51[477].u32[1];
    if (v55 <= 8)
    {
      v56 = 1 << v55;
      if ((v56 & 0x1D8) != 0)
      {
        v54 = vand_s8(v53, vdup_n_s32(0x8D3FFFFu));
        v57 = 119537664;
LABEL_46:
        v86 = vorr_s8(v54, vdup_n_s32(v57));
        v173 = v51[485];
        v85 = v51[486].i32[0];
        v171 = *(a1 + 200) | *(a1 + 205) & 0xF3D7FFFF | 0x8280000 | v51[486].i32[1] & 0xFBFFFFFF;
        v172 = *(a1 + 204);
        v170 = *(a1 + 201) & 0xE2600000;
        v87 = v52[468].i32[0];
        v88 = v52[468].u32[1];
        v89 = v52[467].i32[1];
        v90 = v51[470].i32[1];
        v91 = v51[472].i32[0];
        v92 = v51[472].i32[1];
        v93 = v51[473].i32[0];
        v94 = v51[474];
        v95 = v51[471].i32[0] & 0xFFFFFFDF | (v50 >> 12);
        v96 = v51[471].i32[1] & 0xFFF0000 | v52[467].i32[0] & 0xFFF;
        v97 = *(a1 + 227);
        if (v97)
        {
          v88 = v88 & 0xFFFFFF80 | ((v97 + 1023) >> 10) & 0x7F;
        }

        v60 = *(a1 + 206);
        v61 = v51[487];
        v62 = v51[488];
        v45[21].i32[0] = 1073745164;
        v45[21].i32[1] = v90;
        v45[22].i32[0] = v95;
        v45[22].i32[1] = v96;
        v45[23].i32[0] = v89 | 4;
        v45[23].i32[1] = v87;
        v45[24].i32[0] = v91 | 4;
        v45[24].i32[1] = v92;
        v45[25].i32[0] = v88;
        v45[25].i32[1] = v93;
        v45[26].i32[0] = 0;
        *(v45 + 212) = v94;
        v45[33].i8[4] = 8;
        v45[33].i8[7] = v52[493].i8[2];
        v98 = v51[477].u32[1];
        v99 = v98 == 1;
        if (v98 == 3)
        {
          v99 = 6;
        }

        v45[33].i8[5] = v99;
        if (v98 >= 4)
        {
          v100 = 0;
        }

        else
        {
          v100 = 0x104u >> (8 * v98);
        }

        v45[33].i8[6] = v100;
        v101 = v52[408];
        v181 = 0u;
        *v182 = 0u;
        *&v182[20] = 1;
        *&v182[24] = *&v101 & 0xFFFFFFFFFFFFLL;
        *&v182[12] = 0x300000008;
        AGXIotoInstruction_B_1::emit(&v181, &v45[1] + 2);
        v102 = v51[408];
        v181 = 0u;
        *v182 = 0u;
        *&v182[20] = 1;
        *&v182[24] = *&v102 & 0xFFFFFFFFFFFFLL;
        *&v182[12] = 0x300000008;
        result = AGXIotoInstruction_B_1::emit(&v181, &v45[2] + 4);
        v45[48].i32[0] = 4 * v51[503].i32[0];
        v45[48].i32[1] = 4 * v52[474].i32[0];
        v50 = v46 & 0x20000;
        v49 = v169;
        v58 = a1 + 100;
        goto LABEL_54;
      }

      if ((v56 & 0x26) != 0)
      {
        v57 = 387973120;
        goto LABEL_46;
      }
    }

    v57 = 1193279488;
    goto LABEL_46;
  }

  return result;
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::loadNonDestructiveStatelessPSO(AGXG18PFamilyDevice *,_AGCDrawBufferState const*,std::array<AGXBlendState,8ul> const&,std::optional<_AGCLogicOp> const&,unsigned int,unsigned int &,unsigned int &,AGX::SpecializableRenderPipelineLinkerState<AGX::HAL300::Classes> &,BOOL)const::{lambda(AGX::StatelessPSODynamicLibraryKey const&)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v147 = *MEMORY[0x29EDCA608];
  v4 = *(*a1 + 848);
  v128.__r_.__value_.__r.__words[0] = 0;
  v128.__r_.__value_.__l.__size_ = &v128;
  v128.__r_.__value_.__r.__words[2] = 0x4012000000;
  v129 = __Block_byref_object_copy_;
  v130 = __Block_byref_object_dispose_;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  os_unfair_lock_lock((v4 + 16928));
  v5 = *(v4 + 6184);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(a2 + 40);
  v8 = *(a2 + 48);
  v7 = *(a2 + 52);
  v10 = *(a2 + 56);
  v9 = *(a2 + 60);
  v11 = (v4 + 6184);
  do
  {
    v12 = *(v5 + 18);
    if (v12 < v6)
    {
LABEL_3:
      ++v5;
      goto LABEL_4;
    }

    if (v6 < v12)
    {
      goto LABEL_7;
    }

    v13 = *(v5 + 20);
    if (v13 < v8)
    {
      goto LABEL_3;
    }

    if (v8 < v13)
    {
      goto LABEL_7;
    }

    v14 = *(v5 + 21);
    if (v14 < v7)
    {
      goto LABEL_3;
    }

    if (v7 < v14)
    {
      goto LABEL_7;
    }

    v15 = *(v5 + 22);
    if (v15 < v10)
    {
      goto LABEL_3;
    }

    if (v10 < v15)
    {
LABEL_7:
      v11 = v5;
    }

    else
    {
      v16 = *(v5 + 23);
      v17 = v16 >= v9;
      v18 = v16 < v9;
      if (v17)
      {
        v11 = v5;
      }

      v5 += v18;
    }

LABEL_4:
    v5 = *v5;
  }

  while (v5);
  if (v11 != (v4 + 6184))
  {
    v19 = *(v11 + 18);
    if (v6 >= v19)
    {
      if (v19 < v6 || (v65 = *(v11 + 20), v8 >= v65) && (v65 < v8 || (v66 = *(v11 + 21), v7 >= v66) && (v66 < v7 || (v67 = *(v11 + 22), v10 >= v67) && (v67 < v10 || v9 >= *(v11 + 23)))))
      {
        size = v128.__r_.__value_.__l.__size_;
        *(v128.__r_.__value_.__l.__size_ + 48) = v11[12];
        *(size + 56) = *(v11 + 26);
        *(size + 60) = *(v11 + 27);
        os_unfair_lock_unlock((v4 + 16928));
        goto LABEL_48;
      }
    }
  }

LABEL_20:
  os_unfair_lock_unlock((v4 + 16928));
  v20 = *(v4 + 7160);
  v123.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v123.__r_.__value_.__l.__size_ = 3221225472;
  v123.__r_.__value_.__r.__words[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE29getStatelessPSODynamicLibraryERKNS_29StatelessPSODynamicLibraryKeyE_block_invoke;
  v124 = &unk_29F340FA8;
  v125 = &v128;
  v126 = v4;
  v127 = a2;
  v21 = objc_opt_new();
  [v21 setSync:1];
  [v21 setPipelineCache:0];
  [v21 setBinaryArchives:0];
  __dst.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  __dst.__r_.__value_.__l.__size_ = 3221225472;
  __dst.__r_.__value_.__r.__words[2] = ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v135 = &unk_29F342280;
  v136 = &v123;
  v22 = *(v20 + 24);
  if (v22 && *(v22 + 120) == 1)
  {
    v23 = [objc_msgSend(v21 "binaryArchives")];
    v24 = 0x200000000000;
    if (!v23)
    {
      v24 = 1;
    }

    atomic_fetch_or(v22, v24);
    v25 = *(v20 + 24);
    v26 = [v21 destinationBinaryArchive];
    v27 = 0x400000000000;
    if (!v26)
    {
      v27 = 1;
    }

    atomic_fetch_or(v25, v27);
  }

  if ([v21 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v21 setUseAIRNTInterfaces:0];
    }
  }

  *(a2 + 24) = *(a2 + 16);
  c.count[0] = *(a2 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a2 + 16, &c);
  v28 = *(a2 + 16);
  v29 = *(a2 + 24) - v28;
  if (v29 > 0xFFFFFFFFFFFFFFDFLL)
  {
    v30 = *(a2 + 24) + 32;
    *(a2 + 24) = v30;
  }

  else
  {
    std::vector<unsigned int>::__append((a2 + 16), 8uLL);
    v28 = *(a2 + 16);
    v30 = *(a2 + 24);
  }

  v31 = v28 + v29;
  *v31 = ((v30 - v28) >> 2 << 8) | 0x63;
  v32 = *(a2 + 40);
  *(v31 + 20) = *(a2 + 56);
  *(v31 + 4) = v32;
  c.count[0] = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](a2 + 16, &c);
  v33 = dispatch_data_create(*(a2 + 16), *(a2 + 24) - *(a2 + 16), 0, 0);
  [v21 setDriverKeyData:v33];
  if ([v21 airScript])
  {
    v34 = [v21 airScript];
    object = 0;
    v138 = 0;
    v139 = 0;
    object = dispatch_data_create_map(v34, &v138, &v139);
    v35 = v138;
    v36 = *v138;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v35 + v36), &data, len, v37, v38))
    {
      v39 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v39);
    }

    CC_SHA256_Final(&md, &c);
    dispatch_release(object);
    *c.count = md;
    *&c.hash[2] = v143;
    [v21 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v21;
  *c.wbuf = &__dst;
  if ([v21 function])
  {
    v40 = mach_absolute_time();
    v41 = *v20;
    *&md = MEMORY[0x29EDCA5F8];
    *(&md + 1) = 3221225472;
    *&v143 = ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v143 + 1) = &unk_29F342320;
    p_c = &c;
    v145 = v40;
    [v41 compileFunctionRequest:v21 compilerTask:0 completionHandler:&md];
  }

  else
  {
    if ([v21 frameworkData] || objc_msgSend(v21, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *&md = MEMORY[0x29EDCA5F8];
    *(&md + 1) = 3221225472;
    *&v143 = ___ZN3AGX8Compiler14compileProgramINS_29StatelessPSODynamicLibraryKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v143 + 1) = &unk_29F3422F8;
    p_c = &c;
    v42 = [objc_msgSend(v21 "binaryArchives")];
    v43 = *v20;
    v44 = [v21 driverKeyData];
    if (v42)
    {
      [v43 compileRequest:v44 binaryArchives:objc_msgSend(v21 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v21 completionHandler:{"pipelineCache"), objc_msgSend(v21, "sync"), &md}];
    }

    else
    {
      [v43 compileRequest:v44 pipelineCache:objc_msgSend(v21 sync:"pipelineCache") completionHandler:{objc_msgSend(v21, "sync"), &md}];
    }
  }

  dispatch_release(v33);

LABEL_48:
  v46 = *(v128.__r_.__value_.__l.__size_ + 48);
  v47 = *(v128.__r_.__value_.__l.__size_ + 56);
  _Block_object_dispose(&v128, 8);
  if (*(a1 + 12) == 1)
  {
    v48 = *(a1 + 32);
    v49 = *(a2 + 60) & 0x40;
    v120 = *(a1 + 8);
    v50 = *(v46 + 56);
    v121 = v50;
    v51 = *(v46 + 64);
    v122 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      v52 = *(a2 + 60) & 0x40;
    }

    else
    {
      v52 = v49;
    }

    if (v52)
    {
      v53 = "agc.read_framebuffer.";
    }

    else
    {
      v53 = "agc.write_framebuffer.";
    }

    if (v52)
    {
      v54 = 21;
    }

    else
    {
      v54 = 22;
    }

    *(&__dst.__r_.__value_.__s + 23) = v54;
    memcpy(&__dst, v53, v54);
    __dst.__r_.__value_.__s.__data_[v54] = 0;
    v55 = *(a2 + 48);
    v56 = v55 & 0x1F;
    if ((v55 & 0x1F) == 0x17)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      v119 = v118;
      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](&v121);
      _Unwind_Resume(v119);
    }

    if (v56 < 0x17)
    {
      std::string::append(&__dst, off_29F343960[v56]);
    }

    std::to_string(&v123, v55 >> 5);
    v57 = std::string::insert(&v123, 0, ".");
    v58 = *&v57->__r_.__value_.__l.__data_;
    v128.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v128.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&v128, ".");
    v60 = *&v59->__r_.__value_.__l.__data_;
    *&c.hash[2] = *(&v59->__r_.__value_.__l + 2);
    *c.count = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    if ((c.hash[3] & 0x80000000) == 0)
    {
      v61 = &c;
    }

    else
    {
      v61 = *c.count;
    }

    if ((c.hash[3] & 0x80000000) == 0)
    {
      v62 = HIBYTE(c.hash[3]);
    }

    else
    {
      v62 = *c.hash;
    }

    std::string::append(&__dst, v61, v62);
    if (SHIBYTE(c.hash[3]) < 0)
    {
      operator delete(*c.count);
      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

LABEL_75:
      operator delete(v128.__r_.__value_.__l.__data_);
    }

LABEL_69:
    v63 = (v55 >> 9) & 7;
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
      if (((v55 >> 9) & 7) <= 3)
      {
        goto LABEL_71;
      }
    }

    else if (((v55 >> 9) & 7) <= 3)
    {
LABEL_71:
      if (((v55 >> 9) & 7) > 1)
      {
        if (v63 == 2)
        {
          v64 = "RABG";
        }

        else
        {
          v64 = "RAGB";
        }
      }

      else if (v63)
      {
        v64 = "BGRA";
      }

      else
      {
        v64 = "RGBA";
      }

      goto LABEL_95;
    }

    if (((v55 >> 9) & 7) > 5)
    {
      if (v63 == 6)
      {
        v64 = "A000";
        goto LABEL_95;
      }
    }

    else
    {
      if (v63 == 4)
      {
        v64 = "GABR";
      }

      else
      {
        v64 = "GBRA";
      }

LABEL_95:
      std::string::append(&__dst, v64);
    }

    if ((v55 & 0x100) != 0)
    {
      std::string::append(&__dst, ".gammaCorrection");
    }

    if ((v55 & 0x2000000) != 0)
    {
      std::string::append(&__dst, ".packed");
    }

    v68 = *(a2 + 52);
    if ((v68 & 0x400000) != 0 && (v68 & 0x600000) != 0x600000 || (*(a2 + 50) & 0x10) != 0)
    {
      std::string::append(&__dst, ".vouchedNoLIBSpilling");
    }

    else
    {
      std::to_string(&v128, 1 << ((v68 >> 10) & 3));
      v69 = std::string::insert(&v128, 0, ".LIBSpilling.");
      v70 = *&v69->__r_.__value_.__l.__data_;
      *&c.hash[2] = *(&v69->__r_.__value_.__l + 2);
      *c.count = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        v71 = &c;
      }

      else
      {
        v71 = *c.count;
      }

      if ((c.hash[3] & 0x80000000) == 0)
      {
        v72 = HIBYTE(c.hash[3]);
      }

      else
      {
        v72 = *c.hash;
      }

      std::string::append(&__dst, v71, v72);
      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }
    }

    v73 = *(a2 + 56);
    if ((v73 & 1) == 0)
    {
      goto LABEL_131;
    }

    *(&v123.__r_.__value_.__s + 23) = 7;
    strcpy(&v123, ".blend(");
    std::to_string(&md, v73);
    if ((SBYTE7(v143) & 0x80u) == 0)
    {
      p_md = &md;
    }

    else
    {
      p_md = md;
    }

    if ((SBYTE7(v143) & 0x80u) == 0)
    {
      v75 = BYTE7(v143);
    }

    else
    {
      v75 = *(&md + 1);
    }

    v76 = std::string::append(&v123, p_md, v75);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v128.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v128.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = std::string::append(&v128, ")");
    v79 = *&v78->__r_.__value_.__l.__data_;
    *&c.hash[2] = *(&v78->__r_.__value_.__l + 2);
    *c.count = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    if ((c.hash[3] & 0x80000000) == 0)
    {
      v80 = &c;
    }

    else
    {
      v80 = *c.count;
    }

    if ((c.hash[3] & 0x80000000) == 0)
    {
      v81 = HIBYTE(c.hash[3]);
    }

    else
    {
      v81 = *c.hash;
    }

    std::string::append(&__dst, v80, v81);
    if ((SHIBYTE(c.hash[3]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

LABEL_226:
      operator delete(v128.__r_.__value_.__l.__data_);
      if (SBYTE7(v143) < 0)
      {
        goto LABEL_227;
      }

LABEL_130:
      if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

LABEL_228:
      operator delete(v123.__r_.__value_.__l.__data_);
      v82 = *(a2 + 60);
      if ((v82 & 0x80) == 0)
      {
        goto LABEL_149;
      }

LABEL_132:
      *(&v123.__r_.__value_.__s + 23) = 10;
      strcpy(&v123, ".logic_op(");
      std::to_string(&md, (v82 >> 8) & 0x1F);
      if ((SBYTE7(v143) & 0x80u) == 0)
      {
        v83 = &md;
      }

      else
      {
        v83 = md;
      }

      if ((SBYTE7(v143) & 0x80u) == 0)
      {
        v84 = BYTE7(v143);
      }

      else
      {
        v84 = *(&md + 1);
      }

      v85 = std::string::append(&v123, v83, v84);
      v86 = *&v85->__r_.__value_.__l.__data_;
      v128.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v128.__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      v87 = std::string::append(&v128, ")");
      v88 = *&v87->__r_.__value_.__l.__data_;
      *&c.hash[2] = *(&v87->__r_.__value_.__l + 2);
      *c.count = v88;
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        v89 = &c;
      }

      else
      {
        v89 = *c.count;
      }

      if ((c.hash[3] & 0x80000000) == 0)
      {
        v90 = HIBYTE(c.hash[3]);
      }

      else
      {
        v90 = *c.hash;
      }

      std::string::append(&__dst, v89, v90);
      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_231;
        }

LABEL_146:
        if ((SBYTE7(v143) & 0x80000000) == 0)
        {
          goto LABEL_147;
        }

LABEL_232:
        operator delete(md);
        if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_148:
          v82 = *(a2 + 60);
          goto LABEL_149;
        }
      }

      else
      {
        if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_146;
        }

LABEL_231:
        operator delete(v128.__r_.__value_.__l.__data_);
        if (SBYTE7(v143) < 0)
        {
          goto LABEL_232;
        }

LABEL_147:
        if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_148;
        }
      }

      operator delete(v123.__r_.__value_.__l.__data_);
      goto LABEL_148;
    }

    operator delete(*c.count);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_226;
    }

LABEL_129:
    if ((SBYTE7(v143) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

LABEL_227:
    operator delete(md);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_228;
    }

LABEL_131:
    v82 = *(a2 + 60);
    if ((v82 & 0x80) != 0)
    {
      goto LABEL_132;
    }

LABEL_149:
    *(&v123.__r_.__value_.__s + 23) = 12;
    strcpy(&v123, ".color_mask(");
    std::to_string(&md, (v82 >> 1) & 0xF);
    if ((SBYTE7(v143) & 0x80u) == 0)
    {
      v91 = &md;
    }

    else
    {
      v91 = md;
    }

    if ((SBYTE7(v143) & 0x80u) == 0)
    {
      v92 = BYTE7(v143);
    }

    else
    {
      v92 = *(&md + 1);
    }

    v93 = std::string::append(&v123, v91, v92);
    v94 = *&v93->__r_.__value_.__l.__data_;
    v128.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
    *&v128.__r_.__value_.__l.__data_ = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    v95 = std::string::append(&v128, ")");
    v96 = *&v95->__r_.__value_.__l.__data_;
    *&c.hash[2] = *(&v95->__r_.__value_.__l + 2);
    *c.count = v96;
    v95->__r_.__value_.__l.__size_ = 0;
    v95->__r_.__value_.__r.__words[2] = 0;
    v95->__r_.__value_.__r.__words[0] = 0;
    if ((c.hash[3] & 0x80000000) == 0)
    {
      v97 = &c;
    }

    else
    {
      v97 = *c.count;
    }

    if ((c.hash[3] & 0x80000000) == 0)
    {
      v98 = HIBYTE(c.hash[3]);
    }

    else
    {
      v98 = *c.hash;
    }

    std::string::append(&__dst, v97, v98);
    if ((SHIBYTE(c.hash[3]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_163;
      }

LABEL_189:
      operator delete(v128.__r_.__value_.__l.__data_);
      if (SBYTE7(v143) < 0)
      {
        goto LABEL_190;
      }

LABEL_164:
      if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_165;
      }

LABEL_191:
      operator delete(v123.__r_.__value_.__l.__data_);
      goto LABEL_165;
    }

    operator delete(*c.count);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_189;
    }

LABEL_163:
    if ((SBYTE7(v143) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_190:
    operator delete(md);
    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_191;
    }

LABEL_165:
    _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(&__dst, (*(a2 + 60) >> 13) & 1, (*(a2 + 60) >> 14) & 1, (*(a2 + 60) >> 15) & 3);
    v99 = *(a2 + 60);
    if ((v99 & 0x20040) == 0x20000)
    {
      _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(&__dst, (v99 >> 18) & 1, (v99 >> 19) & 1, (v99 >> 20) & 3);
      v99 = *(a2 + 60);
    }

    if ((v99 & 0x20) != 0)
    {
      std::string::append(&__dst, ".discard");
      v99 = *(a2 + 60);
    }

    if ((v99 & 0x400000) != 0)
    {
      std::string::append(&__dst, ".undef");
      v99 = *(a2 + 60);
    }

    if ((v99 & 0x800000) != 0)
    {
      std::string::append(&__dst, ".gl");
      v99 = *(a2 + 60);
    }

    if ((v99 & 0x1000000) != 0)
    {
      std::string::append(&__dst, ".fast_math");
      v99 = *(a2 + 60);
    }

    if ((v99 & 0x2000000) != 0)
    {
      std::string::append(&__dst, ".null");
      v99 = *(a2 + 60);
    }

    std::to_string(&v123, (v99 >> 26) & 3);
    v100 = std::string::insert(&v123, 0, ".rtz(");
    v101 = *&v100->__r_.__value_.__l.__data_;
    v128.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v128.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = std::string::append(&v128, ")");
    v103 = *&v102->__r_.__value_.__l.__data_;
    *&c.hash[2] = *(&v102->__r_.__value_.__l + 2);
    *c.count = v103;
    v102->__r_.__value_.__l.__size_ = 0;
    v102->__r_.__value_.__r.__words[2] = 0;
    v102->__r_.__value_.__r.__words[0] = 0;
    if ((c.hash[3] & 0x80000000) == 0)
    {
      v104 = &c;
    }

    else
    {
      v104 = *c.count;
    }

    if ((c.hash[3] & 0x80000000) == 0)
    {
      v105 = HIBYTE(c.hash[3]);
    }

    else
    {
      v105 = *c.hash;
    }

    std::string::append(&__dst, v104, v105);
    if ((SHIBYTE(c.hash[3]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_185;
      }

LABEL_193:
      operator delete(v128.__r_.__value_.__l.__data_);
      if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_194;
      }

LABEL_186:
      if ((*(a2 + 55) & 0x10) == 0)
      {
        goto LABEL_196;
      }

LABEL_195:
      std::string::append(&__dst, ".slabs");
      goto LABEL_196;
    }

    operator delete(*c.count);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_193;
    }

LABEL_185:
    if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v123.__r_.__value_.__l.__data_);
    if ((*(a2 + 55) & 0x10) != 0)
    {
      goto LABEL_195;
    }

LABEL_196:
    if ((*(a2 + 63) & 0x10) != 0)
    {
      std::to_string(&v123, 1 << (BYTE1(*(a2 + 52)) & 3));
      v106 = std::string::insert(&v123, 0, ".fixed_sample_count(");
      v107 = *&v106->__r_.__value_.__l.__data_;
      v128.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
      *&v128.__r_.__value_.__l.__data_ = v107;
      v106->__r_.__value_.__l.__size_ = 0;
      v106->__r_.__value_.__r.__words[2] = 0;
      v106->__r_.__value_.__r.__words[0] = 0;
      v108 = std::string::append(&v128, ")");
      v109 = *&v108->__r_.__value_.__l.__data_;
      *&c.hash[2] = *(&v108->__r_.__value_.__l + 2);
      *c.count = v109;
      v108->__r_.__value_.__l.__size_ = 0;
      v108->__r_.__value_.__r.__words[2] = 0;
      v108->__r_.__value_.__r.__words[0] = 0;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        v110 = &c;
      }

      else
      {
        v110 = *c.count;
      }

      if ((c.hash[3] & 0x80000000) == 0)
      {
        v111 = HIBYTE(c.hash[3]);
      }

      else
      {
        v111 = *c.hash;
      }

      std::string::append(&__dst, v110, v111);
      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_235;
        }

LABEL_205:
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_236:
          operator delete(v123.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_205;
        }

LABEL_235:
        operator delete(v128.__r_.__value_.__l.__data_);
        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_236;
        }
      }
    }

    v112 = (v49 == 0) | (2 * (v120 & 0x7F));
    v113 = (v48 + 16 * v112);
    v114 = v48 + 8 * v112;
    if (*v113)
    {
      AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(*v113);
      v115 = v113[1];
      *v113 = 0;
      v113[1] = 0;
      if (v115 && !atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v115->__on_zero_shared)(v115);
        std::__shared_weak_count::__release_weak(v115);
      }

      *(v114 + 256) = 0;
      v50 = v121;
      v51 = v122;
    }

    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v116 = v113[1];
    *v113 = v50;
    v113[1] = v51;
    if (v116 && !atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v116->__on_zero_shared)(v116);
      std::__shared_weak_count::__release_weak(v116);
    }

    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateCodeHeap(v121);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    *(v114 + 256) = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol((v121 + 30), p_dst, *(v121 + 93));
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v122->__on_zero_shared)(v122);
      std::__shared_weak_count::__release_weak(v122);
    }
  }

  **(a1 + 16) |= v47;
  **(a1 + 24) |= HIDWORD(v47);
}

__n128 AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyState(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(result + 740) = a3;
  v4 = *(a2 + 40);
  *(result + 56) = *(a2 + 56);
  *(result + 40) = v4;
  v5 = *(a2 + 72);
  *(result + 88) = *(a2 + 88);
  *(result + 72) = v5;
  *(result + 748) = *(a2 + 748);
  *(result + 752) = *(a2 + 752);
  v6 = *(a2 + 760);
  *(result + 760) = v6;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x20000;
  }

  *(result + 828) = *(result + 828) & 0xFFFDFFFF | v7;
  *(result + 789) = *(a2 + 789);
  *(result + 764) = *(a2 + 764);
  *(result + 784) = *(a2 + 784);
  *(result + 780) = *(a2 + 780);
  *(result + 788) = *(a2 + 788);
  *(result + 744) = *(a2 + 744);
  if (*(a2 + 3688))
  {
    operator new();
  }

  if (*(a2 + 3696))
  {
    operator new();
  }

  *(result + 872) = *(a2 + 872);
  v8 = *(a2 + 888);
  v9 = *(a2 + 904);
  v10 = *(a2 + 920);
  *(result + 936) = *(a2 + 936);
  *(result + 904) = v9;
  *(result + 920) = v10;
  *(result + 888) = v8;
  v11 = *(a2 + 792);
  *(result + 796) = *(a2 + 796);
  *(result + 792) = v11;
  if (*(a2 + 848))
  {
    operator new();
  }

  if (*(a2 + 856))
  {
    operator new();
  }

  if (*(a2 + 864))
  {
    operator new();
  }

  return v8;
}

void AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::copyFromOriginal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + ((*(a2 + 8) - *a2) >> 4);
  if (v4 > (*(a1 + 16) - *a1) >> 4)
  {
    if (!(v4 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<AGX::HAL300::DynamicLibrary> const*>,std::__wrap_iter<std::shared_ptr<AGX::HAL300::DynamicLibrary> const*>>(a1, *(a1 + 8), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  v6 = *a1;
  v5 = *(a1 + 8);
  while (v6 != v5)
  {
    v7 = *v6;
    v6 += 2;
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateCodeHeap(v7);
  }
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::clone(uint64_t *a1, os_unfair_lock_s *a2, atomic_ullong *a3)
{
  v70 = *MEMORY[0x29EDCA608];
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::destroy(a1);
  lock = a2;
  v56 = a1;
  if (*&a2[2]._os_unfair_lock_opaque)
  {
    operator new();
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setVertexVariant(a1, 0, 1);
  if (*&a2->_os_unfair_lock_opaque)
  {
    operator new();
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setFragmentVariant(a1, 0, 1, 0);
  if (*&a2[4]._os_unfair_lock_opaque)
  {
    operator new();
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setTileVariant(a1, 0, 1);
  if (*&a2[6]._os_unfair_lock_opaque)
  {
    operator new();
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setObjectVariant(a1, 0);
  if (*&a2[8]._os_unfair_lock_opaque)
  {
    operator new();
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setMeshVariant(a1, 0);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyState(a1, a2, 1, a3);
  v5 = a1[1];
  if (v5)
  {
    v62 = 0uLL;
    *&v63 = 0;
    v6 = *&a2[650]._os_unfair_lock_opaque - *&a2[648]._os_unfair_lock_opaque;
    if (v6 >> 4 != -1)
    {
      if (((v6 >> 4) + 1) <= 0x333333333333333)
      {
        operator new();
      }

      goto LABEL_117;
    }

    if (a1[326] - a1[324] >= v6)
    {
      v67 = *(v5 + 1536);
      *&v68 = *(v5 + 1552);
      *v59 = *(v5 + 3032);
      v60[0] = *(v5 + 3048);
      v57 = *(v5 + 1536);
      v58 = *(v5 + 1552);
      v65 = *(v5 + 3032);
      v66 = *(v5 + 3048);
      operator new();
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_118:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (*a1)
  {
    v50 = *a1;
    v62 = 0uLL;
    *&v63 = 0;
    v7 = *&a2[656]._os_unfair_lock_opaque - *&a2[654]._os_unfair_lock_opaque;
    if (v7 >> 4 == -1)
    {
      if (a1[329] - a1[327] >= v7)
      {
        v67 = *(v50 + 1536);
        *&v68 = *(v50 + 1552);
        *v59 = *(v50 + 3040);
        v60[0] = *(v50 + 3056);
        v57 = *(v50 + 1536);
        v58 = *(v50 + 1552);
        v65 = *(v50 + 3040);
        v66 = *(v50 + 3056);
        operator new();
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_118;
    }

    if (((v7 >> 4) + 1) <= 0x333333333333333)
    {
      operator new();
    }

    goto LABEL_117;
  }

  if (a1[2])
  {
    v51 = a1[2];
    v62 = 0uLL;
    *&v63 = 0;
    v8 = *&a2[662]._os_unfair_lock_opaque - *&a2[660]._os_unfair_lock_opaque;
    if (v8 >> 4 == -1)
    {
      if (a1[332] - a1[330] >= v8)
      {
        v67 = *(v51 + 1536);
        *&v68 = *(v51 + 1552);
        *v59 = *(v51 + 3040);
        v60[0] = *(v51 + 3056);
        v57 = *(v51 + 1536);
        v58 = *(v51 + 1552);
        v65 = *(v51 + 3040);
        v66 = *(v51 + 3056);
        operator new();
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_118;
    }

    if (((v8 >> 4) + 1) <= 0x333333333333333)
    {
      operator new();
    }

    goto LABEL_117;
  }

  if (a1[3])
  {
    v52 = a1[3];
    v62 = 0uLL;
    *&v63 = 0;
    v9 = *&a2[668]._os_unfair_lock_opaque - *&a2[666]._os_unfair_lock_opaque;
    if (v9 >> 4 == -1)
    {
      if (a1[335] - a1[333] >= v9)
      {
        v67 = *(v52 + 1536);
        *&v68 = *(v52 + 1552);
        *v59 = *(v52 + 3032);
        v60[0] = *(v52 + 3048);
        v57 = *(v52 + 1536);
        v58 = *(v52 + 1552);
        v65 = *(v52 + 3032);
        v66 = *(v52 + 3048);
        operator new();
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_118;
    }

    if (((v9 >> 4) + 1) <= 0x333333333333333)
    {
      operator new();
    }

    goto LABEL_117;
  }

  if (a1[4])
  {
    v53 = a1[4];
    v62 = 0uLL;
    *&v63 = 0;
    v10 = *&a2[674]._os_unfair_lock_opaque - *&a2[672]._os_unfair_lock_opaque;
    if (v10 >> 4 == -1)
    {
      if (a1[338] - a1[336] >= v10)
      {
        v67 = *(v53 + 1536);
        *&v68 = *(v53 + 1552);
        *v59 = *(v53 + 3032);
        v60[0] = *(v53 + 3048);
        v57 = *(v53 + 1536);
        v58 = *(v53 + 1552);
        v65 = *(v53 + 3032);
        v66 = *(v53 + 3048);
        operator new();
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_118;
    }

    if (((v10 >> 4) + 1) <= 0x333333333333333)
    {
      operator new();
    }

LABEL_117:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (a1[2])
  {
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::finalize<MTLTileRenderPipelineDescriptor>(a1, a3, 0, 0);
  }

  else if (a1[1] || *a1)
  {
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::finalize<MTLRenderPipelineDescriptor>(a1, a3, 0, 0);
  }

  v67 = 0u;
  v68 = 0u;
  LODWORD(v69) = 1065353216;
  v62 = 0u;
  v63 = 0u;
  v64 = 1065353216;
  *v59 = 0u;
  *v60 = 0u;
  v61 = 1065353216;
  v11 = *&a2[2]._os_unfair_lock_opaque;
  if (v11)
  {
    v12 = *&a2[682]._os_unfair_lock_opaque;
    if (v12)
    {
      v13 = a1[128];
      v14 = a1[1];
      while (1)
      {
        v15 = v12[3];
        v16 = [v15 functionType];
        if (v16 == 6)
        {
          v17 = [v13 requiresRaytracingEmulation];
        }

        else
        {
          v17 = 0;
        }

        v18 = v15[5];
        *&v57 = v18;
        if (v16 != 5 && v17 == 0)
        {
          goto LABEL_59;
        }

        v20 = [v15 name];
        if (VisibleFunctionsMap::getVisibleFunctionOffset(v11 + 534, [v20 cStringUsingEncoding:4]) == -1)
        {
          break;
        }

        v21 = v18 + *(v14 + 1528) - *&v11[191];
        if (v21 != -1)
        {
          goto LABEL_69;
        }

LABEL_59:

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_76;
        }
      }

      v22 = v56[324];
      v23 = v56[325];
      if (v22 == v23)
      {
        goto LABEL_59;
      }

      while (*(*v22 + 8) != *(*(v15[6] + 56) + 8))
      {
        v22 += 16;
        if (v22 == v23)
        {
          goto LABEL_59;
        }
      }

      v21 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(*v22 + 120, [v20 cStringUsingEncoding:4], *(*v22 + 744));
      if (v21 == -1)
      {
        goto LABEL_59;
      }

LABEL_69:
      *&v65 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:*(v15 + 8) name:v20 device:v13 handle:v21 dylib:0];
      std::__hash_table<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,AGXG18PFamilyFunctionHandle *>(&v67, v18, &v57, &v65);
      goto LABEL_59;
    }
  }

LABEL_76:
  v24 = *&lock->_os_unfair_lock_opaque;
  if (*&lock->_os_unfair_lock_opaque)
  {
    v25 = *&lock[692]._os_unfair_lock_opaque;
    if (v25)
    {
      v26 = v56[128];
      v27 = *v56;
      while (1)
      {
        v28 = v25[3];
        v29 = [v28 functionType];
        if (v29 == 6)
        {
          v30 = [v26 requiresRaytracingEmulation];
        }

        else
        {
          v30 = 0;
        }

        v31 = v28[5];
        *&v57 = v31;
        if (v29 != 5 && v30 == 0)
        {
          goto LABEL_79;
        }

        v33 = [v28 name];
        if (VisibleFunctionsMap::getVisibleFunctionOffset(v24 + 493, [v33 cStringUsingEncoding:4]) == -1)
        {
          break;
        }

        v34 = v31 + *(v27 + 1528) - *&v24[191];
        if (v34 != -1)
        {
          goto LABEL_89;
        }

LABEL_79:

        v25 = *v25;
        if (!v25)
        {
          goto LABEL_96;
        }
      }

      v35 = v56[327];
      v36 = v56[328];
      if (v35 == v36)
      {
        goto LABEL_79;
      }

      while (*(*v35 + 8) != *(*(v28[6] + 56) + 8))
      {
        v35 += 16;
        if (v35 == v36)
        {
          goto LABEL_79;
        }
      }

      v34 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(*v35 + 120, [v33 cStringUsingEncoding:4], *(*v35 + 744));
      if (v34 == -1)
      {
        goto LABEL_79;
      }

LABEL_89:
      *&v65 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:*(v28 + 8) name:v33 device:v26 handle:v34 dylib:0];
      std::__hash_table<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,AGXG18PFamilyFunctionHandle *>(&v62, v31, &v57, &v65);
      goto LABEL_79;
    }
  }

LABEL_96:
  v37 = *&lock[4]._os_unfair_lock_opaque;
  if (!v37 || (v38 = *&lock[702]._os_unfair_lock_opaque) == 0)
  {
LABEL_116:
    operator new();
  }

  v39 = v56[128];
  v40 = v56[2];
  while (1)
  {
    v41 = v38[3];
    v42 = [v41 functionType];
    if (v42 == 6)
    {
      v43 = [v39 requiresRaytracingEmulation];
    }

    else
    {
      v43 = 0;
    }

    v44 = v41[5];
    *&v57 = v44;
    if (v42 != 5 && v43 == 0)
    {
      goto LABEL_99;
    }

    v46 = [v41 name];
    if (VisibleFunctionsMap::getVisibleFunctionOffset(v37 + 481, [v46 cStringUsingEncoding:4]) == -1)
    {
      break;
    }

    v47 = v44 + *(v40 + 1528) - *&v37[191];
    if (v47 != -1)
    {
      goto LABEL_109;
    }

LABEL_99:

    v38 = *v38;
    if (!v38)
    {
      goto LABEL_116;
    }
  }

  v48 = v56[330];
  v49 = v56[331];
  if (v48 == v49)
  {
    goto LABEL_99;
  }

  while (*(*v48 + 8) != *(*(v41[6] + 56) + 8))
  {
    v48 += 16;
    if (v48 == v49)
    {
      goto LABEL_99;
    }
  }

  v47 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(*v48 + 120, [v46 cStringUsingEncoding:4], *(*v48 + 744));
  if (v47 == -1)
  {
    goto LABEL_99;
  }

LABEL_109:
  *&v65 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:*(v41 + 8) name:v46 device:v39 handle:v47 dylib:0];
  std::__hash_table<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,AGXG18PFamilyFunctionHandle *>(v59, v44, &v57, &v65);
  goto LABEL_99;
}

void sub_29CF12E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, os_unfair_lock_t lock, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52)
{
  operator delete(__p);
  v54 = *(v52 - 240);
  if (v54)
  {
    *(v52 - 232) = v54;
    operator delete(v54);
  }

  _Unwind_Resume(a1);
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setVertexVariant(uint64_t a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  *(a1 + 8) = a2;
  if (a2)
  {
    v3 = *MEMORY[0x29EDC5638];
    v4 = *(a2 + 4152) + v3 + 32;
    memset(v26, 0, sizeof(v26));
    v5 = *(a2 + 2728);
    if (v5)
    {
      v6 = -1;
      do
      {
        v7 = v6++;
        v8 = __clz(__rbit32(v5));
        *(v26 + v6) = *(a2 + 2928 + 8 * v8) + v3 + 32;
        v5 &= ~(1 << v8);
      }

      while (v5);
      *(&v26[1] + v7) = v4;
      v9 = v6 + 2;
      if (v6 == -2)
      {
LABEL_6:
        *(a1 + 1080) = *(a2 + 1292);
        v10 = *(a2 + 1300);
        *(a1 + 1088) = v10;
        v11 = *(a2 + 1328);
        *(a1 + 1100) = v11;
        *(a1 + 1104) = a3;
        *(a1 + 1272) = *(a2 + 2792);
        v12 = *(a2 + 1304) - v10;
        *(a1 + 1108) = v12;
        *(a1 + 1084) = v10 + v12 * a3;
        v13 = *(a2 + 1332);
        *(a1 + 1116) = v13 - v11;
        *(a1 + 1096) = v11 + v13 * a3;
        AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 1132), (a2 + 1168));
        *(a1 + 1252) = *(a2 + 1288);
        *(a1 + 1256) = *(a2 + 1354);
        *(a1 + 1257) = *(a2 + 1356);
        *(a1 + 1260) = *(a2 + 1350);
        *(a1 + 1296) = *(a2 + 1344);
        return;
      }
    }

    else
    {
      *&v26[0] = v4;
      v9 = 1;
    }

    v16 = 0;
    v17 = *(a1 + 720);
    do
    {
      if (v17)
      {
        v19 = 0;
        v20 = *(v26 + v16);
        v21 = v17;
        v22 = (a1 + 112);
        while (1)
        {
          v23 = *v22;
          v22 += 6;
          if (*(v20 + 4) == v23)
          {
            break;
          }

          if (v17 == ++v19)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        LODWORD(v19) = 0;
      }

      if (v19 == v17)
      {
        v20 = *(v26 + v16);
        v21 = v17;
LABEL_20:
        v24 = a1 + 96 + 24 * v21;
        v25 = *v20;
        *(v24 + 16) = *(v20 + 2);
        *v24 = v25;
        v18 = (*(a1 + 720) + 1);
        *(a1 + 720) = v18;
      }

      else
      {
        v18 = v17;
        LOBYTE(v17) = v19;
      }

      *(a1 + 724) |= 1 << v17;
      ++v16;
      v17 = v18;
    }

    while (v16 != v9);
    goto LABEL_6;
  }
}

double AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setFragmentVariant(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4)
{
  v35 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  if (a2)
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v4 = *(a2 + 2728);
    if (v4)
    {
      LODWORD(v5) = 0;
      v6 = *MEMORY[0x29EDC5638];
      do
      {
        v7 = __clz(__rbit32(v4));
        *(v33 + v5) = *(a2 + 2928 + 8 * v7) + v6 + 32;
        v5 = (v5 + 1);
        v4 &= ~(1 << v7);
      }

      while (v4);
      if (v5)
      {
        v8 = 0;
        v9 = *(a1 + 720);
        do
        {
          if (v9)
          {
            v11 = 0;
            v12 = *(v33 + v8);
            v13 = v9;
            v14 = (a1 + 112);
            while (1)
            {
              v15 = *v14;
              v14 += 6;
              if (*(v12 + 4) == v15)
              {
                break;
              }

              if (v9 == ++v11)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            LODWORD(v11) = 0;
          }

          if (v11 == v9)
          {
            v12 = *(v33 + v8);
            v13 = v9;
LABEL_17:
            v16 = a1 + 96 + 24 * v13;
            v17 = *v12;
            *(v16 + 16) = *(v12 + 2);
            *v16 = v17;
            v10 = (*(a1 + 720) + 1);
            *(a1 + 720) = v10;
          }

          else
          {
            v10 = v9;
            LOBYTE(v9) = v11;
          }

          *(a1 + 728) |= 1 << v9;
          ++v8;
          v9 = v10;
        }

        while (v8 != v5);
      }
    }

    if (*(a2 + 3920))
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0;
    }

    if (*(a2 + 3924))
    {
      v19 = 0x2000;
    }

    else
    {
      v19 = 0;
    }

    *(a1 + 828) = v19 | v18 | *(a1 + 828) & 0xFFFFCFFF;
    if ((*(a2 + 4066) & 1) == 0 && (*(a2 + 4065) & 1) == 0)
    {
      v20 = *(a1 + 804) & 0xFFDFFFFF | (((*(a2 + 3840) >> 21) & 1) << 21);
      *(a1 + 804) = v20;
      v21 = v20 & 0xFFBFFFFF | (((*(a2 + 3840) >> 22) & 1) << 22);
      *(a1 + 804) = v21;
      v22 = v21 & 0xFDFFFFFF | (((*(a2 + 3840) >> 25) & 1) << 25);
      *(a1 + 804) = v22;
      v23 = v22 & 0xFBFFFFFF | (((*(a2 + 3840) >> 26) & 1) << 26);
      *(a1 + 804) = v23;
      *(a1 + 804) = *(a2 + 3840) & 0xE0000000 | v23 & 0x1FFFFFFF;
      *(a1 + 816) = *(a1 + 816) & 0xFFFE0000 | *(a2 + 3844) & 0x1FFFF;
    }

    v24 = *(a2 + 3925);
    if ((((v24 - 1) < 2) & a4) != 0)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(a2 + 3925);
    }

    if (*(a1 + 808) >> 28)
    {
      LOBYTE(v24) = v25;
    }

    *(a1 + 808) = vorr_s8(vdup_n_s32((v24 & 3) << 22), (*(a1 + 808) & 0xFF3FFFFFFF3FFFFFLL));
    *(a1 + 1392) = *(a2 + 1292);
    v26 = *(a2 + 1300);
    *(a1 + 1400) = v26;
    v27 = *(a2 + 1328);
    *(a1 + 1412) = v27;
    *(a1 + 1416) = a3;
    *(a1 + 1584) = *(a2 + 2792);
    v28 = *(a2 + 1304) - v26;
    *(a1 + 1420) = v28;
    *(a1 + 1396) = v26 + v28 * a3;
    v29 = *(a2 + 1332);
    *(a1 + 1428) = v29 - v27;
    *(a1 + 1408) = v27 + v29 * a3;
    result = AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 1444), (a2 + 1168));
    *(a1 + 1564) = *(a2 + 1288);
    *(a1 + 1568) = *(a2 + 1354);
    *(a1 + 1569) = *(a2 + 1356);
    *(a1 + 1572) = *(a2 + 1350);
    *(a1 + 1608) = *(a2 + 1344);
  }

  else
  {
    *(a1 + 804) = *(a1 + 804) & 0x199FFFFF | 0x200000;
    *(a1 + 816) &= 0xFFFE0000;
    *&result = *(a1 + 808) | 0xC0000000C00000;
    *(a1 + 808) = result;
  }

  return result;
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setTileVariant(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = a2;
  if (a2)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v3 = *(a2 + 2728);
    if (v3)
    {
      LODWORD(v4) = 0;
      v5 = *MEMORY[0x29EDC5638];
      do
      {
        v6 = __clz(__rbit32(v3));
        *(v23 + v4) = *(a2 + 2928 + 8 * v6) + v5 + 32;
        v4 = (v4 + 1);
        v3 &= ~(1 << v6);
      }

      while (v3);
      if (v4)
      {
        v7 = 0;
        v8 = *(a1 + 720);
        do
        {
          if (v8)
          {
            v10 = 0;
            v11 = *(v23 + v7);
            v12 = v8;
            v13 = (a1 + 112);
            while (1)
            {
              v14 = *v13;
              v13 += 6;
              if (*(v11 + 4) == v14)
              {
                break;
              }

              if (v8 == ++v10)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            LODWORD(v10) = 0;
          }

          if (v10 == v8)
          {
            v11 = *(v23 + v7);
            v12 = v8;
LABEL_17:
            v15 = a1 + 96 + 24 * v12;
            v16 = *v11;
            *(v15 + 16) = *(v11 + 2);
            *v15 = v16;
            v9 = (*(a1 + 720) + 1);
            *(a1 + 720) = v9;
          }

          else
          {
            v9 = v8;
            LOBYTE(v8) = v10;
          }

          *(a1 + 728) |= 1 << v8;
          ++v7;
          v8 = v9;
        }

        while (v7 != v4);
      }
    }

    *(a1 + 1704) = *(a2 + 1292);
    v17 = *(a2 + 1300);
    *(a1 + 1712) = v17;
    v18 = *(a2 + 1328);
    *(a1 + 1724) = v18;
    *(a1 + 1728) = a3;
    *(a1 + 1896) = *(a2 + 2792);
    v19 = *(a2 + 1304) - v17;
    *(a1 + 1732) = v19;
    *(a1 + 1708) = v17 + v19 * a3;
    v20 = *(a2 + 1332);
    *(a1 + 1740) = v20 - v18;
    *(a1 + 1720) = v18 + v20 * a3;
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 1756), (a2 + 1168));
    *(a1 + 1876) = *(a2 + 1288);
    *(a1 + 1880) = *(a2 + 1354);
    *(a1 + 1881) = *(a2 + 1356);
    *(a1 + 1884) = *(a2 + 1350);
    *(a1 + 1920) = *(a2 + 1344);
  }
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setObjectVariant(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  *(a1 + 24) = a2;
  if (a2)
  {
    memset(v22, 0, sizeof(v22));
    v2 = *(a2 + 2728);
    if (v2)
    {
      LODWORD(v3) = 0;
      v4 = *MEMORY[0x29EDC5638];
      do
      {
        v5 = __clz(__rbit32(v2));
        *(v22 + v3) = *(a2 + 2928 + 8 * v5) + v4 + 32;
        v3 = (v3 + 1);
        v2 &= ~(1 << v5);
      }

      while (v2);
      if (v3)
      {
        v6 = 0;
        v7 = *(a1 + 720);
        do
        {
          if (v7)
          {
            v9 = 0;
            v10 = *(v22 + v6);
            v11 = v7;
            v12 = (a1 + 112);
            while (1)
            {
              v13 = *v12;
              v12 += 6;
              if (*(v10 + 4) == v13)
              {
                break;
              }

              if (v7 == ++v9)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            LODWORD(v9) = 0;
          }

          if (v9 == v7)
          {
            v10 = *(v22 + v6);
            v11 = v7;
LABEL_17:
            v14 = a1 + 96 + 24 * v11;
            v15 = *v10;
            *(v14 + 16) = *(v10 + 2);
            *v14 = v15;
            v8 = (*(a1 + 720) + 1);
            *(a1 + 720) = v8;
          }

          else
          {
            v8 = v7;
            LOBYTE(v7) = v9;
          }

          *(a1 + 732) |= 1 << v7;
          ++v6;
          v7 = v8;
        }

        while (v6 != v3);
      }
    }

    *(a1 + 2016) = *(a2 + 1292);
    v16 = *(a2 + 1300);
    *(a1 + 2024) = v16;
    v17 = *(a2 + 1328);
    *(a1 + 2036) = v17;
    *(a1 + 2040) = 1;
    *(a1 + 2208) = *(a2 + 2792);
    v18 = *(a2 + 1304);
    *(a1 + 2044) = v18 - v16;
    *(a1 + 2020) = v18;
    v19 = *(a2 + 1332);
    *(a1 + 2052) = v19 - v17;
    *(a1 + 2032) = v19 + v17;
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 2068), (a2 + 1168));
    *(a1 + 2188) = *(a2 + 1288);
    *(a1 + 2192) = *(a2 + 1354);
    *(a1 + 2193) = *(a2 + 1356);
    *(a1 + 2196) = *(a2 + 1350);
    *(a1 + 2232) = *(a2 + 1344);
  }
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setMeshVariant(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  *(a1 + 32) = a2;
  if (!a2)
  {
    return;
  }

  v2 = *MEMORY[0x29EDC5638];
  v3 = *(a2 + 3920) + v2 + 32;
  memset(v27, 0, sizeof(v27));
  v4 = *(a2 + 2728);
  if (!v4)
  {
    *&v27[0] = v3;
    v8 = 1;
    goto LABEL_12;
  }

  v5 = -1;
  do
  {
    v6 = v5++;
    v7 = __clz(__rbit32(v4));
    *(v27 + v5) = *(a2 + 2928 + 8 * v7) + v2 + 32;
    v4 &= ~(1 << v7);
  }

  while (v4);
  *(&v27[1] + v6) = v3;
  v8 = v5 + 2;
  if (v5 != -2)
  {
LABEL_12:
    v17 = 0;
    v18 = *(a1 + 720);
    do
    {
      if (v18)
      {
        v20 = 0;
        v21 = *(v27 + v17);
        v22 = v18;
        v23 = (a1 + 112);
        while (1)
        {
          v24 = *v23;
          v23 += 6;
          if (*(v21 + 4) == v24)
          {
            break;
          }

          if (v18 == ++v20)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        LODWORD(v20) = 0;
      }

      if (v20 == v18)
      {
        v21 = *(v27 + v17);
        v22 = v18;
LABEL_23:
        v25 = a1 + 96 + 24 * v22;
        v26 = *v21;
        *(v25 + 16) = *(v21 + 2);
        *v25 = v26;
        v19 = (*(a1 + 720) + 1);
        *(a1 + 720) = v19;
      }

      else
      {
        v19 = v18;
        LOBYTE(v18) = v20;
      }

      *(a1 + 736) |= 1 << v18;
      ++v17;
      v18 = v19;
    }

    while (v17 != v8);
  }

  *(a1 + 920) = 0u;
  v9 = *(a2 + 3820);
  if (v9 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_29D2F27C0[v9];
  }

  *(a1 + 936) = v10;
  *(a1 + 2328) = *(a2 + 1292);
  v11 = *(a2 + 1300);
  *(a1 + 2336) = v11;
  v12 = *(a2 + 1328);
  *(a1 + 2348) = v12;
  *(a1 + 2352) = 1;
  *(a1 + 2520) = *(a2 + 2792);
  v13 = *(a2 + 1304);
  *(a1 + 2356) = v13 - v11;
  *(a1 + 2332) = v13;
  v14 = *(a2 + 1332);
  *(a1 + 2364) = v14 - v12;
  *(a1 + 2344) = v14 + v12;
  AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((a1 + 2380), (a2 + 1168));
  *(a1 + 2500) = *(a2 + 1288);
  *(a1 + 2504) = *(a2 + 1354);
  *(a1 + 2505) = *(a2 + 1356);
  *(a1 + 2508) = *(a2 + 1350);
  *(a1 + 2544) = *(a2 + 1344);
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::finalize<MTLMeshRenderPipelineDescriptor>(uint64_t a1, atomic_ullong *a2, NSObject *a3, void *a4)
{
  v167 = *MEMORY[0x29EDCA608];
  v7 = a2[106];
  *(a1 + 1024) = a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v8);
    AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 8), a1 + 1032);
  }

  if (*a1)
  {
    AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(*a1);
    AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*a1, a1 + 1344);
    v9 = *a1;
    if ((*(*a1 + 4066) & 1) == 0 && (*(v9 + 4065) & 1) == 0)
    {
      v10 = *(a1 + 804) & 0xFFDFFFFF | (((*(v9 + 3840) >> 21) & 1) << 21);
      *(a1 + 804) = v10;
      v11 = v10 & 0xFFBFFFFF | (((*(v9 + 3840) >> 22) & 1) << 22);
      *(a1 + 804) = v11;
      v12 = v11 & 0xFDFFFFFF | (((*(v9 + 3840) >> 25) & 1) << 25);
      *(a1 + 804) = v12;
      v13 = v12 & 0xFBFFFFFF | (((*(v9 + 3840) >> 26) & 1) << 26);
      *(a1 + 804) = v13;
      *(a1 + 804) = *(v9 + 3840) & 0xE0000000 | v13 & 0x1FFFFFFF;
      *(a1 + 816) = *(a1 + 816) & 0xFFFE0000 | *(v9 + 3844) & 0x1FFFF;
    }

    v14 = *(v9 + 3925);
    if ((v14 - 1) < 2 && (*(v7 + 16456) & 0x8000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (*(a1 + 808) >> 28)
    {
      LOBYTE(v14) = v15;
    }

    *(a1 + 808) = vorr_s8(vdup_n_s32((v14 & 3) << 22), (*(a1 + 808) & 0xFF3FFFFFFF3FFFFFLL));
  }

  v16 = *(a1 + 24);
  if (v16)
  {
    AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v16);
    AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 24), a1 + 1968);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v17);
    AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 32), a1 + 2280);
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v18);
    AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 16), a1 + 1656);
  }

  if ([a4 maxAccelerationStructureTraversalDepth])
  {
    *(a1 + 3172) = ([a4 maxAccelerationStructureTraversalDepth] + 7) & 0xFFFFFFF8;
    *(a1 + 3292) = ([a4 maxAccelerationStructureTraversalDepth] + 7) & 0xFFFFFFF8;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(a1);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTables(a1, a2);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParams(a1, v7);
  if ((*(a1 + 1257) & 1) != 0 || (*(a1 + 1569) & 1) != 0 || (*(a1 + 2193) & 1) != 0 || (*(a1 + 2505) & 1) != 0 || *(a1 + 1881))
  {
    atomic_fetch_or(a2 + 108, 0x1000uLL);
  }

  v131 = v7;
  if (*(a1 + 1252) || *(a1 + 1564) || *(a1 + 2188) || *(a1 + 2500) || *(a1 + 1876))
  {
    atomic_fetch_or(a2 + 108, 0x200000uLL);
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitLabelUpdateSignpost(a1, a3);
  v133 = [a4 meshLinkedFunctions];
  v19 = [a4 objectLinkedFunctions];
  v132 = a4;
  v130 = [a4 fragmentLinkedFunctions];
  v134 = *(a1 + 24);
  if (v134)
  {
    __p = 0;
    v145 = 0;
    v146 = 0;
    v20 = *(a1 + 3480);
    v21 = *(a1 + 3488);
    if (v21 != v20)
    {
      if (((v21 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_244;
    }

    prime = vcvtps_u32_f32(([objc_msgSend(v19 "binaryFunctions")] + objc_msgSend(objc_msgSend(v19, "functions"), "count")) / *(a1 + 2864));
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v23 = *(a1 + 2840);
    if (prime > *&v23)
    {
      goto LABEL_42;
    }

    if (prime < *&v23)
    {
      v24 = vcvtps_u32_f32(*(a1 + 2856) / *(a1 + 2864));
      if (*&v23 < 3uLL || (v25 = vcnt_s8(v23), v25.i16[0] = vaddlv_u8(v25), v25.u32[0] > 1uLL))
      {
        v24 = std::__next_prime(v24);
      }

      else
      {
        v26 = 1 << -__clz(v24 - 1);
        if (v24 >= 2)
        {
          v24 = v26;
        }
      }

      if (prime <= v24)
      {
        prime = v24;
      }

      if (prime < *&v23)
      {
LABEL_42:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 2832, prime);
      }
    }

    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v27 = [v19 functions];
    v28 = [v27 countByEnumeratingWithState:&v157 objects:&v164 count:16];
    v129 = v19;
    if (v28)
    {
      obj = v27;
      v29 = 0;
      v30 = *v158;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v158 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v161[0] = *(*(&v157 + 1) + 8 * i);
          v32 = [v161[0] name];
          v33 = [v32 UTF8String];
          v34 = strlen(v33);
          if (v34 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_243:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v35 = v34;
          if (v34 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v163) = v34;
          if (v34)
          {
            memmove(&__dst, v33, v34);
          }

          *(&__dst + v35) = 0;
          v36 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::find<std::string>((a1 + 3032), &__dst);
          v37 = v36;
          if (SHIBYTE(v163) < 0)
          {
            operator delete(__dst);
            if (!v37)
            {
LABEL_69:
              *&v153 = [v32 UTF8String];
              std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__construct_node<char const*,objc_object  {objcproto11MTLFunction}&>(&__dst, a1 + 3032, &v153, v161);
            }
          }

          else if (!v36)
          {
            goto LABEL_69;
          }

          v38 = v161[0];
          if ([v161[0] functionType] == 6)
          {
            v39 = [(atomic_ullong *)a2 requiresRaytracingEmulation];
          }

          else
          {
            v39 = 0;
          }

          if (([v38 functionType] == 5) | v39 & 1)
          {
            VisibleFunctionOffset = VisibleFunctionsMap::getVisibleFunctionOffset(v134 + 495, [v32 cStringUsingEncoding:4]);
            if (VisibleFunctionOffset != -1)
            {
              v41 = [v38 functionType];
              if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2832), v38))
              {
                __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v41 == 5) name:v32 device:a2 handle:VisibleFunctionOffset dylib:0];
                std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2832), v38, v161, &__dst);
              }
            }
          }

          else if ([v38 functionType] == 6 && !std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2832), v38))
          {
            v42 = *(__p + 2 * v29);
            if (*(v42 + 25) == 1)
            {
              v43 = *(v42 + 32) & 0xFFFFFFF | 0x80000000;
              v44 = 1;
            }

            else
            {
              v44 = 0;
              v43 = v29;
            }

            __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v44 name:v32 device:a2 handle:v43 dylib:0];
            std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2832), v38, v161, &__dst);
            ++v29;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v157 objects:&v164 count:16];
      }

      while (v28);
    }

    else
    {
      v29 = 0;
    }

    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v45 = [v129 privateFunctions];
    v46 = [v45 countByEnumeratingWithState:&v153 objects:&__dst count:16];
    if (v46)
    {
      v47 = *v154;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v154 != v47)
          {
            objc_enumerationMutation(v45);
          }

          if ([*(*(&v153 + 1) + 8 * j) functionType] == 6)
          {
            v29 += [(atomic_ullong *)a2 requiresRaytracingEmulation]^ 1;
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v153 objects:&__dst count:16];
      }

      while (v46);
    }

    v49 = [v129 binaryFunctions];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v148 objects:v161 count:16];
    if (v50)
    {
      v51 = *v149;
      obja = v49;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v149 != v51)
          {
            objc_enumerationMutation(obja);
          }

          v53 = *(*(&v148 + 1) + 8 * k);
          v141 = v53;
          v54 = [v53 name];
          if ([v53 vendorPrivate] && (objc_msgSend(v53, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2832), v53))
            {
              v61 = *(__p + 2 * v29);
              if (*(v61 + 25) == 1)
              {
                v62 = *(v61 + 32) & 0xFFFFFFF | 0x80000000;
                v63 = 1;
              }

              else
              {
                v63 = 0;
                v62 = v29;
              }

              v152 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v63 name:v54 device:a2 handle:v62 dylib:0];
              std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2832, &v141, &v152);
            }
          }

          else
          {
            v55 = [v53 vendorPrivate];
            v56 = v55;
            if (v55)
            {
              v57 = *(v55 + 56);
              v58 = [v53 name];
              v59 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(v57 + 120, [v58 cStringUsingEncoding:4], *(*(v56 + 56) + 744));
              if (v59 != -1)
              {
                v60 = [v53 functionType];
                if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2832), v53))
                {
                  v152 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v60 == 5) name:v58 device:a2 handle:v59 dylib:v56];
                  std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2832, &v141, &v152);
                }
              }
            }
          }
        }

        v50 = [obja countByEnumeratingWithState:&v148 objects:v161 count:16];
      }

      while (v50);
    }

    if (__p)
    {
      v64 = v145;
      v65 = __p;
      if (v145 != __p)
      {
        do
        {
          v66 = *(v64 - 1);
          if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v66->__on_zero_shared)(v66);
            std::__shared_weak_count::__release_weak(v66);
          }

          v64 -= 16;
        }

        while (v64 != __p);
        v65 = __p;
      }

      v145 = __p;
      operator delete(v65);
    }
  }

  v135 = *(a1 + 32);
  if (v135)
  {
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v67 = *(a1 + 3504);
    v68 = *(a1 + 3512);
    if (v68 != v67)
    {
      if (((v68 - v67) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_244;
    }

    v69 = vcvtps_u32_f32(([objc_msgSend(v133 "binaryFunctions")] + objc_msgSend(objc_msgSend(v133, "functions"), "count")) / *(a1 + 2904));
    if (v69 == 1)
    {
      v69 = 2;
    }

    else if ((v69 & (v69 - 1)) != 0)
    {
      v69 = std::__next_prime(v69);
    }

    v70 = *(a1 + 2880);
    if (v69 > *&v70)
    {
      goto LABEL_131;
    }

    if (v69 < *&v70)
    {
      v71 = vcvtps_u32_f32(*(a1 + 2896) / *(a1 + 2904));
      if (*&v70 < 3uLL || (v72 = vcnt_s8(v70), v72.i16[0] = vaddlv_u8(v72), v72.u32[0] > 1uLL))
      {
        v71 = std::__next_prime(v71);
      }

      else
      {
        v73 = 1 << -__clz(v71 - 1);
        if (v71 >= 2)
        {
          v71 = v73;
        }
      }

      if (v69 <= v71)
      {
        v69 = v71;
      }

      if (v69 < *&v70)
      {
LABEL_131:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 2872, v69);
      }
    }

    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v74 = [v133 functions];
    v75 = [v74 countByEnumeratingWithState:&v157 objects:&v164 count:16];
    if (v75)
    {
      objb = v74;
      v76 = 0;
      v77 = *v158;
      do
      {
        for (m = 0; m != v75; ++m)
        {
          if (*v158 != v77)
          {
            objc_enumerationMutation(objb);
          }

          v161[0] = *(*(&v157 + 1) + 8 * m);
          v79 = [v161[0] name];
          v80 = [v79 UTF8String];
          v81 = strlen(v80);
          if (v81 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_243;
          }

          v82 = v81;
          if (v81 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v163) = v81;
          if (v81)
          {
            memmove(&__dst, v80, v81);
          }

          *(&__dst + v82) = 0;
          v83 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::find<std::string>((a1 + 3072), &__dst);
          if (SHIBYTE(v163) < 0)
          {
            v84 = v83;
            operator delete(__dst);
            if (!v84)
            {
LABEL_158:
              *&v153 = [v79 UTF8String];
              std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__construct_node<char const*,objc_object  {objcproto11MTLFunction}&>(&__dst, a1 + 3072, &v153, v161);
            }
          }

          else if (!v83)
          {
            goto LABEL_158;
          }

          v85 = v161[0];
          if ([v161[0] functionType] == 6)
          {
            v86 = [(atomic_ullong *)a2 requiresRaytracingEmulation];
          }

          else
          {
            v86 = 0;
          }

          if (([v85 functionType] == 5) | v86 & 1)
          {
            v87 = VisibleFunctionsMap::getVisibleFunctionOffset(v135 + 508, [v79 cStringUsingEncoding:4]);
            if (v87 != -1)
            {
              v88 = [v85 functionType];
              if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2872), v85))
              {
                __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v88 == 5) name:v79 device:a2 handle:v87 dylib:0];
                std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2872), v85, v161, &__dst);
              }
            }
          }

          else if ([v85 functionType] == 6 && !std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2872), v85))
          {
            v89 = *(v141 + 2 * v76);
            if (*(v89 + 25) == 1)
            {
              v90 = *(v89 + 32) & 0xFFFFFFF | 0x80000000;
              v91 = 1;
            }

            else
            {
              v91 = 0;
              v90 = v76;
            }

            __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v91 name:v79 device:a2 handle:v90 dylib:0];
            std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2872), v85, v161, &__dst);
            ++v76;
          }
        }

        v75 = [objb countByEnumeratingWithState:&v157 objects:&v164 count:16];
      }

      while (v75);
    }

    else
    {
      v76 = 0;
    }

    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v92 = [v133 privateFunctions];
    v93 = [v92 countByEnumeratingWithState:&v153 objects:&__dst count:16];
    if (v93)
    {
      v94 = *v154;
      do
      {
        for (n = 0; n != v93; ++n)
        {
          if (*v154 != v94)
          {
            objc_enumerationMutation(v92);
          }

          if ([*(*(&v153 + 1) + 8 * n) functionType] == 6)
          {
            v76 += [(atomic_ullong *)a2 requiresRaytracingEmulation]^ 1;
          }
        }

        v93 = [v92 countByEnumeratingWithState:&v153 objects:&__dst count:16];
      }

      while (v93);
    }

    v96 = [v133 binaryFunctions];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v97 = [v96 countByEnumeratingWithState:&v148 objects:v161 count:16];
    if (v97)
    {
      v98 = *v149;
      objc = v96;
      do
      {
        for (ii = 0; ii != v97; ++ii)
        {
          if (*v149 != v98)
          {
            objc_enumerationMutation(objc);
          }

          v100 = *(*(&v148 + 1) + 8 * ii);
          v152 = v100;
          v101 = [(_MTLFunctionHandle *)v100 name];
          if ([(AGXG18PFamilyFunctionHandle *)v100 vendorPrivate]&& ([(AGXG18PFamilyFunctionHandle *)v100 vendorPrivate], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2872), v100))
            {
              v108 = *(v141 + 2 * v76);
              if (*(v108 + 25) == 1)
              {
                v109 = *(v108 + 32) & 0xFFFFFFF | 0x80000000;
                v110 = 1;
              }

              else
              {
                v110 = 0;
                v109 = v76;
              }

              v147 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v110 name:v101 device:a2 handle:v109 dylib:0];
              std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2872, &v152, &v147);
            }
          }

          else
          {
            v102 = [(AGXG18PFamilyFunctionHandle *)v100 vendorPrivate];
            v103 = v102;
            if (v102)
            {
              v104 = *(v102 + 56);
              v105 = [(_MTLFunctionHandle *)v100 name];
              v106 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(v104 + 120, [(NSString *)v105 cStringUsingEncoding:4], *(*(v103 + 56) + 744));
              if (v106 != -1)
              {
                v107 = [(_MTLFunctionHandle *)v100 functionType];
                if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2872), v100))
                {
                  v147 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v107 == 5) name:v105 device:a2 handle:v106 dylib:v103];
                  std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2872, &v152, &v147);
                }
              }
            }
          }
        }

        v97 = [objc countByEnumeratingWithState:&v148 objects:v161 count:16];
      }

      while (v97);
    }

    if (v141)
    {
      v111 = v142;
      v112 = v141;
      if (v142 != v141)
      {
        do
        {
          v113 = *(v111 - 1);
          if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v113->__on_zero_shared)(v113);
            std::__shared_weak_count::__release_weak(v113);
          }

          v111 -= 16;
        }

        while (v111 != v141);
        v112 = v141;
      }

      v142 = v141;
      operator delete(v112);
    }
  }

  v114 = *a1;
  if (*a1)
  {
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v115 = *(a1 + 3432);
    v116 = *(a1 + 3440);
    if (v116 != v115)
    {
      if (((v116 - v115) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_244:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    AGX::constructVisibleFunctionHandles_impl<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::FragmentProgramVariant>(a2, v130, v114, a1 + 2752, (a1 + 2952), &v164);
  }

  if (v132 && [v132 explicitVisibilityGroupID] != -1)
  {
    *(a1 + 792) = [v132 explicitVisibilityGroupID];
    *(a1 + 796) = 1;
  }

  if (*(a1 + 796) == 1)
  {
    *(a1 + 816) = *(a1 + 816) & 0xFFFE0000 | *(a1 + 792) & 0x1FFFF;
    v117 = *(a1 + 804);
    if (!(v117 >> 30))
    {
      *(a1 + 804) = v117 & 0x1FFFFFFF;
    }
  }

  if (*a1 && (*(*a1 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v118 = *(a1 + 8);
  if (v118 && (*(v118 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v119 = *(a1 + 16);
  if (v119 && (*(v119 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v120 = *(a1 + 24);
  if (v120 && (*(v120 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v121 = *(a1 + 32);
  if (v121 && (*(v121 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(a1, v131);
  if (*(a1 + 789) == 1)
  {
    AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v164, (a2[106] + 11808), [v132 resourceIndex]);
    v122 = *(a1 + 1000);
    *(a1 + 1000) = v164;
    v164 = v122;
    v123 = *(a1 + 1008);
    v124 = v165;
    *(a1 + 1008) = v165;
    v165 = v123;
    v125 = *(a1 + 1016);
    *(a1 + 1016) = v166;
    LOBYTE(v166) = v125;
    if (v122 && (v125 & 1) == 0)
    {
      os_unfair_lock_lock(v123 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v165[174], v164, v164 + HIDWORD(v164) - 1);
      os_unfair_lock_unlock(v123 + 188);
      v124 = *(a1 + 1008);
    }

    v126 = *(a1 + 944);
    os_unfair_lock_lock(v124 + 188);
    v127 = *(a1 + 1008);
    v128 = *(a1 + 1000);
    os_unfair_lock_assert_owner(v127 + 188);
    *(*(*&v127[6 * v127[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *MEMORY[0x29EDC5638] + 24) + 8 * v128) = v126;
    os_unfair_lock_unlock(v124 + 188);
  }
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::finalize<MTLTileRenderPipelineDescriptor>(uint64_t a1, atomic_ullong *a2, NSObject *a3, void *a4)
{
  v93 = *MEMORY[0x29EDCA608];
  v7 = a2[106];
  *(a1 + 1024) = a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v8);
    AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 8), a1 + 1032);
  }

  if (*a1)
  {
    AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(*a1);
    AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*a1, a1 + 1344);
    v9 = *a1;
    if ((*(*a1 + 4066) & 1) == 0 && (*(v9 + 4065) & 1) == 0)
    {
      v10 = *(a1 + 804) & 0xFFDFFFFF | (((*(v9 + 3840) >> 21) & 1) << 21);
      *(a1 + 804) = v10;
      v11 = v10 & 0xFFBFFFFF | (((*(v9 + 3840) >> 22) & 1) << 22);
      *(a1 + 804) = v11;
      v12 = v11 & 0xFDFFFFFF | (((*(v9 + 3840) >> 25) & 1) << 25);
      *(a1 + 804) = v12;
      v13 = v12 & 0xFBFFFFFF | (((*(v9 + 3840) >> 26) & 1) << 26);
      *(a1 + 804) = v13;
      *(a1 + 804) = *(v9 + 3840) & 0xE0000000 | v13 & 0x1FFFFFFF;
      *(a1 + 816) = *(a1 + 816) & 0xFFFE0000 | *(v9 + 3844) & 0x1FFFF;
    }

    v14 = *(v9 + 3925);
    if ((v14 - 1) < 2 && (*(v7 + 16456) & 0x8000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (*(a1 + 808) >> 28)
    {
      LOBYTE(v14) = v15;
    }

    *(a1 + 808) = vorr_s8(vdup_n_s32((v14 & 3) << 22), (*(a1 + 808) & 0xFF3FFFFFFF3FFFFFLL));
  }

  v16 = *(a1 + 24);
  if (v16)
  {
    AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v16);
    AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 24), a1 + 1968);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v17);
    AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 32), a1 + 2280);
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v18);
    AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 16), a1 + 1656);
  }

  if ([a4 maxAccelerationStructureTraversalDepth])
  {
    *(a1 + 3172) = ([a4 maxAccelerationStructureTraversalDepth] + 7) & 0xFFFFFFF8;
    *(a1 + 3292) = ([a4 maxAccelerationStructureTraversalDepth] + 7) & 0xFFFFFFF8;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(a1);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTables(a1, a2);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParams(a1, v7);
  if ((*(a1 + 1257) & 1) != 0 || (*(a1 + 1569) & 1) != 0 || (*(a1 + 2193) & 1) != 0 || (*(a1 + 2505) & 1) != 0 || *(a1 + 1881))
  {
    atomic_fetch_or(a2 + 108, 0x1000uLL);
  }

  v70 = v7;
  if (*(a1 + 1252) || *(a1 + 1564) || *(a1 + 2188) || *(a1 + 2500) || *(a1 + 1876))
  {
    atomic_fetch_or(a2 + 108, 0x200000uLL);
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitLabelUpdateSignpost(a1, a3);
  v19 = [a4 linkedFunctions];
  v71 = *(a1 + 16);
  if (v71)
  {
    v20 = v19;
    v21 = *(a1 + 3456);
    v22 = *(a1 + 3464);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    prime = vcvtps_u32_f32(([objc_msgSend(v19 "binaryFunctions")] + objc_msgSend(objc_msgSend(v19, "functions"), "count")) / *(a1 + 2824));
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v24 = *(a1 + 2800);
    if (prime > *&v24)
    {
      goto LABEL_42;
    }

    if (prime < *&v24)
    {
      v25 = vcvtps_u32_f32(*(a1 + 2816) / *(a1 + 2824));
      if (*&v24 < 3uLL || (v26 = vcnt_s8(v24), v26.i16[0] = vaddlv_u8(v26), v26.u32[0] > 1uLL))
      {
        v25 = std::__next_prime(v25);
      }

      else
      {
        v27 = 1 << -__clz(v25 - 1);
        if (v25 >= 2)
        {
          v25 = v27;
        }
      }

      if (prime <= v25)
      {
        prime = v25;
      }

      if (prime < *&v24)
      {
LABEL_42:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 2792, prime);
      }
    }

    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v28 = [v20 functions];
    v29 = [v28 countByEnumeratingWithState:&v85 objects:v92 count:16];
    v69 = v20;
    if (v29)
    {
      obj = v28;
      v30 = 0;
      v31 = *v86;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v86 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v89[0] = *(*(&v85 + 1) + 8 * i);
          v33 = [v89[0] name];
          v34 = [v33 UTF8String];
          v35 = strlen(v34);
          if (v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v36 = v35;
          if (v35 >= 0x17)
          {
            operator new();
          }

          v91 = v35;
          if (v35)
          {
            memmove(&__dst, v34, v35);
          }

          *(&__dst + v36) = 0;
          v37 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::find<std::string>((a1 + 2992), &__dst);
          v38 = v37;
          if (v91 < 0)
          {
            operator delete(__dst);
            if (!v38)
            {
LABEL_69:
              *&v81 = [v33 UTF8String];
              std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__construct_node<char const*,objc_object  {objcproto11MTLFunction}&>(&__dst, a1 + 2992, &v81, v89);
            }
          }

          else if (!v37)
          {
            goto LABEL_69;
          }

          v39 = v89[0];
          if ([v89[0] functionType] == 6)
          {
            v40 = [(atomic_ullong *)a2 requiresRaytracingEmulation];
          }

          else
          {
            v40 = 0;
          }

          if (([v39 functionType] == 5) | v40 & 1)
          {
            VisibleFunctionOffset = VisibleFunctionsMap::getVisibleFunctionOffset(v71 + 481, [v33 cStringUsingEncoding:4]);
            if (VisibleFunctionOffset != -1)
            {
              v42 = [v39 functionType];
              if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2792), v39))
              {
                __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v42 == 5) name:v33 device:a2 handle:VisibleFunctionOffset dylib:0];
                std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2792), v39, v89, &__dst);
              }
            }
          }

          else if ([v39 functionType] == 6 && !std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2792), v39))
          {
            v43 = *(16 * v30);
            if (*(v43 + 25) == 1)
            {
              v44 = *(v43 + 32) & 0xFFFFFFF | 0x80000000;
              v45 = 1;
            }

            else
            {
              v45 = 0;
              v44 = v30;
            }

            __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v45 name:v33 device:a2 handle:v44 dylib:0];
            std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2792), v39, v89, &__dst);
            ++v30;
          }
        }

        v29 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
      }

      while (v29);
    }

    else
    {
      v30 = 0;
    }

    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v46 = [v69 privateFunctions];
    v47 = [v46 countByEnumeratingWithState:&v81 objects:&__dst count:16];
    if (v47)
    {
      v48 = *v82;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v82 != v48)
          {
            objc_enumerationMutation(v46);
          }

          if ([*(*(&v81 + 1) + 8 * j) functionType] == 6)
          {
            v30 += [(atomic_ullong *)a2 requiresRaytracingEmulation]^ 1;
          }
        }

        v47 = [v46 countByEnumeratingWithState:&v81 objects:&__dst count:16];
      }

      while (v47);
    }

    v50 = [v69 binaryFunctions];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v51 = [v50 countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v51)
    {
      v52 = *v77;
      obja = v50;
      do
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v77 != v52)
          {
            objc_enumerationMutation(obja);
          }

          v54 = *(*(&v76 + 1) + 8 * k);
          v80 = v54;
          v55 = [v54 name];
          if ([v54 vendorPrivate] && (objc_msgSend(v54, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2792), v54))
            {
              v62 = *(16 * v30);
              if (*(v62 + 25) == 1)
              {
                v63 = *(v62 + 32) & 0xFFFFFFF | 0x80000000;
                v64 = 1;
              }

              else
              {
                v64 = 0;
                v63 = v30;
              }

              v75 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v64 name:v55 device:a2 handle:v63 dylib:0];
              std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2792, &v80, &v75);
            }
          }

          else
          {
            v56 = [v54 vendorPrivate];
            v57 = v56;
            if (v56)
            {
              v58 = *(v56 + 56);
              v59 = [v54 name];
              v60 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(v58 + 120, [v59 cStringUsingEncoding:4], *(*(v57 + 56) + 744));
              if (v60 != -1)
              {
                v61 = [v54 functionType];
                if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2792), v54))
                {
                  v75 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v61 == 5) name:v59 device:a2 handle:v60 dylib:v57];
                  std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2792, &v80, &v75);
                }
              }
            }
          }
        }

        v51 = [obja countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v51);
    }
  }

  if (*a1 && (*(*a1 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v65 = *(a1 + 8);
  if (v65 && (*(v65 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v66 = *(a1 + 16);
  if (v66 && (*(v66 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v67 = *(a1 + 24);
  if (v67 && (*(v67 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v68 = *(a1 + 32);
  if (v68 && (*(v68 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(a1, v70);
}

void sub_29CF16B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::finalize<MTLRenderPipelineDescriptor>(uint64_t a1, atomic_ullong *a2, NSObject *a3, void *a4)
{
  v107 = *MEMORY[0x29EDCA608];
  v7 = a2[106];
  *(a1 + 1024) = a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v8);
    AGX::VertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 8), a1 + 1032);
  }

  if (*a1)
  {
    AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(*a1);
    AGX::FragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*a1, a1 + 1344);
    v9 = *a1;
    if ((*(*a1 + 4066) & 1) == 0 && (*(v9 + 4065) & 1) == 0)
    {
      v10 = *(a1 + 804) & 0xFFDFFFFF | (((*(v9 + 3840) >> 21) & 1) << 21);
      *(a1 + 804) = v10;
      v11 = v10 & 0xFFBFFFFF | (((*(v9 + 3840) >> 22) & 1) << 22);
      *(a1 + 804) = v11;
      v12 = v11 & 0xFDFFFFFF | (((*(v9 + 3840) >> 25) & 1) << 25);
      *(a1 + 804) = v12;
      v13 = v12 & 0xFBFFFFFF | (((*(v9 + 3840) >> 26) & 1) << 26);
      *(a1 + 804) = v13;
      *(a1 + 804) = *(v9 + 3840) & 0xE0000000 | v13 & 0x1FFFFFFF;
      *(a1 + 816) = *(a1 + 816) & 0xFFFE0000 | *(v9 + 3844) & 0x1FFFF;
    }

    v14 = *(v9 + 3925);
    if ((v14 - 1) < 2 && (*(v7 + 16456) & 0x8000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (*(a1 + 808) >> 28)
    {
      LOBYTE(v14) = v15;
    }

    *(a1 + 808) = vorr_s8(vdup_n_s32((v14 & 3) << 22), (*(a1 + 808) & 0xFF3FFFFFFF3FFFFFLL));
  }

  v16 = *(a1 + 24);
  if (v16)
  {
    AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v16);
    AGX::ObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 24), a1 + 1968);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v17);
    AGX::MeshProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 32), a1 + 2280);
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::finalize(v18);
    AGX::TileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::updateWithRuntimeState(*(a1 + 16), a1 + 1656);
  }

  if ([a4 maxAccelerationStructureTraversalDepth])
  {
    *(a1 + 3172) = ([a4 maxAccelerationStructureTraversalDepth] + 7) & 0xFFFFFFF8;
    *(a1 + 3292) = ([a4 maxAccelerationStructureTraversalDepth] + 7) & 0xFFFFFFF8;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(a1);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTables(a1, a2);
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParams(a1, v7);
  if ((*(a1 + 1257) & 1) != 0 || (*(a1 + 1569) & 1) != 0 || (*(a1 + 2193) & 1) != 0 || (*(a1 + 2505) & 1) != 0 || *(a1 + 1881))
  {
    atomic_fetch_or(a2 + 108, 0x1000uLL);
  }

  v82 = v7;
  if (*(a1 + 1252) || *(a1 + 1564) || *(a1 + 2188) || *(a1 + 2500) || *(a1 + 1876))
  {
    atomic_fetch_or(a2 + 108, 0x200000uLL);
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitLabelUpdateSignpost(a1, a3);
  v19 = [a4 vertexLinkedFunctions];
  v81 = [a4 fragmentLinkedFunctions];
  v83 = *(a1 + 8);
  if (v83)
  {
    v20 = *(a1 + 3408);
    v21 = *(a1 + 3416);
    if (v21 != v20)
    {
      if (((v21 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_147;
    }

    v80 = a4;
    prime = vcvtps_u32_f32(([objc_msgSend(v19 "binaryFunctions")] + objc_msgSend(objc_msgSend(v19, "functions"), "count")) / *(a1 + 2744));
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v23 = *(a1 + 2720);
    if (prime > *&v23)
    {
      goto LABEL_42;
    }

    if (prime < *&v23)
    {
      v24 = vcvtps_u32_f32(*(a1 + 2736) / *(a1 + 2744));
      if (*&v23 < 3uLL || (v25 = vcnt_s8(v23), v25.i16[0] = vaddlv_u8(v25), v25.u32[0] > 1uLL))
      {
        v24 = std::__next_prime(v24);
      }

      else
      {
        v26 = 1 << -__clz(v24 - 1);
        if (v24 >= 2)
        {
          v24 = v26;
        }
      }

      if (prime <= v24)
      {
        prime = v24;
      }

      if (prime < *&v23)
      {
LABEL_42:
        std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 2712, prime);
      }
    }

    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v27 = [v19 functions];
    v28 = [v27 countByEnumeratingWithState:&v97 objects:&v104 count:16];
    if (v28)
    {
      obj = v27;
      v29 = 0;
      v30 = *v98;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v98 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v101[0] = *(*(&v97 + 1) + 8 * i);
          v32 = [v101[0] name];
          v33 = [v32 UTF8String];
          v34 = strlen(v33);
          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v35 = v34;
          if (v34 >= 0x17)
          {
            operator new();
          }

          v103 = v34;
          if (v34)
          {
            memmove(&__dst, v33, v34);
          }

          *(&__dst + v35) = 0;
          v36 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::find<std::string>((a1 + 2912), &__dst);
          v37 = v36;
          if (v103 < 0)
          {
            operator delete(__dst);
            if (!v37)
            {
LABEL_69:
              *&v93 = [v32 UTF8String];
              std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__construct_node<char const*,objc_object  {objcproto11MTLFunction}&>(&__dst, a1 + 2912, &v93, v101);
            }
          }

          else if (!v36)
          {
            goto LABEL_69;
          }

          v38 = v101[0];
          if ([v101[0] functionType] == 6)
          {
            v39 = [(atomic_ullong *)a2 requiresRaytracingEmulation];
          }

          else
          {
            v39 = 0;
          }

          if (([v38 functionType] == 5) | v39 & 1)
          {
            VisibleFunctionOffset = VisibleFunctionsMap::getVisibleFunctionOffset(v83 + 534, [v32 cStringUsingEncoding:4]);
            if (VisibleFunctionOffset != -1)
            {
              v41 = [v38 functionType];
              if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2712), v38))
              {
                __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v41 == 5) name:v32 device:a2 handle:VisibleFunctionOffset dylib:0];
                std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2712), v38, v101, &__dst);
              }
            }
          }

          else if ([v38 functionType] == 6 && !std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2712), v38))
          {
            v42 = *(16 * v29);
            if (*(v42 + 25) == 1)
            {
              v43 = *(v42 + 32) & 0xFFFFFFF | 0x80000000;
              v44 = 1;
            }

            else
            {
              v44 = 0;
              v43 = v29;
            }

            __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v44 name:v32 device:a2 handle:v43 dylib:0];
            std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>((a1 + 2712), v38, v101, &__dst);
            ++v29;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v97 objects:&v104 count:16];
      }

      while (v28);
    }

    else
    {
      v29 = 0;
    }

    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v45 = [v19 privateFunctions];
    v46 = [v45 countByEnumeratingWithState:&v93 objects:&__dst count:16];
    if (v46)
    {
      v47 = *v94;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v94 != v47)
          {
            objc_enumerationMutation(v45);
          }

          if ([*(*(&v93 + 1) + 8 * j) functionType] == 6)
          {
            v29 += [(atomic_ullong *)a2 requiresRaytracingEmulation]^ 1;
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v93 objects:&__dst count:16];
      }

      while (v46);
    }

    v49 = [v19 binaryFunctions];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v88 objects:v101 count:16];
    if (v50)
    {
      v51 = *v89;
      obja = v49;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v89 != v51)
          {
            objc_enumerationMutation(obja);
          }

          v53 = *(*(&v88 + 1) + 8 * k);
          v92 = v53;
          v54 = [v53 name];
          if ([v53 vendorPrivate] && (objc_msgSend(v53, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2712), v53))
            {
              v61 = *(16 * v29);
              if (*(v61 + 25) == 1)
              {
                v62 = *(v61 + 32) & 0xFFFFFFF | 0x80000000;
                v63 = 1;
              }

              else
              {
                v63 = 0;
                v62 = v29;
              }

              v87 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v63 name:v54 device:a2 handle:v62 dylib:0];
              std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2712, &v92, &v87);
            }
          }

          else
          {
            v55 = [v53 vendorPrivate];
            v56 = v55;
            if (v55)
            {
              v57 = *(v55 + 56);
              v58 = [v53 name];
              v59 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(v57 + 120, [v58 cStringUsingEncoding:4], *(*(v56 + 56) + 744));
              if (v59 != -1)
              {
                v60 = [v53 functionType];
                if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>((a1 + 2712), v53))
                {
                  v87 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v60 == 5) name:v58 device:a2 handle:v59 dylib:v56];
                  std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a1 + 2712, &v92, &v87);
                }
              }
            }
          }
        }

        v50 = [obja countByEnumeratingWithState:&v88 objects:v101 count:16];
      }

      while (v50);
    }

    a4 = v80;
  }

  v64 = *a1;
  if (*a1)
  {
    v65 = a4;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v66 = *(a1 + 3432);
    v67 = *(a1 + 3440);
    if (v67 != v66)
    {
      if (((v67 - v66) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_147:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    AGX::constructVisibleFunctionHandles_impl<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::FragmentProgramVariant>(a2, v81, v64, a1 + 2752, (a1 + 2952), &v104);
    a4 = v65;
  }

  if (a4 && [a4 explicitVisibilityGroupID] != -1)
  {
    *(a1 + 792) = [a4 explicitVisibilityGroupID];
    *(a1 + 796) = 1;
  }

  if (*(a1 + 796) == 1)
  {
    *(a1 + 816) = *(a1 + 816) & 0xFFFE0000 | *(a1 + 792) & 0x1FFFF;
    v68 = *(a1 + 804);
    if (!(v68 >> 30))
    {
      *(a1 + 804) = v68 & 0x1FFFFFFF;
    }
  }

  if (*a1 && (*(*a1 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v69 = *(a1 + 8);
  if (v69 && (*(v69 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v70 = *(a1 + 16);
  if (v70 && (*(v70 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v71 = *(a1 + 24);
  if (v71 && (*(v71 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v72 = *(a1 + 32);
  if (v72 && (*(v72 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(a1, v82);
  if (*(a1 + 789) == 1)
  {
    AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v104, (a2[106] + 11808), [a4 resourceIndex]);
    v73 = *(a1 + 1000);
    *(a1 + 1000) = v104;
    v104 = v73;
    v74 = *(a1 + 1008);
    v75 = v105;
    *(a1 + 1008) = v105;
    v105 = v74;
    v76 = *(a1 + 1016);
    *(a1 + 1016) = v106;
    LOBYTE(v106) = v76;
    if (v73 && (v76 & 1) == 0)
    {
      os_unfair_lock_lock(v74 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v105[174], v104, v104 + HIDWORD(v104) - 1);
      os_unfair_lock_unlock(v74 + 188);
      v75 = *(a1 + 1008);
    }

    v77 = *(a1 + 944);
    os_unfair_lock_lock(v75 + 188);
    v78 = *(a1 + 1008);
    v79 = *(a1 + 1000);
    os_unfair_lock_assert_owner(v78 + 188);
    *(*(*&v78[6 * v78[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + *MEMORY[0x29EDC5638] + 24) + 8 * v79) = v77;
    os_unfair_lock_unlock(v75 + 188);
  }
}

double AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(unsigned int *a1)
{
  v1 = 0;
  v57 = a1 + 258;
  v58 = a1 + 852;
  do
  {
    v59 = v1;
    v2 = &v58[6 * v1];
    v3 = *v2;
    v60 = *(v2 + 1);
    if (*v2 != v60)
    {
      v4 = &v57[78 * v59];
      do
      {
        v6 = *v3;
        if (*(*v3 + 24) != 1)
        {
          v29 = *&v6->_os_unfair_lock_opaque;
          v30 = *&v6[2]._os_unfair_lock_opaque;
          if (*&v6->_os_unfair_lock_opaque != v30)
          {
            v31 = *(v4 + 27);
            v32 = v4[25];
            v33 = v4[26];
            do
            {
              v34 = *(v29 + 140);
              if (v32 <= *(v29 + 132))
              {
                v32 = *(v29 + 132);
              }

              v4[25] = v32;
              v35 = BYTE2(v31);
              if (BYTE2(v31) <= BYTE2(v34))
              {
                v35 = BYTE2(v34);
              }

              v36 = v31;
              if (v31 <= v34)
              {
                v36 = v34;
              }

              if (v36 >= v33)
              {
                v36 = v33;
              }

              v37 = v36 | (v35 << 16);
              v38 = WORD2(v31);
              if (WORD2(v31) <= WORD2(v34))
              {
                v38 = WORD2(v34);
              }

              v39 = (-v32 & (v32 + v38 - 1));
              v40 = HIWORD(v34);
              if (HIWORD(v31) > v40)
              {
                v40 = HIWORD(v31);
              }

              v41 = v31 & 0xFF000000 | (v40 << 48) | v37 | (v39 << 32);
              *(v4 + 27) = v41;
              if (v41 != v31)
              {
                SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd((v4 + 27), 4);
                __p = (v41 & 0xFFFFFFFF00FFFFFFLL | 0x1000000);
                v43 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(&__p, 12);
                v44 = (16773120 - SectionEnd) / (v43 - SectionEnd);
                if (v44 >= 0x60)
                {
                  v45 = 96;
                }

                else
                {
                  v45 = (16773120 - SectionEnd) / (v43 - SectionEnd);
                }

                v46 = v45 << 24;
                if (v44 >= 0x20)
                {
                  v47 = v46;
                }

                else
                {
                  v47 = 0;
                }

                if (v43 == SectionEnd)
                {
                  v47 = 1610612736;
                }

                v31 = v41 & 0xFFFFFFFF00FFFFFFLL | v47;
                *(v4 + 27) = v31;
                *(v4 + 29) = 0u;
                *(v4 + 33) = 0u;
                *(v4 + 37) = 0u;
                *&v48 = -1;
                *(&v48 + 1) = -1;
                *(v4 + 41) = v48;
                *(v4 + 45) = v48;
                *(v4 + 49) = v48;
                *(v4 + 53) = -1;
              }

              v29 += 344;
            }

            while (v29 != v30);
          }

          goto LABEL_7;
        }

        AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::snapshotRuntimeStates(&__p, v6);
        v8 = __p;
        v7 = v62;
        if (__p == v62)
        {
          v5 = __p;
          if (!__p)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v9 = *(v4 + 27);
          v10 = __p;
          v11 = v4[25];
          v12 = v4[26];
          do
          {
            if (v11 <= *(v10 + 25))
            {
              v11 = *(v10 + 25);
            }

            v4[25] = v11;
            v13 = *(v10 + 108);
            v14 = BYTE2(v9);
            if (BYTE2(v9) <= BYTE2(v13))
            {
              v14 = BYTE2(v13);
            }

            v15 = v9;
            if (v9 <= *(v10 + 108))
            {
              v15 = *(v10 + 108);
            }

            if (v15 >= v12)
            {
              v15 = v12;
            }

            v16 = v15 | (v14 << 16);
            v17 = WORD2(v9);
            if (WORD2(v9) <= WORD2(v13))
            {
              v17 = WORD2(*(v10 + 108));
            }

            v18 = (-v11 & (v11 + v17 - 1));
            v19 = HIWORD(v13);
            if (HIWORD(v9) > v19)
            {
              v19 = HIWORD(v9);
            }

            v20 = v9 & 0xFF000000 | (v19 << 48) | v16 | (v18 << 32);
            *(v4 + 27) = v20;
            if (v20 != v9)
            {
              v21 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd((v4 + 27), 4);
              v22 = v20 & 0xFFFFFFFF00FFFFFFLL;
              v63 = v22 | 0x1000000;
              v23 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(&v63, 12);
              v24 = (16773120 - v21) / (v23 - v21);
              if (v24 >= 0x60)
              {
                v25 = 96;
              }

              else
              {
                v25 = (16773120 - v21) / (v23 - v21);
              }

              v26 = v25 << 24;
              if (v24 >= 0x20)
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              if (v23 == v21)
              {
                v27 = 1610612736;
              }

              v9 = v22 | v27;
              *(v4 + 27) = v9;
              *(v4 + 29) = 0u;
              *(v4 + 33) = 0u;
              *(v4 + 37) = 0u;
              *&v28 = -1;
              *(&v28 + 1) = -1;
              *(v4 + 41) = v28;
              *(v4 + 45) = v28;
              *(v4 + 49) = v28;
              *(v4 + 53) = -1;
            }

            v10 += 39;
          }

          while (v10 != v7);
          if (!v8)
          {
            goto LABEL_7;
          }

          v5 = v8;
          if (v8 != v7)
          {
            v49 = v7 - 38;
            while (1)
            {
              v51 = v49[4];
              if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v51->__on_zero_shared)(v51);
                std::__shared_weak_count::__release_weak(v51);
                v52 = v49[2];
                if (v52)
                {
LABEL_66:
                  if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v52->__on_zero_shared)(v52);
                    std::__shared_weak_count::__release_weak(v52);
                  }
                }
              }

              else
              {
                v52 = v49[2];
                if (v52)
                {
                  goto LABEL_66;
                }
              }

              v53 = *v49;
              if (*v49 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v53->__on_zero_shared)(v53);
                std::__shared_weak_count::__release_weak(v53);
              }

              v50 = v49 - 1;
              v49 -= 39;
              if (v50 == v8)
              {
                v5 = __p;
                break;
              }
            }
          }
        }

        v62 = v8;
        operator delete(v5);
LABEL_7:
        v3 += 2;
      }

      while (v3 != v60);
    }

    v1 = v59 + 1;
  }

  while (v59 != 4);
  v54 = a1;
  AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge(a1 + 792, a1 + 283);
  AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge(v54 + 792, v54 + 517);
  AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge(v54 + 792, v54 + 595);
  AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge(v54 + 822, v54 + 361);
  return AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge(v54 + 822, v54 + 439);
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTables(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    LODWORD(v2) = (*(v2 + 2408) >> 1) & 1;
  }

  v3 = *a1;
  if (*a1)
  {
    LODWORD(v3) = *(v3 + 2408) & 2;
  }

  v4 = a1[3];
  if (v4)
  {
    LODWORD(v4) = (4 * *(v4 + 2408)) & 8;
  }

  v5 = v3 | v4;
  v6 = a1[4];
  if (v6)
  {
    LODWORD(v6) = (8 * *(v6 + 2408)) & 0x10;
  }

  v7 = v5 | v6;
  v8 = a1[2];
  if (v8)
  {
    LODWORD(v8) = (2 * *(v8 + 2408)) & 4;
  }

  *(a1 + 914) = v7 | v8 | v2;
  if (v2)
  {
    operator new();
  }

  if ((a1[457] & 2) != 0)
  {
    operator new();
  }

  if ((a1[457] & 4) != 0)
  {
    operator new();
  }

  if ((a1[457] & 8) != 0)
  {
    operator new();
  }

  if ((a1[457] & 0x10) != 0)
  {
    operator new();
  }
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitLabelUpdateSignpost(uint64_t *a1, NSObject *a2)
{
  v66 = *MEMORY[0x29EDCA608];
  if (![a2 label])
  {
    return;
  }

  v4 = a1[1];
  if (!v4)
  {
    v6 = 0xFFFFFFFFLL;
    v7 = "";
    v5 = -1;
    v8 = *a1;
    if (*a1)
    {
      goto LABEL_6;
    }

LABEL_18:
    v10 = 0xFFFFFFFFLL;
    v11 = "";
    v9 = -1;
    v12 = a1[2];
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_19:
    v14 = 0xFFFFFFFFLL;
    v15 = "";
    v13 = -1;
    v16 = a1[4];
    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v5 = *(v4 + 2800);
  v6 = *(v4 + 1416);
  v7 = (v4 + 2888);
  if (*(v4 + 2911) < 0)
  {
    v7 = *v7;
  }

  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v9 = *(v8 + 2800);
  v10 = *(v8 + 1416);
  v11 = (v8 + 2888);
  if (*(v8 + 2911) < 0)
  {
    v11 = *v11;
  }

  v12 = a1[2];
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  v13 = *(v12 + 2800);
  v14 = *(v12 + 1416);
  v15 = (v12 + 2888);
  if (*(v12 + 2911) < 0)
  {
    v15 = *v15;
  }

  v16 = a1[4];
  if (v16)
  {
LABEL_12:
    v17 = *(v16 + 2800);
    v18 = *(v16 + 1416);
    v19 = (v16 + 2888);
    if (*(v16 + 2911) < 0)
    {
      v19 = *v19;
    }

    v20 = a1[3];
    if (v20)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_20:
  v18 = 0xFFFFFFFFLL;
  v19 = "";
  v17 = -1;
  v20 = a1[3];
  if (v20)
  {
LABEL_15:
    v21 = *(v20 + 2800);
    v22 = *(v20 + 1416);
    v23 = (v20 + 2888);
    if (*(v20 + 2911) < 0)
    {
      v23 = *v23;
    }

    goto LABEL_22;
  }

LABEL_21:
  v23 = "";
  v21 = -1;
  v22 = 0xFFFFFFFFLL;
LABEL_22:
  {
    {
      log = a2;
      v32 = v13;
      v30 = v15;
      v31 = v14;
      v29 = v9;
      v27 = v11;
      v28 = v10;
      v25 = v19;
      v26 = v18;
      {
        *buf = 136450050;
        v35 = [-[NSObject label](log "label")];
        v36 = 1026;
        v37 = v5;
        v38 = 1026;
        v39 = v29;
        v40 = 1026;
        v41 = v32;
        v42 = 1026;
        v43 = v17;
        v44 = 1026;
        v45 = v21;
        v46 = 2050;
        v47 = v6;
        v48 = 2050;
        v49 = v28;
        v50 = 2050;
        v51 = v31;
        v52 = 2050;
        v53 = v26;
        v54 = 2050;
        v55 = v22;
        v56 = 2082;
        v57 = v7;
        v58 = 2082;
        v59 = v27;
        v60 = 2082;
        v61 = v30;
        v62 = 2082;
        v63 = v25;
        v64 = 2082;
        v65 = v23;
        _os_signpost_emit_with_name_impl(&dword_29CA13000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RenderPipelineLabel", "Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  VertexID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  FragmentID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  TileID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  MeshID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  ObjectID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t  VertexUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  FragmentUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  TileUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  MeshUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  ObjectUniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  VertexRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  FragmentRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  TileRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  MeshRequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  ObjectRequestHash=%{public,signpost.description:attribute}s ", buf, 0x8Eu);
      }
    }
  }
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(uint64_t a1, __int32 **a2)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = a1 + 3408 + 24 * i;
    if (*v3 != *(v3 + 8))
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v80, a2, 0);
      v83 = 0;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      v5 = *v3;
      v4 = *(v3 + 8);
      v77 = v4;
      if (v5 == v4)
      {
LABEL_5:
        operator new();
      }

      while (1)
      {
        v7 = *v5;
        if (LOBYTE((*v5)[6]._os_unfair_lock_opaque) != 1)
        {
          v47 = *&v7->_os_unfair_lock_opaque;
          v48 = *&v7[2]._os_unfair_lock_opaque;
          if (*&v7->_os_unfair_lock_opaque != v48)
          {
            v49 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v84 + 7008 + 16 * (*(v84 + 7008) == 0)))))));
            v50 = vadd_s32(vdup_lane_s32(v49, 1), v49).u32[0];
            v52 = v80;
            v51 = v81;
            v53 = v82;
            v54 = v83;
            do
            {
              v55 = 32 * (v47[30] + v47[21]);
              v56 = 32 * v47[24];
              v57 = v55 + 21375;
              if (v55 + 21375 < 0)
              {
                v57 = v55 + 25470;
              }

              v58 = v57 >> 12;
              v59 = (v55 + 82815) / 0x10000;
              v60 = v56 + 4095;
              if (v56 < -4095)
              {
                v60 = v56 + 8190;
              }

              v61 = v60 >> 12;
              v62 = v56 + 0xFFFF;
              v24 = v56 < -65535;
              v63 = v56 + 131070;
              if (!v24)
              {
                v63 = v62;
              }

              v64 = 32 * *(*v47 + 1284);
              v65 = v63 >> 16;
              v66 = 32 * *(*v47 + 1312);
              v67 = v64 + 21375;
              if (v64 + 21375 < 0)
              {
                v67 = v64 + 25470;
              }

              v68 = (v64 + 82815) / 0x10000 + (v67 >> 12);
              v69 = v66 + 4095;
              if (v66 < -4095)
              {
                v69 = v66 + 8190;
              }

              v70 = v66 + 0xFFFF;
              v24 = v66 < -65535;
              v71 = v66 + 131070;
              v72 = v59 + v58 + v65 + v61;
              if (!v24)
              {
                v71 = v70;
              }

              v73 = v68 + (v71 >> 16) + (v69 >> 12);
              v74 = (v61 + v58) * 24 * v50 + (v65 + v59) * 10 * v50;
              v52 = vmaxq_s32(v52, 0);
              v75.i64[0] = 0;
              v75.i32[2] = 0;
              if ((v50 * v73) > v74)
              {
                v74 = v50 * v73;
              }

              v75.i32[3] = v74;
              v76.i32[0] = 0;
              v76.i32[1] = v73;
              v51 = vmaxq_s32(v51, v75);
              v76.i64[1] = v72;
              v53 = vmaxq_s32(v53, v76);
              v54 &= ~(v54 >> 31);
              v47 += 86;
            }

            while (v47 != v48);
            v80 = v52;
            v81 = v51;
            v82 = v53;
            v83 = v54;
          }

          goto LABEL_9;
        }

        AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::snapshotRuntimeStates(&v78, v7);
        v8 = v78;
        if (v78 == v79)
        {
          v6 = v78;
          if (!v78)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v9 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v84 + 7008 + 16 * (*(v84 + 7008) == 0)))))));
          v10 = *&(*v5)->_os_unfair_lock_opaque;
          v11 = vadd_s32(vdup_lane_s32(v9, 1), v9).u32[0];
          v13 = v80;
          v12 = v81;
          v14 = v82;
          v15 = v83;
          v16 = v78;
          do
          {
            v17 = 32 * (v16[22] + v16[13]);
            v18 = 32 * v16[16];
            v19 = v17 + 21375;
            if (v17 + 21375 < 0)
            {
              v19 = v17 + 25470;
            }

            v20 = v19 >> 12;
            v21 = (v17 + 82815) / 0x10000;
            v22 = v18 + 4095;
            if (v18 < -4095)
            {
              v22 = v18 + 8190;
            }

            v23 = v22 >> 12;
            v25 = v18 + 0xFFFF;
            v24 = v18 < -65535;
            v26 = v18 + 131070;
            if (!v24)
            {
              v26 = v25;
            }

            v27 = 32 * *(*v10 + 1284);
            v28 = 32 * *(*v10 + 1312);
            v29 = v26 >> 16;
            v30 = v27 + 21375;
            v31 = v27 + 25470;
            v32 = v27 + 82815;
            if (v30 < 0)
            {
              v30 = v31;
            }

            v33 = v32 / 0x10000 + (v30 >> 12);
            if (v28 >= -4095)
            {
              v34 = v28 + 4095;
            }

            else
            {
              v34 = v28 + 8190;
            }

            v35 = v28 + 0xFFFF;
            v24 = v28 < -65535;
            v36 = v28 + 131070;
            if (!v24)
            {
              v36 = v35;
            }

            v37 = v21 + v20 + v29 + v23;
            v38 = v33 + (v36 >> 16) + (v34 >> 12);
            v39 = (v23 + v20) * 24 * v11 + (v29 + v21) * 10 * v11;
            if ((v11 * v38) > v39)
            {
              v39 = v11 * v38;
            }

            v40.i64[0] = 0;
            v40.i32[2] = 0;
            v40.i32[3] = v39;
            v41.i32[0] = 0;
            v41.i32[1] = v38;
            v41.i64[1] = v37;
            v12 = vmaxq_s32(v12, v40);
            v13 = vmaxq_s32(v13, 0);
            v14 = vmaxq_s32(v14, v41);
            v15 &= ~(v15 >> 31);
            v16 += 78;
            v10 += 344;
          }

          while (v16 != v79);
          v80 = v13;
          v81 = v12;
          v82 = v14;
          v83 = v15;
          if (!v78)
          {
            goto LABEL_8;
          }

          v6 = v78;
          if (v78 != v79)
          {
            v42 = (v79 - 76);
            while (1)
            {
              v44 = v42[4];
              if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v44->__on_zero_shared)(v44);
                std::__shared_weak_count::__release_weak(v44);
                v45 = v42[2];
                if (v45)
                {
LABEL_36:
                  if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v45->__on_zero_shared)(v45);
                    std::__shared_weak_count::__release_weak(v45);
                  }
                }
              }

              else
              {
                v45 = v42[2];
                if (v45)
                {
                  goto LABEL_36;
                }
              }

              v46 = *v42;
              if (*v42)
              {
                if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v46->__on_zero_shared)(v46);
                  std::__shared_weak_count::__release_weak(v46);
                }
              }

              v43 = v42 - 1;
              v42 -= 39;
              if (v43 == v8)
              {
                v4 = v77;
                v6 = v78;
                break;
              }
            }
          }
        }

        v79 = v8;
        operator delete(v6);
LABEL_8:
        v7 = *v5;
LABEL_9:
        AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchEslPrograms(v7);
        v5 += 2;
        if (v5 == v4)
        {
          goto LABEL_5;
        }
      }
    }
  }
}

void *AGX::constructVisibleFunctionHandles_impl<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::FragmentProgramVariant>(void *a1, void *a2, int8x8_t *a3, uint64_t a4, float *a5, void *a6)
{
  v76 = *MEMORY[0x29EDCA608];
  prime = vcvtps_u32_f32(([objc_msgSend(a2 "binaryFunctions")] + objc_msgSend(objc_msgSend(a2, "functions"), "count")) / *(a4 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v9 = *(a4 + 8);
  if (prime > *&v9)
  {
    goto LABEL_6;
  }

  if (prime < *&v9)
  {
    v10 = vcvtps_u32_f32(*(a4 + 24) / *(a4 + 32));
    if (*&v9 < 3uLL || (v11 = vcnt_s8(v9), v11.i16[0] = vaddlv_u8(v11), v11.u32[0] > 1uLL))
    {
      v13 = prime;
      v10 = std::__next_prime(v10);
      prime = v13;
    }

    else
    {
      v12 = 1 << -__clz(v10 - 1);
      if (v10 >= 2)
      {
        v10 = v12;
      }
    }

    if (prime <= v10)
    {
      prime = v10;
    }

    if (prime < *&v9)
    {
LABEL_6:
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a4, prime);
    }
  }

  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [a2 functions];
  v14 = 0;
  v15 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v15)
  {
    v16 = *v67;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v67 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v70 = *(*(&v66 + 1) + 8 * i);
        v18 = [(_MTLFunctionHandle *)v70 name];
        v19 = [(NSString *)v18 UTF8String];
        v20 = strlen(v19);
        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v21 = v20;
        if (v20 >= 0x17)
        {
          operator new();
        }

        v72 = v20;
        if (v20)
        {
          memmove(&__dst, v19, v20);
        }

        *(&__dst + v21) = 0;
        v22 = std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::find<std::string>(a5, &__dst);
        v23 = v22;
        if (v72 < 0)
        {
          operator delete(__dst);
          if (!v23)
          {
LABEL_33:
            v65 = [(NSString *)v18 UTF8String];
            std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__construct_node<char const*,objc_object  {objcproto11MTLFunction}&>(&__dst, a5, &v65, &v70);
          }
        }

        else if (!v22)
        {
          goto LABEL_33;
        }

        v24 = v70;
        if ([(_MTLFunctionHandle *)v70 functionType]== 6)
        {
          v25 = [a1 requiresRaytracingEmulation];
        }

        else
        {
          v25 = 0;
        }

        if (([(_MTLFunctionHandle *)v24 functionType]== 5) | v25 & 1)
        {
          VisibleFunctionOffset = VisibleFunctionsMap::getVisibleFunctionOffset(a3 + 493, [(NSString *)v18 cStringUsingEncoding:4]);
          if (VisibleFunctionOffset != -1)
          {
            v27 = [(_MTLFunctionHandle *)v24 functionType];
            if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(a4, v24))
            {
              __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v27 == 5) name:v18 device:a1 handle:VisibleFunctionOffset dylib:0];
              std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>(a4, v24, &v70, &__dst);
            }
          }
        }

        else if ([(_MTLFunctionHandle *)v24 functionType]== 6 && !std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(a4, v24))
        {
          v28 = *(*a6 + 16 * v14);
          if (*(v28 + 25) == 1)
          {
            v29 = *(v28 + 32) & 0xFFFFFFF | 0x80000000;
            v30 = 1;
          }

          else
          {
            v30 = 0;
            v29 = v14;
          }

          __dst = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v30 name:v18 device:a1 handle:v29 dylib:0];
          std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>(a4, v24, &v70, &__dst);
          ++v14;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v15);
  }

  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v31 = [v51 privateFunctions];
  v32 = [v31 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v32)
  {
    v33 = *v62;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v62 != v33)
        {
          objc_enumerationMutation(v31);
        }

        if ([*(*(&v61 + 1) + 8 * j) functionType] == 6)
        {
          v14 += [a1 requiresRaytracingEmulation] ^ 1;
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v32);
  }

  v35 = [v51 binaryFunctions];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  result = [v35 countByEnumeratingWithState:&v57 objects:v73 count:16];
  v37 = result;
  if (result)
  {
    v38 = *v58;
    do
    {
      v39 = 0;
      do
      {
        if (*v58 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v57 + 1) + 8 * v39);
        __dst = v40;
        v41 = [(_MTLFunctionHandle *)v40 name];
        if ([(AGXG18PFamilyFunctionHandle *)v40 vendorPrivate]&& ([(AGXG18PFamilyFunctionHandle *)v40 vendorPrivate], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(a4, v40))
          {
            v48 = *(*a6 + 16 * v14);
            if (*(v48 + 25) == 1)
            {
              v49 = *(v48 + 32) & 0xFFFFFFF | 0x80000000;
              v50 = 1;
            }

            else
            {
              v50 = 0;
              v49 = v14;
            }

            v70 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:v50 name:v41 device:a1 handle:v49 dylib:0];
            std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a4, &__dst, &v70);
          }
        }

        else
        {
          v42 = [(AGXG18PFamilyFunctionHandle *)v40 vendorPrivate];
          v43 = v42;
          if (v42)
          {
            v44 = *(v42 + 56);
            v45 = [(_MTLFunctionHandle *)v40 name];
            v46 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(v44 + 120, [(NSString *)v45 cStringUsingEncoding:4], *(*(v43 + 56) + 744));
            if (v46 != -1)
            {
              v47 = [(_MTLFunctionHandle *)v40 functionType];
              if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(a4, v40))
              {
                v70 = [[AGXG18PFamilyFunctionHandle alloc] initWithHandleType:2 * (v47 == 5) name:v45 device:a1 handle:v46 dylib:v43];
                std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>(a4, &__dst, &v70);
              }
            }
          }
        }

        v39 = v39 + 1;
      }

      while (v37 != v39);
      result = [v35 countByEnumeratingWithState:&v57 objects:v73 count:16];
      v37 = result;
    }

    while (result);
  }

  return result;
}

void *AGX::SpecializableRenderPipelineState::reconstructColorAttachments(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = (a1 + 144);
  do
  {
    v14 = [a2 objectAtIndexedSubscript:v5];
    result = [v14 setPixelFormat:*(a1 + 8 * v5)];
    if (*(a1 + 8 * v5))
    {
      v15 = *v6;
      if (v15 == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = v15 == 1;
      }

      [v14 setBlendingState:v16];
      if (*v6 - 1 <= 1)
      {
        v17 = v6[1];
        if (v17 > 0x13)
        {
          v18 = 0;
        }

        else
        {
          v18 = qword_29D2F7598[v17];
        }

        [v14 setSourceRGBBlendFactor:v18];
        v19 = v6[2];
        if (v19 > 0x13)
        {
          v20 = 0;
        }

        else
        {
          v20 = qword_29D2F7598[v19];
        }

        [v14 setDestinationRGBBlendFactor:v20];
        v21 = v6[3];
        if (v21 > 0x13)
        {
          v22 = 0;
        }

        else
        {
          v22 = qword_29D2F7598[v21];
        }

        [v14 setSourceAlphaBlendFactor:v22];
        v23 = v6[4];
        if (v23 > 0x13)
        {
          v24 = 0;
        }

        else
        {
          v24 = qword_29D2F7598[v23];
        }

        [v14 setDestinationAlphaBlendFactor:v24];
        v25 = v6[5];
        if (v25 > 5)
        {
          v26 = 0;
        }

        else
        {
          v26 = qword_29D2F7638[v25];
        }

        [v14 setRgbBlendOperation:v26];
        v27 = v6[6];
        if (v27 <= 5)
        {
          v7 = qword_29D2F7638[v27];
        }

        else
        {
          v7 = 0;
        }

        [v14 setAlphaBlendOperation:v7];
      }

      v8 = *(a1 + 372);
      v9 = ((1 << v5) & v8) == 0;
      if (((1 << v5) & v8) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8 >> v4;
      }

      v11 = __rbit32(v10) >> 28;
      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = 16;
      }

      result = [v14 setWriteMask:v12];
    }

    ++v5;
    v4 += 4;
    v6 += 7;
  }

  while (v5 != 8);
  return result;
}

void sub_29CF1C3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](&a65);
  v67 = *(v65 - 256);
  if (v67)
  {
    operator delete(v67);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](&a46);
  _Unwind_Resume(a1);
}

uint64_t AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::incrementalLoad<AGX::HAL300::FragmentProgramVariant>(uint64_t **a1, void **a2, uint64_t a3, void *a4, uint64_t **a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v38 = *MEMORY[0x29EDCA608];
  __p = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [a4 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (!v15)
  {
LABEL_14:
    AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)1>::incrementalLoad<AGX::HAL300::FragmentProgramVariant>(a1, a2, a3, &__p, a5, a6, a7, a8, a9, a10);
  }

  v16 = *v31;
  v25 = a6;
  v26 = a7;
LABEL_3:
  v17 = 0;
  while (1)
  {
    if (*v31 != v16)
    {
      objc_enumerationMutation(a4);
    }

    v18 = *(*(&v30 + 1) + 8 * v17);
    if (([a2 requiresRaytracingEmulation] & 1) == 0 && objc_msgSend(v18, "functionType") == 6)
    {
      goto LABEL_4;
    }

    if (![v18 vendorPrivate])
    {
      break;
    }

    [v18 vendorPrivate];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v19 = [v18 vendorPrivate];
    v20 = v19;
    if (!v19)
    {
      break;
    }

    AGX::applySPIRelocations<AGX::HAL300::ObjClasses,AGX::HAL300::DynamicLibrary>(v19[7], [v19 relocations]);
    std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](&__p, (v20 + 7));
LABEL_4:
    if (v15 == ++v17)
    {
      v15 = [a4 countByEnumeratingWithState:&v30 objects:v37 count:16];
      a6 = v25;
      a7 = v26;
      if (!v15)
      {
        goto LABEL_14;
      }

      goto LABEL_3;
    }
  }

  v21 = __p;
  if (__p)
  {
    v22 = v35;
    if (v35 != __p)
    {
      do
      {
        v23 = *(v22 - 1);
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v22 -= 16;
      }

      while (v22 != v21);
      v21 = __p;
    }

    operator delete(v21);
  }

  return 0;
}

uint64_t AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setPipelineStateWithAdditionalMeshObjectFragmentFunctions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t *a10)
{
  v63 = *MEMORY[0x29EDCA608];
  v53 = a3 + 240;
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::copyStateAndFunctionsFromOriginal(a1, a2, (a3 + 240), [a4 count] + objc_msgSend(a6, "count") + objc_msgSend(a8, "count"));
  prime = vcvtps_u32_f32(([a4 count] + *(a1 + 2896)) / *(a1 + 2904));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v15 = *(a1 + 2880);
  if (prime > *&v15)
  {
    goto LABEL_6;
  }

  if (prime < *&v15)
  {
    v16 = vcvtps_u32_f32(*(a1 + 2896) / *(a1 + 2904));
    if (*&v15 < 3uLL || (v17 = vcnt_s8(v15), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
    {
      v19 = prime;
      v16 = std::__next_prime(v16);
      prime = v19;
    }

    else
    {
      v18 = 1 << -__clz(v16 - 1);
      if (v16 >= 2)
      {
        v16 = v18;
      }
    }

    if (prime <= v16)
    {
      prime = v16;
    }

    if (prime < *&v15)
    {
LABEL_6:
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 2872, prime);
    }
  }

  v20 = vcvtps_u32_f32(([a6 count] + *(a1 + 2856)) / *(a1 + 2864));
  if (v20 == 1)
  {
    v20 = 2;
  }

  else if ((v20 & (v20 - 1)) != 0)
  {
    v20 = std::__next_prime(v20);
  }

  v21 = *(a1 + 2840);
  if (v20 > *&v21)
  {
    goto LABEL_22;
  }

  if (v20 < *&v21)
  {
    v22 = vcvtps_u32_f32(*(a1 + 2856) / *(a1 + 2864));
    if (*&v21 < 3uLL || (v23 = vcnt_s8(v21), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v25 = v20;
      v22 = std::__next_prime(v22);
      v20 = v25;
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }
    }

    if (v20 <= v22)
    {
      v20 = v22;
    }

    if (v20 < *&v21)
    {
LABEL_22:
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 2832, v20);
    }
  }

  v26 = vcvtps_u32_f32(([a8 count] + *(a1 + 2776)) / *(a1 + 2784));
  if (v26 == 1)
  {
    v26 = 2;
  }

  else if ((v26 & (v26 - 1)) != 0)
  {
    v26 = std::__next_prime(v26);
  }

  v27 = *(a1 + 2760);
  if (v26 > *&v27)
  {
    goto LABEL_38;
  }

  if (v26 < *&v27)
  {
    v28 = vcvtps_u32_f32(*(a1 + 2776) / *(a1 + 2784));
    if (*&v27 < 3uLL || (v29 = vcnt_s8(v27), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
    {
      v31 = v26;
      v28 = std::__next_prime(v28);
      v26 = v31;
    }

    else
    {
      v30 = 1 << -__clz(v28 - 1);
      if (v28 >= 2)
      {
        v28 = v30;
      }
    }

    if (v26 <= v28)
    {
      v26 = v28;
    }

    if (v26 < *&v27)
    {
LABEL_38:
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 2752, v26);
    }
  }

  v32 = AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(a2, a4, a5, (a1 + 2872), a1 + 3504, (v53 + 3504), *(v53 + 2352), a10);
  v33 = v32;
  if (*(a1 + 24))
  {
    v32 = 0;
    if (v33)
    {
      v32 = AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(a2, a6, a7, (a1 + 2832), a1 + 3480, (v53 + 3480), *(v53 + 2040), a10);
    }
  }

  if (*a1 && v32)
  {
    if ((AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(a2, a8, a9, (a1 + 2752), a1 + 3432, (v53 + 3432), *(v53 + 1416), a10) & 1) == 0)
    {
      goto LABEL_86;
    }

LABEL_59:
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v35 = [a4 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v35)
    {
      v36 = *v56;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v56 != v36)
          {
            objc_enumerationMutation(a4);
          }

          v38 = *(*(&v55 + 1) + 8 * i);
          if (([a2 requiresRaytracingEmulation] & 1) != 0 || objc_msgSend(v38, "functionType") != 6)
          {
            if (![v38 vendorPrivate] || (objc_msgSend(v38, "vendorPrivate"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v39 = objc_msgSend(v38, "vendorPrivate"), (v40 = v39) == 0))
            {
              v43 = v59;
              if (v59)
              {
                v44 = v60;
                if (v60 != v59)
                {
                  do
                  {
                    v45 = *(v44 - 1);
                    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v45->__on_zero_shared)(v45);
                      std::__shared_weak_count::__release_weak(v45);
                    }

                    v44 -= 16;
                  }

                  while (v44 != v43);
                  v43 = v59;
                }

                operator delete(v43);
              }

              goto LABEL_86;
            }

            AGX::applySPIRelocations<AGX::HAL300::ObjClasses,AGX::HAL300::DynamicLibrary>(v39[7], [v39 relocations]);
            std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](&v59, (v40 + 7));
          }
        }

        v35 = [a4 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v35);
      v42 = v59;
      v41 = v60;
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }

    if ((((v41 - v42) >> 1) + ((*(v53 + 3512) - *(v53 + 3504)) >> 1) + 1) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v34 = v32 ^ 1;
  if (*a1)
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_86:
  if (([a2 requiresRaytracingEmulation] & 1) == 0)
  {
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(a1);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTables(a1, a2);
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(a1, *(a2 + 848));
  }

  if (*a1 && (*(*a1 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v46 = *(a1 + 8);
  if (v46 && (*(v46 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v47 = *(a1 + 16);
  if (v47 && (*(v47 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v48 = *(a1 + 24);
  if (v48 && (*(v48 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  v49 = *(a1 + 32);
  if (v49 && (*(v49 + 2407) & 0x18) != 0)
  {
    *(a1 + 790) = 1;
  }

  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParams(a1, *(a2 + 848));
  *(a1 + 1024) = a2;
  return 0;
}

void sub_29CF20460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](&a65);
  v67 = *(v65 - 248);
  if (v67)
  {
    operator delete(v67);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](&a44);
  _Unwind_Resume(a1);
}

void sub_29CF22E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](va);
  v65 = *(v63 - 256);
  if (v65)
  {
    operator delete(v65);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](&a42);
  _Unwind_Resume(a1);
}

void *AGX::SpecializableRenderPipelineState::specialize<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = 0;
  v32 = [a2 _descriptorPrivate];
  v5 = *v32;
  v6 = (a1 + 168);
  for (i = [*v32 _descriptorAtIndex:{0, v32}]; ; i = objc_msgSend(v5, "_descriptorAtIndex:", v4, v33))
  {
    v11 = [i _descriptorPrivate];
    if (*(a1 + 8 * v4) == 263)
    {
      if (v11)
      {
        v12 = *v11 >> 42;
      }

      else
      {
        v12 = 0;
      }

      *(a1 + 8 * v4) = v12;
    }

    v13 = *(v6 - 24);
    if (v13 == 2)
    {
      if (v11)
      {
        v14 = *v11 & 3;
        if (v14 == 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = v14 == 1;
        }
      }

      else
      {
        v13 = 0;
      }

      *(v6 - 24) = v13;
    }

    if (v13 != 1)
    {
      goto LABEL_52;
    }

    if (!v11)
    {
      v8 = *(a1 + 372);
      v9 = 1 << v4;
      if (((1 << v4) & v8) == 0)
      {
        goto LABEL_5;
      }

LABEL_3:
      LOBYTE(v10) = 0;
LABEL_4:
      *(a1 + 368) = *(a1 + 368) & ~(15 << v3) | ((v10 & 0xF) << v3);
      *(a1 + 372) = v8 & ~v9;
      goto LABEL_5;
    }

    if (*(v6 - 5))
    {
      if (*(v6 - 4))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = (*v11 >> 8) & 0x1FLL;
      if (v15 > 0x13)
      {
        v16 = 0;
      }

      else
      {
        v16 = dword_29D2F7668[v15];
      }

      *(v6 - 5) = v16;
      if (*(v6 - 4))
      {
LABEL_23:
        if (*(v6 - 3))
        {
          goto LABEL_24;
        }

        goto LABEL_36;
      }
    }

    v17 = (*v11 >> 18) & 0x1FLL;
    if (v17 > 0x13)
    {
      v18 = 0;
    }

    else
    {
      v18 = dword_29D2F7668[v17];
    }

    *(v6 - 4) = v18;
    if (*(v6 - 3))
    {
LABEL_24:
      if (*(v6 - 2))
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

LABEL_36:
    v19 = (*v11 >> 13) & 0x1FLL;
    if (v19 > 0x13)
    {
      v20 = 0;
    }

    else
    {
      v20 = dword_29D2F7668[v19];
    }

    *(v6 - 3) = v20;
    if (*(v6 - 2))
    {
LABEL_25:
      if (!*(v6 - 1))
      {
        goto LABEL_44;
      }

      goto LABEL_26;
    }

LABEL_40:
    v21 = (*v11 >> 23) & 0x1FLL;
    if (v21 > 0x13)
    {
      v22 = 0;
    }

    else
    {
      v22 = dword_29D2F7668[v21];
    }

    *(v6 - 2) = v22;
    if (!*(v6 - 1))
    {
LABEL_44:
      v23 = (*v11 >> 2) & 7;
      if (v23 > 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = dword_29D2F76B8[v23];
      }

      *(v6 - 1) = v24;
      if (*v6)
      {
        goto LABEL_52;
      }

LABEL_48:
      v25 = *v11 >> 5;
      if (v25 > 5)
      {
        v26 = 0;
      }

      else
      {
        v26 = dword_29D2F76B8[v25];
      }

      *v6 = v26;
      goto LABEL_52;
    }

LABEL_26:
    if (!*v6)
    {
      goto LABEL_48;
    }

LABEL_52:
    v8 = *(a1 + 372);
    v9 = 1 << v4;
    if (((1 << v4) & v8) != 0)
    {
      if (!v11)
      {
        goto LABEL_3;
      }

      v10 = __rbit32(HIDWORD(*v11)) >> 28;
      if ((*v11 & 0x1000000000) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    ++v4;
    v3 += 4;
    v6 += 7;
    if (v4 == 8)
    {
      break;
    }
  }

  if (*(a1 + 64) == 3)
  {
    v27 = v33[85];
    if (!v27)
    {
      goto LABEL_63;
    }

    if (v27 == 3)
    {
      *(a1 + 64) = 3;
      memset_pattern16((a1 + 72), &unk_29D2F27B0, 0x40uLL);
    }

    else
    {
      if (v27 == 2)
      {
        LODWORD(v27) = 1;
      }

      else
      {
        LODWORD(v27) = 2;
      }

LABEL_63:
      *(a1 + 64) = v27;
    }
  }

  if ([a2 isLogicOperationEnabled])
  {
    v28 = [a2 logicOperation];
    if (v28 > 0xF)
    {
      v29 = 0;
    }

    else
    {
      v29 = dword_29D2FEC28[v28];
    }

    *(a1 + 376) = v29;
    *(a1 + 380) = 1;
  }

  v30 = v33[23];
  if (!v30)
  {
    LOBYTE(v30) = objc_msgSend_sampleCount(a2);
  }

  *(a1 + 373) = v30;
  result = v33[27];
  if (!result)
  {
    result = objc_msgSend_sampleCount(a2);
  }

  *(a1 + 374) = result;
  return result;
}

void *AGX::SpecializableRenderPipelineState::specialize<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = 0;
  v31 = [a2 _descriptorPrivate];
  v5 = *v31;
  v6 = (a1 + 168);
  for (i = [*v31 _descriptorAtIndex:{0, v31}]; ; i = objc_msgSend(v5, "_descriptorAtIndex:", v4, v32))
  {
    v11 = [i _descriptorPrivate];
    if (*(a1 + 8 * v4) == 263)
    {
      if (v11)
      {
        v12 = *v11 >> 42;
      }

      else
      {
        v12 = 0;
      }

      *(a1 + 8 * v4) = v12;
    }

    v13 = *(v6 - 24);
    if (v13 == 2)
    {
      if (v11)
      {
        v14 = *v11 & 3;
        if (v14 == 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = v14 == 1;
        }
      }

      else
      {
        v13 = 0;
      }

      *(v6 - 24) = v13;
    }

    if (v13 != 1)
    {
      goto LABEL_52;
    }

    if (!v11)
    {
      v8 = *(a1 + 372);
      v9 = 1 << v4;
      if (((1 << v4) & v8) == 0)
      {
        goto LABEL_5;
      }

LABEL_3:
      LOBYTE(v10) = 0;
LABEL_4:
      *(a1 + 368) = *(a1 + 368) & ~(15 << v3) | ((v10 & 0xF) << v3);
      *(a1 + 372) = v8 & ~v9;
      goto LABEL_5;
    }

    if (*(v6 - 5))
    {
      if (*(v6 - 4))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = (*v11 >> 8) & 0x1FLL;
      if (v15 > 0x13)
      {
        v16 = 0;
      }

      else
      {
        v16 = dword_29D2F7668[v15];
      }

      *(v6 - 5) = v16;
      if (*(v6 - 4))
      {
LABEL_23:
        if (*(v6 - 3))
        {
          goto LABEL_24;
        }

        goto LABEL_36;
      }
    }

    v17 = (*v11 >> 18) & 0x1FLL;
    if (v17 > 0x13)
    {
      v18 = 0;
    }

    else
    {
      v18 = dword_29D2F7668[v17];
    }

    *(v6 - 4) = v18;
    if (*(v6 - 3))
    {
LABEL_24:
      if (*(v6 - 2))
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

LABEL_36:
    v19 = (*v11 >> 13) & 0x1FLL;
    if (v19 > 0x13)
    {
      v20 = 0;
    }

    else
    {
      v20 = dword_29D2F7668[v19];
    }

    *(v6 - 3) = v20;
    if (*(v6 - 2))
    {
LABEL_25:
      if (!*(v6 - 1))
      {
        goto LABEL_44;
      }

      goto LABEL_26;
    }

LABEL_40:
    v21 = (*v11 >> 23) & 0x1FLL;
    if (v21 > 0x13)
    {
      v22 = 0;
    }

    else
    {
      v22 = dword_29D2F7668[v21];
    }

    *(v6 - 2) = v22;
    if (!*(v6 - 1))
    {
LABEL_44:
      v23 = (*v11 >> 2) & 7;
      if (v23 > 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = dword_29D2F76B8[v23];
      }

      *(v6 - 1) = v24;
      if (*v6)
      {
        goto LABEL_52;
      }

LABEL_48:
      v25 = *v11 >> 5;
      if (v25 > 5)
      {
        v26 = 0;
      }

      else
      {
        v26 = dword_29D2F76B8[v25];
      }

      *v6 = v26;
      goto LABEL_52;
    }

LABEL_26:
    if (!*v6)
    {
      goto LABEL_48;
    }

LABEL_52:
    v8 = *(a1 + 372);
    v9 = 1 << v4;
    if (((1 << v4) & v8) != 0)
    {
      if (!v11)
      {
        goto LABEL_3;
      }

      v10 = __rbit32(HIDWORD(*v11)) >> 28;
      if ((*v11 & 0x1000000000) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    ++v4;
    v3 += 4;
    v6 += 7;
    if (v4 == 8)
    {
      break;
    }
  }

  if (*(a1 + 64) == 3)
  {
    v27 = v32[47];
    if (!v27)
    {
      goto LABEL_63;
    }

    if (v27 == 3)
    {
      *(a1 + 64) = 3;
      memset_pattern16((a1 + 72), &unk_29D2F27B0, 0x40uLL);
    }

    else
    {
      if (v27 == 2)
      {
        LODWORD(v27) = 1;
      }

      else
      {
        LODWORD(v27) = 2;
      }

LABEL_63:
      *(a1 + 64) = v27;
    }
  }

  if ([a2 isLogicOperationEnabled])
  {
    v28 = [a2 logicOperation];
    if (v28 > 0xF)
    {
      v29 = 0;
    }

    else
    {
      v29 = dword_29D2FEC28[v28];
    }

    *(a1 + 376) = v29;
    *(a1 + 380) = 1;
  }

  result = v32[5];
  *(a1 + 373) = v32[4];
  if (!result)
  {
    result = [a2 rasterSampleCount];
  }

  *(a1 + 374) = result;
  return result;
}

uint64_t AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setVertexVariantDriverShader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::setVertexVariant(a1, a3, 1);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(v20, a2, *(a2 + 7184));
  v5 = *(a1 + 1120) + *(a1 + 1084);
  v6 = *(v21 + 7092);
  v8 = v22;
  v7 = v23;
  if (v5 <= *(*(a1 + 8) + 1308))
  {
    v5 = *(*(a1 + 8) + 1308);
  }

  v9 = 32 * v5;
  v10 = (v9 + 82815) >> 16;
  v11 = 32 * *(a1 + 1096);
  v12 = (v11 + 0xFFFF) >> 16;
  v13 = v10 + v12;
  v14 = ((v11 + 4095) >> 12) + ((v9 + 21375) >> 12);
  v15 = v10 + v12 + v14 - v25;
  if ((v10 + v12 + v14) <= v25)
  {
    v15 = 0;
  }

  v16 = ((v15 * v23 + v24 * v13 + v13 + v22 + 64) * v6 + 7) & 0xFFFFFFF8;
  result = 96;
  v18 = 10 * v13 + 96 * v14;
  v19 = v18 - v25;
  if (v18 <= v25)
  {
    v19 = 0;
  }

  *(a1 + 40) = v10;
  *(a1 + 44) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = v16;
  *(a1 + 64) = ((v8 + v19 * v7 + v13 + 64) * v6 + 7) & 0xFFFFFFF8;
  *(a1 + 68) = v18;
  return result;
}

void *AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[426];
  for (i = result[427]; v3 != i; v3 += 2)
  {
    v5 = *v3;
    if ((*v3)[10])
    {
      result = IOGPUResourceListAddResource();
      v5 = *v3;
    }

    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      do
      {
        v8 = *(*v6 + 2704);
        do
        {
          v8 &= ~(1 << __clz(__rbit32(v8)));
          result = IOGPUResourceListAddResource();
        }

        while (v8);
        v6 += 344;
      }

      while (v6 != v7);
    }
  }

  v9 = v2[429];
  for (j = v2[430]; v9 != j; v9 += 2)
  {
    v11 = *v9;
    if ((*v9)[10])
    {
      result = IOGPUResourceListAddResource();
      v11 = *v9;
    }

    v12 = *v11;
    v13 = v11[1];
    if (*v11 != v13)
    {
      do
      {
        v14 = *(*v12 + 2704);
        do
        {
          v14 &= ~(1 << __clz(__rbit32(v14)));
          result = IOGPUResourceListAddResource();
        }

        while (v14);
        v12 += 344;
      }

      while (v12 != v13);
    }
  }

  v15 = v2[432];
  for (k = v2[433]; v15 != k; v15 += 2)
  {
    v17 = *v15;
    if ((*v15)[10])
    {
      result = IOGPUResourceListAddResource();
      v17 = *v15;
    }

    v18 = *v17;
    v19 = v17[1];
    if (*v17 != v19)
    {
      do
      {
        v20 = *(*v18 + 2704);
        do
        {
          v20 &= ~(1 << __clz(__rbit32(v20)));
          result = IOGPUResourceListAddResource();
        }

        while (v20);
        v18 += 344;
      }

      while (v18 != v19);
    }
  }

  v21 = v2[435];
  for (m = v2[436]; v21 != m; v21 += 2)
  {
    v23 = *v21;
    if ((*v21)[10])
    {
      result = IOGPUResourceListAddResource();
      v23 = *v21;
    }

    v24 = *v23;
    v25 = v23[1];
    if (*v23 != v25)
    {
      do
      {
        v26 = *(*v24 + 2704);
        do
        {
          v26 &= ~(1 << __clz(__rbit32(v26)));
          result = IOGPUResourceListAddResource();
        }

        while (v26);
        v24 += 344;
      }

      while (v24 != v25);
    }
  }

  v27 = v2[438];
  for (n = v2[439]; v27 != n; v27 += 2)
  {
    v29 = *v27;
    if ((*v27)[10])
    {
      result = IOGPUResourceListAddResource();
      v29 = *v27;
    }

    v30 = *v29;
    v31 = v29[1];
    if (*v29 != v31)
    {
      do
      {
        v32 = *(*v30 + 2704);
        do
        {
          v32 &= ~(1 << __clz(__rbit32(v32)));
          result = IOGPUResourceListAddResource();
        }

        while (v32);
        v30 += 344;
      }

      while (v30 != v31);
    }
  }

  return result;
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::loadFragment(uint64_t *a1, void **a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (((a1[430] - a1[429]) >> 1) <= 0x2AAAAAAAAAAAAA9)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_29CF24D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](&a37);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a28 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a26);
  }

  _Unwind_Resume(a1);
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::loadObject(uint64_t a1, void **a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (((*(a1 + 3488) - *(a1 + 3480)) >> 1) <= 0x2AAAAAAAAAAAAA9)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_29CF25EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](&a37);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a28 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a26);
  }

  _Unwind_Resume(a1);
}

void AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::loadMesh(uint64_t a1, void **a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  if (((*(a1 + 3512) - *(a1 + 3504)) >> 1) <= 0x2AAAAAAAAAAAAA9)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_29CF27018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](&a37);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a28 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a26);
  }

  _Unwind_Resume(a1);
}

void *AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(void *result, void *a2)
{
  v3 = result;
  if (*result)
  {
    result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(*result + 1528), *(*result + 1824), *(*result + 1416), @"fragment"}];
    v4 = v3[327];
    for (i = v3[328]; v4 != i; result = [a2 addObject:{objc_msgSend(v8, "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v6, v7, *v9, @"fragment-dylib-resource"}])
    {
      v6 = *(*v4 + 744);
      v7 = *(*v4 + 760);
      v8 = objc_alloc(MEMORY[0x29EDBB738]);
      v9 = *v4;
      v4 += 16;
    }

    v10 = v3[429];
    for (j = v3[430]; v10 != j; v10 += 2)
    {
      v12 = **v10;
      for (k = (*v10)[1]; v12 != k; v12 += 344)
      {
        result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(*v12 + 1504), *(*v12 + 1800), *(*v12 + 1392), @"user-intersection"}];
      }
    }
  }

  v14 = v3[1];
  if (v14)
  {
    result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v14[191], v14[228], v14[177], @"vertex"}];
    v15 = v3[324];
    for (m = v3[325]; v15 != m; result = [a2 addObject:{objc_msgSend(v19, "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v17, v18, *v20, @"vertex-dylib-resource"}])
    {
      v17 = *(*v15 + 744);
      v18 = *(*v15 + 760);
      v19 = objc_alloc(MEMORY[0x29EDBB738]);
      v20 = *v15;
      v15 += 16;
    }

    v21 = v3[426];
    for (n = v3[427]; v21 != n; v21 += 2)
    {
      v23 = **v21;
      for (ii = (*v21)[1]; v23 != ii; v23 += 344)
      {
        result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(*v23 + 1504), *(*v23 + 1800), *(*v23 + 1392), @"user-intersection"}];
      }
    }
  }

  v25 = v3[2];
  if (v25)
  {
    result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v25[191], v25[228], v25[177], @"tile"}];
    v26 = v3[330];
    for (jj = v3[331]; v26 != jj; result = [a2 addObject:{objc_msgSend(v30, "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v28, v29, *v31, @"tile-dylib-resource"}])
    {
      v28 = *(*v26 + 744);
      v29 = *(*v26 + 760);
      v30 = objc_alloc(MEMORY[0x29EDBB738]);
      v31 = *v26;
      v26 += 16;
    }

    v32 = v3[432];
    for (kk = v3[433]; v32 != kk; v32 += 2)
    {
      v34 = **v32;
      for (mm = (*v32)[1]; v34 != mm; v34 += 344)
      {
        result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(*v34 + 1504), *(*v34 + 1800), *(*v34 + 1392), @"user-intersection"}];
      }
    }
  }

  v36 = v3[3];
  if (v36)
  {
    result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v36[191], v36[228], v36[177], @"object"}];
    v37 = v3[333];
    for (nn = v3[334]; v37 != nn; result = [a2 addObject:{objc_msgSend(v41, "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v39, v40, *v42, @"object-dylib-resource"}])
    {
      v39 = *(*v37 + 744);
      v40 = *(*v37 + 760);
      v41 = objc_alloc(MEMORY[0x29EDBB738]);
      v42 = *v37;
      v37 += 16;
    }

    v43 = v3[435];
    for (i1 = v3[436]; v43 != i1; v43 += 2)
    {
      v45 = **v43;
      for (i2 = (*v43)[1]; v45 != i2; v45 += 344)
      {
        result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(*v45 + 1504), *(*v45 + 1800), *(*v45 + 1392), @"user-intersection"}];
      }
    }
  }

  v47 = v3[4];
  if (v47)
  {
    result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v47[191], v47[228], v47[177], @"mesh"}];
    v48 = v3[336];
    for (i3 = v3[337]; v48 != i3; result = [a2 addObject:{objc_msgSend(v52, "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v50, v51, *v53, @"mesh-dylib-resource"}])
    {
      v50 = *(*v48 + 744);
      v51 = *(*v48 + 760);
      v52 = objc_alloc(MEMORY[0x29EDBB738]);
      v53 = *v48;
      v48 += 16;
    }

    v54 = v3[438];
    for (i4 = v3[439]; v54 != i4; v54 += 2)
    {
      v56 = **v54;
      for (i5 = (*v54)[1]; v56 != i5; v56 += 344)
      {
        result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(*v56 + 1504), *(*v56 + 1800), *(*v56 + 1392), @"user-intersection"}];
      }
    }
  }

  return result;
}

uint64_t AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchThreads(uint64_t result, unint64_t *a2, _BYTE *a3, _DWORD *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, int a9)
{
  v15 = result;
  if (a9 != 3)
  {
    result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindTilePipelineResources(result, *(result + 23952), a5);
  }

  v16 = *a2;
  v17 = v15[2361];
  *(v17 + 832) = *a2;
  v18 = a2[1];
  *(v17 + 836) = v18;
  v19 = v15[2994];
  if (!v19 || (v18 * v16) <= *(v19 + 3832))
  {
    v62 = a4;
    v58 = a5;
    v20 = v15[2993];
    v61 = v15[2360];
    v21 = *a2;
    v59 = a2[2];
    v22 = *(v20 + 96);
    v23 = *(v22 + 4932);
    v24 = *(v22 + 4936);
    v26 = *a2 == v23 && v18 == v24;
    *(v20 + 8) = v23;
    *(v20 + 12) = v24;
    if ((a8 & 0x100000000) != 0)
    {
      v27 = a8;
    }

    else
    {
      v27 = 0;
    }

    *(v20 + 64) = v27;
    v60 = v26;
    if (a7)
    {
      v28 = -v23;
      v29 = -v24;
      v30 = v23 - 1;
      v31 = v24 - 1;
      v32 = (v20 + 32);
      v33 = 0;
      if (v26)
      {
        v34 = (a6 + 32);
        v35 = a7;
        do
        {
          v36 = *(v34 - 8);
          v37 = *(v34 - 6);
          v38 = (v36 & v28) / v23;
          v39 = (v37 & v29) / v24;
          v40 = ((v30 + v36 + *(v34 - 2)) & v28) / v23;
          v41 = *v34;
          v34 += 12;
          v42 = v40 - v38;
          v43 = ((v31 + v37 + v41) & v29) / v24 - v39;
          v44 = (v42 * v23) + -0.00390625;
          *(v32 - 4) = v44;
          v45 = (v43 * v24) + -0.00390625;
          *v32 = v42;
          *(v32 + 2) = v43;
          v46 = v43 * v42;
          *(v32 - 2) = v45;
          *(v32 + 4) = v38;
          *(v32 + 6) = v39;
          if (v33 <= v46)
          {
            v33 = v46;
          }

          ++v32;
          --v35;
        }

        while (v35);
      }

      else
      {
        v47 = (a6 + 32);
        v48 = a7;
        do
        {
          v49 = *(v47 - 8);
          v50 = (v49 & v28) / v23;
          v51 = *(v47 - 6);
          v52 = (v51 & v29) / v24;
          v53 = ((v30 + v49 + *(v47 - 2)) & v28) / v23 - v50;
          v54 = *v47;
          v47 += 12;
          v55 = ((v31 + v51 + v54) & v29) / v24 - v52;
          *(v32 - 4) = v21 + -0.0039062;
          *(v32 - 2) = v18 + -0.0039062;
          *v32 = v53;
          *(v32 + 2) = v55;
          v56 = v55 * v53;
          *(v32 + 4) = v50;
          *(v32 + 6) = v52;
          if (v33 <= v56)
          {
            v33 = v56;
          }

          ++v32;
          --v48;
        }

        while (v48);
      }
    }

    else
    {
      v33 = 0;
    }

    v66 = 25;
    v68 = 0;
    v69 = 0;
    __p = 0;
    v65 = &unk_2A23F96B8;
    v70 = ((a8 & 0x100000000uLL) >> 30) | (a7 > 1);
    TileDispatchVertexProgram = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTileDispatchVertexProgram(*(v20 + 80), &v65);
    v64[0] = v21;
    v64[1] = v18;
    v64[2] = v59;
    AGX::RenderTileDispatchEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDispatch<AGX::HAL300::TileProgramVariant,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(v20, v19, v61, (v15 + 11), v64, a3, v62, TileDispatchVertexProgram, v60, v33, a8, a9);
    v65 = &unk_2A23F96F8;
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v15[2993] + 120, v58 + 320, 1);
  }

  return result;
}

void sub_29CF27948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindTilePipelineResources(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  v60 = a1 + 20480;
  v4 = *(a1 + 23936);
  do
  {
    v4 &= ~(1 << __clz(__rbit32(v4)));
    IOGPUResourceListAddResource();
  }

  while (v4);
  v73 = 0;
  v5 = *(*(a1 + 23984) + 848);
  v6 = *(a1 + 18888);
  v68.i64[0] = v6 + 176;
  v68.i64[1] = a1 + 19272;
  v69 = v6 + 184;
  v70 = a1 + 19280;
  v71 = v6 + 208;
  v72 = a1 + 19304;
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(v5 + 7240, &v68, *(a1 + 48), &v73);
  v7 = *(*(a1 + 23984) + 848);
  v68.i64[0] = *(a1 + 18888) + 216;
  v68.i64[1] = a1 + 19312;
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v7 + 2152, &v68, *(a1 + 48));
  *(a3 + 2096) = *(*(a1 + 18888) + 216);
  explicit = atomic_load_explicit((*(*(a1 + 23984) + 848) + 9388), memory_order_acquire);
  if (explicit)
  {
    v9 = explicit + 1;
  }

  else
  {
    v9 = 0;
  }

  *(a3 + 2104) = v9;
  v10 = a2[150].u64[0];
  v66 = a2[150].u64[1];
  v67 = v10;
  v11 = *(a1 + 23960);
  if (!v11)
  {
    v12 = *(a1 + 18888);
    v12[34] = 0;
    v12[73] = 0;
    *(a1 + 23280) = 0;
    *(a1 + 23840) = 0;
    v10 &= ~0x800000000000000uLL;
    v67 = v10;
    v13 = *(a1 + 23968);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_10:
    v12[35] = 0;
    v12[74] = 0;
    v14 = 23848;
    *(a1 + 23288) = 0;
    goto LABEL_11;
  }

  v12 = *(a1 + 18888);
  v12[34] = *(v11 + 56);
  *(a1 + 19368) = *(v11 + 48);
  v13 = *(a1 + 23968);
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_8:
  v12[35] = *(v13 + 56);
  v13 = *(v13 + 48);
  v14 = 19376;
LABEL_11:
  *(a1 + v14) = v13;
  v15 = *(*(a1 + 23944) + 88);
  v16 = (v15 + 79424);
  v17 = *(*(v15 + 1872) + 848);
  v18 = *(v17 + 6320);
  if (*(v15 + 29932) != v18)
  {
    for (i = *(v17 + 6832); i; i = *i)
    {
      IOGPUResourceListAddResource();
    }

    for (j = *(v17 + 6664); j; j = *j)
    {
      IOGPUResourceListAddResource();
    }

    *(v15 + 29932) = v18;
    v15 = *(*(a1 + 23944) + 88);
  }

  v21 = *(*(a1 + 23984) + 848);
  v68.i64[0] = v15 + 79432;
  v68.i64[1] = v15 + 79440;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v21 + 3146, &v68, *(a1 + 48)))
  {
    IOGPUResourceListAddResource();
  }

  **v16 = v16[1];
  v22 = *(*(a1 + 23984) + 848);
  v23 = *(*(a1 + 23944) + 88);
  v68.i64[0] = v23 + 79448;
  v68.i64[1] = v23 + 79456;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v22 + 2952, &v68, *(a1 + 48)))
  {
    IOGPUResourceListAddResource();
  }

  *(*v16 + 8) = v16[3];
  v24 = *(*(a1 + 23984) + 848);
  v68.i64[0] = *(a1 + 18888) + 344;
  v68.i64[1] = a1 + 19440;
  AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v24 + 3534, &v68, *(a1 + 48));
  IOGPUResourceListAddResource();
  v25 = *(a1 + 64);
  v68.i64[0] = *(a1 + 18888) + 240;
  v68.i64[1] = a1 + 19336;
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v25, &v68, *(a1 + 48));
  IOGPUResourceListAddResource();
  v68.i64[0] = *(a1 + 18888) + 256;
  v68.i64[1] = a1 + 19352;
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(*(a1 + 56), &v68, *(a1 + 48));
  IOGPUResourceListAddResource();
  v26 = *(*(a1 + 23984) + 848);
  v68.i64[0] = *(a1 + 18888) + 232;
  v68.i64[1] = a1 + 19328;
  AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v26 + 2352, &v68, *(a1 + 48));
  IOGPUResourceListAddResource();
  v27 = *(*(a1 + 23984) + 848);
  v68.i64[0] = *(a1 + 18888) + 328;
  v68.i64[1] = a1 + 19424;
  AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v27 + 2752, &v68, *(a1 + 48));
  result = IOGPUResourceListAddResource();
  v31 = *(a1 + 23976);
  v32.i64[0] = -1;
  v32.i64[1] = -1;
  if (*(v31 + 789) == 1)
  {
    v32.i64[0] = 0;
    v29.i64[0] = *(v31 + 1656);
    v30.i64[0] = *(v31 + 1672);
    v33 = vceqq_s64(v30, v32);
    v34 = vdupq_lane_s64(vbicq_s8(v33, vceqq_s64(v29, v32)).i64[0], 0);
    v35 = 0x1800000000000000;
    if (!*(v31 + 1656))
    {
      v35 = 0x1000000000000000;
    }

    v36 = vbicq_s8(v35, vdupq_lane_s64(v33.i64[0], 0));
    v37 = vorrq_s8(vandq_s8(v34, xmmword_29D2F25B0), v36);
    v36.i64[0] = *(v31 + 3624);
    v38 = vdupq_lane_s64(vceqq_s64(v36, v32).i64[0], 0);
    v36.i64[0] = v37.i64[0];
    v36.i64[1] = 2;
    v32 = vmvnq_s8(vbslq_s8(v38, v37, v36));
  }

  v68 = vandq_s8(a2[85], v32);
  while (1)
  {
    if (v10)
    {
      v39 = __clz(__rbit64(v10));
      v40 = &v67;
      v41 = v39;
      goto LABEL_31;
    }

    v10 = v66;
    if (!v66)
    {
      break;
    }

    v39 = __clz(__rbit64(v66));
    v41 = v39 | 0x40;
    v40 = &v66;
LABEL_31:
    *v40 = v10 & ~(1 << v39);
    v42 = *(a1 + 18896 + 8 * v41);
    if (v42)
    {
      v43 = v41;
      v44 = v41;
      if ((*(&v68 | (8 * (v41 > 0x3F))) >> v41))
      {
        v45 = 12;
      }

      else
      {
        v45 = 4;
      }

      if (((v41 - 47 < 0x17) & (0x6C77B3u >> (v41 - 47))) != 0)
      {
        v46 = 128;
      }

      else
      {
        v46 = v45;
      }

      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 24), v42, 2u, v41, v46);
      result = IOGPUResourceListAddResource();
      if (v44 <= 0x22)
      {
        v48 = *(a1 + 22528 + 8 * v43);
        if (v48)
        {
          AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(a1 + 24), v48, v46, v47);
          result = IOGPUResourceListAddResource();
        }
      }
    }

    v10 = v67;
  }

  v49 = *(a1 + 18880);
  if (!v49)
  {
    goto LABEL_56;
  }

  v50 = a2[151].i64[0] & v49[2236];
  v64 = a2[151].i64[1] & v49[2237];
  v65 = v50;
  v51 = a2[86].i64[0];
  v52 = a2[86].i64[1];
  v68.i64[0] = v51;
  v68.i64[1] = v52;
  v63 = v49[2238];
  v53 = a1 + 19456;
  v59 = v49[2239];
  while (2)
  {
    if (v50)
    {
      v54 = __clz(__rbit64(v50));
      v55 = &v65;
      v56 = v54;
LABEL_48:
      *v55 = v50 & ~(1 << v54);
      if ((v68.i64[v56 > 0x3F] >> v56))
      {
        v57 = 12;
      }

      else
      {
        v57 = 4;
      }

      v58 = 3 * v56;
      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 24), *(v53 + 24 * v56), 5u, v56, v57);
      result = IOGPUResourceListAddResource();
      if (*(v53 + 8 * (v58 + 1)))
      {
        result = IOGPUResourceListAddResource();
      }

      if (*(v53 + 8 * (v58 + 2)))
      {
        result = IOGPUResourceListAddResource();
      }

      v50 = v65;
      continue;
    }

    break;
  }

  v50 = v64;
  if (v64)
  {
    v54 = __clz(__rbit64(v64));
    v56 = v54 | 0x40;
    v55 = &v64;
    goto LABEL_48;
  }

  *(a3 + 1612) |= (v63 & v51 | v59 & v52) != 0;
LABEL_56:
  if (*(v60 + 3532) == 1)
  {
    result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 23992), a3 + 1360, 0);
    *(v60 + 3532) = 0;
  }

  return result;
}

void AGX::RenderTileDispatchEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDispatch<AGX::HAL300::TileProgramVariant,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _BYTE *a6, _DWORD *a7, uint64_t a8, char a9, int a10, uint64_t a11, int a12)
{
  v17 = *(a8 + 2120);
  do
  {
    v17 &= ~(1 << __clz(__rbit32(v17)));
    IOGPUResourceListAddResource();
  }

  while (v17);
  if (a2)
  {
    if ((a5[2] * *a5) > *(a2 + 3832))
    {
      return;
    }

    v18 = a1;
    v19 = a2;
  }

  else
  {
    v18 = a1;
    v19 = 0;
  }

  AGX::RenderTileDispatchEncoder<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitTileState<AGX::HAL300::TileProgramVariant,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(v18, v19, a3, a4, a8, a12);
  if (!*(a1[28] + 520) || (*a6 & 1) != 0)
  {
    *a6 = 1;
  }

  else
  {
    v20 = 3 * a10;
    if (a9)
    {
      v20 = 3;
    }

    if ((a11 & 0x100000000) != 0)
    {
      v21 = 1;
    }

    else
    {
      v21 = *(a1[12] + 4908);
    }

    v22 = a1[14];
    LODWORD(v23) = 1640238336;
    DWORD1(v23) = v20;
    *(&v23 + 1) = v21;
    v24 = *(v22 + 48);
    *v24 = v23;
    *(v22 + 48) = v24 + 1;
    if (a7)
    {
      ++*a7;
    }

    *(a1[11] + 1956) += v21 * (v20 / 3);
  }
}

void AGX::RenderTileDispatchEncoder<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitTileState<AGX::HAL300::TileProgramVariant,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::TileDriverArgumentTable<AGX::HAL300::Classes>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v242 = *MEMORY[0x29EDCA608];
  if (!a2 || (*(a2 + 2407) & 0x40) == 0)
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 112);
  v12 = *(v11 + 1840) - 1;
  if (v12 > 6)
  {
    v13 = 11;
  }

  else
  {
    v13 = dword_29D2F7760[v12];
  }

  v14 = v13;
  v15 = v11 + 32 * v13;
  if (((1 << v13) & 0xFFF00000480) != 0 && !*(v15 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), v13, 0) & 1) == 0)
  {
LABEL_197:
    abort();
  }

  v17 = *(v15 + 40);
  v16 = *(v15 + 48);
  v18 = (v15 + 40);
  v19 = v16 + 27;
  if (v19 > v17)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v11, v14, 0))
    {
      goto LABEL_10;
    }

    v19 = v18[1] + 27;
    if (v19 > *v18)
    {
      goto LABEL_197;
    }
  }

  v18[2] = v19;
LABEL_10:
  v20 = *(a1 + 112);
  v21 = *(v20 + 1840) - 1;
  if (v21 > 6)
  {
    v22 = 11;
  }

  else
  {
    v22 = qword_29D2F7728[v21];
  }

  v23 = v20 + 32 * v22;
  v24 = (*(v23 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v23 + 64);
  *(v23 + 48) = v24 + 24;
  v26 = *(a4 + 816);
  *(v24 + 16) = *(a4 + 832);
  *v24 = v26;
  v27 = *(a1 + 88);
  v28 = *(a1 + 112);
  v29 = *(v28 + 1840) - 1;
  if (v29 > 6)
  {
    v30 = 11;
  }

  else
  {
    v30 = dword_29D2F7760[v29];
  }

  v31 = v24 + v25;
  v32 = v30;
  if (((0xFFF00000480uLL >> v30) & 1) != 0 && !*(v28 + 32 * v30 + 48))
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(*(a1 + 112), v30);
  }

  v33 = *(*(v28 + 24) + (v32 << 6) + 32) + *MEMORY[0x29EDC5638];
  *(*(v27 + 21552) + 296) = v31;
  *(v27 + 22056) = v33;
LABEL_20:
  v34 = *(a1 + 112);
  v35 = v34[6];
  if ((v35 + 23) > v34[5])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 0, 0))
    {
      v202 = v34[6] + 184;
      if (v202 > v34[5])
      {
        goto LABEL_197;
      }

      v34[7] = v202;
      *v35 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v34, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v34[7] = v35 + 23;
  }

  v36 = *(a1 + 112);
  v37 = *(a5 + 16) + 31;
  v38 = *(v36 + 144) + v37;
  if (v38 <= *(v36 + 136))
  {
LABEL_23:
    *(v36 + 152) = v38;
    goto LABEL_24;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 3, 0))
  {
    v38 = *(v36 + 144) + v37;
    if (v38 > *(v36 + 136))
    {
      goto LABEL_197;
    }

    goto LABEL_23;
  }

LABEL_24:
  v39 = *(v36 + 1008) + 667;
  if (v39 <= *(v36 + 1000))
  {
LABEL_25:
    *(v36 + 1016) = v39;
    goto LABEL_26;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v36, 30, 0))
  {
    v39 = *(v36 + 1008) + 667;
    if (v39 > *(v36 + 1000))
    {
      goto LABEL_197;
    }

    goto LABEL_25;
  }

LABEL_26:
  v40 = (*(*(a5 + 1784) + 8) - **(a5 + 1784)) + 63;
  v41 = *(v36 + 208) + v40;
  if (v41 <= *(v36 + 200))
  {
LABEL_27:
    *(v36 + 216) = v41;
    goto LABEL_28;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v36, 5, 0))
  {
    v41 = *(v36 + 208) + v40;
    if (v41 > *(v36 + 200))
    {
      goto LABEL_197;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (!a2)
  {
    goto LABEL_38;
  }

  v42 = (*(*(a2 + 2392) + 8) - **(a2 + 2392)) + 63;
  v43 = *(v36 + 240) + v42;
  if (v43 <= *(v36 + 232))
  {
    goto LABEL_30;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v36, 6, 0))
  {
    v43 = *(v36 + 240) + v42;
    if (v43 > *(v36 + 232))
    {
      goto LABEL_197;
    }

LABEL_30:
    *(v36 + 248) = v43;
  }

  v44 = *(a2 + 624);
  if (*(v36 + 1840))
  {
    v45 = 4;
  }

  else
  {
    v45 = 11;
  }

  v46 = (v36 + 40 + 32 * v45);
  if (((1 << v45) & 0x480) != 0 && !v46[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v36, v45, 0) & 1) == 0)
  {
    goto LABEL_197;
  }

  v47 = v44 + 31;
  v48 = v46[1] + v47;
  if (v48 <= *v46)
  {
    goto LABEL_37;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v36, v45, 0))
  {
    v48 = v46[1] + v47;
    if (v48 > *v46)
    {
      goto LABEL_197;
    }

LABEL_37:
    v46[2] = v48;
  }

LABEL_38:
  v49 = *(a1 + 112);
  v50 = v49[38] + 16;
  if (v50 <= v49[37])
  {
LABEL_39:
    v49[39] = v50;
    goto LABEL_40;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 8, 0))
  {
    v50 = v49[38] + 16;
    if (v50 > v49[37])
    {
      goto LABEL_197;
    }

    goto LABEL_39;
  }

LABEL_40:
  v51 = *(a1 + 112);
  v52 = v51[42] + 20;
  if (v52 <= v51[41])
  {
LABEL_41:
    v51[43] = v52;
    goto LABEL_42;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(a1 + 112), 9, 0))
  {
    v52 = v51[42] + 20;
    if (v52 > v51[41])
    {
      goto LABEL_197;
    }

    goto LABEL_41;
  }

LABEL_42:
  *(a1 + 172) = 1;
  v53 = HIDWORD(*(a1 + 120));
  v54 = *(a1 + 128);
  v55 = HIDWORD(*(a1 + 120));
  v56 = *(a5 + 3144);
  if (*(a1 + 120) > v56)
  {
    v56 = *(a1 + 120);
  }

  v57 = *(a1 + 136);
  *(a1 + 120) = v56;
  if (v53 <= *(a5 + 3148))
  {
    v53 = *(a5 + 3148);
  }

  v58 = *(a1 + 144);
  *(a1 + 124) = v53;
  v59 = *(a5 + 3152);
  if (v54 > v59)
  {
    v59 = v54;
  }

  *(a1 + 128) = v59;
  v60 = *(a5 + 3156);
  if (v55 > v60)
  {
    v60 = v55;
  }

  *(a1 + 132) = v60;
  v61 = *(a5 + 3160);
  if (v57 > v61)
  {
    v61 = v57;
  }

  v62 = *(a1 + 152);
  *(a1 + 136) = v61;
  v63 = *(a5 + 3164);
  if (SHIDWORD(v57) > v63)
  {
    v63 = HIDWORD(v57);
  }

  *(a1 + 140) = v63;
  v64 = *(a5 + 3168);
  if (v58 > v64)
  {
    v64 = v58;
  }

  *(a1 + 144) = v64;
  v65 = *(a5 + 3172);
  if (v62 > v65)
  {
    v65 = v62;
  }

  *(a1 + 152) = v65;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments(*(a1 + 104), *(a1 + 112), a5, a1, a1 + 8);
  if (a2)
  {
    v66 = *(a1 + 104);
    v67 = *(a1 + 112);
    v68 = *(v66 + 196);
    v69 = *(v66 + 228);
    v239 = *(v66 + 212);
    v240 = v69;
    v241 = *(v66 + 244);
    v237 = *(v66 + 180);
    v238 = v68;
    v70 = *(a2 + 624);
    v223 = v66;
    if (v70)
    {
      v71 = *(v67 + 1840);
      v72 = 4;
      if (!v71)
      {
        v72 = 11;
      }

      v73 = a3;
      switch(v71)
      {
        case 7:
          v72 = 4;
          break;
        case 3:
          v72 = 4;
          break;
        case 1:
          v72 = 4;
          break;
      }

      v76 = v67 + 32 * v72;
      v75 = (*(v76 + 48) + 31) & 0xFFFFFFFFFFFFFFE0;
      v74 = v75 + *(v76 + 64);
      *(v76 + 48) = v75 + v70;
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v73 = a3;
    }

    v222 = a6;
    v77 = ((*(v67 + 240) + 63) & 0xFFFFFFFFFFFFFFC0);
    v78 = *(v67 + 256);
    *(v67 + 240) = &v77[*(*(a2 + 2392) + 8) - **(a2 + 2392)];
    v79 = *(a2 + 1128);
    v80 = *(a2 + 1120);
    v82 = v79 - v80;
    v81 = v79 == v80;
    v83 = *(a2 + 1016);
    v84 = v83 & 1;
    if (v81)
    {
      v84 = 0;
    }

    v221 = v67;
    if (!v70)
    {
      goto LABEL_152;
    }

    v85 = *(a2 + 1320);
    v216 = *(a2 + 736);
    v86 = *(a2 + 660);
    v87 = *(a2 + 1024);
    v88 = *(a2 + 1028);
    v220 = *(a2 + 656);
    v89 = v220 + ((*(a2 + 872) - *(a2 + 864)) >> 2);
    v219 = *(a2 + 1353);
    v215 = *(a2 + 1352);
    if (*(a2 + 1352))
    {
      *(a4 + 192) = vaddw_u32(vdupq_n_s64(v74), *(a2 + 628));
    }

    if (v219)
    {
      *(a4 + 224) = v74 + *(a2 + 648);
    }

    v218 = 8 * v89;
    v90 = v84 + v83;
    if (v88 + v87)
    {
      *(a4 + 288) = v218 + v74 + 4 * (v90 + ((v82 >> 1) & 0xFFFFFFFE));
    }

    v217 = v90;
    if (v220 == v85)
    {
      v91 = 0;
      v92 = v82 >> 2;
      if (!v85)
      {
        goto LABEL_127;
      }

      goto LABEL_123;
    }

    if (v73)
    {
      v93 = *(a2 + 712);
      v94 = *(a2 + 720);
      if (v93 != v94)
      {
        v95 = v75;
        do
        {
          v96 = *v93++;
          *v95++ = *(a4 + 8 * v96);
        }

        while (v93 != v94);
      }

      if (!*(a2 + 1160))
      {
LABEL_104:
        v108 = (v216 + 3) & 0xFFFFFFFC;
        if (v215)
        {
          v109 = *(a2 + 1312);
          if (v109 >= 4)
          {
            v110 = v109 >> 2;
            v111 = *(a2 + 752);
            v112 = (v75 + 8 * v108);
            do
            {
              v113 = *v111;
              v111 += 4;
              v114 = (v73 + 496 + 8 * v113);
              v115 = v114[1];
              *v112 = *v114;
              v112[1] = v115;
              v112 += 2;
              --v110;
            }

            while (v110);
          }

          v108 += v109;
        }

        else
        {
          v109 = 0;
        }

        if (v219)
        {
          v118 = *(a2 + 1316);
          v119 = (v75 + 8 * v108);
          v120 = v73 + 16880;
          if (*(a2 + 2192) == 1)
          {
            if (v118)
            {
              v203 = (*(a2 + 752) + 4 * v109);
              do
              {
                v204 = *v203++;
                *v119++ = *(v120 + 8 * v204);
                --v118;
              }

              while (v118);
            }
          }

          else if (v118 >= 4)
          {
            v121 = v118 >> 2;
            v122 = (*(a2 + 752) + 4 * v109);
            do
            {
              v123 = *v122;
              v122 += 4;
              *v119 = *(v120 + 8 * v123);
              v119 += 4;
              --v121;
            }

            while (v121);
          }
        }

        v91 = 8 * (v220 - v85);
        v92 = v82 >> 2;
        if (!v85)
        {
LABEL_127:
          if (v86)
          {
            *(a4 + 16) = v74 + v91 + 8;
            v128 = *(a2 + 824);
            v129 = *(a2 + 832);
            if (v128 != v129)
            {
              v130 = (v75 + v91);
              do
              {
                v131 = *v128++;
                *v130++ = *(a4 + 4 * v131);
              }

              while (v128 != v129);
            }

            v91 += 4 * v86;
          }

          if (v92)
          {
            v132 = v218 + 4 * v217;
            v133 = (v75 + (v132 & 0xFFFFFFFC));
            v134 = *(a2 + 1120);
            do
            {
              v135 = *v134++;
              *v133++ = *(v73 + 16880 + 8 * v135);
              LODWORD(v92) = v92 - 1;
            }

            while (v92);
            v91 = v132 + 8 * (v82 >> 2);
          }

          if (v88 == -v87)
          {
            goto LABEL_152;
          }

          v210 = v78;
          v212 = v74;
          v214 = v77;
          v136 = (v75 + v91);
          v137 = 4 * *(a2 + 1024);
          memcpy(v136, (v73 + 4 * *(a2 + 1020)), v137);
          v226 = a4;
          v227 = v73;
          v138 = &unk_2A23F9BF0;
          *&v229 = &unk_2A23F9BF0;
          *(&v229 + 1) = &v226;
          *&v230 = &v227;
          *(&v230 + 1) = &v229;
          v139 = *(a2 + 1056);
          v140 = *(a2 + 1064);
          if (v139 == v140)
          {
            v148 = &v229;
            v73 = a3;
            v78 = v210;
          }

          else
          {
            v141 = 0;
            v142 = &v136[v137];
            do
            {
              v228 = *v139;
              if (!*(&v230 + 1))
              {
                goto LABEL_202;
              }

              v144 = (*(**(&v230 + 1) + 48))(*(&v230 + 1), &v228);
              v145 = *(v139 + 1);
              v146 = *(v139 + 2);
              if (v145 == v146)
              {
                v143 = v141;
              }

              else
              {
                do
                {
                  v147 = *v145++;
                  v143 = (v141 + 1);
                  *&v142[4 * v141] = *(v144 + 4 * v147);
                  LODWORD(v141) = v141 + 1;
                }

                while (v145 != v146);
              }

              v139 += 8;
              v141 = v143;
            }

            while (v139 != v140);
            v148 = *(&v230 + 1);
            if (*(&v230 + 1) != &v229)
            {
              v73 = a3;
              v78 = v210;
              if (*(&v230 + 1))
              {
                (*(**(&v230 + 1) + 40))();
              }

              goto LABEL_151;
            }

            v138 = **(&v230 + 1);
            v73 = a3;
            v78 = v210;
          }

          v138[4](v148);
LABEL_151:
          v74 = v212;
          v77 = v214;
LABEL_152:
          v149 = &v77[v78];
          v227 = 0;
          v231 = v239;
          v232 = v240;
          v233 = v241;
          v229 = v237;
          v230 = v238;
          v150 = v77;
          AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::emitUscStateLoad<LdShdrTransformFragment<AGX::HAL300::Encoders>>(*(a2 + 2392), v77, &v227, v74, v73, a4, &v229);
          v151 = *v223;
          if (*v223)
          {
            v152 = v227;
            v153 = *(a2 + 2800);
            LODWORD(v154) = *(v151 + 2);
            v155 = v154 + 1;
            if (*(v151 + 3) >= (v154 + 1))
            {
              v158 = *v151;
            }

            else
            {
              v225 = *(a2 + 2800);
              v156 = -__clz(v154);
              v157 = malloc_type_malloc(40 << (v156 & 0x1F), 0x10800400D7C94D2uLL);
              v158 = v157;
              v159 = 1 << v156;
              v154 = *(v151 + 2);
              if (v154)
              {
                memcpy(v157, *v151, 40 * v154);
                free(*v151);
                LODWORD(v154) = *(v151 + 2);
              }

              v153 = v225;
              *(v151 + 3) = v159;
              *v151 = v158;
            }

            v160 = &v158[40 * v154];
            *v160 = 3;
            *(v160 + 1) = v149;
            *(v160 + 2) = v150;
            *(v160 + 3) = (v152 - v150);
            *(v160 + 8) = v153;
            *(v151 + 2) = v155;
          }

          v161 = *(a2 + 3752);
          v162 = *(a2 + 3764);
          v163 = *(a2 + 3776);
          v164 = (v149 >> 16) & 0xFFC00000 | *(a2 + 3768) & 0x3FFFFF;
          v165 = *(a2 + 3824);
          v166.i32[0] = *(v165 + 36);
          v166.i32[1] = *(v165 + 32);
          v167 = vbsl_s8(0x3FFFF0000, *(a2 + 3756), v166);
          v168 = v221[126];
          v169 = v221[128] + v168;
          v221[126] = v168 + 28;
          *v168 = v161;
          *(v168 + 4) = v167;
          *(v168 + 12) = v162;
          *(v168 + 16) = v164;
          *(v168 + 20) = v149 >> 6;
          *(v168 + 24) = v163;
          v170 = v221[6];
          *v170 = __ROR8__(v169, 32) & 0xFFFFFFFC000000FFLL | 0x700;
          v221[6] = v170 + 1;
          a6 = v222;
          goto LABEL_160;
        }

LABEL_123:
        if (v85 >= 4)
        {
          v124 = *(a2 + 2920);
          v125 = v85 >> 2;
          v126 = (v75 + v91);
          do
          {
            v127 = *v124;
            v124 += 4;
            *v126 = v127;
            v126 += 4;
            --v125;
          }

          while (v125);
        }

        v91 += 8 * v85;
        goto LABEL_127;
      }

LABEL_103:
      v107 = *(a2 + 1144);
      if (v107 != (a2 + 1152))
      {
        do
        {
          *(v75 + 4 * *(v107 + 7)) |= *(v107 + 8);
          v116 = v107[1];
          if (v116)
          {
            do
            {
              v117 = v116;
              v116 = *v116;
            }

            while (v116);
          }

          else
          {
            do
            {
              v117 = v107[2];
              v81 = *v117 == v107;
              v107 = v117;
            }

            while (!v81);
          }

          v107 = v117;
        }

        while (v117 != (a2 + 1152));
      }

      goto LABEL_104;
    }

    v206 = v87;
    v207 = v88;
    v209 = v78;
    v211 = v74;
    v213 = v77;
    v227 = a4;
    v97 = &unk_2A23F9BA8;
    *&v229 = &unk_2A23F9BA8;
    *(&v229 + 1) = &v227;
    *(&v230 + 1) = &v229;
    v98 = *(a2 + 688);
    v99 = *(a2 + 696);
    v208 = v82;
    v205 = v86;
    if (v98 == v99)
    {
      v106 = &v229;
      v73 = a3;
      v78 = v209;
    }

    else
    {
      v100 = 0;
      do
      {
        LODWORD(v226) = *v98;
        if (!*(&v230 + 1))
        {
LABEL_202:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v102 = (*(**(&v230 + 1) + 48))(*(&v230 + 1), &v226);
        v103 = *(v98 + 8);
        v104 = *(v98 + 16);
        if (v103 == v104)
        {
          v101 = v100;
        }

        else
        {
          do
          {
            v105 = *v103++;
            v101 = (v100 + 1);
            *(v75 + 8 * v100) = *(v102 + 8 * v105);
            LODWORD(v100) = v100 + 1;
          }

          while (v103 != v104);
        }

        v98 += 32;
        v100 = v101;
      }

      while (v98 != v99);
      v106 = *(&v230 + 1);
      if (*(&v230 + 1) != &v229)
      {
        v73 = a3;
        v78 = v209;
        if (*(&v230 + 1))
        {
          (*(**(&v230 + 1) + 40))();
        }

LABEL_102:
        v74 = v211;
        v77 = v213;
        v82 = v208;
        v87 = v206;
        v88 = v207;
        v86 = v205;
        if (!*(a2 + 1160))
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      v97 = **(&v230 + 1);
      v73 = a3;
      v78 = v209;
    }

    v97[4](v106);
    goto LABEL_102;
  }

LABEL_160:
  v171 = *(a5 + 3176);
  v172 = *(a1 + 112);
  v173 = v172[126];
  v174 = v172[128] + v173;
  v172[126] = v173 + 20;
  *v173 = 203948032;
  *(v173 + 4) = v171 & 0xF1C00FF;
  *(v173 + 8) = 0;
  *(v173 + 16) = HIDWORD(v171);
  v175 = v172[6];
  *v175 = __ROR8__(v174, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v172[6] = v175 + 1;
  if (a6 == 3)
  {
    v176 = 615841792;
  }

  else
  {
    v176 = 613744640;
  }

  v177 = *(a1 + 112);
  v178 = v177[126];
  v179 = v177[128] + v178;
  v177[126] = v178 + 40;
  *v178 = 0x380000000E1;
  *(v178 + 8) = v176 & 0xFFFFF3FF | ((a6 & 3) << 10);
  *(v178 + 12) = xmmword_29D2F25C0;
  *(v178 + 28) = 0;
  *(v178 + 36) = 0;
  v180 = __ROR8__(v179, 32);
  v181 = v177[6];
  *v181 = v180 & 0xFFFFFFFC000000FFLL | 0xA00;
  v177[6] = v181 + 1;
  v182 = *(a1 + 96);
  v234 = 0;
  v183 = v182[446];
  *(&v235 + 4) = vmul_f32(vcvt_f32_u32(v183), 0x3F0000003F000000);
  LODWORD(v235) = DWORD1(v235);
  *(&v235 + 3) = -*(&v235 + 2);
  v236 = 0x3F80000000000000;
  *(&v229 + 4) = -COERCE_DOUBLE(0x8000000080000000);
  if (v183.i32[0] && v183.i32[1])
  {
    DWORD1(v229) = ((v183.i32[0] - 1) >> 5) & 0x3FF | 0x80000000;
    DWORD2(v229) = ((v183.i32[1] - 1) >> 5) & 0x3FF;
  }

  v184 = *(a1 + 112);
  v185 = v184[126];
  v186 = v184[128];
  v184[126] = v185 + 40;
  *v185 = 12288;
  *(v185 + 4) = *(&v229 + 4);
  *(v185 + 12) = 0;
  *(v185 + 16) = v235;
  *(v185 + 32) = v236;
  v187 = v184[6];
  *v187 = __ROR8__(v186 + v185, 32) & 0xFFFFFFFC000000FFLL | 0xA00;
  v184[6] = v187 + 1;
  v188 = *(a1 + 112);
  v189 = v188[126];
  v190 = v188[128] + v189;
  v188[126] = v189 + 20;
  *v189 = 0x20000840001;
  *(v189 + 8) = 0;
  *(v189 + 12) = 192;
  v191 = __ROR8__(v190, 32);
  v192 = v188[6];
  *v192 = v191 & 0xFFFFFFFC000000FFLL | 0x500;
  v188[6] = v192 + 1;
  *&v193 = vand_s8(vadd_s32(vadd_s32(*(*(a1 + 96) + 3568), *(*(a1 + 96) + 4932)), -1), vand_s8(vneg_s32(*(*(a1 + 96) + 4932)), 0xFFFF0000FFFFLL));
  *(&v193 + 1) = 0x3F80000000000000;
  v194 = *(a1 + 112);
  v195 = *(v194 + 304);
  v196 = v195 + *(v194 + 320);
  *(v194 + 304) = v195 + 1;
  *v195 = v193;
  LODWORD(v194) = v196 & 0xFFFFFFFC;
  v197 = (v196 >> 16) & 0xFFFF0000;
  v198 = *(a1 + 112);
  v199 = v198[42];
  v200 = v199 + v198[44];
  v198[42] = v199 + 5;
  *v199 = 768;
  v199[3] = v197;
  v199[4] = v194;
  v201 = v198[6];
  *v201 = __ROR8__(v200, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v198[6] = v201 + 1;
}