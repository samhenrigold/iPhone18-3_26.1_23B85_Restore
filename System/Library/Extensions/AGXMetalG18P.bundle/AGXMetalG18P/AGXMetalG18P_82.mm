uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindVertexBufferResource(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if ((a2 - 59) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[(a2 - 59)];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | ((a2 - 47) < 2)) || *(result + 8 * (a2 - 31) + 8488))
  {
    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v6 = *(result + 8488 + 8 * (a2 - 31));
      if (v6)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), v6, 0, a2, a3);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), 0, 0, a2, a3);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindAllResources(void *result, int a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = *(v4 + 2400);
  v6 = *(v4 + 2408);
  v7 = *(result[1] + 7688);
  if (*(v7 + 789) == 1)
  {
    v8 = *(v7 + 1968);
    v9 = *(v7 + 1984);
    v11 = *(v7 + 3632) == 0;
    v10 = -3;
    if (v11)
    {
      v10 = -1;
    }

    v11 = v8 == 0;
    v12 = 0xF7FFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = -1;
    }

    v13 = 0xE7FFFFFFFFFFFFFFLL;
    if (v11)
    {
      v13 = 0xEFFFFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = -1;
    v10 = -1;
  }

  v14 = v5 & v12 & 0xFFFFFFFF80000000;
  v46 = v6 & v10;
  for (i = v14; ; v14 = i)
  {
    if (v14)
    {
      v15 = __clz(__rbit64(v14));
      p_i = &i;
      v17 = v15;
      goto LABEL_17;
    }

    v14 = v46;
    if (!v46)
    {
      break;
    }

    LODWORD(v15) = __clz(__rbit64(v46));
    v17 = v15 | 0x40;
    p_i = &v46;
LABEL_17:
    *p_i = v14 & ~(1 << v15);
    v45 = *(v3[4] + 1360);
    result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(v3, v17, (*(&v45 | (8 * (v17 > 0x3F))) >> v17) & 1, a2);
  }

  v18 = v3[130];
  v19 = v3[4];
  if (v18)
  {
    v20 = *(v18 + 40);
    v21 = *(v19 + 2416) & *(v18 + 32);
    v44 = *(v19 + 2424) & v20;
    *&v45 = v21;
    while (1)
    {
      if (v21)
      {
        v22 = &v45;
      }

      else
      {
        v21 = v44;
        if (!v44)
        {
          break;
        }

        v22 = &v44;
      }

      *v22 = v21 & (v21 - 1);
      v21 = v45;
    }
  }

  v23 = *(v3[1] + 7664);
  *(v23 + 575) |= *(v19 + 1349);
  *(v23 + 578) |= *(v19 + 1354);
LABEL_29:
  v24 = v3[5];
  if (!v24)
  {
    return result;
  }

  v25 = *(v24 + 2400);
  v26 = *(v24 + 2408);
  v27 = *(v3[1] + 7688);
  if (*(v27 + 789) == 1)
  {
    v28 = *(v27 + 2280);
    v29 = *(v27 + 2296);
    v11 = *(v27 + 3640) == 0;
    v30 = -3;
    if (v11)
    {
      v30 = -1;
    }

    v31 = v28 == 0;
    v32 = 0xF7FFFFFFFFFFFFFFLL;
    if (v31)
    {
      v32 = -1;
    }

    v33 = 0xE7FFFFFFFFFFFFFFLL;
    if (v31)
    {
      v33 = 0xEFFFFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v32 = v33;
    }
  }

  else
  {
    v32 = -1;
    v30 = -1;
  }

  v34 = v25 & v32 & 0xFFFFFFFF80000000;
  v46 = v26 & v30;
  i = v34;
  while (2)
  {
    if (v34)
    {
      v35 = __clz(__rbit64(v34));
      v36 = &i;
      v37 = v35;
LABEL_45:
      *v36 = v34 & ~(1 << v35);
      v45 = *(v3[5] + 1360);
      result = AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindMeshBufferResource(v3, v37, (*(&v45 | (8 * (v37 > 0x3F))) >> v37) & 1, a2);
      v34 = i;
      continue;
    }

    break;
  }

  v34 = v46;
  if (v46)
  {
    LODWORD(v35) = __clz(__rbit64(v46));
    v37 = v35 | 0x40;
    v36 = &v46;
    goto LABEL_45;
  }

  v38 = v3[259];
  v39 = v3[5];
  if (v38)
  {
    v40 = *(v38 + 40);
    v41 = *(v39 + 2416) & *(v38 + 32);
    v44 = *(v39 + 2424) & v40;
    *&v45 = v41;
    while (1)
    {
      if (v41)
      {
        v42 = &v45;
      }

      else
      {
        v41 = v44;
        if (!v44)
        {
          break;
        }

        v42 = &v44;
      }

      *v42 = v41 & (v41 - 1);
      v41 = v45;
    }
  }

  v43 = *(v3[1] + 7664);
  *(v43 + 575) |= *(v39 + 1349);
  *(v43 + 578) |= *(v39 + 1354);
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindFragmentBufferResource(uint64_t result, uint64_t a2, int a3, int a4)
{
  if ((a2 - 59) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[(a2 - 59)];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | ((a2 - 47) < 2)) || *(result + 8 * (a2 - 31) + 9760))
  {
    if (a3)
    {
      v6 = 12;
    }

    else
    {
      v6 = 4;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 9760 + 8 * (a2 - 31));
      if (v7)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), v7, 1u, a2, v6);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), 0, 1u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t std::function<AGX::HAL300::HWTessellationContextB * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(v4, v5, v6, v7);
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(uint64_t result, uint64_t a2, int a3, int a4)
{
  if ((a2 - 59) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[(a2 - 59)];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | ((a2 - 47) < 2)) || *(result + 8 * (a2 - 31) + 1056))
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 1056 + 8 * (a2 - 31));
      if (v7)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 6u, a2, v6);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), 0, 6u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindMeshBufferResource(uint64_t result, uint64_t a2, int a3, int a4)
{
  if ((a2 - 59) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_29D2F74F0[(a2 - 59)];
  }

  v5 = a2 - 47;
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | ((a2 - 47) < 2)) || *(result + 8 * (a2 - 31) + 2088))
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (v5 > 0x16 || ((1 << v5) & 0x6C77B3) == 0)
    {
      v7 = *(result + 2088 + 8 * (a2 - 31));
      if (v7)
      {
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 7u, a2, v6);
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), 0, 7u, a2, v6);
      }
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

double AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVisibilityClear(uint64_t a1)
{
  *(a1 + 7248) = 0;
  *(a1 + 7224) = *(a1 + 72);
  v2 = *(*(*(a1 + 1872) + 848) + 7000);
  v3 = *(*(a1 + 2392) + 4912);
  if (v3)
  {
    v3 = *(v3 + *MEMORY[0x29EDC5638] + 8);
  }

  v25[0] = v3;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v2, v25);
  v4 = *(a1 + 1032);
  v5 = *(a1 + 1048) + v4;
  *(a1 + 1032) = v4 + 20;
  *v4 = xmmword_29D2F24F0;
  *(v4 + 16) = 0;
  v6 = *(a1 + 72);
  *v6 = __ROR8__(v5, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v6 + 1;
  v7 = *(a1 + 1032);
  v8 = *(a1 + 1048) + v7;
  *(a1 + 1032) = v7 + 28;
  *v7 = xmmword_29D2F1780;
  *(v7 + 16) = 0xE0000000E000000;
  v9 = __ROR8__(v8, 32);
  *(v7 + 24) = 0;
  v10 = *(a1 + 72);
  *v10 = v9 & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v10 + 1;
  v11 = *(v2 + 3144);
  v12 = *(a1 + 1032);
  v13 = *(a1 + 1048) + v12;
  *(a1 + 1032) = v12 + 20;
  *v12 = 203948032;
  *(v12 + 4) = v11 & 0xF1C00FF;
  *(v12 + 8) = 0;
  *(v12 + 16) = HIDWORD(v11);
  v14 = *(a1 + 72);
  *v14 = __ROR8__(v13, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v14 + 1;
  v15 = *(*(a1 + 48) + 768) + *(*(a1 + 48) + 792) - *(*(a1 + 48) + 776);
  LODWORD(v10) = *(a1 + 7248);
  LODWORD(v14) = ((*(*(a1 + 24) + 384) + 3) >> 2) - 1;
  v16 = *(a1 + 1032);
  v17 = *(a1 + 1048) + v16;
  *(a1 + 1032) = v16 + 12;
  *v16 = 8650754;
  *(v16 + 8) = 131200;
  v18 = __ROR8__(v17, 32);
  v19 = *(a1 + 72);
  *v19 = v18 & 0xFFFFFFFC000000FFLL | 0x300;
  *(a1 + 72) = v19 + 1;
  v20 = *(a1 + 1032);
  v21 = v20 + *(a1 + 1048);
  *(a1 + 1032) = v20 + 1;
  *v20 = 0x48000800000;
  v22 = __ROR8__(v21, 32) & 0xFFFFFFFC000000FFLL | 0x200;
  v23 = *(a1 + 72);
  *v23 = v22;
  *(v23 + 8) = 0xFFFF40000001;
  *(v23 + 20) = v15;
  *(v23 + 24) = v10;
  *&result = 1;
  *(v23 + 28) = 1;
  *(v23 + 36) = v14;
  *(v23 + 40) = BYTE5(v15);
  *(v23 + 16) = BYTE4(v15) | 0x61F30300;
  *(a1 + 72) = v23 + 44;
  ++*(a1 + 1940);
  *(a1 + 7232) = v23 + 16;
  *(a1 + 7240) = *(a1 + 88) + v23 + 44;
  *(a1 + 1956) = *(a1 + 7248) + *(a1 + 1956) - 1;
  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVRRPatchDraw(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v32 = xmmword_29D2F2500;
  bzero(v33, 0x2A4uLL);
  *&v33[700] = 0u;
  v34 = 1065353216;
  v35 = 0x100000001;
  v7 = *(v6 + 176);
  v8 = v7 + 8;
  if ((v7 + 8) > *(v6 + 160))
  {
    v30 = *(v6 + 168);
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v6 + 24, 3, 0))
    {
      goto LABEL_3;
    }

    v8 = *(v6 + 168) + v7 - v30 + 8;
    if (v8 > *(v6 + 160))
    {
      abort();
    }
  }

  *(v6 + 176) = v8;
LABEL_3:
  v9 = *(*(v6 + 10536) + 64);
  v36[0] = v3;
  v36[1] = *(v9 + 49432);
  v31 = 0;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>((v6 + 2120), (v6 + 24), v5, v36, &v32, 1, &v31);
  v10 = *(v6 + 1032);
  v11 = *(v6 + 1048) + v10;
  *(v6 + 1032) = v10 + 20;
  *v10 = xmmword_29D2F2510;
  *(v10 + 16) = 0;
  v12 = *(v6 + 72);
  *v12 = __ROR8__(v11, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(v6 + 72) = v12 + 1;
  v13 = *(v6 + 1032);
  v14 = *(v6 + 1048) + v13;
  *(v6 + 1032) = v13 + 28;
  *v13 = xmmword_29D2F1780;
  *(v13 + 16) = 0xE0000000E000000;
  *(v13 + 24) = 0;
  v15 = __ROR8__(v14, 32);
  v16 = *(v6 + 72);
  *v16 = v15 & 0xFFFFFFFC000000FFLL | 0x700;
  *(v6 + 72) = v16 + 1;
  v17 = *(v5 + 4112);
  v18 = *(v6 + 1032);
  v19 = *(v6 + 1048) + v18;
  *(v6 + 1032) = v18 + 20;
  *v18 = 203948032;
  *(v18 + 4) = v17 & 0xF1C00FF;
  *(v18 + 8) = 0;
  *(v18 + 16) = HIDWORD(v17);
  v20 = *(v6 + 72);
  *v20 = __ROR8__(v19, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(v6 + 72) = v20 + 1;
  v21 = *(v6 + 1032);
  v22 = *(v6 + 1048) + v21;
  *(v6 + 1032) = v21 + 12;
  *v21 = 8650754;
  v23 = __ROR8__(v22, 32);
  *(v21 + 8) = 131200;
  v24 = *(v6 + 72);
  *v24 = v23 & 0xFFFFFFFC000000FFLL | 0x300;
  *(v6 + 72) = v24 + 1;
  v25 = *(v6 + 1032);
  v26 = v25 + *(v6 + 1048);
  *(v6 + 1032) = v25 + 1;
  *v25 = 0x48000800000;
  v27 = __ROR8__(v26, 32);
  v28 = *(v6 + 72);
  *v28 = v27 & 0xFFFFFFFC000000FFLL | 0x200;
  *(v28 + 8) = 0xFFFF40000001;
  *(v28 + 16) = xmmword_29D2F2520;
  result = v28 + 16;
  ++*(v6 + 1940);
  ++*(v6 + 10552);
  *(v28 + 32) = 536871264;
  *(v6 + 72) = v28 + 36;
  *(v6 + 10472) |= 0x5F500000000001uLL;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitSWEndOfTileIfNeeded(uint64_t a1)
{
  v7 = 0;
  AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatch((a1 + 4032), *(a1 + 7664), &v7, (a1 + 1940));
  if (v7 == 1)
  {
    if (*(*(a1 + 2392) + 4957) & 1) != 0 || (*(a1 + 5396))
    {
      goto LABEL_10;
    }

    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(a1, (a1 + 10472), 0, 1);
    v7 = 0;
    v2 = *(a1 + 7248);
    if (v2 == 1)
    {
      v5 = *(a1 + 456);
      *v5 = 2 * *(a1 + 7252);
      *(a1 + 456) = v5 + 1;
      *(a1 + 7248) = 2;
      *(*(a1 + 7232) + 8) = 2;
    }

    else if (!v2)
    {
      v3 = *(a1 + 7224);
      if (v3)
      {
        v4 = *(a1 + 7240);
        *v3 = BYTE4(v4) | 0x80000000;
        v3[1] = v4;
        *(a1 + 7224) = 0;
        *(a1 + 7240) = 0;
        ++*(a1 + 1952);
      }
    }

    AGX::RenderTileDispatchSWEndOfTile<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatch((a1 + 4032), *(a1 + 7664), &v7, (a1 + 1940));
    if (v7)
    {
LABEL_10:
      v6 = *(a1 + 1968) - *(a1 + 1984);
      *(v6 + 140) = 1;
      if ((*(v6 + 136) & 4) != 0)
      {
        **(a1 + 8) = 1;
      }
    }
  }

  *(a1 + 10472) |= 0x5F700000000004uLL;
}

void *AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::setMeshProgramBufferBytes(void *a1, const void *a2, size_t a3, unsigned int a4)
{
  v6 = a3 + 15;
  v7 = a1[1];
  v8 = (a3 + 15) | 0xF;
  v9 = v7[21] + v8;
  if (v9 <= v7[20])
  {
LABEL_2:
    v7[22] = v9;
    goto LABEL_3;
  }

  v20 = a2;
  v21 = a3;
  v22 = AGX::DataBufferAllocator<44ul>::growNoInline((v7 + 3), 3, 0);
  a2 = v20;
  a3 = v21;
  if (v22)
  {
    v9 = v7[21] + v8;
    if (v9 > v7[20])
    {
      abort();
    }

    goto LABEL_2;
  }

LABEL_3:
  v10 = v6 & 0xFFFFFFFFFFFFFFF0;
  v11 = a1[1];
  v12 = ((*(v11 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v11 + 184);
  *(v11 + 168) = &v12[v10];
  result = memcpy(v12, a2, a3);
  v15 = a1[1];
  v16 = *(*(v15 + 48) + 224);
  v17 = *MEMORY[0x29EDC5638];
  *(v15 + 8 * (a4 > 0x3F) + 10280) |= 1 << a4;
  *(v15 + 10472) |= 0x4000000uLL;
  if (a4 > 0x1E)
  {
    v19 = a4 - 31;
    v18 = (a1[260] + 8 * v19 + 40);
  }

  else
  {
    v18 = (*(a1[259] + 24) + *(a1[259] + 4) + 8 * a4);
    v19 = a4 - 31;
  }

  *v18 = &v12[v13];
  a1[v19 + 261] = v16 + v17;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWarpedThreads(uint64_t a1, int64x2_t *a2, int64x2_t *a3, uint64_t a4, double a5, double a6, float a7, double a8, double a9, __n128 a10)
{
  v10 = a4;
  v90[6] = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 10536);
  if (!v11 || ((v12 = *(*(a1 + 2392) + 6328), v13 = *(v11 + 64), v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    v86 = *a2;
    v87 = a2[1].i64[0];
    v15 = &v86;
    v16 = 1;
LABEL_8:
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsImpl<false>(a1, v15->i8, a3, v16, v10);
    return;
  }

  v17 = vcvt_f32_f64(vcvtq_f64_u64(*a3));
  v18 = vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(*(a3 + 24), *a3)));
  v19 = *(v13 + 16);
  v20 = v19 >= 2 && (a4 & 0x100000000) == 0;
  v21 = a1;
  if (!v20)
  {
    v22 = *(v13 + 49320);
    v23 = a3;
    if ((v22 & 1) == 0)
    {
      v30 = a2;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v32.i32[1] = v31;
      v76 = v32;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v17 = v76;
      a2 = v30;
      a1 = v21;
      v18 = __PAIR64__(v34, v33);
    }

    v35 = vrndm_f32(v17);
    v36 = vrndm_f32(v18);
    v87 = 0;
    v37 = vcvt_u32_f32(vrndm_f32(vbsl_s8(vceq_f32(vsub_f32(v17, v35), 0x3F0000003F000000), v35, v17)));
    v38.i64[0] = v37.u32[0];
    v38.i64[1] = v37.u32[1];
    v86 = v38;
    v88 = vsubl_u32(vcvt_u32_f32(vrndp_f32(vbsl_s8(vceq_f32(vsub_f32(v18, v36), 0x3F0000003F000000), v36, v18))), v37);
    v89 = 0;
    v12 = 1;
    if (v22)
    {
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v24 = *(v13 + 49320);
  if (v24)
  {
    v25 = vcvt_u32_f32(v17);
    v26.i64[0] = v25.u32[0];
    v26.i64[1] = v25.u32[1];
    v27 = v26;
    v28 = vsubl_u32(vcvt_u32_f32(v18), v25);
    if (v12 < 2)
    {
      v29 = 0;
LABEL_29:
      v23 = a3;
      v52 = v12 - v29;
      v53 = &v88 + 3 * v29;
      do
      {
        *(v53 - 24) = v27;
        v53[-1].i64[1] = 0;
        *v53 = v28;
        v53[1].i64[0] = 0;
        v53 += 3;
        --v52;
      }

      while (v52);
      goto LABEL_31;
    }

    v29 = v12 & 0xFFFFFFFE;
    v50 = v90;
    v51 = v29;
    do
    {
      *(v50 - 3) = v27;
      *v50 = v27;
      *(v50 - 4) = 0;
      v50[2] = 0;
      *(v50 - 3) = v28;
      *(v50 + 3) = v28;
      *(v50 - 1) = 0;
      v50[5] = 0;
      v50 += 12;
      v51 -= 2;
    }

    while (v51);
    if (v29 != v12)
    {
      goto LABEL_29;
    }

    v23 = a3;
  }

  else
  {
    v23 = a3;
    v39 = a2;
    v40 = 0;
    v41 = &v88;
    do
    {
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v43.i32[1] = v42;
      v77 = v43;
      AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getWarpedCoordinate();
      v45.i32[1] = v44;
      v46 = vrndm_f32(v77);
      v47 = vrndm_f32(v45);
      v41[-1].i64[1] = 0;
      v48 = vcvt_u32_f32(vrndm_f32(vbsl_s8(vceq_f32(vsub_f32(v77, v46), 0x3F0000003F000000), v46, v77)));
      v49.i64[0] = v48.u32[0];
      v49.i64[1] = v48.u32[1];
      *(v41 - 24) = v49;
      *v41 = vsubl_u32(vcvt_u32_f32(vrndp_f32(vbsl_s8(vceq_f32(vsub_f32(v45, v47), 0x3F0000003F000000), v47, v45))), v48);
      v41[1].i64[0] = 0;
      ++v40;
      v41 += 3;
    }

    while (v12 != v40);
    a1 = v21;
    a2 = v39;
    if (!v24)
    {
LABEL_24:
      v83 = *a2;
      v84 = a2[1].i64[0];
      v15 = &v83;
      a3 = &v86;
      v16 = v12;
      goto LABEL_8;
    }
  }

LABEL_31:
  v82 = 0;
  v54 = *(a1 + 744) + 56;
  if (v54 > *(a1 + 736))
  {
    v78 = a2;
    v69 = AGX::DataBufferAllocator<44ul>::growNoInline(v21 + 24, 21, 0);
    a2 = v78;
    v70 = v69;
    a1 = v21;
    if (v70)
    {
      v71 = *(v21 + 744) + 56;
      if (v71 > *(v21 + 736))
      {
        abort();
      }

      *(v21 + 752) = v71;
      if (!*(v21 + 7328))
      {
        v72 = *(v21 + 7312);
        if (v72)
        {
          v73 = *(v21 + 7336);
          *v72 = BYTE4(v73) | 0x80000000;
          v72[1] = v73;
          *(v21 + 7312) = 0;
          *(v21 + 7336) = 0;
          ++*(v21 + 1952);
        }
      }

      v74 = *(*(*(*(*(v21 + 1872) + 848) + 17136) + 8) + 2728);
      do
      {
        v74 &= ~(1 << __clz(__rbit32(v74)));
        IOGPUResourceListAddResource();
      }

      while (v74);
      AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((v21 + 24), *(*(*(*(v21 + 1872) + 848) + 17136) + 8));
      *(v21 + 7328) = 0;
      *(v21 + 7312) = *(v21 + 72);
      v75 = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVRRPatchDraw(v21);
      a1 = v21;
      *(v21 + 7320) = v75;
      *(v21 + 7336) = *(v21 + 88) + *(v21 + 72);
      a2 = v78;
    }
  }

  else
  {
    *(a1 + 752) = v54;
  }

  v55 = a1 + 2060;
  v79 = *a2;
  v56 = a2;
  v80 = a2[1].i64[0];
  *(a1 + 5401) = 1;
  v85 = 0;
  *(a1 + 2060) |= 0x2000000020uLL;
  v57 = *(a1 + 3952);
  AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsWithIndirectParameters(v21 + 2664, &v79, &v85, (v21 + 1940), *(a1 + 7664), &v86, v12, v10, &v82, v81);
  v58 = v21;
  if (v57 && *(*(v21 + 7688) + 1884))
  {
    *(*(v21 + 7664) + 1612) |= *(v55 + 3164) ^ 1;
  }

  if (v85 == 1)
  {
    if (*(*(v21 + 2392) + 4957) & 1) != 0 || (*(v55 + 3336) & 1) != 0 || (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(v21, (v21 + 10472), 0, 1), v85 = 0, v83 = v79, v84 = v80, AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsWithIndirectParameters(v21 + 2664, &v83, &v85, (v21 + 1940), *(v21 + 7664), &v86, v12, v10, &v82, v81), v58 = v21, (v85))
    {
      v59 = *(v58 + 1968) - *(v58 + 1984);
      *(v59 + 140) = 1;
      if ((*(v59 + 136) & 4) != 0)
      {
        **(v58 + 8) = 1;
      }
    }
  }

  *(v58 + 11464) |= 0x1000000uLL;
  *(v58 + 10472) |= 0x5F700000000004uLL;
  if ((v10 & 0x100000000) != 0)
  {
    v60 = 1;
  }

  else
  {
    v60 = *(v13 + 16);
    LODWORD(v10) = -1;
  }

  v61 = *(v58 + 2392);
  v62 = *v23;
  v63 = *(&v23[1] + 8);
  v64 = *(v58 + 744);
  *(v58 + 744) = v64 + 56;
  v64->i32[0] = 2;
  v65 = *(v61 + 4932);
  v66 = v82;
  v64->i32[1] = v60;
  v67 = vmovn_s64(*v56);
  v64->i64[1] = v66;
  *v64[1].i8 = v67;
  v64[1].i64[1] = v65;
  v64[2] = vuzp1q_s32(v62, v63);
  v64[3].i32[0] = v10;
  v68 = *(v58 + 7328) + 1;
  *(v58 + 7328) = v68;
  *(*(v58 + 7320) + 4) = v68;
  ++*(v58 + 1956);
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreadsImpl<false>(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = a1 + 2060;
  *(a1 + 5401) = 1;
  v16 = 0;
  *(a1 + 2060) |= 0x2000000020uLL;
  v11 = *(a1 + 3952);
  v14 = *a2;
  v15 = *(a2 + 2);
  result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads((a1 + 2664), &v14, &v16, (a1 + 1940), *(a1 + 7664), a3, a4, a5);
  if (v11 && *(*(a1 + 7688) + 1884))
  {
    *(*(a1 + 7664) + 1612) |= *(v10 + 3164) ^ 1;
  }

  if (v16 == 1)
  {
    if (*(*(a1 + 2392) + 4957) & 1) != 0 || (*(v10 + 3336) & 1) != 0 || (AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(a1, (a1 + 10472), 0, 1), v16 = 0, v14 = *a2, v15 = *(a2 + 2), result = AGX::RenderTileDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchThreads((a1 + 2664), &v14, &v16, (a1 + 1940), *(a1 + 7664), a3, a4, a5), (v16))
    {
      v13 = *(a1 + 1968) - *(a1 + 1984);
      *(v13 + 140) = 1;
      if ((*(v13 + 136) & 4) != 0)
      {
        **(a1 + 8) = 1;
      }
    }
  }

  *(a1 + 11464) |= 0x1000000uLL;
  *(a1 + 10472) |= 0x5F700000000004uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroupsWithIndirectBufferCommon(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *(a1[5] + 3820);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(a1[1], v7);
  v10 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 4);
  v12 = a1[4];
  v13 = *(v12 + 3946);
  if (v13 == 1)
  {
    v14 = *(v12 + 3752);
    v32 = HIDWORD(v14);
    v33 = v14;
    v34 = *(v12 + 3760);
    v36 = v34;
  }

  else
  {
    v34 = 0;
    LODWORD(v32) = 0;
    v33 = 0;
    v14 = v10 | (v9 << 32);
    v36 = v11;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = a4[4];
  v18 = a1[1];
  v19 = v18[21] + 12;
  if (v19 <= v18[20])
  {
LABEL_5:
    v18[22] = v19;
    goto LABEL_6;
  }

  v31 = v17;
  v30 = AGX::DataBufferAllocator<44ul>::growNoInline((v18 + 3), 3, 0);
  v17 = v31;
  if (v30)
  {
    v19 = v18[21] + 12;
    if (v19 > v18[20])
    {
      abort();
    }

    goto LABEL_5;
  }

LABEL_6:
  v20 = a1[1];
  v21 = *(v20 + 168);
  v22 = *(v20 + 184);
  *(v20 + 168) = v21 + 3;
  *v21 = v10;
  v21[1] = v9;
  v21[2] = v11;
  v23 = a1[131];
  *(v23 + 80) = v21 + v22;
  *(v23 + 392) = v21;
  a1[137] = *(*(v20 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v20 + 10184) |= 0x1000000000uLL;
  *(v20 + 10232) |= 0x1000000000uLL;
  *(v20 + 10472) |= 0x30000uLL;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], *(v20 + 7680), a1[130], a1[259], *(v20 + 9744), v8, v15 | (v16 << 32), v17, v14, v36, v20 + 10088, 0);
  v24 = a1[3];
  if (v13)
  {
    ++*(a1[1] + 1940);
    if (v7 == 1)
    {
      v25 = 1879048448;
    }

    else
    {
      v25 = 1879048192;
    }

    v26 = *(v24 + 48);
    if (v7 == 3)
    {
      v25 = 1879049728;
    }

    *v26 = v25;
    *(v26 + 4) = v33;
    *(v26 + 8) = v32;
    *(v26 + 12) = v34;
    *(v26 + 16) = v14;
    *(v26 + 24) = v36;
    v27 = v26 + 28;
  }

  else
  {
    if (v7 == 1)
    {
      v28 = 1912602880;
    }

    else
    {
      v28 = 1912602624;
    }

    ++*(a1[1] + 1940);
    v29 = *(v24 + 48);
    if (v7 == 3)
    {
      v28 = 1912604160;
    }

    *v29 = v28;
    *(v29 + 4) = WORD2(a2);
    *(v29 + 8) = a2 & 0xFFFFFFFC;
    *(v29 + 12) = v14;
    *(v29 + 20) = v36;
    v27 = v29 + 24;
  }

  *(v24 + 48) = v27;
  *(a1[1] + 1960) = 0;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    if (*(*(result + 7688) + 32))
    {
      v2 = *(result + 5296);
      if (v2)
      {
        v3 = *(v2 + 40);
        if (v3)
        {
          if ((*(v3 + 3882) & 4) != 0)
          {
            goto LABEL_6;
          }
        }
      }
    }

    else if ((*(*(result + 7672) + 4114) & 4) != 0)
    {
LABEL_6:
      v4 = *(result + 10545);
      v5 = (result + 6008);
      v6 = *(result + 6008);
      *(result + 6004) &= ~0x800000u;
      goto LABEL_23;
    }

    if (*(result + 7400))
    {
      LODWORD(a2) = 0;
    }

    else
    {
      LODWORD(a2) = 2;
    }
  }

  v7 = *(result + 7376);
  v4 = *(result + 10545);
  v5 = (result + 6008);
  v6 = *(result + 6008);
  *(result + 6004) &= ~0x800000u;
  if (a2 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << a2) & 0x1D8) == 0)
  {
    if (((1 << a2) & 0x26) != 0)
    {
      v10.i32[0] = *v5 & 0xFFFFFFF | 0x10000000;
      v10.i32[1] = HIDWORD(*v5) & 0xFFFFFFF | 0x10000000;
      *v5 = v10;
      v9 = 1;
      if (v6 >> 28 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

LABEL_23:
    v11 = 4u >> v4;
    v10 = vorr_s8((*v5 & 0xFFFFFFF0FFFFFFFLL), vdup_n_s32(4u >> v4 << 28));
    *v5 = v10;
    v9 = 1;
    if (v11 == v6 >> 28)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (v7 == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 == 1;
  if (v7 == 1)
  {
    v8 = 5;
  }

  v10 = vorr_s8(vdup_n_s32(((v7 & 3) << 18) | (v8 << 28)), vand_s8(*v5, vdup_n_s32(0xFF3FFFFu)));
  *v5 = v10;
  if (v8 != v6 >> 28)
  {
LABEL_24:
    if (v10.i32[0] >> 28)
    {
      v12 = (v10.i32[0] >> 28) - 5 > 1;
    }

    else
    {
      v12 = 0;
    }

    *(*(result + 9752) + 904) = 0;
    v13 = *(result + 6040);
    *(result + 5980) = vbsl_s8(0xFFFFFF00FFFFFF00, *(result + 5980), *(result + 7216));
    *(result + 5988) = v13;
    v14 = *(result + 10472);
    if (v12)
    {
      v15 = *(result + 7200) & 3 | *(result + 5968) & 0xFFFEFFFC;
    }

    else
    {
      v15 = *(result + 7200) & 3 | ((*(result + 7208) & 1) << 16) | *(result + 5968) & 0xFFFEFFFC;
    }

    *(result + 5968) = v15;
    *(result + 10472) = v14 | 0x2100000000000;
    if (*(result + 7402) != v9)
    {
      *(result + 10472) = v14 | 0x2100000000000;
      *(result + 7402) = v9;
    }
  }

LABEL_32:
  if (*(result + 7184) == 0.0 && *(result + 7188) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v16 = *(result + 6008) >> 28;
    if (v16)
    {
      v17 = (v16 - 5) >= 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = !v17;
  }

  if (*(result + 7196) != v18)
  {
    if (v18)
    {
      v19 = 0x20000;
    }

    else
    {
      v19 = 0;
    }

    *(result + 5976) = *(result + 5976) & 0xFFFDFFFF | v19;
    *(result + 10472) |= 0x100000000000uLL;
    *(result + 7196) = v18;
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64x2_t *a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v668 = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 8);
  *(v16 + 5401) = 1;
  if (*(a1 + 48) != a9 || *(a1 + 56) != a10)
  {
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    *(v16 + 10472) |= 0xFE0000000uLL;
  }

  if (a2)
  {
    v17 = 192;
  }

  else
  {
    v17 = 128;
  }

  *(v16 + 2060) |= v17;
  v659 = 0;
  v18 = *(*(v16 + 1872) + 848);
  v19 = *(a1 + 2080);
  *&v662 = v19 + 168;
  *(&v662 + 1) = a1 + 2216;
  v663 = (v19 + 176);
  *v664 = a1 + 2224;
  *&v664[8] = v19 + 200;
  *&v664[16] = a1 + 2248;
  if (AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(v18 + 7240, &v662, *(v16 + 1904), &v659))
  {
    if (a14 && (v659 & 1) == 0)
    {
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
    }

    v20 = *(a1 + 8);
    v575 = v20[1219];
    v21 = *(a1 + 2080);
    v576 = v21[21];
    v577 = *(a1 + 1048);
    v577[21] = v576;
    v575[22] = v576;
    v578 = *(a1 + 2216);
    *(a1 + 1184) = v578;
    v20[1236] = v578;
    v20[1273] |= 0x800000000000uLL;
    v20[1279] |= 0x800000000000uLL;
    v20[1285] |= 0x800000000000uLL;
    v20[1291] |= 0x800000000000uLL;
    v20[1297] |= 0x800000000000uLL;
    v20[1303] |= 0x800000000000uLL;
    v579 = v21[22];
    v577[22] = v579;
    v575[23] = v579;
    v580 = *(a1 + 2224);
    *(a1 + 1192) = v580;
    v20[1237] = v580;
    v20[1273] |= 0x1000000000000uLL;
    v20[1279] |= 0x1000000000000uLL;
    v20[1285] |= 0x1000000000000uLL;
    v20[1291] |= 0x1000000000000uLL;
    v20[1297] |= 0x1000000000000uLL;
    v20[1303] |= 0x1000000000000uLL;
    v581 = v21[25];
    v577[25] = v581;
    v575[26] = v581;
    v582 = *(a1 + 2248);
    *(a1 + 1216) = v582;
    v20[1240] = v582;
    v20[1273] |= 0x8000000000000uLL;
    v20[1279] |= 0x8000000000000uLL;
    v20[1285] |= 0x8000000000000uLL;
    v20[1291] |= 0x8000000000000uLL;
    v20[1297] |= 0x8000000000000uLL;
    v20[1303] |= 0x8000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 2080);
  }

  v22 = *(v20[234] + 848);
  *&v662 = v21 + 26;
  *(&v662 + 1) = a1 + 2256;
  v23 = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v22 + 2152, &v662, v20[238]);
  v24 = *(a1 + 8);
  *(*(v24 + 7664) + 2096) = *(*(a1 + 2080) + 208);
  explicit = atomic_load_explicit((*(*(v24 + 1872) + 848) + 9388), memory_order_acquire);
  if (explicit)
  {
    v26 = explicit + 1;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(a1 + 8);
  *(v27[958] + 2104) = v26;
  if (!v23)
  {
    v28 = a3;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (a14)
  {
    IOGPUResourceListAddResource();
    v27 = *(a1 + 8);
  }

  v28 = a3;
  v583 = *(*(a1 + 2080) + 208);
  *(*(a1 + 1048) + 208) = v583;
  *(v27[1219] + 216) = v583;
  v584 = *(a1 + 2256);
  *(a1 + 1224) = v584;
  v27[1241] = v584;
  v27[1273] |= 0x10000000000000uLL;
  v27[1279] |= 0x10000000000000uLL;
  v27[1285] |= 0x10000000000000uLL;
  v27[1291] |= 0x10000000000000uLL;
  v27[1297] |= 0x10000000000000uLL;
  v27[1303] |= 0x10000000000000uLL;
  *(a13 + 384) |= 0x300C030000uLL;
  if (a3)
  {
LABEL_14:
    v29 = v27[958];
    if (!*(v29 + 600))
    {
      if (*(v28 + 2480) == 0)
      {
        v30 = *(v28 + 2112);
      }

      else
      {
        v30 = 1;
      }

      *(v29 + 600) = v30;
    }
  }

LABEL_19:
  if (a2)
  {
    v31 = v27[958];
    if (!*(v31 + 600))
    {
      if (*(a2 + 2480) == 0)
      {
        v32 = *(a2 + 2112);
      }

      else
      {
        v32 = 1;
      }

      *(v31 + 600) = v32;
    }
  }

  v33 = *(v27[234] + 848);
  *&v662 = v27 + 1428;
  *(&v662 + 1) = v27 + 1429;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v33 + 3146, &v662, v27[238]))
  {
    IOGPUResourceListAddResource();
  }

  v34 = *(a1 + 8);
  **(v34 + 11416) = *(v34 + 11424);
  v35 = *(*(v34 + 1872) + 848);
  *&v662 = v34 + 11440;
  *(&v662 + 1) = v34 + 11448;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v35 + 2952, &v662, *(v34 + 1904)))
  {
    IOGPUResourceListAddResource();
  }

  v36 = *(a1 + 8);
  *(v36[1427] + 8) = v36[1430];
  v37 = *(v36[234] + 848);
  *&v662 = *(a1 + 2080) + 232;
  *(&v662 + 1) = a1 + 2280;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v37 + 3728, &v662, v36[238]))
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
    }

    v39 = *(a1 + 2080);
    v585 = *(v39 + 232);
    *(*(a1 + 1048) + 232) = v585;
    v38 = *(a1 + 8);
    *(v38[1219] + 240) = v585;
    v586 = *(a1 + 2280);
    *(a1 + 1248) = v586;
    v38[1244] = v586;
    v38[1273] |= 0x80000000000000uLL;
    v38[1279] |= 0x80000000000000uLL;
    v38[1285] |= 0x80000000000000uLL;
    v38[1291] |= 0x80000000000000uLL;
    v38[1297] |= 0x80000000000000uLL;
    v38[1303] |= 0x80000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v38 = *(a1 + 8);
    v39 = *(a1 + 2080);
  }

  v40 = *(v38[234] + 848);
  *&v662 = v39 + 248;
  *(&v662 + 1) = a1 + 2296;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v40 + 3340, &v662, v38[238]))
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
    }

    v42 = *(a1 + 2080);
    v587 = *(v42 + 248);
    *(*(a1 + 1048) + 248) = v587;
    v41 = *(a1 + 8);
    *(v41[1219] + 256) = v587;
    v588 = *(a1 + 2296);
    *(a1 + 1264) = v588;
    v41[1246] = v588;
    v41[1273] |= 0x200000000000000uLL;
    v41[1279] |= 0x200000000000000uLL;
    v41[1285] |= 0x200000000000000uLL;
    v41[1291] |= 0x200000000000000uLL;
    v41[1297] |= 0x200000000000000uLL;
    v41[1303] |= 0x200000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v41 = *(a1 + 8);
    v42 = *(a1 + 2080);
  }

  v43 = *(v41[234] + 848);
  *&v662 = v42 + 224;
  *(&v662 + 1) = a1 + 2272;
  if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v43 + 2352, &v662, v41[238]))
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
    }

    v45 = *(a1 + 2080);
    v589 = *(v45 + 224);
    *(*(a1 + 1048) + 224) = v589;
    v44 = *(a1 + 8);
    *(v44[1219] + 232) = v589;
    v590 = *(a1 + 2272);
    *(a1 + 1240) = v590;
    v44[1243] = v590;
    v44[1273] |= 0x40000000000000uLL;
    v44[1279] |= 0x40000000000000uLL;
    v44[1285] |= 0x40000000000000uLL;
    v44[1291] |= 0x40000000000000uLL;
    v44[1297] |= 0x40000000000000uLL;
    v44[1303] |= 0x40000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v44 = *(a1 + 8);
    v45 = *(a1 + 2080);
  }

  v46 = *(v44[234] + 848);
  *&v662 = v45 + 320;
  *(&v662 + 1) = a1 + 2368;
  v47 = AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v46 + 2752, &v662, v44[238]);
  v48 = a3;
  if (v47)
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
      v48 = a3;
    }

    v591 = *(*(a1 + 2080) + 320);
    *(*(a1 + 1048) + 320) = v591;
    v592 = *(a1 + 8);
    *(v592[1219] + 328) = v591;
    v593 = *(a1 + 2368);
    *(a1 + 1336) = v593;
    v592[1255] = v593;
    v592[1274] |= 4uLL;
    v592[1280] |= 4uLL;
    v592[1286] |= 4uLL;
    v592[1292] |= 4uLL;
    v592[1298] |= 4uLL;
    v592[1304] |= 4uLL;
    *(a13 + 384) |= 0x300C030000uLL;
    if (a14)
    {
      goto LABEL_55;
    }
  }

  else if (a14)
  {
    goto LABEL_55;
  }

  if (a2 && *(a1 + 1372) == 1 && (*(a2 + 2407) & 0x40) != 0)
  {
    v49 = *(*(a1 + 1048) + 328);
    v50 = *(a1 + 8);
    v51 = v50[21] + 47;
    if (v51 > v50[20])
    {
      v607 = AGX::DataBufferAllocator<44ul>::growNoInline((v50 + 3), 3, 0);
      v48 = a3;
      if (!v607)
      {
        goto LABEL_42;
      }

      v51 = v50[21] + 47;
      if (v51 > v50[20])
      {
        goto LABEL_591;
      }
    }

    v50[22] = v51;
LABEL_42:
    v52 = *(a1 + 8);
    v53 = ((*(v52 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = *(v52 + 184);
    *(v52 + 168) = v53 + 4;
    *v53 = v49;
    v53[1] = 0;
    v53[2] = 0;
    v53[3] = 0;
    v55 = *(a1 + 8);
    v56 = *(v55[6] + 224);
    v57 = *MEMORY[0x29EDC5638];
    v55[1273] |= 0x4000000000000000uLL;
    v55[1309] |= 0x10000uLL;
    *(*(a1 + 1048) + 288) = v53 + v54;
    *(a1 + 1304) = v56 + v57;
    *(a1 + 1372) = 0;
  }

  if (v48 && *(a1 + 2404) == 1 && (*(v48 + 2407) & 0x40) != 0)
  {
    v58 = *(*(a1 + 2080) + 328);
    v59 = *(a1 + 8);
    v60 = v59[21] + 47;
    if (v60 > v59[20])
    {
      v608 = AGX::DataBufferAllocator<44ul>::growNoInline((v59 + 3), 3, 0);
      v48 = a3;
      if (!v608)
      {
        goto LABEL_48;
      }

      v60 = v59[21] + 47;
      if (v60 > v59[20])
      {
        goto LABEL_591;
      }
    }

    v59[22] = v60;
LABEL_48:
    v61 = *(a1 + 8);
    v62 = ((*(v61 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = *(v61 + 184);
    *(v61 + 168) = v62 + 4;
    *v62 = v58;
    v62[1] = 0;
    v62[2] = 0;
    v62[3] = 0;
    v64 = *(a1 + 8);
    v65 = *(v64[6] + 224);
    v66 = *MEMORY[0x29EDC5638];
    v64[1285] |= 0x4000000000000000uLL;
    v64[1309] |= 0x4000000uLL;
    *(*(a1 + 2080) + 288) = v62 + v63;
    *(a1 + 2336) = v65 + v66;
    *(a1 + 2404) = 0;
  }

  if (a4)
  {
    if ((*(a4 + 2407) & 0x40) != 0)
    {
      v67 = *(a1 + 8);
      if (*(v67 + 10076) == 1)
      {
        v68 = *(*(v67 + 9752) + 336);
        v69 = *(v67 + 200);
        v70 = v69 + 31;
        if ((v69 + 31) > *(v67 + 192))
        {
          v609 = AGX::DataBufferAllocator<44ul>::growNoInline(v67 + 24, 4, 0);
          v69 = *(v67 + 200);
          if (!v609)
          {
            v48 = a3;
            goto LABEL_54;
          }

          v70 = v69 + 31;
          v48 = a3;
          if ((v69 + 31) > *(v67 + 192))
          {
            goto LABEL_591;
          }
        }

        *(v67 + 208) = v70;
LABEL_54:
        v71 = ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        v72 = v71 + *(v67 + 216);
        *(v67 + 200) = v71 + 2;
        *v71 = v68;
        v73 = *(*(v67 + 48) + 288) + *MEMORY[0x29EDC5638];
        *(v67 + 10376) |= 0x4000000000000000uLL;
        *(v67 + 10472) |= 0x1000000000uLL;
        *(*(v67 + 9752) + 296) = v72;
        *(v67 + 10008) = v73;
        *(v67 + 10076) = 0;
      }
    }
  }

LABEL_55:
  v74 = *(a1 + 8);
  if (*(v74 + 10080) == 1)
  {
    v75 = *(v74 + 200);
    v76 = v75 + 95;
    if ((v75 + 95) > *(v74 + 192))
    {
      v600 = AGX::DataBufferAllocator<44ul>::growNoInline(v74 + 24, 4, 0);
      v75 = *(v74 + 200);
      if (!v600)
      {
        v48 = a3;
        goto LABEL_58;
      }

      v76 = v75 + 95;
      v48 = a3;
      if ((v75 + 95) > *(v74 + 192))
      {
        goto LABEL_591;
      }
    }

    *(v74 + 208) = v76;
LABEL_58:
    v77 = ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v77 + *(v74 + 216);
    *(v74 + 200) = v77 + 5;
    v79 = *(v74 + 11584);
    v81 = *(v74 + 11616);
    v80 = *(v74 + 11632);
    v77[2] = *(v74 + 11600);
    v77[3] = v81;
    v77[1] = v79;
    *v77 = *(v74 + 11568);
    v77[4] = v80;
    v82 = *(*(v74 + 48) + 288) + *MEMORY[0x29EDC5638];
    *(v74 + 10376) |= 0x8000000000000000;
    *(v74 + 10472) |= 0x1000000000uLL;
    *(*(v74 + 9752) + 304) = v78;
    *(v74 + 10016) = v82;
    *(v74 + 10080) = 256;
    v74 = *(a1 + 8);
  }

  if (*(v74 + 5403) == 1)
  {
    v83 = *(*(v74 + 1872) + 848);
    v84 = *(v83 + 6320);
    if (*(v74 + 7268) != v84)
    {
      for (i = *(v83 + 6832); i; i = *i)
      {
        IOGPUResourceListAddResource();
      }

      for (j = *(v83 + 6664); j; j = *j)
      {
        IOGPUResourceListAddResource();
      }

      *(v74 + 7268) = v84;
      v74 = *(a1 + 8);
      v48 = a3;
    }
  }

  v87 = *(v74 + 7688);
  if (v87)
  {
    if (v87[1572])
    {
      *(*(v74 + 7664) + 1612) |= *(v74 + 5224) ^ 1;
    }

    if ((v87[2196] & 1) != 0 || v87[2508])
    {
      *(*(v74 + 7664) + 580) |= *(v74 + 5224) ^ 1;
    }
  }

  v88 = *(a1 + 1040);
  if (v88)
  {
    v89 = atomic_load_explicit((v88 + 80), memory_order_acquire);
    v90 = v89 != -1 && v89 == *(a1 + 72);
    if (!v90)
    {
      *(a1 + 72) = v89;
      atomic_store(1u, (v88 + 88));
      *(a13 + 384) |= 0x10000uLL;
      v91 = *(a1 + 1040);
      v92 = *v91;
      if (v92 == 128)
      {
        v93 = -1;
      }

      else
      {
        v93 = ~(-1 << *v91);
      }

      v94 = v92 >= 0x40;
      if (v92 < 0x40)
      {
        v95 = ~(-1 << v92);
      }

      else
      {
        v95 = -1;
      }

      if (v94)
      {
        v96 = v93;
      }

      else
      {
        v96 = 0;
      }

      v97 = *(a13 + 104);
      *(a13 + 96) |= v95;
      *(a13 + 104) = v97 | v96;
      v98 = v91[1];
      if (v98 == 128)
      {
        v99 = -1;
      }

      else
      {
        v99 = ~(-1 << v91[1]);
      }

      v100 = v98 >= 0x40;
      if (v98 < 0x40)
      {
        v101 = ~(-1 << v98);
      }

      else
      {
        v101 = -1;
      }

      v102 = *(a13 + 120);
      v103 = *(a13 + 112) | v101;
      if (v100)
      {
        v104 = v99;
      }

      else
      {
        v104 = 0;
      }

      *(a13 + 112) = v103;
      *(a13 + 120) = v102 | v104;
      v105 = v91[2];
      if (v105 == 128)
      {
        v106 = -1;
      }

      else
      {
        v106 = ~(-1 << v105);
      }

      v107 = v105 >= 0x40;
      if (v105 < 0x40)
      {
        v108 = ~(-1 << v105);
      }

      else
      {
        v108 = -1;
      }

      if (v107)
      {
        v109 = v106;
      }

      else
      {
        v109 = 0;
      }

      v110 = *(a13 + 136) | v109;
      *(a13 + 128) |= v108;
      *(a13 + 136) = v110;
    }
  }

  v111 = *(a1 + 2072);
  if (v111)
  {
    v112 = atomic_load_explicit((v111 + 80), memory_order_acquire);
    if (v112 == -1 || v112 != *(a1 + 1376))
    {
      *(a1 + 1376) = v112;
      atomic_store(1u, (v111 + 88));
      *(a13 + 384) |= 0x4000000uLL;
      v114 = *(a1 + 2072);
      v115 = *v114;
      if (v115 == 128)
      {
        v116 = -1;
      }

      else
      {
        v116 = ~(-1 << *v114);
      }

      v117 = v115 >= 0x40;
      if (v115 < 0x40)
      {
        v118 = ~(-1 << v115);
      }

      else
      {
        v118 = -1;
      }

      if (v117)
      {
        v119 = v116;
      }

      else
      {
        v119 = 0;
      }

      v120 = *(a13 + 200);
      *(a13 + 192) |= v118;
      *(a13 + 200) = v120 | v119;
      v121 = v114[1];
      if (v121 == 128)
      {
        v122 = -1;
      }

      else
      {
        v122 = ~(-1 << v114[1]);
      }

      v123 = v121 >= 0x40;
      if (v121 < 0x40)
      {
        v124 = ~(-1 << v121);
      }

      else
      {
        v124 = -1;
      }

      v125 = *(a13 + 216);
      v126 = *(a13 + 208) | v124;
      if (v123)
      {
        v127 = v122;
      }

      else
      {
        v127 = 0;
      }

      *(a13 + 208) = v126;
      *(a13 + 216) = v125 | v127;
      v128 = v114[2];
      if (v128 == 128)
      {
        v129 = -1;
      }

      else
      {
        v129 = ~(-1 << v128);
      }

      v130 = v128 >= 0x40;
      if (v128 < 0x40)
      {
        v131 = ~(-1 << v128);
      }

      else
      {
        v131 = -1;
      }

      if (v130)
      {
        v132 = v129;
      }

      else
      {
        v132 = 0;
      }

      v133 = *(a13 + 232) | v132;
      *(a13 + 224) |= v131;
      *(a13 + 232) = v133;
    }
  }

  v134 = *(a1 + 8);
  v135 = *(v134 + 9744);
  if (v135)
  {
    v136 = atomic_load_explicit((v135 + 80), memory_order_acquire);
    if (v136 == -1 || v136 != *(v134 + 8808))
    {
      *(v134 + 8808) = v136;
      atomic_store(1u, (v135 + 88));
      *(a13 + 384) |= 0x1000000000uLL;
      v138 = *(*(a1 + 8) + 9744);
      v139 = *v138;
      if (v139 == 128)
      {
        v140 = -1;
      }

      else
      {
        v140 = ~(-1 << *v138);
      }

      v141 = v139 >= 0x40;
      if (v139 < 0x40)
      {
        v142 = ~(-1 << v139);
      }

      else
      {
        v142 = -1;
      }

      if (v141)
      {
        v143 = v140;
      }

      else
      {
        v143 = 0;
      }

      v144 = *(a13 + 296);
      *(a13 + 288) |= v142;
      *(a13 + 296) = v144 | v143;
      v145 = v138[1];
      if (v145 == 128)
      {
        v146 = -1;
      }

      else
      {
        v146 = ~(-1 << v138[1]);
      }

      v147 = v145 >= 0x40;
      if (v145 < 0x40)
      {
        v148 = ~(-1 << v145);
      }

      else
      {
        v148 = -1;
      }

      v149 = *(a13 + 312);
      v150 = *(a13 + 304) | v148;
      if (v147)
      {
        v151 = v146;
      }

      else
      {
        v151 = 0;
      }

      *(a13 + 304) = v150;
      *(a13 + 312) = v149 | v151;
      v152 = v138[2];
      if (v152 == 128)
      {
        v153 = -1;
      }

      else
      {
        v153 = ~(-1 << v152);
      }

      v154 = v152 >= 0x40;
      if (v152 < 0x40)
      {
        v155 = ~(-1 << v152);
      }

      else
      {
        v155 = -1;
      }

      if (v154)
      {
        v156 = v153;
      }

      else
      {
        v156 = 0;
      }

      v157 = *(a13 + 328) | v156;
      *(a13 + 320) |= v155;
      *(a13 + 328) = v157;
    }
  }

  v158 = *(a13 + 384);
  if (a4)
  {
    v159 = v158 | AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, v48, a4, a13);
    v160 = *(a4 + 3916);
  }

  else
  {
    v161 = v158 & 0xFFFFFF8FFFFFFFFDLL;
    *(a13 + 384) = v161;
    ProgramVariantArgumentDirtyBits = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, v48, 0, a13);
    v160 = 0;
    v159 = v161 | ProgramVariantArgumentDirtyBits;
  }

  v658 = v159;
  if (a14 & 1) != 0 || (v160)
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDepthRanges(*(a1 + 8), v159);
  }

  if ((v159 & 0x20000) != 0 && (a14 & 1) == 0)
  {
    v163 = *(a13 + 144) & *(a2 + 2400);
    v164 = *(a13 + 152) & *(a2 + 2408);
    v666 = v163;
    v660 = v164;
    v662 = *(a2 + 1360);
    while (1)
    {
      if (v163)
      {
        v165 = __clz(__rbit64(v163));
        v166 = &v666;
        v167 = v165;
      }

      else
      {
        v163 = v660;
        if (!v660)
        {
          break;
        }

        LODWORD(v165) = __clz(__rbit64(v660));
        v167 = v165 | 0x40;
        v166 = &v660;
      }

      *v166 = v163 & ~(1 << v165);
      if (*(a1 + 1056 + 8 * (v167 - 31)))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindObjectBufferResource(a1, v167, (*(&v662 | (8 * (v167 > 0x3F))) >> v167) & 1, 1);
      }

      v163 = v666;
    }
  }

  if ((v159 & 0x8000000) != 0 && (a14 & 1) == 0)
  {
    v168 = *(a13 + 240) & *(a3 + 2400);
    v169 = *(a13 + 248) & *(a3 + 2408);
    v666 = v168;
    v660 = v169;
    v662 = *(a3 + 1360);
    while (1)
    {
      if (v168)
      {
        v170 = __clz(__rbit64(v168));
        v171 = &v666;
        v172 = v170;
      }

      else
      {
        v168 = v660;
        if (!v660)
        {
          break;
        }

        LODWORD(v170) = __clz(__rbit64(v660));
        v172 = v170 | 0x40;
        v171 = &v660;
      }

      *v171 = v168 & ~(1 << v170);
      if (*(a1 + 2088 + 8 * (v172 - 31)))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindMeshBufferResource(a1, v172, (*(&v662 | (8 * (v172 > 0x3F))) >> v172) & 1, 1);
      }

      v168 = v666;
    }
  }

  if ((v159 & 0x40000) != 0)
  {
    v173 = *(a1 + 1040);
    if (v173)
    {
      v174 = *(a2 + 2416) & *(a13 + 160) & v173[4];
      v175 = *(a2 + 2424) & *(a13 + 168) & v173[5];
      *&v662 = v174;
      v666 = v175;
      v176 = *(a2 + 1376);
      v177 = *(a2 + 1384);
      v178 = v173[6];
      v179 = v173[7];
      while (1)
      {
        if (v174)
        {
          v180 = &v662;
        }

        else
        {
          v174 = v666;
          if (!v666)
          {
            *(*(*(a1 + 8) + 7664) + 580) |= (v178 & v176 | v179 & v177) != 0;
            break;
          }

          v180 = &v666;
        }

        *v180 = v174 & (v174 - 1);
        v174 = v662;
      }
    }
  }

  if ((v159 & 0x10000000) != 0)
  {
    v181 = *(a1 + 2072);
    if (v181)
    {
      v182 = *(a3 + 2416) & *(a13 + 256) & v181[4];
      v183 = *(a3 + 2424) & *(a13 + 264) & v181[5];
      *&v662 = v182;
      v666 = v183;
      v184 = *(a3 + 1376);
      v185 = *(a3 + 1384);
      v186 = v181[6];
      v187 = v181[7];
      while (1)
      {
        if (v182)
        {
          v188 = &v662;
        }

        else
        {
          v182 = v666;
          if (!v666)
          {
            *(*(*(a1 + 8) + 7664) + 580) |= (v186 & v184 | v187 & v185) != 0;
            break;
          }

          v188 = &v666;
        }

        *v188 = v182 & (v182 - 1);
        v182 = v662;
      }
    }
  }

  if ((v159 & 0x2000000000) != 0 && (a14 & 1) == 0)
  {
    v189 = *(a13 + 336) & *(a4 + 2400);
    v190 = *(a13 + 344) & *(a4 + 2408);
    v666 = v189;
    v660 = v190;
    v662 = *(a4 + 1360);
    while (1)
    {
      if (v189)
      {
        v191 = __clz(__rbit64(v189));
        v192 = &v666;
        v193 = v191;
      }

      else
      {
        v189 = v660;
        if (!v660)
        {
          break;
        }

        LODWORD(v191) = __clz(__rbit64(v660));
        v193 = v191 | 0x40;
        v192 = &v660;
      }

      *v192 = v189 & ~(1 << v191);
      v194 = *(a1 + 8);
      if (*(v194 + 8 * (v193 - 31) + 9760))
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindFragmentBufferResource(v194, v193, (*(&v662 | (8 * (v193 > 0x3F))) >> v193) & 1, 1);
      }

      v189 = v666;
    }
  }

  if ((v159 & 0x4000000000) != 0)
  {
    v195 = *(a1 + 8);
    v196 = *(v195 + 9744);
    if (v196)
    {
      v197 = *(a4 + 2416) & *(a13 + 352) & v196[4];
      v198 = *(a4 + 2424) & *(a13 + 360) & v196[5];
      *&v662 = v197;
      v666 = v198;
      v199 = *(a4 + 1376);
      v200 = *(a4 + 1384);
      v201 = v196[6];
      v202 = v196[7];
      while (1)
      {
        if (v197)
        {
          v203 = &v662;
        }

        else
        {
          v197 = v666;
          if (!v666)
          {
            *(*(v195 + 7664) + 1612) |= (v201 & v199 | v202 & v200) != 0;
            break;
          }

          v203 = &v666;
        }

        *v203 = v197 & (v197 - 1);
        v197 = v662;
      }
    }
  }

  v204 = *(a13 + 392);
  if ((v204 & 1) != 0 && *(*(a1 + 8) + 7400) == 1)
  {
    *(a13 + 392) = v204 & 0xFFFFFFFE;
  }

  *(a13 + 384) = 0;
  *(a13 + 352) = 0u;
  *(a13 + 368) = 0u;
  *(a13 + 320) = 0u;
  *(a13 + 336) = 0u;
  *(a13 + 288) = 0u;
  *(a13 + 304) = 0u;
  *(a13 + 256) = 0u;
  *(a13 + 272) = 0u;
  *(a13 + 224) = 0u;
  *(a13 + 240) = 0u;
  *(a13 + 192) = 0u;
  *(a13 + 208) = 0u;
  *(a13 + 160) = 0u;
  *(a13 + 176) = 0u;
  *(a13 + 128) = 0u;
  *(a13 + 144) = 0u;
  *(a13 + 96) = 0u;
  *(a13 + 112) = 0u;
  *(a13 + 64) = 0u;
  *(a13 + 80) = 0u;
  *(a13 + 32) = 0u;
  *(a13 + 48) = 0u;
  *a13 = 0u;
  *(a13 + 16) = 0u;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDispatchMeshDatabufferSpace(a1, v159, a2, a3, a4);
  v211 = 0xDE876B1A5;
  v657 = 0;
  v656 = 4123088130;
  v212 = -1;
  v655 = -1;
  v654 = 0;
  v653 = 0;
  v213 = *(a1 + 8);
  v214 = *(*(v213 + 1872) + 848);
  if (*(v214 + 6241) == 1 && (v159 & 0x400000000000) != 0)
  {
    v205.i32[0] = *(v213 + 7184);
    v601 = *(v213 + 7188);
    v602 = *(v213 + 7192);
    v208.i32[0] = 931135616;
    v603.i64[0] = 0x8000000080000000;
    v603.i64[1] = 0x8000000080000000;
    LODWORD(v604) = vbslq_s8(v603, v208, v205).u32[0];
    if (*(*(v213 + 2392) + 4924))
    {
      *v205.i32 = v604 + (*v205.i32 * 0.000015259);
    }

    *&v662 = 0;
    LOBYTE(v666) = 0;
    LOBYTE(v660) = 0;
    v605 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v214, *(*(v213 + 7664) + 952), &v662, &v666, &v660, *v205.i32, v601, v602);
    if (v660)
    {
      if (v666)
      {
        v212 = v605;
        v211 = v662;
      }

      else
      {
        v657 = 1;
        v653 = 4;
      }
    }

    else
    {
      v657 = 1;
    }

    v213 = *(a1 + 8);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDeviceScissorBufferReserve(v213, &v658, &v655, &v656, &v654, &v657, &v653, *v205.i64, v206, v207, *v208.i32, v209, v210);
  v221 = *(a1 + 8);
  v222 = v657 | (*(*(v221 + 1912) + 520) == 0);
  v657 = v222;
  v223 = *(*(v221 + 1872) + 848) + 4096;
  if ((*(*(*(v221 + 1872) + 848) + 6242) & 1) == 0)
  {
    v222 |= ((*(v221 + 328) - *(*(v221 + 48) + 536)) >> 4) > 0xFFFE;
    v657 = v222;
  }

  if (*(v223 + 2145))
  {
    if ((v222 & 1) == 0)
    {
LABEL_241:
      v224 = 0;
      goto LABEL_242;
    }
  }

  else
  {
    v254 = *(v221 + 296);
    if (!v254)
    {
      v606 = v221;
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v221 + 24, 7);
      v221 = v606;
      v254 = *(v606 + 296);
      if (!v254)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v606 + 24, 7);
        v254 = 0;
        v221 = v606;
      }
    }

    v657 = v222 | (-1431655765 * ((v254 - *(*(v221 + 48) + 472)) >> 2) > 0xFFFE);
    v221 = *(a1 + 8);
    if ((v657 & 1) == 0)
    {
      goto LABEL_241;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(v221, &v658, v653, 1);
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDispatchMeshDatabufferSpace(a1, v658, a2, a3, a4);
  v221 = *(a1 + 8);
  v224 = 1;
  if (a14 && (v659 & 1) == 0)
  {
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    v221 = *(a1 + 8);
    v224 = 1;
  }

LABEL_242:
  if (!*(*(v221 + 1912) + 520))
  {
    v225 = *(v221 + 1968) - *(v221 + 1984);
    *(v225 + 140) = 1;
    if ((*(v225 + 136) & 4) != 0)
    {
      **(v221 + 8) = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleScissorUpdates(v221, &v658, v655, v656, v654, v224, v215, v216, v217, v218, v219, v220);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDepthBiasUpdates(*(a1 + 8), &v658, v212, v211, v226, v227, v228, v229);
  v235 = v658;
  v236 = a3;
  if ((v658 & 0x800000000000) != 0)
  {
    v594 = *(a1 + 8);
    v595 = *(v594 + 5944);
    v596 = *(v594 + 200);
    v597 = v596 + 11;
    if ((v596 + 11) <= *(v594 + 192))
    {
      goto LABEL_586;
    }

    v614 = AGX::DataBufferAllocator<44ul>::growNoInline(v594 + 24, 4, 0);
    v596 = *(v594 + 200);
    if (!v614)
    {
      v236 = a3;
LABEL_587:
      v598 = ((v596 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v599 = v598 + *(v594 + 216);
      *v598 = v595;
      *(v594 + 200) = v598 + 1;
      *(v594 + 5960) = v599 & 0xFFFFFFFC;
      *(v594 + 5956) = (v599 >> 16) & 0xFFFF0000;
      v235 |= 0x8000000000000uLL;
      v658 = v235;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA())
      {
        *(v594 + 10472) |= 0x1000000000000uLL;
      }

      goto LABEL_246;
    }

    v597 = v596 + 11;
    v236 = a3;
    if ((v596 + 11) <= *(v594 + 192))
    {
LABEL_586:
      *(v594 + 208) = v597;
      goto LABEL_587;
    }

LABEL_591:
    abort();
  }

LABEL_246:
  v237 = *(a2 + 3004);
  *(a1 + 60) = v237;
  v238 = *(a1 + 1048);
  if (*(a2 + 3796))
  {
    v239 = 0;
    v240 = a2 + 3800;
    do
    {
      *(v238 + 664 + 4 * *(v240 + 4 * v239)) = v237 | 0x80000000;
      v237 = *(a1 + 60) + *(v238 + 804 + 4 * *(v240 + 4 * v239));
      *(a1 + 60) = v237;
      ++v239;
    }

    while (v239 < *(a2 + 3796));
  }

  *(v238 + 944) = v237;
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a1 + 8) + 7440, *(a2 + 1296), *(a2 + 1308), *(a2 + 1324), v237, a12 * a11 * HIDWORD(a11), v230, v231, v232, v233, v234))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 7440, *(*(a1 + 8) + 7664) + 320, 1);
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a1 + 8) + 7440, *(v236 + 1296), *(v236 + 1308), *(v236 + 1324), *(v236 + 3004), a10 * a9 * HIDWORD(a9), v241, v242, v243, v244, v245))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 7440, *(*(a1 + 8) + 7664) + 320, 1);
  }

  v247 = *(a1 + 24);
  if ((v235 & 0xFE3F80030) != 0)
  {
    v248 = *(a1 + 8);
    if ((*(v248 + 7412) & 1) == 0)
    {
      v646 = *(a1 + 16);
      v639 = *(v248 + 7688);
      v635 = *(a1 + 48);
      v636 = *(a1 + 56);
      v638 = *(v248 + 7400);
      v249 = *(a1 + 1032);
      v662 = 0uLL;
      *v664 = 0;
      v663 = 0;
      *&v664[4] = 0x3000000A5;
      v665 = 0;
      *&v664[20] = 0;
      v250 = ((v249 << 16) + 4128768) & 0xFFC00000;
      if (v249)
      {
        v251 = v250 + 1;
      }

      else
      {
        v251 = v250;
      }

      *&v664[12] = v251;
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::AGX3EncodedInstr<AGXIotoInstruction_SPECLM_0>::AGX3EncodedInstr(&v666, &v662);
      v252 = *(a2 + 624);
      v637 = v235;
      if (v252)
      {
        v253 = (v247[18] + 31) & 0xFFFFFFFFFFFFFFE0;
        v642 = v253 + v247[20];
        v247[18] = v253 + v252;
      }

      else
      {
        v642 = 0;
        v253 = 0;
      }

      v255 = a5;
      v631 = v666;
      v256 = ((v247[26] + 63) & 0xFFFFFFFFFFFFFFC0);
      v640 = v247[28];
      v645 = v247;
      v247[26] = &v256[*(*(a2 + 2392) + 8) - **(a2 + 2392)];
      v257 = *(a2 + 1128);
      v258 = *(a2 + 1120);
      v259 = v257 - v258;
      v90 = v257 == v258;
      v260 = *(a2 + 1016);
      v261 = v260 & 1;
      if (v90)
      {
        v261 = 0;
      }

      if (!v252)
      {
        goto LABEL_362;
      }

      v262 = *(a2 + 1320);
      v263 = *(a2 + 656);
      v619 = *(a2 + 736);
      v633 = *(a2 + 660);
      v264 = *(a2 + 1024);
      v265 = *(a2 + 1028);
      v266 = v263 + ((*(a2 + 872) - *(a2 + 864)) >> 2);
      v267 = *(a2 + 1353);
      v617 = *(a2 + 1352);
      if (*(a2 + 1352))
      {
        *(a1 + 272) = vaddw_u32(vdupq_n_s64(v642), *(a2 + 628));
      }

      if (v267)
      {
        *(a1 + 304) = v642 + *(a2 + 648);
      }

      v629 = 8 * v266;
      v627 = v261 + v260;
      if (v265 + v264)
      {
        *(a1 + 368) = v629 + v642 + 4 * (v627 + ((v259 >> 1) & 0xFFFFFFFE));
      }

      v621 = v259;
      v623 = v264;
      v625 = v265;
      if (v263 == v262)
      {
        v268 = 0;
        if (v262)
        {
          goto LABEL_277;
        }

        goto LABEL_326;
      }

      if (a5)
      {
        v666 = a5;
        v660 = a1 + 88;
        v273 = &unk_2A23F9E78;
        *&v662 = &unk_2A23F9E78;
        *(&v662 + 1) = &v660;
        v663 = &v666;
        *v664 = &v662;
        v274 = *(a2 + 688);
        v275 = *(a2 + 696);
        if (v274 != v275)
        {
          v615 = v267;
          v276 = 0;
          while (1)
          {
            v661 = *v274;
            if (!*v664)
            {
              break;
            }

            v278 = (*(**v664 + 48))(*v664, &v661);
            v279 = *(v274 + 1);
            v280 = *(v274 + 2);
            if (v279 == v280)
            {
              v277 = v276;
            }

            else
            {
              do
              {
                v281 = *v279++;
                v277 = (v276 + 1);
                *(v253 + 8 * v276) = *(v278 + 8 * v281);
                LODWORD(v276) = v276 + 1;
              }

              while (v279 != v280);
            }

            v274 += 8;
            v276 = v277;
            if (v274 == v275)
            {
              goto LABEL_299;
            }
          }

LABEL_619:
          std::__throw_bad_function_call[abi:nn200100]();
        }
      }

      else
      {
        v666 = a1 + 88;
        v273 = &unk_2A23F9A88;
        *&v662 = &unk_2A23F9A88;
        *(&v662 + 1) = &v666;
        *v664 = &v662;
        v282 = *(a2 + 688);
        v283 = *(a2 + 696);
        if (v282 != v283)
        {
          v615 = v267;
          v284 = 0;
          do
          {
            LODWORD(v660) = *v282;
            if (!*v664)
            {
              goto LABEL_619;
            }

            v286 = (*(**v664 + 48))(*v664, &v660);
            v287 = *(v282 + 8);
            v288 = *(v282 + 16);
            if (v287 == v288)
            {
              v285 = v284;
            }

            else
            {
              do
              {
                v289 = *v287++;
                v285 = (v284 + 1);
                *(v253 + 8 * v284) = *(v286 + 8 * v289);
                LODWORD(v284) = v284 + 1;
              }

              while (v287 != v288);
            }

            v282 += 32;
            v284 = v285;
          }

          while (v282 != v283);
LABEL_299:
          v290 = *v664;
          if (*v664 != &v662)
          {
            v264 = v623;
            v265 = v625;
            v267 = v615;
            if (*v664)
            {
              (*(**v664 + 40))();
            }

LABEL_305:
            v255 = a5;
            v259 = v621;
            if (*(a2 + 1160))
            {
              v291 = *(a2 + 1144);
              if (v291 != (a2 + 1152))
              {
                do
                {
                  *(v253 + 4 * *(v291 + 7)) |= *(v291 + 8);
                  v302 = v291[1];
                  if (v302)
                  {
                    do
                    {
                      v303 = v302;
                      v302 = *v302;
                    }

                    while (v302);
                  }

                  else
                  {
                    do
                    {
                      v303 = v291[2];
                      v90 = *v303 == v291;
                      v291 = v303;
                    }

                    while (!v90);
                  }

                  v291 = v303;
                }

                while (v303 != (a2 + 1152));
              }
            }

            v292 = (v619 + 3) & 0xFFFFFFFC;
            if (v617)
            {
              v293 = *(a2 + 1312);
              if (v293 >= 4)
              {
                v294 = *(a5 + 24) + *(a5 + 8);
                v295 = v293 >> 2;
                v296 = *(a2 + 752);
                v297 = (v253 + 8 * v292);
                do
                {
                  v298 = *v296;
                  v296 += 4;
                  v299 = (v294 + 8 * v298);
                  v300 = v299[1];
                  *v297 = *v299;
                  v297[1] = v300;
                  v297 += 2;
                  --v295;
                }

                while (v295);
              }

              v292 += v293;
              v301 = v263 - v262;
              if (!v267)
              {
LABEL_325:
                v268 = 8 * v301;
                if (v262)
                {
LABEL_277:
                  if (v262 >= 4)
                  {
                    v269 = *(a2 + 2920);
                    v270 = v262 >> 2;
                    v271 = (v253 + v268);
                    do
                    {
                      v272 = *v269;
                      v269 += 4;
                      *v271 = v272;
                      v271 += 4;
                      --v270;
                    }

                    while (v270);
                  }

                  v268 += 8 * v262;
                  if (!v633)
                  {
LABEL_342:
                    v320 = v259 >> 2;
                    if ((v259 >> 2))
                    {
                      v321 = v629 + 4 * v627;
                      v322 = (v253 + (v321 & 0xFFFFFFFC));
                      v323 = *(v255 + 24) + *(v255 + 12);
                      v324 = *(a2 + 1120);
                      do
                      {
                        v325 = *v324++;
                        *v322++ = *(v323 + 8 * v325);
                        LODWORD(v320) = v320 - 1;
                      }

                      while (v320);
                      v268 = v321 + 8 * (v259 >> 2);
                    }

                    if (v265 != -v264)
                    {
                      v326 = (v253 + v268);
                      v327 = 4 * *(a2 + 1024);
                      v328 = v255;
                      memcpy(v326, (v255 + 4 * *(a2 + 1020)), v327);
                      v666 = v328;
                      v660 = a1 + 88;
                      v329 = &unk_2A23F9F08;
                      *&v662 = &unk_2A23F9F08;
                      *(&v662 + 1) = &v660;
                      v663 = &v666;
                      *v664 = &v662;
                      v330 = *(a2 + 1056);
                      v331 = *(a2 + 1064);
                      if (v330 == v331)
                      {
                        v338 = &v662;
                      }

                      else
                      {
                        v332 = 0;
                        do
                        {
                          v661 = *v330;
                          if (!*v664)
                          {
                            goto LABEL_619;
                          }

                          v334 = (*(**v664 + 48))(*v664, &v661);
                          v335 = *(v330 + 1);
                          v336 = *(v330 + 2);
                          if (v335 == v336)
                          {
                            v333 = v332;
                          }

                          else
                          {
                            do
                            {
                              v337 = *v335++;
                              v333 = (v332 + 1);
                              *&v326[4 * v332 + v327] = *(v334 + 4 * v337);
                              LODWORD(v332) = v332 + 1;
                            }

                            while (v335 != v336);
                          }

                          v330 += 8;
                          v332 = v333;
                        }

                        while (v330 != v331);
                        v338 = *v664;
                        if (*v664 != &v662)
                        {
                          if (*v664)
                          {
                            (*(**v664 + 40))();
                          }

                          goto LABEL_361;
                        }

                        v329 = **v664;
                      }

                      v329[4](v338);
LABEL_361:
                      v255 = a5;
                    }

LABEL_362:
                    if (v255)
                    {
                      v339 = *(v255 + 24) + *(v255 + 4);
                    }

                    else
                    {
                      v339 = 0;
                    }

                    v340 = a3;
                    v341 = *(a2 + 2392);
                    memcpy(v256, *v341, *(v341 + 8) - *v341);
                    v342 = &xmmword_29D2F1000;
                    v343 = &xmmword_29D2F1000;
                    if (*(v341 + 272) == 1)
                    {
                      v344.i64[0] = v642;
                      v344.i64[1] = v642 >> 5;
                      *&v256[*(v341 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v256[*(v341 + 276)], vshlq_u8(vqtbl1q_s8(v344, xmmword_29D2F17A0), xmmword_29D2F17B0));
                    }

                    v345 = a6;
                    if (v339)
                    {
                      v346 = *(v341 + 224);
                      for (k = *(v341 + 232); v346 != k; v346 += 3)
                      {
                        v348.i64[0] = *(v339 + 8 * v346[1]) + *v346;
                        v348.i64[1] = v348.i64[0] >> 5;
                        *&v256[v346[2]] = vbslq_s8(xmmword_29D2F17C0, *&v256[v346[2]], vshlq_u8(vqtbl1q_s8(v348, xmmword_29D2F17A0), xmmword_29D2F17B0));
                      }
                    }

                    v349 = *(v341 + 248);
                    for (m = *(v341 + 256); v349 != m; v349 += 3)
                    {
                      v351.i64[0] = *(a1 + 88 + 8 * v349[1]) + *v349;
                      v351.i64[1] = v351.i64[0] >> 5;
                      *&v256[v349[2]] = vbslq_s8(xmmword_29D2F17C0, *&v256[v349[2]], vshlq_u8(vqtbl1q_s8(v351, xmmword_29D2F17A0), xmmword_29D2F17B0));
                    }

                    if (!*(v341 + 312))
                    {
                      *&v256[*(v341 + 316)] = v631;
                    }

                    v352 = &v256[v640];
                    v353 = *v646;
                    v648 = &v256[v640];
                    if (*v646)
                    {
                      v354 = *v341;
                      v355 = *(v341 + 8);
                      v356 = *(a2 + 2800);
                      LODWORD(v357) = *(v353 + 2);
                      v358 = v357 + 1;
                      if (*(v353 + 3) >= (v357 + 1))
                      {
                        v361 = *v353;
                      }

                      else
                      {
                        v359 = -__clz(v357);
                        v360 = malloc_type_malloc(40 << (v359 & 0x1F), 0x10800400D7C94D2uLL);
                        v361 = v360;
                        v362 = 1 << v359;
                        v357 = *(v353 + 2);
                        if (v357)
                        {
                          memcpy(v360, *v353, 40 * v357);
                          free(*v353);
                          LODWORD(v357) = *(v353 + 2);
                        }

                        v352 = &v256[v640];
                        v345 = a6;
                        *(v353 + 3) = v362;
                        *v353 = v361;
                      }

                      v363 = &v361[40 * v357];
                      *v363 = 4;
                      *(v363 + 1) = v352;
                      *(v363 + 2) = v256;
                      *(v363 + 3) = (v355 - v354);
                      *(v363 + 8) = v356;
                      *(v353 + 2) = v358;
                      v340 = a3;
                      v342 = &xmmword_29D2F1000;
                      v343 = &xmmword_29D2F1000;
                    }

                    v364 = *(v340 + 624);
                    if (v364)
                    {
                      v365 = v645;
                      v366 = (v645[18] + 31) & 0xFFFFFFFFFFFFFFE0;
                      v367 = v366 + v645[20];
                      v645[18] = v366 + v364;
                    }

                    else
                    {
                      v367 = 0;
                      v366 = 0;
                      v365 = v645;
                    }

                    v643 = (v340 + 628);
                    v368 = ((v365[26] + 63) & 0xFFFFFFFFFFFFFFC0);
                    v641 = v365[28];
                    v365[26] = &v368[*(*(v340 + 2392) + 8) - **(v340 + 2392)];
                    v369 = *(v340 + 1128);
                    v370 = *(v340 + 1120);
                    v371 = v369 - v370;
                    v90 = v369 == v370;
                    v372 = *(v340 + 1016);
                    v373 = v372 & 1;
                    if (v90)
                    {
                      v373 = 0;
                    }

                    if (!v364)
                    {
                      goto LABEL_480;
                    }

                    v374 = v340;
                    v375 = *(v340 + 1320);
                    v376 = *(v374 + 656);
                    v618 = *(v374 + 736);
                    v632 = *(v374 + 660);
                    v634 = *(v374 + 1024);
                    v377 = *(v374 + 1028);
                    v378 = v376 + ((*(v374 + 872) - *(v374 + 864)) >> 2);
                    v628 = *(v374 + 1353);
                    v616 = *(v374 + 1352);
                    if (*(v374 + 1352))
                    {
                      *(a1 + 1576) = vaddw_u32(vdupq_n_s64(v367), *v643);
                    }

                    if (v628)
                    {
                      *(a1 + 1608) = v367 + *(a3 + 648);
                    }

                    v626 = 8 * v378;
                    v624 = v373 + v372;
                    if (v377 + v634)
                    {
                      *(a1 + 1672) = v626 + v367 + 4 * (v624 + ((v371 >> 1) & 0xFFFFFFFE));
                    }

                    v630 = v367;
                    v622 = v371;
                    v620 = v377;
                    if (v376 == v375)
                    {
                      v379 = 0;
                      v343 = &xmmword_29D2F1000;
                      if (!v375)
                      {
                        goto LABEL_444;
                      }

                      goto LABEL_440;
                    }

                    if (v345)
                    {
                      v666 = v345;
                      v660 = a1 + 1392;
                      v380 = &unk_2A23F9F50;
                      *&v662 = &unk_2A23F9F50;
                      *(&v662 + 1) = &v660;
                      v663 = &v666;
                      *v664 = &v662;
                      v381 = *(a3 + 688);
                      v382 = *(a3 + 696);
                      if (v381 != v382)
                      {
                        v383 = 0;
                        while (1)
                        {
                          v661 = *v381;
                          if (!*v664)
                          {
                            goto LABEL_619;
                          }

                          v385 = (*(**v664 + 48))(*v664, &v661);
                          v386 = *(v381 + 1);
                          v387 = *(v381 + 2);
                          if (v386 == v387)
                          {
                            v384 = v383;
                          }

                          else
                          {
                            do
                            {
                              v388 = *v386++;
                              v384 = (v383 + 1);
                              *(v366 + 8 * v383) = *(v385 + 8 * v388);
                              LODWORD(v383) = v383 + 1;
                            }

                            while (v386 != v387);
                          }

                          v381 += 8;
                          v383 = v384;
                          if (v381 == v382)
                          {
                            goto LABEL_413;
                          }
                        }
                      }
                    }

                    else
                    {
                      v666 = a1 + 1392;
                      v380 = &unk_2A23F9AD0;
                      *&v662 = &unk_2A23F9AD0;
                      *(&v662 + 1) = &v666;
                      *v664 = &v662;
                      v389 = *(a3 + 688);
                      v390 = *(a3 + 696);
                      if (v389 != v390)
                      {
                        v391 = 0;
                        do
                        {
                          LODWORD(v660) = *v389;
                          if (!*v664)
                          {
                            goto LABEL_619;
                          }

                          v393 = (*(**v664 + 48))(*v664, &v660);
                          v394 = *(v389 + 8);
                          v395 = *(v389 + 16);
                          if (v394 == v395)
                          {
                            v392 = v391;
                          }

                          else
                          {
                            do
                            {
                              v396 = *v394++;
                              v392 = (v391 + 1);
                              *(v366 + 8 * v391) = *(v393 + 8 * v396);
                              LODWORD(v391) = v391 + 1;
                            }

                            while (v394 != v395);
                          }

                          v389 += 32;
                          v391 = v392;
                        }

                        while (v389 != v390);
LABEL_413:
                        v397 = *v664;
                        if (*v664 != &v662)
                        {
                          v342 = &xmmword_29D2F1000;
                          v367 = v630;
                          if (*v664)
                          {
                            (*(**v664 + 40))();
                          }

LABEL_419:
                          v345 = a6;
                          v371 = v622;
                          if (*(a3 + 1160))
                          {
                            v398 = *(a3 + 1144);
                            if (v398 != (a3 + 1152))
                            {
                              do
                              {
                                *(v366 + 4 * *(v398 + 7)) |= *(v398 + 8);
                                v408 = v398[1];
                                if (v408)
                                {
                                  do
                                  {
                                    v409 = v408;
                                    v408 = *v408;
                                  }

                                  while (v408);
                                }

                                else
                                {
                                  do
                                  {
                                    v409 = v398[2];
                                    v90 = *v409 == v398;
                                    v398 = v409;
                                  }

                                  while (!v90);
                                }

                                v398 = v409;
                              }

                              while (v409 != (a3 + 1152));
                            }
                          }

                          v399 = (v618 + 3) & 0xFFFFFFFC;
                          if (v616)
                          {
                            v400 = *(a3 + 1312);
                            if (v400 >= 4)
                            {
                              v401 = *(a6 + 24) + *(a6 + 8);
                              v402 = v400 >> 2;
                              v403 = *(a3 + 752);
                              v404 = (v366 + 8 * v399);
                              do
                              {
                                v405 = *v403;
                                v403 += 4;
                                v406 = (v401 + 8 * v405);
                                v407 = v406[1];
                                *v404 = *v406;
                                v404[1] = v407;
                                v404 += 2;
                                --v402;
                              }

                              while (v402);
                            }

                            v399 += v400;
                          }

                          else
                          {
                            v400 = 0;
                          }

                          v410 = v376 - v375;
                          v343 = &xmmword_29D2F1000;
                          if (v628)
                          {
                            v411 = *(a3 + 1316);
                            v412 = (v366 + 8 * v399);
                            v413 = *(a6 + 24) + *(a6 + 12);
                            if (*(a3 + 2192) == 1)
                            {
                              if (v411)
                              {
                                v612 = (*(a3 + 752) + 4 * v400);
                                do
                                {
                                  v613 = *v612++;
                                  *v412++ = *(v413 + 8 * v613);
                                  --v411;
                                }

                                while (v411);
                              }
                            }

                            else if (v411 >= 4)
                            {
                              v414 = v411 >> 2;
                              v415 = (*(a3 + 752) + 4 * v400);
                              do
                              {
                                v416 = *v415;
                                v415 += 4;
                                *v412 = *(v413 + 8 * v416);
                                v412 += 4;
                                --v414;
                              }

                              while (v414);
                            }
                          }

                          v379 = 8 * v410;
                          if (!v375)
                          {
LABEL_444:
                            v340 = a3;
                            if (!v632)
                            {
                              goto LABEL_460;
                            }

                            *(a1 + 1408) = v367 + v379 + 8;
                            v666 = v345;
                            v660 = a1 + 1392;
                            v421 = &unk_2A23F9F98;
                            *&v662 = &unk_2A23F9F98;
                            *(&v662 + 1) = &v660;
                            v663 = &v666;
                            *v664 = &v662;
                            v422 = *(a3 + 800);
                            v423 = *(a3 + 808);
                            if (v422 == v423)
                            {
                              v430 = &v662;
                              v342 = &xmmword_29D2F1000;
                              v367 = v630;
                            }

                            else
                            {
                              v424 = 0;
                              do
                              {
                                v661 = *v422;
                                if (!*v664)
                                {
                                  goto LABEL_619;
                                }

                                v426 = (*(**v664 + 48))(*v664, &v661);
                                v427 = *(v422 + 1);
                                v428 = *(v422 + 2);
                                if (v427 == v428)
                                {
                                  v425 = v424;
                                }

                                else
                                {
                                  do
                                  {
                                    v429 = *v427++;
                                    v425 = (v424 + 1);
                                    *(v366 + v379 + 4 * v424) = *(v426 + 4 * v429);
                                    LODWORD(v424) = v424 + 1;
                                  }

                                  while (v427 != v428);
                                }

                                v422 += 8;
                                v424 = v425;
                              }

                              while (v422 != v423);
                              v430 = *v664;
                              v343 = &xmmword_29D2F1000;
                              if (*v664 != &v662)
                              {
                                v340 = a3;
                                v342 = &xmmword_29D2F1000;
                                v367 = v630;
                                if (*v664)
                                {
                                  (*(**v664 + 40))();
                                }

                                goto LABEL_459;
                              }

                              v421 = **v664;
                              v340 = a3;
                              v342 = &xmmword_29D2F1000;
                              v367 = v630;
                            }

                            v421[4](v430);
LABEL_459:
                            v379 += 4 * v632;
                            v345 = a6;
                            v371 = v622;
LABEL_460:
                            v431 = v371 >> 2;
                            if ((v371 >> 2))
                            {
                              v432 = v626 + 4 * v624;
                              v433 = (v366 + (v432 & 0xFFFFFFFC));
                              v434 = *(v345 + 24) + *(v345 + 12);
                              v435 = *(v340 + 1120);
                              do
                              {
                                v436 = *v435++;
                                *v433++ = *(v434 + 8 * v436);
                                LODWORD(v431) = v431 - 1;
                              }

                              while (v431);
                              v379 = v432 + 8 * (v371 >> 2);
                            }

                            if (v620 == -v634)
                            {
                              goto LABEL_480;
                            }

                            v437 = (v366 + v379);
                            v438 = (v345 + 4 * *(v340 + 1020));
                            v439 = v340;
                            v440 = 4 * *(v340 + 1024);
                            v441 = v345;
                            memcpy(v437, v438, v440);
                            v666 = v441;
                            v660 = a1 + 1392;
                            v442 = &unk_2A23F9FE0;
                            *&v662 = &unk_2A23F9FE0;
                            *(&v662 + 1) = &v660;
                            v663 = &v666;
                            *v664 = &v662;
                            v443 = *(v439 + 1056);
                            v444 = *(v439 + 1064);
                            if (v443 == v444)
                            {
                              v452 = &v662;
                              v340 = a3;
                              v342 = &xmmword_29D2F1000;
                            }

                            else
                            {
                              v445 = 0;
                              v446 = &v437[v440];
                              v340 = a3;
                              do
                              {
                                v661 = *v443;
                                if (!*v664)
                                {
                                  goto LABEL_619;
                                }

                                v448 = (*(**v664 + 48))(*v664, &v661);
                                v449 = *(v443 + 1);
                                v450 = *(v443 + 2);
                                if (v449 == v450)
                                {
                                  v447 = v445;
                                }

                                else
                                {
                                  do
                                  {
                                    v451 = *v449++;
                                    v447 = (v445 + 1);
                                    *&v446[4 * v445] = *(v448 + 4 * v451);
                                    LODWORD(v445) = v445 + 1;
                                  }

                                  while (v449 != v450);
                                }

                                v443 += 8;
                                v445 = v447;
                              }

                              while (v443 != v444);
                              v452 = *v664;
                              if (*v664 != &v662)
                              {
                                v342 = &xmmword_29D2F1000;
                                v343 = &xmmword_29D2F1000;
                                v367 = v630;
                                if (*v664)
                                {
                                  (*(**v664 + 40))();
                                }

                                goto LABEL_479;
                              }

                              v442 = **v664;
                              v342 = &xmmword_29D2F1000;
                              v343 = &xmmword_29D2F1000;
                            }

                            v367 = v630;
                            v442[4](v452);
LABEL_479:
                            v345 = a6;
LABEL_480:
                            if (v345)
                            {
                              v453 = *(v345 + 24) + *(v345 + 4);
                            }

                            else
                            {
                              v453 = 0;
                            }

                            v454 = *(v340 + 2392);
                            memcpy(v368, *v454, *(v454 + 8) - *v454);
                            if (*(v454 + 272) == 1)
                            {
                              v455.i64[0] = v367;
                              v455.i64[1] = v367 >> 5;
                              *&v368[*(v454 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v368[*(v454 + 276)], vshlq_u8(vqtbl1q_s8(v455, v342[122]), v343[123]));
                            }

                            if (v453)
                            {
                              v456 = *(v454 + 224);
                              v457 = *(v454 + 232);
                              if (v456 != v457)
                              {
                                v458 = v342[122];
                                v459 = v343[123];
                                do
                                {
                                  v460.i64[0] = *(v453 + 8 * v456[1]) + *v456;
                                  v460.i64[1] = v460.i64[0] >> 5;
                                  *&v368[v456[2]] = vbslq_s8(xmmword_29D2F17C0, *&v368[v456[2]], vshlq_u8(vqtbl1q_s8(v460, v458), v459));
                                  v456 += 3;
                                }

                                while (v456 != v457);
                              }
                            }

                            v461 = *(v454 + 248);
                            v462 = *(v454 + 256);
                            if (v461 != v462)
                            {
                              v463 = v342[122];
                              v464 = v343[123];
                              do
                              {
                                v465.i64[0] = *(a1 + 1392 + 8 * v461[1]) + *v461;
                                v465.i64[1] = v465.i64[0] >> 5;
                                *&v368[v461[2]] = vbslq_s8(xmmword_29D2F17C0, *&v368[v461[2]], vshlq_u8(vqtbl1q_s8(v465, v463), v464));
                                v461 += 3;
                              }

                              while (v461 != v462);
                            }

                            v466 = &v368[v641];
                            v467 = *v646;
                            if (*v646)
                            {
                              v468 = *v454;
                              v469 = *(v454 + 8);
                              v470 = *(a3 + 2800);
                              LODWORD(v471) = *(v467 + 2);
                              v472 = v471 + 1;
                              if (*(v467 + 3) >= (v471 + 1))
                              {
                                v475 = *v467;
                              }

                              else
                              {
                                v650 = *(a3 + 2800);
                                v473 = -__clz(v471);
                                v474 = malloc_type_malloc(40 << (v473 & 0x1F), 0x10800400D7C94D2uLL);
                                v475 = v474;
                                v476 = 1 << v473;
                                v471 = *(v467 + 2);
                                if (v471)
                                {
                                  memcpy(v474, *v467, 40 * v471);
                                  free(*v467);
                                  LODWORD(v471) = *(v467 + 2);
                                }

                                v470 = v650;
                                *(v467 + 3) = v476;
                                *v467 = v475;
                              }

                              v477 = &v475[40 * v471];
                              *v477 = 6;
                              *(v477 + 1) = v466;
                              *(v477 + 2) = v368;
                              *(v477 + 3) = (v469 - v468);
                              *(v477 + 8) = v470;
                              *(v467 + 2) = v472;
                            }

                            v478 = *(a2 + 3732);
                            v479 = *(a2 + 3724);
                            v236 = a3;
                            v480 = *(a3 + 3728);
                            v481 = *(a3 + 3740);
                            v482 = *(a3 + 3748);
                            v246 = v643[391];
                            v483 = *(v639 + 908);
                            if (v638)
                            {
                              v484 = 0;
                            }

                            else
                            {
                              v484 = 32;
                            }

                            v485 = *(a3 + 3732) & 0xFFFFFFDF | v484;
                            v486 = *(a3 + 3736) & 0xFFF0000 | *(a2 + 3720) & 0xFFF;
                            if (v483)
                            {
                              v478 = v478 & 0xFFFFFF80 | ((v483 + 1023) >> 10) & 0x7F;
                            }

                            LOBYTE(v235) = v637;
                            v487 = *(a1 + 2060);
                            v488 = v645[6];
                            v488->i32[0] = 1073745196;
                            v488->i32[1] = v480;
                            v488[1].i32[0] = v485;
                            v488[1].i32[1] = (v487 - 1) & 7;
                            v488[2].i32[0] = v486;
                            v488[2].i32[1] = (v648 >> 16) & 0xFFC00000 | v479 & 0x3FFFFF;
                            v488[3].i32[0] = v648 >> 6;
                            v488[3].i32[1] = (v466 >> 16) & 0xFFC00000 | v481 & 0x3FFFFF;
                            v489 = v466 >> 6;
                            v247 = v645;
                            v488[4].i32[0] = v489;
                            v488[4].i32[1] = v478;
                            v488[5].i32[0] = v482;
                            v488[5].i32[1] = (v635 >> 21) & 0x3FF800 | v635 & 0x7FF | (v636 << 22);
                            v488[6] = v246;
                            v645[6] = v488 + 7;
                            goto LABEL_505;
                          }

LABEL_440:
                          if (v375 >= 4)
                          {
                            v417 = *(a3 + 2920);
                            v418 = v375 >> 2;
                            v419 = (v366 + v379);
                            do
                            {
                              v420 = *v417;
                              v417 += 4;
                              *v419 = v420;
                              v419 += 4;
                              --v418;
                            }

                            while (v418);
                          }

                          v379 += 8 * v375;
                          goto LABEL_444;
                        }

                        v380 = **v664;
                        v342 = &xmmword_29D2F1000;
                        v367 = v630;
LABEL_418:
                        v380[4](v397);
                        goto LABEL_419;
                      }
                    }

                    v397 = &v662;
                    v342 = &xmmword_29D2F1000;
                    v367 = v630;
                    goto LABEL_418;
                  }

LABEL_327:
                  *(a1 + 104) = v642 + v268 + 8;
                  v666 = v255;
                  v660 = a1 + 88;
                  v310 = &unk_2A23F9EC0;
                  *&v662 = &unk_2A23F9EC0;
                  *(&v662 + 1) = &v660;
                  v663 = &v666;
                  *v664 = &v662;
                  v311 = *(a2 + 800);
                  v312 = *(a2 + 808);
                  if (v311 == v312)
                  {
                    v319 = &v662;
                    v264 = v623;
                    v265 = v625;
                  }

                  else
                  {
                    v313 = 0;
                    do
                    {
                      v661 = *v311;
                      if (!*v664)
                      {
                        goto LABEL_619;
                      }

                      v315 = (*(**v664 + 48))(*v664, &v661);
                      v316 = *(v311 + 1);
                      v317 = *(v311 + 2);
                      if (v316 == v317)
                      {
                        v314 = v313;
                      }

                      else
                      {
                        do
                        {
                          v318 = *v316++;
                          v314 = (v313 + 1);
                          *(v253 + v268 + 4 * v313) = *(v315 + 4 * v318);
                          LODWORD(v313) = v313 + 1;
                        }

                        while (v316 != v317);
                      }

                      v311 += 8;
                      v313 = v314;
                    }

                    while (v311 != v312);
                    v319 = *v664;
                    if (*v664 != &v662)
                    {
                      v264 = v623;
                      v265 = v625;
                      if (*v664)
                      {
                        (*(**v664 + 40))();
                      }

                      goto LABEL_341;
                    }

                    v310 = **v664;
                    v264 = v623;
                    v265 = v625;
                  }

                  v310[4](v319);
LABEL_341:
                  v268 += 4 * v633;
                  v255 = a5;
                  v259 = v621;
                  goto LABEL_342;
                }

LABEL_326:
                if (!v633)
                {
                  goto LABEL_342;
                }

                goto LABEL_327;
              }
            }

            else
            {
              v293 = 0;
              v301 = v263 - v262;
              if (!v267)
              {
                goto LABEL_325;
              }
            }

            v304 = *(a2 + 1316);
            v305 = (v253 + 8 * v292);
            v306 = *(a5 + 24) + *(a5 + 12);
            if (*(a2 + 2192) == 1)
            {
              if (v304)
              {
                v610 = (*(a2 + 752) + 4 * v293);
                do
                {
                  v611 = *v610++;
                  *v305++ = *(v306 + 8 * v611);
                  --v304;
                }

                while (v304);
              }
            }

            else if (v304 >= 4)
            {
              v307 = v304 >> 2;
              v308 = (*(a2 + 752) + 4 * v293);
              do
              {
                v309 = *v308;
                v308 += 4;
                *v305 = *(v306 + 8 * v309);
                v305 += 4;
                --v307;
              }

              while (v307);
            }

            goto LABEL_325;
          }

          v273 = **v664;
          v264 = v623;
          v265 = v625;
          v267 = v615;
LABEL_304:
          v273[4](v290);
          goto LABEL_305;
        }
      }

      v290 = &v662;
      v264 = v623;
      v265 = v625;
      goto LABEL_304;
    }
  }

LABEL_505:
  if ((v235 & 0x20) != 0)
  {
    v490 = v247[6];
    *v490 = *(v236 + 3912);
    v247[6] = v490 + 1;
  }

  v491 = v658;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>(*(a1 + 16), *(a1 + 24), a4, *(*(a1 + 8) + 7688), a7, (*(a1 + 8) + 8824), v658, *(*(a1 + 8) + 7408), v246, *(*(a1 + 8) + 7412));
  if ((v491 & 4) != 0)
  {
    v498 = *(a1 + 8);
    v499 = *(a3 + 3880);
    v500 = *(a3 + 3888);
    v501 = *(v498 + 7416);
    *(v498 + 6024) = *(v498 + 6024) & 0xF0E3FF00 | v499 & 0xF1C00FF;
    *(v498 + 6032) = *(v498 + 6032) & 0xFFFFFFF8 | (v501 - 1) & 7;
    *(v498 + 6036) = HIDWORD(v499);
    *(v498 + 6028) = v500;
    *(v498 + 10472) |= 4uLL;
    v502 = *(a1 + 24);
    v503 = *(a1 + 8);
    v504 = *(v503 + 6020);
    LODWORD(v503) = *(v503 + 6036);
    v505 = v502[126];
    v506 = v502[128] + v505;
    v502[126] = v505 + 20;
    *v505 = v504;
    *(v505 + 16) = v503;
    v507 = v502[6];
    *v507 = __ROR8__(v506, 32) & 0xFFFFFFFC000000FFLL | 0x500;
    v502[6] = v507 + 1;
    if ((v491 & 0x100000000000) == 0)
    {
LABEL_509:
      if ((v491 & 0x1000000000000) == 0)
      {
        goto LABEL_510;
      }

      goto LABEL_544;
    }
  }

  else if ((v491 & 0x100000000000) == 0)
  {
    goto LABEL_509;
  }

  if (a14)
  {
    v508 = atomic_load((*(*(*(a1 + 8) + 1872) + 848) + 17017));
    if ((v508 & 1) == 0)
    {
      goto LABEL_523;
    }
  }

  else if (!a4 || *(a4 + 1354) != 1)
  {
    goto LABEL_523;
  }

  v509 = *(a1 + 8);
  if ((*(v509 + 5983) & 7) == 0)
  {
    *(*(v509 + 7664) + 1168) |= 0x10000uLL;
  }

LABEL_523:
  v510 = *(a1 + 8);
  v511 = vand_s8(*(v510 + 5980), vdup_n_s32(0xFFFC00FF));
  v512 = 7384;
  if (*(v510 + 7376) == 2)
  {
    v512 = 7388;
  }

  v513 = 256.0;
  if (*(v510 + 7376) == 2)
  {
    v513 = 1023.5;
  }

  v514 = *(v510 + v512) * 16.0;
  if (v514 <= v513)
  {
    v513 = *(v510 + v512) * 16.0;
  }

  v515 = v513;
  if (v514 < 0.0)
  {
    v515 = 0;
  }

  if (v515)
  {
    v516 = ((v515 << 8) + 261888) & 0x3FF00;
  }

  else
  {
    v516 = 0;
  }

  *(v510 + 5980) = vorr_s8(v511, vdup_n_s32(v516));
  v517 = *(a1 + 24);
  v518 = *(a1 + 8);
  v519 = *(v518 + 5972);
  v520 = *(v518 + 5976);
  v662 = *(v518 + 5980);
  LODWORD(v663) = *(v518 + 5996);
  v521 = *(v518 + 6000);
  v522 = *(v518 + 6004);
  v666 = *(v518 + 6008);
  v667 = *(v518 + 6016);
  v523 = *(v518 + 7402);
  if (a14)
  {
    v524 = 0x10000000;
  }

  else
  {
    v524 = 0;
  }

  v525 = v520 & 0xEBFFFFFF | v524;
  if (v523 & 1 | ((v520 & 0x4000000) != 0))
  {
    v526 = 0x4000000;
  }

  else
  {
    v526 = 0;
  }

  v527 = v526 | v525;
  v528 = v517[126];
  v529 = v517[128] + v528;
  v517[126] = v528 + 28;
  *v528 = v519;
  *(v528 + 4) = v527;
  *(v528 + 24) = v663;
  *(v528 + 8) = v662;
  v530 = v517[6];
  *v530 = __ROR8__(v529, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  v517[6] = v530 + 1;
  if ((v523 | ((v522 & 0x4000000u) >> 26)))
  {
    v531 = 0x4000000;
  }

  else
  {
    v531 = 0;
  }

  v532 = v517[126];
  v533 = v517[128] + v532;
  v517[126] = v532 + 20;
  *v532 = v521;
  *(v532 + 4) = v531 | v522 & 0xFBFFFFFF;
  *(v532 + 8) = v666;
  *(v532 + 16) = v667;
  v534 = v517[6];
  *v534 = __ROR8__(v533, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v517[6] = v534 + 1;
  v491 = v658;
  if ((v658 & 0x1000000000000) == 0)
  {
LABEL_510:
    if ((v491 & 0x2000000000000) == 0)
    {
      goto LABEL_511;
    }

    goto LABEL_556;
  }

LABEL_544:
  v535 = 0;
  v536 = *(a1 + 24);
  v537 = *(a1 + 8);
  v538 = ((*(v537 + 5404) >> 11) & 0x78) + 10;
  v539 = v536[126];
  v540 = v536[128];
  v536[126] = v539 + 4 * v538;
  v541 = *(v537 + 5404);
  v542 = (v541 >> 14) & 0xF;
  *v539 = v541;
  v543 = (v539 + 4);
  v544 = v542 + 1;
  if (v542 < 3 || (v539 - (v537 + 5404)) <= 0x1F)
  {
    goto LABEL_551;
  }

  v535 = v544 & 0x1C;
  v545 = *(v537 + 5424);
  v543 += v535;
  *(v539 + 4) = *(v537 + 5408);
  *(v539 + 20) = v545;
  if (v535 != 4)
  {
    v546 = *(v537 + 5456);
    *(v539 + 36) = *(v537 + 5440);
    *(v539 + 52) = v546;
    if (v535 != 8)
    {
      v547 = *(v537 + 5488);
      *(v539 + 68) = *(v537 + 5472);
      *(v539 + 84) = v547;
      if (v535 != 12)
      {
        v548 = *(v537 + 5520);
        *(v539 + 100) = *(v537 + 5504);
        *(v539 + 116) = v548;
      }
    }
  }

  if (v535 != v544)
  {
LABEL_551:
    v549 = ((v541 >> 14) & 0xF) - v535 + 1;
    v550 = (v537 + 8 * v535 + 5408);
    do
    {
      v551 = *v550++;
      *v543++ = v551;
      --v549;
    }

    while (v549);
  }

  v552 = v540 + v539;
  v553 = v543 + 4;
  *v543 = *(v537 + 5536);
  v554 = (v537 + 5540);
  do
  {
    v555 = *v554;
    *(v553 + 2) = *(v554 + 2);
    *v553 = v555;
    v553 += 24;
    v554 = (v554 + 24);
    --v544;
  }

  while (v544);
  v556 = v536[6];
  *v556 = BYTE4(v552) | (v538 << 8) | ((v552 >> 2) << 34);
  v536[6] = v556 + 1;
  if ((v491 & 0x2000000000000) == 0)
  {
LABEL_511:
    if ((v491 & 0x4000000000000) == 0)
    {
      goto LABEL_512;
    }

    goto LABEL_560;
  }

LABEL_556:
  v557 = *(a1 + 24);
  v558 = *(a1 + 8);
  v559 = *(v558 + 5964);
  v560 = *(v558 + 7688);
  if (v560)
  {
    v561 = *(v560 + 820);
    v562 = *(v560 + 828);
  }

  else
  {
    v561 = 8650754;
    v562 = 128;
  }

  v563 = v557[126];
  v564 = v557[128] + v563;
  v557[126] = v563 + 12;
  *v563 = v561;
  *(v563 + 8) = v562;
  v565 = v557[6];
  *v565 = __ROR8__(v564, 32) & 0xFFFFFFFC000000FFLL | 0x300;
  v557[6] = v565 + 1;
  v566 = v557[126];
  v567 = v566 + v557[128];
  v557[126] = v566 + 1;
  *v566 = v559;
  v568 = v557[6];
  *v568 = __ROR8__(v567, 32) & 0xFFFFFFFC000000FFLL | 0x200;
  v557[6] = v568 + 1;
  if ((v491 & 0x4000000000000) == 0)
  {
LABEL_512:
    if ((v491 & 0x8000000000000) == 0)
    {
      return;
    }

    goto LABEL_513;
  }

LABEL_560:
  v569 = *(a1 + 24);
  v570 = *(a1 + 8);
  v571 = *(v570 + 5924);
  LODWORD(v570) = *(v570 + 5940);
  v572 = v569[42];
  v573 = v569[44] + v572;
  v569[42] = v572 + 20;
  *v572 = v571;
  *(v572 + 16) = v570;
  v574 = v569[6];
  *v574 = __ROR8__(v573, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v569[6] = v574 + 1;
  if ((v491 & 0x8000000000000) != 0)
  {
LABEL_513:
    v492 = *(a1 + 24);
    v493 = *(a1 + 8);
    v494 = *(v493 + 5952);
    LODWORD(v493) = *(v493 + 5960);
    v495 = v492[126];
    v496 = v492[128] + v495;
    v492[126] = v495 + 12;
    *v495 = v494;
    *(v495 + 8) = v493;
    v497 = v492[6];
    *v497 = __ROR8__(v496, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    v492[6] = v497 + 1;
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDepthRanges(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x80000000000000) == 0 && *(*(result + 9752) + 80))
  {
    return result;
  }

  v2 = *(result + 200);
  v3 = v2 + 132;
  if ((v2 + 132) > *(result + 192))
  {
    v81 = result;
    v80 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 24, 4, 0);
    result = v81;
    v2 = *(v81 + 200);
    if (!v80)
    {
      goto LABEL_5;
    }

    v3 = v2 + 132;
    if ((v2 + 132) > *(v81 + 192))
    {
      abort();
    }
  }

  *(result + 208) = v3;
LABEL_5:
  v4 = *(result + 216) + v2;
  *(result + 200) = v2 + 132;
  *v2 = *(result + 6844);
  if (*(result + 7392))
  {
    v5 = 7132;
    v6 = 6876;
    if (!*(result + 6852))
    {
      v6 = 7132;
    }

    v7 = (result + v6);
    v8 = *v7;
    v9 = v7[1];
    if (*(result + 6852))
    {
      v10 = 6884;
    }

    else
    {
      v10 = 7132;
    }

    if (*(result + 6852))
    {
      v11 = 6892;
    }

    else
    {
      v11 = 7132;
    }

    if (*(result + 6852))
    {
      v12 = 6900;
    }

    else
    {
      v12 = 7132;
    }

    if (*(result + 6852))
    {
      v13 = 6908;
    }

    else
    {
      v13 = 7132;
    }

    if (*(result + 6852))
    {
      v14 = 6916;
    }

    else
    {
      v14 = 7132;
    }

    if (*(result + 6852))
    {
      v15 = 6924;
    }

    else
    {
      v15 = 7132;
    }

    if (*(result + 6852))
    {
      v16 = 6932;
    }

    else
    {
      v16 = 7132;
    }

    v17 = 6940;
    if (!*(result + 6852))
    {
      v17 = 7132;
    }

    if (v8 >= v9)
    {
      v18 = v8;
    }

    else
    {
      v18 = v9;
    }

    if (v8 >= v9)
    {
      v8 = v9;
    }

    *(v2 + 4) = v8;
    *(v2 + 8) = v18;
    v19 = (result + v10);
    v20 = *v19;
    v21 = v19[1];
    if (*v19 >= v21)
    {
      v22 = *v19;
    }

    else
    {
      v22 = v19[1];
    }

    if (*v19 >= v21)
    {
      v20 = v19[1];
    }

    *(v2 + 12) = v20;
    *(v2 + 16) = v22;
    v23 = *(result + v11);
    v24 = *(result + v11 + 4);
    if (v23 >= v24)
    {
      v25 = *(result + v11);
    }

    else
    {
      v25 = *(result + v11 + 4);
    }

    if (v23 >= v24)
    {
      v23 = *(result + v11 + 4);
    }

    *(v2 + 20) = v23;
    *(v2 + 24) = v25;
    v26 = *(result + v12);
    v27 = *(result + v12 + 4);
    if (v26 >= v27)
    {
      v28 = *(result + v12);
    }

    else
    {
      v28 = *(result + v12 + 4);
    }

    if (v26 >= v27)
    {
      v26 = *(result + v12 + 4);
    }

    *(v2 + 28) = v26;
    *(v2 + 32) = v28;
    v29 = *(result + v13);
    v30 = *(result + v13 + 4);
    if (v29 >= v30)
    {
      v31 = *(result + v13);
    }

    else
    {
      v31 = *(result + v13 + 4);
    }

    if (v29 >= v30)
    {
      v29 = *(result + v13 + 4);
    }

    *(v2 + 36) = v29;
    *(v2 + 40) = v31;
    v32 = *(result + v14);
    v33 = *(result + v14 + 4);
    if (v32 >= v33)
    {
      v34 = *(result + v14);
    }

    else
    {
      v34 = *(result + v14 + 4);
    }

    if (v32 >= v33)
    {
      v32 = *(result + v14 + 4);
    }

    *(v2 + 44) = v32;
    *(v2 + 48) = v34;
    v35 = *(result + v15);
    v36 = *(result + v15 + 4);
    if (v35 >= v36)
    {
      v37 = *(result + v15);
    }

    else
    {
      v37 = *(result + v15 + 4);
    }

    if (v35 >= v36)
    {
      v35 = *(result + v15 + 4);
    }

    *(v2 + 52) = v35;
    *(v2 + 56) = v37;
    v38 = *(result + v16);
    v39 = *(result + v16 + 4);
    if (v38 >= v39)
    {
      v40 = *(result + v16);
    }

    else
    {
      v40 = *(result + v16 + 4);
    }

    if (v38 >= v39)
    {
      v38 = *(result + v16 + 4);
    }

    *(v2 + 60) = v38;
    *(v2 + 64) = v40;
    v41 = (result + v17);
    v42 = *v41;
    v43 = v41[1];
    if (*v41 >= v43)
    {
      v44 = *v41;
    }

    else
    {
      v44 = v41[1];
    }

    if (*v41 >= v43)
    {
      v42 = v41[1];
    }

    v45 = *(result + 6852);
    *(v2 + 68) = v42;
    *(v2 + 72) = v44;
    v46 = v45 == 0;
    v47 = 6948;
    if (v46)
    {
      v47 = 7132;
    }

    v48 = (result + v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = 6956;
    if (v46)
    {
      v51 = 7132;
    }

    v52 = 6964;
    if (v46)
    {
      v52 = 7132;
    }

    v53 = 6972;
    if (v46)
    {
      v53 = 7132;
    }

    v54 = 6980;
    if (v46)
    {
      v54 = 7132;
    }

    v55 = 6988;
    if (v46)
    {
      v55 = 7132;
    }

    if (!v46)
    {
      v5 = 6996;
    }

    if (v49 >= v50)
    {
      v56 = v49;
    }

    else
    {
      v56 = v50;
    }

    if (v49 >= v50)
    {
      v49 = v50;
    }

    *(v2 + 76) = v49;
    *(v2 + 80) = v56;
    v57 = (result + v51);
    v58 = *v57;
    v59 = v57[1];
    if (*v57 >= v59)
    {
      v60 = *v57;
    }

    else
    {
      v60 = v57[1];
    }

    if (*v57 >= v59)
    {
      v58 = v57[1];
    }

    *(v2 + 84) = v58;
    *(v2 + 88) = v60;
    v61 = *(result + v52);
    v62 = *(result + v52 + 4);
    if (v61 >= v62)
    {
      v63 = *(result + v52);
    }

    else
    {
      v63 = *(result + v52 + 4);
    }

    if (v61 >= v62)
    {
      v61 = *(result + v52 + 4);
    }

    *(v2 + 92) = v61;
    *(v2 + 96) = v63;
    v64 = *(result + v53);
    v65 = *(result + v53 + 4);
    if (v64 >= v65)
    {
      v66 = *(result + v53);
    }

    else
    {
      v66 = *(result + v53 + 4);
    }

    if (v64 >= v65)
    {
      v64 = *(result + v53 + 4);
    }

    *(v2 + 100) = v64;
    *(v2 + 104) = v66;
    v67 = *(result + v54);
    v68 = *(result + v54 + 4);
    if (v67 >= v68)
    {
      v69 = *(result + v54);
    }

    else
    {
      v69 = *(result + v54 + 4);
    }

    if (v67 >= v68)
    {
      v67 = *(result + v54 + 4);
    }

    *(v2 + 108) = v67;
    *(v2 + 112) = v69;
    v70 = *(result + v55);
    v71 = *(result + v55 + 4);
    if (v70 >= v71)
    {
      v72 = *(result + v55);
    }

    else
    {
      v72 = *(result + v55 + 4);
    }

    if (v70 >= v71)
    {
      v70 = *(result + v55 + 4);
    }

    *(v2 + 116) = v70;
    *(v2 + 120) = v72;
    v73 = (result + v5);
    v74 = *v73;
    v75 = v73[1];
    if (*v73 >= v75)
    {
      v76 = *v73;
    }

    else
    {
      v76 = v73[1];
    }

    if (*v73 >= v75)
    {
      v74 = v73[1];
    }

    *(v2 + 124) = v74;
    *(v2 + 128) = v76;
  }

  else
  {
    *&v77 = -1;
    *(&v77 + 1) = -1;
    *(v2 + 100) = v77;
    *(v2 + 116) = v77;
    *(v2 + 68) = v77;
    *(v2 + 84) = v77;
    *(v2 + 36) = v77;
    *(v2 + 52) = v77;
    *(v2 + 4) = v77;
    *(v2 + 20) = v77;
  }

  v78 = *(*(result + 48) + 288) + *MEMORY[0x29EDC5638];
  v79 = *(result + 9752);
  *(v79 + 80) = v4;
  *(v79 + 392) = 0;
  *(result + 9792) = v78;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDispatchMeshDatabufferSpace(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 24);
  v6 = v5[6];
  if (v6 + 180 > v5[5])
  {
    v35 = result;
    v36 = a2;
    v37 = a3;
    v38 = a5;
    v39 = a4;
    v40 = AGX::DataBufferAllocator<44ul>::growNoInline(*(result + 24), 0, 0);
    a3 = v37;
    a4 = v39;
    a2 = v36;
    a5 = v38;
    v41 = v40;
    result = v35;
    if (v41)
    {
      v42 = v5[6] + 180;
      if (v42 > v5[5])
      {
        goto LABEL_78;
      }

      v5[7] = v42;
      *v6 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v5, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      result = v35;
      a5 = v38;
      a2 = v36;
      a4 = v39;
      a3 = v37;
    }
  }

  else
  {
    v5[7] = v6 + 180;
  }

  v7 = *(result + 24);
  if (a3)
  {
    v8 = *(a3 + 624) + 31;
  }

  else
  {
    v8 = 31;
  }

  v9 = *(v7 + 144) + v8;
  if (v9 <= *(v7 + 136))
  {
LABEL_7:
    *(v7 + 152) = v9;
    goto LABEL_8;
  }

  v43 = result;
  v44 = a2;
  v45 = a3;
  v46 = a5;
  v47 = a4;
  v48 = AGX::DataBufferAllocator<44ul>::growNoInline(*(result + 24), 3, 0);
  a3 = v45;
  a4 = v47;
  a2 = v44;
  a5 = v46;
  v49 = v48;
  result = v43;
  if (v49)
  {
    v9 = *(v7 + 144) + v8;
    if (v9 > *(v7 + 136))
    {
      goto LABEL_78;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (a4)
  {
    v10 = *(a4 + 624) + 31;
  }

  else
  {
    v10 = 31;
  }

  v11 = *(v7 + 152);
  v12 = v11 + v10;
  if ((v11 + v10) <= *(v7 + 136))
  {
LABEL_12:
    *(v7 + 152) = v12;
    goto LABEL_13;
  }

  v50 = *(v7 + 144);
  v51 = result;
  v52 = a2;
  v53 = a3;
  v54 = a5;
  v55 = a4;
  v56 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 3, 0);
  a3 = v53;
  a4 = v55;
  a2 = v52;
  a5 = v54;
  v57 = v56;
  result = v51;
  if (v57)
  {
    v12 = *(v7 + 144) + v10 + v11 - v50;
    if (v12 > *(v7 + 136))
    {
      goto LABEL_78;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = *(v7 + 1008) + 636;
  if (v13 <= *(v7 + 1000))
  {
LABEL_14:
    *(v7 + 1016) = v13;
    goto LABEL_15;
  }

  v58 = result;
  v59 = a2;
  v60 = a3;
  v61 = a5;
  v62 = a4;
  v63 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 30, 0);
  a3 = v60;
  a4 = v62;
  a2 = v59;
  a5 = v61;
  v64 = v63;
  result = v58;
  if (v64)
  {
    v13 = *(v7 + 1008) + 636;
    if (v13 > *(v7 + 1000))
    {
      goto LABEL_78;
    }

    goto LABEL_14;
  }

LABEL_15:
  if ((a2 & 0xFE3F80030) == 0)
  {
    goto LABEL_20;
  }

  v14 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v15 = *(v7 + 200);
  v16 = *(v7 + 208);
  v17 = v16 + v14;
  if (v16 + v14 <= v15)
  {
    goto LABEL_17;
  }

  v67 = a4;
  v68 = a2;
  v69 = a5;
  v70 = result;
  v71 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 5, 0);
  v15 = *(v7 + 200);
  v16 = *(v7 + 208);
  if (v71)
  {
    v17 = v16 + v14;
    result = v70;
    a5 = v69;
    a2 = v68;
    a4 = v67;
    if (v16 + v14 > v15)
    {
      goto LABEL_78;
    }

LABEL_17:
    *(v7 + 216) = v17;
    goto LABEL_18;
  }

  v17 = *(v7 + 216);
  result = v70;
  a5 = v69;
  a2 = v68;
  a4 = v67;
LABEL_18:
  v18 = (*(*(a4 + 2392) + 8) - **(a4 + 2392)) + 63;
  v19 = v17 + v18;
  if (v17 + v18 <= v15)
  {
LABEL_19:
    *(v7 + 216) = v19;
    goto LABEL_20;
  }

  v72 = result;
  v73 = a2;
  v74 = a5;
  v75 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 5, 0);
  a2 = v73;
  a5 = v74;
  v76 = v75;
  result = v72;
  if (v76)
  {
    v19 = *(v7 + 208) + v18 + v17 - v16;
    if (v19 > *(v7 + 200))
    {
      goto LABEL_78;
    }

    goto LABEL_19;
  }

LABEL_20:
  if ((a2 & 0xF8000000002) == 0)
  {
    goto LABEL_30;
  }

  v20 = (*(*(a5 + 2392) + 8) - **(a5 + 2392)) + 63;
  v21 = *(v7 + 240) + v20;
  if (v21 <= *(v7 + 232))
  {
    goto LABEL_22;
  }

  v77 = result;
  v78 = a5;
  v79 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, 6, 0);
  a5 = v78;
  v80 = v79;
  result = v77;
  if (v80)
  {
    v21 = *(v7 + 240) + v20;
    if (v21 > *(v7 + 232))
    {
      goto LABEL_78;
    }

LABEL_22:
    *(v7 + 248) = v21;
  }

  v22 = *(a5 + 624);
  if (*(v7 + 1840))
  {
    v23 = 4;
  }

  else
  {
    v23 = 11;
  }

  v24 = (v7 + 40 + 32 * v23);
  if (((1 << v23) & 0x480) != 0 && !v24[1])
  {
    v87 = result;
    v88 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, v23, 0);
    result = v87;
    if ((v88 & 1) == 0)
    {
LABEL_78:
      abort();
    }
  }

  v25 = v22 + 31;
  v26 = v24[1] + v25;
  if (v26 <= *v24)
  {
    goto LABEL_29;
  }

  v81 = result;
  v82 = AGX::DataBufferAllocator<44ul>::growNoInline(v7, v23, 0);
  result = v81;
  if (v82)
  {
    v26 = v24[1] + v25;
    if (v26 > *v24)
    {
      goto LABEL_78;
    }

LABEL_29:
    v24[2] = v26;
  }

LABEL_30:
  v27 = *(result + 24);
  v28 = v27[42] + 20;
  if (v28 <= v27[41])
  {
LABEL_31:
    v27[43] = v28;
    goto LABEL_32;
  }

  v65 = result;
  v66 = AGX::DataBufferAllocator<44ul>::growNoInline(*(result + 24), 9, 0);
  result = v65;
  if (v66)
  {
    v28 = v27[42] + 20;
    if (v28 > v27[41])
    {
      goto LABEL_78;
    }

    goto LABEL_31;
  }

LABEL_32:
  v29 = *(result + 8);
  if ((*(*(*(v29 + 1872) + 848) + 6242) & 1) == 0)
  {
    v30 = 16 * *(v29 + 6844);
    v31 = *(v29 + 328) + v30;
    if (v31 > *(v29 + 320))
    {
      v83 = result;
      v84 = AGX::DataBufferAllocator<44ul>::growNoInline(v29 + 24, 8, 1);
      result = v83;
      if (v84)
      {
        v85 = *(v29 + 328) + v30;
        if (v85 > *(v29 + 320))
        {
          goto LABEL_78;
        }

        *(v29 + 336) = v85;
        *(*(v29 + 7664) + 944) = *(*(v29 + 48) + 512) + *(*(v29 + 48) + 536) - *(*(v29 + 48) + 520);
      }
    }

    else
    {
      *(v29 + 336) = v31;
    }
  }

  v32 = *(result + 8);
  if ((*(*(v32[234] + 848) + 6241) & 1) == 0)
  {
    v33 = v32[37];
    if (!v33)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline((v32 + 3), 7, 0))
      {
        goto LABEL_78;
      }

      v33 = v32[37];
    }

    v34 = v33 + 12;
    if (v34 > v32[36])
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline((v32 + 3), 7, 1))
      {
        v86 = v32[37];
        if ((v86 + 12) > v32[36])
        {
          goto LABEL_78;
        }

        v32[38] = v86 + 12;
        if (!v86)
        {
          AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow((v32 + 3), 7);
        }

        *(v32[958] + 952) = *(v32[6] + 448) + *(v32[6] + 472) - *(v32[6] + 456);
      }
    }

    else
    {
      v32[38] = v34;
    }
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDeviceScissorBufferReserve(uint64_t result, unint64_t *a2, _DWORD *a3, uint64_t *a4, _BYTE *a5, _BYTE *a6, uint64_t *a7, double a8, double a9, float a10, float a11, float a12, __n128 a13)
{
  *a3 = -1;
  *a4 = 4123088130;
  *a5 = 0;
  if (*(*(*(result + 1872) + 848) + 6242) == 1)
  {
    v13 = *a2;
    if ((*a2 & 0x200000000000) != 0)
    {
      v14 = result + 4096;
      v15 = *(result + 6872);
      v16 = result;
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions(result + 6048, a2, a8, a9, a10, a11, a12, a13);
      *a5 = result;
      if ((*(v14 + 2746) & 1) == 0)
      {
        if (result | (v13 >> 54) & 1 & (v15 ^ 1u))
        {
          result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg(v16 + 6048);
          if ((result & 1) == 0)
          {
            result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip(v16 + 6048);
            if (result)
            {
              v25 = 0;
              v24 = 0;
              result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(*(*(v16 + 1872) + 848), v16 + 6048, 0, *(*(v16 + 7664) + 944), &v25, &v24 + 1, &v24);
              if (v24)
              {
                if ((v24 & 0x100) != 0)
                {
                  v18 = a4;
                  *a3 = result;
                  v19 = v25;
                }

                else
                {
                  v18 = a7;
                  *a6 = 1;
                  v19 = *a7 | 2;
                }

                *v18 = v19;
              }

              else
              {
                *a6 = 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleScissorUpdates(uint64_t result, unint64_t *a2, int a3, unint64_t a4, char a5, int a6, double a7, double a8, float a9, float a10, float a11, __n128 a12)
{
  v12 = *a2;
  if ((*a2 & 0x200000000000) == 0)
  {
    return result;
  }

  v13 = result + 4096;
  v14 = *(result + 6872);
  v15 = *(*(*(result + 1872) + 848) + 6242) == 1 && a6 == 0;
  v16 = result;
  if (!v15)
  {
    v19 = a2;
    result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions(result + 6048, a2, a7, a8, a9, a10, a11, a12);
    a2 = v19;
    a5 = result;
  }

  if (*(v13 + 2746))
  {
    v20 = *(v16 + 5976);
    *(v16 + 5976) = v20 & 0xFFFEFFFF;
    if ((v20 & 0x10000) == 0)
    {
      return result;
    }

LABEL_29:
    *a2 |= 0x100000000000uLL;
    return result;
  }

  v21 = v16;
  if (!(a5 & 1 | (v12 >> 54) & 1 & (v14 ^ 1u)))
  {
    v22 = *(v13 + 3064);
    goto LABEL_25;
  }

  v31 = a2;
  v34 = *(v16 + 7168);
  result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg(v16 + 6048);
  if (result)
  {
    *(v13 + 3064) = 0;
LABEL_14:
    v21 = v16;
    goto LABEL_23;
  }

  result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip(v16 + 6048);
  v21 = v16;
  if (result)
  {
    *(v13 + 3064) = 1;
    result = *(*(v16 + 1872) + 848);
    if (*(result + 6242) == 1)
    {
      if (a3 == -1)
      {
        v33 = 0;
        result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(result, v16 + 6048, 0, *(*(v16 + 7664) + 944), &v34, &v33, &v32);
      }

      else
      {
        v34 = a4;
      }

      goto LABEL_14;
    }

    v23 = *(v16 + 328);
    v34 = v23 + *(v16 + 344);
    v24 = v34;
    *(v16 + 328) = v23 + 2;
    result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>>(v16 + 6048, v16, 0, v23, v24);
    for (i = 1; ; ++i)
    {
      v21 = v16;
      if (i >= *(v16 + 6844))
      {
        break;
      }

      v26 = *(v16 + 328);
      v27 = *(v16 + 344);
      *(v16 + 328) = v26 + 2;
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>>(v16 + 6048, v16, i, v26, v26 + v27);
    }
  }

LABEL_23:
  v22 = *(v13 + 3064);
  a2 = v31;
  if (v22 == 1)
  {
    v28 = v34;
    v21[1485] = v34 & 0xFFFFFFFC;
    v21[1484] = (v28 >> 16) & 0xFFFF0000;
    *v31 |= 0x4000000000000uLL;
  }

LABEL_25:
  v29 = v21[1494];
  if (v22)
  {
    v30 = 0x10000;
  }

  else
  {
    v30 = 0;
  }

  v21[1494] = v29 & 0xFFFEFFFF | v30;
  if ((v22 ^ ((v29 & 0x10000u) >> 16)))
  {
    goto LABEL_29;
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDepthBiasUpdates(uint64_t result, uint64_t a2, int a3, unint64_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8)
{
  if ((*(a2 + 5) & 0x40) != 0)
  {
    v23[3] = v8;
    v23[4] = v9;
    a5.i32[0] = *(result + 7184);
    v10 = *(result + 7188);
    v11 = *(result + 7192);
    a8.i32[0] = 931135616;
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    LODWORD(v13) = vbslq_s8(v12, a8, a5).u32[0];
    if (*(*(result + 2392) + 4924))
    {
      *a5.i32 = v13 + (*a5.i32 * 0.000015259);
    }

    v23[0] = 0;
    v14 = *(*(result + 1872) + 848);
    if (*(v14 + 6241) == 1)
    {
      if (a3 == -1)
      {
        v22 = 0;
        v17 = a2;
        v19 = result;
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v14, *(*(result + 7664) + 952), v23, &v22, &v21, *a5.i32, v10, v11);
        a2 = v17;
        result = v19;
        a4 = v23[0];
      }
    }

    else
    {
      *&a5.i32[1] = v10;
      v15 = *(result + 296);
      v16 = *(result + 312) + v15;
      *(result + 296) = v15 + 12;
      *v15 = a5.i64[0];
      *(v15 + 8) = v11;
      v18 = a2;
      v20 = result;
      AGX::DataBufferAllocator<44ul>::getBasePointer<AGX::IPFEncoderGen4<kAGXRevHAL300>::DepthBiasBits>(result + 24);
      a4 = v16;
      a2 = v18;
      result = v20;
    }

    *(result + 5932) = a4 & 0xFFFFFFFC;
    *(result + 5928) = (a4 >> 16) & 0xFFFF0000;
    *a2 |= 0x4000000000000uLL;
  }

  return result;
}

uint64_t AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>>(uint64_t result, uint64_t a2, unsigned int a3, int32x2_t *a4, uint64_t a5)
{
  v5 = (result + 16 * a3 + 520);
  if (*(result + 804))
  {
    v6 = (result + 8 * a3 + 828);
  }

  else
  {
    v6 = (result + 1084);
  }

  v7 = *v6;
  v8 = vshrn_n_s64(*v5, 0x20uLL);
  *&v9 = vmovn_s64(*v5);
  *a4 = vsli_n_s32(v8, *&v9, 0x10uLL);
  a4[1] = v7;
  if (*(result + 824) == 1)
  {
    v10 = *(*(*(a2 + 10536) + 64) + 16);
    v11 = *(a2 + 744);
    *(a2 + 744) = v11 + 56;
    *v11 = 0;
    *(v11 + 4) = v10;
    *(v11 + 8) = a5;
    *(&v9 + 1) = v8;
    *(v11 + 16) = v9;
    *(v11 + 32) = a3;
    v12 = *(a2 + 7328) + 1;
    *(a2 + 7328) = v12;
    *(*(a2 + 7320) + 4) = v12;
    ++*(a2 + 1956);
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreads(void *a1, unint64_t *a2, void *a3, unsigned int *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v7 = a1[1];
    v8 = *(v7 + 7688);
  }

  else
  {
    v7 = a1[1];
    v8 = *(v7 + 7688);
    v9 = *(v8 + 24);
    if (v9)
    {
      v9 = *(v9 + 3948);
    }

    if (a3[1] * a3[2] * *a3 > v9)
    {
      return;
    }
  }

  v10 = *(v8 + 32);
  if (v10)
  {
    v10 = *(v10 + 4036);
  }

  if (*(a4 + 1) * *a4 * *(a4 + 2) <= v10)
  {
    v12 = *(a1[5] + 3820);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v7, v12);
    v14 = *a4;
    v15 = *(a4 + 1);
    v16 = a4[4];
    v17 = a1[4];
    if (*(v17 + 3946) == 1)
    {
      v18 = *a2 / v14;
      v19 = a2[1] / v15;
      v20 = *(v17 + 3752);
      LODWORD(v21) = *(v17 + 3760);
      v49 = HIDWORD(v20);
      v22 = v20;
      v23 = v21;
      a2 = (a2[2] / v16);
    }

    else
    {
      v22 = *a3 | (a3[1] << 32);
      v23 = *(a3 + 4);
      v20 = *a2;
      v19 = a2[1];
      v21 = a2[2];
      v18 = *a2;
      LODWORD(v49) = v19;
      LODWORD(a2) = v21;
    }

    v24 = a1[1];
    v25 = v24[21] + 12;
    if (v25 > v24[20])
    {
      v46 = v16;
      v47 = v14;
      v45 = v23;
      v41 = AGX::DataBufferAllocator<44ul>::growNoInline((v24 + 3), 3, 0);
      LODWORD(v16) = v46;
      v14 = v47;
      v23 = v45;
      if (!v41)
      {
        goto LABEL_14;
      }

      v25 = v24[21] + 12;
      if (v25 > v24[20])
      {
        goto LABEL_28;
      }
    }

    v24[22] = v25;
LABEL_14:
    v26 = a1[1];
    v27 = v26[21];
    v28 = v26[23];
    v26[21] = v27 + 3;
    *v27 = v18;
    v27[1] = v19;
    v27[2] = a2;
    v29 = a1[131];
    *(v29 + 72) = v27 + v28;
    *(v29 + 384) = v27;
    v30 = MEMORY[0x29EDC5638];
    a1[136] = *(v26[6] + 224) + *MEMORY[0x29EDC5638];
    v26[1273] |= 0x800000000uLL;
    v26[1279] |= 0x800000000uLL;
    v26[1309] |= 0x30000uLL;
    v31 = v26[21] + 12;
    if (v31 <= v26[20])
    {
      goto LABEL_15;
    }

    v42 = v16;
    v43 = v23;
    v48 = v14;
    v44 = AGX::DataBufferAllocator<44ul>::growNoInline((v26 + 3), 3, 0);
    v14 = v48;
    v23 = v43;
    LODWORD(v16) = v42;
    if (!v44)
    {
      goto LABEL_16;
    }

    v31 = v26[21] + 12;
    if (v31 <= v26[20])
    {
LABEL_15:
      v26[22] = v31;
LABEL_16:
      v32 = a1[1];
      v33 = v14 | (v15 << 32);
      v34 = *(v32 + 168);
      v35 = *(v32 + 184);
      *(v32 + 168) = v34 + 12;
      *v34 = 0x100000001;
      *(v34 + 8) = 1;
      v36 = a1[131];
      *(v36 + 80) = v35 + v34;
      *(v36 + 392) = v34;
      a1[137] = *(*(v32 + 48) + 224) + *v30;
      *(v32 + 10184) |= 0x1000000000uLL;
      *(v32 + 10232) |= 0x1000000000uLL;
      *(v32 + 10472) |= 0x30000uLL;
      v37 = v23;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], *(v32 + 7680), a1[130], a1[259], *(v32 + 9744), v13, v33, v16, v22, v23, v32 + 10088, 0);
      v38 = a1[1];
      if (v12 == 1)
      {
        v39 = 1879048448;
      }

      else
      {
        v39 = 1879048192;
      }

      if (v12 == 3)
      {
        v39 = 1879049728;
      }

      ++*(v38 + 1940);
      v40 = *(v38 + 72);
      *v40 = v39;
      *(v40 + 4) = v20;
      *(v40 + 8) = v49;
      *(v40 + 12) = v21;
      *(v40 + 16) = v22;
      *(v40 + 24) = v37;
      *(v38 + 72) = v40 + 28;
      *(a1[1] + 1960) = 0;
      return;
    }

LABEL_28:
    abort();
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::drawMeshThreadgroups(void *a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  if (*(a1[4] + 3946) == 1)
  {
    v8 = a1[1];
    v9 = *(v8 + 7688);
  }

  else
  {
    v8 = a1[1];
    v9 = *(v8 + 7688);
    v10 = *(v9 + 24);
    if (v10)
    {
      v10 = *(v10 + 3948);
    }

    if (a3[1] * a3[2] * *a3 > v10)
    {
      return;
    }
  }

  v11 = *(v9 + 32);
  if (v11)
  {
    v11 = *(v11 + 4036);
  }

  if (*(a4 + 1) * *a4 * *(a4 + 2) <= v11)
  {
    v12 = *(a1[5] + 3820);
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v8, v12);
    v14 = a1[4];
    if (*(v14 + 3946) == 1)
    {
      v15 = *(v14 + 3752);
      v16 = *(v14 + 3760);
      v50 = HIDWORD(v15);
      v18 = *a2;
      v17 = a2[1];
      v19 = a2[2];
      LODWORD(v51) = v15;
      v49 = v16;
    }

    else
    {
      v20 = a3[1];
      v16 = *(a3 + 4);
      v18 = *a2;
      v17 = a2[1];
      v51 = *a2 * *a3;
      v15 = *a3 | (v20 << 32);
      LODWORD(v50) = v17 * v20;
      v19 = a2[2];
      v49 = v19 * v16;
    }

    v21 = *a4;
    v22 = *(a4 + 1);
    v23 = a4[4];
    v24 = a1[1];
    v25 = v24[21] + 12;
    if (v25 > v24[20])
    {
      v47 = v16;
      v46 = v23;
      v42 = AGX::DataBufferAllocator<44ul>::growNoInline((v24 + 3), 3, 0);
      v23 = v46;
      v16 = v47;
      if (!v42)
      {
        goto LABEL_14;
      }

      v25 = v24[21] + 12;
      if (v25 > v24[20])
      {
        goto LABEL_28;
      }
    }

    v24[22] = v25;
LABEL_14:
    v26 = a1[1];
    v27 = v26[21];
    v28 = v26[23];
    v26[21] = v27 + 3;
    *v27 = v18;
    v27[1] = v17;
    v27[2] = v19;
    v29 = a1[131];
    *(v29 + 72) = v27 + v28;
    *(v29 + 384) = v27;
    v30 = MEMORY[0x29EDC5638];
    a1[136] = *(v26[6] + 224) + *MEMORY[0x29EDC5638];
    v26[1273] |= 0x800000000uLL;
    v26[1279] |= 0x800000000uLL;
    v26[1309] |= 0x30000uLL;
    v31 = *a3;
    v32 = a3[2];
    v33 = v26[21] + 12;
    if (v33 <= v26[20])
    {
      goto LABEL_15;
    }

    v43 = v16;
    v44 = v23;
    v48 = v31;
    v45 = AGX::DataBufferAllocator<44ul>::growNoInline((v26 + 3), 3, 0);
    v31 = v48;
    v23 = v44;
    v16 = v43;
    if (!v45)
    {
      goto LABEL_16;
    }

    v33 = v26[21] + 12;
    if (v33 <= v26[20])
    {
LABEL_15:
      v26[22] = v33;
LABEL_16:
      v34 = a1[1];
      v35 = *(v34 + 168);
      v36 = *(v34 + 184);
      *(v34 + 168) = v35 + 12;
      *v35 = vmovn_s64(v31);
      v35[1].i32[0] = v32;
      v37 = a1[131];
      *(v37 + 80) = v35 + v36;
      *(v37 + 392) = v35;
      a1[137] = *(*(v34 + 48) + 224) + *v30;
      *(v34 + 10184) |= 0x1000000000uLL;
      *(v34 + 10232) |= 0x1000000000uLL;
      *(v34 + 10472) |= 0x30000uLL;
      v38 = v16;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], *(v34 + 7680), a1[130], a1[259], *(v34 + 9744), v13, v21 | (v22 << 32), v23, v15, v16, v34 + 10088, 0);
      v39 = a1[1];
      if (v12 == 1)
      {
        v40 = 1879048448;
      }

      else
      {
        v40 = 1879048192;
      }

      if (v12 == 3)
      {
        v40 = 1879049728;
      }

      ++*(v39 + 1940);
      v41 = *(v39 + 72);
      *v41 = v40;
      *(v41 + 4) = v51;
      *(v41 + 8) = v50;
      *(v41 + 12) = v49;
      *(v41 + 16) = v15;
      *(v41 + 24) = v38;
      *(v39 + 72) = v41 + 28;
      *(a1[1] + 1960) = 0;
      return;
    }

LABEL_28:
    abort();
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeCommandsInBufferCommon(uint64_t a1)
{
  result = MEMORY[0x2A1C7C4A8](a1);
  v642 = v4;
  if (*(*(v2 + 424) + 399) != 1)
  {
    return result;
  }

  v5 = v3;
  v6 = v2;
  v7 = result;
  v8 = (result + 7272);
  if ((*(result + 7272) & 1) == 0)
  {
    *v8 = 1;
    *(result + 7260) = 0;
    if ((*(result + 2075) & 1) != 0 || (*(result + 2076) & 1) == 0 && (*(result + 2074) != 1 || *(result + 2072) == 1))
    {
      v9 = *(result + 8480);
      v9[21] = 0;
      v10 = *(result + 9752);
      v10[22] = 0;
      v9[22] = 0;
      v10[23] = 0;
      v9[25] = 0;
      v10[26] = 0;
    }

    v11 = *(result + 8480);
    v11[26] = 0;
    v12 = *(result + 9752);
    v12[27] = 0;
    v11[28] = 0;
    v12[29] = 0;
    v11[40] = 0;
    v12[41] = 0;
    v11[29] = 0;
    v12[30] = 0;
    v11[42] = 0;
    v12[43] = 0;
    v11[31] = 0;
    v12[32] = 0;
  }

  if (*(result + 1896))
  {
    MTLResourceListAddResource();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v7, 3);
  if (*(*(v6 + 424) + 396) == 1)
  {
    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(*(v7 + 7688), *(v7 + 1912));
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v14 = atomic_load((*(*(v7 + 1872) + 848) + 17016));
    v8[3272] |= v14 & 1;
  }

  if (*(*(v6 + 424) + 397))
  {
    v13 |= 2u;
  }

  v8[140] = v13;
  *(v7 + 1960) = 0;
  if (!*(v7 + 4992))
  {
    v15 = *(v7 + 64);
    v16 = *(v7 + 72);
    *(v7 + 10720) = v16;
    if ((v16 + 1) > v15)
    {
      v609 = AGX::DataBufferAllocator<44ul>::growNoInline(v7 + 24, 0, 0);
      v17 = *(v7 + 72);
      if (v609)
      {
        v610 = v17 + 1;
        if (v610 > *(v7 + 64))
        {
          goto LABEL_597;
        }

        *(v7 + 80) = v610;
        *v16 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v7 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
        v17 = *(v7 + 72);
      }
    }

    else
    {
      *(v7 + 80) = v16 + 1;
      v17 = v16;
    }

    *v17 = 0x80000000;
    v18 = v17 + 1;
    *(v7 + 72) = v18;
    *(v7 + 10728) = v18 + *(v7 + 88);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::updateVirtualMapping(v7, 1, *(*(v6 + 424) + 396));
  v635 = *(v7 + 9752);
  v637 = *(v7 + 2392);
  v19 = *(v7 + 7688);
  v646 = *(v7 + 6000);
  v647 = *(v7 + 6016);
  v644 = v8;
  if (v19)
  {
    v20 = (*(v19 + 207) & 0x20000) == 0;
  }

  else
  {
    v20 = 1;
  }

  v632 = v20;
  v627 = (v7 + 2412);
  v21 = *(v6 + 424);
  v22 = *(*(*(v7 + 4968) + 8) + 2728);
  v23 = MEMORY[0x29EDC5638];
  do
  {
    v22 &= ~(1 << __clz(__rbit32(v22)));
    IOGPUResourceListAddResource();
  }

  while (v22);
  if (!*(v7 + 4992))
  {
    *(v7 + 4992) = *(*(v7 + 4960) + 96) + *(*(v7 + 4960) + 80);
  }

  v639 = v6;
  v641 = v5;
  if (v5)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = *(v7 + 4960);
    goto LABEL_71;
  }

  v28 = *(v7 + 5016);
  v29 = *(v7 + 4960);
  if (!v28)
  {
    *(v7 + 4984) = v29[16] + v29[14];
  }

  v30 = v29[74];
  if (!v30)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v29, 17, 0))
    {
      goto LABEL_597;
    }

    v30 = v29[74];
  }

  v31 = v30 + 32;
  v32 = v29[73];
  v33 = v31 > v32;
  if (v31 > v32)
  {
    v611 = AGX::DataBufferAllocator<44ul>::growNoInline(v29, 17, 0);
    v34 = 0;
    if (!v611)
    {
      goto LABEL_32;
    }

    v31 = v29[74] + 32;
    if (v31 > v29[73])
    {
      goto LABEL_597;
    }
  }

  v29[75] = v31;
  v34 = v33;
LABEL_32:
  if (v28 && !v34)
  {
    goto LABEL_60;
  }

  v35 = *(*(*(v7 + 4976) + 8) + 2728);
  do
  {
    v35 &= ~(1 << __clz(__rbit32(v35)));
    IOGPUResourceListAddResource();
  }

  while (v35);
  v36 = *(v7 + 5008);
  if (v36)
  {
    *(v36 + 4) = *(v7 + 5000);
  }

  v37 = *(v7 + 4960);
  v38 = v37[74];
  v39 = v37;
  if (!v38)
  {
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(*(v7 + 4960), 17);
    v38 = v37[74];
    v39 = *(v7 + 4960);
  }

  v40 = v37[76] + v38;
  *(v7 + 5000) = 0;
  *(v7 + 5008) = 0;
  *(v7 + 5016) = v40;
  v41 = *(*(v7 + 4976) + 8);
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v661 = v40;
  v669 = 0;
  v42 = v39[14];
  if ((v42 + 26) > v39[13])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(v39, 2, 0))
    {
      v615 = v39[14] + 208;
      if (v615 > v39[13])
      {
        goto LABEL_597;
      }

      v39[15] = v615;
      *v42 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v39, 2), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v39[15] = v42 + 26;
  }

  v648 = xmmword_29D2F2500;
  bzero(v649, 0x2A4uLL);
  v658 = 0u;
  v659 = 1065353216;
  v660 = 0x100000001;
  v43 = *(v7 + 4960);
  if (v41)
  {
    v44 = *(v41 + 624) + 31;
  }

  else
  {
    v44 = 31;
  }

  v45 = *(v43 + 144) + v44;
  if (v45 <= *(v43 + 136))
  {
    goto LABEL_49;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v45 = *(v43 + 144) + v44;
    if (v45 > *(v43 + 136))
    {
      goto LABEL_597;
    }

LABEL_49:
    *(v43 + 152) = v45;
  }

  v46 = *(v43 + 1008) + 636;
  if (v46 <= *(v43 + 1000))
  {
LABEL_51:
    *(v43 + 1016) = v46;
    goto LABEL_52;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v43, 30, 0))
  {
    v46 = *(v43 + 1008) + 636;
    if (v46 > *(v43 + 1000))
    {
      goto LABEL_597;
    }

    goto LABEL_51;
  }

LABEL_52:
  if (*(v43 + 1840))
  {
    v47 = 30;
  }

  else
  {
    v47 = 31;
  }

  v48 = (v43 + 40 + 32 * v47);
  v49 = v48[1] + 520;
  if (v49 <= *v48)
  {
LABEL_56:
    v48[2] = v49;
    goto LABEL_57;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v43, v47, 0))
  {
    v49 = v48[1] + 520;
    if (v49 > *v48)
    {
      goto LABEL_597;
    }

    goto LABEL_56;
  }

LABEL_57:
  v50 = (*(*(v41 + 2392) + 8) - **(v41 + 2392)) + 63;
  v51 = *(v43 + 208) + v50;
  if (v51 > *(v43 + 200))
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v43, 5, 0))
    {
      goto LABEL_59;
    }

    v51 = *(v43 + 208) + v50;
    if (v51 > *(v43 + 200))
    {
      goto LABEL_597;
    }
  }

  *(v43 + 216) = v51;
