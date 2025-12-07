void sub_1AF39B7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1AF3A1094(va);
  CStackAllocatorPopFrame(a16);
  prof_endFlame();
  _Unwind_Resume(a1);
}

uint64_t sub_1AF39B81C(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v6 + 15;
    if (v12 >= v7 + 496)
    {
      v12 = v7 + 496;
    }

    LODWORD(v13) = v7;
    v14 = v12 - v7;
    if (v12 > v7)
    {
      v13 = v7;
      while ((*(v8 + 2 * v13) & 1) != 0)
      {
        ++v13;
        if (!--v14)
        {
          goto LABEL_31;
        }
      }
    }

    if (v13 != v12)
    {
      *(v8 + 2 * v13) |= 1u;
      if (v13 <= v7 + 14)
      {
        v28 = v13;
        LOBYTE(v19) = v13;
      }

      else
      {
        while (2)
        {
          v15 = v13 - 14;
          if (v13 < 0xF)
          {
            v15 = 0;
          }

          v16 = v15 - 1;
          if (v15 <= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v15;
          }

          v18 = 1;
          while (1)
          {
            v19 = v16 + 1;
            if (v15 <= v19)
            {
              break;
            }

LABEL_25:
            ++v18;
            v16 = v19;
            if (v19 == v17)
            {
              goto LABEL_30;
            }
          }

          v20 = 1 << (v16 - v15 + 2);
          v21 = v18;
          v22 = v15;
          while (1)
          {
            v23 = v22;
            if ((v20 & *(v8 + 2 * v22)) != 0)
            {
              break;
            }

            ++v22;
            LOWORD(v20) = v20 >> 1;
            --v21;
            if (v23 + 1 > v19)
            {
              goto LABEL_25;
            }
          }

          if (v19 >= v13)
          {
LABEL_30:
            *(v8 + 2 * v13) ^= 1u;
            goto LABEL_31;
          }

          v24 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v13) = *(*(a1 + 8) + 8 * v19);
          v25 = (v24 + 32 * v13);
          v26 = v24 + 32 * v19;
          *v25 = *(v24 + 32 * v19);
          v27 = *(v26 + 8);
          v25[2] = 0;
          v25[3] = v25 + 4;
          v25[1] = v27;
          sub_1AF3A25DC((v25 + 1), (v26 + 8));
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v13 - v23 + 1))) ^ (1 << v21);
          LODWORD(v13) = v19;
          v28 = v19;
          if (v19 > v7 + 14)
          {
            continue;
          }

          break;
        }
      }

      v32 = (*(a1 + 16) + 32 * v28);
      *v32 = *a3;
      v32[1] = a3[1];
      v32[2] = 0;
      ++v32;
      v32[2] = v32 + 3;
      result = sub_1AF3A25DC(v32, a3 + 1);
      *(*(a1 + 8) + 8 * v28) = a2;
      v33 = *(a1 + 24);
      *(v33 + 2 * v28) |= 1u;
      *(v33 + 2 * v7) |= 1 << (v19 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_31:
    sub_1AF3A265C(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v29 = (*(a1 + 16) + 32 * v10);
  *v29 = *a3;
  v30 = (v29 + 1);

  return sub_1AF3A25DC(v30, a3 + 1);
}

uint64_t sub_1AF39BAC0(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v5 = *(a1 + 44);
    v6 = (v5 - 1) & a2;
    v7 = *(a1 + 32);
    v8 = *(v7 + 2 * v6);
    if (v8 >= 2)
    {
      break;
    }

LABEL_6:
    v11 = v5 + 15;
    if (v11 >= v6 + 496)
    {
      v11 = v6 + 496;
    }

    LODWORD(v12) = v6;
    v13 = v11 - v6;
    if (v11 > v6)
    {
      v12 = v6;
      while ((*(v7 + 2 * v12) & 1) != 0)
      {
        ++v12;
        if (!--v13)
        {
          goto LABEL_31;
        }
      }
    }

    if (v12 != v11)
    {
      *(v7 + 2 * v12) |= 1u;
      if (v12 <= v6 + 14)
      {
        v25 = v12;
        LOBYTE(v18) = v12;
      }

      else
      {
        while (2)
        {
          v14 = v12 - 14;
          if (v12 < 0xF)
          {
            v14 = 0;
          }

          v15 = v14 - 1;
          if (v14 <= v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = v14;
          }

          v17 = 1;
          while (1)
          {
            v18 = v15 + 1;
            if (v14 <= v18)
            {
              break;
            }

LABEL_25:
            ++v17;
            v15 = v18;
            if (v18 == v16)
            {
              goto LABEL_30;
            }
          }

          v19 = 1 << (v15 - v14 + 2);
          v20 = v17;
          v21 = v14;
          while (1)
          {
            v22 = v21;
            if ((v19 & *(v7 + 2 * v21)) != 0)
            {
              break;
            }

            ++v21;
            LOWORD(v19) = v19 >> 1;
            --v20;
            if (v22 + 1 > v18)
            {
              goto LABEL_25;
            }
          }

          if (v18 >= v12)
          {
LABEL_30:
            *(v7 + 2 * v12) ^= 1u;
            goto LABEL_31;
          }

          v23 = *(a1 + 24);
          *(*(a1 + 16) + 8 * v12) = *(*(a1 + 16) + 8 * v18);
          v24 = (v18 << 8) - 32 * v18;
          sub_1AF3A285C(v23 + 224 * v12, (v23 + v24));
          sub_1AF3A1094(*(a1 + 24) + v24);
          v7 = *(a1 + 32);
          *(v7 + 2 * v22) = (*(v7 + 2 * v22) | (1 << (v12 - v22 + 1))) ^ (1 << v20);
          LODWORD(v12) = v18;
          v25 = v18;
          if (v18 > v6 + 14)
          {
            continue;
          }

          break;
        }
      }

      sub_1AF3A285C(*(a1 + 24) + 224 * v25, a3);
      *(*(a1 + 16) + 8 * v25) = a2;
      v27 = *(a1 + 32);
      *(v27 + 2 * v25) |= 1u;
      result = 1;
      *(v27 + 2 * v6) |= 1 << (v18 - v6 + 1);
      ++*(a1 + 40);
      return result;
    }

LABEL_31:
    sub_1AF3A2788(a1);
  }

  v9 = (v5 - 1) & a2;
  while ((v8 & 2) == 0 || *(*(a1 + 16) + 8 * v9) != a2)
  {
    ++v9;
    v10 = v8 > 3;
    v8 >>= 1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  sub_1AF3A26D0(*(a1 + 24) + 224 * v9, a3);
  return 0;
}

uint64_t CFX::RG::RenderGraphBuilder::tryResolveAmbiguousDependencies(__n128 *a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  prof_beginFlame("tryResolveAmbiguousDependencies", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2337);
  v8 = a1[12].n128_u32[0];
  if (!v8)
  {
    goto LABEL_112;
  }

  v9 = a1[12].n128_u64[1];
  v104 = &v9[v8];
  v108 = a4;
  v106 = *(MEMORY[0x1E69E54E8] + 24);
  v107 = *MEMORY[0x1E69E54E8];
  v109 = a3;
  v101 = a1;
  v102 = a2;
  do
  {
    v10 = *v9;
    CStackAllocatorPushFrame(*a3);
    v11 = 0;
    v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v10) ^ ((0x9DDFEA08EB382D69 * v10) >> 47));
    v13 = *a3;
    v118 = *a3;
    v14 = v12 ^ (v12 >> 47);
    v119 = 0x800000000;
    v120 = &v121;
    do
    {
      v15 = &(&v118)[v11];
      v15[3] = 0;
      *(v15 + 32) = 0;
      v15[5] = 0;
      v11 += 3;
    }

    while (v11 != 24);
    v16 = 0x9DDFEA08EB382D69 * v14;
    v17 = (*(a2 + 44) - 1) & (-348639895 * v14);
    v18 = *(*(a2 + 32) + 2 * v17);
    v105 = v16;
    if (v18 < 2)
    {
LABEL_9:
      v113 = 0;
    }

    else
    {
      while ((v18 & 2) == 0 || v16 != *(*(a2 + 16) + 8 * v17))
      {
        ++v17;
        v19 = v18 > 3;
        v18 >>= 1;
        if (!v19)
        {
          goto LABEL_9;
        }
      }

      v113 = *(a2 + 24) + 224 * v17;
    }

    v112 = v10;
    v114[0] = v13;
    sub_1AF3A28C4(v114, 32);
    v20 = *(v113 + 16);
    if (v20)
    {
      v21 = *(v113 + 24);
      v22 = v21 + 24 * v20;
      do
      {
        if (*(v21 + 8) == 1)
        {
          v23 = *(v21 + 16);
          v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v23) ^ ((0x9DDFEA08EB382D69 * v23) >> 47));
          v25 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
          v140.n128_u64[0] = *v21;
          v140.n128_u64[1] = v23;
          v26 = (v117 - 1) & v25;
          v27 = *(v116 + 2 * v26);
          if (v27 < 2)
          {
            goto LABEL_17;
          }

          while ((v27 & 2) == 0 || v25 != *(v114[1] + 8 * v26))
          {
            ++v26;
            v28 = v27 >= 4;
            v27 >>= 1;
            if (!v28)
            {
              goto LABEL_17;
            }
          }

          if (v115)
          {
            sub_1AF3995BC(v115 + 24 * v26, &v140);
          }

          else
          {
LABEL_17:
            v124 = *a3;
            v125.__locale_ = &v126;
            sub_1AF3995BC(&v124, &v140);
            sub_1AF39C8C8(v114, v25, &v124);
          }
        }

        v21 += 24;
      }

      while (v21 != v22);
    }

    if (v117 == -15)
    {
      goto LABEL_89;
    }

    v29 = v117;
    v103 = v9;
    v110 = 0;
    v30 = 0;
    do
    {
      if ((*(v116 + 2 * v30) & 1) == 0)
      {
        goto LABEL_87;
      }

      v31 = v115 + 24 * v30;
      v32 = *(v31 + 8);
      if (v32 < 2)
      {
        goto LABEL_87;
      }

      v33 = *(v31 + 16);
      v111 = v33[1];
      v145 = *a3;
      v146 = 0;
      v147 = &v148;
      v34 = 16 * v32;
      do
      {
        sub_1AF240F04(&v145, v33);
        v33 += 2;
        v34 -= 16;
      }

      while (v34);
      v140.n128_u64[0] = *a3;
      sub_1AF3A2C74(&v140, 32);
      v134 = *a3;
      sub_1AF3A1EF8(&v134, 32);
      v131 = *a3;
      v132 = 0;
      v133 = &v134;
      if (!v146)
      {
LABEL_69:
        sub_1AF273380(&v124);
        a3 = v109;
        v71 = sub_1AF17C688(&v124, "Ambiguous dependency on pass [", 30);
        v72 = strlen(*(v112 + 24));
        v73 = sub_1AF17C688(v71, *(v112 + 24), v72);
        sub_1AF17C688(v73, "] reading resource written by multiple passes:\n", 47);
        v74 = *(v31 + 8);
        if (v74)
        {
          v75 = *(v31 + 16);
          v76 = 16 * v74;
          do
          {
            v77 = sub_1AF17C688(&v124, "\t<", 2);
            v78 = strlen(*(v75[1] + 8));
            v79 = sub_1AF17C688(v77, *(v75[1] + 8), v78);
            v80 = sub_1AF17C688(v79, "> written by [", 14);
            v81 = MEMORY[0x1B271C520](v80, *v75);
            v82 = sub_1AF17C688(v81, ":", 1);
            v83 = strlen(*(*v75 + 24));
            v84 = sub_1AF17C688(v82, *(*v75 + 24), v83);
            sub_1AF17C688(v84, "]\n", 2);
            v75 += 2;
            v76 -= 16;
          }

          while (v76);
        }

        v85 = sub_1AF17C688(&v124, "Must add explicit dependency on [", 33);
        v86 = strlen(*(v112 + 24));
        v87 = sub_1AF17C688(v85, *(v112 + 24), v86);
        sub_1AF17C688(v87, "]", 1);
        sub_1AF2734EC(&v124, &v122);
        if (*(v108 + 23) < 0)
        {
          operator delete(*v108);
        }

        *v108 = v122;
        *(v108 + 16) = v123;
        v124.n128_u64[0] = v107;
        *(v124.n128_u64 + *(v107 - 24)) = v106;
        v124.n128_u64[1] = MEMORY[0x1E69E5548] + 16;
        if (v129 < 0)
        {
          operator delete(__p);
        }

        v124.n128_u64[1] = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v125);
        std::ostream::~ostream();
        MEMORY[0x1B271C650](&v130);
        v110 = 1;
        goto LABEL_87;
      }

      v35 = v147;
      v36 = &v147[v146];
      while (1)
      {
        v37 = *v35;
        v38 = v144 + 15;
        memset(v140.n128_u64[1], 255, 8 * (v144 + 15));
        bzero(v142, 2 * v38);
        v143 = 0;
        LODWORD(v132) = 0;
        memset(v135, 255, 8 * (v139 + 15));
        bzero(v137, 2 * (v139 + 15));
        v138 = 0;
        if (v146)
        {
          v39 = v147;
          v40 = 8 * v146;
          do
          {
            v41 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v39) ^ ((0x9DDFEA08EB382D69 * *v39) >> 47));
            v124.n128_u8[0] = 0;
            sub_1AF3A2A64(&v134, 0x9DDFEA08EB382D69 * (v41 ^ (v41 >> 47)), &v124);
            ++v39;
            v40 -= 8;
          }

          while (v40);
        }

        v124.n128_u64[0] = v37;
        v124.n128_u32[2] = 0;
        sub_1AF3995BC(&v131, &v124);
        v42 = v132;
        if (!v132)
        {
          if (!v146)
          {
            goto LABEL_69;
          }

          goto LABEL_57;
        }

        do
        {
          v43 = &v133[2 * v42];
          v44 = *(v43 - 2);
          v46 = *(v43 - 2);
          v45 = *(v43 - 1);
          LODWORD(v132) = v42 - 1;
          v47 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v44) ^ ((0x9DDFEA08EB382D69 * v44) >> 47));
          v48 = 0x9DDFEA08EB382D69 * (v47 ^ (v47 >> 47));
          v49 = (v144 - 1) & v48;
          v50 = v142[v49];
          if (v50 < 2)
          {
            goto LABEL_38;
          }

          while ((v50 & 2) == 0 || v48 != *(v140.n128_u64[1] + 8 * v49))
          {
            ++v49;
            v28 = v50 >= 4;
            v50 >>= 1;
            if (!v28)
            {
              goto LABEL_38;
            }
          }

          if (!v141 || v46 > DWORD2(v141[v49]))
          {
LABEL_38:
            v124.n128_u64[0] = v44;
            v124.n128_u64[1] = __PAIR64__(v45, v46);
            sub_1AF3A2D90(&v140, v48, &v124);
          }

          v51 = *(v44 + 328);
          if (v51)
          {
            v52 = *(v44 + 336);
            v53 = &v52[v51];
            v54 = v46 + 1;
            do
            {
              v55 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v52) ^ ((0x9DDFEA08EB382D69 * *v52) >> 47));
              v56 = 0x9DDFEA08EB382D69 * (v55 ^ (v55 >> 47));
              v57 = (v139 - 1) & v56;
              v58 = v137[v57];
              if (v58 >= 2)
              {
                while ((v58 & 2) == 0 || v56 != *(v135 + v57))
                {
                  ++v57;
                  v28 = v58 >= 4;
                  v58 >>= 1;
                  if (!v28)
                  {
                    goto LABEL_48;
                  }
                }

                if (v136)
                {
                  v124.n128_u64[0] = *v52;
                  v124.n128_u32[2] = v54;
                  sub_1AF3995BC(&v131, &v124);
                }
              }

LABEL_48:
              ++v52;
            }

            while (v52 != v53);
          }

          v42 = v132;
        }

        while (v132);
        if (v143 == v146)
        {
          break;
        }

LABEL_57:
        if (++v35 == v36)
        {
          goto LABEL_69;
        }
      }

      if (!v143)
      {
        goto LABEL_69;
      }

      a3 = v109;
      v124 = *v109;
      v60 = v113;
      v59 = &v126;
      v125.__locale_ = &v126;
      v61 = &v126;
      if (v144 != -15)
      {
        v62 = 0;
        v64 = v141;
        v63 = v142;
        v65 = (v144 + 15);
        do
        {
          v66 = *v63++;
          if (v66)
          {
            locale = v125.__locale_;
            if (v62 + 1 > v124.n128_u32[3])
            {
              v68 = ((v124.n128_u32[3] + 1) * 1.5);
              Aligned = CStackAllocatorAllocateAligned(v124.n128_u64[0], 16 * v68, 8, 2);
              memcpy(Aligned, locale, 16 * v124.n128_u32[2]);
              v125.__locale_ = Aligned;
              v124.n128_u32[3] = v68;
              locale = Aligned;
              v62 = v124.n128_u32[2];
            }

            *(locale + v62) = *v64;
            v62 = ++v124.n128_u32[2];
            v60 = v113;
          }

          ++v64;
          --v65;
        }

        while (v65);
        v59 = v125.__locale_;
        v61 = (v125.__locale_ + 16 * v62);
        if (v62)
        {
          v70 = 126 - 2 * __clz(v62);
          a3 = v109;
          goto LABEL_79;
        }

        a3 = v109;
      }

      v70 = 0;
LABEL_79:
      sub_1AF3A302C(v59, v61, v70, 1);
      v88 = *(v60 + 16);
      if (v88)
      {
        v89 = *v125.__locale_;
        v90 = *(v60 + 24);
        v91 = 24 * v88;
        do
        {
          if (v90->n128_u8[8] == 1 && v90[1].n128_u64[0] == v111 && v90->n128_u64[0] != v89)
          {
            sub_1AF39AF4C(&v118, v90);
          }

          v90 = (v90 + 24);
          v91 -= 24;
        }

        while (v91);
      }

      v29 = v117;
LABEL_87:
      ++v30;
    }

    while (v30 < (v29 + 15));
    a1 = v101;
    a2 = v102;
    v9 = v103;
    if (v110)
    {
      CStackAllocatorPopFrame(*a3);
      v99 = 0;
      goto LABEL_114;
    }

LABEL_89:
    if (v119)
    {
      v92 = 0;
      v124 = *a1;
      v125.__locale_ = 0x800000000;
      v126 = v127;
      do
      {
        v93 = &v124 + v92;
        *(v93 + 4) = 0;
        v93[40] = 0;
        *(v93 + 6) = 0;
        v92 += 24;
      }

      while (v92 != 192);
      v94 = *(v113 + 16);
      if (v94)
      {
        v95 = *(v113 + 24);
        v96 = (v95 + 24 * v94);
        do
        {
          if (v119)
          {
            v97 = 24 * v119;
            v98 = v120;
            while (*v98 != v95->n128_u64[0] || *(v98 + 8) != v95->n128_u8[8] || v98[2] != v95[1].n128_u64[0])
            {
              v98 += 3;
              v97 -= 24;
              if (!v97)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            v98 = v120;
          }

          if (v98 == &v120[3 * v119])
          {
LABEL_103:
            sub_1AF399954(&v124, v95);
          }

          v95 = (v95 + 24);
        }

        while (v95 != v96);
      }

      sub_1AF39BAC0(a2, v105, &v124);
      if (HIDWORD(v125.__locale_))
      {
        if (v126 != v127)
        {
          v140.n128_u64[0] = v126;
          if (v124.n128_u64[1])
          {
            sub_1AF234C8C(v124.n128_u64[1], &v140);
          }
        }
      }
    }

    CStackAllocatorPopFrame(*a3);
    ++v9;
  }

  while (v9 != v104);
LABEL_112:
  v99 = 1;
LABEL_114:
  prof_endFlame();
  return v99;
}

void sub_1AF39C848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  sub_1AF3A1094(va);
  CStackAllocatorPopFrame(*v62);
  prof_endFlame();
  _Unwind_Resume(a1);
}

