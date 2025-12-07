void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCoalescedRefits(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v61, a1, 24 * a3, 1);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v60, a1, 20 * a3, 0);
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v59, a1, 40 * a3, 0);
    v8 = (*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4));
    v10 = v61[1];
    v48 = v61[0];
    v9 = v61[0];
    v11 = v60[0];
    v12 = v60[1];
    v13 = v59[0];
    v14 = v59[1];
    v8[8] = v60[0];
    v8[9] = v9;
    v46 = v13;
    v8[7] = v13;
    v54 = *a2;
    v15 = a2[12];
    v16 = a2[13];
    *&v17 = *(a2 + 7);
    v52 = v17;
    if (!*a4)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v58, a1, 4 * v15, 1);
      v18 = *&v58[16];
      *a4 = *v58;
      *(a4 + 16) = v18;
    }

    v47 = v11;
    bzero(*(a4 + 8), 4 * v15);
    *v10 = 0;
    *(v10 + 8) = 0;
    *(&v19 + 1) = *(&v52 + 1);
    *(v10 + 12) = v52;
    *(v10 + 16) = 0x100000001;
    *v12 = v54;
    *(v12 + 4) = v16;
    *(v12 + 8) = *(a1 + 40);
    *(v12 + 12) = v52;
    *v14 = *a4;
    *(v14 + 8) = v15;
    *(v14 + 16) = *(a2 + 2);
    *(v14 + 24) = v15;
    *(v14 + 32) = v15;
    *(v14 + 36) = v16;
    v20 = (v15 + 31) & 0xFFFFFFE0;
    v49 = a3;
    v21 = a3 - 1;
    v50 = a1;
    if (a3 != 1)
    {
      v22 = a4;
      v23 = v14 + 40;
      v24 = v12 + 20;
      v25 = v10 + 24;
      v26 = a2 + 30;
      v27 = v22;
      do
      {
        v55 = *(v26 - 14);
        v28 = *(v26 - 2);
        v53 = *(v26 - 1);
        *&v19 = *v26;
        v51 = v19;
        v29 = v20;
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v58, v50, 4 * v28, 1);
        v30 = *&v58[16];
        *v27 = *v58;
        *(v27 + 16) = v30;
        bzero(*(v27 + 8), 4 * v28);
        *v25 = 0;
        *(v25 + 8) = 0;
        *(&v19 + 1) = *(&v51 + 1);
        *(v25 + 12) = v51;
        *(v25 + 16) = 0x100000001;
        *v24 = v55;
        *(v24 + 4) = v53;
        *(v24 + 8) = *(v50 + 40);
        *(v24 + 12) = v51;
        *v23 = *v27;
        *(v23 + 8) = v28;
        *(v23 + 16) = *(v26 - 5);
        *(v23 + 24) = v28;
        if (v29 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v29;
        }

        v20 = (v31 + 31) & 0xFFFFFFE0;
        *(v23 + 32) = v28;
        *(v23 + 36) = v53;
        v23 += 40;
        v24 += 20;
        v25 += 24;
        v26 += 16;
        --v21;
      }

      while (v21);
    }

    v33 = v48;
    v32 = v49;
    v35 = v46;
    v34 = v47;
    if (v20)
    {
      v36 = v20;
      Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(v50, 102, 256);
      *v58 = v49;
      *&v58[8] = vdupq_n_s64(1uLL);
      v56 = v36;
      v57 = *&v58[8];
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(v50 + 16), *(v50 + 32), Pipeline, v58, &v56);
      v38 = *(v50 + 16);
      if (*(v38 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(v50 + 16), 22, 0, 0, 0);
        *(v38 + 2306) = 0;
        if (*(v38 + 2292) == 1 && !*(v38 + 4976))
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v38, 22, (v38 + 5544), (v38 + 5552), (v38 + 5560));
        }
      }

      v39 = v61[3];
      v40 = (a2 + 2);
      do
      {
        v41 = *(v50 + 32);
        v42 = *(v41 + 24) + *(v41 + 4);
        *(v42 + 56) = v35;
        *(v42 + 64) = v34;
        v43 = *v40;
        v44 = *(v50 + 16);
        *(v44 + 2060) |= 4u;
        v45 = *(v44 + 4536);
        *(v44 + 4536) = v41;
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v44, 22, v43, v33, v39);
        if (v45)
        {
          *(v44 + 4536) = v45;
        }

        v40 += 8;
        v35 += 40;
        v34 += 20;
        v33 += 24;
        --v32;
      }

      while (v32);
    }
  }
}

id **AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(uint64_t a1)
{
  result = *(a1 + 280);
  v3 = *(a1 + 272);
  if (result != v3)
  {
    v4 = 0;
    while (1)
    {
      if (v4 && (*(a1 + 50) & 1) != 0)
      {
        v5 = *(a1 + 16);
        if (*(v5 + 2292) == 1)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
          *(v5 + 2306) = 0;
          if (*(v5 + 2292) == 1 && !*(v5 + 4976))
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v5, 22, (v5 + 5544), (v5 + 5552), (v5 + 5560));
          }
        }

        v6 = *(a1 + 52);
        *(a1 + 52) = v6 + 1;
        v7 = *(a1 + 16);
        v8 = v7 + 4984;
        v9 = *(v7 + 4980);
        v10 = *(v7 + 4984 + 4 * v9);
        *(v7 + 4984 + 4 * v9) = v10 + 1;
        if (v10 >= 0xFF)
        {
          v11 = *(v7 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, 0, v11, v9, &v175);
          v12 = *(v7 + 776);
          *v12 = -1610612736;
          *(v7 + 776) = v12 + 1;
          v13 = *(v7 + 4980);
          *(v7 + 4980) = -1;
          v14 = *(v7 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, 0, v14, 0xFFFFFFFFLL, &v175);
          v15 = *(v7 + 776);
          *v15 = 1610613504;
          *(v7 + 776) = v15 + 1;
          *(v7 + 4980) = 0;
          *(v7 + 4984) = 0;
          if (*(v7 + 5600) == 1)
          {
            LODWORD(v9) = 0;
            *(*(v7 + 5640) - 56) = v13;
          }

          else
          {
            *(v7 + 4980) = v13;
            v16 = *(v7 + 4976) != 0;
            v175 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, 0, v16, v13, &v175);
            v17 = *(v7 + 776);
            *v17 = (v13 + 1) & 7 | 0xA0000000;
            *(v7 + 776) = v17 + 1;
            LODWORD(v9) = *(v7 + 4980);
          }

          ++*(v7 + 4992);
          v10 = *(v8 + 4 * v9);
          *(v8 + 4 * v9) = v10 + 1;
        }

        v18 = *(v7 + 4992);
        v19 = *(v7 + 5008);
        if (!v19)
        {
LABEL_22:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v20 = v19;
            v21 = *(v19 + 7);
            if (v21 <= v6)
            {
              break;
            }

            v19 = *v20;
            if (!*v20)
            {
              goto LABEL_22;
            }
          }

          if (v21 >= v6)
          {
            break;
          }

          v19 = v20[1];
          if (!v19)
          {
            goto LABEL_22;
          }
        }

        *(v20 + 8) = v9;
        *(v20 + 9) = v10;
        *(v20 + 10) = v18;
        v22 = *(v7 + 4965);
        v23 = *(v7 + 4976) != 0;
        v24 = *(v7 + 4980);
        v175 = 0;
        agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v7 + 24, 4, v22, v23, v24, &v175);
        v25 = *(v7 + 776);
        *v25 = ((v10 << 21) + 0x200000) & 0x1FE00000 | 0x60000060;
        *(v7 + 776) = v25 + 1;
        v26 = *(*(a1 + 16) + 4976);
        if (v26)
        {
          v27 = 0;
          do
          {
            v31 = *(a1 + 16);
            if (*(v31 + 5600) == 1)
            {
              *(*(v31 + 5640) - 56) = v27;
            }

            else
            {
              *(v31 + 4980) = v27;
              v32 = *(v31 + 4976) != 0;
              v175 = 0;
              agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v31 + 24, 4, 0, v32, v27, &v175);
              v33 = *(v31 + 776);
              *v33 = (v27 + 1) & 7 | 0xA0000000;
              *(v31 + 776) = v33 + 1;
              v31 = *(a1 + 16);
            }

            v34 = *(v31 + 5008);
            if (!v34)
            {
LABEL_37:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v35 = v34;
                v36 = *(v34 + 7);
                if (v36 <= v6)
                {
                  break;
                }

                v34 = *v35;
                if (!*v35)
                {
                  goto LABEL_37;
                }
              }

              if (v36 >= v6)
              {
                break;
              }

              v34 = v35[1];
              if (!v34)
              {
                goto LABEL_37;
              }
            }

            v37 = *(v35 + 8);
            if (*(v35 + 10) >= *(v31 + 4992))
            {
              v38 = *(v31 + 4980);
              if (v38 == v37)
              {
                v39 = *(v31 + 4965);
                v40 = *(v31 + 4976) != 0;
                v175 = 0;
                agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v31 + 24, 4, v39, v40, v37, &v175);
                v29 = 1610612992;
              }

              else
              {
                v28 = *(v31 + 4976) != 0;
                v29 = (((v37 << 18) + 0x40000) & 0x1C0000 | ((*(v35 + 9) << 21) + 0x200000) & 0x1FE00000) + 1610613248;
                v175 = 0;
                agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v31 + 24, 4, 0, v28, v38, &v175);
              }

              v30 = *(v31 + 776);
              *v30 = v29;
              *(v31 + 776) = v30 + 1;
            }

            v27 = (v27 + 1);
          }

          while (v27 != v26);
        }
      }

      v41 = *(a1 + 272) + 328 * v4;
      if (*(v41 + 120) == *(v41 + 128))
      {
        v51 = 0;
        goto LABEL_67;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceRefits = 0;
      }

      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize = 32;
      }

      v42 = *(v41 + 120);
      v43 = *(v41 + 128);
      if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceRefits)
      {
        break;
      }

      if (v43 == v42)
      {
LABEL_61:
        v51 = 0;
        if (v43 != v42)
        {
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(*(a1 + 16));
      v51 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, *(v41 + 120), 1);
      v42 = *(v41 + 120);
      v43 = *(v41 + 128);
      if (0x8E38E38E38E38E39 * ((v43 - v42) >> 5) >= 2)
      {
        v52 = 288;
        v53 = 1;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
          v51 = 1;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, v52 + *(v41 + 120), 1);
          ++v53;
          v42 = *(v41 + 120);
          v43 = *(v41 + 128);
          v52 += 288;
        }

        while (v53 < 0x8E38E38E38E38E39 * ((v43 - v42) >> 5));
LABEL_64:
        if (v43 != v42)
        {
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      for (; v43 != v42; v43 -= 288)
      {
LABEL_65:
      }

LABEL_66:
      *(v41 + 128) = v42;
LABEL_67:
      if (*(v41 + 152) != *(v41 + 144))
      {
        if (*(a1 + 50) == 1)
        {
          v54 = *(a1 + 16);
          if (*(v54 + 5600) == 1)
          {
            *(*(v54 + 5640) - 56) = 1;
          }

          else
          {
            *(v54 + 4980) = 1;
            v55 = *(v54 + 4976) != 0;
            v175 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v54 + 24, 4, 0, v55, 1, &v175);
            v56 = *(v54 + 776);
            *v56 = -1610612734;
            *(v54 + 776) = v56 + 1;
          }
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceCopies = 1;
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize = 256;
        }

        v57 = *(v41 + 144);
        v58 = *(v41 + 152);
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceCopies == 1 && v58 != v57)
        {
          v59 = *(a1 + 16);
          if (v51)
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v59);
          }

          else
          {
            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v59);
          }

          v61 = *(v41 + 144);
          if ((*(v41 + 152) - v61) >> 3 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize)
          {
            v62 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize;
          }

          else
          {
            v62 = (*(v41 + 152) - v61) >> 3;
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, v61, *(v41 + 168), v62, v60);
          for (i = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize; ; i += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize)
          {
            v57 = *(v41 + 144);
            v58 = *(v41 + 152);
            if (i >= (v58 - v57) >> 3)
            {
              break;
            }

            AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
            v65 = *(v41 + 144);
            if (((*(v41 + 152) - v65) >> 3) - i >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize)
            {
              v66 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::copyCoalesceBatchSize;
            }

            else
            {
              v66 = ((*(v41 + 152) - v65) >> 3) - i;
            }

            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, (v65 + 8 * i), (*(v41 + 168) + 8 * i), v66, v64);
          }

          v51 = 1;
        }

        if (v58 != v57)
        {
          v67 = 0;
          v68 = 0;
          do
          {
            if ((AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceCopies & 1) == 0)
            {
              v70 = *(a1 + 16);
              if (v51)
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v70);
              }

              else
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v70);
              }

              v51 = 1;
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopies(a1, (*(v41 + 144) + v67), (*(v41 + 168) + v67), 1uLL, v69);
              v57 = *(v41 + 144);
            }

            v57 = *(v41 + 144);
            v67 += 8;
          }

          while (v68 < (*(v41 + 152) - v57) >> 3);
        }

        *(v41 + 152) = v57;
        *(v41 + 176) = *(v41 + 168);
      }

      v72 = *(v41 + 192);
      v71 = *(v41 + 200);
      if (v72 != v71)
      {
        if (*(a1 + 50) != 1)
        {
          goto LABEL_102;
        }

        v73 = *(a1 + 16);
        if (*(v73 + 5600) == 1)
        {
          *(*(v73 + 5640) - 56) = 0;
LABEL_102:
          if (v71 != v72)
          {
LABEL_103:
            v74 = *(a1 + 16);
            if (v51)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v74);
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v74);
            }

            v51 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(a1, **(v41 + 192), *(*(v41 + 192) + 8), 1);
            v72 = *(v41 + 192);
            v71 = *(v41 + 200);
            if ((v71 - v72) >= 0x11)
            {
              v75 = 0;
              v76 = 1;
              do
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
                v51 = 1;
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(a1, *(*(v41 + 192) + v75 + 16), *(*(v41 + 192) + v75 + 24), 1);
                ++v76;
                v72 = *(v41 + 192);
                v71 = *(v41 + 200);
                v75 += 16;
              }

              while (v76 < (v71 - v72) >> 4);
            }
          }
        }

        else
        {
          *(v73 + 4980) = 0;
          v77 = *(v73 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v73 + 24, 4, 0, v77, 0, &v175);
          v78 = *(v73 + 776);
          *v78 = -1610612735;
          *(v73 + 776) = v78 + 1;
          v72 = *(v41 + 192);
          v71 = *(v41 + 200);
          if (v71 != v72)
          {
            goto LABEL_103;
          }
        }

        while (v71 != v72)
        {

          v79 = *(v71 - 16);
          v71 -= 16;
        }

        *(v41 + 200) = v72;
      }

      v81 = *(v41 + 216);
      v80 = *(v41 + 224);
      if (v81 == v80)
      {
        goto LABEL_133;
      }

      if (*(a1 + 50) == 1)
      {
        v82 = *(a1 + 16);
        if (*(v82 + 5600) != 1)
        {
          *(v82 + 4980) = 0;
          v92 = *(v82 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v82 + 24, 4, 0, v92, 0, &v175);
          v93 = *(v82 + 776);
          *v93 = -1610612735;
          *(v82 + 776) = v93 + 1;
          if (*(v41 + 224) == *(v41 + 216))
          {
            goto LABEL_133;
          }

          goto LABEL_120;
        }

        *(*(v82 + 5640) - 56) = 0;
      }

      if (v80 == v81)
      {
        goto LABEL_133;
      }

LABEL_120:
      v83 = *(a1 + 16);
      if (v51)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v83);
      }

      else
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v83);
      }

      v84 = *(v41 + 216);
      if (((*(v41 + 224) - v84) >> 3) >= 0x100)
      {
        v85 = 256;
      }

      else
      {
        v85 = (*(v41 + 224) - v84) >> 3;
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(a1, v84, v85);
      if (*(v41 + 224) - *(v41 + 216) >= 0x801uLL)
      {
        v86 = -256;
        v87 = 2048;
        v88 = 256;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
          v89 = *(v41 + 216);
          if ((v86 + ((*(v41 + 224) - v89) >> 3)) >= 0x100)
          {
            v90 = 256;
          }

          else
          {
            v90 = v86 + ((*(v41 + 224) - v89) >> 3);
          }

          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(a1, (v87 + v89), v90);
          v88 += 256;
          v86 -= 256;
          v87 += 2048;
        }

        while (v88 < (*(v41 + 224) - *(v41 + 216)) >> 3);
      }

      v51 = 1;
LABEL_133:
      if (0x8F5C28F5C28F5C29 * ((*(v41 + 104) - *(v41 + 96)) >> 4) != 0x70A3D70A3D70A3D7 * ((*(v41 + 56) - *(v41 + 48)) >> 4) + 0x70A3D70A3D70A3D7 * ((*(v41 + 80) - *(v41 + 72)) >> 4))
      {
        if (*(a1 + 50) == 1)
        {
          v91 = *(a1 + 16);
          if (*(v91 + 5600) == 1)
          {
            *(*(v91 + 5640) - 56) = 0;
          }

          else
          {
            *(v91 + 4980) = 0;
            v94 = *(v91 + 4976) != 0;
            v175 = 0;
            agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v91 + 24, 4, 0, v94, 0, &v175);
            v95 = *(v91 + 776);
            *v95 = -1610612735;
            *(v91 + 776) = v95 + 1;
          }
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceSmallBuilds = 1;
        }

        {
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize = 256;
        }

        v96 = *(a1 + 16);
        if (v51)
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v96);
        }

        else
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v96);
        }

        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::coalesceSmallBuilds)
        {
          v98 = *(v41 + 48);
          v97 = *(v41 + 56);
          if (v98 != v97)
          {
            v99 = 0;
            v100 = 0x8F5C28F5C28F5C29 * ((v97 - v98) >> 4);
            v101 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v100 - v99 >= v101)
              {
                v102 = v101;
              }

              else
              {
                v102 = v100 - v99;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v98 + 400 * v99), v102, 0);
              v101 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v99 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v98 = *(v41 + 48);
              v97 = *(v41 + 56);
              v100 = 0x8F5C28F5C28F5C29 * ((v97 - v98) >> 4);
            }

            while (v99 < v100);
          }

          if (v97 != v98)
          {
            do
            {
              v103 = v97 - 400;

              v97 = v103;
            }

            while (v103 != v98);
          }

          *(v41 + 56) = v98;
          v105 = *(v41 + 72);
          v104 = *(v41 + 80);
          if (v105 != v104)
          {
            v106 = 0;
            v107 = 0x8F5C28F5C28F5C29 * ((v104 - v105) >> 4);
            v108 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v107 - v106 >= v108)
              {
                v109 = v108;
              }

              else
              {
                v109 = v107 - v106;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v105 + 400 * v106), v109, 1u);
              v108 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v106 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v105 = *(v41 + 72);
              v104 = *(v41 + 80);
              v107 = 0x8F5C28F5C28F5C29 * ((v104 - v105) >> 4);
            }

            while (v106 < v107);
          }

          if (v104 != v105)
          {
            do
            {
              v110 = v104 - 400;

              v104 = v110;
            }

            while (v110 != v105);
          }

          *(v41 + 80) = v105;
          v112 = *(v41 + 96);
          v111 = *(v41 + 104);
          if (v112 != v111)
          {
            v113 = 0;
            v114 = 0x8F5C28F5C28F5C29 * ((v111 - v112) >> 4);
            v115 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
            do
            {
              if (v114 - v113 >= v115)
              {
                v116 = v115;
              }

              else
              {
                v116 = v114 - v113;
              }

              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v112 + 400 * v113), v116, 2u);
              v115 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v113 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::smallBuildBatchSize;
              v112 = *(v41 + 96);
              v111 = *(v41 + 104);
              v114 = 0x8F5C28F5C28F5C29 * ((v111 - v112) >> 4);
            }

            while (v113 < v114);
          }

          if (v111 != v112)
          {
            do
            {
              v117 = v111 - 400;

              v111 = v117;
            }

            while (v117 != v112);
          }
        }

        else
        {
          v119 = *(v41 + 48);
          v118 = *(v41 + 56);
          if (v118 != v119)
          {
            v120 = 0;
            v121 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v120 + v119), 1uLL, 4u);
              ++v121;
              v119 = *(v41 + 48);
              v118 = *(v41 + 56);
              v120 += 400;
            }

            while (v121 < 0x8F5C28F5C28F5C29 * ((v118 - v119) >> 4));
          }

          if (v118 != v119)
          {
            do
            {
              v122 = v118 - 400;

              v118 = v122;
            }

            while (v122 != v119);
          }

          *(v41 + 56) = v119;
          v124 = *(v41 + 72);
          v123 = *(v41 + 80);
          if (v123 != v124)
          {
            v125 = 0;
            v126 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v125 + v124), 1uLL, 4u);
              ++v126;
              v124 = *(v41 + 72);
              v123 = *(v41 + 80);
              v125 += 400;
            }

            while (v126 < 0x8F5C28F5C28F5C29 * ((v123 - v124) >> 4));
          }

          if (v123 != v124)
          {
            do
            {
              v127 = v123 - 400;

              v123 = v127;
            }

            while (v127 != v124);
          }

          *(v41 + 80) = v124;
          v112 = *(v41 + 96);
          v128 = *(v41 + 104);
          if (v128 != v112)
          {
            v129 = 0;
            v130 = 0;
            do
            {
              AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildSmallBVHs(a1, (v129 + v112), 1uLL, 4u);
              ++v130;
              v112 = *(v41 + 96);
              v128 = *(v41 + 104);
              v129 += 400;
            }

            while (v130 < 0x8F5C28F5C28F5C29 * ((v128 - v112) >> 4));
          }

          if (v128 != v112)
          {
            do
            {
              v131 = v128 - 400;

              v128 = v131;
            }

            while (v131 != v112);
          }
        }

        *(v41 + 104) = v112;
        v51 = 1;
      }

      v133 = *v41;
      v132 = *(v41 + 8);
      if (*v41 != v132)
      {
        if (*(a1 + 50) != 1)
        {
          goto LABEL_191;
        }

        v134 = *(a1 + 16);
        if (*(v134 + 5600) == 1)
        {
          *(*(v134 + 5640) - 56) = 1;
LABEL_191:
          if (v132 != v133)
          {
LABEL_192:
            v135 = *(a1 + 16);
            if (v51)
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v135);
            }

            else
            {
              AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v135);
            }

            v51 = 1;
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(a1, *v41, 1);
            v133 = *v41;
            v132 = *(v41 + 8);
            if (0xAAAAAAAAAAAAAAABLL * ((v132 - *v41) >> 8) >= 2)
            {
              v136 = 768;
              v137 = 1;
              do
              {
                AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
                v51 = 1;
                AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeTopDownBuilds(a1, v136 + *v41, 1);
                ++v137;
                v133 = *v41;
                v132 = *(v41 + 8);
                v136 += 768;
              }

              while (v137 < 0xAAAAAAAAAAAAAAABLL * ((v132 - *v41) >> 8));
            }
          }
        }

        else
        {
          *(v134 + 4980) = 1;
          v171 = *(v134 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v134 + 24, 4, 0, v171, 1, &v175);
          v172 = *(v134 + 776);
          *v172 = -1610612734;
          *(v134 + 776) = v172 + 1;
          v133 = *v41;
          v132 = *(v41 + 8);
          if (v132 != *v41)
          {
            goto LABEL_192;
          }
        }

        if (v132 != v133)
        {
          do
          {
            v138 = v132 - 768;

            v132 = v138;
          }

          while (v138 != v133);
        }

        *(v41 + 8) = v133;
      }

      v140 = *(v41 + 24);
      v139 = *(v41 + 32);
      if (v140 == v139)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_218;
        }

        goto LABEL_217;
      }

      if (*(a1 + 50) == 1)
      {
        v141 = *(a1 + 16);
        if (*(v141 + 5600) != 1)
        {
          *(v141 + 4980) = 1;
          v173 = *(v141 + 4976) != 0;
          v175 = 0;
          agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v141 + 24, 4, 0, v173, 1, &v175);
          v174 = *(v141 + 776);
          *v174 = -1610612734;
          *(v141 + 776) = v174 + 1;
          v140 = *(v41 + 24);
          v139 = *(v41 + 32);
          if (v139 == v140)
          {
            goto LABEL_214;
          }

          goto LABEL_206;
        }

        *(*(v141 + 5640) - 56) = 1;
      }

      if (v139 == v140)
      {
        goto LABEL_214;
      }

LABEL_206:
      v142 = *(a1 + 16);
      if (v51)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(v142);
      }

      else
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(v142);
      }

      v51 = 1;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(a1, *(v41 + 24), 1);
      v140 = *(v41 + 24);
      v139 = *(v41 + 32);
      if (0x8F5C28F5C28F5C29 * ((v139 - v140) >> 4) >= 2)
      {
        v143 = 400;
        v144 = 1;
        do
        {
          AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
          v51 = 1;
          AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBuildMediumBVHs(a1, v143 + *(v41 + 24), 1);
          ++v144;
          v140 = *(v41 + 24);
          v139 = *(v41 + 32);
          v143 += 400;
        }

        while (v144 < 0x8F5C28F5C28F5C29 * ((v139 - v140) >> 4));
      }

LABEL_214:
      if (v139 != v140)
      {
        do
        {
          v145 = v139 - 400;

          v139 = v145;
        }

        while (v145 != v140);
      }

      *(v41 + 32) = v140;
      if ((v51 & 1) == 0)
      {
        goto LABEL_218;
      }

LABEL_217:
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::endVirtualSubstream(*(a1 + 16));
LABEL_218:
      v147 = *v41;
      v146 = *(v41 + 8);
      if (v146 != *v41)
      {
        do
        {
          v148 = v146 - 768;

          v146 = v148;
        }

        while (v148 != v147);
      }

      *(v41 + 8) = v147;
      v150 = *(v41 + 24);
      v149 = *(v41 + 32);
      if (v149 != v150)
      {
        do
        {
          v151 = v149 - 400;

          v149 = v151;
        }

        while (v151 != v150);
      }

      *(v41 + 32) = v150;
      v153 = *(v41 + 48);
      v152 = *(v41 + 56);
      if (v152 != v153)
      {
        do
        {
          v154 = v152 - 400;

          v152 = v154;
        }

        while (v154 != v153);
      }

      *(v41 + 56) = v153;
      v156 = *(v41 + 72);
      v155 = *(v41 + 80);
      if (v155 != v156)
      {
        do
        {
          v157 = v155 - 400;

          v155 = v157;
        }

        while (v157 != v156);
      }

      *(v41 + 80) = v156;
      v159 = *(v41 + 96);
      v158 = *(v41 + 104);
      if (v158 != v159)
      {
        do
        {
          v160 = v158 - 400;

          v158 = v160;
        }

        while (v160 != v159);
      }

      *(v41 + 104) = v159;
      v161 = *(v41 + 120);
      for (j = *(v41 + 128); j != v161; j -= 288)
      {
      }

      *(v41 + 128) = v161;
      *(v41 + 152) = *(v41 + 144);
      *(v41 + 176) = *(v41 + 168);
      *(v41 + 224) = *(v41 + 216);
      if (*(v41 + 264))
      {
        v163 = *(v41 + 256);
        if (v163)
        {
          do
          {
            v167 = *v163;
            v168 = v163[3];
            if (v168)
            {
              v163[4] = v168;
              operator delete(v168);
            }

            operator delete(v163);
            v163 = v167;
          }

          while (v167);
        }

        *(v41 + 256) = 0;
        v164 = *(v41 + 248);
        if (v164)
        {
          bzero(*(v41 + 240), 8 * v164);
        }

        *(v41 + 264) = 0;
      }

      if (*(v41 + 304))
      {
        v165 = *(v41 + 296);
        if (v165)
        {
          do
          {
            v169 = *v165;
            v170 = v165[3];
            if (v170)
            {
              v165[4] = v170;
              operator delete(v170);
            }

            operator delete(v165);
            v165 = v169;
          }

          while (v169);
        }

        *(v41 + 296) = 0;
        v166 = *(v41 + 288);
        if (v166)
        {
          bzero(*(v41 + 280), 8 * v166);
        }

        *(v41 + 304) = 0;
      }

      *(v41 + 320) = 0;
      ++v4;
      v3 = *(a1 + 272);
      result = *(a1 + 280);
      if (v4 >= 0x8F9C18F9C18F9C19 * ((result - v3) >> 3))
      {
        goto LABEL_264;
      }
    }

    if (v43 == v42)
    {
      goto LABEL_61;
    }

    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::beginVirtualSubstream(*(a1 + 16));
    v44 = *(v41 + 120);
    if (0x8E38E38E38E38E39 * ((*(v41 + 128) - v44) >> 5) >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize)
    {
      v45 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
    }

    else
    {
      v45 = 0x8E38E38E38E38E39 * ((*(v41 + 128) - v44) >> 5);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, v44, v45);
    v46 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
    v42 = *(v41 + 120);
    v43 = *(v41 + 128);
    if (0x8E38E38E38E38E39 * ((v43 - v42) >> 5) <= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize)
    {
      v51 = 1;
    }

    else
    {
      do
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::nextVirtualSubstream(*(a1 + 16));
        v47 = *(v41 + 120);
        v48 = v47 + 288 * v46;
        v49 = 0x8E38E38E38E38E39 * ((*(v41 + 128) - v47) >> 5) - v46;
        if (v49 >= AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize)
        {
          v50 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
        }

        else
        {
          v50 = v49;
        }

        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeRefits(a1, v48, v50);
        v46 += AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeBatch(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::DeferredBatch &)::refitBatchSize;
        v42 = *(v41 + 120);
        v43 = *(v41 + 128);
      }

      while (v46 < 0x8E38E38E38E38E39 * ((v43 - v42) >> 5));
      v51 = 1;
    }

    goto LABEL_64;
  }

