void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v57 = *(*(*a1 + 64) + 8 * a2 - 8);
  v68 = *(*a1 + 4);
  v60 = v57[1];
  v52 = v57[2];
  v61 = *(*(v60 + 456) + 8 * a5);
  v7 = (*(v61 + 12) & 1) != 0 || *v6 == 0;
  v56 = v7;
  v59 = *(v57[60] + 8 * a5);
  v8 = *(*(v52 + 456) + 8 * a5);
  v9 = *(v60 + 20);
  v78 = &v81;
  v79 = 2 * v9;
  v80 = 32;
  v82 = 0;
  if (2 * v9 >= 0x21)
  {
    v82 = operator new(8 * v9);
    v78 = v82;
    v80 = 2 * v9;
    v9 = *(v60 + 20);
  }

  v10 = 0;
  v73 = &v76;
  v74 = v9;
  v75 = 16;
  v77 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v77 = v10;
    v73 = v10;
    v75 = v9;
  }

  v63[0] = v60;
  v63[1] = v52;
  if (*(v60 + 8) >= 1)
  {
    v53 = v8;
    v11 = 0;
    v13 = v57;
    v12 = a3;
    v14 = v56;
    v15 = v59;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v61 + 12) + 4 * v11);
        v18 = (*(v61 + 18) + 4 * v17);
        v19 = *(v53[12] + 4 * v16);
        v20 = (v53[18] + 4 * v19);
        v21 = *v20;
        v22 = v53[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          v24 = (*a4 + 16 * v21);
          *v24 = 0;
          v24[1] = 0;
          *(*a4 + 16 * *v20) = vaddq_f32(*(*v12 + 16 * *v18), *(*a4 + 16 * *v20));
        }

        else if (*(v22 + v21))
        {
          v38 = v53[9];
          v39 = *(v38 + 2 * v16);
          if (*(v38 + 2 * v16))
          {
            v40 = 0;
            v41 = v22 + v19;
            v54 = v41;
            v55 = *(v61 + 21) + v17;
            do
            {
              v42 = *(*(v15 + 5) + 2 * (*(*(*(v15 + 4) + 96) + 4 * v16) + v40));
              if (v40 != v42)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v43 = v18[v42];
              v44 = v20[v40];
              v45 = (*a4 + 16 * v44);
              *v45 = 0;
              v45[1] = 0;
              if (!v14 && (*(v41 + v40) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v61, v11, v42, v69);
                if ((*(v55 + v42) & 0x10) != 0)
                {
                  if ((*(v55 + v42) & 0x20) != 0)
                  {
                    v49 = v42 == 0;
                    v48 = v11;
                  }

                  else
                  {
                    v48 = v11;
                    v49 = v42;
                  }

                  FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v59, v48, v49, v16);
                  v51 = 1.0 - FractionalWeight;
                  v47 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                  v46 = v51 * 0.125;
                }

                else
                {
                  v46 = 0.125;
                  v47 = 0.75;
                }

                v13 = v57;
                v12 = a3;
                v14 = v56;
                v15 = v59;
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v69[0]), v46);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v69[1]), v46);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v43), v47);
                v41 = v54;
              }

              else
              {
                *(*a4 + 16 * v44) = vaddq_f32(*(*v12 + 16 * v43), *(*a4 + 16 * v44));
              }

              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          v25 = *(*(v60 + 336) + 8 * v11);
          v62 = 0.0;
          v26 = v78;
          v27 = v78 + v25;
          *v69 = &v62;
          v70 = v78;
          v71 = v27;
          memset(v72, 0, 13);
          v64 = v11;
          v65 = v16;
          v66 = *(*(v63[0] + 336) + 8 * v11);
          v67 = *(*(v63[0] + 264) + 8 * v11);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v68, v63, v69, (*(*(v60 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v52 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v57;
          v12 = a3;
          v28 = *v18;
          v29 = *v20;
          v30 = (*a4 + 16 * v29);
          *v30 = 0;
          v30[1] = 0;
          if (v72[2] >= 1)
          {
            if ((v72[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v31 = *(v60 + 264);
            v32 = *(v31 + 8 * v11);
            if (v32 >= 1)
            {
              v33 = (*(v60 + 288) + 4 * *(v31 + 4 * ((2 * v11) | 1)));
              do
              {
                v34 = *v33++;
                v35 = *(v57[21] + 4 * v34);
                if (v35 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v36 = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * *(v53[12] + 4 * v35)), v36);
                --v32;
              }

              while (v32);
            }
          }

          if (v72[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v61, v11, v73);
            v13 = v57;
            v12 = a3;
            if (v25 >= 1)
            {
              for (i = 0; i != v25; ++i)
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * v73[i]), *(v26 + i * 4));
              }
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v12 + 16 * v28), v62);
          v14 = v56;
          v15 = v59;
        }
      }

      ++v11;
    }

    while (v11 < *(v60 + 8));
    v10 = v77;
  }

  operator delete(v10);
  operator delete(v82);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v54 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v47 = v8[2];
  v12 = *(*(v47 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v60;
  v57 = v60;
  v58 = v13;
  v59 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v57 = v15;
    v59 = v13;
    v14 = v15;
  }

  v53[0] = v62;
  v53[1] = 0;
  v53[2] = v14;
  memset(&v53[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v53[3]) = 2;
    LODWORD(v53[4]) = 0;
    v62[0] = 0x3F0000003F000000;
    v48 = 1;
  }

  else
  {
    v48 = 0;
  }

  v51 = v9;
  if (*(v9 + 4) >= 1)
  {
    v49 = v12;
    v50 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v49[18] + 4 * *(v49[12] + 4 * v17));
        if (*(v49[21] + *v18))
        {
          v39 = v49[9];
          v40 = *(v39 + 2 * v17);
          if (*(v39 + 2 * v17))
          {
            v41 = 0;
            do
            {
              v42 = *(*(v10 + 40) + 2 * (v41 + *(*(*(v10 + 32) + 96) + 4 * v17)));
              if (v41 != v42)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, v42, &v55);
              v43 = v18[v41];
              v44 = (*a4 + 16 * v43);
              *v44 = 0;
              v44[1] = 0;
              v45 = v56;
              v46.i64[0] = 0x3F0000003F000000;
              v46.i64[1] = 0x3F0000003F000000;
              *(*a4 + 16 * v43) = vmlaq_f32(*(*a4 + 16 * v43), v46, *(*a3 + 16 * v55));
              *(*a4 + 16 * v43) = vmlaq_f32(*(*a4 + 16 * v43), v46, *(*a3 + 16 * v45));
              ++v41;
            }

            while (v40 != v41);
          }
        }

        else
        {
          if ((v48 & 1) == 0)
          {
            v52 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v54, &v51, v53, v19, (*(*(v47 + 432) + 2 * v17) >> 7) & 0xF);
          }

          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v11, v16, 0, &v55);
          v20 = *v18;
          v21 = (*a4 + 16 * v20);
          *v21 = 0;
          v21[1] = 0;
          v22 = v56;
          v23 = v62[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v55), *v62);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v22), v23, 1);
          if (SLODWORD(v53[4]) >= 1)
          {
            v24 = (*(v9 + 144) + 8 * v16);
            v25 = *v24;
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = *(v9 + 168) + 4 * v24[1];
              do
              {
                v28 = *(v27 + 4 * v26);
                if (BYTE4(v53[4]) == 1)
                {
                  v29 = *(v50[21] + 4 * v28);
                  if (v29 == -1)
                  {
                    _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
                  }

                  v30 = (v49[12] + 4 * v29);
                  v31 = *a4;
                  v32 = *a4;
                }

                else
                {
                  v33 = (2 * v28) | 1;
                  v34 = *(v9 + 24);
                  v35 = (*(v9 + 72) + 4 * *(v34 + 4 * v33));
                  v36 = *(v34 + 8 * v28);
                  v37 = 1;
                  do
                  {
                    v38 = *v35++;
                    ++v37;
                  }

                  while (v16 != v38);
                  if (v37 < v36)
                  {
                    v36 = 0;
                  }

                  v30 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v33) + 4 * (v37 - v36));
                  v32 = *a4;
                  v31 = *a3;
                }

                *(v32 + 16 * v20) = vmlaq_n_f32(*(v32 + 16 * v20), *(v31 + 16 * *v30), *&v57[4 * v26++]);
              }

              while (v26 != v25);
            }
          }
        }
      }

      ++v16;
      v8 = v50;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, float32x4_t a6)
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v57 = *(*(*a1 + 64) + 8 * a2 - 8);
  v68 = *(*a1 + 4);
  v60 = v57[1];
  v52 = v57[2];
  v61 = *(*(v60 + 456) + 8 * a5);
  v8 = (*(v61 + 12) & 1) != 0 || *v7 == 0;
  v56 = v8;
  v59 = *(v57[60] + 8 * a5);
  v9 = *(*(v52 + 456) + 8 * a5);
  v10 = *(v60 + 20);
  v78 = &v81;
  v79 = 2 * v10;
  v80 = 32;
  v82 = 0;
  if (2 * v10 >= 0x21)
  {
    v82 = operator new(8 * v10);
    v78 = v82;
    v80 = 2 * v10;
    v10 = *(v60 + 20);
  }

  v11 = 0;
  v73 = &v76;
  v74 = v10;
  v75 = 16;
  v77 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v77 = v11;
    v73 = v11;
    v75 = v10;
  }

  v63[0] = v60;
  v63[1] = v52;
  if (*(v60 + 8) >= 1)
  {
    v53 = v9;
    v12 = 0;
    v14 = v57;
    v13 = a3;
    v15 = v56;
    v16 = v59;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v61 + 12) + 4 * v12);
        v19 = (*(v61 + 18) + 4 * v18);
        v20 = *(v53[12] + 4 * v17);
        v21 = (v53[18] + 4 * v20);
        v22 = *v21;
        v23 = v53[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          v25 = (*a4 + 16 * v22);
          *v25 = 0;
          v25[1] = 0;
          v26 = *v21;
          a6 = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * v26));
          *(*a4 + 16 * v26) = a6;
        }

        else if (*(v23 + v22))
        {
          v40 = v53[9];
          v41 = *(v40 + 2 * v17);
          if (*(v40 + 2 * v17))
          {
            v42 = 0;
            v43 = v23 + v20;
            v54 = v43;
            v55 = *(v61 + 21) + v18;
            do
            {
              v44 = *(*(v16 + 5) + 2 * (*(*(*(v16 + 4) + 96) + 4 * v17) + v42));
              if (v42 != v44)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v45 = v19[v44];
              v46 = v21[v42];
              v47 = (*a4 + 16 * v46);
              *v47 = 0;
              v47[1] = 0;
              if (!v15 && (*(v43 + v42) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v61, v12, v44, v69);
                if ((*(v55 + v44) & 0x10) != 0)
                {
                  if ((*(v55 + v44) & 0x20) != 0)
                  {
                    v50 = v44 == 0;
                    v49 = v12;
                  }

                  else
                  {
                    v49 = v12;
                    v50 = v44;
                  }

                  a6.f32[0] = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v59, v49, v50, v17);
                  v51 = 1.0 - a6.f32[0];
                  a6.f32[0] = a6.f32[0] + ((1.0 - a6.f32[0]) * 0.75);
                  v48 = v51 * 0.125;
                }

                else
                {
                  v48 = 0.125;
                  a6.i32[0] = 0.75;
                }

                v14 = v57;
                v13 = a3;
                v15 = v56;
                v16 = v59;
                *(*a4 + 16 * v46) = vmlaq_n_f32(*(*a4 + 16 * v46), *(*a3 + 16 * v69[0]), v48);
                *(*a4 + 16 * v46) = vmlaq_n_f32(*(*a4 + 16 * v46), *(*a3 + 16 * v69[1]), v48);
                *(*a4 + 16 * v46) = vmlaq_n_f32(*(*a4 + 16 * v46), *(*a3 + 16 * v45), a6.f32[0]);
                v43 = v54;
              }

              else
              {
                a6 = vaddq_f32(*(*v13 + 16 * v45), *(*a4 + 16 * v46));
                *(*a4 + 16 * v46) = a6;
              }

              ++v42;
            }

            while (v41 != v42);
          }
        }

        else
        {
          v27 = *(*(v60 + 336) + 8 * v12);
          v62 = 0.0;
          v28 = v78;
          v29 = v78 + v27;
          *v69 = &v62;
          v70 = v78;
          v71 = v29;
          memset(v72, 0, 13);
          v64 = v12;
          v65 = v17;
          v66 = *(*(v63[0] + 336) + 8 * v12);
          v67 = *(*(v63[0] + 264) + 8 * v12);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v68, v63, v69, (*(*(v60 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v52 + 432) + 2 * v17) >> 7) & 0xF, *a6.i64);
          v14 = v57;
          v13 = a3;
          v30 = *v19;
          v31 = *v21;
          v32 = (*a4 + 16 * v31);
          *v32 = 0;
          v32[1] = 0;
          if (v72[2] >= 1)
          {
            if ((v72[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v33 = *(v60 + 264);
            v34 = *(v33 + 8 * v12);
            if (v34 >= 1)
            {
              v35 = (*(v60 + 288) + 4 * *(v33 + 4 * ((2 * v12) | 1)));
              do
              {
                v36 = *v35++;
                v37 = *(v57[21] + 4 * v36);
                if (v37 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v38 = *v29++;
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a4 + 16 * *(v53[12] + 4 * v37)), v38);
                --v34;
              }

              while (v34);
            }
          }

          if (v72[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v61, v12, v73);
            v14 = v57;
            v13 = a3;
            if (v27 >= 1)
            {
              for (i = 0; i != v27; ++i)
              {
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a3 + 16 * v73[i]), *(v28 + i * 4));
              }
            }
          }

          a6 = *(*v13 + 16 * v30);
          *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), a6, v62);
          v15 = v56;
          v16 = v59;
        }
      }

      ++v12;
    }

    while (v12 < *(v60 + 8));
    v11 = v77;
  }

  operator delete(v11);
  operator delete(v82);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = 0;
  v37 = *MEMORY[0x277D85DE8];
  v28 = *(*(*a1 + 64) + 8 * a2 - 8);
  v29 = v28[1];
  v9 = *(v28[60] + 8 * a5);
  v10 = *(*(v29 + 456) + 8 * a5);
  v11 = *(*(v28[2] + 456) + 8 * a5);
  v12 = *(v29 + 16);
  v32 = &v35;
  v33 = v12;
  v34 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v32 = v8;
    v34 = v12;
  }

  if (*(v29 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v28[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v11[18] + 4 * *(v11[12] + 4 * v14));
        if (*(v11[21] + *v15))
        {
          v20 = v11[9];
          v21 = *(v20 + 2 * v14);
          if (*(v20 + 2 * v14))
          {
            v22 = 0;
            do
            {
              v23 = *(*(v9 + 40) + 2 * (v22 + *(*(*(v9 + 32) + 96) + 4 * v14)));
              if (v22 != v23)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromEdgesILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, v23, &v30);
              v24 = v15[v22];
              v25 = (*a4 + 16 * v24);
              *v25 = 0;
              v25[1] = 0;
              v26 = v31;
              v27.i64[0] = 0x3F0000003F000000;
              v27.i64[1] = 0x3F0000003F000000;
              *(*a4 + 16 * v24) = vmlaq_f32(*(*a4 + 16 * v24), v27, *(*a3 + 16 * v30));
              *(*a4 + 16 * v24) = vmlaq_f32(*(*a4 + 16 * v24), v27, *(*a3 + 16 * v26));
              ++v22;
            }

            while (v21 != v22);
          }
        }

        else
        {
          OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getEdgeFaceValues(v10, v13, 0, &v30);
          v16 = *v15;
          v17 = (*a4 + 16 * v16);
          *v17 = 0;
          v17[1] = 0;
          v18 = v31;
          v19.i64[0] = 0x3F0000003F000000;
          v19.i64[1] = 0x3F0000003F000000;
          *(*a4 + 16 * v16) = vmlaq_f32(*(*a4 + 16 * v16), v19, *(*a3 + 16 * v30));
          *(*a4 + 16 * v16) = vmlaq_f32(*(*a4 + 16 * v16), v19, *(*a3 + 16 * v18));
        }
      }

      ++v13;
    }

    while (v13 < *(v29 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv4_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v51 = v6;
  v52 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v53 = *(*(v52 + 456) + 8 * a5);
  v10 = (*(v53 + 12) & 1) != 0 || **a1 == 0;
  v46 = v10;
  v11 = *(v8 + 8 * a5);
  v45 = *(v9 + 8 * a5);
  v12 = *(v52 + 20);
  v60 = &v63;
  v61 = 2 * v12;
  v62 = 32;
  v64 = 0;
  if (2 * v12 >= 0x21)
  {
    v64 = operator new(8 * v12);
    v60 = v64;
    v62 = 2 * v12;
    v12 = *(v52 + 20);
  }

  v13 = 0;
  v55 = &v58;
  v56 = v12;
  v57 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v55 = v13;
    v57 = v12;
  }

  if (*(v52 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v46;
    while (1)
    {
      v17 = *(v51[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v53 + 12) + 4 * v14);
        v19 = (*(v53 + 18) + 4 * v18);
        v20 = *(v45[12] + 4 * v17);
        v21 = (v45[18] + 4 * v20);
        v22 = *v21;
        v23 = v45[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          v25 = (*a4 + 16 * v22);
          *v25 = 0;
          v25[1] = 0;
          v26 = (*a4 + 16 * *v21);
          v27 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v29 = v45[9];
            v30 = *(v29 + 2 * v17);
            if (*(v29 + 2 * v17))
            {
              v31 = 0;
              v49 = *(v53 + 21) + v18;
              v50 = *(v29 + 2 * v17);
              v32 = v23 + v20;
              v48 = v23 + v20;
              do
              {
                v33 = *(*(v11 + 5) + 2 * (*(*(*(v11 + 4) + 96) + 4 * v17) + v31));
                if (v31 != v33)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v34 = v19[v33];
                v35 = v21[v31];
                v36 = (*a4 + 16 * v35);
                *v36 = 0;
                v36[1] = 0;
                if (!v16 && (*(v32 + v31) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v53, v14, v33, v54);
                  if ((*(v49 + v33) & 0x10) != 0)
                  {
                    if ((*(v49 + v33) & 0x20) != 0)
                    {
                      v41 = v33 == 0;
                      v39 = v11;
                      v40 = v14;
                    }

                    else
                    {
                      v39 = v11;
                      v40 = v14;
                      v41 = v33;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v39, v40, v41, v17);
                    v43 = 1.0 - FractionalWeight;
                    v38 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v37 = v43 * 0.125;
                  }

                  else
                  {
                    v37 = 0.125;
                    v38 = 0.75;
                  }

                  v15 = a3;
                  v16 = v46;
                  v30 = v50;
                  v44 = v54[1];
                  *(*a4 + 16 * v35) = vmlaq_n_f32(*(*a4 + 16 * v35), *(*a3 + 16 * v54[0]), v37);
                  *(*a4 + 16 * v35) = vmlaq_n_f32(*(*a4 + 16 * v35), *(*a3 + 16 * v44), v37);
                  *(*a4 + 16 * v35) = vmlaq_n_f32(*(*a4 + 16 * v35), *(*a3 + 16 * v34), v38);
                  v32 = v48;
                }

                else
                {
                  *(*a4 + 16 * v35) = vaddq_f32(*(*v15 + 16 * v34), *(*a4 + 16 * v35));
                }

                ++v31;
              }

              while (v30 != v31);
            }

            goto LABEL_19;
          }

          v27 = *v19;
          v28 = (*a4 + 16 * v22);
          *v28 = 0;
          v28[1] = 0;
          v26 = (*a4 + 16 * v22);
        }

        *v26 = vaddq_f32(*(*v15 + 16 * v27), *v26);
      }

LABEL_19:
      if (++v14 >= *(v52 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v64);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv4_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v57 = *(*(*a1 + 64) + 8 * a2 - 8);
  v68 = *(*a1 + 4);
  v60 = v57[1];
  v52 = v57[2];
  v61 = *(*(v60 + 456) + 8 * a5);
  v7 = (*(v61 + 12) & 1) != 0 || *v6 == 0;
  v56 = v7;
  v59 = *(v57[60] + 8 * a5);
  v8 = *(*(v52 + 456) + 8 * a5);
  v9 = *(v60 + 20);
  v78 = &v81;
  v79 = 2 * v9;
  v80 = 32;
  v82 = 0;
  if (2 * v9 >= 0x21)
  {
    v82 = operator new(8 * v9);
    v78 = v82;
    v80 = 2 * v9;
    v9 = *(v60 + 20);
  }

  v10 = 0;
  v73 = &v76;
  v74 = v9;
  v75 = 16;
  v77 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v77 = v10;
    v73 = v10;
    v75 = v9;
  }

  v63[0] = v60;
  v63[1] = v52;
  if (*(v60 + 8) >= 1)
  {
    v53 = v8;
    v11 = 0;
    v13 = v57;
    v12 = a3;
    v14 = v56;
    v15 = v59;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v61 + 12) + 4 * v11);
        v18 = (*(v61 + 18) + 4 * v17);
        v19 = *(v53[12] + 4 * v16);
        v20 = (v53[18] + 4 * v19);
        v21 = *v20;
        v22 = v53[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          v24 = (*a4 + 16 * v21);
          *v24 = 0;
          v24[1] = 0;
          *(*a4 + 16 * *v20) = vaddq_f32(*(*v12 + 16 * *v18), *(*a4 + 16 * *v20));
        }

        else if (*(v22 + v21))
        {
          v38 = v53[9];
          v39 = *(v38 + 2 * v16);
          if (*(v38 + 2 * v16))
          {
            v40 = 0;
            v41 = v22 + v19;
            v54 = v41;
            v55 = *(v61 + 21) + v17;
            do
            {
              v42 = *(*(v15 + 5) + 2 * (*(*(*(v15 + 4) + 96) + 4 * v16) + v40));
              if (v40 != v42)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v43 = v18[v42];
              v44 = v20[v40];
              v45 = (*a4 + 16 * v44);
              *v45 = 0;
              v45[1] = 0;
              if (!v14 && (*(v41 + v40) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v61, v11, v42, v69);
                if ((*(v55 + v42) & 0x10) != 0)
                {
                  if ((*(v55 + v42) & 0x20) != 0)
                  {
                    v49 = v42 == 0;
                    v48 = v11;
                  }

                  else
                  {
                    v48 = v11;
                    v49 = v42;
                  }

                  FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v59, v48, v49, v16);
                  v51 = 1.0 - FractionalWeight;
                  v47 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                  v46 = v51 * 0.125;
                }

                else
                {
                  v46 = 0.125;
                  v47 = 0.75;
                }

                v13 = v57;
                v12 = a3;
                v14 = v56;
                v15 = v59;
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v69[0]), v46);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v69[1]), v46);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v43), v47);
                v41 = v54;
              }

              else
              {
                *(*a4 + 16 * v44) = vaddq_f32(*(*v12 + 16 * v43), *(*a4 + 16 * v44));
              }

              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          v25 = *(*(v60 + 336) + 8 * v11);
          v62 = 0.0;
          v26 = v78;
          v27 = v78 + v25;
          *v69 = &v62;
          v70 = v78;
          v71 = v27;
          memset(v72, 0, 13);
          v64 = v11;
          v65 = v16;
          v66 = *(*(v63[0] + 336) + 8 * v11);
          v67 = *(*(v63[0] + 264) + 8 * v11);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v68, v63, v69, (*(*(v60 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v52 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v57;
          v12 = a3;
          v28 = *v18;
          v29 = *v20;
          v30 = (*a4 + 16 * v29);
          *v30 = 0;
          v30[1] = 0;
          if (v72[2] >= 1)
          {
            if ((v72[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v31 = *(v60 + 264);
            v32 = *(v31 + 8 * v11);
            if (v32 >= 1)
            {
              v33 = (*(v60 + 288) + 4 * *(v31 + 4 * ((2 * v11) | 1)));
              do
              {
                v34 = *v33++;
                v35 = *(v57[21] + 4 * v34);
                if (v35 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v36 = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * *(v53[12] + 4 * v35)), v36);
                --v32;
              }

              while (v32);
            }
          }

          if (v72[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v61, v11, v73);
            v13 = v57;
            v12 = a3;
            if (v25 >= 1)
            {
              for (i = 0; i != v25; ++i)
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * v73[i]), *(v26 + i * 4));
              }
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v12 + 16 * v28), v62);
          v14 = v56;
          v15 = v59;
        }
      }

      ++v11;
    }

    while (v11 < *(v60 + 8));
    v10 = v77;
  }

  operator delete(v10);
  operator delete(v82);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE2EP16C3DSubdivCPUDataIDv4_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5, float32x4_t a6)
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v57 = *(*(*a1 + 64) + 8 * a2 - 8);
  v68 = *(*a1 + 4);
  v60 = v57[1];
  v52 = v57[2];
  v61 = *(*(v60 + 456) + 8 * a5);
  v8 = (*(v61 + 12) & 1) != 0 || *v7 == 0;
  v56 = v8;
  v59 = *(v57[60] + 8 * a5);
  v9 = *(*(v52 + 456) + 8 * a5);
  v10 = *(v60 + 20);
  v78 = &v81;
  v79 = 2 * v10;
  v80 = 32;
  v82 = 0;
  if (2 * v10 >= 0x21)
  {
    v82 = operator new(8 * v10);
    v78 = v82;
    v80 = 2 * v10;
    v10 = *(v60 + 20);
  }

  v11 = 0;
  v73 = &v76;
  v74 = v10;
  v75 = 16;
  v77 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v77 = v11;
    v73 = v11;
    v75 = v10;
  }

  v63[0] = v60;
  v63[1] = v52;
  if (*(v60 + 8) >= 1)
  {
    v53 = v9;
    v12 = 0;
    v14 = v57;
    v13 = a3;
    v15 = v56;
    v16 = v59;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v61 + 12) + 4 * v12);
        v19 = (*(v61 + 18) + 4 * v18);
        v20 = *(v53[12] + 4 * v17);
        v21 = (v53[18] + 4 * v20);
        v22 = *v21;
        v23 = v53[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          v25 = (*a4 + 16 * v22);
          *v25 = 0;
          v25[1] = 0;
          v26 = *v21;
          a6 = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * v26));
          *(*a4 + 16 * v26) = a6;
        }

        else if (*(v23 + v22))
        {
          v40 = v53[9];
          v41 = *(v40 + 2 * v17);
          if (*(v40 + 2 * v17))
          {
            v42 = 0;
            v43 = v23 + v20;
            v54 = v43;
            v55 = *(v61 + 21) + v18;
            do
            {
              v44 = *(*(v16 + 5) + 2 * (*(*(*(v16 + 4) + 96) + 4 * v17) + v42));
              if (v42 != v44)
              {
                _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
              }

              v45 = v19[v44];
              v46 = v21[v42];
              v47 = (*a4 + 16 * v46);
              *v47 = 0;
              v47[1] = 0;
              if (!v15 && (*(v43 + v42) & 8) != 0)
              {
                OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v61, v12, v44, v69);
                if ((*(v55 + v44) & 0x10) != 0)
                {
                  if ((*(v55 + v44) & 0x20) != 0)
                  {
                    v50 = v44 == 0;
                    v49 = v12;
                  }

                  else
                  {
                    v49 = v12;
                    v50 = v44;
                  }

                  a6.f32[0] = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v59, v49, v50, v17);
                  v51 = 1.0 - a6.f32[0];
                  a6.f32[0] = a6.f32[0] + ((1.0 - a6.f32[0]) * 0.75);
                  v48 = v51 * 0.125;
                }

                else
                {
                  v48 = 0.125;
                  a6.i32[0] = 0.75;
                }

                v14 = v57;
                v13 = a3;
                v15 = v56;
                v16 = v59;
                *(*a4 + 16 * v46) = vmlaq_n_f32(*(*a4 + 16 * v46), *(*a3 + 16 * v69[0]), v48);
                *(*a4 + 16 * v46) = vmlaq_n_f32(*(*a4 + 16 * v46), *(*a3 + 16 * v69[1]), v48);
                *(*a4 + 16 * v46) = vmlaq_n_f32(*(*a4 + 16 * v46), *(*a3 + 16 * v45), a6.f32[0]);
                v43 = v54;
              }

              else
              {
                a6 = vaddq_f32(*(*v13 + 16 * v45), *(*a4 + 16 * v46));
                *(*a4 + 16 * v46) = a6;
              }

              ++v42;
            }

            while (v41 != v42);
          }
        }

        else
        {
          v27 = *(*(v60 + 336) + 8 * v12);
          v62 = 0.0;
          v28 = v78;
          v29 = v78 + v27;
          *v69 = &v62;
          v70 = v78;
          v71 = v29;
          memset(v72, 0, 13);
          v64 = v12;
          v65 = v17;
          v66 = *(*(v63[0] + 336) + 8 * v12);
          v67 = *(*(v63[0] + 264) + 8 * v12);
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v68, v63, v69, (*(*(v60 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v52 + 432) + 2 * v17) >> 7) & 0xF, *a6.i64);
          v14 = v57;
          v13 = a3;
          v30 = *v19;
          v31 = *v21;
          v32 = (*a4 + 16 * v31);
          *v32 = 0;
          v32[1] = 0;
          if (v72[2] >= 1)
          {
            if ((v72[3] & 1) == 0)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_2();
            }

            v33 = *(v60 + 264);
            v34 = *(v33 + 8 * v12);
            if (v34 >= 1)
            {
              v35 = (*(v60 + 288) + 4 * *(v33 + 4 * ((2 * v12) | 1)));
              do
              {
                v36 = *v35++;
                v37 = *(v57[21] + 4 * v36);
                if (v37 == -1)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_3();
                }

                v38 = *v29++;
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a4 + 16 * *(v53[12] + 4 * v37)), v38);
                --v34;
              }

              while (v34);
            }
          }

          if (v72[1] >= 1)
          {
            OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexEdgeValues(v61, v12, v73);
            v14 = v57;
            v13 = a3;
            if (v27 >= 1)
            {
              for (i = 0; i != v27; ++i)
              {
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a3 + 16 * v73[i]), *(v28 + i * 4));
              }
            }
          }

          a6 = *(*v13 + 16 * v30);
          *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), a6, v62);
          v15 = v56;
          v16 = v59;
        }
      }

      ++v12;
    }

    while (v12 < *(v60 + 8));
    v11 = v77;
  }

  operator delete(v11);
  operator delete(v82);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE0EP16C3DSubdivCPUDataIDv4_fES9_EEviRKT0_RT1_i(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v51 = v6;
  v52 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v53 = *(*(v52 + 456) + 8 * a5);
  v10 = (*(v53 + 12) & 1) != 0 || **a1 == 0;
  v46 = v10;
  v11 = *(v8 + 8 * a5);
  v45 = *(v9 + 8 * a5);
  v12 = *(v52 + 20);
  v60 = &v63;
  v61 = 2 * v12;
  v62 = 32;
  v64 = 0;
  if (2 * v12 >= 0x21)
  {
    v64 = operator new(8 * v12);
    v60 = v64;
    v62 = 2 * v12;
    v12 = *(v52 + 20);
  }

  v13 = 0;
  v55 = &v58;
  v56 = v12;
  v57 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v55 = v13;
    v57 = v12;
  }

  if (*(v52 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v46;
    while (1)
    {
      v17 = *(v51[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v53 + 12) + 4 * v14);
        v19 = (*(v53 + 18) + 4 * v18);
        v20 = *(v45[12] + 4 * v17);
        v21 = (v45[18] + 4 * v20);
        v22 = *v21;
        v23 = v45[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          v25 = (*a4 + 16 * v22);
          *v25 = 0;
          v25[1] = 0;
          v26 = (*a4 + 16 * *v21);
          v27 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v29 = v45[9];
            v30 = *(v29 + 2 * v17);
            if (*(v29 + 2 * v17))
            {
              v31 = 0;
              v49 = *(v53 + 21) + v18;
              v50 = *(v29 + 2 * v17);
              v32 = v23 + v20;
              v48 = v23 + v20;
              do
              {
                v33 = *(*(v11 + 5) + 2 * (*(*(*(v11 + 4) + 96) + 4 * v17) + v31));
                if (v31 != v33)
                {
                  _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner19interpFVarFromVertsILNS0_3Sdc10SchemeTypeE1EP16C3DSubdivCPUDataIDv2_fENSt3__16vectorIS8_NSA_9allocatorIS8_EEEEEEviRKT0_RT1_i_cold_1();
                }

                v34 = v19[v33];
                v35 = v21[v31];
                v36 = (*a4 + 16 * v35);
                *v36 = 0;
                v36[1] = 0;
                if (!v16 && (*(v32 + v31) & 8) != 0)
                {
                  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getVertexCreaseEndValues(v53, v14, v33, v54);
                  if ((*(v49 + v33) & 0x10) != 0)
                  {
                    if ((*(v49 + v33) & 0x20) != 0)
                    {
                      v41 = v33 == 0;
                      v39 = v11;
                      v40 = v14;
                    }

                    else
                    {
                      v39 = v11;
                      v40 = v14;
                      v41 = v33;
                    }

                    FractionalWeight = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(v39, v40, v41, v17);
                    v43 = 1.0 - FractionalWeight;
                    v38 = FractionalWeight + ((1.0 - FractionalWeight) * 0.75);
                    v37 = v43 * 0.125;
                  }

                  else
                  {
                    v37 = 0.125;
                    v38 = 0.75;
                  }

                  v15 = a3;
                  v16 = v46;
                  v30 = v50;
                  v44 = v54[1];
                  *(*a4 + 16 * v35) = vmlaq_n_f32(*(*a4 + 16 * v35), *(*a3 + 16 * v54[0]), v37);
                  *(*a4 + 16 * v35) = vmlaq_n_f32(*(*a4 + 16 * v35), *(*a3 + 16 * v44), v37);
                  *(*a4 + 16 * v35) = vmlaq_n_f32(*(*a4 + 16 * v35), *(*a3 + 16 * v34), v38);
                  v32 = v48;
                }

                else
                {
                  *(*a4 + 16 * v35) = vaddq_f32(*(*v15 + 16 * v34), *(*a4 + 16 * v35));
                }

                ++v31;
              }

              while (v30 != v31);
            }

            goto LABEL_19;
          }

          v27 = *v19;
          v28 = (*a4 + 16 * v22);
          *v28 = 0;
          v28[1] = 0;
          v26 = (*a4 + 16 * v22);
        }

        *v26 = vaddq_f32(*(*v15 + 16 * v27), *v26);
      }

LABEL_19:
      if (++v14 >= *(v52 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v64);
}

void C3DSubdivGPUFVarPrimvarData::~C3DSubdivGPUFVarPrimvarData(C3DSubdivGPUFVarPrimvarData *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void OpenSubdiv::v3_1_1::Osd::CpuPatchTable::~CpuPatchTable(OpenSubdiv::v3_1_1::Osd::CpuPatchTable *this)
{
  v7 = (this + 168);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = (this + 144);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v7 = (this + 120);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

void _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level **a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext = _ZN23C3DSubdivCPUPrimvarDataIDv2_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext(a1, a2, a4, *(a1 + 80), a6, a6, a7, a8);
  if (MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext)
  {
    v14 = MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext;
    if (!C3DMeshSourceGetSemantic(MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext, v13))
    {
      v93 = 0u;
      v94 = 0u;
      Content = C3DMeshSourceGetContent(v14, v15, &v93);
      v18 = v94;
      if (*(a1 + 88))
      {
        v19 = scn_default_log(Content, v17);
        Content = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
        if (Content)
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_1(v19, v17, v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = *(a5 + 3);
      if (v26 >= 2)
      {
        if (v26 != 2)
        {
          return;
        }

        if (v18 != *(*(*(*a3 + 11) + 24 * ((*(*a3 + 8) >> 2) & 0xF)) + 8))
        {
          v62 = scn_default_log(Content, v17);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
          {
            _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_3(v62, v63, v64, v65, v66, v67, v68, v69);
          }
        }

        v70 = malloc_type_malloc(12 * v18, 0x100004052888210uLL);
        v28 = v70;
        v72 = *(a1 + 48);
        v73 = *(a1 + 56);
        v74 = (a1 + 48);
        v91 = 0uLL;
        v92 = 0;
        if (v73 != v72)
        {
          std::vector<double>::__vallocate[abi:nn200100](&v91, (v73 - v72) >> 3);
        }

        v88 = 0;
        v89 = 0;
        v90 = 0;
        __p = 0;
        v86 = 0;
        v87 = 0;
        if (((*(*(*(*a3 + 5) + 8 * ((*(*a3 + 8) >> 2) & 0xF)) + 368) - *(*(*(*a3 + 5) + 8 * ((*(*a3 + 8) >> 2) & 0xF)) + 360)) & 0x3FFFFFFFCLL) != 0)
        {
          v75 = **a3;
          if (v75)
          {
            if (v75 == 2)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE2ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v74, &v91, &v88, &__p);
            }

            else if (v75 == 1)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v74, &v91, &v88, &__p);
            }
          }

          else
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE0ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v74, &v91, &v88, &__p);
          }
        }

        else
        {
          v70 = OpenSubdiv::v3_1_1::Far::Error(4, "Failure in PrimvarRefiner::Limit() -- last level of refinement does not include full topology.");
        }

        if (v18)
        {
          v76 = v18;
          do
          {
            _Z68C3DSubdivCPUPrimvarDataCopyCrossNormalizedDataAtIndexToBufferAtIndexIDv2_fEvRNSt3__16vectorI16C3DSubdivCPUDataIT_ENS1_9allocatorIS5_EEEES9_iPfi(v70, v71);
            --v76;
          }

          while (v76);
        }

        if (__p)
        {
          v86 = __p;
          operator delete(__p);
        }

        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (v91)
        {
          *(&v91 + 1) = v91;
          operator delete(v91);
        }
      }

      else
      {
        v79 = v18;
        v80 = v8;
        v27 = *(*a2 + 2);
        v28 = malloc_type_calloc(v27, 0xCuLL, 0x100004052888210uLL);
        v32 = **a2;
        if (v32 >= 1)
        {
          for (i = 0; i != v32; ++i)
          {
            v34 = (*(*a2 + 3) + 8 * i);
            if (*v34 != 4)
            {
              _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_2();
            }

            v35 = (*(*a2 + 6) + 4 * v34[1]);
            v36 = v35[2];
            v37 = v35[3];
            v38 = v35[1];
            *v39.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + *v35 * BYTE6(v94)), v29, v30, v31);
            v84 = v39;
            *v42.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + v38 * BYTE6(v94)), v39, v40, v41);
            v83 = v42;
            *v45.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + v36 * BYTE6(v94)), v42, v43, v44);
            v82 = v45;
            *v48.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + v37 * BYTE6(v94)), v45, v46, v47);
            v49.i32[0] = 0;
            v50 = 0;
            v51.i8[0] = *(a5 + 3);
            v52 = vdupq_lane_s8(*&vceqq_s8(v51, v49), 0);
            v53 = vbslq_s8(v52, vsubq_f32(v82, v84), vsubq_f32(v48, v83));
            v54 = vsubq_f32(vbslq_s8(v52, v83, v82), v84);
            v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v54)), v53, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
            v56 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
            v57 = vmulq_f32(v55, v55);
            *v51.i32 = v57.f32[1] + (v57.f32[2] + v57.f32[0]);
            *v57.f32 = vrsqrte_f32(v51.u32[0]);
            *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v57.f32, *v57.f32)));
            v29 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v57.f32, *v57.f32))).f32[0]);
            v30 = v29.f32[2];
            do
            {
              v58 = &v28[12 * v35[v50]];
              *v58 = vadd_f32(*v29.f32, *v58);
              v31 = v29.f32[2] + v58[1].f32[0];
              v58[1].f32[0] = v31;
              ++v50;
            }

            while (v50 != 4);
          }
        }

        if (v27 >= 1)
        {
          v59 = v28 + 8;
          v18 = v79;
          v8 = v80;
          do
          {
            v29.i64[0] = *(v59 - 1);
            v29.i32[2] = *v59;
            v60 = vmulq_f32(v29, v29);
            *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
            *v60.f32 = vrsqrte_f32(v61);
            *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
            v29 = vmulq_n_f32(v29, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
            *(v59 - 1) = v29.i64[0];
            *v59 = v29.i32[2];
            v59 += 3;
            --v27;
          }

          while (v27);
LABEL_42:
          v77 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v28, 12 * v18, *MEMORY[0x277CBECF0]);
          v78 = C3DMeshSourceCreateWithData(1, v77, 1, 3, v18, 12, 0);
          CFRelease(v77);
          v91 = 0uLL;
          v92 = v78;
          std::vector<C3DSubdivCPUMeshCreationSourceInfo>::push_back[abi:nn200100](v8, &v91);
          return;
        }

        v18 = v79;
        v8 = v80;
      }

      if (!v28)
      {
        return;
      }

      goto LABEL_42;
    }
  }
}