uint64_t sub_1AF39C8C8(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v5 = *(a1 + 36);
    v6 = (v5 - 1) & a2;
    v7 = *(a1 + 24);
    v8 = *(v7 + 2 * v6);
    if (v8 >= 2)
    {
      break;
    }

LABEL_6:
    v11 = v5 + 15;
    if (v11 >= v6 + 496)
    {
      v11 = v6 + 496;
    }

    LODWORD(v12) = v6;
    v13 = v11 - v6;
    if (v11 > v6)
    {
      v12 = v6;
      while ((*(v7 + 2 * v12) & 1) != 0)
      {
        ++v12;
        if (!--v13)
        {
          goto LABEL_31;
        }
      }
    }

    if (v12 != v11)
    {
      *(v7 + 2 * v12) |= 1u;
      if (v12 <= v6 + 14)
      {
        v18 = v12;
      }

      else
      {
        while (2)
        {
          v14 = v12 - 14;
          if (v12 < 0xF)
          {
            v14 = 0;
          }

          v15 = v14 - 1;
          if (v14 <= v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = v14;
          }

          v17 = 1;
          while (1)
          {
            v18 = v15 + 1;
            if (v14 <= v18)
            {
              break;
            }

LABEL_25:
            ++v17;
            v15 = v18;
            if (v18 == v16)
            {
              goto LABEL_30;
            }
          }

          v19 = 1 << (v15 - v14 + 2);
          v20 = v17;
          v21 = v14;
          while (1)
          {
            v22 = v21;
            if ((v19 & *(v7 + 2 * v21)) != 0)
            {
              break;
            }

            ++v21;
            LOWORD(v19) = v19 >> 1;
            --v20;
            if (v22 + 1 > v18)
            {
              goto LABEL_25;
            }
          }

          if (v18 >= v12)
          {
LABEL_30:
            *(v7 + 2 * v12) ^= 1u;
            goto LABEL_31;
          }

          v23 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v12) = *(*(a1 + 8) + 8 * v18);
          v24 = (v23 + 24 * v12);
          v25 = (v23 + 24 * v18);
          *v24 = *v25;
          v24[1] = 0;
          v24[2] = v24 + 3;
          sub_1AF3A2970(v24, v25);
          v7 = *(a1 + 24);
          *(v7 + 2 * v22) = (*(v7 + 2 * v22) | (1 << (v12 - v22 + 1))) ^ (1 << v20);
          LODWORD(v12) = v18;
          if (v18 > v6 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v12) = v18;
      }

      v28 = (*(a1 + 16) + 24 * v18);
      *v28 = *a3;
      v28[1] = 0;
      v28[2] = v28 + 3;
      result = sub_1AF3A2970(v28, a3);
      *(*(a1 + 8) + 8 * v18) = a2;
      v29 = *(a1 + 24);
      *(v29 + 2 * v18) |= 1u;
      *(v29 + 2 * v6) |= 1 << (v12 - v6 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_31:
    sub_1AF3A29F0(a1);
  }

  v9 = (v5 - 1) & a2;
  while ((v8 & 2) == 0 || *(*(a1 + 8) + 8 * v9) != a2)
  {
    ++v9;
    v10 = v8 > 3;
    v8 >>= 1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v26 = *(a1 + 16) + 24 * v9;

  return sub_1AF3A2970(v26, a3);
}

void CFX::RG::RenderGraphBuilder::computeSuccessors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  prof_beginFlame("computeSuccessors", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2496);
  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = *(a1 + 200);
    v8 = &v7[v6];
    do
    {
      v9 = *v7;
      v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v7) ^ ((0x9DDFEA08EB382D69 * *v7) >> 47));
      v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
      v12 = (*(a2 + 44) - 1) & v11;
      v13 = *(*(a2 + 32) + 2 * v12);
      if (v13 >= 2)
      {
        while ((v13 & 2) == 0 || v11 != *(*(a2 + 16) + 8 * v12))
        {
          ++v12;
          v14 = v13 >= 4;
          v13 >>= 1;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

        v15 = *(a2 + 24);
        if (v15)
        {
          v16 = v15 + 224 * v12;
          v17 = *(v16 + 16);
          if (v17)
          {
            v18 = *(v16 + 24);
            v19 = v18 + 24 * v17;
            do
            {
              v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v18) ^ ((0x9DDFEA08EB382D69 * *v18) >> 47));
              v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
              v22 = *(v18 + 8);
              if (v22 == 3)
              {
                v30.n128_u64[0] = v9;
                v30.n128_u8[8] = 3;
                v31 = 0;
                v23 = (*(a3 + 44) - 1) & v21;
                v24 = *(*(a3 + 32) + 2 * v23);
                if (v24 < 2)
                {
LABEL_17:
                  v26 = 0;
                }

                else
                {
                  while ((v24 & 2) == 0 || v21 != *(*(a3 + 16) + 8 * v23))
                  {
                    ++v23;
                    v25 = v24 > 3;
                    v24 >>= 1;
                    if (!v25)
                    {
                      goto LABEL_17;
                    }
                  }

                  v26 = *(a3 + 24) + 224 * v23;
                }

                sub_1AF399954(v26, &v30);
                v22 = *(v18 + 8);
              }

              if (v22 == 1)
              {
                v30.n128_u64[0] = v9;
                v30.n128_u8[8] = 2;
                v31 = *(v18 + 16);
                v27 = (*(a3 + 44) - 1) & v21;
                v28 = *(*(a3 + 32) + 2 * v27);
                if (v28 < 2)
                {
LABEL_24:
                  v29 = 0;
                }

                else
                {
                  while ((v28 & 2) == 0 || v21 != *(*(a3 + 16) + 8 * v27))
                  {
                    ++v27;
                    v25 = v28 > 3;
                    v28 >>= 1;
                    if (!v25)
                    {
                      goto LABEL_24;
                    }
                  }

                  v29 = *(a3 + 24) + 224 * v27;
                }

                sub_1AF399954(v29, &v30);
              }

              v18 += 24;
            }

            while (v18 != v19);
          }
        }
      }

LABEL_7:
      ++v7;
    }

    while (v7 != v8);
  }

  prof_endFlame();
}

void CFX::RG::RenderGraphBuilder::dumpDependencies(uint64_t a1, uint64_t a2)
{
  puts("After cleanup");
  v4 = *(a1 + 192);
  if (v4)
  {
    v5 = *(a1 + 200);
    v6 = v5 + 8 * v4;
    do
    {
      v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v5) ^ ((0x9DDFEA08EB382D69 * *v5) >> 47));
      v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      v9 = (*(a2 + 44) - 1) & v8;
      v10 = *(*(a2 + 32) + 2 * v9);
      if (v10 < 2)
      {
LABEL_7:
        v12 = 0;
      }

      else
      {
        while ((v10 & 2) == 0 || v8 != *(*(a2 + 16) + 8 * v9))
        {
          ++v9;
          v11 = v10 > 3;
          v10 >>= 1;
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        v12 = *(a2 + 24) + 224 * v9;
      }

      printf("Pass [%s]\n", *(*v5 + 24));
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v12 + 24);
        v15 = 24 * v13;
        do
        {
          sub_1AF39CF38(v14, __p);
          if (v18 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          printf("-> %s", v16);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          v14 += 24;
          v15 -= 24;
        }

        while (v15);
      }

      v5 += 8;
    }

    while (v5 != v6);
  }
}

uint64_t sub_1AF39CF38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF273380(&v20);
  v4 = *(a1 + 8);
  if (v4 > 3)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_1E7A7FC58[v4];
  }

  v6 = strlen(v5);
  v7 = sub_1AF17C688(&v20, v5, v6);
  sub_1AF17C688(v7, " ", 1);
  v8 = sub_1AF17C688(&v20, "[", 1);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = "";
  }

  v11 = strlen(v10);
  v12 = sub_1AF17C688(v8, v10, v11);
  sub_1AF17C688(v12, "] ", 2);
  v13 = sub_1AF17C688(&v20, "from ", 6);
  v14 = *(*a1 + 24);
  v15 = strlen(v14);
  v16 = sub_1AF17C688(v13, v14, v15);
  v17 = sub_1AF17C688(v16, " pass", 6);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v25, MEMORY[0x1E69E5318]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v25);
  std::ostream::put();
  std::ostream::flush();
  sub_1AF2734EC(&v20, a2);
  v20 = *MEMORY[0x1E69E54E8];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1B271C650](&v24);
}

void sub_1AF39D1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 56));
  sub_1AF273594(&a9);
  _Unwind_Resume(a1);
}

uint64_t CFX::RG::RenderGraphBuilder::validateTemporal(CFX::RG::RenderGraphBuilder *this, unsigned int **a2)
{
  CStackAllocatorPushFrame(a2[2]);
  v13[0] = a2[2];
  sub_1AF234CC4(v13, 32);
  v4 = *(this + 48);
  if (v4)
  {
    v5 = *(this + 25);
    v6 = v5 + 8 * v4;
    do
    {
      v7 = *(*v5 + 232);
      if (v7)
      {
        v8 = *(*v5 + 240);
        v9 = 8 * v7;
        do
        {
          v10 = *v8;
          if (*(*v8 + 24) == 2 && *(v10 + 25))
          {
            v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v10) ^ ((0x9DDFEA08EB382D69 * v10) >> 47));
            v14 = *v8;
            sub_1AF3A2014(v13, 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47)), &v14);
          }

          ++v8;
          v9 -= 8;
        }

        while (v9);
      }

      v5 += 8;
    }

    while (v5 != v6);
  }

  return CStackAllocatorPopFrame(a2[2]);
}

uint64_t *CFX::RG::RenderGraphBuilder::validateResolve(uint64_t *this, uint64_t **a2)
{
  v2 = *(this + 48);
  if (v2)
  {
    v4 = this[25];
    v5 = v4 + 8 * v2;
    do
    {
      v6 = *v4;
      if (*(*v4 + 408) == 3)
      {
        v7 = *(v6 + 232);
        if (v7)
        {
          for (i = 0; i < v7; ++i)
          {
            v9 = *(*(v6 + 240) + 8 * i);
            this = CFX::RG::Pass::renderTargetInfo(v6, v9);
            if (this)
            {
              v10 = this;
              if ((*this & 4) != 0)
              {
                this = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, v9);
                v7 = *(v6 + 232);
                if (v7)
                {
                  for (j = 0; j < v7; ++j)
                  {
                    v12 = *(v6 + 240);
                    v13 = *(v12 + 8 * j);
                    if (v9 != v13)
                    {
                      this = CFX::RG::Pass::renderTargetInfo(v6, *(v12 + 8 * j));
                      if (this)
                      {
                        if (*(v10 + 4) == *(this + 4) && *(v10 + 2) == *(this + 2))
                        {
                          this = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, v13);
                          v7 = *(v6 + 232);
                        }
                      }
                    }
                  }
                }

                else
                {
                  v7 = 0;
                }
              }
            }
          }
        }
      }

      v4 += 8;
    }

    while (v4 != v5);
  }

  return this;
}

uint64_t *CFX::RG::RenderGraphBuilder::appendResource(uint64_t *this, CFX::RG::Resource *a2)
{
  v2 = this;
  v6 = a2;
  v3 = *a2;
  if (v3 > 2)
  {
    if (v3 == 4)
    {
      *(this + 400) = 1;
      v5 = *(a2 + 23);
      sub_1AF39D4D4(this + 30, &v5);
      v4 = 14;
    }

    else
    {
      if (v3 != 3)
      {
        return this;
      }

      v4 = 6;
    }
  }

  else if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    if (v3 != 2)
    {
      return this;
    }

    v4 = 10;
  }

  return sub_1AF235000(&v2[v4], &v6);
}

uint64_t *sub_1AF39D4D4(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *(result + 4);
  if (v4 + 1 > *(result + 5))
  {
    result = sub_1AF2348E0(result, 1, 0);
    v4 = *(v3 + 4);
  }

  *(v3[3] + 8 * v4) = *a2;
  ++*(v3 + 4);
  return result;
}

void CFX::RG::RenderGraphBuilder::initializeDependencies(__int128 *a1, uint64_t a2)
{
  prof_beginFlame("initializeDependencies", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2664);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 25);
    v6 = &v5[v4];
    do
    {
      v7 = 0;
      v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *v5) ^ ((0x9DDFEA08EB382D69 * *v5) >> 47));
      v11 = *a1;
      v9 = v8 ^ (v8 >> 47);
      v12 = 0x800000000;
      v13 = v14;
      do
      {
        v10 = &v11 + v7;
        *(v10 + 4) = 0;
        v10[40] = 0;
        *(v10 + 6) = 0;
        v7 += 24;
      }

      while (v7 != 192);
      sub_1AF39BAC0(a2, 0x9DDFEA08EB382D69 * v9, &v11);
      if (HIDWORD(v12))
      {
        if (v13 != v14)
        {
          v15 = v13;
          if (*(&v11 + 1))
          {
            sub_1AF234C8C(*(&v11 + 1), &v15);
          }
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  prof_endFlame();
}

void sub_1AF39D654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AF3A1094(&a9);
  prof_endFlame();
  _Unwind_Resume(a1);
}

uint64_t sub_1AF39D66C(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v5 = *(a1 + 36);
    v6 = (v5 - 1) & a2;
    v7 = *(a1 + 24);
    v8 = *(v7 + 2 * v6);
    if (v8 >= 2)
    {
      break;
    }

LABEL_6:
    v11 = v5 + 15;
    if (v11 >= v6 + 496)
    {
      v11 = v6 + 496;
    }

    LODWORD(v12) = v6;
    v13 = v11 - v6;
    if (v11 > v6)
    {
      v12 = v6;
      while ((*(v7 + 2 * v12) & 1) != 0)
      {
        ++v12;
        if (!--v13)
        {
          goto LABEL_31;
        }
      }
    }

    if (v12 != v11)
    {
      *(v7 + 2 * v12) |= 1u;
      if (v12 <= v6 + 14)
      {
        v18 = v12;
      }

      else
      {
        while (2)
        {
          v14 = v12 - 14;
          if (v12 < 0xF)
          {
            v14 = 0;
          }

          v15 = v14 - 1;
          if (v14 <= v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = v14;
          }

          v17 = 1;
          while (1)
          {
            v18 = v15 + 1;
            if (v14 <= v18)
            {
              break;
            }

LABEL_25:
            ++v17;
            v15 = v18;
            if (v18 == v16)
            {
              goto LABEL_30;
            }
          }

          v19 = 1 << (v15 - v14 + 2);
          v20 = v17;
          v21 = v14;
          while (1)
          {
            v22 = v21;
            if ((v19 & *(v7 + 2 * v21)) != 0)
            {
              break;
            }

            ++v21;
            LOWORD(v19) = v19 >> 1;
            --v20;
            if (v22 + 1 > v18)
            {
              goto LABEL_25;
            }
          }

          if (v18 >= v12)
          {
LABEL_30:
            *(v7 + 2 * v12) ^= 1u;
            goto LABEL_31;
          }

          v23 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v12) = *(*(a1 + 8) + 8 * v18);
          v24 = (v23 + 88 * v12);
          v25 = (v23 + 88 * v18);
          *v24 = *v25;
          v24[1] = 0x800000000;
          v24[2] = v24 + 3;
          sub_1AF3A467C(v24, v25);
          v7 = *(a1 + 24);
          *(v7 + 2 * v22) = (*(v7 + 2 * v22) | (1 << (v12 - v22 + 1))) ^ (1 << v20);
          LODWORD(v12) = v18;
          if (v18 > v6 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v12) = v18;
      }

      v27 = (*(a1 + 16) + 88 * v18);
      *v27 = *a3;
      v27[1] = 0x800000000;
      v27[2] = v27 + 3;
      sub_1AF3A467C(v27, a3);
      *(*(a1 + 8) + 8 * v18) = a2;
      v28 = *(a1 + 24);
      *(v28 + 2 * v18) |= 1u;
      result = 1;
      *(v28 + 2 * v6) |= 1 << (v12 - v6 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_31:
    sub_1AF3A4714(a1);
  }

  v9 = (v5 - 1) & a2;
  while ((v8 & 2) == 0 || *(*(a1 + 8) + 8 * v9) != a2)
  {
    ++v9;
    v10 = v8 > 3;
    v8 >>= 1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  sub_1AF3A467C(*(a1 + 16) + 88 * v9, a3);
  return 0;
}

uint64_t CFX::RG::RenderGraph::RenderGraph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 48) = a2;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 80) = a2;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 112) = a2;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = a3;
  *(a1 + 128) = 0;
  *(a1 + 144) = a2;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = a3;
  *(a1 + 160) = 0;
  *(a1 + 176) = a2;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = a3;
  sub_1AF3A146C(a1 + 176, 32);
  *(a1 + 224) = a2;
  *(a1 + 232) = a3;
  sub_1AF3A146C(a1 + 224, 32);
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  *(a1 + 304) = 0;
  return a1;
}

void sub_1AF39D9EC(_Unwind_Exception *a1)
{
  sub_1AF3A1514(v6);
  sub_1AF2624F0(v5);
  sub_1AF2624F0(v4);
  sub_1AF2624F0(v3);
  sub_1AF2624F0(v2);
  sub_1AF2624F0(v1);
  _Unwind_Resume(a1);
}

void CFX::RG::RenderGraph::~RenderGraph(CFX::RG::RenderGraph *this)
{
  if (*(this + 304) == 1)
  {
    v2 = *(this + 40);
    if (v2)
    {
      v3 = *(this + 21);
      v4 = 8 * v2;
      do
      {
        sub_1AF397AB8(*this, *(this + 1), *v3++);
        v4 -= 8;
      }

      while (v4);
    }

    v5 = *(this + 8);
    if (v5)
    {
      v6 = *(this + 5);
      v7 = 8 * v5;
      do
      {
        sub_1AF397B20(*this, *(this + 1), *v6++);
        v7 -= 8;
      }

      while (v7);
    }

    v8 = *(this + 16);
    if (v8)
    {
      v9 = *(this + 9);
      v10 = 8 * v8;
      do
      {
        sub_1AF397B20(*this, *(this + 1), *v9++);
        v10 -= 8;
      }

      while (v10);
    }

    v11 = *(this + 24);
    if (v11)
    {
      v12 = *(this + 13);
      v13 = 8 * v11;
      do
      {
        sub_1AF397B20(*this, *(this + 1), *v12++);
        v13 -= 8;
      }

      while (v13);
    }
  }

  sub_1AF3A15BC(this + 272);
  sub_1AF3A1514(this + 224);
  sub_1AF3A1514(this + 176);
  sub_1AF2624F0(this + 144);
  sub_1AF2624F0(this + 112);
  sub_1AF2624F0(this + 80);
  sub_1AF2624F0(this + 48);
  sub_1AF2624F0(this + 16);
}

void sub_1AF39DB4C(_Unwind_Exception *a1)
{
  sub_1AF3A15BC(v1 + 272);
  sub_1AF3A1514(v1 + 224);
  sub_1AF3A1514(v1 + 176);
  sub_1AF2624F0(v1 + 144);
  sub_1AF2624F0(v1 + 112);
  sub_1AF2624F0(v1 + 80);
  sub_1AF2624F0(v1 + 48);
  sub_1AF2624F0(v1 + 16);
  _Unwind_Resume(a1);
}

void CFX::RG::RenderGraph::execute(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 288);
  if (v4)
  {
    v8 = *(result + 296);
    v14 = v8 + 32 * v4;
    do
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v8 + 24);
        v11 = 8 * v9;
        do
        {
          v12 = *v10;
          v13 = "N/A";
          if ((*(*v10 + 32) & 1) == 0)
          {
            if (v12[3])
            {
              v13 = v12[3];
            }

            else
            {
              v13 = "Unnamed";
            }
          }

          prof_beginFlame(v13, "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2742);
          (*(*v12 + 24))(v12, a2, a3, a4);
          prof_endFlame();
          v10 += 8;
          v11 -= 8;
        }

        while (v11);
      }

      v8 += 32;
    }

    while (v8 != v14);
  }
}

