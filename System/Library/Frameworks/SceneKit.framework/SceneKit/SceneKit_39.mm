uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentToChildMapping(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  (*(*this + 16))(this);
  if ((*(this + 36) & 1) == 0)
  {
    if (*(this + 58) == *(this + 57))
    {
      OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentToChildMapping();
    }

    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseVertexChildren(this);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseEdgeChildren(this);
    (*(*this + 24))(this);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentChildIndices(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateChildToParentMapping(std::vector<int> *this, uint8x8_t a2, uint8x8_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  a3.i32[0] = HIDWORD(v7[0]);
  a2.i32[0] = v7[0];
  v4 = vorr_s8((vmovl_u8(a2).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x18001000080000);
  v5 = vuzp1_s8(v4, v4);
  v5.i32[1] = vuzp1_s8(vorr_s8((vmovl_u8(a3).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x19001100090001), v5).u32[0];
  v7[0] = v5;
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentVectors(this, v7);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentVectors(this, v7);
  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentVectors(this, v7);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(uint64_t result, char *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    result = (*(*result + 32))(result);
    v4 = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = (*(*v3 + 40))(v3);
  v4 = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = (*(*v3 + 48))(v3);
  v4 = *a2;
  if ((*a2 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = (*(*v3 + 56))(v3);
  v4 = *a2;
  if ((*a2 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  result = (*(*v3 + 64))(v3);
  if ((*a2 & 0x20) != 0)
  {
LABEL_7:
    result = (*(*v3 + 72))(v3);
  }

LABEL_8:
  if (*(v3 + 28))
  {
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  if (*(*(v3 + 8) + 20) > v5)
  {
    v5 = *(*(v3 + 8) + 20);
  }

  *(*(v3 + 16) + 20) = v5;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  if (*(*(this + 2) + 464) != *(*(this + 2) + 456))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels();
  }

  if (*(this + 61) != *(this + 60))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels();
  }

  if (((*(*(this + 1) + 464) - *(*(this + 1) + 456)) >> 3) >= 1)
  {
    operator new();
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentChildIndices(uint64_t this)
{
  v1 = *(this + 36);
  *(this + 64) = 0;
  v2 = *(this + 120);
  v3 = *(this + 128) - v2;
  v4 = v3 >> 2;
  if (v1 == 1)
  {
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = vdupq_n_s64(((v3 >> 2) & 0x7FFFFFFF) - 1);
      v7 = xmmword_21C27F630;
      v8 = xmmword_21C27F640;
      v9 = v2 + 2;
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 2) = v5;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 1) = v5 + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = v5 + 2;
          v9[1] = v5 + 3;
        }

        v5 += 4;
        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        v9 += 4;
      }

      while (((v4 + 3) & 0xFFFFFFFC) != v5);
    }

    *(this + 40) = v4;
    *(this + 68) = 0;
    v12 = *(this + 144);
    v13 = *(this + 152) - v12;
    v14 = v13 >> 2;
    if ((v13 >> 2) >= 1)
    {
      v15 = 0;
      v16 = vdupq_n_s64(((v13 >> 2) & 0x7FFFFFFF) - 1);
      v17 = xmmword_21C27F630;
      v18 = xmmword_21C27F640;
      v19 = (v12 + 8);
      v20 = vdupq_n_s64(4uLL);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v16, v18));
        if (vuzp1_s16(v21, *v16.i8).u8[0])
        {
          *(v19 - 2) = v15;
        }

        if (vuzp1_s16(v21, *&v16).i8[2])
        {
          *(v19 - 1) = v15 + 1;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
        {
          *v19 = v15 + 2;
          v19[1] = v15 + 3;
        }

        v15 += 4;
        v17 = vaddq_s64(v17, v20);
        v18 = vaddq_s64(v18, v20);
        v19 += 4;
      }

      while (((v14 + 3) & 0xFFFFFFFC) != v15);
    }

    *(this + 44) = v14;
    *(this + 72) = v14;
    v22 = *(this + 192);
    v23 = *(this + 200) - v22;
    v24 = v23 >> 2;
    if ((v23 >> 2) >= 1)
    {
      v25 = (v23 >> 2) & 0x7FFFFFFF;
      v26 = (v24 + 3) & 0xFFFFFFFC;
      v27 = vdupq_n_s64(v25 - 1);
      v28 = xmmword_21C27F630;
      v29 = xmmword_21C27F640;
      v30 = (v22 + 8);
      v31 = vdupq_n_s64(4uLL);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v27, v29));
        if (vuzp1_s16(v32, *v27.i8).u8[0])
        {
          *(v30 - 2) = v14;
        }

        if (vuzp1_s16(v32, *&v27).i8[2])
        {
          *(v30 - 1) = v14 + 1;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
        {
          *v30 = v14 + 2;
          v30[1] = v14 + 3;
        }

        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        LODWORD(v14) = v14 + 4;
        v30 += 4;
        v26 -= 4;
      }

      while (v26);
    }

    *(this + 48) = v24;
    if (*(this + 37) == 1)
    {
      *(this + 76) = 0;
      v33 = *(this + 168);
      v34 = *(this + 176) - v33;
      v35 = v34 >> 2;
      if ((v34 >> 2) < 1)
      {
        v43 = 0;
      }

      else
      {
        v36 = 0;
        v37 = vdupq_n_s64(((v34 >> 2) & 0x7FFFFFFF) - 1);
        v38 = xmmword_21C27F630;
        v39 = xmmword_21C27F640;
        v40 = (v33 + 8);
        v41 = vdupq_n_s64(4uLL);
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v37, v39));
          if (vuzp1_s16(v42, *v37.i8).u8[0])
          {
            *(v40 - 2) = v36;
          }

          if (vuzp1_s16(v42, *&v37).i8[2])
          {
            *(v40 - 1) = v36 + 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38))).i32[1])
          {
            *v40 = v36 + 2;
            v40[1] = v36 + 3;
          }

          v36 += 4;
          v38 = vaddq_s64(v38, v41);
          v39 = vaddq_s64(v39, v41);
          v40 += 4;
        }

        while (((v35 + 3) & 0xFFFFFFFC) != v36);
        v43 = *(this + 76);
      }

      *(this + 52) = v35;
      v81 = v43 + v35;
      *(this + 80) = v81;
      v82 = *(this + 216);
      v83 = *(this + 224) - v82;
      v84 = v83 >> 2;
      if ((v83 >> 2) >= 1)
      {
        v85 = (v83 >> 2) & 0x7FFFFFFF;
        v86 = (v84 + 3) & 0xFFFFFFFC;
        v87 = vdupq_n_s64(v85 - 1);
        v88 = xmmword_21C27F630;
        v89 = xmmword_21C27F640;
        v90 = (v82 + 8);
        v91 = vdupq_n_s64(4uLL);
        do
        {
          v92 = vmovn_s64(vcgeq_u64(v87, v89));
          if (vuzp1_s16(v92, *v87.i8).u8[0])
          {
            *(v90 - 2) = v81;
          }

          if (vuzp1_s16(v92, *&v87).i8[2])
          {
            *(v90 - 1) = v81 + 1;
          }

          if (vuzp1_s16(*&v87, vmovn_s64(vcgeq_u64(v87, *&v88))).i32[1])
          {
            *v90 = v81 + 2;
            v90[1] = v81 + 3;
          }

          v88 = vaddq_s64(v88, v91);
          v89 = vaddq_s64(v89, v91);
          v81 += 4;
          v90 += 4;
          v86 -= 4;
        }

        while (v86);
        v81 = *(this + 80);
      }

      *(this + 56) = v84;
      v93 = v81 + v84;
      *(this + 84) = v93;
      v94 = *(this + 240);
      v95 = *(this + 248) - v94;
      v96 = v95 >> 2;
      if ((v95 >> 2) >= 1)
      {
        v97 = (v95 >> 2) & 0x7FFFFFFF;
        v98 = (v96 + 3) & 0xFFFFFFFC;
        v99 = vdupq_n_s64(v97 - 1);
        v100 = xmmword_21C27F630;
        v101 = xmmword_21C27F640;
        v102 = (v94 + 8);
        v103 = vdupq_n_s64(4uLL);
        do
        {
          v104 = vmovn_s64(vcgeq_u64(v99, v101));
          if (vuzp1_s16(v104, *v99.i8).u8[0])
          {
            *(v102 - 2) = v93;
          }

          if (vuzp1_s16(v104, *&v99).i8[2])
          {
            *(v102 - 1) = v93 + 1;
          }

          if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, *&v100))).i32[1])
          {
            *v102 = v93 + 2;
            v102[1] = v93 + 3;
          }

          v100 = vaddq_s64(v100, v103);
          v101 = vaddq_s64(v101, v103);
          v93 += 4;
          v102 += 4;
          v98 -= 4;
        }

        while (v98);
      }

      *(this + 60) = v96;
    }

    else
    {
      *(this + 84) = 0;
      v47 = *(this + 240);
      v48 = *(this + 248) - v47;
      v49 = v48 >> 2;
      if ((v48 >> 2) < 1)
      {
        v57 = 0;
      }

      else
      {
        v50 = 0;
        v51 = vdupq_n_s64(((v48 >> 2) & 0x7FFFFFFF) - 1);
        v52 = xmmword_21C27F630;
        v53 = xmmword_21C27F640;
        v54 = (v47 + 8);
        v55 = vdupq_n_s64(4uLL);
        do
        {
          v56 = vmovn_s64(vcgeq_u64(v51, v53));
          if (vuzp1_s16(v56, *v51.i8).u8[0])
          {
            *(v54 - 2) = v50;
          }

          if (vuzp1_s16(v56, *&v51).i8[2])
          {
            *(v54 - 1) = v50 + 1;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v52))).i32[1])
          {
            *v54 = v50 + 2;
            v54[1] = v50 + 3;
          }

          v50 += 4;
          v52 = vaddq_s64(v52, v55);
          v53 = vaddq_s64(v53, v55);
          v54 += 4;
        }

        while (((v49 + 3) & 0xFFFFFFFC) != v50);
        v57 = *(this + 84);
      }

      *(this + 60) = v49;
      v105 = v57 + v49;
      *(this + 76) = v105;
      v106 = *(this + 168);
      v107 = *(this + 176) - v106;
      v108 = v107 >> 2;
      if ((v107 >> 2) >= 1)
      {
        v109 = (v107 >> 2) & 0x7FFFFFFF;
        v110 = (v108 + 3) & 0xFFFFFFFC;
        v111 = vdupq_n_s64(v109 - 1);
        v112 = xmmword_21C27F630;
        v113 = xmmword_21C27F640;
        v114 = (v106 + 8);
        v115 = vdupq_n_s64(4uLL);
        do
        {
          v116 = vmovn_s64(vcgeq_u64(v111, v113));
          if (vuzp1_s16(v116, *v111.i8).u8[0])
          {
            *(v114 - 2) = v105;
          }

          if (vuzp1_s16(v116, *&v111).i8[2])
          {
            *(v114 - 1) = v105 + 1;
          }

          if (vuzp1_s16(*&v111, vmovn_s64(vcgeq_u64(v111, *&v112))).i32[1])
          {
            *v114 = v105 + 2;
            v114[1] = v105 + 3;
          }

          v112 = vaddq_s64(v112, v115);
          v113 = vaddq_s64(v113, v115);
          v105 += 4;
          v114 += 4;
          v110 -= 4;
        }

        while (v110);
        v105 = *(this + 76);
      }

      *(this + 52) = v108;
      v117 = v105 + v108;
      *(this + 80) = v117;
      v118 = *(this + 216);
      v119 = *(this + 224) - v118;
      v120 = v119 >> 2;
      if ((v119 >> 2) >= 1)
      {
        v121 = (v119 >> 2) & 0x7FFFFFFF;
        v122 = (v120 + 3) & 0xFFFFFFFC;
        v123 = vdupq_n_s64(v121 - 1);
        v124 = xmmword_21C27F630;
        v125 = xmmword_21C27F640;
        v126 = (v118 + 8);
        v127 = vdupq_n_s64(4uLL);
        do
        {
          v128 = vmovn_s64(vcgeq_u64(v123, v125));
          if (vuzp1_s16(v128, *v123.i8).u8[0])
          {
            *(v126 - 2) = v117;
          }

          if (vuzp1_s16(v128, *&v123).i8[2])
          {
            *(v126 - 1) = v117 + 1;
          }

          if (vuzp1_s16(*&v123, vmovn_s64(vcgeq_u64(v123, *&v124))).i32[1])
          {
            *v126 = v117 + 2;
            v126[1] = v117 + 3;
          }

          v124 = vaddq_s64(v124, v127);
          v125 = vaddq_s64(v125, v127);
          v117 += 4;
          v126 += 4;
          v122 -= 4;
        }

        while (v122);
      }

      *(this + 56) = v120;
    }
  }

  else
  {
    if (v4 < 1)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      v45 = (v3 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v2)
        {
          v46 = v44 + 1;
        }

        else
        {
          v46 = v44;
        }

        if (!*v2)
        {
          v44 = -1;
        }

        *v2++ = v44;
        v44 = v46;
        --v45;
      }

      while (v45);
    }

    *(this + 40) = v46;
    *(this + 68) = 0;
    v58 = *(this + 144);
    v59 = *(this + 152) - v58;
    if ((v59 >> 2) < 1)
    {
      v62 = 0;
    }

    else
    {
      v60 = 0;
      v61 = (v59 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v58)
        {
          v62 = v60 + 1;
        }

        else
        {
          v62 = v60;
        }

        if (!*v58)
        {
          v60 = -1;
        }

        *v58++ = v60;
        v60 = v62;
        --v61;
      }

      while (v61);
    }

    *(this + 44) = v62;
    *(this + 72) = v62;
    v63 = *(this + 192);
    v64 = *(this + 200) - v63;
    if ((v64 >> 2) < 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      v66 = (v64 >> 2) & 0x7FFFFFFF;
      do
      {
        v67 = v65 + v62;
        if (*v63)
        {
          ++v65;
          v68 = v67;
        }

        else
        {
          v68 = -1;
        }

        *v63++ = v68;
        --v66;
      }

      while (v66);
    }

    *(this + 48) = v65;
    if (*(this + 37) == 1)
    {
      *(this + 76) = 0;
      v69 = *(this + 168);
      v70 = *(this + 176) - v69;
      if ((v70 >> 2) < 1)
      {
        v74 = 0;
        v71 = 0;
      }

      else
      {
        v71 = 0;
        v72 = (v70 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v69)
          {
            v73 = v71;
          }

          else
          {
            v73 = -1;
          }

          if (*v69)
          {
            ++v71;
          }

          *v69++ = v73;
          --v72;
        }

        while (v72);
        v74 = *(this + 76);
      }

      *(this + 52) = v71;
      v129 = v74 + v71;
      *(this + 80) = v129;
      v130 = *(this + 216);
      v131 = *(this + 224) - v130;
      if ((v131 >> 2) < 1)
      {
        v132 = 0;
      }

      else
      {
        v132 = 0;
        v133 = (v131 >> 2) & 0x7FFFFFFF;
        do
        {
          v134 = v132 + v129;
          if (*v130)
          {
            ++v132;
            v135 = v134;
          }

          else
          {
            v135 = -1;
          }

          *v130++ = v135;
          --v133;
        }

        while (v133);
        v129 = *(this + 80);
      }

      *(this + 56) = v132;
      v143 = v129 + v132;
      *(this + 84) = v143;
      v144 = *(this + 240);
      v145 = *(this + 248) - v144;
      if ((v145 >> 2) < 1)
      {
        v146 = 0;
      }

      else
      {
        v146 = 0;
        v147 = (v145 >> 2) & 0x7FFFFFFF;
        do
        {
          v148 = v146 + v143;
          if (*v144)
          {
            ++v146;
            v149 = v148;
          }

          else
          {
            v149 = -1;
          }

          *v144++ = v149;
          --v147;
        }

        while (v147);
      }

      *(this + 60) = v146;
    }

    else
    {
      *(this + 84) = 0;
      v75 = *(this + 240);
      v76 = *(this + 248) - v75;
      if ((v76 >> 2) < 1)
      {
        v80 = 0;
        v77 = 0;
      }

      else
      {
        v77 = 0;
        v78 = (v76 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v75)
          {
            v79 = v77;
          }

          else
          {
            v79 = -1;
          }

          if (*v75)
          {
            ++v77;
          }

          *v75++ = v79;
          --v78;
        }

        while (v78);
        v80 = *(this + 84);
      }

      *(this + 60) = v77;
      v136 = v80 + v77;
      *(this + 76) = v136;
      v137 = *(this + 168);
      v138 = *(this + 176) - v137;
      if ((v138 >> 2) < 1)
      {
        v139 = 0;
      }

      else
      {
        v139 = 0;
        v140 = (v138 >> 2) & 0x7FFFFFFF;
        do
        {
          v141 = v139 + v136;
          if (*v137)
          {
            ++v139;
            v142 = v141;
          }

          else
          {
            v142 = -1;
          }

          *v137++ = v142;
          --v140;
        }

        while (v140);
        v136 = *(this + 76);
      }

      *(this + 52) = v139;
      v150 = v136 + v139;
      *(this + 80) = v150;
      v151 = *(this + 216);
      v152 = *(this + 224) - v151;
      if ((v152 >> 2) < 1)
      {
        v153 = 0;
      }

      else
      {
        v153 = 0;
        v154 = (v152 >> 2) & 0x7FFFFFFF;
        do
        {
          v155 = v153 + v150;
          if (*v151)
          {
            ++v153;
            v156 = v155;
          }

          else
          {
            v156 = -1;
          }

          *v151++ = v156;
          --v154;
        }

        while (v154);
      }

      *(this + 56) = v153;
    }
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentVectors(std::vector<int> *a1, _BYTE *a2)
{
  v4 = *a1->__end_cap_.__value_;
  begin = a1[14].__begin_;
  v6 = (a1[14].__end_ - begin);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(&a1[14], v8);
    v4 = *a1->__end_cap_.__value_;
  }

  else if (!v7)
  {
    a1[14].__end_ = (begin + v4);
  }

  std::vector<float>::resize(a1 + 11, v4);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentFromParentFaces(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentVectors(std::vector<int> *a1, _BYTE *a2)
{
  v4 = a1->__end_cap_.__value_[1];
  begin = a1[15].__begin_;
  v6 = (a1[15].__end_ - begin);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(&a1[15], v8);
    v4 = a1->__end_cap_.__value_[1];
  }

  else if (!v7)
  {
    a1[15].__end_ = (begin + v4);
  }

  std::vector<float>::resize(a1 + 12, v4);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentFaces(a1, a2);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentEdges(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentVectors(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(a1 + 16) + 8);
  v5 = *(a1 + 384);
  v6 = *(a1 + 392) - v5;
  if (*(a1 + 36) == 1)
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = (a1 + 384);
      v10 = a2;
LABEL_6:
      std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(v9, v8, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = (a1 + 384);
      v10 = a2 + 4;
      goto LABEL_6;
    }
  }

  if (!v7)
  {
    *(a1 + 392) = v5 + v4;
  }

LABEL_9:
  std::vector<float>::resize((a1 + 312), *(*(a1 + 16) + 8));
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentFaces(a1, a2);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentEdges(a1, a2);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentVertices(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 64);
      do
      {
        v5 = *(*(result + 88) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 336) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 336) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 336) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 336) + v8) = a2[3];
          v9 = *(result + 264);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 336) + v4) = a2[v11];
            *(*(result + 264) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 88) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 120) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 336) + *v15) = *a2;
        *(*(result + 336) + v15[1]) = a2[1];
        *(*(result + 336) + v15[2]) = a2[2];
        *(*(result + 336) + v15[3]) = a2[3];
        v21 = *(result + 264);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 336) + v19) = v18[v20];
            *(*(result + 264) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 68);
      do
      {
        v5 = *(*(result + 104) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 360) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 360) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 360) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 360) + v8) = a2[3];
          v9 = *(result + 288);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 360) + v4) = a2[v11];
            *(*(result + 288) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 104) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 144) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 360) + *v15) = *a2;
        *(*(result + 360) + v15[1]) = a2[1];
        *(*(result + 360) + v15[2]) = a2[2];
        *(*(result + 360) + v15[3]) = a2[3];
        v21 = *(result + 288);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 360) + v19) = v18[v20];
            *(*(result + 288) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentEdges(uint64_t result, _BYTE *a2)
{
  v2 = *(*(result + 8) + 4);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = *(result + 72);
      do
      {
        *(*(result + 360) + v4) = *a2;
        *(*(result + 360) + v4 + 1) = a2[1];
        v5 = (*(result + 288) + 4 * v4);
        *v5 = v3;
        v5[1] = v3++;
        v4 += 2;
      }

      while (v3 < *(*(result + 8) + 4));
    }
  }

  else if (v2 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (*(result + 192) + 8 * v6);
      if (*(*(result + 432) + v6))
      {
        *(*(result + 360) + *v7) = *a2;
        *(*(result + 360) + v7[1]) = a2[1];
        v12 = *(result + 288);
        *(v12 + 4 * *v7) = v6;
        *(v12 + 4 * v7[1]) = v6;
      }

      else
      {
        v8 = 0;
        v9 = 1;
        do
        {
          v10 = v9;
          v11 = v7[v8];
          if (v11 != -1)
          {
            *(*(result + 360) + v11) = a2[v8 + 4];
            *(*(result + 288) + 4 * v7[v8]) = v6;
          }

          v9 = 0;
          v8 = 1;
        }

        while ((v10 & 1) != 0);
      }

      ++v6;
    }

    while (v6 < *(*(result + 8) + 4));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  if (*(result + 52))
  {
    v2 = *(result + 8);
    v3 = *v2;
    if (*(result + 36))
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = *(result + 312) + 4 * *(result + 76);
        do
        {
          *(v5 + 4 * v4) = v4;
          ++v4;
        }

        while (v4 < *v2);
      }
    }

    else if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v7 = *(*(result + 168) + 4 * i);
        if (v7 != -1)
        {
          if (*(*(result + 408) + i))
          {
            *(*(result + 384) + v7) = *a2;
            v2 = *(result + 8);
          }

          *(*(result + 312) + 4 * v7) = i;
          v3 = *v2;
        }
      }
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentEdges(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 4);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 80);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 4));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 216) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 432) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 4));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentVertices(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 8);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 84);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 8));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 240) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 456) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 12);
  v4 = *v2;
  v5 = *(v2 + 13) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 13) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(v2 + 12, v4 - v5);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagsFromParentFaces(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 240);
  v4 = *(v2 + 4);
  v5 = *(v2 + 248) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 248) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append((v2 + 240), v4 - v5);
  }

  v6 = *(this + 11);
  if (v6 >= 1)
  {
    v7 = *(this + 17);
    v8 = v7 + v6;
    do
    {
      *(*(*(this + 2) + 240) + v7++) = 0;
    }

    while (v7 < v8);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagsFromParentEdges(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize((*(this + 2) + 432), *(*(this + 2) + 8));
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentFaces(this);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentEdges(this);
  result = OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentVertices(this);
  if ((*(this + 36) & 1) == 0)
  {
    v3 = *(this + 2);
    if (*(v3 + 8) >= 1)
    {
      v4 = 0;
      do
      {
        if (*(*(this + 48) + v4))
        {
          *(*(v3 + 432) + 2 * v4) |= 0x800u;
          v3 = *(this + 2);
        }

        ++v4;
      }

      while (v4 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagsFromParentFaces(uint64_t this)
{
  v1 = *(this + 40);
  if (v1 >= 1)
  {
    v2 = *(this + 64);
    v3 = v1 + v2;
    do
    {
      *(*(*(this + 16) + 96) + v2) = *(*(*(this + 8) + 96) + *(*(this + 264) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagsFromParentEdges(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 >= 1)
  {
    v2 = *(this + 72);
    v3 = v1 + v2;
    do
    {
      *(*(*(this + 16) + 240) + v2) = *(*(*(this + 8) + 240) + *(*(this + 288) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentFaces(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v2 = *(this + 76);
    v3 = v2 + v1;
    if (*(*(this + 8) + 12) <= 0)
    {
      if (v1 >= 1)
      {
        do
        {
          *(*(*(this + 16) + 432) + 2 * v2) = 128;
          if (*(*(*(this + 8) + 24) + 8 * *(*(this + 312) + 4 * v2)) != *(this + 32))
          {
            *(*(*(this + 16) + 432) + 2 * v2) |= 2u;
          }

          ++v2;
        }

        while (v2 < v3);
      }
    }

    else if (v1 >= 1)
    {
      do
      {
        *(*(*(this + 16) + 432) + 2 * v2++) = 128;
      }

      while (v2 < v3);
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentEdges(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(this[27] + 4 * v2);
      if (v4 != -1)
      {
        v5 = *(*(v1 + 240) + v2);
        v6 = v5 & 1;
        v7 = v3 & 0xFFFF883A | (4 * ((v5 >> 1) & 1)) & 0xFFFFFFBF | (((v5 >> 3) & 1) << 6);
        v8 = v5 >> 2;
        v9 = (v5 << 12) & (v6 << 14);
        if ((v5 & 0xC) != 0)
        {
          v10 = 512;
        }

        else
        {
          v10 = 128;
        }

        v3 = (v7 | v10) & 0xFFFFCFFF | ((v8 & 1) << 12) & 0xDFFF | ((v8 & 1) << 13) | v9 | v6;
        *(*(this[2] + 432) + 2 * v4) = v3;
        v1 = this[1];
      }

      ++v2;
    }

    while (v2 < *(v1 + 4));
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentVertices(uint64_t this)
{
  v1 = *(this + 60);
  if (v1 >= 1)
  {
    v2 = *(this + 84);
    v3 = v1 + v2;
    do
    {
      *(*(*(this + 16) + 432) + 2 * v2) = *(*(*(this + 8) + 432) + 2 * *(*(this + 312) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this, int16x4_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = *(this + 6);
  v3 = v27;
  v4 = *(this + 2);
  v5 = v4[27];
  v4 += 27;
  v4[1] = v5;
  std::vector<float>::resize(v4, *(v4 - 53), &OpenSubdiv::v3_1_1::Sdc::Crease::SHARPNESS_SMOOTH, a2);
  v28 = &v30;
  v29 = 0x1000000000;
  __p = 0;
  if ((v3 & 0x60) != 0 && (v6 = *(*(this + 1) + 20), v6 >= 0x11))
  {
    operator delete(0);
    v7 = operator new(4 * v6);
    __p = v7;
    v28 = v7;
    HIDWORD(v29) = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 12);
  if (v8 >= 1)
  {
    v9 = *(this + 18);
    v10 = v8 + v9;
    while (1)
    {
      v11 = *(this + 2);
      v12 = *(v11 + 216);
      v13 = *(v11 + 240);
      if ((*(v13 + v9) & 4) != 0)
      {
        *(v12 + 4 * v9) = 1092616192;
      }

      else if ((*(v13 + v9) & 8) != 0)
      {
        v14 = *(*(this + 36) + 4 * v9);
        v15 = *(this + 1);
        v16 = v15[27];
        v17 = *(v16 + 4 * v14);
        if ((v27 & 0x60) != 0)
        {
          v18 = *(v15[15] + 8 * v14 + 4 * ((*(*(this + 45) + v9) >> 3) & 3));
          v19 = v15[42];
          v20 = *(v19 + 8 * v18);
          v21 = v28;
          if (v20 >= 1)
          {
            v22 = (v15[45] + 4 * *(v19 + 8 * v18 + 4));
            v23 = *(v19 + 8 * v18);
            v24 = v28;
            do
            {
              v25 = *v22++;
              *v24++ = *(v16 + 4 * v25);
              --v23;
            }

            while (v23);
          }

          v26 = OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessAtVertex(&v27, v17, v20, v21);
          goto LABEL_14;
        }

        if (v17 <= 0.0)
        {
          goto LABEL_21;
        }

        v26 = 10.0;
        if (v17 >= 10.0)
        {
LABEL_14:
          *(v12 + 4 * v9) = v26;
          if (v26 > 0.0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v17 > 1.0)
          {
            v26 = v17 + -1.0;
            goto LABEL_14;
          }

LABEL_21:
          *(v12 + 4 * v9) = 0;
        }

        *(v13 + v9) &= ~8u;
      }

LABEL_23:
      if (++v9 >= v10)
      {
        v7 = __p;
        break;
      }
    }
  }

  operator delete(v7);
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this, int16x4_t a2)
{
  v3 = *(this + 2);
  *(v3 + 416) = *(v3 + 408);
  std::vector<float>::resize((v3 + 408), *(v3 + 8), &OpenSubdiv::v3_1_1::Sdc::Crease::SHARPNESS_SMOOTH, a2);
  v4 = *(this + 15);
  if (v4 >= 1)
  {
    v5 = *(this + 21);
    v6 = v4 + v5;
    do
    {
      v7 = *(this + 2);
      v8 = *(v7 + 408);
      v9 = *(v7 + 432);
      v10 = *(v9 + 2 * v5);
      if ((v10 & 0x10) != 0)
      {
        *(v8 + 4 * v5) = 1092616192;
      }

      else if ((v10 & 0x20) != 0)
      {
        v11 = *(*(*(this + 1) + 408) + 4 * *(*(this + 39) + 4 * v5));
        if (v11 <= 0.0)
        {
          goto LABEL_12;
        }

        v12 = 10.0;
        if (v11 >= 10.0)
        {
LABEL_9:
          *(v8 + 4 * v5) = v12;
          if (v12 > 0.0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v11 > 1.0)
          {
            v12 = v11 + -1.0;
            goto LABEL_9;
          }

LABEL_12:
          *(v8 + 4 * v5) = 0;
        }

        *(v9 + 2 * v5) &= ~0x20u;
      }

LABEL_14:
      ++v5;
    }

    while (v5 < v6);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(uint64_t this)
{
  v1 = this;
  v44 = *(this + 24);
  v2 = *(this + 56);
  if (v2 >= 1)
  {
    v3 = *(this + 80);
    v4 = v2 + v3;
    while (1)
    {
      v5 = *(v1 + 16);
      v6 = *(v5 + 432);
      v7 = *(v6 + 2 * v3);
      if ((v7 & 0x40) != 0)
      {
        break;
      }

LABEL_16:
      if (++v3 >= v4)
      {
        goto LABEL_17;
      }
    }

    v8 = (*(v1 + 192) + 8 * *(*(v1 + 312) + 4 * v3));
    if ((*(*(v1 + 384) + v3) & 1) == 0)
    {
      v9 = ((*(*(v5 + 240) + v8[1]) >> 3) & 1) + ((*(*(v5 + 240) + *v8) >> 3) & 1);
      *(v6 + 2 * v3) = v7 & 0xFFBF | ((v9 != 0) << 6);
      this = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v44, 0.0, v9);
      v10 = *(v6 + 2 * v3) & 0xF87F | ((this & 0xF) << 7);
LABEL_15:
      *(v6 + 2 * v3) = v10;
      goto LABEL_16;
    }

    v11 = *v8;
    if (v11 == -1 || (*(*(v5 + 240) + v11) & 8) == 0)
    {
      v12 = v8[1];
      if (v12 == -1)
      {
        v14 = v7 & 0xF83F;
      }

      else
      {
        v13 = 8 * *(*(v5 + 240) + v12);
        v14 = v7 & 0xF83F;
        if ((v13 & 0x40) != 0)
        {
          v15 = v13 & 0x40;
          v16 = 512;
LABEL_14:
          v10 = v15 | v16 | v14;
          goto LABEL_15;
        }
      }

      v15 = 0;
      v16 = 128;
      goto LABEL_14;
    }

    v14 = v7 & 0xF83F;
    v16 = 512;
    v15 = 64;
    goto LABEL_14;
  }

LABEL_17:
  v17 = *(v1 + 60);
  if (v17 >= 1)
  {
    v18 = *(v1 + 84);
    v19 = v17 + v18;
    do
    {
      v20 = *(*(v1 + 312) + 4 * v18);
      v21 = *(v1 + 8);
      v22 = *(v21[54] + 2 * v20);
      if ((v22 & 0x60) == 0)
      {
        goto LABEL_34;
      }

      v23 = *(v1 + 16);
      v24 = v23[54];
      v25 = *(v24 + 2 * v18);
      if ((v22 & 0x40) == 0 && (((v25 & 0x20) == 0) & (v22 >> 5)) == 0)
      {
        goto LABEL_34;
      }

      v26 = v23[45];
      if (((v23[46] - v26) >> 2) < 1)
      {
        v33 = v21[42];
        v34 = *(v33 + 8 * v20);
        if (v34 >= 1)
        {
          v35 = *(v33 + 8 * v20 + 4);
          v36 = (v21[45] + 4 * v35);
          v37 = (v21[48] + 2 * v35);
          v30 = 0;
          v38 = v23[30];
          do
          {
            v39 = *v36++;
            v40 = *(v1 + 192) + 8 * v39;
            LODWORD(v39) = *v37++;
            v30 = vadd_s32(v30, (*&vshl_u32(vand_s8(vdup_n_s32(*(v38 + *(v40 + 4 * v39))), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
            --v34;
          }

          while (v34);
          goto LABEL_30;
        }
      }

      else
      {
        v27 = (v23[42] + 8 * v18);
        v28 = *v27;
        if (v28 >= 1)
        {
          v29 = (v26 + 4 * v27[1]);
          v30 = 0;
          v31 = v23[30];
          do
          {
            v32 = *v29++;
            v30 = vadd_s32(v30, (*&vshl_u32(vand_s8(vdup_n_s32(*(v31 + v32)), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
            --v28;
          }

          while (v28);
LABEL_30:
          v41 = v30.i32[0];
          v42 = (v30.i32[0] > 0) << 6;
          v43 = v30.i32[1];
          goto LABEL_32;
        }
      }

      v43 = 0;
      v41 = 0;
      v42 = 0;
LABEL_32:
      *(v24 + 2 * v18) = v42 | v25 & 0xFFBF;
      if ((v25 & 0x30) == 0)
      {
        this = OpenSubdiv::v3_1_1::Sdc::Crease::DetermineVertexVertexRule(&v44, 0.0, v43 + v41);
        *(v24 + 2 * v18) = ((this & 0xF) << 7) | *(v24 + 2 * v18) & 0xF87F;
      }

LABEL_34:
      ++v18;
    }

    while (v18 < v19);
  }

  return this;
}

void std::vector<float>::resize(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (result[1] - *result) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(result, a2 - v4, a3, a4);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseVertexChildren(void *this)
{
  v1 = this[57];
  if (this[58] == v1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseVertexChildren();
  }

  v2 = this[1];
  v3 = *(v2 + 8);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*(v1 + i))
      {
        *(this[30] + 4 * i) = 2;
        v3 = *(v2 + 8);
      }
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseEdgeChildren(void *this)
{
  if (this[55] == this[54])
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseEdgeChildren();
  }

  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    for (i = 0; i < *(v1 + 4); ++i)
    {
      v3 = (this[24] + 8 * i);
      v4 = this[54];
      if (*(v4 + i))
      {
        v7 = 2;
        *v3 = 2;
      }

      else
      {
        v5 = (*(v1 + 120) + 8 * i);
        v6 = this[57];
        if (*(v6 + *v5))
        {
          *v3 = 1;
          *(this[27] + 4 * i) = 1;
        }

        if ((*(v6 + v5[1]) & 1) == 0)
        {
          goto LABEL_11;
        }

        v7 = 1;
      }

      v3[1] = v7;
      *(this[27] + 4 * i) = v7;
LABEL_11:
      v8 = *(v1 + 168);
      v9 = (*(v1 + 144) + 8 * i);
      v10 = *v9;
      v11 = (v8 + 4 * v9[1]);
      if (v10 == 2)
      {
        v12 = *(v4 + i) & 0xE1 | (2 * ((*(this[51] + v11[1]) ^ *(this[51] + *v11)) & 1));
      }

      else if (v10 > 1)
      {
        v14 = *v11;
        v13 = v11 + 1;
        v15 = *(this[51] + v14);
        v16 = *(v4 + i) & 0xE1;
        *(v4 + i) = v16;
        v17 = v10 - 1;
        while (1)
        {
          v18 = *v13++;
          if ((*(this[51] + v18) ^ v15))
          {
            break;
          }

          if (!--v17)
          {
            goto LABEL_21;
          }
        }

        v12 = v16 | 2;
      }

      else
      {
        v12 = *(v4 + i) & 0xE1;
      }

      *(v4 + i) = v12;
LABEL_21:
      v1 = this[1];
    }
  }

  return this;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v10 = &v4[a2];
      do
      {
        *v4++ &= 0xE0u;
        --v2;
      }

      while (v2);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = &v4[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v5 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v11 = v6;
    v12 = &v6[a2];
    v13 = v11;
    do
    {
      *v13++ &= 0xE0u;
      --v2;
    }

    while (v2);
    v15 = *a1;
    v14 = *(a1 + 8);
    v16 = &v11[*a1 - v14];
    memcpy(v16, *a1, v14 - *a1);
    *a1 = v16;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_21C27F640)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_21C27F630)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_21C27F640)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_21C27F630)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels()
{
  __assert_rtn("subdivideFVarChannels", "refinement.cpp", 1067, "_child->_fvarChannels.size() == 0");
}

{
  __assert_rtn("subdivideFVarChannels", "refinement.cpp", 1068, "this->_fvarChannels.size() == 0");
}

uint64_t OpenSubdiv::v3_1_1::Far::Error(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  MEMORY[0x28223BE20](a1);
  v7 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    OpenSubdiv::v3_1_1::Far::Error();
  }

  v4 = v2;
  vsnprintf(__str, 0x2800uLL, v3, va);
  if (OpenSubdiv::v3_1_1::Far::errorFunc)
  {
    return OpenSubdiv::v3_1_1::Far::errorFunc(v4, __str);
  }

  else
  {
    return printf("%s: %s\n", OpenSubdiv::v3_1_1::Far::Error(OpenSubdiv::v3_1_1::Far::ErrorType,char const*,...)::errorTypeLabel[v4], __str);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::Warning(OpenSubdiv::v3_1_1::Far *this, const char *a2, ...)
{
  va_start(va, a2);
  MEMORY[0x28223BE20](this);
  v5 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x2800uLL, v2, va);
  if (OpenSubdiv::v3_1_1::Far::warningFunc)
  {
    return OpenSubdiv::v3_1_1::Far::warningFunc(__str);
  }

  else
  {
    return fprintf(*MEMORY[0x277D85E08], "Warning: %s\n", __str);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::FVarRefinement(void *this, const OpenSubdiv::v3_1_1::Vtr::internal::Refinement *a2, OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *a3, OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel *a4)
{
  *this = a2;
  this[1] = *(a2 + 1);
  this[2] = a3;
  this[3] = *(a2 + 2);
  this[4] = a4;
  this[6] = 0;
  this[7] = 0;
  this[5] = 0;
  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::~FVarRefinement(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::applyRefinement(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 8) = *(*(this + 2) + 8);
  v2 = *(this + 2);
  v3 = *(this + 4);
  *(v3 + 12) = *(v2 + 12);
  *(v3 + 13) = *(v2 + 13);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(this);
  v4 = *(this + 4);
  if ((*(v4 + 13) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(this);
    v4 = *(this + 4);
  }

  if (*(v4 + 16) <= *(*(this + 3) + 8))
  {

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromFaceVertices(v4);
  }

  else
  {

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *this;
  v3 = *(*this + 52);
  v4 = *(*this + 56);
  if (v4 >= 1)
  {
    v5 = *(v2 + 80);
    v6 = v4 + v5;
    do
    {
      v7 = *(*(v2 + 312) + 4 * v5);
      if (*(*(*(this + 2) + 48) + v7))
      {
        v8 = *(*(*(this + 1) + 144) + 8 * v7);
      }

      else
      {
        v8 = 1;
      }

      v3 += v8;
      ++v5;
    }

    while (v5 < v6);
  }

  v9 = *(v2 + 60);
  if (v9 >= 1)
  {
    v10 = *(v2 + 84);
    v11 = v9 + v10;
    do
    {
      if (*(*(v2 + 384) + v10))
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues();
      }

      v3 += *(*(*(this + 2) + 72) + 2 * *(*(v2 + 312) + 4 * v10++));
    }

    while (v10 < v11);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(*(this + 4));
  v12 = *(this + 4);
  v13 = *(v12 + 168);
  v14 = *(v12 + 176) - v13;
  if (v3 <= v14)
  {
    if (v3 < v14)
    {
      *(v12 + 176) = v13 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append((v12 + 168), v3 - v14);
  }

  v15 = 0;
  std::vector<unsigned short>::resize(this + 5, v3, &v15);
}

OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 16) = 0;
  if (*(*this + 37) == 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *(this + 4);
  v3 = *(v2 + 168);
  v4 = *(v2 + 16);
  v5 = *(v2 + 176) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 176) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append((v2 + 168), v4 - v5);
    v2 = *(this + 4);
  }

  if ((*(v2 + 13) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize((v2 + 192), *(v2 + 16));
    v2 = *(this + 4);
  }

  std::vector<unsigned short>::resize(this + 5, *(v2 + 16));
  std::vector<float>::resize((*(this + 4) + 144), *(*(this + 4) + 16));
  v6 = *(this + 4);
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = *(v6 + 144);
    do
    {
      *(v8 + 4 * v7) = v7;
      ++v7;
    }

    while (v7 < *(v6 + 16));
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(void *this)
{
  LODWORD(v1) = *(*this + 44);
  if (v1 >= 1)
  {
    v2 = 0;
    do
    {
      *(*(this[4] + 48) + v2++) = 0;
    }

    while (v2 < *(*this + 44));
    LODWORD(v1) = *(*this + 44);
  }

  if (v1 < *(this[3] + 4))
  {
    v1 = v1;
    do
    {
      *(*(this[4] + 48) + v1) = *(*(this[2] + 48) + *(*(*this + 288) + 4 * v1));
      ++v1;
    }

    while (v1 < *(this[3] + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(int **this)
{
  v2 = *this;
  v3 = (*this)[13];
  if (v3 >= 1)
  {
    v4 = v2[19];
    v5 = v3 + v4;
    v6 = *(*(this[4] + 12) + 4 * v4);
    do
    {
      *(*(this[4] + 21) + v6) = 0;
      ++v4;
      ++v6;
    }

    while (v4 < v5);
    v2 = *this;
  }

  v7 = v2[14];
  if (v7 >= 1)
  {
    v8 = v2[20];
    v9 = v7 + v8;
    if (*(this[2] + 13))
    {
      v10 = 1;
    }

    else
    {
      v10 = 9;
    }

    do
    {
      v11 = this[4];
      v12 = *(*(v11 + 9) + 2 * v8);
      v13 = *(*(v11 + 12) + 4 * v8);
      v14 = *(v11 + 21);
      if ((*(*(this[2] + 6) + *(*(*this + 39) + 4 * v8)) & 9) != 0)
      {
        if (v12)
        {
          memset((v14 + v13), v10, v12);
        }
      }

      else if (v12)
      {
        bzero((v14 + v13), v12);
      }

      ++v8;
    }

    while (v8 < v9);
    v2 = *this;
  }

  v15 = v2[15];
  if (v15 >= 1)
  {
    v16 = v2[21];
    v17 = v15 + v16;
    do
    {
      if (*(*(*this + 48) + v16))
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags();
      }

      v18 = *(*(*this + 39) + 4 * v16);
      memcpy((*(this[4] + 21) + *(*(this[4] + 12) + 4 * v16++)), (*(this[2] + 21) + *(*(this[2] + 12) + 4 * v18)), *(*(this[2] + 9) + 2 * v18));
    }

    while (v16 < v17);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(void *this)
{
  v1 = this[4];
  if (*(v1 + 13) == 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases();
  }

  v2 = *this;
  if (*(*this + 32) == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  v4 = *(v2 + 56);
  if (v4 >= 1)
  {
    v5 = *(v2 + 80);
    v6 = v4 + v5;
    v7 = *(v1 + 72);
    v8 = *(v1 + 96);
    v9 = *(v1 + 168);
    do
    {
      v10 = *(v8 + 4 * v5);
      v11 = (v9 + v10);
      if ((*(v9 + v10) & 1) != 0 && (*(*(v2 + 384) + v5) & 1) == 0)
      {
        v12 = *(v7 + 2 * v5);
        if (*(v7 + 2 * v5))
        {
          v13 = 0;
          v14 = (*(v1 + 192) + 4 * v10 + 2);
          do
          {
            v15 = *v11++;
            if ((v15 & 0x18) != 0)
            {
              *(v14 - 1) = v13;
              *v14 = v3 - 1 + v13;
            }

            v13 += v3;
            v14 += 2;
            --v12;
          }

          while (v12);
        }
      }

      ++v5;
    }

    while (v5 < v6);
  }

  v16 = *(v2 + 60);
  if (v16 >= 1)
  {
    v17 = *(v2 + 84);
    v18 = v16 + v17;
    do
    {
      v19 = this[4];
      v20 = *(v19[12] + 4 * v17);
      v21 = (v19[21] + v20);
      if ((*v21 & 1) != 0 && (*(*(*this + 384) + v17) & 1) == 0)
      {
        v22 = *(v19[9] + 2 * v17);
        if (*(v19[9] + 2 * v17))
        {
          v23 = (*(this[2] + 192) + 4 * *(*(this[2] + 96) + 4 * *(*(*this + 312) + 4 * v17)));
          v24 = (v19[24] + 4 * v20);
          do
          {
            v25 = *v21++;
            if ((v25 & 0x18) != 0)
            {
              *v24 = *v23;
            }

            ++v24;
            ++v23;
            --v22;
          }

          while (v22);
        }
      }

      ++v17;
    }

    while (v17 < v18);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 3) + 20);
  v44 = &v45;
  v4 = *(*(this + 2) + 14);
  __p = 0;
  if (v3 >= 0x11)
  {
    v2 = operator new(4 * v3);
    __p = v2;
    v44 = v2;
  }

  v5 = *(*this + 60);
  if (v5 >= 1)
  {
    v6 = *(*this + 84);
    v7 = v5 + v6;
    while (1)
    {
      v8 = *(this + 4);
      v9 = *(v8[12] + 4 * v6);
      v10 = (v8[21] + v9);
      if ((*v10 & 1) == 0)
      {
        goto LABEL_9;
      }

      v11 = *this;
      if (*(*(*this + 384) + v6))
      {
        goto LABEL_9;
      }

      v12 = *(*(v11 + 312) + 4 * v6);
      v13 = *(this + 1);
      if ((*(v13[54] + 2 * v12) & 0x60) == 0)
      {
        goto LABEL_9;
      }

      v14 = *(this + 3);
      v15 = *(v14[54] + 2 * v6);
      if ((v15 & 0x30) != 0)
      {
        goto LABEL_9;
      }

      v16 = *(v8[9] + 2 * v6);
      if ((v15 & 0x40) == 0)
      {
        if (*(v8[9] + 2 * v6))
        {
          do
          {
            if ((*v10 & 0x10) != 0)
            {
              *v10 = *v10 & 0xC7 | 8;
            }

            ++v10;
            --v16;
          }

          while (v16);
        }

        goto LABEL_9;
      }

      v17 = v8[24];
      v18 = v14[45];
      if (((v14[46] - v18) & 0x3FFFFFFFCLL) != 0)
      {
        v19 = *(v14[42] + 8 * v6);
        v20 = (v18 + 4 * *(v14[42] + 8 * v6 + 4));
      }

      else
      {
        v21 = v13[42];
        v19 = *(v21 + 8 * v12);
        v20 = v44;
        if (v19 >= 1)
        {
          v22 = 0;
          v23 = *(v21 + 8 * v12 + 4);
          v24 = v13[45] + 4 * v23;
          v25 = v13[48] + 2 * v23;
          v26 = *(v11 + 192);
          do
          {
            *(v44 + v22) = *(v26 + 8 * *(v24 + 4 * v22) + 4 * *(v25 + 2 * v22));
            ++v22;
          }

          while (v19 != v22);
        }
      }

      if (v16)
      {
        break;
      }

LABEL_9:
      if (++v6 >= v7)
      {
        v2 = __p;
        goto LABEL_53;
      }
    }

    v27 = 0;
    v28 = v17 + 4 * v9;
    while (1)
    {
      v29 = v10[v27];
      if ((v29 & 0x30) == 0x10)
      {
        v30 = (v28 + 4 * v27);
        v31 = *v30;
        v32 = v30[1];
        if (v32 <= v31)
        {
          if (v31 <= v32)
          {
            goto LABEL_43;
          }

          if (v31 + 1 < v19)
          {
            v37 = v20 + v31 + 1;
            v38 = v31 + 2;
            do
            {
              v39 = *v37++;
              v40 = *(*(*(this + 3) + 240) + v39);
              if ((v40 & 8) != 0)
              {
                break;
              }

              v36 = v38++ >= v19;
            }

            while (!v36);
            if ((v40 & 8) != 0)
            {
              goto LABEL_44;
            }
          }

          v41 = 0;
          do
          {
            v42 = *(*(*(this + 3) + 240) + *(v20 + v41));
            v35 = (v42 >> 3) & 1;
            if ((v42 & 8) != 0)
            {
              break;
            }

            v36 = v41++ >= v32;
          }

          while (!v36);
        }

        else
        {
          v33 = v31 + 1;
          do
          {
            v34 = *(*(*(this + 3) + 240) + *(v20 + v33));
            v35 = (v34 >> 3) & 1;
            if ((v34 & 8) != 0)
            {
              break;
            }

            v36 = v33++ >= v32;
          }

          while (!v36);
        }

        if ((v35 & 1) == 0)
        {
LABEL_43:
          v10[v27] = v29 & 0xC7 | 8;
        }
      }

LABEL_44:
      if (++v27 == v16)
      {
        if (v16 == 2 && (v4 & 1) != 0)
        {
          v43 = *v10;
          if ((*v10 & 0x20) != 0 && (v10[1] & 0x10) == 0)
          {
LABEL_52:
            *v10 = v43 & 0xDF;
          }

          else if ((*v10 & 0x10) == 0 && (v10[1] & 0x20) != 0)
          {
            v43 = *++v10;
            goto LABEL_52;
          }
        }

        goto LABEL_9;
      }
    }
  }

LABEL_53:
  operator delete(v2);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(void *this)
{
  v1 = *(*this + 52);
  if (v1 >= 1)
  {
    v2 = *(*this + 76);
    v3 = v1 + v2;
    v4 = this[4];
    v5 = *(v4 + 96);
    v6 = *(v4 + 72);
    v7 = *(v4 + 16);
    do
    {
      *(v5 + 4 * v2) = v7;
      *(v6 + 2 * v2) = 1;
      v7 = *(v4 + 16) + 1;
      *(v4 + 16) = v7;
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v1 = *(*this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = *(*this + 80);
    v4 = v1 + v3;
    v5 = *(this + 4);
    do
    {
      v6 = *(*(*v2 + 312) + 4 * v3);
      v7 = *(v5 + 16);
      *(*(v5 + 96) + 4 * v3) = v7;
      if (*(*(*(v2 + 2) + 48) + v6))
      {
        this = OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex(v2, v3, v6);
        v5 = *(v2 + 4);
        *(*(v5 + 72) + 2 * v3) = this;
        v8 = *(v5 + 16) + this;
      }

      else
      {
        *(*(v5 + 72) + 2 * v3) = 1;
        v8 = v7 + 1;
      }

      *(v5 + 16) = v8;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(void *this)
{
  v1 = *this;
  v2 = *(*this + 60);
  if (v2 >= 1)
  {
    v3 = *(v1 + 84);
    v4 = v2 + v3;
    v5 = *(v1 + 312);
    v6 = this[4];
    v7 = *(v6 + 96);
    v8 = this[2];
    v9 = v8[12];
    v10 = v8[21];
    v11 = *(v6 + 16);
    do
    {
      v12 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v11;
      if (*(v10 + *(v9 + 4 * v12)))
      {
        if (*(*(v1 + 384) + v3))
        {
          OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices();
        }

        v13 = *(v8[9] + 2 * v12);
        if (v13 >= 2)
        {
          v14 = 0;
          v15 = vdupq_n_s64(v13 - 2);
          v16 = (this[5] + 2 * v11 + 8);
          do
          {
            v17 = vdupq_n_s64(v14);
            v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C27F640)));
            if (vuzp1_s8(vuzp1_s16(v18, 6), 6).u8[0])
            {
              *(v16 - 3) = v14 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(v18, 6), 6).i8[1])
            {
              *(v16 - 2) = v14 | 2;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C27F630)))), 6).i8[2])
            {
              *(v16 - 1) = v14 | 3;
              *v16 = v14 | 4;
            }

            v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C2A1A10)));
            if (vuzp1_s8(6, vuzp1_s16(v19, 6)).i32[1])
            {
              v16[1] = v14 | 5;
            }

            if (vuzp1_s8(6, vuzp1_s16(v19, 6)).i8[5])
            {
              v16[2] = v14 | 6;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C2A1A00))))).i8[6])
            {
              v16[3] = v14 | 7;
              v16[4] = v14 + 8;
            }

            v14 += 8;
            v16 += 8;
          }

          while (((v13 + 6) & 0x1FFF8) != v14);
          v20 = (*(*v6 + 264) + 8 * v3);
          v21 = *v20;
          if (v21 >= 1)
          {
            v22 = (v8[15] + 2 * *(*(*v8 + 264) + 4 * ((2 * v12) | 1)));
            v23 = (*(v6 + 120) + 2 * v20[1]);
            do
            {
              v24 = *v22++;
              *v23++ = v24;
              --v21;
            }

            while (v21);
          }
        }
      }

      else
      {
        LODWORD(v13) = 1;
      }

      *(*(v6 + 72) + 2 * v3) = v13;
      v11 = *(v6 + 16) + v13;
      *(v6 + 16) = v11;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this, int a2, int a3)
{
  v4 = *(this + 1);
  v5 = *(v4 + 144);
  result = *(v5 + 8 * a3);
  if (result != 1)
  {
    v7 = *(v4 + 168);
    v8 = *(v5 + 8 * a3 + 4);
    v9 = *(this + 4);
    if (result >= 1)
    {
      v10 = 0;
      v11 = vdupq_n_s64(result - 1);
      v12 = (*(this + 5) + 2 * *(v9[12] + 4 * a2) + 8);
      v13 = xmmword_21C2A1A00;
      v14 = xmmword_21C2A1A10;
      v15 = xmmword_21C27F630;
      v16 = xmmword_21C27F640;
      v17 = vdupq_n_s64(8uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v11, v16));
        if (vuzp1_s8(vuzp1_s16(v18, *v11.i8), *v11.i8).u8[0])
        {
          *(v12 - 4) = v10;
        }

        if (vuzp1_s8(vuzp1_s16(v18, *&v11), *&v11).i8[1])
        {
          *(v12 - 3) = v10 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v15))), *&v11).i8[2])
        {
          *(v12 - 2) = v10 | 2;
          *(v12 - 1) = v10 | 3;
        }

        v19 = vmovn_s64(vcgeq_u64(v11, v14));
        if (vuzp1_s8(*&v11, vuzp1_s16(v19, *&v11)).i32[1])
        {
          *v12 = v10 | 4;
        }

        if (vuzp1_s8(*&v11, vuzp1_s16(v19, *&v11)).i8[5])
        {
          v12[1] = v10 | 5;
        }

        if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v13)))).i8[6])
        {
          v12[2] = v10 | 6;
          v12[3] = v10 | 7;
        }

        v10 += 8;
        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v16 = vaddq_s64(v16, v17);
        v13 = vaddq_s64(v13, v17);
        v12 += 8;
      }

      while (((result + 7) & 0xFFFFFFF8) != v10);
    }

    v20 = *(this + 3);
    v21 = *(v20 + 264);
    v22 = *(v21 + 8 * a2);
    v23 = *(*v9 + 264);
    if (v22 != *(v23 + 8 * a2))
    {
      OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex();
    }

    if (v22 < result)
    {
      OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex();
    }

    if (v22 >= 1)
    {
      v24 = 0;
      v25 = v7 + 4 * v8;
      v26 = *(v20 + 288);
      v27 = (8 * a2) | 4;
      v28 = v26 + 4 * *(v21 + v27);
      v29 = v9[15] + 2 * *(v23 + v27);
      v30 = *(*this + 264);
      do
      {
        v31 = *(v30 + 4 * *(v28 + 4 * v24));
        if (result == 2)
        {
          if (v31 == *(v25 + 4))
          {
            *(v29 + 2 * v24) = 1;
          }
        }

        else if (result >= 1)
        {
          for (i = 0; i != result; ++i)
          {
            if (v31 == *(v25 + 4 * i))
            {
              *(v29 + 2 * v24) = i;
            }
          }
        }

        ++v24;
      }

      while (v24 != v22);
    }
  }

  return result;
}

float OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this, int a2, unsigned int a3, int a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = v64;
  v62 = v64;
  v63 = 0x1000000000;
  v65 = 0;
  v7 = *(this + 1);
  v8 = *(v7 + 360);
  v9 = a2;
  v10 = (2 * a2) | 1;
  v11 = *(v7 + 336);
  v12 = *(v11 + 4 * v10);
  v13 = (v8 + 4 * v12);
  v14 = *(v11 + 8 * a2);
  v15 = *(this + 3);
  v16 = v15[45];
  if (((v15[46] - v16) & 0x3FFFFFFFCLL) != 0)
  {
    v6 = (v16 + 4 * *(v15[42] + 8 * a4 + 4));
    goto LABEL_11;
  }

  if (!v14)
  {
    v18 = a2;
    operator delete(0);
    v9 = v18;
    v63 = 0x1000000000;
    v19 = v60;
    v58 = v60;
    v59 = 0x2000000000;
    v61 = 0;
    v62 = v64;
    goto LABEL_13;
  }

  if (v14 <= 0x10)
  {
    LODWORD(v63) = v14;
    v17 = *(*(this + 1) + 384) + 2 * *(*(*(this + 1) + 336) + 4 * v10);
  }

  else
  {
    v55 = a2;
    operator delete(0);
    v6 = operator new(4 * v14);
    v65 = v6;
    v62 = v6;
    LODWORD(v63) = v14;
    HIDWORD(v63) = v14;
    if (v14 < 1)
    {
      v9 = v55;
      goto LABEL_11;
    }

    v17 = *(*(this + 1) + 384) + 2 * *(*(*(this + 1) + 336) + 4 * v10);
    v9 = v55;
  }

  v20 = 0;
  v21 = *(*this + 192);
  do
  {
    v6[v20] = *(v21 + 8 * v13[v20] + 4 * *(v17 + 2 * v20));
    ++v20;
  }

  while (v14 != v20);
LABEL_11:
  v19 = v60;
  v58 = v60;
  LODWORD(v59) = 2 * v14;
  HIDWORD(v59) = 32;
  v61 = 0;
  if ((2 * v14) >= 0x21)
  {
    v22 = a3;
    v23 = v9;
    v24 = operator new(4 * (2 * v14));
    v9 = v23;
    a3 = v22;
    v19 = v24;
    v61 = v24;
    v58 = v24;
    HIDWORD(v59) = 2 * v14;
  }

LABEL_13:
  v25 = (*(*(this + 2) + 192) + 4 * *(*(*(this + 2) + 96) + 4 * v9) + 4 * a3);
  v26 = *v25;
  v27 = v25[1];
  v28 = (v27 - v26);
  if (v27 <= v26)
  {
    v29 = *(this + 1);
    if (v26 <= v27)
    {
      LODWORD(v28) = 0;
      v31 = *(this + 3);
    }

    else
    {
      v39 = *(v29 + 216);
      v31 = *(this + 3);
      v40 = *(v31 + 216);
      if (v26 + 1 >= v14)
      {
        v41 = 0;
      }

      else
      {
        v41 = (v14 + ~v26);
        v42 = (4 * v12 + 4 * v26 + v8 + 4);
        v43 = &v6[v26 + 1];
        v44 = v41;
        v45 = v19;
        do
        {
          v46 = *v42++;
          *v45 = *(v39 + 4 * v46);
          v47 = *v43++;
          v45[v14] = *(v40 + 4 * v47);
          ++v45;
          --v44;
        }

        while (v44);
      }

      v48 = v27 + 1;
      v49 = &v19[v41];
      LODWORD(v28) = v27 + v41 + 1;
      do
      {
        v50 = *v13++;
        *v49 = *(v39 + 4 * v50);
        v51 = *v6++;
        v49[v14] = *(v40 + 4 * v51);
        ++v49;
        --v48;
      }

      while (v48);
    }
  }

  else
  {
    v29 = *(this + 1);
    v30 = *(v29 + 216);
    v31 = *(this + 3);
    v32 = *(v31 + 216);
    v33 = &v6[v26 + 1];
    v34 = (4 * v12 + 4 * v26 + v8 + 4);
    v35 = v28;
    v36 = v19;
    do
    {
      v37 = *v34++;
      *v36 = *(v30 + 4 * v37);
      v38 = *v33++;
      v36[v14] = *(v32 + 4 * v38);
      ++v36;
      --v35;
    }

    while (v35);
  }

  v57 = *(*this + 24);
  v52 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v57, *(*(v29 + 408) + 4 * v9), *(*(v31 + 408) + 4 * a4), v28, v19, &v19[v14]);
  v53 = *&v52;
  operator delete(v61);
  operator delete(v65);
  return v53;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 >= a2)
  {
    a1[1] = &v3[a2];
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = (v6 + a2);
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesForEdgeVertex()
{
  __assert_rtn("populateChildValuesForEdgeVertex", "fvarRefinement.cpp", 220, "cVertFaces.size() == cVertFaceSiblings.size()");
}

{
  __assert_rtn("populateChildValuesForEdgeVertex", "fvarRefinement.cpp", 221, "cVertFaces.size() >= cValueCount");
}

double OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::TriRefinement(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = OpenSubdiv::v3_1_1::Vtr::internal::Refinement::Refinement(a1, a2, a3, a4);
  *v4 = &unk_282DCB408;
  *(v4 + 504) = 0;
  *(v4 + 512) = 0u;
  *&result = 0x300000001;
  *(v4 + 28) = 0x300000001;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  *this = &unk_282DCB408;
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);
}

{
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(this);

  JUMPOUT(0x21CF07610);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v4 = *(end + 9);
  v3 = *(end + 10);
  v6 = *(end + 15);
  v5 = *(end + 16);
  v8 = *end;
  v7 = end[1];
  v9 = end[2];
  __x = 4;
  std::vector<int>::resize(this + 21, 2 * v8, &__x);
  v10 = this->__end_;
  begin = this[21].__begin_;
  if (*v10 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = begin + 1;
    do
    {
      *v14 = v12;
      v14 += 2;
      ++v13;
      v12 += 4;
    }

    while (v13 < *v10);
  }

  v15 = (this[21].__end_ - begin) >> 2;
  this[3].__end_cap_.__value_ = begin;
  LODWORD(this[4].__begin_) = v15;
  v16 = *(v10 + 3);
  v17 = (*(v10 + 4) - v16) >> 2;
  this[4].__end_ = v16;
  LODWORD(this[4].__end_cap_.__value_) = v17;
  v18 = 0;
  std::vector<int>::resize(this + 5, 4 * v8, &v18);
  std::vector<int>::resize(this + 6, ((v3 - v4) >> 2), &v18);
  std::vector<int>::resize(this + 8, ((v5 - v6) >> 2), &v18);
  std::vector<int>::resize(this + 7, 0, &v18);
  std::vector<int>::resize(this + 9, v7, &v18);
  std::vector<int>::resize(this + 10, v9, &v18);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 2, 3 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces(this);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  begin_low = SLODWORD(v2->__begin_);
  __x = 3;
  std::vector<int>::resize(v2 + 1, 2 * begin_low, &__x);
  v4 = *(this + 2);
  if (*v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = (*(v4 + 3) + 4);
    do
    {
      *v7 = v5;
      v7 += 2;
      ++v6;
      v5 += 3;
    }

    while (v6 < *v4);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 6);
    v4 = *(v1 + 9);
    v5 = this[15];
    v6 = (this[11] + 4);
    v7 = (*(v1 + 3) + 4);
    do
    {
      if (*(v7 - 1) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces();
      }

      if (*(v6 - 1) != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces();
      }

      v8 = *v7;
      v9 = (v3 + 4 * v8);
      v10 = (v4 + 4 * v8);
      v11 = this[27];
      v12 = *(v11 + 4 * *v10);
      v13 = *(v11 + 4 * v10[1]);
      v14 = (v5 + 4 * *v6);
      v15 = *(v11 + 4 * v10[2]);
      if (*v14 != -1)
      {
        v16 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * *v14) | 1)));
        *v16 = *(this[30] + 4 * *v9);
        v16[1] = v12;
        v16[2] = v15;
      }

      v17 = v14[1];
      if (v17 != -1)
      {
        v18 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v17) | 1)));
        *v18 = v12;
        v18[1] = *(this[30] + 4 * v9[1]);
        v18[2] = v13;
      }

      v19 = v14[2];
      if (v19 != -1)
      {
        v20 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v19) | 1)));
        *v20 = v15;
        v20[1] = v13;
        v20[2] = *(this[30] + 4 * v9[2]);
      }

      v21 = v14[3];
      if (v21 != -1)
      {
        v22 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v21) | 1)));
        *v22 = v13;
        v22[1] = v15;
        v22[2] = v12;
      }

      v7 += 2;
      ++v2;
      v6 += 2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 3, 3 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces(void *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 3);
    v4 = *(v1 + 6);
    v5 = *(v1 + 9);
    v6 = this[11];
    v7 = this[15];
    v8 = this[13];
    v9 = this[18];
    do
    {
      if (*(v6 + 8 * v2) != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces();
      }

      if (*(v8 + 8 * v2) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces();
      }

      v10 = 0;
      v11 = (8 * v2) | 4;
      v12 = *(v3 + v11);
      v13 = (v4 + 4 * v12);
      v14 = (v5 + 4 * v12);
      v15 = (v7 + 4 * *(v6 + v11));
      v16 = (v9 + 4 * *(v8 + v11));
      v17 = this[24];
      v18 = *(v1 + 15);
      do
      {
        v20 = *v14++;
        v19 = v20;
        v21 = (v18 + 8 * v20);
        v22 = *v21 != v21[1] && *v13 != *v21;
        v23 = v17 + 8 * v19;
        v24 = *(v23 + 4 * v22);
        LODWORD(v23) = *(v23 + 4 * !v22);
        v25 = (&v34 + v10);
        *v25 = v24;
        v25[1] = v23;
        v10 += 8;
        ++v13;
      }

      while (v10 != 24);
      if (*v15 != -1)
      {
        v26 = (*(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * *v15) | 1)));
        v27 = v37;
        *v26 = v34;
        v26[1] = *v16;
        v26[2] = v27;
      }

      v28 = v15[1];
      if (v28 != -1)
      {
        v29 = *(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v28) | 1));
        *v29 = v35;
        *(v29 + 8) = v16[1];
      }

      v30 = v15[2];
      if (v30 != -1)
      {
        v31 = *(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v30) | 1));
        *v31 = v16[2];
        *(v31 + 4) = v36;
      }

      v32 = v15[3];
      if (v32 != -1)
      {
        v33 = (*(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v32) | 1)));
        *v33 = v16[2];
        v33[1] = *v16;
        v33[2] = v16[1];
      }

      ++v2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  std::vector<float>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces(this);

  return OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentEdges(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 9);
    v4 = this[18];
    v5 = (this[13] + 4);
    v6 = (*(v1 + 3) + 4);
    do
    {
      if (*(v6 - 1) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces();
      }

      if (*(v5 - 1) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces();
      }

      v7 = (v3 + 4 * *v6);
      v8 = this[27];
      v9 = *(v8 + 4 * *v7);
      v10 = *(v8 + 4 * v7[1]);
      v11 = (v4 + 4 * *v5);
      v12 = *(v8 + 4 * v7[2]);
      v13 = *v11;
      if (v13 != -1)
      {
        v14 = (*(this[2] + 120) + 8 * v13);
        *v14 = v9;
        v14[1] = v12;
      }

      v15 = v11[1];
      if (v15 != -1)
      {
        v16 = (*(this[2] + 120) + 8 * v15);
        *v16 = v10;
        v16[1] = v9;
      }

      v17 = v11[2];
      if (v17 != -1)
      {
        v18 = (*(this[2] + 120) + 8 * v17);
        *v18 = v12;
        v18[1] = v10;
      }

      v6 += 2;
      ++v2;
      v5 += 2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentEdges(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = (this[24] + 4);
    v4 = (*(v1 + 120) + 4);
    do
    {
      v5 = *(v3 - 1);
      if (v5 != -1)
      {
        v6 = (*(this[2] + 120) + 8 * v5);
        *v6 = *(this[27] + 4 * v2);
        v6[1] = *(this[30] + 4 * *(v4 - 1));
      }

      v7 = *v3;
      if (v7 != -1)
      {
        v8 = (*(this[2] + 120) + 8 * v7);
        *v8 = *(this[27] + 4 * v2);
        v8[1] = *(this[30] + 4 * *v4);
      }

      ++v2;
      v3 += 2;
      v4 += 2;
    }

    while (v2 < *(v1 + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(this + 19) - *(this + 18)) >> 2));
  std::vector<float>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<float>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  *(*(this + 2) + 16) = *(*(this + 1) + 16);
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces(this);
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentEdges(this);
  v3 = *(this + 2);
  v4 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<float>::resize((v3 + 168), v6 + v5);
  v7 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = this[11];
    v4 = this[15];
    v5 = this[13];
    v6 = this[18];
    do
    {
      if (*(v3 + 8 * v2) != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces();
      }

      if (*(v5 + 8 * v2) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces();
      }

      v7 = 0;
      v8 = (8 * v2) | 4;
      v9 = v4 + 4 * *(v3 + v8);
      v10 = v6 + 4 * *(v5 + v8);
      v11 = *(v9 + 12);
      v12 = 1;
      do
      {
        v13 = *(v10 + v7);
        if (v13 != -1)
        {
          v14 = this[2];
          v15 = *(v14 + 144);
          v16 = (v15 + 8 * v13);
          *v16 = 2;
          if (v13)
          {
            v17 = *(v16 - 1) + *(v16 - 2);
          }

          else
          {
            v17 = 0;
          }

          v18 = v12 % 3;
          v19 = 2 * v13;
          v16[1] = v17;
          v20 = *(v14 + 16);
          if (v20 <= 2)
          {
            v20 = 2;
          }

          *(v14 + 16) = v20;
          v21 = *(v15 + 4 * (v19 | 1));
          v22 = (*(v14 + 168) + 4 * v21);
          v23 = (*(v14 + 192) + 2 * v21);
          v24 = *(v9 + v7);
          if (v24 == -1)
          {
            v25 = 0;
          }

          else
          {
            *v22 = v24;
            *v23 = v18;
            v25 = 1;
          }

          if (v11 != -1)
          {
            v22[v25] = v11;
            v23[v25] = v18;
            LODWORD(v25) = v25 + 1;
          }

          *v16 = v25;
        }

        ++v12;
        v7 += 4;
      }

      while (v7 != 12);
      ++v2;
    }

    while (v2 < *v1);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[24];
    do
    {
      v5 = (v4 + 8 * v3);
      if (*v5 != -1 || v5[1] != -1)
      {
        v6 = 0;
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 168) + 4 * v8;
        v10 = *(v1 + 192) + 2 * v8;
        v11 = (*(v1 + 120) + 8 * v3);
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = v5[v6];
          if (v14 != -1)
          {
            v15 = this[2];
            v16 = *(v15 + 144);
            v17 = (v16 + 8 * v14);
            *v17 = v7;
            if (v14)
            {
              v18 = *(v17 - 1) + *(v17 - 2);
            }

            else
            {
              v18 = 0;
            }

            v17[1] = v18;
            v19 = *(v15 + 16);
            if (v19 <= v7)
            {
              v19 = v7;
            }

            *(v15 + 16) = v19;
            if (v7 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = 0;
              v21 = *(v16 + 4 * ((2 * v14) | 1));
              v22 = *(v15 + 168) + 4 * v21;
              v23 = *(v15 + 192) + 2 * v21;
              v24 = *(v1 + 24);
              v25 = this[11];
              v26 = this[15];
              v27 = v7;
              v28 = v9;
              v29 = v10;
              do
              {
                v31 = *v28++;
                v30 = v31;
                LODWORD(v31) = *v29++;
                v32 = v31;
                v33 = (2 * v30) | 1;
                v34 = v6;
                if (*v11 != v11[1])
                {
                  v34 = *(*(v1 + 48) + 4 * *(v24 + 4 * v33) + 4 * v32) != v11[v6];
                }

                v35 = v26 + 4 * *(v25 + 4 * v33);
                v36 = v34 + v32;
                if (v36 == *(v24 + 8 * v30))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v36;
                }

                v38 = *(v35 + 4 * v37);
                if (v38 != -1)
                {
                  *(v22 + 4 * v20) = v38;
                  *(v23 + 2 * v20++) = v32;
                }

                --v27;
              }

              while (v27);
            }

            *v17 = v20;
          }

          v12 = 0;
          v6 = 1;
        }

        while ((v13 & 1) != 0);
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = ((*(*(this + 1) + 296) - *(*(this + 1) + 288)) >> 2) + 3 * ((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2);
  std::vector<float>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 288), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v2);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
  }

  v3 = *(this + 2);
  v4 = (*(v3 + 264) + 4 * (2 * *(v3 + 8) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<float>::resize((v3 + 288), v6 + v5);
  v7 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              *(v17 + 4 * v14) = v24;
              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            if (*(v19 + 8 * v22) != 4)
            {
              OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges();
            }

            v24 = *v16++;
            v23 = v24;
            v25 = v24 + 1 - 3 * ((1431655766 * (v24 + 1)) >> 32);
            v26 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v27 = *(v26 + 4 * v25);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              *(v18 + 2 * v14++) = v23;
            }

            v28 = *(v26 + 12);
            if (v28 != -1)
            {
              *(v17 + 4 * v14) = v28;
              *(v18 + 2 * v14++) = v23 + 2 - 3 * ((1431655766 * (v23 + 2)) >> 32);
            }

            v29 = *(v26 + 4 * v23);
            if (v29 != -1)
            {
              *(v17 + 4 * v14) = v29;
              *(v18 + 2 * v14++) = v25;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 368) - *(v2 + 360)) >> 2) + 2 * (*(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2));
  std::vector<float>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<float>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v23 = *v17++;
            v24 = v22 + 8 * v23;
            LODWORD(v23) = *v18++;
            v25 = *(v24 + 4 * v23);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        if (v7 < 1)
        {
          v18 = 0;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = v6 + 4 * v8;
          v21 = v9 + 2 * v8;
          v22 = (v10 + 8 * v3);
          v23 = v11 + 8 * v3;
          v24 = *(v14 + 4 * ((2 * v5) | 1));
          v25 = *(v12 + 360) + 4 * v24;
          v26 = *(v12 + 384) + 2 * v24;
          v27 = this[13];
          v28 = this[18];
          v29 = -1;
          do
          {
            v30 = *(v21 + 2 * v17);
            v31 = (2 * *(v20 + 4 * v17)) | 1;
            v32 = v28 + 4 * *(v27 + 4 * v31);
            if (v17)
            {
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * v30);
            }

            else
            {
              if (*v22 != v22[1])
              {
                v19 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30) != *v22;
              }

              v35 = *(v23 + 4 * !v19);
              v29 = *(v23 + 4 * v19);
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * v30);
              if (v35 != -1)
              {
                *(v25 + 4 * v18) = v35;
                *(v26 + 2 * v18++) = 0;
              }
            }

            if (v33 != -1)
            {
              *(v25 + 4 * v18) = v33;
              *(v26 + 2 * v18++) = 1;
            }

            if (v34 != -1)
            {
              *(v25 + 4 * v18) = v34;
              *(v26 + 2 * v18++) = 0;
            }

            if (!v17 && v29 != -1)
            {
              *(v25 + 4 * v18) = v29;
              *(v26 + 2 * v18++) = 0;
            }

            ++v17;
          }

          while (v7 != v17);
        }

        *v15 = v18;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren(void *this, __n128 a2, double a3, __n128 a4)
{
  if (this[52] == this[51])
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren();
  }

  v4 = this[1];
  if (*v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    *&v7 = 0x200000002;
    *(&v7 + 1) = 0x200000002;
    do
    {
      v8 = (this[11] + v5);
      if (*v8 != 4)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren();
      }

      v9 = this[13];
      if (*(v9 + v5) != 3)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren();
      }

      v10 = this[15] + 4 * v8[1];
      v11 = this[18] + 4 * *(v9 + v5 + 4);
      v12 = this[51];
      if (*(v12 + v6))
      {
        *v10 = v7;
        *v11 = 2;
        *(v11 + 4) = 0x200000002;
        *(v12 + v6) &= 0xE1u;
      }

      else
      {
        v13 = *(*(v4 + 3) + v5 + 4);
        v14 = (*(v4 + 6) + 4 * v13);
        if (*(this[57] + v14[2]) & 1 | ((*(this[57] + v14[1]) & 1) + (*(this[57] + *v14) & 1)))
        {
          v15 = *(this[54] + *(*(v4 + 9) + 4 * v13 + 4)) & 0xE | (*(this[54] + *(*(v4 + 9) + 4 * v13)) >> 1) & 0xF | (2 * *(this[54] + *(*(v4 + 9) + 4 * v13 + 8))) & 0xC;
          *(v12 + v6) = *(v12 + v6) & 0xE0 | (2 * v15);
          if (v15)
          {
            *(v10 + 12) = 1;
            *v11 = 1;
            *(v11 + 4) = 0x100000001;
          }

          v16 = this[57];
          if (*(v16 + *v14))
          {
            *v10 = 1;
            *v11 = 1;
          }

          if (*(v16 + v14[1]))
          {
            *(v10 + 4) = 1;
            *(v11 + 4) = 1;
          }

          if (*(v16 + v14[2]))
          {
            *(v10 + 8) = 1;
            *(v11 + 8) = 1;
          }
        }
      }

      ++v6;
      v4 = this[1];
      v5 += 8;
    }

    while (v6 < *v4);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVerticesFromParentFaces()
{
  __assert_rtn("populateFaceVerticesFromParentFaces", "triRefinement.cpp", 148, "pFaceVerts.size() == 3");
}