void _ZN23C3DSubdivCPUPrimvarDataIDv3_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level **a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext = _ZN23C3DSubdivCPUPrimvarDataIDv3_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext(a1, a2, a4, *(a1 + 80), a6, a6, a7, a8);
  if (MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext)
  {
    v14 = MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext;
    if (!C3DMeshSourceGetSemantic(MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext, v13))
    {
      v102 = 0u;
      v103 = 0u;
      Content = C3DMeshSourceGetContent(v14, v15, &v102);
      v18 = v103;
      if (*(a1 + 88))
      {
        v19 = scn_default_log(Content, v17);
        Content = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
        if (Content)
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_1(v19, v17, v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = *(a5 + 3);
      if (v26 < 2)
      {
        v88 = v18;
        v89 = v8;
        v27 = *(*a2 + 2);
        v28 = malloc_type_calloc(v27, 0xCuLL, 0x100004052888210uLL);
        v32 = **a2;
        if (v32 >= 1)
        {
          for (i = 0; i != v32; ++i)
          {
            v34 = (*(*a2 + 3) + 8 * i);
            if (*v34 != 4)
            {
              _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_2();
            }

            v35 = (*(*a2 + 6) + 4 * v34[1]);
            v36 = v35[2];
            v37 = v35[3];
            v38 = v35[1];
            *v39.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v103), (v102 + *v35 * BYTE6(v103)), v29, v30, v31);
            v93 = v39;
            *v42.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v103), (v102 + v38 * BYTE6(v103)), v39, v40, v41);
            v92 = v42;
            *v45.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v103), (v102 + v36 * BYTE6(v103)), v42, v43, v44);
            v91 = v45;
            *v48.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v103), (v102 + v37 * BYTE6(v103)), v45, v46, v47);
            v49.i32[0] = 0;
            v50 = 0;
            v51.i8[0] = *(a5 + 3);
            v52 = vdupq_lane_s8(*&vceqq_s8(v51, v49), 0);
            v53 = vbslq_s8(v52, vsubq_f32(v91, v93), vsubq_f32(v48, v92));
            v54 = vsubq_f32(vbslq_s8(v52, v92, v91), v93);
            v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v54)), v53, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
            v56 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
            v57 = vmulq_f32(v55, v55);
            *v51.i32 = v57.f32[1] + (v57.f32[2] + v57.f32[0]);
            *v57.f32 = vrsqrte_f32(v51.u32[0]);
            *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v57.f32, *v57.f32)));
            v29 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v57.f32, *v57.f32))).f32[0]);
            v30 = v29.f32[2];
            do
            {
              v58 = &v28[12 * v35[v50]];
              *v58 = vadd_f32(*v29.f32, *v58);
              v31 = v29.f32[2] + v58[1].f32[0];
              v58[1].f32[0] = v31;
              ++v50;
            }

            while (v50 != 4);
          }
        }

        if (v27 >= 1)
        {
          v59 = v28 + 8;
          v18 = v88;
          v8 = v89;
          do
          {
            v29.i64[0] = *(v59 - 1);
            v29.i32[2] = *v59;
            v60 = vmulq_f32(v29, v29);
            *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
            *v60.f32 = vrsqrte_f32(v61);
            *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
            v29 = vmulq_n_f32(v29, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
            *(v59 - 1) = v29.i64[0];
            *v59 = v29.i32[2];
            v59 += 3;
            --v27;
          }

          while (v27);
LABEL_43:
          v86 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v28, 12 * v18, *MEMORY[0x277CBECF0]);
          v87 = C3DMeshSourceCreateWithData(1, v86, 1, 3, v18, 12, 0);
          CFRelease(v86);
          v100 = 0uLL;
          v101 = v87;
          std::vector<C3DSubdivCPUMeshCreationSourceInfo>::push_back[abi:nn200100](v8, &v100);
          return;
        }

        v18 = v88;
        v8 = v89;
LABEL_42:
        if (!v28)
        {
          return;
        }

        goto LABEL_43;
      }

      if (v26 != 2)
      {
        return;
      }

      if (v18 != *(*(*(*a3 + 11) + 24 * ((*(*a3 + 8) >> 2) & 0xF)) + 8))
      {
        v62 = scn_default_log(Content, v17);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_3(v62, v63, v64, v65, v66, v67, v68, v69);
        }
      }

      v28 = malloc_type_malloc(12 * v18, 0x100004052888210uLL);
      v70 = *(a1 + 48);
      v71 = *(a1 + 56);
      v72 = (a1 + 48);
      v100 = 0uLL;
      v101 = 0;
      if (v71 != v70)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&v100, (v71 - v70) >> 4);
      }

      v97 = 0;
      v98 = 0;
      v99 = 0;
      __p = 0;
      v95 = 0;
      v96 = 0;
      if (((*(*(*(*a3 + 5) + 8 * ((*(*a3 + 8) >> 2) & 0xF)) + 368) - *(*(*(*a3 + 5) + 8 * ((*(*a3 + 8) >> 2) & 0xF)) + 360)) & 0x3FFFFFFFCLL) != 0)
      {
        v73 = **a3;
        if (v73)
        {
          if (v73 == 2)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE2ENSt3__16vectorI16C3DSubdivCPUDataIDv3_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v72, &v100, &v97, &__p);
          }

          else if (v73 == 1)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv3_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v72, &v100, &v97, &__p);
          }
        }

        else
        {
          _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE0ENSt3__16vectorI16C3DSubdivCPUDataIDv3_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v72, &v100, &v97, &__p);
        }
      }

      else
      {
        OpenSubdiv::v3_1_1::Far::Error(4, "Failure in PrimvarRefiner::Limit() -- last level of refinement does not include full topology.");
      }

      v74 = __p;
      if (v18)
      {
        v75 = v97;
        v76 = v28 + 8;
        v77 = v18;
        v78 = __p;
        do
        {
          v79 = *v78++;
          v80 = v79;
          v81 = *v75++;
          v82 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), vnegq_f32(v81)), v80, vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL));
          v83 = vmulq_f32(v82, v82);
          *&v84 = v83.f32[1] + (v83.f32[2] + v83.f32[0]);
          *v83.f32 = vrsqrte_f32(v84);
          *v83.f32 = vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32)));
          v85 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), vmul_f32(*v83.f32, vrsqrts_f32(v84, vmul_f32(*v83.f32, *v83.f32))).f32[0]);
          *(v76 - 1) = v85.i64[0];
          *v76 = v85.i32[2];
          v76 += 3;
          --v77;
        }

        while (v77);
      }

      else if (!__p)
      {
LABEL_38:
        if (v97)
        {
          v98 = v97;
          operator delete(v97);
        }

        if (v100)
        {
          *(&v100 + 1) = v100;
          operator delete(v100);
        }

        goto LABEL_42;
      }

      v95 = v74;
      operator delete(v74);
      goto LABEL_38;
    }
  }
}

void _ZN23C3DSubdivCPUPrimvarDataIDv4_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level **a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext = _ZN23C3DSubdivCPUPrimvarDataIDv4_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext(a1, a2, a4, *(a1 + 80), a6, a6, a7, a8);
  if (MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext)
  {
    v14 = MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext;
    if (!C3DMeshSourceGetSemantic(MeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext, v13))
    {
      v93 = 0u;
      v94 = 0u;
      Content = C3DMeshSourceGetContent(v14, v15, &v93);
      v18 = v94;
      if (*(a1 + 88))
      {
        v19 = scn_default_log(Content, v17);
        Content = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
        if (Content)
        {
          _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_1(v19, v17, v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = *(a5 + 3);
      if (v26 >= 2)
      {
        if (v26 != 2)
        {
          return;
        }

        if (v18 != *(*(*(*a3 + 11) + 24 * ((*(*a3 + 8) >> 2) & 0xF)) + 8))
        {
          v62 = scn_default_log(Content, v17);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
          {
            _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_3(v62, v63, v64, v65, v66, v67, v68, v69);
          }
        }

        v70 = malloc_type_malloc(12 * v18, 0x100004052888210uLL);
        v28 = v70;
        v72 = *(a1 + 48);
        v73 = *(a1 + 56);
        v74 = (a1 + 48);
        v91 = 0uLL;
        v92 = 0;
        if (v73 != v72)
        {
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(&v91, (v73 - v72) >> 4);
        }

        v88 = 0;
        v89 = 0;
        v90 = 0;
        __p = 0;
        v86 = 0;
        v87 = 0;
        if (((*(*(*(*a3 + 5) + 8 * ((*(*a3 + 8) >> 2) & 0xF)) + 368) - *(*(*(*a3 + 5) + 8 * ((*(*a3 + 8) >> 2) & 0xF)) + 360)) & 0x3FFFFFFFCLL) != 0)
        {
          v75 = **a3;
          if (v75)
          {
            if (v75 == 2)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE2ENSt3__16vectorI16C3DSubdivCPUDataIDv4_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v74, &v91, &v88, &__p);
            }

            else if (v75 == 1)
            {
              _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv4_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v74, &v91, &v88, &__p);
            }
          }

          else
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE0ENSt3__16vectorI16C3DSubdivCPUDataIDv4_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(a3, v74, &v91, &v88, &__p);
          }
        }

        else
        {
          v70 = OpenSubdiv::v3_1_1::Far::Error(4, "Failure in PrimvarRefiner::Limit() -- last level of refinement does not include full topology.");
        }

        if (v18)
        {
          v76 = v18;
          do
          {
            _Z68C3DSubdivCPUPrimvarDataCopyCrossNormalizedDataAtIndexToBufferAtIndexIDv2_fEvRNSt3__16vectorI16C3DSubdivCPUDataIT_ENS1_9allocatorIS5_EEEES9_iPfi(v70, v71);
            --v76;
          }

          while (v76);
        }

        if (__p)
        {
          v86 = __p;
          operator delete(__p);
        }

        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (v91)
        {
          *(&v91 + 1) = v91;
          operator delete(v91);
        }
      }

      else
      {
        v79 = v18;
        v80 = v8;
        v27 = *(*a2 + 2);
        v28 = malloc_type_calloc(v27, 0xCuLL, 0x100004052888210uLL);
        v32 = **a2;
        if (v32 >= 1)
        {
          for (i = 0; i != v32; ++i)
          {
            v34 = (*(*a2 + 3) + 8 * i);
            if (*v34 != 4)
            {
              _ZN23C3DSubdivCPUPrimvarDataIDv2_fE17CreateMeshSourcesERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEPNS4_14PrimvarRefinerEbPK22C3DSubdivisionSettingsP31C3DSubdivCPUMeshCreationContext_cold_2();
            }

            v35 = (*(*a2 + 6) + 4 * v34[1]);
            v36 = v35[2];
            v37 = v35[3];
            v38 = v35[1];
            *v39.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + *v35 * BYTE6(v94)), v29, v30, v31);
            v84 = v39;
            *v42.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + v38 * BYTE6(v94)), v39, v40, v41);
            v83 = v42;
            *v45.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + v36 * BYTE6(v94)), v42, v43, v44);
            v82 = v45;
            *v48.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v94), (v93 + v37 * BYTE6(v94)), v45, v46, v47);
            v49.i32[0] = 0;
            v50 = 0;
            v51.i8[0] = *(a5 + 3);
            v52 = vdupq_lane_s8(*&vceqq_s8(v51, v49), 0);
            v53 = vbslq_s8(v52, vsubq_f32(v82, v84), vsubq_f32(v48, v83));
            v54 = vsubq_f32(vbslq_s8(v52, v83, v82), v84);
            v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v54)), v53, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
            v56 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
            v57 = vmulq_f32(v55, v55);
            *v51.i32 = v57.f32[1] + (v57.f32[2] + v57.f32[0]);
            *v57.f32 = vrsqrte_f32(v51.u32[0]);
            *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v57.f32, *v57.f32)));
            v29 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v51.u32[0], vmul_f32(*v57.f32, *v57.f32))).f32[0]);
            v30 = v29.f32[2];
            do
            {
              v58 = &v28[12 * v35[v50]];
              *v58 = vadd_f32(*v29.f32, *v58);
              v31 = v29.f32[2] + v58[1].f32[0];
              v58[1].f32[0] = v31;
              ++v50;
            }

            while (v50 != 4);
          }
        }

        if (v27 >= 1)
        {
          v59 = v28 + 8;
          v18 = v79;
          v8 = v80;
          do
          {
            v29.i64[0] = *(v59 - 1);
            v29.i32[2] = *v59;
            v60 = vmulq_f32(v29, v29);
            *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
            *v60.f32 = vrsqrte_f32(v61);
            *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
            v29 = vmulq_n_f32(v29, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
            *(v59 - 1) = v29.i64[0];
            *v59 = v29.i32[2];
            v59 += 3;
            --v27;
          }

          while (v27);
LABEL_42:
          v77 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v28, 12 * v18, *MEMORY[0x277CBECF0]);
          v78 = C3DMeshSourceCreateWithData(1, v77, 1, 3, v18, 12, 0);
          CFRelease(v77);
          v91 = 0uLL;
          v92 = v78;
          std::vector<C3DSubdivCPUMeshCreationSourceInfo>::push_back[abi:nn200100](v8, &v91);
          return;
        }

        v18 = v79;
        v8 = v80;
      }

      if (!v28)
      {
        return;
      }

      goto LABEL_42;
    }
  }
}

uint64_t _ZN23C3DSubdivCPUPrimvarDataIDv2_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v37 = 0u;
  v38 = 0u;
  C3DMeshSourceGetContent(a4, a2, &v37);
  v14 = C3DSizeOfBaseType(BYTE4(v38), v13);
  Semantic = C3DMeshSourceGetSemantic(a4, v15);
  v18 = Semantic;
  if (Semantic || BYTE8(v38) >= 3u && (Semantic = C3DBaseTypeIsFloatingValue(BYTE7(v38), v17), (Semantic & 1) != 0))
  {
    v34 = a5;
    if (v10)
    {
      NumFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*a2, *(a1 + 72));
      v20 = 1149420332;
    }

    else
    {
      NumFVarValues = *(*a2 + 2);
      v20 = 3735651436;
    }

    v23 = NumFVarValues;
    v24 = v14 * NumFVarValues;
    v25 = malloc_type_malloc(v24, v20);
    v26 = v25;
    if (NumFVarValues >= 1)
    {
      v27 = 0;
      v28 = BYTE4(v38);
      v29 = v25;
      do
      {
        v30.i64[0] = *(*(a1 + 48) + v27);
        v30.i64[1] = v30.i64[0];
        C3DConvertFloatingTypeFromFloat4(v28, v29, v30);
        v29 += v14;
        v27 += 8;
      }

      while (8 * v23 != v27);
    }

    v31 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v26, v24, *MEMORY[0x277CBECF0]);
    v22 = C3DMeshSourceCreateWithData(v18, v31, BYTE4(v38), 1, v23, v14, 0);
    CFRelease(v31);
    v32 = *(a1 + 88) == 2;
    *(&v35 + 1) = a4;
    *&v35 = v32;
    BYTE1(v35) = *(a1 + 72);
    v36 = v22;
    std::vector<C3DSubdivCPUMeshCreationSourceInfo>::push_back[abi:nn200100](v34, &v35);
  }

  else
  {
    v21 = scn_default_log(Semantic, v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext_cold_1();
    }

    return 0;
  }

  return v22;
}