uint64_t *CFX::RG::RenderGraph::log@<X0>(uint64_t *__return_ptr a1@<X8>, CFX::RG::RenderGraph *this@<X0>)
{
  sub_1AF273380(&v77);
  v73 = this;
  v3 = *(this + 72);
  if (v3)
  {
    v4 = 0;
    v5 = *(v73 + 37);
    v68 = v5 + 32 * v3;
    while (1)
    {
      v6 = sub_1AF17C688(&v77, "Stage [", 7);
      v7 = MEMORY[0x1B271C540](v6, v4);
      sub_1AF17C688(v7, "]\n", 2);
      v69 = v4;
      v70 = v5;
      v8 = *(v5 + 16);
      if (v8)
      {
        break;
      }

LABEL_46:
      v4 = (v69 + 1);
      v5 = v70 + 32;
      if (v70 + 32 == v68)
      {
        goto LABEL_47;
      }
    }

    v9 = *(v5 + 24);
    v71 = &v9[v8];
    while (1)
    {
      v10 = *v9;
      v11 = sub_1AF17C688(&v77, "\t[", 2);
      if (*(v10 + 24))
      {
        v12 = *(v10 + 24);
      }

      else
      {
        v12 = "Unamed";
      }

      v13 = strlen(v12);
      v14 = sub_1AF17C688(v11, v12, v13);
      v15 = sub_1AF17C688(v14, "]", 1);
      v16 = sub_1AF17C688(v15, " : ", 3);
      v17 = *(v10 + 408);
      v18 = "Unknown";
      if (v17 <= 4)
      {
        v18 = off_1E7A7FC30[v17];
      }

      v19 = strlen(v18);
      v20 = sub_1AF17C688(v16, v18, v19);
      sub_1AF17C688(v20, "\n", 1);
      v72 = v9;
      v21 = *(v10 + 72);
      if (v21)
      {
        break;
      }

LABEL_19:
      v35 = *(v10 + 232);
      if (v35)
      {
        v36 = *(v10 + 240);
        v37 = 8 * v35;
        do
        {
          v38 = *v36;
          if (*(v10 + 408) == 3)
          {
            v39 = sub_1AF397134(*(v10 + 416), *v36);
          }

          else
          {
            v39 = 0;
          }

          v76 = v39;
          v40 = sub_1AF17C688(&v77, "\t\t writing ", 12);
          v41 = strlen(*(v38 + 8));
          v42 = sub_1AF17C688(v40, *(v38 + 8), v41);
          v43 = sub_1AF17C688(v42, " ", 2);
          sub_1AF39E3B4(&v76, __p);
          if ((v75 & 0x80u) == 0)
          {
            v44 = __p;
          }

          else
          {
            v44 = __p[0];
          }

          if ((v75 & 0x80u) == 0)
          {
            v45 = v75;
          }

          else
          {
            v45 = __p[1];
          }

          v46 = sub_1AF17C688(v43, v44, v45);
          v47 = sub_1AF17C688(v46, "<", 1);
          v48 = MEMORY[0x1B271C520](v47, v38);
          sub_1AF17C688(v48, ">\n", 2);
          if (v75 < 0)
          {
            operator delete(__p[0]);
          }

          ++v36;
          v37 -= 8;
        }

        while (v37);
      }

      if (*(CFX::RG::RenderGraph::successors(v73, v10) + 16))
      {
        sub_1AF17C688(&v77, "\t\t Successors dependencies:\n", 28);
      }

      v49 = CFX::RG::RenderGraph::successors(v73, v10);
      v50 = *(v49 + 16);
      if (v50)
      {
        v51 = *(v49 + 24);
        v52 = &v51[3 * v50];
        do
        {
          v53 = *v51;
          v54 = *(v51 + 8);
          v55 = v51[2];
          v56 = sub_1AF17C688(&v77, "\t\t\t ", 4);
          if (*(v53 + 24))
          {
            v57 = *(v53 + 24);
          }

          else
          {
            v57 = "Unamed";
          }

          v58 = strlen(v57);
          v59 = sub_1AF17C688(v56, v57, v58);
          v60 = sub_1AF17C688(v59, " -> ", 4);
          v61 = "Unknown";
          if (v54 <= 3)
          {
            v61 = off_1E7A7FC58[v54];
          }

          v62 = strlen(v61);
          sub_1AF17C688(v60, v61, v62);
          if (v55)
          {
            v63 = sub_1AF17C688(&v77, " [", 2);
            v64 = strlen(*(v55 + 8));
            v65 = sub_1AF17C688(v63, *(v55 + 8), v64);
            sub_1AF17C688(v65, "]", 1);
          }

          sub_1AF17C688(&v77, "\n", 1);
          v51 += 3;
        }

        while (v51 != v52);
      }

      v9 = v72 + 1;
      if (v72 + 1 == v71)
      {
        goto LABEL_46;
      }
    }

    v22 = *(v10 + 80);
    v23 = &v22[2 * v21];
    while (1)
    {
      v24 = *v22;
      v25 = *(v22 + 8);
      v26 = sub_1AF17C688(&v77, "\t\t reading ", 12);
      v27 = strlen(*(v24 + 8));
      v28 = sub_1AF17C688(v26, *(v24 + 8), v27);
      v29 = sub_1AF17C688(v28, " <", 3);
      v30 = MEMORY[0x1B271C520](v29, v24);
      sub_1AF17C688(v30, ">", 1);
      if (!v25)
      {
        break;
      }

      if (v25 != 1)
      {
        v34 = sub_1AF17C688(&v77, " from frame n - ", 16);
        LOBYTE(__p[0]) = v25;
        v31 = sub_1AF17C688(v34, __p, 1);
        goto LABEL_17;
      }

      v31 = &v77;
      v32 = " from previous frame\n";
      v33 = 21;
LABEL_18:
      sub_1AF17C688(v31, v32, v33);
      v22 += 2;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }

    v31 = &v77;
LABEL_17:
    v32 = "\n";
    v33 = 1;
    goto LABEL_18;
  }

LABEL_47:
  sub_1AF2734EC(&v77, a1);
  v77 = *MEMORY[0x1E69E54E8];
  *(&v77 + *(v77 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v78 = MEMORY[0x1E69E5548] + 16;
  if (v80 < 0)
  {
    operator delete(v79[7].__locale_);
  }

  v78 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v79);
  std::ostream::~ostream();
  return MEMORY[0x1B271C650](&v81);
}

void sub_1AF39E27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a24 = *MEMORY[0x1E69E54E8];
  *(&a24 + *(a24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a25 = MEMORY[0x1E69E5548] + 16;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  a25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a26);
  std::ostream::~ostream();
  MEMORY[0x1B271C650](&a41);
  _Unwind_Resume(a1);
}

int *sub_1AF39E3B4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v3 = result;
    sub_1AF273380(&v5);
    v4 = *v3;
    if (*v3)
    {
      sub_1AF17C688(&v5, " Load", 5);
      v4 = *v3;
    }

    if ((v4 & 2) != 0)
    {
      sub_1AF17C688(&v5, " Clear", 6);
      v4 = *v3;
    }

    if ((v4 & 4) != 0)
    {
      sub_1AF17C688(&v5, " Resolve", 8);
    }

    sub_1AF2734EC(&v5, a2);
    v5 = *MEMORY[0x1E69E54E8];
    *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v6 = MEMORY[0x1E69E5548] + 16;
    if (v8 < 0)
    {
      operator delete(v7[7].__locale_);
    }

    v6 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v7);
    std::ostream::~ostream();
    return MEMORY[0x1B271C650](&v9);
  }

  else
  {
    *(a2 + 23) = 4;
    strcpy(a2, "None");
  }

  return result;
}

void sub_1AF39E570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AF273594(va);
  _Unwind_Resume(a1);
}

uint64_t CFX::RG::RenderGraph::successors(CFX::RG::RenderGraph *this, CFX::RG::Pass *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v3 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  v4 = (*(this + 67) - 1) & v3;
  v5 = *(*(this + 32) + 2 * v4);
  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  while (v3 != *(*(this + 30) + 8 * v4))
  {
    do
    {
LABEL_3:
      v5 >>= 1;
      ++v4;
    }

    while ((v5 & 2) == 0);
  }

  return *(this + 31) + 224 * v4;
}

_DWORD *CFX::RG::RenderGraph::passesReadingResource@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = 0x800000000;
  *(a5 + 16) = a5 + 24;
  v6 = result[40];
  if (v6)
  {
    v9 = *(result + 21);
    v10 = &v9[v6];
    do
    {
      v14 = *v9;
      v11 = *(v14 + 72);
      if (v11)
      {
        v12 = 16 * v11;
        v13 = *(v14 + 80);
        while (*v13 != a2 || *(v13 + 8) != a4)
        {
          v13 += 16;
          v12 -= 16;
          if (!v12)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v13 = *(v14 + 80);
      }

      if (v13 != *(v14 + 80) + 16 * v11)
      {
        result = sub_1AF240F04(a5, &v14);
      }

LABEL_12:
      ++v9;
    }

    while (v9 != v10);
  }

  return result;
}

_DWORD *CFX::RG::RenderGraph::passesWritingResource@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = 0x800000000;
  *(a4 + 16) = a4 + 24;
  v5 = result[40];
  if (v5)
  {
    v7 = *(result + 21);
    v8 = &v7[v5];
    do
    {
      v12 = *v7;
      v9 = *(v12 + 232);
      if (v9)
      {
        v10 = 8 * v9;
        v11 = *(v12 + 240);
        while (*v11 != a2)
        {
          ++v11;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v11 = *(v12 + 240);
      }

      if (v11 != (*(v12 + 240) + 8 * v9))
      {
        result = sub_1AF240F04(a4, &v12);
      }

LABEL_11:
      ++v7;
    }

    while (v7 != v8);
  }

  return result;
}

_DWORD *CFX::RG::RenderGraph::directSuccessorsReadingResource@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = (result[67] - 1) & v8;
  v10 = *(*(result + 32) + 2 * v9);
  if ((v10 & 2) == 0)
  {
    goto LABEL_3;
  }

  while (v8 != *(*(result + 30) + 8 * v9))
  {
    do
    {
LABEL_3:
      v10 >>= 1;
      ++v9;
    }

    while ((v10 & 2) == 0);
  }

  v11 = *(result + 31) + 224 * v9;
  *a5 = a4;
  *(a5 + 8) = 0x800000000;
  *(a5 + 16) = a5 + 24;
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (*(v11 + 24) + 16);
    v14 = 24 * v12;
    do
    {
      v15 = *(v13 - 8);
      if (v15 != 3)
      {
        v17 = *(v13 - 2);
        if (v15 == 2 && *v13 == a3)
        {
          result = sub_1AF39B00C(a5, &v17);
        }
      }

      v13 += 3;
      v14 -= 24;
    }

    while (v14);
  }

  return result;
}

_DWORD *CFX::RG::RenderGraph::directPredecessorsWritingResource@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = (result[55] - 1) & v8;
  v10 = *(*(result + 26) + 2 * v9);
  if ((v10 & 2) == 0)
  {
    goto LABEL_3;
  }

  while (v8 != *(*(result + 24) + 8 * v9))
  {
    do
    {
LABEL_3:
      v10 >>= 1;
      ++v9;
    }

    while ((v10 & 2) == 0);
  }

  v11 = *(result + 25) + 224 * v9;
  *a5 = a4;
  *(a5 + 8) = 0x800000000;
  *(a5 + 16) = a5 + 24;
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (*(v11 + 24) + 16);
    v14 = 24 * v12;
    do
    {
      v15 = *(v13 - 8);
      if (v15 != 3)
      {
        v17 = *(v13 - 2);
        if (v15 == 1 && *v13 == a3)
        {
          result = sub_1AF39B00C(a5, &v17);
        }
      }

      v13 += 3;
      v14 -= 24;
    }

    while (v14);
  }

  return result;
}

uint64_t CFX::RG::RenderGraph::predecessors(CFX::RG::RenderGraph *this, CFX::RG::Pass *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * a2) ^ ((0x9DDFEA08EB382D69 * a2) >> 47));
  v3 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  v4 = (*(this + 55) - 1) & v3;
  v5 = *(*(this + 26) + 2 * v4);
  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  while (v3 != *(*(this + 24) + 8 * v4))
  {
    do
    {
LABEL_3:
      v5 >>= 1;
      ++v4;
    }

    while ((v5 & 2) == 0);
  }

  return *(this + 25) + 224 * v4;
}

void CFX::RG::RenderGraph::resolveResourceDescriptors(const CFX::RG::Resource ***this, CFX::RG::RenderGraphContext *a2)
{
  prof_beginFlame("resolveResourceDescriptors", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraph.mm", 2869);
  CFX::RG::RenderGraphContext::resolveResourcesDescriptorsIfNeeded(a2, this[13], &this[13][*(this + 24)]);
  CFX::RG::RenderGraphContext::resolveResourcesDescriptorsIfNeeded(a2, this[9], &this[9][*(this + 16)]);

  prof_endFlame();
}

uint64_t CFX::RG::RenderGraph::stageIndexForPass(CFX::RG::RenderGraph *this, const CFX::RG::Pass *a2)
{
  v2 = *(this + 72);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *(this + 37);
  v6 = v5 + 32 * v2;
  while (1)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = 8 * v7;
      v9 = *(v5 + 24);
      while (*v9 != a2)
      {
        ++v9;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v9 = *(v5 + 24);
    }

    if (v9 != (*(v5 + 24) + 8 * v7))
    {
      return result;
    }

LABEL_10:
    result = (result + 1);
    v5 += 32;
    if (v5 == v6)
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t *sub_1AF39EB1C(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 408) < *(*v8 + 408))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 408);
      v90 = *(*v8 + 408);
      v91 = *(v87 + 408);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = v8 + 1;
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = v8 + 2;
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = v8 + 2;
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v140 = *(a2 - 1);
      if (*(v140 + 408) < *(v85 + 408))
      {
        *v86 = v140;
        *(a2 - 1) = v85;
        v141 = *v86;
        v142 = *v84;
        v143 = *(v141 + 408);
        if (v143 < *(v142 + 408))
        {
          v8[1] = v141;
          v8[2] = v142;
          v144 = *v8;
          if (v143 < *(*v8 + 408))
          {
            *v8 = v141;
            v8[1] = v144;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_1AF39F4D0(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 408);
            if (v101 < *(v100 + 408))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *(v100 + 408))
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_130;
                }
              }

              v103 = v8;
LABEL_130:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v137 = *v7;
          v136 = v7[1];
          v7 = v94;
          v138 = *(v136 + 408);
          if (v138 < *(v137 + 408))
          {
            v139 = v7;
            do
            {
              *v139 = v137;
              v137 = *(v139 - 2);
              --v139;
            }

            while (v138 < *(v137 + 408));
            *v139 = v136;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 < v9 && *(v109 + 408) < *(v108[1] + 408))
            {
              v109 = v108[1];
              ++v108;
              v107 = 2 * v106 + 2;
            }

            result = &v8[v106];
            v110 = *result;
            v111 = *(*result + 408);
            if (*(v109 + 408) >= v111)
            {
              do
              {
                v112 = v108;
                *result = v109;
                if (v104 < v107)
                {
                  break;
                }

                v113 = (2 * v107) | 1;
                v108 = &v8[v113];
                v114 = 2 * v107 + 2;
                v109 = *v108;
                if (v114 < v9 && *(v109 + 408) < *(v108[1] + 408))
                {
                  v109 = v108[1];
                  ++v108;
                  v113 = v114;
                }

                result = v112;
                v107 = v113;
              }

              while (*(v109 + 408) >= v111);
              *v112 = v110;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v115 = 0;
          v116 = *v8;
          v117 = v8;
          do
          {
            v118 = &v117[v115];
            v119 = v118 + 1;
            v120 = v118[1];
            v121 = (2 * v115) | 1;
            v115 = 2 * v115 + 2;
            if (v115 >= v9)
            {
              v115 = v121;
            }

            else
            {
              v124 = v118[2];
              v122 = v118 + 2;
              v123 = v124;
              result = *(v120 + 408);
              if (result >= *(v124 + 408))
              {
                v115 = v121;
              }

              else
              {
                v120 = v123;
                v119 = v122;
              }
            }

            *v117 = v120;
            v117 = v119;
          }

          while (v115 <= ((v9 - 2) >> 1));
          if (v119 == --a2)
          {
            *v119 = v116;
          }

          else
          {
            *v119 = *a2;
            *a2 = v116;
            v125 = (v119 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v119;
              v132 = *(*v119 + 408);
              if (*(*v129 + 408) < v132)
              {
                do
                {
                  v133 = v129;
                  *v119 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v119 = v133;
                }

                while (*(*v129 + 408) < v132);
                *v133 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 408);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 408);
      v17 = *(*v8 + 408);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 408) < *(*v8 + 408))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 408) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 408);
      v29 = *(v27 + 408);
      v30 = *(a2 - 2);
      v31 = *(v30 + 408);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 408) < *(v32 + 408))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 408) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 408);
      v40 = *(v38 + 408);
      v41 = *(a2 - 3);
      v42 = *(v41 + 408);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 408) < *(v43 + 408))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 408) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 408);
      v48 = *(*v25 + 408);
      v49 = *v35;
      v50 = *(*v35 + 408);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 408);
    v21 = *(*v11 + 408);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 408) < *(*v11 + 408))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 408) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 408);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 408) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 408) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 408) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 408) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 408) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = sub_1AF39F644(v8, v65);
      v8 = v65 + 1;
      result = sub_1AF39F644(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = sub_1AF39EB1C(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 408);
      if (*(*(v8 - 1) + 408) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 408))
      {
        v68 = (v8 + 1);
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v68 += 8;
        }

        while (v53 >= *(*v8 + 408));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 408));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 408));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 408));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 408));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 408);
  v81 = *(*v8 + 408);
  v82 = *(a2 - 1);
  v83 = *(v82 + 408);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v135 = *v8;
      v134 = v8[1];
      if (*(v134 + 408) < *(*v8 + 408))
      {
        *v8 = v134;
        v8[1] = v135;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v145 = *(a2 - 1);
      if (*(v145 + 408) >= v81)
      {
        return result;
      }

      v8[1] = v145;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *sub_1AF39F4D0(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 408);
  v8 = *(*result + 408);
  v9 = *a3;
  v10 = *(*a3 + 408);
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
      if (*(*a2 + 408) < *(*result + 408))
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
    if (*(*a3 + 408) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 408) < *(v5 + 408))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 408) < *(*a2 + 408))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 408) < *(*result + 408))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 408) < *(*a4 + 408))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 408) < *(*a3 + 408))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 408) < *(*a2 + 408))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 408) < *(*result + 408))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_1AF39F644(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 408);
      v8 = *(*a1 + 408);
      v9 = *(a2 - 1);
      v10 = *(v9 + 408);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 408) < *(*a1 + 408))
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
        if (*(v47 + 408) >= v8)
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

      sub_1AF39F4D0(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 408);
    v26 = *(*a1 + 408);
    v27 = *(v23 + 408);
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
        if (*(v42 + 408) < *(v21 + 408))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 408);
          if (v45 < *(v44 + 408))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 408))
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
    if (*(v3 + 408) < *(*a1 + 408))
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
  v15 = *(v13 + 408);
  v16 = *(*a1 + 408);
  v17 = *(v11 + 408);
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
    v38 = *(*v33 + 408);
    if (v38 < *(v37 + 408))
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
        if (v38 >= *(v37 + 408))
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

uint64_t sub_1AF39F92C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 44);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 32);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 24);
          *(*(a1 + 16) + 8 * v14) = *(*(a1 + 16) + 8 * v20);
          v26 = v25 + 12 * v14;
          v27 = (v25 + 12 * v20);
          v28 = *v27;
          *(v26 + 8) = *(v27 + 2);
          *v26 = v28;
          v8 = *(a1 + 32);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      v32 = *(a1 + 24) + 12 * v20;
      v33 = *a3;
      *(v32 + 8) = *(a3 + 2);
      *v32 = v33;
      *(*(a1 + 16) + 8 * v20) = a2;
      v34 = *(a1 + 32);
      *(v34 + 2 * v20) |= 1u;
      result = 1;
      *(v34 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 40);
      return result;
    }

LABEL_32:
    sub_1AF39FB88(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 16) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  v30 = *(a1 + 24) + 12 * v10;
  v31 = *a3;
  *(v30 + 8) = *(a3 + 2);
  *v30 = v31;
  return result;
}

uint64_t *sub_1AF39FB88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 44);
  sub_1AF39FC54(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF39F92C(a1, *v8, v7);
      }

      ++v8;
      v7 = (v7 + 12);
      --v6;
    }

    while (v6);
  }

  v12 = v3;
  result = *(a1 + 8);
  if (result)
  {
    sub_1AF234C8C(result, &v12);
    result = *(a1 + 8);
    v12 = v2;
    if (result)
    {
      sub_1AF234C8C(result, &v12);
      result = *(a1 + 8);
      v12 = v4;
      if (result)
      {
        return sub_1AF234C8C(result, &v12);
      }
    }
  }

  return result;
}