LABEL_59:
  v52 = *(v7 + 4936);
  v53 = *(v7 + 4960);
  LODWORD(v674) = 4;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(v52, v53, v41, &v661, &v648, 1, &v674);
  v54 = *(v7 + 4960);
  v55 = v54[126];
  v56 = v54[128] + v55;
  v54[126] = v55 + 20;
  *v55 = xmmword_29D2F2510;
  *(v55 + 16) = 0;
  v57 = v54[14];
  *v57 = __ROR8__(v56, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v54[14] = v57 + 1;
  v58 = v54[126];
  v59 = v54[128] + v58;
  v54[126] = v58 + 28;
  *v58 = xmmword_29D2F1780;
  *(v58 + 16) = 0xE0000000E000000;
  v60 = __ROR8__(v59, 32);
  *(v58 + 24) = 0;
  v61 = v54[14];
  *v61 = v60 & 0xFFFFFFFC000000FFLL | 0x700;
  v54[14] = v61 + 1;
  v62 = *(v41 + 4112);
  v63 = *(v7 + 4960);
  v64 = v63[126];
  v65 = v63[128] + v64;
  v63[126] = v64 + 20;
  *v64 = 203948032;
  *(v64 + 4) = v62 & 0xF1C00FF;
  *(v64 + 8) = 0;
  *(v64 + 16) = HIDWORD(v62);
  v66 = v63[14];
  *v66 = __ROR8__(v65, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v63[14] = v66 + 1;
  v67 = *(v7 + 4960);
  v68 = v67[126];
  v69 = v67[128] + v68;
  v67[126] = v68 + 12;
  *v68 = 8650754;
  *(v68 + 8) = 131200;
  v70 = __ROR8__(v69, 32);
  v71 = v67[14];
  *v71 = v70 & 0xFFFFFFFC000000FFLL | 0x300;
  v67[14] = v71 + 1;
  v72 = v67[126];
  v73 = v72 + v67[128];
  v67[126] = v72 + 1;
  v74 = __ROR8__(v73, 32);
  *v72 = 0x48000800000;
  v75 = v67[14];
  *v75 = v74 & 0xFFFFFFFC000000FFLL | 0x200;
  v67[14] = v75 + 1;
  v76 = *(v7 + 4960);
  v77 = *(v76 + 112);
  *v77 = 0xFFFF40000001;
  *(v76 + 112) = v77 + 1;
  v78 = *(v7 + 4960);
  v79 = *(v78 + 112);
  *v79 = xmmword_29D2F2520;
  *(v78 + 112) = v79 + 1;
  ++*(v7 + 1940);
  *(v7 + 5008) = v79;
LABEL_60:
  v80 = *(v7 + 4960);
  v81 = *(v80 + 1840) - 1;
  if (v81 > 6)
  {
    v82 = 31;
  }

  else
  {
    v82 = dword_29D2F750C[v81];
  }

  v83 = v82;
  v84 = v80 + 32 * v82;
  if (((1 << v82) & 0xFFF339E0480) != 0 && !*(v84 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), v82, 0) & 1) == 0)
  {
    goto LABEL_597;
  }

  v86 = *(v84 + 40);
  v85 = *(v84 + 48);
  v87 = (v84 + 40);
  v88 = v85 + 8;
  if (v88 > v86)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v80, v83, 0))
    {
      goto LABEL_67;
    }

    v88 = v87[1] + 8;
    if (v88 > *v87)
    {
      goto LABEL_597;
    }
  }

  v87[2] = v88;