void std::vector<C3DSubdivCPUMeshCreationSourceInfo>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUMeshCreationSourceInfo>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v78 = *(*a1 + 4);
  v10 = 2 * *(v9 + 5);
  v11 = v10 | 1;
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v84 = &v87;
  v85 = v10 | 1;
  v86 = 33;
  v88 = 0;
  if (v10 >= 0x22)
  {
    v15 = v9;
    v16 = v13;
    v17 = operator new(4 * (v10 | 1));
    v13 = v16;
    v9 = v15;
    v88 = v17;
    v84 = v17;
    v86 = v10 | 1;
  }

  v18 = v11 * v14;
  v19 = v82;
  v79 = v82;
  v80 = v18;
  v81 = 99;
  __p = 0;
  if (v18 < 0x64)
  {
    v22 = 0;
  }

  else
  {
    v20 = v9;
    v21 = v13;
    v22 = operator new(4 * v18);
    v13 = v21;
    v9 = v20;
    __p = v22;
    v79 = v22;
    v81 = v18;
    v19 = v22;
  }

  v23 = v19 + 1;
  v24 = *(v9 + 5);
  v25 = &v19[v24 + 1];
  v77[0] = v19;
  v77[1] = v19 + 1;
  v77[2] = v25;
  memset(&v77[3], 0, 13);
  v58 = &v19[v11 + v11];
  v59 = &v19[v11];
  v73 = v59;
  v74 = &v19[v11 + 1];
  v75 = v25 + 4 * v11;
  memset(v76, 0, 13);
  v72[0] = v58;
  v72[1] = v74 + 4 * v11;
  v72[2] = v75 + 4 * v11;
  memset(&v72[3], 0, 13);
  v67[0] = v9;
  v67[1] = v9;
  if (*(v9 + 2) >= 1)
  {
    v26 = 0;
    v57 = &v19[2 * v10 + 3];
    v56 = v57 + 4 * v24;
    v64 = v9;
    v63 = v13;
    v61 = &v19[v10 + 2];
    v62 = v19;
    v60 = v61 + 4 * v24;
    do
    {
      v27 = *(v9[54] + 2 * v26);
      if ((v27 & 0x800) != 0 || (v28 = v9[42], (v29 = *(v28 + 8 * v26)) == 0))
      {
        *(*a3 + 8 * v26) = 0;
        *(*a3 + 8 * v26) = vadd_f32(*(*a2 + 8 * v26), *(*a3 + 8 * v26));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 8 * v26) = 0;
          *(*a5 + 8 * v26) = 0;
        }
      }

      else
      {
        v30 = (2 * v26) | 1;
        v65 = *(v28 + 4 * v30);
        v66 = v9[45];
        v68 = v26;
        v69 = v26;
        v31 = (v27 >> 7) & 0xF;
        v70 = *(*(v67[0] + 336) + 8 * v26);
        v71 = *(*(v67[0] + 264) + 8 * v26);
        if (v13)
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v78, v67, v77, v31);
        }

        else
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v78, v67, v77, &v73, v72, v31);
        }

        v32 = v84;
        v9 = v64;
        if (v29 >= 1)
        {
          v33 = (v66 + 4 * v65);
          v34 = v64[15];
          v35 = v29;
          v36 = v84;
          do
          {
            v37 = *v33++;
            *v36 = *(v34 + 8 * v37 + 4 * (v26 == *(v34 + 8 * v37)));
            v36 = (v36 + 4);
            --v35;
          }

          while (v35);
        }

        v38 = v32 + 4 * v29;
        v13 = v63;
        if (LODWORD(v77[4]) || (!LODWORD(v76[1]) ? (v39 = 1) : (v39 = v63), (v39 & 1) == 0))
        {
          v40 = v64[33];
          v41 = *(v40 + 8 * v26);
          if (v41 >= 1)
          {
            v42 = *(v40 + 4 * v30);
            v43 = (v64[36] + 4 * v42);
            v44 = (v64[39] + 2 * v42);
            v45 = v64[3];
            v46 = v64[6];
            v47 = v32 + v29;
            do
            {
              v48 = *v43++;
              v49 = v46 + 4 * *(v45 + 8 * v48 + 4);
              v50 = *(v45 + 8 * v48);
              LOWORD(v48) = *v44++;
              v51 = v48 + 2;
              if (v50 > (v48 + 2))
              {
                LOWORD(v50) = 0;
              }

              *v47++ = *(v49 + 4 * (v51 - v50));
              --v41;
            }

            while (v41);
          }
        }

        *(*a3 + 8 * v26) = 0;
        if (SLODWORD(v77[4]) >= 1)
        {
          v52 = 0;
          do
          {
            *(*a3 + 8 * v26) = vmla_n_f32(*(*a3 + 8 * v26), *(*a2 + 8 * *&v38[4 * v52]), *(v25 + 4 * v52));
            ++v52;
          }

          while (v52 < SLODWORD(v77[4]));
        }

        if (SHIDWORD(v77[3]) >= 1)
        {
          v53 = 0;
          do
          {
            *(*a3 + 8 * v26) = vmla_n_f32(*(*a3 + 8 * v26), *(*a2 + 8 * *(v32 + v53)), *&v23[4 * v53]);
            ++v53;
          }

          while (v53 < SHIDWORD(v77[3]));
        }

        *(*a3 + 8 * v26) = vmla_n_f32(*(*a3 + 8 * v26), *(*a2 + 8 * v26), *v62);
        if ((v63 & 1) == 0)
        {
          if (LODWORD(v76[1]) != LODWORD(v72[4]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_1();
          }

          if (HIDWORD(v76[0]) != HIDWORD(v72[3]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 8 * v26) = 0;
          *(*a5 + 8 * v26) = 0;
          if (SLODWORD(v76[1]) >= 1)
          {
            v54 = 0;
            do
            {
              *(*a4 + 8 * v26) = vmla_n_f32(*(*a4 + 8 * v26), *(*a2 + 8 * *&v38[4 * v54]), *(v60 + 4 * v54));
              *(*a5 + 8 * v26) = vmla_n_f32(*(*a5 + 8 * v26), *(*a2 + 8 * *&v38[4 * v54]), *(v56 + 4 * v54));
              ++v54;
            }

            while (v54 < SLODWORD(v76[1]));
          }

          if (SHIDWORD(v76[0]) >= 1)
          {
            v55 = 0;
            do
            {
              *(*a4 + 8 * v26) = vmla_n_f32(*(*a4 + 8 * v26), *(*a2 + 8 * *(v32 + v55)), *(v61 + 4 * v55));
              *(*a5 + 8 * v26) = vmla_n_f32(*(*a5 + 8 * v26), *(*a2 + 8 * *(v32 + v55)), *(v57 + 4 * v55));
              ++v55;
            }

            while (v55 < SHIDWORD(v76[0]));
          }

          *(*a4 + 8 * v26) = vmla_n_f32(*(*a4 + 8 * v26), *(*a2 + 8 * v26), *v59);
          *(*a5 + 8 * v26) = vmla_n_f32(*(*a5 + 8 * v26), *(*a2 + 8 * v26), *v58);
        }
      }

      ++v26;
    }

    while (v26 < *(v9 + 2));
    v22 = __p;
  }

  operator delete(v22);
  operator delete(v88);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE2ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v78 = *(*a1 + 4);
  v10 = 2 * *(v9 + 5);
  v11 = v10 | 1;
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v84 = &v87;
  v85 = v10 | 1;
  v86 = 33;
  v88 = 0;
  if (v10 >= 0x22)
  {
    v15 = v9;
    v16 = v13;
    v17 = operator new(4 * (v10 | 1));
    v13 = v16;
    v9 = v15;
    v88 = v17;
    v84 = v17;
    v86 = v10 | 1;
  }

  v18 = v11 * v14;
  v19 = v82;
  v79 = v82;
  v80 = v18;
  v81 = 99;
  __p = 0;
  if (v18 < 0x64)
  {
    v22 = 0;
  }

  else
  {
    v20 = v9;
    v21 = v13;
    v22 = operator new(4 * v18);
    v13 = v21;
    v9 = v20;
    __p = v22;
    v79 = v22;
    v81 = v18;
    v19 = v22;
  }

  v23 = v19 + 1;
  v24 = *(v9 + 5);
  v25 = &v19[v24 + 1];
  v77[0] = v19;
  v77[1] = v19 + 1;
  v77[2] = v25;
  memset(&v77[3], 0, 13);
  v58 = &v19[v11 + v11];
  v59 = &v19[v11];
  v73 = v59;
  v74 = &v19[v11 + 1];
  v75 = v25 + 4 * v11;
  memset(v76, 0, 13);
  v72[0] = v58;
  v72[1] = v74 + 4 * v11;
  v72[2] = v75 + 4 * v11;
  memset(&v72[3], 0, 13);
  v67[0] = v9;
  v67[1] = v9;
  if (*(v9 + 2) >= 1)
  {
    v26 = 0;
    v57 = &v19[2 * v10 + 3];
    v56 = v57 + 4 * v24;
    v64 = v9;
    v63 = v13;
    v61 = &v19[v10 + 2];
    v62 = v19;
    v60 = v61 + 4 * v24;
    do
    {
      v27 = *(v9[54] + 2 * v26);
      if ((v27 & 0x800) != 0 || (v28 = v9[42], (v29 = *(v28 + 8 * v26)) == 0))
      {
        *(*a3 + 8 * v26) = 0;
        *(*a3 + 8 * v26) = vadd_f32(*(*a2 + 8 * v26), *(*a3 + 8 * v26));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 8 * v26) = 0;
          *(*a5 + 8 * v26) = 0;
        }
      }

      else
      {
        v30 = (2 * v26) | 1;
        v65 = *(v28 + 4 * v30);
        v66 = v9[45];
        v68 = v26;
        v69 = v26;
        v31 = (v27 >> 7) & 0xF;
        v70 = *(*(v67[0] + 336) + 8 * v26);
        v71 = *(*(v67[0] + 264) + 8 * v26);
        if (v13)
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v78, v67, v77, v31);
        }

        else
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v78, v67, v77, &v73, v72, v31);
        }

        v32 = v84;
        v9 = v64;
        if (v29 >= 1)
        {
          v33 = (v66 + 4 * v65);
          v34 = v64[15];
          v35 = v29;
          v36 = v84;
          do
          {
            v37 = *v33++;
            *v36 = *(v34 + 8 * v37 + 4 * (v26 == *(v34 + 8 * v37)));
            v36 = (v36 + 4);
            --v35;
          }

          while (v35);
        }

        v38 = v32 + 4 * v29;
        v13 = v63;
        if (LODWORD(v77[4]) || (!LODWORD(v76[1]) ? (v39 = 1) : (v39 = v63), (v39 & 1) == 0))
        {
          v40 = v64[33];
          v41 = *(v40 + 8 * v26);
          if (v41 >= 1)
          {
            v42 = *(v40 + 4 * v30);
            v43 = (v64[36] + 4 * v42);
            v44 = (v64[39] + 2 * v42);
            v45 = v64[3];
            v46 = v64[6];
            v47 = v32 + v29;
            do
            {
              v48 = *v43++;
              v49 = v46 + 4 * *(v45 + 8 * v48 + 4);
              v50 = *(v45 + 8 * v48);
              LOWORD(v48) = *v44++;
              v51 = v48 + 2;
              if (v50 > (v48 + 2))
              {
                LOWORD(v50) = 0;
              }

              *v47++ = *(v49 + 4 * (v51 - v50));
              --v41;
            }

            while (v41);
          }
        }

        *(*a3 + 8 * v26) = 0;
        if (SLODWORD(v77[4]) >= 1)
        {
          v52 = 0;
          do
          {
            *(*a3 + 8 * v26) = vmla_n_f32(*(*a3 + 8 * v26), *(*a2 + 8 * *&v38[4 * v52]), *(v25 + 4 * v52));
            ++v52;
          }

          while (v52 < SLODWORD(v77[4]));
        }

        if (SHIDWORD(v77[3]) >= 1)
        {
          v53 = 0;
          do
          {
            *(*a3 + 8 * v26) = vmla_n_f32(*(*a3 + 8 * v26), *(*a2 + 8 * *(v32 + v53)), *&v23[4 * v53]);
            ++v53;
          }

          while (v53 < SHIDWORD(v77[3]));
        }

        *(*a3 + 8 * v26) = vmla_n_f32(*(*a3 + 8 * v26), *(*a2 + 8 * v26), *v62);
        if ((v63 & 1) == 0)
        {
          if (LODWORD(v76[1]) != LODWORD(v72[4]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_1();
          }

          if (HIDWORD(v76[0]) != HIDWORD(v72[3]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 8 * v26) = 0;
          *(*a5 + 8 * v26) = 0;
          if (SLODWORD(v76[1]) >= 1)
          {
            v54 = 0;
            do
            {
              *(*a4 + 8 * v26) = vmla_n_f32(*(*a4 + 8 * v26), *(*a2 + 8 * *&v38[4 * v54]), *(v60 + 4 * v54));
              *(*a5 + 8 * v26) = vmla_n_f32(*(*a5 + 8 * v26), *(*a2 + 8 * *&v38[4 * v54]), *(v56 + 4 * v54));
              ++v54;
            }

            while (v54 < SLODWORD(v76[1]));
          }

          if (SHIDWORD(v76[0]) >= 1)
          {
            v55 = 0;
            do
            {
              *(*a4 + 8 * v26) = vmla_n_f32(*(*a4 + 8 * v26), *(*a2 + 8 * *(v32 + v55)), *(v61 + 4 * v55));
              *(*a5 + 8 * v26) = vmla_n_f32(*(*a5 + 8 * v26), *(*a2 + 8 * *(v32 + v55)), *(v57 + 4 * v55));
              ++v55;
            }

            while (v55 < SHIDWORD(v76[0]));
          }

          *(*a4 + 8 * v26) = vmla_n_f32(*(*a4 + 8 * v26), *(*a2 + 8 * v26), *v59);
          *(*a5 + 8 * v26) = vmla_n_f32(*(*a5 + 8 * v26), *(*a2 + 8 * v26), *v58);
        }
      }

      ++v26;
    }

    while (v26 < *(v9 + 2));
    v22 = __p;
  }

  operator delete(v22);
  operator delete(v88);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE0ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v10 = 2 * *(v9 + 20);
  v11 = v10 | 1;
  if (a4)
  {
    _ZF = a5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v13 = _ZF;
  if (_ZF)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v46 = &v49;
  v47 = v10 | 1;
  v48 = 33;
  v50 = 0;
  if (v10 >= 0x22)
  {
    v50 = operator new(4 * (v10 | 1));
    v46 = v50;
    v48 = v10 | 1;
  }

  v15 = v11 * v14;
  v16 = &v44;
  __p = 0;
  if (v15 < 0x64)
  {
    v17 = 0;
  }

  else
  {
    v17 = operator new(4 * v15);
    __p = v17;
    v16 = v17;
  }

  if (*(v9 + 8) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &v16[v11];
    v22 = &v21[v11];
    __asm { FMOV            V2.2S, #-1.0 }

    v27 = -_D2;
    do
    {
      if ((*(*(v9 + 432) + 2 * v18) & 0x800) != 0 || (v28 = (*(v9 + 336) + 8 * v18), v29 = *v28, !v29))
      {
        *(*a3 + 8 * v18) = 0;
        *(*a3 + 8 * v18) = vadd_f32(*(*a2 + 8 * v18), *(*a3 + 8 * v18));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 8 * v18) = 0;
          *(*a5 + 8 * v18) = 0;
        }
      }

      else
      {
        v30 = *(v9 + 360);
        v31 = v28[1];
        v32 = v16;
        if ((v13 & 1) == 0)
        {
          *v16 = 1.0;
          *v21 = v27;
          v21[2] = 0.0;
          v32 = &v21[v11 + 2];
          v20 = 2;
          v19 = 2;
          *v22 = 3212836864;
        }

        *v32 = 1.0;
        v33 = v46;
        if (v29 >= 1)
        {
          v34 = (v30 + 4 * v31);
          v35 = *(v9 + 120);
          v36 = v46;
          do
          {
            v37 = *v34++;
            *v36++ = *(v35 + 8 * v37 + 4 * (v18 == *(v35 + 8 * v37)));
            --v29;
          }

          while (v29);
        }

        *(*a3 + 8 * v18) = 0;
        *(*a3 + 8 * v18) = vmla_n_f32(*(*a3 + 8 * v18), *(*a2 + 8 * v18), *v16);
        if ((v13 & 1) == 0)
        {
          if (v19 != v20)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 8 * v18) = 0;
          *(*a5 + 8 * v18) = 0;
          v38 = v20;
          v39 = &v16[v10 + 2];
          v40 = &v16[2 * v10 + 3];
          if (v20 >= 1)
          {
            do
            {
              v41 = *v39++;
              *(*a4 + 8 * v18) = vmla_n_f32(*(*a4 + 8 * v18), *(*a2 + 8 * *v33), v41);
              v43 = *v33++;
              v42 = v43;
              *&v43 = *v40++;
              *(*a5 + 8 * v18) = vmla_n_f32(*(*a5 + 8 * v18), *(*a2 + 8 * v42), *&v43);
              --v38;
            }

            while (v38);
          }

          *(*a4 + 8 * v18) = vmla_n_f32(*(*a4 + 8 * v18), *(*a2 + 8 * v18), *v21);
          *(*a5 + 8 * v18) = vmla_n_f32(*(*a5 + 8 * v18), *(*a2 + 8 * v18), *v22);
          v19 = v20;
        }
      }

      ++v18;
    }

    while (v18 < *(v9 + 8));
    v17 = __p;
  }

  operator delete(v17);
  operator delete(v50);
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v42 = *MEMORY[0x277D85DE8];
  if ((a6 - 1) > 1)
  {
    if (a6 == 4)
    {
      v12 = a2[6];
      MEMORY[0x28223BE20](result);
      v14 = v41 - v13;
      bzero(v41 - v13, v15);
      if (v12 >= 1)
      {
        v16 = (*(*a2 + 360) + 4 * *(*(*a2 + 336) + 8 * a2[4] + 4));
        v17 = *(*a2 + 216);
        v18 = v14;
        v19 = v12;
        do
        {
          v20 = *v16++;
          *v18++ = *(v17 + 4 * v20);
          --v19;
        }

        while (v19);
      }

      v21 = 0xFFFFFFFF00000000;
      v22 = -1;
      v23 = v14;
      do
      {
        v24 = *v23++;
        v21 += 0x100000000;
        ++v22;
      }

      while (v24 <= 0.0);
      v41[0] = v22;
      v25 = v12 << 32;
      v26 = &v14[4 * v12 - 4];
      v27 = v12;
      do
      {
        v28 = *v26--;
        v25 -= 0x100000000;
        --v27;
      }

      while (v28 <= 0.0);
      v41[1] = v27;
      *(a3 + 24) = 1;
      *(a3 + 28) = v12;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      v29 = *a3;
      v30 = *(a3 + 8);
      *v29 = 0.66667;
      if (v12 >= 1)
      {
        bzero(v30, 4 * v12);
      }

      *&v30[v21 >> 30] = 1042983595;
      *&v30[v25 >> 30] = 1042983595;
      OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::assignCreaseLimitTangentMasks<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(result, a2, a4, a5, v41);
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
      v32 = a2[6];
      *(a4 + 24) = 1;
      *(a4 + 28) = v32;
      *(a4 + 36) = 0;
      *(a5 + 24) = 1;
      *(a5 + 28) = v32;
      *(a5 + 36) = 0;
      v33 = *(a4 + 8);
      **a4 = -1082130432;
      *v33 = 1065353216;
      v34 = *(a5 + 8);
      **a5 = -1082130432;
      *v34 = 0x3F80000000000000;
      if (v32 >= 3)
      {
        v35 = v32 - 2;
        v36 = v34 + 1;
        v37 = v33 + 1;
        do
        {
          *v37++ = 0;
          *v36++ = 0;
          --v35;
        }

        while (v35);
      }
    }
  }

  else
  {
    v11 = a2[7];
    *(a3 + 24) = 1;
    if (v11 == 2)
    {
      *(a3 + 36) = 0;
      *(a3 + 28) = 0;
      **a3 = 1065353216;
    }

    else
    {
      *(a3 + 28) = v11;
      *(a3 + 32) = v11;
      *(a3 + 36) = 0;
      if (v11 == 4)
      {
        v31 = *(a3 + 8);
        **a3 = 1055100473;
        *v31 = vdupq_n_s32(0x3DE38E39u);
        **(a3 + 16) = vdupq_n_s32(0x3CE38E39u);
      }

      else
      {
        v38 = 1.0 / ((v11 + 5.0) * v11);
        **a3 = 1.0 - (v11 * (v38 + (v38 * 4.0)));
        if (v11 >= 1)
        {
          v39 = *(a3 + 8);
          v40 = *(a3 + 16);
          do
          {
            *v39++ = v38 * 4.0;
            *v40++ = v38;
            --v11;
          }

          while (v11);
        }
      }
    }

    OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::assignSmoothLimitTangentMasks<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(result, a2, a4, a5);
  }
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if ((a4 - 1) > 1)
  {
    if (a4 != 4)
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      goto LABEL_18;
    }

    v7 = a2[6];
    MEMORY[0x28223BE20](a1);
    v9 = v28 - v8;
    bzero(v28 - v8, v10);
    if (v7 >= 1)
    {
      v11 = (*(*a2 + 360) + 4 * *(*(*a2 + 336) + 8 * a2[4] + 4));
      v12 = *(*a2 + 216);
      v13 = v9;
      v14 = v7;
      do
      {
        v15 = *v11++;
        *v13++ = *(v12 + 4 * v15);
        --v14;
      }

      while (v14);
    }

    v16 = 0xFFFFFFFF00000000;
    v17 = v9;
    do
    {
      v18 = *v17++;
      v16 += 0x100000000;
    }

    while (v18 <= 0.0);
    v19 = v7 << 32;
    v20 = &v9[4 * v7 - 4];
    do
    {
      v21 = *v20--;
      v19 -= 0x100000000;
    }

    while (v21 <= 0.0);
    *(a3 + 24) = 1;
    *(a3 + 28) = v7;
    *(a3 + 32) = 0;
    *(a3 + 36) = 0;
    v22 = *a3;
    v23 = *(a3 + 8);
    *v22 = 0.66667;
    if (v7 >= 1)
    {
      bzero(v23, 4 * v7);
    }

    *&v23[v16 >> 30] = 1042983595;
    *&v23[v19 >> 30] = 1042983595;
  }

  else
  {
    v6 = a2[7];
    *(a3 + 24) = 1;
    if (v6 == 2)
    {
      *(a3 + 36) = 0;
      *(a3 + 28) = 0;
LABEL_18:
      **a3 = 1065353216;
      return;
    }

    *(a3 + 28) = v6;
    *(a3 + 32) = v6;
    *(a3 + 36) = 0;
    if (v6 == 4)
    {
      v24 = *(a3 + 8);
      **a3 = 1055100473;
      *v24 = vdupq_n_s32(0x3DE38E39u);
      **(a3 + 16) = vdupq_n_s32(0x3CE38E39u);
    }

    else
    {
      v25 = 1.0 / ((v6 + 5.0) * v6);
      **a3 = 1.0 - (v6 * (v25 + (v25 * 4.0)));
      if (v6 >= 1)
      {
        v26 = *(a3 + 8);
        v27 = *(a3 + 16);
        do
        {
          *v26++ = v25 * 4.0;
          *v27++ = v25;
          --v6;
        }

        while (v6);
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::assignSmoothLimitTangentMasks<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 28);
  if (v6 == 2)
  {
    v7 = *(a2 + 24);
    *(a3 + 24) = 1;
    *(a3 + 28) = v7;
    *(a3 + 36) = 0;
    *(a4 + 24) = 1;
    *(a4 + 28) = v7;
    *(a4 + 36) = 0;
    v8 = *(a3 + 8);
    **a3 = -1082130432;
    *v8 = 1065353216;
    v9 = *(a4 + 8);
    **a4 = -1082130432;
    *v9 = 0x3F80000000000000;
    if (v7 >= 3)
    {
      v10 = v7 - 2;
      v11 = v9 + 1;
      v12 = v8 + 1;
      do
      {
        *v12++ = 0;
        *v11++ = 0;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    *(a3 + 24) = 1;
    *(a3 + 28) = v6;
    *(a3 + 32) = v6;
    *(a3 + 36) = 0;
    **a3 = 0;
    if (v6 == 4)
    {
      v13 = *(a3 + 16);
      **(a3 + 8) = xmmword_21C2A2630;
      *v13 = xmmword_21C2A2640;
      *(a4 + 24) = 0x400000001;
      *(a4 + 32) = 4;
      *(a4 + 36) = 0;
      v14 = *(a4 + 8);
      **a4 = 0;
      *v14 = xmmword_21C2A2650;
      **(a4 + 16) = xmmword_21C280320;
    }

    else
    {
      v15 = 6.28318531 / v6;
      v16 = cos(v15);
      v17 = cos(v15 * 0.5);
      if (v6 >= 1)
      {
        v18 = 0;
        v19 = 1.0 / (((v16 + v17 * sqrt(v16 + 9.0 + v16 + 9.0)) * 0.0625 + 0.3125) * 4.0 + -1.0);
        v20 = *(a3 + 8);
        v21 = *(a3 + 16);
        do
        {
          v22 = cos(v15 * v18);
          v23 = cos(v15 * (v18 + 1));
          v24 = v22 * 4.0;
          *(v20 + 4 * v18) = v24;
          *&v23 = v19 * (v22 + v23);
          *(v21 + 4 * v18++) = LODWORD(v23);
        }

        while (v6 != v18);
      }

      *(a4 + 24) = 1;
      *(a4 + 28) = v6;
      *(a4 + 32) = v6;
      *(a4 + 36) = 0;
      v25 = *(a4 + 8);
      **a4 = 0;
      v26 = 4 * v6 - 4;
      v27 = *(a3 + 8);
      v28 = *(a3 + 16);
      *v25 = *(v27 + v26);
      v29 = *(v28 + v26);
      v30 = *(a4 + 16);
      *v30 = v29;
      if (v6 > 1)
      {
        v31 = v30 + 1;
        v32 = v25 + 1;
        v33 = v6 - 1;
        do
        {
          v34 = *v27++;
          *v32++ = v34;
          v35 = *v28++;
          *v31++ = v35;
          --v33;
        }

        while (v33);
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::assignCreaseLimitTangentMasks<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v8;
  *(a3 + 32) = v9;
  *(a3 + 36) = 0;
  **a3 = 0;
  if (v8 >= 1)
  {
    bzero(*(a3 + 8), 4 * v8);
  }

  if (v9 >= 1)
  {
    bzero(*(a3 + 16), 4 * v9);
  }

  v10 = *(a3 + 8);
  v11 = a5[1];
  *(v10 + 4 * *a5) = 1056964608;
  *(v10 + 4 * v11) = -1090519040;
  *(a4 + 24) = 1;
  *(a4 + 28) = v8;
  *(a4 + 32) = v9;
  *(a4 + 36) = 0;
  v12 = *a5;
  if (*a5 >= 1)
  {
    v13 = *(a4 + 8);
    v14 = *(a4 + 16);
    v15 = *a5;
    do
    {
      *v13++ = 0;
      *v14++ = 0;
      --v15;
    }

    while (v15);
  }

  v16 = v12;
  v17 = a5[1];
  v18 = v17 - v12;
  if (v17 - v12 == 2)
  {
    v19 = *(a4 + 8);
    **a4 = -1087722837;
    v20 = 4 * v12;
    *(v19 + v20) = 0x3F2AAAABBE2AAAABLL;
    *(v19 + 4 * v17) = -1104500053;
    v21 = *(a4 + 16);
    *(v21 + v20) = 0x3E2AAAAB3E2AAAABLL;
  }

  else if (v18 < 3)
  {
    v19 = *(a4 + 8);
    **a4 = -1061158912;
    *(v19 + 4 * v12) = 1077936128;
    *(v19 + 4 * v17) = 1077936128;
    v21 = *(a4 + 16);
    *(v21 + 4 * v12) = 0;
  }

  else
  {
    v22 = v18;
    v23 = 3.14159265 / v18;
    v24 = __sincos_stret(v23);
    sinval = v24.__sinval;
    v26 = 1.0 / ((v24.__cosval + 3.0) * v22);
    v27 = (v24.__cosval + 1.0) / v24.__sinval;
    v28 = v26 * ((v24.__cosval + -1.0) * (v27 * 4.0));
    v19 = *(a4 + 8);
    **a4 = v28;
    *&v27 = -(v27 * (v24.__cosval * 2.0 + 1.0)) * v26;
    *(v19 + 4 * v16) = LODWORD(v27);
    *(v19 + 4 * v17) = LODWORD(v27);
    *&v27 = v24.__sinval * v26;
    v21 = *(a4 + 16);
    *(v21 + 4 * v16) = LODWORD(v27);
    v29 = 4 * v16 + 4;
    v30 = 2;
    do
    {
      v31 = v30;
      v32 = sin(v23 * v30);
      v33 = v26 * (sinval * 4.0);
      *(v19 + v29) = v33;
      v34 = v26 * (sinval + v32);
      *(v21 + v29) = v34;
      v29 += 4;
      ++v30;
      sinval = v32;
    }

    while (v31 < v22);
  }

  if (v17 < v9)
  {
    bzero((v21 + 4 * v17), 4 * (v9 + ~v17) + 4);
  }

  if (v17 + 1 < v8)
  {

    bzero((v19 + 4 * (v17 + 1)), 4 * (v8 - v17 - 2) + 4);
  }
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v58 = *MEMORY[0x277D85DE8];
  if ((a6 - 1) > 1)
  {
    if (a6 == 4)
    {
      v14 = a2[6];
      MEMORY[0x28223BE20](a1);
      v16 = v57 - v15;
      bzero(v57 - v15, v17);
      if (v14 >= 1)
      {
        v18 = (*(*a2 + 360) + 4 * *(*(*a2 + 336) + 8 * a2[4] + 4));
        v19 = *(*a2 + 216);
        v20 = v16;
        v21 = v14;
        do
        {
          v22 = *v18++;
          *v20++ = *(v19 + 4 * v22);
          --v21;
        }

        while (v21);
      }

      v23 = 0xFFFFFFFF00000000;
      v24 = -1;
      v25 = v16;
      do
      {
        v26 = *v25++;
        v23 += 0x100000000;
        ++v24;
      }

      while (v26 <= 0.0);
      v57[0] = v24;
      v27 = v14 << 32;
      v28 = &v16[4 * v14 - 4];
      v29 = v14;
      do
      {
        v30 = *v28--;
        v27 -= 0x100000000;
        --v29;
      }

      while (v30 <= 0.0);
      v57[1] = v29;
      *(a3 + 24) = 1;
      *(a3 + 28) = v14;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      v31 = *a3;
      v32 = *(a3 + 8);
      *v31 = 0.66667;
      if (v14 >= 1)
      {
        bzero(v32, 4 * v14);
      }

      *&v32[v23 >> 30] = 1042983595;
      *&v32[v27 >> 30] = 1042983595;
      OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::assignCreaseLimitTangentMasks<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(a1, a2, a4, a5, v57);
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
      v33 = a2[6];
      *(a4 + 24) = 1;
      *(a4 + 28) = v33;
      *(a4 + 36) = 0;
      *(a5 + 24) = 1;
      *(a5 + 28) = v33;
      *(a5 + 36) = 0;
      v34 = *(a4 + 8);
      **a4 = -1069547520;
      *v34 = 1077936128;
      v35 = *(a5 + 8);
      **a5 = -1069547520;
      *v35 = 0x4040000000000000;
      if (v33 >= 3)
      {
        v36 = v33 - 2;
        v37 = v35 + 1;
        v38 = v34 + 1;
        do
        {
          *v38++ = 0;
          *v37++ = 0;
          --v36;
        }

        while (v36);
      }
    }
  }

  else
  {
    v10 = a2[7];
    if (v10 == 2)
    {
      OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>();
    }

    *(a3 + 24) = 1;
    *(a3 + 28) = v10;
    *(a3 + 32) = 0;
    *(a3 + 36) = 0;
    if (v10 == 6)
    {
      v11 = *(a3 + 8);
      **a3 = 1056964608;
      v12 = vdupq_n_s32(0x3DAAAAABu);
      *v11 = v12;
      v11[1].i64[0] = v12.i64[0];
    }

    else
    {
      v39 = 1.0 / v10;
      *v40.i32 = cosf(v39 * 6.2832);
      *v40.i32 = 1.0 / ((3.0 / ((v39 * (0.625 - (((*v40.i32 * 0.25) + 0.375) * ((*v40.i32 * 0.25) + 0.375)))) * 8.0)) + v10);
      **a3 = 1.0 - (*v40.i32 * v10);
      if (v10 >= 1)
      {
        v41 = (v10 + 3) & 0xFFFFFFFC;
        v42 = vdupq_n_s64(v10 - 1);
        v43 = xmmword_21C27F630;
        v44 = xmmword_21C27F640;
        v45 = (*(a3 + 8) + 8);
        v46 = vdupq_n_s64(4uLL);
        do
        {
          v47 = vmovn_s64(vcgeq_u64(v42, v44));
          if (vuzp1_s16(v47, v40).u8[0])
          {
            *(v45 - 2) = v40.i32[0];
          }

          if (vuzp1_s16(v47, v40).i8[2])
          {
            *(v45 - 1) = v40.i32[0];
          }

          if (vuzp1_s16(v40, vmovn_s64(vcgeq_u64(v42, *&v43))).i32[1])
          {
            *v45 = v40.i32[0];
            v45[1] = v40.i32[0];
          }

          v43 = vaddq_s64(v43, v46);
          v44 = vaddq_s64(v44, v46);
          v45 += 4;
          v41 -= 4;
        }

        while (v41);
      }
    }

    *(a4 + 24) = 1;
    *(a4 + 28) = v10;
    *(a4 + 32) = 0;
    *(a4 + 36) = 0;
    *(a5 + 24) = 1;
    *(a5 + 28) = v10;
    *(a5 + 32) = 0;
    *(a5 + 36) = 0;
    **a4 = 0;
    **a5 = 0;
    if (v10 == 6)
    {
      v48 = *(a4 + 8);
      *v48 = xmmword_21C2A2660;
      *(v48 + 16) = --0.0000305175998;
      v49 = *(a5 + 8);
      *v49 = xmmword_21C2A2670;
      *(v49 + 16) = vdup_n_s32(0xBF5DB3D7);
    }

    else if (v10 >= 1)
    {
      v50 = 0;
      v52 = *(a4 + 8);
      v53 = *(a5 + 8);
      do
      {
        v51 = 6.28318531 / v10;
        v54 = __sincos_stret((v51 * v50));
        cosval = v54.__cosval;
        *(v52 + 4 * v50) = cosval;
        sinval = v54.__sinval;
        *(v53 + 4 * v50++) = sinval;
      }

      while (v10 != v50);
    }
  }
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if ((a4 - 1) > 1)
  {
    if (a4 == 4)
    {
      v9 = a2[6];
      MEMORY[0x28223BE20](a1);
      v11 = v35 - v10;
      bzero(v35 - v10, v12);
      if (v9 >= 1)
      {
        v13 = (*(*a2 + 360) + 4 * *(*(*a2 + 336) + 8 * a2[4] + 4));
        v14 = *(*a2 + 216);
        v15 = v11;
        v16 = v9;
        do
        {
          v17 = *v13++;
          *v15++ = *(v14 + 4 * v17);
          --v16;
        }

        while (v16);
      }

      v18 = 0xFFFFFFFF00000000;
      v19 = v11;
      do
      {
        v20 = *v19++;
        v18 += 0x100000000;
      }

      while (v20 <= 0.0);
      v21 = v9 << 32;
      v22 = &v11[4 * v9 - 4];
      do
      {
        v23 = *v22--;
        v21 -= 0x100000000;
      }

      while (v23 <= 0.0);
      *(a3 + 24) = 1;
      *(a3 + 28) = v9;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      v24 = *a3;
      v25 = *(a3 + 8);
      *v24 = 0.66667;
      if (v9 >= 1)
      {
        bzero(v25, 4 * v9);
      }

      *&v25[v18 >> 30] = 1042983595;
      *&v25[v21 >> 30] = 1042983595;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }
  }

  else
  {
    v6 = a2[7];
    if (v6 == 2)
    {
      OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>();
    }

    *(a3 + 24) = 1;
    *(a3 + 28) = v6;
    *(a3 + 32) = 0;
    *(a3 + 36) = 0;
    if (v6 == 6)
    {
      v7 = *(a3 + 8);
      **a3 = 1056964608;
      v8 = vdupq_n_s32(0x3DAAAAABu);
      *v7 = v8;
      v7[1].i64[0] = v8.i64[0];
    }

    else
    {
      v26 = 1.0 / v6;
      *v27.i32 = cosf(v26 * 6.2832);
      *v27.i32 = 1.0 / ((3.0 / ((v26 * (0.625 - (((*v27.i32 * 0.25) + 0.375) * ((*v27.i32 * 0.25) + 0.375)))) * 8.0)) + v6);
      **a3 = 1.0 - (*v27.i32 * v6);
      if (v6 >= 1)
      {
        v28 = (v6 + 3) & 0xFFFFFFFC;
        v29 = vdupq_n_s64(v6 - 1);
        v30 = xmmword_21C27F630;
        v31 = xmmword_21C27F640;
        v32 = (*(a3 + 8) + 8);
        v33 = vdupq_n_s64(4uLL);
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v29, v31));
          if (vuzp1_s16(v34, v27).u8[0])
          {
            *(v32 - 2) = v27.i32[0];
          }

          if (vuzp1_s16(v34, v27).i8[2])
          {
            *(v32 - 1) = v27.i32[0];
          }

          if (vuzp1_s16(v27, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
          {
            *v32 = v27.i32[0];
            v32[1] = v27.i32[0];
          }

          v30 = vaddq_s64(v30, v33);
          v31 = vaddq_s64(v31, v33);
          v32 += 4;
          v28 -= 4;
        }

        while (v28);
      }
    }
  }
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::assignCreaseLimitTangentMasks<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v7 = *(a2 + 24);
  *(a3 + 24) = 1;
  *(a3 + 28) = v7;
  *(a3 + 36) = 0;
  v8 = *(a3 + 8);
  **a3 = 0;
  if (v7 >= 1)
  {
    bzero(v8, 4 * v7);
  }

  v9 = a5[1];
  *(v8 + *a5) = 1069547520;
  *(v8 + v9) = -1077936128;
  *(a4 + 24) = 1;
  *(a4 + 28) = v7;
  *(a4 + 32) = 0;
  *(a4 + 36) = 0;
  v10 = *a5;
  v11 = v10;
  if (v10 >= 1)
  {
    bzero(*(a4 + 8), 4 * v10);
  }

  v12 = a5[1];
  v13 = (v12 - v11);
  if (v13 == 3)
  {
    v14 = *a4;
    v15 = *(a4 + 8);
    *v14 = -1075989545;
    v16 = v15 + 4 * v11;
    *v16 = -1084378153;
    *(v15 + 4 * v12) = -1084378153;
    *(v16 + 4) = vdup_n_s32(0x3FDDB3D7u);
  }

  else if (v13 < 4)
  {
    v39 = *a4;
    if (v13 == 2)
    {
      *v39 = -1069547520;
      v15 = *(a4 + 8);
      v40 = (v15 + 4 * v11);
      *v40 = 0;
      *(v15 + 4 * v12) = 0;
      v40[1] = 1077936128;
    }

    else
    {
      *v39 = -1061158912;
      v15 = *(a4 + 8);
      *(v15 + 4 * v11) = 1077936128;
      *(v15 + 4 * v12) = 1077936128;
    }
  }

  else
  {
    v42 = 3.14159265 / v13;
    v17 = __sincos_stret(v42);
    v18 = 0;
    sinval = v17.__sinval;
    v20 = sinval * -3.0;
    cosval = v17.__cosval;
    v22 = *a4;
    v15 = *(a4 + 8);
    *v22 = 0;
    v23 = (v15 + 4 * v11);
    *v23 = v20;
    v24 = v23 + 2;
    *(v15 + 4 * v12) = v20;
    v25 = ((cosval * 2.0) + -2.0) * -3.0;
    v26 = vdupq_n_s64(v13 - 2);
    v27 = (v13 + 2) & 0xFFFFFFFC;
    v41 = v26;
    do
    {
      v48 = vdupq_n_s64(v18);
      v28 = vcgeq_u64(v26, vorrq_s8(v48, xmmword_21C27F640));
      v29 = vmovn_s64(v28);
      v44 = vuzp1_s16(v29, *v28.i8).u8[0];
      v30 = vaddq_s32(vdupq_n_s32(v18), xmmword_21C2A21C0);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vcvtq_f64_u64(v31);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v49 = vmulq_n_f64(vcvtq_f64_u64(v31), v42);
      __xa = vmulq_n_f64(v32, v42);
      v45 = sin(__xa.f64[1]);
      __x = sin(__xa.f64[0]);
      v43 = sin(v49.f64[1]);
      v33 = sin(v49.f64[0]);
      if (v44)
      {
        v34 = v33;
        *(v24 - 1) = v25 * v34;
      }

      if (vuzp1_s16(v29, *&v33).i8[2])
      {
        v35 = v43;
        *v24 = v25 * v35;
      }

      v26 = v41;
      v36 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v48, xmmword_21C27F630)));
      if (vuzp1_s16(v36, v36).i32[1])
      {
        v37 = __x;
        v24[1] = v25 * v37;
        v38 = v45;
        v24[2] = v25 * v38;
      }

      v18 += 4;
      v24 += 4;
    }

    while (v27 != v18);
  }

  if (v12 + 1 < v7)
  {

    bzero((v15 + 4 * (v12 + 1)), 4 * (v7 - v12 - 2) + 4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUMeshCreationSourceInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t _ZN23C3DSubdivCPUPrimvarDataIDv3_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v38 = 0u;
  v39 = 0u;
  C3DMeshSourceGetContent(a4, a2, &v38);
  v14 = C3DSizeOfBaseType(BYTE4(v39), v13);
  Semantic = C3DMeshSourceGetSemantic(a4, v15);
  v18 = Semantic;
  if (Semantic || BYTE8(v39) >= 3u && (Semantic = C3DBaseTypeIsFloatingValue(BYTE7(v39), v17), (Semantic & 1) != 0))
  {
    v35 = a5;
    if (v10)
    {
      NumFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*a2, *(a1 + 72));
      v20 = 1149420332;
    }

    else
    {
      NumFVarValues = *(*a2 + 2);
      v20 = 3735651436;
    }

    v23 = NumFVarValues;
    v24 = v14 * NumFVarValues;
    v25 = malloc_type_malloc(v24, v20);
    v26 = v25;
    if (NumFVarValues >= 1)
    {
      v27 = 0;
      v28 = BYTE4(v39);
      v29 = v25;
      do
      {
        v30 = *(a1 + 48);
        v31 = *(v30 + v27);
        v31.i32[3] = *(v30 + v27 + 8);
        C3DConvertFloatingTypeFromFloat4(v28, v29, v31);
        v29 += v14;
        v27 += 16;
      }

      while (16 * v23 != v27);
    }

    v32 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v26, v24, *MEMORY[0x277CBECF0]);
    v22 = C3DMeshSourceCreateWithData(v18, v32, BYTE4(v39), 1, v23, v14, 0);
    CFRelease(v32);
    v33 = *(a1 + 88) == 2;
    *(&v36 + 1) = a4;
    *&v36 = v33;
    BYTE1(v36) = *(a1 + 72);
    v37 = v22;
    std::vector<C3DSubdivCPUMeshCreationSourceInfo>::push_back[abi:nn200100](v35, &v36);
  }

  else
  {
    v21 = scn_default_log(Semantic, v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext_cold_1();
    }

    return 0;
  }

  return v22;
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv3_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v79 = *(*a1 + 4);
  v10 = 2 * *(v9 + 5);
  v11 = v10 | 1;
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v85 = &v88;
  v86 = v10 | 1;
  v87 = 33;
  v89 = 0;
  if (v10 >= 0x22)
  {
    v15 = v9;
    v16 = v13;
    v17 = operator new(4 * (v10 | 1));
    v13 = v16;
    v9 = v15;
    v89 = v17;
    v85 = v17;
    v87 = v10 | 1;
  }

  v18 = v11 * v14;
  v19 = v83;
  v80 = v83;
  v81 = v18;
  v82 = 99;
  __p = 0;
  if (v18 < 0x64)
  {
    v22 = 0;
  }

  else
  {
    v20 = v9;
    v21 = v13;
    v22 = operator new(4 * v18);
    v13 = v21;
    v9 = v20;
    __p = v22;
    v80 = v22;
    v82 = v18;
    v19 = v22;
  }

  v23 = v19 + 1;
  v24 = *(v9 + 5);
  v25 = &v19[v24 + 1];
  v78[0] = v19;
  v78[1] = v19 + 1;
  v78[2] = v25;
  memset(&v78[3], 0, 13);
  v59 = &v19[v11 + v11];
  v60 = &v19[v11];
  v74 = v60;
  v75 = &v19[v11 + 1];
  v76 = v25 + 4 * v11;
  memset(v77, 0, 13);
  v73[0] = v59;
  v73[1] = v75 + 4 * v11;
  v73[2] = v76 + 4 * v11;
  memset(&v73[3], 0, 13);
  v68[0] = v9;
  v68[1] = v9;
  if (*(v9 + 2) >= 1)
  {
    v26 = 0;
    v58 = &v19[2 * v10 + 3];
    v57 = v58 + 4 * v24;
    v27 = 0uLL;
    v65 = v9;
    v64 = v13;
    v62 = &v19[v10 + 2];
    v63 = v19;
    v61 = v62 + 4 * v24;
    do
    {
      v28 = *(v9[54] + 2 * v26);
      if ((v28 & 0x800) != 0 || (v29 = v9[42], (v30 = *(v29 + 8 * v26)) == 0))
      {
        *(*a3 + 16 * v26) = v27;
        *(*a3 + 16 * v26) = vaddq_f32(*(*a2 + 16 * v26), *(*a3 + 16 * v26));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 16 * v26) = v27;
          *(*a5 + 16 * v26) = v27;
        }
      }

      else
      {
        v31 = (2 * v26) | 1;
        v66 = *(v29 + 4 * v31);
        v67 = v9[45];
        v69 = v26;
        v70 = v26;
        v32 = (v28 >> 7) & 0xF;
        v71 = *(*(v68[0] + 336) + 8 * v26);
        v72 = *(*(v68[0] + 264) + 8 * v26);
        if (v13)
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v79, v68, v78, v32);
        }

        else
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v79, v68, v78, &v74, v73, v32);
        }

        v33 = v85;
        v9 = v65;
        v27 = 0uLL;
        if (v30 >= 1)
        {
          v34 = (v67 + 4 * v66);
          v35 = v65[15];
          v36 = v30;
          v37 = v85;
          do
          {
            v38 = *v34++;
            *v37 = *(v35 + 8 * v38 + 4 * (v26 == *(v35 + 8 * v38)));
            v37 = (v37 + 4);
            --v36;
          }

          while (v36);
        }

        v39 = v33 + 4 * v30;
        v13 = v64;
        if (LODWORD(v78[4]) || (!LODWORD(v77[1]) ? (v40 = 1) : (v40 = v64), (v40 & 1) == 0))
        {
          v41 = v65[33];
          v42 = *(v41 + 8 * v26);
          if (v42 >= 1)
          {
            v43 = *(v41 + 4 * v31);
            v44 = (v65[36] + 4 * v43);
            v45 = (v65[39] + 2 * v43);
            v46 = v65[3];
            v47 = v65[6];
            v48 = v33 + v30;
            do
            {
              v49 = *v44++;
              v50 = v47 + 4 * *(v46 + 8 * v49 + 4);
              v51 = *(v46 + 8 * v49);
              LOWORD(v49) = *v45++;
              v52 = v49 + 2;
              if (v51 > (v49 + 2))
              {
                LOWORD(v51) = 0;
              }

              *v48++ = *(v50 + 4 * (v52 - v51));
              --v42;
            }

            while (v42);
          }
        }

        *(*a3 + 16 * v26) = 0uLL;
        if (SLODWORD(v78[4]) >= 1)
        {
          v53 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *&v39[4 * v53]), *(v25 + 4 * v53));
            ++v53;
          }

          while (v53 < SLODWORD(v78[4]));
        }

        if (SHIDWORD(v78[3]) >= 1)
        {
          v54 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *(v33 + v54)), *&v23[4 * v54]);
            ++v54;
          }

          while (v54 < SHIDWORD(v78[3]));
        }

        *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * v26), *v63);
        if ((v64 & 1) == 0)
        {
          if (LODWORD(v77[1]) != LODWORD(v73[4]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_1();
          }

          if (HIDWORD(v77[0]) != HIDWORD(v73[3]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 16 * v26) = 0uLL;
          *(*a5 + 16 * v26) = 0uLL;
          if (SLODWORD(v77[1]) >= 1)
          {
            v55 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *&v39[4 * v55]), *(v61 + 4 * v55));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *&v39[4 * v55]), *(v57 + 4 * v55));
              ++v55;
            }

            while (v55 < SLODWORD(v77[1]));
          }

          if (SHIDWORD(v77[0]) >= 1)
          {
            v56 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *(v33 + v56)), *(v62 + 4 * v56));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *(v33 + v56)), *(v58 + 4 * v56));
              ++v56;
            }

            while (v56 < SHIDWORD(v77[0]));
          }

          *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * v26), *v60);
          *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * v26), *v59);
        }
      }

      ++v26;
    }

    while (v26 < *(v9 + 2));
    v22 = __p;
  }

  operator delete(v22);
  operator delete(v89);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE2ENSt3__16vectorI16C3DSubdivCPUDataIDv3_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v79 = *(*a1 + 4);
  v10 = 2 * *(v9 + 5);
  v11 = v10 | 1;
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v85 = &v88;
  v86 = v10 | 1;
  v87 = 33;
  v89 = 0;
  if (v10 >= 0x22)
  {
    v15 = v9;
    v16 = v13;
    v17 = operator new(4 * (v10 | 1));
    v13 = v16;
    v9 = v15;
    v89 = v17;
    v85 = v17;
    v87 = v10 | 1;
  }

  v18 = v11 * v14;
  v19 = v83;
  v80 = v83;
  v81 = v18;
  v82 = 99;
  __p = 0;
  if (v18 < 0x64)
  {
    v22 = 0;
  }

  else
  {
    v20 = v9;
    v21 = v13;
    v22 = operator new(4 * v18);
    v13 = v21;
    v9 = v20;
    __p = v22;
    v80 = v22;
    v82 = v18;
    v19 = v22;
  }

  v23 = v19 + 1;
  v24 = *(v9 + 5);
  v25 = &v19[v24 + 1];
  v78[0] = v19;
  v78[1] = v19 + 1;
  v78[2] = v25;
  memset(&v78[3], 0, 13);
  v59 = &v19[v11 + v11];
  v60 = &v19[v11];
  v74 = v60;
  v75 = &v19[v11 + 1];
  v76 = v25 + 4 * v11;
  memset(v77, 0, 13);
  v73[0] = v59;
  v73[1] = v75 + 4 * v11;
  v73[2] = v76 + 4 * v11;
  memset(&v73[3], 0, 13);
  v68[0] = v9;
  v68[1] = v9;
  if (*(v9 + 2) >= 1)
  {
    v26 = 0;
    v58 = &v19[2 * v10 + 3];
    v57 = v58 + 4 * v24;
    v27 = 0uLL;
    v65 = v9;
    v64 = v13;
    v62 = &v19[v10 + 2];
    v63 = v19;
    v61 = v62 + 4 * v24;
    do
    {
      v28 = *(v9[54] + 2 * v26);
      if ((v28 & 0x800) != 0 || (v29 = v9[42], (v30 = *(v29 + 8 * v26)) == 0))
      {
        *(*a3 + 16 * v26) = v27;
        *(*a3 + 16 * v26) = vaddq_f32(*(*a2 + 16 * v26), *(*a3 + 16 * v26));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 16 * v26) = v27;
          *(*a5 + 16 * v26) = v27;
        }
      }

      else
      {
        v31 = (2 * v26) | 1;
        v66 = *(v29 + 4 * v31);
        v67 = v9[45];
        v69 = v26;
        v70 = v26;
        v32 = (v28 >> 7) & 0xF;
        v71 = *(*(v68[0] + 336) + 8 * v26);
        v72 = *(*(v68[0] + 264) + 8 * v26);
        if (v13)
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v79, v68, v78, v32);
        }

        else
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v79, v68, v78, &v74, v73, v32);
        }

        v33 = v85;
        v9 = v65;
        v27 = 0uLL;
        if (v30 >= 1)
        {
          v34 = (v67 + 4 * v66);
          v35 = v65[15];
          v36 = v30;
          v37 = v85;
          do
          {
            v38 = *v34++;
            *v37 = *(v35 + 8 * v38 + 4 * (v26 == *(v35 + 8 * v38)));
            v37 = (v37 + 4);
            --v36;
          }

          while (v36);
        }

        v39 = v33 + 4 * v30;
        v13 = v64;
        if (LODWORD(v78[4]) || (!LODWORD(v77[1]) ? (v40 = 1) : (v40 = v64), (v40 & 1) == 0))
        {
          v41 = v65[33];
          v42 = *(v41 + 8 * v26);
          if (v42 >= 1)
          {
            v43 = *(v41 + 4 * v31);
            v44 = (v65[36] + 4 * v43);
            v45 = (v65[39] + 2 * v43);
            v46 = v65[3];
            v47 = v65[6];
            v48 = v33 + v30;
            do
            {
              v49 = *v44++;
              v50 = v47 + 4 * *(v46 + 8 * v49 + 4);
              v51 = *(v46 + 8 * v49);
              LOWORD(v49) = *v45++;
              v52 = v49 + 2;
              if (v51 > (v49 + 2))
              {
                LOWORD(v51) = 0;
              }

              *v48++ = *(v50 + 4 * (v52 - v51));
              --v42;
            }

            while (v42);
          }
        }

        *(*a3 + 16 * v26) = 0uLL;
        if (SLODWORD(v78[4]) >= 1)
        {
          v53 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *&v39[4 * v53]), *(v25 + 4 * v53));
            ++v53;
          }

          while (v53 < SLODWORD(v78[4]));
        }

        if (SHIDWORD(v78[3]) >= 1)
        {
          v54 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *(v33 + v54)), *&v23[4 * v54]);
            ++v54;
          }

          while (v54 < SHIDWORD(v78[3]));
        }

        *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * v26), *v63);
        if ((v64 & 1) == 0)
        {
          if (LODWORD(v77[1]) != LODWORD(v73[4]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_1();
          }

          if (HIDWORD(v77[0]) != HIDWORD(v73[3]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 16 * v26) = 0uLL;
          *(*a5 + 16 * v26) = 0uLL;
          if (SLODWORD(v77[1]) >= 1)
          {
            v55 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *&v39[4 * v55]), *(v61 + 4 * v55));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *&v39[4 * v55]), *(v57 + 4 * v55));
              ++v55;
            }

            while (v55 < SLODWORD(v77[1]));
          }

          if (SHIDWORD(v77[0]) >= 1)
          {
            v56 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *(v33 + v56)), *(v62 + 4 * v56));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *(v33 + v56)), *(v58 + 4 * v56));
              ++v56;
            }

            while (v56 < SHIDWORD(v77[0]));
          }

          *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * v26), *v60);
          *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * v26), *v59);
        }
      }

      ++v26;
    }

    while (v26 < *(v9 + 2));
    v22 = __p;
  }

  operator delete(v22);
  operator delete(v89);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE0ENSt3__16vectorI16C3DSubdivCPUDataIDv3_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v10 = 2 * *(v9 + 20);
  v11 = v10 | 1;
  if (a4)
  {
    _ZF = a5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v13 = _ZF;
  if (_ZF)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v46 = &v49;
  v47 = v10 | 1;
  v48 = 33;
  v50 = 0;
  if (v10 >= 0x22)
  {
    v50 = operator new(4 * (v10 | 1));
    v46 = v50;
    v48 = v10 | 1;
  }

  v15 = v11 * v14;
  v16 = &v44;
  __p = 0;
  if (v15 < 0x64)
  {
    v17 = 0;
  }

  else
  {
    v17 = operator new(4 * v15);
    __p = v17;
    v16 = v17;
  }

  if (*(v9 + 8) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &v16[v11];
    v22 = &v21[v11];
    __asm { FMOV            V2.2S, #-1.0 }

    v27 = -_D2;
    do
    {
      if ((*(*(v9 + 432) + 2 * v18) & 0x800) != 0 || (v28 = (*(v9 + 336) + 8 * v18), v29 = *v28, !v29))
      {
        *(*a3 + 16 * v18) = 0uLL;
        *(*a3 + 16 * v18) = vaddq_f32(*(*a2 + 16 * v18), *(*a3 + 16 * v18));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 16 * v18) = 0uLL;
          *(*a5 + 16 * v18) = 0uLL;
        }
      }

      else
      {
        v30 = *(v9 + 360);
        v31 = v28[1];
        v32 = v16;
        if ((v13 & 1) == 0)
        {
          *v16 = 1.0;
          *v21 = v27;
          v21[2] = 0.0;
          v32 = &v21[v11 + 2];
          v20 = 2;
          v19 = 2;
          *v22 = 3212836864;
        }

        *v32 = 1.0;
        v33 = v46;
        if (v29 >= 1)
        {
          v34 = (v30 + 4 * v31);
          v35 = *(v9 + 120);
          v36 = v46;
          do
          {
            v37 = *v34++;
            *v36++ = *(v35 + 8 * v37 + 4 * (v18 == *(v35 + 8 * v37)));
            --v29;
          }

          while (v29);
        }

        *(*a3 + 16 * v18) = 0uLL;
        *(*a3 + 16 * v18) = vmlaq_n_f32(*(*a3 + 16 * v18), *(*a2 + 16 * v18), *v16);
        if ((v13 & 1) == 0)
        {
          if (v19 != v20)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 16 * v18) = 0uLL;
          *(*a5 + 16 * v18) = 0uLL;
          v38 = v20;
          v39 = &v16[v10 + 2];
          v40 = &v16[2 * v10 + 3];
          if (v20 >= 1)
          {
            do
            {
              v41 = *v39++;
              *(*a4 + 16 * v18) = vmlaq_n_f32(*(*a4 + 16 * v18), *(*a2 + 16 * *v33), v41);
              v43 = *v33++;
              v42 = v43;
              *&v43 = *v40++;
              *(*a5 + 16 * v18) = vmlaq_n_f32(*(*a5 + 16 * v18), *(*a2 + 16 * v42), *&v43);
              --v38;
            }

            while (v38);
          }

          *(*a4 + 16 * v18) = vmlaq_n_f32(*(*a4 + 16 * v18), *(*a2 + 16 * v18), *v21);
          *(*a5 + 16 * v18) = vmlaq_n_f32(*(*a5 + 16 * v18), *(*a2 + 16 * v18), *v22);
          v19 = v20;
        }
      }

      ++v18;
    }

    while (v18 < *(v9 + 8));
    v17 = __p;
  }

  operator delete(v17);
  operator delete(v50);
}