void sub_1AF39FC54(uint64_t a1, int a2)
{
  *(a1 + 40) = 0;
  *(a1 + 44) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 32) = sub_1AF23498C(a1, 2 * (a2 + 15), 4u, 2);
  *(a1 + 16) = sub_1AF23498C(a1, 8 * v3, 8u, 2);
  *(a1 + 24) = sub_1AF23498C(a1, 12 * v3, 4u, 2);
  memset(*(a1 + 16), 255, 8 * v3);
  v5 = *(a1 + 32);

  bzero(v5, v4);
}

void sub_1AF39FCFC(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 16);
  v68 = v4;
  v69 = 0x1000000000;
  v70 = &v71;
  v64 = v4;
  v65 = 0x1000000000;
  v66 = &v67;
  v5 = *v3;
  if (*v3)
  {
    v6 = 0;
    v7 = -1;
    do
    {
      sub_1AF240F04(&v68, (*(v3 + 1) + 8 * (v5 + v7)));
      ++v6;
      v3 = a1[1];
      v5 = *v3;
      --v7;
    }

    while (v6 < *v3);
    v2 = *a1;
    v4 = *(*a1 + 16);
    v8 = v69;
  }

  else
  {
    v8 = 0;
  }

  v61 = 0x1000000000;
  v62 = &v63;
  v57 = *(v2 + 16);
  v58 = 0;
  v59 = &v60;
  v60 = v4;
  v9 = *MEMORY[0x1E69E54E8];
  v10 = *(MEMORY[0x1E69E54E8] + 24);
  while (1)
  {
    LODWORD(v65) = 0;
    if (!v8)
    {
      break;
    }

    v11 = v8;
    do
    {
      v48 = v70[v11 - 1];
      LODWORD(v69) = v11 - 1;
      (*(*v48 + 8))(&v50);
      if (v50)
      {
        v12 = v51;
        while (1)
        {
          v13 = v59;
          if (v58)
          {
            v14 = *v12;
            v15 = WORD1(*v12);
            v16 = 8 * v58;
            v13 = v59;
            while (1)
            {
              v17 = *v13;
              if (v14 == 6893 || *v13 == v14)
              {
                v19 = WORD1(v17) == v15 || v15 == 6893;
                v20 = (v17 ^ *v12) >> 32;
                if (v19 && v20 == 0)
                {
                  break;
                }
              }

              ++v13;
              v16 -= 8;
              if (!v16)
              {
                goto LABEL_34;
              }
            }
          }

          if (&v59[v58] == v13)
          {
            break;
          }

          if (++v12 == (v51 + 8 * v50))
          {
            goto LABEL_29;
          }
        }

LABEL_34:
        sub_1AF240F04(&v64, &v48);
      }

      else
      {
LABEL_29:
        (*(*v48 + 16))(__p);
        if (LODWORD(__p[0]))
        {
          v22 = __p[1];
          v23 = 8 * LODWORD(__p[0]);
          do
          {
            v56 = *v22;
            sub_1AF3A039C(&v57, &v56);
            LOWORD(v55) = v56;
            WORD1(v55) = 9273;
            HIDWORD(v55) = HIDWORD(v56);
            sub_1AF3A039C(&v57, &v55);
            LODWORD(v55) = 607724601;
            HIDWORD(v55) = HIDWORD(v56);
            sub_1AF3A039C(&v57, &v55);
            ++v22;
            v23 -= 8;
          }

          while (v23);
        }

        sub_1AF240F04(&v60, &v48);
        if (HIDWORD(__p[0]))
        {
          free(__p[1]);
        }
      }

      if (HIDWORD(v50))
      {
        free(v51);
      }

      v11 = v69;
    }

    while (v69);
    v24 = v65;
    if (v8 == v65)
    {
      break;
    }

    if (v65)
    {
      v25 = 0;
      v26 = -1;
      do
      {
        sub_1AF240F04(&v68, &v66[v24 + v26]);
        ++v25;
        v24 = v65;
        --v26;
      }

      while (v25 < v65);
    }

    v8 = v69;
    if (!v69)
    {
      v27 = a1[1];
      *v27 = 0;
      if (v61)
      {
        v28 = v62;
        v29 = 8 * v61;
        do
        {
          sub_1AF1576F0(v27, v28++);
          v29 -= 8;
        }

        while (v29);
      }

      return;
    }
  }

  if (*a1[2])
  {
    sub_1AF273380(&v50);
    v44 = v9;
    v45 = v10;
    sub_1AF17C688(&v50, "Unable to resolve graph subgraph:\n", 34);
    if (v65)
    {
      v30 = v66;
      v31 = &v66[v65];
      do
      {
        v32 = *v30;
        v33 = sub_1AF17C688(&v50, "Can't resolve requirements for subgraph: ", 41);
        v34 = strlen(v32[2]);
        v35 = sub_1AF17C688(v33, v32[2], v34);
        sub_1AF17C688(v35, "\n", 1);
        (*(*v32 + 1))(&v48, v32, *a1);
        if (v48)
        {
          v36 = v49;
          v37 = 8 * v48;
          do
          {
            v56 = *v36;
            v38 = sub_1AF17C688(&v50, "\t", 1);
            CFX::RG::ResourceIdentifier::pathName(__p, &v56);
            if (v47 >= 0)
            {
              v39 = __p;
            }

            else
            {
              v39 = __p[0];
            }

            if (v47 >= 0)
            {
              v40 = HIBYTE(v47);
            }

            else
            {
              v40 = __p[1];
            }

            v41 = sub_1AF17C688(v38, v39, v40);
            sub_1AF17C688(v41, "\n", 1);
            if (SHIBYTE(v47) < 0)
            {
              operator delete(__p[0]);
            }

            ++v36;
            v37 -= 8;
          }

          while (v37);
        }

        if (HIDWORD(v48))
        {
          free(v49);
        }

        ++v30;
      }

      while (v30 != v31);
    }

    sub_1AF2734EC(&v50, __p);
    v42 = *a1[2];
    if (*(v42 + 23) < 0)
    {
      operator delete(*v42);
    }

    v43 = *__p;
    *(v42 + 16) = v47;
    *v42 = v43;
    v50 = v44;
    *(&v50 + *(v44 - 24)) = v45;
    v51 = (MEMORY[0x1E69E5548] + 16);
    if (v53 < 0)
    {
      operator delete(v52[7].__locale_);
    }

    v51 = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v52);
    std::ostream::~ostream();
    MEMORY[0x1B271C650](&v54);
  }

  *a1[3] = 0;
}

_DWORD *sub_1AF3A039C(_DWORD *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = 8 * v2;
    for (i = *(result + 2); *i != *a2; ++i)
    {
      v3 -= 8;
      if (!v3)
      {
        return sub_1AF3A03E8(result, a2);
      }
    }
  }

  else
  {
    i = *(result + 2);
  }

  if (i == (*(result + 2) + 8 * v2))
  {
    return sub_1AF3A03E8(result, a2);
  }

  return result;
}

_DWORD *sub_1AF3A03E8(_DWORD *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = CStackAllocatorAllocateAligned(*result, 8 * v7, 8, 2);
    result = memcpy(Aligned, v6, 8 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v7;
    v6 = Aligned;
    v4 = v3[2];
  }

  *(v6 + v4) = *a2;
  ++v3[2];
  return result;
}

void sub_1AF3A0490(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  v5 = malloc_type_malloc(v4, 0xBBD05BDCuLL);
  memset(v5, 255, v4);
  *(a1 + 16) = v5;
  v6 = malloc_type_malloc(8 * v3, 0xBBD05BDCuLL);
  memset(v6, 255, 8 * v3);
  *a1 = v6;
  v7 = malloc_type_malloc(160 * v3, 0xBBD05BDCuLL);
  memset(v7, 255, 160 * v3);
  *(a1 + 8) = v7;
  memset(*a1, 255, 8 * v3);
  v8 = *(a1 + 16);

  bzero(v8, v4);
}

void sub_1AF3A0574(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  v5 = malloc_type_malloc(v4, 0xBBD05BDCuLL);
  memset(v5, 255, v4);
  *(a1 + 16) = v5;
  v6 = malloc_type_malloc(8 * v3, 0xBBD05BDCuLL);
  memset(v6, 255, 8 * v3);
  *a1 = v6;
  v7 = malloc_type_malloc(16 * v3, 0xBBD05BDCuLL);
  memset(v7, 255, 16 * v3);
  *(a1 + 8) = v7;
  memset(*a1, 255, 8 * v3);
  v8 = *(a1 + 16);

  bzero(v8, v4);
}

unsigned int *sub_1AF3A0654(unsigned int *a1)
{
  if (a1[1])
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 0;
      v4 = 8;
      do
      {
        v5 = *(*(a1 + 1) + v4);
        if (v5)
        {
          sub_1AF271A90(v5);
          v2 = *a1;
        }

        ++v3;
        v4 += 16;
      }

      while (v3 < v2);
    }

    free(*(a1 + 1));
  }

  return a1;
}

uint64_t sub_1AF3A06C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1AF3A0718(v2, *(a1 + 16), *(a1 + 28) + 15);
    free(*(a1 + 8));
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

void sub_1AF3A0718(uint64_t a1, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = (a1 + 8);
    do
    {
      v6 = *a2++;
      if (v6)
      {
        if (*(v5 - 1))
        {
          free(*v5);
        }
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

void sub_1AF3A0774(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF140928(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF392C5C(a1, *v8, v7);
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

void sub_1AF3A0824(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF3A0868(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(16 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 16 * v7);
  if (*a1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a1 + 1) + v9;
      *&v8[v9] = *v11;
      *v11 = 0;
      *(v11 + 8) = 0;
      if (v4 != v5)
      {
        v12 = *(*(a1 + 1) + v9 + 8);
        if (v12)
        {
          sub_1AF271A90(v12);
        }
      }

      ++v10;
      v9 += 16;
    }

    while (v10 < *a1);
  }

  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

uint64_t sub_1AF3A0980(uint64_t a1, uint64_t a2, __int128 *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v20);
          v26 = v25 + 24 * v14;
          v27 = (v25 + 24 * v20);
          v28 = *v27;
          *(v26 + 16) = *(v27 + 2);
          *v26 = v28;
          v8 = *(a1 + 16);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      v32 = *(a1 + 8) + 24 * v20;
      v33 = *a3;
      *(v32 + 16) = *(a3 + 2);
      *v32 = v33;
      *(*a1 + 8 * v20) = a2;
      v34 = *(a1 + 16);
      *(v34 + 2 * v20) |= 1u;
      result = 1;
      *(v34 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    sub_1AF3A0BDC(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  v30 = *(a1 + 8) + 24 * v10;
  v31 = *a3;
  *(v30 + 16) = *(a3 + 2);
  *v30 = v31;
  return result;
}

void sub_1AF3A0BDC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF39186C(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF3A0980(a1, *v8, v7);
      }

      ++v8;
      v7 = (v7 + 24);
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_1AF3A0C88(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 8);
          *(*a1 + 8 * v14) = *(*a1 + 8 * v20);
          v26 = (v25 + 160 * v14);
          v27 = (v25 + 160 * v20);
          v28 = v27[5];
          v30 = v27[2];
          v29 = v27[3];
          v26[4] = v27[4];
          v26[5] = v28;
          v26[2] = v30;
          v26[3] = v29;
          v31 = v27[6];
          v32 = v27[7];
          v33 = v27[9];
          v26[8] = v27[8];
          v26[9] = v33;
          v26[6] = v31;
          v26[7] = v32;
          v34 = v27[1];
          *v26 = *v27;
          v26[1] = v34;
          v8 = *(a1 + 16);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      v44 = (*(a1 + 8) + 160 * v20);
      v45 = a3[1];
      *v44 = *a3;
      v44[1] = v45;
      v46 = a3[2];
      v47 = a3[3];
      v48 = a3[5];
      v44[4] = a3[4];
      v44[5] = v48;
      v44[2] = v46;
      v44[3] = v47;
      v49 = a3[6];
      v50 = a3[7];
      v51 = a3[9];
      v44[8] = a3[8];
      v44[9] = v51;
      v44[6] = v49;
      v44[7] = v50;
      *(*a1 + 8 * v20) = a2;
      v52 = *(a1 + 16);
      *(v52 + 2 * v20) |= 1u;
      result = 1;
      *(v52 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_32:
    sub_1AF3A0F2C(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  v36 = (*(a1 + 8) + 160 * v10);
  v37 = a3[1];
  *v36 = *a3;
  v36[1] = v37;
  v38 = a3[2];
  v39 = a3[3];
  v40 = a3[5];
  v36[4] = a3[4];
  v36[5] = v40;
  v36[2] = v38;
  v36[3] = v39;
  v41 = a3[6];
  v42 = a3[7];
  v43 = a3[9];
  v36[8] = a3[8];
  v36[9] = v43;
  v36[6] = v41;
  v36[7] = v42;
  return result;
}

void sub_1AF3A0F2C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF3A0490(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF3A0C88(a1, *v8, v7);
      }

      ++v8;
      v7 += 10;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

void sub_1AF3A0FD8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF3A0574(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF393FD0(a1, *v8, v7);
        if (*(v7 + 1))
        {
          free(*(v7 + 1));
        }
      }

      ++v8;
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

uint64_t sub_1AF3A1094(uint64_t a1)
{
  if (*(a1 + 20))
  {
    if (*(a1 + 24) != a1 + 32)
    {
      v4 = *(a1 + 24);
      v2 = *(a1 + 8);
      if (v2)
      {
        sub_1AF234C8C(v2, &v4);
      }
    }
  }

  return a1;
}

void *sub_1AF3A10EC(void *a1)
{
  if (a1[3])
  {
    v6 = a1[3];
    v2 = a1[1];
    if (v2)
    {
      sub_1AF234C8C(v2, &v6);
    }
  }

  v3 = a1[1];
  v6 = a1[2];
  if (v3)
  {
    sub_1AF234C8C(v3, &v6);
    v4 = a1[1];
    v6 = a1[4];
    if (v4)
    {
      sub_1AF234C8C(v4, &v6);
    }
  }

  return a1;
}

__n128 sub_1AF3A1160(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 + 1 > *(a1 + 20))
  {
    sub_1AF3A11C0(a1, 1, 0);
    v4 = *(a1 + 16);
  }

  result = *a2;
  *(*(a1 + 24) + 16 * v4) = *a2;
  ++*(a1 + 16);
  return result;
}

uint64_t *sub_1AF3A11C0(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 24);
  v5 = (a1 + 32);
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (*(a1 + 20) + a2));
  v8 = sub_1AF23498C(a1, 16 * v7, 8u, 2);
  result = memcpy(v8, v4, 16 * *(a1 + 16));
  *(a1 + 24) = v8;
  *(a1 + 20) = v7;
  if (v4 != v5)
  {
    v10 = v4;
    result = *(a1 + 8);
    if (result)
    {
      return sub_1AF234C8C(result, &v10);
    }
  }

  return result;
}

void sub_1AF3A126C(uint64_t a1, int a2)
{
  *(a1 + 40) = 0;
  *(a1 + 44) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 32) = sub_1AF23498C(a1, 2 * (a2 + 15), 4u, 2);
  *(a1 + 16) = sub_1AF23498C(a1, 8 * v3, 8u, 2);
  *(a1 + 24) = sub_1AF23498C(a1, 24 * v3, 8u, 2);
  memset(*(a1 + 16), 255, 8 * v3);
  v5 = *(a1 + 32);

  bzero(v5, v4);
}

uint64_t *sub_1AF3A1314(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 24);
  v5 = 1.5;
  if (a3)
  {
    v5 = 1.0;
  }

  v6 = (a1 + 32);
  v7 = (v5 * (*(a1 + 20) + a2));
  v8 = sub_1AF23498C(a1, 24 * v7, 8u, 2);
  result = memcpy(v8, v4, 24 * *(a1 + 16));
  *(a1 + 24) = v8;
  *(a1 + 20) = v7;
  if (v4 != v6)
  {
    v10 = v4;
    result = *(a1 + 8);
    if (result)
    {
      return sub_1AF234C8C(result, &v10);
    }
  }

  return result;
}

void sub_1AF3A13C8(uint64_t a1, int a2)
{
  *(a1 + 40) = 0;
  *(a1 + 44) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 32) = sub_1AF23498C(a1, 2 * (a2 + 15), 4u, 2);
  v5 = 8 * v3;
  *(a1 + 16) = sub_1AF23498C(a1, v5, 8u, 2);
  *(a1 + 24) = sub_1AF23498C(a1, v5, 8u, 2);
  memset(*(a1 + 16), 255, v5);
  v6 = *(a1 + 32);

  bzero(v6, v4);
}

void sub_1AF3A146C(uint64_t a1, int a2)
{
  *(a1 + 40) = 0;
  *(a1 + 44) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 32) = sub_1AF23498C(a1, 2 * (a2 + 15), 4u, 2);
  *(a1 + 16) = sub_1AF23498C(a1, 8 * v3, 8u, 2);
  *(a1 + 24) = sub_1AF23498C(a1, 224 * v3, 8u, 2);
  memset(*(a1 + 16), 255, 8 * v3);
  v5 = *(a1 + 32);

  bzero(v5, v4);
}

uint64_t sub_1AF3A1514(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 44);
    v4 = (v3 + 15);
    if (v3 != -15)
    {
      v5 = *(a1 + 32);
      do
      {
        v6 = *v5++;
        if (v6)
        {
          v2 = sub_1AF3A1094(v2);
        }

        v2 += 224;
        --v4;
      }

      while (v4);
      v2 = *(a1 + 24);
    }

    v11 = v2;
    v7 = *(a1 + 8);
    if (v7)
    {
      sub_1AF234C8C(v7, &v11);
    }
  }

  v8 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v8)
  {
    sub_1AF234C8C(v8, &v11);
    v9 = *(a1 + 8);
    v11 = *(a1 + 32);
    if (v9)
    {
      sub_1AF234C8C(v9, &v11);
    }
  }

  return a1;
}

uint64_t sub_1AF3A15BC(uint64_t a1)
{
  if (*(a1 + 20))
  {
    if (*(a1 + 16))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        sub_1AF2624F0(*(a1 + 24) + v2);
        ++v3;
        v2 += 32;
      }

      while (v3 < *(a1 + 16));
    }

    v6 = *(a1 + 24);
    v4 = *(a1 + 8);
    if (v4)
    {
      sub_1AF234C8C(v4, &v6);
    }
  }

  return a1;
}

uint64_t sub_1AF3A1640(uint64_t a1, void *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 20))
    {
      if (*(a1 + 16))
      {
        v4 = 0;
        v5 = 0;
        do
        {
          sub_1AF2624F0(*(a1 + 24) + v4);
          ++v5;
          v4 += 32;
        }

        while (v5 < *(a1 + 16));
      }

      v14 = *(a1 + 24);
      v6 = *(a1 + 8);
      if (v6)
      {
        sub_1AF234C8C(v6, &v14);
      }

      *(a1 + 24) = a1 + 32;
    }

    v7 = a2[2];
    *(a1 + 16) = v7;
    v8 = a2[3];
    if (v8 == a2 + 4)
    {
      if (v7)
      {
        v9 = 0;
        v10 = a1 + 32;
        v11 = a2 + 4;
        do
        {
          *v10 = *v11;
          v12 = v10 + 32;
          *(v10 + 16) = 0;
          *(v10 + 24) = v10 + 32;
          sub_1AF3A1848(v10, v11);
          ++v9;
          v11 += 4;
          v10 = v12;
        }

        while (v9 < *(a1 + 16));
      }
    }

    else
    {
      *(a1 + 24) = v8;
    }

    a2[2] = 0;
    a2[3] = a2 + 4;
  }

  return a1;
}

uint64_t *sub_1AF3A1748(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 24);
  v5 = a1 + 32;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (*(a1 + 20) + a2));
  result = sub_1AF23498C(a1, 32 * v7, 8u, 2);
  v9 = result;
  if (*(a1 + 16))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a1 + 24);
      *result = *(v12 + v10);
      v13 = result + 4;
      result[2] = 0;
      result[3] = (result + 4);
      sub_1AF3A1848(result, (v12 + v10));
      if (v4 != v5)
      {
        sub_1AF2624F0(*(a1 + 24) + v10);
      }

      ++v11;
      v10 += 32;
      result = v13;
    }

    while (v11 < *(a1 + 16));
  }

  *(a1 + 24) = v9;
  *(a1 + 20) = v7;
  if (v4 != v5)
  {
    v14 = v4;
    result = *(a1 + 8);
    if (result)
    {
      return sub_1AF234C8C(result, &v14);
    }
  }

  return result;
}