LABEL_67:
  v27 = *(v7 + 4960);
  v89 = *(v27 + 1840) - 1;
  if (v89 > 6)
  {
    v91 = 1056;
    v90 = 1040;
  }

  else
  {
    v90 = qword_29D2F7528[v89];
    v91 = qword_29D2F7560[v89];
  }

  v25 = *(v27 + v90);
  v24 = v25 + *(v27 + v91);
  *(v27 + v90) = v25 + 2;
  v26 = *(v27 + 592);
  *(v27 + 592) = v26 + 4;
  *v26 = *(v6 + *v23 + 8);
  v26[1] = v642;
  v26[2] = 0;
  v26[3] = v24 + 0x1000000000;
  ++*(v7 + 5000);
LABEL_71:
  v92 = *(v7 + 11368);
  v93 = *(*(v7 + 4968) + 8);
  v94 = *(v27 + 176) + 1231;
  if (v94 <= *(v27 + 168))
  {
LABEL_72:
    *(v27 + 184) = v94;
    goto LABEL_73;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v27, 4, 0))
  {
    v94 = *(v27 + 176) + 1231;
    if (v94 > *(v27 + 168))
    {
      goto LABEL_597;
    }

    goto LABEL_72;
  }

LABEL_73:
  *v630 = v26;
  v95 = *(v7 + 4960);
  v96 = v95[24];
  v640 = ((v95[22] + 31) & 0xFFFFFFFFFFFFFFE0);
  v95[22] = v640 + 1200;
  v97 = v95[18] + 1063;
  if (v97 <= v95[17])
  {
LABEL_74:
    v95[19] = v97;
    goto LABEL_75;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v95, 3, 0))
  {
    v97 = v95[18] + 1063;
    if (v97 > v95[17])
    {
      goto LABEL_597;
    }

    goto LABEL_74;
  }