LABEL_264:
  while (result != v3)
  {
    result = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(result - 41);
  }

  *(a1 + 280) = v3;
  return result;
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(uint64_t a1, void *a2, void *a3, char a4)
{
  if (*(a1 + 49) == 1 && (a4 & 1) == 0)
  {
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getBatchForCommand(a1, 4, a2, a3, 0, -1, 0, 0, 0, 0);
    v8 = a2;
    v9 = a3;
    v11 = BatchForCommand[25];
    v10 = BatchForCommand[26];
    if (v11 < v10)
    {
      *v11 = v8;
      *(v11 + 1) = v9;
      v12 = (v11 + 16);
LABEL_44:
      BatchForCommand[25] = v12;

      return;
    }

    v39 = BatchForCommand[24];
    v40 = (v11 - v39) >> 4;
    v41 = v40 + 1;
    if ((v40 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v42 = v10 - v39;
    if (v42 >> 3 > v41)
    {
      v41 = v42 >> 3;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF0)
    {
      v43 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (!(v43 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v44 = (v11 - v39) >> 4;
    *&v45 = v8;
    *(&v45 + 1) = v9;
    v46 = 16 * v40 - 16 * v44;
    *(16 * v40) = v45;
    v12 = 16 * v40 + 16;
    if (v39 == v11)
    {
LABEL_42:
      BatchForCommand[24] = v46;
      BatchForCommand[25] = v12;
      BatchForCommand[26] = 0;
      if (v39)
      {
        operator delete(v39);
      }

      goto LABEL_44;
    }

    v47 = v11 - v39 - 16;
    v48 = v39;
    v49 = (16 * v40 - 16 * v44);
    if (v47 >= 0x90)
    {
      if (v39 >= (v47 & 0xFFFFFFFFFFFFFFF0) + 16 || (v48 = v39, v49 = (16 * v40 - 16 * v44), v46 >= v39 + (v47 & 0xFFFFFFFFFFFFFFF0) + 16))
      {
        v50 = (v47 >> 4) + 1;
        v51 = 2 * (v50 & 0x1FFFFFFFFFFFFFFCLL);
        v48 = &v39[v51];
        v52 = (-16 * v44 + 16 * v40 + 32);
        v53 = (v39 + 4);
        v54 = v50 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v56 = *(v53 - 2);
          v55 = *(v53 - 1);
          v58 = *v53;
          v57 = v53[1];
          *(v53 - 2) = 0uLL;
          *(v53 - 1) = 0uLL;
          *v53 = 0uLL;
          v53[1] = 0uLL;
          v53 += 4;
          *(v52 - 2) = v56;
          *(v52 - 1) = v55;
          *v52 = v58;
          v52[1] = v57;
          v52 += 4;
          v54 -= 4;
        }

        while (v54);
        if (v50 == (v50 & 0x1FFFFFFFFFFFFFFCLL))
        {
          do
          {
LABEL_40:

            v61 = *v39;
            v39 += 2;
          }

          while (v39 != v11);
          v39 = BatchForCommand[24];
          goto LABEL_42;
        }

        v49 = (v46 + v51 * 8);
      }
    }

    do
    {
      v59 = *v48;
      *v48 = 0;
      *v49 = v59;
      v60 = v48[1];
      v48[1] = 0;
      v49[1] = v60;
      v48 += 2;
      v49 += 2;
    }

    while (v48 != v11);
    goto LABEL_40;
  }

  v13 = [a3 accelerationStructureUniqueIdentifier];
  if (**MEMORY[0x29EDC56B0])
  {
    [objc_msgSend(a2 "buffer")];
    [objc_msgSend(a3 "buffer")];
    IOGPUDeviceTraceEvent();
  }

  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify = 0;
  }

  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v62, a1, 104, 1);
  v15 = v62[0];
  v14 = v62[1];
  v16 = v63;
  *(v62[0] + 12) = 0;
  v15[4] = 0u;
  v15[5] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *v15 = 0u;
  v15[1] = 0u;
  v17 = [objc_msgSend(a2 "buffer")];
  v18 = [a2 bufferOffset] + v17;
  v19 = [a2 size];
  *v15 = v18;
  *(v15 + 1) = v19;
  v20 = [objc_msgSend(a3 "buffer")];
  v21 = [a3 bufferOffset] + v20;
  v22 = [a3 size];
  *(v15 + 2) = v21;
  *(v15 + 3) = v22;
  *(v15 + 4) = v13;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::skipCompaction = 0;
  }

  *(v15 + 96) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::skipCompaction ^ 1;
  *(v15 + 97) = 0;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v62, a1, 0x480188uLL, 1);
    v23 = v62[1];
    bzero(v62[1], 0x480188uLL);
    v23[1] = -1;
    [**(a1 + 16) addCompletedHandler:&__block_literal_global_373];
  }

  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 96) = v14;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 58, 0);
  v25 = 0;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    v25 = 1;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v66, a1, 0x480188uLL, 1);
    v26 = v66[0];
    v62[0] = 0;
    v62[1] = 0;
    v63 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v62, a1, 16, 0);
    v27 = v62[0];
    v28 = v62[1];
    *v62[0] = v26;
    v27[1] = 0;
    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v28;
    v29 = v66[1];
    bzero(v66[1], 0x480188uLL);
    v29[1] = -1;
    v62[0] = MEMORY[0x29EDCA5F8];
    v62[1] = 3221225472;
    v63 = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20encodeCopyAndCompactEP44AGXG18PFamilyRayTracingAccelerationStructureS8_bENKUlPKcE_clESA__block_invoke;
    v64 = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v65 = v29;
    [**(a1 + 16) addCompletedHandler:v62];
  }

  *v62 = vdupq_n_s64(1uLL);
  v63 = 1;
  *v66 = xmmword_29D2F23C0;
  v67 = 1;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), Pipeline, v62, v66);
  v30 = *(a1 + 16);
  if (*(v30 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
    *(v30 + 2306) = 0;
    if (*(v30 + 2292) == 1 && !*(v30 + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v30, 22, (v30 + 5544), (v30 + 5552), (v30 + 5560));
    }
  }

  v31 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 57, 0);
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeCopyAndCompact(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyRayTracingAccelerationStructure *,BOOL)::verify == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v66, a1, 0x480188uLL, 1);
    v32 = v66[0];
    v62[0] = 0;
    v62[1] = 0;
    v63 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(v62, a1, 16, 0);
    v33 = v62[0];
    v34 = v62[1];
    *v62[0] = v32;
    v33[1] = v25;
    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v34;
    v35 = v66[1];
    bzero(v66[1], 0x480188uLL);
    v35[1] = -1;
    v62[0] = MEMORY[0x29EDCA5F8];
    v62[1] = 3221225472;
    v63 = ___ZZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE20encodeCopyAndCompactEP44AGXG18PFamilyRayTracingAccelerationStructureS8_bENKUlPKcE_clESA__block_invoke;
    v64 = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v65 = v35;
    [**(a1 + 16) addCompletedHandler:v62];
  }

  v36 = *(a1 + 16);
  v37 = *(a1 + 32);
  *(v36 + 2060) |= 4u;
  v38 = *(v36 + 4536);
  *(v36 + 4536) = v37;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::executeKernelThreadsIndirectWithPipelineInternal(v36, 22, v31, v14 + 72, v16);
  if (v38)
  {
    *(v36 + 4536) = v38;
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a3)
  {
    {
      {
      }

      {
      }

      if (shouldDumpOrVerifyBVHs(void)::once != -1)
      {
        dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
      }

      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(AGX::Span<unsigned long long const>)::verify = 0;
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeWriteCompactedSizes(AGX::Span<unsigned long long const>)::verify == 1)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v16, a1, 0x480188uLL, 1);
      v6 = __dst;
      bzero(__dst, 0x480188uLL);
      v6[1] = -1;
      v7 = **(a1 + 16);
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextEE25encodeWriteCompactedSizesENS_4SpanIKyEE_block_invoke;
      v15[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
      v15[4] = v6;
      [v7 addCompletedHandler:v15];
      v8 = v16;
      v18 = 0;
      v19 = 0uLL;
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v18, a1, 16, 0);
      v9 = v18;
      v10 = v19.i64[0];
      *v18 = v8;
      v9[1] = 0;
      *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 32) = v10;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v16, a1, 8 * a3, 0);
    memcpy(__dst, a2, 8 * a3);
    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4)) = v16;
    Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 59, 0);
    v12 = 64;
    if (*(a1 + 44) != 1)
    {
      v12 = 1;
    }

    v18 = a3;
    v19 = vdupq_n_s64(1uLL);
    v13 = v12;
    v14 = v19;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelInternal(*(a1 + 16), *(a1 + 32), Pipeline, &v18, &v13);
  }
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(a1);
  }

  v9 = [a2 buffer];
  v10 = [a2 bufferOffset];
  v11 = [v9 gpuAddress];
  v37 = [v9 length];
  v12 = v11 + v10;
  v42 = 0uLL;
  *&v43 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v42, a1, 40, 1);
  v13 = v42;
  v14 = v42;
  *(v42 + 16) = 0;
  v15 = (v14 + 16);
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *v13 = v12;
  *(v13 + 8) = a4;
  {
    if (v35)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
    }
  }

  v17 = *(v16 + 292);
  if (v17 <= 0)
  {
    v17 = 3;
  }

  *(v13 + 28) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhChipCodes[v17];
  {
    if (v36)
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getSelectedRiaBvhGen();
    }
  }

  *(v13 + 32) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[*(v18 + 256)] & 0x1FFFFFFF;
  *(v13 + 36) = 0;
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 168) = *(&v13 + 1);
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 175, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), Pipeline, qword_29D2F5330, qword_29D2F5330);
  v20 = *(a1 + 16);
  if (*(v20 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
    *(v20 + 2306) = 0;
    if (*(v20 + 2292) == 1 && !*(v20 + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v20, 22, (v20 + 5544), (v20 + 5552), (v20 + 5560));
    }
  }

  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BOOL)::numBytesPerThread = 16;
  }

  v21 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BOOL)::numBytesPerThread;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 4, 1);
  v22 = v40;
  *&v42 = v40;
  *(&v42 + 1) = v39;
  *&v43 = 4;
  *(&v43 + 1) = v41;
  *v39 = v21;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v39, a1, 40, 0);
  v23 = v39;
  v24 = v40;
  *v39 = v12;
  *(v23 + 1) = v37;
  *(v23 + 2) = a4 + 24;
  *(v23 + 3) = a5;
  *(v23 + 4) = 0;
  v25 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
  *(v25 + 96) = v24;
  *(v25 + 128) = v22;
  v26 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 124, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v26, v12 + 72, &v42, AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeSerialize_impl(AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,NSArray<objc_object  {objcproto24MTLAccelerationStructure}*> *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::BuilderBuffer const&,BOOL)::numBytesPerThread, 0, 1);
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 168) = *(&v13 + 1);
  v27 = *(a1 + 16);
  if (*(v27 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::encodeBarrier(*(a1 + 16), 22, 0, 0, 0);
    *(v27 + 2306) = 0;
    if (*(v27 + 2292) == 1 && !*(v27 + 4976))
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::insertIndirectTGOptKernel(v27, 22, (v27 + 5544), (v27 + 5552), (v27 + 5560));
    }
  }

  v28 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 178, 0);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::executeKernelWithThreadsInternal(*(a1 + 16), *(a1 + 32), v28, qword_29D2F5330, qword_29D2F5330);
  if (atomic_load_explicit((*(*a1 + 848) + 10188), memory_order_acquire) - 1 > 0xFFFFFFFD)
  {
    v31 = 4;
  }

  else
  {
    explicit = atomic_load_explicit((*(*a1 + 848) + 10188), memory_order_acquire);
    if (explicit)
    {
      v30 = explicit + 1;
    }

    else
    {
      v30 = 0;
    }

    v31 = 4 * v30;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v42, a1, v31, 0);
  v32 = *(&v42 + 1);
  if ([a3 count])
  {
    v33 = 0;
    do
    {
      *(v32 + 4 * *([a3 objectAtIndexedSubscript:v33] + 360)) = v33;
      ++v33;
    }

    while (v33 < [a3 count]);
  }

  *v15 = v42;
  v34 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 123, 0);
  v42 = 0u;
  v43 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v34, *(&v13 + 1) + 24, &v42, 1, 0, 1);
}

void AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::encodeDeserialize(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(a1);
  }

  v11 = [a2 buffer];
  v12 = [a2 bufferOffset];
  v13 = [v11 gpuAddress];
  [v11 length];
  v14 = v13 + v12;
  if (*(a1 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::flush(a1);
  }

  v15 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
  *(v15 + 96) = a4 + 24;
  *(v15 + 40) = v14;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v32, a1, 8, 0);
  v16 = v33;
  *v32 = a6;
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 120) = v16;
  v35 = 0uLL;
  *&v36 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v35, a1, 4, 1);
  v17 = *(&v35 + 1);
  *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 152) = *(&v35 + 1);
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 122, 0);
  v35 = 0u;
  v36 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, Pipeline, a4 + 16, &v35, 1, 0, 1);
  if (a3)
  {
    v19 = [a3 count];
    if ([a3 count] < 2)
    {
      v20 = 4;
    }

    else
    {
      v20 = 4 * [a3 count];
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v35, a1, v20, 0);
    if (v19)
    {
      v21 = 0;
      v22 = *(&v35 + 1);
      do
      {
        *(v22 + 4 * v21) = *([a3 objectAtIndexedSubscript:v21] + 360);
        ++v21;
      }

      while (v19 != v21);
    }

    *(*(*(a1 + 32) + 24) + *(*(a1 + 32) + 4) + 136) = v35;
    v23 = [a3 count];
    v24 = v23;
    if (v23 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v23;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v35, a1, 8 * v25, 0);
    if (v24)
    {
      v26 = 0;
      v27 = *(&v35 + 1);
      do
      {
        v28 = [a3 objectAtIndexedSubscript:v26];
        v29 = [objc_msgSend(v28 "buffer")];
        *(v27 + 8 * v26++) = [v28 bufferOffset] + v29;
      }

      while (v24 != v26);
    }

    v30 = *(*(a1 + 32) + 24) + *(*(a1 + 32) + 4);
    *(v30 + 144) = v35;
    *(v30 + 40) = v14;
    v31 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::getOrCreatePipeline(a1, 28, 0);
    v35 = 0u;
    v36 = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::dispatchWithIndirectThreadCountExtended(a1, v31, v17, &v35, 1, 0, 1);
  }
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateVirtualMapping(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3 || (a2 & 1) != 0)
  {
    if (!a2)
    {
      return;
    }

LABEL_9:
    if (a3 && (v5 = *(result + 30352)) != 0 && (v6 = *(v5 + 3688)) != 0 && *(v6 + 64) == 1)
    {
      v7 = (v6 + 136);
    }

    else
    {
      v7 = (result + 79376);
    }

    v8 = *v7;
    v9 = HIWORD(v8);
    v10 = HIBYTE(v8);
    v11 = *(*(result + 2392) + 440);
    if ((v11 >> v8))
    {
      v12 = v8;
    }

    else
    {
      v12 = -1;
    }

    v13 = vdupq_n_s64(v8);
    LOBYTE(v39) = v12;
    v14 = vuzp1q_s32(vshlq_u64(v13, xmmword_29D2F24A0), vshlq_u64(v13, xmmword_29D2F2490));
    v15 = vmovn_s32(v14);
    v16.i64[0] = 0xFF000000FFLL;
    v16.i64[1] = 0xFF000000FFLL;
    v17 = vandq_s8(v14, v16);
    v16.i64[0] = 0x100000001;
    v16.i64[1] = 0x100000001;
    *v17.i8 = vorr_s8(v15, vmovn_s32(vceqzq_s32(vandq_s8(vdupq_n_s32(v11), vshlq_u32(v16, v17)))));
    *(&v39 + 1) = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
    if ((v11 >> SBYTE5(v8)))
    {
      v18 = BYTE5(v8);
    }

    else
    {
      v18 = -1;
    }

    BYTE5(v39) = v18;
    if ((v11 >> v9))
    {
      v19 = v9;
    }

    else
    {
      v19 = -1;
    }

    BYTE6(v39) = v19;
    if ((v11 >> v10))
    {
      v20 = v10;
    }

    else
    {
      v20 = -1;
    }

    HIBYTE(v39) = v20;
    if (*(result + 79368) != v39)
    {
      *(result + 79393) = 257;
      *(result + 79368) = v39;
LABEL_29:
      v21 = *(result + 30352);
      if (v21 && a3)
      {
        v22 = *(v21 + 3140);
        if (*(v21 + 3136) == 1)
        {
          v23 = vshr_n_u32(v22, 8uLL);
          v24 = vshr_n_u32(v22, 0xCuLL);
          v25 = vshr_n_u32(v22, 0x10uLL);
          v26 = vshr_n_u32(v22, 0x14uLL);
          v27 = vshr_n_u32(v22, 0x18uLL);
          v28 = vshr_n_u32(v22, 0x1CuLL);
          v29.i32[0] = *(result + 79368);
          v29.i32[1] = *(result + 79369);
          v30.i32[1] = HIDWORD(*(v21 + 3140));
          v30.i32[0] = v22.i32[0] >> 4;
          v31 = vshl_n_s32(v29, 2uLL);
          v22.i32[1] = v22.i32[1] >> 4;
          v22 = vorr_s8(vorr_s8(vshl_u32(v28, vdup_n_s32(4 * *(result + 79375))), vorr_s8(vshl_u32(vand_s8(v26, 0xF0000000FLL), vdup_n_s32(4 * *(result + 79373))), vshl_u32(vand_s8(v22, 0xF0000000FLL), v31))), vorr_s8(vshl_u32((*&v27 & 0xFFFFFF0FFFFFFF0FLL), vdup_n_s32(4 * *(result + 79374))), vorr_s8(vshl_u32(vand_s8(v25, 0xF0000000FLL), vdup_n_s32(4 * *(result + 79372))), vorr_s8(vshl_u32(vand_s8(v24, 0xF0000000FLL), vdup_n_s32(4 * *(result + 79371))), vorr_s8(vshl_u32(vand_s8(v23, 0xF0000000FLL), vdup_n_s32(4 * *(result + 79370))), vshl_u32(vand_s8(v30, 0xF0000000FLL), vrev64_s32(v31)))))));
        }

        v32 = *(result + 79384) != v22.i32[0] || *(result + 79388) != v22.i32[1];
        *(result + 79394) = v32;
        *(result + 79384) = v22;
        if (*v21)
        {
          v36 = result;
          v37 = a2;
          v38 = a3;
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderISPState(result, *v21);
          result = v36;
          LOBYTE(a2) = v37;
          LODWORD(a3) = v38;
        }
      }

      goto LABEL_45;
    }

    if (*(result + 79392))
    {
      if (!a3 || (v33 = *(result + 30352)) == 0)
      {
        *(result + 79393) = 257;
        goto LABEL_29;
      }

      v34 = *(result + 79394) | *(v33 + 3136);
      *(result + 79394) = v34;
      v35 = *v33;
      if (v35)
      {
        *(result + 79393) |= *(v35 + 4065);
        if (v34)
        {
          goto LABEL_29;
        }
      }

      else if (v34)
      {
        goto LABEL_29;
      }
    }

    else if (*(result + 79394))
    {
      goto LABEL_29;
    }

LABEL_45:
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindStatelessPsoMetadataArgumentBuffer(result, a2, a3);
    return;
  }

  v3 = *(result + 30352);
  if (v3)
  {
    v4 = *v3;
    if (v4)
    {
      if (*(v4 + 4065) & 1) != 0 || (*(v4 + 4066))
      {
        goto LABEL_9;
      }
    }
  }
}