uint64_t sub_1AF3A1848(uint64_t a1, void *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 20))
    {
      v8 = *(a1 + 24);
      v4 = *(a1 + 8);
      if (v4)
      {
        sub_1AF234C8C(v4, &v8);
      }

      *(a1 + 24) = a1 + 32;
    }

    v5 = a2[2];
    *(a1 + 16) = v5;
    v6 = a2[3];
    if (v6 == a2 + 4)
    {
      memcpy((a1 + 32), a2 + 4, 8 * v5);
    }

    else
    {
      *(a1 + 24) = v6;
    }

    a2[2] = 0;
    a2[3] = a2 + 4;
  }

  return a1;
}

uint64_t sub_1AF3A18E8(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 44);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 32);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 24);
          *(*(a1 + 16) + 8 * v14) = *(*(a1 + 16) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 32);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 24) + 8 * v20) = *a3;
      *(*(a1 + 16) + 8 * v20) = a2;
      v27 = *(a1 + 32);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 40);
      return result;
    }

LABEL_32:
    sub_1AF3A1B04(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 16) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 24) + 8 * v10) = *a3;
  return result;
}

uint64_t *sub_1AF3A1B04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 44);
  sub_1AF3A13C8(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF3A18E8(a1, *v8, v7);
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  v12 = v3;
  result = *(a1 + 8);
  if (result)
  {
    sub_1AF234C8C(result, &v12);
    result = *(a1 + 8);
    v12 = v2;
    if (result)
    {
      sub_1AF234C8C(result, &v12);
      result = *(a1 + 8);
      v12 = v4;
      if (result)
      {
        return sub_1AF234C8C(result, &v12);
      }
    }
  }

  return result;
}

uint64_t sub_1AF3A1BD0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  while (1)
  {
    v6 = *(a1 + 44);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 32);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 24);
          *(*(a1 + 16) + 8 * v14) = *(*(a1 + 16) + 8 * v20);
          v26 = v25 + 24 * v14;
          v27 = (v25 + 24 * v20);
          v28 = *v27;
          *(v26 + 16) = *(v27 + 2);
          *v26 = v28;
          v8 = *(a1 + 32);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      v32 = *(a1 + 24) + 24 * v20;
      v33 = *a3;
      *(v32 + 16) = *(a3 + 2);
      *v32 = v33;
      *(*(a1 + 16) + 8 * v20) = a2;
      v34 = *(a1 + 32);
      *(v34 + 2 * v20) |= 1u;
      result = 1;
      *(v34 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 40);
      return result;
    }

LABEL_32:
    sub_1AF3A1E2C(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 16) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  v30 = *(a1 + 24) + 24 * v10;
  v31 = *a3;
  *(v30 + 16) = *(a3 + 2);
  *v30 = v31;
  return result;
}

uint64_t *sub_1AF3A1E2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 44);
  sub_1AF3A126C(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF3A1BD0(a1, *v8, v7);
      }

      ++v8;
      v7 = (v7 + 24);
      --v6;
    }

    while (v6);
  }

  v12 = v3;
  result = *(a1 + 8);
  if (result)
  {
    sub_1AF234C8C(result, &v12);
    result = *(a1 + 8);
    v12 = v2;
    if (result)
    {
      sub_1AF234C8C(result, &v12);
      result = *(a1 + 8);
      v12 = v4;
      if (result)
      {
        return sub_1AF234C8C(result, &v12);
      }
    }
  }

  return result;
}

void sub_1AF3A1EF8(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = (a2 + 15);
  *(a1 + 24) = CStackAllocatorAllocateAligned(*a1, (2 * v3), 4, 2);
  *(a1 + 8) = CStackAllocatorAllocateAligned(*a1, (8 * v3), 8, 2);
  *(a1 + 16) = CStackAllocatorAllocateAligned(*a1, v3, 1, 2);
  memset(*(a1 + 8), 255, 8 * v3);
  v4 = *(a1 + 24);

  bzero(v4, 2 * v3);
}

void sub_1AF3A1FA0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A1EF8(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF39AD30(a1, *v3, v2);
      }

      ++v3;
      ++v2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1AF3A2014(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3A2230(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void sub_1AF3A2230(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF234CC4(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF3A2014(a1, *v3, v2);
      }

      ++v3;
      ++v2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1AF3A22A4(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3A24C0(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void sub_1AF3A24C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF234CC4(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF3A22A4(a1, *v3, v2);
      }

      ++v3;
      ++v2;
      --v6;
    }

    while (v6);
  }
}

void sub_1AF3A2534(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = CStackAllocatorAllocateAligned(*a1, v4, 4, 2);
  *(a1 + 8) = CStackAllocatorAllocateAligned(*a1, 8 * v3, 8, 2);
  *(a1 + 16) = CStackAllocatorAllocateAligned(*a1, 32 * v3, 8, 2);
  memset(*(a1 + 8), 255, 8 * v3);
  v5 = *(a1 + 24);

  bzero(v5, v4);
}

uint64_t sub_1AF3A25DC(uint64_t a1, void *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 12))
    {
      *(a1 + 16) = a1 + 24;
    }

    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a2[2];
    v6 = a2 + 3;
    if (v5 == a2 + 3)
    {
      memcpy((a1 + 24), a2 + 3, 8 * v4);
    }

    else
    {
      *(a1 + 16) = v5;
    }

    a2[1] = 0;
    a2[2] = v6;
  }

  return a1;
}

void sub_1AF3A265C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A2534(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF39B81C(a1, *v3, v2);
      }

      ++v3;
      v2 += 4;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1AF3A26D0(uint64_t a1, void *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 20) && *(a1 + 24) != a1 + 32)
    {
      v8 = *(a1 + 24);
      v4 = *(a1 + 8);
      if (v4)
      {
        sub_1AF234C8C(v4, &v8);
      }

      *(a1 + 24) = a1 + 32;
    }

    v5 = a2[2];
    *(a1 + 16) = v5;
    v6 = a2[3];
    if (v6 == a2 + 4)
    {
      memcpy((a1 + 32), a2 + 4, 24 * v5);
    }

    else
    {
      *(a1 + 24) = v6;
    }

    a2[2] = 0x800000000;
    a2[3] = a2 + 4;
  }

  return a1;
}

uint64_t *sub_1AF3A2788(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 44);
  sub_1AF3A146C(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF39BAC0(a1, *v8, v7);
        sub_1AF3A1094(v7);
      }

      ++v8;
      v7 += 224;
      --v6;
    }

    while (v6);
  }

  v12 = v3;
  result = *(a1 + 8);
  if (result)
  {
    sub_1AF234C8C(result, &v12);
    result = *(a1 + 8);
    v12 = v2;
    if (result)
    {
      sub_1AF234C8C(result, &v12);
      result = *(a1 + 8);
      v12 = v4;
      if (result)
      {
        return sub_1AF234C8C(result, &v12);
      }
    }
  }

  return result;
}

uint64_t sub_1AF3A285C(uint64_t a1, void *a2)
{
  v3 = 0;
  *a1 = *a2;
  *(a1 + 16) = 0x800000000;
  *(a1 + 24) = a1 + 32;
  do
  {
    v4 = a1 + v3;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    v3 += 24;
  }

  while (v3 != 192);
  sub_1AF3A26D0(a1, a2);
  return a1;
}

void sub_1AF3A28C4(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = CStackAllocatorAllocateAligned(*a1, v4, 4, 2);
  *(a1 + 8) = CStackAllocatorAllocateAligned(*a1, 8 * v3, 8, 2);
  *(a1 + 16) = CStackAllocatorAllocateAligned(*a1, 24 * v3, 8, 2);
  memset(*(a1 + 8), 255, 8 * v3);
  v5 = *(a1 + 24);

  bzero(v5, v4);
}

uint64_t sub_1AF3A2970(uint64_t a1, void *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 12))
    {
      *(a1 + 16) = a1 + 24;
    }

    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a2[2];
    v6 = a2 + 3;
    if (v5 == a2 + 3)
    {
      memcpy((a1 + 24), a2 + 3, 16 * v4);
    }

    else
    {
      *(a1 + 16) = v5;
    }

    a2[1] = 0;
    a2[2] = v6;
  }

  return a1;
}

void sub_1AF3A29F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A28C4(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF39C8C8(a1, *v3, v2);
      }

      ++v3;
      v2 += 3;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1AF3A2A64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      v16 = *(v8 + 2 * v14) | 1;
      *(v8 + 2 * v14) = v16;
      if (v14 <= v7 + 14)
      {
        v30 = v14;
        v27 = *(a1 + 8);
        v28 = *(a1 + 16);
        LOBYTE(v21) = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v17 = v14 - 14;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17 - 1;
          if (v17 <= v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v17;
          }

          v20 = 1;
          while (1)
          {
            v21 = v18 + 1;
            if (v17 <= v21)
            {
              break;
            }

LABEL_26:
            ++v20;
            v18 = v21;
            if (v21 == v19)
            {
              goto LABEL_31;
            }
          }

          v22 = 1 << (v18 - v17 + 2);
          v23 = v20;
          v24 = v17;
          while (1)
          {
            v25 = v24;
            v26 = *(v8 + 2 * v24);
            if ((v22 & v26) != 0)
            {
              break;
            }

            v24 = v25 + 1;
            v22 = v22 >> 1;
            --v23;
            if (v25 + 1 > v21)
            {
              goto LABEL_26;
            }
          }

          if (v21 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v27 = *(a1 + 8);
          v28 = *(a1 + 16);
          *(v27 + 8 * v14) = *(v27 + 8 * v21);
          *(v28 + v14) = *(v28 + v21);
          *(v8 + 2 * v25) = (v26 | (1 << (v14 - v25 + 1))) ^ (1 << v23);
          LODWORD(v14) = v21;
          if (v21 > v7 + 14)
          {
            continue;
          }

          break;
        }

        v16 = *(v8 + 2 * v21) | 1;
        v30 = v21;
      }

      *(v28 + v30) = *a3;
      *(v27 + 8 * v30) = a2;
      *(v8 + 2 * v30) = v16;
      result = 1;
      *(v8 + 2 * v7) |= 1 << (v21 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3A2D1C(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + v10) = *a3;
  return result;
}

void sub_1AF3A2C74(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = CStackAllocatorAllocateAligned(*a1, v4, 4, 2);
  *(a1 + 8) = CStackAllocatorAllocateAligned(*a1, 8 * v3, 8, 2);
  *(a1 + 16) = CStackAllocatorAllocateAligned(*a1, 16 * v3, 8, 2);
  memset(*(a1 + 8), 255, 8 * v3);
  v5 = *(a1 + 24);

  bzero(v5, v4);
}

void sub_1AF3A2D1C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A1EF8(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF3A2A64(a1, *v3, v2);
      }

      ++v3;
      ++v2;
      --v6;
    }

    while (v6);
  }
}

__n128 sub_1AF3A2D90(uint64_t a1, uint64_t a2, __n128 *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 16 * v14) = *(v25 + 16 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      result = *a3;
      *(*(a1 + 16) + 16 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v29 = *(a1 + 24);
      *(v29 + 2 * v20) |= 1u;
      *(v29 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF3A2FB8(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v27 = a3->n128_u64[0];
  v28 = *(a1 + 16) + 16 * v10;
  *(v28 + 8) = a3->n128_u32[2];
  *v28 = v27;
  return result;
}

void sub_1AF3A2FB8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A2C74(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF3A2D90(a1, *v3, v2);
      }

      ++v3;
      ++v2;
      --v6;
    }

    while (v6);
  }
}