LABEL_75:
  v634 = v96;
  v625 = v24;
  v98 = 0;
  v99 = *(v7 + 4960);
  v100 = v99[20];
  __dst = ((v99[18] + 31) & 0xFFFFFFFFFFFFFFE0);
  v99[18] = __dst + 1032;
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  v101 = *(v6 + 416) + *MEMORY[0x29EDC5638];
  v102 = *(v101 + 8);
  v103 = *(v101 + 24);
  v626 = v100;
  if (v19)
  {
    v104 = 0;
    if (*(v21 + 396))
    {
      v98 = *v19;
      v104 = v19[1];
    }
  }

  else
  {
    v104 = 0;
  }

  v661 = v102;
  v669 = v103;
  v105 = (__dst + 1768);
  if ((__dst + 1768) <= v99[17])
  {
LABEL_80:
    v99[19] = v105;
    goto LABEL_81;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v99, 3, 0))
  {
    v105 = v99[18] + 736;
    if (v105 > v99[17])
    {
      goto LABEL_597;
    }

    goto LABEL_80;
  }

LABEL_81:
  v624 = v25;
  v106 = *(v7 + 4960);
  v107 = *(v106 + 144);
  v108 = *(v106 + 160) + v107;
  *(v106 + 144) = v107 + 736;
  v662 = v108;
  v670 = v107;
  if (*(v21 + 396))
  {
    v109 = 1;
  }

  else
  {
    v109 = 2;
  }

  *(v107 + 72) = v109;
  if (v19)
  {
    v110 = v19[4];
    if (v110)
    {
      v111 = v19[3];
      v112 = *(&v110[469] + 4);
      *(v107 + 252) = v110[468].i32[1];
      *(v107 + 256) = v112;
      *(v107 + 264) = 4 * v110[503].i32[0];
      *(v107 + 270) = v111[493].i8[2];
      v113 = v110[477].u32[1];
      v114 = v113 == 1;
      if (v113 == 3)
      {
        v114 = 6;
      }

      *(v107 + 268) = v114;
      if (v113 >= 4)
      {
        v115 = 0;
      }

      else
      {
        v115 = 0x104u >> (8 * v113);
      }

      *(v107 + 269) = v115;
      *(v107 + 272) = 4 * v111[474].i32[0];
    }
  }

  if (v104)
  {
    v116 = v104 + 28 * v632;
    v117 = *(v116 + 974);
    v118 = *(v116 + 975);
    v119 = *(v116 + 976) & 0x3FFFFF;
    v120 = *(v116 + 489);
    *&v674 = v120;
    *(v107 + 76) = v117 & 0xFFFFFFDF;
    *(v107 + 80) = v118;
    *(v107 + 84) = v119;
    *(v107 + 92) = v120;
    v121 = v104[408];
    v648 = 0u;
    *v649 = 0u;
    *&v649[20] = 1;
    *&v649[24] = *&v121 & 0xFFFFFFFFFFFFLL;
    *&v649[12] = 0x300000008;
    AGXIotoInstruction_B_1::emit(&v648, (v107 + 208));
  }

  if (v98)
  {
    v122 = (*v19)[476].i32[0];
    v123 = (*v19)[477].i32[1];
    v124 = (*v19)[476].i32[1] & 0x3FFFFF;
    v125 = vand_s8((*v19)[475], 0x3FFFF0000);
    v126 = v19[463];
    if (v126)
    {
      v127.i32[0] = v126[4].i32[1];
      v127.i32[1] = v126[4].i32[0];
    }

    else
    {
      v128 = (*v19)[478];
      v127.i32[0] = *(*&v128 + 36);
      v127.i32[1] = *(*&v128 + 32);
    }

    *(v107 + 100) = (*v19)[474].i32[1];
    *(v107 + 104) = vorr_s8(v125, vand_s8(v127, 0xFFFFFFFC0000FFFFLL));
    *(v107 + 112) = v122;
    *(v107 + 116) = v124;
    *(v107 + 120) = 0;
    *(v107 + 124) = v123;
    v129 = v98[409];
    v674 = 0u;
    *v675 = 0u;
    v676 = 1;
    v677 = *&v129 & 0xFFFFFFFFFFFFLL;
    *&v675[12] = 0x300000008;
    AGXIotoInstruction_B_1::emit(&v674, (v107 + 218));
    v130 = *v98[429].i8;
    v655 = *v98[427].i8;
    v656 = v130;
    v657 = v98[431];
    v131 = *v98[421].i8;
    v651 = *v98[419].i8;
    v652 = v131;
    v132 = *v98[425].i8;
    v653 = *v98[423].i8;
    v654 = v132;
    v133 = *v98[413].i8;
    v648 = *v98[411].i8;
    *v649 = v133;
    v134 = *v98[417].i8;
    *&v649[16] = *v98[415].i8;
    v650 = v134;
    AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::LoadShader::emit(&v648, v107 + 176);
  }

  else if (!v19)
  {
    goto LABEL_103;
  }

  if (*(v21 + 396) == 1)
  {
    *(v107 + 128) = v646;
    *(v107 + 144) = v647;
  }

LABEL_103:
  *v107 = v641;
  *(v107 + 8) = v642;
  *(v107 + 40) = *(v21 + 397);
  *(v107 + 44) = 0;
  *(v107 + 48) = 0;
  *(v107 + 56) = 28;
  *(v107 + 64) = 0;
  *(v107 + 328) = v635[219];
  *(v107 + 332) = v635[220];
  *(v107 + 336) = v635[221];
  *(v107 + 340) = v635[222];
  v135 = *(v21 + 400);
  if (((v135 >> 9) & 1) != (v135 & 0x400) >> 10)
  {
    if ((v135 & 0x200) != 0)
    {
      v136 = (v7 + 6844);
      memcpy((v107 + 344), (v7 + 6056), 16 * *(v7 + 6844));
      v137 = 6876;
      v138 = 8 * *(v7 + 6844);
      v139 = (v107 + 600);
    }

    else
    {
      v137 = 6312;
      v136 = (v7 + 6848);
      v138 = 16 * *(v7 + 6848);
      v139 = (v107 + 344);
    }

    memcpy(v139, (v7 + v137), v138);
    *(v107 + 728) = *v136;
  }

  *(v107 + 276) = v92;
  v140 = *(v637 + 408);
  v141 = *(v637 + 424);
  *(v107 + 320) = *(v637 + 440);
  *(v107 + 288) = v140;
  *(v107 + 304) = v141;
  v142 = *(v7 + 4960);
  v143 = v142[10];
  if ((v143 + 26) > v142[9])
  {
    v144 = v644;
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 1, 0))
    {
      v607 = v142[10] + 208;
      if (v607 > v142[9])
      {
        goto LABEL_597;
      }

      v142[11] = v607;
      *v143 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v142, 1), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v142[11] = v143 + 26;
    v144 = v644;
  }

  v648 = xmmword_29D2F2500;
  bzero(v649, 0x2A4uLL);
  v658 = 0u;
  v659 = 1065353216;
  v660 = 0x100000001;
  v145 = *(v7 + 4960);
  if (v93)
  {
    v146 = *(v93 + 624) + 31;
  }

  else
  {
    v146 = 31;
  }

  v147 = *(v145 + 144) + v146;
  if (v147 <= *(v145 + 136))
  {
LABEL_114:
    *(v145 + 152) = v147;
    goto LABEL_115;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v147 = *(v145 + 144) + v146;
    if (v147 > *(v145 + 136))
    {
      goto LABEL_597;
    }

    goto LABEL_114;
  }

LABEL_115:
  v148 = *(v145 + 1008) + 636;
  if (v148 <= *(v145 + 1000))
  {
LABEL_116:
    *(v145 + 1016) = v148;
    goto LABEL_117;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v145, 30, 0))
  {
    v148 = *(v145 + 1008) + 636;
    if (v148 > *(v145 + 1000))
    {
      goto LABEL_597;
    }

    goto LABEL_116;
  }

LABEL_117:
  if (*(v145 + 1840))
  {
    v149 = 30;
  }

  else
  {
    v149 = 31;
  }

  v150 = (v145 + 40 + 32 * v149);
  v151 = v150[1] + 520;
  if (v151 <= *v150)
  {
LABEL_121:
    v150[2] = v151;
    goto LABEL_122;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v145, v149, 0))
  {
    v151 = v150[1] + 520;
    if (v151 > *v150)
    {
      goto LABEL_597;
    }

    goto LABEL_121;
  }

LABEL_122:
  v152 = (*(*(v93 + 2392) + 8) - **(v93 + 2392)) + 63;
  v153 = *(v145 + 208) + v152;
  if (v153 <= *(v145 + 200))
  {
LABEL_123:
    *(v145 + 216) = v153;
    goto LABEL_124;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v145, 5, 0))
  {
    v153 = *(v145 + 208) + v152;
    if (v153 > *(v145 + 200))
    {
      goto LABEL_597;
    }

    goto LABEL_123;
  }

LABEL_124:
  v154 = *(v7 + 4936);
  v155 = *(v7 + 4960);
  LODWORD(v674) = 2;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::VertexDriverArgumentTable<AGX::HAL300::Classes>>(v154, v155, v93, &v661, &v648, 1, &v674);
  v160 = *(v7 + 4960);
  v161 = v160[126];
  v162 = v160[128] + v161;
  v160[126] = v161 + 20;
  *v161 = xmmword_29D2F2510;
  *(v161 + 16) = 0;
  v163 = v160[10];
  *v163 = __ROR8__(v162, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v160[10] = v163 + 1;
  v164 = v160[126];
  v165 = v160[128] + v164;
  v160[126] = v164 + 28;
  *v164 = xmmword_29D2F1780;
  *(v164 + 16) = 0xE0000000E000000;
  v166 = __ROR8__(v165, 32);
  *(v164 + 24) = 0;
  v167 = v160[10];
  *v167 = v166 & 0xFFFFFFFC000000FFLL | 0x700;
  v160[10] = v167 + 1;
  v168 = *(v93 + 4112);
  v169 = *(v7 + 4960);
  v170 = v169[126];
  v171 = v169[128] + v170;
  v169[126] = v170 + 20;
  *v170 = 203948032;
  *(v170 + 4) = v168 & 0xF1C00FF;
  *(v170 + 8) = 0;
  *(v170 + 16) = HIDWORD(v168);
  v172 = v169[10];
  *v172 = __ROR8__(v171, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v169[10] = v172 + 1;
  v173 = *(v7 + 4960);
  v174 = v173[126];
  v175 = v173[128] + v174;
  v173[126] = v174 + 12;
  *v174 = 8650754;
  *(v174 + 8) = 131200;
  v176 = __ROR8__(v175, 32);
  v177 = v173[10];
  *v177 = v176 & 0xFFFFFFFC000000FFLL | 0x300;
  v173[10] = v177 + 1;
  v178 = v173[126];
  v179 = v178 + v173[128];
  v173[126] = v178 + 1;
  *v178 = 0x48000800000;
  v180 = __ROR8__(v179, 32);
  v181 = v173[10];
  *v181 = v180 & 0xFFFFFFFC000000FFLL | 0x200;
  v173[10] = v181 + 1;
  v182 = *(v7 + 4960);
  v183 = *(v182 + 80);
  *v183 = 0xFFFF40000001;
  *(v182 + 80) = v183 + 1;
  if (v641 == 1)
  {
    LODWORD(v184) = 1640235008;
    DWORD1(v184) = HIDWORD(v642) - v642 + 1;
    *(&v184 + 1) = 1;
    v185 = *(v7 + 4960);
    v186 = *(v185 + 80);
    *v186 = v184;
    *(v185 + 80) = v186 + 1;
    goto LABEL_137;
  }

  v187 = *(v7 + 4960);
  v188 = *(v187 + 1840) - 1;
  if (v188 > 6)
  {
    v189 = 10;
  }

  else
  {
    v189 = dword_29D2F76D0[v188];
  }

  v190 = v189;
  v191 = v187 + 32 * v189;
  if (((1 << v189) & 0xFFF00000480) != 0 && !*(v191 + 48) && (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), v189, 0) & 1) == 0)
  {
    goto LABEL_597;
  }

  v193 = *(v191 + 40);
  v192 = *(v191 + 48);
  v194 = (v191 + 40);
  v195 = v192 + 16;
  if (v195 > v193)
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v187, v190, 0))
    {
      goto LABEL_133;
    }

    v195 = v194[1] + 16;
    if (v195 > *v194)
    {
      goto LABEL_597;
    }
  }

  v194[2] = v195;
LABEL_133:
  v196 = *(v7 + 4960);
  v197 = *(v196 + 1840) - 1;
  if (v197 > 6)
  {
    v198 = 10;
  }

  else
  {
    v198 = qword_29D2F76F0[v197];
  }

  v199 = v196 + 32 * v198;
  v200 = *(v199 + 48);
  v201 = v200 + *(v199 + 64);
  *(*v630 + 16) = v201;
  *&v184 = 0x100000000;
  *v200 = xmmword_29D2F1B30;
  *(v199 + 48) = v200 + 1;
  v202 = v201 & 0xFFFF00000000 | 0x64040000;
  LODWORD(v200) = v201 & 0xFFFFFFFC;
  v203 = *(v196 + 80);
  *(v196 + 80) = v203 + 12;
  *v203 = v202;
  *(v203 + 8) = v200;
LABEL_137:
  ++*(v7 + 1940);
  *(v7 + 10472) = 0x5F700000000000;
  if (*(*(v6 + 424) + 396) == 1)
  {
    v204 = *(v7 + 7688);
    v205 = *(v204 + 32);
    if (v205)
    {
      v206 = *(v204 + 24);
      v207 = *(v206 + 1354) | *(v205 + 1354);
      *(*(v7 + 7664) + 584) |= *(v204 + 908) != 0;
      v208 = *(v7 + 5296);
      if (!v208)
      {
        v208 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(v7 + 5328));
        *(v7 + 5296) = v208;
        v612 = *(v7 + 7688);
        v206 = *(v612 + 24);
        v205 = *(v612 + 32);
      }

      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkSpill(v208, v206, v205, *&v184, v156, v157, v158, v159);
      v204 = *(v7 + 7688);
      v209 = *(v204 + 8);
      if (v209)
      {
LABEL_142:
        v210 = *(v7 + 7664);
        *(v210 + 578) |= *(v209 + 1354);
        *(v210 + 600) = 2;
        *(v7 + 10472) |= 5uLL;
        *(v7 + 7492) = 1;
        v211 = *(v7 + 7440);
        v212.i64[0] = *(v7 + 7456);
        v213 = *(v7 + 7464);
        v214 = *(v7 + 7472);
        v215 = *(v204 + 40);
        v216 = v211.i32[0];
        if (v211.i32[0] <= v215)
        {
          v216 = *(v204 + 40);
        }

        *(v7 + 7440) = v216;
        v217 = v211.i32[1];
        v218 = *(v204 + 44);
        if (v211.i32[1] <= v218)
        {
          v217 = *(v204 + 44);
        }

        *(v7 + 7444) = v217;
        v219 = v211.i32[2];
        v220 = *(v204 + 48);
        if (v211.i32[2] <= v220)
        {
          v219 = *(v204 + 48);
        }

        *(v7 + 7448) = v219;
        v221 = v211.i32[3];
        v222 = *(v204 + 52);
        if (v211.i32[3] <= v222)
        {
          v221 = *(v204 + 52);
        }

        *(v7 + 7452) = v221;
        v223 = *(v204 + 56);
        v224 = v212.i32[0];
        if (v212.i32[0] <= v223)
        {
          v224 = *(v204 + 56);
        }

        *(v7 + 7456) = v224;
        v225 = *(v204 + 60);
        v226 = v212.i32[1];
        if (v212.i32[1] <= v225)
        {
          v226 = *(v204 + 60);
        }

        *(v7 + 7460) = v226;
        v227 = *(v204 + 64);
        if (v213 <= v227)
        {
          v228 = *(v204 + 64);
        }

        else
        {
          v228 = v213;
        }

        *(v7 + 7464) = v228;
        v212.i64[1] = __PAIR64__(v214, v213);
        v229.i64[0] = __PAIR64__(v218, v215);
        v229.i64[1] = __PAIR64__(v222, v220);
        v230 = *(v204 + 68);
        v231.i64[0] = __PAIR64__(v225, v223);
        v231.i64[1] = __PAIR64__(v230, v227);
        if (v214 <= v230)
        {
          v214 = *(v204 + 68);
        }

        *(v7 + 7472) = v214;
        v232 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v229, v211), vcgtq_s32(v231, v212)))) & 1;
        if (*v204)
        {
          goto LABEL_160;
        }

        goto LABEL_284;
      }
    }

    else
    {
      v207 = 0;
      v209 = *(v204 + 8);
      if (v209)
      {
        goto LABEL_142;
      }
    }

    v232 = 0;
    v376 = *(v7 + 7664);
    *(v376 + 578) |= v207 & 1;
    *(v376 + 600) = 2;
    if (*v204)
    {
LABEL_160:
      *(v7 + 10472) |= 6uLL;
      v233 = *(v7 + 7620);
      v234 = *(*(v7 + 7600) + 7092);
      *(v7 + 7596) = 2;
      v235 = *(v204 + 80);
      v236 = *(v204 + 84);
      v237 = *(v7 + 2404);
      v239 = *(v204 + 72);
      v238 = *(v204 + 76);
      v240.i64[0] = *(v204 + 88);
      v241 = *(v7 + 2420);
      v242 = *(v7 + 7616);
      v243 = *(v7 + 7640);
      v244 = *(v7 + 7624);
      v245 = v237 + v238;
      v246 = __OFSUB__(v245, v243);
      v247 = v245 - v243;
      if ((v247 < 0) ^ v246 | (v247 == 0))
      {
        v247 = 0;
      }

      v248 = v236 + v235 + *(v7 + 2408);
      v249.i64[0] = *v627;
      v249.i64[1] = v240.i64[0];
      v250 = vaddvq_s32(v249);
      v251 = ((v244 + v241 + (v247 + v237) * v242 + v250 + v248 * v233 + 64) * v234 + 7) & 0xFFFFFFF8;
      v252 = *(v144 + 17);
      v240.i64[1] = *v627;
      *(v144 + 17) = vmaxq_s32(v252, v240);
      v253.i64[0] = *(v7 + 7560);
      v254.i32[0] = v241;
      *(v7 + 7560) = vmax_s32(*v253.i8, __PAIR64__(v251, v241));
      v255 = *(v7 + 2400) + v239;
      v246 = __OFSUB__(v255, v243);
      v256 = v255 - v243;
      if ((v256 < 0) ^ v246 | (v256 == 0))
      {
        v256 = 0;
      }

      v257 = ((v250 + v256 * v242 + v244 + v241 + 64) * v234 + 7) & 0xFFFFFFF8;
      v258 = *(v7 + 7568);
      if (v258 <= v257)
      {
        v259 = v257;
      }

      else
      {
        v259 = *(v7 + 7568);
      }

      *(v7 + 7568) = v259;
      v260 = *(v7 + 7576);
      v253.i64[1] = __PAIR64__(v260, v258);
      v254.i32[1] = v251;
      v254.i64[1] = __PAIR64__(v255, v257);
      if (v260 <= v255)
      {
        v261 = v255;
      }

      else
      {
        v261 = *(v7 + 7576);
      }

      *(v7 + 7576) = v261;
      v262 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v240, v252), vcgtq_s32(v254, v253)))) & 1;
      goto LABEL_285;
    }