uint64_t _ZN23C3DSubdivCPUPrimvarDataIDv4_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v35 = 0u;
  v36 = 0u;
  C3DMeshSourceGetContent(a4, a2, &v35);
  v14 = C3DSizeOfBaseType(BYTE4(v36), v13);
  Semantic = C3DMeshSourceGetSemantic(a4, v15);
  v18 = Semantic;
  if (Semantic || BYTE8(v36) >= 3u && (Semantic = C3DBaseTypeIsFloatingValue(BYTE7(v36), v17), (Semantic & 1) != 0))
  {
    v32 = a5;
    if (v10)
    {
      NumFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*a2, *(a1 + 72));
      v20 = 1149420332;
    }

    else
    {
      NumFVarValues = *(*a2 + 2);
      v20 = 3735651436;
    }

    v23 = NumFVarValues;
    v24 = v14 * NumFVarValues;
    v25 = malloc_type_malloc(v24, v20);
    v26 = v25;
    if (NumFVarValues >= 1)
    {
      v27 = 0;
      v28 = BYTE4(v36);
      v29 = v25;
      do
      {
        C3DConvertFloatingTypeFromFloat4(v28, v29, *(*(a1 + 48) + v27));
        v29 += v14;
        v27 += 16;
      }

      while (16 * v23 != v27);
    }

    v30 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v26, v24, *MEMORY[0x277CBECF0]);
    v22 = C3DMeshSourceCreateWithData(v18, v30, BYTE4(v36), 1, v23, v14, 0);
    CFRelease(v30);
    *&v33 = *(a1 + 88) == 2;
    BYTE1(v33) = *(a1 + 72);
    *(&v33 + 1) = a4;
    v34 = v22;
    std::vector<C3DSubdivCPUMeshCreationSourceInfo>::push_back[abi:nn200100](v32, &v33);
  }

  else
  {
    v21 = scn_default_log(Semantic, v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _ZN23C3DSubdivCPUPrimvarDataIDv2_fE26_CreateMeshSourceForSourceERKN10OpenSubdiv6v3_1_13Far13TopologyLevelEbPK15__C3DMeshSourceP31C3DSubdivCPUMeshCreationContext_cold_1();
    }

    return 0;
  }

  return v22;
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv4_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v91 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v80 = *(*a1 + 4);
  v10 = 2 * *(v9 + 5);
  v11 = v10 | 1;
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v86 = &v89;
  v87 = v10 | 1;
  v88 = 33;
  v90 = 0;
  if (v10 >= 0x22)
  {
    v15 = v9;
    v16 = v13;
    v17 = operator new(4 * (v10 | 1));
    v13 = v16;
    v9 = v15;
    v90 = v17;
    v86 = v17;
    v88 = v10 | 1;
  }

  v18 = v11 * v14;
  v19 = v84;
  v81 = v84;
  v82 = v18;
  v83 = 99;
  __p = 0;
  if (v18 < 0x64)
  {
    v22 = 0;
  }

  else
  {
    v20 = v9;
    v21 = v13;
    v22 = operator new(4 * v18);
    v13 = v21;
    v9 = v20;
    __p = v22;
    v81 = v22;
    v83 = v18;
    v19 = v22;
  }

  v23 = v19 + 1;
  v24 = *(v9 + 5);
  v25 = &v19[v24 + 1];
  v79[0] = v19;
  v79[1] = v19 + 1;
  v79[2] = v25;
  memset(&v79[3], 0, 13);
  v60 = &v19[v11 + v11];
  v61 = &v19[v11];
  v75 = v61;
  v76 = &v19[v11 + 1];
  v77 = v25 + 4 * v11;
  memset(v78, 0, 13);
  v74[0] = v60;
  v74[1] = v76 + 4 * v11;
  v74[2] = v77 + 4 * v11;
  memset(&v74[3], 0, 13);
  v69[0] = v9;
  v69[1] = v9;
  if (*(v9 + 2) >= 1)
  {
    v26 = 0;
    v59 = &v19[2 * v10 + 3];
    v58 = v59 + 4 * v24;
    v66 = v9;
    v65 = v13;
    v63 = &v19[v10 + 2];
    v64 = v19;
    v62 = v63 + 4 * v24;
    do
    {
      v27 = *(v9[54] + 2 * v26);
      if ((v27 & 0x800) != 0 || (v28 = v9[42], (v29 = *(v28 + 8 * v26)) == 0))
      {
        v32 = (*a3 + 16 * v26);
        *v32 = 0;
        v32[1] = 0;
        *(*a3 + 16 * v26) = vaddq_f32(*(*a2 + 16 * v26), *(*a3 + 16 * v26));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 16 * v26) = 0u;
          *(*a5 + 16 * v26) = 0u;
        }
      }

      else
      {
        v30 = (2 * v26) | 1;
        v67 = *(v28 + 4 * v30);
        v68 = v9[45];
        v70 = v26;
        v71 = v26;
        v31 = (v27 >> 7) & 0xF;
        v72 = *(*(v69[0] + 336) + 8 * v26);
        v73 = *(*(v69[0] + 264) + 8 * v26);
        if (v13)
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v80, v69, v79, v31);
        }

        else
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v80, v69, v79, &v75, v74, v31);
        }

        v33 = v86;
        v9 = v66;
        if (v29 >= 1)
        {
          v34 = (v68 + 4 * v67);
          v35 = v66[15];
          v36 = v29;
          v37 = v86;
          do
          {
            v38 = *v34++;
            *v37 = *(v35 + 8 * v38 + 4 * (v26 == *(v35 + 8 * v38)));
            v37 = (v37 + 4);
            --v36;
          }

          while (v36);
        }

        v39 = v33 + 4 * v29;
        v13 = v65;
        if (LODWORD(v79[4]) || (!LODWORD(v78[1]) ? (v40 = 1) : (v40 = v65), (v40 & 1) == 0))
        {
          v41 = v66[33];
          v42 = *(v41 + 8 * v26);
          if (v42 >= 1)
          {
            v43 = *(v41 + 4 * v30);
            v44 = (v66[36] + 4 * v43);
            v45 = (v66[39] + 2 * v43);
            v46 = v66[3];
            v47 = v66[6];
            v48 = v33 + v29;
            do
            {
              v49 = *v44++;
              v50 = v47 + 4 * *(v46 + 8 * v49 + 4);
              v51 = *(v46 + 8 * v49);
              LOWORD(v49) = *v45++;
              v52 = v49 + 2;
              if (v51 > (v49 + 2))
              {
                LOWORD(v51) = 0;
              }

              *v48++ = *(v50 + 4 * (v52 - v51));
              --v42;
            }

            while (v42);
          }
        }

        v53 = (*a3 + 16 * v26);
        *v53 = 0;
        v53[1] = 0;
        if (SLODWORD(v79[4]) >= 1)
        {
          v54 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *&v39[4 * v54]), *(v25 + 4 * v54));
            ++v54;
          }

          while (v54 < SLODWORD(v79[4]));
        }

        if (SHIDWORD(v79[3]) >= 1)
        {
          v55 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *(v33 + v55)), *&v23[4 * v55]);
            ++v55;
          }

          while (v55 < SHIDWORD(v79[3]));
        }

        *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * v26), *v64);
        if ((v65 & 1) == 0)
        {
          if (LODWORD(v78[1]) != LODWORD(v74[4]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_1();
          }

          if (HIDWORD(v78[0]) != HIDWORD(v74[3]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 16 * v26) = 0u;
          *(*a5 + 16 * v26) = 0u;
          if (SLODWORD(v78[1]) >= 1)
          {
            v56 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *&v39[4 * v56]), *(v62 + 4 * v56));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *&v39[4 * v56]), *(v58 + 4 * v56));
              ++v56;
            }

            while (v56 < SLODWORD(v78[1]));
          }

          if (SHIDWORD(v78[0]) >= 1)
          {
            v57 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *(v33 + v57)), *(v63 + 4 * v57));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *(v33 + v57)), *(v59 + 4 * v57));
              ++v57;
            }

            while (v57 < SHIDWORD(v78[0]));
          }

          *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * v26), *v61);
          *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * v26), *v60);
        }
      }

      ++v26;
    }

    while (v26 < *(v9 + 2));
    v22 = __p;
  }

  operator delete(v22);
  operator delete(v90);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE2ENSt3__16vectorI16C3DSubdivCPUDataIDv4_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v91 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v80 = *(*a1 + 4);
  v10 = 2 * *(v9 + 5);
  v11 = v10 | 1;
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v86 = &v89;
  v87 = v10 | 1;
  v88 = 33;
  v90 = 0;
  if (v10 >= 0x22)
  {
    v15 = v9;
    v16 = v13;
    v17 = operator new(4 * (v10 | 1));
    v13 = v16;
    v9 = v15;
    v90 = v17;
    v86 = v17;
    v88 = v10 | 1;
  }

  v18 = v11 * v14;
  v19 = v84;
  v81 = v84;
  v82 = v18;
  v83 = 99;
  __p = 0;
  if (v18 < 0x64)
  {
    v22 = 0;
  }

  else
  {
    v20 = v9;
    v21 = v13;
    v22 = operator new(4 * v18);
    v13 = v21;
    v9 = v20;
    __p = v22;
    v81 = v22;
    v83 = v18;
    v19 = v22;
  }

  v23 = v19 + 1;
  v24 = *(v9 + 5);
  v25 = &v19[v24 + 1];
  v79[0] = v19;
  v79[1] = v19 + 1;
  v79[2] = v25;
  memset(&v79[3], 0, 13);
  v60 = &v19[v11 + v11];
  v61 = &v19[v11];
  v75 = v61;
  v76 = &v19[v11 + 1];
  v77 = v25 + 4 * v11;
  memset(v78, 0, 13);
  v74[0] = v60;
  v74[1] = v76 + 4 * v11;
  v74[2] = v77 + 4 * v11;
  memset(&v74[3], 0, 13);
  v69[0] = v9;
  v69[1] = v9;
  if (*(v9 + 2) >= 1)
  {
    v26 = 0;
    v59 = &v19[2 * v10 + 3];
    v58 = v59 + 4 * v24;
    v66 = v9;
    v65 = v13;
    v63 = &v19[v10 + 2];
    v64 = v19;
    v62 = v63 + 4 * v24;
    do
    {
      v27 = *(v9[54] + 2 * v26);
      if ((v27 & 0x800) != 0 || (v28 = v9[42], (v29 = *(v28 + 8 * v26)) == 0))
      {
        v32 = (*a3 + 16 * v26);
        *v32 = 0;
        v32[1] = 0;
        *(*a3 + 16 * v26) = vaddq_f32(*(*a2 + 16 * v26), *(*a3 + 16 * v26));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 16 * v26) = 0u;
          *(*a5 + 16 * v26) = 0u;
        }
      }

      else
      {
        v30 = (2 * v26) | 1;
        v67 = *(v28 + 4 * v30);
        v68 = v9[45];
        v70 = v26;
        v71 = v26;
        v31 = (v27 >> 7) & 0xF;
        v72 = *(*(v69[0] + 336) + 8 * v26);
        v73 = *(*(v69[0] + 264) + 8 * v26);
        if (v13)
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v80, v69, v79, v31);
        }

        else
        {
          OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexLimitMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(&v80, v69, v79, &v75, v74, v31);
        }

        v33 = v86;
        v9 = v66;
        if (v29 >= 1)
        {
          v34 = (v68 + 4 * v67);
          v35 = v66[15];
          v36 = v29;
          v37 = v86;
          do
          {
            v38 = *v34++;
            *v37 = *(v35 + 8 * v38 + 4 * (v26 == *(v35 + 8 * v38)));
            v37 = (v37 + 4);
            --v36;
          }

          while (v36);
        }

        v39 = v33 + 4 * v29;
        v13 = v65;
        if (LODWORD(v79[4]) || (!LODWORD(v78[1]) ? (v40 = 1) : (v40 = v65), (v40 & 1) == 0))
        {
          v41 = v66[33];
          v42 = *(v41 + 8 * v26);
          if (v42 >= 1)
          {
            v43 = *(v41 + 4 * v30);
            v44 = (v66[36] + 4 * v43);
            v45 = (v66[39] + 2 * v43);
            v46 = v66[3];
            v47 = v66[6];
            v48 = v33 + v29;
            do
            {
              v49 = *v44++;
              v50 = v47 + 4 * *(v46 + 8 * v49 + 4);
              v51 = *(v46 + 8 * v49);
              LOWORD(v49) = *v45++;
              v52 = v49 + 2;
              if (v51 > (v49 + 2))
              {
                LOWORD(v51) = 0;
              }

              *v48++ = *(v50 + 4 * (v52 - v51));
              --v42;
            }

            while (v42);
          }
        }

        v53 = (*a3 + 16 * v26);
        *v53 = 0;
        v53[1] = 0;
        if (SLODWORD(v79[4]) >= 1)
        {
          v54 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *&v39[4 * v54]), *(v25 + 4 * v54));
            ++v54;
          }

          while (v54 < SLODWORD(v79[4]));
        }

        if (SHIDWORD(v79[3]) >= 1)
        {
          v55 = 0;
          do
          {
            *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * *(v33 + v55)), *&v23[4 * v55]);
            ++v55;
          }

          while (v55 < SHIDWORD(v79[3]));
        }

        *(*a3 + 16 * v26) = vmlaq_n_f32(*(*a3 + 16 * v26), *(*a2 + 16 * v26), *v64);
        if ((v65 & 1) == 0)
        {
          if (LODWORD(v78[1]) != LODWORD(v74[4]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_1();
          }

          if (HIDWORD(v78[0]) != HIDWORD(v74[3]))
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 16 * v26) = 0u;
          *(*a5 + 16 * v26) = 0u;
          if (SLODWORD(v78[1]) >= 1)
          {
            v56 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *&v39[4 * v56]), *(v62 + 4 * v56));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *&v39[4 * v56]), *(v58 + 4 * v56));
              ++v56;
            }

            while (v56 < SLODWORD(v78[1]));
          }

          if (SHIDWORD(v78[0]) >= 1)
          {
            v57 = 0;
            do
            {
              *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * *(v33 + v57)), *(v63 + 4 * v57));
              *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * *(v33 + v57)), *(v59 + 4 * v57));
              ++v57;
            }

            while (v57 < SHIDWORD(v78[0]));
          }

          *(*a4 + 16 * v26) = vmlaq_n_f32(*(*a4 + 16 * v26), *(*a2 + 16 * v26), *v61);
          *(*a5 + 16 * v26) = vmlaq_n_f32(*(*a5 + 16 * v26), *(*a2 + 16 * v26), *v60);
        }
      }

      ++v26;
    }

    while (v26 < *(v9 + 2));
    v22 = __p;
  }

  operator delete(v22);
  operator delete(v90);
}