__n128 sub_1AF3A302C(__n128 *a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (a2[-1].n128_u32[2] < v11->n128_u32[2])
        {
          result = *v11;
          v157 = *v11;
          v74 = a2[-1].n128_u64[0];
          v11->n128_u32[2] = a2[-1].n128_u32[2];
          v11->n128_u64[0] = v74;
          a2[-1].n128_u32[2] = v157.n128_u32[2];
          a2[-1].n128_u64[0] = v157.n128_u64[0];
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v78 = v11[1].n128_u32[2];
      v79 = v11[2].n128_u32[2];
      if (v78 >= v11->n128_u32[2])
      {
        if (v79 < v78)
        {
          result = v11[1];
          v11[1].n128_u64[0] = v11[2].n128_u64[0];
          v11[1].n128_u32[2] = v11[2].n128_u32[2];
          v11[2].n128_u64[0] = result.n128_u64[0];
          v11[2].n128_u32[2] = result.n128_u32[2];
          if (v11[1].n128_u32[2] < v11->n128_u32[2])
          {
            result = *v11;
            v161 = *v11;
            v11->n128_u64[0] = v11[1].n128_u64[0];
            v11->n128_u32[2] = v11[1].n128_u32[2];
            v11[1].n128_u64[0] = v161.n128_u64[0];
            v11[1].n128_u32[2] = v161.n128_u32[2];
          }
        }
      }

      else
      {
        if (v79 < v78)
        {
          result = *v11;
          v159 = *v11;
          v11->n128_u64[0] = v11[2].n128_u64[0];
          v11->n128_u32[2] = v11[2].n128_u32[2];
          goto LABEL_183;
        }

        result = *v11;
        v163 = *v11;
        v11->n128_u64[0] = v11[1].n128_u64[0];
        v11->n128_u32[2] = v11[1].n128_u32[2];
        v11[1].n128_u64[0] = v163.n128_u64[0];
        v11[1].n128_u32[2] = v163.n128_u32[2];
        if (v79 < v11[1].n128_u32[2])
        {
          result = v11[1];
          v159 = result;
          v11[1].n128_u64[0] = v11[2].n128_u64[0];
          v11[1].n128_u32[2] = v11[2].n128_u32[2];
LABEL_183:
          v11[2].n128_u64[0] = v159.n128_u64[0];
          v11[2].n128_u32[2] = v159.n128_u32[2];
        }
      }

      if (a2[-1].n128_u32[2] >= v11[2].n128_u32[2])
      {
        return result;
      }

      result = v11[2];
      v133 = v8->n128_u64[0];
      v11[2].n128_u32[2] = a2[-1].n128_u32[2];
      v11[2].n128_u64[0] = v133;
      a2[-1].n128_u32[2] = result.n128_u32[2];
      v8->n128_u64[0] = result.n128_u64[0];
      if (v11[2].n128_u32[2] >= v11[1].n128_u32[2])
      {
        return result;
      }

      result = v11[1];
      v11[1].n128_u64[0] = v11[2].n128_u64[0];
      v11[1].n128_u32[2] = v11[2].n128_u32[2];
      v11[2].n128_u64[0] = result.n128_u64[0];
      v11[2].n128_u32[2] = result.n128_u32[2];
LABEL_187:
      if (v11[1].n128_u32[2] < v11->n128_u32[2])
      {
        result = *v11;
        v164 = *v11;
        v11->n128_u64[0] = v11[1].n128_u64[0];
        v11->n128_u32[2] = v11[1].n128_u32[2];
        v11[1].n128_u64[0] = v164.n128_u64[0];
        v11[1].n128_u32[2] = v164.n128_u32[2];
      }

      return result;
    }

    if (v12 == 5)
    {

      result.n128_u64[0] = sub_1AF3A3E6C(v11, v11 + 1, &v11[2], &v11[3], &a2[-1]).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v80 = v11 + 1;
      v82 = v11 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v11;
          do
          {
            v85 = v84[1].n128_u32[2];
            v86 = v84->n128_u32[2];
            v84 = v80;
            if (v85 < v86)
            {
              v87 = v80->n128_u64[0];
              v88 = v83;
              while (1)
              {
                v89 = v11 + v88;
                *(v89 + 2) = *(v11->n128_u64 + v88);
                *(v89 + 6) = *(&v11->n128_u32[2] + v88);
                if (!v88)
                {
                  break;
                }

                v88 -= 16;
                if (v85 >= *(v89 - 2))
                {
                  v90 = &v11[1] + v88;
                  goto LABEL_130;
                }
              }

              v90 = v11;
LABEL_130:
              *v90 = v87;
              *(v90 + 8) = v85;
            }

            v80 = v84 + 1;
            v83 += 16;
          }

          while (&v84[1] != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v127 = a1[1].n128_u32[2];
          v128 = a1->n128_u32[2];
          a1 = v80;
          if (v127 < v128)
          {
            v129 = v80->n128_u64[0];
            do
            {
              v130 = v80;
              v131 = v80[-1].n128_u64[0];
              --v80;
              v130->n128_u64[0] = v131;
              v130->n128_u32[2] = v130[-1].n128_u32[2];
            }

            while (v127 < v130[-2].n128_u32[2]);
            v80->n128_u64[0] = v129;
            v80->n128_u32[2] = v127;
          }

          v80 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v91 = (v12 - 2) >> 1;
        v92 = v91;
        do
        {
          v93 = v92;
          if (v91 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v11[v94];
            if (2 * v93 + 2 < v12)
            {
              v96 = v95->n128_u32[2];
              v97 = v95[1].n128_u32[2];
              v95 += v96 < v97;
              if (v96 < v97)
              {
                v94 = 2 * v93 + 2;
              }
            }

            v98 = &v11[v93];
            v99 = v98->n128_u32[2];
            if (v95->n128_u32[2] >= v99)
            {
              v100 = v98->n128_u64[0];
              do
              {
                v101 = v98;
                v98 = v95;
                v102 = v95->n128_u64[0];
                v101->n128_u32[2] = v98->n128_u32[2];
                v101->n128_u64[0] = v102;
                if (v91 < v94)
                {
                  break;
                }

                v103 = (2 * v94) | 1;
                v95 = &v11[v103];
                v104 = 2 * v94 + 2;
                if (v104 < v12)
                {
                  v105 = v95->n128_u32[2];
                  v106 = v95[1].n128_u32[2];
                  v95 += v105 < v106;
                  if (v105 < v106)
                  {
                    v103 = v104;
                  }
                }

                v94 = v103;
              }

              while (v95->n128_u32[2] >= v99);
              v98->n128_u64[0] = v100;
              v98->n128_u32[2] = v99;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        do
        {
          v107 = 0;
          result = *v11;
          v160 = *v11;
          v108 = v11;
          do
          {
            v109 = &v108[v107];
            v110 = v109 + 1;
            v111 = (2 * v107) | 1;
            v107 = 2 * v107 + 2;
            if (v107 >= v12)
            {
              v107 = v111;
            }

            else
            {
              v112 = v109[1].n128_u32[2];
              v113 = v109[2].n128_u32[2];
              v114 = v109 + 2;
              if (v112 >= v113)
              {
                v107 = v111;
              }

              else
              {
                v110 = v114;
              }
            }

            v115 = v110->n128_u64[0];
            v108->n128_u32[2] = v110->n128_u32[2];
            v108->n128_u64[0] = v115;
            v108 = v110;
          }

          while (v107 <= ((v12 - 2) >> 1));
          if (v110 == --a2)
          {
            v110->n128_u32[2] = v160.n128_u32[2];
            v110->n128_u64[0] = v160.n128_u64[0];
          }

          else
          {
            v116 = a2->n128_u64[0];
            v110->n128_u32[2] = a2->n128_u32[2];
            v110->n128_u64[0] = v116;
            a2->n128_u32[2] = v160.n128_u32[2];
            a2->n128_u64[0] = v160.n128_u64[0];
            v117 = (v110 - v11 + 16) >> 4;
            v118 = v117 < 2;
            v119 = v117 - 2;
            if (!v118)
            {
              v120 = v119 >> 1;
              v121 = &v11[v119 >> 1];
              v122 = v110->n128_u32[2];
              if (v121->n128_u32[2] < v122)
              {
                v123 = v110->n128_u64[0];
                do
                {
                  v124 = v110;
                  v110 = v121;
                  v125 = v121->n128_u64[0];
                  v124->n128_u32[2] = v110->n128_u32[2];
                  v124->n128_u64[0] = v125;
                  if (!v120)
                  {
                    break;
                  }

                  v120 = (v120 - 1) >> 1;
                  v121 = &v11[v120];
                }

                while (v121->n128_u32[2] < v122);
                v110->n128_u64[0] = v123;
                v110->n128_u32[2] = v122;
              }
            }
          }

          v118 = v12-- <= 2;
        }

        while (!v118);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = a2[-1].n128_u32[2];
    if (v12 >= 0x81)
    {
      v15 = v13->n128_u32[2];
      if (v15 >= v11->n128_u32[2])
      {
        if (v14 < v15)
        {
          v136 = *v13;
          v20 = v8->n128_u64[0];
          v13->n128_u32[2] = a2[-1].n128_u32[2];
          v13->n128_u64[0] = v20;
          a2[-1].n128_u32[2] = v136.n128_u32[2];
          v8->n128_u64[0] = v136.n128_u64[0];
          if (v13->n128_u32[2] < v11->n128_u32[2])
          {
            v137 = *v11;
            v21 = v13->n128_u64[0];
            v11->n128_u32[2] = v13->n128_u32[2];
            v11->n128_u64[0] = v21;
            v13->n128_u32[2] = v137.n128_u32[2];
            v13->n128_u64[0] = v137.n128_u64[0];
          }
        }
      }

      else
      {
        if (v14 < v15)
        {
          v134 = *v11;
          v16 = v8->n128_u64[0];
          v11->n128_u32[2] = a2[-1].n128_u32[2];
          v11->n128_u64[0] = v16;
          goto LABEL_26;
        }

        v140 = *v11;
        v24 = v13->n128_u64[0];
        v11->n128_u32[2] = v13->n128_u32[2];
        v11->n128_u64[0] = v24;
        v13->n128_u32[2] = v140.n128_u32[2];
        v13->n128_u64[0] = v140.n128_u64[0];
        if (a2[-1].n128_u32[2] < v140.n128_u32[2])
        {
          v134 = *v13;
          v25 = v8->n128_u64[0];
          v13->n128_u32[2] = a2[-1].n128_u32[2];
          v13->n128_u64[0] = v25;
LABEL_26:
          a2[-1].n128_u32[2] = v134.n128_u32[2];
          v8->n128_u64[0] = v134.n128_u64[0];
        }
      }

      v26 = v13 - 1;
      v27 = v13[-1].n128_u32[2];
      v28 = a2[-2].n128_u32[2];
      if (v27 >= v11[1].n128_u32[2])
      {
        if (v28 < v27)
        {
          v142 = *v26;
          v30 = v9->n128_u64[0];
          v13[-1].n128_u32[2] = a2[-2].n128_u32[2];
          v26->n128_u64[0] = v30;
          a2[-2].n128_u32[2] = v142.n128_u32[2];
          v9->n128_u64[0] = v142.n128_u64[0];
          if (v13[-1].n128_u32[2] < v11[1].n128_u32[2])
          {
            v143 = v11[1];
            v31 = v26->n128_u64[0];
            v11[1].n128_u32[2] = v13[-1].n128_u32[2];
            v11[1].n128_u64[0] = v31;
            v13[-1].n128_u32[2] = v143.n128_u32[2];
            v26->n128_u64[0] = v143.n128_u64[0];
          }
        }
      }

      else
      {
        if (v28 < v27)
        {
          v141 = v11[1];
          v29 = v9->n128_u64[0];
          v11[1].n128_u32[2] = a2[-2].n128_u32[2];
          v11[1].n128_u64[0] = v29;
          goto LABEL_38;
        }

        v145 = v11[1];
        v34 = v26->n128_u64[0];
        v11[1].n128_u32[2] = v13[-1].n128_u32[2];
        v11[1].n128_u64[0] = v34;
        v13[-1].n128_u32[2] = v145.n128_u32[2];
        v26->n128_u64[0] = v145.n128_u64[0];
        if (a2[-2].n128_u32[2] < v145.n128_u32[2])
        {
          v141 = *v26;
          v35 = v9->n128_u64[0];
          v13[-1].n128_u32[2] = a2[-2].n128_u32[2];
          v26->n128_u64[0] = v35;
LABEL_38:
          a2[-2].n128_u32[2] = v141.n128_u32[2];
          v9->n128_u64[0] = v141.n128_u64[0];
        }
      }

      v36 = v13[1].n128_u32[2];
      v37 = a2[-3].n128_u32[2];
      if (v36 >= v11[2].n128_u32[2])
      {
        if (v37 < v36)
        {
          v147 = v13[1];
          v39 = v10->n128_u64[0];
          v13[1].n128_u32[2] = a2[-3].n128_u32[2];
          v13[1].n128_u64[0] = v39;
          a2[-3].n128_u32[2] = v147.n128_u32[2];
          v10->n128_u64[0] = v147.n128_u64[0];
          if (v13[1].n128_u32[2] < v11[2].n128_u32[2])
          {
            v148 = v11[2];
            v40 = v13[1].n128_u64[0];
            v11[2].n128_u32[2] = v13[1].n128_u32[2];
            v11[2].n128_u64[0] = v40;
            v13[1].n128_u32[2] = v148.n128_u32[2];
            v13[1].n128_u64[0] = v148.n128_u64[0];
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v146 = v11[2];
          v38 = v10->n128_u64[0];
          v11[2].n128_u32[2] = a2[-3].n128_u32[2];
          v11[2].n128_u64[0] = v38;
          goto LABEL_47;
        }

        v149 = v11[2];
        v41 = v13[1].n128_u64[0];
        v11[2].n128_u32[2] = v13[1].n128_u32[2];
        v11[2].n128_u64[0] = v41;
        v13[1].n128_u32[2] = v149.n128_u32[2];
        v13[1].n128_u64[0] = v149.n128_u64[0];
        if (a2[-3].n128_u32[2] < v149.n128_u32[2])
        {
          v146 = v13[1];
          v42 = v10->n128_u64[0];
          v13[1].n128_u32[2] = a2[-3].n128_u32[2];
          v13[1].n128_u64[0] = v42;
LABEL_47:
          a2[-3].n128_u32[2] = v146.n128_u32[2];
          v10->n128_u64[0] = v146.n128_u64[0];
        }
      }

      v43 = v13->n128_u32[2];
      v44 = v13[1].n128_u32[2];
      if (v43 >= v13[-1].n128_u32[2])
      {
        if (v44 < v43)
        {
          v151 = *v13;
          v13->n128_u64[0] = v13[1].n128_u64[0];
          v13->n128_u32[2] = v13[1].n128_u32[2];
          v13[1].n128_u64[0] = v151.n128_u64[0];
          v13[1].n128_u32[2] = v151.n128_u32[2];
          if (v13->n128_u32[2] < v13[-1].n128_u32[2])
          {
            v152 = *v26;
            v26->n128_u64[0] = v13->n128_u64[0];
            v13[-1].n128_u32[2] = v13->n128_u32[2];
            v13->n128_u64[0] = v152.n128_u64[0];
            v13->n128_u32[2] = v152.n128_u32[2];
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v150 = *v26;
          v26->n128_u64[0] = v13[1].n128_u64[0];
          v13[-1].n128_u32[2] = v13[1].n128_u32[2];
          goto LABEL_56;
        }

        v153 = *v26;
        v26->n128_u64[0] = v13->n128_u64[0];
        v13[-1].n128_u32[2] = v13->n128_u32[2];
        v13->n128_u64[0] = v153.n128_u64[0];
        v13->n128_u32[2] = v153.n128_u32[2];
        if (v13[1].n128_u32[2] < v13->n128_u32[2])
        {
          v150 = *v13;
          v13->n128_u64[0] = v13[1].n128_u64[0];
          v13->n128_u32[2] = v13[1].n128_u32[2];
LABEL_56:
          v13[1].n128_u64[0] = v150.n128_u64[0];
          v13[1].n128_u32[2] = v150.n128_u32[2];
        }
      }

      result = *v11;
      v154 = *v11;
      v45 = v13->n128_u64[0];
      v11->n128_u32[2] = v13->n128_u32[2];
      v11->n128_u64[0] = v45;
      v13->n128_u32[2] = v154.n128_u32[2];
      v13->n128_u64[0] = v154.n128_u64[0];
      goto LABEL_58;
    }

    v17 = v11->n128_u32[2];
    if (v17 >= v13->n128_u32[2])
    {
      if (v14 < v17)
      {
        result = *v11;
        v138 = *v11;
        v22 = v8->n128_u64[0];
        v11->n128_u32[2] = a2[-1].n128_u32[2];
        v11->n128_u64[0] = v22;
        a2[-1].n128_u32[2] = v138.n128_u32[2];
        v8->n128_u64[0] = v138.n128_u64[0];
        if (v11->n128_u32[2] < v13->n128_u32[2])
        {
          result = *v13;
          v139 = *v13;
          v23 = v11->n128_u64[0];
          v13->n128_u32[2] = v11->n128_u32[2];
          v13->n128_u64[0] = v23;
          v11->n128_u32[2] = v139.n128_u32[2];
          v11->n128_u64[0] = v139.n128_u64[0];
        }
      }

      goto LABEL_58;
    }

    if (v14 < v17)
    {
      result = *v13;
      v135 = *v13;
      v19 = v8->n128_u64[0];
      v13->n128_u32[2] = a2[-1].n128_u32[2];
      v13->n128_u64[0] = v19;
LABEL_35:
      a2[-1].n128_u32[2] = v135.n128_u32[2];
      v8->n128_u64[0] = v135.n128_u64[0];
      goto LABEL_58;
    }

    result = *v13;
    v144 = *v13;
    v32 = v11->n128_u64[0];
    v13->n128_u32[2] = v11->n128_u32[2];
    v13->n128_u64[0] = v32;
    v11->n128_u32[2] = v144.n128_u32[2];
    v11->n128_u64[0] = v144.n128_u64[0];
    if (a2[-1].n128_u32[2] < v144.n128_u32[2])
    {
      result = *v11;
      v135 = *v11;
      v33 = v8->n128_u64[0];
      v11->n128_u32[2] = a2[-1].n128_u32[2];
      v11->n128_u64[0] = v33;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v46 = v11->n128_u32[2];
LABEL_61:
      v47 = 0;
      v48 = v11->n128_u64[0];
      do
      {
        v49 = v11[++v47].n128_u32[2];
      }

      while (v49 < v46);
      v50 = &v11[v47];
      v51 = a2;
      if (v47 == 1)
      {
        v54 = a2;
        while (v50 < v54)
        {
          v52 = v54 - 1;
          v55 = v54[-1].n128_u32[2];
          --v54;
          if (v55 < v46)
          {
            goto LABEL_71;
          }
        }

        v52 = v54;
      }

      else
      {
        do
        {
          v52 = v51 - 1;
          v53 = v51[-1].n128_u32[2];
          --v51;
        }

        while (v53 >= v46);
      }

LABEL_71:
      v11 = v50;
      if (v50 < v52)
      {
        v56 = v52;
        do
        {
          v155 = *v11;
          v57 = *v56;
          v11->n128_u32[2] = *(v56 + 8);
          v11->n128_u64[0] = v57;
          *(v56 + 8) = v155.n128_u32[2];
          *v56 = v155.n128_u64[0];
          do
          {
            v58 = v11[1].n128_u32[2];
            ++v11;
          }

          while (v58 < v46);
          do
          {
            v59 = *(v56 - 8);
            v56 -= 16;
          }

          while (v59 >= v46);
        }

        while (v11 < v56);
      }

      if (&v11[-1] != a1)
      {
        v60 = v11[-1].n128_u64[0];
        a1->n128_u32[2] = v11[-1].n128_u32[2];
        a1->n128_u64[0] = v60;
      }

      v11[-1].n128_u64[0] = v48;
      v11[-1].n128_u32[2] = v46;
      if (v50 < v52)
      {
        goto LABEL_82;
      }

      v61 = sub_1AF3A4104(a1, &v11[-1]);
      if (sub_1AF3A4104(v11, a2))
      {
        a2 = v11 - 1;
        if (!v61)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v61)
      {
LABEL_82:
        result.n128_u64[0] = sub_1AF3A302C(a1, v11 - 1, a3, a4 & 1).n128_u64[0];
        a4 = 0;
      }
    }

    else
    {
      v46 = v11->n128_u32[2];
      if (v11[-1].n128_u32[2] < v46)
      {
        goto LABEL_61;
      }

      if (v46 >= a2[-1].n128_u32[2])
      {
        n128_u64 = v11[1].n128_u64;
        do
        {
          v11 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v65 = *(n128_u64 + 8);
          n128_u64 += 16;
        }

        while (v46 >= v65);
      }

      else
      {
        v62 = v11;
        do
        {
          v11 = v62 + 1;
          v63 = v62[1].n128_u32[2];
          ++v62;
        }

        while (v46 >= v63);
      }

      v66 = a2;
      if (v11 < a2)
      {
        v67 = a2;
        do
        {
          v66 = v67 - 1;
          v68 = v67[-1].n128_u32[2];
          --v67;
        }

        while (v46 < v68);
      }

      v69 = a1->n128_u64[0];
      while (v11 < v66)
      {
        result = *v11;
        v156 = *v11;
        v70 = v66->n128_u64[0];
        v11->n128_u32[2] = v66->n128_u32[2];
        v11->n128_u64[0] = v70;
        v66->n128_u32[2] = v156.n128_u32[2];
        v66->n128_u64[0] = v156.n128_u64[0];
        do
        {
          v71 = v11[1].n128_u32[2];
          ++v11;
        }

        while (v46 >= v71);
        do
        {
          v72 = v66[-1].n128_u32[2];
          --v66;
        }

        while (v46 < v72);
      }

      if (&v11[-1] != a1)
      {
        v73 = v11[-1].n128_u64[0];
        a1->n128_u32[2] = v11[-1].n128_u32[2];
        a1->n128_u64[0] = v73;
      }

      a4 = 0;
      v11[-1].n128_u64[0] = v69;
      v11[-1].n128_u32[2] = v46;
    }
  }

  v75 = v11[1].n128_u32[2];
  v76 = a2[-1].n128_u32[2];
  if (v75 >= v11->n128_u32[2])
  {
    if (v76 >= v75)
    {
      return result;
    }

    result = v11[1];
    v126 = v8->n128_u64[0];
    v11[1].n128_u32[2] = a2[-1].n128_u32[2];
    v11[1].n128_u64[0] = v126;
    a2[-1].n128_u32[2] = result.n128_u32[2];
    v8->n128_u64[0] = result.n128_u64[0];
    goto LABEL_187;
  }

  if (v76 >= v75)
  {
    result = *v11;
    v162 = *v11;
    v11->n128_u64[0] = v11[1].n128_u64[0];
    v11->n128_u32[2] = v11[1].n128_u32[2];
    v11[1].n128_u64[0] = v162.n128_u64[0];
    v11[1].n128_u32[2] = v162.n128_u32[2];
    if (a2[-1].n128_u32[2] >= v11[1].n128_u32[2])
    {
      return result;
    }

    result = v11[1];
    v158 = result;
    v132 = v8->n128_u64[0];
    v11[1].n128_u32[2] = a2[-1].n128_u32[2];
    v11[1].n128_u64[0] = v132;
  }

  else
  {
    result = *v11;
    v158 = *v11;
    v77 = v8->n128_u64[0];
    v11->n128_u32[2] = a2[-1].n128_u32[2];
    v11->n128_u64[0] = v77;
  }

  a2[-1].n128_u32[2] = v158.n128_u32[2];
  v8->n128_u64[0] = v158.n128_u64[0];
  return result;
}

__n128 sub_1AF3A3E6C(__n128 *a1, __n128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2->n128_u32[2];
  v6 = *(a3 + 2);
  if (v5 >= a1->n128_u32[2])
  {
    if (v6 < v5)
    {
      result = *a2;
      v21 = *a2;
      v9 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v9;
      *a3 = v21.n128_u64[0];
      *(a3 + 2) = v21.n128_u32[2];
      if (a2->n128_u32[2] < a1->n128_u32[2])
      {
        result = *a1;
        v22 = *a1;
        v10 = a2->n128_u32[2];
        a1->n128_u64[0] = a2->n128_u64[0];
        a1->n128_u32[2] = v10;
        a2->n128_u64[0] = v22.n128_u64[0];
        a2->n128_u32[2] = v22.n128_u32[2];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      result = *a1;
      v20 = *a1;
      v8 = *(a3 + 2);
      a1->n128_u64[0] = *a3;
      a1->n128_u32[2] = v8;
LABEL_9:
      *a3 = v20.n128_u64[0];
      *(a3 + 2) = v20.n128_u32[2];
      goto LABEL_10;
    }

    result = *a1;
    v23 = *a1;
    v11 = a2->n128_u32[2];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u32[2] = v11;
    a2->n128_u64[0] = v23.n128_u64[0];
    a2->n128_u32[2] = v23.n128_u32[2];
    if (*(a3 + 2) < a2->n128_u32[2])
    {
      result = *a2;
      v20 = *a2;
      v12 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    result = *a3;
    v24 = *a3;
    v13 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v13;
    *a4 = v24;
    *(a4 + 2) = DWORD2(v24);
    if (*(a3 + 2) < a2->n128_u32[2])
    {
      result = *a2;
      v25 = *a2;
      v14 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v14;
      *a3 = v25.n128_u64[0];
      *(a3 + 2) = v25.n128_u32[2];
      if (a2->n128_u32[2] < a1->n128_u32[2])
      {
        result = *a1;
        v26 = *a1;
        v15 = a2->n128_u32[2];
        a1->n128_u64[0] = a2->n128_u64[0];
        a1->n128_u32[2] = v15;
        a2->n128_u64[0] = v26.n128_u64[0];
        a2->n128_u32[2] = v26.n128_u32[2];
      }
    }
  }

  if (*(a5 + 8) < *(a4 + 2))
  {
    result = *a4;
    v27 = *a4;
    v16 = *(a5 + 8);
    *a4 = *a5;
    *(a4 + 2) = v16;
    *a5 = v27;
    *(a5 + 8) = DWORD2(v27);
    if (*(a4 + 2) < *(a3 + 2))
    {
      result = *a3;
      v28 = *a3;
      v17 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v17;
      *a4 = v28;
      *(a4 + 2) = DWORD2(v28);
      if (*(a3 + 2) < a2->n128_u32[2])
      {
        result = *a2;
        v29 = *a2;
        v18 = *(a3 + 2);
        a2->n128_u64[0] = *a3;
        a2->n128_u32[2] = v18;
        *a3 = v29.n128_u64[0];
        *(a3 + 2) = v29.n128_u32[2];
        if (a2->n128_u32[2] < a1->n128_u32[2])
        {
          result = *a1;
          v30 = *a1;
          v19 = a2->n128_u32[2];
          a1->n128_u64[0] = a2->n128_u64[0];
          a1->n128_u32[2] = v19;
          a2->n128_u64[0] = v30.n128_u64[0];
          a2->n128_u32[2] = v30.n128_u32[2];
        }
      }
    }
  }

  return result;
}

BOOL sub_1AF3A4104(uint64_t a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a2 - 2;
      v5 = *(a1 + 24);
      v6 = *(a2 - 2);
      if (v5 < *(a1 + 8))
      {
        if (v6 >= v5)
        {
          v37 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 16) = v37.n128_u64[0];
          *(a1 + 24) = v37.n128_u32[2];
          if (*(a2 - 2) >= *(a1 + 24))
          {
            return 1;
          }

          v29 = *(a1 + 16);
          v16 = *(a2 - 2);
          *(a1 + 16) = *v4;
          *(a1 + 24) = v16;
        }

        else
        {
          v29 = *a1;
          v7 = *(a2 - 2);
          *a1 = *v4;
          *(a1 + 8) = v7;
        }

        *v4 = v29.n128_u64[0];
        *(a2 - 2) = v29.n128_u32[2];
        return 1;
      }

      if (v6 >= v5)
      {
        return 1;
      }

      v32 = *(a1 + 16);
      v15 = *(a2 - 2);
      *(a1 + 16) = *v4;
      *(a1 + 24) = v15;
      *v4 = v32;
      *(a2 - 2) = DWORD2(v32);
LABEL_50:
      if (*(a1 + 24) < *(a1 + 8))
      {
        v42 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 16) = v42.n128_u64[0];
        *(a1 + 24) = v42.n128_u32[2];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_1AF3A3E6C(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 2));
      return 1;
    }

    v12 = *(a1 + 24);
    v13 = *(a1 + 8);
    v14 = *(a1 + 40);
    if (v12 >= v13)
    {
      if (v14 < v12)
      {
        v35 = *(a1 + 16);
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 32) = v35;
        *(a1 + 40) = DWORD2(v35);
        if (*(a1 + 24) < v13)
        {
          v36 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 16) = v36.n128_u64[0];
          *(a1 + 24) = v36.n128_u32[2];
        }
      }

      goto LABEL_47;
    }

    if (v14 >= v12)
    {
      v39 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v39.n128_u64[0];
      *(a1 + 24) = v39.n128_u32[2];
      if (v14 >= *(a1 + 24))
      {
        goto LABEL_47;
      }

      v31 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      v31 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 8) = *(a1 + 40);
    }

    *(a1 + 32) = v31.n128_u64[0];
    *(a1 + 40) = v31.n128_u32[2];
LABEL_47:
    if (*(a2 - 2) >= *(a1 + 40))
    {
      return 1;
    }

    v25 = a2 - 2;
    v40 = *(a1 + 32);
    v26 = *(a2 - 2);
    *(a1 + 32) = *(a2 - 2);
    *(a1 + 40) = v26;
    *v25 = v40;
    *(v25 + 2) = DWORD2(v40);
    if (*(a1 + 40) >= *(a1 + 24))
    {
      return 1;
    }

    v41 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 32) = v41;
    *(a1 + 40) = DWORD2(v41);
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 2) < *(a1 + 8))
    {
      v28 = *a1;
      v3 = *(a2 - 2);
      *a1 = *(a2 - 2);
      *(a1 + 8) = v3;
      *(a2 - 2) = v28.n128_u64[0];
      *(a2 - 2) = v28.n128_u32[2];
    }

    return 1;
  }