int8x8_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::updateFragmentShaderISPState(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 78480;
  v5 = (a1 + 28664);
  v6 = *(a1 + 30352);
  if (*(v6 + 3136) == 1)
  {
    if ((*(a1 + 79394) & 1) == 0 && *(a1 + 79392) != 1)
    {
      goto LABEL_37;
    }

    v34 = *(v6 + 804);
    v35 = *(v6 + 800);
    v36 = *(v6 + 808);
    v7 = *(a1 + 2392);
    v8 = *(a1 + 79384);
    v9 = *(a1 + 79388);
    v10 = *(a2 + 3912);
    v32 = *(a2 + 4081);
    v33 = *(v6 + 816);
    v11 = *(a2 + 4084);
    v38 = 0;
    v37 = 0;
    v39[0] = _AGCDrawBufferState::isRtFormatUnknown;
    v39[1] = 0;
    v39[2] = v7 + 408;
    v12 = _AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(v39);
    v13 = 0;
    if ((v12 & 1) == 0)
    {
      if (v10)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      agxsGetShaderPassInfo((17 - v14), (v7 + 408), v8, v9, &v37, &v38);
      v13 = (v37 << v14) & 0x1FFFF;
    }

    if ((v11 - 1) >= 2)
    {
      if (v11)
      {
        v15 = 0;
      }

      else
      {
        v15 = v38;
      }
    }

    else if ((v38 | v32))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v23 = (*(v7 + 440) & 0x300) != 0 && v15 == 3 || v15 == 2;
    if (*(a2 + 4088))
    {
      v24 = 0x400000;
    }

    else
    {
      v24 = 0;
    }

    if (*(a2 + 3919))
    {
      v25 = 0x2000000;
    }

    else
    {
      v25 = 0;
    }

    if ((v23 | *(a2 + 4090)))
    {
      v26 = 0x4000000;
    }

    else
    {
      v26 = 0;
    }

    v27 = v34 & 0x199FFFFF | v24 | v25 | v26 | (v15 << 29);
    v28 = v5[2] & 0xF7200000;
    v17 = v5[3] & 0xF7200000;
    *v5 = v35;
    v5[1] = v27;
    *(v5 + 1) = v36;
    v5[4] = v33 & 0xFFFE0000 | v13;
    v19 = v36 & 0x8DFFFFF | v28;
    v20 = v5[3] & 0x8DFFFFF;
  }

  else
  {
    v16 = *(a1 + 28672) & 0xF7200000;
    v17 = *(a1 + 28676) & 0xF7200000;
    v18 = *(v6 + 800);
    *(a1 + 28680) = *(v6 + 816);
    *(a1 + 28664) = v18;
    v19 = *(a1 + 28672) & 0x8DFFFFF | v16;
    v20 = *(a1 + 28676) & 0x8DFFFFF;
  }

  v5[2] = v19;
  v5[3] = v20 | v17;
LABEL_37:
  *(v4 + 914) = 0;
  v29 = *(a2 + 3925);
  if ((v29 - 1) < 2 && (*(*(*(a1 + 1872) + 848) + 16456) & 0x8000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a2 + 3925);
  }

  if (*(a1 + 28672) >> 28)
  {
    LOBYTE(v29) = v30;
  }

  result = vorr_s8(vdup_n_s32((v29 & 3) << 22), (*(a1 + 28672) & 0xFF3FFFFFFF3FFFFFLL));
  *(a1 + 28672) = result;
  *v4 |= 0x100000000000uLL;
  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindStatelessPsoMetadataArgumentBuffer(uint64_t a1, char a2, int a3)
{
  v3 = a2;
  if (!a3 || (a2 & 1) != 0)
  {
LABEL_6:
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 30352);
  if (v4)
  {
    v5 = *v4;
    if (v5)
    {
      v3 = *(v5 + 4065);
      a2 = *(v5 + 4066);
      goto LABEL_6;
    }
  }

  a2 = 0;
  v3 = 0;
LABEL_9:
  if ((a2 & 1) == 0)
  {
    return;
  }

LABEL_10:
  if (v3)
  {
    v6 = *(a1 + 2392) + 408;
    v7 = *(a1 + 79368);
    if (v7 > 7)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(v6 + 4 * v7);
      if ((~v8 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v9 = (v8 >> 12);
    }

    v17 = *(a1 + 79369);
    if (v17 > 7)
    {
      v16 = 0;
    }

    else
    {
      v18 = *(v6 + 4 * v17);
      if ((~v18 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v16 = (v18 >> 12);
    }

    v19 = *(a1 + 79370);
    if (v19 > 7)
    {
      v10 = 0;
    }

    else
    {
      v20 = *(v6 + 4 * v19);
      if ((~v20 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v10 = (v20 >> 12);
    }

    v21 = *(a1 + 79371);
    if (v21 > 7)
    {
      v11 = 0;
    }

    else
    {
      v22 = *(v6 + 4 * v21);
      if ((~v22 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v11 = (v22 >> 12);
    }

    v23 = *(a1 + 79372);
    if (v23 > 7)
    {
      v12 = 0;
    }

    else
    {
      v24 = *(v6 + 4 * v23);
      if ((~v24 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v12 = (v24 >> 12);
    }

    v25 = *(a1 + 79373);
    if (v25 > 7)
    {
      v13 = 0;
    }

    else
    {
      v26 = *(v6 + 4 * v25);
      if ((~v26 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v13 = (v26 >> 12);
    }

    v27 = *(a1 + 79374);
    if (v27 > 7)
    {
      v14 = 0;
    }

    else
    {
      v28 = *(v6 + 4 * v27);
      if ((~v28 & 0xFF000) == 0)
      {
        goto LABEL_66;
      }

      v14 = (v28 >> 12);
    }

    v29 = *(a1 + 79375);
    if (v29 > 7)
    {
      v15 = 0;
      *(a1 + 79392) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    }

    v30 = *(v6 + 4 * v29);
    if ((~v30 & 0xFF000) != 0)
    {
      v15 = (v30 >> 12);
      *(a1 + 79392) = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_46:
      v37 = *(a1 + 73040);
      v33 = *(v37 + 876);
      v34 = *(v37 + 880);
      v35 = *(v37 + 884);
      v36 = *(v37 + 888);
      v31 = *(v37 + 24);
      v32 = *(v37 + 32);
      goto LABEL_47;
    }

LABEL_66:
    std::__throw_bad_optional_access[abi:nn200100]();
    [(AGXG18PFamilyRenderContext *)v38 setToolsDispatchBufferSPI:v39 atIndex:v40 stages:v41, v42];
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = 0;
  *(a1 + 79392) = 0;
  if (a2)
  {
    goto LABEL_46;
  }

LABEL_44:
  v31 = 0;
  v32 = 0uLL;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
LABEL_47:
  if (*(a1 + 78089) != 1 || v9 != *(a1 + 79576) || v16 != *(a1 + 79578) || v10 != *(a1 + 79580) || v11 != *(a1 + 79582) || v12 != *(a1 + 79584) || v13 != *(a1 + 79586) || v14 != *(a1 + 79588) || v15 != *(a1 + 79590) || *(a1 + 79608) || v33 != *(a1 + 79592) || v34 != *(a1 + 79596) || v35 != *(a1 + 79600) || v36 != *(a1 + 79604) || v31 != *(a1 + 79632) || v32 != *(a1 + 79640) || *(&v32 + 4) != *(a1 + 79644))
  {
    *(a1 + 78088) = 1;
    *(a1 + 79576) = v9;
    *(a1 + 79578) = v16;
    *(a1 + 79580) = v10;
    *(a1 + 79582) = v11;
    *(a1 + 79584) = v12;
    *(a1 + 79586) = v13;
    *(a1 + 79588) = v14;
    *(a1 + 79590) = v15;
    *(a1 + 79592) = v33;
    *(a1 + 79596) = v34;
    *(a1 + 79600) = v35;
    *(a1 + 79604) = v36;
    *(a1 + 79616) = 0;
    *(a1 + 79624) = 0;
    *(a1 + 79608) = 0;
    *(a1 + 79632) = v31;
    *(a1 + 79640) = v32;
  }
}

void std::function<AGX::HAL300::HWGeometryPipelineContextA * ()(void)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    v2();
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    [(AGXG18PFamilyRenderContext *)v3 setMeshSamplerStates:v4 lodMinClamps:v5 lodMaxClamps:v6 withRange:v7, v8];
  }
}

void sub_29CEACCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setMeshProgramSamplerWithLODOverride(uint64_t a1, uint64_t a2, unsigned int a3, float a4, float a5)
{
  if (a2)
  {
    v7 = *(*(a1 + 8) + 1872);
    v8 = *(v7 + 848);
    v9 = *(a2 + 64);
    v19[0] = *(a2 + 48);
    v19[1] = v9;
    v19[2] = *(a2 + 80);
    if (*(a2 + 119) < 0)
    {
      v11 = a5;
      v12 = a4;
      std::string::__init_copy_ctor_external(&__p, *(a2 + 96), *(a2 + 104));
      a4 = v12;
      a5 = v11;
    }

    else
    {
      __p = *(a2 + 96);
    }

    *(&v19[0] + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
    Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v8, v19, v7, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    Sampler = 0;
  }

  result = *(*(a1 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (Sampler)
  {
    v14 = *&Sampler->_impl.desc.var1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 32 * a3;
  *(*(a1 + 42696) + v15 + 16888) = v14;
  v16 = *(a1 + 42696);
  if ((~*(v16 + 16880 + v15 + 8) & 0x6000000000000000) != 0)
  {
    if (!Sampler)
    {
      p_impl = 0;
      goto LABEL_18;
    }
  }

  else
  {
    *(v16 + 16880 + 32 * a3 + 16) = *&Sampler->_impl.var0;
    v16 = *(a1 + 42696);
  }

  p_impl = &Sampler->_impl;
  if (LODWORD(Sampler[1].super._device))
  {
    p_impl = LODWORD(Sampler[1].super._device);
  }

LABEL_18:
  *(v16 + 32 * a3 + 16880) = p_impl;
  v18 = *(a1 + 8);
  *(v18 + 8 * (a3 > 0x3F) + 78320) |= 1 << a3;
  *(v18 + 78480) |= 0x4000000uLL;
  return result;
}

void sub_29CEACF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>,true>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (!a2)
  {
    *(a4 + 19224 + 24 * a3) = 0;
    *(a4 + 19224 + 8 * (3 * a3 + 1)) = 0;
    *(a4 + 19224 + 8 * (3 * a3 + 2)) = 0;
    v30 = a3 << 7;
    v31 = *(a4 + 18648) + v30;
    v32 = a3;
    bzero((v31 + 496), 0x38uLL);
    v33 = 0;
    *(v31 + 544) = 0;
    v34 = *(a4 + 18648);
    v26 = 1 << a3;
    v24 = a3 > 0x3F;
    v35 = v34 + 8 * v24;
    *(v35 + 17888) &= ~(1 << a3);
    *(v35 + 17904) &= ~(1 << a3);
    v36 = *(*(*(a1 + 8) + 1872) + 848);
    v37 = *(v36 + 16496);
    v38 = v34 + v30;
    *(v38 + 560) = *(v36 + 16480);
    *(v38 + 576) = v37;
    v39 = *(*(*(a1 + 8) + 1872) + 848);
    v40 = *(a4 + 18648) + v30;
    v41 = *(v39 + 16528);
    *(v40 + 592) = *(v39 + 16512);
    *(v40 + 608) = v41;
    goto LABEL_23;
  }

  v9 = *(a2 + 592);
  v10 = *(v9 + 592);
  v11 = *(v9 + 600);
  v12 = v7[251];
  v13 = v12[2].i64[1];
  v14 = MEMORY[0x29EDC5638];
  if (*(v13 + 480) != 1)
  {
    goto LABEL_10;
  }

  v15 = v12[3];
  v16 = v12[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v15), vceqzq_s64(v16))))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = a2 + *MEMORY[0x29EDC5638];
  if ((*(v17 + 23) & 0x10) != 0)
  {
    v17 = *v17;
  }

  v18 = *v17;
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *(v18 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v18), vceqzq_s64(v19))))) & 1) == 0)
  {
LABEL_10:
    v18 = 0;
LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  v20 = vandq_s8(v19, v16);
  v21 = v20.u64[1];
  if (v20.i64[1])
  {
    v22 = 3;
LABEL_29:
    v54 = &v12->i8[8 * v22];
    v55 = __clz(v21) ^ 0x3F;
    v18 = (*(v54 + 10) >> v55) & 1;
    v23 = (*(v54 + 14) >> v55) & 1;
    goto LABEL_12;
  }

  v21 = v20.i64[0];
  if (v20.i64[0])
  {
    v22 = 2;
    goto LABEL_29;
  }

  v53 = vandq_s8(*v18, v15);
  v21 = v53.u64[1];
  if (v53.i64[1])
  {
    v22 = 1;
    goto LABEL_29;
  }

  v22 = 0;
  v18 = 0;
  v23 = 0;
  v21 = v53.i64[0];
  if (v53.i64[0])
  {
    goto LABEL_29;
  }

LABEL_12:
  v24 = a3 > 0x3F;
  v25 = (v13 + 8 * v24);
  v26 = 1 << a3;
  v25[18] = v25[18] & ~(1 << a3) | (v18 << a3);
  v25[38] = v25[38] & ~(1 << a3) | (v23 << a3);
  v25[58] &= ~(1 << a3);
  v27 = 3 * a3;
  v28 = a4 + 19224;
  *(a4 + 19224 + 24 * a3) = a2 + *v14;
  if (v10)
  {
    v10 += *v14;
  }

  *(v28 + 8 * (v27 + 1)) = v10;
  if (v11)
  {
    v29 = v11 + *v14;
  }

  else
  {
    v29 = 0;
  }

  *(v28 + 8 * (v27 + 2)) = v29;
  v32 = a3;
  v42 = *(a4 + 18648) + (a3 << 7);
  v43 = *(v9 + 72);
  v44 = *(v9 + 88);
  v45 = *(v9 + 104);
  *(v42 + 544) = *(v9 + 120);
  *(v42 + 512) = v44;
  *(v42 + 528) = v45;
  *(v42 + 496) = v43;
  v46 = *(a4 + 18648);
  *(v46 + 8 * v24 + 17888) |= v26;
  v47 = *(v9 + 584);
  if (v47)
  {
    v47 = *(v47 + 1304) != 0;
  }

  *(v46 + 17904 + 8 * v24) = *(v46 + 17904 + 8 * v24) & ~v26 | (v47 << (a3 & 0x3F));
  v48 = v46 + (a3 << 7);
  v49 = *(v9 + 432);
  *(v48 + 560) = *(v9 + 416);
  *(v48 + 576) = v49;
  v50 = *(a4 + 18648) + (a3 << 7);
  v51 = *(v9 + 464);
  *(v50 + 592) = *(v9 + 448);
  *(v50 + 608) = v51;
  if (*(*(a1 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  v33 = *(*(a2 + 592) + 120);
LABEL_23:
  *(*(a4 + 18648) + (v32 << 7) + 552) = v33;
  v52 = &v7[v24];
  v52[9788] |= v26;
  v52[9794] |= v26;
  v7[9810] |= 0x14000000uLL;
  v7[9796] |= 0x10uLL;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<true>>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = (a5 + 8 * a4);
  if (a4 <= 0x22)
  {
    v6[2787] = 0;
  }

  v7 = *(result + 8);
  if (!a2)
  {
    v6[2333] = 0;
    if (a4 >= 0x1F)
    {
      v32 = *(a5 + 18656) + 8 * (a4 - 31);
      *(v32 + 40) = 0;
      *(v32 + 352) = 0;
      v33 = a5 + 8 * a4;
      *(v33 + 22576) = 0;
      *(v33 + 23136) = 0;
    }

    else
    {
      v16 = *(a5 + 18648);
      v17 = (v16 + 8 * a4);
      *v17 = 0;
      v17[31] = 0;
      v18 = a5 + 8 * a4;
      *(v18 + 22576) = 0;
      *(v18 + 23136) = 0;
      *(v16 + 4 * a4 + 17516) = 0;
      v17[2205] = 0;
    }

    goto LABEL_22;
  }

  v8 = MEMORY[0x29EDC5638];
  v9 = (a2 + *MEMORY[0x29EDC5638]);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[1];
  v6[2822] = v12;
  v6[2892] = v11;
  v13 = v12 + a3;
  if (a4 >= 0x1F)
  {
    v19 = *(a5 + 18656) + 8 * (a4 - 31);
    *(v19 + 40) = v13;
    *(v19 + 352) = v11 + a3;
  }

  else
  {
    v14 = *(a5 + 18648);
    v15 = v14 + 8 * a4;
    *v15 = v13;
    *(v14 + 4 * a4 + 17516) = v10;
    *(v15 + 248) = v11 + a3;
    *(v15 + 17640) = v10;
    *(v15 + 17644) = v12 >> 8;
  }

  *(a5 + 8 * a4 + 18664) = a2 + *v8;
  v20 = v7[251];
  v21 = v20[2].i64[1];
  if (*(v21 + 480) != 1)
  {
    goto LABEL_17;
  }

  v22 = v20[3];
  v23 = v20[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = a2 + *v8;
  if ((*(v24 + 23) & 0x10) != 0)
  {
    v24 = *v24;
  }

  v25 = *v24;
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = *(v25 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))) & 1) == 0)
  {
LABEL_17:
    v25 = 0;
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  v27 = vandq_s8(v26, v23);
  v28 = v27.u64[1];
  if (v27.i64[1])
  {
    v29 = 3;
  }

  else
  {
    v28 = v27.i64[0];
    if (v27.i64[0])
    {
      v29 = 2;
    }

    else
    {
      v35 = vandq_s8(*v25, v22);
      v28 = v35.u64[1];
      if (v35.i64[1])
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
        v25 = 0;
        v30 = 0;
        v28 = v35.i64[0];
        if (!v35.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v36 = &v20->i8[8 * v29];
  v37 = __clz(v28) ^ 0x3F;
  v25 = (*(v36 + 10) >> v37) & 1;
  v30 = (*(v36 + 14) >> v37) & 1;
LABEL_19:
  v31 = (v21 + 8 * (a4 > 0x3F));
  v31[14] = v31[14] & ~(1 << a4) | (v25 << a4);
  v31[34] = v31[34] & ~(1 << a4) | (v30 << a4);
  v31[54] &= ~(1 << a4);
  result = v7[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v34 = &v7[a4 > 0x3F];
  v34[9786] |= 1 << a4;
  v34[9792] |= 1 << a4;
  v7[9810] |= 0xC000000uLL;
  return result;
}

void sub_29CEAE054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setObjectProgramSamplerWithLODOverride(uint64_t a1, uint64_t a2, unsigned int a3, float a4, float a5)
{
  if (a2)
  {
    v7 = *(*(a1 + 8) + 1872);
    v8 = *(v7 + 848);
    v9 = *(a2 + 64);
    v19[0] = *(a2 + 48);
    v19[1] = v9;
    v19[2] = *(a2 + 80);
    if (*(a2 + 119) < 0)
    {
      v11 = a5;
      v12 = a4;
      std::string::__init_copy_ctor_external(&__p, *(a2 + 96), *(a2 + 104));
      a4 = v12;
      a5 = v11;
    }

    else
    {
      __p = *(a2 + 96);
    }

    *(&v19[0] + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
    Sampler = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateSampler(v8, v19, v7, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    Sampler = 0;
  }

  result = *(*(a1 + 8) + 1896);
  if (result)
  {
    result = MTLResourceListAddResource();
  }

  if (Sampler)
  {
    v14 = *&Sampler->_impl.desc.var1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 32 * a3;
  *(*(a1 + 18992) + v15 + 16888) = v14;
  v16 = *(a1 + 18992);
  if ((~*(v16 + 16880 + v15 + 8) & 0x6000000000000000) != 0)
  {
    if (!Sampler)
    {
      p_impl = 0;
      goto LABEL_18;
    }
  }

  else
  {
    *(v16 + 16880 + 32 * a3 + 16) = *&Sampler->_impl.var0;
    v16 = *(a1 + 18992);
  }

  p_impl = &Sampler->_impl;
  if (LODWORD(Sampler[1].super._device))
  {
    p_impl = LODWORD(Sampler[1].super._device);
  }

LABEL_18:
  *(v16 + 32 * a3 + 16880) = p_impl;
  v18 = *(a1 + 8);
  *(v18 + 8 * (a3 > 0x3F) + 78224) |= 1 << a3;
  *(v18 + 78480) |= 0x10000uLL;
  return result;
}

void sub_29CEAE2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setTexture<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>,true>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (!a2)
  {
    *(a4 + 19496 + 24 * a3) = 0;
    *(a4 + 19496 + 8 * (3 * a3 + 1)) = 0;
    *(a4 + 19496 + 8 * (3 * a3 + 2)) = 0;
    v30 = a3 << 7;
    v31 = *(a4 + 18920) + v30;
    v32 = a3;
    bzero((v31 + 496), 0x38uLL);
    v33 = 0;
    *(v31 + 544) = 0;
    v34 = *(a4 + 18920);
    v26 = 1 << a3;
    v24 = a3 > 0x3F;
    v35 = v34 + 8 * v24;
    *(v35 + 17888) &= ~(1 << a3);
    *(v35 + 17904) &= ~(1 << a3);
    v36 = *(*(*(a1 + 8) + 1872) + 848);
    v37 = *(v36 + 16496);
    v38 = v34 + v30;
    *(v38 + 560) = *(v36 + 16480);
    *(v38 + 576) = v37;
    v39 = *(*(*(a1 + 8) + 1872) + 848);
    v40 = *(a4 + 18920) + v30;
    v41 = *(v39 + 16528);
    *(v40 + 592) = *(v39 + 16512);
    *(v40 + 608) = v41;
    goto LABEL_23;
  }

  v9 = *(a2 + 592);
  v10 = *(v9 + 592);
  v11 = *(v9 + 600);
  v12 = v7[251];
  v13 = v12[2].i64[1];
  v14 = MEMORY[0x29EDC5638];
  if (*(v13 + 480) != 1)
  {
    goto LABEL_10;
  }

  v15 = v12[3];
  v16 = v12[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v15), vceqzq_s64(v16))))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = a2 + *MEMORY[0x29EDC5638];
  if ((*(v17 + 23) & 0x10) != 0)
  {
    v17 = *v17;
  }

  v18 = *v17;
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *(v18 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v18), vceqzq_s64(v19))))) & 1) == 0)
  {
LABEL_10:
    v18 = 0;
LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  v20 = vandq_s8(v19, v16);
  v21 = v20.u64[1];
  if (v20.i64[1])
  {
    v22 = 3;
LABEL_29:
    v54 = &v12->i8[8 * v22];
    v55 = __clz(v21) ^ 0x3F;
    v18 = (*(v54 + 10) >> v55) & 1;
    v23 = (*(v54 + 14) >> v55) & 1;
    goto LABEL_12;
  }

  v21 = v20.i64[0];
  if (v20.i64[0])
  {
    v22 = 2;
    goto LABEL_29;
  }

  v53 = vandq_s8(*v18, v15);
  v21 = v53.u64[1];
  if (v53.i64[1])
  {
    v22 = 1;
    goto LABEL_29;
  }

  v22 = 0;
  v18 = 0;
  v23 = 0;
  v21 = v53.i64[0];
  if (v53.i64[0])
  {
    goto LABEL_29;
  }

LABEL_12:
  v24 = a3 > 0x3F;
  v25 = (v13 + 8 * v24);
  v26 = 1 << a3;
  v25[16] = v25[16] & ~(1 << a3) | (v18 << a3);
  v25[36] = v25[36] & ~(1 << a3) | (v23 << a3);
  v25[56] &= ~(1 << a3);
  v27 = 3 * a3;
  v28 = a4 + 19496;
  *(a4 + 19496 + 24 * a3) = a2 + *v14;
  if (v10)
  {
    v10 += *v14;
  }

  *(v28 + 8 * (v27 + 1)) = v10;
  if (v11)
  {
    v29 = v11 + *v14;
  }

  else
  {
    v29 = 0;
  }

  *(v28 + 8 * (v27 + 2)) = v29;
  v32 = a3;
  v42 = *(a4 + 18920) + (a3 << 7);
  v43 = *(v9 + 72);
  v44 = *(v9 + 88);
  v45 = *(v9 + 104);
  *(v42 + 544) = *(v9 + 120);
  *(v42 + 512) = v44;
  *(v42 + 528) = v45;
  *(v42 + 496) = v43;
  v46 = *(a4 + 18920);
  *(v46 + 8 * v24 + 17888) |= v26;
  v47 = *(v9 + 584);
  if (v47)
  {
    v47 = *(v47 + 1304) != 0;
  }

  *(v46 + 17904 + 8 * v24) = *(v46 + 17904 + 8 * v24) & ~v26 | (v47 << (a3 & 0x3F));
  v48 = v46 + (a3 << 7);
  v49 = *(v9 + 432);
  *(v48 + 560) = *(v9 + 416);
  *(v48 + 576) = v49;
  v50 = *(a4 + 18920) + (a3 << 7);
  v51 = *(v9 + 464);
  *(v50 + 592) = *(v9 + 448);
  *(v50 + 608) = v51;
  if (*(*(a1 + 8) + 1896))
  {
    MTLResourceListAddResource();
  }

  v33 = *(*(a2 + 592) + 120);
LABEL_23:
  *(*(a4 + 18920) + (v32 << 7) + 552) = v33;
  v52 = &v7[v24];
  v52[9776] |= v26;
  v52[9782] |= v26;
  v7[9810] |= 0x50000uLL;
  v7[9784] |= 0x10uLL;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = (a5 + 8 * a4);
  if (a4 <= 0x22)
  {
    v6[2821] = 0;
  }

  v7 = *(result + 8);
  if (!a2)
  {
    v6[2367] = 0;
    if (a4 >= 0x1F)
    {
      v32 = *(a5 + 18928) + 8 * (a4 - 31);
      *(v32 + 40) = 0;
      *(v32 + 352) = 0;
      v33 = a5 + 8 * a4;
      *(v33 + 22848) = 0;
      *(v33 + 23408) = 0;
    }

    else
    {
      v16 = *(a5 + 18920);
      v17 = (v16 + 8 * a4);
      *v17 = 0;
      v17[31] = 0;
      v18 = a5 + 8 * a4;
      *(v18 + 22848) = 0;
      *(v18 + 23408) = 0;
      *(v16 + 4 * a4 + 17516) = 0;
      v17[2205] = 0;
    }

    goto LABEL_22;
  }

  v8 = MEMORY[0x29EDC5638];
  v9 = (a2 + *MEMORY[0x29EDC5638]);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[1];
  v6[2856] = v12;
  v6[2926] = v11;
  v13 = v12 + a3;
  if (a4 >= 0x1F)
  {
    v19 = *(a5 + 18928) + 8 * (a4 - 31);
    *(v19 + 40) = v13;
    *(v19 + 352) = v11 + a3;
  }

  else
  {
    v14 = *(a5 + 18920);
    v15 = v14 + 8 * a4;
    *v15 = v13;
    *(v14 + 4 * a4 + 17516) = v10;
    *(v15 + 248) = v11 + a3;
    *(v15 + 17640) = v10;
    *(v15 + 17644) = v12 >> 8;
  }

  *(a5 + 8 * a4 + 18936) = a2 + *v8;
  v20 = v7[251];
  v21 = v20[2].i64[1];
  if (*(v21 + 480) != 1)
  {
    goto LABEL_17;
  }

  v22 = v20[3];
  v23 = v20[4];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v23))))) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = a2 + *v8;
  if ((*(v24 + 23) & 0x10) != 0)
  {
    v24 = *v24;
  }

  v25 = *v24;
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = *(v25 + 16);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v25), vceqzq_s64(v26))))) & 1) == 0)
  {
LABEL_17:
    v25 = 0;
LABEL_18:
    v30 = 0;
    goto LABEL_19;
  }

  v27 = vandq_s8(v26, v23);
  v28 = v27.u64[1];
  if (v27.i64[1])
  {
    v29 = 3;
  }

  else
  {
    v28 = v27.i64[0];
    if (v27.i64[0])
    {
      v29 = 2;
    }

    else
    {
      v35 = vandq_s8(*v25, v22);
      v28 = v35.u64[1];
      if (v35.i64[1])
      {
        v29 = 1;
      }

      else
      {
        v29 = 0;
        v25 = 0;
        v30 = 0;
        v28 = v35.i64[0];
        if (!v35.i64[0])
        {
          goto LABEL_19;
        }
      }
    }
  }

  v36 = &v20->i8[8 * v29];
  v37 = __clz(v28) ^ 0x3F;
  v25 = (*(v36 + 10) >> v37) & 1;
  v30 = (*(v36 + 14) >> v37) & 1;
LABEL_19:
  v31 = (v21 + 8 * (a4 > 0x3F));
  v31[12] = v31[12] & ~(1 << a4) | (v25 << a4);
  v31[32] = v31[32] & ~(1 << a4) | (v30 << a4);
  v31[52] &= ~(1 << a4);
  result = v7[237];
  if (result)
  {
    result = MTLResourceListAddResource();
  }

LABEL_22:
  v34 = &v7[a4 > 0x3F];
  v34[9774] |= 1 << a4;
  v34[9780] |= 1 << a4;
  v7[9810] |= 0x30000uLL;
  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBuffer(void *result, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  if (*(result[4] + 3946) == 1)
  {
    v8 = result[1];
    v9 = v8[3794];
  }

  else
  {
    v8 = result[1];
    v9 = v8[3794];
    v10 = *(v9 + 24);
    if (v10)
    {
      v10 = *(v10 + 3948);
    }

    if (a4[1] * a4[2] * *a4 > v10)
    {
      return;
    }
  }

  v11 = *(v9 + 32);
  if (v11)
  {
    v11 = *(v11 + 4036);
  }

  if (*(a5 + 1) * *a5 * *(a5 + 2) <= v11)
  {
    if (*(result[4] + 3946))
    {
      v12 = 0;
      a3 = a3;
LABEL_30:
      v31 = result;
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setBuffer<AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::StageBindInfo<false>>(result, a2, a3, 0x23u, (result + 9));
      IOGPUResourceListAddResource();
      v40 = *a4;
      v41 = a4[2];
      v38 = *a5;
      v39 = *(a5 + 2);
      AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBufferCommon(v31, v12, &v40, &v38);
      return;
    }

    v13 = *MEMORY[0x29EDC5638];
    v14 = a2 + v13;
    v15 = *(a2 + v13 + 8);
    a3 = a3;
    v12 = v15 + a3;
    if (v8[3762] == a2)
    {
      goto LABEL_30;
    }

    v16 = *(v14 + 16);
    v17 = (v16 & 0x7FFFFFFF80) != 0 && (v16 >> 61) - 5 >= 0xFFFFFFFFFFFFFFFCLL;
    if (v17 && (v18 = v8[251], *(v18[2].i64[1] + 480) == 1) && (v19 = v18[3], v20 = v18[4], (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) != 0))
    {
      v21 = a3;
      v22 = (a2 + v13);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v22 = *v14;
      }

      v23 = *v22;
      if (v23)
      {
        v24 = *v23;
        v25 = v23[1];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v23), vceqzq_s64(v25))))))
        {
          v26 = vandq_s8(v25, v20);
          v27 = v26.u64[1];
          if (v26.i64[1])
          {
            v28 = result;
            v29 = 3;
            goto LABEL_38;
          }

          v27 = v26.i64[0];
          if (v26.i64[0])
          {
            v28 = result;
            v29 = 2;
            goto LABEL_38;
          }

          v32 = vandq_s8(v24, v19);
          v28 = result;
          v27 = v32.u64[1];
          if (v32.i64[1])
          {
            v29 = 1;
            goto LABEL_38;
          }

          v27 = v32.i64[0];
          if (v32.i64[0])
          {
            v29 = 0;
LABEL_38:
            v33 = &v18->i8[8 * v29];
            v34 = *(v33 + 10);
            v35 = 1 << (__clz(v27) ^ 0x3Fu);
            if ((v35 & (*(v33 + 14) | v34)) != 0)
            {
              v36 = (v15 + 127) & 0xFFFFFFFFFFFFFF80;
              v37 = (a2 + v13);
              if ((v16 & 0x1000000000000000) != 0)
              {
                v37 = *v14;
              }

              *&v40 = v37;
              *(&v40 + 1) = v36;
              v41 = (v16 >> 7) | 0x4100000000;
              v42 = (v35 & v34) != 0;
              ResourceTracker<_ResourceGroupBinding>::addResource(v18, &v40, *(v14 + 48), 65);
            }
          }

LABEL_27:
          IOGPUResourceListAddResource();
          result = v28;
          v30 = *(v28 + 8);
          if (*(v30 + 1896))
          {
            MTLResourceListAddResource();
            result = v28;
            v30 = *(v28 + 8);
          }

          a3 = v21;
          *(v30 + 30096) = a2;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v21 = a3;
    }

    v28 = result;
    goto LABEL_27;
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::drawMeshThreadgroupsWithIndirectBufferCommon(void *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = *(a1[5] + 3820);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(a1[1], v7);
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
  v22 = v21 + *(v20 + 184);
  *(v20 + 168) = v21 + 3;
  *v21 = v10;
  v21[1] = v9;
  v21[2] = v11;
  a1[2901] = v22;
  a1[2971] = v21;
  v23 = a1[2375];
  *(v23 + 80) = v22;
  *(v23 + 392) = v21;
  a1[2412] = *(*(v20 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v20 + 78192) |= 0x1000000000uLL;
  *(v20 + 78240) |= 0x1000000000uLL;
  *(v20 + 78480) |= 0x30000uLL;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(a1, a1[4], a1[5], *(v20 + 30344), a1[2374], a1[5337], *(v20 + 73032), v8, v15 | (v16 << 32), v17, v14, v36, v20 + 78096, 0);
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

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeISPPrimitiveType(uint64_t result, uint64_t a2)
{
  v2 = (result + 78480);
  v3 = (result + 28632);
  if (!a2)
  {
    if (*(*(result + 30352) + 32))
    {
      v4 = *(result + 27960);
      if (v4)
      {
        v5 = *(v4 + 40);
        if (v5)
        {
          if ((*(v5 + 3882) & 4) != 0)
          {
            goto LABEL_6;
          }
        }
      }
    }

    else if ((*(*(result + 30336) + 4114) & 4) != 0)
    {
LABEL_6:
      v6 = *(result + 78553);
      v8 = (result + 28672);
      v7 = *(result + 28672);
      *(result + 28668) &= ~0x800000u;
      goto LABEL_23;
    }

    if (*(result + 30064))
    {
      LODWORD(a2) = 0;
    }

    else
    {
      LODWORD(a2) = 2;
    }
  }

  v9 = *(result + 30040);
  v6 = *(result + 78553);
  v8 = (result + 28672);
  v7 = *(result + 28672);
  *(result + 28668) &= ~0x800000u;
  if (a2 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << a2) & 0x1D8) == 0)
  {
    if (((1 << a2) & 0x26) != 0)
    {
      v12.i32[0] = *v8 & 0xFFFFFFF | 0x10000000;
      v12.i32[1] = HIDWORD(*v8) & 0xFFFFFFF | 0x10000000;
      *v8 = v12;
      v11 = 1;
      if (v7 >> 28 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

LABEL_23:
    v13 = 4u >> v6;
    v12 = vorr_s8((*v8 & 0xFFFFFFF0FFFFFFFLL), vdup_n_s32(4u >> v6 << 28));
    *v8 = v12;
    v11 = 1;
    if (v13 == v7 >> 28)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  if (v9 == 2)
  {
    v10 = 6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 == 1;
  if (v9 == 1)
  {
    v10 = 5;
  }

  v12 = vorr_s8(vdup_n_s32(((v9 & 3) << 18) | (v10 << 28)), vand_s8(*v8, vdup_n_s32(0xFF3FFFFu)));
  *v8 = v12;
  if (v10 != v7 >> 28)
  {
LABEL_24:
    if (v12.i32[0] >> 28)
    {
      v14 = (v12.i32[0] >> 28) - 5 > 1;
    }

    else
    {
      v14 = 0;
    }

    *(*(result + 73040) + 904) = 0;
    *(result + 28652) = *(result + 28704);
    *(result + 28644) = vbsl_s8(0xFFFFFF00FFFFFF00, *(result + 28644), *(result + 29880));
    v15 = *v2;
    if (v14)
    {
      v16 = *(result + 29864) & 3 | *v3 & 0xFFFEFFFC;
    }

    else
    {
      v16 = *(result + 29864) & 3 | ((*(result + 29872) & 1) << 16) | *v3 & 0xFFFEFFFC;
    }

    *v3 = v16;
    *v2 = v15 | 0x2100000000000;
    if (*(result + 30066) != v11)
    {
      *v2 = v15 | 0x2100000000000;
      *(result + 30066) = v11;
    }
  }

LABEL_32:
  if (*(result + 29848) == 0.0 && *(result + 29852) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v17 = *(result + 28672) >> 28;
    if (v17)
    {
      v18 = (v17 - 5) >= 2;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
  }

  if (*(result + 29860) != v19)
  {
    if (v19)
    {
      v20 = 0x20000;
    }

    else
    {
      v20 = 0;
    }

    *(result + 28640) = *(result + 28640) & 0xFFFDFFFF | v20;
    *v2 |= 0x100000000000uLL;
    *(result + 29860) = v19;
  }

  return result;
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeAndEmitMeshRenderState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64x2_t *a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v585 = *MEMORY[0x29EDCA608];
  v15 = (a1 + 42696);
  v16 = *(a1 + 8);
  *(v16 + 28065) = 1;
  if (*(a1 + 48) != a9 || *(a1 + 56) != a10)
  {
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    *(v16 + 78480) |= 0xFE0000000uLL;
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
  v576 = 0;
  v18 = *(*(v16 + 1872) + 848);
  v19 = *(a1 + 42704);
  *&v579 = v19 + 168;
  *(&v579 + 1) = a1 + 43088;
  v580 = (v19 + 176);
  *v581 = a1 + 43096;
  *&v581[8] = v19 + 200;
  *&v581[16] = a1 + 43120;
  if (AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(v18 + 7240, &v579, *(v16 + 1904), &v576))
  {
    if (a14 && (v576 & 1) == 0)
    {
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
      IOGPUResourceListAddResource();
    }

    v487 = v15[1];
    v488 = v487[21];
    v489 = *(a1 + 19000);
    v489[21] = v488;
    v20 = *(a1 + 8);
    v490 = v20[9130];
    v490[22] = v488;
    v491 = v15[49];
    *(a1 + 19384) = v491;
    v20[9178] = v491;
    v20[9774] |= 0x800000000000uLL;
    v20[9780] |= 0x800000000000uLL;
    v20[9786] |= 0x800000000000uLL;
    v20[9792] |= 0x800000000000uLL;
    v20[9798] |= 0x800000000000uLL;
    v20[9804] |= 0x800000000000uLL;
    v492 = v487[22];
    v489[22] = v492;
    v490[23] = v492;
    v493 = v15[50];
    *(a1 + 19392) = v493;
    v20[9179] = v493;
    v20[9774] |= 0x1000000000000uLL;
    v20[9780] |= 0x1000000000000uLL;
    v20[9786] |= 0x1000000000000uLL;
    v20[9792] |= 0x1000000000000uLL;
    v20[9798] |= 0x1000000000000uLL;
    v20[9804] |= 0x1000000000000uLL;
    v494 = v487[25];
    v489[25] = v494;
    v490[26] = v494;
    v495 = v15[53];
    *(a1 + 19416) = v495;
    v20[9182] = v495;
    v20[9774] |= 0x8000000000000uLL;
    v20[9780] |= 0x8000000000000uLL;
    v20[9786] |= 0x8000000000000uLL;
    v20[9792] |= 0x8000000000000uLL;
    v20[9798] |= 0x8000000000000uLL;
    v20[9804] |= 0x8000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v20 = *(a1 + 8);
  }

  v21 = *(v20[234] + 848);
  *&v579 = v15[1] + 208;
  *(&v579 + 1) = v15 + 54;
  v22 = AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::SamplerHeapElem>::addToResourceList(v21 + 2152, &v579, v20[238]);
  v23 = *(a1 + 8);
  *(*(v23 + 30328) + 2096) = *(v15[1] + 208);
  explicit = atomic_load_explicit((*(*(v23 + 1872) + 848) + 9388), memory_order_acquire);
  if (explicit)
  {
    v25 = explicit + 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 8);
  *(v26[3791] + 2104) = v25;
  if (!v22)
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (a14)
  {
    IOGPUResourceListAddResource();
    v26 = *(a1 + 8);
  }

  v496 = *(v15[1] + 208);
  *(*(a1 + 19000) + 208) = v496;
  *(v26[9130] + 216) = v496;
  v497 = v15[54];
  *(a1 + 19424) = v497;
  v26[9183] = v497;
  v26[9774] |= 0x10000000000000uLL;
  v26[9780] |= 0x10000000000000uLL;
  v26[9786] |= 0x10000000000000uLL;
  v26[9792] |= 0x10000000000000uLL;
  v26[9798] |= 0x10000000000000uLL;
  v26[9804] |= 0x10000000000000uLL;
  *(a13 + 384) |= 0x300C030000uLL;
  if (a3)
  {
LABEL_14:
    v27 = v26[3791];
    if (!*(v27 + 600))
    {
      if (*(a3 + 2480) == 0)
      {
        v28 = *(a3 + 2112);
      }

      else
      {
        v28 = 1;
      }

      *(v27 + 600) = v28;
    }
  }

LABEL_19:
  if (a2)
  {
    v29 = v26[3791];
    if (!*(v29 + 600))
    {
      if (*(a2 + 2480) == 0)
      {
        v30 = *(a2 + 2112);
      }

      else
      {
        v30 = 1;
      }

      *(v29 + 600) = v30;
    }
  }

  v31 = *(v26[234] + 848);
  *&v579 = v26 + 9929;
  *(&v579 + 1) = v26 + 9930;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v31 + 3146, &v579, v26[238]))
  {
    IOGPUResourceListAddResource();
  }

  v32 = *(a1 + 8);
  **(v32 + 79424) = *(v32 + 79432);
  v33 = *(*(v32 + 1872) + 848);
  *&v579 = v32 + 79448;
  *(&v579 + 1) = v32 + 79456;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v33 + 2952, &v579, *(v32 + 1904)))
  {
    IOGPUResourceListAddResource();
  }

  v34 = *(a1 + 8);
  *(v34[9928] + 8) = v34[9931];
  v35 = *(v34[234] + 848);
  *&v579 = v15[1] + 232;
  *(&v579 + 1) = v15 + 57;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v35 + 3728, &v579, v34[238]))
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
    }

    v37 = v15[1];
    v498 = *(v37 + 232);
    *(*(a1 + 19000) + 232) = v498;
    v36 = *(a1 + 8);
    *(v36[9130] + 240) = v498;
    v499 = v15[57];
    *(a1 + 19448) = v499;
    v36[9186] = v499;
    v36[9774] |= 0x80000000000000uLL;
    v36[9780] |= 0x80000000000000uLL;
    v36[9786] |= 0x80000000000000uLL;
    v36[9792] |= 0x80000000000000uLL;
    v36[9798] |= 0x80000000000000uLL;
    v36[9804] |= 0x80000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v36 = *(a1 + 8);
    v37 = v15[1];
  }

  v38 = *(v36[234] + 848);
  *&v579 = v37 + 248;
  *(&v579 + 1) = v15 + 59;
  if (AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::addToResourceList(v38 + 3340, &v579, v36[238]))
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
    }

    v40 = v15[1];
    v500 = *(v40 + 248);
    *(*(a1 + 19000) + 248) = v500;
    v39 = *(a1 + 8);
    *(v39[9130] + 256) = v500;
    v501 = v15[59];
    *(a1 + 19464) = v501;
    v39[9188] = v501;
    v39[9774] |= 0x200000000000000uLL;
    v39[9780] |= 0x200000000000000uLL;
    v39[9786] |= 0x200000000000000uLL;
    v39[9792] |= 0x200000000000000uLL;
    v39[9798] |= 0x200000000000000uLL;
    v39[9804] |= 0x200000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v39 = *(a1 + 8);
    v40 = v15[1];
  }

  v41 = *(v39[234] + 848);
  *&v579 = v40 + 224;
  *(&v579 + 1) = v15 + 56;
  if (AGX::Mempool<16u,0u,true,0u,0u,AGX::HAL300::BVHStateHeapElem>::addToResourceList(v41 + 2352, &v579, v39[238]))
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
    }

    v43 = v15[1];
    v502 = *(v43 + 224);
    *(*(a1 + 19000) + 224) = v502;
    v42 = *(a1 + 8);
    *(v42[9130] + 232) = v502;
    v503 = v15[56];
    *(a1 + 19440) = v503;
    v42[9185] = v503;
    v42[9774] |= 0x40000000000000uLL;
    v42[9780] |= 0x40000000000000uLL;
    v42[9786] |= 0x40000000000000uLL;
    v42[9792] |= 0x40000000000000uLL;
    v42[9798] |= 0x40000000000000uLL;
    v42[9804] |= 0x40000000000000uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  else
  {
    v42 = *(a1 + 8);
    v43 = v15[1];
  }

  v44 = *(v42[234] + 848);
  *&v579 = v43 + 320;
  *(&v579 + 1) = v15 + 68;
  if (AGX::Mempool<16u,0u,true,8u,0u,AGX::HAL300::TensorStateHeapElem>::addToResourceList(v44 + 2752, &v579, v42[238]))
  {
    if (a14)
    {
      IOGPUResourceListAddResource();
    }

    v504 = *(v15[1] + 320);
    *(*(a1 + 19000) + 320) = v504;
    v505 = *(a1 + 8);
    v506 = v505 + 9775;
    v505 += 9130;
    *(*v505 + 328) = v504;
    v507 = v15[68];
    *(a1 + 19536) = v507;
    v505[67] = v507;
    *v506 |= 4uLL;
    v506[6] |= 4uLL;
    v506[12] |= 4uLL;
    v506[18] |= 4uLL;
    v506[24] |= 4uLL;
    v506[30] |= 4uLL;
    *(a13 + 384) |= 0x300C030000uLL;
  }

  v560 = (a1 + 24040);
  if (a14)
  {
    goto LABEL_55;
  }

  if (a2 && *v560 == 1 && (*(a2 + 2407) & 0x40) != 0)
  {
    v45 = *(*(a1 + 19000) + 328);
    v46 = *(a1 + 8);
    v47 = v46[21] + 47;
    if (v47 > v46[20])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline((v46 + 3), 3, 0))
      {
        goto LABEL_42;
      }

      v47 = v46[21] + 47;
      if (v47 > v46[20])
      {
        goto LABEL_465;
      }
    }

    v46[22] = v47;