void _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE0ENSt3__16vectorI16C3DSubdivCPUDataIDv4_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  v10 = 2 * *(v9 + 20);
  v11 = v10 | 1;
  if (a4)
  {
    _ZF = a5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v13 = _ZF;
  if (_ZF)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v48 = &v51;
  v49 = v10 | 1;
  v50 = 33;
  v52 = 0;
  if (v10 >= 0x22)
  {
    v52 = operator new(4 * (v10 | 1));
    v48 = v52;
    v50 = v10 | 1;
  }

  v15 = v11 * v14;
  v16 = &v46;
  __p = 0;
  if (v15 < 0x64)
  {
    v17 = 0;
  }

  else
  {
    v17 = operator new(4 * v15);
    __p = v17;
    v16 = v17;
  }

  if (*(v9 + 8) >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = &v16[v11];
    v22 = &v21[v11];
    __asm { FMOV            V2.2S, #-1.0 }

    v27 = -_D2;
    do
    {
      if ((*(*(v9 + 432) + 2 * v18) & 0x800) != 0 || (v28 = (*(v9 + 336) + 8 * v18), v29 = *v28, !v29))
      {
        v45 = (*a3 + 16 * v18);
        *v45 = 0;
        v45[1] = 0;
        *(*a3 + 16 * v18) = vaddq_f32(*(*a2 + 16 * v18), *(*a3 + 16 * v18));
        if ((v13 & 1) == 0)
        {
          *(*a4 + 16 * v18) = 0uLL;
          *(*a5 + 16 * v18) = 0uLL;
        }
      }

      else
      {
        v30 = *(v9 + 360);
        v31 = v28[1];
        v32 = v16;
        if ((v13 & 1) == 0)
        {
          *v16 = 1.0;
          *v21 = v27;
          v21[2] = 0.0;
          v32 = &v21[v11 + 2];
          v20 = 2;
          v19 = 2;
          *v22 = 3212836864;
        }

        *v32 = 1.0;
        v33 = v48;
        if (v29 >= 1)
        {
          v34 = (v30 + 4 * v31);
          v35 = *(v9 + 120);
          v36 = v48;
          do
          {
            v37 = *v34++;
            *v36++ = *(v35 + 8 * v37 + 4 * (v18 == *(v35 + 8 * v37)));
            --v29;
          }

          while (v29);
        }

        v38 = (*a3 + 16 * v18);
        *v38 = 0;
        v38[1] = 0;
        *(*a3 + 16 * v18) = vmlaq_n_f32(*(*a3 + 16 * v18), *(*a2 + 16 * v18), *v16);
        if ((v13 & 1) == 0)
        {
          if (v19 != v20)
          {
            _ZNK10OpenSubdiv6v3_1_13Far14PrimvarRefiner5limitILNS0_3Sdc10SchemeTypeE1ENSt3__16vectorI16C3DSubdivCPUDataIDv2_fENS6_9allocatorISA_EEEESD_SD_SD_EEvRKT0_RT1_PT2_PT3__cold_2();
          }

          *(*a4 + 16 * v18) = 0uLL;
          *(*a5 + 16 * v18) = 0uLL;
          v39 = v20;
          v40 = &v16[v10 + 2];
          v41 = &v16[2 * v10 + 3];
          if (v20 >= 1)
          {
            do
            {
              v42 = *v40++;
              *(*a4 + 16 * v18) = vmlaq_n_f32(*(*a4 + 16 * v18), *(*a2 + 16 * *v33), v42);
              v44 = *v33++;
              v43 = v44;
              *&v44 = *v41++;
              *(*a5 + 16 * v18) = vmlaq_n_f32(*(*a5 + 16 * v18), *(*a2 + 16 * v43), *&v44);
              --v39;
            }

            while (v39);
          }

          *(*a4 + 16 * v18) = vmlaq_n_f32(*(*a4 + 16 * v18), *(*a2 + 16 * v18), *v21);
          *(*a5 + 16 * v18) = vmlaq_n_f32(*(*a5 + 16 * v18), *(*a2 + 16 * v18), *v22);
          v19 = v20;
        }
      }

      ++v18;
    }

    while (v18 < *(v9 + 8));
    v17 = __p;
  }

  operator delete(v17);
  operator delete(v52);
}

uint64_t _ZNSt3__16__treeINS_12__value_typeIDv3_fjEENS_19__map_value_compareIS2_S3_30__C3DSubdivWelderKeyComparatorLb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JNS_4pairIS2_jEEEEENSB_INS_15__tree_iteratorIS3_PNS_11__tree_nodeIS3_PvEElEEbEERKT_DpOT0_(uint64_t **a1, float32x4_t *a2, uint64_t a3)
{
  v3 = _ZNSt3__16__treeINS_12__value_typeIDv3_fjEENS_19__map_value_compareIS2_S3_30__C3DSubdivWelderKeyComparatorLb1EEENS_9allocatorIS3_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISE_EERKT_(a1, &v5, a2)->i64[0];
  if (!v3)
  {
    operator new();
  }

  return v3;
}

float32x4_t *_ZNSt3__16__treeINS_12__value_typeIDv3_fjEENS_19__map_value_compareIS2_S3_30__C3DSubdivWelderKeyComparatorLb1EEENS_9allocatorIS3_EEE12__find_equalIS2_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISE_EERKT_(uint64_t a1, float32x4_t **a2, float32x4_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = v4[2];
    v8 = vceqq_f32(*a3, v7);
    v9 = v8;
    v9.i32[3] = v8.i32[2];
    if ((vminvq_u32(v9) & 0x80000000) == 0)
    {
      while (1)
      {
        v10 = vcgtq_f32(v7, v6);
        if (v10.i32[0])
        {
          break;
        }

        if (v8.i32[0])
        {
          if (v10.i32[1])
          {
            break;
          }

          v13 = v8.i32[1];
          if (v8.i32[1] && v10.i32[2] != 0)
          {
            break;
          }

          v15 = vcgtq_f32(v6, v7);
          v16 = vceqz_s32(*v15.i8);
          if (v13)
          {
            v17 = v15.i32[2] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          if ((v16.i8[0] & 1) != 0 && (v16.i8[4] & 1) != 0 && !v18)
          {
            goto LABEL_28;
          }
        }

        else if ((vmovn_s32(vcgtq_f32(v6, v7)).u8[0] & 1) == 0)
        {
          goto LABEL_28;
        }

        result = &v4->u32[2];
        v11 = v4->i64[1];
        if (!v11)
        {
          goto LABEL_28;
        }

LABEL_5:
        v7 = v11[2];
        v8 = vceqq_f32(v6, v7);
        v12 = v8;
        v12.i32[3] = v8.i32[2];
        v4 = v11;
        if ((vminvq_u32(v12) & 0x80000000) != 0)
        {
          goto LABEL_28;
        }
      }

      v11 = v4->i64[0];
      result = v4;
      if (!v4->i64[0])
      {
        goto LABEL_28;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v4 = result;
  }

LABEL_28:
  *a2 = v4;
  return result;
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:nn200100](&v2, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, v13);
}

void std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:nn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivMeshSourceIndexingInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::populateBaseLevel(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *a1, int *a2, uint64_t a3, char a4)
{
  if (!OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::resizeComponentTopology(a1, a2) || !OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing(a1, v7) || !OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTopology(a1, a2) || !OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologyAssignment(a1, a4 & 1, OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::reportInvalidTopology, a2) || !OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTags(a1, a2) || !OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness(a1, v8) || !OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignFaceVaryingTopology(a1, a2))
  {
    return 0;
  }

  return OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareFaceVaryingChannels(a1, v9);
}

uint64_t std::vector<C3DSubdivCPUFVarPrimvarInfo>::emplace_back<C3DSubdivCPUFVarPrimvarInfo>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = std::vector<C3DSubdivCPUFVarPrimvarInfo>::__emplace_back_slow_path<C3DSubdivCPUFVarPrimvarInfo>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v4 = v3 + 32;
  }

  a1[1] = v4;
  return v4 - 32;
}

uint64_t std::vector<C3DSubdivCPUFVarPrimvarInfo>::__emplace_back_slow_path<C3DSubdivCPUFVarPrimvarInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUFVarPrimvarInfo>>(a1, v7);
  }

  v8 = 32 * v2;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v9 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<C3DSubdivCPUFVarPrimvarInfo>,C3DSubdivCPUFVarPrimvarInfo*>(a1, *a1, v10, v8 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  v13 = a1[2];
  a1[2] = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  std::__split_buffer<C3DSubdivCPUFVarPrimvarInfo>::~__split_buffer(v15);
  return v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUFVarPrimvarInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<C3DSubdivCPUFVarPrimvarInfo>,C3DSubdivCPUFVarPrimvarInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }
}

uint64_t std::__split_buffer<C3DSubdivCPUFVarPrimvarInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<C3DSubdivCPUFVarPrimvarInfo>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<C3DSubdivCPUFVarPrimvarInfo>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<C3DSubdivCPUPrimvarDataGroup>::__append(char **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0x8E38E38E38E38E39 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 72 * ((72 * a2 - 72) / 0x48) + 72;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarDataGroup>>(a1, v9);
    }

    v11 = 72 * v6;
    v12 = 72 * ((72 * a2 - 72) / 0x48) + 72;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarDataGroup>,C3DSubdivCPUPrimvarDataGroup*>(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<C3DSubdivCPUPrimvarDataGroup>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarDataGroup>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<C3DSubdivCPUPrimvarDataGroup>,C3DSubdivCPUPrimvarDataGroup*>(uint64_t result, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      std::allocator<C3DSubdivCPUPrimvarDataGroup>::construct[abi:nn200100]<C3DSubdivCPUPrimvarDataGroup,C3DSubdivCPUPrimvarDataGroup>(result, a4, v8);
      v8 += 72;
      a4 += 9;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<C3DSubdivCPUPrimvarDataGroup>>::destroy[abi:nn200100]<C3DSubdivCPUPrimvarDataGroup,0>(result, v6);
      v6 += 9;
    }
  }
}

__n128 std::allocator<C3DSubdivCPUPrimvarDataGroup>::construct[abi:nn200100]<C3DSubdivCPUPrimvarDataGroup,C3DSubdivCPUPrimvarDataGroup>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  result = *(a3 + 48);
  *(a2 + 3) = result;
  a2[8] = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

void std::allocator_traits<std::allocator<C3DSubdivCPUPrimvarDataGroup>>::destroy[abi:nn200100]<C3DSubdivCPUPrimvarDataGroup,0>(uint64_t a1, void **a2)
{
  v3 = a2 + 6;
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v3);
  v3 = a2 + 3;
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v3);
  v3 = a2;
  _ZNSt3__16vectorI23C3DSubdivCPUPrimvarDataIDv4_fENS_9allocatorIS3_EEE16__destroy_vectorclB8nn200100Ev(&v3);
}

void **std::__split_buffer<C3DSubdivCPUPrimvarDataGroup>::~__split_buffer(void **a1)
{
  std::__split_buffer<C3DSubdivCPUPrimvarDataGroup>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<C3DSubdivCPUPrimvarDataGroup>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    std::allocator_traits<std::allocator<C3DSubdivCPUPrimvarDataGroup>>::destroy[abi:nn200100]<C3DSubdivCPUPrimvarDataGroup,0>(v4, (i - 72));
  }
}

uint64_t std::vector<C3DSubdivGPUFVarPrimvarData>::emplace_back<C3DSubdivGPUFVarPrimvarData>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = std::vector<C3DSubdivGPUFVarPrimvarData>::__emplace_back_slow_path<C3DSubdivGPUFVarPrimvarData>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v4 = v3 + 64;
  }

  a1[1] = v4;
  return v4 - 64;
}

uint64_t std::vector<C3DSubdivGPUFVarPrimvarData>::__emplace_back_slow_path<C3DSubdivGPUFVarPrimvarData>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivGPUFVarPrimvarData>>(a1, v7);
  }

  v8 = v2 << 6;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v9 = (v2 << 6) + 64;
  v10 = a1[1];
  v11 = (v2 << 6) + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<C3DSubdivGPUFVarPrimvarData>,C3DSubdivGPUFVarPrimvarData*>(a1, *a1, v10, v8 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  v13 = a1[2];
  a1[2] = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  std::__split_buffer<C3DSubdivGPUFVarPrimvarData>::~__split_buffer(v15);
  return v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivGPUFVarPrimvarData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<C3DSubdivGPUFVarPrimvarData>,C3DSubdivGPUFVarPrimvarData*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 2);
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v7[4];
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      v7 += 8;
      a4 += 64;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator<C3DSubdivGPUFVarPrimvarData>::destroy[abi:nn200100](a1, v5);
      v5 += 8;
    }
  }
}

void **std::__split_buffer<C3DSubdivGPUFVarPrimvarData>::~__split_buffer(void **a1)
{
  std::__split_buffer<C3DSubdivGPUFVarPrimvarData>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<C3DSubdivGPUFVarPrimvarData>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    std::allocator<C3DSubdivGPUFVarPrimvarData>::destroy[abi:nn200100](v4, (i - 64));
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<C3DSubdivGPUPrimvarInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t __updateJointsTransformHandles(uint64_t result)
{
  if (*(result + 104))
  {
    v1 = result;
    free(*(result + 96));
    *(v1 + 96) = malloc_type_malloc(4 * *(v1 + 104), 0x100004052888210uLL);
    result = C3DGetScene(v1, v2);
    if (*(v1 + 104) >= 1)
    {
      v3 = result;
      v4 = 0;
      do
      {
        result = CFArrayGetValueAtIndex(*(v1 + 88), v4);
        if (result && (v6 = result, result = C3DGetScene(result, v5), result == v3))
        {
          v7 = *(v6 + 88);
        }

        else
        {
          v7 = -1;
        }

        v8 = *(v1 + 104);
        *(*(v1 + 96) + 4 * v4++) = v7;
      }

      while (v4 < v8);
    }
  }

  return result;
}

__C3DMesh *_C3DGetEffectiveBaseMesh(uint64_t a1, uint64_t a2, __C3DGeometry *a3, int a4)
{
  Morpher = C3DNodeGetMorpher(a2, a2);
  if (a4 == 2 || !Morpher)
  {
    if (a3)
    {

      return C3DGeometryGetRenderingMesh(a3, v7);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return C3DMorpherGetMorphedMeshLegacy(Morpher, v7);
  }
}

uint64_t C3DSkinnerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DSkinnerGetTypeID_onceToken != -1)
  {
    C3DSkinnerGetTypeID_cold_1();
  }

  return C3DSkinnerGetTypeID_typeID;
}

double __C3DSkinnerGetTypeID_block_invoke()
{
  C3DSkinnerGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281740378 = kC3DC3DSkinnerContextClassSerializable;
  unk_281740388 = *&off_282DC63B8;
  result = *&kC3DC3DSkinnerContextClassSceneLink;
  unk_281740348 = kC3DC3DSkinnerContextClassSceneLink;
  qword_281740330 = _C3DSkinnerCopyInstanceVariables;
  unk_281740358 = *&off_282DC63D8;
  qword_281740368 = qword_282DC63E8;
  unk_281740370 = _C3DSkinnerSearchByID;
  return result;
}

__n128 C3DSkinnerCreate(uint64_t a1, uint64_t a2)
{
  if (C3DSkinnerGetTypeID_onceToken != -1)
  {
    C3DSkinnerGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSkinnerGetTypeID_typeID, 208);
  *(Instance + 195) = 0;
  *(Instance + 208) = 1;
  *(Instance + 193) = 1;
  result = *(MEMORY[0x277D860B8] + 48);
  *(Instance + 160) = result;
  *(Instance + 176) = xmmword_21C27F650;
  return result;
}

uint64_t C3DSkinnerCreateWithSkin(void *a1, uint64_t a2)
{
  C3DSkinnerCreate(a1, a2);
  v4 = v3;
  C3DSkinnerSetSkin(v3, a1);
  return v4;
}

__n128 C3DSkinnerSetSkin(uint64_t a1, void *cf)
{
  v3 = *(a1 + 72);
  if (v3 != cf)
  {
    if (v3)
    {
      C3DRemoveSceneRef(v3, *(a1 + 48));
      v5 = *(a1 + 72);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    *(a1 + 72) = cf;
    if (cf)
    {
      CFRetain(cf);
      C3DAddSceneRef(cf, *(a1 + 48));
    }

    v6 = MEMORY[0x277D860B8];
    *(a1 + 193) = 1;
    result = v6[3];
    *(a1 + 160) = result;
    *(a1 + 176) = xmmword_21C27F650;
  }

  return result;
}

uint64_t C3DSkinnerCreateCopy(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  C3DSkinnerCreate(a1, a2);
  v5 = v4;
  C3DSkinnerSetSkin(v4, v3);
  C3DSkinnerSetSkeleton(v5, *(a1 + 80));
  Copy = CFArrayCreateCopy(0, *(a1 + 88));
  C3DSkinnerSetJoints(v5, Copy);
  CFRelease(Copy);
  *(v5 + 192) = *(a1 + 192);
  C3DEntityCopyTo(a1, v5);
  return v5;
}

__n128 C3DSkinnerSetSkeleton(uint64_t a1, void *cf)
{
  CommonAncestor = cf;
  if (!cf)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      CommonAncestor = C3DNodeFindCommonAncestor(v4, 0);
    }

    else
    {
      CommonAncestor = 0;
    }
  }

  v5 = *(a1 + 80);
  if (v5 != CommonAncestor)
  {
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }

    if (CommonAncestor)
    {
      v6 = CFRetain(CommonAncestor);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 80) = v6;
  }

  v7 = MEMORY[0x277D860B8];
  *(a1 + 193) = 1;
  result = v7[3];
  *(a1 + 160) = result;
  *(a1 + 176) = xmmword_21C27F650;
  return result;
}

void C3DSkinnerSetJoints(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 88);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      *(a1 + 88) = CFRetain(cf);
      Count = CFArrayGetCount(cf);
      *(a1 + 104) = Count;
      v6 = Count > 0;
      if (Count < 1)
      {
        v6 = 0;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
          C3DNodeSetIsJoint(ValueAtIndex, 1);
        }
      }
    }

    else
    {
      v6 = 0;
      Count = 0;
      *(a1 + 88) = 0;
      *(a1 + 104) = 0;
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      free(v10);
    }

    v11 = *(a1 + 128);
    if (v11)
    {
      free(v11);
    }

    v12 = *(a1 + 144);
    if (v12)
    {
      free(v12);
    }

    if (Count)
    {
      *(a1 + 112) = C3DMalloc(Count << 6);
      *(a1 + 120) = C3DMalloc(Count << 6);
      *(a1 + 128) = C3DMalloc(48 * Count);
      v13 = C3DMalloc(32 * Count);
    }

    else
    {
      v13 = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
    }

    *(a1 + 144) = v13;
    v14 = *(MEMORY[0x277D860B8] + 48);
    if (v6)
    {
      v15 = 0;
      v16 = 0;
      v18 = *(MEMORY[0x277D860B8] + 48);
      do
      {
        C3DMatrix4x4MakeIdentity(*(a1 + 112) + v15);
        C3DMatrix4x4MakeIdentity(*(a1 + 120) + v15);
        v14 = v18;
        v17 = (*(a1 + 144) + v16);
        *v17 = v18;
        v17[1] = xmmword_21C27F650;
        v16 += 32;
        v15 += 64;
        --Count;
      }

      while (Count);
    }

    *(a1 + 193) = 1;
    *(a1 + 160) = v14;
    *(a1 + 176) = xmmword_21C27F650;
    free(*(a1 + 96));
    *(a1 + 96) = 0;
  }
}