LABEL_13:
  v8 = (a1 + 32);
  v9 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = *(a1 + 40);
  if (v9 >= v10)
  {
    if (v11 < v9)
    {
      v33 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = *(a1 + 40);
      *v8 = v33;
      *(a1 + 40) = DWORD2(v33);
      if (*(a1 + 24) < v10)
      {
        v34 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 16) = v34.n128_u64[0];
        *(a1 + 24) = v34.n128_u32[2];
      }
    }
  }

  else
  {
    if (v11 >= v9)
    {
      v38 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 16) = v38.n128_u64[0];
      *(a1 + 24) = v38.n128_u32[2];
      if (v11 >= *(a1 + 24))
      {
        goto LABEL_33;
      }

      v30 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      v30 = *a1;
      *a1 = *v8;
      *(a1 + 8) = *(a1 + 40);
    }

    *v8 = v30.n128_u64[0];
    *(a1 + 40) = v30.n128_u32[2];
  }

LABEL_33:
  v17 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 2);
    if (v20 < *(v8 + 2))
    {
      v21 = *v17;
      v22 = v18;
      while (1)
      {
        v23 = a1 + v22;
        *(v23 + 48) = *(a1 + v22 + 32);
        *(v23 + 56) = *(a1 + v22 + 40);
        if (v22 == -32)
        {
          break;
        }

        v22 -= 16;
        if (v20 >= *(v23 + 24))
        {
          v24 = a1 + v22 + 48;
          goto LABEL_41;
        }
      }

      v24 = a1;
LABEL_41:
      *v24 = v21;
      *(v24 + 8) = v20;
      if (++v19 == 8)
      {
        return v17 + 2 == a2;
      }
    }

    v8 = v17;
    v18 += 16;
    v17 += 2;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

void sub_1AF3A45D0(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = CStackAllocatorAllocateAligned(*a1, v4, 4, 2);
  *(a1 + 8) = CStackAllocatorAllocateAligned(*a1, 8 * v3, 8, 2);
  *(a1 + 16) = CStackAllocatorAllocateAligned(*a1, 88 * v3, 8, 2);
  memset(*(a1 + 8), 255, 8 * v3);
  v5 = *(a1 + 24);

  bzero(v5, v4);
}

uint64_t sub_1AF3A467C(uint64_t a1, void *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 12) && *(a1 + 16) != a1 + 24)
    {
      *(a1 + 16) = a1 + 24;
    }

    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a2[2];
    v6 = a2 + 3;
    if (v5 == a2 + 3)
    {
      memcpy((a1 + 24), a2 + 3, 8 * v4);
    }

    else
    {
      *(a1 + 16) = v5;
    }

    a2[1] = 0x800000000;
    a2[2] = v6;
  }

  return a1;
}

void sub_1AF3A4714(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF3A45D0(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF39D66C(a1, *v3, v2);
      }

      ++v3;
      v2 += 11;
      --v6;
    }

    while (v6);
  }
}

BOOL CFX::RG::isCopyPass(CFX::RG *this, CFX::RG::Pass *a2)
{
  v2 = *(this + 5);
  if ((atomic_load_explicit(byte_1ED73AB00, memory_order_acquire) & 1) == 0)
  {
    v5 = v2;
    sub_1AFDFB658();
    v2 = v5;
  }

  v3 = 0x646F94B6FAFEAA7CLL;
  if (!byte_1ED73AAF8)
  {
    v3 = 0;
  }

  return v2 == v3;
}

__n128 CFX::RG::CopyPass::CopyPass(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73AB00, memory_order_acquire) & 1) == 0)
  {
    v11 = a2;
    v12 = a4;
    v10 = a3;
    sub_1AFDFB658();
    a3 = v10;
    a2 = v11;
    a4 = v12;
  }

  if (byte_1ED73AAF8)
  {
    v7 = 0x646F94B6FAFEAA7CLL;
  }

  else
  {
    v7 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, a4, 0, v7, 0);
  *this = &unk_1F24ED270;
  *(this + 53) = 0;
  result = *a5;
  v9 = *(a5 + 16);
  *(this + 27) = *a5;
  *(this + 28) = v9;
  *(this + 232) = 0;
  *(this + 466) = 0;
  return result;
}

void CFX::RG::CopyPass::execute(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v187 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 465) & 1) == 0 && (*(a1 + 466) & 1) == 0)
  {
    v8 = CFX::GPUResourceManager::gpuDevice(*(a2 + 24));
    v9 = CFXGPUDeviceGetMTLDevice(v8);
    v177 = v9;
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        v10 = *(a1 + 408);
        if (v10 == 4)
        {
          v69 = CFX::RG::Pass::hash(a1);
          v70 = 0x9DDFEA08EB382D69 * (v69 ^ *(a1 + 408));
          v71 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v69 ^ (v70 >> 47) ^ v70)) ^ ((0x9DDFEA08EB382D69 * (v69 ^ (v70 >> 47) ^ v70)) >> 47));
          v72 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v71);
          *(a1 + 424) = v72;
          if (v72)
          {
            goto LABEL_64;
          }

          *(a1 + 424) = sub_1AF3A529C(*(a2 + 32), v71);
          if (*(a1 + 464) != 1)
          {
            goto LABEL_64;
          }

          v73 = CFXGPUDeviceGetFrameworkLibrary(v8);
          if (objc_msgSend_supportsReadWriteTextureCubeArguments(v177, v74, v75))
          {
            v77 = objc_msgSend_newFunctionWithName_(v73, v76, @"texturecube_copy_resample_kernel");
          }

          else
          {
            v77 = objc_msgSend_newFunctionWithName_(v73, v76, @"texturecube_slices_copy_kernel");
          }

          v79 = v77;
          v182 = 0;
          v80 = objc_msgSend_newComputePipelineStateWithFunction_error_(v177, v78, v77, &v182);
          v81 = v182;
          v82 = *(a1 + 424);
          v83 = *(v82 + 24);
          *(v82 + 24) = v80;

          if (!v81)
          {

            goto LABEL_64;
          }

          v166 = objc_msgSend_description(v81, v84, v85);
          v167 = v166;
          v170 = objc_msgSend_UTF8String(v166, v168, v169);
          printf("%s", v170);
        }

        else
        {
          if (v10 != 3)
          {
            goto LABEL_64;
          }

          v11 = CFX::RG::Pass::hash(a1);
          v12 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 432)) + 12);
          v13 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 448));
          v14 = v12 >> 24;
          v15 = *(v13 + 12);
          v16 = 0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 408));
          v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v16 >> 47) ^ v16)) >> 47));
          v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v15)))) ^ ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v15)))) >> 47));
          v19 = (*(v13 + 3) >> 24);
          v20 = 0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v19)));
          v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
          v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v14)))) >> 47));
          v23 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v22);
          *(a1 + 424) = v23;
          if (v23)
          {
            goto LABEL_64;
          }

          *(a1 + 424) = sub_1AF3A529C(*(a2 + 32), v22);
          v24 = CFXGPUDeviceGetFrameworkLibrary(v8);
          v25 = objc_alloc_init(MEMORY[0x1E6974148]);
          v27 = objc_msgSend_newFunctionWithName_(v24, v26, @"vfx_draw_fullscreen_triangle_vertex");
          objc_msgSend_setVertexFunction_(v25, v28, v27);

          if (v14 <= 1)
          {
            v30 = objc_msgSend_newFunctionWithName_(v24, v29, @"vfx_draw_fullscreen_fragment");
          }

          else
          {
            v30 = objc_msgSend_newFunctionWithName_(v24, v29, @"vfx_draw_fullscreen_fragment_ms");
          }

          v32 = v30;
          objc_msgSend_setFragmentFunction_(v25, v31, v30);

          v35 = objc_msgSend_colorAttachments(v25, v33, v34);
          v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0);
          objc_msgSend_setPixelFormat_(v37, v38, v15);

          objc_msgSend_setRasterSampleCount_(v25, v39, v19);
          v183 = 0;
          v41 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v177, v40, v25, &v183);
          v42 = v183;
          v43 = *(a1 + 424);
          v44 = *(v43 + 16);
          *(v43 + 16) = v41;

          if (!v42)
          {

            goto LABEL_64;
          }

          v161 = objc_msgSend_description(v42, v45, v46);
          v162 = v161;
          v165 = objc_msgSend_UTF8String(v161, v163, v164);
          printf("%s", v165);
        }

        abort();
      }

LABEL_64:

      return;
    }

    v47 = *(a2 + 24);
    v48 = *(a1 + 432);
    v49 = CFX::RG::Temporal::currentFrame(v9);
    v50 = CFX::GPUResourceManager::getTexture(v47, v48, v49);
    v51 = *(a2 + 24);
    v52 = *(a1 + 448);
    v173 = v50;
    v53 = CFX::RG::Temporal::currentFrame(v50);
    v56 = CFX::GPUResourceManager::getTexture(v51, v52, v53);
    v57 = *(a1 + 408);
    switch(v57)
    {
      case 4:
        v91 = CFX::RG::ComputePassArguments::encoder((a4 + 8));
        objc_msgSend_setComputePipelineState_(v91, v92, *(*(a1 + 424) + 24));
        v176 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(*(a1 + 424) + 24), v93, v94);
        if (*(a1 + 464) == 1)
        {
          v97 = objc_msgSend_textureType(v50, v95, v96);
          IsArray = VFXMTLTextureTypeIsArray(v97);
          v100 = objc_msgSend_textureType(v56, v98, v99);
          v172 = VFXMTLTextureTypeIsArray(v100);
          v103 = objc_msgSend_textureType(v50, v101, v102);
          ArrayElementType = VFXMTLTextureTypeGetArrayElementType(v103);
          v107 = objc_msgSend_textureType(v56, v105, v106);
          v171 = VFXMTLTextureTypeGetArrayElementType(v107);
          v110 = objc_msgSend_mipmapLevelCount(v50, v108, v109);
          v113 = objc_msgSend_mipmapLevelCount(v56, v111, v112);
          v114 = v110 >= v113 ? v113 : v110;
          v174 = v114;
          if (v114)
          {
            v115 = 0;
            do
            {
              if (VFXMTLTextureTypeIsCube(ArrayElementType))
              {
                v118 = 6;
              }

              else
              {
                v118 = 1;
              }

              v119 = (*(a1 + 440) * v118);
              if (v115)
              {
                v120 = 0;
              }

              else
              {
                v120 = v119 == 0;
              }

              v121 = !v120;
              if ((v121 | IsArray))
              {
                v122 = *(a1 + 460);
                v123 = objc_msgSend_pixelFormat(v50, v116, v117);
                v125 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v50, v124, v123, ArrayElementType, v115, 1, v119, (v122 * v118));
                objc_msgSend_setTexture_atIndex_(v91, v126, v125, 0);

                v50 = v173;
              }

              else
              {
                objc_msgSend_setTexture_atIndex_(v91, v116, v50, 0);
              }

              if (objc_msgSend_supportsReadWriteTextureCubeArguments(v177, v127, v128))
              {
                if (v115 != 0 || v172)
                {
                  v131 = objc_msgSend_pixelFormat(v56, v129, v130);
                  v133 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v56, v132, v131, v171, v115, 1, (6 * *(a1 + 456)), 6);
                  objc_msgSend_setTexture_atIndex_(v91, v134, v133, 1);
                }

                else
                {
                  objc_msgSend_setTexture_atIndex_(v91, v129, v56, 1);
                }

                v153 = objc_msgSend_threadExecutionWidth(*(*(a1 + 424) + 24), v135, v136);
                v156 = objc_msgSend_width(v56, v154, v155);
                v159 = objc_msgSend_height(v56, v157, v158);
                *&v184 = v156;
                *(&v184 + 1) = v159;
                *&v185 = 6;
                v179 = v153;
                v180 = v176 / v153;
                v181 = 1;
                objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v91, v160, &v184, &v179);
              }

              else
              {
                v137 = 0;
                v185 = 0u;
                v186 = 0u;
                v184 = 0u;
                while (v137 != 6)
                {
                  v138 = objc_msgSend_pixelFormat(v56, v129, v130);
                  v140 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v56, v139, v138, 2, v115, 1, (v137 + *(a1 + 456)), 1);
                  v141 = *(&v184 + v137);
                  *(&v184 + v137) = v140;

                  v142 = *(&v184 + v137++);
                  objc_msgSend_setTexture_atIndex_(v91, v143, v142, v137);
                }

                v144 = objc_msgSend_threadExecutionWidth(*(*(a1 + 424) + 24), v129, v130);
                v147 = objc_msgSend_width(v184, v145, v146);
                v150 = objc_msgSend_height(v184, v148, v149);
                v179 = v147;
                v180 = v150;
                v181 = 6;
                v178[0] = v144;
                v178[1] = v176 / v144;
                v178[2] = 1;
                objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v91, v151, &v179, v178);
                for (i = 40; i != -8; i -= 8)
                {
                }
              }

              ++v115;
            }

            while (v115 != v174);
          }
        }

        break;
      case 3:
        v86 = CFX::RG::RenderPassArguments::encoder((a4 + 8));
        objc_msgSend_setRenderPipelineState_(v86, v87, *(*(a1 + 424) + 16));

        v88 = CFX::RG::RenderPassArguments::encoder((a4 + 8));
        objc_msgSend_setFragmentTexture_atIndex_(v88, v89, v50, 0);

        v67 = CFX::RG::RenderPassArguments::encoder((a4 + 8));
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v67, v90, 3, 0, 3);
LABEL_31:

        goto LABEL_64;
      case 2:
        v58 = objc_msgSend_mipmapLevelCount(v50, v54, v55);
        v61 = objc_msgSend_mipmapLevelCount(v56, v59, v60);
        if (v58 >= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = v58;
        }

        v63 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 432));
        IsCube = VFXMTLTextureTypeIsCube((*(v63 + 12) >> 40) & 0xF);
        v65 = CFX::RG::BlitPassArguments::encoder((a4 + 8));
        v67 = v65;
        if (IsCube)
        {
          v68 = 6;
        }

        else
        {
          v68 = 1;
        }

        objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(v65, v66, v50, (*(a1 + 440) * v68), 0, v56, (*(a1 + 456) * v68), 0, (*(a1 + 460) * v68), v62);
        goto LABEL_31;
    }

    goto LABEL_64;
  }
}

void *sub_1AF3A529C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t CFX::RG::CopyPass::init(const CFX::RG::Resource **this, uint64_t **a2)
{
  v4 = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, this[54]);
  v5 = CFX::RG::RenderGraphContext::tryResolvedTextureDescriptor(a2, this[56]);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v8 = *(v4 + 4);
    v9 = *(v4 + 12);
    v10 = *(v5 + 4);
    v11 = *(v5 + 12);
    VFXMTLTextureTypeGetArrayElementType((v9 >> 40) & 0xF);
    VFXMTLTextureTypeGetArrayElementType((v11 >> 40) & 0xF);
    if (VFXMTLTextureTypeIsCube((v9 >> 40) & 0xF))
    {
      IsCube = VFXMTLTextureTypeIsCube((v11 >> 40) & 0xF);
      *(this + 464) = IsCube;
      if (IsCube)
      {
        *(this + 408) = 4;
        v13 = this[54];
        v14 = CFX::RG::Temporal::currentFrame(IsCube);
        CFX::RG::Pass::readFrom(this, v13, v14);
        CFX::RG::Pass::writeTo(this, this[56]);
        return v7;
      }
    }

    else
    {
      *(this + 464) = 0;
    }

    *(this + 408) = 3;
    CFX::RG::Pass::allocInitDependentParams(this);
    v16 = v11 >> 24 < v9 >> 24 && v10 == v8;
    IsDepth = VFXMTLTexturePixelFormatIsDepth(v9);
    v18 = CFX::RG::Resource::textureDesc(this[56]);
    if ((*(v18 + 140) & 1) == 0)
    {
      *(v18 + 140) = 1;
    }

    *(v18 + 136) = 84148994;
    if (v16)
    {
      v19 = IsDepth == 0;
      if (IsDepth)
      {
        v20 = 0x200000001;
      }

      else
      {
        v20 = 0x100000001;
      }

      if (IsDepth)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      if (v19)
      {
        v22 = 0x100000004;
      }

      else
      {
        v22 = 0x200000004;
      }

      CFX::RG::Pass::renderTo(this, this[54], v20, v21);
      CFX::RG::Pass::renderTo(this, this[56], v22, v21);
      *(this + 465) = 1;
    }

    else
    {
      v23 = VFXMTLTexturePixelFormatIsDepth(v11);
      v24 = v23;
      *(this + 466) = v23;
      v25 = this[54];
      v26 = CFX::RG::Temporal::currentFrame(v23);
      CFX::RG::Pass::readFrom(this, v25, v26);
      if (v24)
      {
        v27 = 0x200000000;
      }

      else
      {
        v27 = 0x100000000;
      }

      if (v24)
      {
        v28 = -1;
      }

      else
      {
        v28 = 0;
      }

      CFX::RG::Pass::renderTo(this, this[56], v27, v28);
    }
  }

  return v7;
}