LABEL_284:
    v262 = 0;
    goto LABEL_285;
  }

  *(*(v7 + 7664) + 578) = 1;
  v263 = *(v6 + 424);
  if (*(v263 + 443) == 1)
  {
    v264 = atomic_load((*(*(v7 + 1872) + 848) + 17018));
    *(*(v7 + 7664) + 584) |= v264 & 1;
    v265 = atomic_load((*(*(v7 + 1872) + 848) + 17019));
    *(*(v7 + 7664) + 1616) |= v265 & 1;
    v266 = atomic_load((*(*(v7 + 1872) + 848) + 17023));
    *(*(v7 + 7664) + 587) |= v266 & 1;
    v263 = *(v6 + 424);
  }

  if (*(v263 + 444))
  {
    v232 = 0;
  }

  else
  {
    v267 = *(*(*(v7 + 1872) + 848) + 16560);
    v268 = *v267;
    v269 = *(v144 + 184);
    v270 = *(v144 + 168);
    v271 = v270.i32[0];
    if (v270.i32[0] <= *v267)
    {
      v271 = *v267;
    }

    *(v7 + 7440) = v271;
    v272 = v267[1];
    v273 = v270.i32[1];
    if (v270.i32[1] <= v272)
    {
      v273 = v267[1];
    }

    *(v7 + 7444) = v273;
    v274 = v267[2];
    v275 = v270.i32[2];
    if (v270.i32[2] <= v274)
    {
      v275 = v267[2];
    }

    *(v7 + 7448) = v275;
    v276 = v267[3];
    v277 = v270.i32[3];
    if (v270.i32[3] <= v276)
    {
      v277 = v267[3];
    }

    *(v7 + 7452) = v277;
    v278 = v267[4];
    v279 = v269.i32[0];
    if (v269.i32[0] <= v278)
    {
      v279 = v267[4];
    }

    *(v7 + 7456) = v279;
    v280 = v269.i32[1];
    v281 = v267[5];
    if (v269.i32[1] <= v281)
    {
      v280 = v267[5];
    }

    *(v7 + 7460) = v280;
    v282 = v269.i32[2];
    v283 = v267[6];
    if (v269.i32[2] <= v283)
    {
      v282 = v267[6];
    }

    *(v7 + 7464) = v282;
    v284 = v267[7];
    v285.i64[0] = __PAIR64__(v281, v278);
    v285.i64[1] = __PAIR64__(v284, v283);
    v286.i64[0] = __PAIR64__(v272, v268);
    v286.i64[1] = __PAIR64__(v276, v274);
    v287 = v269.i32[3];
    if (v269.i32[3] <= v284)
    {
      v287 = v267[7];
    }

    *(v7 + 7468) = v287;
    v288 = v267[8];
    v289 = *(v7 + 7472);
    v290 = v289.i32[0];
    if (v289.i32[0] <= v288)
    {
      v290 = v267[8];
    }

    *(v7 + 7472) = v290;
    v291 = v267[9];
    v292 = v289.i32[1];
    if (v289.i32[1] <= v291)
    {
      v292 = v267[9];
    }

    *(v7 + 7476) = v292;
    v293 = v267[10];
    v294 = v289.i32[2];
    if (v289.i32[2] <= v293)
    {
      v294 = v267[10];
    }

    *(v7 + 7480) = v294;
    v295 = v267[11];
    v296.i64[0] = __PAIR64__(v291, v288);
    v296.i64[1] = __PAIR64__(v295, v293);
    v297 = v289.i32[3];
    if (v289.i32[3] <= v295)
    {
      v297 = v267[11];
    }

    *(v7 + 7484) = v297;
    v298 = v267[12];
    v299 = *(v7 + 7488);
    v300 = v299 < v298;
    if (v299 > v298)
    {
      v298 = *(v7 + 7488);
    }

    *(v7 + 7488) = v298;
    v232 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v286, v270), vcgtq_s32(v285, v269)))) | vmaxv_u16(vmovn_s32(vcgtq_s32(v296, v289))) | v300;
    v263 = *(v6 + 424);
  }

  if (*(v263 + 443) == 1)
  {
    v301 = *(*(*(v7 + 1872) + 848) + 16584);
    v302 = *v301;
    v303 = *(v144 + 184);
    v304 = *(v144 + 168);
    v305 = v304.i32[0];
    if (v304.i32[0] <= *v301)
    {
      v305 = *v301;
    }

    *(v7 + 7440) = v305;
    v306 = v301[1];
    v307 = v304.i32[1];
    if (v304.i32[1] <= v306)
    {
      v307 = v301[1];
    }

    *(v7 + 7444) = v307;
    v308 = v301[2];
    v309 = v304.i32[2];
    if (v304.i32[2] <= v308)
    {
      v309 = v301[2];
    }

    *(v7 + 7448) = v309;
    v310 = v301[3];
    v311 = v304.i32[3];
    if (v304.i32[3] <= v310)
    {
      v311 = v301[3];
    }

    *(v7 + 7452) = v311;
    v312 = v301[4];
    v313 = v303.i32[0];
    if (v303.i32[0] <= v312)
    {
      v313 = v301[4];
    }

    *(v7 + 7456) = v313;
    v314 = v301[5];
    v315 = v303.i32[1];
    if (v303.i32[1] <= v314)
    {
      v315 = v301[5];
    }

    *(v7 + 7460) = v315;
    v316 = v301[6];
    v317 = v303.i32[2];
    if (v303.i32[2] <= v316)
    {
      v317 = v301[6];
    }

    *(v7 + 7464) = v317;
    v318.i64[0] = __PAIR64__(v314, v312);
    v318.i32[2] = v316;
    v318.i32[3] = v301[7];
    v319.i64[0] = __PAIR64__(v306, v302);
    v319.i64[1] = __PAIR64__(v310, v308);
    v320 = v303.i32[3];
    if (v303.i32[3] <= v318.i32[3])
    {
      v320 = v301[7];
    }

    *(v7 + 7468) = v320;
    v321 = v301[8];
    v322 = *(v7 + 7472);
    v323 = v322.i32[0];
    if (v322.i32[0] <= v321)
    {
      v323 = v301[8];
    }

    *(v7 + 7472) = v323;
    v324 = v322.i32[1];
    v325 = v301[9];
    if (v322.i32[1] <= v325)
    {
      v324 = v301[9];
    }

    *(v7 + 7476) = v324;
    v326 = v322.i32[2];
    v327 = v301[10];
    if (v322.i32[2] <= v327)
    {
      v326 = v301[10];
    }

    *(v7 + 7480) = v326;
    v328.i64[0] = __PAIR64__(v325, v321);
    v328.i32[2] = v327;
    v328.i32[3] = v301[11];
    v329 = v322.i32[3];
    if (v322.i32[3] <= v328.i32[3])
    {
      v329 = v301[11];
    }

    *(v7 + 7484) = v329;
    v330 = v301[12];
    v331 = *(v7 + 7488);
    v332 = v331 < v330;
    if (v331 > v330)
    {
      v330 = *(v7 + 7488);
    }

    *(v7 + 7488) = v330;
    v232 |= vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v319, v304), vcgtq_s32(v318, v303)))) | vmaxv_u16(vmovn_s32(vcgtq_s32(v328, v322))) | v332;
  }

  v333 = *(*(*(v7 + 1872) + 848) + 16568);
  v334 = *v333;
  v335 = *(v7 + 7544);
  v336 = v335 < *v333;
  if (v335 > *v333)
  {
    v334 = *(v7 + 7544);
  }

  *(v7 + 7544) = v334;
  v337 = v333[1];
  v338 = *(v7 + 7548);
  v339 = v338 < v337;
  if (v338 > v337)
  {
    v337 = *(v7 + 7548);
  }

  *(v7 + 7548) = v337;
  v340 = v333[2];
  v341 = *(v7 + 7552);
  if (v339)
  {
    v336 = 1;
  }

  v342 = v341 < v340;
  if (v341 > v340)
  {
    v340 = *(v7 + 7552);
  }

  *(v7 + 7552) = v340;
  v343 = v333[3];
  v344 = *(v7 + 7556);
  if (v342)
  {
    v336 = 1;
  }

  v345 = v344 < v343;
  if (v344 > v343)
  {
    v343 = *(v7 + 7556);
  }

  *(v7 + 7556) = v343;
  v346 = v333[4];
  v347 = *(v7 + 7560);
  if (v345)
  {
    v336 = 1;
  }

  v348 = v347 < v346;
  if (v347 > v346)
  {
    v346 = *(v7 + 7560);
  }

  *(v7 + 7560) = v346;
  v349 = v333[5];
  v350 = *(v7 + 7564);
  if (v348)
  {
    v336 = 1;
  }

  v351 = v350 < v349;
  if (v350 > v349)
  {
    v349 = *(v7 + 7564);
  }

  *(v7 + 7564) = v349;
  v352 = v333[6];
  v353 = *(v7 + 7568);
  if (v351)
  {
    v336 = 1;
  }

  v354 = v353 < v352;
  if (v353 > v352)
  {
    v352 = *(v7 + 7568);
  }

  *(v7 + 7568) = v352;
  v355 = v333[7];
  v356 = *(v7 + 7572);
  if (v354)
  {
    v336 = 1;
  }

  v357 = v356 < v355;
  if (v356 > v355)
  {
    v355 = *(v7 + 7572);
  }

  *(v7 + 7572) = v355;
  v358 = v333[8];
  v359 = *(v7 + 7576);
  v360 = v359 < v358;
  if (v359 > v358)
  {
    v358 = *(v7 + 7576);
  }

  *(v7 + 7576) = v358;
  v361 = v333[9];
  v362 = *(v7 + 7580);
  v363 = v362 < v361;
  if (v362 > v361)
  {
    v361 = *(v7 + 7580);
  }

  *(v7 + 7580) = v361;
  v364 = v333[10];
  v365 = *(v7 + 7584);
  v366 = v365 < v364;
  if (v365 > v364)
  {
    v364 = *(v7 + 7584);
  }

  *(v7 + 7584) = v364;
  v367 = v333[11];
  v368 = *(v7 + 7588);
  v369 = v368 < v367;
  if (v368 > v367)
  {
    v367 = *(v7 + 7588);
  }

  *(v7 + 7588) = v367;
  v370 = v333[12];
  v371 = *(v7 + 7592);
  v372 = v371 < v370;
  if (v371 > v370)
  {
    v370 = *(v7 + 7592);
  }

  *(v7 + 7592) = v370;
  v373 = v372 || v369;
  v262 = v336 | (v357 || v360 || v363 || v366) | v373;
  if (*(*(v6 + 424) + 398) == 1)
  {
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v7 + 11088), (*(*(*(v7 + 1872) + 848) + 7168) + 28));
    AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((v7 + 11208), (*(*(*(v7 + 1872) + 848) + 7168) + 148));
  }

  v374 = atomic_load((*(*(v7 + 1872) + 848) + 17022));
  *(*(v7 + 7664) + 587) |= v374 & 1;
  v375 = atomic_load((*(*(v7 + 1872) + 848) + 17021));
  *(*(v7 + 7664) + 2060) |= v375 & 1;
LABEL_285:
  {
  }

  if ((v232 & 1) == 0)
  {
    if ((v262 & 1) == 0)
    {
      goto LABEL_288;
    }

LABEL_503:
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v7 + 7544, *(v7 + 7664) + 1360, 0);
    if (*(v7 + 7688))
    {
      goto LABEL_290;
    }

    goto LABEL_289;
  }

  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v7 + 7440, *(v7 + 7664) + 320, 1);
  if (v262)
  {
    goto LABEL_503;
  }

LABEL_288:
  if (!*(v7 + 7688))
  {
LABEL_289:
    *(v7 + 8712) = 0;
    v377 = *(v7 + 8480);
    v377[33] = 0;
    v377[72] = 0;
    *(v7 + 10088) |= 0x800000000000000uLL;
    v378 = *(v7 + 10136);
    *(v7 + 10472) |= 0xC0uLL;
    *(v7 + 10136) = v378 & 0xF7FFFFFFFFFFFFFFLL;
    v379 = *(v7 + 9752);
    v379[34] = 0;
    v379[73] = 0;
    *(v7 + 10376) |= 0x800000000000000uLL;
    v380 = *(v7 + 10424);
    *(v7 + 10472) |= 0x3000000000uLL;
    *(v7 + 10424) = v380 & 0xF7FFFFFFFFFFFFFFLL;
    *(v7 + 8720) = 0;
    v377[34] = 0;
    v377[73] = 0;
    *(v7 + 10088) |= 0x1000000000000000uLL;
    *(v7 + 10136) |= 0x1000000000000000uLL;
    *(v7 + 10472) |= 0xC0uLL;
    *(v7 + 9984) = 0u;
    v379[35] = 0;
    v379[74] = 0;
    *(v7 + 10376) |= 0x1000000000000000uLL;
    *(v7 + 10424) |= 0x1000000000000000uLL;
    *(v7 + 10472) |= 0x3000000000uLL;
  }

LABEL_290:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeISPPrimitiveType(v7, 3);
  if (*(*(v6 + 424) + 396) == 1 && *(*(v7 + 7688) + 32))
  {
    v382 = *(v7 + 5296);
    if (!v382)
    {
      v382 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(v7 + 5328));
      *(v7 + 5296) = v382;
    }

    *(v7 + 10472) |= 0x30uLL;
    *(v382 + 64) = 0;
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitMeshRenderState(v382, *(v382 + 32), *(v382 + 40), *(*(v382 + 8) + 7680), *(v382 + 1040), *(v382 + 2072), *(*(v382 + 8) + 9744), v381, 0, 0, 0, 0, v7 + 10088, 1);
    *(v382 + 64) = 0;
  }

  else
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(v7, *(v7 + 7672), *(v7 + 7680), *(v7 + 8472), *(v7 + 9744), v7 + 10088, 1);
  }

  v144[140] = 0;
  if (*(v7 + 1896))
  {
    MTLResourceListAddResource();
  }

  v383 = *(v6 + 424);
  if (*(v383 + 443) == 1)
  {
    v384 = *(v7 + 5296);
    if (!v384)
    {
      v384 = std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(*(v7 + 5328));
      *(v7 + 5296) = v384;
      v383 = *(v6 + 424);
    }

    v628 = v384[131];
    v629 = v384[260];
    v385 = v384[130];
    v386 = v384[259];
  }

  else
  {
    v628 = 0;
    v629 = 0;
    v385 = 0;
    v386 = 0;
  }

  v633 = *(v7 + 2392);
  v387 = *(v7 + 8472);
  v388 = *(v7 + 9744);
  v389 = *(v7 + 8480);
  v390 = *(v7 + 9752);
  v645 = *(v7 + 7688);
  memcpy(__dst, (v389 + 72), 0x118uLL);
  memcpy(__dst + 280, v389, 0x2F0uLL);
  memcpy(v640, (v390 + 80), 0x118uLL);
  v636 = v390;
  memcpy(v640 + 280, v390, 0x398uLL);
  if (*(v383 + 443) == 1)
  {
    v395 = *(v7 + 4960);
    v396 = v395[18] + 1263;
    if (v396 > v395[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
      {
LABEL_306:
        v397 = *(v7 + 4960);
        v398 = v397[17];
        v399 = (v397[18] + 31) & 0xFFFFFFFFFFFFFFE0;
        v400 = v397[20];
        v397[18] = v399 + 1232;
        v401 = v399 + 2223;
        if (v399 + 2223 > v398)
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(v397, 3, 0))
          {
            goto LABEL_308;
          }

          v401 = v397[18] + 991;
          if (v401 > v397[17])
          {
            goto LABEL_597;
          }
        }

        v397[19] = v401;
LABEL_308:
        v619 = v399 + v400;
        v402 = *(v7 + 4960);
        v403 = (*(v402 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
        *v620 = v403 + *(v402 + 160);
        *(v402 + 144) = v403 + 960;
        memcpy(v399, (v628 + 72), 0x118uLL);
        memcpy((v399 + 280), v628, 0x3B8uLL);
        memcpy(v403, (v629 + 72), 0x118uLL);
        memcpy((v403 + 280), v629, 0x2A8uLL);
        v6 = v639;
        goto LABEL_309;
      }

      v396 = v395[18] + 1263;
      if (v396 > v395[17])
      {
        goto LABEL_597;
      }
    }

    v395[19] = v396;
    goto LABEL_306;
  }

LABEL_309:
  if (*(v383 + 397) != 1)
  {
    v622 = 0;
    v623 = 0;
    v631 = 0;
    v416 = 0;
    v417 = 0;
    goto LABEL_338;
  }

  if (*(v383 + 443) != 1)
  {
    v414 = 0;
    v623 = 0;
    goto LABEL_322;
  }

  v404 = *(v7 + 4960);
  v405 = v404[18] + 311;
  if (v405 <= v404[17])
  {
    goto LABEL_312;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v405 = v404[18] + 311;
    if (v405 > v404[17])
    {
      goto LABEL_597;
    }

LABEL_312:
    v404[19] = v405;
  }

  v406 = *(v7 + 4960);
  v407 = (*(v406 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v408 = *(v406 + 160);
  *(v406 + 144) = v407 + 280;
  if (v385)
  {
    memcpy(v407, (*(v385 + 3) + *(v385 + 1)), 8 * *v385);
  }

  v409 = *(v628 + 40);
  *(v407 + 264) = *(v628 + 56);
  *(v407 + 248) = v409;
  v410 = *(v7 + 4960);
  v411 = v410[18] + 311;
  if (v411 > v410[17])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
    {
      goto LABEL_317;
    }

    v411 = v410[18] + 311;
    if (v411 > v410[17])
    {
      goto LABEL_597;
    }
  }

  v410[19] = v411;
LABEL_317:
  v623 = v407 + v408;
  v412 = *(v7 + 4960);
  v413 = (*(v412 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v414 = v413 + *(v412 + 160);
  *(v412 + 144) = v413 + 280;
  if (v386)
  {
    memcpy(v413, (*(v386 + 3) + *(v386 + 1)), 8 * *v386);
  }

  v415 = *(v629 + 40);
  *(v413 + 264) = *(v629 + 56);
  *(v413 + 248) = v415;
  v6 = v639;
LABEL_322:
  v418 = *(v7 + 4960);
  v419 = v418[18] + 311;
  if (v419 <= v418[17])
  {
LABEL_323:
    v418[19] = v419;
    goto LABEL_324;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
  {
    v419 = v418[18] + 311;
    if (v419 > v418[17])
    {
      goto LABEL_597;
    }

    goto LABEL_323;
  }

LABEL_324:
  v420 = *(v7 + 4960);
  v421 = (*(v420 + 144) + 31) & 0xFFFFFFFFFFFFFFE0;
  v422 = *(v420 + 160);
  *(v420 + 144) = v421 + 280;
  if (v387)
  {
    memcpy(v421, (*(v387 + 3) + *(v387 + 1)), 8 * *v387);
  }

  v423 = *(v389 + 40);
  *(v421 + 264) = *(v389 + 56);
  *(v421 + 248) = v423;
  v424 = *(v7 + 4960);
  v425 = v424[22] + 311;
  if (v425 <= v424[21])
  {
LABEL_327:
    v424[23] = v425;
    goto LABEL_328;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 4, 0))
  {
    v425 = v424[22] + 311;
    if (v425 > v424[21])
    {
      goto LABEL_597;
    }

    goto LABEL_327;
  }

LABEL_328:
  v622 = v414;
  v416 = v421 + v422;
  v426 = *(v7 + 4960);
  v427 = (*(v426 + 176) + 31) & 0xFFFFFFFFFFFFFFE0;
  v631 = v427 + *(v426 + 192);
  *(v426 + 176) = v427 + 280;
  if (v388)
  {
    memcpy(v427, (*(v388 + 3) + *(v388 + 1)), 8 * *v388);
  }

  v391 = *(v636 + 48);
  v392 = *(v636 + 64);
  *(v427 + 264) = v392;
  *(v427 + 248) = v391;
  if (!v387)
  {
    v417 = 0;
    goto LABEL_338;
  }

  if (v387[3] == 1)
  {
    v428 = 4 * *v387;
  }

  else
  {
    v428 = 0;
  }

  v429 = *(v7 + 4960);
  v430 = v428 + 31;
  v431 = v429[18] + v428 + 31;
  if (v431 > v429[17])
  {
    v613 = v428;
    v614 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0);
    v428 = v613;
    if (!v614)
    {
      goto LABEL_337;
    }

    v431 = v429[18] + v430;
    if (v431 > v429[17])
    {
      goto LABEL_597;
    }
  }

  v429[19] = v431;
LABEL_337:
  v432 = *(v7 + 4960);
  v433 = ((*(v432 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v417 = &v433[*(v432 + 160)];
  *(v432 + 144) = &v433[v428];
  memcpy(v433, (*(v387 + 3) + *(v387 + 5)), v428);
LABEL_338:
  v434 = *(v383 + 396);
  if (*(v383 + 396))
  {
    v435 = 156;
  }

  else
  {
    v435 = 116;
  }

  v638 = *(v383 + 396);
  if (*(v383 + 440) == 1)
  {
    v436 = *(v7 + 4960);
    v437 = v436[26] + v435 + 63;
    if (v437 > v436[25])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 5, 0))
      {
        goto LABEL_344;
      }

      v437 = v436[26] + v435 + 63;
      if (v437 > v436[25])
      {
        goto LABEL_597;
      }
    }

    v436[27] = v437;
LABEL_344:
    v438 = *(v7 + 4960);
    v439 = ((*(v438 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
    v440 = *(v438 + 224);
    *(v438 + 208) = &v439[v435];
    if (*(v383 + 396) != 1 || v645[4])
    {
      v441 = 0;
      v442 = 0xFFFFFFFFLL;
LABEL_347:
      v621 = &v439[v440];
      v618 = v442;
      v434 = v638;
      AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v638 ^ 1, v439, v416, 0, v441, &__dst[v626], 0, v417, *&v391, *&v392, v393, v394, 0, v618);
      v6 = v639;
      goto LABEL_349;
    }

    v442 = v645[1][408];
    v478 = *(v7 + 4960);
    v479 = v478[18] + 71;
    if (v479 > v478[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
      {
        goto LABEL_369;
      }

      v479 = v478[18] + 71;
      if (v479 > v478[17])
      {
        goto LABEL_597;
      }
    }

    v478[19] = v479;
LABEL_369:
    v480 = *(v7 + 4960);
    v481 = ((*(v480 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v482 = *(v480 + 160);
    *v481 = *(v389 + 264);
    v441 = v481 + v482;
    *(v480 + 144) = v481 + 5;
    v481[1] = *(v389 + 272);
    v481[2] = *(v389 + 312);
    goto LABEL_347;
  }

  v621 = 0;
LABEL_349:
  v443 = *(v383 + 443);
  if (v443 != 1)
  {
    v457 = 0;
    v458 = 0;
    goto LABEL_372;
  }

  v444 = *(v7 + 4960);
  v445 = v435 + 63;
  v446 = v444[26] + v435 + 63;
  if (v446 > v444[25])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 5, 0))
    {
      goto LABEL_352;
    }

    v446 = v444[26] + v445;
    if (v446 > v444[25])
    {
      goto LABEL_597;
    }
  }

  v444[27] = v446;
LABEL_352:
  v447 = *(v7 + 4960);
  v448 = ((*(v447 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
  v449 = *(v447 + 224);
  *(v447 + 208) = &v448[v435];
  if (*(v383 + 396) == 1 && v645[4])
  {
    v450 = v645[3][408];
    v451 = *(v7 + 4960);
    v452 = v451[18] + 71;
    if (v452 > v451[17])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
      {
        goto LABEL_356;
      }

      v452 = v451[18] + 71;
      if (v452 > v451[17])
      {
        goto LABEL_597;
      }
    }

    v451[19] = v452;
LABEL_356:
    v453 = *(v7 + 4960);
    v454 = ((*(v453 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
    v455 = *(v453 + 160);
    *v454 = *(v628 + 264);
    v456 = v454 + v455;
    *(v453 + 144) = v454 + 5;
    v454[1] = *(v628 + 272);
    v454[2] = *(v628 + 312);
    goto LABEL_359;
  }

  v456 = 0;
  v450 = 0xFFFFFFFFLL;
LABEL_359:
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v434 ^ 1, v448, v623, 0, v456, v619, 0, 0, *&v391, *&v392, v393, v394, 0, v450);
  v463 = *(v7 + 4960);
  v464 = v463[26] + v445;
  if (v464 <= v463[25])
  {
LABEL_360:
    v463[27] = v464;
    goto LABEL_361;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 5, 0))
  {
    v464 = v463[26] + v445;
    if (v464 > v463[25])
    {
      goto LABEL_597;
    }

    goto LABEL_360;
  }

LABEL_361:
  v465 = *(v7 + 4960);
  v466 = ((*(v465 + 208) + 63) & 0xFFFFFFFFFFFFFFC0);
  v467 = *(v465 + 224);
  *(v465 + 208) = &v466[v435];
  v468 = v449;
  if (*(v383 + 396) != 1)
  {
    v477 = 0;
    v471 = 0xFFFFFFFFLL;
    v470 = *v620;
    goto LABEL_371;
  }

  v469 = v645[4];
  v470 = *v620;
  if (!v469)
  {
    v477 = 0;
    v471 = 0xFFFFFFFFLL;
    goto LABEL_371;
  }

  v471 = v469[408];
  v472 = *(v7 + 4960);
  v473 = v472[18] + 71;
  if (v473 > v472[17])
  {
    v616 = v466;
    v617 = AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0);
    v470 = *v620;
    v466 = v616;
    v434 = v638;
    if (!v617)
    {
      goto LABEL_365;
    }

    v473 = v472[18] + 71;
    if (v473 > v472[17])
    {
      goto LABEL_597;
    }
  }

  v472[19] = v473;
LABEL_365:
  v474 = *(v7 + 4960);
  v475 = ((*(v474 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v476 = *(v474 + 160);
  *v475 = *(v629 + 264);
  v477 = v475 + v476;
  *(v474 + 144) = v475 + 5;
  v475[1] = *(v629 + 272);
  v475[2] = *(v629 + 312);
LABEL_371:
  v458 = &v448[v468];
  v457 = &v466[v467];
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v434 ^ 1, v466, v622, 0, v477, v470, 0, 0, v459, v460, v461, v462, 0, v471);
  LOBYTE(v443) = *(v383 + 443);
  v6 = v639;
LABEL_372:
  if (*(v383 + 396))
  {
    if (*(v383 + 440))
    {
      v483 = 52;
    }

    else
    {
      v483 = 24;
    }

    if (v443)
    {
      v484 = v483 + 56;
    }

    else
    {
      v484 = v483;
    }

    v485 = v645[1];
    if (v485 && v485[533].i32[0])
    {
      v484 += 12;
    }
  }

  else
  {
    if (*(v383 + 440))
    {
      v486 = 36;
    }

    else
    {
      v486 = 24;
    }

    if (v443)
    {
      v487 = v486 + 20;
    }

    else
    {
      v487 = v486;
    }

    v484 = v487 + 8;
  }

  if (*(v383 + 332))
  {
    v488 = v484 + 8;
  }

  else
  {
    v488 = v484;
  }

  v489 = *(v7 + 4960);
  v490 = v489[6];
  if (v490 + v488 > v489[5])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 0, 0))
    {
      v608 = v489[6] + v488;
      if (v608 > v489[5])
      {
        goto LABEL_597;
      }

      v489[7] = v608;
      *v490 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v489, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v489[7] = v490 + v488;
  }

  v491 = *(v389 + 736);
  if (*(v383 + 396) == 1)
  {
    v492 = 0x2A179C000;
    if (*(v383 + 440) == 1 && !v645[4])
    {
      v493 = v645[1] + 28 * *(v645 + 760);
      v494 = *(v493 + 3912);
      v495 = *(v493 + 3920);
      v496 = *(v493 + 3904) & 0x3FFFFF;
      if ((v495 & 7) - 1 != v491)
      {
        v495 = (v491 - 1) & 7;
      }

      v497 = *(v7 + 4960);
      v498 = *(v497 + 48);
      *v498 = *(v493 + 3896);
      *(v498 + 8) = v496 | (v621 >> 16) & 0xFFC00000 | 4;
      *(v498 + 12) = v621 >> 6;
      *(v498 + 16) = v494;
      *(v498 + 24) = v495;
      *(v497 + 48) = v498 + 28;
    }

    if (*(v383 + 443) == 1)
    {
      v499 = v645[4];
      if (v499)
      {
        v500 = v645[3];
        v501 = v500[468].u32[1];
        v502 = v500[467].i32[1];
        v503 = v500[467].i32[0];
        v504 = v499[470].i32[1];
        v505 = v499[471].i32[0];
        v506 = v499[471].i32[1];
        v507 = v499[472].i32[0];
        v508 = v499[473].i32[0];
        v509 = v499[474];
        v510 = *(v645 + 227);
        if (*(v645 + 760))
        {
          v511 = 0;
        }

        else
        {
          v511 = 32;
        }

        v512 = v505 & 0xFFFFFFDF | v511;
        v513 = v506 & 0xFFF0000 | v503 & 0xFFF;
        if (v510)
        {
          v501 = v501 & 0xFFFFFF80 | ((v510 + 1023) >> 10) & 0x7F;
        }

        v514 = *(v7 + 4960);
        v515 = *(v514 + 48);
        v515->i32[0] = 1073745196;
        v515->i32[1] = v504;
        v515[1].i32[0] = v512;
        v515[1].i32[1] = (v491 - 1) & 7;
        v515[2].i32[0] = v513;
        v515[2].i32[1] = v502 & 0x3FFFFF | (v458 >> 16) & 0xFFC00000 | 4;
        v515[3].i32[0] = v458 >> 6;
        v515[3].i32[1] = v507 & 0x3FFFFF | (v457 >> 16) & 0xFFC00000 | 4;
        v515[4].i32[0] = v457 >> 6;
        v515[4].i32[1] = v501;
        v515[5].i32[0] = v508;
        v515[5].i32[1] = 0;
        v515[6] = v509;
        *(v514 + 48) = v515 + 7;
      }
    }
  }

  else
  {
    v516 = *(v7 + 4960);
    v517 = *(v516 + 48);
    *v517 = (((v491 - 1) & 7) << 32) | 0x40000020;
    *(v516 + 48) = v517 + 1;
    v492 = 0x2A179C000uLL;
    if (*(v383 + 440) == 1)
    {
      v518 = *(v7 + 4960);
      v519 = *(v518 + 48);
      *v519 = (((v621 >> 38) << 54) | 0x40000020) + 32;
      *(v519 + 8) = v621 >> 6;
      *(v518 + 48) = v519 + 12;
    }

    if (*(v383 + 443) == 1)
    {
      v520 = *(v7 + 4960);
      v521 = *(v520 + 48);
      *v521 = 1073742336;
      v521[1] = (v458 >> 16) & 0xFFC00000;
      v521[2] = v458 >> 6;
      v521[3] = (v457 >> 16) & 0xFFC00000;
      v521[4] = v457 >> 6;
      *(v520 + 48) = v521 + 5;
    }
  }

  v522 = *(v7 + 4960);
  v523 = v522[30] + v435 + 63;
  if (v523 <= v522[29])
  {
LABEL_413:
    v522[31] = v523;
    goto LABEL_414;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 6, 0))
  {
    v523 = v522[30] + v435 + 63;
    if (v523 > v522[29])
    {
      goto LABEL_597;
    }

    goto LABEL_413;
  }

LABEL_414:
  v524 = *(v7 + 4960);
  v525 = ((*(v524 + 240) + 63) & 0xFFFFFFFFFFFFFFC0);
  v526 = *(v524 + 256);
  *(v524 + 240) = &v525[v435];
  v662 = 0;
  v661 = 0;
  v664 = 0;
  v663 = 0;
  v527 = 0x3000000A5;
  v665 = 0x3000000A5;
  v668 = 0;
  v667 = 0;
  v528 = v633[1235] >> 2;
  v529 = v633[895];
  v530 = v633[1536];
  v531 = v633[1233];
  v532 = v633[1234];
  if (v529 <= 1)
  {
    v533 = 1;
  }

  else
  {
    v533 = v529;
  }

  v534 = 4 * v533 * v528;
  if (v534 * v531 * v532 && (v535 = 1 << -__clz(v531 - 1), v536 = -__clz(v532 - 1), (v535 << v536) * v534))
  {
    v667 = AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::SpecLM::encodeImageBlockData(v528, v533, v535, 1 << (v536 & 0x1F));
    v668 = v537;
    v538 = 0x100000000;
  }

  else
  {
    v538 = 0;
  }

  if (v530)
  {
    ++v538;
  }

  v666 = v538 | ((v530 << 16) + 4128768) & 0xFFC00000;
  if (*(v383 + 396) != 1)
  {
    v540 = 0;
    v539 = 0xFFFFFFFFLL;
    goto LABEL_431;
  }

  if (*v645)
  {
    v539 = (*v645)[409];
  }

  else
  {
    v539 = 4294967294;
  }

  v541 = *(v7 + 4960);
  v542 = v541[18] + 71;
  if (v542 > v541[17])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 3, 0))
    {
      goto LABEL_430;
    }

    v542 = v541[18] + 71;
    if (v542 > v541[17])
    {
      goto LABEL_597;
    }
  }

  v541[19] = v542;
LABEL_430:
  v543 = *(v7 + 4960);
  v544 = ((*(v543 + 144) + 31) & 0xFFFFFFFFFFFFFFE0);
  v545 = *(v543 + 160);
  *v544 = *(v636 + 272);
  v540 = v544 + v545;
  *(v543 + 144) = v544 + 5;
  v544[1] = *(v636 + 280);
  v544[2] = *(v636 + 320);
LABEL_431:
  v546 = &v525[v526];
  AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v638 ^ 1, v525, v631, 0, v540, &v640[v634], 0, 0, *&v527, *&v392, v393, v394, &v661, v539);
  if (*(v383 + 396) != 1)
  {
    v560 = *(v7 + 4960);
    v561 = v560[126] + 12;
    v550 = v641;
    v551 = MEMORY[0x29EDC5638];
    if (v561 > v560[125])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
      {
LABEL_439:
        v562 = *(v7 + 4960);
        v563 = v562[126];
        v564 = v562[128] + v563;
        v562[126] = v563 + 12;
        *v563 = ((v546 >> 38) << 54) | 0x400000;
        *(v563 + 8) = v546 >> 6;
        v565 = v562[6];
        *v565 = __ROR8__(v564, 32) & 0xFFFFFFFC000000FFLL | 0x300;
        v562[6] = v565 + 1;
        v566 = *(v7 + 4960);
        v567 = v566[126] + 8;
        if (v567 > v566[125])
        {
          if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
          {
            goto LABEL_441;
          }

          v567 = v566[126] + 8;
          if (v567 > v566[125])
          {
            goto LABEL_597;
          }
        }

        v566[127] = v567;
LABEL_441:
        v552 = *(v7 + 4960);
        v568 = v552[126];
        v569 = v568 + v552[128];
        v552[126] = v568 + 1;
        *v568 = (((v491 - 1) & 7) << 32) | 0x4000000;
        v570 = 512;
LABEL_444:
        v573 = v552[6];
        *v573 = (BYTE4(v569) | v570) & 0x3FFFFFFFFLL | ((v569 >> 2) << 34);
        v552[6] = v573 + 1;
        goto LABEL_445;
      }

      v561 = v560[126] + 12;
      if (v561 > v560[125])
      {
        goto LABEL_597;
      }
    }

    v560[127] = v561;
    goto LABEL_439;
  }

  v547 = *v645;
  v548 = *(v7 + 4960);
  v549 = v548[126] + 28;
  v550 = v641;
  v551 = MEMORY[0x29EDC5638];
  if (v549 <= v548[125])
  {
LABEL_433:
    v548[127] = v549;
    goto LABEL_434;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
  {
    v549 = v548[126] + 28;
    if (v549 > v548[125])
    {
      goto LABEL_597;
    }

    goto LABEL_433;
  }

LABEL_434:
  if (v547)
  {
    v552 = *(v7 + 4960);
    v553 = (*v645)[474].i32[1];
    v554 = (*v645)[476].i32[0];
    v555 = (*v645)[477].i32[1];
    v556 = (v546 >> 16) & 0xFFC00000 | (*v645)[476].i32[1] & 0x3FFFFF;
    v557 = vand_s8((*v645)[475], 0x3FFFF0000);
    v558 = v645[463];
    if (v558)
    {
      v559.i32[0] = v558[4].i32[1];
      v559.i32[1] = v558[4].i32[0];
    }

    else
    {
      v571 = (*v645)[478];
      v559.i32[0] = *(*&v571 + 36);
      v559.i32[1] = *(*&v571 + 32);
    }

    v572 = v552[126];
    v569 = v552[128] + v572;
    v552[126] = v572 + 28;
    *v572 = v553;
    *(v572 + 4) = vorr_s8(v557, vand_s8(v559, 0xFFFFFFFC0000FFFFLL));
    *(v572 + 12) = v554;
    *(v572 + 16) = v556;
    *(v572 + 20) = v546 >> 6;
    *(v572 + 24) = v555;
    v570 = 1792;
    goto LABEL_444;
  }

LABEL_445:
  if (!*(v383 + 332))
  {
    goto LABEL_455;
  }

  v574 = *(v7 + 4960);
  v575 = v574[126] + 24;
  if (v575 > v574[125])
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(*(v7 + 4960), 30, 0))
    {
      goto LABEL_448;
    }

    v575 = v574[126] + 24;
    if (v575 > v574[125])
    {
LABEL_597:
      abort();
    }
  }

  v574[127] = v575;
LABEL_448:
  v576 = *(v7 + 4960);
  v577 = *(v383 + 332);
  v578 = (32 * ((v577 >> 2) & 1)) | (2 * ((v577 >> 1) & 1)) & 0xFFFFFFF7 | (8 * ((v577 >> 9) & 1)) | 0x7D4;
  v579 = (((v577 >> 9) & 1) << 16) & 0xFEF1FFFF | (((v577 >> 1) & 1) << 17) & 0xFEF3FFFF | (((v577 >> 2) & 1) << 24) | ((v577 & 1) << 19) | ((v577 & 1) << 18) | 0xE2E00000;
  if ((v577 & 0x20) != 0)
  {
    v580 = -255852289;
  }

  else
  {
    v580 = -255852544;
  }

  v581 = v580 & 0xFFDFFFFF | (v577 >> 7) & 0xC0000 | ((v577 & 1) << 21) | ((v577 << 31) >> 31) & 0x7000000;
  if ((v577 & 0x10) != 0)
  {
    v582 = 143395;
  }

  else
  {
    v582 = 143392;
  }

  v583 = v582 & 0xFFFEFFFF | (((v577 >> 6) & 1) << 16) | ((v577 << 12) >> 15) & 0xC00;
  v584 = v576[126];
  v585 = v584 + v576[128];
  v576[126] = v584 + 6;
  *v584 = 1;
  v584[1] = v578;
  v584[2] = v579;
  v584[3] = v581;
  v584[4] = v583;
  v584[5] = 0x1FFFF;
  v586 = v576[6];
  *v586 = __ROR8__(v585, 32) & 0xFFFFFFFC000000FFLL | 0x600;
  v576[6] = v586 + 1;
LABEL_455:
  if (*(v383 + 396) == 1)
  {
    v587 = v645[1];
    if (v587)
    {
      if (v587[533].i32[0])
      {
        v588 = v587[533].u8[5];
        v589 = v587[532].i32[0];
        if (v588)
        {
          v590 = 0x10000;
        }

        else
        {
          v590 = 0;
        }

        v591 = (((*(v645 + 196) - (*(v645 + 192) == 2)) << 23) + 528482304) & 0x1F800000 | (*(v645 + 192) << 30) | ((*(v645 + 191) & 1) << 29) | v590 & 0xFFE1FFFF | ((v645[97] & 3) << 17) & 0xFFE7FFFF | ((*(v645 + 195) & 1) << 19) & 0xFFEFFFFF | ((v589 & 1) << 20) | 0x200000;
        v592 = *(v7 + 4960);
        v593 = *(v592 + 48);
        *v593 = ((v591 << 32) | 0x40000020) + 112;
        *(v593 + 8) = 15360;
        *(v592 + 48) = v593 + 12;
      }
    }
  }

  if (v550 == 1)
  {
    v594 = *(v7 + 4960);
    v595 = *(v594 + 48);
    *v595 = __ROR8__(*(*(v6 + 416) + *v551 + 8) - 0x1000000000 + (*(v383 + 140) + *(v383 + 144) * v642), 32) & 0xFFFFFFFF000000FFLL | 0x90000000;
    *(v594 + 48) = v595 + 1;
  }

  else
  {
    v596 = *(v7 + 4960);
    v597 = *(v596 + 48);
    *v597 = __ROR8__(v625, 32) & 0xFFFFFFFF000000FFLL | 0x90000000;
    *(v596 + 48) = v597 + 1;
    *v624 = 671088640;
  }

  result = IOGPUResourceListAddResource();
  v598 = *(v7 + 7672);
  if (v598)
  {
    v599 = *(v598 + 2720) | 0x5F700000000003;
    v600 = *(v7 + 7680);
    if (!v600)
    {
      goto LABEL_468;
    }

    goto LABEL_467;
  }

  v599 = 0x5F700000000003;
  v600 = *(v7 + 7680);
  if (v600)
  {
LABEL_467:
    v599 |= *(v600 + 2720);
  }

LABEL_468:
  v601 = *(v7 + 7688);
  if (v601)
  {
    v602 = *(v601 + 32);
    if (v602)
    {
      v599 |= *(*(v601 + 24) + 2720) | *(v602 + 2720);
    }
  }

  *(v7 + 10472) |= v599;
  v603 = *(v492 + 1168);
  v604 = *(v6 + v603);
  if ((*(v604 + 396) & 1) == 0)
  {
    v605 = *(v7 + 5224) ^ 1;
    v606 = *(v7 + 7664);
    *(v606 + 1612) |= v605;
    *(v606 + 580) |= v605;
    v604 = *(v6 + v603);
  }

  if (*(v604 + 400))
  {
    *(v7 + 7178) = 15;
    *(v7 + 7176) |= 0xFu;
  }

  return result;
}