{
  __assert_rtn("populateFaceVerticesFromParentFaces", "triRefinement.cpp", 149, "pFaceChildren.size() == 4");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgesFromParentFaces()
{
  __assert_rtn("populateFaceEdgesFromParentFaces", "triRefinement.cpp", 225, "pFaceChildFaces.size() == 4");
}

{
  __assert_rtn("populateFaceEdgesFromParentFaces", "triRefinement.cpp", 226, "pFaceChildEdges.size() == 3");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVerticesFromParentFaces()
{
  __assert_rtn("populateEdgeVerticesFromParentFaces", "triRefinement.cpp", 295, "pFaceEdges.size() == 3");
}

{
  __assert_rtn("populateEdgeVerticesFromParentFaces", "triRefinement.cpp", 296, "pFaceChildEdges.size() == 3");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFacesFromParentFaces()
{
  __assert_rtn("populateEdgeFacesFromParentFaces", "triRefinement.cpp", 393, "pFaceChildFaces.size() == 4");
}

{
  __assert_rtn("populateEdgeFacesFromParentFaces", "triRefinement.cpp", 394, "pFaceChildEdges.size() == 3");
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren()
{
  __assert_rtn("markSparseFaceChildren", "triRefinement.cpp", 865, "fChildFaces.size() == 4");
}

{
  __assert_rtn("markSparseFaceChildren", "triRefinement.cpp", 866, "fChildEdges.size() == 3");
}

{
  __assert_rtn("markSparseFaceChildren", "triRefinement.cpp", 842, "_parentFaceTag.size() > 0");
}

void OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetCommonShaderSource(std::string *a1@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v8, "#define OSD_METAL_IOS 1\n");
  std::string::basic_string[abi:nn200100]<0>(__p, aLine0OsdMtlpat);
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::string::append(&v8, v2, v3);
  if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v4->__r_.__value_.__l.__data_, v4->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = *&v4->__r_.__value_.__l.__data_;
    a1->__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&a1->__r_.__value_.__l.__data_ = v5;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_21C21A9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetPatchBasisShaderSource()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, "#define OSD_PATCH_BASIS_METAL 1\n", 32);
  std::string::basic_string[abi:nn200100]<0>(__p, aCopyright2016P);
  if ((v6 & 0x80u) == 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v2 = v6;
  }

  else
  {
    v2 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, v1, v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v7[0] = *MEMORY[0x277D82818];
  v3 = *(MEMORY[0x277D82818] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v8 = v3;
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x21CF075C0](&v12);
}

void sub_21C21ABD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x21CF075C0](a1 + 128);
  return a1;
}

void *OpenSubdiv::v3_1_1::Osd::GetPatchTypeDefine@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = a1 - 2;
  if ((a1 - 2) >= 8 || ((0xF7u >> v4) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Osd::GetPatchTypeDefine();
  }

  v5 = off_278302298[v4];

  return std::string::basic_string[abi:nn200100]<0>(a3, v5);
}

void *OpenSubdiv::v3_1_1::Osd::GetPatchTypeSource@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = a1 - 2;
  if ((a1 - 2) >= 8 || ((0xF7u >> v4) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Osd::GetPatchTypeSource();
  }

  v5 = *(&off_2783022D8 + v4);

  return std::string::basic_string[abi:nn200100]<0>(a3, v5);
}

uint64_t OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetHullShaderSource(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v12);
  OpenSubdiv::v3_1_1::Osd::GetPatchTypeDefine(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OpenSubdiv::v3_1_1::Osd::MTLPatchShaderSource::GetCommonShaderSource(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, v5, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OpenSubdiv::v3_1_1::Osd::GetPatchTypeSource(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, v7, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v12[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v9;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x21CF075C0](&v17);
}

OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory *OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::EndCapBSplineBasisPatchFactory(OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3, OpenSubdiv::v3_1_1::Far::StencilTable *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v4 = *(a2 + 8);
  if (v4)
  {
    OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::EndCapBSplineBasisPatchFactory();
  }

  v7 = **(*(a2 + 11) + 24 * ((v4 >> 2) & 0xF));
  v8 = 7 * v7;
  v9 = 112 * v7;
  if (v9 >= 104857600)
  {
    v10 = 104857600;
  }

  else
  {
    v10 = v9;
  }

  std::vector<unsigned int>::reserve((a3 + 16), v8);
  std::vector<unsigned int>::reserve((a3 + 64), v10);
  std::vector<unsigned int>::reserve((a3 + 88), v10);
  v11 = *(this + 1);
  if (v11)
  {
    std::vector<unsigned int>::reserve((v11 + 16), v8);
    std::vector<unsigned int>::reserve((v11 + 64), v8);
    std::vector<unsigned int>::reserve((v11 + 88), v8);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(uint64_t a1, void *a2, int a3, __int16 *a4, uint64_t a5, unsigned int a6)
{
  v7 = a5;
  v8 = a2[3];
  v9 = (a2[6] + 4 * *(v8 + 8 * a3 + 4));
  v10 = *(v8 + 8 * a3);
  if ((a6 & 0x80000000) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }

  v11 = 0;
  v12 = -1;
  do
  {
    v14 = *(a2[54] + 2 * v9->i32[v11]);
    if ((v14 & 0x780) != 0x80 || (v15 = *a4) != 0)
    {
      LOBYTE(v15) = 1;
    }

    if ((v14 & 2) != 0)
    {
      if (v12 < 0)
      {
        v12 = v11;
      }

      else
      {
        LOBYTE(v15) = 1;
      }
    }

    if (v11 > 2)
    {
      break;
    }

    ++v11;
    a4 += 3;
  }

  while ((v15 & 1) == 0);
  if ((v15 & 1) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(a1, a2, a3, v12, v9, v10, v7, a6);
  }

  else
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v48 = v4;
  v6 = v5;
  v77[16] = *MEMORY[0x277D85DE8];
  v7 = *(v5 + 16);
  if (v1 < 0)
  {
    NumFVarValuesTotal = *(v7 + 5);
  }

  else
  {
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(v7, v1);
  }

  v9 = *(v6 + 24);
  v10 = 16;
  do
  {
    v53[0] = v9 + NumFVarValuesTotal;
    std::vector<int>::push_back[abi:nn200100]((v6 + 32), v53);
    v9 = *(v6 + 24) + 1;
    *(v6 + 24) = v9;
    --v10;
  }

  while (v10);
  v49 = v3;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v53);
  v77[0] = v53;
  v77[1] = &v57;
  v77[2] = &v62;
  v77[3] = &v54;
  v77[4] = &v61;
  v77[5] = &v65;
  v77[6] = &v66;
  v77[7] = &v58;
  v77[8] = &v60;
  v77[9] = &v68;
  v77[10] = &v67;
  v77[11] = &v63;
  v77[12] = v56;
  v77[13] = v64;
  v77[14] = &v59;
  v77[15] = &v55;
  v11 = v53[4];
  v12 = &v73;
  v73 = &v75;
  v74 = 0x1000000010;
  v13 = 16;
  v76 = 0;
  do
  {
    *(v12 + 4) = 0;
    v12[3] = (v12 + 5);
    v12[45] = 0;
    v12[4] = 0x2800000028;
    v12 += 44;
    --v13;
  }

  while (v13);
  v14 = 0;
  v15 = &unk_21C2A4C08;
  do
  {
    v16 = 0;
    v50 = v14;
    v17 = 4 * v14;
    v18 = v77;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v73[44 * v16 + 44 * v17], v11);
      for (i = 0; i != 16; i += 4)
      {
        v19.n128_u32[0] = *&v15[i];
        if (v19.n128_f32[0] != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v73[44 * v16 + 44 * v17], v18[i], v19);
        }
      }

      ++v16;
      ++v18;
    }

    while (v16 != 4);
    v14 = v50 + 1;
    v15 += 16;
  }

  while (v50 != 3);
  v21 = 0;
  for (j = 0; j != 4; ++j)
  {
    v23 = 0;
    v24 = &unk_21C2A4C08;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v71, v11);
      v27 = 0;
      v28 = v21;
      do
      {
        v26.n128_u32[0] = *&v24[v27];
        if (v26.n128_f32[0] != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v71, (v73 + v28), v26);
        }

        v28 += 352;
        v27 += 4;
      }

      while (v27 != 16);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v71, *v6, v25);
      operator delete(v72);
      ++v23;
      v24 += 16;
    }

    while (v23 != 4);
    v21 += 1408;
  }

  if (*(v6 + 8))
  {
    for (k = 0; k != 16; ++k)
    {
      v71[0] = *(v48 + 4 * dword_21C2A4C48[k]) + v49;
      v30 = *(v6 + 8);
      v52 = 1;
      std::vector<int>::push_back[abi:nn200100]((v30 + 16), &v52);
      std::vector<int>::push_back[abi:nn200100]((*(v6 + 8) + 64), v71);
      v31 = *(v6 + 8);
      v52 = 1065353216;
      std::vector<float>::push_back[abi:nn200100]((v31 + 88), &v52);
    }
  }

  v32 = *(v6 + 28);
  *(v6 + 28) = v32 + 1;
  v33 = *(v6 + 32);
  if (v74)
  {
    v34 = 0;
    v35 = 43;
    do
    {
      v36 = &v73[v35];
      v37 = &v73[v35 - 42];
      operator delete(v73[v35]);
      *v37 = (v36 - 40);
      *(v36 - 81) = 40;
      ++v34;
      v35 += 44;
    }

    while (v34 < v74);
  }

  operator delete(v76);
  v38 = &v70;
  v39 = -1408;
  do
  {
    operator delete(v38[42]);
    *v38 = (v38 + 2);
    *(v38 + 3) = 40;
    v38 -= 44;
    v39 += 352;
  }

  while (v39);
  v40 = &v69;
  v41 = -1408;
  do
  {
    operator delete(v40[42]);
    *v40 = (v40 + 2);
    *(v40 + 3) = 40;
    v40 -= 44;
    v41 += 352;
  }

  while (v41);
  for (m = 0; m != -352; m -= 88)
  {
    v43 = &v53[m];
    operator delete(*&v64[m * 4 + 344]);
    *(v43 + 485) = v43 + 974;
    v43[973] = 40;
  }

  v44 = 352;
  do
  {
    v45 = &v53[v44];
    operator delete(*&v56[v44 * 4 + 344]);
    *(v45 + 133) = v45 + 270;
    v45[269] = 40;
    v44 -= 88;
  }

  while (v44 * 4);
  v46 = 352;
  do
  {
    operator delete(*&v51[v46 * 4]);
    *&v53[v46 - 86] = &v53[v46 - 82];
    v53[v46 - 83] = 40;
    v46 -= 88;
  }

  while (v46 * 4);
  return v33 + (v32 << 6);
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(uint64_t a1, uint64_t a2, int a3, int a4, int32x4_t *a5, int a6, unsigned int a7, unsigned int a8)
{
  v165 = *MEMORY[0x277D85DE8];
  v16 = 2 * *(a2 + 20);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v162, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v159, v16 + 16);
  v17 = OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v156, v16 + 16);
  v138 = a4;
  v135 = a8;
  OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils(v17, a2, a5, a6, a4, a8, &v162, &v159, &v156);
  v18 = v162;
  if (v162 >= 1)
  {
    v19 = v163;
    do
    {
      *v19 += a7;
      v19 += 2;
      --v18;
    }

    while (v18);
  }

  v20 = v159;
  if (v159 >= 1)
  {
    v21 = v160;
    do
    {
      *v21 += a7;
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  v137 = a1;
  v22 = v156;
  if (v156 >= 1)
  {
    v23 = v157;
    do
    {
      *v23 += a7;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  v24 = 0;
  v136 = a5;
  v155[0] = vaddq_s32(*a5, vdupq_n_s32(a7));
  v25 = *(a2 + 24);
  v26 = *(a2 + 48);
  v27 = v26 + 4 * *(v25 + 4 * ((2 * a3) | 1));
  v28 = 4;
  do
  {
    v29 = *(v27 + 4 * v24);
    v30 = 2 * v29;
    v31 = *(a2 + 264);
    v32 = v31 + 8 * v29;
    v33 = *(a2 + 288) + 4 * *(v32 + 4);
    v34 = *(v31 + 4 * v30);
    v152 = v33;
    v153 = v34;
    v35 = *(a2 + 312) + 2 * *(v32 + 4);
    v36 = v155 + v28;
    if (v24 == v138)
    {
      if (v34 < 1)
      {
LABEL_16:
        LODWORD(v37) = -1;
      }

      else
      {
        v37 = 0;
        while (*(v33 + 4 * v37) != a3)
        {
          if (v34 == ++v37)
          {
            goto LABEL_16;
          }
        }
      }

      *(v155 + v28) = *(v26 + 4 * *(v25 + 8 * *(v33 + 4 * ((v37 + 1) % v34)) + 4) + 4 * ((*(v35 + 2 * ((v37 + 1) % v34)) - 1) & 3)) + a7;
      v38 = (v26 + 4 * *(v25 + 8 * *(v33 + 4 * ((v34 + v37 - 1) % v34)) + 4) + 4 * ((*(v35 + 2 * ((v34 + v37 - 1) % v34)) + 1) & 3));
    }

    else
    {
      v39 = OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple(&v152, a3) & 3 ^ 2;
      v40 = *(v152 + 4 * v39);
      v41 = *(v35 + 2 * v39);
      v25 = *(a2 + 24);
      v42 = *(v25 + 8 * v40 + 4);
      v26 = *(a2 + 48);
      v43 = v26 + 4 * v42;
      *v36 = *(v43 + 4 * ((v41 + 1) & 3)) + a7;
      v36[1] = *(v43 + 4 * (v41 & 3 ^ 2)) + a7;
      v38 = (v43 + 4 * ((v41 - 1) & 3));
    }

    v36[2] = *v38 + a7;
    v28 += 3;
    ++v24;
  }

  while (v24 != 4);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v152, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v150, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v148, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v146, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v144, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v142, v16 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v140, v16 + 16);
  v44.n128_u32[0] = 12.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v150, &v159, v44);
  v45 = (&OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::rotation + 64 * v138);
  v46 = *(v155 + *v45);
  v47.n128_u32[0] = -1062557013;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v150, v46, v47);
  v48 = *(v155 + v45[1]);
  v49.n128_u32[0] = -1070945621;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v150, v48, v49);
  v50 = *(v155 + v45[2]);
  v51.n128_u32[0] = -1087722837;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v150, v50, v51);
  v52 = *(v155 + v45[3]);
  v53.n128_u32[0] = -1079334229;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v150, v52, v53);
  v54 = *(v155 + v45[6]);
  v55.n128_u32[0] = -1096111445;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v150, v54, v55);
  v56 = *(v155 + v45[7]);
  v57.n128_u32[0] = -1087722837;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v150, v56, v57);
  v58.n128_u32[0] = -6.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v148, &v159, v58);
  v59.n128_u32[0] = 1076538027;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v148, v46, v59);
  v60.n128_u32[0] = 1068149419;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v148, v48, v60);
  v61.n128_u32[0] = 1051372203;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v148, v50, v61);
  v62.n128_u32[0] = 1059760811;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v148, v52, v62);
  v63.n128_u32[0] = 1059760811;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v148, v54, v63);
  v64.n128_u32[0] = 1068149419;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v148, v56, v64);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v146, v150);
  v65.n128_u32[0] = 1.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v146, *(v155 + v45[8]), v65);
  v66.n128_u32[0] = -1.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v146, v54, v66);
  v67.n128_u32[0] = 12.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v144, &v156, v67);
  v68.n128_u32[0] = -1062557013;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v144, v46, v68);
  v69.n128_u32[0] = -1079334229;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v144, v48, v69);
  v70.n128_u32[0] = -1087722837;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v144, v50, v70);
  v71.n128_u32[0] = -1070945621;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v144, v52, v71);
  v72 = *(v155 + v45[4]);
  v73.n128_u32[0] = -1096111445;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v144, v72, v73);
  v74 = *(v155 + v45[15]);
  v75.n128_u32[0] = -1087722837;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v144, v74, v75);
  v76.n128_u32[0] = -6.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v142, &v156, v76);
  v77.n128_u32[0] = 1076538027;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v142, v46, v77);
  v78.n128_u32[0] = 1059760811;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v142, v48, v78);
  v79.n128_u32[0] = 1051372203;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v142, v50, v79);
  v80.n128_u32[0] = 1068149419;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v142, v52, v80);
  v81.n128_u32[0] = 1059760811;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v142, v72, v81);
  v82.n128_u32[0] = 1068149419;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v142, v74, v82);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v140, v144);
  v83.n128_u32[0] = 1.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v140, *(v155 + v45[14]), v83);
  v84.n128_u32[0] = -1.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v140, v72, v84);
  v85.n128_u32[0] = 1108344832;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, &v162, v85);
  v86.n128_u32[0] = -16.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v46, v86);
  v87.n128_u32[0] = -4.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v48, v87);
  v88.n128_u32[0] = -4.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v52, v88);
  v89.n128_u32[0] = -4.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v144, v89);
  v90.n128_u32[0] = -4.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v150, v90);
  v91.n128_u32[0] = -1.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v50, v91);
  v92.n128_u32[0] = -1.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v148, v92);
  v93.n128_u32[0] = -1.0;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v152, v142, v93);
  v95 = *(v137 + 16);
  if ((v135 & 0x80000000) != 0)
  {
    NumFVarValuesTotal = *(v95 + 5);
  }

  else
  {
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(v95, v135);
  }

  v97 = v136->i32[v138];
  v98 = v138 + 1;
  v99 = v138;
  v100 = (v138 + 1) & 3;
  v101 = v136->i32[v100];
  v102 = v138 + 3;
  v139 = v136->i32[(v138 + 3) & 3];
  v103 = *(v137 + 24);
  *(v137 + 24) = v103 + 1;
  v104 = 3 * v99;
  *(&v155[1] + 3 * v99 + 2) = v103 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v150, *v137, v94);
  v106 = *(v137 + 8);
  if (v106)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v97 + a7), v106, v105);
  }

  v107 = *(v137 + 24);
  *(v137 + 24) = v107 + 1;
  v108 = v107 + NumFVarValuesTotal;
  if (v98 <= 0)
  {
    v109 = -(-v98 & 3);
  }

  else
  {
    v109 = v100;
  }

  v110 = 3 * v109;
  *(&v155[1] + 3 * v109) = v108;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v148, *v137, v105);
  v112 = *(v137 + 8);
  if (v112)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v101 + a7), v112, v111);
  }

  v113 = *(v137 + 24);
  *(v137 + 24) = v113 + 1;
  *(&v155[1] + v110 + 1) = v113 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v146, *v137, v111);
  v115 = *(v137 + 8);
  if (v115)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v101 + a7), v115, v114);
  }

  v116 = *(v137 + 24);
  *(v137 + 24) = v116 + 1;
  *(&v155[1] + v104) = v116 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v144, *v137, v114);
  v118 = *(v137 + 8);
  if (v118)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v97 + a7), v118, v117);
  }

  v119 = *(v137 + 24);
  *(v137 + 24) = v119 + 1;
  v120 = v119 + NumFVarValuesTotal;
  if (v102 <= 0)
  {
    v121 = -(-v102 & 3);
  }

  else
  {
    v121 = v102 & 3;
  }

  v122 = 3 * v121;
  *(&v155[1] + 3 * v121 + 2) = v120;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v142, *v137, v117);
  v124 = *(v137 + 8);
  if (v124)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v139 + a7), v124, v123);
  }

  v125 = *(v137 + 24);
  *(v137 + 24) = v125 + 1;
  *(&v155[1] + v122 + 1) = v125 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v140, *v137, v123);
  v127 = *(v137 + 8);
  if (v127)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v139 + a7), v127, v126);
  }

  v128 = *(v137 + 24);
  *(v137 + 24) = v128 + 1;
  *(&v155[1] + v104 + 1) = v128 + NumFVarValuesTotal;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v152, *v137, v126);
  v130 = *(v137 + 8);
  if (v130)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v97 + a7), v130, v129);
  }

  for (i = 0; i != 16; ++i)
  {
    std::vector<int>::push_back[abi:nn200100]((v137 + 32), v155 + OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::permuteRegular[i]);
  }

  v132 = *(v137 + 28);
  *(v137 + 28) = v132 + 1;
  v133 = *(v137 + 32);
  operator delete(__p);
  operator delete(v143);
  operator delete(v145);
  operator delete(v147);
  operator delete(v149);
  operator delete(v151);
  operator delete(v154);
  operator delete(v158);
  operator delete(v161);
  operator delete(v164);
  return v133 + (v132 << 6);
}

OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, unsigned int a2)
{
  *this = 0;
  v4 = this + 24;
  *(this + 1) = this + 24;
  *(this + 2) = 0x2800000000;
  *(this + 43) = 0;
  if (!a2)
  {
    operator delete(0);
    v5 = 40;
    goto LABEL_5;
  }

  if (a2 >= 0x29)
  {
    operator delete(0);
    *(this + 1) = v4;
    *(this + 5) = 40;
    v4 = operator new(8 * a2);
    *(this + 43) = v4;
    v5 = a2;
LABEL_5:
    *(this + 1) = v4;
    *(this + 5) = v5;
  }

  *(this + 4) = a2;
  return this;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(OpenSubdiv::v3_1_1::Far::GregoryBasis *this, const void **a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3)
{
  v9 = *this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v9);
  if (v9 >= 1)
  {
    v5 = 0;
    for (i = 0; i < v9; ++i)
    {
      v8 = *(*(this + 1) + v5);
      std::vector<int>::push_back[abi:nn200100](a2 + 8, &v8);
      v7 = *(*(this + 1) + v5 + 4);
      std::vector<float>::push_back[abi:nn200100](a2 + 11, &v7);
      v5 += 8;
    }
  }
}

{
  v5 = 1;
  v6 = this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v5);
  std::vector<int>::push_back[abi:nn200100](a2 + 8, &v6);
  v4 = 1065353216;
  std::vector<float>::push_back[abi:nn200100](a2 + 11, &v4);
}

void OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils(int a1, OpenSubdiv::v3_1_1::Vtr::internal::Level *this, uint64_t a3, int a4, int a5, unsigned int a6, OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *a7, int *a8, int *a9)
{
  v78 = *MEMORY[0x277D85DE8];
  v15 = *(this + 5);
  v16 = v76;
  v74 = v76;
  v75 = 0x2800000000;
  v77 = 0;
  v17 = 2 * v15;
  if (v15)
  {
    if (v17 < 0x29)
    {
      goto LABEL_6;
    }

    operator delete(0);
    v74 = v76;
    HIDWORD(v75) = 40;
    v16 = operator new(4 * v17);
    v77 = v16;
    v18 = v17;
  }

  else
  {
    operator delete(0);
    v18 = 40;
  }

  v74 = v16;
  HIDWORD(v75) = v18;
LABEL_6:
  LODWORD(v75) = v17;
  v19 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(this, *(a3 + 4 * a5), v16, a6);
  if (v19)
  {
    OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils();
  }

  v20 = v19;
  v57 = a8;
  v21 = (v19 >> 1);
  if (v21 < 1)
  {
    goto LABEL_29;
  }

  v22 = 0;
  v23 = a5 + 3 <= 0 ? -(-(a5 + 3) & 3) : (a5 + 3) & 3;
  v24 = a5 + 1 <= 0 ? -(-(a5 + 1) & 3) : (a5 + 1) & 3;
  v25 = v74;
  v26 = *(a3 + 4 * v24);
  v27 = *(a3 + 4 * v23);
  v28 = -1;
  v29 = -1;
  do
  {
    v31 = *v25;
    v25 += 2;
    v30 = v31;
    if (v31 == v26)
    {
      v28 = v22;
    }

    if (v30 == v27)
    {
      v29 = v22;
    }

    ++v22;
  }

  while (v21 != v22);
  if (v28 < 0 || v29 < 0)
  {
LABEL_29:
    OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils();
  }

  LODWORD(v71[0]) = 0;
  v71[1] = &v72;
  v73 = 0;
  v71[2] = 0x2800000028;
  LODWORD(v68[0]) = 0;
  v68[1] = &v69;
  v70 = 0;
  v68[2] = 0x2800000028;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v71, v19 | 1);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v68, v20 | 1);
  v32 = v21;
  v33.n128_f32[0] = cosf(6.2832 / v21);
  v62 = a3;
  v34 = 0;
  v35 = 0;
  v36 = 1.0 / ((((v33.n128_f32[0] + 5.0) + sqrtf((v33.n128_f32[0] + 9.0) * (v33.n128_f32[0] + 1.0))) * v21) * 0.0625);
  v61 = 1.0 / (v21 + 5.0);
  v60 = 8 * v21;
  v58 = a5;
  v59 = 8 * v21 - 8;
  do
  {
    if (v59 == v35)
    {
      v37 = 0;
    }

    else
    {
      v37 = v34 + 1;
    }

    v38 = v74[v35 / 4];
    v39 = v74[v35 / 4 + 1];
    v40 = a7;
    v41 = v74[2 * v37];
    v63 = 0;
    v64 = &v66;
    __p = 0;
    v33.n128_u32[1] = 40;
    v65 = 0x2800000004;
    v33.n128_f32[0] = v32 / (v32 + 5.0);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v63, *(v62 + 4 * v58), v33);
    v42 = v41;
    a7 = v40;
    v43.n128_f32[0] = 2.0 / (v32 + 5.0);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v63, v42, v43);
    v44.n128_f32[0] = 2.0 / (v32 + 5.0);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v63, v38, v44);
    v45.n128_f32[0] = v61;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v63, v39, v45);
    v46.n128_f32[0] = 1.0 / v32;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v40, &v63, v46);
    v47 = __sincosf_stret((v34 * 6.2832) / v32);
    v48 = __sincosf_stret((v37 * 6.2832) / v32);
    v49.n128_f32[0] = v36 * ((v48.__cosval * 0.5) + (v47.__cosval * 0.5));
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v71, &v63, v49);
    v50.n128_f32[0] = v36 * ((v48.__sinval * 0.5) + (v47.__sinval * 0.5));
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v68, &v63, v50);
    operator delete(__p);
    v35 += 8;
    ++v34;
  }

  while (v60 != v35);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v57, v40);
  v51 = __sincosf_stret((v28 * 6.2832) / v32);
  v52.n128_u32[0] = LODWORD(v51.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v57, v71, v52);
  v53.n128_u32[0] = LODWORD(v51.__sinval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v57, v68, v53);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(a9, v40);
  v54 = __sincosf_stret((v29 * 6.2832) / v32);
  v55.n128_u32[0] = LODWORD(v54.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(a9, v71, v55);
  v56.n128_u32[0] = LODWORD(v54.__sinval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(a9, v68, v56);
  operator delete(v70);
  operator delete(v73);
  operator delete(v77);
}

void OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::computeLimitStencils()
{
  __assert_rtn("computeLimitStencils", "endCapBSplineBasisPatchFactory.cpp", 234, "(ringSize & 1) == 0");
}

{
  __assert_rtn("computeLimitStencils", "endCapBSplineBasisPatchFactory.cpp", 248, "start > -1 && prev > -1");
}

OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory *OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::EndCapGregoryBasisPatchFactory(OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3, OpenSubdiv::v3_1_1::Far::StencilTable *a4, char a5)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a2;
  *(this + 24) = a5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v5 = *(a2 + 8);
  if (v5)
  {
    OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::EndCapGregoryBasisPatchFactory();
  }

  v8 = **(*(a2 + 11) + 24 * ((v5 >> 2) & 0xF));
  v9 = 20 * v8;
  v10 = 320 * v8;
  if (v10 >= 104857600)
  {
    v11 = 104857600;
  }

  else
  {
    v11 = v10;
  }

  std::vector<unsigned int>::reserve((a3 + 16), v9);
  std::vector<unsigned int>::reserve((a3 + 64), v11);
  std::vector<unsigned int>::reserve((a3 + 88), v11);
  v12 = *(this + 1);
  if (v12)
  {
    std::vector<unsigned int>::reserve((v12 + 16), v9);
    std::vector<unsigned int>::reserve((v12 + 64), v9);
    std::vector<unsigned int>::reserve((v12 + 88), v9);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::addPatchBasis(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v26);
  v6 = 0;
  v7 = (v2 + 2);
  v8 = 7040;
  v9 = 5632;
  v10 = 4224;
  do
  {
    if (*(v7 - 2) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v6], *v4, v5);
      v11 = v4[1];
      if (v11)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v11, v5);
      }
    }

    if (*(v7 - 1) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v6 + 1408], *v4, v5);
      v12 = v4[1];
      if (v12)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v12, v5);
      }
    }

    if (*v7 == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v6 + 2816], *v4, v5);
      v13 = v4[1];
      if (v13)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v13, v5);
      }
    }

    if (v7[1] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v10], *v4, v5);
      v14 = v4[1];
      if (v14)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v14, v5);
      }
    }

    if (v7[2] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v26[v9], *v4, v5);
      v15 = v4[1];
      if (v15)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v26[v8], v15, v5);
      }
    }

    v8 += 4;
    v9 += 352;
    v10 += 352;
    v6 += 352;
    v7 += 5;
  }

  while (v6 != 1408);
  v16 = &v28;
  v17 = -1408;
  do
  {
    operator delete(v16[42]);
    *v16 = (v16 + 2);
    *(v16 + 3) = 40;
    v16 -= 44;
    v17 += 352;
  }

  while (v17);
  v18 = &v27;
  v19 = -1408;
  do
  {
    operator delete(v18[42]);
    *v18 = (v18 + 2);
    *(v18 + 3) = 40;
    v18 -= 44;
    v19 += 352;
  }

  while (v19);
  for (i = 0; i != -1408; i -= 352)
  {
    v21 = &v26[i];
    operator delete(*&v26[i + 4216]);
    *(v21 + 485) = v21 + 3896;
    *(v21 + 973) = 40;
  }

  v22 = 1408;
  do
  {
    v23 = &v26[v22];
    operator delete(*&v26[v22 + 1400]);
    *(v23 + 133) = v23 + 1080;
    *(v23 + 269) = 40;
    v22 -= 352;
  }

  while (v22);
  v24 = 1408;
  do
  {
    operator delete(*&v26[v24 - 8]);
    *&v26[v24 - 344] = &v26[v24 - 328];
    *&v26[v24 - 332] = 40;
    v24 -= 352;
  }

  while (v24);
  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = 20;
  do
  {
    std::vector<int>::push_back[abi:nn200100]((a1 + 40), &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
    --v10;
  }

  while (v10);
  v11 = 20 * *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 16);
  if ((a6 & 0x80000000) != 0)
  {
    NumFVarValuesTotal = *(v13 + 5);
  }

  else
  {
    NumFVarValuesTotal = OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(v13, a6);
  }

  v15 = v12 + 4 * v11;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_38;
  }

  v16 = *(a2 + 24);
  if (*(v16 + 8 * a3) != 4)
  {
    OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints();
  }

  v17 = *(a2 + 72) + 4 * *(v16 + 8 * a3 + 4);
  v18 = *(a2 + 12);
  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceETags(a2, a3, v64, a6);
  v19 = 0;
  v62 = v18 << 28;
  v20 = &OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts;
  do
  {
    if ((v64[v19] & 2) != 0)
    {
      goto LABEL_25;
    }

    v21 = *(v17 + 4 * v19);
    v22 = *(a2 + 144);
    v23 = *(v22 + 8 * v21);
    if (v23 < 1)
    {
LABEL_14:
      v29 = 0;
    }

    else
    {
      v24 = *(a2 + 168) + 4 * *(v22 + 4 * ((2 * v21) | 1));
      v25 = 1;
      v26 = v23;
      v27 = v24;
      while (1)
      {
        v28 = *v27++;
        if (v28 == a3)
        {
          break;
        }

        ++v25;
        if (!--v26)
        {
          goto LABEL_14;
        }
      }

      v29 = *(v24 + 4 * (v25 % v23));
    }

    if (v29 == -1 || v29 >= a3)
    {
      goto LABEL_25;
    }

    if (*(a1 + 64) == *(a1 + 72))
    {
      break;
    }

    v30 = *(a2 + 24);
    v31 = *(v30 + 8 * v29 + 4);
    LODWORD(v30) = *(v30 + 8 * v29);
    v65 = *(a2 + 72) + 4 * v31;
    v66 = v30;
    IndexIn4Tuple = OpenSubdiv::v3_1_1::Vtr::ConstArray<int>::FindIndexIn4Tuple(&v65, v21);
    if (IndexIn4Tuple == -1)
    {
      OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints();
    }

    v33 = IndexIn4Tuple;
    __key = v29 | v62;
    v34 = bsearch(&__key, *(a1 + 64), (*(a1 + 72) - *(a1 + 64)) >> 2, 4uLL, OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::LevelAndFaceIndex::compare);
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 64);
    v36 = (v34 - v35) >> 2;
    if ((v36 & 0x80000000) != 0 || v36 >= ((*(a1 + 72) - v35) >> 2))
    {
      OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints();
    }

    v37 = *(a1 + 40) + (((5 * v36) << 34) >> 30);
    v38 = (&OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts + 16 * v33);
    for (i = 12; i != -4; i -= 4)
    {
      v40 = *v38++;
      *(v15 + 4 * *&v20[i]) = *(v37 + 4 * v40);
    }