uint64_t sub_1AF3A5538(uint64_t *a1, uint64_t *a2, _OWORD *a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF3A626C(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

CFX::RG::Pass *CFX::RG::makeCopyPass(CFX::RG::RenderGraphContext *a1, uint64_t a2, _OWORD *a3)
{
  v8 = a2;
  v5 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  v6 = sub_1AF3A5538(v5, &v8, a3);
  CFX::RG::Pass::triggerInit(v6, a1);
  return v6;
}

CFX::RG::RenderGraphBuilder *CFX::RG::copyIfNeeded_r(CFX::RG *this, CFX::RG::RenderGraphBuilder *a2, CFX::RG::Resource *a3, CFX::RG::Pass *a4, const CFX::RG::TextureDescriptorReference *a5, const char *a6)
{
  if (CFX::RG::Resource::isReference(a2))
  {
    goto LABEL_27;
  }

  v11 = CFX::RG::Resource::textureDesc(a2);
  *&v38 = CFX::RG::TextureDescriptorReference::baseReference(v11);
  v48 = CFX::RG::TextureDescriptorReference::baseReference(a4);
  if (!CFX::RG::ResourceIdentifier::operator==(&v38, &v48))
  {
    goto LABEL_27;
  }

  v12 = CFX::RG::Resource::constTextureDesc(a2);
  v13 = *(v12 + 2);
  v14 = *(a4 + 2);
  if (v13 == v14 && *(v12 + 2))
  {
    v13 = *v12;
    v14 = *a4;
  }

  if (v13 != v14)
  {
    goto LABEL_27;
  }

  v15 = CFX::RG::Resource::constTextureDesc(a2);
  v16 = *(v15 + 6);
  v17 = *(a4 + 6);
  if (v16 == v17 && *(v15 + 6))
  {
    v16 = *(v15 + 4);
    v17 = *(a4 + 2);
  }

  if (v16 != v17)
  {
    goto LABEL_27;
  }

  v18 = CFX::RG::Resource::constTextureDesc(a2);
  v19 = *(v18 + 32);
  v20 = *(a4 + 32);
  if (v19 == v20 && *(v18 + 32))
  {
    if (*(v18 + 24) != *(a4 + 3))
    {
      goto LABEL_27;
    }

LABEL_16:
    if (*(CFX::RG::Resource::constTextureDesc(a2) + 144) != *(a4 + 36))
    {
      goto LABEL_27;
    }

    v21 = CFX::RG::Resource::constTextureDesc(a2);
    v22 = *(v21 + 19) ? *(v21 + 18) : 1;
    v23 = *(a4 + 19) ? *(a4 + 18) : 1;
    if (v22 != v23)
    {
      goto LABEL_27;
    }

    v24 = CFX::RG::Resource::constTextureDesc(a2);
    v25 = *(v24 + 48);
    v26 = *(a4 + 48);
    if (v25 == v26 && *(v24 + 48))
    {
      if (*(v24 + 40) != *(a4 + 5))
      {
        goto LABEL_27;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_27;
    }

    return a2;
  }

  if (v19 == v20)
  {
    goto LABEL_16;
  }

LABEL_27:
  v27 = CFX::RG::Resource::name(a2);
  v28 = *(a4 + 7);
  v44 = *(a4 + 6);
  v45 = v28;
  v29 = *(a4 + 9);
  v46 = *(a4 + 8);
  v47 = v29;
  v30 = *(a4 + 3);
  v40 = *(a4 + 2);
  v41 = v30;
  v31 = *(a4 + 5);
  v42 = *(a4 + 4);
  v43 = v31;
  v32 = *(a4 + 1);
  v38 = *a4;
  v39 = v32;
  v33 = sub_1AF233CC8(this, v27, &v38);
  v34 = v33;
  v35 = "Resource copy";
  if (a5)
  {
    v35 = a5;
  }

  *&v38 = a2;
  DWORD2(v38) = 0;
  *&v39 = v33;
  *(&v39 + 1) = 0x100000000;
  v48 = v35;
  v36 = sub_1AF3A5538(this, &v48, &v38);
  if (a3)
  {
    CFX::RG::Pass::dependsOn(v36, a3);
  }

  return v34;
}

BOOL CFX::RG::isAggregatePass(CFX::RG *this, CFX::RG::Pass *a2)
{
  v2 = *(this + 5);
  if ((atomic_load_explicit(byte_1ED73AB10, memory_order_acquire) & 1) == 0)
  {
    v4 = v2;
    sub_1AFDFB6A4();
    v2 = v4;
  }

  return v2 == qword_1ED73AB08;
}

CFX::RG::Pass *CFX::RG::AggregatePass::AggregatePass(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if ((atomic_load_explicit(byte_1ED73AB10, memory_order_acquire) & 1) == 0)
  {
    v14 = a7;
    v12 = a3;
    v13 = a2;
    sub_1AFDFB6A4();
    a3 = v12;
    a2 = v13;
    a7 = v14;
  }

  CFX::RG::Pass::Pass(this, a2, a3, "", a7, qword_1ED73AB08, a6);
  *this = &unk_1F24ED2A8;
  *(this + 424) = *a5;
  *(this + 55) = 0;
  *(this + 56) = this + 456;
  sub_1AF3A1848(this + 424, a5);
  CFX::RG::AggregatePass::commonInit(this, a4);
  return this;
}

void sub_1AF3A5940(_Unwind_Exception *a1)
{
  sub_1AF2624F0(v2);
  CFX::RG::Pass::~Pass(v1);
  _Unwind_Resume(a1);
}

uint64_t *CFX::RG::AggregatePass::commonInit(CFX::RG::Pass *this, uint64_t a2)
{
  v4 = 0;
  v28 = v29;
  v26 = a2;
  v27 = 0x800000000;
  memset(v29, 0, sizeof(v29));
  v22 = a2;
  v23 = 0x800000000;
  v24 = &v25;
  do
  {
    v5 = &v22 + v4;
    *(v5 + 3) = 0;
    v5[32] = 0;
    v4 += 16;
  }

  while (v4 != 128);
  v6 = *(this + 110);
  if (v6)
  {
    v7 = *(this + 56);
    v8 = &v7[v6];
    do
    {
      v2 = *v7;
      if (*(*v7 + 72))
      {
        v9 = 0;
        v10 = 0;
        do
        {
          sub_1AF3A5DF4(&v22, (*(v2 + 80) + v9));
          ++v10;
          v9 += 16;
        }

        while (v10 < *(v2 + 72));
      }

      if (*(v2 + 232))
      {
        v11 = 0;
        do
        {
          v12 = *(*(v2 + 240) + 8 * v11);
          v13 = CFX::RG::Pass::renderTargetInfo(v2, v12);
          if (v27)
          {
            v14 = 16 * v27;
            v15 = v28;
            while (*v15 != v12)
            {
              v15 += 2;
              v14 -= 16;
              if (!v14)
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            v15 = v28;
          }

          if (v15 == &v28[16 * v27])
          {
LABEL_17:
            v30.n128_u64[0] = v12;
            v30.n128_u64[1] = v13;
            sub_1AF3995BC(&v26, &v30);
          }

          ++v11;
        }

        while (v11 < *(v2 + 232));
      }

      ++v7;
    }

    while (v7 != v8);
    if (v23)
    {
      v2 = v24;
      v16 = &v24[2 * v23];
      do
      {
        CFX::RG::Pass::readFrom(this, *v2, *(v2 + 8));
        v2 += 16;
      }

      while (v2 != v16);
    }
  }

  if (v27)
  {
    v17 = (v28 + 8);
    v18 = 16 * v27;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      if (*v17)
      {
        v2 = v2 & 0xFFFFFFFF00000000 | *(v20 + 8);
        CFX::RG::Pass::renderTo(this, v19, *v20, v2);
      }

      else
      {
        CFX::RG::Pass::writeTo(this, v19);
      }

      v17 += 2;
      v18 -= 16;
    }

    while (v18);
  }

  return CFX::RG::AggregatePass::initializePassName(this);
}

void CFX::RG::AggregatePass::~AggregatePass(CFX::RG::AggregatePass *this)
{
  *this = &unk_1F24ED2A8;
  v2 = *(this + 110);
  if (v2)
  {
    v3 = *(this + 56);
    v4 = 8 * v2;
    do
    {
      sub_1AF397AB8((*v3)[1], (*v3)[2], *v3);
      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  sub_1AF2624F0(this + 424);

  CFX::RG::Pass::~Pass(this);
}

{
  CFX::RG::AggregatePass::~AggregatePass(this);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF3A5BF8(_Unwind_Exception *a1)
{
  sub_1AF2624F0(v1 + 424);
  CFX::RG::Pass::~Pass(v1);
  _Unwind_Resume(a1);
}

uint64_t CFX::RG::AggregatePass::execute(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 440);
  if (v4)
  {
    v8 = *(result + 448);
    v9 = 8 * v4;
    do
    {
      v10 = *v8++;
      result = (*(*v10 + 24))(v10, a2, a3, a4);
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

uint64_t *CFX::RG::AggregatePass::initializePassName(CFX::RG::AggregatePass *this)
{
  v2 = *(this + 110);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 56);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = strlen(*(v6 + 24));
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = 7;
      }

      v3 += v8 + 1;
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  v19 = *(this + 8);
  v9 = sub_1AF23498C(&v19, v3 + 1, 1u, 2);
  v10 = *(this + 110);
  if (v10)
  {
    v11 = 0;
    v12 = *(this + 56);
    v13 = 8 * v10;
    do
    {
      v14 = *v12++;
      v15 = *(v14 + 24);
      if (*v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = "Unnamed";
      }

      v17 = strlcpy(&v9[v11], v16, v3 + 1 - v11);
      v9[v17 + v11] = 124;
      v11 += v17 + 1;
      v13 -= 8;
    }

    while (v13);
  }

  *&v9[v3 - 1] = 32;
  return CFX::RG::Pass::setAllocatedName(this, v9);
}

double sub_1AF3A5DF4(uint64_t a1, __n128 *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = 16 * v2;
    v4 = *(a1 + 16);
    while (*v4 != a2->n128_u64[0] || *(v4 + 8) != a2->n128_u8[8])
    {
      v4 += 16;
      v3 -= 16;
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v4 == *(a1 + 16) + 16 * v2)
  {
LABEL_9:
    *&result = sub_1AF3995BC(a1, a2).n128_u64[0];
  }

  return result;
}

BOOL CFX::RG::isPublishResourcePass(CFX::RG *this, CFX::RG::Pass *a2)
{
  v2 = *(this + 5);
  if ((atomic_load_explicit(byte_1ED73AB20, memory_order_acquire) & 1) == 0)
  {
    v4 = v2;
    sub_1AFDFB6FC();
    v2 = v4;
  }

  return v2 == qword_1ED73AB18;
}

CFX::RG::Pass *CFX::RG::RegisterResourcePass::RegisterResourcePass(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  *a1 = &unk_1F24ED2E0;
  if ((atomic_load_explicit(byte_1ED73AB20, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDFB6FC();
  }

  CFX::RG::Pass::Pass(a1, a2, a3, "RegisterResource", 1, qword_1ED73AB18, a1);
  *a1 = &unk_1F24ED2E0;
  *(a1 + 54) = 0;
  *(a1 + 55) = 0;
  *(a1 + 53) = a4;
  v12 = objc_msgSend_copy(v9, v10, v11);
  v13 = *(a1 + 54);
  *(a1 + 54) = v12;

  return a1;
}

void sub_1AF3A5F9C(_Unwind_Exception *a1)
{
  sub_1AF235C34((v2 + 440), 0);

  CFX::RG::Pass::~Pass(v2);
  _Unwind_Resume(a1);
}

void CFX::RG::RegisterResourcePass::storeManaged(uint64_t a1, CFX::RG::Resource **a2)
{
  v2 = *a2;
  *a2 = 0;
  sub_1AF235C34((a1 + 440), v2);
}

uint64_t CFX::RG::RegisterResourcePass::execute(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    return (*(*(result + 432) + 16))(*(result + 432), a2, *(result + 424));
  }

  return result;
}

void sub_1AF3A600C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF3A6044(uint64_t a1)
{
  *a1 = &unk_1F24ED2E0;
  sub_1AF235C34((a1 + 440), 0);

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF3A60A8(uint64_t a1)
{
  *a1 = &unk_1F24ED2E0;
  sub_1AF235C34((a1 + 440), 0);

  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

unint64_t sub_1AF3A6120(unint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *result) ^ ((0xC6A4A7935BD1E995 * *result) >> 47))) ^ (0xC6A4A7935BD1E995 * a2));
    v3 = a2 & 7;
    if (v3 <= 3)
    {
      if ((a2 & 7) <= 1)
      {
        if ((a2 & 7) == 0)
        {
          return (0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47);
        }

        goto LABEL_18;
      }

      if (v3 == 2)
      {
LABEL_17:
        v2 ^= *(result + 9) << 8;
LABEL_18:
        v2 = 0xC6A4A7935BD1E995 * (v2 ^ *(result + 8));
        return (0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47);
      }

LABEL_16:
      v2 ^= *(result + 10) << 16;
      goto LABEL_17;
    }

    if ((a2 & 7) > 5)
    {
      if (v3 != 6)
      {
        v2 ^= *(result + 14) << 48;
      }

      v2 ^= *(result + 13) << 40;
    }

    else if (v3 == 4)
    {
      goto LABEL_15;
    }

    v2 ^= *(result + 12) << 32;
LABEL_15:
    v2 ^= *(result + 11) << 24;
    goto LABEL_16;
  }

  return result;
}

void sub_1AF3A6218(uint64_t a1)
{

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF3A626C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, _OWORD *a5)
{
  v15[0] = a1;
  v15[1] = a2;
  v8 = sub_1AF23498C(v15, 0x1D8u, 8u, 2);
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = a5[1];
  v14[0] = *a5;
  v14[1] = v12;
  *&result = CFX::RG::CopyPass::CopyPass(v8, v9, v10, v11, v14).n128_u64[0];
  return result;
}

CFX::RG *CFX::RG::OptimiseRenderGraph(CFX::RG *this, CFX::RG::RenderGraph *a2, unsigned int **a3, CFX::RG::RenderGraphContext *a4)
{
  v6 = this;
  v13 = this;
  prof_beginFlame("_OptimiseRenderGraph", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProcessing.mm", 820);
  if ((*CFX::RG::RenderGraphContext::optimisationParameters(a3) & 1) == 0)
  {
    v12 = a3[2];
    CStackAllocatorPushFrame(v12);
    v7 = 0;
    do
    {
      if (*(CFX::RG::RenderGraphContext::optimisationParameters(a3) + 2) == 1)
      {
        prof_beginFlame("Merge render passes", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProcessing.mm", 834);
        v8 = sub_1AF3A6F84(v13, a2, a3, v7 != 0);
        if (v8)
        {
          do
          {
            __p[0] = 0;
            __p[1] = 0;
            v15 = 0;
            v9 = CFX::RG::RenderGraphBuilder::build(a2, a3, __p);
            if (!v9)
            {
              abort();
            }

            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }
          }

          while ((sub_1AF3A6F84(v9, a2, a3, v7 != 0) & 1) != 0);
          v13 = v9;
        }

        prof_endFlame();
      }

      else
      {
        v8 = 0;
      }

      if (*(CFX::RG::RenderGraphContext::optimisationParameters(a3) + 3) == 1)
      {
        prof_beginFlame("Merge compute passes", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProcessing.mm", 839);
        v8 |= sub_1AF3A7610(&v13, a2, a3, sub_1AF3A76CC);
        prof_endFlame();
      }

      if (*(CFX::RG::RenderGraphContext::optimisationParameters(a3) + 1) == 1)
      {
        prof_beginFlame("Remove copy passes", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProcessing.mm", 844);
        v8 |= sub_1AF3A7610(&v13, a2, a3, sub_1AF3A7938);
        prof_endFlame();
      }

      if (*(CFX::RG::RenderGraphContext::optimisationParameters(a3) + 4) == 1)
      {
        prof_beginFlame("Merge blit passes", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProcessing.mm", 849);
        v10 = v8 | sub_1AF3A7610(&v13, a2, a3, sub_1AF3A830C);
        prof_endFlame();
        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      else if (!v8)
      {
        break;
      }

      ++v7;
    }

    while ((*(CFX::RG::RenderGraphContext::optimisationParameters(a3) + 8) & 1) != 0);
    CStackAllocatorPopFrame(v12);
    v6 = v13;
  }

  prof_endFlame();
  return v6;
}

void CFX::RG::AllocateResources(CFX::RG *this, CFX::RG::RenderGraph *a2, CFX::RG::RenderGraphContext *a3)
{
  prof_beginFlame("_AllocateResources", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/VFXRenderGraph/RenderGraphProcessing.mm", 966);
  v5 = *(a2 + 2);
  v50 = *(a2 + 3);
  v51 = v5;
  CStackAllocatorPushFrame(v5);
  v58 = v5;
  sub_1AF3A2C74(&v58, 32);
  v6 = *(this + 72);
  if (v6)
  {
    v7 = *(this + 37);
    v46 = v7 + 32 * v6;
    v48 = v5;
    do
    {
      v54 = v5;
      v55 = 0x1000000000;
      v56 = &v57;
      v8 = *(v7 + 16);
      if (v8)
      {
        v47 = v7;
        v9 = *(v7 + 24);
        v49 = &v9[v8];
        do
        {
          v10 = *v9;
          v11 = *(*v9 + 232);
          if (v11)
          {
            v12 = *(v10 + 240);
            v13 = &v12[v11];
            do
            {
              v53 = *v12;
              if (CFX::RG::Resource::type(v53) != 2)
              {
                v14 = v53;
                v15 = CFX::RG::Pass::renderTargetAccess(v10, v53);
                isManaged = CFX::RG::Resource::isManaged(v53);
                v17 = isManaged;
                v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v14) ^ ((0x9DDFEA08EB382D69 * v14) >> 47));
                v19 = 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47));
                if (v15)
                {
                  if (!isManaged)
                  {
                    v22 = sub_1AF3A8E18(this, v10, v53, &v51);
                    if (v22 >= 1)
                    {
                      v23 = (v62 - 1) & v19;
                      v24 = *(v61 + 2 * v23);
                      if (v24 < 2)
                      {
LABEL_20:
                        v26 = 0;
                      }

                      else
                      {
                        while ((v24 & 2) == 0 || v19 != *(v59 + 8 * v23))
                        {
                          ++v23;
                          v25 = v24 > 3;
                          v24 >>= 1;
                          if (!v25)
                          {
                            goto LABEL_20;
                          }
                        }

                        v26 = v60 + 16 * v23;
                      }

                      v27 = *(v26 + 8);
                      if (v27 != 0x7FFFFFFF)
                      {
                        *(v26 + 8) = v27 + v22;
                      }
                    }

                    sub_1AF3A8E94(&v54, &v58, v53);
                  }
                }

                else
                {
                  isAllocated = CFX::GPUResourceManager::isAllocated(v50, v53);
                  if (v17)
                  {
                    if (!isAllocated)
                    {
                      v21 = v53;
                      sub_1AF3A6CDC(a2, this, v10, v53);
                      CFX::GPUResourceManager::allocate(*(a2 + 3), v21, a2);
                    }
                  }

                  else if (isAllocated)
                  {
                    v28 = (v62 - 1) & v19;
                    v29 = *(v61 + 2 * v28);
                    if (v29 >= 2)
                    {
                      while ((v29 & 2) == 0 || v19 != *(v59 + 8 * v28))
                      {
                        ++v28;
                        v30 = v29 >= 4;
                        v29 >>= 1;
                        if (!v30)
                        {
                          goto LABEL_8;
                        }
                      }

                      v34 = v60;
                      if (v60)
                      {
                        CFX::RG::RenderGraph::directSuccessorsReadingResource(this, v10, v53, v48, v52);
                        v35 = v34 + 16 * v28;
                        v38 = *(v35 + 8);
                        v36 = (v35 + 8);
                        v37 = v38;
                        if (v38 != 0x7FFFFFFF)
                        {
                          *v36 = v37 + v52[0].n128_u32[2];
                        }
                      }
                    }
                  }

                  else
                  {
                    v31 = v53;
                    sub_1AF3A6CDC(a2, this, v10, v53);
                    CFX::GPUResourceManager::allocate(*(a2 + 3), v31, a2);
                    v32 = sub_1AF3A8E18(this, v10, v53, &v51);
                    if (v32 < 1)
                    {
                      sub_1AF240F04(&v54, &v53);
                    }

                    else
                    {
                      v52[0].n128_u64[0] = v53;
                      if (CFX::RG::Resource::isManaged(v53))
                      {
                        v33 = 0x7FFFFFFF;
                      }

                      else
                      {
                        v33 = v32;
                      }

                      v52[0].n128_u32[2] = v33;
                      sub_1AF3A9000(&v58, v19, v52);
                    }
                  }
                }
              }

LABEL_8:
              ++v12;
            }

            while (v12 != v13);
          }

          v39 = *(v10 + 72);
          if (v39)
          {
            v40 = *(v10 + 80);
            v41 = v40 + 16 * v39;
            do
            {
              if (!*(v40 + 8))
              {
                v42 = *v40;
                if (CFX::RG::Resource::type(*v40) != 2)
                {
                  sub_1AF3A8E94(&v54, &v58, v42);
                }
              }

              v40 += 16;
            }

            while (v40 != v41);
          }

          ++v9;
        }

        while (v9 != v49);
        v7 = v47;
        v5 = v48;
        if (v55)
        {
          v43 = v56;
          v44 = 8 * v55;
          do
          {
            v45 = *v43;
            if (!CFX::RG::Resource::isManaged(*v43))
            {
              CFX::GPUResourceManager::free(v50, v45);
            }

            ++v43;
            v44 -= 8;
          }

          while (v44);
        }
      }

      v7 += 32;
    }

    while (v7 != v46);
  }

  CStackAllocatorPopFrame(v5);
  prof_endFlame();
}