LABEL_42:
    v48 = *(a1 + 8);
    v49 = ((*(v48 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v49 + *(v48 + 184);
    *(v48 + 168) = v49 + 4;
    *v49 = v45;
    v49[1] = 0;
    v49[2] = 0;
    v49[3] = 0;
    v51 = *(a1 + 8);
    v52 = v51 + 77824;
    v53 = *(*(v51 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v52 + 368) |= 0x4000000000000000uLL;
    *(v52 + 656) |= 0x10000uLL;
    *(*(a1 + 19000) + 288) = v50;
    *(a1 + 19504) = v53;
    *v560 = 0;
  }

  if (a3 && *(a1 + 47744) == 1 && (*(a3 + 2407) & 0x40) != 0)
  {
    v54 = *(v15[1] + 328);
    v55 = *(a1 + 8);
    v56 = v55[21] + 47;
    if (v56 > v55[20])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline((v55 + 3), 3, 0))
      {
        goto LABEL_48;
      }

      v56 = v55[21] + 47;
      if (v56 > v55[20])
      {
        goto LABEL_465;
      }
    }

    v55[22] = v56;
LABEL_48:
    v57 = *(a1 + 8);
    v58 = ((*(v57 + 168) + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v58 + *(v57 + 184);
    *(v57 + 168) = v58 + 4;
    *v58 = v54;
    v58[1] = 0;
    v58[2] = 0;
    v58[3] = 0;
    v60 = *(a1 + 8);
    v61 = v60 + 77824;
    v62 = *(*(v60 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v61 + 464) |= 0x4000000000000000uLL;
    *(v61 + 656) |= 0x4000000uLL;
    *(v15[1] + 288) = v59;
    v15[64] = v62;
    *(a1 + 47744) = 0;
  }

  if (a4)
  {
    if ((*(a4 + 2407) & 0x40) != 0)
    {
      v63 = *(a1 + 8);
      if (*(v63 + 78080) == 1)
      {
        v64 = *(*(v63 + 73040) + 336);
        v65 = *(v63 + 200);
        v66 = v65 + 31;
        if ((v65 + 31) > *(v63 + 192))
        {
          v521 = AGX::DataBufferAllocator<44ul>::growNoInline(v63 + 24, 4, 0);
          v65 = *(v63 + 200);
          if (!v521)
          {
            goto LABEL_54;
          }

          v66 = v65 + 31;
          if ((v65 + 31) > *(v63 + 192))
          {
            goto LABEL_465;
          }
        }

        *(v63 + 208) = v66;
LABEL_54:
        v67 = ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        v68 = v67 + *(v63 + 216);
        *(v63 + 200) = v67 + 2;
        *v67 = v64;
        v69 = *(*(v63 + 48) + 288) + *MEMORY[0x29EDC5638];
        *(v63 + 78384) |= 0x4000000000000000uLL;
        *(v63 + 78480) |= 0x1000000000uLL;
        *(*(v63 + 73040) + 296) = v68;
        *(v63 + 73544) = v69;
        *(v63 + 78080) = 0;
      }
    }
  }

LABEL_55:
  v70 = *(a1 + 8);
  if (*(v70 + 78088) != 1)
  {
    goto LABEL_59;
  }

  v71 = *(v70 + 200);
  v72 = v71 + 95;
  if ((v71 + 95) > *(v70 + 192))
  {
    v514 = AGX::DataBufferAllocator<44ul>::growNoInline(v70 + 24, 4, 0);
    v71 = *(v70 + 200);
    if (!v514)
    {
      goto LABEL_58;
    }

    v72 = v71 + 95;
    if ((v71 + 95) > *(v70 + 192))
    {
      goto LABEL_465;
    }
  }

  *(v70 + 208) = v72;
LABEL_58:
  v73 = ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v73 + *(v70 + 216);
  *(v70 + 200) = v73 + 5;
  v75 = *(v70 + 79592);
  v77 = *(v70 + 79624);
  v76 = *(v70 + 79640);
  v73[2] = *(v70 + 79608);
  v73[3] = v77;
  v73[1] = v75;
  *v73 = *(v70 + 79576);
  v73[4] = v76;
  v78 = *(*(v70 + 48) + 288) + *MEMORY[0x29EDC5638];
  *(v70 + 78384) |= 0x8000000000000000;
  *(v70 + 78480) |= 0x1000000000uLL;
  *(*(v70 + 73040) + 304) = v74;
  *(v70 + 73552) = v78;
  *(v70 + 78088) = 256;
  v70 = *(a1 + 8);
LABEL_59:
  v79 = *(*(v70 + 1872) + 848);
  v80 = *(v79 + 6320);
  if (*(v70 + 29932) != v80)
  {
    for (i = *(v79 + 6832); i; i = *i)
    {
      IOGPUResourceListAddResource();
    }

    for (j = *(v79 + 6664); j; j = *j)
    {
      IOGPUResourceListAddResource();
    }

    *(v70 + 29932) = v80;
    v70 = *(a1 + 8);
  }

  v83 = *(v70 + 30352);
  if (v83)
  {
    if (v83[1572])
    {
      *(*(v70 + 30328) + 1612) |= *(v70 + 27888) ^ 1;
    }

    if ((v83[2196] & 1) != 0 || v83[2508])
    {
      *(*(v70 + 30328) + 580) |= *(v70 + 27888) ^ 1;
    }
  }

  v84 = *(a13 + 384);
  if (a4)
  {
    v85 = v84 | AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, a3, a4, a13);
    v86 = *(a4 + 3916);
  }

  else
  {
    v87 = v84 & 0xFFFFFF8FFFFFFFFDLL;
    *(a13 + 384) = v87;
    ProgramVariantArgumentDirtyBits = AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::extractProgramVariantArgumentDirtyBits(*(a1 + 16), a2, a3, 0, a13);
    v86 = 0;
    v85 = v87 | ProgramVariantArgumentDirtyBits;
  }

  v575 = v85;
  v563 = v85;
  if (a14 & 1) != 0 || (v86)
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDepthRanges(*(a1 + 8), v85);
    v85 = v563;
  }

  if ((v85 & 0x20000) != 0 && (a14 & 1) == 0)
  {
    v89 = *(a13 + 144) & *(a2 + 2400);
    v90 = *(a13 + 152) & *(a2 + 2408);
    v583 = v89;
    v577 = v90;
    v579 = *(a2 + 1360);
    while (1)
    {
      if (v89)
      {
        v91 = __clz(__rbit64(v89));
        v92 = &v583;
        v93 = v91;
      }

      else
      {
        v89 = v577;
        if (!v577)
        {
          v85 = v563;
          break;
        }

        LODWORD(v91) = __clz(__rbit64(v577));
        v93 = v91 | 0x40;
        v92 = &v577;
      }

      *v92 = v89 & ~(1 << v91);
      if (*(a1 + 19008 + 8 * v93))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectBufferResource(a1, v93, (*(&v579 | (8 * (v93 > 0x3F))) >> v93) & 1, 1);
      }

      v89 = v583;
    }
  }

  if ((v85 & 0x8000000) != 0 && (a14 & 1) == 0)
  {
    v94 = *(a13 + 240) & *(a3 + 2400);
    v95 = *(a13 + 248) & *(a3 + 2408);
    v583 = v94;
    v577 = v95;
    v579 = *(a3 + 1360);
    while (1)
    {
      if (v94)
      {
        v96 = __clz(__rbit64(v94));
        v97 = &v583;
        v98 = v96;
      }

      else
      {
        v94 = v577;
        if (!v577)
        {
          v85 = v563;
          break;
        }

        LODWORD(v96) = __clz(__rbit64(v577));
        v98 = v96 | 0x40;
        v97 = &v577;
      }

      *v97 = v94 & ~(1 << v96);
      if (*(a1 + 42712 + 8 * v98))
      {
        AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshBufferResource(a1, v98, (*(&v579 | (8 * (v98 > 0x3F))) >> v98) & 1, 1);
      }

      v94 = v583;
    }
  }

  if ((v85 & 0x40000) != 0)
  {
    v99 = *(a1 + 18992);
    if (v99)
    {
      v100 = *(a2 + 2416) & *(a13 + 160) & v99[2236];
      v101 = *(a2 + 2424) & *(a13 + 168) & v99[2237];
      v583 = v100;
      v577 = v101;
      v102 = *(a2 + 1376);
      v103 = *(a2 + 1384);
      *&v579 = v102;
      *(&v579 + 1) = v103;
      v104 = v99[2238];
      v105 = v99[2239];
      if (v100)
      {
        goto LABEL_105;
      }

      while (1)
      {
        v100 = v577;
        if (!v577)
        {
          break;
        }

        LODWORD(v106) = __clz(__rbit64(v577));
        v107 = v106 | 0x40;
        v108 = &v577;
        while (1)
        {
          *v108 = v100 & ~(1 << v106);
          AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectTextureResources(a1, v107, (*(&v579 + (v107 > 0x3F)) >> v107) & 1);
          v100 = v583;
          if (!v583)
          {
            break;
          }

LABEL_105:
          v106 = __clz(__rbit64(v100));
          v108 = &v583;
          v107 = v106;
        }
      }

      *(*(*(a1 + 8) + 30328) + 580) |= (v104 & v102 | v105 & v103) != 0;
      v85 = v563;
    }
  }

  if ((v85 & 0x10000000) != 0)
  {
    v109 = *v15;
    if (*v15)
    {
      v110 = *(a3 + 2416) & *(a13 + 256) & v109[2236];
      v111 = *(a3 + 2424) & *(a13 + 264) & v109[2237];
      v583 = v110;
      v577 = v111;
      v112 = *(a3 + 1376);
      v113 = *(a3 + 1384);
      *&v579 = v112;
      *(&v579 + 1) = v113;
      v114 = v109[2238];
      v115 = v109[2239];
      if (v110)
      {
        goto LABEL_114;
      }

      while (1)
      {
        v110 = v577;
        if (!v577)
        {
          break;
        }

        LODWORD(v116) = __clz(__rbit64(v577));
        v117 = v116 | 0x40;
        v118 = &v577;
        while (1)
        {
          *v118 = v110 & ~(1 << v116);
          AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshTextureResources(a1, v117, (*(&v579 + (v117 > 0x3F)) >> v117) & 1);
          v110 = v583;
          if (!v583)
          {
            break;
          }

LABEL_114:
          v116 = __clz(__rbit64(v110));
          v118 = &v583;
          v117 = v116;
        }
      }

      *(*(*(a1 + 8) + 30328) + 580) |= (v114 & v112 | v115 & v113) != 0;
      v85 = v563;
    }
  }

  if ((v85 & 0x2000000000) != 0 && (a14 & 1) == 0)
  {
    v119 = *(a13 + 336) & *(a4 + 2400);
    v120 = *(a13 + 344) & *(a4 + 2408);
    v583 = v119;
    v577 = v120;
    v579 = *(a4 + 1360);
    while (1)
    {
      if (v119)
      {
        v121 = __clz(__rbit64(v119));
        v122 = &v583;
        v123 = v121;
      }

      else
      {
        v119 = v577;
        if (!v577)
        {
          v85 = v563;
          break;
        }

        LODWORD(v121) = __clz(__rbit64(v577));
        v123 = v121 | 0x40;
        v122 = &v577;
      }

      *v122 = v119 & ~(1 << v121);
      v124 = *(a1 + 8);
      if (*(v124 + 8 * v123 + 73048))
      {
        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(v124, v123, (*(&v579 | (8 * (v123 > 0x3F))) >> v123) & 1, 1);
      }

      v119 = v583;
    }
  }

  if ((v85 & 0x4000000000) != 0)
  {
    v125 = *(*(a1 + 8) + 73032);
    if (v125)
    {
      v126 = *(a4 + 2416) & *(a13 + 352) & v125[2236];
      v127 = *(a4 + 2424) & *(a13 + 360) & v125[2237];
      v583 = v126;
      v577 = v127;
      *&v545 = *(a4 + 1384);
      *(&v545 + 1) = *(a4 + 1376);
      *&v579 = *(&v545 + 1);
      *(&v579 + 1) = v545;
      *&v540 = v125[2239];
      *(&v540 + 1) = v125[2238];
      while (1)
      {
        if (v126)
        {
          v128 = __clz(__rbit64(v126));
          v129 = &v583;
          v130 = v128;
        }

        else
        {
          v126 = v577;
          if (!v577)
          {
            *(*(*(a1 + 8) + 30328) + 1612) |= (v540 & v545) != 0;
            v85 = v563;
            break;
          }

          v128 = __clz(__rbit64(v577));
          v130 = v128 | 0x40;
          v129 = &v577;
        }

        *v129 = v126 & ~(1 << v128);
        v131 = *(a1 + 8);
        if ((*(&v579 + (v130 > 0x3F)) >> v130))
        {
          v132 = 12;
        }

        else
        {
          v132 = 4;
        }

        v133 = 3 * v130;
        v134 = v131 + 73608;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(v131 + 2008), *(v131 + 73608 + 24 * v130), 4u, v130, v132);
        if (*(v131 + 73608 + 8 * v133))
        {
          IOGPUResourceListAddResource();
          if (*(v134 + 8 * (v133 + 1)))
          {
            IOGPUResourceListAddResource();
          }

          if (*(v134 + 8 * (v133 + 2)))
          {
            IOGPUResourceListAddResource();
          }
        }

        v126 = v583;
      }
    }
  }

  v135 = a13;
  v136 = *(a13 + 392);
  if (v136)
  {
    v135 = a13;
    if (*(*(a1 + 8) + 30064) == 1)
    {
      *(a13 + 392) = v136 & 0xFFFFFFFE;
    }
  }

  *(v135 + 384) = 0;
  *(v135 + 352) = 0u;
  *(v135 + 368) = 0u;
  *(v135 + 320) = 0u;
  *(v135 + 336) = 0u;
  *(v135 + 288) = 0u;
  *(v135 + 304) = 0u;
  *(v135 + 256) = 0u;
  *(v135 + 272) = 0u;
  *(v135 + 224) = 0u;
  *(v135 + 240) = 0u;
  *(v135 + 192) = 0u;
  *(v135 + 208) = 0u;
  *(v135 + 160) = 0u;
  *(v135 + 176) = 0u;
  *(v135 + 128) = 0u;
  *(v135 + 144) = 0u;
  *(v135 + 96) = 0u;
  *(v135 + 112) = 0u;
  *(v135 + 64) = 0u;
  *(v135 + 80) = 0u;
  *(v135 + 32) = 0u;
  *(v135 + 48) = 0u;
  *v135 = 0u;
  *(v135 + 16) = 0u;
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDispatchMeshDatabufferSpace(a1, v85, a2, a3, a4);
  v143 = 0xDE876B1A5;
  v574 = 0;
  v573 = 4123088130;
  v144 = -1;
  v572 = -1;
  v571 = 0;
  v570 = 0;
  v145 = *(a1 + 8);
  v146 = *(*(v145 + 1872) + 848);
  if (*(v146 + 6241) == 1 && (v563 & 0x400000000000) != 0)
  {
    v137.i32[0] = *(v145 + 29848);
    v515 = *(v145 + 29852);
    v516 = *(v145 + 29856);
    v140.i32[0] = 931135616;
    v517.i64[0] = 0x8000000080000000;
    v517.i64[1] = 0x8000000080000000;
    LODWORD(v518) = vbslq_s8(v517, v140, v137).u32[0];
    if (*(*(v145 + 2392) + 4924))
    {
      *v137.i32 = v518 + (*v137.i32 * 0.000015259);
    }

    *&v579 = 0;
    LOBYTE(v583) = 0;
    LOBYTE(v577) = 0;
    v519 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v146, *(*(v145 + 30328) + 952), &v579, &v583, &v577, *v137.i32, v515, v516);
    if (v577)
    {
      if (v583)
      {
        v144 = v519;
        v143 = v579;
      }

      else
      {
        v574 = 1;
        v570 = 4;
      }
    }

    else
    {
      v574 = 1;
    }

    v145 = *(a1 + 8);
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDeviceScissorBufferReserve(v145, &v575, &v572, &v573, &v571, &v574, &v570, *v137.i64, v138, v139, *v140.i32, v141, v142);
  v153 = *(a1 + 8);
  v154 = v574 | (*(*(v153 + 1912) + 520) == 0);
  v574 = v154;
  v155 = *(*(v153 + 1872) + 848) + 4096;
  if ((*(*(*(v153 + 1872) + 848) + 6242) & 1) == 0)
  {
    v154 |= ((*(v153 + 328) - *(*(v153 + 48) + 536)) >> 4) > 0xFFFE;
    v574 = v154;
  }

  if (*(v155 + 2145))
  {
    if ((v154 & 1) == 0)
    {
LABEL_152:
      v156 = 0;
      goto LABEL_153;
    }
  }

  else
  {
    v191 = *(v153 + 296);
    if (!v191)
    {
      v520 = v153;
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v153 + 24, 7);
      v153 = v520;
      v191 = *(v520 + 296);
      if (!v191)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(v520 + 24, 7);
        v191 = 0;
        v153 = v520;
      }
    }

    v574 = v154 | (-1431655765 * ((v191 - *(*(v153 + 48) + 472)) >> 2) > 0xFFFE);
    v153 = *(a1 + 8);
    if ((v574 & 1) == 0)
    {
      goto LABEL_152;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(v153, &v575, v570, 1);
  AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDispatchMeshDatabufferSpace(a1, v575, a2, a3, a4);
  v153 = *(a1 + 8);
  v156 = 1;
  if (a14 && (v576 & 1) == 0)
  {
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    IOGPUResourceListAddResource();
    v153 = *(a1 + 8);
    v156 = 1;
  }

LABEL_153:
  if (!*(*(v153 + 1912) + 520))
  {
    v157 = *(v153 + 1968) - *(v153 + 1984);
    *(v157 + 140) = 1;
    if ((*(v157 + 136) & 4) != 0)
    {
      **(v153 + 8) = 1;
    }
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleScissorUpdates(v153, &v575, v572, v573, v571, v156, v147, v148, v149, v150, v151, v152);
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDepthBiasUpdates(*(a1 + 8), &v575, v144, v143, v158, v159, v160, v161);
  v167 = v575;
  if ((v575 & 0x800000000000) != 0)
  {
    v508 = *(a1 + 8);
    v509 = *(v508 + 28608);
    v510 = *(v508 + 200);
    v511 = v510 + 11;
    if ((v510 + 11) <= *(v508 + 192))
    {
      goto LABEL_460;
    }

    v526 = AGX::DataBufferAllocator<44ul>::growNoInline(v508 + 24, 4, 0);
    v510 = *(v508 + 200);
    if (!v526)
    {
LABEL_461:
      v512 = ((v510 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v513 = v512 + *(v508 + 216);
      *v512 = v509;
      *(v508 + 200) = v512 + 1;
      *(v508 + 28620) = (v513 >> 16) & 0xFFFF0000;
      *(v508 + 28624) = v513 & 0xFFFFFFFC;
      v167 |= 0x8000000000000uLL;
      v575 = v167;
      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1291SWWA())
      {
        *(v508 + 78480) |= 0x1000000000000uLL;
      }

      goto LABEL_157;
    }

    v511 = v510 + 11;
    if ((v510 + 11) <= *(v508 + 192))
    {
LABEL_460:
      *(v508 + 208) = v511;
      goto LABEL_461;
    }

LABEL_465:
    abort();
  }

LABEL_157:
  v168 = *(a2 + 3004);
  *(a1 + 60) = v168;
  v169 = *(a1 + 19000);
  if (*(a2 + 3796))
  {
    v170 = 0;
    v171 = a2 + 3800;
    do
    {
      *(v169 + 664 + 4 * *(v171 + 4 * v170)) = v168 | 0x80000000;
      v168 = *(a1 + 60) + *(v169 + 804 + 4 * *(v171 + 4 * v170));
      *(a1 + 60) = v168;
      ++v170;
    }

    while (v170 < *(a2 + 3796));
  }

  *(v169 + 944) = v168;
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForObject(*(a1 + 8) + 30104, *(a2 + 1296), *(a2 + 1308), *(a2 + 1324), v168, a12 * a11 * HIDWORD(a11), v162, v163, v164, v165, v166))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 30104, *(*(a1 + 8) + 30328) + 320, 1);
  }

  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForMesh(*(a1 + 8) + 30104, *(a3 + 1296), *(a3 + 1308), *(a3 + 1324), *(a3 + 3004), a10 * a9 * HIDWORD(a9), v172, v173, v174, v175, v176))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(*(a1 + 8) + 30104, *(*(a1 + 8) + 30328) + 320, 1);
  }

  v178 = *(a1 + 24);
  if ((v167 & 0xFE3F80030) != 0)
  {
    v179 = *(a1 + 8);
    if ((*(v179 + 30076) & 1) == 0)
    {
      v566 = *(a1 + 16);
      v180 = a1 + 88;
      v181 = *(v179 + 30352);
      v182 = *(a1 + 48);
      v183 = *(a1 + 56);
      v554 = *(v179 + 30064);
      v184 = *(a1 + 1032);
      v579 = 0uLL;
      *v581 = 0;
      v580 = 0;
      *&v581[4] = 0x3000000A5;
      v582 = 0;
      *&v581[20] = 0;
      v185 = ((v184 << 16) + 4128768) & 0xFFC00000;
      if (v184)
      {
        v186 = v185 + 1;
      }

      else
      {
        v186 = v185;
      }

      *&v581[12] = v186;
      AGX::ESLInstructionEncoderGen3<AGX::HAL300::Encoders>::AGX3EncodedInstr<AGXIotoInstruction_SPECLM_0>::AGX3EncodedInstr(&v583, &v579);
      v187 = a2;
      v188 = *(a2 + 624);
      v555 = v167;
      v559 = v183;
      v557 = v181;
      v558 = v182;
      if (v188)
      {
        v189 = (v178[18] + 31) & 0xFFFFFFFFFFFFFFE0;
        v190 = v189 + v178[20];
        v178[18] = v189 + v188;
        v187 = a2;
      }

      else
      {
        v190 = 0;
        v189 = 0;
      }

      v192 = v583;
      v193 = ((v178[26] + 63) & 0xFFFFFFFFFFFFFFC0);
      v194 = v178[28];
      v178[26] = &v193[*(*(v187 + 2392) + 8) - **(v187 + 2392)];
      v195 = *(v187 + 1128);
      v196 = *(v187 + 1120);
      v197 = v195 - v196;
      v423 = v195 == v196;
      v198 = *(v187 + 1016);
      v199 = v198 & 1;
      if (v423)
      {
        v199 = 0;
      }

      v564 = v190;
      if (!v188)
      {
        goto LABEL_259;
      }

      v552 = v194;
      v200 = *(v187 + 1320);
      v201 = *(v187 + 656);
      v538 = *(v187 + 736);
      v550 = *(v187 + 660);
      v202 = *(v187 + 1024);
      v203 = *(v187 + 1028);
      v204 = v201 + ((*(v187 + 872) - *(v187 + 864)) >> 2);
      v205 = *(v187 + 1352);
      v206 = *(v187 + 1353);
      if (*(v187 + 1352))
      {
        *(a1 + 272) = vaddw_u32(vdupq_n_s64(v190), *(a2 + 628));
      }

      v541 = v206;
      if (v206)
      {
        *(a1 + 304) = v190 + *(a2 + 648);
      }

      v207 = 8 * v204;
      v208 = v199 + v198;
      if (v203 + v202)
      {
        *(a1 + 368) = v207 + v190 + 4 * (v208 + ((v197 >> 1) & 0xFFFFFFFE));
      }

      v543 = v208;
      if (v201 == v200)
      {
        v209 = 0;
        v194 = v552;
        v210 = v550;
        v211 = v197 >> 2;
        if (!v200)
        {
          goto LABEL_234;
        }

        goto LABEL_230;
      }

      if (a5)
      {
        v212 = *(a2 + 712);
        v213 = *(a2 + 720);
        if (v212 != v213)
        {
          v214 = v189;
          do
          {
            v215 = *v212++;
            *v214++ = *(v180 + 8 * v215);
          }

          while (v212 != v213);
        }

LABEL_209:
        if (*(a2 + 1160))
        {
          v226 = *(a2 + 1144);
          if (v226 != (a2 + 1152))
          {
            do
            {
              *(v189 + 4 * *(v226 + 7)) |= *(v226 + 8);
              v235 = v226[1];
              if (v235)
              {
                do
                {
                  v236 = v235;
                  v235 = *v235;
                }

                while (v235);
              }

              else
              {
                do
                {
                  v236 = v226[2];
                  v423 = *v236 == v226;
                  v226 = v236;
                }

                while (!v423);
              }

              v226 = v236;
            }

            while (v236 != (a2 + 1152));
          }
        }

        v227 = (v538 + 3) & 0xFFFFFFFC;
        if (v205)
        {
          v228 = *(a2 + 1312);
          if (v228 >= 4)
          {
            v229 = v228 >> 2;
            v230 = *(a2 + 752);
            v231 = (v189 + 8 * v227);
            do
            {
              v232 = *v230;
              v230 += 4;
              v233 = (a5 + 496 + 8 * v232);
              v234 = v233[1];
              *v231 = *v233;
              v231[1] = v234;
              v231 += 2;
              --v229;
            }

            while (v229);
          }

          v227 += v228;
        }

        else
        {
          v228 = 0;
        }

        v194 = v552;
        v210 = v550;
        if (v541)
        {
          v237 = *(a2 + 1316);
          v238 = (v189 + 8 * v227);
          v239 = a5 + 16880;
          if (*(a2 + 2192) == 1)
          {
            if (v237)
            {
              v522 = (*(a2 + 752) + 4 * v228);
              do
              {
                v523 = *v522++;
                *v238++ = *(v239 + 8 * v523);
                --v237;
              }

              while (v237);
            }
          }

          else if (v237 >= 4)
          {
            v240 = v237 >> 2;
            v241 = (*(a2 + 752) + 4 * v228);
            do
            {
              v242 = *v241;
              v241 += 4;
              *v238 = *(v239 + 8 * v242);
              v238 += 4;
              --v240;
            }

            while (v240);
          }
        }

        v209 = 8 * (v201 - v200);
        v211 = v197 >> 2;
        if (!v200)
        {
LABEL_234:
          if (v210)
          {
            *(a1 + 104) = v190 + v209 + 8;
            v247 = *(a2 + 824);
            v248 = *(a2 + 832);
            if (v247 != v248)
            {
              v249 = (v189 + v209);
              do
              {
                v250 = *v247++;
                *v249++ = *(v180 + 4 * v250);
              }

              while (v247 != v248);
            }

            v209 += 4 * v210;
          }

          if (v211)
          {
            v251 = v207 + 4 * v543;
            v252 = (v189 + (v251 & 0xFFFFFFFC));
            v253 = *(a2 + 1120);
            do
            {
              v254 = *v253++;
              *v252++ = *(a5 + 16880 + 8 * v254);
              LODWORD(v211) = v211 - 1;
            }

            while (v211);
            v209 = v251 + 8 * (v197 >> 2);
          }

          v187 = a2;
          if (v203 != -v202)
          {
            v536 = v192;
            v255 = (v189 + v209);
            v256 = 4 * *(a2 + 1024);
            memcpy(v255, (a5 + 4 * *(a2 + 1020)), v256);
            v583 = a5;
            v577 = a1 + 88;
            v257 = &unk_2A23F9B18;
            *&v579 = &unk_2A23F9B18;
            *(&v579 + 1) = &v577;
            v580 = &v583;
            *v581 = &v579;
            v258 = *(a2 + 1056);
            v259 = *(a2 + 1064);
            if (v258 == v259)
            {
              v266 = &v579;
              v192 = v536;
            }

            else
            {
              v547 = v178;
              v260 = 0;
              do
              {
                v578 = *v258;
                if (!*v581)
                {
                  goto LABEL_491;
                }

                v262 = (*(**v581 + 48))(*v581, &v578);
                v263 = *(v258 + 1);
                v264 = *(v258 + 2);
                if (v263 == v264)
                {
                  v261 = v260;
                }

                else
                {
                  do
                  {
                    v265 = *v263++;
                    v261 = (v260 + 1);
                    *&v255[4 * v260 + v256] = *(v262 + 4 * v265);
                    LODWORD(v260) = v260 + 1;
                  }

                  while (v263 != v264);
                }

                v258 += 8;
                v260 = v261;
              }

              while (v258 != v259);
              v266 = *v581;
              if (*v581 != &v579)
              {
                v178 = v547;
                v192 = v536;
                v194 = v552;
                if (*v581)
                {
                  (*(**v581 + 40))();
                }

                goto LABEL_258;
              }

              v257 = **v581;
              v178 = v547;
              v192 = v536;
              v194 = v552;
            }

            v257[4](v266);
LABEL_258:
            v187 = a2;
          }

LABEL_259:
          v267 = *(v187 + 2392);
          memcpy(v193, *v267, *(v267 + 8) - *v267);
          if (*(v267 + 272) == 1)
          {
            v268.i64[0] = v564;
            v268.i64[1] = v564 >> 5;
            *&v193[*(v267 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v193[*(v267 + 276)], vshlq_u8(vqtbl1q_s8(v268, xmmword_29D2F17A0), xmmword_29D2F17B0));
          }

          v269 = a6;
          if (a5)
          {
            v270 = *(v267 + 224);
            for (k = *(v267 + 232); v270 != k; v270 += 3)
            {
              v272.i64[0] = *(a5 + 8 * v270[1]) + *v270;
              v272.i64[1] = v272.i64[0] >> 5;
              *&v193[v270[2]] = vbslq_s8(xmmword_29D2F17C0, *&v193[v270[2]], vshlq_u8(vqtbl1q_s8(v272, xmmword_29D2F17A0), xmmword_29D2F17B0));
            }
          }

          v273 = *(v267 + 248);
          for (m = *(v267 + 256); v273 != m; v273 += 3)
          {
            v275.i64[0] = *(v180 + 8 * v273[1]) + *v273;
            v275.i64[1] = v275.i64[0] >> 5;
            *&v193[v273[2]] = vbslq_s8(xmmword_29D2F17C0, *&v193[v273[2]], vshlq_u8(vqtbl1q_s8(v275, xmmword_29D2F17A0), xmmword_29D2F17B0));
          }

          if (!*(v267 + 312))
          {
            *&v193[*(v267 + 316)] = v192;
          }

          v276 = &v193[v194];
          v277 = *v566;
          v565 = &v193[v194];
          if (*v566)
          {
            v279 = *v267;
            v278 = *(v267 + 8);
            v280 = *(a2 + 2800);
            LODWORD(v281) = *(v277 + 2);
            v282 = v281 + 1;
            if (*(v277 + 3) >= (v281 + 1))
            {
              v285 = *v277;
            }

            else
            {
              v283 = -__clz(v281);
              v284 = malloc_type_malloc(40 << (v283 & 0x1F), 0x10800400D7C94D2uLL);
              v285 = v284;
              v286 = 1 << v283;
              v281 = *(v277 + 2);
              if (v281)
              {
                memcpy(v284, *v277, 40 * v281);
                free(*v277);
                LODWORD(v281) = *(v277 + 2);
              }

              v269 = a6;
              v276 = v565;
              *(v277 + 3) = v286;
              *v277 = v285;
            }

            v287 = &v285[40 * v281];
            *v287 = 4;
            *(v287 + 1) = v276;
            *(v287 + 2) = v193;
            *(v287 + 3) = (v278 - v279);
            *(v287 + 8) = v280;
            *(v277 + 2) = v282;
          }

          v288 = a1 + 24064;
          v289 = *(a3 + 624);
          if (v289)
          {
            v290 = (v178[18] + 31) & 0xFFFFFFFFFFFFFFE0;
            v291 = v290 + v178[20];
            v178[18] = v290 + v289;
          }

          else
          {
            v291 = 0;
            v290 = 0;
          }

          v292 = a3;
          v293 = ((v178[26] + 63) & 0xFFFFFFFFFFFFFFC0);
          v294 = v178[28];
          v178[26] = &v293[*(*(a3 + 2392) + 8) - **(a3 + 2392)];
          v295 = *(a3 + 1128);
          v296 = *(a3 + 1120);
          v297 = v295 - v296;
          v423 = v295 == v296;
          v298 = *(a3 + 1016);
          v299 = v298 & 1;
          if (v423)
          {
            v299 = 0;
          }

          v553 = v291;
          if (!v289)
          {
            goto LABEL_360;
          }

          v551 = v294;
          v300 = *(a3 + 1320);
          v301 = *(a3 + 656);
          v537 = *(a3 + 736);
          v544 = *(a3 + 660);
          v302 = *(a3 + 1024);
          v303 = *(a3 + 1028);
          v304 = v301 + ((*(a3 + 872) - *(a3 + 864)) >> 2);
          v305 = *(a3 + 1352);
          v306 = *(a3 + 1353);
          if (*(a3 + 1352))
          {
            *(a1 + 24248) = vaddw_u32(vdupq_n_s64(v291), *(a3 + 628));
          }

          v539 = v306;
          if (v306)
          {
            *(a1 + 24280) = v291 + *(a3 + 648);
          }

          v307 = 8 * v304;
          v308 = v299 + v298;
          if (v303 + v302)
          {
            *(a1 + 24344) = v307 + v291 + 4 * (v308 + ((v297 >> 1) & 0xFFFFFFFE));
          }

          v542 = v308;
          if (v301 == v300)
          {
            v309 = 0;
            v310 = v544;
            v311 = v297 >> 2;
            if (!v300)
            {
              goto LABEL_335;
            }

            goto LABEL_331;
          }

          if (v269)
          {
            v312 = *(a3 + 712);
            v313 = *(a3 + 720);
            if (v312 != v313)
            {
              v314 = v290;
              do
              {
                v315 = *v312++;
                *v314++ = *(v288 + 8 * v315);
              }

              while (v312 != v313);
            }

LABEL_310:
            if (*(a3 + 1160))
            {
              v326 = *(a3 + 1144);
              if (v326 != (a3 + 1152))
              {
                do
                {
                  *(v290 + 4 * *(v326 + 7)) |= *(v326 + 8);
                  v335 = v326[1];
                  if (v335)
                  {
                    do
                    {
                      v336 = v335;
                      v335 = *v335;
                    }

                    while (v335);
                  }

                  else
                  {
                    do
                    {
                      v336 = v326[2];
                      v423 = *v336 == v326;
                      v326 = v336;
                    }

                    while (!v423);
                  }

                  v326 = v336;
                }

                while (v336 != (a3 + 1152));
              }
            }

            v327 = (v537 + 3) & 0xFFFFFFFC;
            if (v305)
            {
              v328 = *(a3 + 1312);
              if (v328 >= 4)
              {
                v329 = v328 >> 2;
                v330 = *(a3 + 752);
                v331 = (v290 + 8 * v327);
                do
                {
                  v332 = *v330;
                  v330 += 4;
                  v333 = (v269 + 496 + 8 * v332);
                  v334 = v333[1];
                  *v331 = *v333;
                  v331[1] = v334;
                  v331 += 2;
                  --v329;
                }

                while (v329);
              }

              v327 += v328;
            }

            else
            {
              v328 = 0;
            }

            v310 = v544;
            if (v539)
            {
              v337 = *(a3 + 1316);
              v338 = (v290 + 8 * v327);
              v339 = v269 + 16880;
              if (*(a3 + 2192) == 1)
              {
                if (v337)
                {
                  v524 = (*(a3 + 752) + 4 * v328);
                  do
                  {
                    v525 = *v524++;
                    *v338++ = *(v339 + 8 * v525);
                    --v337;
                  }

                  while (v337);
                }
              }

              else if (v337 >= 4)
              {
                v340 = v337 >> 2;
                v341 = (*(a3 + 752) + 4 * v328);
                do
                {
                  v342 = *v341;
                  v341 += 4;
                  *v338 = *(v339 + 8 * v342);
                  v338 += 4;
                  --v340;
                }

                while (v340);
              }
            }

            v309 = 8 * (v301 - v300);
            v311 = v297 >> 2;
            if (!v300)
            {
LABEL_335:
              v294 = v551;
              if (v310)
              {
                *(a1 + 24080) = v291 + v309 + 8;
                v347 = *(a3 + 824);
                v348 = *(a3 + 832);
                if (v347 != v348)
                {
                  v349 = (v290 + v309);
                  do
                  {
                    v350 = *v347++;
                    *v349++ = *(v288 + 4 * v350);
                  }

                  while (v347 != v348);
                }

                v309 += 4 * v310;
              }

              if (v311)
              {
                v351 = v307 + 4 * v542;
                v352 = (v290 + (v351 & 0xFFFFFFFC));
                v353 = *(a3 + 1120);
                do
                {
                  v354 = *v353++;
                  *v352++ = *(v269 + 16880 + 8 * v354);
                  LODWORD(v311) = v311 - 1;
                }

                while (v311);
                v309 = v351 + 8 * (v297 >> 2);
              }

              v292 = a3;
              if (v303 == -v302)
              {
                goto LABEL_360;
              }

              v355 = (v290 + v309);
              v356 = 4 * *(a3 + 1024);
              v357 = v269;
              memcpy(v355, (v269 + 4 * *(a3 + 1020)), v356);
              v583 = v357;
              v577 = a1 + 24064;
              v358 = &unk_2A23F9B60;
              *&v579 = &unk_2A23F9B60;
              *(&v579 + 1) = &v577;
              v580 = &v583;
              *v581 = &v579;
              v359 = *(a3 + 1056);
              v360 = *(a3 + 1064);
              if (v359 == v360)
              {
                v369 = &v579;
              }

              else
              {
                v361 = v178;
                v362 = 0;
                v363 = &v355[v356];
                do
                {
                  v578 = *v359;
                  if (!*v581)
                  {
                    goto LABEL_491;
                  }

                  v365 = (*(**v581 + 48))(*v581, &v578);
                  v366 = *(v359 + 1);
                  v367 = *(v359 + 2);
                  if (v366 == v367)
                  {
                    v364 = v362;
                  }

                  else
                  {
                    do
                    {
                      v368 = *v366++;
                      v364 = (v362 + 1);
                      *&v363[4 * v362] = *(v365 + 4 * v368);
                      LODWORD(v362) = v362 + 1;
                    }

                    while (v366 != v367);
                  }

                  v359 += 8;
                  v362 = v364;
                }

                while (v359 != v360);
                v369 = *v581;
                if (*v581 != &v579)
                {
                  v178 = v361;
                  v294 = v551;
                  if (*v581)
                  {
                    (*(**v581 + 40))();
                  }

                  goto LABEL_359;
                }

                v358 = **v581;
                v178 = v361;
                v294 = v551;
              }

              v358[4](v369);
LABEL_359:
              v292 = a3;
LABEL_360:
              v370 = *(v292 + 2392);
              memcpy(v293, *v370, *(v370 + 8) - *v370);
              if (*(v370 + 272) == 1)
              {
                v371.i64[0] = v553;
                v371.i64[1] = v553 >> 5;
                *&v293[*(v370 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v293[*(v370 + 276)], vshlq_u8(vqtbl1q_s8(v371, xmmword_29D2F17A0), xmmword_29D2F17B0));
              }

              if (a6)
              {
                v372 = *(v370 + 224);
                for (n = *(v370 + 232); v372 != n; v372 += 3)
                {
                  v374.i64[0] = *(a6 + 8 * v372[1]) + *v372;
                  v374.i64[1] = v374.i64[0] >> 5;
                  *&v293[v372[2]] = vbslq_s8(xmmword_29D2F17C0, *&v293[v372[2]], vshlq_u8(vqtbl1q_s8(v374, xmmword_29D2F17A0), xmmword_29D2F17B0));
                }
              }

              v375 = *(v370 + 248);
              for (ii = *(v370 + 256); v375 != ii; v375 += 3)
              {
                v377.i64[0] = *(v288 + 8 * v375[1]) + *v375;
                v377.i64[1] = v377.i64[0] >> 5;
                *&v293[v375[2]] = vbslq_s8(xmmword_29D2F17C0, *&v293[v375[2]], vshlq_u8(vqtbl1q_s8(v377, xmmword_29D2F17A0), xmmword_29D2F17B0));
              }

              v378 = &v293[v294];
              v379 = *v566;
              if (*v566)
              {
                v380 = *v370;
                v381 = *(v370 + 8);
                v382 = *(a3 + 2800);
                LODWORD(v383) = *(v379 + 2);
                v384 = v383 + 1;
                if (*(v379 + 3) >= (v383 + 1))
                {
                  v387 = *v379;
                }

                else
                {
                  v549 = v178;
                  v385 = -__clz(v383);
                  v386 = malloc_type_malloc(40 << (v385 & 0x1F), 0x10800400D7C94D2uLL);
                  v387 = v386;
                  v388 = 1 << v385;
                  v383 = *(v379 + 2);
                  if (v383)
                  {
                    memcpy(v386, *v379, 40 * v383);
                    free(*v379);
                    LODWORD(v383) = *(v379 + 2);
                  }

                  *(v379 + 3) = v388;
                  *v379 = v387;
                  v178 = v549;
                }

                v389 = &v387[40 * v383];
                *v389 = 6;
                *(v389 + 1) = v378;
                *(v389 + 2) = v293;
                *(v389 + 3) = (v381 - v380);
                *(v389 + 8) = v382;
                *(v379 + 2) = v384;
              }

              v390 = *(a2 + 3732);
              v391 = *(a2 + 3724);
              v392 = *(a3 + 3728);
              v393 = *(a3 + 3740);
              v394 = *(a3 + 3748);
              v177 = *(a3 + 3756);
              v395 = *(v557 + 908);
              if (v554)
              {
                v396 = 0;
              }

              else
              {
                v396 = 32;
              }

              v397 = *(a3 + 3732) & 0xFFFFFFDF | v396;
              v398 = *(a3 + 3736) & 0xFFF0000 | *(a2 + 3720) & 0xFFF;
              if (v395)
              {
                v390 = v390 & 0xFFFFFF80 | ((v395 + 1023) >> 10) & 0x7F;
              }

              LOBYTE(v167) = v555;
              v399 = *(a1 + 24732);
              v400 = v178[6];
              v400->i32[0] = 1073745196;
              v400->i32[1] = v392;
              v400[1].i32[0] = v397;
              v400[1].i32[1] = (v399 - 1) & 7;
              v400[2].i32[0] = v398;
              v400[2].i32[1] = (v565 >> 16) & 0xFFC00000 | v391 & 0x3FFFFF;
              v400[3].i32[0] = v565 >> 6;
              v400[3].i32[1] = (v378 >> 16) & 0xFFC00000 | v393 & 0x3FFFFF;
              v400[4].i32[0] = v378 >> 6;
              v400[4].i32[1] = v390;
              v400[5].i32[0] = v394;
              v400[5].i32[1] = (v558 >> 21) & 0x3FF800 | v558 & 0x7FF | (v559 << 22);
              v400[6] = v177;
              v178[6] = v400 + 7;
              goto LABEL_380;
            }

LABEL_331:
            if (v300 >= 4)
            {
              v343 = *(a3 + 2920);
              v344 = v300 >> 2;
              v345 = (v290 + v309);
              do
              {
                v346 = *v343;
                v343 += 4;
                *v345 = v346;
                v345 += 4;
                --v344;
              }

              while (v344);
            }

            v309 += 8 * v300;
            goto LABEL_335;
          }

          v528 = 8 * v304;
          v530 = v302;
          v532 = v303;
          v583 = a1 + 24064;
          v316 = &unk_2A23F9AD0;
          *&v579 = &unk_2A23F9AD0;
          *(&v579 + 1) = &v583;
          *v581 = &v579;
          v317 = *(a3 + 688);
          v318 = *(a3 + 696);
          v534 = v297;
          if (v317 == v318)
          {
            v325 = &v579;
            v291 = v553;
            LODWORD(v307) = 8 * v304;
          }

          else
          {
            v548 = v178;
            v319 = 0;
            do
            {
              LODWORD(v577) = *v317;
              if (!*v581)
              {
                goto LABEL_491;
              }

              v321 = (*(**v581 + 48))(*v581, &v577);
              v322 = *(v317 + 8);
              v323 = *(v317 + 16);
              if (v322 == v323)
              {
                v320 = v319;
              }

              else
              {
                do
                {
                  v324 = *v322++;
                  v320 = (v319 + 1);
                  *(v290 + 8 * v319) = *(v321 + 8 * v324);
                  LODWORD(v319) = v319 + 1;
                }

                while (v322 != v323);
              }

              v317 += 32;
              v319 = v320;
            }

            while (v317 != v318);
            v325 = *v581;
            if (*v581 != &v579)
            {
              v178 = v548;
              v291 = v553;
              LODWORD(v307) = v528;
              if (*v581)
              {
                (*(**v581 + 40))();
              }

              goto LABEL_309;
            }

            v316 = **v581;
            v178 = v548;
            v291 = v553;
            LODWORD(v307) = v528;
          }

          v316[4](v325);
LABEL_309:
          v269 = a6;
          v297 = v534;
          v302 = v530;
          v303 = v532;
          goto LABEL_310;
        }

LABEL_230:
        if (v200 >= 4)
        {
          v243 = *(a2 + 2920);
          v244 = v200 >> 2;
          v245 = (v189 + v209);
          do
          {
            v246 = *v243;
            v243 += 4;
            *v245 = v246;
            v245 += 4;
            --v244;
          }

          while (v244);
        }

        v209 += 8 * v200;
        goto LABEL_234;
      }

      v527 = 8 * v204;
      v529 = v202;
      v531 = v203;
      v533 = v197;
      v535 = v192;
      v583 = a1 + 88;
      v216 = &unk_2A23F9A88;
      *&v579 = &unk_2A23F9A88;
      *(&v579 + 1) = &v583;
      *v581 = &v579;
      v217 = *(a2 + 688);
      v218 = *(a2 + 696);
      if (v217 == v218)
      {
        v225 = &v579;
        v192 = v535;
        LODWORD(v207) = 8 * v204;
      }

      else
      {
        v546 = v178;
        v219 = 0;
        do
        {
          LODWORD(v577) = *v217;
          if (!*v581)
          {
LABEL_491:
            std::__throw_bad_function_call[abi:nn200100]();
          }

          v221 = (*(**v581 + 48))(*v581, &v577);
          v222 = *(v217 + 8);
          v223 = *(v217 + 16);
          if (v222 == v223)
          {
            v220 = v219;
          }

          else
          {
            do
            {
              v224 = *v222++;
              v220 = (v219 + 1);
              *(v189 + 8 * v219) = *(v221 + 8 * v224);
              LODWORD(v219) = v219 + 1;
            }

            while (v222 != v223);
          }

          v217 += 32;
          v219 = v220;
        }

        while (v217 != v218);
        v225 = *v581;
        if (*v581 != &v579)
        {
          v178 = v546;
          v192 = v535;
          LODWORD(v207) = v527;
          if (*v581)
          {
            (*(**v581 + 40))();
          }

          goto LABEL_208;
        }

        v216 = **v581;
        v178 = v546;
        v192 = v535;
        LODWORD(v207) = v527;
      }

      v216[4](v225);
LABEL_208:
      v190 = v564;
      v197 = v533;
      v202 = v529;
      v203 = v531;
      goto LABEL_209;
    }
  }

LABEL_380:
  if ((v167 & 0x20) != 0)
  {
    v401 = v178[6];
    *v401 = *(a3 + 3912);
    v178[6] = v401 + 1;
  }

  v402 = v575;
  AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantAndArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::FragmentDriverArgumentTable<AGX::HAL300::Classes>>>(*(a1 + 16), *(a1 + 24), a4, *(*(a1 + 8) + 30352), a7, (*(a1 + 8) + 54160), v575, *(*(a1 + 8) + 30072), v177, *(*(a1 + 8) + 30076));
  if ((v402 & 4) != 0)
  {
    v409 = *(a1 + 8);
    v410 = *(a3 + 3880);
    v411 = *(a3 + 3888);
    v412 = HIDWORD(v410);
    LODWORD(v410) = *(v409 + 28688) & 0xF0E3FF00 | v410 & 0xF1C00FF;
    *(v409 + 28696) = *(v409 + 28696) & 0xFFFFFFF8 | (*(v409 + 30080) - 1) & 7;
    *(v409 + 28700) = v412;
    *(v409 + 28688) = v410;
    *(v409 + 28692) = v411;
    *(v409 + 78480) |= 4uLL;
    v413 = *(a1 + 24);
    LODWORD(v410) = *(*(a1 + 8) + 28700);
    v414 = *(*(a1 + 8) + 28684);
    v415 = v413[126];
    v416 = v413[128] + v415;
    v413[126] = v415 + 20;
    *v415 = v414;
    *(v415 + 16) = v410;
    v417 = v413[6];
    *v417 = __ROR8__(v416, 32) & 0xFFFFFFFC000000FFLL | 0x500;
    v413[6] = v417 + 1;
    if ((v402 & 0x100000000000) == 0)
    {
LABEL_384:
      if ((v402 & 0x1000000000000) == 0)
      {
        goto LABEL_385;
      }

      goto LABEL_419;
    }
  }

  else if ((v402 & 0x100000000000) == 0)
  {
    goto LABEL_384;
  }

  if (a14)
  {
    v418 = atomic_load((*(*(*(a1 + 8) + 1872) + 848) + 17017));
    if ((v418 & 1) == 0)
    {
      goto LABEL_398;
    }
  }

  else if (!a4 || *(a4 + 1354) != 1)
  {
    goto LABEL_398;
  }

  v419 = *(a1 + 8);
  if ((*(v419 + 28647) & 7) == 0)
  {
    *(*(v419 + 30328) + 1168) |= 0x10000uLL;
  }

LABEL_398:
  v420 = *(a1 + 8);
  v421 = (v420 + 28644);
  v422 = vand_s8(*(v420 + 28644), vdup_n_s32(0xFFFC00FF));
  v423 = *(v420 + 30040) == 2;
  v424 = 351;
  if (v423)
  {
    v424 = 352;
  }

  v425 = 256.0;
  if (v423)
  {
    v425 = 1023.5;
  }

  v426 = *&v421->i32[v424] * 16.0;
  if (v426 <= v425)
  {
    v425 = *&v421->i32[v424] * 16.0;
  }

  v427 = v425;
  if (v426 < 0.0)
  {
    v427 = 0;
  }

  if (v427)
  {
    v428 = ((v427 << 8) + 261888) & 0x3FF00;
  }

  else
  {
    v428 = 0;
  }

  *v421 = vorr_s8(v422, vdup_n_s32(v428));
  v429 = *(a1 + 24);
  v430 = *(a1 + 8);
  v431 = *(v430 + 28636);
  v432 = *(v430 + 28640);
  v579 = *(v430 + 28644);
  LODWORD(v580) = *(v430 + 28660);
  v433 = *(v430 + 28664);
  v434 = *(v430 + 28668);
  v583 = *(v430 + 28672);
  v584 = *(v430 + 28680);
  v435 = *(v430 + 30066);
  if (a14)
  {
    v436 = 0x10000000;
  }

  else
  {
    v436 = 0;
  }

  v437 = v432 & 0xEBFFFFFF | v436;
  if (v435 & 1 | ((v432 & 0x4000000) != 0))
  {
    v438 = 0x4000000;
  }

  else
  {
    v438 = 0;
  }

  v439 = v438 | v437;
  v440 = v429[126];
  v441 = v429[128] + v440;
  v429[126] = v440 + 28;
  *v440 = v431;
  *(v440 + 4) = v439;
  *(v440 + 24) = v580;
  *(v440 + 8) = v579;
  v442 = v429[6];
  *v442 = __ROR8__(v441, 32) & 0xFFFFFFFC000000FFLL | 0x700;
  v429[6] = v442 + 1;
  if ((v435 | ((v434 & 0x4000000u) >> 26)))
  {
    v443 = 0x4000000;
  }

  else
  {
    v443 = 0;
  }

  v444 = v429[126];
  v445 = v429[128] + v444;
  v429[126] = v444 + 20;
  *v444 = v433;
  *(v444 + 4) = v443 | v434 & 0xFBFFFFFF;
  *(v444 + 8) = v583;
  *(v444 + 16) = v584;
  v446 = v429[6];
  *v446 = __ROR8__(v445, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v429[6] = v446 + 1;
  v402 = v575;
  if ((v575 & 0x1000000000000) == 0)
  {
LABEL_385:
    if ((v402 & 0x2000000000000) == 0)
    {
      goto LABEL_386;
    }

    goto LABEL_431;
  }

LABEL_419:
  v447 = 0;
  v448 = *(a1 + 24);
  v449 = *(a1 + 8);
  v450 = ((*(v449 + 28068) >> 11) & 0x78) + 10;
  v451 = v448[126];
  v452 = v448[128];
  v448[126] = v451 + 4 * v450;
  v453 = *(v449 + 28068);
  v454 = (v453 >> 14) & 0xF;
  *v451 = v453;
  v455 = (v451 + 4);
  v456 = v454 + 1;
  if (v454 < 3 || (v451 - (v449 + 28068)) <= 0x1F)
  {
    goto LABEL_426;
  }

  v447 = v456 & 0x1C;
  v457 = *(v449 + 28088);
  v455 += v447;
  *(v451 + 4) = *(v449 + 28072);
  *(v451 + 20) = v457;
  if (v447 != 4)
  {
    v458 = *(v449 + 28120);
    *(v451 + 36) = *(v449 + 28104);
    *(v451 + 52) = v458;
    if (v447 != 8)
    {
      v459 = *(v449 + 28152);
      *(v451 + 68) = *(v449 + 28136);
      *(v451 + 84) = v459;
      if (v447 != 12)
      {
        v460 = *(v449 + 28184);
        *(v451 + 100) = *(v449 + 28168);
        *(v451 + 116) = v460;
      }
    }
  }

  if (v447 != v456)
  {
LABEL_426:
    v461 = ((v453 >> 14) & 0xF) - v447 + 1;
    v462 = (v449 + 8 * v447 + 28072);
    do
    {
      v463 = *v462++;
      *v455++ = v463;
      --v461;
    }

    while (v461);
  }

  v464 = v452 + v451;
  v465 = v455 + 4;
  *v455 = *(v449 + 28200);
  v466 = (v449 + 28204);
  do
  {
    v467 = *v466;
    *(v465 + 2) = *(v466 + 2);
    *v465 = v467;
    v465 += 24;
    v466 = (v466 + 24);
    --v456;
  }

  while (v456);
  v468 = v448[6];
  *v468 = BYTE4(v464) | (v450 << 8) | ((v464 >> 2) << 34);
  v448[6] = v468 + 1;
  if ((v402 & 0x2000000000000) == 0)
  {
LABEL_386:
    if ((v402 & 0x4000000000000) == 0)
    {
      goto LABEL_387;
    }

    goto LABEL_435;
  }

LABEL_431:
  v469 = *(a1 + 24);
  v470 = *(a1 + 8);
  v471 = *(v470 + 28628);
  v472 = *(v470 + 30352);
  if (v472)
  {
    v473 = *(v472 + 820);
    v474 = *(v472 + 828);
  }

  else
  {
    v473 = 8650754;
    v474 = 128;
  }

  v475 = v469[126];
  v476 = v469[128] + v475;
  v469[126] = v475 + 12;
  *v475 = v473;
  *(v475 + 8) = v474;
  v477 = v469[6];
  *v477 = __ROR8__(v476, 32) & 0xFFFFFFFC000000FFLL | 0x300;
  v469[6] = v477 + 1;
  v478 = v469[126];
  v479 = v478 + v469[128];
  v469[126] = v478 + 1;
  *v478 = v471;
  v480 = v469[6];
  *v480 = __ROR8__(v479, 32) & 0xFFFFFFFC000000FFLL | 0x200;
  v469[6] = v480 + 1;
  if ((v402 & 0x4000000000000) == 0)
  {
LABEL_387:
    if ((v402 & 0x8000000000000) == 0)
    {
      return;
    }

    goto LABEL_388;
  }

LABEL_435:
  v481 = *(a1 + 24);
  v482 = *(*(a1 + 8) + 28604);
  v483 = *(*(a1 + 8) + 28588);
  v484 = v481[42];
  v485 = v481[44] + v484;
  v481[42] = v484 + 20;
  *v484 = v483;
  *(v484 + 16) = v482;
  v486 = v481[6];
  *v486 = __ROR8__(v485, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v481[6] = v486 + 1;
  if ((v402 & 0x8000000000000) != 0)
  {
LABEL_388:
    v403 = *(a1 + 24);
    v404 = *(a1 + 8);
    v405 = *(v404 + 28616);
    LODWORD(v404) = *(v404 + 28624);
    v406 = v403[126];
    v407 = v403[128] + v406;
    v403[126] = v406 + 12;
    *v406 = v405;
    *(v406 + 8) = v404;
    v408 = v403[6];
    *v408 = __ROR8__(v407, 32) & 0xFFFFFFFC000000FFLL | 0x300;
    v403[6] = v408 + 1;
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitDepthRanges(uint64_t result, uint64_t a2)
{
  v2 = (result + 73040);
  if ((a2 & 0x80000000000000) == 0 && *(*v2 + 80))
  {
    return result;
  }

  v3 = *(result + 200);
  v4 = v3 + 132;
  if ((v3 + 132) > *(result + 192))
  {
    v80 = result;
    v79 = AGX::DataBufferAllocator<44ul>::growNoInline(result + 24, 4, 0);
    result = v80;
    v3 = *(v80 + 200);
    if (!v79)
    {
      goto LABEL_5;
    }

    v4 = v3 + 132;
    if ((v3 + 132) > *(v80 + 192))
    {
      abort();
    }
  }

  *(result + 208) = v4;
LABEL_5:
  v5 = *(result + 216) + v3;
  *(result + 200) = v3 + 132;
  *v3 = *(result + 29508);
  if (*(result + 30056))
  {
    v6 = 29796;
    v7 = 29540;
    if (!*(result + 29516))
    {
      v7 = 29796;
    }

    v8 = (result + v7);
    v9 = *v8;
    v10 = v8[1];
    if (*(result + 29516))
    {
      v11 = 29548;
    }

    else
    {
      v11 = 29796;
    }

    if (*(result + 29516))
    {
      v12 = 29556;
    }

    else
    {
      v12 = 29796;
    }

    if (*(result + 29516))
    {
      v13 = 29564;
    }

    else
    {
      v13 = 29796;
    }

    if (*(result + 29516))
    {
      v14 = 29572;
    }

    else
    {
      v14 = 29796;
    }

    if (*(result + 29516))
    {
      v15 = 29580;
    }

    else
    {
      v15 = 29796;
    }

    if (*(result + 29516))
    {
      v16 = 29588;
    }

    else
    {
      v16 = 29796;
    }

    if (*(result + 29516))
    {
      v17 = 29596;
    }

    else
    {
      v17 = 29796;
    }

    v18 = 29604;
    if (!*(result + 29516))
    {
      v18 = 29796;
    }

    if (v9 >= v10)
    {
      v19 = v9;
    }

    else
    {
      v19 = v10;
    }

    if (v9 >= v10)
    {
      v9 = v10;
    }

    *(v3 + 4) = v9;
    *(v3 + 8) = v19;
    v20 = (result + v11);
    v21 = *v20;
    v22 = v20[1];
    if (*v20 >= v22)
    {
      v23 = *v20;
    }

    else
    {
      v23 = v20[1];
    }

    if (*v20 >= v22)
    {
      v21 = v20[1];
    }

    *(v3 + 12) = v21;
    *(v3 + 16) = v23;
    v24 = *(result + v12);
    v25 = *(result + v12 + 4);
    if (v24 >= v25)
    {
      v26 = *(result + v12);
    }

    else
    {
      v26 = *(result + v12 + 4);
    }

    if (v24 >= v25)
    {
      v24 = *(result + v12 + 4);
    }

    *(v3 + 20) = v24;
    *(v3 + 24) = v26;
    v27 = *(result + v13);
    v28 = *(result + v13 + 4);
    if (v27 >= v28)
    {
      v29 = *(result + v13);
    }

    else
    {
      v29 = *(result + v13 + 4);
    }

    if (v27 >= v28)
    {
      v27 = *(result + v13 + 4);
    }

    *(v3 + 28) = v27;
    *(v3 + 32) = v29;
    v30 = *(result + v14);
    v31 = *(result + v14 + 4);
    if (v30 >= v31)
    {
      v32 = *(result + v14);
    }

    else
    {
      v32 = *(result + v14 + 4);
    }

    if (v30 >= v31)
    {
      v30 = *(result + v14 + 4);
    }

    *(v3 + 36) = v30;
    *(v3 + 40) = v32;
    v33 = *(result + v15);
    v34 = *(result + v15 + 4);
    if (v33 >= v34)
    {
      v35 = *(result + v15);
    }

    else
    {
      v35 = *(result + v15 + 4);
    }

    if (v33 >= v34)
    {
      v33 = *(result + v15 + 4);
    }

    *(v3 + 44) = v33;
    *(v3 + 48) = v35;
    v36 = *(result + v16);
    v37 = *(result + v16 + 4);
    if (v36 >= v37)
    {
      v38 = *(result + v16);
    }

    else
    {
      v38 = *(result + v16 + 4);
    }

    if (v36 >= v37)
    {
      v36 = *(result + v16 + 4);
    }

    *(v3 + 52) = v36;
    *(v3 + 56) = v38;
    v39 = *(result + v17);
    v40 = *(result + v17 + 4);
    if (v39 >= v40)
    {
      v41 = *(result + v17);
    }

    else
    {
      v41 = *(result + v17 + 4);
    }

    if (v39 >= v40)
    {
      v39 = *(result + v17 + 4);
    }

    *(v3 + 60) = v39;
    *(v3 + 64) = v41;
    v42 = (result + v18);
    v43 = *v42;
    v44 = v42[1];
    if (*v42 >= v44)
    {
      v45 = *v42;
    }

    else
    {
      v45 = v42[1];
    }

    if (*v42 >= v44)
    {
      v43 = v42[1];
    }

    *(v3 + 68) = v43;
    *(v3 + 72) = v45;
    v46 = 29612;
    if (!*(result + 29516))
    {
      v46 = 29796;
    }

    v47 = (result + v46);
    v48 = *v47;
    v49 = v47[1];
    v50 = 29620;
    if (!*(result + 29516))
    {
      v50 = 29796;
    }

    v51 = 29628;
    if (!*(result + 29516))
    {
      v51 = 29796;
    }

    v52 = 29636;
    if (!*(result + 29516))
    {
      v52 = 29796;
    }

    v53 = 29644;
    if (!*(result + 29516))
    {
      v53 = 29796;
    }

    v54 = 29652;
    if (*(result + 29516))
    {
      v6 = 29660;
    }

    else
    {
      v54 = 29796;
    }

    if (v48 >= v49)
    {
      v55 = v48;
    }

    else
    {
      v55 = v49;
    }

    if (v48 >= v49)
    {
      v48 = v49;
    }

    *(v3 + 76) = v48;
    *(v3 + 80) = v55;
    v56 = (result + v50);
    v57 = *v56;
    v58 = v56[1];
    if (*v56 >= v58)
    {
      v59 = *v56;
    }

    else
    {
      v59 = v56[1];
    }

    if (*v56 >= v58)
    {
      v57 = v56[1];
    }

    *(v3 + 84) = v57;
    *(v3 + 88) = v59;
    v60 = *(result + v51);
    v61 = *(result + v51 + 4);
    if (v60 >= v61)
    {
      v62 = *(result + v51);
    }

    else
    {
      v62 = *(result + v51 + 4);
    }

    if (v60 >= v61)
    {
      v60 = *(result + v51 + 4);
    }

    *(v3 + 92) = v60;
    *(v3 + 96) = v62;
    v63 = *(result + v52);
    v64 = *(result + v52 + 4);
    if (v63 >= v64)
    {
      v65 = *(result + v52);
    }

    else
    {
      v65 = *(result + v52 + 4);
    }

    if (v63 >= v64)
    {
      v63 = *(result + v52 + 4);
    }

    *(v3 + 100) = v63;
    *(v3 + 104) = v65;
    v66 = *(result + v53);
    v67 = *(result + v53 + 4);
    if (v66 >= v67)
    {
      v68 = *(result + v53);
    }

    else
    {
      v68 = *(result + v53 + 4);
    }

    if (v66 >= v67)
    {
      v66 = *(result + v53 + 4);
    }

    *(v3 + 108) = v66;
    *(v3 + 112) = v68;
    v69 = *(result + v54);
    v70 = *(result + v54 + 4);
    if (v69 >= v70)
    {
      v71 = *(result + v54);
    }

    else
    {
      v71 = *(result + v54 + 4);
    }

    if (v69 >= v70)
    {
      v69 = *(result + v54 + 4);
    }

    *(v3 + 116) = v69;
    *(v3 + 120) = v71;
    v72 = (result + v6);
    v73 = *v72;
    v74 = v72[1];
    if (*v72 >= v74)
    {
      v75 = *v72;
    }

    else
    {
      v75 = v72[1];
    }

    if (*v72 >= v74)
    {
      v73 = v72[1];
    }

    *(v3 + 124) = v73;
    *(v3 + 128) = v75;
  }

  else
  {
    *&v76 = -1;
    *(&v76 + 1) = -1;
    *(v3 + 100) = v76;
    *(v3 + 116) = v76;
    *(v3 + 68) = v76;
    *(v3 + 84) = v76;
    *(v3 + 36) = v76;
    *(v3 + 52) = v76;
    *(v3 + 4) = v76;
    *(v3 + 20) = v76;
  }

  v77 = *(*(result + 48) + 288) + *MEMORY[0x29EDC5638];
  v78 = *v2;
  *(v78 + 80) = v5;
  *(v78 + 392) = 0;
  v2[36] = v77;
  return result;
}

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectBufferResource(uint64_t result, uint64_t a2, int a3, int a4)
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
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | ((a2 - 47) < 2)) || *(result + 8 * a2 + 19008))
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
      v7 = *(result + 19008 + 8 * a2);
      if (v7)
      {
        v8 = result;
        v9 = a2;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 6u, a2, v6);
        result = IOGPUResourceListAddResource();
        if (v9 > 0x22)
        {
          return result;
        }

        v11 = *(v8 + 22640 + 8 * v9);
        if (!v11)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(*(v8 + 8) + 2008), v11, v6, v10);
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

uint64_t AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshBufferResource(uint64_t result, uint64_t a2, int a3, int a4)
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
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | ((a2 - 47) < 2)) || *(result + 8 * a2 + 42712))
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
      v7 = *(result + 42712 + 8 * a2);
      if (v7)
      {
        v8 = result;
        v9 = a2;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(result + 8) + 2008), v7, 7u, a2, v6);
        result = IOGPUResourceListAddResource();
        if (v9 > 0x22)
        {
          return result;
        }

        v11 = *(v8 + 46344 + 8 * v9);
        if (!v11)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(*(v8 + 8) + 2008), v11, v6, v10);
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

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindObjectTextureResources(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = 3 * a2;
  v6 = a1 + 19568;
  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(a1 + 8) + 2008), *(a1 + 19568 + 8 * (3 * a2)), 8u, a2, v4);
  if (*(a1 + 19568 + 8 * v5))
  {
    IOGPUResourceListAddResource();
    if (*(v6 + 8 * (v5 + 1)))
    {
      IOGPUResourceListAddResource();
    }

    if (*(v6 + 8 * (v5 + 2)))
    {

      IOGPUResourceListAddResource();
    }
  }
}

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindMeshTextureResources(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = 3 * a2;
  v6 = a1 + 43272;
  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(*(a1 + 8) + 2008), *(a1 + 43272 + 8 * (3 * a2)), 9u, a2, v4);
  if (*(a1 + 43272 + 8 * v5))
  {
    IOGPUResourceListAddResource();
    if (*(v6 + 8 * (v5 + 1)))
    {
      IOGPUResourceListAddResource();
    }

    if (*(v6 + 8 * (v5 + 2)))
    {

      IOGPUResourceListAddResource();
    }
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(uint64_t result, uint64_t a2, int a3, int a4)
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
  if (!(v4 | vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(a2), xmmword_29D2F24B0))) & 1 | (a2 == 62) | ((a2 - 47) < 2)) || *(result + 8 * a2 + 73048))
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
      v7 = *(result + 73048 + 8 * a2);
      if (v7)
      {
        v8 = result;
        v9 = a2;
        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(result + 2008), v7, 1u, a2, v6);
        result = IOGPUResourceListAddResource();
        if (v9 > 0x22)
        {
          return result;
        }

        v11 = *(v8 + 77800 + 8 * v9);
        if (!v11)
        {
          return result;
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), v11, v6, v10);
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

void AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::reserveDispatchMeshDatabufferSpace(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    v30 = 16 * *(v29 + 29508);
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
        *(*(v29 + 30328) + 944) = *(*(v29 + 48) + 512) + *(*(v29 + 48) + 536) - *(*(v29 + 48) + 520);
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

        *(v32[3791] + 952) = *(v32[6] + 448) + *(v32[6] + 472) - *(v32[6] + 456);
      }
    }

    else
    {
      v32[38] = v34;
    }
  }
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDeviceScissorBufferReserve(uint64_t result, unint64_t *a2, _DWORD *a3, uint64_t *a4, _BYTE *a5, _BYTE *a6, uint64_t *a7, double a8, double a9, float a10, float a11, float a12, __n128 a13)
{
  *a3 = -1;
  *a4 = 4123088130;
  *a5 = 0;
  if (*(*(*(result + 1872) + 848) + 6242) == 1)
  {
    v13 = *a2;
    if ((*a2 & 0x200000000000) != 0)
    {
      v14 = result + 28672;
      v15 = *(result + 29536);
      v16 = result;
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions(result + 28712, a2, a8, a9, a10, a11, a12, a13);
      *a5 = result;
      if ((*(v14 + 834) & 1) == 0)
      {
        if (result | (v13 >> 54) & 1 & (v15 ^ 1u))
        {
          result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg(v16 + 28712);
          if ((result & 1) == 0)
          {
            result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip(v16 + 28712);
            if (result)
            {
              v25 = 0;
              v24 = 0;
              result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(*(*(v16 + 1872) + 848), v16 + 28712, 0, *(*(v16 + 30328) + 944), &v25, &v24 + 1, &v24);
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

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::restartRenderPass(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = *(*(a1 + 1912) + 520) == 0;
  v8 = *(a1 + 1872);
  v9 = *(v8 + 848);
  if (*(v9 + 6242) == 1)
  {
    os_unfair_lock_lock((v9 + 16824));
    LODWORD(v10) = *(v9 + 16864);
    os_unfair_lock_unlock((v9 + 16824));
    v8 = *(a1 + 1872);
  }

  else
  {
    v10 = (*(a1 + 328) - *(*(a1 + 48) + 536)) >> 4;
  }

  if (v10 <= 0xFFFE)
  {
    v12 = *(v8 + 848);
    if (*(v12 + 6242) == 1)
    {
      os_unfair_lock_lock((v12 + 16824));
      v13 = *(v12 + 16864);
      os_unfair_lock_unlock((v12 + 16824));
      v14 = v13 > 0xFFFE;
      v8 = *(a1 + 1872);
    }

    else
    {
      v14 = *(a1 + 320) - *(a1 + 328) < 0x10uLL;
    }

    if (v14)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 2;
  }

  v15 = *(v8 + 848);
  if (*(v15 + 6241) == 1)
  {
    os_unfair_lock_lock((v15 + 16784));
    v16 = *(v15 + 16808);
    os_unfair_lock_unlock((v15 + 16784));
  }

  else
  {
    v17 = *(a1 + 296);
    if (!v17)
    {
      AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7);
      v17 = *(a1 + 296);
      if (!v17)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7);
        v17 = 0;
      }
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *(*(a1 + 48) + 472)) >> 2);
  }

  v18 = *(a1 + 1872);
  if (v16 <= 0xFFFE)
  {
    v20 = *(v18 + 848);
    if (*(v20 + 6241) == 1)
    {
      os_unfair_lock_lock((v20 + 16784));
      v21 = *(v20 + 16808);
      os_unfair_lock_unlock((v20 + 16784));
      v22 = v21 > 0xFFFE;
    }

    else
    {
      v23 = *(a1 + 296);
      if (!v23)
      {
        AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1 + 24, 7);
        v23 = *(a1 + 296);
      }

      v22 = (*(a1 + 288) - v23) < 0xC;
    }

    if (v22)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    v18 = *(a1 + 1872);
  }

  else
  {
    v19 = 4;
  }

  v24 = v7 | v5 | v11;
  v25 = *(v18 + 848);
  v26 = *(v25 + 6242) != 1 || (v24 & 2) == 0;
  if (!v26)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetScissorBuffer(v25);
    v25 = *(*(a1 + 1872) + 848);
  }

  v27 = a1 + 78488;
  v28 = v19 | v24;
  if (*(v25 + 6241) == 1 && (v28 & 4) != 0)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetDepthBiasBuffer(v25);
  }

  for (i = *(a1 + 30312); i; i = *i)
  {
    (*(i[1] + 16))();
  }

  v30 = *(a1 + 30328);
  v31 = *(v30 + 1800);
  v30[56] = *(v30 + 1784);
  v30[57] = v31;
  v30[58] = *(v30 + 1816);
  v32 = *(a1 + 30328);
  *(v32 + 2009) = 0;
  v33 = *(v32 + 1848);
  *(v32 + 720) = *(v32 + 1832);
  *(v32 + 736) = v33;
  v34 = *(v32 + 1944);
  *(v32 + 816) = *(v32 + 1928);
  *(v32 + 832) = v34;
  v35 = *(v32 + 1912);
  *(v32 + 784) = *(v32 + 1896);
  *(v32 + 800) = v35;
  v36 = *(v32 + 1880);
  *(v32 + 752) = *(v32 + 1864);
  *(v32 + 768) = v36;
  IOGPUResourceListAddResource();
  *(a1 + 2078) = 1;
  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(a1, (*(a1 + 2077) & 1) == 0, 1, 1);
  *(a1 + 2078) = 0;
  *(a1 + 2076) = 1;
  ++*(a1 + 78556);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::beginRenderPass(a1);
  IOGPUResourceListAddResource();
  v38 = *(a1 + 30352);
  if (v38)
  {
    if (*(v38 + 720))
    {
      v39 = 0;
      v40 = v38 + 96;
      v41 = *(v38 + 724) | *(v38 + 728);
      do
      {
        if (((1 << v39) & v41) != 0)
        {
          IOGPUResourceListAddResource();
          v38 = *(a1 + 30352);
        }

        ++v39;
        v40 += 24;
      }

      while (v39 < *(v38 + 720));
    }

    AGX::RenderPipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(v38, *(a1 + 1912));
  }

  if (*(a1 + 30336))
  {
    v42 = *(a1 + 30104);
    v43 = *(a1 + 30352);
    *(a1 + 30156) = 1;
    v44.i64[0] = *(a1 + 30120);
    v45 = *(a1 + 30128);
    v46 = *(a1 + 30136);
    v47 = *(v43 + 40);
    v48 = v42.i32[0];
    if (v42.i32[0] <= v47)
    {
      v48 = *(v43 + 40);
    }

    *(a1 + 30104) = v48;
    v49 = *(v43 + 44);
    v50 = v42.i32[1];
    if (v42.i32[1] <= v49)
    {
      v50 = *(v43 + 44);
    }

    *(a1 + 30108) = v50;
    v51 = *(v43 + 48);
    v52 = v42.i32[2];
    if (v42.i32[2] <= v51)
    {
      v52 = *(v43 + 48);
    }

    *(a1 + 30112) = v52;
    v53 = *(v43 + 52);
    v54 = v42.i32[3];
    if (v42.i32[3] <= v53)
    {
      v54 = *(v43 + 52);
    }

    *(a1 + 30116) = v54;
    v55 = *(v43 + 56);
    v56 = v44.i32[0];
    if (v44.i32[0] <= v55)
    {
      v56 = *(v43 + 56);
    }

    *(a1 + 30120) = v56;
    v57 = *(v43 + 60);
    v58 = v44.i32[1];
    if (v44.i32[1] <= v57)
    {
      v58 = *(v43 + 60);
    }

    *(a1 + 30124) = v58;
    v59 = *(v43 + 64);
    if (v45 <= v59)
    {
      v60 = *(v43 + 64);
    }

    else
    {
      v60 = v45;
    }

    v44.i64[1] = __PAIR64__(v46, v45);
    *(a1 + 30128) = v60;
    v61.i64[0] = __PAIR64__(v49, v47);
    v62 = *(v43 + 68);
    v61.i64[1] = __PAIR64__(v53, v51);
    v63.i64[0] = __PAIR64__(v57, v55);
    v63.i64[1] = __PAIR64__(v62, v59);
    v37 = vandq_s8(vuzp1q_s16(vcgtq_s32(v61, v42), vcgtq_s32(v63, v44)), xmmword_29D2F24C0);
    v37.i16[0] = vaddvq_s16(v37);
    v64 = v37.u8[0];
    if (v46 <= v62)
    {
      v46 = *(v43 + 68);
    }

    *(a1 + 30136) = v46;
    v65 = *(v43 + 3528);
    if (v65)
    {
      v66 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 30104), v65);
    }

    else
    {
      v66 = 0;
    }

    if (v64)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66 == 0;
    }

    if (!v67)
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30104, *(a1 + 30328) + 320, 1);
    }

    v68 = *(a1 + 30336);
    v69 = *(v68 + 2400);
    v70 = *(v68 + 2408);
    v71 = *(a1 + 30352);
    if (*(v71 + 789) == 1)
    {
      v72 = *(v71 + 1032);
      v73 = *(v71 + 1048);
      v26 = *(v71 + 3608) == 0;
      v74 = -3;
      if (v26)
      {
        v74 = -1;
      }

      v75 = v72 == 0;
      v76 = 0xF7FFFFFFFFFFFFFFLL;
      if (v75)
      {
        v76 = -1;
      }

      v77 = 0xE7FFFFFFFFFFFFFFLL;
      if (v75)
      {
        v77 = 0xEFFFFFFFFFFFFFFFLL;
      }

      if (v73)
      {
        v76 = v77;
      }
    }

    else
    {
      v76 = -1;
      v74 = -1;
    }

    v78 = v69 & v76;
    v220 = v70 & v74;
    for (j = v78; ; v78 = j)
    {
      if (v78)
      {
        v79 = __clz(__rbit64(v78));
        p_j = &j;
        v81 = v79;
      }

      else
      {
        v78 = v220;
        if (!v220)
        {
          v83 = *(a1 + 49088);
          v84 = *(v83 + 17888);
          v85 = *(v83 + 17896);
          v86 = *(a1 + 30336);
          v87 = *(v86 + 2424);
          v88 = *(v86 + 2416) & v84;
          v218 = v87 & v85;
          k = v88;
          v89 = a1 + 49664;
          while (1)
          {
            if (v88)
            {
              v90 = __clz(__rbit64(v88));
              v91 = &k;
              v92 = v90;
            }

            else
            {
              v88 = v218;
              if (!v218)
              {
                v95 = *(a1 + 30336);
                v96 = *(a1 + 30328);
                *(v96 + 575) |= *(v95 + 1349);
                *(v96 + 578) |= *(v95 + 1354);
                v27 = a1 + 78488;
                goto LABEL_108;
              }

              v90 = __clz(__rbit64(v218));
              v92 = v90 | 0x40;
              v91 = &v218;
            }

            *v91 = v88 & ~(1 << v90);
            v222 = *(*(a1 + 30336) + 1376);
            if ((*(&v222 | (8 * (v92 > 0x3F))) >> v92))
            {
              v93 = 3;
            }

            else
            {
              v93 = 1;
            }

            v94 = 3 * v92;
            AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), *(v89 + 24 * v92), 3u, v92, v93);
            if (*(v89 + 8 * v94))
            {
              IOGPUResourceListAddResource();
              if (*(v89 + 8 * (v94 + 1)))
              {
                IOGPUResourceListAddResource();
              }

              if (*(v89 + 8 * (v94 + 2)))
              {
                IOGPUResourceListAddResource();
              }
            }

            v88 = k;
          }
        }

        LODWORD(v79) = __clz(__rbit64(v220));
        v81 = v79 | 0x40;
        p_j = &v220;
      }

      *p_j = v78 & ~(1 << v79);
      v222 = *(*(a1 + 30336) + 1360);
      if ((*(&v222 | (8 * (v81 > 0x3F))) >> v81))
      {
        v82 = 3;
      }

      else
      {
        v82 = 1;
      }

      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindVertexBufferResource(a1, v81, v82, v4);
    }
  }