LABEL_25:
    ++v19;
    v20 += 16;
  }

  while (v19 != 4);
  v41 = v62 | a3;
  v43 = *(a1 + 72);
  v42 = *(a1 + 80);
  if (v43 >= v42)
  {
    v45 = *(a1 + 64);
    v46 = v43 - v45;
    v47 = (v43 - v45) >> 2;
    v48 = v47 + 1;
    if ((v47 + 1) >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v49 = v42 - v45;
    if (v49 >> 1 > v48)
    {
      v48 = v49 >> 1;
    }

    v50 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
    v51 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v50)
    {
      v51 = v48;
    }

    if (v51)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1 + 64, v51);
    }

    v52 = v47;
    v53 = (4 * v47);
    v54 = &v53[-v52];
    *v53 = v41;
    v44 = v53 + 1;
    memcpy(v54, v45, v46);
    v55 = *(a1 + 64);
    *(a1 + 64) = v54;
    *(a1 + 72) = v44;
    *(a1 + 80) = 0;
    if (v55)
    {
      operator delete(v55);
    }
  }

  else
  {
    *v43 = v41;
    v44 = v43 + 1;
  }

  *(a1 + 72) = v44;
LABEL_38:
  v56 = 0;
  v57 = &v65;
  v58 = v15;
  do
  {
    for (j = 0; j != 5; ++j)
    {
      if (*(v58 + 4 * j) == -1)
      {
        *(v58 + 4 * j) = *(a1 + 28) + NumFVarValuesTotal;
        ++*(a1 + 28);
        v60 = 1;
      }

      else
      {
        v60 = 0;
      }

      *(v57 + j) = v60;
    }

    ++v56;
    v58 += 20;
    v57 = (v57 + 5);
  }

  while (v56 != 4);
  OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::addPatchBasis(a1);
  ++*(a1 + 32);
  return v15;
}

void OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints()
{
  __assert_rtn("GetPatchPoints", "endCapGregoryBasisPatchFactory.cpp", 156, "fedges.size()==4");
}

{
  __assert_rtn("GetPatchPoints", "endCapGregoryBasisPatchFactory.cpp", 205, "adjPatchIndex>=0 && adjPatchIndex<(int)_levelAndFaceIndices.size()");
}

{
  __assert_rtn("GetPatchPoints", "endCapGregoryBasisPatchFactory.cpp", 191, "aedge!=Vtr::INDEX_INVALID");
}

void OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(void *this, int a2)
{
  if ((this[1] & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::initializeSparseSelectionTags(*this);
    *(this + 8) = 1;
  }

  v4 = *(*this + 408);
  if ((*(v4 + a2) & 1) == 0)
  {
    *(v4 + a2) |= 1u;
    v5 = *(*this + 8);
    v6 = v5[3];
    v7 = *(v6 + 8 * a2);
    if (v7 >= 1)
    {
      v8 = *(v6 + 8 * a2 + 4);
      v9 = (v5[9] + 4 * v8);
      v10 = (v5[6] + 4 * v8);
      do
      {
        v11 = *v9++;
        *(*(*this + 432) + v11) |= 1u;
        v12 = *v10++;
        *(*(*this + 456) + v12) |= 1u;
        --v7;
      }

      while (v7);
    }
  }
}

double OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::QuadRefinement(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = OpenSubdiv::v3_1_1::Vtr::internal::Refinement::Refinement(a1, a2, a3, a4);
  *v4 = &unk_282DCB468;
  *&result = 0x400000000;
  *(v4 + 28) = 0x400000000;
  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::~QuadRefinement(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);

  JUMPOUT(0x21CF07610);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v3 = *(end + 7) - *(end + 6);
  v4 = *(end + 10) - *(end + 9);
  v5 = *(end + 16) - *(end + 15);
  v6 = *end;
  v7 = end[1];
  v8 = end[2];
  __x = 0;
  v9 = *(end + 3);
  v10 = (*(end + 4) - v9) >> 2;
  this[3].__end_cap_.__value_ = v9;
  LODWORD(this[4].__begin_) = v10;
  v11 = *(end + 3);
  v12 = (*(end + 4) - v11) >> 2;
  this[4].__end_ = v11;
  LODWORD(this[4].__end_cap_.__value_) = v12;
  std::vector<int>::resize(this + 5, (v3 >> 2), &__x);
  std::vector<int>::resize(this + 6, (v4 >> 2), &__x);
  std::vector<int>::resize(this + 8, (v5 >> 2), &__x);
  std::vector<int>::resize(this + 7, v6, &__x);
  std::vector<int>::resize(this + 9, v7, &__x);
  std::vector<int>::resize(this + 10, v8, &__x);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 2, 4 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVerticesFromParentFaces(this);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<float>::resize((*(this + 2) + 24), 2 * **(this + 2));
  v2 = *(this + 2);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(v2 + 3) + 4);
    do
    {
      *(v5 - 1) = 4;
      *v5 = v3;
      ++v4;
      v3 += 4;
      v5 += 2;
    }

    while (v4 < *v2);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 48);
    v6 = *(v1 + 72);
    v7 = this[11];
    v8 = this[15];
    do
    {
      v9 = *(v4 + 8 * v3);
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = (8 * v3) | 4;
        v12 = *(v4 + v11);
        v13 = v5 + 4 * v12;
        v14 = v6 + 4 * v12;
        v15 = v8 + 4 * *(v7 + v11);
        do
        {
          v16 = *(v15 + 4 * v10);
          if (v16 != -1)
          {
            if (v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v9;
            }

            v18 = *(this[21] + 4 * v3);
            v19 = v17 - 1;
            v20 = this[27];
            v21 = *(v20 + 4 * *(v14 + 4 * (v17 - 1)));
            v22 = *(this[30] + 4 * *(v13 + 4 * v10));
            v23 = *(v20 + 4 * *(v14 + 4 * v10));
            v24 = (*(this[2] + 48) + 4 * *(*(this[2] + 24) + 4 * ((2 * v16) | 1)));
            if (v9 == 4)
            {
              v25 = v17 - 2;
              if (!v19)
              {
                v25 = 3;
              }

              v24[v10] = v22;
              if (v25)
              {
                v26 = v25 - 1;
              }

              else
              {
                v26 = 3;
              }

              v24[v26] = v23;
              v24[v25] = v18;
              v27 = &v24[v19];
            }

            else
            {
              *v24 = v22;
              v24[1] = v23;
              v27 = v24 + 3;
              v24[2] = v18;
            }

            *v27 = v21;
          }

          ++v10;
        }

        while (v9 != v10);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<float>::resize(v2 + 3, 4 * SLODWORD(v2->__begin_));

  return OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgesFromParentFaces(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 48);
    v6 = *(v1 + 72);
    v7 = this[11];
    v8 = this[15];
    v9 = this[13];
    v10 = this[18];
    do
    {
      v11 = *(v4 + 8 * v3);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = (8 * v3) | 4;
        v14 = *(v4 + v13);
        v15 = v5 + 4 * v14;
        v16 = v6 + 4 * v14;
        v17 = v8 + 4 * *(v7 + v13);
        v18 = v10 + 4 * *(v9 + v13);
        do
        {
          v19 = *(v17 + 4 * v12);
          if (v19 != -1)
          {
            if (v12)
            {
              v20 = v12;
            }

            else
            {
              v20 = v11;
            }

            v21 = v20 - 1;
            v22 = *(v16 + 4 * (v20 - 1));
            v23 = *(v1 + 120);
            v24 = (v23 + 8 * v22);
            v25 = *(v16 + 4 * v12);
            v26 = *(v15 + 4 * v12);
            v27 = (v23 + 8 * v25);
            v29 = *v24 == v24[1] || *v24 != v26;
            v31 = *v27 != v27[1] && *v27 != v26;
            v32 = this[24];
            v33 = *(v32 + 8 * v22 + 4 * v29);
            v34 = *(v32 + 8 * v25 + 4 * v31);
            v35 = *(v18 + 4 * v21);
            v36 = *(v18 + 4 * v12);
            v37 = (*(this[2] + 72) + 4 * *(*(this[2] + 24) + 4 * ((2 * v19) | 1)));
            if (v11 == 4)
            {
              v38 = v20 - 2;
              if (!v21)
              {
                v38 = 3;
              }

              v37[v12] = v34;
              if (v38)
              {
                v39 = v38 - 1;
              }

              else
              {
                v39 = 3;
              }

              v37[v39] = v36;
              v37[v38] = v35;
              v40 = &v37[v21];
            }

            else
            {
              *v37 = v34;
              v37[1] = v36;
              v40 = v37 + 3;
              v37[2] = v35;
            }

            *v40 = v33;
          }

          ++v12;
        }

        while (v11 != v12);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<float>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentFaces(this);

  return OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentEdges(this);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 72);
    v6 = this[13];
    v7 = this[18];
    do
    {
      v8 = *(v4 + 8 * v3);
      if (v8 >= 1)
      {
        v9 = (8 * v3) | 4;
        v10 = (v5 + 4 * *(v4 + v9));
        v11 = (v7 + 4 * *(v6 + v9));
        do
        {
          v13 = *v11++;
          v12 = v13;
          if (v13 != -1)
          {
            v14 = (*(this[2] + 120) + 8 * v12);
            *v14 = *(this[21] + 4 * v3);
            v14[1] = *(this[27] + 4 * *v10);
          }

          ++v10;
          --v8;
        }

        while (v8);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVerticesFromParentEdges(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = *(v1 + 120);
    v4 = this[24];
    do
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(v4 + 8 * v2 + 4 * v5);
        if (v8 != -1)
        {
          v9 = (*(this[2] + 120) + 8 * v8);
          *v9 = *(this[27] + 4 * v2);
          v9[1] = *(this[30] + 4 * *(v3 + 8 * v2 + 4 * v5));
        }

        v6 = 0;
        v5 = 1;
      }

      while ((v7 & 1) != 0);
      ++v2;
    }

    while (v2 < *(v1 + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(*(this + 1) + 56) - *(*(this + 1) + 48)) >> 2));
  std::vector<float>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<float>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  *(*(this + 2) + 16) = *(*(this + 1) + 16);
  OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentFaces(this);
  OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentEdges(this);
  v3 = *(this + 2);
  v4 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<float>::resize((v3 + 168), v6 + v5);
  v7 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[11];
    v5 = this[15];
    v6 = this[13];
    v7 = this[18];
    do
    {
      v8 = *(v4 + 8 * v3);
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = (8 * v3) | 4;
        v11 = v5 + 4 * *(v4 + v10);
        v12 = v7 + 4 * *(v6 + v10);
        do
        {
          v13 = *(v12 + 4 * v9);
          if (v13 == -1)
          {
            ++v9;
          }

          else
          {
            v14 = this[2];
            v15 = *(v14 + 144);
            v16 = (v15 + 8 * v13);
            *v16 = 2;
            if (v13)
            {
              v17 = *(v16 - 1) + *(v16 - 2);
            }

            else
            {
              v17 = 0;
            }

            v18 = 2 * v13;
            v16[1] = v17;
            v19 = *(v14 + 16);
            if (v19 <= 2)
            {
              v19 = 2;
            }

            *(v14 + 16) = v19;
            v20 = *(v15 + 4 * (v18 | 1));
            v21 = (*(v14 + 168) + 4 * v20);
            v22 = (*(v14 + 192) + 2 * v20);
            v23 = v9 + 1;
            if (v9 + 1 >= v8)
            {
              v24 = 0;
            }

            else
            {
              v24 = v9 + 1;
            }

            v25 = *(v11 + 4 * v9);
            if (v25 == -1)
            {
              v27 = 0;
            }

            else
            {
              *v21 = v25;
              if (v8 == 4)
              {
                v26 = v24;
              }

              else
              {
                v26 = 1;
              }

              *v22 = v26;
              v27 = 1;
            }

            v28 = *(v11 + 4 * v24);
            if (v28 != -1)
            {
              v21[v27] = v28;
              v29 = v24 & 3 ^ 2;
              if (v8 != 4)
              {
                v29 = 2;
              }

              v22[v27] = v29;
              LODWORD(v27) = v27 + 1;
            }

            *v16 = v27;
            v9 = v23;
          }
        }

        while (v9 != v8);
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[24];
    do
    {
      v5 = (v4 + 8 * v3);
      if (*v5 != -1 || v5[1] != -1)
      {
        v6 = 0;
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 168) + 4 * v8;
        v10 = *(v1 + 192) + 2 * v8;
        v11 = (*(v1 + 120) + 8 * v3);
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = v5[v6];
          if (v14 != -1)
          {
            v15 = this[2];
            v16 = *(v15 + 144);
            v17 = (v16 + 8 * v14);
            *v17 = v7;
            if (v14)
            {
              v18 = *(v17 - 1) + *(v17 - 2);
            }

            else
            {
              v18 = 0;
            }

            v17[1] = v18;
            v19 = *(v15 + 16);
            if (v19 <= v7)
            {
              v19 = v7;
            }

            *(v15 + 16) = v19;
            if (v7 < 1)
            {
              v20 = 0;
            }

            else
            {
              v20 = 0;
              v21 = *(v16 + 4 * ((2 * v14) | 1));
              v22 = *(v15 + 168) + 4 * v21;
              v23 = *(v15 + 192) + 2 * v21;
              v24 = *(v1 + 24);
              v25 = this[11];
              v26 = this[15];
              v27 = v7;
              v28 = v9;
              v29 = v10;
              do
              {
                v31 = *v28++;
                v30 = v31;
                LODWORD(v31) = *v29++;
                v32 = v31;
                v33 = (2 * v30) | 1;
                v34 = v6;
                if (*v11 != v11[1])
                {
                  v34 = *(*(v1 + 48) + 4 * *(v24 + 4 * v33) + 4 * v32) != v11[v6];
                }

                v35 = 2 * v30;
                v36 = v26 + 4 * *(v25 + 4 * v33);
                if (v34 + v32 == *(v25 + 4 * v35))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v34 + v32;
                }

                v38 = *(v36 + 4 * v37);
                if (v38 != -1)
                {
                  v39 = *(v24 + 4 * v35);
                  *(v22 + 4 * v20) = v38;
                  if (v34)
                  {
                    v40 = 3;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (v39 != 4)
                  {
                    LOWORD(v32) = v40;
                  }

                  *(v23 + 2 * v20++) = v32;
                }

                --v27;
              }

              while (v27);
            }

            *v17 = v20;
          }

          v12 = 0;
          v6 = 1;
        }

        while ((v13 & 1) != 0);
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = (((v2[22] - v2[21]) >> 1) & 0xFFFFFFFE) + ((v2[7] - v2[6]) >> 2) + ((v2[37] - v2[36]) >> 2);
  std::vector<float>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 288), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 264) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<float>::resize((v4 + 288), v7 + v6);
  v8 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              v25 = *(v19 + 8 * v21);
              *(v17 + 4 * v14) = v24;
              if (v25 != 4)
              {
                v23 = 0;
              }

              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = (this[11] + 8 * v3);
        v7 = this[15];
        v8 = *v6;
        v9 = v6[1];
        v10 = this[2];
        v11 = (v10[33] + 8 * v5);
        *v11 = v8;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = v7 + 4 * v9;
          v16 = v10[36] + 4 * v12;
          v17 = v10[39] + 2 * v12;
          do
          {
            v18 = *(v15 + 4 * v13);
            if (v18 != -1)
            {
              *(v16 + 4 * v14) = v18;
              v19 = v13 & 3 ^ 2;
              if (v8 != 4)
              {
                v19 = 2;
              }

              *(v17 + 2 * v14++) = v19;
            }

            ++v13;
          }

          while (v8 != v13);
        }

        *v11 = v14;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v25 = *(v19 + 8 * v21);
            if (v22 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              v26 = v23 + 1;
            }

            v27 = *(v24 + 4 * v26);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              if (v25 == 4)
              {
                v28 = v23;
              }

              else
              {
                v28 = 3;
              }

              *(v18 + 2 * v14++) = v28;
            }

            v29 = *(v24 + 4 * v23);
            if (v29 != -1)
            {
              *(v17 + 4 * v14) = v29;
              if (v25 == 4)
              {
                v30 = v26;
              }

              else
              {
                v30 = 1;
              }

              *(v18 + 2 * v14++) = v30;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 56) - *(v2 + 48)) >> 2) + 2 * *(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2) + ((*(v2 + 368) - *(v2 + 360)) >> 2);
  std::vector<float>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<float>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<float>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v24 = *v17++;
            v23 = v24;
            LODWORD(v24) = *v18++;
            v25 = *(v22 + 8 * v23 + 4 * v24);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(*(v1 + 24) + 8 * v3);
        v7 = *(this[13] + 8 * v3 + 4);
        v8 = this[18];
        v9 = this[2];
        v10 = *(v9 + 336);
        v11 = (v10 + 8 * v5);
        *v11 = v6;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        v13 = *(v9 + 20);
        if (v13 <= v6)
        {
          v13 = v6;
        }

        *(v9 + 20) = v13;
        if (v6 < 1)
        {
          v15 = 0;
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = *(v10 + 4 * ((2 * v5) | 1));
          v17 = *(v9 + 360) + 4 * v16;
          v18 = *(v9 + 384) + 2 * v16;
          v19 = v8 + 4 * v7 - 4;
          do
          {
            if (v14)
            {
              v20 = v14;
            }

            else
            {
              v20 = v6;
            }

            v21 = *(v19 + 4 * v20);
            if (v21 != -1)
            {
              *(v17 + 4 * v15) = v21;
              *(v18 + 2 * v15++) = 0;
            }

            ++v14;
          }

          while (v6 != v14);
        }

        *v11 = v15;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v17 = (v11 + 8 * v3);
        v18 = 2 * v5;
        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        v19 = *(v14 + 4 * (v18 | 1));
        v20 = (*(v12 + 360) + 4 * v19);
        v21 = (*(v12 + 384) + 2 * v19);
        if (*v17 == -1)
        {
          v22 = 0;
        }

        else
        {
          *v20 = *v17;
          *v21 = 0;
          v22 = 1;
        }

        v23 = v17[1];
        if (v23 != -1)
        {
          v20[v22] = v23;
          v21[v22++] = 0;
        }

        if (v7 >= 1)
        {
          v24 = 0;
          v25 = v6 + 4 * v8;
          v26 = v9 + 2 * v8;
          v27 = this[13];
          v28 = this[18];
          v29 = (v10 + 8 * v3);
          do
          {
            v30 = *(v26 + 2 * v24);
            v31 = (2 * *(v25 + 4 * v24)) | 1;
            v32 = *(v28 + 4 * *(v27 + 4 * v31) + 4 * v30);
            if (v32 != -1)
            {
              v20[v22] = v32;
              v21[v22++] = 1;
              if (!v24 && v22 == 3)
              {
                if (*v29 == v29[1])
                {
                  v33 = v20[1];
                  v34 = v21[1];
                }

                else
                {
                  v35 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30);
                  v33 = v20[1];
                  v34 = v21[1];
                  if (v35 == *v29)
                  {
                    v36 = *v20;
                    *v20 = v33;
                    v37 = *v21;
                    *v21 = v34;
                    v34 = v37;
                    v33 = v36;
                  }
                }

                v20[1] = v20[2];
                v20[2] = v33;
                v21[1] = v21[2];
                v21[2] = v34;
                v22 = 3;
              }
            }

            ++v24;
          }

          while (v7 != v24);
        }

        *v15 = v22;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren(uint64_t this)
{
  if (*(this + 416) == *(this + 408))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren();
  }

  if (*(this + 28))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren();
  }

  v1 = *(this + 8);
  if (*v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = (2 * (v2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v4 = (*(this + 120) + 4 * *(*(this + 88) + 4 * v3));
      v5 = (*(this + 144) + 4 * *(*(this + 104) + 4 * v3));
      v6 = *(v1 + 3);
      v7 = *(v6 + 8 * v2);
      v8 = *(this + 408);
      if (*(v8 + v2))
      {
        break;
      }

      if (v7 >= 1)
      {
        v9 = 0;
        v10 = *(v1 + 6) + 4 * *(v6 + 4 * v3);
        v11 = *(this + 456);
        v12 = 1;
        do
        {
          while ((*(v11 + *(v10 + 4 * v9)) & 1) != 0)
          {
            v12 = 0;
            v4[v9] = 1;
            v5[v9] = 1;
            if (v9)
            {
              v13 = v9;
            }

            else
            {
              v13 = v7;
            }

            v5[v13 - 1] = 1;
            if (v7 - 1 == v9++)
            {
              goto LABEL_24;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        if (v12)
        {
          goto LABEL_21;
        }

LABEL_24:
        *(*(this + 168) + 4 * v2) = 1;
        v16 = (*(v1 + 9) + 4 * *(v6 + 4 * v3));
        v17 = *(v6 + 8 * v2);
        if (v17 == 3)
        {
          v23 = *(*(this + 432) + v16[1]) & 0xE | (*(*(this + 432) + *v16) >> 1) & 0xF | (2 * *(*(this + 432) + v16[2])) & 0xC;
          v22 = *(v8 + v2);
        }

        else
        {
          if (v17 != 4)
          {
            v24 = *(v8 + v2) & 0xE1;
            *(v8 + v2) &= 0xE1u;
            if (v17 >= 1)
            {
              do
              {
                v25 = *v16++;
                v24 |= *(*(this + 432) + v25) & 0x1E;
                *(v8 + v2) = v24;
                --v17;
              }

              while (v17);
            }

            goto LABEL_21;
          }

          v18 = *(this + 432);
          v19 = *(v18 + *v16);
          v20 = *(v18 + v16[1]) & 0xE;
          v21 = (2 * *(v18 + v16[2])) & 0xC;
          LOBYTE(v18) = 4 * *(v18 + v16[3]);
          v22 = *(v8 + v2);
          v23 = v20 | (v19 >> 1) & 0xF | v21 | v18 & 8;
        }

        v15 = v22 & 0xE1 | (2 * (v23 & 0xF));
        goto LABEL_20;
      }

LABEL_21:
      ++v2;
      v1 = *(this + 8);
      if (v2 >= *v1)
      {
        return this;
      }
    }

    if (v7 >= 1)
    {
      do
      {
        *v4++ = 2;
        *v5++ = 2;
        --v7;
      }

      while (v7);
    }

    *(*(this + 168) + 4 * v2) = 2;
    v15 = *(v8 + v2) & 0xE1;
LABEL_20:
    *(v8 + v2) = v15;
    goto LABEL_21;
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren()
{
  __assert_rtn("markSparseFaceChildren", "quadRefinement.cpp", 931, "_splitType == Sdc::SPLIT_TO_QUADS");
}

{
  __assert_rtn("markSparseFaceChildren", "quadRefinement.cpp", 920, "_parentFaceTag.size() > 0");
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::TopologyRefiner(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *(a1 + 8) & 0xC0 | 1;
  *(a1 + 12) &= 0xC0u;
  *(a1 + 16) = *(a1 + 16) & 0xF000 | 0xF0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 96) = 0u;
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve((a1 + 40), 0xAuLL);
  operator new();
}

{
  OpenSubdiv::v3_1_1::Far::TopologyRefiner::TopologyRefiner(a1, a2, a3);
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Statement *>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(void **this)
{
  std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::resize(this + 11, (this[6] - this[5]) >> 3);
  v2 = this[11];
  v2[1] = 0;
  v3 = this[5];
  *v2 = *v3;
  v2[2] = 0;
  v4 = this[8];
  v5 = this[9] - v4;
  v6 = v5 >> 3;
  if ((v5 >> 3))
  {
    v2[2] = *v4;
    if (v6 >= 2)
    {
      v7 = ((v5 >> 3) & 0x7FFFFFFF) - 1;
      v8 = v2 + 5;
      v9 = v4 + 1;
      v10 = v3 + 1;
      do
      {
        *(v8 - 1) = *(v9 - 1);
        v11 = *v10++;
        *(v8 - 2) = v11;
        v12 = *v9++;
        *v8 = v12;
        v8 += 3;
        --v7;
      }

      while (v7);
    }

    v13 = &v2[3 * v6];
    v13[1] = *(v4 + (((v5 << 29) - 0x100000000) >> 29));
    *v13 = *(v3 + ((v5 << 29) >> 29));
    v13[2] = 0;
  }
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::~TopologyRefiner(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (((v2 - v3) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::Level::~Level(v5);
        MEMORY[0x21CF07610]();
        v3 = *(this + 5);
        v2 = *(this + 6);
      }

      ++v4;
    }

    while (v4 < ((v2 - v3) >> 3));
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  if (((v7 - v6) >> 3) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v6[v8];
      if (v9)
      {
        (*(*v9 + 8))(v6[v8]);
        v6 = *(this + 8);
        v7 = *(this + 9);
      }

      ++v8;
    }

    while (v8 < ((v7 - v6) >> 3));
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
    v6 = *(this + 8);
  }

  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }
}

int32x2_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, uint64_t a2)
{
  v2 = *(this + 5);
  v3 = (*(this + 6) - v2) >> 3;
  if (v3)
  {
    if (v3 != 1)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory();
    }

    v4 = *v2;
    result = vrev64_s32(*(v4 + 4));
    *(this + 20) = result;
    v6 = (*(v4 + 56) - *(v4 + 48)) >> 2;
    *(this + 7) = *v4;
    *(this + 8) = v6;
    *(this + 9) = *(v4 + 20);
  }

  else
  {
    *(this + 28) = 0;
    *(this + 20) = 0;
    *(this + 9) = 0;
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::updateInventory(uint64_t this, const OpenSubdiv::v3_1_1::Vtr::internal::Level *a2)
{
  *v2.i8 = vrev64_s32(*(a2 + 4));
  v2.i32[2] = *a2;
  v2.i32[3] = (*(a2 + 7) - *(a2 + 6)) >> 2;
  *(this + 20) = vaddq_s32(*(this + 20), v2);
  v3 = *(a2 + 5);
  if (*(this + 36) > v3)
  {
    v3 = *(this + 36);
  }

  *(this + 36) = v3;
  return this;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::appendRefinement(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, OpenSubdiv::v3_1_1::Vtr::internal::Refinement *a2)
{
  v5 = *(this + 9);
  v4 = *(this + 10);
  if (v5 >= v4)
  {
    v7 = *(this + 8);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Statement *>>(this + 64, v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = *(this + 8);
    v14 = *(this + 9) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(this + 8);
    *(this + 8) = v15;
    *(this + 9) = v6;
    *(this + 10) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(this + 9) = v6;
}

void std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::resize(void **result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::GetNumFVarValuesTotal(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, int a2)
{
  v2 = *(this + 5);
  if (((*(this + 6) - v2) >> 3) < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  do
  {
    v6 = OpenSubdiv::v3_1_1::Vtr::internal::Level::getNumFVarValues(*(v2 + 8 * v5++), a2) + v6;
    v2 = *(this + 5);
  }

  while (v5 < ((*(this + 6) - v2) >> 3));
  return v6;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineUniform(unsigned int *a1, unint64_t a2)
{
  if (!*(**(a1 + 5) + 8))
  {
    v3 = "Failure in TopologyRefiner::RefineUniform() -- base level is uninitialized.";
    goto LABEL_5;
  }

  if (*(a1 + 9) != *(a1 + 8))
  {
    v3 = "Failure in TopologyRefiner::RefineUniform() -- previous refinements already applied.";
LABEL_5:

    OpenSubdiv::v3_1_1::Far::Error(4, v3);
    return;
  }

  *(a1 + 12) = a2;
  v4 = a2 & 0xF;
  *(a1 + 8) = a1[2] & 0xC3 | (4 * (a2 & 0xF)) | 1;
  OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetTopologicalSplitType(*a1);
  if (v4)
  {
    operator new();
  }

  OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(a1);
}

_WORD *OpenSubdiv::v3_1_1::Far::internal::FeatureMask::InitializeFeatures(_WORD *result, _WORD *a2, uint64_t a3)
{
  v4 = result;
  v5 = 15;
  if ((*a2 & 0x100) != 0)
  {
    result = OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetRegularFaceSize(a3);
    v6 = result == 4;
    if (result == 4)
    {
      v5 = 11;
    }

    else
    {
      v5 = 15;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 | *v4 & 0xFFF0;
  *v4 = v5 | *v4 & 0xFFF0;
  if (v6 | ((*a2 & 0x200) >> 9))
  {
    v8 = 0;
  }

  else
  {
    v8 = 16;
  }

  v9 = v8 | v7 & 0xFFFFFFEF;
  *v4 = v9;
  v10 = (v9 & 0xFFFFFC1F | (*a2 >> 4) & 0x20) ^ 0x3E0;
  *v4 = v10;
  *v4 = v10 & 0xFBFF | *a2 & 0x400;
  return result;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineAdaptive(unsigned int *a1, unint64_t a2)
{
  v12 = a2;
  v2 = a1 + 10;
  if (!*(**(a1 + 5) + 8))
  {
    v4 = "Failure in TopologyRefiner::RefineAdaptive() -- base level is uninitialized.";
    goto LABEL_15;
  }

  if (*(a1 + 9) != *(a1 + 8))
  {
    v4 = "Failure in TopologyRefiner::RefineAdaptive() -- previous refinements already applied.";
LABEL_15:

    OpenSubdiv::v3_1_1::Far::Error(4, v4);
    return;
  }

  if (*a1 != 1)
  {
    v4 = "Failure in TopologyRefiner::RefineAdaptive() -- currently only supported for Catmark scheme.";
    goto LABEL_15;
  }

  *(a1 + 8) &= ~1u;
  *(a1 + 8) = a2;
  v5 = a2 & 0xF;
  OpenSubdiv::v3_1_1::Far::internal::FeatureMask::InitializeFeatures(&v11, &v12, 1);
  if ((v11 & 0x400) != 0)
  {
    v6 = *(**v2 + 456);
    v7 = *(**v2 + 464) - v6;
    if ((v7 >> 3) < 1)
    {
      goto LABEL_11;
    }

    v8 = 0;
    v9 = (v7 >> 3) & 0x7FFFFFFF;
    do
    {
      v10 = *v6++;
      v8 |= *(v10 + 12) ^ 1;
      --v9;
    }

    while (v9);
    if ((v8 & 1) == 0)
    {
LABEL_11:
      LOWORD(v11) = v11 & 0xFBFF;
    }
  }

  OpenSubdiv::v3_1_1::Sdc::SchemeTypeTraits::GetTopologicalSplitType(*a1);
  if (v5)
  {
    operator new();
  }

  *(a1 + 8) = ((a1[18] - a1[16]) >> 1) & 0x3C | a1[2] & 0xC3;
  OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(a1);
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::selectFeatureAdaptiveComponents(int a1, OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector *this, _DWORD *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    v3 = a3;
    v5 = *(*this + 8);
    if ((*a3 & 0x400) != 0)
    {
      v43 = (*(v5 + 58) - *(v5 + 57)) >> 3;
    }

    else
    {
      LODWORD(v43) = 0;
    }

    if (*v5 >= 1)
    {
      v6 = 0;
      v41 = *(*this + 32);
      v42 = v5[3];
      while (1)
      {
        if (*(*(v5 + 12) + v6))
        {
          goto LABEL_75;
        }

        v7 = *(v5 + 3);
        if (!v42)
        {
          v8 = (v7 + 8 * v6);
          v9 = *v8;
          if (v9 != v41)
          {
            if (v9 >= 1)
            {
              v29 = 0;
              v30 = *(v5 + 6) + 4 * v8[1];
              do
              {
                v31 = *(v30 + 4 * v29);
                v32 = *(v5 + 33);
                v33 = *(v32 + 8 * v31);
                if (v33 >= 1)
                {
                  v34 = (*(v5 + 36) + 4 * *(v32 + 8 * v31 + 4));
                  do
                  {
                    v35 = *v34++;
                    OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(this, v35);
                    --v33;
                  }

                  while (v33);
                }

                ++v29;
              }

              while (v29 != v9);
            }

            goto LABEL_75;
          }
        }

        v10 = *(v7 + 8 * v6);
        OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v5, v6, &v44, 0xFFFFFFFF);
        v11 = OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag::BitwiseOr(&v44, v10);
        if ((v11 & 0x800) != 0)
        {
          goto LABEL_16;
        }

        if ((v11 & 1) != 0 && (*v3 & 0x200) != 0)
        {
          goto LABEL_74;
        }

        if (v11 & 2) != 0 && (*v3)
        {
          if ((v11 & 0x780) == 0x80)
          {
            goto LABEL_74;
          }

          if (v5[3] <= 1 && v10 >= 1)
          {
            v37 = &v44;
            while (1)
            {
              v38 = *v37++;
              if ((v38 & 0x782) == 0x82)
              {
                break;
              }

              if (!--v10)
              {
                goto LABEL_15;
              }
            }

LABEL_74:
            OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(this, v6);
            goto LABEL_75;
          }
        }

LABEL_15:
        if ((v11 & 0x780) == 0x80)
        {
          goto LABEL_16;
        }

        if ((v11 & 0x80) == 0)
        {
          goto LABEL_74;
        }

        if ((v11 & 0x60) != 0)
        {
          if ((~*v3 & 0xC) == 0)
          {
            goto LABEL_74;
          }

          isSingleCreasePatch = OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(v5, v6, 0, 0);
          LOWORD(v12) = *v3;
          if (isSingleCreasePatch)
          {
            if ((v12 & 4) != 0)
            {
              goto LABEL_74;
            }
          }

          else if ((v12 & 8) != 0)
          {
            goto LABEL_74;
          }

          goto LABEL_17;
        }

        if ((v11 & 0x1010) == 0)
        {
          goto LABEL_16;
        }

        if ((v11 & 0x4000) != 0)
        {
          break;
        }

        if ((v11 & 4) != 0)
        {
          if ((v11 & 0x400) == 0)
          {
            goto LABEL_16;
          }

          LOWORD(v12) = *v3;
          if ((v11 & 8) == 0)
          {
LABEL_98:
            if ((v12 & 0x20) != 0)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
          LOWORD(v12) = *v3;
          if ((v11 & 0x400) != 0)
          {
            goto LABEL_98;
          }

          if ((v12 & 0x10) != 0)
          {
            goto LABEL_74;
          }
        }

LABEL_17:
        if ((v12 & 0x400) != 0 && v43 >= 1)
        {
          v13 = 0;
          while (1)
          {
            while (OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v5, v6, v13))
            {
              if (++v13 >= v43)
              {
                goto LABEL_75;
              }
            }

            v14 = v3;
            v15 = *(v5 + 3);
            v16 = *(v15 + 4 * ((2 * v6) | 1));
            v17 = *(v5 + 6);
            v18 = *(v15 + 8 * v6);
            if (OpenSubdiv::v3_1_1::Vtr::internal::Level::doesFaceFVarTopologyMatch(v5, v6, v13))
            {
              OpenSubdiv::v3_1_1::Far::TopologyRefiner::selectFeatureAdaptiveComponents();
            }

            if (v18 >= 1)
            {
              v19 = (v17 + 4 * v16);
              v20 = &v44;
              v21 = v18;
              do
              {
                v22 = *v19++;
                *v20++ = OpenSubdiv::v3_1_1::Vtr::internal::Level::getVertexCompositeFVarVTag(v5, v22, v13);
                --v21;
              }

              while (v21);
            }

            v23 = OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag::BitwiseOr(&v44, v18);
            v3 = v14;
            if ((v23 & 1) != 0 && (*v14 & 0x200) != 0)
            {
              goto LABEL_74;
            }

            if ((v23 & 2) != 0)
            {
              if (v23 & 0x80) == 0 || (*v14)
              {
                goto LABEL_74;
              }
            }

            else if ((v23 & 0x80) == 0)
            {
              goto LABEL_74;
            }

            if ((v23 & 0x4000) != 0)
            {
              v27 = (v23 >> 7) & 0xF;
              if (v27 >= 8)
              {
                v26 = HIBYTE(*v14) & 1;
                if (v26)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v27 < 4)
              {
                if ((v23 & 0x100) != 0)
                {
                  v26 = (*v14 >> 6) & 1;
                  if (v26)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_57;
                }

LABEL_46:
                v26 = 0;
                goto LABEL_57;
              }

              if ((v23 & 4) != 0)
              {
                v28 = 2;
              }

              else
              {
                v28 = 128;
              }

              v26 = (*v14 & v28) != 0;
              if ((*v14 & v28) != 0)
              {
                goto LABEL_58;
              }
            }

            else if ((v23 & 4) != 0)
            {
              if ((v23 & 0x400) == 0)
              {
                goto LABEL_46;
              }

              v26 = (*v14 >> 5) & 1;
              if ((v23 & 8) != 0)
              {
                v26 = 0;
              }

              if (v26)
              {
LABEL_58:
                if (v26)
                {
                  goto LABEL_74;
                }

                break;
              }
            }

            else
            {
              v24 = *v14;
              v25 = (v24 >> 4) & 1;
              v26 = (v24 >> 5) & 1;
              if ((v23 & 0x400) == 0)
              {
                v26 = v25;
              }

              if (v26)
              {
                goto LABEL_58;
              }
            }

LABEL_57:
            if (++v13 >= v43)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_75:
        if (++v6 >= *v5)
        {
          return;
        }
      }

      v39 = (v11 >> 7) & 0xF;
      if (v39 >= 8)
      {
        LOWORD(v12) = *v3;
        if ((*v3 & 0x100) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_17;
      }

      if (v39 >= 4)
      {
        v12 = *v3;
        if ((v11 & 4) != 0)
        {
          v40 = 2;
        }

        else
        {
          v40 = 128;
        }

        if ((v12 & v40) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_17;
      }

      if ((v11 & 0x100) != 0)
      {
        LOWORD(v12) = *v3;
        if ((*v3 & 0x40) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_17;
      }

LABEL_16:
      LOWORD(v12) = *v3;
      goto LABEL_17;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::__append(void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    a1[1] = (v5 + 24 * (24 * a2 / 0x18));
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3);
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(a1, v11);
    }

    v12 = 8 * (v7 >> 3) - v7;
    if (v6 != v5)
    {
      v13 = v12;
      do
      {
        v14 = *v6;
        *(v13 + 16) = v6[2];
        *v13 = v14;
        v13 += 24;
        v6 += 3;
      }

      while (v6 != v5);
      v6 = *a1;
    }

    *a1 = v12;
    a1[1] = (24 * v8 + 24 * (24 * a2 / 0x18));
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

double OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::EndCapLegacyGregoryPatchFactory(OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(uint64_t a1, OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a3, int a4, int a5, int a6)
{
  v19 = a3;
  if (a6 < 0)
  {
    v11 = *(this + 3);
    FaceFVarValues = (*(this + 6) + 4 * *(v11 + 8 * a3 + 4));
    v10 = *(v11 + 8 * a3);
  }

  else
  {
    FaceFVarValues = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceFVarValues(this, a3, a6);
  }

  v17 = FaceFVarValues;
  v18 = v10;
  v12 = 0;
  if ((OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(this, &v17) & 4) != 0)
  {
    v13 = 40;
    v14 = 80;
    do
    {
      v16 = v17[v12] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 32), &v16);
      ++v12;
    }

    while (v12 != 4);
  }

  else
  {
    v13 = 16;
    v14 = 56;
    do
    {
      v16 = v17[v12] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 8), &v16);
      ++v12;
    }

    while (v12 != 4);
  }

  std::vector<int>::push_back[abi:nn200100]((a1 + v14), &v19);
  return *(a1 + v13) - 16;
}

void OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(void *a1, int a2, std::vector<int> *this, std::vector<int> *a4, unsigned int *a5)
{
  v8 = a1;
  v9 = a1[7];
  v10 = a1[8];
  v11 = v10 - v9;
  v39 = a1[10];
  v41 = a1[11];
  v12 = (v41 - v39) >> 2;
  v13 = v12 + ((v10 - v9) >> 2);
  v14 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  std::vector<float>::resize(this, 4 * v13);
  if (v13)
  {
    v15 = v8;
    begin = this->__begin_;
    if (v10 == v9)
    {
      v19 = v8;
    }

    else
    {
      v17 = 0;
      v18 = (v11 >> 2) <= 1 ? 1 : v11 >> 2;
      v19 = v15;
      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[7] + 4 * v17), begin, a5);
        begin += 4;
        ++v17;
      }

      while (v18 != v17);
    }

    v8 = v19;
    if (v41 != v39)
    {
      v20 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[10] + 4 * v20), begin, a5);
        begin += 4;
        ++v20;
      }

      while (v12 != v20);
    }
  }

  v21 = (2 * a2) | 1;
  std::vector<float>::resize(a4, *(*v8 + 20) * v21);
  v22 = 0;
  v23 = 0;
  v24 = (*(*v8 + 8) >> 2) & 0xF;
  v25 = v21;
  v26 = (v24 + 1);
  v27 = (8 * ((2 * a2) >> 1)) | 4;
  v42 = v24;
  v43 = v8;
  v40 = v26;
  do
  {
    v28 = *(*(*v8 + 40) + 8 * v22);
    v29 = *(v28 + 2);
    if (v22 == v24 && v29 >= 1)
    {
      v45 = v22;
      v30 = 0;
      v31 = v23 * v25;
      v32 = 4 * v31 + 4;
      do
      {
        v33 = a4->__begin_;
        v34 = &a4->__begin_[v31];
        *v34 = 0;
        v35 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(v28, v30, v34 + 1, 0xFFFFFFFF);
        if (v35 >= 1)
        {
          v36 = v35;
          v37 = (v33 + v32);
          do
          {
            *v37++ += v23;
            --v36;
          }

          while (v36);
        }

        if (v35)
        {
          v34[v35 + 1] = v34[v35];
          v38 = ~(v35 >> 1);
        }

        else
        {
          v38 = v35 >> 1;
        }

        *v34 = v38;
        v31 += v25;
        ++v30;
        v29 = *(v28 + 2);
        v32 += v27;
      }

      while (v30 < v29);
      v8 = v43;
      v22 = v45;
      v26 = v40;
      v24 = v42;
    }

    v23 += v29;
    ++v22;
  }

  while (v22 != v26);
}

uint64_t OpenSubdiv::v3_1_1::Far::getQuadOffsets(OpenSubdiv::v3_1_1::Far *this, const OpenSubdiv::v3_1_1::Vtr::internal::Level *a2, uint64_t a3, unsigned int *a4)
{
  v5 = a2;
  if ((a4 & 0x80000000) != 0)
  {
    result = *(this + 6) + 4 * *(*(this + 3) + 4 * ((2 * a2) | 1));
  }

  else
  {
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceFVarValues(this, a2, a4);
  }

  v8 = 0;
  v9 = *(this + 36);
  v10 = *(this + 33);
  v11 = *(this + 42);
  do
  {
    v12 = *(result + 4 * v8);
    v13 = 2 * v12;
    v14 = *(v10 + 8 * v12);
    if (v14 < 1)
    {
LABEL_12:
      OpenSubdiv::v3_1_1::Far::getQuadOffsets();
    }

    v15 = 0;
    v16 = v9 + 4 * *(v10 + 8 * v12 + 4);
    v17 = *(v11 + 4 * v13);
    while (*(v16 + 4 * v15) != v5)
    {
      if (v14 == ++v15)
      {
        goto LABEL_12;
      }
    }

    *(a3 + 4 * v8++) = v15 | (((v15 + 1) % v17) << 8);
  }

  while (v8 != 4);
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::resizeComponentTopology(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = **(a1 + 40);
  *(v5 + 8) = v4;
  std::vector<float>::resize((v5 + 264), 2 * v4);
  std::vector<float>::resize((v5 + 336), 2 * v4);
  std::vector<float>::resize((v5 + 408), v4);
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize((v5 + 432), v4);
  bzero(*(v5 + 432), 2 * *(v5 + 8));
  v6 = a2[1];
  v7 = **(a1 + 40);
  *v7 = v6;
  std::vector<float>::resize(v7 + 1, 2 * v6);
  v8 = *(v7 + 12);
  v9 = *(v7 + 13) - v8;
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      *(v7 + 13) = &v8[v6];
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(v7 + 12, v6 - v9);
    v8 = *(v7 + 12);
  }

  bzero(v8, *v7);
  if (a2[1] >= 1)
  {
    v10 = 0;
    v11 = *(a2 + 1);
    v12 = **(a1 + 40);
    v13 = *(v12 + 24);
    do
    {
      v14 = *(v11 + 4 * v10);
      *v13 = v14;
      if (v10)
      {
        v15 = *(v13 - 1) + *(v13 - 2);
      }

      else
      {
        v15 = 0;
      }

      v13[1] = v15;
      if (*(v12 + 20) > v14)
      {
        v14 = *(v12 + 20);
      }

      *(v12 + 20) = v14;
      ++v10;
      v13 += 2;
    }

    while (v10 < a2[1]);
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = **(a1 + 40);
    v5 = *(v4 + 24);
    v6 = *(v4 + 48);
    v7 = *(a2 + 88);
    v8 = *(a2 + 16);
    do
    {
      v9 = *(v5 + 8 * v2);
      v10 = *(v5 + 8 * v2 + 4);
      v11 = (v6 + 4 * v10);
      if (v7)
      {
        *v11 = *(v8 + 4 * v3++);
        if (v9 >= 2)
        {
          v12 = v9 + 1;
          v13 = (v6 - 4 + 4 * v10 + 4 * v9);
          v14 = (v8 + 4 * v3);
          do
          {
            v15 = *v14++;
            *v13-- = v15;
            --v12;
            ++v3;
          }

          while (v12 > 2);
        }
      }

      else if (v9 >= 1)
      {
        v16 = (v8 + 4 * v3);
        v3 += v9;
        do
        {
          v17 = *v16++;
          *v11++ = v17;
          --v9;
        }

        while (v9);
      }

      ++v2;
    }

    while (v2 < *(a2 + 4));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTags(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) >= 1)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if (*(a2 + 40))
      {
        v5 = 0;
        v6 = (v4 + 4);
        do
        {
          Edge = OpenSubdiv::v3_1_1::Vtr::internal::Level::findEdge(**(a1 + 40), *(v6 - 1), *v6);
          if (Edge == -1)
          {
            snprintf(__str, 0x400uLL, "Edge %d specified to be sharp does not exist (%d, %d)", v5, *(v6 - 1), *v6);
            OpenSubdiv::v3_1_1::Far::Warning("%s", v8, __str);
          }

          else
          {
            *(*(**(a1 + 40) + 216) + 4 * Edge) = *(*(a2 + 40) + 4 * v5);
          }

          ++v5;
          v6 += 2;
        }

        while (v5 < *(a2 + 24));
      }
    }
  }

  if (*(a2 + 48) >= 1 && *(a2 + 56) && *(a2 + 64))
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 56) + 4 * v9);
      if ((v10 & 0x80000000) != 0 || (v11 = **(a1 + 40), v10 >= *(v11 + 8)))
      {
        snprintf(__str, 0x400uLL, "Vertex %d specified to be sharp does not exist", *(*(a2 + 56) + 4 * v9));
        OpenSubdiv::v3_1_1::Far::Warning("%s", v12, __str);
      }

      else
      {
        *(*(v11 + 408) + 4 * v10) = *(*(a2 + 64) + 4 * v9);
      }

      ++v9;
    }

    while (v9 < *(a2 + 48));
  }

  if (*(a2 + 72) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(a2 + 80) + 4 * v13);
      v15 = *(**(a1 + 40) + 96);
      *(v15 + v14) |= 1u;
      *(a1 + 8) |= 2u;
      ++v13;
    }

    while (v13 < *(a2 + 72));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignFaceVaryingTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 92) >= 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::createFVarChannel(**(a1 + 40), **(a2 + 96), (a1 + 4));
  }

  return 1;
}

BOOL OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::allocate(OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer *this, MTLContext *a2)
{
  v3 = [a2->var0 newBufferWithLength:4 * *(this + 1) * *this options:0];
  v4 = v3;
  *(this + 1) = v3;
  if (v3)
  {
    *(this + 16) = 1;
    [v3 setLabel:@"OSD VertexBuffer"];
  }

  return v4 != 0;
}

void *OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer::UpdateData(OpenSubdiv::v3_1_1::Osd::CPUMTLVertexBuffer *this, const float *a2, uint64_t a3, uint64_t a4, MTLContext *a5)
{
  v5 = a4;
  *(this + 16) = 1;
  v8 = ([*(this + 1) contents] + 4 * *this * a3);
  v9 = 4 * *this * v5;

  return memcpy(v8, a2, v9);
}

uint64_t AnimCodec::AnimDecoder::getInfo(uint64_t a1, unint64_t a2, uint64_t *a3, _DWORD *a4, uint64_t a5)
{
  if (a2 < 0x18)
  {
    return 3;
  }

  for (i = 0; i != 4; ++i)
  {
    *a3 = i + 1;
    *(&v26 + i) = *(a1 + i);
  }

  if (v26 != 179426549)
  {
    return 3;
  }

  for (j = 0; j != 4; ++j)
  {
    *a3 = j + 5;
    *(&v26 + j) = *(a1 + 4 + j);
  }

  v7 = 0;
  *a4 = v26;
  *a3 = 9;
  *(a5 + 8) = *(a1 + 8);
  v8 = (*a3)++;
  *(a5 + 9) = *(a1 + v8);
  v9 = *a3;
  v10 = a1 + *a3;
  v11 = *a3 + 1;
  v12 = &v26;
  v13 = 1;
  do
  {
    v14 = v13;
    *a3 = v11 + v7;
    *v12 = *(v10 + v7++);
    v12 = &v25;
    v13 = 0;
  }

  while ((v14 & 1) != 0);
  v15 = 0;
  v16 = v25;
  *(a5 + 10) = v26;
  *(a5 + 11) = v16;
  v17 = -v7;
  do
  {
    *a3 = v9 + v7 + 1 + v15;
    *(&v26 + v15) = *(a1 + v9 + v15 + v7);
    ++v15;
    --v17;
  }

  while (v15 != 4);
  v18 = 0;
  *a5 = v26;
  v19 = -v17;
  do
  {
    *a3 = v9 + v19 + 1;
    v20 = *(a1 + v9 + v19++);
    *(&v26 + v18++) = v20;
  }

  while (v18 != 4);
  *(a5 + 4) = v26;
  v21 = v9 + v19;
  *a3 = v21 + 1;
  v22 = *(v21 + a1);
  *a3 = v21 + 2;
  v23 = *(v21 + a1 + 1);
  *a3 = v21 + 4;
  *(a5 + 12) = v22;
  *(a5 + 16) = v23;
  if (v21 != 20)
  {
    AnimCodec::AnimDecoder::getInfo();
  }

  return 0;
}

uint64_t AnimCodec::AnimDecoder::decompress(AnimCodec::AnimDecoder *this, const unsigned __int8 *a2, unint64_t a3, AnimCodec *a4, int *a5, uint64_t a6, const int *a7, unsigned int a8, unint64_t a9, int *a10)
{
  v28[0] = a2;
  v28[1] = a3;
  v29 = 0;
  v27 = 0;
  Info = AnimCodec::AnimDecoder::getInfo(a2, a3, &v29, &v27, &v30);
  if (!Info)
  {
    if (v32 == 1 && v33 == 0)
    {
      Info = 2;
      if (a6)
      {
        if (a7)
        {
          v18 = v31;
          if (v31)
          {
            if (v30 <= a3 && (v19 = v27, v19 == AnimCodec::ComputeCRC32(v28[0] + 8, (v30 - 8))))
            {
              v26 = 0;
              memset(v25, 0, sizeof(v25));
              memset(&__p, 0, sizeof(__p));
              v21 = AnimCodec::ComputeAdjacencyInfo(a4, a5, a7, a8, a9, v25, v20);
              if (!v21)
              {
                v21 = AnimCodec::ComputeTraversalOrder(v25, &__p);
                if (!v21)
                {
                  v21 = AnimCodec::AnimDecoder::decompress(v21, v25, &__p, v22, a6, v18, v28, a10);
                }
              }

              Info = v21;
              if (__p.__begin_)
              {
                __p.__end_ = __p.__begin_;
                operator delete(__p.__begin_);
              }

              vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(v25);
            }

            else
            {
              return 3;
            }
          }
        }
      }
    }

    else
    {
      return 4;
    }
  }

  return Info;
}

uint64_t AnimCodec::AnimDecoder::decompress(uint64_t a1, AnimCodec::StaticAdjacencyInformation *a2, void *a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a7 + 16);
  v13 = *(a7 + 8) - v12;
  v14 = *a7 + v12;
  v81 = v13;
  v82 = v14;
  AnimCodec::ArithmeticDecoder::start(&v81);
  v63 = a2;
  v15 = *(a2 + 4) - *(a2 + 3);
  v16 = v15 >> 2;
  if ((v15 >> 2) < 1)
  {
    return 2;
  }

  v80 = 0x8000;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  __p = 0;
  v69 = 0;
  v70 = 0;
  std::vector<AnimCodec::ArithmeticContext>::resize(&v77, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v74, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&v71, a5);
  std::vector<AnimCodec::ArithmeticContext>::resize(&__p, 31 * a5);
  memset(&v67, 0, sizeof(v67));
  memset(&v66, 0, sizeof(v66));
  memset(&v65, 0, sizeof(v65));
  std::vector<float>::resize(&v67, a5);
  std::vector<float>::resize(&v66, a5);
  std::vector<float>::resize(&v65, a5);
  if (a6 < 1)
  {
    v56 = 0;
    goto LABEL_47;
  }

  v17 = 0;
  v58 = a6;
  v61 = (v15 >> 2) & 0x7FFFFFFF;
  v62 = 4 * a5;
  v18 = a3;
  do
  {
    v59 = v17;
    v19 = 0;
    v64 = 1;
    do
    {
      v20 = *(*v18 + 4 * v19);
      if (a5 >= 1)
      {
        bzero(v66.__begin_, v62);
      }

      started = AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(v63, v20);
      v22 = AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(v63, v20);
      if (v22 > started)
      {
        v23 = 0;
        v24 = *(v63 + 6);
        begin = v66.__begin_;
        v26 = started;
        while (1)
        {
          v27 = *(v24 + 4 * v26);
          if (v27 < 0)
          {
            break;
          }

          if (v27 >= v16)
          {
            v56 = 2;
            goto LABEL_47;
          }

          if (a5 >= 1)
          {
            v28 = (a8 + 4 * (v27 * a5));
            v29 = a5;
            v30 = begin;
            do
            {
              v31 = *v28++;
              *v30++ += v31;
              --v29;
            }

            while (v29);
          }

          ++v23;
          ++v26;
          if (v23 == v22 - started)
          {
            v23 = v22 - started;
            break;
          }
        }

        if (v23 < 2)
        {
          goto LABEL_20;
        }

        if (a5 < 1)
        {
          v55 = AnimCodec::ArithmeticDecoder::decode(&v81, &v80) != (v64 & 1);
          goto LABEL_40;
        }

        v32 = v66.__begin_;
        v33 = a5;
        do
        {
          *v32 = (*v32 + (v23 >> 1)) / v23;
          ++v32;
          --v33;
        }

        while (v33);
      }

LABEL_20:
      v34 = AnimCodec::ArithmeticDecoder::decode(&v81, &v80);
      v35 = v64 & 1;
      v36 = v34 == v35;
      v37 = v34 != v35;
      if (v36)
      {
        if (a5 < 1)
        {
          v64 = 0;
          goto LABEL_41;
        }

        v64 = v37;
        v38 = 0;
        do
        {
          if (AnimCodec::ArithmeticDecoder::decode(&v81, v71 + v38))
          {
            v39 = AnimCodec::ArithmeticDecoder::decode(&v81, v77 + v38);
            v40 = AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38);
            v41 = v40 + 2 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v40 + 1);
            v42 = v41 + 4 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v41 + 3);
            v43 = v42 + 8 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v42 + 7);
            v44 = v43 + 16 * AnimCodec::ArithmeticDecoder::decode(&v81, __p + 31 * v38 + v43 + 15);
            if (v44 > 30)
            {
              v45 = AnimCodec::ArithmeticDecoder::decodeExpGolomb(&v81, 6, v74 + v38) + 32;
            }

            else
            {
              v45 = v44 + 1;
            }

            if (!v39)
            {
              v45 = -v45;
            }
          }

          else
          {
            v45 = 0;
          }

          v65.__begin_[v38++] = v45;
        }

        while (v38 != a5);
        v18 = a3;
        goto LABEL_34;
      }

      if (a5 >= 1)
      {
        v64 = v37;
        bzero(v65.__begin_, v62);
LABEL_34:
        v46 = v66.__begin_;
        v47 = v65.__begin_;
        v48 = v67.__begin_;
        v49 = 4 * v20 * a5;
        v50 = a5;
        do
        {
          v52 = *v46++;
          v51 = v52;
          v53 = *v47++;
          v54 = v53 + v51;
          *v48++ = v54;
          *(a8 + v49) = v54;
          v49 += 4;
          --v50;
        }

        while (v50);
        goto LABEL_41;
      }

      v55 = 1;