uint64_t std::function<AGX::HAL300::HWGeometryPipelineContextB * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkSpill(v4, v5, v6);
  }
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::checkSpill(uint64_t a1, unsigned int *a2, unsigned int *a3, double a4, double a5, double a6, double a7, int32x4_t a8)
{
  if (a2[949])
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = a2[751];
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a1 + 8) + 7440, a2[324], a2[327], a2[331], v10, 0, a4, a5, a6, a7, a8))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 7440, *(*(a1 + 8) + 7664) + 320, 1);
  }

  result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a1 + 8) + 7440, a3[324], a3[327], a3[331], a3[751], 0, v11, v12, v13, v14, v15);
  if (result)
  {
    v17 = *(a1 + 8);
    v18 = *(v17 + 7664) + 320;

    return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v17 + 7440, v18, 1);
  }

  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeAndEmitRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64x2_t *a5, uint64_t a6, int a7)
{
  v8 = a2;
  v483 = *MEMORY[0x29EDCA608];
  v10 = *(*(a1 + 1872) + 848);
  *(a1 + 5401) = 1;
  os_unfair_lock_opaque = v10[1804]._os_unfair_lock_opaque;
  v12 = *(a1 + 7260);
  v463 = a1 + 5224;
  v13 = *(a1 + 7272) | a7;
  *(a1 + 2060) |= 8u;
  v474[0] = 0;
  v461 = v10;
  if (v12 != os_unfair_lock_opaque)
  {
    *(a1 + 7260) = os_unfair_lock_opaque;
    v14 = *(a1 + 8480);
    *&v478 = v14 + 168;
    *(&v478 + 1) = a1 + 8616;
    v479 = (v14 + 176);
    v480 = (a1 + 8624);
    v481 = v14 + 200;
    v482 = a1 + 8648;
    v15 = AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(&v10[1810], &v478, *(a1 + 1904), v474);
    v16 = v461;
    if (v15)
    {
      if ((v13 & 1) != 0 && (v474[0] & 1) == 0)
      {
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        IOGPUResourceListAddResource();
        v16 = v461;
      }

      v398 = *(a1 + 8480);
      v399 = *(a1 + 9752);
      v399[22] = v398[21];
      *(a1 + 10088) |= 0x800000000000uLL;
      *(a1 + 10136) |= 0x800000000000uLL;
      *(a1 + 10376) |= 0x800000000000uLL;
      *(a1 + 10424) |= 0x800000000000uLL;
      v399[23] = v398[22];
      *(a1 + 9888) = *(v463 + 3392);
      *(a1 + 10088) |= 0x1000000000000uLL;
      *(a1 + 10136) |= 0x1000000000000uLL;
      *(a1 + 10376) |= 0x1000000000000uLL;
      *(a1 + 10424) |= 0x1000000000000uLL;
      v399[26] = v398[25];
      *(a1 + 9920) = *(a1 + 8648);
      *(a1 + 10088) |= 0x8000000000000uLL;
      *(a1 + 10136) |= 0x8000000000000uLL;
      *(a1 + 10376) |= 0x8000000000000uLL;
      *(a1 + 10424) |= 0x8000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    *&v478 = a1 + 11424;
    *(&v478 + 1) = a1 + 11432;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v16 + 3146, &v478, *(a1 + 1904)))
    {
      IOGPUResourceListAddResource();
    }

    **(a1 + 11416) = *(a1 + 11424);
    *&v478 = a1 + 11440;
    *(&v478 + 1) = a1 + 11448;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v461 + 2952, &v478, *(a1 + 1904)))
    {
      IOGPUResourceListAddResource();
    }

    *(*(a1 + 11416) + 8) = *(a1 + 11440);
    *&v478 = *(a1 + 8480) + 336;
    *(&v478 + 1) = a1 + 8784;
    if (AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v461 + 3534, &v478, *(a1 + 1904)))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v17 = *(a1 + 8480);
      *(*(a1 + 9752) + 344) = *(v17 + 336);
      *(a1 + 10056) = *(a1 + 8784);
      *(a1 + 10096) |= 0x10uLL;
      *(a1 + 10144) |= 0x10uLL;
      *(a1 + 10384) |= 0x10uLL;
      *(a1 + 10432) |= 0x10uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v17 = *(a1 + 8480);
    }

    v18 = *(a1 + 10528);
    *&v478 = v17 + 232;
    *(&v478 + 1) = a1 + 8680;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v18, &v478, *(a1 + 1904)))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v19 = *(a1 + 8480);
      *(*(a1 + 9752) + 240) = *(v19 + 232);
      *(a1 + 9952) = *(a1 + 8680);
      *(a1 + 10088) |= 0x80000000000000uLL;
      *(a1 + 10136) |= 0x80000000000000uLL;
      *(a1 + 10376) |= 0x80000000000000uLL;
      *(a1 + 10424) |= 0x80000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v19 = *(a1 + 8480);
    }

    v20 = *(a1 + 10520);
    *&v478 = v19 + 248;
    *(&v478 + 1) = a1 + 8696;
    if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v20, &v478, *(a1 + 1904)))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v21 = *(a1 + 8480);
      *(*(a1 + 9752) + 256) = *(v21 + 248);
      *(a1 + 9968) = *(a1 + 8696);
      *(a1 + 10088) |= 0x200000000000000uLL;
      *(a1 + 10136) |= 0x200000000000000uLL;
      *(a1 + 10376) |= 0x200000000000000uLL;
      *(a1 + 10424) |= 0x200000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v21 = *(a1 + 8480);
    }

    *&v478 = v21 + 224;
    *(&v478 + 1) = a1 + 8672;
    if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v461 + 2352, &v478, *(a1 + 1904)))
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
      }

      v22 = *(a1 + 8480);
      *(*(a1 + 9752) + 232) = *(v22 + 224);
      *(a1 + 9944) = *(a1 + 8672);
      *(a1 + 10088) |= 0x40000000000000uLL;
      *(a1 + 10136) |= 0x40000000000000uLL;
      *(a1 + 10376) |= 0x40000000000000uLL;
      *(a1 + 10424) |= 0x40000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }

    else
    {
      v22 = *(a1 + 8480);
    }

    *&v478 = v22 + 320;
    *(&v478 + 1) = a1 + 8768;
    v23 = AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v461 + 2752, &v478, *(a1 + 1904));
    v10 = v461;
    v8 = a2;
    if (v23)
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
        v10 = v461;
        v8 = a2;
      }

      *(*(a1 + 9752) + 328) = *(*(a1 + 8480) + 320);
      *(a1 + 10040) = *(a1 + 8768);
      *(a1 + 10096) |= 4uLL;
      *(a1 + 10144) |= 4uLL;
      *(a1 + 10384) |= 4uLL;
      *(a1 + 10432) |= 4uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }
  }

  explicit = atomic_load_explicit(&v10[2347], memory_order_acquire);
  if (explicit)
  {
    v25 = explicit + 1;
  }

  else
  {
    v25 = 0;
  }

  if (*(a1 + 7264) != v25)
  {
    *(a1 + 7264) = v25;
    *&v478 = *(a1 + 8480) + 208;
    *(&v478 + 1) = a1 + 8656;
    v26 = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v10 + 2152, &v478, *(a1 + 1904));
    *(*(a1 + 7664) + 2096) = *(*(a1 + 8480) + 208);
    v27 = atomic_load_explicit((*(*(a1 + 1872) + 848) + 9388), memory_order_acquire);
    v28 = v27 ? v27 + 1 : 0;
    *(*(a1 + 7664) + 2104) = v28;
    v8 = a2;
    if (v26)
    {
      if (v13)
      {
        IOGPUResourceListAddResource();
        v8 = a2;
      }

      *(*(a1 + 9752) + 216) = *(*(a1 + 8480) + 208);
      *(a1 + 9928) = *(a1 + 8656);
      *(a1 + 10088) |= 0x10000000000000uLL;
      *(a1 + 10136) |= 0x10000000000000uLL;
      *(a1 + 10376) |= 0x10000000000000uLL;
      *(a1 + 10424) |= 0x10000000000000uLL;
      *(a6 + 384) |= 0x30000000C0uLL;
    }
  }

  v29 = (a1 + 10076);
  if (a7)
  {
    goto LABEL_37;
  }

  if (v8 && (*(v8 + 2407) & 0x40) != 0 && *(v463 + 3580) == 1)
  {
    v30 = *(*(a1 + 8480) + 328);
    v31 = *(a1 + 168);
    v32 = v31 + 31;
    if ((v31 + 31) > *(a1 + 160))
    {
      v431 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v31 = *(a1 + 168);
      if (!v431)
      {
        v8 = a2;
        goto LABEL_30;
      }

      v32 = v31 + 31;
      v8 = a2;
      if ((v31 + 31) > *(a1 + 160))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 176) = v32;
LABEL_30:
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v33 + *(a1 + 184);
    *(a1 + 168) = v33 + 2;
    *v33 = v30;
    v35 = *(*(a1 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(a1 + 10088) |= 0x4000000000000000uLL;
    *(a1 + 10472) |= 0x40uLL;
    *(*(a1 + 8480) + 288) = v34;
    *(a1 + 8736) = v35;
    *(v463 + 3580) = 0;
  }

  if (a3 && (*(a3 + 2407) & 0x40) != 0 && *v29 == 1)
  {
    v36 = *(*(a1 + 9752) + 336);
    v37 = *(a1 + 200);
    v38 = v37 + 31;
    if ((v37 + 31) > *(a1 + 192))
    {
      v432 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 4, 0);
      v37 = *(a1 + 200);
      if (!v432)
      {
        v8 = a2;
        goto LABEL_36;
      }

      v38 = v37 + 31;
      v8 = a2;
      if ((v37 + 31) > *(a1 + 192))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 208) = v38;
LABEL_36:
    v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v39 + *(a1 + 216);
    *(a1 + 200) = v39 + 2;
    *v39 = v36;
    v41 = *(*(a1 + 48) + 288) + *MEMORY[0x29EDC5638];
    *(a1 + 10376) |= 0x4000000000000000uLL;
    *(a1 + 10472) |= 0x1000000000uLL;
    *(*(a1 + 9752) + 296) = v40;
    *(a1 + 10008) = v41;
    *v29 = 0;
  }

LABEL_37:
  if (*(a1 + 10080) == 1)
  {
    v42 = *(a1 + 200);
    v43 = v42 + 95;
    if ((v42 + 95) > *(a1 + 192))
    {
      v400 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 4, 0);
      v42 = *(a1 + 200);
      if (!v400)
      {
        v8 = a2;
        goto LABEL_40;
      }

      v43 = v42 + 95;
      v8 = a2;
      if ((v42 + 95) > *(a1 + 192))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 208) = v43;
LABEL_40:
    v44 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v44 + *(a1 + 216);
    *(a1 + 200) = v44 + 5;
    v46 = *(a1 + 11584);
    v48 = *(a1 + 11616);
    v47 = *(a1 + 11632);
    v44[2] = *(a1 + 11600);
    v44[3] = v48;
    v44[1] = v46;
    *v44 = *(a1 + 11568);
    v44[4] = v47;
    v49 = *(*(a1 + 48) + 288) + *MEMORY[0x29EDC5638];
    *(a1 + 10376) |= 0x8000000000000000;
    *(a1 + 10472) |= 0x1000000000uLL;
    *(*(a1 + 9752) + 304) = v45;
    *(a1 + 10016) = v49;
    *(a1 + 10080) = 256;
  }

  if (*(v463 + 179) == 1)
  {
    v50 = *(*(a1 + 1872) + 848);
    v51 = *(v50 + 6320);
    if (*(a1 + 7268) != v51)
    {
      for (i = *(v50 + 6832); i; i = *i)
      {
        IOGPUResourceListAddResource();
      }

      for (j = *(v50 + 6664); j; j = *j)
      {
        IOGPUResourceListAddResource();
      }

      *(a1 + 7268) = v51;
      v8 = a2;
    }
  }

  if (v8 && (v54 = *(a1 + 7664), !*(v54 + 600)))
  {
    if (*(v8 + 2480) == 0)
    {
      v58 = *(v8 + 2112);
    }

    else
    {
      v58 = 1;
    }

    *(v54 + 600) = v58;
    if (!a3)
    {
      goto LABEL_52;
    }
  }

  else if (!a3)
  {
    goto LABEL_52;
  }

  v55 = *(a1 + 7664);
  if (!*(v55 + 1620))
  {
    if (*(a3 + 2480) == 0)
    {
      v59 = *(a3 + 2112);
    }

    else
    {
      v59 = 1;
    }

    *(v55 + 1620) = v59;
    v56 = *(a1 + 10536);
    if (!v56)
    {
      goto LABEL_65;
    }

    goto LABEL_53;
  }

LABEL_52:
  v56 = *(a1 + 10536);
  if (!v56)
  {
    goto LABEL_65;
  }

LABEL_53:
  if (*(*(v56 + 64) + 49320) == 1)
  {
    v57 = *(a1 + 744) + 952;
    if (v57 > *(a1 + 736))
    {
      v8 = a2;
      if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 21, 0))
      {
        v412 = *(a1 + 744) + 952;
        if (v412 > *(a1 + 736))
        {
          goto LABEL_534;
        }

        *(a1 + 752) = v412;
        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::reserveBatchingDrawDataBufferSpace((a1 + 24), *(*(*(*(a1 + 1872) + 848) + 17136) + 8));
        if (!*(a1 + 7328))
        {
          v413 = *(a1 + 7312);
          if (v413)
          {
            v414 = *(a1 + 7336);
            *v413 = BYTE4(v414) | 0x80000000;
            v413[1] = v414;
            *(a1 + 7312) = 0;
            *(a1 + 7336) = 0;
            ++*(a1 + 1952);
          }
        }

        v415 = *(*(*(*(*(a1 + 1872) + 848) + 17136) + 8) + 2728);
        do
        {
          IOGPUResourceListAddResource();
          v415 &= ~(1 << __clz(__rbit32(v415)));
        }

        while (v415);
        *(a1 + 7328) = 0;
        *(a1 + 7312) = *(a1 + 72);
        *(a1 + 7320) = AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitVRRPatchDraw(a1);
        *(a1 + 7336) = *(a1 + 88) + *(a1 + 72);
        v8 = a2;
      }
    }

    else
    {
      *(a1 + 752) = v57;
    }
  }

LABEL_65:
  v60 = *(a1 + 7688);
  if (v60)
  {
    if (*(v60 + 1572))
    {
      *(*(a1 + 7664) + 1612) |= *v463 ^ 1;
    }

    if (*(v60 + 1260))
    {
      *(*(a1 + 7664) + 580) |= *v463 ^ 1;
    }
  }

  v61 = *(a1 + 8472);
  if (v61)
  {
    v62 = atomic_load_explicit((v61 + 80), memory_order_acquire);
    v63 = v62 != -1 && v62 == *(a1 + 7704);
    if (!v63)
    {
      *(a1 + 7704) = v62;
      atomic_store(1u, (v61 + 88));
      *(a6 + 384) |= 0x40uLL;
      v64 = *(a1 + 8472);
      v65 = *v64;
      v66 = -1;
      if (v65 >= 0x40)
      {
        if (v65 == 128)
        {
          v67 = -1;
        }

        else
        {
          v67 = ~(-1 << v65);
        }

        v68 = -1;
      }

      else
      {
        v67 = 0;
        v68 = ~(-1 << v65);
      }

      v69 = *(a6 + 8) | v67;
      *a6 |= v68;
      *(a6 + 8) = v69;
      v70 = v64[1];
      if (v70 >= 0x40)
      {
        if (v70 == 128)
        {
          v71 = -1;
        }

        else
        {
          v71 = ~(-1 << v70);
        }
      }

      else
      {
        v71 = 0;
        v66 = ~(-1 << v70);
      }

      v72 = *(a6 + 24);
      *(a6 + 16) |= v66;
      *(a6 + 24) = v72 | v71;
      v73 = v64[2];
      v74 = -1;
      if (v73 >= 0x40)
      {
        if (v73 == 128)
        {
          v75 = -1;
        }

        else
        {
          v75 = ~(-1 << v73);
        }
      }

      else
      {
        v75 = 0;
        v74 = ~(-1 << v73);
      }

      v76 = *(a6 + 40) | v75;
      *(a6 + 32) |= v74;
      *(a6 + 40) = v76;
    }
  }

  v77 = *(a1 + 9744);
  if (v77)
  {
    v78 = atomic_load_explicit((v77 + 80), memory_order_acquire);
    if (v78 == -1 || v78 != *(a1 + 8808))
    {
      *(a1 + 8808) = v78;
      atomic_store(1u, (v77 + 88));
      *(a6 + 384) |= 0x1000000000uLL;
      v80 = *(a1 + 9744);
      v81 = *v80;
      v82 = -1;
      if (v81 >= 0x40)
      {
        if (v81 == 128)
        {
          v83 = -1;
        }

        else
        {
          v83 = ~(-1 << v81);
        }

        v84 = -1;
      }

      else
      {
        v83 = 0;
        v84 = ~(-1 << v81);
      }

      v85 = *(a6 + 296) | v83;
      *(a6 + 288) |= v84;
      *(a6 + 296) = v85;
      v86 = v80[1];
      if (v86 >= 0x40)
      {
        if (v86 == 128)
        {
          v87 = -1;
        }

        else
        {
          v87 = ~(-1 << v86);
        }
      }

      else
      {
        v87 = 0;
        v82 = ~(-1 << v86);
      }

      v88 = *(a6 + 312);
      *(a6 + 304) |= v82;
      *(a6 + 312) = v88 | v87;
      v89 = v80[2];
      v90 = -1;
      if (v89 >= 0x40)
      {
        if (v89 == 128)
        {
          v91 = -1;
        }

        else
        {
          v91 = ~(-1 << v89);
        }
      }

      else
      {
        v91 = 0;
        v90 = ~(-1 << v89);
      }

      v92 = *(a6 + 328) | v91;
      *(a6 + 320) |= v90;
      *(a6 + 328) = v92;
    }
  }

  v93 = *(a6 + 384);
  v94 = a3;
  if (a3)
  {
    if (v8)
    {
LABEL_116:
      v95 = a1 + 2120;
      v459 = (a1 + 2120);
      v96 = v8;
      goto LABEL_119;
    }
  }

  else
  {
    v93 &= 0xFFFFFF8FFFFFFFFDLL;
    v94 = 0;
    *(a6 + 384) = v93;
    if (v8)
    {
      goto LABEL_116;
    }
  }

  v93 &= 0xFFFFFFFFFFFFFE3ELL;
  *(a6 + 384) = v93;
  v95 = a1 + 2120;
  v459 = (a1 + 2120);
  v96 = 0;
LABEL_119:
  v97 = v93 | AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(v95, v96, v94, a6);
  v473 = v97;
  if (v94)
  {
    v103 = *(v94 + 3916);
    if (a7)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v103 = 0;
    if (a7)
    {
LABEL_124:
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::emitDepthRanges(a1, v97);
      v8 = a2;
      goto LABEL_125;
    }
  }

  if (v103)
  {
    goto LABEL_124;
  }

LABEL_125:
  if ((v97 & 0x80) != 0 && (a7 & 1) == 0)
  {
    v104 = *(a6 + 48) & *(v8 + 2400);
    v475 = *(a6 + 56) & *(v8 + 2408);
    v476 = v104;
    v478 = *(v8 + 1360);
    while (1)
    {
      if (v104)
      {
        v105 = __clz(__rbit64(v104));
        v106 = &v476;
        v107 = v105;
      }

      else
      {
        v104 = v475;
        if (!v475)
        {
          break;
        }

        LODWORD(v105) = __clz(__rbit64(v475));
        v107 = v105 | 0x40;
        v106 = &v475;
      }

      *v106 = v104 & ~(1 << v105);
      if (*(a1 + 8488 + 8 * (v107 - 31)))
      {
        if ((*(&v478 | (8 * (v107 > 0x3F))) >> v107))
        {
          v108 = 3;
        }

        else
        {
          v108 = 1;
        }

        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindVertexBufferResource(a1, v107, v108, 1);
      }

      v104 = v476;
      v8 = a2;
    }
  }

  if ((v97 & 0x100) != 0)
  {
    v109 = *(a1 + 8472);
    if (v109)
    {
      v110 = *(v8 + 2416) & *(a6 + 64) & v109[4];
      v111 = *(v8 + 2424) & *(a6 + 72) & v109[5];
      *&v478 = v110;
      v476 = v111;
      v112 = *(v8 + 1376);
      v113 = *(v8 + 1384);
      v114 = v109[6];
      v115 = v109[7];
      while (1)
      {
        if (v110)
        {
          v116 = &v478;
        }

        else
        {
          v110 = v476;
          if (!v476)
          {
            *(*(a1 + 7664) + 580) |= (v114 & v112 | v115 & v113) != 0;
            break;
          }

          v116 = &v476;
        }

        *v116 = v110 & (v110 - 1);
        v110 = v478;
      }
    }
  }

  if ((v97 & 0x2000000000) != 0 && (a7 & 1) == 0)
  {
    v117 = *(a6 + 336) & *(a3 + 2400);
    v475 = *(a6 + 344) & *(a3 + 2408);
    v476 = v117;
    v478 = *(a3 + 1360);
    while (1)
    {
      if (v117)
      {
        v118 = __clz(__rbit64(v117));
        v119 = &v476;
        v120 = v118;
      }

      else
      {
        v117 = v475;
        if (!v475)
        {
          break;
        }

        LODWORD(v118) = __clz(__rbit64(v475));
        v120 = v118 | 0x40;
        v119 = &v475;
      }

      *v119 = v117 & ~(1 << v118);
      if (*(a1 + 9760 + 8 * (v120 - 31)))
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::bindFragmentBufferResource(a1, v120, (*(&v478 | (8 * (v120 > 0x3F))) >> v120) & 1, 1);
        v8 = a2;
      }

      v117 = v476;
    }
  }

  if ((v97 & 0x4000000000) != 0)
  {
    v121 = *(a1 + 9744);
    if (v121)
    {
      v122 = *(a3 + 2416) & *(a6 + 352) & v121[4];
      v123 = *(a3 + 2424) & *(a6 + 360) & v121[5];
      *&v478 = v122;
      v476 = v123;
      v124 = *(a3 + 1376);
      v125 = *(a3 + 1384);
      v126 = v121[6];
      v127 = v121[7];
      while (1)
      {
        if (v122)
        {
          v128 = &v478;
        }

        else
        {
          v122 = v476;
          if (!v476)
          {
            *(*(a1 + 7664) + 1612) |= (v126 & v124 | v127 & v125) != 0;
            break;
          }

          v128 = &v476;
        }

        *v128 = v122 & (v122 - 1);
        v122 = v478;
      }
    }
  }

  v129 = *(a6 + 392);
  if ((v129 & 1) != 0 && *(v463 + 2176) == 1)
  {
    *(a6 + 392) = v129 & 0xFFFFFFFE;
  }

  *(a6 + 384) = 0;
  v130 = 0uLL;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 288) = 0u;
  *(a6 + 304) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v131 = a1 + 64;
  v457 = a1 + 64;
  v458 = a1 + 24;
  v132 = *(a1 + 72);
  if ((v132 + 23) > *(a1 + 64))
  {
    v384 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 0, 0);
    v8 = a2;
    v131 = a1 + 64;
    if (v384)
    {
      v385 = *(a1 + 72) + 184;
      if (v385 > *(a1 + 64))
      {
        goto LABEL_534;
      }

      *(a1 + 80) = v385;
      *v132 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v458, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      v8 = a2;
      v131 = a1 + 64;
    }
  }

  else
  {
    *(a1 + 80) = v132 + 23;
  }

  if (v8)
  {
    v133 = *(v8 + 624) + 31;
  }

  else
  {
    v133 = 31;
  }

  v134 = *(a1 + 168) + v133;
  if (v134 <= *(a1 + 160))
  {
LABEL_173:
    *(a1 + 176) = v134;
    goto LABEL_174;
  }

  v386 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 3, 0);
  v8 = a2;
  v131 = a1 + 64;
  if (v386)
  {
    v134 = *(a1 + 168) + v133;
    if (v134 > *(a1 + 160))
    {
      goto LABEL_534;
    }

    goto LABEL_173;
  }

LABEL_174:
  v135 = *(a1 + 1032) + 636;
  if (v135 <= *(a1 + 1024))
  {
LABEL_175:
    *(a1 + 1040) = v135;
    goto LABEL_176;
  }

  v387 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 30, 0);
  v8 = a2;
  v131 = a1 + 64;
  if (v387)
  {
    v135 = *(a1 + 1032) + 636;
    if (v135 > *(a1 + 1024))
    {
      goto LABEL_534;
    }

    goto LABEL_175;
  }

LABEL_176:
  if (*(a1 + 1864))
  {
    v136 = 30;
  }

  else
  {
    v136 = 31;
  }

  v137 = (v131 + 32 * v136);
  v138 = v137[1] + 520;
  if (v138 <= *v137)
  {
LABEL_180:
    v137[2] = v138;
    goto LABEL_181;
  }

  v388 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, v136, 0);
  v8 = a2;
  v131 = a1 + 64;
  if (v388)
  {
    v138 = v137[1] + 520;
    if (v138 > *v137)
    {
      goto LABEL_534;
    }

    goto LABEL_180;
  }

LABEL_181:
  if ((v97 & 0xFE01) == 0)
  {
    goto LABEL_184;
  }

  v139 = (*(*(v8 + 2392) + 8) - **(v8 + 2392)) + 63;
  v140 = *(a1 + 232) + v139;
  if (v140 <= *(a1 + 224))
  {
    goto LABEL_183;
  }

  v394 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 5, 0);
  v131 = a1 + 64;
  if (v394)
  {
    v140 = *(a1 + 232) + v139;
    if (v140 > *(a1 + 224))
    {
      goto LABEL_534;
    }

LABEL_183:
    *(a1 + 240) = v140;
  }

LABEL_184:
  if ((v97 & 0xF8000000002) == 0)
  {
    goto LABEL_194;
  }

  v141 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v142 = *(a1 + 264) + v141;
  if (v142 <= *(a1 + 256))
  {
    goto LABEL_186;
  }

  v395 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 6, 0);
  v131 = a1 + 64;
  if (v395)
  {
    v142 = *(a1 + 264) + v141;
    if (v142 > *(a1 + 256))
    {
      goto LABEL_534;
    }

LABEL_186:
    *(a1 + 272) = v142;
  }

  v143 = *(a3 + 624);
  if (*(a1 + 1864))
  {
    v144 = 4;
  }

  else
  {
    v144 = 11;
  }

  v145 = (v131 + 32 * v144);
  if (((1 << v144) & 0x480) != 0 && !v145[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v458, v144, 0) & 1) == 0)
  {
LABEL_534:
    abort();
  }

  v146 = v143 + 31;
  v147 = v145[1] + v146;
  if (v147 <= *v145)
  {
    goto LABEL_193;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, v144, 0))
  {
    v147 = v145[1] + v146;
    if (v147 > *v145)
    {
      goto LABEL_534;
    }

LABEL_193:
    v145[2] = v147;
  }

LABEL_194:
  v148 = *(a1 + 360) + 20;
  if (v148 <= *(a1 + 352))
  {
LABEL_195:
    *(a1 + 368) = v148;
    goto LABEL_196;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, 9, 0))
  {
    v148 = *(a1 + 360) + 20;
    if (v148 > *(a1 + 352))
    {
      goto LABEL_534;
    }

    goto LABEL_195;
  }