LABEL_108:
  v97 = *(a1 + 27960);
  if (v97)
  {
    AGX::HWGeometryPipelineContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindAllResources(v97, v4);
  }

  if (*(a1 + 30344))
  {
    v98 = 0;
    v99 = *(a1 + 30352);
    v100 = *(a1 + 30284);
    v101 = *(*(a1 + 30264) + 7092);
    *(a1 + 30260) = 2;
    v102 = *(v99 + 80);
    v103 = *(v99 + 84);
    v104 = *(a1 + 2404);
    v106 = *(v99 + 72);
    v105 = *(v99 + 76);
    v107.i64[0] = *(v99 + 88);
    v108 = *(a1 + 2420);
    v109 = *(a1 + 30280);
    v110 = *(a1 + 30304);
    v111 = *(a1 + 30288);
    v112 = v104 + v105;
    v113 = __OFSUB__(v112, v110);
    v114 = v112 - v110;
    if ((v114 < 0) ^ v113 | (v114 == 0))
    {
      v114 = 0;
    }

    v115 = v103 + v102 + *(a1 + 2408);
    v116.i64[0] = *(a1 + 2412);
    v116.i64[1] = v107.i64[0];
    v117 = vaddvq_s32(v116);
    v118 = ((v111 + v108 + (v114 + v104) * v109 + v117 + v115 * v100 + 64) * v101 + 7) & 0xFFFFFFF8;
    v119 = *(a1 + 30208);
    v107.i64[1] = *(a1 + 2412);
    *(a1 + 30208) = vmaxq_s32(v119, v107);
    v120.i64[0] = *(a1 + 30224);
    v121.i32[0] = v108;
    *(a1 + 30224) = vmax_s32(*v120.i8, __PAIR64__(v118, v108));
    v122 = *(a1 + 2400) + v106;
    v113 = __OFSUB__(v122, v110);
    v123 = v122 - v110;
    if ((v123 < 0) ^ v113 | (v123 == 0))
    {
      v123 = 0;
    }

    v124 = ((v117 + v123 * v109 + v111 + v108 + 64) * v101 + 7) & 0xFFFFFFF8;
    if (*(a1 + 30232) <= v124)
    {
      v125 = v124;
    }

    else
    {
      v125 = *(a1 + 30232);
    }

    v126 = *(a1 + 30240);
    v120.i32[2] = *(a1 + 30232);
    v120.i32[3] = v126;
    v121.i32[1] = v118;
    *(a1 + 30232) = v125;
    v121.i64[1] = __PAIR64__(v122, v124);
    v37 = vandq_s8(vuzp1q_s16(vcgtq_s32(v107, v119), vcgtq_s32(v121, v120)), xmmword_29D2F24C0);
    v37.i16[0] = vaddvq_s16(v37);
    v127 = v37.u8[0];
    if (v126 <= v122)
    {
      v128 = v122;
    }

    else
    {
      v128 = v126;
    }

    *(a1 + 30240) = v128;
    v129 = *(*(a1 + 30352) + 3544);
    if (v129)
    {
      v98 = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillConfig::mergeFrom((a1 + 30208), v129);
    }

    if (v127)
    {
      v130 = 0;
    }

    else
    {
      v130 = v98 == 0;
    }

    if (!v130)
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30208, *(a1 + 30328) + 1360, 0);
    }

    v131 = *(a1 + 30344);
    v132 = *(v131 + 2400);
    v133 = *(v131 + 2408);
    v134 = *(a1 + 30352);
    if (*(v134 + 789) == 1)
    {
      v135 = *(v134 + 1344);
      v136 = *(v134 + 1360);
      v26 = *(v134 + 3616) == 0;
      v137 = -3;
      if (v26)
      {
        v137 = -1;
      }

      v138 = v135 == 0;
      v139 = 0xF7FFFFFFFFFFFFFFLL;
      if (v138)
      {
        v139 = -1;
      }

      v140 = 0xE7FFFFFFFFFFFFFFLL;
      if (v138)
      {
        v140 = 0xEFFFFFFFFFFFFFFFLL;
      }

      if (v136)
      {
        v139 = v140;
      }
    }

    else
    {
      v139 = -1;
      v137 = -1;
    }

    v141 = v132 & v139;
    v220 = v133 & v137;
    for (j = v141; ; v141 = j)
    {
      if (v141)
      {
        v142 = __clz(__rbit64(v141));
        v143 = &j;
        v144 = v142;
      }

      else
      {
        v141 = v220;
        if (!v220)
        {
          v145 = *(a1 + 73032);
          v146 = *(v145 + 17888);
          v147 = *(v145 + 17896);
          v148 = *(a1 + 30344);
          v149 = *(v148 + 2424);
          v150 = *(v148 + 2416) & v146;
          v151 = a1 + 73608;
          v218 = v149 & v147;
          for (k = v150; ; v150 = k)
          {
            if (v150)
            {
              v152 = __clz(__rbit64(v150));
              p_k = &k;
              v154 = v152;
            }

            else
            {
              v150 = v218;
              if (!v218)
              {
                v157 = *(a1 + 30344);
                *(*(a1 + 30328) + 1608) |= *(v157 + 1349);
                *(v27 + 64) |= *(v157 + 1354);
                goto LABEL_164;
              }

              v152 = __clz(__rbit64(v218));
              v154 = v152 | 0x40;
              p_k = &v218;
            }

            *p_k = v150 & ~(1 << v152);
            v222 = *(*(a1 + 30344) + 1376);
            if ((*(&v222 | (8 * (v154 > 0x3F))) >> v154))
            {
              v155 = 12;
            }

            else
            {
              v155 = 4;
            }

            v156 = 3 * v154;
            AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindResource(*(a1 + 2008), *(v151 + 24 * v154), 4u, v154, v155);
            if (*(v151 + 8 * v156))
            {
              IOGPUResourceListAddResource();
              if (*(v151 + 8 * (v156 + 1)))
              {
                IOGPUResourceListAddResource();
              }

              if (*(v151 + 8 * (v156 + 2)))
              {
                IOGPUResourceListAddResource();
              }
            }
          }
        }

        LODWORD(v142) = __clz(__rbit64(v220));
        v144 = v142 | 0x40;
        v143 = &v220;
      }

      *v143 = v141 & ~(1 << v142);
      v222 = *(*(a1 + 30344) + 1360);
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::bindFragmentBufferResource(a1, v144, (*(&v222 | (8 * (v144 > 0x3F))) >> v144) & 1, v4);
    }
  }