void C3DSkinnerSetOwnerNode(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerSetOwnerNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 64) = a2;
}

BOOL C3DSkinnerTransposeSkeleton(uint64_t a1, void *a2)
{
  Count = CFArrayGetCount(*(a1 + 88));
  MutableCopy = CFArrayCreateMutableCopy(0, Count, *(a1 + 88));
  v15 = 0;
  if (C3DSkinnerFindJointsInClone(a1, MutableCopy, *(a1 + 80), a2, &v15))
  {
    v6 = v15;
    v7 = CFArrayGetCount(MutableCopy);
    v9 = v7 == v6;
    v10 = v7 == v6;
    if (v9)
    {
      C3DSkinnerSetJoints(a1, MutableCopy);
      C3DSkinnerSetSkeleton(a1, a2);
    }

    else
    {
      v11 = scn_default_log(v7, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_21BEF7000, v11, OS_LOG_TYPE_DEFAULT, "Warning: C3DSkinnerTransposeSkeleton - unable to transpose every joints", v14, 2u);
      }
    }

    CFRelease(MutableCopy);
  }

  else
  {
    CFRelease(MutableCopy);
    return 0;
  }

  return v10;
}

uint64_t C3DSkinnerFindJointsInClone(uint64_t a1, __CFArray *a2, const void *a3, const void *a4, _DWORD *a5)
{
  if (!a3)
  {
    return 0;
  }

  if (CFArrayGetCount(*(a1 + 88)) >= 1)
  {
    Count = 0;
    do
    {
      if (CFArrayGetValueAtIndex(*(a1 + 88), Count) == a3)
      {
        CFArraySetValueAtIndex(a2, Count, a4);
        ++*a5;
        Count = CFArrayGetCount(*(a1 + 88));
      }

      ++Count;
    }

    while (Count < CFArrayGetCount(*(a1 + 88)));
  }

  free(*(a1 + 96));
  *(a1 + 96) = 0;
  HasChildren = C3DNodeHasChildren(a3);
  v12 = C3DNodeHasChildren(a4);
  v13 = v12;
  result = HasChildren ^ v12 ^ 1u;
  if (HasChildren && v13)
  {
    ChildNodesCount = C3DNodeGetChildNodesCount(a3);
    if (ChildNodesCount == C3DNodeGetChildNodesCount(a4))
    {
      v16 = ChildNodesCount;
      if (ChildNodesCount)
      {
        v17 = 0;
        v18 = v16 - 1;
        do
        {
          ChildNodeAtIndex = C3DNodeGetChildNodeAtIndex(a3, v17);
          v20 = C3DNodeGetChildNodeAtIndex(a4, v17);
          result = C3DSkinnerFindJointsInClone(a1, a2, ChildNodeAtIndex, v20, a5);
          if (!result)
          {
            break;
          }
        }

        while (v18 != v17++);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFIndex C3DSkinnerSkeletonNeedsRetargeting(uint64_t a1, const void *a2)
{
  result = CFArrayGetCount(*(a1 + 88));
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), 0);
    return ValueAtIndex != a2 && !C3DNodeIsAncestor(ValueAtIndex, a2);
  }

  return result;
}

BOOL C3DSkinnerTransposeSkeletonUsingNodeNames(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(*(a1 + 88));
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (Count < 1)
  {
    v6 = 1;
LABEL_8:
    C3DSkinnerSetJoints(a1, Mutable);
    C3DSkinnerSetSkeleton(a1, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v7);
      Name = C3DNodeGetName(ValueAtIndex, v9);
      if (!Name)
      {
        v15 = scn_default_log(0, v11);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        LOWORD(v21) = 0;
        v16 = "Warning: Cannot update the joints using node names: unammed joint found";
        v17 = v15;
        v18 = 2;
        goto LABEL_13;
      }

      v12 = Name;
      NodeWithName = C3DNodeGetNodeWithName(a2, Name);
      if (!NodeWithName)
      {
        break;
      }

      CFArrayAppendValue(Mutable, NodeWithName);
      v6 = ++v7 >= Count;
      if (Count == v7)
      {
        goto LABEL_8;
      }
    }

    v19 = scn_default_log(0, v14);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v21 = 138412290;
    v22 = v12;
    v16 = "Warning: Cannot update the joints using node names: can't find node named %@";
    v17 = v19;
    v18 = 12;
LABEL_13:
    _os_log_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_DEFAULT, v16, &v21, v18);
  }

LABEL_14:
  CFRelease(Mutable);
  return v6;
}

void _C3DSkinnerUpdateBoundingBox(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  if (!v2)
  {
    return;
  }

  Geometry = C3DNodeGetGeometry(a2, a2);
  if (Geometry)
  {
    v6 = Geometry;
    v7 = *(a1 + 88);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    JointsCount = C3DSkinGetJointsCount(v2);
    if (Count && Count == JointsCount)
    {
      v80 = 0;
      v81 = 0;
      v79 = 0;
      VertexWeightsPointers = C3DSkinGetVertexWeightsPointers(v2, &v81, &v80, &v79);
      MEMORY[0x28223BE20](VertexWeightsPointers);
      v13 = &v77 - Count;
      MEMORY[0x28223BE20](v14);
      v15 = v13;
      if (Count >= 1)
      {
        memset_pattern16(&v77 - Count, &xmmword_21C2A2690, 16 * Count);
        memset_pattern16(&v77 - Count, &xmmword_21C2A26A0, 16 * Count);
      }

      DefaultShapeMatrix = C3DSkinGetDefaultShapeMatrix(v2);
      InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v2);
      if (Count == 1)
      {
        v78.i32[2] = 0;
        v78.i64[0] = 0;
        v77.i32[2] = 0;
        v77.i64[0] = 0;
        if (C3DGeometryUsesDeformerBasedDynamicMesh(v6))
        {
          C3DGetBoundingBox(v6, 0, &v78, &v77);
        }

        else
        {
          RenderingMesh = C3DGeometryGetRenderingMesh(v6, v19);
          C3DMeshGetBoundingBox(RenderingMesh, &v78, &v77);
        }

        v48 = 0;
        v49 = vaddq_f32(v78, v77);
        v50.i64[0] = 0x3F0000003F000000;
        v50.i64[1] = 0x3F0000003F000000;
        v51 = vmulq_f32(vsubq_f32(v77, v78), v50);
        v52 = *InverseBindMatricesPtr;
        v53 = InverseBindMatricesPtr[1];
        v54 = InverseBindMatricesPtr[2];
        v55 = InverseBindMatricesPtr[3];
        v56 = DefaultShapeMatrix[1];
        v57 = DefaultShapeMatrix[2];
        v58 = DefaultShapeMatrix[3];
        v82[0] = *DefaultShapeMatrix;
        v82[1] = v56;
        v82[2] = v57;
        v82[3] = v58;
        *buf = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        do
        {
          *&buf[v48 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v52, COERCE_FLOAT(v82[v48])), v53, *&v82[v48], 1), v54, v82[v48], 2), v55, v82[v48], 3);
          ++v48;
        }

        while (v48 != 4);
        v59.i64[0] = 0x3F0000003F000000;
        v59.i64[1] = 0x3F0000003F000000;
        v60 = vmulq_f32(v49, v59);
        v61 = v51;
        v61.i32[3] = 0;
        v62 = vaddq_f32(v86, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v84, *v60.f32, 1), *buf, v60.f32[0]), v85, v60, 2));
        v62.i32[3] = 1.0;
        v63 = vuzp2q_s32(vdupq_lane_s32(*v51.f32, 1), v61);
        v64 = vzip2q_s32(vtrn1q_s32(v61, v61), v61);
        v61.i32[1] = v51.i32[0];
        v61.i32[2] = v51.i32[0];
        v65 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v61, *buf)), vabsq_f32(vmulq_f32(v63, v84))), vabsq_f32(vmulq_f32(v64, v85)));
        *v13 = vsubq_f32(v62, v65);
        *v13 = vaddq_f32(v65, v62);
LABEL_44:
        if (Count >= 1)
        {
          v66 = 0;
          v67.i64[0] = 0x3F0000003F000000;
          v67.i64[1] = 0x3F0000003F000000;
          do
          {
            v68 = (*(a1 + 144) + v66);
            v69 = *v13++;
            v70 = v69;
            v71 = *v15++;
            v72 = vmulq_f32(vaddq_f32(v70, v71), v67);
            v73 = vmulq_f32(vsubq_f32(v71, v70), v67);
            v72.i32[3] = 1.0;
            v73.i32[3] = 0;
            *v68 = v72;
            v68[1] = v73;
            v66 += 32;
            --Count;
          }

          while (Count);
        }

        *(a1 + 193) = 0;
        return;
      }

      v21 = C3DGeometryGetRenderingMesh(v6, v17);
      if (v21)
      {
        PositionSource = C3DMeshGetPositionSource(v21, 0);
        if (PositionSource)
        {
          *buf = 0u;
          v84 = 0u;
          Content = C3DMeshSourceGetContent(PositionSource, v24, buf);
          if (v84.i8[6])
          {
            v27 = v84.i32[0];
            if (v27 <= C3DMeshSourceGetMTLVertexFormat(v2) && v84.i32[0])
            {
              v31 = 0;
              do
              {
                *v32.i64 = C3DConvertFloatingTypeToFloat4(v84.u8[4], (*buf + v31 * v84.u8[6]), v28, v29.f32[0], v30.f32[0]);
                v29 = *DefaultShapeMatrix;
                v30 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(DefaultShapeMatrix[1], *v32.f32, 1), *DefaultShapeMatrix, v32.f32[0]), DefaultShapeMatrix[2], v32, 2);
                v28 = vaddq_f32(DefaultShapeMatrix[3], v30);
                if (v81)
                {
                  v33 = Count < 2;
                }

                else
                {
                  v33 = 1;
                }

                if (v33)
                {
                  v34 = *v13;
                  v30 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(InverseBindMatricesPtr[1], *v28.f32, 1), *InverseBindMatricesPtr, v28.f32[0]), InverseBindMatricesPtr[2], v28, 2);
                  v35 = vaddq_f32(InverseBindMatricesPtr[3], v30);
                  v35.i32[3] = 0;
                  v34.i32[3] = 0;
                  *v13 = vminnmq_f32(v35, v34);
                  v29 = *v13;
                  v29.i32[3] = 0;
                  v28 = vmaxnmq_f32(v35, v29);
                  *v13 = v28;
                  ++v31;
                }

                else
                {
                  v36 = *(v81 + 8 * v31++);
                  v37 = *(v81 + 8 * v31);
                  v33 = v37 <= v36;
                  v38 = v37 - v36;
                  if (!v33)
                  {
                    v39 = v79;
                    v29 = vdupq_laneq_s32(v28, 2);
                    v30 = vdupq_lane_s32(*v28.f32, 0);
                    v40 = (v79 + 4 * v36);
                    v41 = (v80 + 2 * v36);
                    do
                    {
                      v43 = *v41++;
                      v42 = v43;
                      if ((v43 & 0x8000000000000000) == 0 && (!v39 || *v40 > 0.0) && Count > v42)
                      {
                        v44 = vaddq_f32(InverseBindMatricesPtr[4 * v42 + 3], vmlaq_f32(vmlaq_f32(vmulq_lane_f32(InverseBindMatricesPtr[4 * v42 + 1], *v28.f32, 1), InverseBindMatricesPtr[4 * v42], v30), InverseBindMatricesPtr[4 * v42 + 2], v29));
                        v45 = v13[v42];
                        v44.i32[3] = 0;
                        v45.i32[3] = 0;
                        v13[v42] = vminnmq_f32(v44, v45);
                        v46 = v13[v42];
                        v46.i32[3] = 0;
                        v13[v42] = vmaxnmq_f32(v44, v46);
                      }

                      ++v40;
                      --v38;
                    }

                    while (v38);
                  }
                }
              }

              while (v31 < v84.u32[0]);
            }
          }

          else
          {
            v76 = scn_default_log(Content, v26);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              _C3DSkinnerUpdateBoundingBox_cold_2();
            }
          }

          goto LABEL_44;
        }

        v75 = scn_default_log(0, v24);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          _C3DSkinnerUpdateBoundingBox_cold_3();
        }
      }

      else
      {
        v74 = scn_default_log(0, v22);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          _C3DSkinnerUpdateBoundingBox_cold_4();
        }
      }
    }

    else if ((_C3DSkinnerUpdateBoundingBox_done & 1) == 0)
    {
      _C3DSkinnerUpdateBoundingBox_done = 1;
      v20 = scn_default_log(JointsCount, v11);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinnerUpdateBoundingBox_cold_1();
      }
    }
  }

  else
  {
    v9 = scn_default_log(0, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v9, OS_LOG_TYPE_DEFAULT, "Warning: _C3DSkinnerUpdateBoundingBox - skinned node has no geometry", buf, 2u);
    }
  }
}

uint64_t __skin_PNx4_1influence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = *MEMORY[0x277D85DE8];
  v14 = a1 + 3;
  if (a1 >= 0)
  {
    v14 = a1;
  }

  if (a1 < 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        v19 = &v54.f32[2 * i];
        v20 = (a5 + (*(a4 + 2 * *(v17 + i)) << 6));
        v21 = v20[1];
        *v19 = *v20;
        v19[1] = v21;
        v22 = v20[3];
        v19[2] = v20[2];
        v19[3] = v22;
      }

      v23 = (*a7 + v15 * *(a7 + 22));
      v73 = vld3q_f32(v23);
      v24 = (*a9 + v15 * *(a9 + 22));
      v71 = vld3q_f32(v24);
      v25 = vaddq_f32(v57, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v54, v73.val[0].f32[0]), v55, v73.val[1].f32[0]), v56, v73.val[2].f32[0]));
      v26 = vaddq_f32(v61, vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v58, *v73.val[0].f32, 1), v59, *v73.val[1].f32, 1), v60, *v73.val[2].f32, 1));
      v27 = vaddq_f32(v65, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v62, v73.val[0], 2), v63, v73.val[1], 2), v64, v73.val[2], 2));
      v28 = vaddq_f32(v69, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v66, v73.val[0], 3), v67, v73.val[1], 3), v68, v73.val[2], 3));
      v29 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v54, v71.val[0].f32[0]), v55, v71.val[1].f32[0]), v56, v71.val[2].f32[0]), 0, v57);
      v30 = vmulq_f32(v29, v29);
      *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v30.i32[0] = vadd_f32(*v30.i8, vdup_lane_s32(*v30.i8, 1)).u32[0];
      *v73.val[0].f32 = vrsqrte_f32(v30.u32[0]);
      v30.i32[0] = vmul_f32(*v73.val[0].f32, vrsqrts_f32(v30.u32[0], vmul_f32(*v73.val[0].f32, *v73.val[0].f32))).u32[0];
      v73.val[0] = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v58, *v71.val[0].f32, 1), v59, *v71.val[1].f32, 1), v60, *v71.val[2].f32, 1), 0, v61);
      v73.val[1] = vmulq_f32(v73.val[0], v73.val[0]);
      *v73.val[1].f32 = vadd_f32(*v73.val[1].f32, *&vextq_s8(v73.val[1], v73.val[1], 8uLL));
      v73.val[1].i32[0] = vadd_f32(*v73.val[1].f32, vdup_lane_s32(*v73.val[1].f32, 1)).u32[0];
      v31 = vmulq_n_f32(v29, *v30.i32);
      *v30.i8 = vrsqrte_f32(v73.val[1].u32[0]);
      v32 = vmulq_n_f32(v73.val[0], vmul_f32(*v30.i8, vrsqrts_f32(v73.val[1].u32[0], vmul_f32(*v30.i8, *v30.i8))).f32[0]);
      v33 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v62, v71.val[0], 2), v63, v71.val[1], 2), v64, v71.val[2], 2), 0, v65);
      v34 = vmulq_f32(v33, v33);
      *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v34.i32[0] = vadd_f32(*v34.i8, vdup_lane_s32(*v34.i8, 1)).u32[0];
      v35 = vrsqrte_f32(v34.u32[0]);
      v36 = vmulq_n_f32(v33, vmul_f32(v35, vrsqrts_f32(v34.u32[0], vmul_f32(v35, v35))).f32[0]);
      v37 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v66, v71.val[0], 3), v67, v71.val[1], 3), v68, v71.val[2], 3), 0, v69);
      v71.val[0] = vmulq_f32(v37, v37);
      *v71.val[0].f32 = vadd_f32(*v71.val[0].f32, *&vextq_s8(v71.val[0], v71.val[0], 8uLL));
      v71.val[0].i32[0] = vadd_f32(*v71.val[0].f32, vdup_lane_s32(*v71.val[0].f32, 1)).u32[0];
      *v71.val[1].f32 = vrsqrte_f32(v71.val[0].u32[0]);
      v38 = (a6->i64[0] + v15 * a6[1].u8[6]);
      v71.val[2] = vtrn1q_s32(v25, v27);
      v39 = vtrn2q_s32(v25, v27);
      v40 = vtrn1q_s32(v26, v28);
      v72.val[0] = vzip1q_s32(v71.val[2], v40);
      v72.val[2] = vzip2q_s32(v71.val[2], v40);
      v72.val[1] = vzip1q_s32(v39, vtrn2q_s32(v26, v28));
      vst3q_f32(v38, v72);
      v41 = vmulq_n_f32(v37, vmul_f32(*v71.val[1].f32, vrsqrts_f32(v71.val[0].u32[0], vmul_f32(*v71.val[1].f32, *v71.val[1].f32))).f32[0]);
      v42 = (*a8 + v15 * *(a8 + 22));
      v43 = vtrn1q_s32(v31, v36);
      v71.val[1] = vtrn1q_s32(v32, v41);
      v71.val[2] = vzip1q_s32(v43, v71.val[1]);
      v44 = vzip2q_s32(v43, v71.val[1]);
      v45 = vzip1q_s32(vtrn2q_s32(v31, v36), vtrn2q_s32(v32, v41));
      vst3q_f32(v42, *(&v71 + 32));
      v15 += 4;
      v17 += 32;
    }

    while (v15 < v16);
  }

  v46 = a6[1];
  v54 = *a6;
  v55 = v46;
  v47 = *(a7 + 16);
  v53[0] = *a7;
  v53[1] = v47;
  v48 = *(a8 + 16);
  v52[0] = *a8;
  v52[1] = v48;
  v49 = *(a9 + 16);
  v51[0] = *a9;
  v51[1] = v49;
  return __skinCPULike_PN(v15, a1, a2, a3, a4, a5, &v54, v53, v52, v51);
}

uint64_t __skinCPULike_PN(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  if (result < a2)
  {
    v10 = *a8;
    v11 = *(a8 + 22);
    v12 = *a10;
    v13 = *(a10 + 22);
    v14 = *a7;
    v15 = *(a7 + 22);
    v16 = *a9;
    v17 = *(a9 + 22);
    v18 = *(a3 + 8 * result);
    do
    {
      v19 = result + 1;
      v20 = *(a3 + 8 * (result + 1));
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = v20 - v18;
      if (v20 > v18)
      {
        v26 = (a4 + 4 * v18);
        v27 = (a5 + 2 * v18);
        do
        {
          if (a4)
          {
            v28 = *v26;
          }

          else
          {
            v28 = 1.0;
          }

          v29 = *v27++;
          v30 = (a6 + (v29 << 6));
          v21 = vaddq_f32(v21, vmulq_n_f32(*v30, v28));
          v22 = vaddq_f32(v22, vmulq_n_f32(v30[1], v28));
          v23 = vaddq_f32(v23, vmulq_n_f32(v30[2], v28));
          v24 = vaddq_f32(v24, vmulq_n_f32(v30[3], v28));
          ++v26;
          --v25;
        }

        while (v25);
      }

      v31 = (v10 + result * v11);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[2];
      v35 = (v12 + result * v13);
      v36 = *v35;
      v37 = v35[1];
      v38 = v35[2];
      v39 = vaddq_f32(v24, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v21, v32), v22, v33), v23, v34));
      v40 = v14 + result * v15;
      *v40 = v39.i64[0];
      *(v40 + 8) = v39.i32[2];
      v41 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v21, v36), v22, v37), v23, v38), 0, v24);
      v42 = vmulq_f32(v41, v41);
      *v42.i8 = vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
      v42.i32[0] = vadd_f32(*v42.i8, vdup_lane_s32(*v42.i8, 1)).u32[0];
      v43 = vrsqrte_f32(v42.u32[0]);
      v44 = vmulq_n_f32(v41, vmul_f32(v43, vrsqrts_f32(v42.u32[0], vmul_f32(v43, v43))).f32[0]);
      v45 = v16 + result * v17;
      *v45 = v44.i64[0];
      *(v45 + 8) = v44.i32[2];
      v18 = v20;
      result = v19;
    }

    while (v19 != a2);
  }

  return result;
}

uint64_t __skin_PNx4_1bone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int32x4_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v15 = a1 + 3;
  if (a1 >= 0)
  {
    v15 = a1;
  }

  if (a1 < 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    v18 = a6[1];
    v17 = a6[2];
    v19 = *a6;
    v20 = vdupq_laneq_s32(*a6, 3);
    v21 = vdupq_laneq_s32(*a6, 2);
    v22 = vdupq_lane_s32(*a6->i8, 1);
    v23 = vdupq_laneq_s32(v18, 3);
    v24 = vdupq_laneq_s32(v18, 2);
    v25 = vdupq_lane_s32(*v18.i8, 1);
    v26 = vdupq_laneq_s32(v17, 3);
    v27 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = vdupq_laneq_s32(v17, 2);
    v29 = vdupq_lane_s32(*v17.i8, 1);
    do
    {
      v30 = (*a10 + v16 * *(a10 + 22));
      v50 = vld3q_f32(v30);
      v31 = *a9;
      v32 = (*a8 + v16 * *(a8 + 22));
      v33 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v50.val[0], *v19.i32), v50.val[1], v22), v50.val[2], v21), 0, v20);
      v34 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v50.val[0], *v18.i32), v50.val[1], v25), v50.val[2], v24), 0, v23);
      v35 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v50.val[0], *v17.i32), v50.val[1], v29), v50.val[2], v28), 0, v26);
      v36 = *(a9 + 22);
      v51 = vld3q_f32(v32);
      v50.val[0] = vaddq_f32(vmulq_f32(v35, v35), vaddq_f32(vmulq_f32(v33, v33), vmulq_f32(v34, v34)));
      v50.val[1] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v51.val[0], *v19.i32), v51.val[1], v22), v51.val[2], v21);
      v50.val[2] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v51.val[0], *v18.i32), v51.val[1], v25), v51.val[2], v24);
      v37 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v51.val[0], *v17.i32), v51.val[1], v29), v51.val[2], v28);
      v51.val[0] = vrsqrteq_f32(v50.val[0]);
      v49.val[0] = vaddq_f32(v20, v50.val[1]);
      v49.val[1] = vaddq_f32(v23, v50.val[2]);
      v38 = (*a7 + v16 * *(a7 + 22));
      v49.val[2] = vaddq_f32(v26, v37);
      vst3q_f32(v38, v49);
      v50.val[0] = vmulq_f32(v51.val[0], vrsqrtsq_f32(v50.val[0], vmulq_f32(v51.val[0], v51.val[0])));
      v51.val[0] = vmulq_f32(v50.val[0], v33);
      v51.val[1] = vmulq_f32(v50.val[0], v34);
      v39 = (v31 + v16 * v36);
      v51.val[2] = vmulq_f32(v50.val[0], v35);
      vst3q_f32(v39, v51);
      v16 += 4;
    }

    while (v16 < v27);
  }

  v40 = *(a7 + 16);
  v48[0] = *a7;
  v48[1] = v40;
  v41 = *(a8 + 16);
  v47[0] = *a8;
  v47[1] = v41;
  v42 = *(a9 + 1);
  v46[0] = *a9;
  v46[1] = v42;
  v43 = *(a10 + 16);
  v45[0] = *a10;
  v45[1] = v43;
  return __skinCPULike_PN(v16, a1, a2, a3, a4, a5, v48, v47, v46, v45);
}

uint64_t __skin_PNx4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int32x4_t *a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v84 = *MEMORY[0x277D85DE8];
  if (a2 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 + 3;
  }

  if (a2 < 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v15 = 0;
      v16 = v13 + a1;
      do
      {
        v17 = (a3 + 8 * (v13 + a1) + 8 * v15);
        v18 = *v17;
        if (a4)
        {
          v19 = *(a4 + 4 * v18);
        }

        else
        {
          v19 = 1.0;
        }

        v20 = v17[1];
        v21 = (a7 + 48 * *(a5 + 2 * v18));
        v22 = vmulq_n_f32(*v21, v19);
        v23 = vmulq_n_f32(v21[1], v19);
        v24 = vmulq_n_f32(v21[2], v19);
        if (v18 + 1 < v20)
        {
          v25 = ~v18 + v20;
          v26 = (a5 + 2 + 2 * v18);
          v27 = (a4 + 4 + 4 * v18);
          do
          {
            v29 = *v26++;
            v28 = v29;
            if (v29 < a12)
            {
              if (a4)
              {
                v30 = *v27;
              }

              else
              {
                v30 = 1.0;
              }

              v31 = (a7 + 48 * v28);
              v22 = vmlaq_n_f32(v22, *v31, v30);
              v23 = vmlaq_n_f32(v23, v31[1], v30);
              v24 = vmlaq_n_f32(v24, v31[2], v30);
            }

            ++v27;
            --v25;
          }

          while (v25);
        }

        v32 = &v72 + 3 * v15;
        *v32 = v22;
        v32[1] = v23;
        v32[2] = v24;
        ++v15;
      }

      while (v15 != 4);
      v33 = (*a9 + v16 * *(a9 + 22));
      v86 = vld3q_f32(v33);
      v34 = (*a11 + v16 * *(a11 + 22));
      v85 = vld3q_f32(v34);
      v35 = *a10;
      v36 = *(a10 + 22);
      v37 = vzip1q_s32(vzip1q_s32(v72, v74), v73);
      v38 = vtrn2q_s32(v72, v73);
      v38.i32[2] = v74.i32[1];
      v39 = vzip1q_s32(vzip2q_s32(v72, v74), vdupq_laneq_s32(v73, 2));
      v40 = vuzp2q_s32(vuzp2q_s32(v72, v73), v72);
      v40.i32[2] = v74.i32[3];
      v41 = vaddq_f32(v40, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v37, v86.val[0].f32[0]), v38, v86.val[1].f32[0]), v39, v86.val[2].f32[0]));
      v42 = vzip1q_s32(vzip1q_s32(v75, v77), v76);
      v43 = vtrn2q_s32(v75, v76);
      v43.i32[2] = v77.i32[1];
      v44 = vzip1q_s32(vzip2q_s32(v75, v77), vdupq_laneq_s32(v76, 2));
      v45 = vuzp2q_s32(vuzp2q_s32(v75, v76), v75);
      v45.i32[2] = v77.i32[3];
      v46 = vaddq_f32(v45, vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v42, *v86.val[0].f32, 1), v43, *v86.val[1].f32, 1), v44, *v86.val[2].f32, 1));
      v47 = vzip1q_s32(vzip1q_s32(v78, v80), v79);
      v48 = vtrn2q_s32(v78, v79);
      v48.i32[2] = v80.i32[1];
      v49 = vuzp2q_s32(vuzp2q_s32(v78, v79), v78);
      v49.i32[2] = v80.i32[3];
      v50 = vzip1q_s32(vzip2q_s32(v78, v80), vdupq_laneq_s32(v79, 2));
      v51 = vaddq_f32(v49, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v47, v86.val[0], 2), v48, v86.val[1], 2), v50, v86.val[2], 2));
      v52 = vtrn2q_s32(v81, v82);
      v52.i32[2] = v83.i32[1];
      v53 = vzip1q_s32(vzip1q_s32(v81, v83), v82);
      v54 = vzip1q_s32(vzip2q_s32(v81, v83), vdupq_laneq_s32(v82, 2));
      v55 = vuzp2q_s32(vuzp2q_s32(v81, v82), v81);
      v55.i32[2] = v83.i32[3];
      v86.val[0] = vaddq_f32(v55, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v53, v86.val[0], 3), v52, v86.val[1], 3), v54, v86.val[2], 3));
      v86.val[1] = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v37, v85.val[0].f32[0]), v38, v85.val[1].f32[0]), v39, v85.val[2].f32[0]), 0, v40);
      v86.val[2] = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v42, *v85.val[0].f32, 1), v43, *v85.val[1].f32, 1), v44, *v85.val[2].f32, 1), 0, v45);
      v56 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v47, v85.val[0], 2), v48, v85.val[1], 2), v50, v85.val[2], 2), 0, v49);
      v57 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v53, v85.val[0], 3), v52, v85.val[1], 3), v54, v85.val[2], 3), 0, v55);
      v85.val[0] = vzip1q_s32(v86.val[1], v56);
      v85.val[1] = vzip2q_s32(v86.val[1], v56);
      v85.val[2] = vzip1q_s32(v86.val[2], v57);
      v86.val[1] = vzip2q_s32(v86.val[2], v57);
      v86.val[2] = vzip1q_s32(v85.val[0], v85.val[2]);
      v85.val[0] = vzip2q_s32(v85.val[0], v85.val[2]);
      v85.val[1] = vzip1q_s32(v85.val[1], v86.val[1]);
      v85.val[2] = vaddq_f32(vmulq_f32(v85.val[1], v85.val[1]), vaddq_f32(vmulq_f32(v86.val[2], v86.val[2]), vmulq_f32(v85.val[0], v85.val[0])));
      v86.val[1] = vrsqrteq_f32(v85.val[2]);
      v58 = (a8->i64[0] + v16 * a8[1].u8[6]);
      v59 = vzip1q_s32(v41, v51);
      v60 = vzip2q_s32(v41, v51);
      v61 = vzip1q_s32(v46, v86.val[0]);
      v87.val[0] = vzip1q_s32(v59, v61);
      v87.val[1] = vzip2q_s32(v59, v61);
      v87.val[2] = vzip1q_s32(v60, vzip2q_s32(v46, v86.val[0]));
      vst3q_f32(v58, v87);
      v62 = vmulq_f32(v86.val[1], vrsqrtsq_f32(v85.val[2], vmulq_f32(v86.val[1], v86.val[1])));
      v85.val[2] = vmulq_f32(v62, v86.val[2]);
      v86.val[0] = vmulq_f32(v62, v85.val[0]);
      v86.val[1] = vmulq_f32(v62, v85.val[1]);
      v63 = (v35 + v16 * v36);
      vst3q_f32(v63, v86);
      v13 += 4;
    }

    while (v13 < v14);
  }

  v64 = a8[1];
  v72 = *a8;
  v73 = v64;
  v65 = *(a9 + 16);
  v71[0] = *a9;
  v71[1] = v65;
  v66 = *(a10 + 1);
  v70[0] = *a10;
  v70[1] = v66;
  v67 = *(a11 + 16);
  v69[0] = *a11;
  v69[1] = v67;
  return __skinCPULike_PN(v13 + a1, a2 + a1, a3, a4, a5, a6, v72.i64, v71, v70, v69);
}