LABEL_196:
  if ((*(*(*(a1 + 1872) + 848) + 6242) & 1) == 0)
  {
    v149 = 16 * *(a1 + 6844);
    v150 = *(a1 + 328) + v149;
    if (v150 > *(a1 + 320))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, 8, 1))
      {
        v406 = *(a1 + 328) + v149;
        if (v406 > *(a1 + 320))
        {
          goto LABEL_534;
        }

        *(a1 + 336) = v406;
        *(*(a1 + 7664) + 944) = *(*(a1 + 48) + 512) + *(*(a1 + 48) + 536) - *(*(a1 + 48) + 520);
      }
    }

    else
    {
      *(a1 + 336) = v150;
    }
  }

  if ((*(*(*(a1 + 1872) + 848) + 6241) & 1) == 0)
  {
    v151 = *(a1 + 296);
    if (!v151)
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v458, 7, 0))
      {
        goto LABEL_534;
      }

      v151 = *(a1 + 296);
    }

    v152 = v151 + 12;
    if (v152 > *(a1 + 288))
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, 7, 1))
      {
        v407 = *(a1 + 296);
        if ((v407 + 12) > *(a1 + 288))
        {
          goto LABEL_534;
        }

        *(a1 + 304) = v407 + 12;
        if (!v407)
        {
          AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v458, 7);
        }

        *(*(a1 + 7664) + 952) = *(*(a1 + 48) + 448) + *(*(a1 + 48) + 472) - *(*(a1 + 48) + 456);
      }
    }

    else
    {
      *(a1 + 304) = v152;
    }
  }

  if (*(a1 + 5296))
  {
    v153 = *(a1 + 80);
    if ((v153 + 8) > *(a1 + 64))
    {
      v396 = *(a1 + 72);
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, 0, 0))
      {
        v397 = *(a1 + 72) + v153 - v396 + 8;
        if (v397 > *(a1 + 64))
        {
          goto LABEL_534;
        }

        *(a1 + 80) = v397;
        *v396 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v458, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      *(a1 + 80) = v153 + 8;
    }
  }

  v154 = 0xDE876B1A5;
  v472 = 0;
  v471 = 4123088130;
  v155 = -1;
  v470 = -1;
  v469 = 0;
  v468 = 0;
  v156 = *(*(a1 + 1872) + 848);
  if (*(v156 + 6241) == 1 && (v97 & 0x400000000000) != 0)
  {
    v130.i32[0] = *(a1 + 7184);
    v401 = *(a1 + 7188);
    v402 = *(a1 + 7192);
    v100.i32[0] = 931135616;
    v403.i64[0] = 0x8000000080000000;
    v403.i64[1] = 0x8000000080000000;
    LODWORD(v404) = vbslq_s8(v403, v100, v130).u32[0];
    if (*(*(a1 + 2392) + 4924))
    {
      *v130.i32 = v404 + (*v130.i32 * 0.000015259);
    }

    *&v478 = 0;
    LOBYTE(v476) = 0;
    LOBYTE(v475) = 0;
    v405 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v156, *(*(a1 + 7664) + 952), &v478, &v476, &v475, *v130.i32, v401, v402);
    if (v475)
    {
      if (v476)
      {
        v155 = v405;
        v154 = v478;
      }

      else
      {
        v472 = 1;
        v468 = 4;
      }
    }

    else
    {
      v472 = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDeviceScissorBufferReserve(a1, &v473, &v470, &v471, &v469, &v472, &v468, *v130.i64, v98, v99, *v100.i32, v101, v102);
  v163 = v472 | (*(*(a1 + 1912) + 520) == 0);
  v472 = v163;
  v164 = *(*(a1 + 1872) + 848) + 4096;
  if ((*(*(*(a1 + 1872) + 848) + 6242) & 1) == 0)
  {
    v163 |= ((*(a1 + 328) - *(*(a1 + 48) + 536)) >> 4) > 0xFFFE;
    v472 = v163;
  }

  if (*(v164 + 2145))
  {
    if ((v163 & 1) == 0)
    {
LABEL_212:
      v165 = 0;
      goto LABEL_213;
    }
  }

  else
  {
    v178 = *(a1 + 296);
    if (!v178)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v458, 7);
      v178 = *(a1 + 296);
      if (!v178)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v458, 7);
        v178 = 0;
      }
    }

    v472 = v163 | (-1431655765 * ((v178 - *(*(a1 + 48) + 472)) >> 2) > 0xFFFE);
    if ((v472 & 1) == 0)
    {
      goto LABEL_212;
    }
  }

  if (*(a1 + 5296))
  {
    *(a1 + 5376) = v468;
    *(v463 + 160) = 1;
    return;
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::restartRenderPass(a1, &v473, v468, 1);
  v408 = v473;
  v409 = *(a1 + 72);
  if ((v409 + 23) <= *(a1 + 64))
  {
    *(a1 + 80) = v409 + 23;
LABEL_489:
    v410 = a2;
    goto LABEL_490;
  }

  v436 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 0, 0);
  v410 = a2;
  if (v436)
  {
    v437 = *(a1 + 72) + 184;
    if (v437 > *(a1 + 64))
    {
      goto LABEL_534;
    }

    *(a1 + 80) = v437;
    *v409 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(v458, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    goto LABEL_489;
  }

LABEL_490:
  if (v410)
  {
    v411 = *(v410 + 624) + 31;
  }

  else
  {
    v411 = 31;
  }

  v416 = *(a1 + 168) + v411;
  if (v416 <= *(a1 + 160))
  {
LABEL_503:
    *(a1 + 176) = v416;
    goto LABEL_504;
  }

  v438 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 3, 0);
  v410 = a2;
  if (v438)
  {
    v416 = *(a1 + 168) + v411;
    if (v416 > *(a1 + 160))
    {
      goto LABEL_534;
    }

    goto LABEL_503;
  }

LABEL_504:
  v417 = *(a1 + 1032) + 636;
  if (v417 <= *(a1 + 1024))
  {
LABEL_505:
    *(a1 + 1040) = v417;
    goto LABEL_506;
  }

  v439 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 30, 0);
  v410 = a2;
  if (v439)
  {
    v417 = *(a1 + 1032) + 636;
    if (v417 > *(a1 + 1024))
    {
      goto LABEL_534;
    }

    goto LABEL_505;
  }

LABEL_506:
  if (*(a1 + 1864))
  {
    v418 = 30;
  }

  else
  {
    v418 = 31;
  }

  v419 = (v457 + 32 * v418);
  v420 = v419[1] + 520;
  if (v420 <= *v419)
  {
LABEL_510:
    v419[2] = v420;
    goto LABEL_511;
  }

  v440 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, v418, 0);
  v410 = a2;
  if (v440)
  {
    v420 = v419[1] + 520;
    if (v420 > *v419)
    {
      goto LABEL_534;
    }

    goto LABEL_510;
  }

LABEL_511:
  if ((v408 & 0xFE01) == 0)
  {
    goto LABEL_514;
  }

  v421 = (*(*(v410 + 2392) + 8) - **(v410 + 2392)) + 63;
  v422 = *(a1 + 232) + v421;
  if (v422 <= *(a1 + 224))
  {
    goto LABEL_513;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, 5, 0))
  {
    v422 = *(a1 + 232) + v421;
    if (v422 > *(a1 + 224))
    {
      goto LABEL_534;
    }

LABEL_513:
    *(a1 + 240) = v422;
  }

LABEL_514:
  if ((v408 & 0xF8000000002) == 0)
  {
    goto LABEL_524;
  }

  v423 = (*(*(a3 + 2392) + 8) - **(a3 + 2392)) + 63;
  v424 = *(a1 + 264) + v423;
  if (v424 <= *(a1 + 256))
  {
    goto LABEL_516;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, 6, 0))
  {
    v424 = *(a1 + 264) + v423;
    if (v424 > *(a1 + 256))
    {
      goto LABEL_534;
    }

LABEL_516:
    *(a1 + 272) = v424;
  }

  v425 = *(a3 + 624);
  if (*(a1 + 1864))
  {
    v426 = 4;
  }

  else
  {
    v426 = 11;
  }

  v427 = (v457 + 32 * v426);
  if (((1 << v426) & 0x480) != 0 && !v427[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v458, v426, 0) & 1) == 0)
  {
    goto LABEL_534;
  }

  v428 = v425 + 31;
  v429 = v427[1] + v428;
  if (v429 <= *v427)
  {
    goto LABEL_523;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v458, v426, 0))
  {
    v429 = v427[1] + v428;
    if (v429 > *v427)
    {
      goto LABEL_534;
    }

LABEL_523:
    v427[2] = v429;
  }

LABEL_524:
  v430 = *(a1 + 360) + 20;
  if (v430 > *(a1 + 352))
  {
    if (!AGX::DataBufferAllocator<44ul>::growNoInline(v458, 9, 0))
    {
      goto LABEL_526;
    }

    v430 = *(a1 + 360) + 20;
    if (v430 > *(a1 + 352))
    {
      goto LABEL_534;
    }
  }

  *(a1 + 368) = v430;
LABEL_526:
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveScissorSpace(a1, *(a1 + 6844));
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::reserveDepthBiasSpace(a1);
  v165 = 1;
  if (a7 && (v474[0] & 1) == 0)
  {
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    v165 = 1;
  }

LABEL_213:
  if (!*(*(a1 + 1912) + 520))
  {
    v166 = *(a1 + 1968) - *(a1 + 1984);
    *(v166 + 140) = 1;
    if ((*(v166 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleScissorUpdates(a1, &v473, v470, v471, v469, v165, v157, v158, v159, v160, v161, v162);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::handleDepthBiasUpdates(a1, &v473, v155, v154, v167, v168, v169, v170);
  v172 = v473;
  v173 = a2;
  if ((v473 & 0x800000000000) != 0)
  {
    v389 = *(a1 + 5944);
    v390 = *(a1 + 200);
    v391 = v390 + 11;
    if ((v390 + 11) > *(a1 + 192))
    {
      v435 = AGX::DataBufferAllocator<44ul>::growNoInline(v458, 4, 0);
      v390 = *(a1 + 200);
      if (!v435)
      {
        v173 = a2;
LABEL_429:
        v392 = ((v390 + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v393 = v392 + *(a1 + 216);
        *v392 = v389;
        *(a1 + 200) = v392 + 1;
        *(a1 + 5960) = v393 & 0xFFFFFFFC;
        *(a1 + 5956) = (v393 >> 16) & 0xFFFF0000;
        v172 |= 0x8000000000000uLL;
        v473 = v172;
        if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA())
        {
          *(a1 + 10472) |= 0x1000000000000uLL;
        }

        goto LABEL_217;
      }

      v391 = v390 + 11;
      v173 = a2;
      if ((v390 + 11) > *(a1 + 192))
      {
        goto LABEL_534;
      }
    }

    *(a1 + 208) = v391;
    goto LABEL_429;
  }

LABEL_217:
  v174 = (v173 + 628);
  if (v172 & 0xFE01) == 0 || (*(v463 + 2188))
  {
    goto LABEL_343;
  }

  v454 = v172;
  v455 = (v173 + 628);
  v175 = *(v173 + 624);
  if (v175)
  {
    v176 = (*(a1 + 168) + 31) & 0xFFFFFFFFFFFFFFE0;
    v177 = v176 + *(a1 + 184);
    *(a1 + 168) = v176 + v175;
  }

  else
  {
    v177 = 0;
    v176 = 0;
  }

  v452 = *(a1 + 7408);
  v453 = *(v463 + 2176);
  v179 = ((*(a1 + 232) + 63) & 0xFFFFFFFFFFFFFFC0);
  v180 = *(a1 + 248);
  *(a1 + 232) = &v179[*(*(v173 + 2392) + 8) - **(v173 + 2392)];
  v181 = *(v173 + 1128);
  v182 = *(v173 + 1120);
  v183 = v181 - v182;
  v63 = v181 == v182;
  v184 = *(v173 + 1016);
  v185 = v184 & 1;
  if (v63)
  {
    v185 = 0;
  }

  if (!v175)
  {
    goto LABEL_321;
  }

  v186 = *(v173 + 1320);
  v187 = *(v173 + 656);
  v442 = *(v173 + 736);
  v451 = *(v173 + 660);
  v188 = *(v173 + 1024);
  v189 = *(v173 + 1028);
  v190 = v187 + ((*(v173 + 872) - *(v173 + 864)) >> 2);
  v449 = *(v173 + 1353);
  v441 = *(v173 + 1352);
  if (*(v173 + 1352))
  {
    *(a1 + 7904) = vaddw_u32(vdupq_n_s64(v177), *v455);
  }

  if (v449)
  {
    *(a1 + 7936) = v177 + *(v173 + 648);
  }

  v448 = 8 * v190;
  v191 = v185 + v184;
  if (v189 + v188)
  {
    *(a1 + 8000) = v448 + v177 + 4 * (v191 + ((v183 >> 1) & 0xFFFFFFFE));
  }

  v443 = v191;
  v192 = a4;
  v444 = v180;
  v450 = v177;
  v447 = v183;
  v445 = v188;
  v446 = v189;
  if (v187 == v186)
  {
    v193 = 0;
    if (v186)
    {
      goto LABEL_237;
    }

    goto LABEL_286;
  }

  if (a4)
  {
    v475 = a1 + 7720;
    v476 = a4;
    v198 = &unk_2A23FA148;
    *&v478 = &unk_2A23FA148;
    *(&v478 + 1) = &v475;
    v479 = &v476;
    v480 = &v478;
    v199 = *(v173 + 688);
    v200 = *(v173 + 696);
    if (v199 != v200)
    {
      v201 = 0;
      while (1)
      {
        v477 = *v199;
        if (!v480)
        {
          break;
        }

        v203 = (*(*v480 + 48))(v480, &v477);
        v204 = *(v199 + 1);
        v205 = *(v199 + 2);
        if (v204 == v205)
        {
          v202 = v201;
        }

        else
        {
          do
          {
            v206 = *v204++;
            v202 = (v201 + 1);
            *(v176 + 8 * v201) = *(v203 + 8 * v206);
            LODWORD(v201) = v201 + 1;
          }

          while (v204 != v205);
        }

        v199 += 8;
        v201 = v202;
        if (v199 == v200)
        {
          goto LABEL_259;
        }
      }

LABEL_541:
      std::__throw_bad_function_call[abi:nn200100]();
    }

    goto LABEL_262;
  }

  v476 = a1 + 7720;
  v198 = &unk_2A23F9C80;
  *&v478 = &unk_2A23F9C80;
  *(&v478 + 1) = &v476;
  v480 = &v478;
  v207 = *(v173 + 688);
  v208 = *(v173 + 696);
  if (v207 == v208)
  {
LABEL_262:
    v215 = &v478;
    v177 = v450;
    v189 = v446;
LABEL_264:
    v198[4](v215);
    goto LABEL_265;
  }

  v209 = 0;
  do
  {
    LODWORD(v475) = *v207;
    if (!v480)
    {
      goto LABEL_541;
    }

    v211 = (*(*v480 + 48))(v480, &v475);
    v212 = *(v207 + 8);
    v213 = *(v207 + 16);
    if (v212 == v213)
    {
      v210 = v209;
    }

    else
    {
      do
      {
        v214 = *v212++;
        v210 = (v209 + 1);
        *(v176 + 8 * v209) = *(v211 + 8 * v214);
        LODWORD(v209) = v209 + 1;
      }

      while (v212 != v213);
    }

    v207 += 32;
    v209 = v210;
  }

  while (v207 != v208);
LABEL_259:
  v215 = v480;
  if (v480 == &v478)
  {
    v198 = *v480;
    v180 = v444;
    v177 = v450;
    v189 = v446;
    goto LABEL_264;
  }

  v180 = v444;
  v177 = v450;
  v189 = v446;
  if (v480)
  {
    (*(*v480 + 40))();
  }

LABEL_265:
  v183 = v447;
  v188 = v445;
  if (*(v173 + 1160))
  {
    v216 = *(v173 + 1144);
    if (v216 != (v173 + 1152))
    {
      do
      {
        *(v176 + 4 * *(v216 + 7)) |= *(v216 + 8);
        v226 = v216[1];
        if (v226)
        {
          do
          {
            v227 = v226;
            v226 = *v226;
          }

          while (v226);
        }

        else
        {
          do
          {
            v227 = v216[2];
            v63 = *v227 == v216;
            v216 = v227;
          }

          while (!v63);
        }

        v216 = v227;
      }

      while (v227 != (v173 + 1152));
    }
  }

  v217 = (v442 + 3) & 0xFFFFFFFC;
  if (v441)
  {
    v218 = *(v173 + 1312);
    if (v218 >= 4)
    {
      v219 = *(a4 + 24) + *(a4 + 8);
      v220 = v218 >> 2;
      v221 = *(v173 + 752);
      v222 = (v176 + 8 * v217);
      do
      {
        v223 = *v221;
        v221 += 4;
        v224 = (v219 + 8 * v223);
        v225 = v224[1];
        *v222 = *v224;
        v222[1] = v225;
        v222 += 2;
        --v220;
      }

      while (v220);
    }

    v217 += v218;
  }

  else
  {
    v218 = 0;
  }

  if (v449)
  {
    v228 = *(v173 + 1316);
    v229 = (v176 + 8 * v217);
    v230 = *(a4 + 24) + *(a4 + 12);
    if (*(v173 + 2192) == 1)
    {
      if (v228)
      {
        v433 = (*(v173 + 752) + 4 * v218);
        do
        {
          v434 = *v433++;
          *v229++ = *(v230 + 8 * v434);
          --v228;
        }

        while (v228);
      }
    }

    else if (v228 >= 4)
    {
      v231 = v228 >> 2;
      v232 = (*(v173 + 752) + 4 * v218);
      do
      {
        v233 = *v232;
        v232 += 4;
        *v229 = *(v230 + 8 * v233);
        v229 += 4;
        --v231;
      }

      while (v231);
    }
  }

  v193 = 8 * (v187 - v186);
  v192 = a4;
  if (v186)
  {
LABEL_237:
    if (v186 >= 4)
    {
      v194 = *(v173 + 2920);
      v195 = v186 >> 2;
      v196 = (v176 + v193);
      do
      {
        v197 = *v194;
        v194 += 4;
        *v196 = v197;
        v196 += 4;
        --v195;
      }

      while (v195);
    }

    v193 += 8 * v186;
    v192 = a4;
    if (!v451)
    {
      goto LABEL_302;
    }

LABEL_287:
    *(a1 + 7736) = v177 + v193 + 8;
    v475 = a1 + 7720;
    v476 = v192;
    v234 = &unk_2A23FA190;
    *&v478 = &unk_2A23FA190;
    *(&v478 + 1) = &v475;
    v479 = &v476;
    v480 = &v478;
    v235 = *(v173 + 800);
    v236 = *(v173 + 808);
    if (v235 == v236)
    {
      v243 = &v478;
      v177 = v450;
      v189 = v446;
    }

    else
    {
      v237 = 0;
      do
      {
        v477 = *v235;
        if (!v480)
        {
          goto LABEL_541;
        }

        v239 = (*(*v480 + 48))(v480, &v477);
        v240 = *(v235 + 1);
        v241 = *(v235 + 2);
        if (v240 == v241)
        {
          v238 = v237;
        }

        else
        {
          do
          {
            v242 = *v240++;
            v238 = (v237 + 1);
            *(v176 + v193 + 4 * v237) = *(v239 + 4 * v242);
            LODWORD(v237) = v237 + 1;
          }

          while (v240 != v241);
        }

        v235 += 8;
        v237 = v238;
      }

      while (v235 != v236);
      v243 = v480;
      v180 = v444;
      if (v480 != &v478)
      {
        v177 = v450;
        v189 = v446;
        if (v480)
        {
          (*(*v480 + 40))();
        }

        goto LABEL_301;
      }

      v234 = *v480;
      v177 = v450;
      v189 = v446;
    }

    v234[4](v243);
LABEL_301:
    v193 += 4 * v451;
    v183 = v447;
    v188 = v445;
    goto LABEL_302;
  }

LABEL_286:
  if (v451)
  {
    goto LABEL_287;
  }

LABEL_302:
  v244 = v183 >> 2;
  if ((v183 >> 2))
  {
    v245 = v448 + 4 * v443;
    v246 = (v176 + (v245 & 0xFFFFFFFC));
    v247 = *(a4 + 24) + *(a4 + 12);
    v248 = *(v173 + 1120);
    do
    {
      v249 = *v248++;
      *v246++ = *(v247 + 8 * v249);
      LODWORD(v244) = v244 - 1;
    }

    while (v244);
    v193 = v245 + 8 * (v183 >> 2);
  }

  if (v189 == -v188)
  {
    goto LABEL_321;
  }

  v250 = (v176 + v193);
  v251 = 4 * *(v173 + 1024);
  memcpy(v250, (a4 + 4 * *(v173 + 1020)), v251);
  v475 = a1 + 7720;
  v476 = a4;
  v252 = &unk_2A23FA1D8;
  *&v478 = &unk_2A23FA1D8;
  *(&v478 + 1) = &v475;
  v479 = &v476;
  v480 = &v478;
  v253 = *(v173 + 1056);
  v254 = *(v173 + 1064);
  if (v253 == v254)
  {
    v262 = &v478;
  }

  else
  {
    v255 = 0;
    v256 = &v250[v251];
    do
    {
      v477 = *v253;
      if (!v480)
      {
        goto LABEL_541;
      }

      v258 = (*(*v480 + 48))(v480, &v477);
      v259 = *(v253 + 1);
      v260 = *(v253 + 2);
      if (v259 == v260)
      {
        v257 = v255;
      }

      else
      {
        do
        {
          v261 = *v259++;
          v257 = (v255 + 1);
          *&v256[4 * v255] = *(v258 + 4 * v261);
          LODWORD(v255) = v255 + 1;
        }

        while (v259 != v260);
      }

      v253 += 8;
      v255 = v257;
    }

    while (v253 != v254);
    v262 = v480;
    if (v480 != &v478)
    {
      v180 = v444;
      v177 = v450;
      if (v480)
      {
        (*(*v480 + 40))();
      }

      goto LABEL_321;
    }

    v252 = *v480;
    v180 = v444;
  }

  v177 = v450;
  v252[4](v262);
LABEL_321:
  if (a4)
  {
    v263 = *(a4 + 24) + *(a4 + 4);
  }

  else
  {
    v263 = 0;
  }

  v264 = *(v173 + 2392);
  memcpy(v179, *v264, *(v264 + 8) - *v264);
  if (*(v264 + 272) == 1)
  {
    v265 = *(v264 + 276);
    v266.i64[0] = v177;
    v266.i64[1] = v177 >> 5;
    v171 = vbslq_s8(xmmword_29D2F17C0, *&v179[v265], vshlq_u8(vqtbl1q_s8(v266, xmmword_29D2F17A0), xmmword_29D2F17B0));
    *&v179[v265] = v171;
  }

  if (v263)
  {
    v267 = *(v264 + 224);
    v268 = *(v264 + 232);
    if (v267 != v268)
    {
      v171.i64[0] = 0xA09080803000000;
      do
      {
        v269.i64[0] = *(v263 + 8 * v267[1]) + *v267;
        v269.i64[1] = v269.i64[0] >> 5;
        *&v179[v267[2]] = vbslq_s8(xmmword_29D2F17C0, *&v179[v267[2]], vshlq_u8(vqtbl1q_s8(v269, xmmword_29D2F17A0), xmmword_29D2F17B0));
        v267 += 3;
      }

      while (v267 != v268);
    }
  }

  v270 = *(v264 + 248);
  v271 = *(v264 + 256);
  if (v270 != v271)
  {
    v171.i64[0] = 0xA09080803000000;
    do
    {
      v272.i64[0] = *(a1 + 7720 + 8 * v270[1]) + *v270;
      v272.i64[1] = v272.i64[0] >> 5;
      *&v179[v270[2]] = vbslq_s8(xmmword_29D2F17C0, *&v179[v270[2]], vshlq_u8(vqtbl1q_s8(v272, xmmword_29D2F17A0), xmmword_29D2F17B0));
      v270 += 3;
    }

    while (v270 != v271);
  }

  v273 = &v179[v180];
  v274 = *v459;
  if (*v459)
  {
    v276 = *v264;
    v275 = *(v264 + 8);
    v277 = *(v173 + 2800);
    LODWORD(v278) = *(v274 + 2);
    v279 = v278 + 1;
    if (*(v274 + 3) >= (v278 + 1))
    {
      v282 = *v274;
    }

    else
    {
      v280 = -__clz(v278);
      v281 = malloc_type_malloc(40 << (v280 & 0x1F), 0x10800400D7C94D2uLL);
      v282 = v281;
      v283 = 1 << v280;
      v278 = *(v274 + 2);
      if (v278)
      {
        memcpy(v281, *v274, 40 * v278);
        free(*v274);
        LODWORD(v278) = *(v274 + 2);
      }

      *(v274 + 3) = v283;
      *v274 = v282;
      v173 = a2;
    }

    v284 = &v282[40 * v278];
    *v284 = 0;
    *(v284 + 1) = v273;
    *(v284 + 2) = v179;
    *(v284 + 3) = (v275 - v276);
    *(v284 + 8) = v277;
    *(v274 + 2) = v279;
  }

  v285 = *(a1 + 8456);
  v286 = v173 + 28 * (v453 | (2 * v452));
  v287 = *(v286 + 3744);
  v288 = *(v286 + 3752);
  v289 = (v273 >> 16) & 0xFFC00000 | *(v286 + 3736) & 0x3FFFFF;
  v290 = v285 - 1;
  v63 = (v288 & 7) - 1 == v285;
  v291 = *(a1 + 72);
  v292 = *(v286 + 3728);
  if (!v63)
  {
    v288 = v290 & 7;
  }

  *v291 = v292;
  *(v291 + 8) = v289;
  *(v291 + 12) = v273 >> 6;
  *(v291 + 16) = v287;
  *(v291 + 24) = v288;
  *(a1 + 72) = v291 + 28;
  LOBYTE(v172) = v454;
  v174 = v455;
LABEL_343:
  if (v172)
  {
    v293 = v174[439];
    v294 = *(a1 + 72);
    *v294 = v293;
    *(a1 + 72) = v294 + 1;
  }

  v295 = v473;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>(v459, v458, a3, *(a1 + 7688), a5, (a1 + 8824), v473, *(a1 + 7408), *v171.i8, *(v463 + 2188));
  if ((v295 & 0x5F400000000000) != 0)
  {
    v296 = *(a1 + 1032);
    v297 = *(a1 + 1048) + v296;
    *(a1 + 1032) = v296 + 24;
    *v296 = xmmword_29D2F1760;
    *(v296 + 16) = 0x1FFFF00023020;
    v298 = __ROR8__(v297, 32) & 0xFFFFFFFC000000FFLL | 0x600;
    v299 = *(a1 + 72);
    *v299 = v298;
    *(a1 + 72) = v299 + 1;
  }

  if ((v295 & 4) != 0)
  {
    v301 = *(a1 + 1032);
    v302 = *(a1 + 1048) + v301;
    v303 = *(a1 + 6020);
    *(a1 + 1032) = v301 + 20;
    *(v301 + 16) = *(a1 + 6036);
    *v301 = v303;
    v304 = __ROR8__(v302, 32) & 0xFFFFFFFC000000FFLL | 0x500;
    v305 = *(a1 + 72);
    *v305 = v304;
    *(a1 + 72) = v305 + 1;
    v300 = v461;
    if ((v295 & 0x100000000000) == 0)
    {
LABEL_349:
      if ((v295 & 0x1000000000000) == 0)
      {
        goto LABEL_399;
      }

      goto LABEL_381;
    }
  }

  else
  {
    v300 = v461;
    if ((v295 & 0x100000000000) == 0)
    {
      goto LABEL_349;
    }
  }

  if (a7)
  {
    v306 = atomic_load(&v300[4254]._os_unfair_lock_opaque + 1);
    v307 = a1 + 5972;
    if ((v306 & 1) == 0)
    {
      goto LABEL_360;
    }
  }

  else
  {
    if (!a3)
    {
      v307 = a1 + 5972;
      goto LABEL_360;
    }

    v307 = a1 + 5972;
    if (*(a3 + 1354) != 1)
    {
      goto LABEL_360;
    }
  }

  if ((*(a1 + 5983) & 7) == 0)
  {
    *(*(a1 + 7664) + 1168) |= 0x10000uLL;
  }

LABEL_360:
  v308 = vand_s8(*(v463 + 756), vdup_n_s32(0xFFFC00FF));
  v309 = 7384;
  if (*(a1 + 7376) == 2)
  {
    v309 = 7388;
  }

  v310 = 256.0;
  if (*(a1 + 7376) == 2)
  {
    v310 = 1023.5;
  }

  v311 = *(a1 + v309) * 16.0;
  if (v311 <= v310)
  {
    v310 = *(a1 + v309) * 16.0;
  }

  v312 = v310;
  if (v311 < 0.0)
  {
    v312 = 0;
  }

  if (v312)
  {
    v313 = ((v312 << 8) + 261888) & 0x3FF00;
  }

  else
  {
    v313 = 0;
  }

  *(v463 + 756) = vorr_s8(v308, vdup_n_s32(v313));
  v314 = *(a1 + 5972);
  v315 = *(v307 + 4);
  v467 = *(v307 + 24);
  v466 = *(v307 + 8);
  v316 = *(a1 + 6000);
  v317 = *(a1 + 6004);
  *&v478 = *(a1 + 6008);
  DWORD2(v478) = *(a1 + 6016);
  v318 = *(v463 + 2178);
  if (a7)
  {
    v319 = 0x10000000;
  }

  else
  {
    v319 = 0;
  }

  v320 = v315 & 0xEBFFFFFF | v319;
  if (v318 & 1 | ((v315 & 0x4000000) != 0))
  {
    v321 = 0x4000000;
  }

  else
  {
    v321 = 0;
  }

  v322 = v321 | v320;
  v323 = *(a1 + 1032);
  v324 = *(a1 + 1048) + v323;
  *(a1 + 1032) = v323 + 28;
  *v323 = v314;
  *(v323 + 4) = v322;
  *(v323 + 24) = v467;
  *(v323 + 8) = v466;
  v325 = *(a1 + 72);
  *v325 = __ROR8__(v324, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v325 + 1;
  if ((v318 | ((v317 & 0x4000000u) >> 26)))
  {
    v326 = 0x4000000;
  }

  else
  {
    v326 = 0;
  }

  v327 = v326 | v317 & 0xFBFFFFFF;
  v328 = *(a1 + 1032);
  v329 = *(a1 + 1048) + v328;
  *(a1 + 1032) = v328 + 20;
  *v328 = v316;
  *(v328 + 4) = v327;
  *(v328 + 16) = DWORD2(v478);
  *(v328 + 8) = v478;
  v330 = *(a1 + 72);
  *v330 = __ROR8__(v329, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v330 + 1;
  v295 = v473;
  if ((v473 & 0x1000000000000) != 0)
  {
LABEL_381:
    v331 = 0;
    v332 = *(a1 + 5404);
    v333 = (v332 >> 14) & 0xF;
    v334 = ((v332 >> 11) & 0x78) + 10;
    v335 = 960;
    if (!*(a1 + 1864))
    {
      v335 = 992;
    }

    v336 = v457 + v335;
    v337 = *(v457 + v335 + 8);
    v338 = *(v336 + 24);
    *(v336 + 8) = &v337[v334];
    *v337 = v332;
    v339 = v337 + 1;
    v340 = v333 + 1;
    if (v333 < 3 || v337 - a1 - 5404 <= 0x1F)
    {
      goto LABEL_390;
    }

    v331 = v340 & 0x1C;
    v341 = *(a1 + 5424);
    v339 += v331;
    *(v337 + 1) = *(a1 + 5408);
    *(v337 + 5) = v341;
    if (v331 != 4)
    {
      v342 = *(a1 + 5456);
      *(v337 + 9) = *(a1 + 5440);
      *(v337 + 13) = v342;
      if (v331 != 8)
      {
        v343 = *(a1 + 5488);
        *(v337 + 17) = *(a1 + 5472);
        *(v337 + 21) = v343;
        if (v331 != 12)
        {
          v344 = *(a1 + 5520);
          *(v337 + 25) = *(a1 + 5504);
          *(v337 + 29) = v344;
        }
      }
    }

    if (v331 != v340)
    {
LABEL_390:
      v345 = ((v332 >> 14) & 0xF) - v331 + 1;
      v346 = (a1 + 8 * v331 + 5408);
      do
      {
        v347 = *v346++;
        *v339++ = v347;
        --v345;
      }

      while (v345);
    }

    v348 = v339 + 4;
    *v339 = *(a1 + 5536);
    v349 = (a1 + 5540);
    do
    {
      v350 = *v349;
      *(v348 + 2) = *(v349 + 2);
      *v348 = v350;
      v348 += 24;
      v349 = (v349 + 24);
      --v340;
    }

    while (v340);
    v351 = *(a1 + 72);
    *v351 = ((v337 + v338) >> 32) | (v334 << 8) | (((v337 + v338) >> 2) << 34);
    *(a1 + 72) = v351 + 1;
    if (*(v463 + 1648) == 1)
    {
      v352 = (v463 + 1088);
      v353 = v337 + v338 + 0x1000000004;
      v354 = v337 + 2;
      v355 = -1;
      do
      {
        if (*(v354 - 1))
        {
          v356 = *(*(*(a1 + 10536) + 64) + 16);
          v357 = *(a1 + 744);
          *(a1 + 744) = v357 + 7;
          v358 = *v352;
          v359 = v352[-16];
          v360 = vmovn_s64(*v352);
          v361 = vmovn_s64(v359);
          *v359.i8 = vshrn_n_s64(v359, 0x20uLL);
          v362 = vbsl_s8(vcgt_u32(v361, v360), v361, vmin_u32(v360, *v359.i8));
          v357->i32[0] = 1;
          v357->i32[1] = v356;
          v357[1] = v353;
          *v358.i8 = vshrn_n_s64(v358, 0x20uLL);
          v357[2] = v362;
          v357[3] = vbsl_s8(vcgt_u32(v362, *v358.i8), v362, vmin_u32(*v358.i8, *v359.i8));
          v357[4].i32[0] = v355 + 1;
          v363 = *(a1 + 7328) + 1;
          *(a1 + 7328) = v363;
          *(*(a1 + 7320) + 4) = v363;
          ++*(a1 + 1956);
        }

        ++v352;
        ++v355;
        v353 += 8;
        v354 += 2;
      }

      while (v355 < ((*v337 >> 14) & 0xF));
    }
  }

LABEL_399:
  if ((v295 & 0x2000000000000) != 0)
  {
    v369 = *(v463 + 740);
    v370 = *(a1 + 7688);
    if (v370)
    {
      v371 = *(v370 + 820);
      v372 = *(v370 + 828);
    }

    else
    {
      v371 = 8650754;
      v372 = 128;
    }

    v373 = *(a1 + 1032);
    v374 = *(a1 + 1048) + v373;
    *(a1 + 1032) = v373 + 12;
    *v373 = v371;
    *(v373 + 8) = v372;
    v375 = *(a1 + 72);
    *v375 = __ROR8__(v374, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    *(a1 + 72) = v375 + 1;
    v376 = *(a1 + 1032);
    v377 = v376 + *(a1 + 1048);
    *(a1 + 1032) = v376 + 1;
    *v376 = v369;
    v378 = *(a1 + 72);
    *v378 = __ROR8__(v377, 32) & 0xFFFFFFFC000000FFLL | 0x200;
    *(a1 + 72) = v378 + 1;
    if ((v295 & 0x4000000000000) == 0)
    {
LABEL_401:
      if ((v295 & 0x8000000000000) == 0)
      {
        return;
      }

      goto LABEL_402;
    }
  }

  else if ((v295 & 0x4000000000000) == 0)
  {
    goto LABEL_401;
  }

  v379 = *(a1 + 360);
  v380 = *(a1 + 376) + v379;
  v381 = *(a1 + 5924);
  *(a1 + 360) = v379 + 20;
  *(v379 + 16) = *(a1 + 5940);
  *v379 = v381;
  v382 = __ROR8__(v380, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v383 = *(a1 + 72);
  *v383 = v382;
  *(a1 + 72) = v383 + 1;
  if ((v295 & 0x8000000000000) != 0)
  {
LABEL_402:
    v364 = *(a1 + 5952);
    v365 = *(a1 + 5960);
    v366 = *(a1 + 1032);
    v367 = *(a1 + 1048) + v366;
    *(a1 + 1032) = v366 + 12;
    *v366 = v364;
    *(v366 + 8) = v365;
    v368 = *(a1 + 72);
    *v368 = __ROR8__(v367, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    *(a1 + 72) = v368 + 1;
  }
}