LABEL_164:
  v158 = *(a1 + 30088);
  v159 = MEMORY[0x29EDC5638];
  if (v158)
  {
    v160 = *MEMORY[0x29EDC5638];
    v161 = v158 + v160;
    v162 = *(v158 + v160 + 16);
    if ((v162 & 0x7FFFFFFF80) == 0 || (v162 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_188;
    }

    v164 = *(a1 + 2008);
    if (*(v164[2].i64[1] + 480) != 1)
    {
      goto LABEL_188;
    }

    v165 = v164[3];
    v166 = v164[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v165), vceqzq_s64(v166))))) & 1) == 0)
    {
      goto LABEL_188;
    }

    v167 = (v158 + v160);
    if ((v162 & 0x1000000000000000) != 0)
    {
      v167 = *v161;
    }

    v168 = *v167;
    if (!v168)
    {
      goto LABEL_188;
    }

    v169 = *v168;
    v170 = v168[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v168), vceqzq_s64(v170))))) & 1) == 0)
    {
      goto LABEL_188;
    }

    v171 = vandq_s8(v170, v166);
    v172 = v171.u64[1];
    if (v171.i64[1])
    {
      v173 = 3;
    }

    else
    {
      v172 = v171.i64[0];
      if (v171.i64[0])
      {
        v173 = 2;
      }

      else
      {
        v174 = vandq_s8(v169, v165);
        v172 = v174.u64[1];
        if (v174.i64[1])
        {
          v173 = 1;
        }

        else
        {
          v172 = v174.i64[0];
          if (!v174.i64[0])
          {
LABEL_188:
            IOGPUResourceListAddResource();
            goto LABEL_189;
          }

          v173 = 0;
        }
      }
    }

    v175 = &v164->i8[8 * v173];
    v176 = *(v175 + 10);
    v177 = 1 << (__clz(v172) ^ 0x3Fu);
    v178 = (v177 & v176) != 0;
    if ((v177 & (*(v175 + 14) | v176)) != 0)
    {
      v179 = (*(v161 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v180 = (v158 + v160);
      if ((v162 & 0x1000000000000000) != 0)
      {
        v180 = *v161;
      }

      *&v222 = v180;
      *(&v222 + 1) = v179;
      v223 = v162 >> 7;
      v224 = 1;
      v225 = v178;
      ResourceTracker<_ResourceGroupBinding>::addResource(v164, &v222, *(v161 + 48), 1);
    }

    goto LABEL_188;
  }

LABEL_189:
  v181 = *(a1 + 30096);
  if (v181)
  {
    v182 = *v159;
    v183 = v181 + v182;
    v184 = *(v181 + v182 + 16);
    if ((v184 & 0x7FFFFFFF80) == 0 || (v184 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_213;
    }

    v186 = *(a1 + 2008);
    if (*(v186[2].i64[1] + 480) != 1)
    {
      goto LABEL_213;
    }

    v187 = v186[3];
    v188 = v186[4];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v187), vceqzq_s64(v188))))) & 1) == 0)
    {
      goto LABEL_213;
    }

    v189 = (v181 + v182);
    if ((v184 & 0x1000000000000000) != 0)
    {
      v189 = *v183;
    }

    v190 = *v189;
    if (!v190)
    {
      goto LABEL_213;
    }

    v191 = *v190;
    v192 = v190[1];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v190), vceqzq_s64(v192))))) & 1) == 0)
    {
      goto LABEL_213;
    }

    v193 = vandq_s8(v192, v188);
    v194 = v193.u64[1];
    if (v193.i64[1])
    {
      v195 = 3;
    }

    else
    {
      v194 = v193.i64[0];
      if (v193.i64[0])
      {
        v195 = 2;
      }

      else
      {
        v196 = vandq_s8(v191, v187);
        v194 = v196.u64[1];
        if (v196.i64[1])
        {
          v195 = 1;
        }

        else
        {
          v194 = v196.i64[0];
          if (!v196.i64[0])
          {
LABEL_213:
            IOGPUResourceListAddResource();
            goto LABEL_214;
          }

          v195 = 0;
        }
      }
    }

    v197 = &v186->i8[8 * v195];
    v198 = *(v197 + 10);
    v199 = 1 << (__clz(v194) ^ 0x3Fu);
    v200 = (v199 & v198) != 0;
    if ((v199 & (*(v197 + 14) | v198)) != 0)
    {
      v201 = (*(v183 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
      v202 = (v181 + v182);
      if ((v184 & 0x1000000000000000) != 0)
      {
        v202 = *v183;
      }

      *&v222 = v202;
      *(&v222 + 1) = v201;
      v223 = v184 >> 7;
      v224 = 65;
      v225 = v200;
      ResourceTracker<_ResourceGroupBinding>::addResource(v186, &v222, *(v183 + 48), 65);
    }

    goto LABEL_213;
  }

LABEL_214:
  v203 = *(a1 + 30352);
  if (v203)
  {
    v204 = *(v203 + 8);
    if (v204)
    {
      if (*(v204 + 4264))
      {
        v205 = *(a1 + 27752);
        if (!v205)
        {
          v205 = std::function<AGX::HAL300::HWTessellationContextA * ()(void)>::operator()(*(a1 + 27784));
          *(a1 + 27752) = v205;
        }

        (*(*v205 + 56))(v205);
      }
    }
  }

  if (*(a1 + 29919) == 1 && (*v27 & 2) != 0)
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(*(a1 + 2392), *(a1 + 1912), *(a1 + 2008), 64, v37);
    *v27 &= ~2u;
  }

  v206 = 0xFFFFF0701C0701FELL;
  v207 = *(a1 + 27960);
  v208 = *(a1 + 30336);
  v209 = *(a1 + 30344);
  if (v207)
  {
    v210 = *(v207 + 32);
    if (v208)
    {
      v206 = *(v208 + 2720) | 0xFFFFF0701C0701FFLL;
    }

    v211 = *(v207 + 40);
    if (v209)
    {
      v212 = *(v209 + 2720) | v206;
      v213 = a2;
      if (v210)
      {
        goto LABEL_228;
      }
    }

    else
    {
      v212 = v206 & 0xFFFFFFFFFFFFFFFDLL;
      v213 = a2;
      if (v210)
      {
LABEL_228:
        v214 = *(v210 + 2720) | v212;
        if (v211)
        {
LABEL_229:
          v215 = *(v211 + 2720) | v214;
          goto LABEL_239;
        }

LABEL_236:
        v215 = v214 & 0xFFFFFFFFFFFFFFDFLL;
        goto LABEL_239;
      }
    }

    v214 = v212 & 0xFFFFFFFFFFFFFFEFLL;
    if (v211)
    {
      goto LABEL_229;
    }

    goto LABEL_236;
  }

  if (v208)
  {
    v206 = *(v208 + 2720) | 0xFFFFF0701C0701FFLL;
  }

  if (v209)
  {
    v216 = *(v209 + 2720) | v206;
  }

  else
  {
    v216 = v206 & 0xFFFFFFFFFFFFFFFDLL;
  }

  v213 = a2;
  v215 = v216 & 0xFFFFFFFFFFFFFFCFLL;
LABEL_239:
  *v213 = v215;
}

void *AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleScissorUpdates(void *result, void *a2, int a3, unint64_t a4, char a5, int a6, double a7, double a8, float a9, float a10, float a11, __n128 a12)
{
  v12 = *a2;
  if ((*a2 & 0x200000000000) == 0)
  {
    return result;
  }

  v13 = result + 3575;
  v14 = *(result + 29536);
  v15 = *(*(result[234] + 848) + 6242) == 1 && a6 == 0;
  v16 = result;
  if (!v15)
  {
    v19 = a2;
    updated = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateClipRegions((result + 3589), a2, a7, a8, a9, a10, a11, a12);
    a2 = v19;
    a5 = updated;
    result = v16;
  }

  if (*(v13 + 906))
  {
    v21 = *(v13 + 10);
    *(v13 + 10) = v21 & 0xFFFEFFFF;
    if ((v21 & 0x10000) == 0)
    {
      return result;
    }

LABEL_25:
    *a2 |= 0x100000000000uLL;
    return result;
  }

  if (a5 & 1 | ((v12 & 0x40000000000000) != 0) & (v14 ^ 1))
  {
    v31 = a2;
    v34 = result[3729];
    result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::canUseScissorConfigReg((result + 3589));
    if (result)
    {
      *(v13 + 1224) = 0;
    }

    else
    {
      result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::anyPartialScreenClip((v16 + 3589));
      if (result)
      {
        *(v13 + 1224) = 1;
        result = *(v16[234] + 848);
        if (*(result + 6242) == 1)
        {
          if (a3 == -1)
          {
            v33 = 0;
            result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(result, (v16 + 3589), 0, *(v16[3791] + 944), &v34, &v33, &v32);
          }

          else
          {
            v34 = a4;
          }
        }

        else
        {
          v26 = v16[41];
          v34 = v26 + v16[43];
          v27 = v34;
          v16[41] = v26 + 2;
          result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>>((v16 + 3589), v16, 0, v26, v27);
          for (i = 1; i < *(v13 + 227); ++i)
          {
            v29 = v16[41];
            v30 = v16[43];
            v16[41] = v29 + 2;
            result = AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>>((v16 + 3589), v16, i, v29, v29 + v30);
          }
        }
      }
    }

    v22 = *(v13 + 1224);
    a2 = v31;
    if (v22 == 1)
    {
      v23 = v34 & 0xFFFFFFFC;
      *v13 = (v34 >> 16) & 0xFFFF0000;
      *(v13 + 1) = v23;
      *v31 |= 0x4000000000000uLL;
    }
  }

  else
  {
    v22 = *(v13 + 1224);
  }

  v24 = *(v13 + 10);
  if (v22)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  *(v13 + 10) = v24 & 0xFFFEFFFF | v25;
  if ((v22 ^ ((v24 & 0x10000u) >> 16)))
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::handleDepthBiasUpdates(uint64_t result, uint64_t a2, int a3, unint64_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8)
{
  if ((*(a2 + 5) & 0x40) != 0)
  {
    v22[3] = v8;
    v22[4] = v9;
    v10 = (result + 28592);
    a5.i32[0] = *(result + 29848);
    v11 = *(result + 29852);
    v12 = *(result + 29856);
    a8.i32[0] = 931135616;
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    LODWORD(v14) = vbslq_s8(v13, a8, a5).u32[0];
    if (*(*(result + 2392) + 4924))
    {
      *a5.i32 = v14 + (*a5.i32 * 0.000015259);
    }

    v22[0] = 0;
    v15 = *(*(result + 1872) + 848);
    if (*(v15 + 6241) == 1)
    {
      if (a3 == -1)
      {
        v21 = 0;
        v18 = a2;
        result = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(v15, *(*(result + 30328) + 952), v22, &v21, &v20, *a5.i32, v11, v12);
        a2 = v18;
        a4 = v22[0];
      }
    }

    else
    {
      *&a5.i32[1] = v11;
      v16 = *(result + 296);
      v17 = *(result + 312) + v16;
      *(result + 296) = v16 + 12;
      *v16 = a5.i64[0];
      *(v16 + 8) = v12;
      v19 = a2;
      result = AGX::DataBufferAllocator<44ul>::getBasePointer<AGX::IPFEncoderGen4<kAGXRevHAL300>::DepthBiasBits>(result + 24);
      a4 = v17;
      a2 = v19;
    }

    *v10 = (a4 >> 16) & 0xFFFF0000;
    v10[1] = a4 & 0xFFFFFFFC;
    *a2 |= 0x4000000000000uLL;
  }

  return result;
}

uint64_t AGX::ClipRectContextGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setScissorBits<AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>>(uint64_t result, uint64_t a2, unsigned int a3, int32x2_t *a4, uint64_t a5)
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
    v10 = *(*(*(a2 + 78544) + 64) + 16);
    v11 = *(a2 + 744);
    *(a2 + 744) = v11 + 56;
    *(v11 + 4) = v10;
    *(v11 + 8) = a5;
    *(&v9 + 1) = v8;
    *(v11 + 16) = v9;
    *(v11 + 32) = a3;
    v12 = *(a2 + 29992) + 1;
    *(a2 + 29992) = v12;
    *v11 = 0;
    *(*(a2 + 29984) + 4) = v12;
    ++*(a2 + 1956);
  }

  return result;
}

void AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(uint64_t a1, int a2, int a3, int a4)
{
  v382 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 29912);
  if (v6 == 1)
  {
    v9 = *(a1 + 456);
    *v9 = 2 * *(a1 + 29916);
    *(a1 + 456) = v9 + 1;
    *(a1 + 29912) = 2;
    *(*(a1 + 29896) + 8) = 2;
  }

  else if (!v6)
  {
    v7 = *(a1 + 29888);
    if (v7)
    {
      v8 = *(a1 + 29904);
      *v7 = BYTE4(v8) | 0x80000000;
      v7[1] = v8;
      *(a1 + 29888) = 0;
      *(a1 + 29904) = 0;
      ++*(a1 + 1952);
    }
  }

  v10 = a1 + 78496;
  v355 = a1 + 27824;
  if (a4 && (*(a1 + 28065) & 1) == 0)
  {
    v12 = a2;
    isFastClearConversionAllowedForEmptyRender = AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearConversionAllowedForEmptyRender(*(a1 + 2392));
    a2 = v12;
  }

  else
  {
    isFastClearConversionAllowedForEmptyRender = 0;
  }

  if (*(*(a1 + 30320) + 132))
  {
    goto LABEL_445;
  }

  if (!isFastClearConversionAllowedForEmptyRender)
  {
    v112 = a2;
    if (*(a1 + 27656))
    {
      AGX::RenderIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::patchVDMControlStreamAndReset(a1 + 27600, *(a1 + 78728), *(a1 + 78736), (a1 + 78560));
    }

    *(*(a1 + 30328) + 577) = *(v355 + 208);
    if (AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::isFastClearToBlackEOT2Allowed(*(a1 + 2392)))
    {
      *(*(a1 + 30328) + 1613) = 1;
    }

    v113 = *(a1 + 2392) + 4096;
    if (*(*(a1 + 2392) + 4960) == 1)
    {
      *(*(a1 + 30328) + 1613) = 1;
    }

    if (*(v113 + 865) == 1)
    {
      *(*(a1 + 30328) + 1612) = 1;
    }

    {
    }

    if (*(a1 + 2077) == 1)
    {
      if ((*(a1 + 2074) & 1) == 0)
      {
LABEL_249:
        v237 = *(a1 + 2392);
        AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(v237);
        if (*(a1 + 78552))
        {
          v238 = 0;
        }

        else
        {
          v238 = *(v237 + 4959);
        }

        if ((*(v237 + 5000) & 0xFFFFFFFFFF80) != 0)
        {
          *(v237 + 4976) = *(v237 + 4976) & 0xFFFFFFFFFFFFFFFELL | v238;
        }
      }
    }

    else
    {
      v174 = *(a1 + 30328);
      if (*(a1 + 2078))
      {
        goto LABEL_263;
      }

      if (*(a1 + 2074) != 1)
      {
        goto LABEL_249;
      }

      if ((*(a1 + 2073) & 1) == 0)
      {
LABEL_263:
        if (*(a1 + 2075))
        {
          goto LABEL_264;
        }

        if (*(a1 + 2076))
        {
          v239 = 0;
          if (*(a1 + 2077))
          {
            goto LABEL_275;
          }

          goto LABEL_271;
        }

        if (*(a1 + 2074) != 1)
        {
LABEL_264:
          v239 = 1;
          if (*(a1 + 2077))
          {
            goto LABEL_275;
          }
        }

        else
        {
          v239 = *(a1 + 2072);
          if (*(a1 + 2077))
          {
            goto LABEL_275;
          }
        }

LABEL_271:
        if (*(a1 + 2078))
        {
          v240 = 0;
LABEL_276:
          AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignRenderRegisters(*(a1 + 2392), v174, v174 + 720, v239 & 1, v240 & 1);
          if (*(a1 + 2075))
          {
            goto LABEL_277;
          }

          if (*(a1 + 2076))
          {
            v241 = 0;
            if (*(a1 + 2077))
            {
              goto LABEL_288;
            }

            goto LABEL_284;
          }

          if (*(a1 + 2074) != 1)
          {
LABEL_277:
            v241 = 1;
            if (*(a1 + 2077))
            {
              goto LABEL_288;
            }
          }

          else
          {
            v241 = *(a1 + 2072);
            if (*(a1 + 2077))
            {
              goto LABEL_288;
            }
          }

LABEL_284:
          if (*(a1 + 2078))
          {
            v242 = 0;
LABEL_289:
            AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignCommandFields(*(a1 + 2392), *(a1 + 30328), v241 & 1, v242 & 1, *(v355 + 2016));
            v243 = *(a1 + 2075);
            if ((v243 & 1) == 0 && ((*(a1 + 2076) & 1) != 0 || *(a1 + 2074) == 1 && *(a1 + 2072) != 1))
            {
              v246 = *(a1 + 30328);
              *(v246 + 2224) = 0;
              v244 = v355;
              *(v355 + 2016) = *(v355 + 2018);
LABEL_306:
              *(v246 + 1605) = 1;
              if (**MEMORY[0x29EDC56B0])
              {
                IOGPUDeviceTraceEvent();
                v244 = v355;
                v246 = *(a1 + 30328);
              }

LABEL_308:
              if ((*(v244 + 2095) & 1) == 0)
              {
                *(v246 + 1728) = 0;
              }

              *(a1 + 2656) = 0;
              if (*(a1 + 2075))
              {
                goto LABEL_311;
              }

              if (*(a1 + 2076))
              {
                v247 = 0;
              }

              else
              {
                if (*(a1 + 2074) != 1)
                {
LABEL_311:
                  v247 = 1;
                  goto LABEL_316;
                }

                v247 = *(a1 + 2072);
              }

LABEL_316:
              AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitDriverProgramArguments(a1 + 2120, v246, *(a1 + 2392), v247 & 1, *(v244 + 236));
              if (a3)
              {
                v248 = *(a1 + 72);
                *(a1 + 72) = v248 + 1;
                *v248 = *(v355 + 12);
              }

              if (*(a1 + 1956) <= 4u && *(a1 + 1960))
              {
                *(*(a1 + 30328) + 1168) |= 1uLL;
              }

              if (*(a1 + 2077) & 1) != 0 || (*(a1 + 2078) & 1) == 0 && (*(a1 + 2074) != 1 || (*(a1 + 2073)))
              {
                v249 = *(a1 + 78520);
                if (*(*(a1 + 2392) + 4956))
                {
                  v250 = 0;
LABEL_327:
                  if (FenceEncoder::encode((a1 + 1880), v112, *(a1 + 30320), *(a1 + 78512), *v10, v249, v250))
                  {
                    *(a1 + 79472) |= 0x20000uLL;
                  }

                  if (*(v355 + 4) && !*(v355 + 8))
                  {
                    v251 = 2;
                  }

                  else
                  {
                    v251 = 0;
                  }

                  if (*v355 >= 0)
                  {
                    v252 = v251;
                  }

                  else
                  {
                    v252 = *v355;
                  }

                  if ((*v355 & 0x40000000) != 0)
                  {
                    v251 = BYTE1(*v355);
                  }

                  v253 = *(a1 + 30328);
                  *(v253 + 2081) = v252;
                  *(v253 + 2082) = v251;
                  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 79344), a1 + 79096);
                  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(*(a1 + 79360), a1 + 79216);
                  v254 = 0;
                  v255 = 0;
                  *(a1 + 79336) = 0u;
                  *(a1 + 79352) = 0u;
                  v256 = 1;
                  v257 = 0x2A179C000uLL;
                  while (1)
                  {
                    v258 = v255;
                    v259 = 79216;
                    if (v256)
                    {
                      v259 = 79096;
                    }

                    v260 = a1 + v259;
                    if (v256)
                    {
                      v261 = 30104;
                    }

                    else
                    {
                      v261 = 30208;
                    }

                    v262 = 1648;
                    if (v256)
                    {
                      v262 = 640;
                    }

                    v263 = *(a1 + 30328) + v262;
                    if (WORD2(*(v260 + 8)) | HIWORD(*(v260 + 8)))
                    {
                      v359 = v261;
                      v360 = v258;
                      v264 = *(*(a1 + 1872) + *(v257 + 1260));
                      block = MEMORY[0x29EDCA5F8];
                      v369[0] = 3221225472;
                      v369[1] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke;
                      v369[2] = &__block_descriptor_40_e5_v8__0l;
                      v369[3] = v264;
                      if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken != -1)
                      {
                        v330 = v257;
                        dispatch_once(&AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupDriverIntersectionTableIfNeeded(void)::onceToken, &block);
                        v257 = v330;
                      }

                      v265 = *(v264 + 6288);
                      v266 = 49096;
                      if ((v256 & 1) == 0)
                      {
                        v266 = 73040;
                      }

                      v267 = 344;
                      if (v256)
                      {
                        v267 = 336;
                      }

                      v268 = 73592;
                      if (v256)
                      {
                        v268 = 49648;
                      }

                      v269 = a1 + v268;
                      v270 = (*(a1 + v266) + v267);
                      v271 = v257;
                      v272 = *(*(a1 + 1872) + *(v257 + 1260));
                      block = v270;
                      v369[0] = a1 + v268;
                      AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::addToResourceList(v272 + 3534, &block, *(a1 + 1904));
                      v273 = (*(*v269 + 16) >> 14) & 0x1FFFFFFLL;
                      *(v263 + 16) = *v270 & 0xFFFFFFFFFFC0;
                      *(v263 + 24) = v273;
                      v274 = ((*(v265 + 188) & 0x3FFFF) << 7) | 0xC0000000;
                      *v263 = (*v270 + (*(v265 + 184) << 7)) & 0xFFFFFFFFFFC0 | 0x8000000000000;
                      *(v263 + 8) = v274;
                      IOGPUResourceListAddResource();
                      *(v263 + 32) = *(v265 + 40);
                      *(v263 + 40) = *(v265 + 48);
                      if ((v254 & 1) == 0)
                      {
                        v275 = *(v265 + 16);
                        if (v275 != (v265 + 24))
                        {
                          do
                          {
                            IOGPUResourceListAddResource();
                            v276 = v275[1];
                            if (v276)
                            {
                              do
                              {
                                v277 = v276;
                                v276 = *v276;
                              }

                              while (v276);
                            }

                            else
                            {
                              do
                              {
                                v277 = v275[2];
                                v137 = *v277 == v275;
                                v275 = v277;
                              }

                              while (!v137);
                            }

                            v275 = v277;
                          }

                          while (v277 != (v265 + 24));
                        }
                      }

                      if (!*(v260 + 11))
                      {
                        v332 = *(a1 + 1968) - *(a1 + 1984);
                        *(v332 + 140) = 1;
                        v10 = a1 + 78496;
                        if ((*(v332 + 136) & 4) != 0)
                        {
                          **(a1 + 8) = 1;
                        }

LABEL_422:
                        v333 = *(a1 + 30328);
                        if (*(v355 + 236) == 1)
                        {
                          *(v333 + 576) = 1;
                          *(v333 + 2016) = 1;
                          v334 = 1179647;
                        }

                        else
                        {
                          v334 = 0x100000;
                        }

                        *(v333 + 1184) = v334;
                        goto LABEL_426;
                      }

                      SectionEnd = *(v260 + 36);
                      if (!SectionEnd)
                      {
                        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v260 + 8, 10);
                        *(v260 + 36) = SectionEnd;
                      }

                      *(v263 + 48) = SectionEnd;
                      v279 = *(v260 + 112);
                      if (v279 == -1)
                      {
                        v331 = *(v260 + 10);
                        if (v331 > 1)
                        {
                          ++v331;
                        }

                        v279 = 8 * v331;
                        *(v260 + 112) = v279;
                      }

                      *(v263 + 52) = v279;
                      *(v263 + 56) = *(v260 + 11);
                      *(v263 + 60) = *(v260 + 8);
                      *(v263 + 64) = *(v260 + 10);
                      v280 = *(v260 + 116);
                      if (v280 == -1)
                      {
                        v280 = (RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v260 + 8, 12) + 0x1FFF) & 0xFFFFF000;
                        *(v260 + 116) = v280;
                      }

                      v281 = a1 + v359;
                      v282 = *(v265 + 72);
                      v284 = *(a1 + v359);
                      v283 = *(a1 + v359 + 16);
                      v285 = v284.i32[0];
                      if (v284.i32[0] <= v282)
                      {
                        v285 = *(v265 + 72);
                      }

                      *v281 = v285;
                      v286 = *(v265 + 76);
                      v287 = v284.i32[1];
                      if (v284.i32[1] <= v286)
                      {
                        v287 = *(v265 + 76);
                      }

                      *(v281 + 4) = v287;
                      v288 = *(v265 + 80);
                      v289 = v284.i32[2];
                      if (v284.i32[2] <= v288)
                      {
                        v289 = *(v265 + 80);
                      }

                      *(v281 + 8) = v289;
                      v290 = *(v265 + 84);
                      v291 = v284.i32[3];
                      if (v284.i32[3] <= v290)
                      {
                        v291 = *(v265 + 84);
                      }

                      *(v281 + 12) = v291;
                      v292 = *(v265 + 88);
                      v293 = v283.i32[0];
                      if (v283.i32[0] <= v292)
                      {
                        v293 = *(v265 + 88);
                      }

                      *(v281 + 16) = v293;
                      v294 = *(v265 + 92);
                      v295 = v283.i32[1];
                      if (v283.i32[1] <= v294)
                      {
                        v295 = *(v265 + 92);
                      }

                      *(v281 + 20) = v295;
                      v296 = *(v265 + 96);
                      v297 = v283.i32[2];
                      if (v283.i32[2] <= v296)
                      {
                        v297 = *(v265 + 96);
                      }

                      *(v281 + 24) = v297;
                      v298.i64[0] = __PAIR64__(v294, v292);
                      v298.i32[2] = v296;
                      v298.i32[3] = *(v265 + 100);
                      v299.i64[0] = __PAIR64__(v286, v282);
                      v299.i64[1] = __PAIR64__(v290, v288);
                      v300 = v283.i32[3];
                      if (v283.i32[3] <= v298.i32[3])
                      {
                        v300 = *(v265 + 100);
                      }

                      *(v281 + 28) = v300;
                      v301 = *(v265 + 104);
                      v302 = *(v281 + 32);
                      v303 = v302.i32[0];
                      if (v302.i32[0] <= v301)
                      {
                        v303 = *(v265 + 104);
                      }

                      *(v281 + 32) = v303;
                      v304 = v302.i32[1];
                      v305 = *(v265 + 108);
                      if (v302.i32[1] <= v305)
                      {
                        v304 = *(v265 + 108);
                      }

                      *(v281 + 36) = v304;
                      v306 = v302.i32[2];
                      v307 = *(v265 + 112);
                      if (v302.i32[2] <= v307)
                      {
                        v306 = *(v265 + 112);
                      }

                      *(v281 + 40) = v306;
                      v308.i64[0] = __PAIR64__(v305, v301);
                      v308.i32[2] = v307;
                      v308.i32[3] = *(v265 + 116);
                      v309 = v302.i32[3];
                      if (v302.i32[3] <= v308.i32[3])
                      {
                        v309 = *(v265 + 116);
                      }

                      *(v281 + 44) = v309;
                      v310 = *(v265 + 120);
                      v311 = *(v281 + 48);
                      v312 = v311 < v310;
                      if (v311 > v310)
                      {
                        v310 = *(v281 + 48);
                      }

                      v313 = (v280 + 4095) >> 12;
                      v314 = (4 * v313 + 1023) >> 10;
                      v315 = *v281;
                      v316 = *(v281 + 16);
                      *v281 = vmaxq_s32(*v281, 0);
                      *(v281 + 16) = vmaxq_s32(v316, 0);
                      v317 = *(v281 + 32);
                      v318 = v317.i32[3] < v313;
                      v319.i64[0] = 0;
                      v319.i32[2] = 0;
                      v319.i32[3] = v313;
                      *(v281 + 32) = vmaxq_s32(v317, v319);
                      if (v310 <= v314)
                      {
                        v320 = (4 * v313 + 1023) >> 10;
                      }

                      else
                      {
                        v320 = v310;
                      }

                      *(v281 + 48) = v320;
                      v321 = vorrq_s8(v316, v315);
                      *v321.i8 = vorr_s8(*v321.i8, *&vextq_s8(v321, v321, 8uLL));
                      v322 = v321.i32[0] | v321.i32[1];
                      *v321.i8 = vdup_laneq_s32(v317, 2);
                      v321.i32[0] = v322;
                      *v321.i8 = vorr_s8(*v321.i8, *v317.i8);
                      v323 = vorr_s8(*v321.i8, vdup_lane_s32(*v321.i8, 1)).u32[0];
                      v324 = v310 < v314 || v318;
                      if (v323 < 0)
                      {
                        v325 = 1;
                      }

                      else
                      {
                        v325 = v324;
                      }

                      v326 = vmovn_s16(vuzp1q_s16(vcgtq_s32(v299, v284), vcgtq_s32(v298, v283)));
                      v326.i8[0] = vmaxv_u8(v326);
                      v327 = v326.i32[0];
                      v328 = vmovn_s32(vcgtq_s32(v308, v302));
                      v328.i16[0] = vmaxv_u16(v328);
                      v329 = v327 | v328.i32[0] | v312 | v325;
                      v10 = a1 + 78496;
                      if (v256 & v329)
                      {
                        v254 = 1;
                        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30104, *(a1 + 30328) + 320, 1);
                      }

                      else
                      {
                        if (v329)
                        {
                          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 30208, *(a1 + 30328) + 1360, 0);
                        }

                        v254 = 1;
                      }

                      v257 = v271;
                      v258 = v360;
                    }

                    else
                    {
                      *(v263 + 60) = 8;
                      v10 = a1 + 78496;
                    }

                    v256 = 0;
                    v255 = 1;
                    if (v258)
                    {
                      goto LABEL_422;
                    }
                  }
                }
              }

              else
              {
                v249 = *(a1 + 78520);
              }

              v250 = *(a1 + 78504);
              goto LABEL_327;
            }

            v244 = v355;
            if (*(a1 + 2077))
            {
              goto LABEL_291;
            }

            if (*(a1 + 2078))
            {
              v245 = 0;
            }

            else
            {
              if (*(a1 + 2074) != 1)
              {
LABEL_291:
                v245 = 1;
                goto LABEL_301;
              }

              v245 = *(a1 + 2073);
            }

LABEL_301:
            v246 = *(a1 + 30328);
            *(v246 + 2224) = v245 & 1;
            *(v355 + 2016) = *(v355 + 2018);
            if ((v243 & 1) != 0 || (*(a1 + 2076) & 1) == 0 && ((*(a1 + 2074) & 1) == 0 || (*(a1 + 2072))) && (*(*(a1 + 2392) + 4897) & 1) == 0 && (*(v355 + 209) & 1) == 0)
            {
              goto LABEL_308;
            }

            goto LABEL_306;
          }

          if (*(a1 + 2074) == 1)
          {
            v242 = *(a1 + 2073);
            goto LABEL_289;
          }

LABEL_288:
          v242 = 1;
          goto LABEL_289;
        }

        if (*(a1 + 2074) == 1)
        {
          v240 = *(a1 + 2073);
          goto LABEL_276;
        }