void __skin_generic_1bone(uint64_t result, double a2, float32x4_t a3, float32x4_t a4)
{
  v4 = *result;
  if (*result >= 1)
  {
    v5 = *(result + 80);
    v6 = *(result + 144);
    v7 = *(result + 176);
    v8 = *(result + 208);
    v9 = *(result + 240);
    v10 = *(result + 32);
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    v38 = v13;
    v37 = *(result + 262);
    v36 = *(result + 230);
    v28 = *(result + 228);
    v35 = *(result + 198);
    v34 = *(result + 166);
    v29 = *(result + 164);
    if (v8)
    {
      v15 = v7 == 0;
    }

    else
    {
      v15 = 1;
    }

    v33 = *(result + 134);
    v17 = !v15 && v9 != 0;
    v32 = v17;
    v31 = *(result + 102);
    v18 = (v9 + 4);
    v19 = (v7 + 8);
    v30 = *(result + 100);
    v39 = *(result + 112);
    v20 = (v39 + 8);
    v21 = (*(result + 48) + 8);
    v22 = *(result + 144);
    v23 = *(result + 70);
    v43 = v11;
    v41 = v14;
    v42 = v12;
    do
    {
      *v24.i64 = C3DConvertFloatingTypeToFloat4(v30, v5, v13, a3.f32[0], a4.f32[0]);
      a4 = v24;
      v13 = 0uLL;
      v44 = 0u;
      if (v22)
      {
        v40 = a4;
        *v13.i64 = C3DConvertFloatingTypeToFloat4(v29, v6, 0, v25, a4.f32[0]);
        a4 = v40;
      }

      v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v42, *a4.f32, 1), v43, a4.f32[0]), v41, a4, 2);
      a4.i32[0] = v38.i32[0];
      a3 = vaddq_f32(v38, v26);
      *(v21 - 1) = a3.i64[0];
      *v21 = a3.i32[2];
      if (v39)
      {
        a3 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v42, *v13.f32, 1), v43, v13.f32[0]), v41, v13, 2);
        *(v20 - 1) = a3.i64[0];
        v44 = a3;
        *v20 = a3.i32[2];
      }

      if (v32)
      {
        *v27.i64 = C3DConvertFloatingTypeToFloat4(v28, v8, v13, a3.f32[0], v38.f32[0]);
        a3 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v42, *v27.f32, 1), v43, v27.f32[0]), v41, v27, 2);
        *v19 = a3.i32[2];
        *(v19 - 1) = a3.i64[0];
        v13 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
        a4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vnegq_f32(v44)), a3, v13);
        *(v18 - 1) = a4.i32[2];
        *v18 = a4.i64[0];
      }

      v18 = (v18 + v37);
      v19 = (v19 + v35);
      v8 = (v8 + v36);
      v20 = (v20 + v33);
      v21 = (v21 + v23);
      v6 = (v6 + v34);
      v5 = (v5 + v31);
      --v4;
    }

    while (v4);
  }
}

double (*__skin_generic_pn(uint64_t a1, uint64_t a2))()
{
  v38 = *(a1 + 70);
  v39 = *(a1 + 48);
  v37 = *(a1 + 80);
  v3 = *(a1 + 102);
  v4 = *(a1 + 112);
  v5 = *(a1 + 134);
  v6 = *(a1 + 144);
  v7 = *(a1 + 164);
  v8 = *(a1 + 166);
  v9 = C3DConvertGetReadToFloat4Function(*(a1 + 100), a2);
  result = C3DConvertGetReadToFloat4Function(v7, v10);
  v12 = *a1;
  if (*a1 >= 1)
  {
    v13 = result;
    v14 = 0;
    do
    {
      *v15.i64 = (v9)(v37 + v14 * v3);
      v40 = v15;
      result = (v13)(v6 + v14 * v8);
      v17 = *(a1 + 8);
      v18 = *(v17 + 8 * v14);
      v19 = v14 + 1;
      v20 = *(v17 + 8 * (v14 + 1));
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = v20 <= v18;
      v26 = v20 - v18;
      if (!v25)
      {
        v27 = *(a1 + 16);
        v28 = (v27 + 4 * v18);
        v29 = (*(a1 + 24) + 2 * v18);
        do
        {
          if (v27)
          {
            v30 = *v28;
          }

          else
          {
            v30 = 1.0;
          }

          v31 = *v29++;
          v32 = (*(a1 + 32) + (v31 << 6));
          v24 = vmlaq_n_f32(v24, *v32, v30);
          v23 = vmlaq_n_f32(v23, v32[1], v30);
          v22 = vmlaq_n_f32(v22, v32[2], v30);
          v21 = vmlaq_n_f32(v21, v32[3], v30);
          ++v28;
          --v26;
        }

        while (v26);
      }

      v33 = vaddq_f32(v21, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v23, *v40.f32, 1), v24, v40.f32[0]), v22, v40, 2));
      v34 = v39 + v14 * v38;
      *v34 = v33.i64[0];
      *(v34 + 8) = v33.i32[2];
      v35 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v23, *v16.f32, 1), v24, v16.f32[0]), v22, v16, 2);
      v36 = v4 + v14 * v5;
      *v36 = v35.i64[0];
      *(v36 + 8) = v35.i32[2];
      ++v14;
    }

    while (v19 != v12);
  }

  return result;
}

void __skin_generic(uint64_t result, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = *result;
  if (*result >= 1)
  {
    v6 = 0;
    v57 = *(result + 48);
    v56 = *(result + 80);
    v7 = *(result + 112);
    v8 = *(result + 144);
    v46 = *(result + 262);
    v47 = *(result + 240);
    v45 = *(result + 230);
    v44 = *(result + 228);
    v43 = *(result + 198);
    v52 = *(result + 166);
    v51 = *(result + 164);
    v49 = *(result + 176);
    v50 = *(result + 134);
    v9 = *(result + 102);
    v10 = *(result + 100);
    v48 = *(result + 208);
    if (v48)
    {
      v11 = *(result + 176) == 0;
    }

    else
    {
      v11 = 1;
    }

    v13 = !v11 && *(result + 240) != 0;
    v14 = *(result + 70);
    while (1)
    {
      *v15.i64 = C3DConvertFloatingTypeToFloat4(v10, (v56 + v6 * v9), a2, a3.f32[0], a4.f32[0]);
      v17 = v15;
      v18 = 0uLL;
      a2 = 0uLL;
      if (v8)
      {
        v58 = v17;
        *a2.i64 = C3DConvertFloatingTypeToFloat4(v51, (v8 + v6 * v52), 0, v16, a4.f32[0]);
        v18 = 0uLL;
        v17 = v58;
      }

      v19 = *(result + 8);
      v20 = *(v19 + 8 * v6);
      v21 = v6 + 1;
      v22 = *(v19 + 8 * (v6 + 1));
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = v22 <= v20;
      v27 = v22 - v20;
      if (!v26)
      {
        v28 = *(result + 16);
        v29 = (v28 + 4 * v20);
        v30 = (*(result + 24) + 2 * v20);
        do
        {
          if (v28)
          {
            v31 = *v29;
          }

          else
          {
            v31 = 1.0;
          }

          v33 = *v30++;
          v32 = v33;
          if (v33 < *(result + 272))
          {
            v34 = (*(result + 32) + (v32 << 6));
            a4 = *v34;
            v25 = vmlaq_n_f32(v25, *v34, v31);
            v24 = vmlaq_n_f32(v24, v34[1], v31);
            v23 = vmlaq_n_f32(v23, v34[2], v31);
            v18 = vmlaq_n_f32(v18, v34[3], v31);
          }

          ++v29;
          --v27;
        }

        while (v27);
      }

      v35 = vaddq_f32(v18, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v24, *v17.f32, 1), v25, v17.f32[0]), v23, v17, 2));
      v36 = v57 + v6 * v14;
      *v36 = v35.i64[0];
      *(v36 + 8) = v35.i32[2];
      if (!v7)
      {
        break;
      }

      a3 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v24, *a2.f32, 1), v25, a2.f32[0]), v23, a2, 2);
      v37 = v7 + v6 * v50;
      *v37 = a3.i64[0];
      *(v37 + 8) = a3.i32[2];
      if (v13)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++v6;
      if (v21 == v4)
      {
        return;
      }
    }

    a3 = 0uLL;
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_24:
    v54 = v25;
    v55 = v23;
    v53 = v24;
    v59 = a3;
    *v38.i64 = C3DConvertFloatingTypeToFloat4(v44, (v48 + v6 * v45), a2, a3.f32[0], a4.f32[0]);
    v39 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v53, *v38.f32, 1), v54, v38.f32[0]), v55, v38, 2);
    v40 = v49 + v6 * v43;
    *v40 = v39.i64[0];
    *(v40 + 8) = v39.i32[2];
    a4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v59)), v39, vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL));
    v41 = vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL);
    a3 = vmulq_f32(a4, a4);
    a4.f32[0] = a3.f32[1] + (a3.f32[2] + a3.f32[0]);
    *a3.f32 = vrsqrte_f32(a4.u32[0]);
    *a4.f32 = vrsqrts_f32(a4.u32[0], vmul_f32(*a3.f32, *a3.f32));
    a3.i32[0] = vmul_f32(*a3.f32, *a4.f32).u32[0];
    a2 = vmulq_n_f32(v41, a3.f32[0]);
    v42 = v47 + v6 * v46;
    *v42 = a2.i64[0];
    *(v42 + 8) = a2.i32[2];
    goto LABEL_25;
  }
}

uint64_t C3DSkinnerSkinVertexOptimized(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v110 = *MEMORY[0x277D85DE8];
  Count = C3DMeshSourceGetCount(a4, a2);
  v17 = CFArrayGetCount(*(a11 + 88));
  MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(*(a11 + 72));
  v37 = *(a11 + 112);
  v19 = *(a11 + 128);
  v92 = 0u;
  v93 = 0u;
  C3DMeshSourceGetContent(a4, v20, &v92);
  if (BYTE4(v93) != 9)
  {
    return 0;
  }

  v90 = 0u;
  v91 = 0u;
  C3DMeshSourceGetContent(a3, v21, &v90);
  v24 = v91.u8[4];
  v25 = v91.u8[4] != 9;
  v108 = 0;
  v109 = 0;
  v107[0] = 0;
  *(v107 + 7) = 0;
  if (a6)
  {
    C3DMeshSourceGetContent(a6, v22, &v40);
    v108 = v40.i64[1];
    a6 = v40.i64[0];
    v109 = v41;
    v107[0] = *(&v41 + 5);
    *(v107 + 7) = HIDWORD(v41);
    if (BYTE4(v41) != 9)
    {
      return 0;
    }

    v34 = 9;
  }

  else
  {
    v34 = 0;
  }

  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  if (a5)
  {
    C3DMeshSourceGetContent(a5, v22, &v40);
    v28 = v24 == 9;
    v105 = v40.i64[1];
    a5 = v40.i64[0];
    v106 = v41;
    v26 = BYTE5(v41);
    v27 = BYTE6(v41);
    v103 = *(&v41 + 7);
    v104 = HIBYTE(v41);
    v35 = BYTE4(v41);
    v28 = v28 && BYTE4(v41) == 9;
    v25 = !v28;
  }

  else
  {
    v35 = 0;
    v26 = 0;
    v27 = 0;
  }

  v101 = 0uLL;
  v102 = 0;
  v100[0] = 0;
  *(v100 + 7) = 0;
  if (a8)
  {
    C3DMeshSourceGetContent(a8, v22, &v40);
    v101 = v40;
    v102 = v41;
    v100[0] = *(&v41 + 5);
    *(v100 + 7) = HIDWORD(v41);
    if (BYTE4(v41) == 10)
    {
      v32 = 10;
      v33 = v26;
      goto LABEL_18;
    }

    return 0;
  }

  v32 = 0;
  v33 = v26;
LABEL_18:
  v98 = 0;
  v99 = 0;
  v97[0] = 0;
  *(v97 + 7) = 0;
  if (a7)
  {
    C3DMeshSourceGetContent(a7, v22, &v40);
    v98 = v40.i64[1];
    a7 = v40.i64[0];
    v99 = v41;
    v29 = BYTE4(v41);
    v97[0] = *(&v41 + 5);
    *(v97 + 7) = HIDWORD(v41);
    if (BYTE4(v41) != 9)
    {
      v25 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  v95 = 0uLL;
  v96 = 0;
  v94[0] = 0;
  *(v94 + 7) = 0;
  if (a9)
  {
    C3DMeshSourceGetContent(a9, v22, &v40);
    v95 = v40;
    v96 = v41;
    v30 = BYTE4(v41);
    v94[0] = *(&v41 + 5);
    *(v94 + 7) = HIDWORD(v41);
    if (BYTE4(v41) != 9)
    {
      return 0;
    }
  }

  else
  {
    v30 = 0;
  }

  if (!v25 && a6 && a5 && !a7 && v91.u8[6] == 12 && v27 == 12)
  {
    if (v17 == 1)
    {
      v40 = v92;
      v41 = v93;
      v88 = v90;
      v89 = v91;
      v83 = a6;
      v84 = v108;
      v85 = v109;
      v86 = v34;
      *v87 = v107[0];
      *&v87[7] = *(v107 + 7);
      v75 = a5;
      v76 = v105;
      v77 = v106;
      v78 = v35;
      v79 = v33;
      v80 = 12;
      v81 = v103;
      v82 = v104;
      __skin_PNx4_1bone(Count, a1, a2, a10, v37, v19, &v40, &v88, &v83, &v75);
    }

    else
    {
      v40 = v92;
      v41 = v93;
      v88 = v90;
      v89 = v91;
      v83 = a6;
      v84 = v108;
      v85 = v109;
      v86 = v34;
      *v87 = v107[0];
      *&v87[7] = *(v107 + 7);
      v75 = a5;
      v76 = v105;
      v77 = v106;
      v78 = v35;
      v79 = v33;
      v80 = 12;
      v81 = v103;
      v82 = v104;
      if (MaxInfluencesPerVertex == 1)
      {
        __skin_PNx4_1influence(Count, a1, a2, a10, v37, &v40, &v88, &v83, &v75);
      }

      else
      {
        __skin_PNx4(0, Count, a1, a2, a10, v37, v19, &v40, &v88, &v83, &v75, v17);
      }
    }
  }

  else
  {
    v40.i64[0] = Count;
    v40.i64[1] = a1;
    *&v41 = a2;
    *(&v41 + 1) = a10;
    v42 = v37;
    v43 = v19;
    v44 = v92;
    v45 = v93;
    v46 = v90;
    v47 = v91;
    v50 = v109;
    v48 = a6;
    v49 = v108;
    v51 = v34;
    *&v52[7] = *(v107 + 7);
    *v52 = v107[0];
    v55 = v106;
    v53 = a5;
    v54 = v105;
    v56 = v35;
    v57 = v33;
    v58 = v27;
    v59 = v103;
    v60 = v104;
    v62 = v102;
    v61 = v101;
    v63 = v32;
    *&v64[7] = *(v100 + 7);
    *v64 = v100[0];
    v67 = v99;
    v65 = a7;
    v66 = v98;
    v68 = v29;
    *&v69[7] = *(v97 + 7);
    *v69 = v97[0];
    v71 = v96;
    v70 = v95;
    v72 = v30;
    *v73 = v94[0];
    *&v73[7] = *(v94 + 7);
    v74 = v17;
    if (v17 == 1)
    {
      __skin_generic_1bone(&v40, *v95.i64, v91, v23);
    }

    else if (a6 && a5 && !a7)
    {
      __skin_generic_pn(&v40, v22);
    }

    else
    {
      __skin_generic(&v40, v95, v91, v23);
    }
  }

  return 1;
}

void __C3DSkinnerPrepareSkinnedMesh(uint64_t result, uint64_t a2, uint64_t a3, __C3DGeometry *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v8 = scn_default_log(result, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __C3DSkinnerPrepareSkinnedMesh_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(result + 72);
  if (v16)
  {
    EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(result, a4);
    *(result + 194) = 0;
    if (EffectiveCalculationMode > 1)
    {
      if (EffectiveCalculationMode != 2)
      {
        v33 = scn_default_log(EffectiveCalculationMode, v18);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          __C3DSkinnerPrepareSkinnedMesh_cold_2();
        }
      }
    }

    else if (EffectiveCalculationMode)
    {
      IndexedBoneIndices = C3DSkinGetIndexedBoneIndices(v16, v18);
      IndexedBoneWeights = C3DSkinGetIndexedBoneWeights(v16, v34);
      v55 = 0;
      __C3DMeshCopyByAddingOriginalSourcesWithPositionChannel(a3, a2, &IndexedBoneIndices);
      if (IndexedBoneIndices)
      {
        if (!C3DMeshGetSourceWithSemanticAtIndex(a3, 5, 0, 1))
        {
          v36 = scn_default_log(0, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            __C3DSkinnerPrepareSkinnedMesh_cold_3(v36, v37, v38, v39, v40, v41, v42, v43);
          }
        }
      }

      if (IndexedBoneWeights)
      {
        if (!C3DMeshGetSourceWithSemanticAtIndex(a3, 6, 0, 1))
        {
          v45 = scn_default_log(0, v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            __C3DSkinnerPrepareSkinnedMesh_cold_4(v45, v46, v47, v48, v49, v50, v51, v52);
          }
        }
      }

      *(result + 195) = 1;
    }

    else
    {
      C3DMeshCopyRenderableSourceAndElements(a3, a2);
      PositionSource = C3DMeshGetPositionSource(a2, 1);
      CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(PositionSource, 9, 1, v20, v21, v22, v23, v24);
      C3DMeshSetSourceWithInputSet(a3, CopyWithBaseType, 0, 0);
      CFRelease(CopyWithBaseType);
      NormalSource = C3DMeshGetNormalSource(a2, 1);
      if (NormalSource)
      {
        v32 = C3DMeshSourceCreateCopyWithBaseType(NormalSource, 9, 1, v27, v28, v29, v30, v31);
        C3DMeshSetSourceWithInputSet(a3, v32, 0, 0);
        CFRelease(v32);
      }

      *(result + 194) = 1;
    }

    C3DMeshCopyBoundingVolumes(a2, a3);
  }
}

uint64_t C3DSkinnerGetEffectiveCalculationMode(uint64_t a1, __C3DGeometry *a2)
{
  if (*(a1 + 104) == 1)
  {
    return 3;
  }

  if (a2 && C3DGeometryOpenSubdivGPUIsActive(a2, a2))
  {
    return 2;
  }

  result = *(a1 + 208);
  if (result > 1)
  {
    if (result == 2)
    {
      return result;
    }

    if (result == 3)
    {
      v4 = scn_default_log(result, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        C3DSkinnerGetEffectiveCalculationMode_cold_1();
      }

      return 1;
    }

LABEL_16:
    v5 = scn_default_log(result, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __C3DSkinnerPrepareSkinnedMesh_cold_2();
    }

    return 1;
  }

  if (!result)
  {
    return result;
  }

  if (result != 1)
  {
    goto LABEL_16;
  }

  if (C3DMetalIsUsed())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void _computeJointMatrices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, simd_float4 a6, simd_float4 a7, simd_float4 a8, simd_float4 a9)
{
  v74.columns[2] = a8;
  v74.columns[3] = a9;
  v74.columns[0] = a6;
  v74.columns[1] = a7;
  *&v76[5] = *MEMORY[0x277D85DE8];
  IOSurface = C3DTextureGetIOSurface(a2);
  v77 = __invert_f4(v74);
  v74.columns[2] = v77.columns[1];
  v74.columns[3] = v77.columns[0];
  v74.columns[0] = v77.columns[3];
  v74.columns[1] = v77.columns[2];
  v15 = C3DGetSceneRef(a3, v14);
  if (v15)
  {
    TransformTree = C3DSceneGetTransformTree(v15, v16);
  }

  else
  {
    TransformTree = 0;
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = C3DGetScene(v18, v16);
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x277D860B8];
  v21 = C3DGetScene(a1, v16);
  updated = *(a1 + 96);
  if (v19 == v21)
  {
    if (!updated)
    {
      updated = __updateJointsTransformHandles(a1);
    }
  }

  else
  {
    free(updated);
    *(a1 + 96) = 0;
  }

  *v23.i64 = MEMORY[0x28223BE20](updated);
  v73 = v23;
  if (a4 < 1)
  {
    IsBoundingBoxFixed = C3DNodeIsBoundingBoxFixed(a3);
    v39.columns[1] = v74.columns[2];
    v39.columns[0] = v74.columns[3];
    v40 = v74.columns[0];
    v39.columns[2] = v74.columns[1];
    if ((IsBoundingBoxFixed & 1) == 0)
    {
      v42 = xmmword_21C27F650;
      v46 = v73;
LABEL_30:
      v59 = vaddq_f32(v40, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v39.columns[1], *v46.f32, 1), v39.columns[0], v46.f32[0]), v39.columns[2], v46, 2));
      v59.i32[3] = 1.0;
      v39.columns[3] = v42;
      v39.columns[3].i32[1] = v42.i32[0];
      v39.columns[3].i32[2] = v42.i32[0];
      *(a1 + 160) = v59;
      *(a1 + 176) = vaddq_f32(vabsq_f32(vmulq_f32(v39.columns[2], vzip2q_s32(vtrn1q_s32(v42, v42), v42))), vaddq_f32(vabsq_f32(vmulq_f32(v39.columns[0], v39.columns[3])), vabsq_f32(vmulq_f32(v39.columns[1], vuzp2q_s32(vdupq_lane_s32(*v42.f32, 1), v42)))));
    }
  }

  else
  {
    v72 = IOSurface;
    v24 = a5;
    v25 = 0;
    v26 = &v71 - 8 * a4;
    do
    {
      v27 = *(a1 + 96);
      if (!v27 || (v28 = *(v27 + 4 * v25), v28 == -1))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v25);
        if (ValueAtIndex)
        {
          C3DNodeComputeWorldTransform(ValueAtIndex, v26);
        }

        else
        {
          v35 = scn_default_log(0, v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            _computeJointMatrices_cold_1(buf, v76, v35);
          }

          v36 = v20[1];
          *v26 = *v20;
          *(v26 + 1) = v36;
          v37 = v20[3];
          *(v26 + 2) = v20[2];
          *(v26 + 3) = v37;
        }
      }

      else
      {
        WorldTransformPtr = C3DTransformTreeGetWorldTransformPtr(TransformTree, v28);
        v30 = WorldTransformPtr[3];
        v32 = *WorldTransformPtr;
        v31 = WorldTransformPtr[1];
        *(v26 + 2) = WorldTransformPtr[2];
        *(v26 + 3) = v30;
        *v26 = v32;
        *(v26 + 1) = v31;
      }

      ++v25;
      v26 += 8;
    }

    while (a4 != v25);
    v38 = C3DNodeIsBoundingBoxFixed(a3);
    a5 = v24;
    IOSurface = v72;
    v39.columns[1] = v74.columns[2];
    v39.columns[0] = v74.columns[3];
    v40 = v74.columns[0];
    v39.columns[2] = v74.columns[1];
    if ((v38 & 1) == 0)
    {
      v41 = (&v71 - 8 * a4 + 4);
      v42 = xmmword_21C27F650;
      v43 = (*(a1 + 144) + 16);
      v44.i64[0] = 0x3F0000003F000000;
      v44.i64[1] = 0x3F0000003F000000;
      v45 = a4;
      v46 = v73;
      do
      {
        if ((vminvq_u32(vcgezq_f32(*v43->i8)) & 0x80000000) != 0)
        {
          v47 = v41[-2];
          v48 = v41[-1];
          v49 = *v43->i8;
          v49.i32[1] = *v43->i8;
          v49.i32[2] = v49.i32[1];
          v50 = vaddq_f32(v41[1], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v48, v43[-2], 1), v47, COERCE_FLOAT(*v43[-2].i8)), *v41, *v43[-2].i8, 2));
          v51 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v49, v47)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v43, 1), *v43->i8), v48))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(*v43->i8, *v43->i8), *v43->i8), *v41)));
          v52 = vsubq_f32(v50, v51);
          v53 = vsubq_f32(v46, v42);
          v53.i32[3] = 0;
          v52.i32[3] = 0;
          v54 = vminnmq_f32(v53, v52);
          v55 = vaddq_f32(v46, v42);
          v55.i32[3] = 0;
          v56 = vaddq_f32(v50, v51);
          v56.i32[3] = 0;
          v57 = vmaxnmq_f32(v55, v56);
          v46 = vmulq_f32(vaddq_f32(v54, v57), v44);
          v42 = vmulq_f32(vsubq_f32(v57, v54), v44);
          v46.i32[3] = 1.0;
          v42.i32[3] = 0;
        }

        v41 += 4;
        v43 += 4;
        --v45;
      }

      while (v45);
      goto LABEL_30;
    }
  }

  v39.columns[3] = v40;
  scn_matrix_multiply_batch(&v71 - 4 * a4, v39, &v71 - a4, a4);
  scn_matrix_multiply_batch(*(a1 + 112), &v71 - a4, IOSurface, a4);
  scn_matrix_transpose_batch(*(a1 + 128), *(a1 + 112), a4);
  if (a4 >= 1 && a5)
  {
    v60 = 0;
    do
    {
      v61 = *(a1 + 112);
      v62 = (*(a1 + 120) + v60);
      v63 = *(v61 + v60);
      v64 = *(v61 + v60 + 16);
      v65 = *(v61 + v60 + 32);
      v66 = *(v61 + v60 + 48);
      v67 = vzip1q_s32(v63, v65);
      v68 = vzip2q_s32(v63, v65);
      v69 = vzip1q_s32(v64, v66);
      v70 = vzip2q_s32(v64, v66);
      v78.columns[0] = vzip1q_s32(v67, v69);
      v78.columns[1] = vzip2q_s32(v67, v69);
      v78.columns[2] = vzip1q_s32(v68, v70);
      v78.columns[3] = vzip2q_s32(v68, v70);
      *v62 = __invert_f4(v78);
      v60 += 64;
      --a4;
    }

    while (a4);
  }
}

uint64_t C3DSkinnerUpdateCurrentMesh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerSetOwnerNode_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 104);
  Geometry = C3DNodeGetGeometry(a2, a2);
  if (Geometry)
  {
    v15 = Geometry;
    EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(a1, Geometry);
    if (a3 && !C3DEngineContextGetRenderContext(a3, v16) && EffectiveCalculationMode)
    {
      if (v13 > 20)
      {
        goto LABEL_63;
      }

      MaterialsCount = C3DGeometryGetMaterialsCount(v15, v16);
      if (MaterialsCount >= 1)
      {
        v19 = MaterialsCount;
        MaterialAtIndex = C3DGeometryGetMaterialAtIndex(v15, 0);
        if (C3DMaterialGetTechnique(MaterialAtIndex, v21))
        {
          goto LABEL_63;
        }

        v22 = 1;
        do
        {
          v23 = v22;
          if (v19 == v22)
          {
            break;
          }

          v24 = C3DGeometryGetMaterialAtIndex(v15, v22);
          Technique = C3DMaterialGetTechnique(v24, v25);
          v22 = v23 + 1;
        }

        while (!Technique);
        if (v23 < v19)
        {
LABEL_63:
          if (*(a1 + 208))
          {
            v27 = *(a1 + 64);
            if (v27)
            {
              C3DNodeGeometryDidUpdate(v27, v16);
            }
          }

          *(a1 + 208) = 0;
        }
      }
    }

    if (v13 == 1)
    {
      goto LABEL_57;
    }

    RendererContextGL = C3DEngineContextGetRendererContextGL(a3, v16);
    if (RendererContextGL)
    {
      SkinnedMeshLegacy = C3DSkinnerGetSkinnedMeshLegacy(a1, a2);
      v31 = _C3DGetEffectiveBaseMesh(SkinnedMeshLegacy, a2, v15, EffectiveCalculationMode);
      LayoutTimeStamp = C3DMeshGetLayoutTimeStamp(v31);
      if (*(a1 + 136) != LayoutTimeStamp)
      {
        *(a1 + 136) = LayoutTimeStamp;
        v34 = 1;
        if (!EffectiveCalculationMode)
        {
LABEL_23:
          v35 = *(a1 + 194);
          goto LABEL_29;
        }

        if (EffectiveCalculationMode == 2)
        {
          goto LABEL_33;
        }

LABEL_26:
        if (EffectiveCalculationMode == 1)
        {
          v35 = *(a1 + 195);
LABEL_29:
          if (!(v35 ^ 1 | v34))
          {
            goto LABEL_30;
          }

LABEL_34:
          if (!RendererContextGL)
          {
            v37 = scn_default_log(LayoutTimeStamp, v33);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              C3DSkinnerUpdateCurrentMesh_cold_2(v37, v38, v39, v40, v41, v42, v43, v44);
            }
          }

          __C3DSkinnerPrepareSkinnedMesh(a1, v31, SkinnedMeshLegacy, v15);
          if (!RendererContextGL)
          {
            goto LABEL_42;
          }

          goto LABEL_38;
        }

        v36 = scn_default_log(LayoutTimeStamp, v33);
        LayoutTimeStamp = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
        if (LayoutTimeStamp)
        {
          *v86 = 0;
          _os_log_error_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_ERROR, "Unreachable code: Unknown skinning calculation mode.", v86, 2u);
          if (v34)
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_33:
          if (v34)
          {
            goto LABEL_34;
          }
        }

LABEL_30:
        if (!RendererContextGL)
        {
          goto LABEL_42;
        }

LABEL_38:
        LayoutTimeStamp = C3DNodeGetMorpher(a2, v33);
        if (LayoutTimeStamp && EffectiveCalculationMode)
        {
          MutabilityTimeStamp = C3DMeshGetMutabilityTimeStamp(SkinnedMeshLegacy, v33);
          LayoutTimeStamp = C3DMeshGetMutabilityTimeStamp(v31, v46);
          if (MutabilityTimeStamp != LayoutTimeStamp)
          {
            C3DMeshDidMutate(SkinnedMeshLegacy, v33);
          }

          goto LABEL_43;
        }

LABEL_42:
        if (!EffectiveCalculationMode)
        {
          if ((*(a1 + 194) & 1) == 0)
          {
            v55 = scn_default_log(LayoutTimeStamp, v33);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              C3DSkinnerUpdateCurrentMesh_cold_4(v55, v56, v57, v58, v59, v60, v61, v62);
            }
          }

          PositionSource = C3DMeshGetPositionSource(SkinnedMeshLegacy, 1);
          IsMutable = C3DMeshSourceIsMutable(PositionSource);
          if ((IsMutable & 1) == 0)
          {
            v66 = scn_default_log(IsMutable, v65);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
            {
              C3DSkinnerUpdateCurrentMesh_cold_5(v66, v67, v68, v69, v70, v71, v72, v73);
            }
          }

          if (C3DMeshGetNormalSource(SkinnedMeshLegacy, 1))
          {
            NormalSource = C3DMeshGetNormalSource(SkinnedMeshLegacy, 1);
            v75 = C3DMeshSourceIsMutable(NormalSource);
            if ((v75 & 1) == 0)
            {
              v77 = scn_default_log(v75, v76);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
              {
                C3DSkinnerUpdateCurrentMesh_cold_6(v77, v78, v79, v80, v81, v82, v83, v84);
              }
            }
          }

          goto LABEL_57;
        }