LABEL_40:
      v64 = v55;
LABEL_41:
      ++v19;
    }

    while (v19 != v61);
    v56 = 0;
    v17 = v59 + 1;
    a8 += 4 * v16 * a5;
  }

  while (v59 + 1 != v58);
LABEL_47:
  if (v65.__begin_)
  {
    v65.__end_ = v65.__begin_;
    operator delete(v65.__begin_);
  }

  if (v66.__begin_)
  {
    v66.__end_ = v66.__begin_;
    operator delete(v66.__begin_);
  }

  if (v67.__begin_)
  {
    v67.__end_ = v67.__begin_;
    operator delete(v67.__begin_);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  return v56;
}

void std::vector<AnimCodec::ArithmeticContext>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<AnimCodec::ArithmeticContext>::__append(result, a2 - v2);
  }
}

uint64_t AnimCodec::StaticAdjacencyInformation::neighborsStartIndex(AnimCodec::StaticAdjacencyInformation *this, uint64_t a2)
{
  if (((*(this + 4) - *(this + 3)) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::neighborsStartIndex();
  }

  return *(*this + 4 * a2);
}

uint64_t AnimCodec::StaticAdjacencyInformation::neighborsEndIndex(AnimCodec::StaticAdjacencyInformation *this, uint64_t a2)
{
  v2 = *(this + 3);
  if (((*(this + 4) - v2) >> 2) <= a2)
  {
    AnimCodec::StaticAdjacencyInformation::neighborsEndIndex();
  }

  return (*(v2 + 4 * a2) + *(*this + 4 * a2));
}

BOOL AnimCodec::ArithmeticDecoder::decode(unsigned int *a1, _WORD *a2)
{
  v2 = a1[7];
  v3 = a1[8];
  if (v2 > 0x40000000)
  {
    v10 = a1[7];
  }

  else
  {
    v4 = a1[10];
    do
    {
      v3 *= 2;
      a1[10] = --v4;
      if (!v4)
      {
        v5 = *(a1 + 2);
        *(a1 + 2) = v5 + 1;
        v6 = *a1;
        if (v5 + 1 >= v6)
        {
          v7 = 65280;
        }

        else
        {
          v7 = *(*(a1 + 1) + v5 + 1) << 8;
        }

        v8 = v5 + 2;
        *(a1 + 2) = v8;
        if (v8 >= v6)
        {
          v9 = 255;
        }

        else
        {
          v9 = *(*(a1 + 1) + v8);
        }

        v3 |= v7 | v9;
        v4 = 16;
        a1[10] = 16;
      }

      v10 = 2 * v2;
      v11 = v2 >= 0x20000001;
      v2 *= 2;
    }

    while (!v11);
  }

  v12 = *a2;
  v13 = (HIWORD(v10) * v12) & 0xFFFF0000;
  v14 = (v12 >> 7) & 0x1FE;
  v15 = v10 - v13;
  v16 = v3 >= v13;
  if (v3 >= v13)
  {
    ++v14;
  }

  *a2 = *(a1 + v14 + 24) + v12;
  if (v3 < v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  if (v3 < v13)
  {
    v13 = 0;
  }

  a1[7] = v17;
  a1[8] = v3 - v13;
  return v16;
}