LABEL_275:
        v240 = 1;
        goto LABEL_276;
      }
    }

    if (a3)
    {
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitSWEndOfTileIfNeeded(a1);
    }

    AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::traceFramebufferEvents(*(a1 + 2392), *(a1 + 1992), *(a1 + 2000));
    *(a1 + 79464) = vorrq_s8(*(a1 + 79464), *(*(a1 + 2392) + 6128));
    v174 = *(a1 + 30328);
    goto LABEL_263;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (*(*(a1 + 1872) + 976) == 1)
  {
    atomic_fetch_add((*(a1 + 1872) + 1128), 1uLL);
  }

  *(a1 + 2060) |= 0x10u;
  *(v355 + 242) = 1;
  v380 = -1;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v379[2] = v13;
  v379[3] = v13;
  v379[0] = v13;
  v379[1] = v13;
  v369[0] = &unk_2A23F8140;
  v369[17] = &unk_2A23F8140;
  v369[34] = &unk_2A23F8140;
  v369[51] = &unk_2A23F8140;
  v369[68] = &unk_2A23F8140;
  v369[85] = &unk_2A23F8140;
  v369[102] = &unk_2A23F8140;
  v369[119] = &unk_2A23F8140;
  v370[0] = &unk_2A23F8160;
  v371[0] = &unk_2A23F8180;
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateFastClearConfig(*(a1 + 2392), &block);
  v14 = block;
  if (block != -2)
  {
    v125 = 0;
    v126 = &v378 + 1;
    v127 = v369;
    while (1)
    {
      v128 = v369;
      if (v125 == v14 + 1)
      {
        v128 = v371;
      }

      v129 = v370;
      if (v125 != v14)
      {
        v129 = v128;
      }

      if (v125 >= v14)
      {
        v130 = v129;
      }

      else
      {
        v130 = v127;
      }

      v131 = *(v130 + 1);
      if (!v131)
      {
        goto LABEL_121;
      }

      v132 = *(*(v131 + 208) + (*(*v130 + 8))(v130, 0) + 88);
      isLargeMacroblock = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v131);
      LODWORD(v134) = 4 * v132;
      if (isLargeMacroblock)
      {
        v134 = v134;
      }

      else
      {
        v134 = v132;
      }

      v135 = *(v131 + 32);
      v136 = v135 & 0xFFFFFFFFFFFFFFFELL;
      v137 = (v135 - 631) < 2 || v136 == 638;
      if (v137 || v136 == 552 || v136 == 640 || (v135 - 633) < 5 || v135 == 630)
      {
        v134 = 5;
      }

      v381[v125] = *(v379 + v134);
      *(v379 + v134) = v125;
      (**v130)(v130, &v372);
      v142 = *(v130 + 1);
      if (v142)
      {
        break;
      }

LABEL_167:
      v157 = *(v130 + 7);
      if (v157)
      {
        IOGPUResourceListAddResource();
        v158 = *(v130 + 11);
        if (v158 && [v158 resourceID])
        {
          IOGPUResourceListAddResource();
        }

        v159 = *(v130 + 12);
        if (v159 && [v159 resourceID])
        {
          IOGPUResourceListAddResource();
        }

        v160 = *(a1 + 168);
        v161 = v160 + 48;
        if ((v160 + 48) <= *(a1 + 160))
        {
          goto LABEL_175;
        }

        v173 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
        v160 = *(a1 + 168);
        if (v173)
        {
          v161 = v160 + 48;
          if ((v160 + 48) > *(a1 + 160))
          {
            goto LABEL_248;
          }

LABEL_175:
          *(a1 + 176) = v161;
        }

        *(v126 - 3) = *(a1 + 184) + v160;
        *(a1 + 168) = v160 + 48;
        LODWORD(v361) = 0;
        v367 = 0;
        v162 = *(v157 + 584);
        if (v162)
        {
          AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v157 + 168), *(v157 + 176), *(v157 + 32), *(v157 + 208), *(v157 + 396), 0, *(v157 + 112), &v361, &v367);
          v163 = v361;
          LODWORD(v162) = v367;
        }

        else
        {
          v163 = 0;
          LODWORD(v361) = 0;
        }

        v164 = v130[17];
        v165 = *(v157 + 144) + v164;
        v166 = *(v157 + 132);
        v167 = *(v157 + 128) >> (*(v157 + 144) + v164);
        if (v167 <= 1)
        {
          v167 = 1;
        }

        v168 = (v163 + v167 - 1) / v163;
        v169 = v166 >> v165;
        if (v166 >> v165 <= 1)
        {
          v169 = 1;
        }

        v170 = (v162 + v169 - 1) / v162;
        *(v126 - 1) = ((v170 + 1) & 0x7FFFFFFE) * ((v168 + 1) & 0xFFFFFFFE);
        v171 = (*(*v130 + 8))(v130, 1);
        AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(v160, v126, &v372, v157, v164, v171, 0, 0, v168, v170);
      }

      v14 = block;
LABEL_121:
      ++v125;
      v127 += 34;
      v126 += 4;
      if (v125 >= v14 + 2)
      {
        goto LABEL_17;
      }
    }

    IOGPUResourceListAddResource();
    v143 = *(v130 + 5);
    if (v143 && [v143 resourceID])
    {
      IOGPUResourceListAddResource();
    }

    v144 = *(v130 + 6);
    if (v144 && [v144 resourceID])
    {
      IOGPUResourceListAddResource();
    }

    v145 = *(a1 + 168);
    v146 = v145 + 48;
    if ((v145 + 48) > *(a1 + 160))
    {
      v172 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v145 = *(a1 + 168);
      if (!v172)
      {
        goto LABEL_159;
      }

      v146 = v145 + 48;
      if ((v145 + 48) > *(a1 + 160))
      {
        goto LABEL_248;
      }
    }

    *(a1 + 176) = v146;
LABEL_159:
    *(v126 - 35) = *(a1 + 184) + v145;
    *(a1 + 168) = v145 + 48;
    LODWORD(v361) = 0;
    v367 = 0;
    v147 = *(v142 + 584);
    if (v147)
    {
      AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v142 + 168), *(v142 + 176), *(v142 + 32), *(v142 + 208), *(v142 + 396), 0, *(v142 + 112), &v361, &v367);
      v148 = v361;
      LODWORD(v147) = v367;
    }

    else
    {
      v148 = 0;
      LODWORD(v361) = 0;
    }

    v149 = v130[5];
    v150 = *(v142 + 144) + v149;
    v151 = *(v142 + 132);
    v152 = *(v142 + 128) >> (*(v142 + 144) + v149);
    if (v152 <= 1)
    {
      v152 = 1;
    }

    v153 = (v148 + v152 - 1) / v148;
    v154 = v151 >> v150;
    if (v151 >> v150 <= 1)
    {
      v154 = 1;
    }

    v155 = (v147 + v154 - 1) / v147;
    *(v126 - 33) = ((v155 + 1) & 0x7FFFFFFE) * ((v153 + 1) & 0xFFFFFFFE);
    v156 = (*(*v130 + 8))(v130, 0);
    AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(v145, v126 - 32, &v372, v142, v149, v156, 0, 0, v153, v155);
    goto LABEL_167;
  }

LABEL_17:
  v15 = *(a1 + 80);
  if ((v15 + 40) > *(a1 + 64))
  {
    v350 = *(a1 + 72);
    if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
    {
      v351 = *(a1 + 72) + v15 - v350 + 40;
      if (v351 > *(a1 + 64))
      {
        goto LABEL_248;
      }

      *(a1 + 80) = v351;
      *v350 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    *(a1 + 80) = v15 + 40;
  }

  v16 = *(a1 + 1032);
  v17 = *(a1 + 1040);
  v18 = v17 + 88;
  if ((v17 + 88) <= *(a1 + 1024))
  {
    v19 = *(a1 + 1032);
LABEL_21:
    *(a1 + 1040) = v18;
    goto LABEL_22;
  }

  v352 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 30, 0);
  v19 = *(a1 + 1032);
  if (v352)
  {
    v18 = v19 + v17 - v16 + 88;
    if (v18 > *(a1 + 1024))
    {
      goto LABEL_248;
    }

    goto LABEL_21;
  }

LABEL_22:
  v20 = *(a1 + 1048) + v19;
  *(a1 + 1032) = v19 + 20;
  *v19 = xmmword_29D2F1770;
  *(v19 + 16) = 0;
  v21 = *(a1 + 72);
  *v21 = __ROR8__(v20, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v21 + 1;
  v22 = *(a1 + 1032);
  v23 = *(a1 + 1048) + v22;
  *(a1 + 1032) = v22 + 28;
  *v22 = xmmword_29D2F1780;
  *(v22 + 16) = 0xE0000000E000000;
  *(v22 + 24) = 0;
  v24 = __ROR8__(v23, 32);
  v25 = *(a1 + 72);
  *v25 = v24 & 0xFFFFFFFC000000FFLL | 0x700;
  *(a1 + 72) = v25 + 1;
  v26 = *(a1 + 1032);
  v27 = *(a1 + 1048) + v26;
  *(a1 + 1032) = v26 + 20;
  *v26 = 203948032;
  *(v26 + 12) = 0;
  *(v26 + 4) = 0;
  v28 = *(a1 + 72);
  *v28 = __ROR8__(v27, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  *(a1 + 72) = v28 + 1;
  v29 = *(a1 + 1032);
  v30 = *(a1 + 1048) + v29;
  *(a1 + 1032) = v29 + 12;
  *v29 = 8650754;
  *(v29 + 8) = 131200;
  v31 = __ROR8__(v30, 32);
  v32 = *(a1 + 72);
  *v32 = v31 & 0xFFFFFFFC000000FFLL | 0x300;
  *(a1 + 72) = v32 + 1;
  v33 = *(a1 + 1032);
  v34 = v33 + *(a1 + 1048);
  *(a1 + 1032) = v33 + 1;
  v35 = __ROR8__(v34, 32);
  *v33 = 0x48000800000;
  v36 = *(a1 + 72);
  *v36 = v35 & 0xFFFFFFFC000000FFLL | 0x200;
  *(a1 + 72) = v36 + 1;
  v362 = 95;
  v364 = 0;
  v365 = 0;
  __p = 0;
  v361 = &unk_2A23F81A0;
  v366 = 6;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(a1 + 1872) + 848), &v361);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v372, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7184));
  v38 = v372;
  *v39.i8 = v373;
  v40 = *(BlitProgramVariant + 3144);
  v372 = vmaxq_s32(v372, v40);
  v41 = *(BlitProgramVariant + 3160);
  v42 = vmax_s32(v373, *v41.i8);
  v43 = v41.i32[3];
  v44 = *(BlitProgramVariant + 3168);
  if (v374 > v41.i32[2])
  {
    v44 = v374;
  }

  v39.i64[1] = __PAIR64__(v375, v374);
  v376 = 1;
  v373 = v42;
  if (v375 > v41.i32[3])
  {
    v43 = v375;
  }

  LODWORD(v374) = v44;
  LODWORD(v375) = v43;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v40, v38), vcgtq_s32(v41, v39)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v372, *(a1 + 30328) + 320, 0);
  }

  v45 = *(BlitProgramVariant + 2120);
  do
  {
    IOGPUResourceListAddResource();
    v45 &= ~(1 << __clz(__rbit32(v45)));
  }

  while (v45);
  v357 = BlitProgramVariant;
  v46 = block;
  if (block != -2)
  {
    v175 = 0;
    v176 = &v378;
    v177 = v369;
    while (1)
    {
      v183 = v177;
      if (v175 >= v46)
      {
        v184 = v369;
        if (v175 == v46 + 1)
        {
          v184 = v371;
        }

        if (v175 == v46)
        {
          v183 = v370;
        }

        else
        {
          v183 = v184;
        }
      }

      v185 = v183[1];
      v358 = v177;
      if (v185)
      {
        break;
      }

LABEL_223:
      v205 = v183[7];
      if (v205)
      {
        v374 = 0;
        v375 = 0;
        v372.i64[0] = *(v176 - 1);
        v206 = *(v205 + 584);
        v208 = *(v183 + 16);
        v207 = *(v183 + 17);
        v209 = *(v205 + 144);
        v210 = *(v183 + 18);
        v211 = (*(*v183 + 8))(v183, 1);
        v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v206 + 648 * v211, v208, (v209 + v207), v210, 0);
        v212 = *(a1 + 80);
        if ((v212 + 44) > *(a1 + 64))
        {
          v229 = *(a1 + 72);
          v230 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
          v213 = v357;
          if (v230)
          {
            v231 = *(a1 + 72) + v212 - v229 + 44;
            if (v231 > *(a1 + 64))
            {
              goto LABEL_248;
            }

            *(a1 + 80) = v231;
            GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0);
            v213 = v357;
            *v229 = __ROR8__(GPUAddress, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
          }
        }

        else
        {
          *(a1 + 80) = v212 + 44;
          v213 = v357;
        }

        v214 = *(v213 + 16) + 31;
        v215 = *(a1 + 176);
        v216 = v215 + v214;
        if ((v215 + v214) <= *(a1 + 160))
        {
          goto LABEL_227;
        }

        v233 = *(a1 + 168);
        v234 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
        v213 = v357;
        if (v234)
        {
          v216 = *(a1 + 168) + v215 - v233 + v214;
          if (v216 > *(a1 + 160))
          {
            goto LABEL_248;
          }

LABEL_227:
          *(a1 + 176) = v216;
        }

        v217 = (*(*(v213 + 1784) + 8) - **(v213 + 1784)) + 63;
        v218 = *(a1 + 240);
        v219 = v218 + v217;
        if ((v218 + v217) > *(a1 + 224))
        {
          v235 = *(a1 + 232);
          v236 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
          v213 = v357;
          if (v236)
          {
            v219 = *(a1 + 232) + v218 - v235 + v217;
            if (v219 > *(a1 + 224))
            {
              goto LABEL_248;
            }

            goto LABEL_229;
          }
        }

        else
        {
LABEL_229:
          *(a1 + 240) = v219;
        }

        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v213, &v372);
        if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v205))
        {
          v178 = 2;
        }

        else
        {
          v178 = 0;
        }

        v179 = *v176 << v178;
        if (v179 <= 7)
        {
          v180 = 1;
        }

        else
        {
          v180 = v179 >> 2;
        }

        LODWORD(v181) = 1640235008;
        DWORD1(v181) = v180;
        *(&v181 + 1) = 1;
        v182 = *(a1 + 72);
        *v182 = v181;
        *(a1 + 72) = v182 + 1;
        ++*(a1 + 1940);
        *(a1 + 1956) += v180;
        v177 = v358;
      }

      ++v175;
      v46 = block;
      v177 += 17;
      v176 += 2;
      if (v175 >= (block + 2))
      {
        goto LABEL_31;
      }
    }

    v374 = 0;
    v375 = 0;
    v372.i64[0] = *(v176 - 17);
    v186 = *(v185 + 584);
    v187 = *(v183 + 4);
    v188 = *(v183 + 5);
    v189 = *(v185 + 144);
    v190 = *(v183 + 6);
    v191 = (*(*v183 + 8))(v183, 0);
    v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v186 + 648 * v191, v187, (v189 + v188), v190, 0);
    v192 = *(a1 + 80);
    if ((v192 + 44) > *(a1 + 64))
    {
      v221 = *(a1 + 72);
      v222 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
      v193 = v357;
      if (v222)
      {
        v223 = *(a1 + 72) + v192 - v221 + 44;
        if (v223 > *(a1 + 64))
        {
          goto LABEL_248;
        }

        *(a1 + 80) = v223;
        v224 = AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0);
        v193 = v357;
        *v221 = __ROR8__(v224, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      }
    }

    else
    {
      *(a1 + 80) = v192 + 44;
      v193 = v357;
    }

    v194 = *(v193 + 16) + 31;
    v195 = *(a1 + 176);
    v196 = v195 + v194;
    if ((v195 + v194) > *(a1 + 160))
    {
      v225 = *(a1 + 168);
      v226 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0);
      v193 = v357;
      if (!v226)
      {
LABEL_214:
        v197 = (*(*(v193 + 1784) + 8) - **(v193 + 1784)) + 63;
        v198 = *(a1 + 240);
        v199 = v198 + v197;
        if ((v198 + v197) > *(a1 + 224))
        {
          v227 = *(a1 + 232);
          v228 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0);
          v193 = v357;
          if (!v228)
          {
            goto LABEL_216;
          }

          v199 = *(a1 + 232) + v198 - v227 + v197;
          if (v199 > *(a1 + 224))
          {
            goto LABEL_248;
          }
        }

        *(a1 + 240) = v199;
LABEL_216:
        AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v193, &v372);
        if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v185))
        {
          v200 = 2;
        }

        else
        {
          v200 = 0;
        }

        v201 = *(v176 - 32) << v200;
        if (v201 <= 7)
        {
          v202 = 1;
        }

        else
        {
          v202 = v201 >> 2;
        }

        LODWORD(v203) = 1640235008;
        DWORD1(v203) = v202;
        *(&v203 + 1) = 1;
        v204 = *(a1 + 72);
        *v204 = v203;
        *(a1 + 72) = v204 + 1;
        ++*(a1 + 1940);
        *(a1 + 1956) += v202;
        v177 = v358;
        goto LABEL_223;
      }

      v196 = *(a1 + 168) + v195 - v225 + v194;
      if (v196 > *(a1 + 160))
      {
        goto LABEL_248;
      }
    }

    *(a1 + 176) = v196;
    goto LABEL_214;
  }

LABEL_31:
  v47 = 0;
  do
  {
    v356 = v47;
    v48 = *(v379 + *(&AGX::BlitDispatchParametersGen2_3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::validTexelSize + v47));
    if (v48 != -1)
    {
      v366 = v366 & 0xFFFFF800 | (8 * *(&AGX::BlitDispatchParametersGen2_3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::validTexelSize + v47)) | 2;
      v49 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(a1 + 1872) + 848), &v361);
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v372, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7184));
      v50 = v372;
      *v51.i8 = v373;
      v52 = *(v49 + 3144);
      v53 = *(v49 + 3160);
      v54 = vmax_s32(v373, *v53.i8);
      v372 = vmaxq_s32(v372, v52);
      v55 = v53.i32[3];
      v56 = v53.i32[2];
      if (v374 > v53.i32[2])
      {
        v56 = v374;
      }

      v51.i64[1] = __PAIR64__(v375, v374);
      v376 = 1;
      v373 = v54;
      if (v375 > v53.i32[3])
      {
        v55 = v375;
      }

      LODWORD(v374) = v56;
      LODWORD(v375) = v55;
      if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v52, v50), vcgtq_s32(v53, v51)))))
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v372, *(a1 + 30328) + 320, 0);
      }

      v57 = *(v49 + 2120);
      do
      {
        IOGPUResourceListAddResource();
        v57 &= ~(1 << __clz(__rbit32(v57)));
      }

      while (v57);
      while (1)
      {
        v58 = v371;
        if (block + 1 != v48)
        {
          v58 = v369;
        }

        v59 = v370;
        if (block != v48)
        {
          v59 = v58;
        }

        v60 = block > v48 ? &v369[17 * v48] : v59;
        v61 = v60[1];
        v62 = &v377[v48];
        if (v61)
        {
          break;
        }

LABEL_64:
        v81 = v60[7];
        if (v81)
        {
          v374 = 0;
          v375 = 0;
          v83 = *(v62 + 16);
          v82 = v62 + 8;
          v372.i64[0] = v83;
          v84 = *(v60 + 16);
          v85 = *(v60 + 17);
          v86 = *(v81 + 144);
          v87 = *(v60 + 18);
          v88 = (*(*v60 + 8))(v60, 1);
          v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v81, v84, (v86 + v85), v87, v88);
          v89 = *(a1 + 80);
          if ((v89 + 44) > *(a1 + 64))
          {
            v107 = *(a1 + 72);
            if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
            {
              v108 = *(a1 + 72);
              v109 = v108 + v89 - v107 + 44;
              if (v109 > *(a1 + 64))
              {
                goto LABEL_248;
              }

              *(a1 + 80) = v109;
              *v107 = __ROR8__(*(a1 + 88) + v108, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
            }
          }

          else
          {
            *(a1 + 80) = v89 + 44;
          }

          v90 = *(v49 + 16) + 31;
          v91 = *(a1 + 176);
          v92 = v91 + v90;
          if ((v91 + v90) <= *(a1 + 160))
          {
            goto LABEL_68;
          }

          v110 = *(a1 + 168);
          if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0))
          {
            v92 = *(a1 + 168) + v91 - v110 + v90;
            if (v92 > *(a1 + 160))
            {
              goto LABEL_248;
            }

LABEL_68:
            *(a1 + 176) = v92;
          }

          v93 = (*(*(v49 + 1784) + 8) - **(v49 + 1784)) + 63;
          v94 = *(a1 + 240);
          v95 = v94 + v93;
          if ((v94 + v93) > *(a1 + 224))
          {
            v111 = *(a1 + 232);
            if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0))
            {
              v95 = *(a1 + 232) + v94 - v111 + v93;
              if (v95 > *(a1 + 224))
              {
                goto LABEL_248;
              }

              goto LABEL_70;
            }
          }

          else
          {
LABEL_70:
            *(a1 + 240) = v95;
          }

          AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v49, &v372);
          v96 = *(v82 + 3);
          v97 = v96 * *(v82 + 2);
          if (v96 == 3)
          {
            v98 = 3;
          }

          else
          {
            v98 = 4;
          }

          v99 = v97 / v98;
          if (v99 <= 1)
          {
            v99 = 1;
          }

          LODWORD(v100) = 1640235008;
          DWORD1(v100) = v99;
          *(&v100 + 1) = 1;
          v101 = *(a1 + 72);
          *v101 = v100;
          *(a1 + 72) = v101 + 1;
          ++*(a1 + 1940);
          *(a1 + 1956) += v99;
        }

        v48 = v381[v48];
        if (v48 == -1)
        {
          goto LABEL_32;
        }
      }

      v374 = 0;
      v375 = 0;
      v372.i64[0] = *v62;
      v63 = *(v60 + 4);
      v64 = *(v60 + 5);
      v65 = *(v61 + 144);
      v66 = *(v60 + 6);
      v67 = (*(*v60 + 8))(v60, 0);
      v372.i64[1] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v61, v63, (v65 + v64), v66, v67);
      v68 = *(a1 + 80);
      if ((v68 + 44) > *(a1 + 64))
      {
        v102 = *(a1 + 72);
        if (AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0))
        {
          v103 = *(a1 + 72);
          v104 = v103 + v68 - v102 + 44;
          if (v104 > *(a1 + 64))
          {
            goto LABEL_248;
          }

          *(a1 + 80) = v104;
          *v102 = __ROR8__(*(a1 + 88) + v103, 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
        }
      }

      else
      {
        *(a1 + 80) = v68 + 44;
      }

      v69 = *(v49 + 16) + 31;
      v70 = *(a1 + 176);
      v71 = v70 + v69;
      if ((v70 + v69) > *(a1 + 160))
      {
        v105 = *(a1 + 168);
        if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 3, 0))
        {
LABEL_56:
          v72 = (*(*(v49 + 1784) + 8) - **(v49 + 1784)) + 63;
          v73 = *(a1 + 240);
          v74 = v73 + v72;
          if ((v73 + v72) > *(a1 + 224))
          {
            v106 = *(a1 + 232);
            if (!AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 5, 0))
            {
              goto LABEL_58;
            }

            v74 = *(a1 + 232) + v73 - v106 + v72;
            if (v74 > *(a1 + 224))
            {
              goto LABEL_248;
            }
          }

          *(a1 + 240) = v74;
LABEL_58:
          AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitVertexProgramVariantAndArguments((a1 + 2120), (a1 + 24), v49, &v372);
          v75 = *(v62 + 3);
          v76 = v75 * *(v62 + 2);
          if (v75 == 3)
          {
            v77 = 3;
          }

          else
          {
            v77 = 4;
          }

          v78 = v76 / v77;
          if (v78 <= 1)
          {
            v78 = 1;
          }

          LODWORD(v79) = 1640235008;
          DWORD1(v79) = v78;
          *(&v79 + 1) = 1;
          v80 = *(a1 + 72);
          *v80 = v79;
          *(a1 + 72) = v80 + 1;
          ++*(a1 + 1940);
          *(a1 + 1956) += v78;
          goto LABEL_64;
        }

        v71 = *(a1 + 168) + v70 - v105 + v69;
        if (v71 > *(a1 + 160))
        {
          goto LABEL_248;
        }
      }

      *(a1 + 176) = v71;
      goto LABEL_56;
    }

LABEL_32:
    v47 = v356 + 4;
  }

  while (v356 != 20);
  v114 = *(a1 + 72);
  v115 = *(a1 + 80);
  if ((v115 + 4) > *(a1 + 64))
  {
    v353 = AGX::DataBufferAllocator<44ul>::growNoInline(a1 + 24, 0, 0);
    v10 = a1 + 78496;
    v116 = *(a1 + 72);
    if (!v353)
    {
      goto LABEL_109;
    }

    v354 = v116 + v115 - v114 + 4;
    if (v354 <= *(a1 + 64))
    {
      *(a1 + 80) = v354;
      v10 = a1 + 78496;
      *v114 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(a1 + 24, 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      v116 = *(a1 + 72);
      goto LABEL_109;
    }

LABEL_248:
    abort();
  }

  *(a1 + 80) = v115 + 4;
  v116 = v114;
  v10 = a1 + 78496;
LABEL_109:
  *v116 = 536871298;
  *(a1 + 72) = v116 + 4;
  if (!*(*(a1 + 1912) + 520))
  {
    v117 = *(a1 + 1968) - *(a1 + 1984);
    *(v117 + 140) = 1;
    if ((*(v117 + 136) & 4) != 0)
    {
      **(a1 + 8) = 1;
    }
  }

  v361 = &unk_2A23F81E0;
  if (__p)
  {
    v364 = __p;
    operator delete(__p);
  }

  v118 = *(a1 + 30328);
  *(v118 + 1606) = 1;
  *(v118 + 585) = 1;
  *(v118 + 581) = 1;
  *(v118 + 2224) = 1;
  *(v118 + 544) = 0;
  *(v118 + 528) = 0;
  *(v118 + 496) = 0u;
  *(v118 + 512) = 0u;
  *(v118 + 700) = 8;
  *(v118 + 1708) = 8;
  v119 = *(a1 + 72);
  *(a1 + 72) = v119 + 1;
  *v119 = *(v355 + 12);
  v120 = *(v10 + 8);
  v121 = *(v10 + 16);
  v122 = *v10;
  if (!*v10)
  {
    v123 = *(v10 + 16);
    v122 = *(v10 + 8);
    v124 = *(v10 + 24);
    if (v121)
    {
      goto LABEL_117;
    }

    goto LABEL_252;
  }

  if (!v120)
  {
    v123 = *(v10 + 16);
    v124 = *(v10 + 24);
    if (v121)
    {
      goto LABEL_117;
    }

    goto LABEL_252;
  }

  AGX::FenceList::merge(*v10, v120);
  v123 = *(v10 + 16);
  v124 = *(v10 + 24);
  if (!v123)
  {
LABEL_252:
    v121 = v124;
    goto LABEL_253;
  }

LABEL_117:
  if (v124)
  {
    AGX::FenceList::merge(v123, v124);
  }

LABEL_253:
  if (FenceEncoder::encode((a1 + 1880), 1, *(a1 + 30320), v121, v122, 0, 0))
  {
    *(v10 + 976) |= 0x20000uLL;
  }

LABEL_426:
  v335 = *(a1 + 30328);
  *(v335 + 564) = *(v10 + 64);
  *(v335 + 583) = 0;
  v336 = *(v10 + 72);
  if (!v336 || (v338 = *(v10 + 80), v337 = *(v10 + 84), (v338 & v337) == 0xFFFFFFFF))
  {
    *(v335 + 596) = -1;
    *(v335 + 588) = -1;
  }

  else
  {
    *(v335 + 588) = [v336 resourceID];
    *(v335 + 592) = v338;
    *(v335 + 596) = v337;
    v10 = a1 + 78496;
  }

  *(v10 + 80) = -1;
  v339 = *(v10 + 72);
  if (!v339 || (v341 = *(v10 + 88), v340 = *(v10 + 92), (v341 & v340) == 0xFFFFFFFF))
  {
    *(v335 + 1624) = -1;
    *(v335 + 1632) = -1;
  }

  else
  {
    *(v335 + 1624) = [v339 resourceID];
    *(v335 + 1628) = v341;
    *(v335 + 1632) = v340;
    v10 = a1 + 78496;
  }

  *(v10 + 88) = -1;
  if (*(v10 + 984) != *(v10 + 992) || *(v10 + 1032) != *(v10 + 1040) || *(v10 + 1008) != *(v10 + 1016) || *(v10 + 1056) != *(v10 + 1064))
  {
    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::encodeTimestampLists(a1, *(a1 + 30320), (v10 + 984), (a1 + 79504), (a1 + 79528), (a1 + 79552));
    v10 = a1 + 78496;
  }

  v342 = *(a1 + 30328);
  *(v342 + 2068) = *(a1 + 1928);
  *(v342 + 2064) = *(a1 + 1924);
  *(v342 + 2072) = *(a1 + 1932);
  *(v342 + 184) = 0x3A0012006B0003;
  *(v342 + 192) = 1;
  *(v342 + 1615) = 0;
  *(v342 + 582) = 0;
  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::pdmPipelineBarrierType = 1;
  }

  if ((AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::pdmPipelineBarrierType & 1) == 0)
  {
    *(*(a1 + 30328) + 1620) = 0;
  }

  {
    AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::vdmPipelineBarrierType = 1;
  }

  if ((AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(BOOL,BOOL,BOOL,BOOL)::vdmPipelineBarrierType & 1) == 0)
  {
    *(*(a1 + 30328) + 600) = 0;
  }

LABEL_445:
  *(v355 + 208) = 0;
  v343 = *(a1 + 30328);
  if (*(v10 + 248))
  {
    AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getAttachmentInfo(*(a1 + 2392), (a1 + 78760), (a1 + 78824), a1 + 78888, a1 + 78936, (a1 + 78984), (a1 + 78992), a1 + 79000, a1 + 79006, (a1 + 79012), (a1 + 79016), (a1 + 79020), v343 + 720);
    *(v10 + 528) = *(v343 + 1168);
    *(v10 + 544) = *(v343 + 968);
    *(v10 + 248) = *(v10 + 248) & 0xFFFFFEFF | ((*(v343 + 1728) != 0) << 8);
    v343 = *(a1 + 30328);
  }

  v344 = AGX::GtpContinueKeyGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::computeHash((v10 + 248), (v343 + 607));
  v349 = *(a1 + 30328);
  *(v349 + 604) = v344;
  if (v344)
  {
    *(v349 + 583) = 0;
    *(v349 + 1168) &= ~1uLL;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(a1, v345, v346, v347, v348);
  *(a1 + 30320) = 0;
  *(a1 + 30328) = 0;
  if ((*(a1 + 2077) & 1) != 0 || (*(a1 + 2078) & 1) == 0 && (*(a1 + 2074) != 1 || *(a1 + 2073) == 1))
  {
    AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::reset(*(a1 + 2008));
  }
}