LABEL_43:
        if (EffectiveCalculationMode != 2 && (*(a1 + 195) & 1) == 0)
        {
          v47 = scn_default_log(LayoutTimeStamp, v33);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            C3DSkinnerUpdateCurrentMesh_cold_3(v47, v48, v49, v50, v51, v52, v53, v54);
          }
        }

LABEL_57:
        C3DSkinnerUpdateJointsAndBoundingBox(a1, a2);
        return 0;
      }
    }

    else
    {
      LayoutTimeStamp = C3DGeometryGetRenderingMesh(v15, v28);
      v31 = LayoutTimeStamp;
      SkinnedMeshLegacy = 0;
    }

    v34 = 0;
    if (!EffectiveCalculationMode)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return 0;
}

uint64_t C3DSkinnerGetSkinnedMeshLegacy(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 200))
  {
    if (!a2)
    {
      v5 = scn_default_log(a1, 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        C3DSkinnerGetSkinnedMeshLegacy_cold_1(v5, a2, v6, v7, v8, v9, v10, v11);
      }
    }

    if (*(a1 + 104) == 1)
    {
      if (C3DNodeGetMorpher(a2, a2))
      {
        Morpher = C3DNodeGetMorpher(a2, v12);
        MorphedMeshLegacy = C3DMorpherGetMorphedMeshLegacy(Morpher, v14);
        if (!MorphedMeshLegacy)
        {
          return *(a1 + 200);
        }
      }

      else
      {
        Geometry = C3DNodeGetGeometry(a2, v12);
        if (!Geometry)
        {
          return *(a1 + 200);
        }

        MorphedMeshLegacy = C3DGeometryGetMesh(Geometry, v25);
        if (!MorphedMeshLegacy)
        {
          return *(a1 + 200);
        }
      }

      *(a1 + 200) = CFRetain(MorphedMeshLegacy);
      return *(a1 + 200);
    }

    v16 = C3DNodeGetGeometry(a2, a2);
    if (v16)
    {
      Mesh = C3DGeometryGetMesh(v16, v17);
      if (Mesh)
      {
        v20 = Mesh;
        *(a1 + 200) = C3DMeshCreateCopy(Mesh, v19);
        Name = C3DEntityGetName(v20, v21);
        v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ - Skinned", Name);
        C3DEntitySetName(*(a1 + 200), v23);
        CFRelease(v23);
      }
    }
  }

  return *(a1 + 200);
}

void C3DSkinnerUpdateJointsAndBoundingBox(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 193) == 1)
  {
    _C3DSkinnerUpdateBoundingBox(a1, a2);
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    v5 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  JointsCount = C3DSkinGetJointsCount(v4);
  if (!*(a1 + 88) || (v15 = *(a1 + 104)) == 0 || (v16 = JointsCount, v15 != JointsCount))
  {
    if ((C3DSkinnerUpdateJointsAndBoundingBox_done & 1) == 0)
    {
      C3DSkinnerUpdateJointsAndBoundingBox_done = 1;
      v22 = scn_default_log(JointsCount, v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        _C3DSkinnerUpdateBoundingBox_cold_1();
      }
    }

    return;
  }

  Geometry = C3DNodeGetGeometry(a2, v14);
  EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(a1, Geometry);
  v19 = C3DGeometryUsesDeformerBasedDynamicMesh(Geometry);
  if (v19)
  {
    v21 = 0;
LABEL_15:
    HasSourcesWithSemantic = 0;
    goto LABEL_16;
  }

  v23 = _C3DGetEffectiveBaseMesh(v19, a2, Geometry, EffectiveCalculationMode);
  v21 = v23;
  if (EffectiveCalculationMode)
  {
    goto LABEL_15;
  }

  HasSourcesWithSemantic = C3DMeshHasSourcesWithSemantic(v23, 1, 1, 0);
LABEL_16:
  WorldMatrix = C3DNodeGetWorldMatrix(a2, v20);
  _computeJointMatrices(a1, v4, a2, v16, HasSourcesWithSemantic, *WorldMatrix, WorldMatrix[1], WorldMatrix[2], WorldMatrix[3]);
  if (*(a1 + 104) == 1 || EffectiveCalculationMode)
  {
    v99 = a2;
LABEL_59:
    C3DNodeBoundingBoxDidUpdate(v99, v27);
    return;
  }

  v28 = *(a1 + 200);
  if (v28)
  {
    PositionSource = C3DMeshGetPositionSource(v21, 1);
    NormalSource = C3DMeshGetNormalSource(v21, 1);
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v21, 4, 0, 1);
    v30 = C3DMeshGetPositionSource(v28, 1);
    v32 = v30;
    if (!v30 || v30 == PositionSource)
    {
      v33 = scn_default_log(v30, v31);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        C3DSkinnerUpdateJointsAndBoundingBox_cold_2(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    IsMutable = C3DMeshSourceIsMutable(v32);
    if ((IsMutable & 1) == 0)
    {
      v43 = scn_default_log(IsMutable, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        C3DSkinnerUpdateJointsAndBoundingBox_cold_3(v43, v44, v45, v46, v47, v48, v49, v50);
      }
    }

    v51 = C3DMeshGetNormalSource(v28, 1);
    v53 = v51;
    if (v51)
    {
      if (v51 == NormalSource)
      {
        v54 = scn_default_log(v51, v52);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          C3DSkinnerUpdateJointsAndBoundingBox_cold_4(v54, v55, v56, v57, v58, v59, v60, v61);
        }
      }

      v62 = C3DMeshSourceIsMutable(v53);
      if ((v62 & 1) == 0)
      {
        v64 = scn_default_log(v62, v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          C3DSkinnerUpdateJointsAndBoundingBox_cold_5(v64, v65, v66, v67, v68, v69, v70, v71);
        }
      }
    }

    v101 = v28;
    v102 = a2;
    v72 = C3DMeshGetSourceWithSemanticAtIndex(v28, 4, 0, 1);
    Count = C3DMeshSourceGetCount(PositionSource, v73);
    v114 = 0;
    v115 = 0;
    v113 = 0;
    C3DSkinGetVertexWeightsPointers(v4, &v115, &v113, &v114);
    v106 = a1;
    v103 = v53;
    if ((C3DSkinnerSkinVertexOptimized(v115, v114, PositionSource, v32, NormalSource, v53, SourceWithSemanticAtIndex, v72, 0, v113, a1) & 1) == 0 && Count >= 1)
    {
      v75 = 0;
      if (NormalSource)
      {
        v76 = v53 == 0;
      }

      else
      {
        v76 = 1;
      }

      v77 = !v76;
      v104 = v77;
      v105 = v32;
      do
      {
        v78 = v114;
        v79 = *(v115 + 8 * v75);
        v112 = v75 + 1;
        v80 = *(v115 + 8 * (v75 + 1));
        v81 = v113;
        v82 = *(v106 + 112);
        v83 = *(v106 + 120);
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        C3DMatrix4x4MakeZero(&v125);
        C3DMatrix4x4MakeZero(&v121);
        v84 = v75;
        *v85.i64 = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v75);
        v111 = v85;
        v86 = 0uLL;
        if (NormalSource)
        {
          *v86.i64 = C3DMeshSourceGetValueAtIndexAsVector3(NormalSource, v75);
        }

        v110 = v86;
        if (SourceWithSemanticAtIndex)
        {
          C3DMeshSourceGetValueAtIndexAsVector3(SourceWithSemanticAtIndex, v75);
        }

        v87 = v80 <= v79;
        v88 = v80 - v79;
        if (!v87)
        {
          v89 = (v78 + 4 * v79);
          v90 = (v81 + 2 * v79);
          do
          {
            v92 = *v90++;
            v91 = v92;
            v120 = 0u;
            v118 = 0u;
            v119 = 0u;
            v117 = 0u;
            memset(v116, 0, sizeof(v116));
            if (v78)
            {
              v93 = *v89;
            }

            else
            {
              v93 = 1.0;
            }

            C3DMatrix4x4MultFloat((v82 + (v91 << 6)), &v117, v93);
            C3DMatrix4x4Add(&v125, &v117, &v125);
            if (NormalSource)
            {
              C3DMatrix4x4MultFloat((v83 + (v91 << 6)), v116, v93);
              C3DMatrix4x4Add(&v121, v116, &v121);
            }

            ++v89;
            --v88;
          }

          while (v88);
        }

        v117 = v125;
        v118 = v126;
        v119 = v127;
        v120 = v128;
        v94.n128_f64[0] = C3DVector3MultMatrix4x4(&v117, v111);
        C3DMeshSourceSetValueAtIndexAsVector3(v105, v84, v94);
        if (v104)
        {
          v117 = v121;
          v118 = v122;
          v119 = v123;
          v120 = v124;
          *v95.i64 = C3DVector3RotateAndScale(&v117, v110);
          v96 = vmulq_f32(v95, v95);
          *&v97 = v96.f32[2] + vaddv_f32(*v96.f32);
          *v96.f32 = vrsqrte_f32(v97);
          *v96.f32 = vmul_f32(*v96.f32, vrsqrts_f32(v97, vmul_f32(*v96.f32, *v96.f32)));
          C3DMeshSourceSetValueAtIndexAsVector3(v103, v84, vmulq_n_f32(v95, vmul_f32(*v96.f32, vrsqrts_f32(v97, vmul_f32(*v96.f32, *v96.f32))).f32[0]));
        }

        v75 = v112;
      }

      while (v112 != Count);
    }

    C3DMeshDidMutate(v101, v74);
    C3DMeshResetBoundingVolumes(v101, v98);
    v99 = v102;
    goto LABEL_59;
  }

  if ((C3DSkinnerUpdateJointsAndBoundingBox_done_14 & 1) == 0)
  {
    C3DSkinnerUpdateJointsAndBoundingBox_done_14 = 1;
    v100 = scn_default_log(v26, v27);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      C3DSkinnerUpdateJointsAndBoundingBox_cold_6();
    }
  }
}

uint64_t C3DSkinnerGetJointMatrices(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 3 * *(a1 + 104);
  }

  return *(a1 + 128);
}

uint64_t C3DSkinnerGetBoundingBox(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (*(a1 + 193) == 1)
  {
    _C3DSkinnerUpdateBoundingBox(a1, a2);
  }

  if ((vminvq_u32(vcgezq_f32(*(a1 + 176))) & 0x80000000) != 0)
  {
    BoundingBox = 1;
LABEL_18:
    v40 = *(a1 + 176);
    *a3 = *(a1 + 160);
    a3[1] = v40;
    return BoundingBox & 1;
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count)
    {
      v8 = Count;
      v42 = *(MEMORY[0x277D860B8] + 48);
      if (Count < 1)
      {
        BoundingBox = 0;
        v43 = xmmword_21C27F650;
      }

      else
      {
        v9 = 0;
        BoundingBox = 0;
        v11 = 0;
        v43 = xmmword_21C27F650;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v11);
          WorldMatrix = C3DNodeGetWorldMatrix(ValueAtIndex, v13);
          v15 = (*(a1 + 144) + v9);
          v16 = v15[1];
          if ((vminvq_u32(vcgezq_f32(v16)) & 0x80000000) != 0)
          {
            v17 = *(WorldMatrix + 16);
            v18 = *(WorldMatrix + 32);
            v19 = vaddq_f32(*(WorldMatrix + 48), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v17, *v15->f32, 1), *WorldMatrix, COERCE_FLOAT(*v15)), v18, *v15, 2));
            v20 = v15[1];
            v20.i32[1] = v20.i32[0];
            v20.i32[2] = v15[1];
            v21 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v20, *WorldMatrix)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v16.f32, 1), v16), v17))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v16, v16), v16), v18)));
            v22 = vsubq_f32(v19, v21);
            v23 = vsubq_f32(v42, v43);
            v23.i32[3] = 0;
            v22.i32[3] = 0;
            v24 = vminnmq_f32(v23, v22);
            v25 = vaddq_f32(v19, v21);
            v26 = vaddq_f32(v42, v43);
            v26.i32[3] = 0;
            v25.i32[3] = 0;
            v27 = vmaxnmq_f32(v26, v25);
            v23.i64[0] = 0x3F0000003F000000;
            v23.i64[1] = 0x3F0000003F000000;
            v28 = vmulq_f32(vaddq_f32(v24, v27), v23);
            v29 = vmulq_f32(vsubq_f32(v27, v24), v23);
            v28.i32[3] = 1.0;
            v29.i32[3] = 0;
            v42 = v28;
            v43 = v29;
            BoundingBox = 1;
          }

          ++v11;
          v9 += 32;
        }

        while (v8 != v11);
      }

      memset(&v44, 0, sizeof(v44));
      v36 = C3DNodeGetWorldMatrix(a2, a2);
      C3DMatrix4x4Invert(v36, &v44);
      v37 = vaddq_f32(v44.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v44.columns[1], *v42.f32, 1), v44.columns[0], v42.f32[0]), v44.columns[2], v42, 2));
      v37.i32[3] = 1.0;
      v38 = v43;
      v38.i32[1] = v43.i32[0];
      v38.i32[2] = v43.i32[0];
      v39 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v38, v44.columns[0])), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v43.f32, 1), v43), v44.columns[1]))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v43, v43), v43), v44.columns[2])));
      *(a1 + 160) = v37;
      *(a1 + 176) = v39;
      goto LABEL_18;
    }
  }

  Geometry = C3DNodeGetGeometry(a2, a2);
  if (Geometry)
  {
    RenderingMesh = C3DGeometryGetRenderingMesh(Geometry, v31);
    v44.columns[0].i32[2] = 0;
    v44.columns[0].i64[0] = 0;
    v45.i32[2] = 0;
    v45.i64[0] = 0;
    BoundingBox = C3DMeshGetBoundingBox(RenderingMesh, &v44, &v45);
    v33.i64[0] = 0x3F0000003F000000;
    v33.i64[1] = 0x3F0000003F000000;
    v34 = vmulq_f32(vaddq_f32(v44.columns[0], v45), v33);
    v35 = vmulq_f32(vsubq_f32(v45, v44.columns[0]), v33);
    v34.i32[3] = 1.0;
    v35.i32[3] = 0;
    *a3 = v34;
    a3[1] = v35;
  }

  else
  {
    BoundingBox = 0;
  }

  return BoundingBox & 1;
}

uint64_t C3DSkinnerGetJointBoundingBoxes(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerSetOwnerNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 193) == 1)
  {
    _C3DSkinnerUpdateBoundingBox(a1, a2);
  }

  return *(a1 + 144);
}

void C3DSkinnerAppendDebugBones(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 193) == 1)
  {
    _C3DSkinnerUpdateBoundingBox(a1, a3);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    ChildNodesCount = C3DNodeGetChildNodesCount(v7);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __C3DSkinnerAppendDebugBones_block_invoke;
    v9[3] = &__block_descriptor_tmp_20_5;
    v9[4] = a2;
    v9[5] = v7;
    v10 = a4;
    v9[6] = &C3DAuthoringEnvironmentColorOrangeDark;
    v11 = 1;
    v12 = ChildNodesCount == 0;
    C3DNodeApplyHierarchy(v7, v9);
  }
}

uint64_t __C3DSkinnerAppendDebugBones_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((C3DAuthoringEnvironmentHasAlreadyProcessedJoint(*(a1 + 32), a2) & 1) == 0)
  {
    if (*(a1 + 40) == a2)
    {
      if (*(a1 + 61) != 1)
      {
LABEL_10:
        C3DAuthoringEnvironmentRegisterProcessedJoint(*(a1 + 32), a2);
        WorldMatrix = C3DNodeGetWorldMatrix(a2, v12);
        v14 = *(a1 + 56);
        v15 = *(WorldMatrix + 16);
        v16 = *(WorldMatrix + 32);
        v17 = *(WorldMatrix + 48);
        v18 = vmulq_f32(*WorldMatrix, 0);
        v19 = vmlaq_f32(v18, 0, v15);
        v22 = vaddq_f32(v17, vmlaq_f32(vmlaq_n_f32(v18, v15, v14), 0, v16));
        v23 = vaddq_f32(v17, vmlaq_n_f32(v19, v16, v14));
        v24 = vaddq_f32(v17, vmlaq_f32(v19, 0, v16));
        C3DAuthoringEnvironmentAppendDebugSegment(*(a1 + 32), 0, C3DAuthoringEnvironmentColorRed.var0.var0, *(a1 + 60), v24, vaddq_f32(v17, vmlaq_f32(vmlaq_f32(vmulq_n_f32(*WorldMatrix, v14), 0, v15), 0, v16)));
        C3DAuthoringEnvironmentAppendDebugSegment(*(a1 + 32), 0, C3DAuthoringEnvironmentColorGreen, *(a1 + 60), v24, v22);
        C3DAuthoringEnvironmentAppendDebugSegment(*(a1 + 32), 0, C3DAuthoringEnvironmentColorBlue, *(a1 + 60), v24, v23);
        return 0;
      }

      v8 = C3DNodeGetWorldMatrix(a2, v4);
      v26 = 0uLL;
      v25 = xmmword_21C27F8C0;
      v7.columns[0].i32[0] = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = *(a1 + 60);
      v7.columns[1].i32[0] = v7.columns[0].i32[0];
    }

    else
    {
      C3DNodeGetMatrix(a2, v4, &v27);
      v21 = v27;
      v6 = C3DNodeGetWorldMatrix(a2, v5);
      v7 = __invert_f4(v21);
      v26 = 0uLL;
      v7.columns[0] = vmulq_f32(v7.columns[3], v7.columns[3]);
      v7.columns[1].f32[0] = v7.columns[0].f32[2] + vaddv_f32(*v7.columns[0].f32);
      v7.columns[0].f32[0] = sqrtf(v7.columns[1].f32[0]);
      if (v7.columns[0].f32[0] <= 0.0)
      {
        v7.columns[2] = xmmword_21C27F8C0;
        v7.columns[1].i32[0] = *(a1 + 56);
        v7.columns[0].i32[0] = v7.columns[1].i32[0];
      }

      else
      {
        v7.columns[2].i32[0] = v7.columns[1].i32[0];
        *v7.columns[1].f32 = vrsqrte_f32(v7.columns[1].u32[0]);
        *v7.columns[1].f32 = vmul_f32(*v7.columns[1].f32, vrsqrts_f32(v7.columns[2].u32[0], vmul_f32(*v7.columns[1].f32, *v7.columns[1].f32)));
        v7.columns[2] = vmulq_n_f32(v7.columns[3], vmul_f32(*v7.columns[1].f32, vrsqrts_f32(v7.columns[2].u32[0], vmul_f32(*v7.columns[1].f32, *v7.columns[1].f32))).f32[0]);
        v7.columns[1].i32[0] = *(a1 + 56);
      }

      v25 = v7.columns[2];
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = *(a1 + 60);
      v8 = v6;
    }

    C3DAuthoringEnvironmentAppendDebugPyramid(v9, &v26, &v25, v8, v10, v11, v7.columns[0].f32[0], v7.columns[1].f32[0]);
    goto LABEL_10;
  }

  return 0;
}

void C3DSkinnerAppendDebugBoundingBoxes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 193) == 1)
  {
    _C3DSkinnerUpdateBoundingBox(a1, a3);
  }

  v12 = xmmword_21C27F7E0;
  Count = CFArrayGetCount(*(a1 + 88));
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      if ((vminvq_u32(vcgezq_f32(*(*(a1 + 144) + v7 + 16))) & 0x80000000) != 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), i);
        WorldMatrix = C3DNodeGetWorldMatrix(ValueAtIndex, v10);
        C3DAuthoringEnvironmentAppendDebugBoundingBox(a2, (*(a1 + 144) + v7), WorldMatrix, &v12);
      }

      v7 += 32;
    }
  }
}

double C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  if (a2 == 3)
  {
    v31[10] = v6;
    v31[11] = v7;
    v8 = *(a1 + 128);
    if (*(a1 + 104) != 1)
    {
      v28 = a5;
      v29 = a6;
      v26 = a3;
      v27 = a4;
      v9 = scn_default_log(a1, a2);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      a3 = v26;
      a4 = v27;
      a5 = v28;
      a6 = v29;
      if (v10)
      {
        C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode_cold_1(v9, v11, v12, v13, v14, v15, v16, v17);
        a3 = v26;
        a4 = v27;
        a5 = v28;
        a6 = v29;
      }
    }

    v18 = 0;
    v19 = v8[1];
    v20 = v8[2];
    v21 = vzip1q_s32(*v8, v20);
    v22 = vzip2q_s32(*v8, v20);
    v23 = vzip1q_s32(v19, 0);
    v24 = vzip2q_s32(v19, xmmword_21C27F610);
    v30[0] = vzip1q_s32(v21, v23);
    v30[1] = vzip2q_s32(v21, v23);
    v30[2] = vzip1q_s32(v22, v24);
    v30[3] = vzip2q_s32(v22, v24);
    memset(v31, 0, 64);
    do
    {
      *&v31[v18 / 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v30[v18 / 0x10])), a4, *&v30[v18 / 0x10], 1), a5, v30[v18 / 0x10], 2), a6, v30[v18 / 0x10], 3);
      v18 += 16;
    }

    while (v18 != 64);
    a3.i64[0] = v31[0];
  }

  return *a3.i64;
}

void C3DSkinnerInputGeometryDidChange(uint64_t a1)
{
  *(a1 + 192) = 256;
  *(a1 + 160) = *(MEMORY[0x277D860B8] + 48);
  *(a1 + 176) = xmmword_21C27F650;
  v2 = *(a1 + 200);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 200) = 0;
}

id _C3DSkinnerCFFinalize(void *a1, uint64_t a2)
{
  if (a1[9])
  {
    C3DSkinnerSetSkin(a1, 0);
  }

  v3 = a1[16];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[18];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[25];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[12];
  if (v9)
  {
    free(v9);
  }

  v10 = a1[10];
  if (v10)
  {
    CFRelease(v10);
    a1[10] = 0;
  }

  return C3DEntityCFFinalize(a1, a2);
}

__CFString *_C3DSkinnerCFCopyDebugDescription(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *(a1 + 195);
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DSkinner %p skeleton:%p jointCount:%d cpuReady:%d gpuReady:%d\n", a1, *(a1 + 80), Count, *(a1 + 194), v4);
  CFStringAppendFormat(Mutable, 0, @"  skin:%p skinnedMesh:%p calcMode:%d\n", *(a1 + 72), *(a1 + 200), *(a1 + 208));
  if (*(a1 + 104) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a1 + 144);
      if (!v8)
      {
        break;
      }

      v9 = v8 + v6;
      CFStringAppendFormat(Mutable, 0, @"  JointBbox[%d] {%f,%f,%f} {%f,%f,%f}\n", v7++, COERCE_FLOAT(*v9), COERCE_FLOAT(HIDWORD(*v9)), COERCE_FLOAT(*(v9 + 8)), COERCE_FLOAT(*(v9 + 16)), COERCE_FLOAT(HIDWORD(*(v9 + 16))), COERCE_FLOAT(*(v9 + 24)));
      v6 += 32;
    }

    while (v7 < *(a1 + 104));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFDictionary *_C3DSkinnerCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = scn_default_log(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = C3DEntityCopyPropertyList(a1, a2, a3);
  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = __EntryNumberCreate(a2, v16);
    if (!v17)
    {
LABEL_13:
      CFRelease(v15);
      return 0;
    }

    v18 = v17;
    CFDictionaryAddValue(v15, @"skeletonID", v17);
    CFRelease(v18);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (CFArrayGetCount(*(a1 + 88)) >= 1)
  {
    v20 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v20);
      v22 = __EntryNumberCreate(a2, ValueAtIndex);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      CFArrayAppendValue(Mutable, v22);
      CFRelease(v23);
      if (++v20 >= CFArrayGetCount(*(a1 + 88)))
      {
        goto LABEL_11;
      }
    }

    CFRelease(Mutable);
    goto LABEL_13;
  }

LABEL_11:
  CFDictionaryAddValue(v15, @"joints", Mutable);
  CFRelease(Mutable);
  valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 72));
  v24 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(v15, @"skinID", v24);
  CFRelease(v24);
  return v15;
}

BOOL _C3DSkinnerFinalizeDeserialization(_BOOL8 a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DSkinnerSetOwnerNode_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    _C3DSceneFinalizeDeserialization_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  Value = CFDictionaryGetValue(theDict, @"skeletonID");
  TypeID = C3DNodeGetTypeID(Value, v24);
  v27 = __EntryForEntryNumber(a2, Value, TypeID);
  if (!v27)
  {
    v28 = scn_default_log(0, v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      _os_log_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_DEFAULT, "Warning: Skinner deserialization: cannot find the specified skeleton", v49, 2u);
    }
  }

  C3DSkinnerSetSkeleton(v7, v27);
  v29 = CFDictionaryGetValue(theDict, @"joints");
  Count = CFArrayGetCount(v29);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  if (CFArrayGetCount(v29) >= 1)
  {
    v32 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v29, v32);
      v35 = C3DNodeGetTypeID(ValueAtIndex, v34);
      v36 = __EntryForEntryNumber(a2, ValueAtIndex, v35);
      if (!v36)
      {
        break;
      }

      CFArrayAppendValue(Mutable, v36);
      if (++v32 >= CFArrayGetCount(v29))
      {
        goto LABEL_13;
      }
    }

    v43 = scn_default_log(0, v37);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      _C3DSkinnerFinalizeDeserialization_cold_4();
      if (a4)
      {
LABEL_17:
        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }
    }

    else if (a4)
    {
      goto LABEL_17;
    }

    CFRelease(Mutable);
    return 0;
  }

LABEL_13:
  C3DSkinnerSetJoints(v7, Mutable);
  CFRelease(Mutable);
  v38 = CFDictionaryGetValue(theDict, @"skinID");
  v40 = C3DSkinGetTypeID(v38, v39);
  v42 = __EntryForEntryNumber(a2, v38, v40);
  if (!v42)
  {
    v45 = scn_default_log(0, v41);
    MalformedDocumentError = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (MalformedDocumentError)
    {
      _C3DSkinnerFinalizeDeserialization_cold_3();
      if (a4)
      {
LABEL_22:
        if (!*a4)
        {
          MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
          *a4 = MalformedDocumentError;
        }
      }
    }

    else if (a4)
    {
      goto LABEL_22;
    }

    v48 = C3DSkinCreate(MalformedDocumentError, v47);
    C3DSkinnerSetSkin(v7, v48);
    CFRelease(v48);
    return v42 != 0;
  }

  C3DSkinnerSetSkin(v7, v42);
  return v42 != 0;
}

uint64_t _C3DSkinnerFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DSkinnerSetOwnerNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  C3DLibraryAddEntry(a2, *(a1 + 72));
  C3DFillLibraryForSerialization(*(a1 + 72), a2, a3);
  result = *(a1 + 88);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v15 = result;
      for (i = 0; i != v15; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), i);
        result = C3DLibraryAddEntry(a2, ValueAtIndex);
      }
    }
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    return C3DLibraryAddEntry(a2, v18);
  }

  return result;
}

CFNumberRef __EntryNumberCreate(uint64_t a1, const void *a2)
{
  EntryID = C3DLibraryGetEntryID(a1, a2);
  if (EntryID)
  {
    v4 = EntryID;
    if (EntryID >= 0x7FFFFFFF)
    {
      v5 = scn_default_log(EntryID, v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __EntryNumberCreate_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    valuePtr = v4;
    return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v14 = scn_default_log(0, v3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __EntryNumberCreate_cold_2();
    }

    return 0;
  }
}