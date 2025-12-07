void GTMTL4SMCommandEncoder_processTraceFunc(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 2);
  if (v6 <= -15087)
  {
    if (v6 <= -15166)
    {
      if (v6 == -15171)
      {
        v41 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x790uLL);
        v42 = *(v41 + 1);
        if (v42)
        {
          *a1 = 95;
          v43 = *a2;
          *(a1 + 8) = v42;
          *(a1 + 16) = v43;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v41;
          *(a1 + 56) = 0u;
          *(a1 + 72) = 0u;
          *(a1 + 88) = 0u;
          *(a1 + 104) = 0u;
          *(a1 + 120) = 0u;
          *(a1 + 136) = 0u;
          *(a1 + 152) = 0u;
          *(a1 + 168) = 0u;
          *(a1 + 184) = 0u;
          *(a1 + 200) = 0;
        }

        return;
      }

      if (v6 != -15166)
      {
        return;
      }

      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x790uLL);
      v13 = *(v12 + 1);
      if (!v13)
      {
        return;
      }

      *a1 = 98;
      v14 = *a2;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 24) = -1;
      *(a1 + 40) = *v12;
      v15 = v12[16];
    }

    else
    {
      if (v6 != -15165)
      {
        if (v6 != -15127)
        {
          v8 = -15104;
          goto LABEL_21;
        }

LABEL_23:
        v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 48) = GTTraceFunc_argumentBytesWithMap(a2, v16[8], a3);
        return;
      }

      v44 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x790uLL);
      v45 = *(v44 + 1);
      if (!v45)
      {
        return;
      }

      *a1 = 98;
      v46 = *a2;
      *(a1 + 8) = v45;
      *(a1 + 16) = v46;
      *(a1 + 24) = -1;
      *(a1 + 40) = *v44;
      v15 = v44[24];
    }

    v47 = GTTraceFunc_argumentBytesWithMap(a2, v15, a3);
    bzero((a1 + 64), 0x750uLL);
    *(a1 + 56) = v47;
    *(a1 + 1540) = 1065353216;
    *(a1 + 1916) = 1;
    memset_pattern16((a1 + 1432), &unk_24DA90D30, 0x40uLL);
    *(a1 + 1929) = 1028;
    v22 = 0x706050403020100;
LABEL_64:
    *(a1 + 1496) = v22;
    return;
  }

  if (v6 > -14906)
  {
    if (v6 > -14889)
    {
      switch(v6)
      {
        case -14888:
LABEL_25:
          *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          break;
        case -14887:
LABEL_24:
          *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          break;
        case -14884:
          v9 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x790uLL);
          v10 = *(v9 + 1);
          if (v10)
          {
            *a1 = 105;
            v11 = *a2;
            *(a1 + 8) = v10;
            *(a1 + 16) = v11;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v9;
            *(a1 + 56) = 0;
            *(a1 + 64) = 0;
          }

          break;
      }

      return;
    }

    if (v6 != -14905)
    {
      v8 = -14892;
LABEL_21:
      if (v6 == v8)
      {
LABEL_22:
        *(a1 + 24) = *a2;
      }

      return;
    }

    goto LABEL_23;
  }

  switch(v6)
  {
    case -15086:
      goto LABEL_25;
    case -15085:
      goto LABEL_24;
    case -15084:
      v7 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 196) = *(v7 + 1);
      *(a1 + 200) = *(v7 + 2);
      return;
    case -15083:
      v36 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v36 + 2) + 72) = *(v36 + 1);
      return;
    case -15068:
      goto LABEL_23;
    case -15047:
      goto LABEL_22;
    case -15041:
      v32 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v33 = *(v32 + 2);
      if (v33)
      {
        *(a1 + 64) = *(v32 + 1);
        v33 = *(v32 + 2);
        if ((v33 & 2) == 0)
        {
LABEL_45:
          if ((v33 & 4) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_68;
        }
      }

      else if ((v33 & 2) == 0)
      {
        goto LABEL_45;
      }

      *(a1 + 72) = *(v32 + 1);
      v33 = *(v32 + 2);
      if ((v33 & 4) == 0)
      {
LABEL_46:
        if ((v33 & 8) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_69;
      }

LABEL_68:
      *(a1 + 80) = *(v32 + 1);
      v33 = *(v32 + 2);
      if ((v33 & 8) == 0)
      {
LABEL_47:
        if ((v33 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

LABEL_69:
      *(a1 + 88) = *(v32 + 1);
      if ((*(v32 + 2) & 0x10) == 0)
      {
        return;
      }

LABEL_70:
      *(a1 + 96) = *(v32 + 1);
      break;
    case -15040:
      v29 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1516) = *(v29 + 2);
      *(a1 + 1520) = *(v29 + 3);
      *(a1 + 1524) = *(v29 + 4);
      *(a1 + 1528) = *(v29 + 5);
      return;
    case -15039:
      v28 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 8 * *(v28 + 2) + 1432) = *(v28 + 1);
      return;
    case -15038:
      *(a1 + 1924) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15037:
      v34 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1504) = *(v34 + 2);
      *(a1 + 1508) = *(v34 + 3);
      *(a1 + 1512) = *(v34 + 4);
      return;
    case -15036:
      *(a1 + 1925) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15035:
      *(a1 + 1416) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15034:
      *(a1 + 1929) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15033:
      *(a1 + 1926) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15032:
      *(a1 + 1540) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
      return;
    case -15031:
      v30 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v30 + 2) + 1792) = *(v30 + 1);
      return;
    case -15030:
      *(a1 + 112) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15029:
      v22 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      goto LABEL_64;
    case -15028:
      v37 = (a1 + 904);
      v38 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 896) = 1;
      v39 = *(v38 + 24);
      *v37 = *(v38 + 8);
      *(a1 + 920) = v39;
      return;
    case -15027:
      v24 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 896) = *(v24 + 1);
      v25 = GTTraceFunc_argumentBytesWithMap(a2, v24[16], a3);
      v26 = 32 * *(v24 + 1);
      v27 = (a1 + 904);
      goto LABEL_56;
    case -15026:
      v31 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1532) = *(v31 + 2);
      *(a1 + 1536) = *(v31 + 3);
      return;
    case -15025:
      v23 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
      *(a1 + 1536) = v23;
      *(a1 + 1532) = v23;
      return;
    case -15024:
      *(a1 + 1930) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15023:
      v21 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v21 + 3) + 1544) = *(v21 + 1);
      *(a1 + 4 * *(v21 + 3) + 1668) = *(v21 + 2);
      return;
    case -15022:
      *(a1 + 1927) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15021:
      v35 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1916) = *(v35 + 1);
      *(a1 + 1424) = GTTraceFunc_argumentBytesWithMap(a2, v35[16], a3);
      return;
    case -15020:
      v17 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 120) = 1;
      v18 = *(v17 + 24);
      v19 = *(v17 + 40);
      *(a1 + 128) = *(v17 + 8);
      *(a1 + 144) = v18;
      *(a1 + 160) = v19;
      return;
    case -15019:
      v40 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 120) = *(v40 + 1);
      v25 = GTTraceFunc_argumentBytesWithMap(a2, v40[16], a3);
      v26 = 48 * *(v40 + 1);
      v27 = (a1 + 128);
LABEL_56:

      memcpy(v27, v25, v26);
      return;
    case -15018:
      v20 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1928) = *(v20 + 1);
      *(a1 + 1920) = *(v20 + 2);
      return;
    default:
      return;
  }
}

__n128 GTMTLSMRenderCommandEncoder_init(uint64_t a1, uint64_t a2)
{
  bzero((a1 + 8), 0x2B60uLL);
  *a1 = a2;
  memset_pattern16((a1 + 10116), &unk_24DA90D20, 0x40uLL);
  memset_pattern16((a1 + 10244), &unk_24DA90D20, 0x40uLL);
  memset_pattern16((a1 + 10628), &unk_24DA90D20, 0x40uLL);
  *(a1 + 10692) = 0x3F8000003F800000;
  *(a1 + 11084) = 0x100000001;
  *(a1 + 10024) = 1065353216;
  memset_pattern16((a1 + 9872), &unk_24DA90D30, 0x40uLL);
  *(a1 + 760) = -1;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(a1 + 728) = result;
  *(a1 + 744) = result;
  *(a1 + 696) = result;
  *(a1 + 712) = result;
  *(a1 + 664) = result;
  *(a1 + 680) = result;
  *(a1 + 632) = result;
  *(a1 + 648) = result;
  *(a1 + 600) = result;
  *(a1 + 616) = result;
  *(a1 + 568) = result;
  *(a1 + 584) = result;
  *(a1 + 536) = result;
  *(a1 + 552) = result;
  *(a1 + 520) = result;
  *(a1 + 10000) = 0x706050403020100;
  *(a1 + 11102) = 1028;
  return result;
}

uint64_t GTMTLSMRenderCommandEncoder_loadIndirectCommand(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + a2[1]);
  if (!v4)
  {
    return 0;
  }

  v9 = *a2;
  if (*(*a2 + 26) || (result = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a4[5], *(a3 + a2[2])), (*(a1 + 8544) = result) != 0))
  {
    if (!v9[19])
    {
      v11 = v9[38];
      if (v11 >= 0x40)
      {
        v12 = 64;
      }

      else
      {
        v12 = v9[38];
      }

      *(a1 + 8) &= -1 << v12;
      if (v11)
      {
        v13 = 0;
        v14 = a3 + a2[3];
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v15);
          if (v16)
          {
            v17 = v15 - *v16;
            v18 = v16[2];
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          v19 = a1 + 8 * v13;
          *(v19 + 24) = v18;
          *(v19 + 272) = v17;
          ++v13;
        }

        while (v13 < v9[38]);
      }

      v20 = v9[31];
      if (v20 >= 0x40)
      {
        v21 = 64;
      }

      else
      {
        v21 = v9[31];
      }

      *(a1 + 1920) &= -1 << v21;
      if (v20)
      {
        v22 = 0;
        v23 = a3 + a2[4];
        do
        {
          v24 = *(v23 + 8 * v22);
          v25 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v24);
          if (v25)
          {
            v26 = v24 - *v25;
            v27 = v25[2];
          }

          else
          {
            v27 = 0;
            v26 = 0;
          }

          v28 = a1 + 8 * v22;
          *(v28 + 1928) = v27;
          *(v28 + 2176) = v26;
          ++v22;
        }

        while (v22 < v9[31]);
      }

      v29 = v9[35];
      if (v29 >= 0x40)
      {
        v30 = 64;
      }

      else
      {
        v30 = v9[35];
      }

      *(a1 + 3576) &= -1 << v30;
      if (v29)
      {
        v31 = 0;
        v32 = a3 + a2[5];
        do
        {
          v33 = *(v32 + 8 * v31);
          v34 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v33);
          if (v34)
          {
            v35 = v33 - *v34;
            v36 = v34[2];
          }

          else
          {
            v36 = 0;
            v35 = 0;
          }

          v37 = a1 + 8 * v31;
          *(v37 + 3584) = v36;
          *(v37 + 3832) = v35;
          ++v31;
        }

        while (v31 < v9[35]);
      }

      v38 = v9[34];
      if (v38 >= 0x40)
      {
        v39 = 64;
      }

      else
      {
        v39 = v9[34];
      }

      *(a1 + 5232) &= -1 << v39;
      if (v38)
      {
        v40 = (a3 + a2[6]);
        v41 = (a1 + 5488);
        v42 = 655;
        do
        {
          v44 = *v40++;
          v43 = v44;
          v45 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v44);
          if (v45)
          {
            v46 = v43 - *v45;
            v47 = v45[2];
          }

          else
          {
            v47 = 0;
            v46 = 0;
          }

          *(v41 - 31) = v47;
          *v41++ = v46;
          v48 = v42 - 654;
          ++v42;
        }

        while (v48 < v9[34]);
      }
    }

    v49 = v9[36];
    if (v9[36])
    {
      v50 = (a3 + a2[8]);
      v51 = (a1 + 10960);
      do
      {
        v52 = *v50++;
        *v51++ = v52;
        --v49;
      }

      while (v49);
    }

    if (v9[40])
    {
      v53 = v9[38];
      v54 = v53 >= 0x40 ? 64 : v9[38];
      *(a1 + 16) |= ~(-1 << v54);
      if (v53)
      {
        v55 = (a3 + a2[10]);
        v56 = (a1 + 520);
        do
        {
          v57 = *v55++;
          *v56++ = v57;
          --v53;
        }

        while (v53);
      }
    }

    if (!v9[23])
    {
      *(a1 + 9848) = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a4[3], *(a3 + a2[12]));
    }

    if (!v9[22])
    {
      *(a1 + 11097) = *(a3 + a2[13]);
    }

    if (!v9[20])
    {
      *(a1 + 11096) = *(a3 + a2[14]);
    }

    if (!v9[25])
    {
      *(a1 + 11098) = *(a3 + a2[15]);
    }

    if (!v9[29])
    {
      *(a1 + 11099) = *(a3 + a2[16]);
    }

    if (!v9[21])
    {
      v58 = (a3 + a2[17]);
      v60 = *v58;
      v59 = v58[1];
      *(a1 + 10008) = v60;
      *(a1 + 10016) = v59;
    }

    if (!v9[28])
    {
      *(a1 + 10044) = *(a3 + a2[18]);
    }

    if (!v9[27])
    {
      v61 = *(a3 + a2[20]);
      *(a1 + 9328) = v61;
      if (v61)
      {
        v62 = (a3 + a2[21]);
        v63 = (a1 + 9336);
        v64 = v61 - 1;
        if (v64 >= 0xF)
        {
          v64 = 15;
        }

        v65 = v64 + 1;
        do
        {
          v66 = *v62;
          v67 = v62[1];
          v62 += 2;
          *v63 = v66;
          v63[1] = v67;
          v63 += 2;
          --v65;
        }

        while (v65);
      }
    }

    if (!v9[30])
    {
      v68 = *(a3 + a2[22]);
      *(a1 + 8552) = v68;
      if (v68)
      {
        v69 = (a3 + a2[23]);
        v70 = (a1 + 8560);
        v71 = v68 - 1;
        if (v71 >= 0xF)
        {
          v71 = 15;
        }

        v72 = v71 + 1;
        do
        {
          v73 = *v69;
          v74 = v69[2];
          v70[1] = v69[1];
          v70[2] = v74;
          *v70 = v73;
          v70 += 3;
          v69 += 3;
          --v72;
        }

        while (v72);
      }
    }

    if (!v9[18])
    {
      *(a1 + 10028) = *(a3 + a2[24]);
    }

    if (v4 == 8 || v4 == 4)
    {
      v75 = a3 + a2[25];
      v76 = *(*a4 + 24);
      v77 = *(*a4 + 12);
      v78 = *v75;
      v79 = GTMTLGPUAddressResource_resourceForGPUAddress(v76, v77, *v75);
      if (v79)
      {
        v80 = v78 - *v79;
        v81 = v79[2];
      }

      else
      {
        v81 = 0;
        v80 = 0;
      }

      *(a1 + 9864) = v81;
      *(a1 + 10704) = v80;
      *(a1 + 10708) = *(v75 + 8);
      *(a1 + 10692) = *(v75 + 16);
      return v4 != 8 || v81 != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t GTMTLSMComputeCommandEncoder_loadIndirectCommand(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + a2[1]);
  if (!v4)
  {
    return 0;
  }

  v9 = *a2;
  if (*(*a2 + 26) || (result = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a4[6], *(a3 + a2[2])), (*(a1 + 8) = result) != 0))
  {
    if (!v9[19])
    {
      v11 = v9[32];
      v12 = v11 >= 0x40 ? 64 : v9[32];
      *(a1 + 16) &= -1 << v12;
      if (v11)
      {
        v13 = 0;
        v14 = a3 + a2[7];
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v15);
          if (v16)
          {
            v17 = v15 - *v16;
            v18 = v16[2];
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          v19 = a1 + 8 * v13;
          *(v19 + 32) = v18;
          *(v19 + 280) = v17;
          ++v13;
        }

        while (v13 < v9[32]);
      }
    }

    if (v9[40])
    {
      v20 = v9[32];
      v21 = v20 >= 0x40 ? 64 : v9[32];
      *(a1 + 24) |= ~(-1 << v21);
      if (v20)
      {
        v22 = (a3 + a2[10]);
        v23 = (a1 + 528);
        do
        {
          v24 = *v22++;
          *v23++ = v24;
          --v20;
        }

        while (v20);
      }
    }

    v25 = v9[33];
    if (v9[33])
    {
      v26 = (a3 + a2[9]);
      v27 = (a1 + 1984);
      do
      {
        v28 = *v26++;
        *v27++ = v28;
        --v25;
      }

      while (v25);
    }

    if (v4 == 32 || v4 == 64)
    {
      v29 = (a3 + a2[25]);
      v30 = *v29;
      *(a1 + 1944) = *(v29 + 2);
      *(a1 + 1928) = v30;
      v31 = *(v29 + 24);
      *(a1 + 1968) = *(v29 + 5);
      *(a1 + 1952) = v31;
    }

    return 1;
  }

  return result;
}

void *GTMTLSMContext_getObject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getDevice(uint64_t a1, unint64_t a2)
{
  v7 = 1;
  entry = find_entry(a1, &v7, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v4 = *(*entry + 32);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v4[2] > a2 || (v6 = v4, v4[3] <= a2))
    {
      if (result)
      {
        return result;
      }

      v6 = 0;
    }

    v4 = v4[4];
    result = v6;
  }

  while (v4);
  return result;
}

uint64_t GTMTLSMContext_lastFunction(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

uint64_t GTMTLSMContext_getDrawableTexture(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = *(a2 + 48);
  entry = find_entry(a1, &v9, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v6 = *(*entry + 32);
  if (!v6)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(a2 + 16) > a3 || (v8 = v6, *(v6 + 24) <= a3))
    {
      if (result)
      {
        return result;
      }

      v8 = 0;
    }

    v6 = *(v6 + 32);
    result = v8;
  }

  while (v6);
  return result;
}

_DWORD *GTMTLSMContext_getObjects(_DWORD *result, unint64_t a2, apr_array_header_t *arr)
{
  v3 = result[3];
  if (v3 >= 1)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      v8 = *(*(v6 + 3) + 8 * i);
      if (v8[2] > a2)
      {
        break;
      }

      if (v8[3] > a2)
      {
        v9 = 0;
        do
        {
          if (v8[2] > a2 || (v10 = v8, v8[3] <= a2))
          {
            if (v9)
            {
              break;
            }

            v10 = 0;
          }

          v8 = v8[4];
          v9 = v10;
        }

        while (v8);
        result = apr_array_push(arr);
        *result = v9;
        v3 = v6[3];
      }
    }
  }

  return result;
}

uint64_t GTMTLSMObjectPtr_compare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void *AddObjectAncestors(uint64_t *a1, void *Object, unint64_t a3, apr_array_header_t *a4)
{
  while (1)
  {
    result = apr_array_push(a4);
    *result = Object;
    v9 = *Object;
    if (*Object != 80)
    {
      break;
    }

    if (Object[18])
    {
      v31 = Object[18];
      v22 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v22)
      {
        v23 = *(v22 + 32);
        if (v23)
        {
          v13 = 0;
          do
          {
            if (v23[2] > a3 || (v24 = v23, v23[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v24 = 0;
            }

            v23 = v23[4];
            v13 = v24;
          }

          while (v23);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }

    if (Object[19])
    {
      v31 = Object[19];
      v25 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v25)
      {
        v26 = *(v25 + 32);
        if (v26)
        {
          v13 = 0;
          do
          {
            if (v26[2] > a3 || (v27 = v26, v26[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v27 = 0;
            }

            v26 = v26[4];
            v13 = v27;
          }

          while (v26);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

LABEL_69:
      v13 = 0;
      return AddObjectAncestors(a1, v13, a3, a4);
    }

    v10 = Object[6];
    if (!v10)
    {
      return result;
    }

    Object = GTMTLSMContext_getObject(*a1, v10, a3);
  }

  if (v9 == 16)
  {
    if (Object[19])
    {
      v31 = Object[19];
      v15 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v15 && (v16 = *(v15 + 32)) != 0)
      {
        v17 = 0;
        do
        {
          if (v16[2] > a3 || (v18 = v16, v16[3] <= a3))
          {
            if (v17)
            {
              break;
            }

            v18 = 0;
          }

          v16 = v16[4];
          v17 = v18;
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      result = AddObjectAncestors(a1, v17, a3, a4);
    }

    if (Object[6])
    {
      v31 = Object[6];
      v28 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v28)
      {
        v29 = *(v28 + 32);
        if (v29)
        {
          v13 = 0;
          do
          {
            if (v29[2] > a3 || (v30 = v29, v29[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v30 = 0;
            }

            v29 = v29[4];
            v13 = v30;
          }

          while (v29);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }
  }

  else
  {
    if (v9 == 101)
    {
      if (!Object[16])
      {
        return result;
      }

      v31 = Object[16];
      v19 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v19)
      {
        v20 = *(v19 + 32);
        if (v20)
        {
          v13 = 0;
          do
          {
            if (v20[2] > a3 || (v21 = v20, v20[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v21 = 0;
            }

            v20 = v20[4];
            v13 = v21;
          }

          while (v20);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }

    if (v9 == 22 && Object[6])
    {
      v31 = Object[6];
      v11 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v11)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          v13 = 0;
          do
          {
            if (v12[2] > a3 || (v14 = v12, v12[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v14 = 0;
            }

            v12 = v12[4];
            v13 = v14;
          }

          while (v12);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }
  }

  return result;
}

apr_hash_index_t *GTMTLSMContext_buildResourceChildrenMap(uint64_t *a1, unint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, *a3, 0, a4);
  v7 = 0;
  v8 = 0;
  v38 = a1;
  v9 = a1 + 1;
  do
  {
    if (v8 <= *(v9[byte_24DA90D60[v7]] + 12))
    {
      v8 = *(v9[byte_24DA90D60[v7]] + 12);
    }

    ++v7;
  }

  while (v7 != 4);
  p = newpool;
  v10 = apr_array_make(newpool, v8, 8);
  v11 = 0;
  v36 = v9;
  do
  {
    v10->nelts = 0;
    v37 = v11;
    GTMTLSMContext_getObjects(v9[byte_24DA90D60[v11]], a2, v10);
    v12 = *a3;
    v13 = apr_array_make(v10->pool, 4, 8);
    if (v10->nelts >= 1)
    {
      v14 = v13;
      v15 = 0;
      do
      {
        v16 = *&v10->elts[8 * v15];
        v17 = *find_entry(a3, (v16 + 8), 8uLL, 0);
        if (!v17 || !*(v17 + 32))
        {
          v14->nelts = 0;
          AddObjectAncestors(v38, v16, a2, v14);
          if (v14->nelts >= 2)
          {
            v18 = 1;
            while (1)
            {
              v19 = *&v14->elts[8 * v18];
              v20 = *find_entry(a3, (v19 + 8), 8uLL, 0);
              if (v20)
              {
                v21 = *(v20 + 32);
                if (v21)
                {
                  break;
                }
              }

              v22 = apr_array_make(v12, 1, 8);
              *apr_array_push(v22) = v16;
              apr_hash_set(a3, (v19 + 8), 8, v22);
              ++v18;
              v16 = v19;
              if (v18 >= v14->nelts)
              {
                goto LABEL_17;
              }
            }

            *apr_array_push(v21) = v16;
          }
        }

LABEL_17:
        ++v15;
      }

      while (v15 < v10->nelts);
    }

    v9 = v36;
    v11 = v37 + 1;
  }

  while (v37 != 3);
  apr_pool_destroy(p);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = a3;
  *(a3 + 40) = 0;
  result = apr_hash_next((a3 + 16));
  if (result)
  {
    v24 = result;
    do
    {
      v25 = *(*(v24 + 1) + 32);
      v26 = *(v25 + 12);
      if (v26 >= 2)
      {
        qsort(*(v25 + 24), v26, *(v25 + 8), GTMTLSMObjectPtr_compare);
        v27 = *(v25 + 12);
        if (v27 < 2)
        {
          v32 = 1;
        }

        else
        {
          v28 = *(v25 + 24);
          v29 = v28 + 1;
          v30 = *v28;
          v31 = v27 - 1;
          v32 = 1;
          do
          {
            v33 = v30;
            v30 = *v29;
            if (*v29 != v33)
            {
              v34 = v28[v32];
              v28[v32++] = v30;
              *v29 = v34;
            }

            ++v29;
            --v31;
          }

          while (v31);
        }

        *(v25 + 12) = v32;
      }

      result = apr_hash_next(v24);
      v24 = result;
    }

    while (result);
  }

  return result;
}

void *GTMTLSMContext_getTextureDescriptor(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v36 = a2;
  result = find_entry(*a1, &v36, 8uLL, 0);
  if (!*result)
  {
    return result;
  }

  v8 = *(*result + 32);
  if (!v8)
  {
    return result;
  }

  v9 = 0;
  do
  {
    if (v8[2] > a3 || (v10 = v8, v8[3] <= a3))
    {
      if (v9)
      {
        v10 = v9;
        goto LABEL_12;
      }

      v10 = 0;
    }

    v8 = v8[4];
    v9 = v10;
  }

  while (v8);
  if (!v10)
  {
    return result;
  }

LABEL_12:
  v11 = v10[19];
  if (!v11)
  {
    v14 = v10[14];
    if (v14)
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *(a4 + 48) = *(v14 + 6);
      *(a4 + 16) = v16;
      *(a4 + 32) = v17;
      *a4 = v15;
    }

    else
    {
      v26 = v10[25];
      if (v26)
      {
        *(a4 + 49) = 2;
        *(a4 + 47) = 1;
        *(a4 + 28) = 65537;
        *(a4 + 44) = 257;
        *(a4 + 16) = 84148994;
        v27 = v10[2];
        v36 = v26;
        result = find_entry(*a1, &v36, 8uLL, 0);
        if (*result)
        {
          v28 = *(*result + 32);
          if (v28)
          {
            v29 = 0;
            do
            {
              if (v28[2] > v27 || (v30 = v28, v28[3] <= v27))
              {
                if (v29)
                {
                  v30 = v29;
                  goto LABEL_62;
                }

                v30 = 0;
              }

              v28 = v28[4];
              v29 = v30;
            }

            while (v28);
            if (!v30)
            {
              return result;
            }

LABEL_62:
            v31 = v30[2];
            v36 = v30[5];
            result = find_entry(*a1, &v36, 8uLL, 0);
            if (*result)
            {
              v32 = *(*result + 32);
              if (v32)
              {
                v33 = 0;
                do
                {
                  if (v32[2] > v31 || (v34 = v32, v32[3] <= v31))
                  {
                    if (v33)
                    {
                      v34 = v33;
                      goto LABEL_73;
                    }

                    v34 = 0;
                  }

                  v32 = v32[4];
                  v33 = v34;
                }

                while (v32);
                if (!v34)
                {
                  return result;
                }

LABEL_73:
                *(a4 + 34) = *(v34 + 136);
                *(a4 + 24) = *(v34 + 22);
                *(a4 + 32) = *(v34 + 23);
                v35 = *(v34 + 274);
                *(a4 + 43) = v35;
                *(a4 + 20) = 4 * (v35 != 0);
              }
            }
          }
        }
      }
    }

    return result;
  }

  result = GTMTLSMContext_getTextureDescriptor(a1, v11, a3, a4);
  v12 = *(v10 + 1);
  if (v12 <= -15689)
  {
    if (v12 == -16196)
    {
      *(a4 + 49) = *(v10 + 166);
      *(a4 + 45) = *(v10 + 168);
      *(a4 + 28) = *(v10 + 82);
      goto LABEL_27;
    }

    v13 = -15775;
    goto LABEL_21;
  }

  if (v12 != -15688 && v12 != -14969)
  {
    v13 = -14801;
LABEL_21:
    if (v12 != v13)
    {
      goto LABEL_27;
    }
  }

  *(a4 + 49) = *(v10 + 166);
  v18 = *(v10 + 168);
  if (*(a4 + 45) - *(v10 + 167) <= v18)
  {
    LOBYTE(v18) = *(a4 + 45) - *(v10 + 167);
  }

  *(a4 + 45) = v18;
  v19 = *(v10 + 82);
  if (*(a4 + 28) - *(v10 + 81) <= v19)
  {
    LOWORD(v19) = *(a4 + 28) - *(v10 + 81);
  }

  *(a4 + 28) = v19;
  *(a4 + 16) = *(v10 + 56);
LABEL_27:
  if (*(v10 + 167))
  {
    v20 = *(a4 + 24);
    if (v20)
    {
      v21 = v20 >> *(v10 + 167);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      *(a4 + 24) = v21;
    }

    if (*(a4 + 32))
    {
      v22 = *(a4 + 32) >> *(v10 + 167);
      if (!v22)
      {
        LOWORD(v22) = 1;
      }

      *(a4 + 32) = v22;
    }

    if (*(a4 + 30))
    {
      v23 = *(a4 + 30) >> *(v10 + 167);
      if (!v23)
      {
        LOWORD(v23) = 1;
      }

      *(a4 + 30) = v23;
    }
  }

  *(a4 + 34) = *(v10 + 80);
  *(a4 + 8) = v10[23];
  if (v12 == -16196 || v12 == -15688 || v12 == -15775)
  {
    v24 = *(a4 + 49);
    if (v24 == 6)
    {
      v25 = *(v10 + 82) / 6u;
    }

    else
    {
      if (v24 != 5)
      {
        return result;
      }

      v25 = 1;
    }

    *(a4 + 28) = v25;
  }

  return result;
}

uint64_t *GTMTLSMComputePipelineState_computePipelineDescriptor(uint64_t *result, uint64_t a2, void *a3, apr_pool_t *a4)
{
  v6 = *(a2 + 56);
  if (!v6)
  {
    if (*(a2 + 48))
    {
      result = memcpy(a3, &GTMTLComputePipelineDescriptorDefaults, 0x3C0uLL);
      a3[106] = *(a2 + 48);
    }

    else if (*(a2 + 40) && *(a2 + 208))
    {
      v8 = result;
      v9 = *(a2 + 16);
      v22 = *(a2 + 40);
      v10 = *find_entry(*result, &v22, 8uLL, 0);
      if (v10 && (v11 = *(v10 + 32)) != 0)
      {
        v12 = 0;
        do
        {
          if (v11[2] > v9 || (v13 = v11, v11[3] <= v9))
          {
            if (v12)
            {
              break;
            }

            v13 = 0;
          }

          v11 = v11[4];
          v12 = v13;
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      result = GTMTLSMComputePipelineState_computePipelineDescriptor(v8, v12, a3, a4);
      v14 = **(a2 + 208);
      if (v14)
      {
        v15 = a3[95] + v14;
        result = apr_palloc(a4, 8 * v15);
        if (a3[95])
        {
          v16 = 0;
          v17 = a3[94];
          do
          {
            result[v16] = *(v17 + 8 * v16);
            ++v16;
          }

          while (a3[95] > v16);
        }

        v18 = *(a2 + 208);
        if (*v18)
        {
          v19 = 1;
          v20 = result;
          do
          {
            v20[a3[95]] = v18[v19];
            ++v20;
          }

          while (*v18 > v19++);
        }

        a3[94] = result;
        a3[95] = v15;
      }
    }

    else
    {
      if (*(a2 + 4) != -16101)
      {
        return result;
      }

      result = memcpy(a3, &GTMTLComputePipelineDescriptorDefaults, 0x3C0uLL);
    }

    a3[113] = *(a2 + 128);
    return result;
  }

  return memcpy(a3, v6, 0x3C0uLL);
}

uint64_t GTMTLSMRenderPipelineState_renderPipelineDescriptorType(uint64_t *a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    v4 = a2[2];
    v15 = a2[5];
    entry = find_entry(*a1, &v15, 8uLL, 0);
    if (*entry)
    {
      v6 = *(*entry + 32);
      if (v6)
      {
        v7 = 0;
        do
        {
          if (v6[2] > v4 || (v8 = v6, v6[3] <= v4))
          {
            if (v7)
            {
LABEL_21:
              v8 = v7;
              goto LABEL_22;
            }

            v8 = 0;
          }

          v6 = v6[4];
          v7 = v8;
        }

        while (v6);
        while (v8)
        {
LABEL_22:
          if (*v8 != 71)
          {
            break;
          }

          v2 = v8;
          v12 = v8[2];
          v15 = v8[5];
          v13 = find_entry(*a1, &v15, 8uLL, 0);
          if (!*v13)
          {
            break;
          }

          v14 = *(*v13 + 32);
          if (!v14)
          {
            break;
          }

          v7 = 0;
          do
          {
            if (v14[2] > v12 || (v8 = v14, v14[3] <= v12))
            {
              if (v7)
              {
                goto LABEL_21;
              }

              v8 = 0;
            }

            v14 = v14[4];
            v7 = v8;
          }

          while (v14);
        }
      }
    }
  }

  if (v2[6])
  {
    return 1;
  }

  if (v2[8])
  {
    return 2;
  }

  if (v2[9])
  {
    return 3;
  }

  v10 = v2[11];
  if (v10 && (v11 = *(v10 + 1016) - 2, v11 <= 3u))
  {
    return dword_24DA90D40[v11];
  }

  else
  {
    return 0;
  }
}

void *GTMTLSMRenderPipelineState_renderPipelineDescriptor(uint64_t *a1, void *a2, uint64_t a3, apr_pool_t *a4)
{
  v6 = a2[6];
  if (v6)
  {

    return memcpy(a3, v6, 0x5E8uLL);
  }

  else
  {
    v10 = a2[2];
    v28 = a2[5];
    result = find_entry(*a1, &v28, 8uLL, 0);
    if (*result)
    {
      v11 = *(*result + 32);
      if (v11)
      {
        v12 = 0;
        do
        {
          if (v11[2] > v10 || (v13 = v11, v11[3] <= v10))
          {
            if (v12)
            {
              v13 = v12;
              goto LABEL_16;
            }

            v13 = 0;
          }

          v11 = v11[4];
          v12 = v13;
        }

        while (v11);
        if (!v13)
        {
          return result;
        }

LABEL_16:
        if (*v13 == 71)
        {
          result = GTMTLSMRenderPipelineState_renderPipelineDescriptor(a1, v13, a3, a4);
          v14 = a2[10];
          v15 = v14[9];
          if (v15)
          {
            v16 = (*(a3 + 1072) + v15);
            result = apr_palloc(a4, 8 * v16);
            if (*(a3 + 1072))
            {
              v17 = 0;
              v18 = *(a3 + 1064);
              do
              {
                result[v17] = *(v18 + 8 * v17);
                ++v17;
              }

              while (*(a3 + 1072) > v17);
            }

            v14 = a2[10];
            if (v14[9])
            {
              v19 = 0;
              v20 = v14[8];
              do
              {
                result[*(a3 + 1072) + v19] = *(v20 + 8 * v19);
                ++v19;
              }

              while (v14[9] > v19);
            }

            *(a3 + 1064) = result;
            *(a3 + 1072) = v16;
          }

          v21 = v14[1];
          if (v21)
          {
            v22 = (*(a3 + 880) + v21);
            result = apr_palloc(a4, 8 * v22);
            if (*(a3 + 880))
            {
              v23 = 0;
              v24 = *(a3 + 872);
              do
              {
                result[v23] = *(v24 + 8 * v23);
                ++v23;
              }

              while (*(a3 + 880) > v23);
            }

            v25 = a2[10];
            if (v25[1])
            {
              v26 = 0;
              v27 = *v25;
              do
              {
                result[*(a3 + 880) + v26] = *(v27 + 8 * v26);
                ++v26;
              }

              while (v25[1] > v26);
            }

            *(a3 + 872) = result;
            *(a3 + 880) = v22;
          }

          *(a3 + 1280) = a2[16];
        }
      }
    }
  }

  return result;
}

uint64_t *GTMTLSMRenderPipelineState_tilePipelineDescriptor(uint64_t *result, void *a2, uint64_t **a3, apr_pool_t *a4)
{
  v5 = a2[8];
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[3];
    *(a3 + 2) = v5[2];
    *(a3 + 3) = v8;
    *a3 = v6;
    *(a3 + 1) = v7;
    v9 = v5[4];
    v10 = v5[5];
    v11 = v5[7];
    *(a3 + 6) = v5[6];
    *(a3 + 7) = v11;
    *(a3 + 4) = v9;
    *(a3 + 5) = v10;
    v12 = v5[8];
    v13 = v5[9];
    v14 = v5[11];
    *(a3 + 10) = v5[10];
    *(a3 + 11) = v14;
    *(a3 + 8) = v12;
    *(a3 + 9) = v13;
  }

  else
  {
    v17 = result;
    v18 = a2[2];
    v28 = a2[5];
    result = find_entry(*result, &v28, 8uLL, 0);
    if (*result)
    {
      v19 = *(*result + 32);
      if (v19)
      {
        v20 = 0;
        do
        {
          if (v19[2] > v18 || (v21 = v19, v19[3] <= v18))
          {
            if (v20)
            {
              v21 = v20;
              goto LABEL_15;
            }

            v21 = 0;
          }

          v19 = v19[4];
          v20 = v21;
        }

        while (v19);
        if (!v21)
        {
          return result;
        }

LABEL_15:
        if (*v21 == 71)
        {
          GTMTLSMRenderPipelineState_tilePipelineDescriptor(v17, v21, a3, a4);
          v22 = (*(a2[10] + 56) + *(a3 + 4));
          result = apr_palloc(a4, 8 * v22);
          if (a3[1])
          {
            v23 = 0;
            v24 = *a3;
            do
            {
              result[v23] = *(v24 + 8 * v23);
              ++v23;
            }

            while (a3[1] > v23);
          }

          v25 = a2[10];
          if (*(v25 + 56))
          {
            v26 = 0;
            v27 = *(v25 + 48);
            do
            {
              result[a3[1] + v26] = *(v27 + 8 * v26);
              ++v26;
            }

            while (*(v25 + 56) > v26);
          }

          *a3 = result;
          a3[1] = v22;
        }
      }
    }
  }

  return result;
}

uint64_t GTMTLSMRenderPipelineState_fragmentFunction(uint64_t *a1, void *a2)
{
  if (a2[14])
  {
    return 0;
  }

  v5 = a2[6];
  if (v5)
  {
    return *(v5 + 1176);
  }

  v6 = a2[9];
  if (v6)
  {
    return *(v6 + 344);
  }

  v13[3] = v2;
  v13[4] = v3;
  v8 = a2[2];
  v13[0] = a2[5];
  v9 = *find_entry(*a1, v13, 8uLL, 0);
  if (v9 && (v10 = *(v9 + 32)) != 0)
  {
    v11 = 0;
    do
    {
      if (v10[2] > v8 || (v12 = v10, v10[3] <= v8))
      {
        if (v11)
        {
          return GTMTLSMRenderPipelineState_fragmentFunction(a1, v11);
        }

        v12 = 0;
      }

      v10 = v10[4];
      v11 = v12;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return GTMTLSMRenderPipelineState_fragmentFunction(a1, v11);
}

uint64_t GTMTLSMComputePipelineState_computeFunction(uint64_t *a1, void *a2)
{
  result = a2[6];
  if (!result)
  {
    v4 = a2[7];
    if (v4)
    {
      return *(v4 + 848);
    }

    else
    {
      v5 = a2[2];
      v10 = a2[5];
      v6 = *find_entry(*a1, &v10, 8uLL, 0);
      if (v6 && (v7 = *(v6 + 32)) != 0)
      {
        v8 = 0;
        do
        {
          if (v7[2] > v5 || (v9 = v7, v7[3] <= v5))
          {
            if (v8)
            {
              return GTMTLSMComputePipelineState_computeFunction(a1, v8);
            }

            v9 = 0;
          }

          v7 = v7[4];
          v8 = v9;
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      return GTMTLSMComputePipelineState_computeFunction(a1, v8);
    }
  }

  return result;
}

uint64_t GTMTLSMPipelineState_isVisibleFunctionTableCompatible(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (*(a3 + 136) == v5)
  {
    return 1;
  }

  v18[5] = v3;
  v18[6] = v4;
  if (*(a3 + 128) == v5)
  {
    return 1;
  }

  if (*a2 == 29)
  {
    v14 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    entry = find_entry(*a1, v18, 8uLL, 0);
    if (*entry)
    {
      v16 = *(*entry + 32);
      if (v16)
      {
        v17 = 0;
        do
        {
          if (v16[2] > v14 || (v13 = v16, v16[3] <= v14))
          {
            if (v17)
            {
              v13 = v17;
              goto LABEL_31;
            }

            v13 = 0;
          }

          v16 = v16[4];
          v17 = v13;
        }

        while (v16);
        if (!v13)
        {
          return 0;
        }

LABEL_31:
        if (*v13 == 29)
        {
          return GTMTLSMPipelineState_isVisibleFunctionTableCompatible(a1, v13, a3);
        }
      }
    }
  }

  else if (*a2 == 71)
  {
    v9 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    v10 = find_entry(*a1, v18, 8uLL, 0);
    if (*v10)
    {
      v11 = *(*v10 + 32);
      if (v11)
      {
        v12 = 0;
        do
        {
          if (v11[2] > v9 || (v13 = v11, v11[3] <= v9))
          {
            if (v12)
            {
              v13 = v12;
              goto LABEL_28;
            }

            v13 = 0;
          }

          v11 = v11[4];
          v12 = v13;
        }

        while (v11);
        if (!v13)
        {
          return 0;
        }

LABEL_28:
        if (*v13 == 71)
        {
          return GTMTLSMPipelineState_isVisibleFunctionTableCompatible(a1, v13, a3);
        }
      }
    }
  }

  return 0;
}

BOOL GTMTLSMPipelineState_supportsIndirectCommandBuffers(uint64_t a1)
{
  if (*a1 == 29)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v2 = *(v3 + 956);
      return v2 != 0;
    }
  }

  else if (*a1 == 71)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 1500);
      return v2 != 0;
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      v2 = *(v4 + 511);
      return v2 != 0;
    }
  }

  return 0;
}

uint64_t GTMTLSMPipelineState_sortIndirectResources(uint64_t *a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  v5 = a1;
  do
  {
    v6 = *v5;
    if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(*v5))
    {
      *v5 = a1[v3];
      a1[v3] = v6;
      v3 = (v3 + 1);
    }

    ++v5;
    --v4;
  }

  while (v4);
  return v3;
}

void GTMTLSMContext_indirectCommandBufferResources(uint64_t a1, _DWORD **a2, unint64_t a3, apr_pool_t *p)
{
  v8 = apr_array_make(p, 128, 8);
  v42 = a2;
  GTMTLSMContext_getObjects(a2[1], a3, v8);
  elts = v8->elts;
  nelts = v8->nelts;
  v11 = apr_array_make(p, v8->nelts, 32);
  if (nelts >= 1)
  {
    do
    {
      v12 = *elts++;
      v13 = apr_array_push(v11);
      *v13 = vextq_s8(v12[7], v12[7], 8uLL);
      v13[1].i8[8] = 0;
      v13[1].i64[0] = v12->i64[1];
      --nelts;
    }

    while (nelts);
  }

  qsort(v11->elts, v11->nelts, v11->elt_size, GTMTLGPUAddressResource_compare);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v11;
  v14 = apr_hash_make(p);
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  v15 = apr_hash_make(p);
  *(a1 + 40) = v15;
  v16 = apr_hash_make(p);
  *(a1 + 48) = v16;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v8->nelts = 0;
  GTMTLSMContext_getObjects(v42[5], a3, v8);
  v17 = v8->elts;
  LODWORD(v18) = GTMTLSMPipelineState_sortIndirectResources(v17, v8->nelts);
  v8->nelts = v18;
  v19 = apr_array_make(p, v18, 32);
  if (v18 >= 1)
  {
    v18 = v18;
    do
    {
      v20 = *v17++;
      v21 = apr_array_push(v19);
      v22 = v20[1];
      *v21 = v20[15];
      v21[1] = v22;
      v21[2] = v20[17];
      --v18;
    }

    while (v18);
  }

  v23 = v19->nelts;
  if (v23 >= 1)
  {
    v24 = v19->elts;
    do
    {
      apr_hash_set(v15, v24, 8, v24);
      v24 += 32;
      --v23;
    }

    while (v23);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(v42[6], a3, v8);
  v25 = v8->elts;
  LODWORD(v26) = GTMTLSMPipelineState_sortIndirectResources(v25, v8->nelts);
  v8->nelts = v26;
  v27 = apr_array_make(p, v26, 32);
  if (v26 >= 1)
  {
    v26 = v26;
    do
    {
      v28 = *v25++;
      v29 = apr_array_push(v27);
      v30 = v28[1];
      *v29 = v28[15];
      v29[1] = v30;
      v29[2] = v28[17];
      --v26;
    }

    while (v26);
  }

  v31 = v27->nelts;
  if (v31 >= 1)
  {
    v32 = v27->elts;
    do
    {
      apr_hash_set(v16, v32, 8, v32);
      v32 += 32;
      --v31;
    }

    while (v31);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(v42[11], a3, v8);
  v33 = v8->elts;
  v34 = v8->nelts;
  v35 = apr_array_make(p, v8->nelts, 32);
  if (v34 >= 1)
  {
    do
    {
      v36 = *v33;
      v33 += 8;
      v37 = apr_array_push(v35);
      v38 = v36[1];
      v39 = v36[9];
      *v37 = v36[8];
      v37[1] = v38;
      v37[2] = v39;
      --v34;
    }

    while (v34);
  }

  v40 = v35->nelts;
  if (v40 >= 1)
  {
    v41 = v35->elts;
    do
    {
      apr_hash_set(v14, v41, 8, v41);
      v41 += 32;
      --v40;
    }

    while (v40);
  }
}

void GTMTLSMContext_getHeapResourcesWithType(uint64_t a1, uint64_t a2, unint64_t a3, apr_allocator_t *a4, apr_array_header_t *a5, apr_pool_t *parent)
{
  v7 = a4;
  if (a4 == 16 || a4 == 80 || a4 == 22)
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, parent, 0, a4);
    if ((v7 - 2) > 0x6C || (v11 = byte_24DA91F13[v7 - 2], v11 < 0))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 8 * v11 + 8);
    }

    v13 = newpool;
    v14 = apr_array_make(newpool, 128, 8);
    GTMTLSMContext_getObjects(v12, a3, v14);
    nelts = v14->nelts;
    if (nelts)
    {
      for (i = 0; i < nelts; ++i)
      {
        v17 = *&v14->elts[8 * i];
        if (*(v17 + 48) == a2)
        {
          *apr_array_push(a5) = v17;
          nelts = v14->nelts;
        }
      }
    }

    apr_pool_destroy(v13);
  }
}

char *GTMTLSMBuffer_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15915)
  {
    if (v6 > -16314)
    {
      if (v6 > -16164)
      {
        switch(v6)
        {
          case -16163:
            v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v22 = *a3;
            *(v5 + 1) = *(v16 + 1);
            *(v5 + 2) = v22;
            *(v5 + 1) = *(a3 + 2);
            v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 20) = v23;
            if (v23)
            {
              *(v5 + 4) = vextq_s8(*v23, *v23, 8uLL);
              *(v5 + 24) = *(v23 + 4);
              *(v5 + 15) = *(v23 + 3);
              *(v5 + 136) = *(v23 + 2);
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v16[16], a2);
            *(v5 + 19) = result;
            if (result)
            {
              v24 = *(result + 1);
            }

            else
            {
              v24 = 0;
            }

            *(v5 + 14) = v24;
            goto LABEL_61;
          case -16122:
            result[108] = 1;
            break;
          case -16117:
            v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v9 = *a3;
            v10 = *(v8 + 2);
            *(v5 + 1) = *(v8 + 1);
            *(v5 + 2) = v9;
            *(v5 + 1) = *(a3 + 2);
            *(v5 + 52) = *(v8 + 3);
            *(v5 + 14) = v10;
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 20) = result;
            if (result)
            {
              *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
              *(v5 + 24) = *(result + 4);
              *(v5 + 15) = *(result + 3);
              *(v5 + 136) = *(result + 2);
            }

            *(v5 + 6) = *v8;
            break;
        }

        return result;
      }

      if (v6 == -16313)
      {
LABEL_40:
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v17 = *a3;
        v18 = *(v16 + 2);
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 52) = *(v16 + 3);
        *(v5 + 14) = v18;
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 20) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 15) = *(result + 3);
          *(v5 + 136) = *(result + 2);
        }

LABEL_61:
        *(v5 + 5) = *v16;
        return result;
      }

      v7 = -16312;
    }

    else
    {
      if (v6 <= -16371)
      {
        if (v6 == -16372)
        {
          v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v30[8], a2);
          *(v5 + 11) = result;
        }

        else if (v6 == -16371)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
        }

        return result;
      }

      if (v6 == -16370)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 == -16367)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v29 = *(result + 2);
        if (v29 != 1)
        {
          *(v5 + 53) = v29;
        }

        return result;
      }

      v7 = -16314;
    }

    if (v6 != v7)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (v6 > -10229)
  {
    if (v6 <= -10204)
    {
      switch(v6)
      {
        case -10228:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
          break;
        case -10223:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
          break;
        case -10210:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
          break;
      }

      return result;
    }

    if (v6 == -10203)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
      return result;
    }

    if (v6 == -10187)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
      return result;
    }

    if (v6 != -10186)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v11 = *(result + 8);
LABEL_44:
    *(v5 + 136) = v11;
    return result;
  }

  if (v6 > -15510)
  {
    if (v6 == -15509)
    {
      v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v20 = *a3;
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v20;
      *(v5 + 1) = *(a3 + 2);
      v21 = GTTraceFunc_argumentBytesWithMap(a3, v19[16], a2);
      *(v5 + 52) = *(v21 + 16);
      *(v5 + 14) = *v21;
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 20) = result;
      if (!result)
      {
        return result;
      }

      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 15) = *(result + 3);
      v11 = *(result + 2);
      goto LABEL_44;
    }

    if (v6 != -10237)
    {
      if (v6 == -10235)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 2);
      }

      return result;
    }

    goto LABEL_40;
  }

  if (v6 == -15914)
  {
    v25 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v26 = *a3;
    v27 = *v25;
    *(v5 + 1) = *(v25 + 1);
    *(v5 + 2) = v26;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = *(v25 + 2);
    *(v5 + 16) = v27;
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v28 = *(result + 3);
    *(v5 + 14) = *(result + 2);
    *(v5 + 52) = v28;
  }

  else if (v6 == -15778)
  {
    v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v13 = *a3;
    v14 = *(v12 + 2);
    *(v5 + 1) = *(v12 + 1);
    *(v5 + 2) = v13;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 52) = *(v12 + 3);
    *(v5 + 14) = v14;
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 20) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 15) = *(result + 3);
      *(v5 + 136) = *(result + 2);
    }

    v15 = *(v12 + 4);
    *(v5 + 6) = *v12;
    *(v5 + 7) = v15;
  }

  return result;
}

char *GTMTLSMTensor_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -14841)
  {
    if (v6 > -14949)
    {
      switch(v6)
      {
        case -14948:
          *(result + 3) = *a3;
          break;
        case -14938:
          result[108] = 1;
          break;
        case -14933:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v7 = *(result + 2);
          if (v7 != 1)
          {
            *(v5 + 106) = v7;
          }

          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -14959:
          v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 8) = *(v12 + 1);
          *(v5 + 16) = v13;
          *(v5 + 4) = *(a3 + 2);
          v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 120) = v14;
          if (v14)
          {
            *(v5 + 64) = vextq_s8(*v14, *v14, 8uLL);
            *(v5 + 96) = *(v14 + 4);
            *(v5 + 312) = *(v14 + 5);
            *(v5 + 296) = *(v14 + 24);
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, v12[24], a2);
          *(v5 + 112) = result;
          break;
        case -14950:
          v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v15[8], a2);
          *(v5 + 88) = result;
          break;
        case -14949:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 96) = *(result + 2);
          break;
      }
    }
  }

  else if (v6 <= -10147)
  {
    switch(v6)
    {
      case -14840:
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        *(v5 + 8) = *(v8 + 1);
        *(v5 + 16) = v9;
        *(v5 + 4) = *(a3 + 2);
        v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 120) = v10;
        if (v10)
        {
          *(v5 + 64) = vextq_s8(*v10, *v10, 8uLL);
          *(v5 + 96) = *(v10 + 4);
          *(v5 + 312) = *(v10 + 5);
          *(v5 + 296) = *(v10 + 24);
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v8[32], a2);
        *(v5 + 112) = result;
        v11 = *(v8 + 2);
        *(v5 + 128) = *v8;
        *(v5 + 136) = v11;
        break;
      case -10148:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 64) = *(result + 2);
        break;
      case -10147:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 72) = *(result + 1);
        break;
    }
  }

  else if (v6 > -10145)
  {
    if (v6 == -10144)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 312) = *(result + 1);
    }

    else if (v6 == -10143)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 80) = *(result + 1);
    }
  }

  else if (v6 == -10146)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 296) = *(result + 1);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 304) = *(result + 1);
  }

  return result;
}

int8x16_t *GTMTLSMTexture_processTraceFuncWithMap(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15778)
  {
    if (v6 > -16117)
    {
      if (v6 <= -16097)
      {
        if (v6 <= -16105)
        {
          if (v6 == -16116)
          {
            v83 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v84 = *a3;
            v5->i64[1] = *(v83 + 1);
            v5[1].i64[0] = v84;
            v5->i32[1] = *(a3 + 8);
            v85 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v85;
            if (v85)
            {
              v5[4] = vextq_s8(*v85, *v85, 8uLL);
              v5[6].i32[0] = v85[1].i32[0];
              v86 = v85[3].i64[0];
              v87 = v85[3].i64[1];
              v88 = v85[4].i64[0];
              v5[11].i64[0] = v85[2].i64[1];
              v5[11].i64[1] = v87;
              v5[14].i16[2] = v85[5].i16[0];
              v5[7].i64[1] = &v85[1].i64[1];
              v5[13].i64[0] = v86;
              v5[13].i64[1] = v88;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v83[16], a2);
            v5[7].i64[0] = result;
            v5[3].i64[0] = *v83;
          }

          else if (v6 == -16114)
          {
            result[6].i8[12] = 1;
          }

          return result;
        }

        if (v6 != -16104)
        {
          if (v6 == -16098)
          {
            v42 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v43 = *a3;
            v5->i64[1] = *(v42 + 1);
            v5[1].i64[0] = v43;
            v5->i32[1] = *(a3 + 8);
            v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v44;
            if (v44)
            {
              v5[4] = vextq_s8(*v44, *v44, 8uLL);
              v5[6].i32[0] = v44[1].i32[0];
              v45 = v44[3].i64[0];
              v46 = v44[3].i64[1];
              v47 = v44[4].i64[0];
              v5[11].i64[0] = v44[2].i64[1];
              v5[11].i64[1] = v46;
              v5[14].i16[2] = v44[5].i16[0];
              v5[7].i64[1] = &v44[1].i64[1];
              v5[13].i64[0] = v45;
              v5[13].i64[1] = v47;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v42[40], a2);
            v5[7].i64[0] = result;
            v5[9].i64[0] = *v42;
            v5[10].i32[0] = *(v42 + 2);
            v5[10].i32[1] = *(v42 + 3);
            v5[10].i32[2] = *(v42 + 4);
          }

          return result;
        }

        goto LABEL_86;
      }

      if (v6 <= -16031)
      {
        if (v6 == -16096)
        {
          v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v123 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v123;
          v5->i32[1] = *(a3 + 8);
          v124 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = v124;
          if (v124)
          {
            v5[4] = vextq_s8(*v124, *v124, 8uLL);
            v5[6].i32[0] = v124[1].i32[0];
            v125 = v124[3].i64[0];
            v126 = v124[3].i64[1];
            v127 = v124[4].i64[0];
            v5[11].i64[0] = v124[2].i64[1];
            v5[11].i64[1] = v126;
            v5[14].i16[2] = v124[5].i16[0];
            v5[7].i64[1] = &v124[1].i64[1];
            v5[13].i64[0] = v125;
            v5[13].i64[1] = v127;
          }

          v35 = v29[33];
LABEL_137:
          result = GTTraceFunc_argumentBytesWithMap(a3, v35, a2);
          v5[7].i64[0] = result;
          goto LABEL_138;
        }

        if (v6 != -16031)
        {
          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v55 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v55;
        v5->i32[1] = *(a3 + 8);
        v56 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v56;
        if (v56)
        {
          v5[4] = vextq_s8(*v56, *v56, 8uLL);
          v5[6].i32[0] = v56[1].i32[0];
          v57 = v56[3].i64[0];
          v58 = v56[3].i64[1];
          v59 = v56[4].i64[0];
          v5[11].i64[0] = v56[2].i64[1];
          v5[11].i64[1] = v58;
          v5[14].i16[2] = v56[5].i16[0];
          v5[7].i64[1] = &v56[1].i64[1];
          v5[13].i64[0] = v57;
          v5[13].i64[1] = v59;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v29[41], a2);
        v5[7].i64[0] = result;
        v5[10].i32[0] = *(v29 + 3);
        v60 = *(v29 + 4);
      }

      else
      {
        if (v6 != -16030)
        {
          if (v6 == -15980)
          {
            v103 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v104 = *a3;
            v5->i64[1] = *(v103 + 1);
            v5[1].i64[0] = v104;
            v5->i32[1] = *(a3 + 8);
            v105 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v105;
            if (v105)
            {
              v5[4] = vextq_s8(*v105, *v105, 8uLL);
              v5[6].i32[0] = v105[1].i32[0];
              v106 = v105[3].i64[0];
              v107 = v105[3].i64[1];
              v108 = v105[4].i64[0];
              v5[11].i64[0] = v105[2].i64[1];
              v5[11].i64[1] = v107;
              v5[14].i16[2] = v105[5].i16[0];
              v5[7].i64[1] = &v105[1].i64[1];
              v5[13].i64[0] = v106;
              v5[13].i64[1] = v108;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v103[24], a2);
            v5[7].i64[0] = result;
            v5[2].i64[1] = *v103;
            v5[14].i8[6] = 1;
          }

          else if (v6 == -15913)
          {
            v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v13 = *a3;
            v5->i64[1] = *(v12 + 1);
            v5[1].i64[0] = v13;
            v5->i32[1] = *(a3 + 8);
            v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v14;
            if (v14)
            {
              v5[4] = vextq_s8(*v14, *v14, 8uLL);
              v5[6].i32[0] = v14[1].i32[0];
              v15 = v14[3].i64[0];
              v16 = v14[3].i64[1];
              v17 = v14[4].i64[0];
              v5[11].i64[0] = v14[2].i64[1];
              v5[11].i64[1] = v16;
              v5[14].i16[2] = v14[5].i16[0];
              v5[7].i64[1] = &v14[1].i64[1];
              v5[13].i64[0] = v15;
              v5[13].i64[1] = v17;
            }

            v5[2].i64[1] = *(v12 + 2);
            v5[12].i64[0] = *v12;
            v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            result = GTTraceFunc_argumentBytesWithMap(a3, v18[24], a2);
            v5[7].i64[0] = result;
          }

          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v113 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v113;
        v5->i32[1] = *(a3 + 8);
        v114 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v114;
        if (v114)
        {
          v5[4] = vextq_s8(*v114, *v114, 8uLL);
          v5[6].i32[0] = v114[1].i32[0];
          v115 = v114[3].i64[0];
          v116 = v114[3].i64[1];
          v117 = v114[4].i64[0];
          v5[11].i64[0] = v114[2].i64[1];
          v5[11].i64[1] = v116;
          v5[14].i16[2] = v114[5].i16[0];
          v5[7].i64[1] = &v114[1].i64[1];
          v5[13].i64[0] = v115;
          v5[13].i64[1] = v117;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v29[49], a2);
        v5[7].i64[0] = result;
        v5[10].i32[0] = *(v29 + 4);
        v60 = *(v29 + 5);
      }

      v5[10].i32[1] = v60;
    }

    else
    {
      if (v6 > -16240)
      {
        if (v6 <= -16234)
        {
          if (v6 == -16239)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[6].i32[0] = result->i32[2];
          }

          else if (v6 == -16238)
          {
            result[1].i64[1] = *a3;
          }
        }

        else
        {
          if (v6 == -16233)
          {
            v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v109 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v109;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = result;
            if (result)
            {
              v5[4] = vextq_s8(*result, *result, 8uLL);
              v5[6].i32[0] = result[1].i32[0];
              v110 = result[3].i64[0];
              v111 = result[3].i64[1];
              v112 = result[4].i64[0];
              v5[11].i64[0] = result[2].i64[1];
              v5[11].i64[1] = v111;
              v5[14].i16[2] = result[5].i16[0];
              v5[7].i64[1] = &result[1].i64[1];
              v5[13].i64[0] = v110;
              v5[13].i64[1] = v112;
            }

            v5[10].i16[0] = *(v7 + 2);
            goto LABEL_121;
          }

          if (v6 != -16232)
          {
            if (v6 != -16196)
            {
              return result;
            }

            v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v8 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v8;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = result;
            if (result)
            {
              v5[4] = vextq_s8(*result, *result, 8uLL);
              v5[6].i32[0] = result[1].i32[0];
              v9 = result[3].i64[0];
              v10 = result[3].i64[1];
              v11 = result[4].i64[0];
              v5[11].i64[0] = result[2].i64[1];
              v5[11].i64[1] = v10;
              v5[14].i16[2] = result[5].i16[0];
              v5[7].i64[1] = &result[1].i64[1];
              v5[13].i64[0] = v9;
              v5[13].i64[1] = v11;
            }

            v5[10].i16[0] = *(v7 + 2);
            v5[10].i8[6] = *(v7 + 3);
            v5[10].i8[7] = *(v7 + 4);
            v5[10].i8[8] = *(v7 + 5);
            v5[10].i16[1] = *(v7 + 6);
            v5[10].i16[2] = *(v7 + 7);
            goto LABEL_121;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v102 = result[1].i64[0];
          if (v102 != 1)
          {
            v5[6].i16[5] = v102;
          }
        }

        return result;
      }

      if (v6 <= -16295)
      {
        if (v6 != -16368)
        {
          if (v6 != -16310)
          {
            return result;
          }

          v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v30 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v30;
          v5->i32[1] = *(a3 + 8);
          v31 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = v31;
          if (v31)
          {
            v5[4] = vextq_s8(*v31, *v31, 8uLL);
            v5[6].i32[0] = v31[1].i32[0];
            v32 = v31[3].i64[0];
            v33 = v31[3].i64[1];
            v34 = v31[4].i64[0];
            v5[11].i64[0] = v31[2].i64[1];
            v5[11].i64[1] = v33;
            v5[14].i16[2] = v31[5].i16[0];
            v5[7].i64[1] = &v31[1].i64[1];
            v5[13].i64[0] = v32;
            v5[13].i64[1] = v34;
          }

          v35 = v29[24];
          goto LABEL_137;
        }

LABEL_86:
        v61 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v62 = *a3;
        v5->i64[1] = *(v61 + 1);
        v5[1].i64[0] = v62;
        v5->i32[1] = *(a3 + 8);
        v63 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v63;
        if (v63)
        {
          v5[4] = vextq_s8(*v63, *v63, 8uLL);
          v5[6].i32[0] = v63[1].i32[0];
          v64 = v63[3].i64[0];
          v65 = v63[3].i64[1];
          v66 = v63[4].i64[0];
          v5[11].i64[0] = v63[2].i64[1];
          v5[11].i64[1] = v65;
          v5[14].i16[2] = v63[5].i16[0];
          v5[7].i64[1] = &v63[1].i64[1];
          v5[13].i64[0] = v64;
          v5[13].i64[1] = v66;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v61[32], a2);
        v5[7].i64[0] = result;
        v5[9].i64[0] = *v61;
        v5[10].i32[0] = *(v61 + 2);
        v5[10].i32[1] = *(v61 + 3);
        return result;
      }

      if (v6 != -16294)
      {
        if (v6 == -16240)
        {
          v41 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v41[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v89 = *a3;
      v5->i64[1] = *(v29 + 1);
      v5[1].i64[0] = v89;
      v5->i32[1] = *(a3 + 8);
      v90 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = v90;
      if (v90)
      {
        v5[4] = vextq_s8(*v90, *v90, 8uLL);
        v5[6].i32[0] = v90[1].i32[0];
        v91 = v90[3].i64[0];
        v92 = v90[3].i64[1];
        v93 = v90[4].i64[0];
        v5[11].i64[0] = v90[2].i64[1];
        v5[11].i64[1] = v92;
        v5[14].i16[2] = v90[5].i16[0];
        v5[7].i64[1] = &v90[1].i64[1];
        v5[13].i64[0] = v91;
        v5[13].i64[1] = v93;
      }

      v5[7].i64[0] = GTTraceFunc_argumentBytesWithMap(a3, v29[24], a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v29[25], a2);
      v5[8].i64[0] = result;
      v5[10].i64[0] = *(v29 + 2);
    }

LABEL_138:
    v5[2].i64[1] = *v29;
    return result;
  }

  if (v6 > -10232)
  {
    if (v6 <= -10205)
    {
      if (v6 <= -10223)
      {
        if (v6 == -10231)
        {
          v122 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v122[8], a2);
          v5[7].i64[1] = result;
        }

        else if (v6 == -10227)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[11].i64[0] = result->i64[1];
        }
      }

      else
      {
        switch(v6)
        {
          case -10222:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[4].i64[0] = result->u32[2];
            break;
          case -10212:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[5].i64[0] = result->i64[1];
            break;
          case -10205:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[14].i16[2] = result->i32[2];
            break;
        }
      }

      return result;
    }

    if (v6 > -10186)
    {
      if (v6 == -10185)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[3].i64[1] = result->i64[1];
        return result;
      }

      if (v6 != -10164)
      {
        if (v6 == -7167)
        {
          v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v20 = *a3;
          v5->i64[1] = *(v19 + 1);
          v5[1].i64[0] = v20;
          v5->i32[1] = *(a3 + 8);
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = result;
          if (result)
          {
            v5[4] = vextq_s8(*result, *result, 8uLL);
            v5[6].i32[0] = result[1].i32[0];
            v21 = result[3].i64[0];
            v22 = result[3].i64[1];
            v23 = result[4].i64[0];
            v5[11].i64[0] = result[2].i64[1];
            v5[11].i64[1] = v22;
            v5[14].i16[2] = result[5].i16[0];
            v5[7].i64[1] = &result[1].i64[1];
            v5[13].i64[0] = v21;
            v5[13].i64[1] = v23;
          }

          v5[12].i64[1] = *v19;
        }

        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v94 = result->i64[1];
LABEL_110:
      v5[13].i64[0] = v94;
      return result;
    }

    if (v6 == -10204)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[1] = result->i64[1];
      return result;
    }

    if (v6 != -10198)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v54 = result->i64[1];
LABEL_130:
    v5[11].i64[1] = v54;
    return result;
  }

  if (v6 > -15689)
  {
    if (v6 > -14803)
    {
      if (v6 == -14802)
      {
        v95 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v96 = *a3;
        v5->i64[1] = *(v95 + 2);
        v5[1].i64[0] = v96;
        v5->i32[1] = *(a3 + 8);
        v97 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v97;
        if (v97)
        {
          v5[4] = vextq_s8(*v97, *v97, 8uLL);
          v5[6].i32[0] = v97[1].i32[0];
          v98 = v97[3].i64[0];
          v99 = v97[3].i64[1];
          v100 = v97[4].i64[0];
          v5[11].i64[0] = v97[2].i64[1];
          v5[11].i64[1] = v99;
          v5[14].i16[2] = v97[5].i16[0];
          v5[7].i64[1] = &v97[1].i64[1];
          v5[13].i64[0] = v98;
          v5[13].i64[1] = v100;
        }

        v5->i64[1] = *(v95 + 1);
        result = GTTraceFunc_argumentBytesWithMap(a3, v95[56], a2);
        v5[7].i64[0] = result;
        v101 = *(v95 + 4);
        v5[9].i64[0] = *(v95 + 3);
        v5[10].i32[0] = v101;
        v5[10].i32[1] = *(v95 + 5);
        v94 = *(v95 + 2);
        goto LABEL_110;
      }

      if (v6 != -14801)
      {
        if (v6 == -10234)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[6].i32[1] = result->i32[2];
        }

        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v78 = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
      v79 = *a3;
      v5->i64[1] = *(v7 + 1);
      v5[1].i64[0] = v79;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = result;
      if (result)
      {
        v5[4] = vextq_s8(*result, *result, 8uLL);
        v5[6].i32[0] = result[1].i32[0];
        v80 = result[3].i64[0];
        v81 = result[3].i64[1];
        v82 = result[4].i64[0];
        v5[11].i64[0] = result[2].i64[1];
        v5[11].i64[1] = v81;
        v5[14].i16[2] = result[5].i16[0];
        v5[7].i64[1] = &result[1].i64[1];
        v5[13].i64[0] = v80;
        v5[13].i64[1] = v82;
      }

      v5[10].i16[0] = *(v78 + 18);
      v5[10].i8[6] = v78[38];
      v5[10].i8[7] = *v78;
      v5[10].i8[8] = *(v78 + 1);
      v5[10].i16[1] = *(v78 + 2);
      v5[10].i16[2] = *(v78 + 3);
      v28 = *(v78 + 8);
      goto LABEL_98;
    }

    if (v6 != -15688)
    {
      if (v6 == -14969)
      {
        v48 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v49 = GTTraceFunc_argumentBytesWithMap(a3, v48[40], a2);
        v50 = *a3;
        v5->i64[1] = *(v48 + 2);
        v5[1].i64[0] = v50;
        v5->i32[1] = *(a3 + 8);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = result;
        if (result)
        {
          v5[4] = vextq_s8(*result, *result, 8uLL);
          v5[6].i32[0] = result[1].i32[0];
          v51 = result[3].i64[1];
          v52 = result[4].i64[0];
          v5[11].i64[0] = result[2].i64[1];
          v5[11].i64[1] = v51;
          v5[14].i16[2] = result[5].i16[0];
          v5[7].i64[1] = &result[1].i64[1];
          v5[13].i64[1] = v52;
        }

        v5->i64[1] = *(v48 + 1);
        v5[10].i16[0] = *(v49 + 18);
        v5[10].i8[6] = v49[38];
        v5[10].i8[7] = *v49;
        v5[10].i8[8] = *(v49 + 1);
        v5[10].i16[1] = *(v49 + 2);
        v5[10].i16[2] = *(v49 + 3);
        v5[14].i32[0] = *(v49 + 8);
        v53 = *(v48 + 2);
        v5[9].i64[1] = *(v48 + 3);
        v5[13].i64[0] = v53;
      }

      return result;
    }

    v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v118 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v118;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v119 = result[3].i64[0];
      v120 = result[3].i64[1];
      v121 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v120;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v119;
      v5[13].i64[1] = v121;
    }

    v5[10].i16[0] = *(v36 + 2);
    v5[10].i8[6] = *(v36 + 3);
    v5[10].i8[7] = *(v36 + 4);
    v5[10].i8[8] = *(v36 + 5);
    v5[10].i16[1] = *(v36 + 6);
    v5[10].i16[2] = *(v36 + 7);
    v5[14].i32[0] = *(v36 + 18);
LABEL_129:
    v5[9].i64[1] = *v36;
    v54 = *(v36 + 8);
    goto LABEL_130;
  }

  if (v6 > -15691)
  {
    if (v6 == -15690)
    {
      v74 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v75 = *a3;
      v5->i64[1] = *(v74 + 1);
      v5[1].i64[0] = v75;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = result;
      if (result)
      {
        v5[4] = vextq_s8(*result, *result, 8uLL);
        v5[6].i32[0] = result[1].i32[0];
        v76 = result[3].i64[0];
        v5[11].i64[0] = result[2].i64[1];
        v5[14].i16[2] = result[5].i16[0];
        v5[7].i64[1] = &result[1].i64[1];
        v77 = result[4].i64[0];
        v5[13].i64[0] = v76;
        v5[13].i64[1] = v77;
      }

      v5[10].i16[0] = *(v74 + 2);
      v5[9].i64[1] = *v74;
      v54 = *(v74 + 3);
      goto LABEL_130;
    }

    v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v37 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v37;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v38 = result[3].i64[0];
      v39 = result[3].i64[1];
      v40 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v39;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v38;
      v5[13].i64[1] = v40;
    }

    v5[10].i16[0] = *(v36 + 2);
    v5[10].i8[6] = *(v36 + 3);
    v5[10].i8[7] = *(v36 + 4);
    v5[10].i8[8] = *(v36 + 5);
    v5[10].i16[1] = *(v36 + 6);
    v5[10].i16[2] = *(v36 + 7);
    goto LABEL_129;
  }

  if (v6 != -15777)
  {
    if (v6 != -15775)
    {
      return result;
    }

    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v24 = *a3;
    v5->i64[1] = *(v7 + 1);
    v5[1].i64[0] = v24;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v25 = result[3].i64[0];
      v26 = result[3].i64[1];
      v27 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v26;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v25;
      v5[13].i64[1] = v27;
    }

    v5[10].i16[0] = *(v7 + 2);
    v5[10].i8[6] = *(v7 + 3);
    v5[10].i8[7] = *(v7 + 4);
    v5[10].i8[8] = *(v7 + 5);
    v5[10].i16[1] = *(v7 + 6);
    v5[10].i16[2] = *(v7 + 7);
    v28 = *(v7 + 16);
LABEL_98:
    v5[14].i32[0] = v28;
LABEL_121:
    v5[9].i64[1] = *v7;
    return result;
  }

  v67 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  v68 = *a3;
  v5->i64[1] = *(v67 + 1);
  v5[1].i64[0] = v68;
  v5->i32[1] = *(a3 + 8);
  v69 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
  v5[8].i64[1] = v69;
  if (v69)
  {
    v5[4] = vextq_s8(*v69, *v69, 8uLL);
    v5[6].i32[0] = v69[1].i32[0];
    v70 = v69[3].i64[0];
    v71 = v69[3].i64[1];
    v72 = v69[4].i64[0];
    v5[11].i64[0] = v69[2].i64[1];
    v5[11].i64[1] = v71;
    v5[14].i16[2] = v69[5].i16[0];
    v5[7].i64[1] = &v69[1].i64[1];
    v5[13].i64[0] = v70;
    v5[13].i64[1] = v72;
  }

  result = GTTraceFunc_argumentBytesWithMap(a3, v67[24], a2);
  v5[7].i64[0] = result;
  v73 = *(v67 + 2);
  v5[3].i64[0] = *v67;
  v5[3].i64[1] = v73;
  return result;
}

char *GTMTLSMHeap_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -16116)
  {
    switch(v6)
    {
      case -16120:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v9;
        result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
        *(v5 + 6) = result;
        break;
      case -16119:
        v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v11[8], a2);
        *(v5 + 7) = result;
        break;
      case -16118:
        *(result + 3) = *a3;
        break;
    }
  }

  else if (v6 > -10209)
  {
    if (v6 == -10208)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }

    else if (v6 == -10207)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
    }
  }

  else if (v6 == -16115)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v10 = *(result + 2);
    if (v10 != 1)
    {
      *(v5 + 44) = v10;
    }
  }

  else if (v6 == -10211)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 8) = *(result + 1);
  }

  return result;
}

char *GTMTLSMRenderPipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15406)
  {
    if (v6 > -14837)
    {
      if (v6 > -10185)
      {
        switch(v6)
        {
          case -10184:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 436) = *(result + 1);
            break;
          case -10172:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 424) = *(result + 1);
            break;
          case -10165:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 136) = *(result + 1);
            break;
        }

        return result;
      }

      if (v6 != -14836)
      {
        if (v6 == -10220)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 120) = *(result + 1);
        }

        else if (v6 == -10192)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 432) = *(result + 2);
        }

        return result;
      }
    }

    else
    {
      if (v6 <= -15132)
      {
        if (v6 != -15405)
        {
          if (v6 != -15404 && v6 != -15403)
          {
            return result;
          }

          v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v14 = *a3;
          v15 = *v13;
          *(v5 + 8) = *(v13 + 1);
          *(v5 + 16) = v14;
          *(v5 + 4) = *(a3 + 2);
          *(v5 + 40) = v15;
          v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 56) = v16;
          if (v16)
          {
            v17 = v16;
            memcpy((v5 + 144), v16 + 216, 0x118uLL);
            *(v5 + 120) = *v17;
            *(v5 + 432) = *(v17 + 48);
            *(v5 + 436) = *(v17 + 98);
            *(v5 + 136) = *(v17 + 2);
          }

          v18 = v13[32];
LABEL_49:
          result = GTTraceFunc_argumentBytesWithMap(a3, v18, a2);
          *(v5 + 72) = result;
          return result;
        }

LABEL_46:
        v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 8) = *(v36 + 1);
        *(v5 + 16) = v37;
        *(v5 + 4) = *(a3 + 2);
        *(v5 + 40) = v38;
        v39 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 56) = v39;
        if (v39)
        {
          v40 = v39;
          memcpy((v5 + 144), v39 + 216, 0x118uLL);
          *(v5 + 120) = *v40;
          *(v5 + 432) = *(v40 + 48);
          *(v5 + 436) = *(v40 + 98);
          *(v5 + 136) = *(v40 + 2);
        }

        v18 = v36[24];
        goto LABEL_49;
      }

      if (v6 == -15131 || v6 == -15130)
      {
        v46 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v47 = *a3;
        v48 = *v46;
        *(v5 + 8) = *(v46 + 1);
        *(v5 + 16) = v47;
        *(v5 + 4) = *(a3 + 2);
        *(v5 + 40) = v48;
        v49 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 56) = v49;
        if (v49)
        {
          v50 = v49;
          memcpy((v5 + 144), v49 + 216, 0x118uLL);
          *(v5 + 120) = *v50;
          *(v5 + 432) = *(v50 + 48);
          *(v5 + 436) = *(v50 + 98);
          *(v5 + 136) = *(v50 + 2);
        }

        *(v5 + 88) = GTTraceFunc_argumentBytesWithMap(a3, v46[24], a2);
        v35 = v46[25];
        goto LABEL_61;
      }

      if (v6 != -14867)
      {
        return result;
      }
    }

    v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v31 = *a3;
    v32 = *v30;
    *(v5 + 8) = *(v30 + 1);
    *(v5 + 16) = v31;
    *(v5 + 4) = *(a3 + 2);
    *(v5 + 40) = v32;
    v33 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 56) = v33;
    if (v33)
    {
      v34 = v33;
      memcpy((v5 + 144), v33 + 216, 0x118uLL);
      *(v5 + 120) = *v34;
      *(v5 + 432) = *(v34 + 48);
      *(v5 + 436) = *(v34 + 98);
      *(v5 + 136) = *(v34 + 2);
    }

    *(v5 + 88) = GTTraceFunc_argumentBytesWithMap(a3, v30[24], a2);
    *(v5 + 96) = GTTraceFunc_argumentBytesWithMap(a3, v30[25], a2);
    v35 = v30[26];
LABEL_61:
    result = GTTraceFunc_argumentBytesWithMap(a3, v35, a2);
    *(v5 + 104) = result;
    return result;
  }

  if (v6 > -16091)
  {
    if (v6 <= -15739)
    {
      if (v6 != -16090)
      {
        if (v6 == -16089)
        {
LABEL_33:
          v25 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v26 = *a3;
          v27 = *v25;
          *(v5 + 8) = *(v25 + 1);
          *(v5 + 16) = v26;
          *(v5 + 4) = *(a3 + 2);
          *(v5 + 40) = v27;
          v28 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 56) = v28;
          if (v28)
          {
            v29 = v28;
            memcpy((v5 + 144), v28 + 216, 0x118uLL);
            *(v5 + 120) = *v29;
            *(v5 + 432) = *(v29 + 48);
            *(v5 + 436) = *(v29 + 98);
            *(v5 + 136) = *(v29 + 2);
          }

          v24 = v25[24];
LABEL_36:
          result = GTTraceFunc_argumentBytesWithMap(a3, v24, a2);
          *(v5 + 64) = result;
          return result;
        }

        if (v6 != -16088)
        {
          return result;
        }
      }

      v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v20 = *a3;
      v21 = *v19;
      *(v5 + 8) = *(v19 + 1);
      *(v5 + 16) = v20;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v21;
      v22 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 56) = v22;
      if (v22)
      {
        v23 = v22;
        memcpy((v5 + 144), v22 + 216, 0x118uLL);
        *(v5 + 120) = *v23;
        *(v5 + 432) = *(v23 + 48);
        *(v5 + 436) = *(v23 + 98);
        *(v5 + 136) = *(v23 + 2);
      }

      v24 = v19[32];
      goto LABEL_36;
    }

    if (v6 == -15738)
    {
      v56 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v57 = *a3;
      v58 = *v56;
      *(v5 + 8) = *(v56 + 1);
      *(v5 + 16) = v57;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v58;
      v59 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 56) = v59;
      if (v59)
      {
        v60 = v59;
        memcpy((v5 + 144), v59 + 216, 0x118uLL);
        *(v5 + 120) = *v60;
        *(v5 + 432) = *(v60 + 48);
        *(v5 + 436) = *(v60 + 98);
        *(v5 + 136) = *(v60 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v56[32], a2);
      *(v5 + 112) = result;
      return result;
    }

    if (v6 == -15461)
    {
      v51 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v52 = *a3;
      v53 = *v51;
      *(v5 + 8) = *(v51 + 1);
      *(v5 + 16) = v52;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v53;
      v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 56) = v54;
      if (v54)
      {
        v55 = v54;
        memcpy((v5 + 144), v54 + 216, 0x118uLL);
        *(v5 + 120) = *v55;
        *(v5 + 432) = *(v55 + 48);
        *(v5 + 436) = *(v55 + 98);
        *(v5 + 136) = *(v55 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v51[24], a2);
      *(v5 + 80) = result;
      return result;
    }

    if (v6 != -15406)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v6 <= -16301)
  {
    if (v6 == -16303)
    {
LABEL_7:
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v5 + 8) = *(v7 + 1);
      *(v5 + 16) = v8;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v9;
      v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 56) = v10;
      if (v10)
      {
        v11 = v10;
        memcpy((v5 + 144), v10 + 216, 0x118uLL);
        *(v5 + 120) = *v11;
        *(v5 + 432) = *(v11 + 48);
        *(v5 + 436) = *(v11 + 98);
        *(v5 + 136) = *(v11 + 2);
      }

      v12 = v7[24];
LABEL_57:
      result = GTTraceFunc_argumentBytesWithMap(a3, v12, a2);
      *(v5 + 48) = result;
      return result;
    }

    if (v6 != -16302)
    {
      if (v6 == -16301)
      {
        goto LABEL_7;
      }

      return result;
    }

LABEL_54:
    v41 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v42 = *a3;
    v43 = *v41;
    *(v5 + 8) = *(v41 + 1);
    *(v5 + 16) = v42;
    *(v5 + 4) = *(a3 + 2);
    *(v5 + 40) = v43;
    v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 56) = v44;
    if (v44)
    {
      v45 = v44;
      memcpy((v5 + 144), v44 + 216, 0x118uLL);
      *(v5 + 120) = *v45;
      *(v5 + 432) = *(v45 + 48);
      *(v5 + 436) = *(v45 + 98);
      *(v5 + 136) = *(v45 + 2);
    }

    v12 = v41[32];
    goto LABEL_57;
  }

  switch(v6)
  {
    case -16300:
      goto LABEL_54;
    case -16242:
      *(result + 3) = *a3;
      return result;
    case -16091:
      goto LABEL_33;
  }

  return result;
}

char *GTMTLSMComputePipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15990)
  {
    if (v6 <= -16201)
    {
      if (v6 <= -16299)
      {
        if (v6 == -16321)
        {
          *(result + 3) = *a3;
          return result;
        }

        v7 = -16299;
      }

      else
      {
        if (v6 == -16298 || v6 == -16297)
        {
LABEL_39:
          v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v31 = *a3;
          v32 = *v30;
          *(v5 + 1) = *(v30 + 1);
          *(v5 + 2) = v31;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v32;
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 8) = result;
          if (result)
          {
            v33 = *(result + 104);
            v34 = *(result + 120);
            v35 = *(result + 136);
            *(v5 + 24) = *(result + 19);
            *(v5 + 10) = v34;
            *(v5 + 11) = v35;
            *(v5 + 9) = v33;
            *(v5 + 120) = *result;
            *(v5 + 54) = *(result + 22);
            *(v5 + 17) = *(result + 2);
          }

          *(v5 + 6) = *(v30 + 2);
          return result;
        }

        v7 = -16296;
      }

      if (v6 != v7)
      {
        return result;
      }

      goto LABEL_39;
    }

    if (v6 <= -16199)
    {
      if (v6 != -16200)
      {
LABEL_43:
        v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 1) = *(v36 + 1);
        *(v5 + 2) = v37;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v38;
        v39 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 8) = v39;
        if (v39)
        {
          v40 = *(v39 + 104);
          v41 = *(v39 + 120);
          v42 = *(v39 + 136);
          *(v5 + 24) = *(v39 + 19);
          *(v5 + 10) = v41;
          *(v5 + 11) = v42;
          *(v5 + 9) = v40;
          *(v5 + 120) = *v39;
          *(v5 + 54) = *(v39 + 22);
          *(v5 + 17) = *(v39 + 2);
        }

        v43 = v36[32];
LABEL_53:
        result = GTTraceFunc_argumentBytesWithMap(a3, v43, a2);
        *(v5 + 6) = *(result + 106);
        *(v5 + 7) = result;
        return result;
      }
    }

    else if (v6 != -16198)
    {
      if (v6 != -16197)
      {
        if (v6 == -16101)
        {
          v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v17 = *a3;
          v18 = *v16;
          *(v5 + 1) = *(v16 + 1);
          *(v5 + 2) = v17;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v18;
          v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 8) = v19;
          if (v19)
          {
            v20 = *(v19 + 104);
            v21 = *(v19 + 120);
            v22 = *(v19 + 136);
            *(v5 + 24) = *(v19 + 19);
            *(v5 + 10) = v21;
            *(v5 + 11) = v22;
            *(v5 + 9) = v20;
            *(v5 + 120) = *v19;
            *(v5 + 54) = *(v19 + 22);
            *(v5 + 17) = *(v19 + 2);
          }

          *(v5 + 12) = GTTraceFunc_argumentBytesWithMap(a3, v16[24], a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v16[25], a2);
          *(v5 + 13) = result;
        }

        return result;
      }

      goto LABEL_43;
    }

    v51 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v52 = *a3;
    v53 = *v51;
    *(v5 + 1) = *(v51 + 1);
    *(v5 + 2) = v52;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v53;
    v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 8) = v54;
    if (v54)
    {
      v55 = *(v54 + 104);
      v56 = *(v54 + 120);
      v57 = *(v54 + 136);
      *(v5 + 24) = *(v54 + 19);
      *(v5 + 10) = v56;
      *(v5 + 11) = v57;
      *(v5 + 9) = v55;
      *(v5 + 120) = *v54;
      *(v5 + 54) = *(v54 + 22);
      *(v5 + 17) = *(v54 + 2);
    }

    v43 = v51[24];
    goto LABEL_53;
  }

  if (v6 <= -14872)
  {
    if (v6 <= -15542)
    {
      if (v6 == -15989)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
      }

      else if (v6 == -15740)
      {
        v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v24 = *a3;
        v25 = *v23;
        *(v5 + 1) = *(v23 + 1);
        *(v5 + 2) = v24;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v25;
        v26 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 8) = v26;
        if (v26)
        {
          v27 = *(v26 + 104);
          v28 = *(v26 + 120);
          v29 = *(v26 + 136);
          *(v5 + 24) = *(v26 + 19);
          *(v5 + 10) = v28;
          *(v5 + 11) = v29;
          *(v5 + 9) = v27;
          *(v5 + 120) = *v26;
          *(v5 + 54) = *(v26 + 22);
          *(v5 + 17) = *(v26 + 2);
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v23[32], a2);
        *(v5 + 14) = result;
      }
    }

    else if (v6 == -15541)
    {
      v58 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v59 = *a3;
      v60 = *v58;
      *(v5 + 1) = *(v58 + 1);
      *(v5 + 2) = v59;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v60;
      v61 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v61;
      if (v61)
      {
        v62 = *(v61 + 104);
        v63 = *(v61 + 120);
        v64 = *(v61 + 136);
        *(v5 + 24) = *(v61 + 19);
        *(v5 + 10) = v63;
        *(v5 + 11) = v64;
        *(v5 + 9) = v62;
        *(v5 + 120) = *v61;
        *(v5 + 54) = *(v61 + 22);
        *(v5 + 17) = *(v61 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v58[24], a2);
      *(v5 + 26) = result;
    }

    else if (v6 == -15141 || v6 == -15140)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v9 = *a3;
      v10 = *v8;
      *(v5 + 1) = *(v8 + 1);
      *(v5 + 2) = v9;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v10;
      v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v11;
      if (v11)
      {
        v12 = *(v11 + 104);
        v13 = *(v11 + 120);
        v14 = *(v11 + 136);
        *(v5 + 24) = *(v11 + 19);
        *(v5 + 10) = v13;
        *(v5 + 11) = v14;
        *(v5 + 9) = v12;
        *(v5 + 120) = *v11;
        *(v5 + 54) = *(v11 + 22);
        *(v5 + 17) = *(v11 + 2);
      }

      *(v5 + 9) = GTTraceFunc_argumentBytesWithMap(a3, v8[24], a2);
      v15 = v8[25];
      goto LABEL_49;
    }
  }

  else
  {
    if (v6 <= -10192)
    {
      if (v6 != -14871 && v6 != -14870)
      {
        if (v6 == -10214)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
        }

        return result;
      }

      v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v45 = *a3;
      v46 = *v44;
      *(v5 + 1) = *(v44 + 1);
      *(v5 + 2) = v45;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v46;
      v47 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v47;
      if (v47)
      {
        v48 = *(v47 + 104);
        v49 = *(v47 + 120);
        v50 = *(v47 + 136);
        *(v5 + 24) = *(v47 + 19);
        *(v5 + 10) = v49;
        *(v5 + 11) = v50;
        *(v5 + 9) = v48;
        *(v5 + 120) = *v47;
        *(v5 + 54) = *(v47 + 22);
        *(v5 + 17) = *(v47 + 2);
      }

      *(v5 + 9) = GTTraceFunc_argumentBytesWithMap(a3, v44[24], a2);
      *(v5 + 10) = GTTraceFunc_argumentBytesWithMap(a3, v44[25], a2);
      v15 = v44[26];
LABEL_49:
      result = GTTraceFunc_argumentBytesWithMap(a3, v15, a2);
      *(v5 + 11) = result;
      return result;
    }

    switch(v6)
    {
      case -10191:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 54) = *(result + 2);
        break;
      case -10171:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 1);
        break;
      case -10162:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTLSMDrawable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  if (v5 > -7162)
  {
    if (v5 == -7161)
    {
      *(result + 3) = *a3;
    }

    else if (v5 == -6655)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v8;
      *(v4 + 1) = *(a3 + 2);
    }
  }

  else if (v5 == -7167)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v4 + 6) = *(result + 1);
  }

  else if (v5 == -7166)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v6 = *a3;
    v7 = *result;
    *(v4 + 1) = *(result + 1);
    *(v4 + 2) = v6;
    *(v4 + 1) = *(a3 + 2);
    *(v4 + 5) = v7;
  }

  return result;
}

char *GTMTLSMAccelerationStructure_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15354)
  {
    if (v6 <= -10182)
    {
      if (v6 > -10198)
      {
        if (v6 > -10196)
        {
          if (v6 == -10195)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 25) = *(result + 2);
          }

          else if (v6 == -10182)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 168) = *(result + 8);
            v28 = *(result + 4);
            *(v5 + 23) = *(result + 3);
            *(v5 + 52) = v28;
            *(v5 + 200) = *(result + 40);
          }
        }

        else if (v6 == -10197)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 9) = *(result + 1);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
        }

        return result;
      }

      if (v6 == -15353)
      {
        v68 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v69 = *a3;
        *(v5 + 1) = *(v68 + 1);
        *(v5 + 2) = v69;
        *(v5 + 1) = *(a3 + 2);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          v70 = *(result + 6);
          *(v5 + 20) = *(result + 5);
          *(v5 + 26) = v70;
          *(v5 + 52) = *(result + 32);
          *(v5 + 168) = *(result + 72);
          v71 = *(result + 12);
          *(v5 + 23) = *(result + 11);
          *(v5 + 25) = v71;
          *(v5 + 18) = *(result + 7);
        }

        v73 = *(v68 + 2);
        v72 = *(v68 + 3);
        *(v5 + 6) = *v68;
        *(v5 + 7) = v72;
        *(v5 + 24) = v73;
        return result;
      }

      if (v6 != -15352)
      {
        if (v6 != -15351)
        {
          return result;
        }

        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v19 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v19;
        *(v5 + 1) = *(a3 + 2);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          *(v5 + 26) = *(result + 6);
          v20 = *(result + 9);
          *(v5 + 52) = *(result + 32);
          *(v5 + 21) = v20;
          v21 = *(result + 5);
          *(v5 + 11) = v21;
          *(v5 + 7) = v20 - v21;
          *(v5 + 25) = *(result + 12);
          *(v5 + 18) = *(result + 7);
        }

        *(v5 + 6) = *v7;
        goto LABEL_46;
      }

      v62 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v63 = *a3;
      *(v5 + 1) = *(v62 + 1);
      *(v5 + 2) = v63;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v64 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v64;
        *(v5 + 18) = *(result + 7);
      }

      v66 = *(v62 + 2);
      v65 = *(v62 + 3);
      *(v5 + 6) = *v62;
      *(v5 + 7) = v65;
      *(v5 + 24) = v66;
      v54 = *(v62 + 4);
    }

    else
    {
      if (v6 > -10168)
      {
        if (v6 > -10159)
        {
          if (v6 != -10158)
          {
            if (v6 == -10154)
            {
              result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
              if (*(v5 + 1) == *(result + 1))
              {
                result = GTTraceFunc_argumentBytesWithMap(a3, result[16], a2);
                *(v5 + 15) = result;
              }
            }

            return result;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          if (*(v5 + 1) != *(result + 1))
          {
            return result;
          }

          v18 = *(result + 1);
        }

        else
        {
          if (v6 == -10167)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 18) = *(result + 1);
            return result;
          }

          if (v6 != -10159)
          {
            return result;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v18 = *(result + 8);
        }

        v61 = vmovn_s32(v18);
        *(v5 + 28) = vuzp1_s8(v61, v61).u32[0];
        return result;
      }

      if (v6 <= -10171)
      {
        if (v6 == -10181)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 17) = *(result + 1);
        }

        else if (v6 == -10173)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
        }

        return result;
      }

      if (v6 != -10170)
      {
        if (v6 == -10169)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 7) = *(result + 1);
        }

        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v54 = *(result + 1);
    }

    *(v5 + 20) = v54;
    return result;
  }

  if (v6 <= -15553)
  {
    if (v6 <= -15652)
    {
      switch(v6)
      {
        case -15661:
          v67 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v67[8], a2);
          *(v5 + 11) = result;
          break;
        case -15660:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
          break;
        case -15659:
          *(result + 3) = *a3;
          break;
      }

      return result;
    }

    if (v6 <= -15616)
    {
      if (v6 == -15651)
      {
        result[108] = 1;
      }

      else if (v6 == -15650)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v11 = *(result + 2);
        if (v11 != 1)
        {
          *(v5 + 53) = v11;
        }
      }

      return result;
    }

    if (v6 == -15615)
    {
LABEL_72:
      v40 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v41 = *a3;
      *(v5 + 1) = *(v40 + 1);
      *(v5 + 2) = v41;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v42 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v42;
        v43 = *(result + 5);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        v44 = *(result + 9);
        *(v5 + 20) = v43;
        *(v5 + 21) = v44;
        v45 = *(result + 5);
        *(v5 + 11) = v45;
        *(v5 + 7) = v44 - v45;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v40;
      return result;
    }

    if (v6 != -15614)
    {
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v24 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v24;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v25 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v26 = *(result + 9);
      *(v5 + 20) = v25;
      *(v5 + 21) = v26;
      v27 = *(result + 5);
      *(v5 + 11) = v27;
      *(v5 + 7) = v26 - v27;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 5) = *v23;
LABEL_67:
    *(v5 + 24) = *(v23 + 2);
    return result;
  }

  if (v6 > -15359)
  {
    if (v6 <= -15356)
    {
      if (v6 != -15358)
      {
        if (v6 == -15356)
        {
          v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 1) = *(v12 + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 2);
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 16) = result;
          if (result)
          {
            *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
            *(v5 + 24) = *(result + 4);
            v14 = *(result + 4);
            *(v5 + 17) = *(result + 3);
            *(v5 + 24) = v14;
            v15 = *(result + 5);
            *(v5 + 26) = *(result + 6);
            *(v5 + 52) = *(result + 32);
            v16 = *(result + 9);
            *(v5 + 20) = v15;
            *(v5 + 21) = v16;
            v17 = *(result + 5);
            *(v5 + 11) = v17;
            *(v5 + 7) = v16 - v17;
            *(v5 + 25) = *(result + 12);
            *(v5 + 18) = *(result + 7);
          }

          *(v5 + 6) = *v12;
        }

        return result;
      }

      goto LABEL_72;
    }

    if (v6 == -15355)
    {
      v55 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v56 = *a3;
      *(v5 + 1) = *(v55 + 1);
      *(v5 + 2) = v56;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v57 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v58 = *(result + 6);
        *(v5 + 20) = *(result + 5);
        *(v5 + 24) = v57;
        *(v5 + 26) = v58;
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v59 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v59;
        *(v5 + 18) = *(result + 7);
      }

      v60 = *(v55 + 2);
      *(v5 + 6) = *v55;
      *(v5 + 7) = v60;
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v36 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v36;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v37 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v38 = *(result + 9);
      *(v5 + 20) = v37;
      *(v5 + 21) = v38;
      v39 = *(result + 5);
      *(v5 + 11) = v39;
      *(v5 + 7) = v38 - v39;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 6) = *v23;
    goto LABEL_67;
  }

  if (v6 > -15465)
  {
    if (v6 == -15464)
    {
      v47 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v48 = *a3;
      *(v5 + 1) = *(v47 + 1);
      *(v5 + 2) = v48;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v49 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v50 = *(result + 5);
        *(v5 + 24) = v49;
        *(v5 + 52) = *(result + 32);
        v51 = *(result + 9);
        *(v5 + 20) = v50;
        *(v5 + 21) = v51;
        v52 = *(result + 5);
        *(v5 + 11) = v52;
        *(v5 + 7) = v51 - v52;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v47;
      v53 = *(v47 + 3);
      *(v5 + 19) = *(v47 + 2);
      *(v5 + 26) = v53;
    }

    else if (v6 == -15359)
    {
      v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v30 = *a3;
      *(v5 + 1) = *(v29 + 1);
      *(v5 + 2) = v30;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v31 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v31;
        v32 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v32;
        v33 = *(result + 5);
        *(v5 + 11) = v33;
        *(v5 + 7) = v32 - v33;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v29;
      v34 = *(v29 + 2);
      *(v5 + 26) = *(v29 + 3);
      v35 = *(v29 + 4);
      *(v5 + 19) = v34;
      *(v5 + 20) = v35;
    }
  }

  else
  {
    if (v6 != -15552)
    {
      if (v6 != -15506)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        v9 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v9;
        v10 = *(result + 5);
        *(v5 + 11) = v10;
        *(v5 + 7) = v9 - v10;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v7;
LABEL_46:
      v22 = *(v7 + 3);
      *(v5 + 24) = *(v7 + 2);
      *(v5 + 20) = v22;
      return result;
    }

    v46 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v46[8], a2);
    *(v5 + 15) = result;
    if (result)
    {
      v5[112] = (result[96] & 0xFE) == 2;
      v5[113] = 1;
      v5[115] = (result[97] & 4) != 0;
    }
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15444)
  {
    if (v6 <= -10180)
    {
      if (v6 > -15442)
      {
        if (v6 != -15441)
        {
          if (v6 == -10180)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[5].i64[0] = *(result + 1);
          }

          return result;
        }

        v22 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v23 = *a3;
        v5->i64[1] = *(v22 + 1);
        v5[1].i64[0] = v23;
        v5->i32[1] = *(a3 + 8);
        v24 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v24;
        if (v24)
        {
          v5[4] = vextq_s8(*v24, *v24, 8uLL);
          v5[6].i32[0] = *(v24 + 4);
          v5[9] = vextq_s8(*(v24 + 24), *(v24 + 24), 8uLL);
          v5[10].i64[0] = *(v24 + 5);
        }

        v5[8].i64[1] = *v22;
        result = GTTraceFunc_argumentBytesWithMap(a3, v22[16], a2);
        v5[7].i64[0] = result;
        v11 = 1;
      }

      else if (v6 == -15443)
      {
        v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v20 = *a3;
        v5->i64[1] = *(v19 + 1);
        v5[1].i64[0] = v20;
        v5->i32[1] = *(a3 + 8);
        v21 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v21;
        if (v21)
        {
          v5[4] = vextq_s8(*v21, *v21, 8uLL);
          v5[6].i32[0] = *(v21 + 4);
          v5[9] = vextq_s8(*(v21 + 24), *(v21 + 24), 8uLL);
          v5[10].i64[0] = *(v21 + 5);
        }

        v5[8].i64[1] = *v19;
        result = GTTraceFunc_argumentBytesWithMap(a3, v19[16], a2);
        v5[7].i64[0] = result;
        v11 = 2;
      }

      else
      {
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        v5->i64[1] = *(v8 + 1);
        v5[1].i64[0] = v9;
        v5->i32[1] = *(a3 + 8);
        v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v10;
        if (v10)
        {
          v5[4] = vextq_s8(*v10, *v10, 8uLL);
          v5[6].i32[0] = *(v10 + 4);
          v5[9] = vextq_s8(*(v10 + 24), *(v10 + 24), 8uLL);
          v5[10].i64[0] = *(v10 + 5);
        }

        v5[8].i64[1] = *v8;
        result = GTTraceFunc_argumentBytesWithMap(a3, v8[16], a2);
        v5[7].i64[0] = result;
        v11 = 4;
      }

      v5[10].i8[8] = v11;
      return result;
    }

    if (v6 > -10176)
    {
      if (v6 == -10175)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[9].i64[1] = *(result + 1);
      }

      else if (v6 == -10161)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[10].i64[0] = *(result + 1);
      }
    }

    else if (v6 == -10179)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[0] = *(result + 1);
    }

    else if (v6 == -10176)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[1] = *(result + 1);
    }
  }

  else if (v6 > -15561)
  {
    if (v6 > -15541)
    {
      if (v6 == -15540)
      {
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v25 = *a3;
        v5->i64[1] = *(v16 + 1);
        v5[1].i64[0] = v25;
        v5->i32[1] = *(a3 + 8);
        v26 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v26;
        if (v26)
        {
          v5[4] = vextq_s8(*v26, *v26, 8uLL);
          v5[6].i32[0] = *(v26 + 4);
          v5[9] = vextq_s8(*(v26 + 24), *(v26 + 24), 8uLL);
          v5[10].i64[0] = *(v26 + 5);
        }

        v5[8].i64[0] = *v16;
        goto LABEL_52;
      }

      if (v6 == -15462)
      {
        v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v14 = *a3;
        v5->i64[1] = *(v13 + 1);
        v5[1].i64[0] = v14;
        v5->i32[1] = *(a3 + 8);
        v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v15;
        if (v15)
        {
          v5[4] = vextq_s8(*v15, *v15, 8uLL);
          v5[6].i32[0] = *(v15 + 4);
          v5[9] = vextq_s8(*(v15 + 24), *(v15 + 24), 8uLL);
          v5[10].i64[0] = *(v15 + 5);
        }

        v5[8].i64[1] = *v13;
        result = GTTraceFunc_argumentBytesWithMap(a3, v13[24], a2);
        v5[7].i64[0] = result;
        v5[10].i8[8] = *(v13 + 2);
      }
    }

    else if (v6 == -15560)
    {
      result[108] = 1;
    }

    else if (v6 == -15557)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v12 = *(result + 2);
      if (v12 != 1)
      {
        v5[6].i16[5] = v12;
      }
    }
  }

  else
  {
    if (v6 <= -15570)
    {
      if (v6 != -15577)
      {
        if (v6 == -15570)
        {
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v17 = *a3;
      v5->i64[1] = *(v16 + 1);
      v5[1].i64[0] = v17;
      v5->i32[1] = *(a3 + 8);
      v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[7].i64[1] = v18;
      if (v18)
      {
        v5[4] = vextq_s8(*v18, *v18, 8uLL);
        v5[6].i32[0] = *(v18 + 4);
        v5[9] = vextq_s8(*(v18 + 24), *(v18 + 24), 8uLL);
        v5[10].i64[0] = *(v18 + 5);
      }

      v5[2].i64[1] = *v16;
LABEL_52:
      result = GTTraceFunc_argumentBytesWithMap(a3, v16[16], a2);
      v5[7].i64[0] = result;
      return result;
    }

    if (v6 == -15569)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[6].i32[0] = *(result + 2);
    }

    else if (v6 == -15568)
    {
      *(result + 3) = *a3;
    }
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 8);
  if (v7 <= -15530)
  {
    if (v7 <= -15546)
    {
      if (v7 != -15559)
      {
        if (v7 == -15558)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          if (*(a1 + 176))
          {
            v25 = result;
            result = GTTraceFunc_argumentBytesWithMap(a3, result[24], a2);
            if (*(v25 + 2))
            {
              v26 = 0;
              v27 = 0;
              do
              {
                v28 = *(a1 + 176) + 16 * *(v25 + 1) + v26;
                v29 = *&result[8 * v27];
                *v28 = 1;
                *(v28 + 8) = v29;
                ++v27;
                v26 += 16;
              }

              while (*(v25 + 2) > v27);
            }
          }

          return result;
        }

        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v30 = *(a1 + 176);
      if (!v30)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v30 + 16 * *(result + 2);
      v16 = 1;
    }

    else
    {
      if (v7 == -15545)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v43 = *(result + 1);
        v44 = a1 + 192 + 24 * *(result + 3);
        *v44 = v43 != 0;
        *(v44 + 8) = v43;
        *(a1 + 192 + 24 * *(result + 3) + 16) = *(result + 2);
        return result;
      }

      if (v7 == -15544)
      {
        v31 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v32 = GTTraceFunc_argumentBytesWithMap(a3, v31[24], a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v31[25], a2);
        if (*(v31 + 2))
        {
          v33 = 0;
          v34 = a1 + 192;
          do
          {
            v35 = *&v32[8 * v33];
            v36 = v34 + 24 * (v33 + *(v31 + 1));
            *v36 = v35 != 0;
            *(v36 + 8) = v35;
            *(v34 + 24 * (v33 + *(v31 + 1)) + 16) = *&result[8 * v33];
            ++v33;
          }

          while (*(v31 + 2) > v33);
        }

        return result;
      }

      if (v7 != -15530)
      {
        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v13 = *(a1 + 176);
      if (!v13)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v13 + 16 * *(result + 2);
      v16 = 2;
    }

LABEL_52:
    *v15 = v16;
    *(v15 + 8) = v14;
    return result;
  }

  if (v7 > -15259)
  {
    if (v7 != -15258)
    {
      if (v7 == -15257)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        if (*(a1 + 176) && *(result + 3))
        {
          v39 = 0;
          v40 = 0;
          v41 = *(result + 1);
          do
          {
            v42 = *(a1 + 176) + 16 * *(result + 2) + v39;
            *v42 = 3;
            *(v42 + 8) = v41;
            ++v40;
            v39 += 16;
          }

          while (*(result + 3) > v40);
        }

        return result;
      }

      if (v7 == -10152)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        if (!a4)
        {
          return result;
        }

        v18 = GTTraceFunc_argumentBytesWithMap(a3, result[8], a2);
        v20 = *v18;
        result = v18 + 8;
        v19 = v20;
        if (!v20)
        {
          return result;
        }

        v21 = 0;
        v22 = a1 + 192;
        for (i = (a1 + 192); ; i += 6)
        {
          v24 = *&result[8 * v21];
          if (v24)
          {
            break;
          }

          *i = 0;
          if (v19 == ++v21)
          {
            return result;
          }
        }

        result = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v24);
        if (result)
        {
          *&v50 = *(result + 2);
          *(&v50 + 1) = v24 - *result;
          if (result[24] == 7)
          {
            v52 = v22 + 24 * v21;
            *v52 = 2;
            *(v52 + 8) = v50;
            return result;
          }

          if (result[24])
          {
            return result;
          }
        }

        else
        {
          v50 = 0uLL;
        }

        v51 = v22 + 24 * v21;
        *v51 = 1;
        *(v51 + 8) = v50;
        return result;
      }

LABEL_54:

      return GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(a1, a2, a3);
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v49 = *(a1 + 176);
    if (!v49)
    {
      return result;
    }

    v14 = *(result + 1);
    v15 = v49 + 16 * *(result + 2);
    v16 = 3;
    goto LABEL_52;
  }

  if (v7 != -15529)
  {
    if (v7 == -15526)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v37 = *(result + 1);
      v38 = a1 + 24 * *(result + 2);
      *(v38 + 192) = 2 * (v37 != 0);
      *(v38 + 200) = v37;
      return result;
    }

    if (v7 == -15525)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v8[24], a2);
      if (*(v8 + 2))
      {
        v10 = 0;
        do
        {
          v11 = *&result[8 * v10];
          v12 = a1 + 192 + 24 * (v10 + *(v8 + 1));
          *v12 = 2 * (v11 != 0);
          *(v12 + 8) = v11;
          ++v10;
        }

        while (*(v8 + 2) > v10);
      }

      return result;
    }

    goto LABEL_54;
  }

  result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  if (*(a1 + 176) && *(result + 3))
  {
    v45 = 0;
    v46 = 0;
    v47 = *(result + 1);
    do
    {
      v48 = *(a1 + 176) + 16 * *(result + 2) + v45;
      *v48 = 2;
      *(v48 + 8) = v47;
      ++v46;
      v45 += 16;
    }

    while (*(result + 3) > v46);
  }

  return result;
}

char *GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15439)
  {
    if (v6 <= -15461)
    {
      if (v6 == -15607)
      {
        v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v15[8], a2);
        *(v5 + 88) = result;
        return result;
      }

      if (v6 == -15605)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 != -15578)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 8) = *(v7 + 1);
      *(v5 + 16) = v8;
      *(v5 + 4) = *(a3 + 2);
      v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 120) = v9;
      if (v9)
      {
        *(v5 + 64) = vextq_s8(*v9, *v9, 8uLL);
        *(v5 + 96) = *(v9 + 4);
        *(v5 + 144) = *(v9 + 24);
        *(v5 + 160) = *(v9 + 40);
      }

      *(v5 + 128) = *v7;
      goto LABEL_42;
    }

    switch(v6)
    {
      case -15460:
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v17 = *a3;
        *(v5 + 8) = *(v16 + 1);
        *(v5 + 16) = v17;
        *(v5 + 4) = *(a3 + 2);
        v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 120) = v18;
        if (v18)
        {
          *(v5 + 64) = vextq_s8(*v18, *v18, 8uLL);
          *(v5 + 96) = *(v18 + 4);
          *(v5 + 144) = *(v18 + 24);
          *(v5 + 160) = *(v18 + 40);
        }

        *(v5 + 136) = *v16;
        *(v5 + 176) = *(v16 + 2);
        v19 = v16[24];
        goto LABEL_43;
      case -15440:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v20 = *a3;
        *(v5 + 8) = *(v7 + 1);
        *(v5 + 16) = v20;
        *(v5 + 4) = *(a3 + 2);
        v21 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 120) = v21;
        if (v21)
        {
          *(v5 + 64) = vextq_s8(*v21, *v21, 8uLL);
          *(v5 + 96) = *(v21 + 4);
          *(v5 + 144) = *(v21 + 24);
          *(v5 + 160) = *(v21 + 40);
        }

        *(v5 + 136) = *v7;
        v12 = 2;
        break;
      case -15439:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v10 = *a3;
        *(v5 + 8) = *(v7 + 1);
        *(v5 + 16) = v10;
        *(v5 + 4) = *(a3 + 2);
        v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 120) = v11;
        if (v11)
        {
          *(v5 + 64) = vextq_s8(*v11, *v11, 8uLL);
          *(v5 + 96) = *(v11 + 4);
          *(v5 + 144) = *(v11 + 24);
          *(v5 + 160) = *(v11 + 40);
        }

        *(v5 + 136) = *v7;
        v12 = 4;
        break;
      default:
        return result;
    }

LABEL_41:
    *(v5 + 176) = v12;
LABEL_42:
    v19 = v7[16];
LABEL_43:
    result = GTTraceFunc_argumentBytesWithMap(a3, v19, a2);
    *(v5 + 112) = result;
    return result;
  }

  if (v6 > -10178)
  {
    if (v6 > -10161)
    {
      if (v6 == -10160)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 160) = *(result + 1);
      }

      else if (v6 == -10153)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 168) = *(result + 1);
      }
    }

    else if (v6 == -10177)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 72) = *(result + 1);
    }

    else if (v6 == -10174)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 64) = *(result + 1);
    }

    return result;
  }

  switch(v6)
  {
    case -15438:
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v13 = *a3;
      *(v5 + 8) = *(v7 + 1);
      *(v5 + 16) = v13;
      *(v5 + 4) = *(a3 + 2);
      v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 120) = v14;
      if (v14)
      {
        *(v5 + 64) = vextq_s8(*v14, *v14, 8uLL);
        *(v5 + 96) = *(v14 + 4);
        *(v5 + 144) = *(v14 + 24);
        *(v5 + 160) = *(v14 + 40);
      }

      *(v5 + 136) = *v7;
      v12 = 1;
      goto LABEL_41;
    case -10193:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 144) = *(result + 1);
      break;
    case -10178:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 80) = *(result + 1);
      break;
  }

  return result;
}

char *GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6 == -15597)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    if (*(a1 + 184))
    {
      v9 = result;
      result = GTTraceFunc_argumentBytesWithMap(a3, result[24], a2);
      if (*(v9 + 2))
      {
        v10 = 0;
        v11 = *(a1 + 184);
        do
        {
          *(v11 + 8 * *(v9 + 1) + 8 * v10) = *&result[8 * v10];
          ++v10;
        }

        while (*(v9 + 2) > v10);
      }
    }
  }

  else if (v6 == -15598)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *(a1 + 184);
    if (v8)
    {
      *(v8 + 8 * *(result + 2)) = *(result + 1);
    }
  }

  else
  {

    return GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(a1, a2, a3);
  }

  return result;
}

char *GTMTLFXSMSpatialScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -20478)
  {
    if (v6 == -20480)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 64;
      goto LABEL_17;
    }

    if (v6 == -20479)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 56;
      goto LABEL_17;
    }

    if (v6 != -20478)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v3 = result + 8;
  }

  else
  {
    if (v6 <= -20476)
    {
      if (v6 == -20477)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 80;
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 72;
      }

      goto LABEL_17;
    }

    if (v6 == -20475)
    {
      v7 = 24;
      goto LABEL_17;
    }

    if (v6 != -18432)
    {
      return result;
    }

    v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v9 = *v3;
    v10 = *v8;
    *(v5 + 1) = *(v8 + 1);
    *(v5 + 2) = v9;
    *(v5 + 1) = *(v3 + 2);
    *(v5 + 5) = v10;
    result = GTTraceFunc_argumentBytesWithMap(v3, v8[16], a2);
    *(v5 + 6) = result;
    v3 = result + 8;
    *(v5 + 10) = *result;
  }

  v7 = 88;
LABEL_17:
  *&v5[v7] = *v3;
  return result;
}

float32_t GTMTLFXSMTemporalScaler_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 2);
  switch(v6)
  {
    case -20473:
      *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20472:
      *(a1 + 148) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      break;
    case -20471:
      *(a1 + 72) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20470:
      *(a1 + 88) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20469:
      *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20468:
      *(a1 + 120) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20467:
      *(a1 + 112) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20466:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 128) = v7.i32[0];
      break;
    case -20465:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 132) = v7.i32[0];
      break;
    case -20464:
      *(a1 + 80) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20463:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 136) = v7.i32[0];
      break;
    case -20462:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 140) = v7.i32[0];
      break;
    case -20461:
      *(a1 + 96) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20460:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 144) = v7.i32[0];
      break;
    case -20459:
      *(a1 + 149) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      break;
    case -20458:
      *(a1 + 24) = *a3;
      break;
    case -20457:
      *(a1 + 149) = 0;
      break;
    case -20456:
      *(a1 + 104) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    default:
      if (v6 == -18430)
      {
        *(a1 + 150) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      }

      else if (v6 == -18431)
      {
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        v10 = *v8;
        *(a1 + 8) = *(v8 + 1);
        *(a1 + 16) = v9;
        *(a1 + 4) = *(a3 + 2);
        *(a1 + 40) = v10;
        v11 = GTTraceFunc_argumentBytesWithMap(a3, v8[16], a2);
        *(a1 + 48) = v11;
        *(a1 + 128) = 0;
        v12 = *(v11 + 1);
        *(a1 + 112) = v12;
        v7 = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v12)));
        *(a1 + 136) = v7;
        *(a1 + 144) = 1065353216;
        *(a1 + 148) = 257;
      }

      break;
  }

  return v7.f32[0];
}

char *GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -20337)
  {
    if (v6 <= -20332)
    {
      if (v6 <= -20335)
      {
        if (v6 == -20336)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 144) = *(result + 2);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 140) = *(result + 2);
        }
      }

      else if (v6 == -20334)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 124) = *(result + 2);
      }

      else if (v6 == -20333)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 136) = *(result + 2);
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 128) = *(result + 2);
      }
    }

    else if (v6 > -20329)
    {
      switch(v6)
      {
        case -20328:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 104) = *(result + 1);
          break;
        case -20316:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 148) = *(result + 2);
          break;
        case -18429:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 8) = *(v7 + 1);
          *(v5 + 16) = v8;
          *(v5 + 4) = *(a3 + 2);
          *(v5 + 40) = v9;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
          *(v5 + 48) = result;
          *(v5 + 148) = 1;
          *(v5 + 112) = 0;
          break;
      }
    }

    else if (v6 == -20331)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 132) = *(result + 2);
    }

    else if (v6 == -20330)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 120) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 149) = *(result + 2);
    }
  }

  else if (v6 <= -20451)
  {
    if (v6 <= -20454)
    {
      if (v6 == -20455)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 64) = *(result + 1);
      }

      else if (v6 == -20454)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 80) = *(result + 1);
      }
    }

    else if (v6 == -20453)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 56) = *(result + 1);
    }

    else if (v6 == -20452)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 88) = *(result + 1);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 112) = *(result + 2);
    }
  }

  else if (v6 > -20447)
  {
    switch(v6)
    {
      case -20446:
        *(result + 3) = *a3;
        break;
      case -20445:
        result[148] = 0;
        break;
      case -20350:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 150) = *(result + 2);
        break;
    }
  }

  else
  {
    switch(v6)
    {
      case -20450:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 116) = *(result + 2);
        break;
      case -20449:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 96) = *(result + 1);
        break;
      case -20448:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 72) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -20349)
  {
    if (v6 <= -20315)
    {
      if (v6 == -20348)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 128) = *(result + 1);
      }

      else if (v6 == -20315)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 333) = *(result + 2);
      }
    }

    else
    {
      switch(v6)
      {
        case -20314:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 160) = *(result + 1);
          break;
        case -18422:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 334) = *(result + 1);
          break;
        case -18428:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 8) = *(v7 + 1);
          *(v5 + 16) = v8;
          *(v5 + 4) = *(a3 + 2);
          *(v5 + 40) = v9;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
          v10 = 0;
          *(v5 + 48) = result;
          *(v5 + 184) = 0;
          v11 = *(result + 24);
          *(v5 + 168) = v11;
          *(v5 + 192) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v11)));
          *(v5 + 200) = 1065353216;
          *(v5 + 332) = 257;
          do
          {
            if (v10 > 0xA || (v12 = 1.0, ((1 << v10) & 0x421) == 0))
            {
              if (v10 == 15)
              {
                v12 = 1.0;
              }

              else
              {
                v12 = 0.0;
              }
            }

            *(v5 + 204 + 4 * v10++) = v12;
          }

          while (v10 != 16);
          for (i = 0; i != 16; ++i)
          {
            if (i > 0xA || (v14 = 1.0, ((1 << i) & 0x421) == 0))
            {
              if (i == 15)
              {
                v14 = 1.0;
              }

              else
              {
                v14 = 0.0;
              }
            }

            *(v5 + 268 + 4 * i) = v14;
          }

          break;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case -20444:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 64) = *(result + 1);
        break;
      case -20443:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 332) = *(result + 2);
        break;
      case -20442:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 72) = *(result + 1);
        break;
      case -20441:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 88) = *(result + 1);
        break;
      case -20440:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 136) = *(result + 1);
        break;
      case -20439:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 56) = *(result + 1);
        break;
      case -20438:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 176) = *(result + 1);
        break;
      case -20437:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 168) = *(result + 1);
        break;
      case -20436:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 184) = *(result + 2);
        break;
      case -20435:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 188) = *(result + 2);
        break;
      case -20434:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 80) = *(result + 1);
        break;
      case -20433:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 192) = *(result + 2);
        break;
      case -20432:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 196) = *(result + 2);
        break;
      case -20431:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 104) = *(result + 1);
        break;
      case -20430:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 144) = *(result + 1);
        break;
      case -20429:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 200) = *(result + 2);
        break;
      case -20428:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 152) = *(result + 1);
        break;
      case -20426:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 112) = *(result + 1);
        break;
      case -20425:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 96) = *(result + 1);
        break;
      case -20424:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 120) = *(result + 1);
        break;
      case -20423:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v18 = *(result + 24);
        v19 = *(result + 56);
        v20 = *(result + 8);
        *(v5 + 300) = *(result + 40);
        *(v5 + 316) = v19;
        *(v5 + 268) = v20;
        *(v5 + 284) = v18;
        break;
      case -20422:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v15 = *(result + 24);
        v16 = *(result + 40);
        v17 = *(result + 56);
        *(v5 + 204) = *(result + 8);
        *(v5 + 252) = v17;
        *(v5 + 236) = v16;
        *(v5 + 220) = v15;
        break;
      case -20421:
        *(result + 3) = *a3;
        break;
      case -20420:
        result[333] = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -20346)
  {
    if (v6 <= -20414)
    {
      if (v6 <= -20418)
      {
        if (v6 == -20419)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 72) = *(result + 1);
        }

        else if (v6 == -20418)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 166) = *(result + 2);
        }
      }

      else
      {
        switch(v6)
        {
          case -20417:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 88) = *(result + 1);
            break;
          case -20416:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 64) = *(result + 1);
            break;
          case -20414:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 96) = *(result + 1);
            break;
        }
      }
    }

    else if (v6 > -20410)
    {
      switch(v6)
      {
        case -20409:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 80) = *(result + 1);
          break;
        case -20407:
          *(result + 3) = *a3;
          break;
        case -20406:
          result[164] = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20413:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 128) = *(result + 2);
          break;
        case -20412:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 132) = *(result + 2);
          break;
        case -20411:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 104) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20340)
  {
    if (v6 > -20328)
    {
      switch(v6)
      {
        case -20327:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 120) = *(result + 1);
          break;
        case -20319:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 164) = *(result + 2);
          break;
        case -18425:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 8) = *(v7 + 1);
          *(v5 + 16) = v8;
          *(v5 + 4) = *(a3 + 2);
          v10 = *(v7 + 2);
          *(v5 + 40) = v9;
          *(v5 + 48) = v10;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
          *(v5 + 56) = result;
          *(v5 + 164) = 1;
          *(v5 + 128) = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20339:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 136) = *(result + 2);
          break;
        case -20338:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 165) = *(result + 2);
          break;
        case -20337:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 112) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20343)
  {
    if (v6 == -20342)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 152) = *(result + 2);
    }

    else if (v6 == -20341)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 144) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 148) = *(result + 2);
    }
  }

  else if (v6 == -20345)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 160) = *(result + 2);
  }

  else if (v6 == -20344)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 156) = *(result + 2);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 140) = *(result + 2);
  }

  return result;
}

void *GTMTLSMRenderPipelineState_resourceAccess(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16 = 0;
  v18 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v9 = 0;
  v11 = 0u;
  v8 = 0u;
  LODWORD(v8) = 71;
  v10 = -1;
  v17 = -1;
  if (a2 && (v5 = *(a2 + 32)) != 0 && (*(v5 + 79) & 8) != 0)
  {
    v6 = (v5 + 64);
  }

  else
  {
    v6 = 0;
  }

  GTMTLSMRenderPipelineState_processTraceFuncWithMap(&v8, a3, v6);
  return memcpy(a1, v19, 0x118uLL);
}

uint64_t GTMTLSMObject_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unsigned __int8 *CalculateBindingsAccess(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = a3 + 48;
    v6 = a2;
    while (1)
    {
      if ((v4[19] & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = v4[16];
      if ((v7 - 24) < 4)
      {
        break;
      }

      if (v7 == 2)
      {
        v9 = a3 + 16;
        v8 = v4;
        goto LABEL_6;
      }

      if (!v4[16])
      {
        break;
      }

LABEL_7:
      if (v4[16] <= 1u)
      {
        result = *(v4 + 1);
        if (result)
        {
          v10 = *result;
          if (v10 == 1 || v10 == 60 && result[22] == 1 && (result = *(result + 1)) != 0)
          {
            result = GTMTLStructType_isArgumentBuffer(result);
            if (result)
            {
              *(v5 + ((v4[18] >> 3) & 0x18)) |= 1 << v4[18];
            }
          }
        }
      }

      v4 += 56;
      if (!--v6)
      {
        return result;
      }
    }

    v8 = v4;
    v9 = a3;
LABEL_6:
    result = UpdateAccess(v8, v9);
    goto LABEL_7;
  }

  return result;
}

_BYTE *UpdateAccess(_BYTE *result, uint64_t a2)
{
  v2 = result[18];
  if (result[16] != 2)
  {
    v3 = v2 + 1;
    goto LABEL_5;
  }

  if (result[26])
  {
    v3 = result[26] + v2;
LABEL_5:
    v4 = result[17];
    while (1)
    {
      v5 = v2 >> 6;
      if (v4 == 2)
      {
        v6 = 1 << v2;
        v7 = (a2 + 16 * v5 + 8);
        goto LABEL_12;
      }

      if (v4 == 1)
      {
        break;
      }

      if (!v4)
      {
        v6 = 1 << v2;
        v7 = (a2 + 16 * v5);
LABEL_12:
        *v7 |= v6;
      }

      if (v3 == ++v2)
      {
        return result;
      }
    }

    v6 = 1 << v2;
    v8 = (a2 + 16 * v5);
    *v8 |= 1 << v2;
    v7 = v8 + 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t GTMTLStructType_isArgumentBuffer(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (!v1)
    {
      return 0;
    }

    v2 = 0;
    v3 = *(result + 8);
    while (1)
    {
      v4 = v3 + 32 * v2;
      v5 = *(v4 + 24);
      v6 = v5 == 1;
      if (v5 > 1)
      {
        if (v5 != 2)
        {
          result = 1;
          v9 = v5 - 78 > 0x28 || ((1 << (v5 - 78)) & 0x1E000000007) == 0;
          if (!v9 || v5 - 58 < 3)
          {
            return result;
          }

          goto LABEL_23;
        }

        do
        {
          v4 = *(v4 + 8);
          v7 = *(v4 + 24);
        }

        while (v7 == 2);
        if ((v7 - 58) <= 0x3C && ((1 << (v7 - 58)) & 0x1E00000000700007) != 0)
        {
          return 1;
        }

        v6 = v7 == 1;
      }

      if (v6 && (GTMTLStructType_isArgumentBuffer(*(v4 + 8)) & 1) != 0)
      {
        return 1;
      }

LABEL_23:
      if (++v2 == v1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t GTFenum_getConstructorType(int a1)
{
  if (a1 <= -15610)
  {
    if (a1 <= -16083)
    {
      if (a1 <= -16234)
      {
        if (a1 <= -18429)
        {
          switch(a1)
          {
            case -18432:
              return 39;
            case -18431:
              return 40;
            case -18429:
              return 103;
          }

          return 0;
        }

        switch(a1)
        {
          case -16354:
            return 21;
          case -16353:
          case -16286:
            return 70;
          case -16352:
            return 28;
          case -16351:
            return 65;
          case -16350:
          case -16349:
          case -16348:
          case -16347:
          case -16346:
          case -16345:
          case -16344:
          case -16341:
          case -16340:
          case -16339:
          case -16338:
          case -16337:
          case -16336:
          case -16335:
          case -16334:
          case -16333:
          case -16332:
          case -16331:
          case -16330:
          case -16329:
          case -16328:
          case -16327:
          case -16326:
          case -16325:
          case -16324:
          case -16323:
          case -16322:
          case -16321:
          case -16320:
          case -16319:
          case -16318:
          case -16317:
          case -16295:
          case -16293:
          case -16292:
          case -16291:
          case -16289:
          case -16288:
          case -16287:
            return 0;
          case -16343:
          case -16342:
            return 25;
          case -16316:
          case -16315:
            return 27;
          case -16314:
          case -16313:
          case -16312:
            return 22;
          case -16311:
            return 34;
          case -16310:
          case -16294:
            return 80;
          case -16309:
            return 75;
          case -16308:
          case -16307:
          case -16306:
          case -16305:
          case -16304:
            return 62;
          case -16303:
          case -16302:
          case -16301:
          case -16300:
            return 71;
          case -16299:
          case -16298:
          case -16297:
          case -16296:
            return 29;
          case -16290:
            return 43;
          default:
            if (a1 != -18428)
            {
              v6 = -16368;
              goto LABEL_254;
            }

            result = 104;
            break;
        }

        return result;
      }

      if (a1 <= -16108)
      {
        if (a1 > -16166)
        {
          if (a1 <= -16121)
          {
            if (a1 == -16165)
            {
              return 27;
            }

            if (a1 != -16163)
            {
              if (a1 == -16128)
              {
                return 41;
              }

              return 0;
            }

            return 22;
          }

          if (a1 == -16120)
          {
            return 50;
          }

          if (a1 == -16117)
          {
            return 22;
          }

          v6 = -16116;
        }

        else
        {
          if ((a1 + 16200) < 4)
          {
            return 29;
          }

          if (a1 == -16233)
          {
            return 80;
          }

          v6 = -16196;
        }

LABEL_254:
        if (a1 != v6)
        {
          return 0;
        }

        return 80;
      }

      if (a1 <= -16097)
      {
        if (a1 > -16102)
        {
          if (a1 == -16101)
          {
            return 29;
          }

          if (a1 == -16099)
          {
            return 81;
          }

          v6 = -16098;
        }

        else
        {
          if ((a1 + 16107) < 2)
          {
            return 43;
          }

          v6 = -16104;
        }

        goto LABEL_254;
      }

      if ((a1 + 16091) < 4)
      {
        return 71;
      }

      if (a1 == -16096)
      {
        return 80;
      }

      v5 = -16095;
LABEL_191:
      if (a1 != v5)
      {
        return 0;
      }

      return 62;
    }

    if (a1 > -15892)
    {
      if (a1 > -15716)
      {
        if (a1 > -15691)
        {
          if (a1 <= -15621)
          {
            if ((a1 + 15690) >= 3)
            {
              v3 = -15673;
              goto LABEL_216;
            }

            return 80;
          }

          if ((a1 + 15615) < 2)
          {
            return 16;
          }

          if (a1 != -15620)
          {
            if (a1 != -15613)
            {
              return 0;
            }

            return 37;
          }

          return 44;
        }

        if (a1 <= -15702)
        {
          if ((a1 + 15715) < 2)
          {
            return 18;
          }

          if (a1 != -15707)
          {
            v12 = -15705;
            goto LABEL_229;
          }

          return 22;
        }

        if (a1 == -15701)
        {
          return 25;
        }

        if (a1 == -15695)
        {
          return 37;
        }

        v5 = -15693;
        goto LABEL_191;
      }

      if (a1 > -15778)
      {
        if (a1 > -15739)
        {
          if ((a1 + 15731) < 2)
          {
            return 43;
          }

          if (a1 != -15738)
          {
            if (a1 == -15717)
            {
              return 19;
            }

            return 0;
          }

          return 71;
        }

        if (a1 != -15777 && a1 != -15775)
        {
          if (a1 == -15740)
          {
            return 29;
          }

          return 0;
        }

        return 80;
      }

      if (a1 <= -15848)
      {
        if (a1 != -15891)
        {
          if (a1 != -15870)
          {
            if (a1 == -15848)
            {
              return 31;
            }

            return 0;
          }

          return 74;
        }

        return 64;
      }

      if (a1 <= -15794)
      {
        if (a1 != -15847)
        {
          if (a1 == -15830)
          {
            return 43;
          }

          return 0;
        }

        return 62;
      }

      if (a1 == -15793)
      {
        return 68;
      }

      v12 = -15778;
LABEL_229:
      if (a1 == v12)
      {
        return 22;
      }

      return 0;
    }

    if (a1 <= -16014)
    {
      if (a1 > -16039)
      {
        if (a1 > -16030)
        {
          if (a1 != -16029 && a1 != -16018)
          {
            v7 = -16014;
LABEL_183:
            if (a1 == v7)
            {
              return 28;
            }

            return 0;
          }

          return 62;
        }

        if ((a1 + 16031) >= 2)
        {
          if (a1 == -16038)
          {
            return 43;
          }

          v2 = -16037;
LABEL_92:
          if (a1 != v2)
          {
            return 0;
          }

          return 18;
        }

        return 80;
      }

      if (a1 <= -16054)
      {
        if ((a1 + 16082) >= 2)
        {
          if (a1 == -16075)
          {
            return 67;
          }

          return 0;
        }

        return 43;
      }

      if ((a1 + 16053) < 3)
      {
        return 18;
      }

      v5 = -16039;
      goto LABEL_191;
    }

    if (a1 > -15923)
    {
      if (a1 <= -15914)
      {
        if (a1 == -15922)
        {
          return 59;
        }

        if (a1 == -15921)
        {
          return 58;
        }

        v12 = -15914;
        goto LABEL_229;
      }

      if (a1 > -15910)
      {
        if (a1 != -15909)
        {
          if (a1 == -15900)
          {
            return 73;
          }

          return 0;
        }

        return 76;
      }

      if (a1 == -15913)
      {
        return 80;
      }

      v11 = -15912;
    }

    else
    {
      if (a1 > -15981)
      {
        if ((a1 + 15980) < 2)
        {
          return 80;
        }

        if (a1 != -15972)
        {
          if (a1 == -15969)
          {
            return 57;
          }

          return 0;
        }

        return 22;
      }

      if (a1 == -16013)
      {
        return 82;
      }

      if (a1 == -15997)
      {
        return 38;
      }

      v11 = -15996;
    }

    if (a1 != v11)
    {
      return 0;
    }

    return 76;
  }

  if (a1 <= -15297)
  {
    if (a1 > -15465)
    {
      if (a1 <= -15357)
      {
        switch(a1)
        {
          case -15464:
            return 16;
          case -15463:
          case -15444:
          case -15437:
          case -15436:
            return 44;
          case -15462:
          case -15443:
          case -15442:
          case -15441:
            return 60;
          case -15461:
          case -15406:
          case -15405:
          case -15404:
          case -15403:
            return 71;
          case -15460:
          case -15440:
          case -15439:
          case -15438:
            return 83;
          case -15459:
          case -15458:
          case -15457:
          case -15456:
          case -15455:
          case -15454:
          case -15453:
          case -15452:
          case -15451:
          case -15450:
          case -15449:
          case -15448:
          case -15447:
          case -15446:
          case -15445:
          case -15433:
          case -15432:
          case -15431:
          case -15426:
          case -15424:
          case -15423:
          case -15422:
          case -15418:
          case -15417:
          case -15416:
          case -15415:
          case -15414:
          case -15413:
          case -15412:
          case -15411:
          case -15410:
          case -15409:
          case -15408:
          case -15407:
            return 0;
          case -15435:
          case -15434:
          case -15425:
          case -15421:
          case -15420:
          case -15419:
            return 62;
          case -15430:
          case -15429:
          case -15428:
          case -15427:
            return 43;
          default:
            if ((a1 + 15359) < 2)
            {
              return 16;
            }

            v3 = -15364;
            break;
        }

LABEL_216:
        if (a1 == v3)
        {
          return 17;
        }

        return 0;
      }

      if (a1 >= -15350)
      {
        if (a1 > -15318)
        {
          if (a1 == -15317)
          {
            return 33;
          }

          if (a1 != -15306)
          {
            if (a1 == -15299)
            {
              return 55;
            }

            return 0;
          }

          return 51;
        }

        if (a1 == -15350)
        {
          return 52;
        }

        if (a1 != -15348)
        {
          v8 = -15333;
          goto LABEL_106;
        }

        return 53;
      }

      return 16;
    }

    if (a1 <= -15552)
    {
      if (a1 <= -15586)
      {
        if ((a1 + 15609) >= 2)
        {
          if (a1 == -15587)
          {
            return 21;
          }

          v7 = -15586;
          goto LABEL_183;
        }

        return 43;
      }

      if (a1 <= -15579)
      {
        if (a1 != -15585)
        {
          v7 = -15584;
          goto LABEL_183;
        }

        return 74;
      }

      if (a1 == -15578)
      {
        return 83;
      }

      v10 = -15577;
LABEL_220:
      if (a1 == v10)
      {
        return 60;
      }

      return 0;
    }

    if (a1 <= -15532)
    {
      if ((a1 + 15551) < 2)
      {
        return 43;
      }

      if (a1 != -15541)
      {
        v10 = -15540;
        goto LABEL_220;
      }

      return 29;
    }

    if (a1 > -15507)
    {
      if (a1 != -15506)
      {
        if (a1 == -15496)
        {
          return 61;
        }

        return 0;
      }

      return 16;
    }

    if (a1 != -15531)
    {
      v12 = -15509;
      goto LABEL_229;
    }

    return 37;
  }

  if (a1 > -14870)
  {
    if (a1 > -6656)
    {
      if (a1 > -6123)
      {
        if (a1 > -6111)
        {
          if (a1 > -6097)
          {
            if (a1 != -6096)
            {
              if (a1 == -6095)
              {
                return 12;
              }

              return 0;
            }

            return 14;
          }

          else
          {
            if (a1 != -6110)
            {
              if (a1 == -6109)
              {
                return 7;
              }

              return 0;
            }

            return 9;
          }
        }

        if (a1 > -6117)
        {
          if (a1 != -6116)
          {
            if (a1 == -6111)
            {
              return 6;
            }

            return 0;
          }

          return 8;
        }

        if (a1 == -6122)
        {
          return 10;
        }

        v4 = -6119;
LABEL_237:
        if (a1 != v4)
        {
          return 0;
        }

        return 8;
      }

      if (a1 > -6135)
      {
        if (a1 <= -6132)
        {
          if (a1 == -6134)
          {
            return 11;
          }

          v4 = -6133;
          goto LABEL_237;
        }

        if (a1 != -6131)
        {
          v4 = -6129;
          goto LABEL_237;
        }

        return 5;
      }

      if (a1 != -6655)
      {
        if (a1 != -6143)
        {
          v4 = -6141;
          goto LABEL_237;
        }

        return 5;
      }

      return 2;
    }

    if (a1 <= -14803)
    {
      if (a1 <= -14837)
      {
        if ((a1 + 14869) < 2)
        {
          return 106;
        }

        if (a1 == -14867)
        {
          return 71;
        }

        if (a1 != -14840)
        {
          return 0;
        }

        return 101;
      }

      if (a1 == -14836)
      {
        return 71;
      }

      if (a1 != -14835)
      {
        v13 = -14834;
        goto LABEL_198;
      }

      return 44;
    }

    if (a1 <= -10238)
    {
      if ((a1 + 14802) < 2)
      {
        return 80;
      }

      if (a1 != -12544)
      {
        v8 = -12543;
LABEL_106:
        if (a1 != v8)
        {
          return 0;
        }

        return 51;
      }

      return 25;
    }

    if (a1 != -10237)
    {
      if (a1 == -7167)
      {
        return 80;
      }

      if (a1 != -7166)
      {
        return 0;
      }

      return 2;
    }

    return 22;
  }

  if (a1 > -15142)
  {
    if (a1 <= -14970)
    {
      v9 = a1 + 35;
      if ((a1 + 15139) > 9)
      {
        goto LABEL_55;
      }

      if (((1 << v9) & 0xF) != 0)
      {
        return 37;
      }

      if (((1 << v9) & 0x30) == 0)
      {
        if (((1 << v9) & 0x300) == 0)
        {
LABEL_55:
          if ((a1 + 15141) < 2)
          {
            return 29;
          }

          return 0;
        }

        return 71;
      }

      return 62;
    }

    if (a1 > -14872)
    {
      return 29;
    }

    if (a1 != -14969)
    {
      if (a1 != -14959)
      {
        if (a1 == -14884)
        {
          return 105;
        }

        return 0;
      }

      return 101;
    }

    return 80;
  }

  if (a1 > -15197)
  {
    if (a1 > -15190)
    {
      if ((a1 + 15166) < 2)
      {
        return 98;
      }

      if (a1 != -15189)
      {
        if (a1 == -15171)
        {
          return 95;
        }

        return 0;
      }

      return 100;
    }

    if (a1 == -15196)
    {
      return 91;
    }

    if (a1 == -15194)
    {
      return 93;
    }

    v13 = -15190;
LABEL_198:
    if (a1 == v13)
    {
      return 92;
    }

    return 0;
  }

  if (a1 <= -15246)
  {
    if ((a1 + 15260) < 2 || a1 == -15296)
    {
      return 53;
    }

    v2 = -15261;
    goto LABEL_92;
  }

  if ((a1 + 15198) < 2)
  {
    return 90;
  }

  if (a1 != -15245)
  {
    if (a1 == -15200)
    {
      return 88;
    }

    return 0;
  }

  return 72;
}

uint64_t GTFenum_isDestructor(int a1)
{
  result = 1;
  if (a1 <= -15802)
  {
    if (a1 <= -16294)
    {
      if (a1 <= -16384)
      {
        if ((a1 + 20475) <= 0x36 && ((1 << (a1 - 5)) & 0x40000020020001) != 0)
        {
          return result;
        }

        v6 = a1 + 20407;
        if (v6 <= 0x37)
        {
          v4 = 1 << v6;
          v5 = 0x80001000000101;
          goto LABEL_47;
        }

        return 0;
      }

      if ((a1 + 16370) <= 0x35 && ((1 << (a1 - 14)) & 0x26000104000081) != 0)
      {
        return result;
      }

      v7 = -16383;
    }

    else
    {
      if (a1 > -16119)
      {
        if ((a1 + 15973) <= 0x32 && ((1 << (a1 + 101)) & 0x4004000010001) != 0 || (a1 + 15893) <= 0x1A && ((1 << (a1 + 21)) & 0x4004011) != 0)
        {
          return result;
        }

        v9 = a1 + 16118;
        if (v9 <= 0x38)
        {
          v4 = 1 << v9;
          v5 = 0x100000000200001;
LABEL_47:
          if ((v4 & v5) != 0)
          {
            return result;
          }

          return 0;
        }

        return 0;
      }

      if ((a1 + 16293) <= 0x37 && ((1 << (a1 - 91)) & 0x98000000002045) != 0)
      {
        return result;
      }

      v7 = -16127;
    }

LABEL_57:
    if (a1 == v7)
    {
      return result;
    }

    return 0;
  }

  if (a1 > -15232)
  {
    if (a1 > -14949)
    {
      if (a1 <= -10207)
      {
        if (a1 == -14948 || a1 == -14894)
        {
          return result;
        }

        v7 = -14825;
      }

      else if (a1 > -6653)
      {
        if (a1 == -6652)
        {
          return result;
        }

        v7 = -6139;
      }

      else
      {
        if (a1 == -10206)
        {
          return result;
        }

        v7 = -7161;
      }
    }

    else if (a1 > -15110)
    {
      if (a1 == -15109 || a1 == -15060)
      {
        return result;
      }

      v7 = -14972;
    }

    else
    {
      if ((a1 + 15182) <= 0x1B && ((1 << (a1 + 78)) & 0x8001081) != 0)
      {
        return result;
      }

      v7 = -15231;
    }

    goto LABEL_57;
  }

  if (a1 > -15496)
  {
    if ((a1 + 15341) > 0x34 || ((1 << (a1 - 19)) & 0x10000000201601) == 0)
    {
      v8 = a1 + 15495;
      if (v8 > 6 || ((1 << v8) & 0x43) == 0)
      {
        return 0;
      }
    }
  }

  else if (((a1 + 15801) > 0x3B || ((1 << (a1 - 71)) & 0x800000100000801) == 0) && ((a1 + 15685) > 0x29 || ((1 << (a1 + 69)) & 0x20004000401) == 0))
  {
    v3 = a1 + 15610;
    if (v3 > 0x2A)
    {
      return 0;
    }

    v4 = 1 << v3;
    v5 = 0x40000000021;
    goto LABEL_47;
  }

  return result;
}

uint64_t GTFenum_isDrawCall(int a1)
{
  result = 1;
  if (a1 <= -15417)
  {
    if (((a1 + 16251) > 0x24 || ((1 << (a1 + 123)) & 0x1E0000000FLL) == 0) && (a1 + 16147) >= 4)
    {
      return 0;
    }
  }

  else if ((a1 + 15058) >= 0xB && (a1 + 15416) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t GTFenum_isComputeCall(int a1)
{
  result = 1;
  if (a1 > -15109)
  {
    if ((a1 + 15108) >= 4)
    {
      return 0;
    }
  }

  else if ((a1 + 16079) >= 2 && a1 != -16327 && a1 != -16220)
  {
    return 0;
  }

  return result;
}

BOOL GTFenum_isSampledBlitCallAGX(int a1)
{
  result = 1;
  if (((a1 + 15995) > 0x25 || ((1 << (a1 + 123)) & 0x38000C000FLL) == 0) && ((a1 + 15802) > 4 || ((1 << (a1 - 70)) & 0x15) == 0))
  {
    return (a1 + 15470) < 2;
  }

  return result;
}

uint64_t GTFenum_isGPUCommandCall(int a1)
{
  if ((GTFenum_isDrawCall(a1) & 1) != 0 || (GTFenum_isComputeCall(a1) & 1) != 0 || GTFenum_isSampledBlitCall(a1) || GTFenum_isSampledBlitCallAGX(a1))
  {
    return 1;
  }

  result = 1;
  if (a1 > -15298)
  {
    if (a1 == -15297)
    {
      return result;
    }

    v3 = -15059;
  }

  else
  {
    if (a1 == -16137)
    {
      return result;
    }

    v3 = -15486;
  }

  if (a1 != v3)
  {
    LODWORD(result) = GTFenum_isMeshCall(a1);
    if (a1 == -14893)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t GTFenum_isPushDebugGroup(int a1)
{
  result = 1;
  if (a1 <= -15787)
  {
    if (a1 > -16245)
    {
      if (a1 != -16244 && a1 != -16065)
      {
        v3 = -15882;
LABEL_18:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != -16374 && a1 != -16323)
    {
      v3 = -16283;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > -15168)
    {
      if (a1 > -15043)
      {
        if (a1 == -15042)
        {
          return result;
        }

        v3 = -14889;
      }

      else
      {
        if (a1 == -15167)
        {
          return result;
        }

        v3 = -15088;
      }

      goto LABEL_18;
    }

    if (a1 != -15786 && a1 != -15639)
    {
      v3 = -15292;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t GTFenum_isPopDebugGroup(int a1)
{
  result = 1;
  if (a1 <= -15788)
  {
    if (a1 > -16244)
    {
      if (a1 != -16243 && a1 != -16064)
      {
        v3 = -15881;
LABEL_18:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != -16373 && a1 != -16322)
    {
      v3 = -16282;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > -15169)
    {
      if (a1 > -15044)
      {
        if (a1 == -15043)
        {
          return result;
        }

        v3 = -14890;
      }

      else
      {
        if (a1 == -15168)
        {
          return result;
        }

        v3 = -15089;
      }

      goto LABEL_18;
    }

    if (a1 != -15787 && a1 != -15640)
    {
      v3 = -15293;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t GTFenum_isEndEncoding(int a1)
{
  result = 1;
  if (a1 > -15790)
  {
    if (a1 <= -15105)
    {
      if (a1 == -15789)
      {
        return result;
      }

      v3 = -15642;
      goto LABEL_14;
    }

    if (a1 != -15104 && a1 != -15047)
    {
      v3 = -14892;
LABEL_14:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a1 <= -16286)
    {
      if (a1 == -16376)
      {
        return result;
      }

      v3 = -16325;
      goto LABEL_14;
    }

    if (a1 != -16285 && a1 != -16246)
    {
      v3 = -15884;
      goto LABEL_14;
    }
  }

  return result;
}

BOOL GTFenum_isMTLCommandEncoder(int a1)
{
  result = 1;
  if ((a1 - 21) > 0x3D || ((1 << (a1 - 21)) & 0x2022100000000081) == 0)
  {
    return a1 == 17;
  }

  return result;
}

uint64_t GTFenum_isUseResourceCall(int a1)
{
  result = 1;
  if (a1 <= -15822)
  {
    if ((a1 + 16047) < 8)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= -15635)
  {
    if ((a1 + 15821) < 4)
    {
      return result;
    }

    return 0;
  }

  if ((a1 + 15634) >= 4 && a1 != -15510 && a1 != -15507)
  {
    return 0;
  }

  return result;
}

const char *GetFuncEnumAsString(int a1)
{
  if (a1 > -12544)
  {
    if (a1 > -6657)
    {
      if (a1 <= -6654)
      {
        if (a1 == -6656)
        {
          return "kDYFENSHMDMetalSession_setDrawablePixelFormat";
        }

        else if (a1 == -6655)
        {
          return "kDYFENSHMDMetalSession_nextDrawable";
        }

        else
        {
          return "kDYFENSHMDMetalSession_initWithMetalDevice_deviceReference_hmdName";
        }
      }

      else
      {
        switch(a1)
        {
          case -6144:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset";
            break;
          case -6143:
            result = "kDYFEMPSPlugin_newCNNConvolutionWithDescriptor_convolutionData";
            break;
          case -6142:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeBatchToCommandBuffer_computeCommandEncoder_options_sourceTextures_sourceInfo_destinationTextures_destinationInfo_zeroPadSizeX_zeroPadSizeY_predicationBuffer_predicationOffset";
            break;
          case -6141:
            result = "kDYFEMPSPlugin_newCNNPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY";
            break;
          case -6140:
            result = "kDYFEMPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure_predicationBuffer_predicationOffset";
            break;
          case -6139:
            result = "kDYFEMPSExternalPluginBase_dealloc";
            break;
          case -6138:
            result = "kDYFEMPSExternalCNNUnary_maxBatchSize";
            break;
          case -6137:
            result = "kDYFEMPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure";
            break;
          case -6136:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset";
            break;
          case -6135:
            result = "kDYFEMPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case -6134:
            result = "kDYFEMPSPlugin_newMatrixVectorMultiplicationWithTranspose_rows_columns_alpha_beta";
            break;
          case -6133:
            result = "kDYFEMPSPlugin_newCNNNeuronWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC";
            break;
          case -6132:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo";
            break;
          case -6131:
            result = "kDYFEMPSPlugin_newCNNConvolutionWithDescriptor_dataSource_fullyConnected";
            break;
          case -6130:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_A_aInfo_B_bInfo_C_cInfo";
            break;
          case -6129:
            result = "kDYFEMPSPlugin_newCNNNeuronWithNeuronType_neuronParameterAArray_count";
            break;
          case -6128:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_options_batchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectors_inputFeatureChannels_outputFeatureChannels_neuronType_neuronParameterA_neuronParameterB_neuronParameterC";
            break;
          case -6127:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeights";
            break;
          case -6126:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case -6125:
            result = "kDYFEMPSExternalCNNBinary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTexture_primaryInfo_secondaryTexture_secondaryInfo_destinationTexture_destinationInfo";
            break;
          case -6124:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_options_batchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectors_inputFeatureChannels_outputFeatureChannels_neuronType_neuronParameterA_neuronParameterB_neuronParameterC_predicationBuffer_predicationOffset";
            break;
          case -6123:
            result = "kDYFEMPSExternalCNNBinary_maxBatchSize";
            break;
          case -6122:
            result = "kDYFEMPSPlugin_newMatrixMultiplicationWithTransposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta";
            break;
          case -6121:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo_zeroPadSizeX_zeroPadSizeY";
            break;
          case -6120:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiases";
            break;
          case -6119:
            result = "kDYFEMPSPlugin_newCNNSoftMax";
            break;
          case -6118:
            result = "kDYFEMPSExternalCNNBinary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case -6117:
            result = "kDYFEMPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case -6116:
            result = "kDYFEMPSPlugin_newCNNDilatedPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY";
            break;
          case -6115:
            result = "kDYFEMPSExternalCNNUnary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTextures_sourceInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case -6114:
            result = "kDYFEMPSExternalCNNConvolutionGradient_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_weightsGradient_biasesGradient_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6113:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_predicationBuffer_predicationOffset";
            break;
          case -6112:
            result = "kDYFEMPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset";
            break;
          case -6111:
            result = "kDYFEMPSPlugin_newCNNConvolutionGradientWithDescriptor_convolutionData";
            break;
          case -6110:
            result = "kDYFEMPSPlugin_newMatrixFullyConnected";
            break;
          case -6109:
            result = "kDYFEMPSPlugin_newCNNPoolingAverageWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY";
            break;
          case -6108:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset";
            break;
          case -6107:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_weightsDataType_predicationBuffer_predicationOffset";
            break;
          case -6106:
            result = "kDYFEMPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset";
            break;
          case -6105:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRowsAndResultColumnsAndInteriorColumns_alphaAndBeta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset";
            break;
          case -6104:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannels_neuronType_neuronParameters";
            break;
          case -6103:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannelsAndNeuronTypeAndPredicationOffset_neuronParameters_predicationBuffer";
            break;
          case -6102:
            result = "kDYFEMPSExternalNDArrayConvolution2DGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6101:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset_transA_transB";
            break;
          case -6100:
            result = "kDYFEMPSExternalNDArrayConvolution2DGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6099:
            result = "kDYFEMPSExternalNDArrayBinaryGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6098:
            result = "kDYFEMPSExternalNDArrayBinaryGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6097:
            result = "kDYFEMPSExternalNDArrayBinary_encodeToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_destinationBuffer_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case -6096:
            result = "kDYFEMPSPlugin_newNDArrayConvolution2DGradientWithDescriptor";
            break;
          case -6095:
            result = "kDYFEMPSPlugin_newNDArrayConvolution2DWithDescriptor";
            break;
          default:
            if (a1 == -6653)
            {
              result = "kDYFENSHMDMetalSession_setDrawableSize";
            }

            else if (a1 == -6652)
            {
              result = "kDYFENSHMDMetalSession_dealloc";
            }

            else
            {
LABEL_76:
              result = 0;
            }

            break;
        }
      }
    }

    else
    {
      switch(a1)
      {
        case -10240:
          result = "kDYFEMTLCommandBuffer_restoreMTLBufferContents";
          break;
        case -10239:
          result = "kDYFEMTLDevice_deviceReference";
          break;
        case -10238:
          result = "kDYFEMTLTexture_harvested_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage";
          break;
        case -10237:
          result = "kDYFEMTLDevice_harvested_newBufferWithBytes_length_options";
          break;
        case -10236:
          result = "kDYFEMTLTexture_harvested_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_totalBytes";
          break;
        case -10235:
          result = "kDYFEMTLBuffer_resourceUsage";
          break;
        case -10234:
          result = "kDYFEMTLTexture_resourceUsage";
          break;
        case -10233:
          result = "kDYFEMTLDevice_setSelectedCommandQueueAddress";
          break;
        case -10232:
          result = "kDYFEMTLTexture_restoreIOSurfaceData_length_forPlane";
          break;
        case -10231:
          result = "kDYFEMTLTexture_mipmapInfo";
          break;
        case -10230:
          result = "kDYFEMTLDevice_setCapturingCommandQueueAddress";
          break;
        case -10229:
          result = "kDYFEMTLCommandBuffer_indirectArgumentBufferData";
          break;
        case -10228:
          result = "kDYFEMTLBuffer_gpuVirtualAddress";
          break;
        case -10227:
          result = "kDYFEMTLTexture_uniqueIdentifier";
          break;
        case -10226:
          result = "kDYFEMTLSamplerState_uniqueIdentifier";
          break;
        case -10225:
          result = "kDYFEMTLCommandBuffer_encodeIndirectArgumentsForBuffer_data";
          break;
        case -10224:
          result = "kDYFEFrameEnd";
          break;
        case -10223:
          result = "kDYFEMTLBuffer_allocatedSize";
          break;
        case -10222:
          result = "kDYFEMTLTexture_allocatedSize";
          break;
        case -10221:
          result = "kDYFEMTLBuffer_indirectCommandBufferData";
          break;
        case -10220:
          result = "kDYFEMTLRenderPipelineState_uniqueIdentifier";
          break;
        case -10219:
          result = "kDYFEMTLIndirectCommandBuffer_restoreData";
          break;
        case -10218:
          result = "kDYFEMTLIndirectCommandBuffer_uniqueIdentifier";
          break;
        case -10217:
          result = "kDYFEMTLIndirectCommandBuffer_indirectCommandNop";
          break;
        case -10216:
          result = "kDYFEMTLIndirectCommandBuffer_restoreOptimizedRanges";
          break;
        case -10215:
          result = "kDYFEMTLIndirectCommandBuffer_allocatedSize";
          break;
        case -10214:
          result = "kDYFEMTLComputePipelineState_uniqueIdentifier";
          break;
        case -10213:
          result = "kDYFEMTLResourceStateCommandEncoder_harvested_updateTextureMapping_mode_region_mipLevel_slice";
          break;
        case -10212:
          result = "kDYFEMTLTexture_timeSinceTouched";
          break;
        case -10211:
          result = "kDYFEMTLHeap_timeSinceTouched";
          break;
        case -10210:
          result = "kDYFEMTLBuffer_timeSinceTouched";
          break;
        case -10209:
          result = "kDYFEMTLIndirectCommandBuffer_timeSinceTouched";
          break;
        case -10208:
          result = "kDYFEMTLHeap_usedSize";
          break;
        case -10207:
          result = "kDYFEMTLHeap_currentAllocatedSize";
          break;
        case -10206:
          result = "kDYFEMTLSharedEventHandle_dealloc";
          break;
        case -10205:
          result = "kDYFEMTLTexture_compressionFeedback";
          break;
        case -10204:
          result = "kDYFEMTLTexture_allocationID";
          break;
        case -10203:
          result = "kDYFEMTLBuffer_allocationID";
          break;
        case -10202:
          result = "kDYFEMTLIndirectCommandBuffer_allocationID";
          break;
        case -10201:
          result = "kDYFEMTLTexture_saveSlice_level_zPlane_normalize_blitOption_toPath";
          break;
        case -10200:
          result = "kDYFEMTLBuffer_saveContentsToPath";
          break;
        case -10199:
          result = "kDYFEMTLRenderPipelineState_resourceIndex";
          break;
        case -10198:
          result = "kDYFEMTLTexture_resourceIndex";
          break;
        case -10197:
          result = "kDYFEMTLAccelerationStructure_allocationID";
          break;
        case -10196:
          result = "kDYFEMTLAccelerationStructure_allocatedSize";
          break;
        case -10195:
          result = "kDYFEMTLAccelerationStructure_resourceUsage";
          break;
        case -10194:
          result = "kDYFEMTLAccelerationStructure_restoreMTLAccelerationStructure";
          break;
        case -10193:
          result = "kDYFEMTLVisibleFunctionTable_uniqueIdentifier";
          break;
        case -10192:
          result = "kDYFEMTLRenderPipelineState_allocatedSize";
          break;
        case -10191:
          result = "kDYFEMTLComputePipelineState_allocatedSize";
          break;
        case -10190:
          result = "kDYFEMTLAccelerationStructure_restoreMTLAccelerationStructure_instance";
          break;
        case -10189:
          result = "kDYFEMTLDynamicLibrary_installName";
          break;
        case -10188:
          result = "kDYFEMTLLibrary_libraryIdentifier";
          break;
        case -10187:
          result = "kDYFEMTLBuffer_heapOffset";
          break;
        case -10186:
          result = "kDYFEMTLBuffer_parentGPUAddress_parentGPUSize";
          break;
        case -10185:
          result = "kDYFEMTLTexture_heapOffset";
          break;
        case -10184:
          result = "kDYFEMTLRenderPipelineState_imageblockSampleLength";
          break;
        case -10183:
          result = "kDYFEMTLLibrary_type";
          break;
        case -10182:
          result = "kDYFEMTLAccelerationStructure_allocationInfo";
          break;
        case -10181:
          result = "kDYFEMTLAccelerationStructure_uniqueIdentifier";
          break;
        case -10180:
          result = "kDYFEMTLIntersectionFunctionTable_timeSinceTouched";
          break;
        case -10179:
          result = "kDYFEMTLIntersectionFunctionTable_allocatedSize";
          break;
        case -10178:
          result = "kDYFEMTLVisibleFunctionTable_timeSinceTouched";
          break;
        case -10177:
          result = "kDYFEMTLVisibleFunctionTable_allocationID";
          break;
        case -10176:
          result = "kDYFEMTLIntersectionFunctionTable_allocationID";
          break;
        case -10175:
          result = "kDYFEMTLIntersectionFunctionTable_uniqueIdentifier";
          break;
        case -10174:
          result = "kDYFEMTLVisibleFunctionTable_allocatedSize";
          break;
        case -10173:
          result = "kDYFEMTLAccelerationStructure_timeSinceTouched";
          break;
        case -10172:
          result = "kDYFEMTLRenderPipelineState_timeSinceTouched";
          break;
        case -10171:
          result = "kDYFEMTLComputePipelineState_timeSinceTouched";
          break;
        case -10170:
          result = "kDYFEMTLAccelerationStructure_resourceIndex";
          break;
        case -10169:
          result = "kDYFEMTLAccelerationStructure_heapOffset";
          break;
        case -10168:
          result = "kDYFEBoundary_Frame";
          break;
        case -10167:
          result = "kDYFEMTLAccelerationStructure_gpuResourceID";
          break;
        case -10166:
          result = "kDYFEMTLIndirectCommandBuffer_gpuResourceID";
          break;
        case -10165:
          result = "kDYFEMTLRenderPipelineState_gpuResourceID";
          break;
        case -10164:
          result = "kDYFEMTLTexture_gpuResourceID";
          break;
        case -10163:
          result = "kDYFEMTLSamplerState_gpuResourceID";
          break;
        case -10162:
          result = "kDYFEMTLComputePipelineState_gpuResourceID";
          break;
        case -10161:
          result = "kDYFEMTLIntersectionFunctionTable_gpuResourceID";
          break;
        case -10160:
          result = "kDYFEMTLVisibleFunctionTable_gpuResourceID";
          break;
        case -10159:
          result = "kDYFEMTLAccelerationStructure_state";
          break;
        case -10158:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureState";
          break;
        case -10157:
          result = "kDYFEMTLFunction_setDescriptor_library";
          break;
        case -10156:
          result = "kDYFEMTLAccelerationStructure_children";
          break;
        case -10155:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureChildren";
          break;
        case -10154:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureDescriptor";
          break;
        case -10153:
          result = "kDYFEMTLVisibleFunctionTable_gpuAddress";
          break;
        case -10152:
          result = "kDYFEMTLIntersectionFunctionTable_setBuffers";
          break;
        case -10151:
          result = "kDYFEMTLCaptureManager_sharedCaptureManager";
          break;
        case -10150:
          result = "kDYFEMTLDepthStencilState_uniqueIdentifier";
          break;
        case -10149:
          result = "kDYFEMTLDepthStencilState_gpuResourceID";
          break;
        case -10148:
          result = "kDYFEMTLTensor_allocatedSize";
          break;
        case -10147:
          result = "kDYFEMTLTensor_allocationID";
          break;
        case -10146:
          result = "kDYFEMTLTensor_gpuResourceID";
          break;
        case -10145:
          result = "kDYFEMTLTensor_resourceIndex";
          break;
        case -10144:
          result = "kDYFEMTLTensor_uniqueIdentifier";
          break;
        case -10143:
          result = "kDYFEMTLTensor_timeSinceTouched";
          break;
        case -10142:
          result = "kDYFEMTLTensor_harvested_replaceSliceOrigin_sliceDimensions_withBytes_strides";
          break;
        case -10141:
          result = "kDYFEMTLFunctionHandle_resourceIndex";
          break;
        case -10140:
          result = "kDYFEMTLFunctionHandle_gpuResourceID";
          break;
        case -10139:
          result = "kDYFEMTL4ComputeCommandEncoder_setAccelerationStructureDescriptor";
          break;
        case -10138:
          result = "kDYFEMTL4ComputeCommandEncoder_setAccelerationStructureState";
          break;
        default:
          switch(a1)
          {
            case -7168:
              result = "kDYFECAMetalLayer_setPresentsWithTransaction";
              break;
            case -7167:
              result = "kDYFECAMetalDrawable_texture";
              break;
            case -7166:
              result = "kDYFECAMetalLayer_nextDrawable";
              break;
            case -7165:
              result = "kDYFECAMetalLayer_setPixelFormat";
              break;
            case -7164:
              result = "kDYFECAMetalLayer_setDrawableSize";
              break;
            case -7163:
              result = "kDYFECAMetalLayer_setDevice";
              break;
            case -7162:
              result = "kDYFECAMetalLayer_setBounds_contentsScale";
              break;
            case -7161:
              result = "kDYFECAMetalDrawable_dealloc";
              break;
            case -7160:
              result = "kDYFECAMetalLayer_setFramebufferOnly";
              break;
            case -7159:
              result = "kDYFECAMetalLayer_setBounds_contentsScale_windowBounds_windowProperties";
              break;
            case -7158:
              result = "kDYFECAMetalDrawable_present";
              break;
            case -7157:
              result = "kDYFECAMetalDrawable_presentAtTime";
              break;
            case -7156:
              result = "kDYFECAMetalDrawable_presentAfterMinimumDuration";
              break;
            case -7155:
              result = "kDYFEUIScreen_setInterfaceOrientation";
              break;
            case -7154:
              result = "kDYFECAMetalLayer_setWantsExtendedDynamicRangeContent";
              break;
            case -7153:
              result = "kDYFECAMetalLayer_setColorspace";
              break;
            default:
              if (a1 != -12543)
              {
                goto LABEL_76;
              }

              result = "kDYFEMTLIOCommandQueue_continueCommandBuffer_retainReferences";
              break;
          }

          break;
      }
    }
  }

  else
  {
    v1 = a1 + 18432;
    result = "kDYFEMTLBlitCommandEncoder_setLabel";
    switch(v1)
    {
      case 0:
        result = "kDYFEMTLDevice_newSpatialScalerWithDescriptor";
        break;
      case 1:
        result = "kDYFEMTLDevice_newTemporalScalerWithDescriptor";
        break;
      case 2:
        result = "kDYFEMTLFXTemporalScaler_executionMode";
        break;
      case 3:
        result = "kDYFEMTLDevice_newFrameInterpolatorWithDescriptor";
        break;
      case 4:
        result = "kDYFEMTLDevice_newTemporalDenoisedScalerWithDescriptor";
        break;
      case 5:
        result = "kDYFEMTLDevice_newMTL4SpatialScalerWithDescriptor_compiler";
        break;
      case 6:
        result = "kDYFEMTLDevice_newMTL4TemporalScalerWithDescriptor_compiler";
        break;
      case 7:
        result = "kDYFEMTLDevice_newMTL4FrameInterpolatorWithDescriptor_compiler";
        break;
      case 8:
        result = "kDYFEMTLDevice_newMTL4TemporalDenoisedScalerWithDescriptor_compiler";
        break;
      case 9:
        result = "kDYFEMTL4FXTemporalScaler_executionMode";
        break;
      case 10:
        result = "kDYFEMTLFXTemporalDenoisedScaler_executionMode";
        break;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 250:
      case 251:
      case 252:
      case 253:
      case 254:
      case 255:
      case 256:
      case 257:
      case 258:
      case 259:
      case 260:
      case 261:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 267:
      case 268:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 276:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 401:
      case 402:
      case 403:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 601:
      case 602:
      case 603:
      case 604:
      case 605:
      case 606:
      case 607:
      case 608:
      case 609:
      case 610:
      case 611:
      case 612:
      case 613:
      case 614:
      case 615:
      case 616:
      case 617:
      case 618:
      case 619:
      case 620:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 664:
      case 665:
      case 666:
      case 667:
      case 668:
      case 669:
      case 670:
      case 671:
      case 672:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 681:
      case 682:
      case 683:
      case 684:
      case 685:
      case 686:
      case 687:
      case 688:
      case 689:
      case 690:
      case 691:
      case 692:
      case 693:
      case 694:
      case 695:
      case 696:
      case 697:
      case 698:
      case 699:
      case 700:
      case 701:
      case 702:
      case 703:
      case 704:
      case 705:
      case 706:
      case 707:
      case 708:
      case 709:
      case 710:
      case 711:
      case 712:
      case 713:
      case 714:
      case 715:
      case 716:
      case 717:
      case 718:
      case 719:
      case 720:
      case 721:
      case 722:
      case 723:
      case 724:
      case 725:
      case 726:
      case 727:
      case 728:
      case 729:
      case 730:
      case 731:
      case 732:
      case 733:
      case 734:
      case 735:
      case 736:
      case 737:
      case 738:
      case 739:
      case 740:
      case 741:
      case 742:
      case 743:
      case 744:
      case 745:
      case 746:
      case 747:
      case 748:
      case 749:
      case 750:
      case 751:
      case 752:
      case 753:
      case 754:
      case 755:
      case 756:
      case 757:
      case 758:
      case 759:
      case 760:
      case 761:
      case 762:
      case 763:
      case 764:
      case 765:
      case 766:
      case 767:
      case 768:
      case 769:
      case 770:
      case 771:
      case 772:
      case 773:
      case 774:
      case 775:
      case 776:
      case 777:
      case 778:
      case 779:
      case 780:
      case 781:
      case 782:
      case 783:
      case 784:
      case 785:
      case 786:
      case 787:
      case 788:
      case 789:
      case 790:
      case 791:
      case 792:
      case 793:
      case 794:
      case 795:
      case 796:
      case 797:
      case 798:
      case 799:
      case 800:
      case 801:
      case 802:
      case 803:
      case 804:
      case 805:
      case 806:
      case 807:
      case 808:
      case 809:
      case 810:
      case 811:
      case 812:
      case 813:
      case 814:
      case 815:
      case 816:
      case 817:
      case 818:
      case 819:
      case 820:
      case 821:
      case 822:
      case 823:
      case 824:
      case 825:
      case 826:
      case 827:
      case 828:
      case 829:
      case 830:
      case 831:
      case 832:
      case 833:
      case 834:
      case 835:
      case 836:
      case 837:
      case 838:
      case 839:
      case 840:
      case 841:
      case 842:
      case 843:
      case 844:
      case 845:
      case 846:
      case 847:
      case 848:
      case 849:
      case 850:
      case 851:
      case 852:
      case 853:
      case 854:
      case 855:
      case 856:
      case 857:
      case 858:
      case 859:
      case 860:
      case 861:
      case 862:
      case 863:
      case 864:
      case 865:
      case 866:
      case 867:
      case 868:
      case 869:
      case 870:
      case 871:
      case 872:
      case 873:
      case 874:
      case 875:
      case 876:
      case 877:
      case 878:
      case 879:
      case 880:
      case 881:
      case 882:
      case 883:
      case 884:
      case 885:
      case 886:
      case 887:
      case 888:
      case 889:
      case 890:
      case 891:
      case 892:
      case 893:
      case 894:
      case 895:
      case 896:
      case 897:
      case 898:
      case 899:
      case 900:
      case 901:
      case 902:
      case 903:
      case 904:
      case 905:
      case 906:
      case 907:
      case 908:
      case 909:
      case 910:
      case 911:
      case 912:
      case 913:
      case 914:
      case 915:
      case 916:
      case 917:
      case 918:
      case 919:
      case 920:
      case 921:
      case 922:
      case 923:
      case 924:
      case 925:
      case 926:
      case 927:
      case 928:
      case 929:
      case 930:
      case 931:
      case 932:
      case 933:
      case 934:
      case 935:
      case 936:
      case 937:
      case 938:
      case 939:
      case 940:
      case 941:
      case 942:
      case 943:
      case 944:
      case 945:
      case 946:
      case 947:
      case 948:
      case 949:
      case 950:
      case 951:
      case 952:
      case 953:
      case 954:
      case 955:
      case 956:
      case 957:
      case 958:
      case 959:
      case 960:
      case 961:
      case 962:
      case 963:
      case 964:
      case 965:
      case 966:
      case 967:
      case 968:
      case 969:
      case 970:
      case 971:
      case 972:
      case 973:
      case 974:
      case 975:
      case 976:
      case 977:
      case 978:
      case 979:
      case 980:
      case 981:
      case 982:
      case 983:
      case 984:
      case 985:
      case 986:
      case 987:
      case 988:
      case 989:
      case 990:
      case 991:
      case 992:
      case 993:
      case 994:
      case 995:
      case 996:
      case 997:
      case 998:
      case 999:
      case 1000:
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1010:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1020:
      case 1021:
      case 1022:
      case 1023:
      case 1024:
      case 1025:
      case 1026:
      case 1027:
      case 1028:
      case 1029:
      case 1030:
      case 1031:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
      case 1049:
      case 1050:
      case 1051:
      case 1052:
      case 1053:
      case 1054:
      case 1055:
      case 1056:
      case 1057:
      case 1058:
      case 1059:
      case 1060:
      case 1061:
      case 1062:
      case 1063:
      case 1064:
      case 1065:
      case 1066:
      case 1067:
      case 1068:
      case 1069:
      case 1070:
      case 1071:
      case 1072:
      case 1073:
      case 1074:
      case 1075:
      case 1076:
      case 1077:
      case 1078:
      case 1079:
      case 1080:
      case 1081:
      case 1082:
      case 1083:
      case 1084:
      case 1085:
      case 1086:
      case 1087:
      case 1088:
      case 1089:
      case 1090:
      case 1091:
      case 1092:
      case 1093:
      case 1094:
      case 1095:
      case 1096:
      case 1097:
      case 1098:
      case 1099:
      case 1100:
      case 1101:
      case 1102:
      case 1103:
      case 1104:
      case 1105:
      case 1106:
      case 1107:
      case 1108:
      case 1109:
      case 1110:
      case 1111:
      case 1112:
      case 1113:
      case 1114:
      case 1115:
      case 1116:
      case 1117:
      case 1118:
      case 1119:
      case 1120:
      case 1121:
      case 1122:
      case 1123:
      case 1124:
      case 1125:
      case 1126:
      case 1127:
      case 1128:
      case 1129:
      case 1130:
      case 1131:
      case 1132:
      case 1133:
      case 1134:
      case 1135:
      case 1136:
      case 1137:
      case 1138:
      case 1139:
      case 1140:
      case 1141:
      case 1142:
      case 1143:
      case 1144:
      case 1145:
      case 1146:
      case 1147:
      case 1148:
      case 1149:
      case 1150:
      case 1151:
      case 1152:
      case 1153:
      case 1154:
      case 1155:
      case 1156:
      case 1157:
      case 1158:
      case 1159:
      case 1160:
      case 1161:
      case 1162:
      case 1163:
      case 1164:
      case 1165:
      case 1166:
      case 1167:
      case 1168:
      case 1169:
      case 1170:
      case 1171:
      case 1172:
      case 1173:
      case 1174:
      case 1175:
      case 1176:
      case 1177:
      case 1178:
      case 1179:
      case 1180:
      case 1181:
      case 1182:
      case 1183:
      case 1184:
      case 1185:
      case 1186:
      case 1187:
      case 1188:
      case 1189:
      case 1190:
      case 1191:
      case 1192:
      case 1193:
      case 1194:
      case 1195:
      case 1196:
      case 1197:
      case 1198:
      case 1199:
      case 1200:
      case 1201:
      case 1202:
      case 1203:
      case 1204:
      case 1205:
      case 1206:
      case 1207:
      case 1208:
      case 1209:
      case 1210:
      case 1211:
      case 1212:
      case 1213:
      case 1214:
      case 1215:
      case 1216:
      case 1217:
      case 1218:
      case 1219:
      case 1220:
      case 1221:
      case 1222:
      case 1223:
      case 1224:
      case 1225:
      case 1226:
      case 1227:
      case 1228:
      case 1229:
      case 1230:
      case 1231:
      case 1232:
      case 1233:
      case 1234:
      case 1235:
      case 1236:
      case 1237:
      case 1238:
      case 1239:
      case 1240:
      case 1241:
      case 1242:
      case 1243:
      case 1244:
      case 1245:
      case 1246:
      case 1247:
      case 1248:
      case 1249:
      case 1250:
      case 1251:
      case 1252:
      case 1253:
      case 1254:
      case 1255:
      case 1256:
      case 1257:
      case 1258:
      case 1259:
      case 1260:
      case 1261:
      case 1262:
      case 1263:
      case 1264:
      case 1265:
      case 1266:
      case 1267:
      case 1268:
      case 1269:
      case 1270:
      case 1271:
      case 1272:
      case 1273:
      case 1274:
      case 1275:
      case 1276:
      case 1277:
      case 1278:
      case 1279:
      case 1280:
      case 1281:
      case 1282:
      case 1283:
      case 1284:
      case 1285:
      case 1286:
      case 1287:
      case 1288:
      case 1289:
      case 1290:
      case 1291:
      case 1292:
      case 1293:
      case 1294:
      case 1295:
      case 1296:
      case 1297:
      case 1298:
      case 1299:
      case 1300:
      case 1301:
      case 1302:
      case 1303:
      case 1304:
      case 1305:
      case 1306:
      case 1307:
      case 1308:
      case 1309:
      case 1310:
      case 1311:
      case 1312:
      case 1313:
      case 1314:
      case 1315:
      case 1316:
      case 1317:
      case 1318:
      case 1319:
      case 1320:
      case 1321:
      case 1322:
      case 1323:
      case 1324:
      case 1325:
      case 1326:
      case 1327:
      case 1328:
      case 1329:
      case 1330:
      case 1331:
      case 1332:
      case 1333:
      case 1334:
      case 1335:
      case 1336:
      case 1337:
      case 1338:
      case 1339:
      case 1340:
      case 1341:
      case 1342:
      case 1343:
      case 1344:
      case 1345:
      case 1346:
      case 1347:
      case 1348:
      case 1349:
      case 1350:
      case 1351:
      case 1352:
      case 1353:
      case 1354:
      case 1355:
      case 1356:
      case 1357:
      case 1358:
      case 1359:
      case 1360:
      case 1361:
      case 1362:
      case 1363:
      case 1364:
      case 1365:
      case 1366:
      case 1367:
      case 1368:
      case 1369:
      case 1370:
      case 1371:
      case 1372:
      case 1373:
      case 1374:
      case 1375:
      case 1376:
      case 1377:
      case 1378:
      case 1379:
      case 1380:
      case 1381:
      case 1382:
      case 1383:
      case 1384:
      case 1385:
      case 1386:
      case 1387:
      case 1388:
      case 1389:
      case 1390:
      case 1391:
      case 1392:
      case 1393:
      case 1394:
      case 1395:
      case 1396:
      case 1397:
      case 1398:
      case 1399:
      case 1400:
      case 1401:
      case 1402:
      case 1403:
      case 1404:
      case 1405:
      case 1406:
      case 1407:
      case 1408:
      case 1409:
      case 1410:
      case 1411:
      case 1412:
      case 1413:
      case 1414:
      case 1415:
      case 1416:
      case 1417:
      case 1418:
      case 1419:
      case 1420:
      case 1421:
      case 1422:
      case 1423:
      case 1424:
      case 1425:
      case 1426:
      case 1427:
      case 1428:
      case 1429:
      case 1430:
      case 1431:
      case 1432:
      case 1433:
      case 1434:
      case 1435:
      case 1436:
      case 1437:
      case 1438:
      case 1439:
      case 1440:
      case 1441:
      case 1442:
      case 1443:
      case 1444:
      case 1445:
      case 1446:
      case 1447:
      case 1448:
      case 1449:
      case 1450:
      case 1451:
      case 1452:
      case 1453:
      case 1454:
      case 1455:
      case 1456:
      case 1457:
      case 1458:
      case 1459:
      case 1460:
      case 1461:
      case 1462:
      case 1463:
      case 1464:
      case 1465:
      case 1466:
      case 1467:
      case 1468:
      case 1469:
      case 1470:
      case 1471:
      case 1472:
      case 1473:
      case 1474:
      case 1475:
      case 1476:
      case 1477:
      case 1478:
      case 1479:
      case 1480:
      case 1481:
      case 1482:
      case 1483:
      case 1484:
      case 1485:
      case 1486:
      case 1487:
      case 1488:
      case 1489:
      case 1490:
      case 1491:
      case 1492:
      case 1493:
      case 1494:
      case 1495:
      case 1496:
      case 1497:
      case 1498:
      case 1499:
      case 1500:
      case 1501:
      case 1502:
      case 1503:
      case 1504:
      case 1505:
      case 1506:
      case 1507:
      case 1508:
      case 1509:
      case 1510:
      case 1511:
      case 1512:
      case 1513:
      case 1514:
      case 1515:
      case 1516:
      case 1517:
      case 1518:
      case 1519:
      case 1520:
      case 1521:
      case 1522:
      case 1523:
      case 1524:
      case 1525:
      case 1526:
      case 1527:
      case 1528:
      case 1529:
      case 1530:
      case 1531:
      case 1532:
      case 1533:
      case 1534:
      case 1535:
      case 1536:
      case 1537:
      case 1538:
      case 1539:
      case 1540:
      case 1541:
      case 1542:
      case 1543:
      case 1544:
      case 1545:
      case 1546:
      case 1547:
      case 1548:
      case 1549:
      case 1550:
      case 1551:
      case 1552:
      case 1553:
      case 1554:
      case 1555:
      case 1556:
      case 1557:
      case 1558:
      case 1559:
      case 1560:
      case 1561:
      case 1562:
      case 1563:
      case 1564:
      case 1565:
      case 1566:
      case 1567:
      case 1568:
      case 1569:
      case 1570:
      case 1571:
      case 1572:
      case 1573:
      case 1574:
      case 1575:
      case 1576:
      case 1577:
      case 1578:
      case 1579:
      case 1580:
      case 1581:
      case 1582:
      case 1583:
      case 1584:
      case 1585:
      case 1586:
      case 1587:
      case 1588:
      case 1589:
      case 1590:
      case 1591:
      case 1592:
      case 1593:
      case 1594:
      case 1595:
      case 1596:
      case 1597:
      case 1598:
      case 1599:
      case 1600:
      case 1601:
      case 1602:
      case 1603:
      case 1604:
      case 1605:
      case 1606:
      case 1607:
      case 1608:
      case 1609:
      case 1610:
      case 1611:
      case 1612:
      case 1613:
      case 1614:
      case 1615:
      case 1616:
      case 1617:
      case 1618:
      case 1619:
      case 1620:
      case 1621:
      case 1622:
      case 1623:
      case 1624:
      case 1625:
      case 1626:
      case 1627:
      case 1628:
      case 1629:
      case 1630:
      case 1631:
      case 1632:
      case 1633:
      case 1634:
      case 1635:
      case 1636:
      case 1637:
      case 1638:
      case 1639:
      case 1640:
      case 1641:
      case 1642:
      case 1643:
      case 1644:
      case 1645:
      case 1646:
      case 1647:
      case 1648:
      case 1649:
      case 1650:
      case 1651:
      case 1652:
      case 1653:
      case 1654:
      case 1655:
      case 1656:
      case 1657:
      case 1658:
      case 1659:
      case 1660:
      case 1661:
      case 1662:
      case 1663:
      case 1664:
      case 1665:
      case 1666:
      case 1667:
      case 1668:
      case 1669:
      case 1670:
      case 1671:
      case 1672:
      case 1673:
      case 1674:
      case 1675:
      case 1676:
      case 1677:
      case 1678:
      case 1679:
      case 1680:
      case 1681:
      case 1682:
      case 1683:
      case 1684:
      case 1685:
      case 1686:
      case 1687:
      case 1688:
      case 1689:
      case 1690:
      case 1691:
      case 1692:
      case 1693:
      case 1694:
      case 1695:
      case 1696:
      case 1697:
      case 1698:
      case 1699:
      case 1700:
      case 1701:
      case 1702:
      case 1703:
      case 1704:
      case 1705:
      case 1706:
      case 1707:
      case 1708:
      case 1709:
      case 1710:
      case 1711:
      case 1712:
      case 1713:
      case 1714:
      case 1715:
      case 1716:
      case 1717:
      case 1718:
      case 1719:
      case 1720:
      case 1721:
      case 1722:
      case 1723:
      case 1724:
      case 1725:
      case 1726:
      case 1727:
      case 1728:
      case 1729:
      case 1730:
      case 1731:
      case 1732:
      case 1733:
      case 1734:
      case 1735:
      case 1736:
      case 1737:
      case 1738:
      case 1739:
      case 1740:
      case 1741:
      case 1742:
      case 1743:
      case 1744:
      case 1745:
      case 1746:
      case 1747:
      case 1748:
      case 1749:
      case 1750:
      case 1751:
      case 1752:
      case 1753:
      case 1754:
      case 1755:
      case 1756:
      case 1757:
      case 1758:
      case 1759:
      case 1760:
      case 1761:
      case 1762:
      case 1763:
      case 1764:
      case 1765:
      case 1766:
      case 1767:
      case 1768:
      case 1769:
      case 1770:
      case 1771:
      case 1772:
      case 1773:
      case 1774:
      case 1775:
      case 1776:
      case 1777:
      case 1778:
      case 1779:
      case 1780:
      case 1781:
      case 1782:
      case 1783:
      case 1784:
      case 1785:
      case 1786:
      case 1787:
      case 1788:
      case 1789:
      case 1790:
      case 1791:
      case 1792:
      case 1793:
      case 1794:
      case 1795:
      case 1796:
      case 1797:
      case 1798:
      case 1799:
      case 1800:
      case 1801:
      case 1802:
      case 1803:
      case 1804:
      case 1805:
      case 1806:
      case 1807:
      case 1808:
      case 1809:
      case 1810:
      case 1811:
      case 1812:
      case 1813:
      case 1814:
      case 1815:
      case 1816:
      case 1817:
      case 1818:
      case 1819:
      case 1820:
      case 1821:
      case 1822:
      case 1823:
      case 1824:
      case 1825:
      case 1826:
      case 1827:
      case 1828:
      case 1829:
      case 1830:
      case 1831:
      case 1832:
      case 1833:
      case 1834:
      case 1835:
      case 1836:
      case 1837:
      case 1838:
      case 1839:
      case 1840:
      case 1841:
      case 1842:
      case 1843:
      case 1844:
      case 1845:
      case 1846:
      case 1847:
      case 1848:
      case 1849:
      case 1850:
      case 1851:
      case 1852:
      case 1853:
      case 1854:
      case 1855:
      case 1856:
      case 1857:
      case 1858:
      case 1859:
      case 1860:
      case 1861:
      case 1862:
      case 1863:
      case 1864:
      case 1865:
      case 1866:
      case 1867:
      case 1868:
      case 1869:
      case 1870:
      case 1871:
      case 1872:
      case 1873:
      case 1874:
      case 1875:
      case 1876:
      case 1877:
      case 1878:
      case 1879:
      case 1880:
      case 1881:
      case 1882:
      case 1883:
      case 1884:
      case 1885:
      case 1886:
      case 1887:
      case 1888:
      case 1889:
      case 1890:
      case 1891:
      case 1892:
      case 1893:
      case 1894:
      case 1895:
      case 1896:
      case 1897:
      case 1898:
      case 1899:
      case 1900:
      case 1901:
      case 1902:
      case 1903:
      case 1904:
      case 1905:
      case 1906:
      case 1907:
      case 1908:
      case 1909:
      case 1910:
      case 1911:
      case 1912:
      case 1913:
      case 1914:
      case 1915:
      case 1916:
      case 1917:
      case 1918:
      case 1919:
      case 1920:
      case 1921:
      case 1922:
      case 1923:
      case 1924:
      case 1925:
      case 1926:
      case 1927:
      case 1928:
      case 1929:
      case 1930:
      case 1931:
      case 1932:
      case 1933:
      case 1934:
      case 1935:
      case 1936:
      case 1937:
      case 1938:
      case 1939:
      case 1940:
      case 1941:
      case 1942:
      case 1943:
      case 1944:
      case 1945:
      case 1946:
      case 1947:
      case 1948:
      case 1949:
      case 1950:
      case 1951:
      case 1952:
      case 1953:
      case 1954:
      case 1955:
      case 1956:
      case 1957:
      case 1958:
      case 1959:
      case 1960:
      case 1961:
      case 1962:
      case 1963:
      case 1964:
      case 1965:
      case 1966:
      case 1967:
      case 1968:
      case 1969:
      case 1970:
      case 1971:
      case 1972:
      case 1973:
      case 1974:
      case 1975:
      case 1976:
      case 1977:
      case 1978:
      case 1979:
      case 1980:
      case 1981:
      case 1982:
      case 1983:
      case 1984:
      case 1985:
      case 1986:
      case 1987:
      case 1988:
      case 1989:
      case 1990:
      case 1991:
      case 1992:
      case 1993:
      case 1994:
      case 1995:
      case 1996:
      case 1997:
      case 1998:
      case 1999:
      case 2000:
      case 2001:
      case 2002:
      case 2003:
      case 2004:
      case 2005:
      case 2006:
      case 2007:
      case 2008:
      case 2009:
      case 2010:
      case 2011:
      case 2012:
      case 2013:
      case 2014:
      case 2015:
      case 2016:
      case 2017:
      case 2018:
      case 2019:
      case 2020:
      case 2021:
      case 2022:
      case 2023:
      case 2024:
      case 2025:
      case 2026:
      case 2027:
      case 2028:
      case 2029:
      case 2030:
      case 2031:
      case 2032:
      case 2033:
      case 2034:
      case 2035:
      case 2036:
      case 2037:
      case 2038:
      case 2039:
      case 2040:
      case 2041:
      case 2042:
      case 2043:
      case 2044:
      case 2045:
      case 2046:
      case 2047:
        goto LABEL_76;
      case 2048:
        return result;
      case 2049:
        result = "kDYFEMTLBlitCommandEncoder_dealloc";
        break;
      case 2050:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 2051:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 2052:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage";
        break;
      case 2053:
        result = "kDYFEMTLBlitCommandEncoder_generateMipmapsForTexture";
        break;
      case 2054:
        result = "kDYFEMTLBlitCommandEncoder_fillBuffer_range_value";
        break;
      case 2055:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size";
        break;
      case 2056:
        result = "kDYFEMTLBlitCommandEncoder_endEncoding";
        break;
      case 2057:
        result = "kDYFEMTLBlitCommandEncoder_insertDebugSignpost";
        break;
      case 2058:
        result = "kDYFEMTLBlitCommandEncoder_pushDebugGroup";
        break;
      case 2059:
        result = "kDYFEMTLBlitCommandEncoder_popDebugGroup";
        break;
      case 2060:
        result = "kDYFEMTLBuffer_setLabel";
        break;
      case 2061:
        result = "kDYFEMTLBuffer_setResponsibleProcess";
        break;
      case 2062:
        result = "kDYFEMTLBuffer_dealloc";
        break;
      case 2063:
        result = "kDYFEMTLBuffer_contents";
        break;
      case 2064:
        result = "kDYFEMTLBuffer_newTextureWithDescriptor_offset_bytesPerRow";
        break;
      case 2065:
        result = "kDYFEMTLBuffer_setPurgeableState";
        break;
      case 2066:
        result = "kDYFEMTLBuffer_isPurgeable";
        break;
      case 2067:
        result = "kDYFEMTLCommandBuffer_setLabel";
        break;
      case 2068:
        result = "kDYFEMTLCommandBuffer_setProfilingEnabled";
        break;
      case 2069:
        result = "kDYFEMTLCommandBuffer_dealloc";
        break;
      case 2070:
        result = "kDYFEMTLCommandBuffer_enqueue";
        break;
      case 2071:
        result = "kDYFEMTLCommandBuffer_commit";
        break;
      case 2072:
        result = "kDYFEMTLCommandBuffer_addScheduledHandler";
        break;
      case 2073:
        result = "kDYFEMTLCommandBuffer_presentDrawable";
        break;
      case 2074:
        result = "kDYFEMTLCommandBuffer_presentDrawable_atTime";
        break;
      case 2075:
        result = "kDYFEMTLCommandBuffer_waitUntilScheduled";
        break;
      case 2076:
        result = "kDYFEMTLCommandBuffer_addCompletedHandler";
        break;
      case 2077:
        result = "kDYFEMTLCommandBuffer_waitUntilCompleted";
        break;
      case 2078:
        result = "kDYFEMTLCommandBuffer_blitCommandEncoder";
        break;
      case 2079:
        result = "kDYFEMTLCommandBuffer_renderCommandEncoderWithDescriptor";
        break;
      case 2080:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoder";
        break;
      case 2081:
        result = "kDYFEMTLCommandBuffer_parallelRenderCommandEncoderWithDescriptor";
        break;
      case 2082:
        result = "kDYFEMTLCommandBuffer_debugCommandEncoder";
        break;
      case 2083:
        result = "kDYFEMTLCommandQueue_setLabel";
        break;
      case 2084:
        result = "kDYFEMTLCommandQueue_setBackgroundTrackingPID";
        break;
      case 2085:
        result = "kDYFEMTLCommandQueue_setSkipRender";
        break;
      case 2086:
        result = "kDYFEMTLCommandQueue_setExecutionEnabled";
        break;
      case 2087:
        result = "kDYFEMTLCommandQueue_setProfilingEnabled";
        break;
      case 2088:
        result = "kDYFEMTLCommandQueue_dealloc";
        break;
      case 2089:
        result = "kDYFEMTLCommandQueue_commandBuffer";
        break;
      case 2090:
        result = "kDYFEMTLCommandQueue_commandBufferWithUnretainedReferences";
        break;
      case 2091:
        result = "kDYFEMTLCommandQueue_insertDebugCaptureBoundary";
        break;
      case 2092:
        result = "kDYFEMTLCommandQueue_finish";
        break;
      case 2093:
        result = "kDYFEMTLComputeCommandEncoder_setLabel";
        break;
      case 2094:
        result = "kDYFEMTLComputeCommandEncoder_dealloc";
        break;
      case 2095:
        result = "kDYFEMTLComputeCommandEncoder_setComputePipelineState";
        break;
      case 2096:
        result = "kDYFEMTLComputeCommandEncoder_setBuffer_offset_atIndex";
        break;
      case 2097:
        result = "kDYFEMTLComputeCommandEncoder_setBuffers_offsets_withRange";
        break;
      case 2098:
        result = "kDYFEMTLComputeCommandEncoder_setTexture_atIndex";
        break;
      case 2099:
        result = "kDYFEMTLComputeCommandEncoder_setTextures_withRange";
        break;
      case 2100:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerState_atIndex";
        break;
      case 2101:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerStates_withRange";
        break;
      case 2102:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2103:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2104:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 2105:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 2106:
        result = "kDYFEMTLComputeCommandEncoder_executeBarrier";
        break;
      case 2107:
        result = "kDYFEMTLComputeCommandEncoder_endEncoding";
        break;
      case 2108:
        result = "kDYFEMTLComputeCommandEncoder_insertDebugSignpost";
        break;
      case 2109:
        result = "kDYFEMTLComputeCommandEncoder_pushDebugGroup";
        break;
      case 2110:
        result = "kDYFEMTLComputeCommandEncoder_popDebugGroup";
        break;
      case 2111:
        result = "kDYFEMTLComputePipelineState_dealloc";
        break;
      case 2112:
        result = "kDYFEMTLDepthStencilState_dealloc";
        break;
      case 2113:
        result = "kDYFEMTLDevice_setShaderDebugInfoCaching";
        break;
      case 2114:
        result = "kDYFEMTLDevice_setMetalAssertionsEnabled";
        break;
      case 2115:
        result = "kDYFEMTLDevice_dealloc";
        break;
      case 2116:
        result = "kDYFEMTLDevice_newCommandQueue";
        break;
      case 2117:
        result = "kDYFEMTLDevice_newCommandQueueWithMaxCommandBufferCount";
        break;
      case 2118:
        result = "kDYFEMTLDevice_newBufferWithLength_options";
        break;
      case 2119:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options";
        break;
      case 2120:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_deallocator";
        break;
      case 2121:
        result = "kDYFEMTLDevice_newDepthStencilStateWithDescriptor";
        break;
      case 2122:
        result = "kDYFEMTLDevice_newTextureWithDescriptor";
        break;
      case 2123:
        result = "kDYFEMTLDevice_newSamplerStateWithDescriptor";
        break;
      case 2124:
        result = "kDYFEMTLDevice_newDefaultLibrary";
        break;
      case 2125:
        result = "kDYFEMTLDevice_newLibraryWithFile_error";
        break;
      case 2126:
        result = "kDYFEMTLDevice_newLibraryWithData_error";
        break;
      case 2127:
        result = "kDYFEMTLDevice_newLibraryWithSource_options_error";
        break;
      case 2128:
        result = "kDYFEMTLDevice_newLibraryWithSource_options_completionHandler";
        break;
      case 2129:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_error";
        break;
      case 2130:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error";
        break;
      case 2131:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_completionHandler";
        break;
      case 2132:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler";
        break;
      case 2133:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_error";
        break;
      case 2134:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_options_reflection_error";
        break;
      case 2135:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_completionHandler";
        break;
      case 2136:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_options_completionHandler";
        break;
      case 2137:
        result = "kDYFEMTLDevice_unmapShaderSampleBuffer";
        break;
      case 2138:
        result = "kDYFEMTLDevice_newTextureWithDescriptor_iosurface_plane";
        break;
      case 2139:
        result = "kDYFEMTLFunction_dealloc";
        break;
      case 2140:
        result = "kDYFEMTLLibrary_setLabel";
        break;
      case 2141:
        result = "kDYFEMTLLibrary_dealloc";
        break;
      case 2142:
        result = "kDYFEMTLLibrary_newFunctionWithName";
        break;
      case 2143:
        result = "kDYFEMTLParallelRenderCommandEncoder_setSeparateCommits";
        break;
      case 2144:
        result = "kDYFEMTLParallelRenderCommandEncoder_setLabel";
        break;
      case 2145:
        result = "kDYFEMTLParallelRenderCommandEncoder_dealloc";
        break;
      case 2146:
        result = "kDYFEMTLParallelRenderCommandEncoder_renderCommandEncoder";
        break;
      case 2147:
        result = "kDYFEMTLParallelRenderCommandEncoder_endEncoding";
        break;
      case 2148:
        result = "kDYFEMTLParallelRenderCommandEncoder_insertDebugSignpost";
        break;
      case 2149:
        result = "kDYFEMTLParallelRenderCommandEncoder_pushDebugGroup";
        break;
      case 2150:
        result = "kDYFEMTLParallelRenderCommandEncoder_popDebugGroup";
        break;
      case 2151:
        result = "kDYFEMTLRenderCommandEncoder_setLabel";
        break;
      case 2152:
        result = "kDYFEMTLRenderCommandEncoder_dealloc";
        break;
      case 2153:
        result = "kDYFEMTLRenderCommandEncoder_setRenderPipelineState";
        break;
      case 2154:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffer_offset_atIndex";
        break;
      case 2155:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffers_offsets_withRange";
        break;
      case 2156:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTexture_atIndex";
        break;
      case 2157:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTextures_withRange";
        break;
      case 2158:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_atIndex";
        break;
      case 2159:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerStates_withRange";
        break;
      case 2160:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2161:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2162:
        result = "kDYFEMTLRenderCommandEncoder_setViewport";
        break;
      case 2163:
        result = "kDYFEMTLRenderCommandEncoder_setFrontFacingWinding";
        break;
      case 2164:
        result = "kDYFEMTLRenderCommandEncoder_setCullMode";
        break;
      case 2165:
        result = "kDYFEMTLRenderCommandEncoder_setDepthClipMode";
        break;
      case 2166:
        result = "kDYFEMTLRenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 2167:
        result = "kDYFEMTLRenderCommandEncoder_setScissorRect";
        break;
      case 2168:
        result = "kDYFEMTLRenderCommandEncoder_setTriangleFillMode";
        break;
      case 2169:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBuffer_offset_atIndex";
        break;
      case 2170:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBuffers_offsets_withRange";
        break;
      case 2171:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_atIndex";
        break;
      case 2172:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTextures_withRange";
        break;
      case 2173:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_atIndex";
        break;
      case 2174:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerStates_withRange";
        break;
      case 2175:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2176:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2177:
        result = "kDYFEMTLRenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 2178:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStencilState";
        break;
      case 2179:
        result = "kDYFEMTLRenderCommandEncoder_setStencilReferenceValue";
        break;
      case 2180:
        result = "kDYFEMTLRenderCommandEncoder_setVisibilityResultMode_offset";
        break;
      case 2181:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount";
        break;
      case 2182:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount";
        break;
      case 2183:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount";
        break;
      case 2184:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset";
        break;
      case 2185:
        result = "kDYFEMTLRenderCommandEncoder_setLineWidth";
        break;
      case 2186:
        result = "kDYFEMTLRenderCommandEncoder_endEncoding";
        break;
      case 2187:
        result = "kDYFEMTLRenderCommandEncoder_insertDebugSignpost";
        break;
      case 2188:
        result = "kDYFEMTLRenderCommandEncoder_pushDebugGroup";
        break;
      case 2189:
        result = "kDYFEMTLRenderCommandEncoder_popDebugGroup";
        break;
      case 2190:
        result = "kDYFEMTLRenderPipelineState_dealloc";
        break;
      case 2191:
        result = "kDYFEMTLSamplerState_dealloc";
        break;
      case 2192:
        result = "kDYFEMTLTexture_setLabel";
        break;
      case 2193:
        result = "kDYFEMTLTexture_setResponsibleProcess";
        break;
      case 2194:
        result = "kDYFEMTLTexture_dealloc";
        break;
      case 2195:
        result = "kDYFEMTLTexture_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice";
        break;
      case 2196:
        result = "kDYFEMTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage";
        break;
      case 2197:
        result = "kDYFEMTLTexture_getBytes_bytesPerRow_fromRegion_mipmapLevel";
        break;
      case 2198:
        result = "kDYFEMTLTexture_replaceRegion_mipmapLevel_withBytes_bytesPerRow";
        break;
      case 2199:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat";
        break;
      case 2200:
        result = "kDYFEMTLTexture_setPurgeableState";
        break;
      case 2201:
        result = "kDYFEMTLTexture_isPurgeable";
        break;
      case 2202:
        result = "kDYFEMTLBlitCommandEncoder_flushResource";
        break;
      case 2203:
        result = "kDYFEMTLBlitCommandEncoder_flushTexture_slice_mipmapLevel";
        break;
      case 2204:
        result = "kDYFEMTLBuffer_invalidateRange";
        break;
      case 2205:
        result = "kDYFEMTLComputeCommandEncoder_setBytes_length_atIndex";
        break;
      case 2206:
        result = "kDYFEMTLComputeCommandEncoder_setBufferOffset_atIndex";
        break;
      case 2207:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBytes_length_atIndex";
        break;
      case 2208:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBufferOffset_atIndex";
        break;
      case 2209:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBytes_length_atIndex";
        break;
      case 2210:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBufferOffset_atIndex";
        break;
      case 2211:
        result = "kDYFEMTLTexture_invalidateRegion";
        break;
      case 2212:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup";
        break;
      case 2213:
        result = "kDYFEMTLRenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 2214:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 2215:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance";
        break;
      case 2216:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_indirectBuffer_indirectBufferOffset";
        break;
      case 2217:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 2218:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex";
        break;
      case 2219:
        result = "kDYFEMTLBlitCommandEncoder_synchronizeResource";
        break;
      case 2220:
        result = "kDYFEMTLBlitCommandEncoder_synchronizeTexture_slice_level";
        break;
      case 2221:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 2222:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 2223:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options";
        break;
      case 2224:
        result = "kDYFEMTLBuffer_didModifyRange";
        break;
      case 2225:
        result = "kDYFEMTLComputeCommandEncoder_setTexture_baseLevel_atIndex";
        break;
      case 2226:
        result = "kDYFEMTLDevice_supportsFeatureSet";
        break;
      case 2227:
        result = "kDYFEMTLDevice_supportsSampleCount";
        break;
      case 2228:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTexture_baseLevel_atIndex";
        break;
      case 2229:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_baseLevel_atIndex";
        break;
      case 2230:
        result = "kDYFEMTLCommandBuffer_commitAndHold";
        break;
      case 2231:
        result = "kDYFEMTLRenderCommandEncoder_textureBarrier";
        break;
      case 2232:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_error";
        break;
      case 2233:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error";
        break;
      case 2234:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_completionHandler";
        break;
      case 2235:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler";
        break;
      case 2236:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices";
        break;
      case 2237:
        result = "kDYFEMTLCommandBuffer_fragmentRenderCommandEncoderWithDescriptor";
        break;
      case 2238:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setLabel";
        break;
      case 2239:
        result = "kDYFEMTLFragmentRenderCommandEncoder_dealloc";
        break;
      case 2240:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setRenderPipelineState";
        break;
      case 2241:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 2242:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setScissorRect";
        break;
      case 2243:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBytes_length_atIndex";
        break;
      case 2244:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBuffer_offset_atIndex";
        break;
      case 2245:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBufferOffset_atIndex";
        break;
      case 2246:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBuffers_offsets_withRange";
        break;
      case 2247:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_atIndex";
        break;
      case 2248:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTextures_withRange";
        break;
      case 2249:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_baseLevel_atIndex";
        break;
      case 2250:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex";
        break;
      case 2251:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerState_atIndex";
        break;
      case 2252:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerStates_withRange";
        break;
      case 2253:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2254:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2255:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 2256:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStencilState";
        break;
      case 2257:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilReferenceValue";
        break;
      case 2258:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 2259:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_triangleIndices_triangleCount";
        break;
      case 2260:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_vertexVaryings_varyingCountPerVertex_triangleIndices_triangleCount";
        break;
      case 2261:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_vertexVaryings_varyingCountPerVertex";
        break;
      case 2262:
        result = "kDYFEMTLFragmentRenderCommandEncoder_endEncoding";
        break;
      case 2263:
        result = "kDYFEMTLFragmentRenderCommandEncoder_insertDebugSignpost";
        break;
      case 2264:
        result = "kDYFEMTLFragmentRenderCommandEncoder_pushDebugGroup";
        break;
      case 2265:
        result = "kDYFEMTLFragmentRenderCommandEncoder_popDebugGroup";
        break;
      case 2266:
        result = "kDYFEMTLDevice_supportsTextureSampleCount";
        break;
      case 2267:
        result = "kDYFEMTLDevice_newCommandQueueWithDescriptor";
        break;
      case 2268:
        result = "kDYFEMTLCommandBuffer_setListIndex";
        break;
      case 2269:
        result = "kDYFEMTLDevice_newBufferWithIOSurface";
        break;
      case 2270:
        result = "kDYFEMTLParallelRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 2271:
        result = "kDYFEMTLParallelRenderCommandEncoder_setDepthStoreAction";
        break;
      case 2272:
        result = "kDYFEMTLParallelRenderCommandEncoder_setStencilStoreAction";
        break;
      case 2273:
        result = "kDYFEMTLRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 2274:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStoreAction";
        break;
      case 2275:
        result = "kDYFEMTLRenderCommandEncoder_setStencilStoreAction";
        break;
      case 2276:
        result = "kDYFEMTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_atIndex";
        break;
      case 2277:
        result = "kDYFEMTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level";
        break;
      case 2278:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 2279:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStoreAction";
        break;
      case 2280:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilStoreAction";
        break;
      case 2281:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithParallelExecution";
        break;
      case 2282:
        result = "kDYFEMTLComputeCommandEncoder_dispatchBarrier";
        break;
      case 2283:
        result = "kDYFEMTLComputeCommandEncoder_setImageblockWidth_height";
        break;
      case 2284:
        result = "kDYFEMTLRenderCommandEncoder_setTessellationFactorBuffer_offset_instanceStride";
        break;
      case 2285:
        result = "kDYFEMTLRenderCommandEncoder_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2286:
        result = "kDYFEMTLRenderCommandEncoder_drawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 2287:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2288:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 2289:
        result = "kDYFEMTLRenderCommandEncoder_setTileBytes_length_atIndex";
        break;
      case 2290:
        result = "kDYFEMTLRenderCommandEncoder_setTileBuffer_offset_atIndex";
        break;
      case 2291:
        result = "kDYFEMTLRenderCommandEncoder_setTileBufferOffset_atIndex";
        break;
      case 2292:
        result = "kDYFEMTLRenderCommandEncoder_setTileTexture_atIndex";
        break;
      case 2293:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerState_atIndex";
        break;
      case 2294:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2295:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile";
        break;
      case 2296:
        result = "kDYFEMTLFence_setLabel";
        break;
      case 2297:
        result = "kDYFEMTLFunction_functionConstantIndexByName_type";
        break;
      case 2298:
        result = "kDYFEMTLCommandQueue_setIsOpenGLQueue";
        break;
      case 2299:
        result = "kDYFEMTLCommandBuffer_presentDrawable_afterMinimumDuration";
        break;
      case 2300:
        result = "kDYFEMTLRenderCommandEncoder_setTessellationFactorScale";
        break;
      case 2301:
        result = "kDYFEMTLBlitCommandEncoder_waitForFence";
        break;
      case 2302:
        result = "kDYFEMTLComputeCommandEncoder_updateFence";
        break;
      case 2303:
        result = "kDYFEMTLComputeCommandEncoder_waitForFence";
        break;
      case 2304:
        result = "kDYFEMTLDevice_newFence";
        break;
      case 2305:
        result = "kDYFEMTLFence_dealloc";
        break;
      case 2306:
        result = "kDYFEMTLRenderCommandEncoder_updateFence_afterStages";
        break;
      case 2307:
        result = "kDYFEMTLRenderCommandEncoder_waitForFence_beforeStages";
        break;
      case 2308:
        result = "kDYFEMTLBlitCommandEncoder_updateFence";
        break;
      case 2309:
        result = "kDYFEMTLFunction_setLabel";
        break;
      case 2310:
        result = "kDYFEMTLBuffer_makeAliasable";
        break;
      case 2311:
        result = "kDYFEMTLDevice_heapTextureSizeWithDescriptor";
        break;
      case 2312:
        result = "kDYFEMTLDevice_newHeapWithDescriptor";
        break;
      case 2313:
        result = "kDYFEMTLHeap_setLabel";
        break;
      case 2314:
        result = "kDYFEMTLHeap_dealloc";
        break;
      case 2315:
        result = "kDYFEMTLHeap_newBufferWithLength_options";
        break;
      case 2316:
        result = "kDYFEMTLHeap_newTextureWithDescriptor";
        break;
      case 2317:
        result = "kDYFEMTLHeap_setPurgeableState";
        break;
      case 2318:
        result = "kDYFEMTLTexture_makeAliasable";
        break;
      case 2319:
        result = "kDYFEMTLBuffer_isAliasable";
        break;
      case 2320:
        result = "kDYFEMTLDevice_heapTextureSizeAndAlignWithDescriptor";
        break;
      case 2321:
        result = "kDYFEMTLDevice_heapBufferSizeAndAlignWithLength_options";
        break;
      case 2322:
        result = "kDYFEMTLHeap_setResponsibleProcess";
        break;
      case 2323:
        result = "kDYFEMTLHeap_isPurgeable";
        break;
      case 2324:
        result = "kDYFEMTLTexture_isAliasable";
        break;
      case 2325:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_error";
        break;
      case 2326:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_completionHandler";
        break;
      case 2327:
        result = "kDYFEMTLHeap_maxAvailableSizeWithAlignment";
        break;
      case 2328:
        result = "kDYFEMTLBuffer_newTiledTextureWithDescriptor_offset_bytesPerRow";
        break;
      case 2329:
        result = "kDYFEMTLBuffer_addDebugMarker_range";
        break;
      case 2330:
        result = "kDYFEMTLBuffer_removeAllDebugMarkers";
        break;
      case 2331:
        result = "kDYFEMTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error";
        break;
      case 2332:
        result = "kDYFEMTLComputeCommandEncoder_setStageInRegion";
        break;
      case 2333:
        result = "kDYFEMTLDevice_newTextureLayoutWithDescriptor_isHeapOrBufferBacked";
        break;
      case 2334:
        result = "kDYFEMTLBuffer_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage";
        break;
      case 2335:
        result = "kDYFEMTLTextureLayout_dealloc";
        break;
      case 2336:
        result = "kDYFEMTLDevice_newTextureWithBytesNoCopy_length_descriptor_deallocator";
        break;
      case 2337:
        result = "kDYFEMTLDevice_newDefaultLibraryWithBundle_error";
        break;
      case 2338:
        result = "kDYFEMTLTexture_formattedDescription";
        break;
      case 2339:
        result = "kDYFEMTLDevice_minLinearTextureAlignmentForPixelFormat";
        break;
      case 2340:
        result = "kDYFEMTLComputePipelineState_getComputeKernelTelemetryID";
        break;
      case 2341:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_error";
        break;
      case 2342:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error";
        break;
      case 2343:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_completionHandler";
        break;
      case 2344:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler";
        break;
      case 2345:
        result = "kDYFEMTLRenderCommandEncoder_setTileBuffers_offsets_withRange";
        break;
      case 2346:
        result = "kDYFEMTLRenderCommandEncoder_setTileTextures_withRange";
        break;
      case 2347:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerStates_withRange";
        break;
      case 2348:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2349:
        result = "kDYFEMTLLibrary_setOverrideTriple";
        break;
      case 2350:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error";
        break;
      case 2351:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler";
        break;
      case 2352:
        result = "kDYFEMTLRenderCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 2353:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadsWithIndirectBuffer_indirectBufferOffset";
        break;
      case 2354:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup";
        break;
      case 2355:
        result = "kDYFEMTLRenderCommandEncoder_setViewports_count";
        break;
      case 2356:
        result = "kDYFEMTLRenderCommandEncoder_setScissorRects_count";
        break;
      case 2357:
        result = "kDYFEMTLDevice_newPipelineLibraryWithFilePath_error";
        break;
      case 2358:
        result = "kDYFEMTLRenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 2359:
        result = "kDYFEMTLCaptureScope_setLabel";
        break;
      case 2360:
        result = "kDYFEMTLCaptureScope_dealloc";
        break;
      case 2361:
        result = "kDYFEMTLCaptureScope_beginScope";
        break;
      case 2362:
        result = "kDYFEMTLCaptureScope_endScope";
        break;
      case 2363:
        result = "kDYFEMTLCaptureManager_startCaptureWithDevice";
        break;
      case 2364:
        result = "kDYFEMTLCaptureManager_startCaptureWithCommandQueue";
        break;
      case 2365:
        result = "kDYFEMTLCaptureManager_stopCapture";
        break;
      case 2366:
        result = "kDYFEMTLDevice_startCollectingPipelineDescriptors";
        break;
      case 2367:
        result = "kDYFEMTLCommandBuffer_pushDebugGroup";
        break;
      case 2368:
        result = "kDYFEMTLCommandBuffer_popDebugGroup";
        break;
      case 2369:
        result = "kDYFEMTLArgumentEncoder_setLabel";
        break;
      case 2370:
        result = "kDYFEMTLArgumentEncoder_dealloc";
        break;
      case 2371:
        result = "kDYFEMTLArgumentEncoder_setArgumentBuffer_offset";
        break;
      case 2372:
        result = "kDYFEMTLArgumentEncoder_setBuffer_offset_atIndex";
        break;
      case 2373:
        result = "kDYFEMTLArgumentEncoder_setBuffers_offsets_withRange";
        break;
      case 2374:
        result = "kDYFEMTLArgumentEncoder_setTexture_atIndex";
        break;
      case 2375:
        result = "kDYFEMTLArgumentEncoder_setTextures_withRange";
        break;
      case 2376:
        result = "kDYFEMTLArgumentEncoder_setSamplerState_atIndex";
        break;
      case 2377:
        result = "kDYFEMTLArgumentEncoder_setSamplerStates_withRange";
        break;
      case 2378:
        result = "kDYFEMTLArgumentEncoder_constantDataAtIndex";
        break;
      case 2379:
        result = "kDYFEMTLArgumentEncoder_newArgumentEncoderForBufferAtIndex";
        break;
      case 2380:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex";
        break;
      case 2381:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection";
        break;
      case 2382:
        result = "kDYFEMTLDevice_newArgumentEncoderWithArguments_count";
        break;
      case 2383:
        result = "kDYFEMTLDevice_newArgumentBufferLayoutWithStructType";
        break;
      case 2384:
        result = "kDYFEMTLDevice_newArgumentEncoderWithLayout";
        break;
      case 2385:
        result = "kDYFEMTLComputeCommandEncoder_useResource_usage";
        break;
      case 2386:
        result = "kDYFEMTLComputeCommandEncoder_useResources_count_usage";
        break;
      case 2387:
        result = "kDYFEMTLComputeCommandEncoder_useHeap";
        break;
      case 2388:
        result = "kDYFEMTLComputeCommandEncoder_useHeaps_count";
        break;
      case 2389:
        result = "kDYFEMTLRenderCommandEncoder_useResource_usage";
        break;
      case 2390:
        result = "kDYFEMTLRenderCommandEncoder_useResources_count_usage";
        break;
      case 2391:
        result = "kDYFEMTLRenderCommandEncoder_useHeap";
        break;
      case 2392:
        result = "kDYFEMTLRenderCommandEncoder_useHeaps_count";
        break;
      case 2393:
        result = "kDYFEMTLDevice_newLibraryWithURL_error";
        break;
      case 2394:
        result = "kDYFEMTLLibrary_newExternFunctionWithName";
        break;
      case 2395:
        result = "kDYFEMTLDevice_newArgumentEncoderWithArguments";
        break;
      case 2396:
        result = "kDYFEMTLDevice_indirectArgumentBufferDecodingData";
        break;
      case 2397:
        result = "kDYFEMTLDevice_setIndirectArgumentBufferDecodingData";
        break;
      case 2398:
        result = "kDYFEMTLCaptureManager_notifySubmissionForEyeSPI_iosurface_bounds_submitFlags";
        break;
      case 2399:
        result = "kDYFEMTLArgumentEncoder_setArgumentBuffer_startOffset_arrayElement";
        break;
      case 2400:
        result = "kDYFEMTLTextureLayout_initializeTextureMemory";
        break;
      case 2401:
        result = "kDYFEMTLDevice_newTiledTextureWithBytesNoCopy_length_descriptor_offset_bytesPerRow";
        break;
      case 2402:
        result = "kDYFEMTLDevice_newTiledTextureWithBytesNoCopy_length_deallocator_descriptor_offset_bytesPerRow";
        break;
      case 2403:
        result = "kDYFEMTLDevice_newLibraryWithCIFilters_imageFilterFunctionInfo_error";
        break;
      case 2404:
        result = "kDYFEMTLParallelRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 2405:
        result = "kDYFEMTLParallelRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 2406:
        result = "kDYFEMTLParallelRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 2407:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 2408:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 2409:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 2410:
        result = "kDYFEMTLRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 2411:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 2412:
        result = "kDYFEMTLRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 2413:
        result = "kDYFEMTLCaptureManager_notifyPostPresentHandoffSPI";
        break;
      case 2414:
        result = "kDYFEMTLDevice_newLibraryWithCIFiltersForComputePipeline_imageFilterFunctionInfo_error";
        break;
      case 2415:
        result = "kDYFEMTLComputeCommandEncoder_setStageInRegionWithIndirectBuffer_indirectBufferOffset";
        break;
      case 2416:
        result = "kDYFEMTLDevice_newIndirectRenderCommandEncoderWithBuffer";
        break;
      case 2417:
        result = "kDYFEMTLDevice_newIndirectComputeCommandEncoderWithBuffer";
        break;
      case 2418:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDispatchType";
        break;
      case 2419:
        result = "kDYFEMTLCommandBuffer_videoCommandEncoder";
        break;
      case 2420:
        result = "kDYFEMTLCommandBuffer_doCorruptCBSPI";
        break;
      case 2421:
        result = "kDYFEMTLComputeCommandEncoder_useComputePipelineState";
        break;
      case 2422:
        result = "kDYFEMTLComputeCommandEncoder_useComputePipelineStates_count";
        break;
      case 2423:
        result = "kDYFEMTLComputeCommandEncoder_memoryBarrierWithScope";
        break;
      case 2424:
        result = "kDYFEMTLComputeCommandEncoder_memoryBarrierWithResources_count";
        break;
      case 2425:
        result = "kDYFEMTLRenderCommandEncoder_useRenderPipelineState";
        break;
      case 2426:
        result = "kDYFEMTLRenderCommandEncoder_useRenderPipelineStates_count";
        break;
      case 2427:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_startIndex";
        break;
      case 2428:
        result = "kDYFEMTLRenderCommandEncoder_memoryBarrierWithScope_afterStages_beforeStages";
        break;
      case 2429:
        result = "kDYFEMTLRenderCommandEncoder_memoryBarrierWithResources_count_afterStages_beforeStages";
        break;
      case 2430:
        result = "kDYFEMTLArgumentEncoder_setRenderPipelineState_atIndex";
        break;
      case 2431:
        result = "kDYFEMTLArgumentEncoder_setRenderPipelineStates_withRange";
        break;
      case 2432:
        result = "kDYFEMTLArgumentEncoder_setComputePipelineState_atIndex";
        break;
      case 2433:
        result = "kDYFEMTLArgumentEncoder_setComputePipelineStates_withRange";
        break;
      case 2434:
        result = "kDYFEMTLDevice_minimumTextureBufferAlignmentForPixelFormat";
        break;
      case 2435:
        result = "kDYFEMTLDevice_newEvent";
        break;
      case 2436:
        result = "kDYFEMTLDevice_newSharedEvent";
        break;
      case 2437:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForGPUAccess";
        break;
      case 2438:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForGPUAccess_slice_level";
        break;
      case 2439:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForCPUAccess";
        break;
      case 2440:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForCPUAccess_slice_level";
        break;
      case 2441:
        result = "kDYFEMTLCommandBuffer_encodeWaitForEvent_value";
        break;
      case 2442:
        result = "kDYFEMTLCommandBuffer_encodeSignalEvent_value";
        break;
      case 2443:
        result = "kDYFEMTLComputePipelineState_resourceIndex";
        break;
      case 2444:
        result = "kDYFEMTLRenderCommandEncoder_setPointSize";
        break;
      case 2445:
        result = "kDYFEMTLRenderCommandEncoder_setClipPlane_p2_p3_p4_atIndex";
        break;
      case 2446:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_lodMinClamp_lodMaxClamp_lodBias_atIndex";
        break;
      case 2447:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_lodBias_atIndex";
        break;
      case 2448:
        result = "kDYFEMTLRenderCommandEncoder_setPrimitiveRestartEnabled_index";
        break;
      case 2449:
        result = "kDYFEMTLSamplerState_resourceIndex";
        break;
      case 2450:
        result = "kDYFEMTLSharedTextureHandle_dealloc";
        break;
      case 2451:
        result = "kDYFEMTLTexture_newSharedHandle";
        break;
      case 2452:
        result = "kDYFEMTLDevice_newSharedTextureWithDescriptor";
        break;
      case 2453:
        result = "kDYFEMTLDevice_newSharedTextureWithHandle";
        break;
      case 2454:
        result = "kDYFEMTLDevice_tileSizeWithTextureType_pixelFormat_sampleCount";
        break;
      case 2455:
        result = "kDYFEMTLBlitCommandEncoder_getTextureAccessCounters_region_mipLevel_slice_resetCounters_countersBuffer_countersBufferOffset";
        break;
      case 2456:
        result = "kDYFEMTLBlitCommandEncoder_resetTextureAccessCounters_region_mipLevel_slice";
        break;
      case 2457:
        result = "kDYFEMTLSharedEvent_setSignaledValue";
        break;
      case 2458:
        result = "kDYFEMTLSharedEvent_setLabel";
        break;
      case 2459:
        result = "kDYFEMTLSharedEvent_dealloc";
        break;
      case 2460:
        result = "kDYFEMTLDevice_newIndirectCommandBufferWithDescriptor_maxCount_options";
        break;
      case 2461:
        result = "kDYFEMTLDevice_reserveResourceIndicesForResourceType_indices_indexCount";
        break;
      case 2462:
        result = "kDYFEMTLRenderCommandEncoder_setPrimitiveRestartEnabled";
        break;
      case 2463:
        result = "kDYFEMTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options";
        break;
      case 2464:
        result = "kDYFEMTLDevice_getIndirectCommandBufferHeaderSize";
        break;
      case 2465:
        result = "kDYFEMTLCommandBuffer_addPurgedResource";
        break;
      case 2466:
        result = "kDYFEMTLCommandBuffer_addPurgedHeap";
        break;
      case 2467:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_startIndex";
        break;
      case 2468:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 2469:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset";
        break;
      case 2470:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 2471:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset";
        break;
      case 2472:
        result = "kDYFEMTLBlitCommandEncoder_resetCommandsInBuffer_withRange";
        break;
      case 2473:
        result = "kDYFEMTLBlitCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex";
        break;
      case 2474:
        result = "kDYFEMTLBlitCommandEncoder_optimizeIndirectCommandBuffer_withRange";
        break;
      case 2475:
        result = "kDYFEMTLIndirectRenderCommand_dealloc";
        break;
      case 2476:
        result = "kDYFEMTLIndirectRenderCommand_setRenderPipelineState";
        break;
      case 2477:
        result = "kDYFEMTLIndirectRenderCommand_setVertexBuffer_offset_atIndex";
        break;
      case 2478:
        result = "kDYFEMTLIndirectRenderCommand_setFragmentBuffer_offset_atIndex";
        break;
      case 2479:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_tessellationFactorBufferScale";
        break;
      case 2480:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride";
        break;
      case 2481:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_tessellationFactorBufferScale";
        break;
      case 2482:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride";
        break;
      case 2483:
        result = "kDYFEMTLIndirectRenderCommand_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 2484:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance";
        break;
      case 2485:
        result = "kDYFEMTLIndirectRenderCommand_nop";
        break;
      case 2486:
        result = "kDYFEMTLIndirectRenderCommand_end";
        break;
      case 2487:
        result = "kDYFEMTLIndirectRenderCommand_setTessellationFactorBuffer_offset_instanceStride";
        break;
      case 2488:
        result = "kDYFEMTLIndirectRenderCommand_setTessellationFactorScale";
        break;
      case 2489:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2490:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2491:
        result = "kDYFEMTLIndirectRenderCommand_dispatchThreadsPerTile";
        break;
      case 2492:
        result = "kDYFEMTLIndirectRenderCommand_setVertexArgument_offset_atIndex";
        break;
      case 2493:
        result = "kDYFEMTLIndirectRenderCommand_setFragmentArgument_offset_atIndex";
        break;
      case 2494:
        result = "kDYFEMTLIndirectRenderCommand_setTileArgument_offset_atIndex";
        break;
      case 2495:
        result = "kDYFEMTLIndirectRenderCommand_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 2496:
        result = "kDYFEMTLIndirectRenderCommand_endIndirectCommandBuffer";
        break;
      case 2497:
        result = "kDYFEMTLIndirectComputeCommand_dealloc";
        break;
      case 2498:
        result = "kDYFEMTLIndirectComputeCommand_setComputePipelineState";
        break;
      case 2499:
        result = "kDYFEMTLIndirectComputeCommand_setKernelBuffer_offset_atIndex";
        break;
      case 2500:
        result = "kDYFEMTLIndirectComputeCommand_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 2501:
        result = "kDYFEMTLIndirectComputeCommand_concurrentDispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 2502:
        result = "kDYFEMTLIndirectComputeCommand_nop";
        break;
      case 2503:
        result = "kDYFEMTLIndirectComputeCommand_endIndirectCommandBuffer";
        break;
      case 2504:
        result = "kDYFEMTLIndirectComputeCommand_setKernelArgument_offset_atIndex";
        break;
      case 2505:
        result = "kDYFEMTLIndirectComputeCommand_setThreadgroupMemoryLength_atIndex";
        break;
      case 2506:
        result = "kDYFEMTLIndirectComputeCommand_setStageInRegion";
        break;
      case 2507:
        result = "kDYFEMTLIndirectCommandBuffer_setLabel";
        break;
      case 2508:
        result = "kDYFEMTLIndirectCommandBuffer_setResponsibleProcess";
        break;
      case 2509:
        result = "kDYFEMTLIndirectCommandBuffer_dealloc";
        break;
      case 2510:
        result = "kDYFEMTLIndirectCommandBuffer_indirectRenderCommandAtIndex";
        break;
      case 2511:
        result = "kDYFEMTLIndirectCommandBuffer_indirectComputeCommandAtIndex";
        break;
      case 2512:
        result = "kDYFEMTLIndirectCommandBuffer_setPurgeableState";
        break;
      case 2513:
        result = "kDYFEMTLIndirectCommandBuffer_makeAliasable";
        break;
      case 2514:
        result = "kDYFEMTLIndirectCommandBuffer_isAliasable";
        break;
      case 2515:
        result = "kDYFEMTLIndirectCommandBuffer_isPurgeable";
        break;
      case 2516:
        result = "kDYFEMTLArgumentEncoder_setIndirectCommandBuffer_atIndex";
        break;
      case 2517:
        result = "kDYFEMTLArgumentEncoder_setIndirectCommandBuffers_withRange";
        break;
      case 2518:
        result = "kDYFEMTLBuffer_newRemoteBufferViewForDevice";
        break;
      case 2519:
        result = "kDYFEMTLTexture_newRemoteTextureViewForDevice";
        break;
      case 2520:
        result = "kDYFEMTLDevice_newSharedEventWithMachPort";
        break;
      case 2521:
        result = "kDYFEMTLSharedEvent_eventPort";
        break;
      case 2522:
        result = "kDYFEMTLTexture_newSharedTextureHandle";
        break;
      case 2523:
        result = "kDYFEMTLDevice_newSharedEventWithHandle";
        break;
      case 2524:
        result = "kDYFEMTLCommandBuffer_commitAndWaitUntilSubmitted";
        break;
      case 2525:
        result = "kDYFEMTLSharedEvent_newSharedEventHandle";
        break;
      case 2526:
        result = "kDYFEMTLIndirectRenderCommand_reset";
        break;
      case 2527:
        result = "kDYFEMTLIndirectComputeCommand_reset";
        break;
      case 2528:
        result = "kDYFEMTLBuffer_containsResource";
        break;
      case 2529:
        result = "kDYFEMTLTexture_containsResource";
        break;
      case 2530:
        result = "kDYFEMTLDevice_supportsPrimitiveType";
        break;
      case 2531:
        result = "kDYFEMTLDevice_startCollectingPipelineDescriptorsUsingPrefixForNames";
        break;
      case 2532:
        result = "kDYFEMTLDevice_newResourceGroupFromResources_count";
        break;
      case 2533:
        result = "kDYFEMTLCommandBuffer_sampledComputeCommandEncoderWithDispatchType_programInfoBuffer_capacity";
        break;
      case 2534:
        result = "kDYFEMTLCommandBuffer_setResourceGroups_count";
        break;
      case 2535:
        result = "kDYFEMTLCommandBuffer_dropResourceGroups_count";
        break;
      case 2536:
        result = "kDYFEMTLIndirectCommandBuffer_resetWithRange";
        break;
      case 2537:
        result = "kDYFEMTLIndirectCommandBuffer_containsResource";
        break;
      case 2538:
        result = "kDYFEMTLTexture_isShareable";
        break;
      case 2539:
        result = "kDYFEMTLMotionEstimationPipeline_dealloc";
        break;
      case 2540:
        result = "kDYFEMTLDevice_motionEstimatorCapabilities";
        break;
      case 2541:
        result = "kDYFEMTLDevice_newMotionEstimationPipelineWithDescriptor";
        break;
      case 2542:
        result = "kDYFEMTLVideoCommandEncoder_setLabel";
        break;
      case 2543:
        result = "kDYFEMTLVideoCommandEncoder_dealloc";
        break;
      case 2544:
        result = "kDYFEMTLVideoCommandEncoder_setMotionEstimationPipeline";
        break;
      case 2545:
        result = "kDYFEMTLVideoCommandEncoder_generateMotionVectorsForTexture_previousTexture_resultBuffer_bufferOffset";
        break;
      case 2546:
        result = "kDYFEMTLVideoCommandEncoder_waitForFence";
        break;
      case 2547:
        result = "kDYFEMTLVideoCommandEncoder_updateFence";
        break;
      case 2548:
        result = "kDYFEMTLVideoCommandEncoder_endEncoding";
        break;
      case 2549:
        result = "kDYFEMTLVideoCommandEncoder_insertDebugSignpost";
        break;
      case 2550:
        result = "kDYFEMTLVideoCommandEncoder_pushDebugGroup";
        break;
      case 2551:
        result = "kDYFEMTLVideoCommandEncoder_popDebugGroup";
        break;
      case 2552:
        result = "kDYFEMTLEvent_setLabel";
        break;
      case 2553:
        result = "kDYFEMTLEvent_dealloc";
        break;
      case 2554:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount";
        break;
      case 2555:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_toTexture";
        break;
      case 2556:
        result = "kDYFEMTLBlitCommandEncoder_resolveCountersWithIndexRange_sampleBuffer_resolvedBuffer";
        break;
      case 2557:
        result = "kDYFEMTLBlitCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 2558:
        result = "kDYFEMTLBuffer_setResourceIndex";
        break;
      case 2559:
        result = "kDYFEMTLCommandBuffer_debugBufferContentsWithLength";
        break;
      case 2560:
        result = "kDYFEMTLCommandBuffer_encodeCacheControlFinalizeOperation_resourceGroups_count";
        break;
      case 2561:
        result = "kDYFEMTLCommandBuffer_encodeCacheControlTagOperation_resourceGroups_count";
        break;
      case 2562:
        result = "kDYFEMTLCommandBuffer_resourceStateCommandEncoder";
        break;
      case 2563:
        result = "kDYFEMTLComputeCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 2564:
        result = "kDYFEMTLComputePipelineState_setResourceIndex";
        break;
      case 2565:
        result = "kDYFEMTLCounterSampleBuffer_dealloc";
        break;
      case 2566:
        result = "kDYFEMTLDeserializationContext_dealloc";
        break;
      case 2567:
        result = "kDYFEMTLDeserializationContext_functionWithFunctionRef";
        break;
      case 2568:
        result = "kDYFEMTLDevice_setCurrentUtilityBufferIndex";
        break;
      case 2569:
        result = "kDYFEMTLDevice_setResourceIndirectionEnabled";
        break;
      case 2570:
        result = "kDYFEMTLDevice_setUtilityBuffers";
        break;
      case 2571:
        result = "kDYFEMTLDevice_addBufferToGlobalResourceTable";
        break;
      case 2572:
        result = "kDYFEMTLDevice_addComputePipelineStateToGlobalResourceTable";
        break;
      case 2573:
        result = "kDYFEMTLDevice_addIndirectCommandBufferToGlobalResourceTable";
        break;
      case 2574:
        result = "kDYFEMTLDevice_addRenderPipelineStateToGlobalResourceTable";
        break;
      case 2575:
        result = "kDYFEMTLDevice_addSamplerStateToGlobalResourceTable";
        break;
      case 2576:
        result = "kDYFEMTLDevice_addTextureToGlobalResourceTable";
        break;
      case 2577:
        result = "kDYFEMTLDevice_allowLibrariesFromOtherPlatforms";
        break;
      case 2578:
        result = "kDYFEMTLDevice_createNewUtilityBuffer";
        break;
      case 2579:
        result = "kDYFEMTLDevice_describeCounter";
        break;
      case 2580:
        result = "kDYFEMTLDevice_indirectBufferAddressForResourceIndex_offset";
        break;
      case 2581:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options_atResourceIndex";
        break;
      case 2582:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_atResourceIndex_deallocator";
        break;
      case 2583:
        result = "kDYFEMTLDevice_newBufferWithLength_options_atResourceIndex";
        break;
      case 2584:
        result = "kDYFEMTLDevice_newCounterSampleBufferWithDescriptor_error";
        break;
      case 2585:
        result = "kDYFEMTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error";
        break;
      case 2586:
        result = "kDYFEMTLDevice_newRasterizationRateMapWithScreenSize_layerCount_layers";
        break;
      case 2587:
        result = "kDYFEMTLDevice_newRenderPipelineDescriptorWithSerializedData_deserializationContext";
        break;
      case 2588:
        result = "kDYFEMTLDevice_offsetFromIndirectBufferAddress";
        break;
      case 2589:
        result = "kDYFEMTLDevice_pollSampleBuffer_resolvedBuffer";
        break;
      case 2590:
        result = "kDYFEMTLDevice_removeResourceFromGlobalResourceTable_resourceType";
        break;
      case 2591:
        result = "kDYFEMTLDevice_requiresIndirectionForAllResourceTypes";
        break;
      case 2592:
        result = "kDYFEMTLDevice_resolveCountersWithIndexRange_sampleBuffer";
        break;
      case 2593:
        result = "kDYFEMTLDevice_resourceIndexFromIndirectBufferAddress";
        break;
      case 2594:
        result = "kDYFEMTLDevice_sampleCountersAtInterval_sampleBuffer_error";
        break;
      case 2595:
        result = "kDYFEMTLDevice_sampleTimeStamps_gpuTimeStamp";
        break;
      case 2596:
        result = "kDYFEMTLDevice_serializeRenderPipelineDescriptor";
        break;
      case 2597:
        result = "kDYFEMTLDevice_setGPUAssertionsEnabled";
        break;
      case 2598:
        result = "kDYFEMTLDevice_setResourcesPurgeableState_newState_oldState_count";
        break;
      case 2599:
        result = "kDYFEMTLDevice_useDeviceResourceTableForType";
        break;
      case 2600:
        result = "kDYFEMTLDevice_utilityBufferForComputeCommandEncoder";
        break;
      case 2601:
        result = "kDYFEMTLDevice_utilityBufferForRenderCommandEncoder";
        break;
      case 2602:
        result = "kDYFEMTLFunction_newFunctionWithPluginData_bitcodeType";
        break;
      case 2603:
        result = "kDYFEMTLHeap_newBufferWithLength_options_atOffset";
        break;
      case 2604:
        result = "kDYFEMTLHeap_newTextureWithDescriptor_atOffset";
        break;
      case 2605:
        result = "kDYFEMTLIndirectComputeCommand_clearBarrier";
        break;
      case 2606:
        result = "kDYFEMTLIndirectComputeCommand_concurrentDispatchThreads_threadsPerThreadgroup";
        break;
      case 2607:
        result = "kDYFEMTLIndirectComputeCommand_setBarrier";
        break;
      case 2608:
        result = "kDYFEMTLIndirectComputeCommand_setImageBlockWidth_height";
        break;
      case 2609:
        result = "kDYFEMTLRenderCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 2610:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAmplificationCount_viewMappings";
        break;
      case 2611:
        result = "kDYFEMTLRenderCommandEncoder_useHeap_stages";
        break;
      case 2612:
        result = "kDYFEMTLRenderCommandEncoder_useHeaps_count_stages";
        break;
      case 2613:
        result = "kDYFEMTLRenderCommandEncoder_useResource_usage_stages";
        break;
      case 2614:
        result = "kDYFEMTLRenderCommandEncoder_useResources_count_usage_stages";
        break;
      case 2615:
        result = "kDYFEMTLRenderPipelineState_setResourceIndex";
        break;
      case 2616:
        result = "kDYFEMTLSamplerState_setResourceIndex";
        break;
      case 2617:
        result = "kDYFEMTLTexture_setResourceIndex";
        break;
      case 2618:
        result = "kDYFEMTLDevice_newComputePipelineDescriptorWithSerializedData_deserializationContext";
        break;
      case 2619:
        result = "kDYFEMTLDevice_serializeComputePipelineDescriptor";
        break;
      case 2620:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAmplificationMode_value";
        break;
      case 2621:
        result = "kDYFEMTLCommandQueue_getBackgroundGPUPriority";
        break;
      case 2622:
        result = "kDYFEMTLCommandQueue_getGPUPriority";
        break;
      case 2623:
        result = "kDYFEMTLCommandQueue_setBackgroundGPUPriority";
        break;
      case 2624:
        result = "kDYFEMTLCommandQueue_setBackgroundGPUPriority_offset";
        break;
      case 2625:
        result = "kDYFEMTLCommandQueue_setCompletionQueue";
        break;
      case 2626:
        result = "kDYFEMTLCommandQueue_setGPUPriority";
        break;
      case 2627:
        result = "kDYFEMTLCommandQueue_setGPUPriority_offset";
        break;
      case 2628:
        result = "kDYFEMTLCommandQueue_setSubmissionQueue";
        break;
      case 2629:
        result = "kDYFEMTLRasterizationRateMap_copyParameterDataToBuffer_atOffset";
        break;
      case 2630:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMapping_mode_indirectBuffer_indirectBufferOffset";
        break;
      case 2631:
        result = "kDYFEMTLRasterizationRateMap_dealloc";
        break;
      case 2632:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMapping_mode_region_mipLevel_slice";
        break;
      case 2633:
        result = "kDYFEMTLRasterizationRateMap_physicalCoordinate_forLayer";
        break;
      case 2634:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMappings_mode_regions_mipLevels_slices_numRegions";
        break;
      case 2635:
        result = "kDYFEMTLRasterizationRateMap_physicalSizeForLayer";
        break;
      case 2636:
        result = "kDYFEMTLDevice_tileSizeWithSparsePageSize_textureType_pixelFormat_sampleCount";
        break;
      case 2637:
        result = "kDYFEMTLRasterizationRateMap_screenCoordinate_forLayer";
        break;
      case 2638:
        result = "kDYFEMTLResourceStateCommandEncoder_setLabel";
        break;
      case 2639:
        result = "kDYFEMTLDevice_newRasterizationRateMapWithDescriptor";
        break;
      case 2640:
        result = "kDYFEMTLResourceStateCommandEncoder_copyMappingStateFromTexture_mipLevel_slice_toBuffer_offset_numTiles";
        break;
      case 2641:
        result = "kDYFEMTLDevice_supportsRasterizationRateMapWithLayerCount";
        break;
      case 2642:
        result = "kDYFEMTLResourceStateCommandEncoder_dealloc";
        break;
      case 2643:
        result = "kDYFEMTLResourceStateCommandEncoder_endEncoding";
        break;
      case 2644:
        result = "kDYFEMTLResourceStateCommandEncoder_insertDebugSignpost";
        break;
      case 2645:
        result = "kDYFEMTLResourceStateCommandEncoder_popDebugGroup";
        break;
      case 2646:
        result = "kDYFEMTLResourceStateCommandEncoder_pushDebugGroup";
        break;
      case 2647:
        result = "kDYFEMTLResourceStateCommandEncoder_updateFence";
        break;
      case 2648:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMapping_mode_indirectBuffer_indirectBufferOffset";
        break;
      case 2649:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMapping_mode_region_mipLevel_slice";
        break;
      case 2650:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMappings_mode_regions_mipLevels_slices_numRegions";
        break;
      case 2651:
        result = "kDYFEMTLResourceStateCommandEncoder_waitForFence";
        break;
      case 2652:
        result = "kDYFEMTLDevice_supportsFamily";
        break;
      case 2653:
        result = "kDYFEMTLDevice_supportsVersion";
        break;
      case 2654:
        result = "kDYFEMTLHeap_newBufferWithLength_options_offset";
        break;
      case 2655:
        result = "kDYFEMTLHeap_newTextureWithDescriptor_offset";
        break;
      case 2656:
        result = "kDYFEMTLRasterizationRateMap_copyParameterDataToBuffer_offset";
        break;
      case 2657:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle";
        break;
      case 2658:
        result = "kDYFEMTLDevice_newPrecompiledComputePipelineStateWithDescriptor_options_pipelineCache_completionHandler";
        break;
      case 2659:
        result = "kDYFEMTLIndirectComputeCommand_setImageblockWidth_height";
        break;
      case 2660:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_functionCache_error";
        break;
      case 2661:
        result = "kDYFEMTLRasterizationRateMap_mapPhysicalToScreenCoordinates_forLayer";
        break;
      case 2662:
        result = "kDYFEMTLRasterizationRateMap_mapScreenToPhysicalCoordinates_forLayer";
        break;
      case 2663:
        result = "kDYFEMTLResourceGroup_dealloc";
        break;
      case 2664:
        result = "kDYFEMTLBuffer_isComplete";
        break;
      case 2665:
        result = "kDYFEMTLBuffer_waitUntilComplete";
        break;
      case 2666:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasAllResources_count";
        break;
      case 2667:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasAnyResources_count";
        break;
      case 2668:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasResource";
        break;
      case 2669:
        result = "kDYFEMTLIndirectCommandBuffer_isComplete";
        break;
      case 2670:
        result = "kDYFEMTLIndirectCommandBuffer_waitUntilComplete";
        break;
      case 2671:
        result = "kDYFEMTLTexture_isComplete";
        break;
      case 2672:
        result = "kDYFEMTLTexture_waitUntilComplete";
        break;
      case 2673:
        result = "kDYFEMTLDevice_convertSparsePixelRegions_toTileRegions_withTileSize_alignmentMode_numRegions";
        break;
      case 2674:
        result = "kDYFEMTLDevice_convertSparseTileRegions_toPixelRegions_withTileSize_numRegions";
        break;
      case 2675:
        result = "kDYFEMTLDevice_supportsVertexAmplificationCount";
        break;
      case 2676:
        result = "kDYFEMTLBlitCommandEncoder_resolveCounters_inRange_destinationBuffer_destinationOffset";
        break;
      case 2677:
        result = "kDYFEMTLBlitCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2678:
        result = "kDYFEMTLComputeCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2679:
        result = "kDYFEMTLCounterSampleBuffer_resolveCounterRange";
        break;
      case 2680:
        result = "kDYFEMTLCounterSet_dealloc";
        break;
      case 2681:
        result = "kDYFEMTLDevice_sampleTimestamps_gpuTimestamp";
        break;
      case 2682:
        result = "kDYFEMTLRenderCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2683:
        result = "kDYFEMTLCommandBuffer_encodeWaitForEvent_value_timeout";
        break;
      case 2684:
        result = "kDYFEMTLCounter_dealloc";
        break;
      case 2685:
        result = "kDYFEMTLDevice_copyShaderCacheToPath";
        break;
      case 2686:
        result = "kDYFEMTLDevice_serializeStructType_version";
        break;
      case 2687:
        result = "kDYFEMTLPipelineCache_dealloc";
        break;
      case 2688:
        result = "kDYFEMTLPipelineLibrary_setDisableRunTimeCompilation";
        break;
      case 2689:
        result = "kDYFEMTLPipelineLibrary_setLabel";
        break;
      case 2690:
        result = "kDYFEMTLPipelineLibrary_dealloc";
        break;
      case 2691:
        result = "kDYFEMTLPipelineLibrary_newComputePipelineDescriptorWithName_error";
        break;
      case 2692:
        result = "kDYFEMTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error";
        break;
      case 2693:
        result = "kDYFEMTLPipelineLibrary_newRenderPipelineDescriptorWithName_error";
        break;
      case 2694:
        result = "kDYFEMTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error";
        break;
      case 2695:
        result = "kDYFEMTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount";
        break;
      case 2696:
        result = "kDYFEMTLCaptureManager_startCaptureWithDescriptor_error";
        break;
      case 2697:
        result = "kDYFEMTLCaptureManager_startCaptureWithScope";
        break;
      case 2698:
        result = "kDYFEMTLCaptureManager_newCaptureScopeWithDevice";
        break;
      case 2699:
        result = "kDYFEMTLCaptureManager_newCaptureScopeWithCommandQueue";
        break;
      case 2700:
        result = "kDYFEMTLComputeCommandEncoder_enableNullBufferBinds";
        break;
      case 2701:
        result = "kDYFEMTLDevice_newFunctionWithGLIR_functionType";
        break;
      case 2702:
        result = "kDYFEMTLDevice_newFunctionWithGLIR_inputsDescription_functionType";
        break;
      case 2703:
        result = "kDYFEMTLRenderCommandEncoder_setAlphaTestReferenceValue";
        break;
      case 2704:
        result = "kDYFEMTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_yInvert_atIndex";
        break;
      case 2705:
        result = "kDYFEMTLRenderCommandEncoder_setDepthCleared";
        break;
      case 2706:
        result = "kDYFEMTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level_yInvert";
        break;
      case 2707:
        result = "kDYFEMTLRenderCommandEncoder_setProvokingVertexMode";
        break;
      case 2708:
        result = "kDYFEMTLRenderCommandEncoder_setStencilCleared";
        break;
      case 2709:
        result = "kDYFEMTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level";
        break;
      case 2710:
        result = "kDYFEMTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level_yInvert";
        break;
      case 2711:
        result = "kDYFEMTLRenderCommandEncoder_setTriangleFrontFillMode_backFillMode";
        break;
      case 2712:
        result = "kDYFEMTLRenderCommandEncoder_setViewportTransformEnabled";
        break;
      case 2713:
        result = "kDYFEMTLDevice_minLinearTextureBaseAddressAlignmentForDescriptor";
        break;
      case 2714:
        result = "kDYFEMTLDevice_minLinearTexturePitchAlignmentForDescriptor_mustMatchExactly";
        break;
      case 2715:
        result = "kDYFEMTLDevice_newBinaryArchiveWithDescriptor_error";
        break;
      case 2716:
        result = "kDYFEMTLDevice_requiredLinearTextureBytesPerRowForDescriptor";
        break;
      case 2717:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_pipelineLibrary";
        break;
      case 2718:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_pipelineLibrary";
        break;
      case 2719:
        result = "kDYFEMTLFunction_reflectionWithOptions_pipelineLibrary";
        break;
      case 2720:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDispatchType_substreamCount";
        break;
      case 2721:
        result = "kDYFEMTLComputeCommandEncoder_setSubstream";
        break;
      case 2722:
        result = "kDYFEMTLComputeCommandEncoder_signalProgress";
        break;
      case 2723:
        result = "kDYFEMTLComputeCommandEncoder_waitForProgress";
        break;
      case 2724:
        result = "kDYFEMTLDevice_maximumComputeSubstreams";
        break;
      case 2725:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options_gpuAddress";
        break;
      case 2726:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_gpuAddress_deallocator";
        break;
      case 2727:
        result = "kDYFEMTLDevice_newBufferWithLength_options_gpuAddress";
        break;
      case 2728:
        result = "kDYFEMTLDevice_reserveGPUAddressRange";
        break;
      case 2729:
        result = "kDYFEMTLCommandBuffer_addLoggingForType_handler";
        break;
      case 2730:
        result = "kDYFEMTLCommandBufferEncoderInfo_dealloc";
        break;
      case 2731:
        result = "kDYFEMTLCommandQueue_commandBufferWithDescriptor";
        break;
      case 2732:
        result = "kDYFEMTLComputePipelineState_functionPointerHandleWithFunction";
        break;
      case 2733:
        result = "kDYFEMTLComputePipelineState_functionPointerHandlesWithFunctions_range";
        break;
      case 2734:
        result = "kDYFEMTLDevice_setCommandBufferErrorOptions";
        break;
      case 2735:
        result = "kDYFEMTLDevice_newBinaryLibraryWithOptions_url_error";
        break;
      case 2736:
        result = "kDYFEMTLDevice_newDynamicLibrary_computeDescriptor_error";
        break;
      case 2737:
        result = "kDYFEMTLDevice_newDynamicLibrary_error";
        break;
      case 2738:
        result = "kDYFEMTLDevice_newDynamicLibraryFromURL_error";
        break;
      case 2739:
        result = "kDYFEMTLDevice_newLibraryWithDAG_functions_error";
        break;
      case 2740:
        result = "kDYFEMTLFunctionLog_dealloc";
        break;
      case 2741:
        result = "kDYFEMTLStackTraceEntry_dealloc";
        break;
      case 2742:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_resourceIndex";
        break;
      case 2743:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_resourceIndex";
        break;
      case 2744:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle_resourceIndex";
        break;
      case 2745:
        result = "kDYFEMTLBinaryArchive_addComputePipelineStateWithDescriptor_error";
        break;
      case 2746:
        result = "kDYFEMTLBinaryArchive_addLibrary_computePipelineDescriptor_error";
        break;
      case 2747:
        result = "kDYFEMTLBinaryArchive_dealloc";
        break;
      case 2748:
        result = "kDYFEMTLBinaryArchive_writeToURL_error";
        break;
      case 2749:
        result = "kDYFEMTLBinaryLibrary_setLabel";
        break;
      case 2750:
        result = "kDYFEMTLBinaryLibrary_addBinaryEntry";
        break;
      case 2751:
        result = "kDYFEMTLBinaryLibrary_addComputePipelineFunctionsWithDescriptor_error";
        break;
      case 2752:
        result = "kDYFEMTLBinaryLibrary_dealloc";
        break;
      case 2753:
        result = "kDYFEMTLBinaryLibrary_getBinaryDataWithKey";
        break;
      case 2754:
        result = "kDYFEMTLBinaryLibrary_removeComputePipelineFunctionsWithDescriptor_error";
        break;
      case 2755:
        result = "kDYFEMTLBinaryLibrary_serializeToURL_error";
        break;
      case 2756:
        result = "kDYFEMTLDynamicLibrary_setLabel";
        break;
      case 2757:
        result = "kDYFEMTLDynamicLibrary_dealloc";
        break;
      case 2758:
        result = "kDYFEMTLDynamicLibrary_serializeToURL_error";
        break;
      case 2759:
        result = "kDYFEMTLCommandBuffer_accelerationStructureCommandEncoder";
        break;
      case 2760:
        result = "kDYFEMTLDevice_accelerationStructureSizesWithDescriptor";
        break;
      case 2761:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForComputeDescriptor_error";
        break;
      case 2762:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_binaryArchives";
        break;
      case 2763:
        result = "kDYFEMTLFunction_reflectionWithOptions_binaryArchives";
        break;
      case 2764:
        result = "kDYFEMTLBinaryArchive_setLabel";
        break;
      case 2765:
        result = "kDYFEMTLBinaryArchive_addBinaryEntry_forKey";
        break;
      case 2766:
        result = "kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_error";
        break;
      case 2767:
        result = "kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 2768:
        result = "kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 2769:
        result = "kDYFEMTLBinaryArchive_getBinaryDataForKey";
        break;
      case 2770:
        result = "kDYFEMTLBinaryArchive_serializeToURL_error";
        break;
      case 2771:
        result = "kDYFEMTLAccelerationStructure_setLabel";
        break;
      case 2772:
        result = "kDYFEMTLAccelerationStructure_setResponsibleProcess";
        break;
      case 2773:
        result = "kDYFEMTLAccelerationStructure_dealloc";
        break;
      case 2774:
        result = "kDYFEMTLAccelerationStructure_doesAliasAllResources_count";
        break;
      case 2775:
        result = "kDYFEMTLAccelerationStructure_doesAliasAnyResources_count";
        break;
      case 2776:
        result = "kDYFEMTLAccelerationStructure_doesAliasResource";
        break;
      case 2777:
        result = "kDYFEMTLAccelerationStructure_isAliasable";
        break;
      case 2778:
        result = "kDYFEMTLAccelerationStructure_isComplete";
        break;
      case 2779:
        result = "kDYFEMTLAccelerationStructure_isPurgeable";
        break;
      case 2780:
        result = "kDYFEMTLAccelerationStructure_isWriteComplete";
        break;
      case 2781:
        result = "kDYFEMTLAccelerationStructure_makeAliasable";
        break;
      case 2782:
        result = "kDYFEMTLAccelerationStructure_setPurgeableState";
        break;
      case 2783:
        result = "kDYFEMTLAccelerationStructure_waitUntilComplete";
        break;
      case 2784:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_setLabel";
        break;
      case 2785:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset";
        break;
      case 2786:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_copyAccelerationStructure_toAccelerationStructure";
        break;
      case 2787:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure";
        break;
      case 2788:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_dealloc";
        break;
      case 2789:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_fromBuffer_offset";
        break;
      case 2790:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_endEncoding";
        break;
      case 2791:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_insertDebugSignpost";
        break;
      case 2792:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_popDebugGroup";
        break;
      case 2793:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_pushDebugGroup";
        break;
      case 2794:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset";
        break;
      case 2795:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2796:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeAccelerationStructure_toBuffer_offset";
        break;
      case 2797:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_updateFence";
        break;
      case 2798:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useHeap";
        break;
      case 2799:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useHeaps_count";
        break;
      case 2800:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useResource_usage";
        break;
      case 2801:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useResources_count_usage";
        break;
      case 2802:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_waitForFence";
        break;
      case 2803:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset";
        break;
      case 2804:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_offset";
        break;
      case 2805:
        result = "kDYFEMTLArgumentEncoder_setAccelerationStructure_atIndex";
        break;
      case 2806:
        result = "kDYFEMTLArgumentEncoder_setFunctionTable_atIndex";
        break;
      case 2807:
        result = "kDYFEMTLArgumentEncoder_setFunctionTables_withRange";
        break;
      case 2808:
        result = "kDYFEMTLCommandQueue_getSPIStats";
        break;
      case 2809:
        result = "kDYFEMTLComputeCommandEncoder_setAccelerationStructure_atBufferIndex";
        break;
      case 2810:
        result = "kDYFEMTLComputeCommandEncoder_setFunctionTable_atIndex";
        break;
      case 2811:
        result = "kDYFEMTLComputeCommandEncoder_setFunctionTables_withRange";
        break;
      case 2812:
        result = "kDYFEMTLComputePipelineState_functionHandleWithFunction";
        break;
      case 2813:
        result = "kDYFEMTLComputePipelineState_functionHandlesWithFunctions";
        break;
      case 2814:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalDynamicFunctions";
        break;
      case 2815:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_completionHandler";
        break;
      case 2816:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_error";
        break;
      case 2817:
        result = "kDYFEMTLDevice_newAccelerationStructureWithDescriptor";
        break;
      case 2818:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize";
        break;
      case 2819:
        result = "kDYFEMTLDevice_newDynamicLibraryWithURL_error";
        break;
      case 2820:
        result = "kDYFEMTLDevice_newVisibleFunctionTableWithDescriptor";
        break;
      case 2821:
        result = "kDYFEMTLDynamicLibrary_serializeToURL_options_error";
        break;
      case 2822:
        result = "kDYFEMTLFunctionHandle_dealloc";
        break;
      case 2823:
        result = "kDYFEMTLLibrary_newFunctionWithDescriptor_completionHandler";
        break;
      case 2824:
        result = "kDYFEMTLLibrary_newFunctionWithDescriptor_error";
        break;
      case 2825:
        result = "kDYFEMTLVisibleFunctionTable_setLabel";
        break;
      case 2826:
        result = "kDYFEMTLVisibleFunctionTable_setResponsibleProcess";
        break;
      case 2827:
        result = "kDYFEMTLVisibleFunctionTable_dealloc";
        break;
      case 2828:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasAllResources_count";
        break;
      case 2829:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasAnyResources_count";
        break;
      case 2830:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasResource";
        break;
      case 2831:
        result = "kDYFEMTLVisibleFunctionTable_isAliasable";
        break;
      case 2832:
        result = "kDYFEMTLVisibleFunctionTable_isPurgeable";
        break;
      case 2833:
        result = "kDYFEMTLVisibleFunctionTable_makeAliasable";
        break;
      case 2834:
        result = "kDYFEMTLVisibleFunctionTable_setFunction_atIndex";
        break;
      case 2835:
        result = "kDYFEMTLVisibleFunctionTable_setFunctions_withRange";
        break;
      case 2836:
        result = "kDYFEMTLVisibleFunctionTable_setPurgeableState";
        break;
      case 2837:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_fromBuffer_serializedBufferOffset";
        break;
      case 2838:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset";
        break;
      case 2839:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeAccelerationStructure_toBuffer_serializedBufferOffset";
        break;
      case 2840:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset";
        break;
      case 2841:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeDeserializedPrimitiveAccelerationStructureSizes_serializedOffset_toBuffer_sizesBufferOffset";
        break;
      case 2842:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGeometryOfAccelerationStructure_toBuffer_geometryBufferOffset";
        break;
      case 2843:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGeometrySizeOfAccelerationStructure_toBuffer_sizeBufferOffset";
        break;
      case 2844:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset";
        break;
      case 2845:
        result = "kDYFEMTLCommandBuffer_blitCommandEncoderWithDescriptor";
        break;
      case 2846:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDescriptor";
        break;
      case 2847:
        result = "kDYFEMTLCommandBuffer_resourceStateCommandEncoderWithDescriptor";
        break;
      case 2848:
        result = "kDYFEMTLCommandBuffer_sampledComputeCommandEncoderWithDescriptor_programInfoBuffer_capacity";
        break;
      case 2849:
        result = "kDYFEMTLComputeCommandEncoder_setIntersectionFunctionTable_atBufferIndex";
        break;
      case 2850:
        result = "kDYFEMTLComputeCommandEncoder_setIntersectionFunctionTables_withBufferRange";
        break;
      case 2851:
        result = "kDYFEMTLComputeCommandEncoder_setVisibleFunctionTable_atBufferIndex";
        break;
      case 2852:
        result = "kDYFEMTLComputeCommandEncoder_setVisibleFunctionTables_withBufferRange";
        break;
      case 2853:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions";
        break;
      case 2854:
        result = "kDYFEMTLComputePipelineState_newVisibleFunctionTableWithDescriptor";
        break;
      case 2855:
        result = "kDYFEMTLDevice_newIntersectionFunctionTableWithDescriptor";
        break;
      case 2856:
        result = "kDYFEMTLDevice_supportsCounterSampling";
        break;
      case 2857:
        result = "kDYFEMTLDevice_supportsTextureWriteFPRoundingMode";
        break;
      case 2858:
        result = "kDYFEMTLVisibleFunctionTable_setGlobalBuffer";
        break;
      case 2859:
        result = "kDYFEMTLVisibleFunctionTable_setGlobalBufferOffset";
        break;
      case 2860:
        result = "kDYFEMTLIntersectionFunctionTable_setGlobalBuffer";
        break;
      case 2861:
        result = "kDYFEMTLIntersectionFunctionTable_setGlobalBufferOffset";
        break;
      case 2862:
        result = "kDYFEMTLIntersectionFunctionTable_setLabel";
        break;
      case 2863:
        result = "kDYFEMTLIntersectionFunctionTable_setResponsibleProcess";
        break;
      case 2864:
        result = "kDYFEMTLIntersectionFunctionTable_dealloc";
        break;
      case 2865:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasAllResources_count";
        break;
      case 2866:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasAnyResources_count";
        break;
      case 2867:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasResource";
        break;
      case 2868:
        result = "kDYFEMTLIntersectionFunctionTable_isAliasable";
        break;
      case 2869:
        result = "kDYFEMTLIntersectionFunctionTable_isComplete";
        break;
      case 2870:
        result = "kDYFEMTLIntersectionFunctionTable_isPurgeable";
        break;
      case 2871:
        result = "kDYFEMTLIntersectionFunctionTable_isWriteComplete";
        break;
      case 2872:
        result = "kDYFEMTLIntersectionFunctionTable_makeAliasable";
        break;
      case 2873:
        result = "kDYFEMTLIntersectionFunctionTable_setFunction_atIndex";
        break;
      case 2874:
        result = "kDYFEMTLIntersectionFunctionTable_setFunctions_withRange";
        break;
      case 2875:
        result = "kDYFEMTLIntersectionFunctionTable_setPurgeableState";
        break;
      case 2876:
        result = "kDYFEMTLIntersectionFunctionTable_waitUntilComplete";
        break;
      case 2877:
        result = "kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_options_error";
        break;
      case 2878:
        result = "kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 2879:
        result = "kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 2880:
        result = "kDYFEMTLAccelerationStructure_setDescriptor";
        break;
      case 2881:
        result = "kDYFEMTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler";
        break;
      case 2882:
        result = "kDYFEMTLLibrary_newIntersectionFunctionWithDescriptor_error";
        break;
      case 2883:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTable_atBufferIndex";
        break;
      case 2884:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTables_withBufferRange";
        break;
      case 2885:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTable_atBufferIndex";
        break;
      case 2886:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTables_withBufferRange";
        break;
      case 2887:
        result = "kDYFEMTLIntersectionFunctionTable_setBuffer_offset_atIndex";
        break;
      case 2888:
        result = "kDYFEMTLIntersectionFunctionTable_setBuffers_offsets_withRange";
        break;
      case 2889:
        result = "kDYFEMTLVisibleFunctionTable_setBuffer_offset_atIndex";
        break;
      case 2890:
        result = "kDYFEMTLVisibleFunctionTable_setBuffers_offsets_withRange";
        break;
      case 2891:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 2892:
        result = "kDYFEMTLComputePipelineState_newIntersectionFunctionTableWithDescriptor";
        break;
      case 2893:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTable_atIndex";
        break;
      case 2894:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTables_withRange";
        break;
      case 2895:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTable_atIndex";
        break;
      case 2896:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTables_withRange";
        break;
      case 2897:
        result = "kDYFEMTLDevice_supportsTextureWriteRoundingMode";
        break;
      case 2898:
        result = "kDYFEMTLTexture_didModifyData";
        break;
      case 2899:
        result = "kDYFEMTLCommandBuffer_setSharedIndirectionTable";
        break;
      case 2900:
        result = "kDYFEMTLDevice_newPrecompiledRenderPipelineStateWithDescriptor_options_pipelineCache_completionHandler";
        break;
      case 2901:
        result = "kDYFEMTLDevice_newDynamicLibraryWithURL_options_error";
        break;
      case 2902:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_atIndex";
        break;
      case 2903:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_withRange";
        break;
      case 2904:
        result = "kDYFEMTLVisibleFunctionTable_setValue_atIndex";
        break;
      case 2905:
        result = "kDYFEMTLVisibleFunctionTable_setValue_withRange";
        break;
      case 2906:
        result = "kDYFEMTLIntersectionFunctionTable_setVisibleFunctionTable_atBufferIndex";
        break;
      case 2907:
        result = "kDYFEMTLIntersectionFunctionTable_setVisibleFunctionTables_withBufferRange";
        break;
      case 2908:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset";
        break;
      case 2909:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset";
        break;
      case 2910:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset";
        break;
      case 2911:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset";
        break;
      case 2912:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset";
        break;
      case 2913:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_toBuffer_sizesBufferOffset";
        break;
      case 2914:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndDoWhile_offset_comparison_referenceValue";
        break;
      case 2915:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndIf";
        break;
      case 2916:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndWhile";
        break;
      case 2917:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartDoWhile";
        break;
      case 2918:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartElse";
        break;
      case 2919:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartIf_offset_comparison_referenceValue";
        break;
      case 2920:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartWhile_offset_comparison_referenceValue";
        break;
      case 2921:
        result = "kDYFEMTLComputeCommandEncoder_insertCompressedTextureReinterpretationFlush";
        break;
      case 2922:
        result = "kDYFEMTLComputeCommandEncoder_useResourceGroup_usage";
        break;
      case 2923:
        result = "kDYFEMTLDevice_newBufferWithDescriptor";
        break;
      case 2924:
        result = "kDYFEMTLRelocation_dealloc";
        break;
      case 2925:
        result = "kDYFEMTLRenderCommandEncoder_useResourceGroup_usage_stages";
        break;
      case 2926:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize_resourceIndex";
        break;
      case 2927:
        result = "kDYFEMTLBuffer_setParentGPUAddress";
        break;
      case 2928:
        result = "kDYFEMTLBuffer_setParentGPUSize";
        break;
      case 2929:
        result = "kDYFEMTLComputeCommandEncoder_insertUncompressedToCompressedFlush";
        break;
      case 2930:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType";
        break;
      case 2931:
        result = "kDYFEMTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_value_forIndex";
        break;
      case 2932:
        result = "kDYFEMTLCommandBuffer_encodeDashboardTagForResourceGroup";
        break;
      case 2933:
        result = "kDYFEMTLDevice_setPluginData";
        break;
      case 2934:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForComputeDescriptor_options_error";
        break;
      case 2935:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForFunction_insertLibraries_options_error";
        break;
      case 2936:
        result = "kDYFEMTLDevice_newLateEvalEvent";
        break;
      case 2937:
        result = "kDYFEMTLFunctionPointerHandle_dealloc";
        break;
      case 2938:
        result = "kDYFEMTLFunctionPrivateArgument_dealloc";
        break;
      case 2939:
        result = "kDYFEMTLFunctionStitchingAttribute_dealloc";
        break;
      case 2940:
        result = "kDYFEMTLFunctionStitchingNode_dealloc";
        break;
      case 2941:
        result = "kDYFEMTLLateEvalEvent_setLabel";
        break;
      case 2942:
        result = "kDYFEMTLLateEvalEvent_setSignaledValue";
        break;
      case 2943:
        result = "kDYFEMTLLateEvalEvent_dealloc";
        break;
      case 2944:
        result = "kDYFEMTLLateEvalEvent_newSharedEventHandle";
        break;
      case 2945:
        result = "kDYFEMTLLibrary_setShaderValidationEnabled";
        break;
      case 2946:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion";
        break;
      case 2947:
        result = "kDYFEMTLRenderCommandEncoder_setMeshAccelerationStructure_atBufferIndex";
        break;
      case 2948:
        result = "kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTable_atBufferIndex";
        break;
      case 2949:
        result = "kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTables_withBufferRange";
        break;
      case 2950:
        result = "kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTable_atBufferIndex";
        break;
      case 2951:
        result = "kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTables_withBufferRange";
        break;
      case 2952:
        result = "kDYFEMTLRenderCommandEncoder_setObjectAccelerationStructure_atBufferIndex";
        break;
      case 2953:
        result = "kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTable_atBufferIndex";
        break;
      case 2954:
        result = "kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTables_withBufferRange";
        break;
      case 2955:
        result = "kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTable_atBufferIndex";
        break;
      case 2956:
        result = "kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTables_withBufferRange";
        break;
      case 2957:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_destinationBinaryArchive_error";
        break;
      case 2958:
        result = "kDYFEMTLBlitCommandEncoder_fillBuffer_range_pattern4";
        break;
      case 2959:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_bytes_length";
        break;
      case 2960:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_color";
        break;
      case 2961:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_color_pixelFormat";
        break;
      case 2962:
        result = "kDYFEMTLBlitCommandEncoder_invalidateCompressedTexture";
        break;
      case 2963:
        result = "kDYFEMTLBlitCommandEncoder_invalidateCompressedTexture_slice_level";
        break;
      case 2964:
        result = "kDYFEMTLDevice_newLibraryWithGraphs_functions_error";
        break;
      case 2965:
        result = "kDYFEMTLDevice_newLibraryWithGraphsSPI_functions_error";
        break;
      case 2966:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor";
        break;
      case 2967:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor";
        break;
      case 2968:
        result = "kDYFEMTLDevice_newAccelerationStructureWithBuffer_offset";
        break;
      case 2969:
        result = "kDYFEMTLRenderPipelineState_functionHandleWithFunction_stage";
        break;
      case 2970:
        result = "kDYFEMTLRenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage";
        break;
      case 2971:
        result = "kDYFEMTLRenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 2972:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableWithDescriptor_stage";
        break;
      case 2973:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex";
        break;
      case 2974:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentIntersectionFunctionTable_atBufferIndex";
        break;
      case 2975:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentIntersectionFunctionTables_withBufferRange";
        break;
      case 2976:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentVisibleFunctionTable_atBufferIndex";
        break;
      case 2977:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentVisibleFunctionTables_withBufferRange";
        break;
      case 2978:
        result = "kDYFEMTLRenderCommandEncoder_setTileAccelerationStructure_atBufferIndex";
        break;
      case 2979:
        result = "kDYFEMTLRenderCommandEncoder_setTileIntersectionFunctionTable_atBufferIndex";
        break;
      case 2980:
        result = "kDYFEMTLRenderCommandEncoder_setTileIntersectionFunctionTables_withBufferRange";
        break;
      case 2981:
        result = "kDYFEMTLRenderCommandEncoder_setTileVisibleFunctionTable_atBufferIndex";
        break;
      case 2982:
        result = "kDYFEMTLRenderCommandEncoder_setTileVisibleFunctionTables_withBufferRange";
        break;
      case 2983:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAccelerationStructure_atBufferIndex";
        break;
      case 2984:
        result = "kDYFEMTLRenderCommandEncoder_setVertexIntersectionFunctionTable_atBufferIndex";
        break;
      case 2985:
        result = "kDYFEMTLRenderCommandEncoder_setVertexIntersectionFunctionTables_withBufferRange";
        break;
      case 2986:
        result = "kDYFEMTLRenderCommandEncoder_setVertexVisibleFunctionTable_atBufferIndex";
        break;
      case 2987:
        result = "kDYFEMTLRenderCommandEncoder_setVertexVisibleFunctionTables_withBufferRange";
        break;
      case 2988:
        result = "kDYFEMTLRenderPipelineState_fragmentFunctionHandleWithFunction";
        break;
      case 2989:
        result = "kDYFEMTLRenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor";
        break;
      case 2990:
        result = "kDYFEMTLRenderPipelineState_newTileIntersectionFunctionTableWithDescriptor";
        break;
      case 2991:
        result = "kDYFEMTLRenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor";
        break;
      case 2992:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor";
        break;
      case 2993:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor";
        break;
      case 2994:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor";
        break;
      case 2995:
        result = "kDYFEMTLRenderPipelineState_tileFunctionHandleWithFunction";
        break;
      case 2996:
        result = "kDYFEMTLRenderPipelineState_vertexFunctionHandleWithFunction";
        break;
      case 2997:
        result = "kDYFEMTLDevice_newLibraryWithDescriptor_error";
        break;
      case 2998:
        result = "kDYFEMTLDevice_newLibraryWithDescriptorSPI_error";
        break;
      case 2999:
        result = "kDYFEMTLDevice_getBVHBuilderLock";
        break;
      case 3000:
        result = "kDYFEMTLDevice_getRawBVHBuilderPtr";
        break;
      case 3001:
        result = "kDYFEMTLDevice_setRawBVHBuilderPtr";
        break;
      case 3002:
        result = "kDYFEMTLDevice_newFunctionWithGLCoreIR_functionType";
        break;
      case 3003:
        result = "kDYFEMTLDevice_newFunctionWithGLCoreIR_inputsDescription_functionType";
        break;
      case 3004:
        result = "kDYFEMTLDevice_newFunctionWithGLESIR_functionType";
        break;
      case 3005:
        result = "kDYFEMTLDevice_newFunctionWithGLESIR_inputsDescription_functionType";
        break;
      case 3006:
        result = "kDYFEMTLBinaryArchive_addLibraryWithDescriptor_error";
        break;
      case 3007:
        result = "kDYFEMTLDevice_newLibraryWithDescriptor_completionHandler";
        break;
      case 3008:
        result = "kDYFEMTLLateEvalEvent_waitUntilSignaledValue_timeoutMS";
        break;
      case 3009:
        result = "kDYFEMTLLibrary_serializeToURL_error";
        break;
      case 3010:
        result = "kDYFEMTLSharedEvent_waitUntilSignaledValue_timeoutMS";
        break;
      case 3011:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptor_completionHandler";
        break;
      case 3012:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptor_error";
        break;
      case 3013:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptorSPI_error";
        break;
      case 3014:
        result = "kDYFEMTLDevice_deserializeInstanceAccelerationStructureFromBytes_primitiveAccelerationStructures_withDescriptor";
        break;
      case 3015:
        result = "kDYFEMTLDevice_deserializePrimitiveAccelerationStructureFromBytes_withDescriptor";
        break;
      case 3016:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3017:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3018:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3019:
        result = "kDYFEMTLRenderPipelineState_setUsesMeshShaderEmulation";
        break;
      case 3020:
        result = "kDYFEMTLRasterizationRateMap_formattedDescription";
        break;
      case 3021:
        result = "kDYFEMTLRasterizationRateMap_resetUsingDescriptor";
        break;
      case 3022:
        result = "kDYFEMTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_values_indices_count";
        break;
      case 3023:
        result = "kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 3024:
        result = "kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 3025:
        result = "kDYFEMTLBinaryArchive_storeMeshRenderPipelineDescriptor";
        break;
      case 3026:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler";
        break;
      case 3027:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_error";
        break;
      case 3028:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler";
        break;
      case 3029:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_reflection_error";
        break;
      case 3030:
        result = "kDYFEMTLDevice_writeMeshShaderEmulatorDataStructureHeader_meshShaderPSO_scalingFactor";
        break;
      case 3031:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBuffer_offset_atIndex";
        break;
      case 3032:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBufferOffset_atIndex";
        break;
      case 3033:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBuffers_offsets_withRange";
        break;
      case 3034:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBytes_length_atIndex";
        break;
      case 3035:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerState_atIndex";
        break;
      case 3036:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 3037:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 3038:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerStates_withRange";
        break;
      case 3039:
        result = "kDYFEMTLRenderCommandEncoder_setMeshTexture_atIndex";
        break;
      case 3040:
        result = "kDYFEMTLRenderCommandEncoder_setMeshTextures_withRange";
        break;
      case 3041:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBuffer_offset_atIndex";
        break;
      case 3042:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBufferOffset_atIndex";
        break;
      case 3043:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBuffers_offsets_withRange";
        break;
      case 3044:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBytes_length_atIndex";
        break;
      case 3045:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerState_atIndex";
        break;
      case 3046:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 3047:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 3048:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerStates_withRange";
        break;
      case 3049:
        result = "kDYFEMTLRenderCommandEncoder_setObjectTexture_atIndex";
        break;
      case 3050:
        result = "kDYFEMTLRenderCommandEncoder_setObjectTextures_withRange";
        break;
      case 3051:
        result = "kDYFEMTLRenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 3052:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshMaxPrimitiveCount";
        break;
      case 3053:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshMaxVertexCount";
        break;
      case 3054:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshShaderIntermediateBufferSlot";
        break;
      case 3055:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshShaderPSO";
        break;
      case 3056:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshSize";
        break;
      case 3057:
        result = "kDYFEMTLRenderPipelineState_setEmulationObjectShaderIntermediateBufferSlot";
        break;
      case 3058:
        result = "kDYFEMTLRenderPipelineState_setEmulationObjectShaderPSO";
        break;
      case 3059:
        result = "kDYFEMTLRenderPipelineState_setEmulationVertexShaderIntermediateBufferSlot";
        break;
      case 3060:
        result = "kDYFEMTLRenderPipelineState_meshFunctionHandleWithFunction";
        break;
      case 3061:
        result = "kDYFEMTLRenderPipelineState_newMeshIntersectionFunctionTableWithDescriptor";
        break;
      case 3062:
        result = "kDYFEMTLRenderPipelineState_newObjectIntersectionFunctionTableWithDescriptor";
        break;
      case 3063:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromMeshStageWithDescriptor";
        break;
      case 3064:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromObjectStageWithDescriptor";
        break;
      case 3065:
        result = "kDYFEMTLRenderPipelineState_objectFunctionHandleWithFunction";
        break;
      case 3066:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options";
        break;
      case 3067:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeAccelerationStructureSerializationData_toBuffer_offset";
        break;
      case 3068:
        result = "kDYFEMTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor";
        break;
      case 3069:
        result = "kDYFEMTLDevice_deserializeInstanceAccelerationStructure_fromBytes_primitiveAccelerationStructures_withDescriptor";
        break;
      case 3070:
        result = "kDYFEMTLDevice_deserializePrimitiveAccelerationStructure_fromBytes_withDescriptor";
        break;
      case 3071:
        result = "kDYFEMTLDevice_heapAccelerationStructureSizeAndAlignWithDescriptor";
        break;
      case 3072:
        result = "kDYFEMTLDevice_heapAccelerationStructureSizeAndAlignWithSize";
        break;
      case 3073:
        result = "kDYFEMTLDevice_newAccelerationStructureWithBuffer_offset_resourceIndex";
        break;
      case 3074:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize_withDescriptor";
        break;
      case 3075:
        result = "kDYFEMTLBuffer__aneIOSurface";
        break;
      case 3076:
        result = "kDYFEMTLHeap_newAccelerationStructureWithDescriptor";
        break;
      case 3077:
        result = "kDYFEMTLHeap_newAccelerationStructureWithDescriptor_offset";
        break;
      case 3078:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize";
        break;
      case 3079:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_offset";
        break;
      case 3080:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_offset_resourceIndex";
        break;
      case 3081:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_resourceIndex";
        break;
      case 3082:
        result = "kDYFEMTLDevice_newIOCommandQueueWithDescriptor_error";
        break;
      case 3083:
        result = "kDYFEMTLDevice_newIOHandleWithURL_compressionType_error";
        break;
      case 3084:
        result = "kDYFEMTLDevice_newIOHandleWithURL_error";
        break;
      case 3085:
        result = "kDYFEMTLDevice_newPerformanceStateAssertion_error";
        break;
      case 3086:
        result = "kDYFEMTLIOCommandBuffer_setStatus";
        break;
      case 3087:
        result = "kDYFEMTLIOCommandBuffer_addCompletedHandler";
        break;
      case 3088:
        result = "kDYFEMTLIOCommandBuffer_barrier";
        break;
      case 3089:
        result = "kDYFEMTLIOCommandBuffer_commit";
        break;
      case 3090:
        result = "kDYFEMTLIOCommandBuffer_copyStatusToBuffer_offset";
        break;
      case 3091:
        result = "kDYFEMTLIOCommandBuffer_dealloc";
        break;
      case 3092:
        result = "kDYFEMTLIOCommandBuffer_encodeSignalEvent_value";
        break;
      case 3093:
        result = "kDYFEMTLIOCommandBuffer_encodeWaitForEvent_value";
        break;
      case 3094:
        result = "kDYFEMTLIOCommandBuffer_loadBuffer_offset_size_handle_handleOffset";
        break;
      case 3095:
        result = "kDYFEMTLIOCommandBuffer_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset";
        break;
      case 3096:
        result = "kDYFEMTLIOCommandBuffer_tryCancel";
        break;
      case 3097:
        result = "kDYFEMTLIOCommandBuffer_waitUntilCompleted";
        break;
      case 3098:
        result = "kDYFEMTLIOCommandQueue_barrier";
        break;
      case 3099:
        result = "kDYFEMTLIOCommandQueue_commandBuffer";
        break;
      case 3100:
        result = "kDYFEMTLIOCommandQueue_dealloc";
        break;
      case 3101:
        result = "kDYFEMTLIOScratchBuffer_dealloc";
        break;
      case 3102:
        result = "kDYFEMTLIOScratchBufferAllocator_allocateScratchBufferWithMinimumSize";
        break;
      case 3103:
        result = "kDYFEMTLIOScratchBufferAllocator_dealloc";
        break;
      case 3104:
        result = "kDYFEMTLIOHandle_dealloc";
        break;
      case 3105:
        result = "kDYFEMTLBinaryArchive_getArchiveIDWithError";
        break;
      case 3106:
        result = "kDYFEMTLCommandBuffer_presentDrawable_options";
        break;
      case 3107:
        result = "kDYFEMTLEvent_setEnableBarrier";
        break;
      case 3108:
        result = "kDYFEMTLLateEvalEvent_setEnableBarrier";
        break;
      case 3109:
        result = "kDYFEMTLLibrary_bitCodeListForFunctions";
        break;
      case 3110:
        result = "kDYFEMTLLibrary_bitCodeWithHash";
        break;
      case 3111:
        result = "kDYFEMTLSharedEvent_setEnableBarrier";
        break;
      case 3112:
        result = "kDYFEMTLDeadlineProfile_dealloc";
        break;
      case 3113:
        result = "kDYFEMTLRenderPipelineState_setEmulationPrimitiveTopology";
        break;
      case 3114:
        result = "kDYFEMTLCommandBuffer_commitWithDeadline";
        break;
      case 3115:
        result = "kDYFEMTLDevice_newProfileWithExecutionSize";
        break;
      case 3116:
        result = "kDYFEMTLCommandBuffer_commitAndWaitUntilSubmittedWithDeadline";
        break;
      case 3117:
        result = "kDYFEMTLDevice_sparseTileSizeInBytesForSparsePageSize";
        break;
      case 3118:
        result = "kDYFEMTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount_sparsePageSize";
        break;
      case 3119:
        result = "kDYFEMTLIOCommandBuffer_setLabel";
        break;
      case 3120:
        result = "kDYFEMTLIOCommandBuffer_enqueue";
        break;
      case 3121:
        result = "kDYFEMTLIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset";
        break;
      case 3122:
        result = "kDYFEMTLIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset";
        break;
      case 3123:
        result = "kDYFEMTLIOCommandBuffer_signalEvent_value";
        break;
      case 3124:
        result = "kDYFEMTLIOCommandBuffer_waitForEvent_value";
        break;
      case 3125:
        result = "kDYFEMTLIOCommandQueue_setLabel";
        break;
      case 3126:
        result = "kDYFEMTLIOCommandQueue_commandBufferWithUnretainedReferences";
        break;
      case 3127:
        result = "kDYFEMTLIOHandle_setLabel";
        break;
      case 3128:
        result = "kDYFEMTLIOHandle_decompress_size_offset_stagingBuffer_stagingBufferSize";
        break;
      case 3129:
        result = "kDYFEMTLIOHandle_getHandleOffset_offset";
        break;
      case 3130:
        result = "kDYFEMTLIOHandle_read_size_offset_stagingBuffer_stagingBufferSize";
        break;
      case 3131:
        result = "kDYFEMTLIOHandle_readIntoStagingBuffer_offset_stagingBuffer_stagingBufferSize";
        break;
      case 3132:
        result = "kDYFEMTLIOHandle_stagingBufferSize_offset";
        break;
      case 3133:
        result = "kDYFEMTLIOScratchBufferAllocator_newScratchBufferWithMinimumSize";
        break;
      case 3134:
        result = "kDYFEMTLDevice_getMostCompatibleArchitecture";
        break;
      case 3135:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex";
        break;
      case 3136:
        result = "kDYFEMTLDevice_newIOHandleWithURL_compressionMethod_error";
        break;
      case 3137:
        result = "kDYFEMTLIOCommandBuffer_addBarrier";
        break;
      case 3138:
        result = "kDYFEMTLIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset";
        break;
      case 3139:
        result = "kDYFEMTLIOCommandBuffer_popDebugGroup";
        break;
      case 3140:
        result = "kDYFEMTLIOCommandBuffer_pushDebugGroup";
        break;
      case 3141:
        result = "kDYFEMTLIOCommandQueue_enqueueBarrier";
        break;
      case 3142:
        result = "kDYFEMTLIOFileHandle_setLabel";
        break;
      case 3143:
        result = "kDYFEMTLIOFileHandle_dealloc";
        break;
      case 3144:
        result = "kDYFEMTLRenderPipelineState_setEmulationPayloadMemoryLength";
        break;
      case 3145:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer_offset";
        break;
      case 3146:
        result = "kDYFEMTLCommandBuffer_encodeConditionalAbortEvent";
        break;
      case 3147:
        result = "kDYFEMTLCommandBuffer_encodeSignalEvent_value_agentMask";
        break;
      case 3148:
        result = "kDYFEMTLComputeCommandEncoder_setBuffer_offset_attributeStride_atIndex";
        break;
      case 3149:
        result = "kDYFEMTLComputeCommandEncoder_setBufferOffset_attributeStride_atIndex";
        break;
      case 3150:
        result = "kDYFEMTLComputeCommandEncoder_setBuffers_offsets_attributeStrides_withRange";
        break;
      case 3151:
        result = "kDYFEMTLComputeCommandEncoder_setBytes_length_attributeStride_atIndex";
        break;
      case 3152:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupDistributionMode";
        break;
      case 3153:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupDistributionModeWithClusterGroupIndex";
        break;
      case 3154:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupPackingDisabled";
        break;
      case 3155:
        result = "kDYFEMTLIndirectComputeCommand_setKernelBuffer_offset_attributeStride_atIndex";
        break;
      case 3156:
        result = "kDYFEMTLIndirectRenderCommand_setVertexBuffer_offset_attributeStride_atIndex";
        break;
      case 3157:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffer_offset_attributeStride_atIndex";
        break;
      case 3158:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBufferOffset_attributeStride_atIndex";
        break;
      case 3159:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffers_offsets_attributeStrides_withRange";
        break;
      case 3160:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBytes_length_attributeStride_atIndex";
        break;
      case 3161:
        result = "kDYFEMTLResourceStateCommandEncoder_moveTextureMappingsFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 3162:
        result = "kDYFEMTLDevice_setShouldMaximizeConcurrentCompilation";
        break;
      case 3163:
        result = "kDYFEMTLDevice_newEventWithOptions";
        break;
      case 3164:
        result = "kDYFEMTLDevice_newSharedEventWithOptions";
        break;
      case 3165:
        result = "kDYFEMTLDevice_setCompilerProcessesCount";
        break;
      case 3166:
        result = "kDYFEMTLIndirectRenderCommand_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3167:
        result = "kDYFEMTLIndirectRenderCommand_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3168:
        result = "kDYFEMTLIndirectRenderCommand_setMeshBuffer_offset_atIndex";
        break;
      case 3169:
        result = "kDYFEMTLIndirectRenderCommand_setObjectBuffer_offset_atIndex";
        break;
      case 3170:
        result = "kDYFEMTLIndirectRenderCommand_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 3171:
        result = "kDYFEMTLDevice_newArgumentEncoderWithBufferBinding";
        break;
      case 3172:
        result = "kDYFEMTLDevice_newIOFileHandleWithURL_compressionMethod_error";
        break;
      case 3173:
        result = "kDYFEMTLDevice_newIOFileHandleWithURL_error";
        break;
      case 3174:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_atIndex";
        break;
      case 3175:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_withRange";
        break;
      case 3176:
        result = "kDYFEMTLCommandBuffer_setPrivateLoggingBuffer";
        break;
      case 3177:
        result = "kDYFEMTLCommandBuffer_setResponsibleTaskIDs_count";
        break;
      case 3178:
        result = "kDYFEMTLCommandBuffer_useResidencySet";
        break;
      case 3179:
        result = "kDYFEMTLCommandBuffer_useResidencySets_count";
        break;
      case 3180:
        result = "kDYFEMTLCommandQueue_addResidencySet";
        break;
      case 3181:
        result = "kDYFEMTLCommandQueue_addResidencySets_count";
        break;
      case 3182:
        result = "kDYFEMTLCommandQueue_removeResidencySet";
        break;
      case 3183:
        result = "kDYFEMTLCommandQueue_removeResidencySets_count";
        break;
      case 3184:
        result = "kDYFEMTLComputeCommandEncoder_useResidencySet";
        break;
      case 3185:
        result = "kDYFEMTLComputeCommandEncoder_useResidencySets_count";
        break;
      case 3186:
        result = "kDYFEMTLDevice_setWritableHeapsEnabled";
        break;
      case 3187:
        result = "kDYFEMTLDevice_newResidencySetWithDescriptor_error";
        break;
      case 3188:
        result = "kDYFEMTLRenderCommandEncoder_useResidencySet";
        break;
      case 3189:
        result = "kDYFEMTLRenderCommandEncoder_useResidencySets_count";
        break;
      case 3190:
        result = "kDYFEMTLResidencySet_addHeap";
        break;
      case 3191:
        result = "kDYFEMTLResidencySet_addHeaps_count";
        break;
      case 3192:
        result = "kDYFEMTLResidencySet_addResource";
        break;
      case 3193:
        result = "kDYFEMTLResidencySet_addResources_count";
        break;
      case 3194:
        result = "kDYFEMTLResidencySet_commitAdds";
        break;
      case 3195:
        result = "kDYFEMTLResidencySet_commitRemoves";
        break;
      case 3196:
        result = "kDYFEMTLResidencySet_commitResidency";
        break;
      case 3197:
        result = "kDYFEMTLResidencySet_containsHeap";
        break;
      case 3198:
        result = "kDYFEMTLResidencySet_containsResource";
        break;
      case 3199:
        result = "kDYFEMTLResidencySet_countForHeap";
        break;
      case 3200:
        result = "kDYFEMTLResidencySet_countForResource";
        break;
      case 3201:
        result = "kDYFEMTLResidencySet_dealloc";
        break;
      case 3202:
        result = "kDYFEMTLResidencySet_endResidency";
        break;
      case 3203:
        result = "kDYFEMTLResidencySet_removeAllHeaps";
        break;
      case 3204:
        result = "kDYFEMTLResidencySet_removeAllResources";
        break;
      case 3205:
        result = "kDYFEMTLResidencySet_removeHeap";
        break;
      case 3206:
        result = "kDYFEMTLResidencySet_removeHeaps_count";
        break;
      case 3207:
        result = "kDYFEMTLResidencySet_removeResource";
        break;
      case 3208:
        result = "kDYFEMTLResidencySet_removeResources_count";
        break;
      case 3209:
        result = "kDYFEMTLResidencySet_requestResidency";
        break;
      case 3210:
        result = "kDYFEMTLResidencySet_setCurrentGeneration";
        break;
      case 3211:
        result = "kDYFEMTLResidencySet_setExpiredGeneration";
        break;
      case 3212:
        result = "kDYFEMTLResidencySet_commit";
        break;
      case 3213:
        result = "kDYFEMTLResidencySet_generationForHeap";
        break;
      case 3214:
        result = "kDYFEMTLResidencySet_generationForResource";
        break;
      case 3215:
        result = "kDYFEMTLCommandBuffer_encodeSignalEventScheduled_value";
        break;
      case 3216:
        result = "kDYFEMTLCommandBuffer_setPrivateData";
        break;
      case 3217:
        result = "kDYFEMTLCommandBuffer_setPrivateDataOffset";
        break;
      case 3218:
        result = "kDYFEMTLDevice_newLogStateWithDescriptor_error";
        break;
      case 3219:
        result = "kDYFEMTLLogState_dealloc";
        break;
      case 3220:
        result = "kDYFEMTLResidencySet_addAllocation";
        break;
      case 3221:
        result = "kDYFEMTLResidencySet_addAllocations_count";
        break;
      case 3222:
        result = "kDYFEMTLResidencySet_containsAllocation";
        break;
      case 3223:
        result = "kDYFEMTLResidencySet_generationForAllocation";
        break;
      case 3224:
        result = "kDYFEMTLResidencySet_removeAllAllocations";
        break;
      case 3225:
        result = "kDYFEMTLResidencySet_removeAllocation";
        break;
      case 3226:
        result = "kDYFEMTLResidencySet_removeAllocations_count";
        break;
      case 3227:
        result = "kDYFEMTLArgumentEncoder_setDepthStencilState_atIndex";
        break;
      case 3228:
        result = "kDYFEMTLArgumentEncoder_setDepthStencilStates_withRange";
        break;
      case 3229:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex_withCondition";
        break;
      case 3230:
        result = "kDYFEMTLDevice_functionHandleWithBinaryFunction";
        break;
      case 3231:
        result = "kDYFEMTLDevice_newArchiveWithURL_error";
        break;
      case 3232:
        result = "kDYFEMTLDevice_newArgumentTableWithDescriptor_error";
        break;
      case 3233:
        result = "kDYFEMTLDevice_newBufferWithLength_options_placementSparsePageSize";
        break;
      case 3234:
        result = "kDYFEMTLDevice_newCommandAllocator";
        break;
      case 3235:
        result = "kDYFEMTLDevice_newCommandAllocatorWithDescriptor_error";
        break;
      case 3236:
        result = "kDYFEMTLDevice_newCommandBuffer";
        break;
      case 3237:
        result = "kDYFEMTLDevice_newCommandQueue4";
        break;
      case 3238:
        result = "kDYFEMTLDevice_newCompilerWithDescriptor_error";
        break;
      case 3239:
        result = "kDYFEMTLDevice_newPipelineDataSetSerializerWithDescriptor";
        break;
      case 3240:
        result = "kDYFEMTLDevice_newLibraryWithData_name_error";
        break;
      case 3241:
        result = "kDYFEMTLDevice_newLibraryWithURL_name_error";
        break;
      case 3242:
        result = "kDYFEMTLDevice_newMTL4CommandQueue";
        break;
      case 3243:
        result = "kDYFEMTLDevice_newTextureViewPoolWithDescriptor_error";
        break;
      case 3244:
        result = "kDYFEMTL4Archive_setLabel";
        break;
      case 3245:
        result = "kDYFEMTL4Archive_dealloc";
        break;
      case 3246:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithDescriptor_error";
        break;
      case 3247:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithName_error";
        break;
      case 3248:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithDescriptor_error";
        break;
      case 3249:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithName_error";
        break;
      case 3250:
        result = "kDYFEMTL4ArgumentTable_dealloc";
        break;
      case 3251:
        result = "kDYFEMTL4ArgumentTable_setAddress_atIndex";
        break;
      case 3252:
        result = "kDYFEMTL4ArgumentTable_setResource_atBufferIndex";
        break;
      case 3253:
        result = "kDYFEMTL4ArgumentTable_setSamplerState_atIndex";
        break;
      case 3254:
        result = "kDYFEMTL4ArgumentTable_setTexture_atIndex";
        break;
      case 3255:
        result = "kDYFEMTL4BinaryFunction_dealloc";
        break;
      case 3256:
        result = "kDYFEMTL4CommandAllocator_allocatedSize";
        break;
      case 3257:
        result = "kDYFEMTL4CommandAllocator_dealloc";
        break;
      case 3258:
        result = "kDYFEMTL4CommandAllocator_reset";
        break;
      case 3259:
        result = "kDYFEMTL4CommandBuffer_beginCommandBufferWithAllocator";
        break;
      case 3260:
        result = "kDYFEMTL4CommandBuffer_beginCommandBufferWithAllocator_options";
        break;
      case 3261:
        result = "kDYFEMTL4CommandBuffer_computeCommandEncoder";
        break;
      case 3262:
        result = "kDYFEMTL4CommandBuffer_dealloc";
        break;
      case 3263:
        result = "kDYFEMTL4CommandBuffer_endCommandBuffer";
        break;
      case 3264:
        result = "kDYFEMTL4CommandBuffer_popDebugGroup";
        break;
      case 3265:
        result = "kDYFEMTL4CommandBuffer_pushDebugGroup";
        break;
      case 3266:
        result = "kDYFEMTL4CommandBuffer_renderCommandEncoderWithDescriptor";
        break;
      case 3267:
        result = "kDYFEMTL4CommandBuffer_renderCommandEncoderWithDescriptor_options";
        break;
      case 3268:
        result = "kDYFEMTL4CommandBuffer_status";
        break;
      case 3269:
        result = "kDYFEMTL4CommandBuffer_useResidencySet";
        break;
      case 3270:
        result = "kDYFEMTL4CommandBuffer_useResidencySets_count";
        break;
      case 3271:
        result = "kDYFEMTL4CommandQueue_addResidencySet";
        break;
      case 3272:
        result = "kDYFEMTL4CommandQueue_addResidencySets_count";
        break;
      case 3273:
        result = "kDYFEMTL4CommandQueue_barrierAfterQueueStages_beforeQueueStages_scope_error";
        break;
      case 3274:
        result = "kDYFEMTL4CommandQueue_commit_count_error";
        break;
      case 3275:
        result = "kDYFEMTL4CommandQueue_copyBufferMappingsFromBuffer_sourceOffsets_sourceLengths_numLengths_toBuffer_destinationOffsets";
        break;
      case 3276:
        result = "kDYFEMTL4CommandQueue_copyTextureMappingsFromTexture_sourceSlices_sourceLevels_sourceOrigins_sourceSizes_numSizes_toTexture_destinationSlices_destinationLevels_destinationOrigins";
        break;
      case 3277:
        result = "kDYFEMTL4CommandQueue_dealloc";
        break;
      case 3278:
        result = "kDYFEMTL4CommandQueue_presentDrawable";
        break;
      case 3279:
        result = "kDYFEMTL4CommandQueue_presentDrawable_afterMinimumDuration";
        break;
      case 3280:
        result = "kDYFEMTL4CommandQueue_presentDrawable_atTime";
        break;
      case 3281:
        result = "kDYFEMTL4CommandQueue_removeResidencySet";
        break;
      case 3282:
        result = "kDYFEMTL4CommandQueue_removeResidencySets_count";
        break;
      case 3283:
        result = "kDYFEMTL4CommandQueue_signalEvent_value_error";
        break;
      case 3284:
        result = "kDYFEMTL4CommandQueue_updateBufferMappings_numRegions_regions_heap_rangeModes_rangeOffsets";
        break;
      case 3285:
        result = "kDYFEMTL4CommandQueue_updateTextureMappings_numRegions_regions_levels_slices_heap_rangeModes_rangeOffsets";
        break;
      case 3286:
        result = "kDYFEMTL4CommandQueue_waitEvent_value_error";
        break;
      case 3287:
        result = "kDYFEMTL4Compiler_cancel";
        break;
      case 3288:
        result = "kDYFEMTL4Compiler_dealloc";
        break;
      case 3289:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3290:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_error";
        break;
      case 3291:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3292:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error";
        break;
      case 3293:
        result = "kDYFEMTL4Compiler_newDynamicLibrary_completionHandler";
        break;
      case 3294:
        result = "kDYFEMTL4Compiler_newDynamicLibrary_error";
        break;
      case 3295:
        result = "kDYFEMTL4Compiler_newDynamicLibraryWithURL_completionHandler";
        break;
      case 3296:
        result = "kDYFEMTL4Compiler_newDynamicLibraryWithURL_error";
        break;
      case 3297:
        result = "kDYFEMTL4Compiler_newLibraryWithDescriptor_completionHandler";
        break;
      case 3298:
        result = "kDYFEMTL4Compiler_newLibraryWithDescriptor_error";
        break;
      case 3299:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler";
        break;
      case 3300:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_error";
        break;
      case 3301:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3302:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error";
        break;
      case 3303:
        result = "kDYFEMTL4CompilerTask_dealloc";
        break;
      case 3304:
        result = "kDYFEMTL4CompilerTask_waitUntilComplete";
        break;
      case 3305:
        result = "kDYFEMTL4ComputeCommandEncoder_setLabel";
        break;
      case 3306:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_scope";
        break;
      case 3307:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_scope";
        break;
      case 3308:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_scope";
        break;
      case 3309:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierUpdate_afterEncoderStages_scope";
        break;
      case 3310:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierUpdate_afterQueueStages_scope";
        break;
      case 3311:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierWait_beforeEncoderStages_scope";
        break;
      case 3312:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierWait_beforeQueueStages_scope";
        break;
      case 3313:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 3314:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 3315:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size";
        break;
      case 3316:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTensor_sourceSlice_toTensor_destinationSlice";
        break;
      case 3317:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage";
        break;
      case 3318:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options";
        break;
      case 3319:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 3320:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount";
        break;
      case 3321:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_toTexture";
        break;
      case 3322:
        result = "kDYFEMTL4ComputeCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex";
        break;
      case 3323:
        result = "kDYFEMTL4ComputeCommandEncoder_dealloc";
        break;
      case 3324:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 3325:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_threadsPerThreadgroup";
        break;
      case 3326:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup";
        break;
      case 3327:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreadsWithIndirectBuffer";
        break;
      case 3328:
        result = "kDYFEMTL4ComputeCommandEncoder_endEncoding";
        break;
      case 3329:
        result = "kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer";
        break;
      case 3330:
        result = "kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 3331:
        result = "kDYFEMTL4ComputeCommandEncoder_fillBuffer_range_pattern4";
        break;
      case 3332:
        result = "kDYFEMTL4ComputeCommandEncoder_fillBuffer_range_value";
        break;
      case 3333:
        result = "kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_bytes_length";
        break;
      case 3334:
        result = "kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color";
        break;
      case 3335:
        result = "kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color_pixelFormat";
        break;
      case 3336:
        result = "kDYFEMTL4ComputeCommandEncoder_generateMipmapsForTexture";
        break;
      case 3337:
        result = "kDYFEMTL4ComputeCommandEncoder_insertDebugSignpost";
        break;
      case 3338:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForCPUAccess";
        break;
      case 3339:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForCPUAccess_slice_level";
        break;
      case 3340:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForGPUAccess";
        break;
      case 3341:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForGPUAccess_slice_level";
        break;
      case 3342:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeIndirectCommandBuffer_withRange";
        break;
      case 3343:
        result = "kDYFEMTL4ComputeCommandEncoder_popDebugGroup";
        break;
      case 3344:
        result = "kDYFEMTL4ComputeCommandEncoder_pushDebugGroup";
        break;
      case 3345:
        result = "kDYFEMTL4ComputeCommandEncoder_resetCommandsInBuffer_withRange";
        break;
      case 3346:
        result = "kDYFEMTL4ComputeCommandEncoder_setArgumentTable";
        break;
      case 3347:
        result = "kDYFEMTL4ComputeCommandEncoder_setComputePipelineState";
        break;
      case 3348:
        result = "kDYFEMTL4ComputeCommandEncoder_setImageblockWidth_height";
        break;
      case 3349:
        result = "kDYFEMTL4ComputeCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 3350:
        result = "kDYFEMTL4ComputeCommandEncoder_updateFence_afterEncoderStages";
        break;
      case 3351:
        result = "kDYFEMTL4ComputeCommandEncoder_waitForFence_beforeEncoderStages";
        break;
      case 3352:
        result = "kDYFEMTL4ComputePipelineState_dealloc";
        break;
      case 3353:
        result = "kDYFEMTL4ComputePipelineState_functionHandleWithBinaryFunction";
        break;
      case 3354:
        result = "kDYFEMTL4ComputePipelineState_functionHandleWithFunction";
        break;
      case 3355:
        result = "kDYFEMTL4ComputePipelineState_functionHandleWithName";
        break;
      case 3356:
        result = "kDYFEMTL4ComputePipelineState_getComputeKernelTelemetryID";
        break;
      case 3357:
        result = "kDYFEMTL4ComputePipelineState_imageblockMemoryLengthForDimensions";
        break;
      case 3358:
        result = "kDYFEMTL4ComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 3359:
        result = "kDYFEMTL4ComputePipelineState_newIntersectionFunctionTableWithDescriptor";
        break;
      case 3360:
        result = "kDYFEMTL4ComputePipelineState_newVisibleFunctionTableWithDescriptor";
        break;
      case 3361:
        result = "kDYFEMTL4PipelineDataSetSerializer_dealloc";
        break;
      case 3362:
        result = "kDYFEMTL4PipelineDataSetSerializer_serializeAsArchiveAndFlushToURL_error";
        break;
      case 3363:
        result = "kDYFEMTL4PipelineDataSetSerializer_serializeAsPipelinesScriptWithError";
        break;
      case 3364:
        result = "kDYFEMTL4RenderCommandEncoder_setLabel";
        break;
      case 3365:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_scope";
        break;
      case 3366:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_scope";
        break;
      case 3367:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_scope";
        break;
      case 3368:
        result = "kDYFEMTL4RenderCommandEncoder_barrierUpdate_afterEncoderStages_scope";
        break;
      case 3369:
        result = "kDYFEMTL4RenderCommandEncoder_barrierUpdate_afterQueueStages_scope";
        break;
      case 3370:
        result = "kDYFEMTL4RenderCommandEncoder_barrierWait_beforeEncoderStages_scope";
        break;
      case 3371:
        result = "kDYFEMTL4RenderCommandEncoder_barrierWait_beforeQueueStages_scope";
        break;
      case 3372:
        result = "kDYFEMTL4RenderCommandEncoder_dealloc";
        break;
      case 3373:
        result = "kDYFEMTL4RenderCommandEncoder_dispatchThreadsPerTile";
        break;
      case 3374:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength";
        break;
      case 3375:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount";
        break;
      case 3376:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount_baseVertex_baseInstance";
        break;
      case 3377:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferLength_indirectBuffer";
        break;
      case 3378:
        result = "kDYFEMTL4RenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3379:
        result = "kDYFEMTL4RenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3380:
        result = "kDYFEMTL4RenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3381:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_indirectBuffer";
        break;
      case 3382:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount";
        break;
      case 3383:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount";
        break;
      case 3384:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 3385:
        result = "kDYFEMTL4RenderCommandEncoder_endEncoding";
        break;
      case 3386:
        result = "kDYFEMTL4RenderCommandEncoder_executeCommandsInBuffer_indirectBuffer";
        break;
      case 3387:
        result = "kDYFEMTL4RenderCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 3388:
        result = "kDYFEMTL4RenderCommandEncoder_insertDebugSignpost";
        break;
      case 3389:
        result = "kDYFEMTL4RenderCommandEncoder_popDebugGroup";
        break;
      case 3390:
        result = "kDYFEMTL4RenderCommandEncoder_pushDebugGroup";
        break;
      case 3391:
        result = "kDYFEMTL4RenderCommandEncoder_setArgumentTable_atStages";
        break;
      case 3392:
        result = "kDYFEMTL4RenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 3393:
        result = "kDYFEMTL4RenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 3394:
        result = "kDYFEMTL4RenderCommandEncoder_setCullMode";
        break;
      case 3395:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 3396:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthClipMode";
        break;
      case 3397:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthStencilState";
        break;
      case 3398:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthStoreAction";
        break;
      case 3399:
        result = "kDYFEMTL4RenderCommandEncoder_setFrontFacingWinding";
        break;
      case 3400:
        result = "kDYFEMTL4RenderCommandEncoder_setLineWidth";
        break;
      case 3401:
        result = "kDYFEMTL4RenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 3402:
        result = "kDYFEMTL4RenderCommandEncoder_setRenderPipelineState";
        break;
      case 3403:
        result = "kDYFEMTL4RenderCommandEncoder_setColorAttachmentMap";
        break;
      case 3404:
        result = "kDYFEMTL4RenderCommandEncoder_setScissorRect";
        break;
      case 3405:
        result = "kDYFEMTL4RenderCommandEncoder_setScissorRects_count";
        break;
      case 3406:
        result = "kDYFEMTL4RenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 3407:
        result = "kDYFEMTL4RenderCommandEncoder_setStencilReferenceValue";
        break;
      case 3408:
        result = "kDYFEMTL4RenderCommandEncoder_setStencilStoreAction";
        break;
      case 3409:
        result = "kDYFEMTL4RenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 3410:
        result = "kDYFEMTL4RenderCommandEncoder_setTriangleFillMode";
        break;
      case 3411:
        result = "kDYFEMTL4RenderCommandEncoder_setVertexAmplificationCount_viewMappings";
        break;
      case 3412:
        result = "kDYFEMTL4RenderCommandEncoder_setViewport";
        break;
      case 3413:
        result = "kDYFEMTL4RenderCommandEncoder_setViewports_count";
        break;
      case 3414:
        result = "kDYFEMTL4RenderCommandEncoder_setVisibilityResultMode_offset";
        break;
      case 3415:
        result = "kDYFEMTL4RenderCommandEncoder_updateFence_afterEncoderStages";
        break;
      case 3416:
        result = "kDYFEMTL4RenderCommandEncoder_waitForFence_beforeEncoderStages";
        break;
      case 3417:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshMaxPrimitiveCount";
        break;
      case 3418:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshMaxVertexCount";
        break;
      case 3419:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshShaderIntermediateBufferSlot";
        break;
      case 3420:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshShaderPSO";
        break;
      case 3421:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshSize";
        break;
      case 3422:
        result = "kDYFEMTL4RenderPipelineState_setEmulationObjectShaderIntermediateBufferSlot";
        break;
      case 3423:
        result = "kDYFEMTL4RenderPipelineState_setEmulationObjectShaderPSO";
        break;
      case 3424:
        result = "kDYFEMTL4RenderPipelineState_setEmulationPayloadMemoryLength";
        break;
      case 3425:
        result = "kDYFEMTL4RenderPipelineState_setEmulationPrimitiveTopology";
        break;
      case 3426:
        result = "kDYFEMTL4RenderPipelineState_setEmulationVertexShaderIntermediateBufferSlot";
        break;
      case 3427:
        result = "kDYFEMTL4RenderPipelineState_setUsesMeshShaderEmulation";
        break;
      case 3428:
        result = "kDYFEMTL4RenderPipelineState_dealloc";
        break;
      case 3429:
        result = "kDYFEMTL4RenderPipelineState_fragmentFunctionHandleWithFunction";
        break;
      case 3430:
        result = "kDYFEMTL4RenderPipelineState_functionHandleWithBinaryFunction_stage";
        break;
      case 3431:
        result = "kDYFEMTL4RenderPipelineState_functionHandleWithFunction_stage";
        break;
      case 3432:
        result = "kDYFEMTL4RenderPipelineState_functionHandleWithName_stage";
        break;
      case 3433:
        result = "kDYFEMTL4RenderPipelineState_getFragmentShaderTelemetryID";
        break;
      case 3434:
        result = "kDYFEMTL4RenderPipelineState_getVertexShaderTelemetryID";
        break;
      case 3435:
        result = "kDYFEMTL4RenderPipelineState_imageblockMemoryLengthForDimensions";
        break;
      case 3436:
        result = "kDYFEMTL4RenderPipelineState_meshFunctionHandleWithFunction";
        break;
      case 3437:
        result = "kDYFEMTL4RenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor";
        break;
      case 3438:
        result = "kDYFEMTL4RenderPipelineState_newFragmentShaderDebugInfo";
        break;
      case 3439:
        result = "kDYFEMTL4RenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage";
        break;
      case 3440:
        result = "kDYFEMTL4RenderPipelineState_newMeshIntersectionFunctionTableWithDescriptor";
        break;
      case 3441:
        result = "kDYFEMTL4RenderPipelineState_newObjectIntersectionFunctionTableWithDescriptor";
        break;
      case 3442:
        result = "kDYFEMTL4RenderPipelineState_newRenderPipelineDescriptorForSpecialization";
        break;
      case 3443:
        result = "kDYFEMTL4RenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 3444:
        result = "kDYFEMTL4RenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_fragmentAdditionalBinaryFunctions_error";
        break;
      case 3445:
        result = "kDYFEMTL4RenderPipelineState_newTileIntersectionFunctionTableWithDescriptor";
        break;
      case 3446:
        result = "kDYFEMTL4RenderPipelineState_newTileRenderPipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 3447:
        result = "kDYFEMTL4RenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor";
        break;
      case 3448:
        result = "kDYFEMTL4RenderPipelineState_newVertexShaderDebugInfo";
        break;
      case 3449:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor";
        break;
      case 3450:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromMeshStageWithDescriptor";
        break;
      case 3451:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromObjectStageWithDescriptor";
        break;
      case 3452:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor";
        break;
      case 3453:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor";
        break;
      case 3454:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableWithDescriptor_stage";
        break;
      case 3455:
        result = "kDYFEMTL4RenderPipelineState_objectFunctionHandleWithFunction";
        break;
      case 3456:
        result = "kDYFEMTL4RenderPipelineState_reflectionForFunctionDescriptor";
        break;
      case 3457:
        result = "kDYFEMTL4RenderPipelineState_tileFunctionHandleWithFunction";
        break;
      case 3458:
        result = "kDYFEMTL4RenderPipelineState_vertexFunctionHandleWithFunction";
        break;
      case 3459:
        result = "kDYFEMTLTextureViewPool_copyResourceStatesFromPool_sourceRange_destinationIndex";
        break;
      case 3460:
        result = "kDYFEMTLTextureViewPool_dealloc";
        break;
      case 3461:
        result = "kDYFEMTLTextureViewPool_setBufferView_descriptor_offset_bytesPerRow_atIndex";
        break;
      case 3462:
        result = "kDYFEMTLTextureViewPool_setTextureView_atIndex";
        break;
      case 3463:
        result = "kDYFEMTLTextureViewPool_setTextureView_descriptor_atIndex";
        break;
      case 3464:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3465:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_insertSplit";
        break;
      case 3466:
        result = "kDYFEMTLBlitCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3467:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTensor_sourceSlice_toTensor_destinationSlice";
        break;
      case 3468:
        result = "kDYFEMTLBlitCommandEncoder_insertSplit";
        break;
      case 3469:
        result = "kDYFEMTLComputeCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3470:
        result = "kDYFEMTLComputeCommandEncoder_insertSplit";
        break;
      case 3471:
        result = "kDYFEMTLDevice_functionHandleWithFunction_resourceIndex";
        break;
      case 3472:
        result = "kDYFEMTLDevice_newTensorWithBuffer_descriptor_offset_strides_error";
        break;
      case 3473:
        result = "kDYFEMTLDevice_newTensorWithDescriptor_error";
        break;
      case 3474:
        result = "kDYFEMTLDevice_newTensorWithIOSurface_descriptor_plane_offset_strides_error";
        break;
      case 3475:
        result = "kDYFEMTLDevice_tensorSizeAndAlignWithDescriptor";
        break;
      case 3476:
        result = "kDYFEMTLParallelRenderCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3477:
        result = "kDYFEMTLParallelRenderCommandEncoder_insertSplit";
        break;
      case 3478:
        result = "kDYFEMTLRenderCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3479:
        result = "kDYFEMTLRenderCommandEncoder_insertSplit";
        break;
      case 3480:
        result = "kDYFEMTLResourceStateCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3481:
        result = "kDYFEMTLResourceStateCommandEncoder_insertSplit";
        break;
      case 3482:
        result = "kDYFEMTLTensor_setLabel";
        break;
      case 3483:
        result = "kDYFEMTLTensor_setResponsibleProcess";
        break;
      case 3484:
        result = "kDYFEMTLTensor_dealloc";
        break;
      case 3485:
        result = "kDYFEMTLTensor_doesAliasAllResources_count";
        break;
      case 3486:
        result = "kDYFEMTLTensor_doesAliasAnyResources_count";
        break;
      case 3487:
        result = "kDYFEMTLTensor_doesAliasResource";
        break;
      case 3488:
        result = "kDYFEMTLTensor_getBytes_strides_fromSlice";
        break;
      case 3489:
        result = "kDYFEMTLTensor_isAliasable";
        break;
      case 3490:
        result = "kDYFEMTLTensor_isComplete";
        break;
      case 3491:
        result = "kDYFEMTLTensor_isPurgeable";
        break;
      case 3492:
        result = "kDYFEMTLTensor_isTensorViewableWithReshapedDescriptor";
        break;
      case 3493:
        result = "kDYFEMTLTensor_isWriteComplete";
        break;
      case 3494:
        result = "kDYFEMTLTensor_makeAliasable";
        break;
      case 3495:
        result = "kDYFEMTLTensor_newTensorViewWithReshapedDescriptor_error";
        break;
      case 3496:
        result = "kDYFEMTLTensor_newTensorViewWithSlice_error";
        break;
      case 3497:
        result = "kDYFEMTLTensor_replaceSlice_withBytes_strides";
        break;
      case 3498:
        result = "kDYFEMTLTensor_setOwnerWithIdentity";
        break;
      case 3499:
        result = "kDYFEMTLTensor_setPurgeableState";
        break;
      case 3500:
        result = "kDYFEMTLTensor_waitUntilComplete";
        break;
      case 3501:
        result = "kDYFEMTLTensorBinding_dealloc";
        break;
      case 3502:
        result = "kDYFEMTLVideoCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3503:
        result = "kDYFEMTLVideoCommandEncoder_insertSplit";
        break;
      case 3504:
        result = "kDYFEMTLIndirectRenderCommand_setBlendColorRed_green_blue_alpha";
        break;
      case 3505:
        result = "kDYFEMTLIndirectRenderCommand_setCullMode";
        break;
      case 3506:
        result = "kDYFEMTLIndirectRenderCommand_setDepthBias_slopeScale_clamp";
        break;
      case 3507:
        result = "kDYFEMTLIndirectRenderCommand_setDepthClipMode";
        break;
      case 3508:
        result = "kDYFEMTLIndirectRenderCommand_setDepthStencilState";
        break;
      case 3509:
        result = "kDYFEMTLIndirectRenderCommand_setDepthTestMinBound_maxBound";
        break;
      case 3510:
        result = "kDYFEMTLIndirectRenderCommand_setFrontFacingWinding";
        break;
      case 3511:
        result = "kDYFEMTLIndirectRenderCommand_setScissorRect";
        break;
      case 3512:
        result = "kDYFEMTLIndirectRenderCommand_setScissorRects_count";
        break;
      case 3513:
        result = "kDYFEMTLIndirectRenderCommand_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 3514:
        result = "kDYFEMTLIndirectRenderCommand_setStencilReferenceValue";
        break;
      case 3515:
        result = "kDYFEMTLIndirectRenderCommand_setTriangleFillMode";
        break;
      case 3516:
        result = "kDYFEMTLIndirectRenderCommand_setViewport";
        break;
      case 3517:
        result = "kDYFEMTLIndirectRenderCommand_setViewports_count";
        break;
      case 3518:
        result = "kDYFEMTLRenderCommandEncoder_setDepthTestMinBound_maxBound";
        break;
      case 3519:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_options";
        break;
      case 3520:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_options";
        break;
      case 3521:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_options";
        break;
      case 3522:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_options";
        break;
      case 3523:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_options";
        break;
      case 3524:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_options";
        break;
      case 3525:
        result = "kDYFEMTL4CommandBuffer_setLabel";
        break;
      case 3526:
        result = "kDYFEMTL4CommandQueue_waitForEvent_value_error";
        break;
      case 3527:
        result = "kDYFEMTL4MachineLearningCommandEncoder_setLabel";
        break;
      case 3528:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_options";
        break;
      case 3529:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_scope";
        break;
      case 3530:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_options";
        break;
      case 3531:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_scope";
        break;
      case 3532:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_options";
        break;
      case 3533:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_scope";
        break;
      case 3534:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierUpdate_afterEncoderStages_scope";
        break;
      case 3535:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierUpdate_afterQueueStages_scope";
        break;
      case 3536:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierWait_beforeEncoderStages_scope";
        break;
      case 3537:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierWait_beforeQueueStages_scope";
        break;
      case 3538:
        result = "kDYFEMTL4MachineLearningCommandEncoder_dealloc";
        break;
      case 3539:
        result = "kDYFEMTL4MachineLearningCommandEncoder_dispatchNetworkWithIntermediatesHeap";
        break;
      case 3540:
        result = "kDYFEMTL4MachineLearningCommandEncoder_endEncoding";
        break;
      case 3541:
        result = "kDYFEMTL4MachineLearningCommandEncoder_insertDebugSignpost";
        break;
      case 3542:
        result = "kDYFEMTL4MachineLearningCommandEncoder_popDebugGroup";
        break;
      case 3543:
        result = "kDYFEMTL4MachineLearningCommandEncoder_pushDebugGroup";
        break;
      case 3544:
        result = "kDYFEMTL4MachineLearningCommandEncoder_setArgumentTable";
        break;
      case 3545:
        result = "kDYFEMTL4MachineLearningCommandEncoder_setPipelineState";
        break;
      case 3546:
        result = "kDYFEMTL4MachineLearningCommandEncoder_updateFence_afterEncoderStages";
        break;
      case 3547:
        result = "kDYFEMTL4MachineLearningCommandEncoder_waitForFence_beforeEncoderStages";
        break;
      case 3548:
        result = "kDYFEMTL4CommandBuffer_machineLearningCommandEncoder";
        break;
      case 3549:
        result = "kDYFEMTLComputePipelineState_functionHandleWithBinaryFunction";
        break;
      case 3550:
        result = "kDYFEMTLComputePipelineState_functionHandleWithName";
        break;
      case 3551:
        result = "kDYFEMTLRenderPipelineState_functionHandleWithBinaryFunction_stage";
        break;
      case 3552:
        result = "kDYFEMTLRenderPipelineState_functionHandleWithName_stage";
        break;
      case 3553:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_error";
        break;
      case 3554:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithName_dynamicLinkingDescriptor_error";
        break;
      case 3555:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_error";
        break;
      case 3556:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithName_dynamicLinkingDescriptor_error";
        break;
      case 3557:
        result = "kDYFEMTL4CommandBuffer_resolveCounterHeap_withRange_intoBuffer_atOffset_waitFence_updateFence";
        break;
      case 3558:
        result = "kDYFEMTL4CommandBuffer_writeTimestampIntoHeap_atIndex";
        break;
      case 3559:
        result = "kDYFEMTL4CommandQueue_signalDrawable_error";
        break;
      case 3560:
        result = "kDYFEMTL4CommandQueue_waitForDrawable_error";
        break;
      case 3561:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3562:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error";
        break;
      case 3563:
        result = "kDYFEMTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler";
        break;
      case 3564:
        result = "kDYFEMTL4Compiler_newMachineLearningPipelineStateWithDescriptor_error";
        break;
      case 3565:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error";
        break;
      case 3566:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_linkingDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3567:
        result = "kDYFEMTL4ComputeCommandEncoder_commandBatchIdOffset";
        break;
      case 3568:
        result = "kDYFEMTL4ComputeCommandEncoder_commandBatchIdRangeMin_max";
        break;
      case 3569:
        result = "kDYFEMTL4ComputeCommandEncoder_setToolsDispatchBufferSPI_atIndex";
        break;
      case 3570:
        result = "kDYFEMTL4ComputeCommandEncoder_writeTimestampWithGranularity_intoHeap_atIndex";
        break;
      case 3571:
        result = "kDYFEMTL4MachineLearningCommandEncoder_commandBatchIdOffset";
        break;
      case 3572:
        result = "kDYFEMTL4MachineLearningCommandEncoder_commandBatchIdRangeMin_max";
        break;
      case 3573:
        result = "kDYFEMTL4RenderCommandEncoder_commandBatchIdOffset";
        break;
      case 3574:
        result = "kDYFEMTL4RenderCommandEncoder_commandBatchIdRangeMin_max";
        break;
      case 3575:
        result = "kDYFEMTL4RenderCommandEncoder_setToolsDispatchBufferSPI_atIndex_stages";
        break;
      case 3576:
        result = "kDYFEMTL4RenderCommandEncoder_writeTimestampWithGranularity_afterStage_intoHeap_atIndex";
        break;
      case 3577:
        result = "kDYFEMTLTextureViewPool_copyResourceViewsFromPool_sourceRange_destinationIndex";
        break;
      case 3578:
        result = "kDYFEMTLComputeCommandEncoder_setToolsDispatchBufferSPI_atIndex";
        break;
      case 3579:
        result = "kDYFEMTLDevice_newCounterHeapWithDescriptor_error";
        break;
      case 3580:
        result = "kDYFEMTLDevice_queryTimestampFrequency";
        break;
      case 3581:
        result = "kDYFEMTLDevice_sizeOfCounterHeapEntry";
        break;
      case 3582:
        result = "kDYFEMTLLibrary_reflectionForFunctionWithName";
        break;
      case 3583:
        result = "kDYFEMTLRenderCommandEncoder_setColorAttachmentMap";
        break;
      case 3584:
        result = "kDYFEMTL4ArgumentTable_setAddress_attributeStride_atIndex";
        break;
      case 3585:
        result = "kDYFEMTL4CommandQueue_commit_count";
        break;
      case 3586:
        result = "kDYFEMTL4CommandQueue_commit_count_options";
        break;
      case 3587:
        result = "kDYFEMTL4CommandQueue_signalDrawable";
        break;
      case 3588:
        result = "kDYFEMTL4CommandQueue_signalEvent_value";
        break;
      case 3589:
        result = "kDYFEMTL4CommandQueue_waitForDrawable";
        break;
      case 3590:
        result = "kDYFEMTL4CommandQueue_waitForEvent_value";
        break;
      case 3591:
        result = "kDYFEMTL4ComputeCommandEncoder_stages";
        break;
      case 3592:
        result = "kDYFEMTLBuffer_newTensorWithDescriptor_offset_error";
        break;
      case 3593:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_resourceIndices_error";
        break;
      case 3594:
        result = "kDYFEMTLDevice_mtlTensorFromGpuResourceID";
        break;
      case 3595:
        result = "kDYFEMTLIndirectRenderCommand_setToolsDispatchBufferSPI_atIndex_stages";
        break;
      case 3596:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3597:
        result = "kDYFEMTLDevice_functionHandleWithFunction";
        break;
      case 3598:
        result = "kDYFEMTLDevice_newMTL4CommandQueueWithDescriptor_error";
        break;
      case 3599:
        result = "kDYFEMTL4CommandQueue_commit_count_options_error";
        break;
      case 3600:
        result = "kDYFEMTL4ComputeCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer";
        break;
      case 3601:
        result = "kDYFEMTL4ComputeCommandEncoder_copyAccelerationStructure_toAccelerationStructure";
        break;
      case 3602:
        result = "kDYFEMTL4ComputeCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure";
        break;
      case 3603:
        result = "kDYFEMTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer";
        break;
      case 3604:
        result = "kDYFEMTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_options";
        break;
      case 3605:
        result = "kDYFEMTL4ComputeCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer";
        break;
      case 3606:
        result = "kDYFEMTL4ComputeCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer";
        break;
      case 3607:
        result = "kDYFEMTL4MachineLearningPipelineState_dealloc";
        break;
      case 3608:
        result = "kDYFEMTL4Archive_newBinaryFunctionWithDescriptor_functionType_error";
        break;
      case 3609:
        result = "kDYFEMTL4CommandQueue_copyBufferMappingsFromBuffer_toBuffer_operations_count";
        break;
      case 3610:
        result = "kDYFEMTL4CommandQueue_copyTextureMappingsFromTexture_toTexture_operations_count";
        break;
      case 3611:
        result = "kDYFEMTL4CommandQueue_updateBufferMappings_heap_operations_count";
        break;
      case 3612:
        result = "kDYFEMTL4CommandQueue_updateTextureMappings_heap_operations_count";
        break;
      case 3613:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_functionType_compilerTaskOptions_completionHandler";
        break;
      case 3614:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_functionType_compilerTaskOptions_error";
        break;
      case 3615:
        result = "kDYFEMTL4Archive_newBinaryFunctionWithDescriptor_error";
        break;
      case 3616:
        result = "kDYFEMTL4CompilerTask_waitUntilCompleted";
        break;
      case 3617:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions";
        break;
      case 3618:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions";
        break;
      case 3619:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions";
        break;
      case 3620:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions";
        break;
      case 3621:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions";
        break;
      case 3622:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions";
        break;
      case 3623:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions";
        break;
      case 3624:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions";
        break;
      case 3625:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions";
        break;
      case 3626:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions";
        break;
      case 3627:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthTestMinBound_maxBound";
        break;
      case 3628:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions";
        break;
      case 3629:
        result = "kDYFEMTLTensor_replaceSliceOrigin_sliceDimensions_withBytes_strides";
        break;
      case 3630:
        result = "kDYFEMTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex";
        break;
      case 3631:
        result = "kDYFEMTLTexture_newTextureViewWithDescriptor";
        break;
      case 3632:
        result = "kDYFEMTLCommandBuffer___waitUntilCompletedAsync";
        break;
      case 3633:
        result = "kDYFEMTLCommandBuffer___waitUntilScheduledAsync";
        break;
      case 3634:
        result = "kDYFEMTL4CommandBuffer_resolveCounterHeap_withRange_intoBuffer_waitFence_updateFence";
        break;
      case 3635:
        result = "kDYFEMTLDevice_setRequiresLegacyCompilerProcessesCount";
        break;
      case 3636:
        result = "kDYFEMTLDevice_defaultCompilerProcessesCount";
        break;
      case 3637:
        result = "kDYFEMTLDevice_maximumCompilerProcessesCount";
        break;
      case 3638:
        result = "kDYFEMTLDevice_threadsPerCompilerProcess";
        break;
      default:
        switch("kDYFEMTLBlitCommandEncoder_setLabel")
        {
          case 0xFFFFB000:
            result = "kDYFEMTLFXSpatialScaler_setColorTexture";
            break;
          case 0xFFFFB001:
            result = "kDYFEMTLFXSpatialScaler_setFence";
            break;
          case 0xFFFFB002:
            result = "kDYFEMTLFXSpatialScaler_setInputContentHeight";
            break;
          case 0xFFFFB003:
            result = "kDYFEMTLFXSpatialScaler_setInputContentWidth";
            break;
          case 0xFFFFB004:
            result = "kDYFEMTLFXSpatialScaler_setOutputTexture";
            break;
          case 0xFFFFB005:
            result = "kDYFEMTLFXSpatialScaler_dealloc";
            break;
          case 0xFFFFB006:
            result = "kDYFEMTLFXSpatialScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB007:
            result = "kDYFEMTLFXTemporalScaler_setColorTexture";
            break;
          case 0xFFFFB008:
            result = "kDYFEMTLFXTemporalScaler_setDepthReversed";
            break;
          case 0xFFFFB009:
            result = "kDYFEMTLFXTemporalScaler_setDepthTexture";
            break;
          case 0xFFFFB00A:
            result = "kDYFEMTLFXTemporalScaler_setExposureTexture";
            break;
          case 0xFFFFB00B:
            result = "kDYFEMTLFXTemporalScaler_setFence";
            break;
          case 0xFFFFB00C:
            result = "kDYFEMTLFXTemporalScaler_setInputContentHeight";
            break;
          case 0xFFFFB00D:
            result = "kDYFEMTLFXTemporalScaler_setInputContentWidth";
            break;
          case 0xFFFFB00E:
            result = "kDYFEMTLFXTemporalScaler_setJitterOffsetX";
            break;
          case 0xFFFFB00F:
            result = "kDYFEMTLFXTemporalScaler_setJitterOffsetY";
            break;
          case 0xFFFFB010:
            result = "kDYFEMTLFXTemporalScaler_setMotionTexture";
            break;
          case 0xFFFFB011:
            result = "kDYFEMTLFXTemporalScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB012:
            result = "kDYFEMTLFXTemporalScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB013:
            result = "kDYFEMTLFXTemporalScaler_setOutputTexture";
            break;
          case 0xFFFFB014:
            result = "kDYFEMTLFXTemporalScaler_setPreExposure";
            break;
          case 0xFFFFB015:
            result = "kDYFEMTLFXTemporalScaler_setReset";
            break;
          case 0xFFFFB016:
            result = "kDYFEMTLFXTemporalScaler_dealloc";
            break;
          case 0xFFFFB017:
            result = "kDYFEMTLFXTemporalScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB018:
            result = "kDYFEMTLFXTemporalScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB019:
            result = "kDYFEMTLFXFrameInterpolator_setColorTexture";
            break;
          case 0xFFFFB01A:
            result = "kDYFEMTLFXFrameInterpolator_setDepthTexture";
            break;
          case 0xFFFFB01B:
            result = "kDYFEMTLFXFrameInterpolator_setFence";
            break;
          case 0xFFFFB01C:
            result = "kDYFEMTLFXFrameInterpolator_setMotionTexture";
            break;
          case 0xFFFFB01D:
            result = "kDYFEMTLFXFrameInterpolator_setMotionVectorScaleX";
            break;
          case 0xFFFFB01E:
            result = "kDYFEMTLFXFrameInterpolator_setMotionVectorScaleY";
            break;
          case 0xFFFFB01F:
            result = "kDYFEMTLFXFrameInterpolator_setOutputTexture";
            break;
          case 0xFFFFB020:
            result = "kDYFEMTLFXFrameInterpolator_setPrevColorTexture";
            break;
          case 0xFFFFB021:
            result = "kDYFEMTLFXFrameInterpolator_setReset";
            break;
          case 0xFFFFB022:
            result = "kDYFEMTLFXFrameInterpolator_dealloc";
            break;
          case 0xFFFFB023:
            result = "kDYFEMTLFXFrameInterpolator_encodeToCommandBuffer";
            break;
          case 0xFFFFB024:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setColorTexture";
            break;
          case 0xFFFFB025:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDepthReversed";
            break;
          case 0xFFFFB026:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDepthTexture";
            break;
          case 0xFFFFB027:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDiffuseAlbedoTexture";
            break;
          case 0xFFFFB028:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setExposureTexture";
            break;
          case 0xFFFFB029:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setFence";
            break;
          case 0xFFFFB02A:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setInputContentHeight";
            break;
          case 0xFFFFB02B:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setInputContentWidth";
            break;
          case 0xFFFFB02C:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setJitterOffsetX";
            break;
          case 0xFFFFB02D:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setJitterOffsetY";
            break;
          case 0xFFFFB02E:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setMotionTexture";
            break;
          case 0xFFFFB02F:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB030:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB031:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setNormalTexture";
            break;
          case 0xFFFFB032:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setOutputTexture";
            break;
          case 0xFFFFB033:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setPreExposure";
            break;
          case 0xFFFFB034:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB035:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setReset";
            break;
          case 0xFFFFB036:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setRoughnessTexture";
            break;
          case 0xFFFFB037:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setSpecularAlbedoTexture";
            break;
          case 0xFFFFB038:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setSpecularHitDistanceTexture";
            break;
          case 0xFFFFB039:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setViewToClipMatrix";
            break;
          case 0xFFFFB03A:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setWorldToViewMatrix";
            break;
          case 0xFFFFB03B:
            result = "kDYFEMTLFXTemporalDenoisedScaler_dealloc";
            break;
          case 0xFFFFB03C:
            result = "kDYFEMTLFXTemporalDenoisedScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB03D:
            result = "kDYFEMTL4FXFrameInterpolator_setColorTexture";
            break;
          case 0xFFFFB03E:
            result = "kDYFEMTL4FXFrameInterpolator_setDepthReversed";
            break;
          case 0xFFFFB03F:
            result = "kDYFEMTL4FXFrameInterpolator_setDepthTexture";
            break;
          case 0xFFFFB040:
            result = "kDYFEMTL4FXFrameInterpolator_setFence";
            break;
          case 0xFFFFB041:
            result = "kDYFEMTL4FXFrameInterpolator_setMaskTexture";
            break;
          case 0xFFFFB042:
            result = "kDYFEMTL4FXFrameInterpolator_setMotionTexture";
            break;
          case 0xFFFFB043:
            result = "kDYFEMTL4FXFrameInterpolator_setMotionVectorScaleX";
            break;
          case 0xFFFFB044:
            result = "kDYFEMTL4FXFrameInterpolator_setMotionVectorScaleY";
            break;
          case 0xFFFFB045:
            result = "kDYFEMTL4FXFrameInterpolator_setOutputTexture";
            break;
          case 0xFFFFB046:
            result = "kDYFEMTL4FXFrameInterpolator_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB047:
            result = "kDYFEMTL4FXFrameInterpolator_setPrevColorTexture";
            break;
          case 0xFFFFB048:
            result = "kDYFEMTL4FXFrameInterpolator_setReset";
            break;
          case 0xFFFFB049:
            result = "kDYFEMTL4FXFrameInterpolator_dealloc";
            break;
          case 0xFFFFB04A:
            result = "kDYFEMTL4FXFrameInterpolator_encodeToCommandBuffer";
            break;
          case 0xFFFFB04B:
            result = "kDYFEMTL4FXSpatialScaler_setColorTexture";
            break;
          case 0xFFFFB04C:
            result = "kDYFEMTL4FXSpatialScaler_setFence";
            break;
          case 0xFFFFB04D:
            result = "kDYFEMTL4FXSpatialScaler_setInputContentHeight";
            break;
          case 0xFFFFB04E:
            result = "kDYFEMTL4FXSpatialScaler_setInputContentWidth";
            break;
          case 0xFFFFB04F:
            result = "kDYFEMTL4FXSpatialScaler_setOutputTexture";
            break;
          case 0xFFFFB050:
            result = "kDYFEMTL4FXSpatialScaler_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB051:
            result = "kDYFEMTL4FXSpatialScaler_dealloc";
            break;
          case 0xFFFFB052:
            result = "kDYFEMTL4FXSpatialScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB053:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setColorTexture";
            break;
          case 0xFFFFB054:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDenoiseStrengthMaskTexture";
            break;
          case 0xFFFFB055:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDepthReversed";
            break;
          case 0xFFFFB056:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDepthTexture";
            break;
          case 0xFFFFB057:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDiffuseAlbedoTexture";
            break;
          case 0xFFFFB058:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setExposureTexture";
            break;
          case 0xFFFFB059:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setFence";
            break;
          case 0xFFFFB05A:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setInputContentHeight";
            break;
          case 0xFFFFB05B:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setInputContentWidth";
            break;
          case 0xFFFFB05C:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setJitterOffsetX";
            break;
          case 0xFFFFB05D:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setJitterOffsetY";
            break;
          case 0xFFFFB05E:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setMotionTexture";
            break;
          case 0xFFFFB05F:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB060:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB061:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setNormalTexture";
            break;
          case 0xFFFFB062:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setOutputTexture";
            break;
          case 0xFFFFB063:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB064:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setPreExposure";
            break;
          case 0xFFFFB065:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setPreUpscaleComposeTexture";
            break;
          case 0xFFFFB066:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB067:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setReset";
            break;
          case 0xFFFFB068:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setRoughnessTexture";
            break;
          case 0xFFFFB069:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setSpecularAlbedoTexture";
            break;
          case 0xFFFFB06A:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setSpecularHitDistanceTexture";
            break;
          case 0xFFFFB06B:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setViewToClipMatrix";
            break;
          case 0xFFFFB06C:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setWorldToViewMatrix";
            break;
          case 0xFFFFB06D:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_dealloc";
            break;
          case 0xFFFFB06E:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB06F:
            result = "kDYFEMTL4FXTemporalScaler_setColorTexture";
            break;
          case 0xFFFFB070:
            result = "kDYFEMTL4FXTemporalScaler_setDepthReversed";
            break;
          case 0xFFFFB071:
            result = "kDYFEMTL4FXTemporalScaler_setDepthTexture";
            break;
          case 0xFFFFB072:
            result = "kDYFEMTL4FXTemporalScaler_setExposureTexture";
            break;
          case 0xFFFFB073:
            result = "kDYFEMTL4FXTemporalScaler_setFence";
            break;
          case 0xFFFFB074:
            result = "kDYFEMTL4FXTemporalScaler_setInputContentHeight";
            break;
          case 0xFFFFB075:
            result = "kDYFEMTL4FXTemporalScaler_setInputContentWidth";
            break;
          case 0xFFFFB076:
            result = "kDYFEMTL4FXTemporalScaler_setJitterOffsetX";
            break;
          case 0xFFFFB077:
            result = "kDYFEMTL4FXTemporalScaler_setJitterOffsetY";
            break;
          case 0xFFFFB078:
            result = "kDYFEMTL4FXTemporalScaler_setMotionTexture";
            break;
          case 0xFFFFB079:
            result = "kDYFEMTL4FXTemporalScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB07A:
            result = "kDYFEMTL4FXTemporalScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB07B:
            result = "kDYFEMTL4FXTemporalScaler_setOutputTexture";
            break;
          case 0xFFFFB07C:
            result = "kDYFEMTL4FXTemporalScaler_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB07D:
            result = "kDYFEMTL4FXTemporalScaler_setPreExposure";
            break;
          case 0xFFFFB07E:
            result = "kDYFEMTL4FXTemporalScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB07F:
            result = "kDYFEMTL4FXTemporalScaler_setReset";
            break;
          case 0xFFFFB080:
            result = "kDYFEMTL4FXTemporalScaler_dealloc";
            break;
          case 0xFFFFB081:
            result = "kDYFEMTL4FXTemporalScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB082:
            result = "kDYFEMTLFXFrameInterpolator_setDepthReversed";
            break;
          case 0xFFFFB083:
            result = "kDYFEMTLFXFrameInterpolator_setMaskTexture";
            break;
          case 0xFFFFB084:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDenoiseStrengthMaskTexture";
            break;
          case 0xFFFFB085:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setPreUpscaleComposeTexture";
            break;
          case 0xFFFFB086:
            result = "kDYFEMTLFXTemporalDenoisedScaler_encodeToCommandQueue";
            break;
          case 0xFFFFB087:
            result = "kDYFEMTL4FXFrameInterpolator_setAspectRatio";
            break;
          case 0xFFFFB088:
            result = "kDYFEMTL4FXFrameInterpolator_setDeltaTime";
            break;
          case 0xFFFFB089:
            result = "kDYFEMTL4FXFrameInterpolator_setFarPlane";
            break;
          case 0xFFFFB08A:
            result = "kDYFEMTL4FXFrameInterpolator_setFieldOfView";
            break;
          case 0xFFFFB08B:
            result = "kDYFEMTL4FXFrameInterpolator_setJitterOffsetX";
            break;
          case 0xFFFFB08C:
            result = "kDYFEMTL4FXFrameInterpolator_setJitterOffsetY";
            break;
          case 0xFFFFB08D:
            result = "kDYFEMTL4FXFrameInterpolator_setNearPlane";
            break;
          case 0xFFFFB08E:
            result = "kDYFEMTL4FXFrameInterpolator_setIsUITextureComposited";
            break;
          case 0xFFFFB08F:
            result = "kDYFEMTL4FXFrameInterpolator_setUITexture";
            break;
          case 0xFFFFB090:
            result = "kDYFEMTLFXFrameInterpolator_setAspectRatio";
            break;
          case 0xFFFFB091:
            result = "kDYFEMTLFXFrameInterpolator_setDeltaTime";
            break;
          case 0xFFFFB092:
            result = "kDYFEMTLFXFrameInterpolator_setFarPlane";
            break;
          case 0xFFFFB093:
            result = "kDYFEMTLFXFrameInterpolator_setFieldOfView";
            break;
          case 0xFFFFB094:
            result = "kDYFEMTLFXFrameInterpolator_setJitterOffsetX";
            break;
          case 0xFFFFB095:
            result = "kDYFEMTLFXFrameInterpolator_setJitterOffsetY";
            break;
          case 0xFFFFB096:
            result = "kDYFEMTLFXFrameInterpolator_setNearPlane";
            break;
          case 0xFFFFB097:
            result = "kDYFEMTLFXFrameInterpolator_setIsUITextureComposited";
            break;
          case 0xFFFFB098:
            result = "kDYFEMTLFXFrameInterpolator_setUITexture";
            break;
          case 0xFFFFB099:
            result = "kDYFEMTL4FXFrameInterpolator_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09A:
            result = "kDYFEMTL4FXSpatialScaler_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09B:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09C:
            result = "kDYFEMTL4FXTemporalScaler_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09D:
            result = "kDYFEMTL4FXFrameInterpolator_setResetHistory";
            break;
          case 0xFFFFB09E:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setResetHistory";
            break;
          case 0xFFFFB09F:
            result = "kDYFEMTLFXFrameInterpolator_setResetHistory";
            break;
          case 0xFFFFB0A0:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setResetHistory";
            break;
          case 0xFFFFB0A1:
            result = "kDYFEMTL4FXFrameInterpolator_setShouldResetHistory";
            break;
          case 0xFFFFB0A2:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setShouldResetHistory";
            break;
          case 0xFFFFB0A3:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setTransparencyOverlayTexture";
            break;
          case 0xFFFFB0A4:
            result = "kDYFEMTLFXFrameInterpolator_setShouldResetHistory";
            break;
          case 0xFFFFB0A5:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setShouldResetHistory";
            break;
          case 0xFFFFB0A6:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setTransparencyOverlayTexture";
            break;
          default:
            if ("kDYFEMTLBlitCommandEncoder_setLabel" != -12544)
            {
              goto LABEL_76;
            }

            result = "kDYFEMTLCommandQueue_continueCommandBuffer_retainReferences";
            break;
        }

        break;
    }
  }

  return result;
}